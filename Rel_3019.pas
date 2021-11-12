unit Rel_3019;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3019 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel5: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    Panel1: TPanel;
    edt_inscricao_ben: TDCEdit;
    Panel4: TPanel;
    edt_matriculaDebito_seg: TDCEdit;
    Panel6: TPanel;
    cbx_cod_tarifa: TDCComboBox;
    edt_digitoMatDeb_seg: TDCEdit;
    Btn_LimpaCampos: TPDJButton;
    Panel7: TPanel;
    rdb_matricula: TRadioButton;
    rdb_inscricao: TRadioButton;
//    procedure FormCreate(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FMesReferencia, FAnoReferencia : String ;
  end;

var
  Frm_Rel_3019: TFrm_Rel_3019;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_4133, Fun_Data, Dlg_Mensagem, Fun_Obj, dtm_principal3, dtm_principal5 ;

{$R *.DFM}
    {
procedure TFrm_Rel_3045.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Relat�rio de Status das Contas' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'C�digo, Nome do Conveniado, Raz�o Social' ;
  inherited;
end; }

function TFrm_Rel_3019.CriticaParametros : Boolean ;
begin
  result :=(not BAS_ValidarCampo(cbx_cod_mes.name, 'A Data de Refer�ncia deve ser Preenchida !', VLD_Preenchido ));
  result :=(not BAS_ValidarCampo(edt_ano.name, 'O Ano de Refer�ncia deve ser Preenchido !', VLD_Preenchido ));

end;


procedure TFrm_Rel_3019.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal5.spc_cons_adm_divergenciaPrefeitura do
  begin
    close;
    ParamByName('@dtreferencia_div').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.Text;
    ParamByName('@matriculaDebito_seg').AsString := edt_matriculaDebito_seg.Text;
    ParamByName('@digitoMatDeb_seg').AsString := edt_digitoMatDeb_seg.Text;
    ParamByName('@cod_tarifa').AsString := cbx_cod_tarifa.valueItem;
    if rdb_matricula.Checked then
      ParamByName('@order').AsInteger := 0;
    if rdb_inscricao.Checked then
      ParamByName('@order').AsInteger := 1;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4133 := TFrm_Imp_4133.Create(Self);
  Frm_Imp_4133.FDtReferencia := cbx_cod_mes.Text+'/'+edt_ano.Text;
  Frm_Imp_4133.Ftarifa := cbx_cod_tarifa.valueItem;
  Frm_Imp_4133.FInscricao := edt_inscricao_ben.Text;
  Frm_Imp_4133.FMatricula := edt_matriculaDebito_seg.Text;
  Frm_Imp_4133.FDigito := edt_digitoMatDeb_seg.Text;
  Frm_Imp_4133.QuickRep1.Preview;
  Frm_Imp_4133.Release;
  fdt_principal5.spc_cons_adm_divergenciaPrefeitura.close;
end;

procedure TFrm_Rel_3019.FormShow(Sender: TObject);
begin
  inherited;
  Obj_LoadCombo(self,'cbx_cod_mes','nome_mes','cod_mes', 'tbl_mes');
  Obj_LoadCombo(Self, 'cbx_cod_tarifa', 'cast(cod_tarifa as char(3)) + '' - '' + nome_tar', 'cod_tarifa', 'tbl_tarifa');
    if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
end;

procedure TFrm_Rel_3019.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;

end.

