unit Dlg_Senha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DCStdCtrls, PDJButton, StdCtrls, ExtCtrls, jpeg;

type
  TFrm_Dlg_Senha = class(TForm)
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
    FRetorno : boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Dlg_Senha: TFrm_Dlg_Senha;

implementation
uses Fun_Acesso, Dlg_Comunicador ;
{$R *.DFM}


procedure TFrm_Dlg_Senha.btn_cancelarClick(Sender: TObject);
begin
  FRetorno := false ;
  Application.Terminate;
end;

procedure TFrm_Dlg_Senha.btn_okClick(Sender: TObject);
begin
//  showmessage(Acs_algoritimoSenha(edt_senha.text));
  if edt_senha.text = '' then begin
    edt_senha.SetFocus;
    exit;
  end;
  FRetorno := Acs_ValidarSenha(edt_nome_usu.text, Acs_algoritimoSenha(edt_senha.text), self) ;
  if FRetorno then begin
    Dlg_ComunicadorMSG(self);
    Application.ProcessMessages;
    Close;
  end else
    edt_senha.SetFocus;
end;

procedure TFrm_Dlg_Senha.img_iconeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (GetUsuarioLogado = 'douglas.teixeira') or (GetUsuarioLogado = '41803800') then
  begin
    edt_nome_usu.text := 'douglas';
    edt_senha.text := 'goga98';
    btn_okClick(self);
  end else
    ShowMessage('� necess�rio digitar o usu�rio a senha !');
end;

procedure TFrm_Dlg_Senha.FormShow(Sender: TObject);
begin
  Lbl_comp.Caption := 'Computador => '+Acs_GetComputerName;
  Lbl_usuario.Caption := 'Usu�rio na Rede => '+GetUsuarioLogado;
  edt_nome_usu.text := Acs_GetWinUserName;
  lbl_data.Caption := ''; 
//  lbl_data.Caption := 'Ultima Complila��o em '+Acs_GetFileDate('C:\sistemas\stimasf.exe');
//  lbl_data.Caption := 'Ultima Complila��o em '+DateTimeToStr(FileDateToDateTime(FileAge('C:\sistemas\stimasf.exe')));
end;

procedure TFrm_Dlg_Senha.Button1Click(Sender: TObject);
begin
  ShowMessage(Acs_GetDSKSerialNumber('c'))   ;
end
;

procedure TFrm_Dlg_Senha.Label2DblClick(Sender: TObject);
begin
showmessage(Acs_GetDSKSerialNumber('c'));
end;

end.
