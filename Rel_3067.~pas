unit Rel_3067;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3067 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Btn_LimpaCampos: TPDJButton;
    Panel24: TPanel;
    edt_carteira: TDCEdit;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel7: TPanel;
    edt_dtvalidade: TDCDateEdit;
    edt_chefeAdm: TDCEdit;
    cbx_cod_plano: TDCComboBox;
    cbx_cod_empresa: TDCComboBox;
    edt_inscricao_ben: TDCEdit;
    edt_titularidade: TDCEdit;
    edt_nome_ben: TDCEdit;
    procedure PDJButton3Click(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure edt_titularidadeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  FPesquisaSQLDefalt, Fdescricao_pla : string;
  function CriticaParametros : Boolean ;
  public
    { Public declarations }
    CodRequerimento, DtProtocolo, FInscricao : string;
  end;

var
  Frm_Rel_3067: TFrm_Rel_3067;

implementation
uses DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_obj, Fun_Data, Imp_4137,
Bas_Impressao, dtm_principal6, Fun_ConsCadastro, Fun_Beneficiario;

{$R *.DFM}

function TFrm_Rel_3067.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_empresa.name, 'A Empresa deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_plano.name, 'O Plano deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A Inscrição deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_titularidade.name, 'A Titularidade deve ser Preenchida !', VLD_Preenchido ));
end;

procedure TFrm_Rel_3067.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    exit;
 // DB_ExecSQL('insert into tbl_benefiTemporario (carteira_bet, nome_bet, dtvalidade_bet, dtsistema_bet) values('''+
 // edt_carteira.Text+''','''+edt_nome_ben.Text+''', '''+edt_dtvalidade.Text+''', getdate())');
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_adm_carencia;
  Frm_Bas_Impressao.FCampo1 := edt_nome_ben.Text;
  Frm_Bas_Impressao.FCampo2 := edt_carteira.Text;
  Frm_Bas_Impressao.FCampo3 := cbx_cod_plano.Text;
  Frm_Bas_Impressao.FCampo4 := 'SBCampo, '+Data_Format('dd',Date)+' de '+Data_GetMonthName(StrToInt(Data_Format('mm',Date)))+' de '+Data_Format('yyyy',Date);
  Frm_Bas_Impressao.FCampo5 := edt_chefeAdm.Text;
  Frm_Bas_Impressao.FMesReferencia := edt_dtvalidade.Text;
  Frm_Bas_Impressao.showReport(4151);
end;

procedure TFrm_Rel_3067.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
end;

procedure TFrm_Rel_3067.edt_titularidadeExit(Sender: TObject);
begin
  inherited;
  if (cbx_cod_empresa.Text <> '') and (cbx_cod_plano.Text <> '')
  and (edt_inscricao_ben.Text <> '') and (edt_titularidade.Text <> '') then
    edt_carteira.Text := FormatarCarteirinha(MontarCarteirinha ( cbx_cod_empresa.ValueItem, cbx_cod_plano.ValueItem, edt_inscricao_ben.text, edt_titularidade.text ));
end;

procedure TFrm_Rel_3067.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_plano', 'descricao_pla');
  DB_OpenSQL('select si.cod_setorimasf, Upper(u.descricao_usu) as descricao_usu, cs.descricao_cgu, si.nome_sti from tbl_setorimasf si '+
             'inner join tbl_usuario u on si.cod_usuarioChefe = u.cod_usuario '+
             'inner join tbl_cargousuario cs on cs.cod_cargoUsuario = u.cod_cargoUsuario '+
             'where si.cod_setorimasf = 4');
  edt_chefeAdm.Text:= Tab.FieldByName('descricao_usu').AsString;
end;

end.



