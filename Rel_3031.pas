unit Rel_3031;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3031 = class(TFrm_Bas_TelaPadrao)
    PDJButton5: TPDJButton;
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    edt_ano2: TDCEdit;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3031: TFrm_Rel_3031;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
dtm_principal2, Imp_4056, Fun_Data, Dlg_Mensagem, dtm_principal3, Imp_4059, Imp_4058,
Imp_4060, Imp_4061, dtm_principal6, Fun_str, Bas_Impressao ;

{$R *.DFM}

procedure TFrm_Rel_3031.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Relat�rio de Status das Contas' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'C�digo, Nome do Conveniado, Raz�o Social' ;
  inherited;
end;

function TFrm_Rel_3031.CriticaParametros : Boolean ;
begin
  result :=(not BAS_ValidarCampo(edt_cod_conveniado.name, 'O Codigo de Conveniado deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Refer�ncia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mes de Refer�ncia Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'Ano de Referencia Final deve ser Preenchido !', VLD_Preenchido )) ;
end;


procedure TFrm_Rel_3031.PDJButton5Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal6.spc_cons_med_dotacoestmedico do
  begin
  close;
  ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.text,'-');
  ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.Text;
  ParamByName('@dtreferenciaFin').AsString := cb2_cod_mes.valueitem+'/01/'+edt_ano2.Text;
  ParamByName('@sequenciaIni').AsString := '1';
  ParamByName('@sequenciaFin').AsString := '100';
  open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal6.spc_cons_med_dotacoestmedico;
  Frm_Bas_Impressao.FCampo2 := 'M�s de Refer�ncia Inicial     '+cbx_cod_mes.Text+'/'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo3 := 'M�s de Refer�ncia Final       '+cb2_cod_mes.Text+'/'+edt_ano2.Text;
  Frm_Bas_Impressao.showReport(4184);
  fdt_principal6.spc_cons_med_dotacoestmedico.close;
end;

procedure TFrm_Rel_3031.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_3031.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

procedure TFrm_Rel_3031.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
end;

end.

