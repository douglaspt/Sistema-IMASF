unit Mov_RecebeConta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  jpeg;

type
  TFrm_Mov_RecebeConta = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    Panel9: TPanel;
    edt_dtrecebimento_con: TDCDateEdit;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Panel5: TPanel;
    edt_razao_con: TDCEdit;
    Panel6: TPanel;
    btn_receber: TPDJButton;
    cbx_cod_Midia: TDCComboBox;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    edt_sequencia_con: TDCEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure btn_receberClick(Sender: TObject);
    procedure edt_anoExit(Sender: TObject);
    procedure edt_dtrecebimento_conExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Mov_RecebeConta: TFrm_Mov_RecebeConta;

implementation
uses Fun_ConsCadastro, Fun_Medico,Fun_DB, DlG_Mensagem, Fun_Obj, Constantes, Fun_Acesso;

{$R *.DFM}

procedure TFrm_Mov_RecebeConta.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Recepção de Movimento de Conveniado' ;
  FEditChave    := 'edt_cod_conveniado' ;
//  FEditAlteracao:= 'edt_nome_pla' ;
//  FUltFoco      := 'edt_descricao_pla' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Mov_RecebeConta.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Mov_RecebeConta.btn_receberClick(Sender: TObject);
var
  dtrefe, conven : string ;
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cod_conveniado.name, 'Código do Conveiado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtrecebimento_con.name, 'Data de Recebimento deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_Midia.name, 'O Tipo de Mídia deve ser Preenchida !', VLD_Preenchido )) then
    Exit;
  dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  DB_ExecSQL('insert into tbl_lotecontamedica '+
  ' (cod_conveniado, dtreferencia_cta, sequencia_cta, dtrecebimento_cta, cod_midia)'+
  ' values ('+conven+', '+dtrefe+
  ', '+edt_sequencia_con.text+',getdate(), '+copy(cbx_cod_Midia.text,1,1)+')');
  Dlg_Ok('Movimento Registrado Como Recebido !', self);
  Obj_EmptyEdit(Self);
  EscreveLog(btn_receber.Name);
end;

procedure TFrm_Mov_RecebeConta.edt_anoExit(Sender: TObject);
var
  dtrefe, conven : string ;
begin
  inherited;
  dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  DB_OpenSQL('select max(sequencia_cta) from tbl_lotecontamedica where cod_conveniado = '+
  conven+' and dtreferencia_cta = '+dtrefe);
  edt_sequencia_con.text := IntToStr(1+Tab.Fields[0].AsInteger) ;
  DB_ClearSQL;
end;

procedure TFrm_Mov_RecebeConta.edt_dtrecebimento_conExit(Sender: TObject);
begin
  inherited;
  edt_ano.text := copy(edt_dtrecebimento_con.text,7,4);
end;

procedure TFrm_Mov_RecebeConta.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  edt_dtrecebimento_con.date := date ;
  cbx_cod_Midia.ValItems.Add('0') ;
  cbx_cod_Midia.ValItems.Add('1') ;
end;

procedure TFrm_Mov_RecebeConta.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

end.
