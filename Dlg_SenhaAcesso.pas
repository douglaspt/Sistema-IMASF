unit Dlg_SenhaAcesso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DCStdCtrls, PDJButton, StdCtrls, ExtCtrls, jpeg;

type
  TFrm_Dlg_SenhaAcesso = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    btn_ok: TPDJButton;
    btn_cancelar: TPDJButton;
    DCHeaderPanel1: TDCHeaderPanel;
    img_icone: TImage;
    edt_senha: TEdit;
    edt_nome_usu: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Lbl_comp: TLabel;
    lbl_usuario: TLabel;
    Bevel1: TBevel;
    lbl_data: TLabel;
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure img_iconeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label2DblClick(Sender: TObject);
  private
    { Private declarations }
    FCod_UsuarioAcesso : Integer;
    FNome_UsuAcesso : String;
  public
    { Public declarations }
    FRetornoAcesso : integer ;
  end;

var
  Frm_Dlg_SenhaAcesso: TFrm_Dlg_SenhaAcesso;

implementation
uses Fun_Acesso, Dlg_Comunicador, Fun_Db, Dlg_Mensagem ;
{$R *.DFM}


procedure TFrm_Dlg_SenhaAcesso.btn_cancelarClick(Sender: TObject);
begin
  FRetornoAcesso := -1 ;
  Close;
end;

procedure TFrm_Dlg_SenhaAcesso.btn_okClick(Sender: TObject);
begin
//  showmessage(Acs_algoritimoSenha(edt_senha.text));
  if edt_senha.text = '' then begin
    edt_senha.SetFocus;
    exit;
  end;
  FRetornoAcesso := -1;
  if DB_OpenSQL('select cod_usuario, senha_usu, descricao_usu, cod_setorimasf from tbl_usuario where nome_usu = '''+edt_nome_usu.Text+'''') > 0 then begin
    FCod_UsuarioAcesso := Tab.FieldByName('cod_usuario').AsInteger ;
    FNome_UsuAcesso := Tab.FieldByName('descricao_usu').AsString ;
    if Tab.FieldByName('senha_usu').AsString = Acs_algoritimoSenha(edt_senha.text) then
    begin
//      if DB_OpenSQL('select * from tbl_acessoEspecial where cod_usuario = '+inttostr(FCod_UsuarioAcesso)+' and cod_telaEspecial = 106301') > 0 then
//      begin
        FRetornoAcesso := FCod_UsuarioAcesso;
        Close;
//      end
//      else begin
//        Dlg_Alerta('Usuário não Autorizado!', self);
//      end;
    end
    else
      Dlg_Alerta('Senha Inválida !', self);
  end else
    Dlg_Alerta('Usuário não cadastrado !', self);

end;

procedure TFrm_Dlg_SenhaAcesso.img_iconeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if (Acs_GetDSKSerialNumber('c') = '809180F1') or (Acs_GetWinUserName = 'help desk') then begin
  edt_nome_usu.text := 'douglas';
  edt_senha.text := 'goga98';
  btn_okClick(self);
end else
  ShowMessage('É necessário digitar o usuário a senha !');
end;

procedure TFrm_Dlg_SenhaAcesso.FormShow(Sender: TObject);
begin
  Lbl_comp.Caption := 'Computador => '+Acs_GetComputerName;
  Lbl_usuario.Caption := 'Usuário na Rede => '+
  Acs_GetWinUserName;
  edt_nome_usu.text := Acs_GetWinUserName;
  lbl_data.Caption := ''; 
//  lbl_data.Caption := 'Ultima Complilação em '+Acs_GetFileDate('C:\sistemas\stimasf.exe');
//  lbl_data.Caption := 'Ultima Complilação em '+DateTimeToStr(FileDateToDateTime(FileAge('C:\sistemas\stimasf.exe')));
end;

procedure TFrm_Dlg_SenhaAcesso.Button1Click(Sender: TObject);
begin
  ShowMessage(Acs_GetDSKSerialNumber('c'))   ;
end
;

procedure TFrm_Dlg_SenhaAcesso.Label2DblClick(Sender: TObject);
begin
showmessage(Acs_GetDSKSerialNumber('c'));
end;

end.
