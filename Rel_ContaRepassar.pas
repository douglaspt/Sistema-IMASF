unit Rel_ContaRepassar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_ContaRepassar = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    edt_sequencia_con: TDCEdit;
    PDJButton3: TPDJButton;
    PDJButton1: TPDJButton;
    Panel20: TPanel;
    rdb_ambulatorial: TRadioButton;
    rdb_internacao: TRadioButton;
    rdb_tds: TRadioButton;
    RdG_OrdemImpressao: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
  private
    { Private declarations }
    dtrefe, conven : string ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_ContaRepassar: TFrm_Rel_ContaRepassar;

implementation
uses Imp_Med_ResumoConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Med_ContaGlosa, Imp_Med_Repasse_Autoriz, dtm_principal4, Imp_4117,
  Bas_Impressao ;

{$R *.DFM}

procedure TFrm_Rel_ContaRepassar.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Resumo das Contas do Conveniado' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Rel_ContaRepassar.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_ContaRepassar.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
end;

procedure TFrm_Rel_ContaRepassar.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Rel_ContaRepassar.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_conveniado.name, 'Código do Conveiado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequencia_con.name, 'Sequencia da Conta deve ser Preenchida !', VLD_Preenchido )) ;
end;


procedure TFrm_Rel_ContaRepassar.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_resumoconta do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    ParamByName('@indice').AsInteger := RdG_OrdemImpressao.ItemIndex;
    if rdb_ambulatorial.Checked then
      ParamByName('@cod_acomodacao').AsInteger := 5 ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsInteger := 6 ;
    if rdb_tds.Checked then
      ParamByName('@cod_acomodacao').AsInteger := 0 ;
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_med_resumoconta;
  Frm_Bas_Impressao.showReport(4179);
  Fdt_principal.spc_cons_med_resumoconta.close;
end;

procedure TFrm_Rel_ContaRepassar.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal4.spc_cons_med_resumoconta02 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    if rdb_ambulatorial.Checked then
      ParamByName('@cod_acomodacao').AsInteger := 5 ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsInteger := 6 ;
    if rdb_tds.Checked then
      ParamByName('@cod_acomodacao').AsInteger := 0 ;
    open;
  end;
  Frm_Imp_4117 := TFrm_Imp_4117.Create(Self);
  Frm_Imp_4117.QuickRep1.Preview;
  Frm_Imp_4117.Release;
  Fdt_principal4.spc_cons_med_resumoconta02.close;
end;

end.



