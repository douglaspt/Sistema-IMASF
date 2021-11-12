unit Rel_3068;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3068 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel7: TPanel;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    PDJButton1: TPDJButton;
    Panel1: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton2: TPDJButton;
    Panel14: TPanel;
    rdb_abulatorial: TRadioButton;
    rdb_internacao: TRadioButton;
    rdb_todos: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
  private
    { Private declarations }
    dtrefe, conven : string ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FCod_Conveniado, FMes, FAno, FSeq : String ;
  end;

var
  Frm_Rel_3068: TFrm_Rel_3068;

implementation
uses Imp_Med_ResumoConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Med_ContaGlosa, Imp_Med_Repasse_Autoriz, Fun_Obj, dtm_principal6,
  Bas_Impressao ;

{$R *.DFM}

procedure TFrm_Rel_3068.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Emissão de Autorização de Pagamento' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Rel_3068.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_3068.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  if FCod_Conveniado <> '' then begin
    edt_cod_conveniado.Text := FCod_Conveniado;
    edt_cod_conveniadoExit(self);
  end;
end;

procedure TFrm_Rel_3068.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Rel_3068.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_conveniado.name, 'Código do Conveiado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mês de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_ano.name, 'Ano de Referencia Final deve ser Preenchido !', VLD_Preenchido ));
end;


procedure TFrm_Rel_3068.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal6.spc_cons_med_totalmaterial do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFin').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text;
    if rdb_abulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_todos.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_totalmaterial;
  Frm_Bas_Impressao.FCampo1 := cbx_cod_mes.Text+'\'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo2 := cb2_cod_mes.Text+'\'+ed2_ano.Text;
  Frm_Bas_Impressao.showReport(4155);
  Fdt_principal6.spc_cons_med_totalmaterial.close;
end;

procedure TFrm_Rel_3068.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal6.spc_cons_med_totalmedicamento do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFin').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text;
    if rdb_abulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_todos.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_totalmedicamento;
  Frm_Bas_Impressao.FCampo1 := cbx_cod_mes.Text+'\'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo2 := cb2_cod_mes.Text+'\'+ed2_ano.Text;
  Frm_Bas_Impressao.showReport(4156);
  Fdt_principal6.spc_cons_med_totalmedicamento.close;
end;

end.



