unit Dlg_Mensagem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PDJButton, ExtCtrls, StdCtrls, ImgList, jpeg;

procedure Dlg_Ok(Msg:String;FormAtivo:Tform);
procedure Dlg_Alerta(Msg:String;FormAtivo:Tform);
procedure Dlg_Erro(Msg:String;FormAtivo:Tform);
function Dlg_YesNo(Msg:String;FormAtivo:Tform) : boolean ;

type
  TFrm_Bas_CxMensagem = class(TForm)
    Panel1: TPanel;
    lbl_mensagem: TLabel;
    btn_ok: TPDJButton;
    btn_cancelar: TPDJButton;
    img_icone: TImage;
    ImageList: TImageList;
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    FRetorno : boolean ;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Bas_CxMensagem: TFrm_Bas_CxMensagem;

implementation
uses Fun_Acesso, Constantes;
{$R *.DFM}

procedure Dlg_Ok(Msg:String;FormAtivo:Tform);
begin
  if FormAtivo = nil then
    FormAtivo := Screen.ActiveForm ;
  FormAtivo.Enabled := false ;
  Frm_Bas_CxMensagem.btn_ok.Left := 132 ;
  Frm_Bas_CxMensagem.btn_ok.ButtonKind := skOk ;
  Frm_Bas_CxMensagem.btn_cancelar.visible := false ;
  Frm_Bas_CxMensagem.ImageList.GetBitmap(3,Frm_Bas_CxMensagem.img_icone.Picture.Bitmap);
  Frm_Bas_CxMensagem.Caption := 'Informação' ;
  Frm_Bas_CxMensagem.lbl_mensagem.Caption := '       ' + Msg ;
  Frm_Bas_CxMensagem.ShowModal;
  FormAtivo.Enabled := true ;
  Frm_Bas_CxMensagem.img_icone.Picture := nil ;
//  Frm_Bas_CxMensagem.img_icone.Picture.Bitmap.Empty;
//  Frm_Bas_CxMensagem.img_icone.Picture.Graphic.Empty;
end;

procedure Dlg_Alerta(Msg:String;FormAtivo:Tform);
begin
  if FormAtivo = nil then
    FormAtivo := Screen.ActiveForm ;
  FormAtivo.Enabled := false ;
//  with Frm_Bas_CxMensagem.lbl_mensagem do begin
//    Font.Color := clYellow ;
//    Font.Style:=[fsbold];
//  end;
  Frm_Bas_CxMensagem.btn_ok.Left := 132 ;
  Frm_Bas_CxMensagem.btn_ok.ButtonKind := skOk ;
  Frm_Bas_CxMensagem.btn_cancelar.visible := false ;
  Frm_Bas_CxMensagem.ImageList.GetBitmap(2,Frm_Bas_CxMensagem.img_icone.Picture.Bitmap);
  Frm_Bas_CxMensagem.Caption := 'Atenção !' ;
  Frm_Bas_CxMensagem.lbl_mensagem.Caption := '       ' + Msg ;
  Frm_Bas_CxMensagem.ShowModal;
  FormAtivo.Enabled := true ;
//  with Frm_Bas_CxMensagem.lbl_mensagem do begin
//    Font.Color := clBlack ;
  Frm_Bas_CxMensagem.img_icone.Picture := nil ;
//    Font.Style:=[];
//  end;
end;

procedure Dlg_Erro(Msg:String;FormAtivo:Tform);
begin
  if FormAtivo = nil then
    FormAtivo := Screen.ActiveForm ;
  FormAtivo.Enabled := false ;
  with Frm_Bas_CxMensagem.lbl_mensagem do begin
    Font.Color := clRed ;
//    Font.Style:=[fsbold];
  end;
  Frm_Bas_CxMensagem.btn_ok.Left := 132 ;
  Frm_Bas_CxMensagem.btn_ok.ButtonKind := skOk ;
  Frm_Bas_CxMensagem.btn_cancelar.visible := false ;
  Frm_Bas_CxMensagem.ImageList.GetBitmap(0,Frm_Bas_CxMensagem.img_icone.Picture.Bitmap);
  Frm_Bas_CxMensagem.Caption := 'Erro no Sistema !' ;
  Frm_Bas_CxMensagem.lbl_mensagem.Caption := '       ' + Msg ;
  EscreveLog(LOG_ERRO, '', Msg);
  Frm_Bas_CxMensagem.ShowModal;
  FormAtivo.Enabled := true ;
  with Frm_Bas_CxMensagem.lbl_mensagem do begin
    Font.Color := clBlack ;
  Frm_Bas_CxMensagem.img_icone.Picture := nil ;
//    Font.Style:=[];
  end;
end;


function Dlg_YesNo(Msg:String;FormAtivo:Tform) : boolean ;
begin
  if FormAtivo = nil then
    FormAtivo := Screen.ActiveForm ;
  FormAtivo.Enabled := false ;
  with Frm_Bas_CxMensagem.lbl_mensagem do
    Font.Color := clGreen ;
  with Frm_Bas_CxMensagem do begin
    btn_ok.Left := 84 ;
    btn_ok.ButtonKind := skYes ;
    btn_cancelar.ButtonKind := skNo ;
    btn_cancelar.visible := true ;
    ImageList.GetBitmap(1,img_icone.Picture.Bitmap);
    Frm_Bas_CxMensagem.Caption := 'Confirmar Operação' ;
    lbl_mensagem.Caption := '       ' + Msg ;
    ShowModal;
    result := FRetorno ;
    btn_cancelar.visible := false ;
  end;
  with Frm_Bas_CxMensagem.lbl_mensagem do
    Font.Color := clBlack ;
  FormAtivo.Enabled := true ;
  Frm_Bas_CxMensagem.img_icone.Picture := nil ;
end;

procedure TFrm_Bas_CxMensagem.btn_okClick(Sender: TObject);
begin
  FRetorno := true ;
  Close;
end;

procedure TFrm_Bas_CxMensagem.btn_cancelarClick(Sender: TObject);
begin
  FRetorno := false ;
  Close;
end;

procedure TFrm_Bas_CxMensagem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    btn_okclick(self);
    key := #0;
  end;
end;

procedure TFrm_Bas_CxMensagem.FormCreate(Sender: TObject);
begin
  KeyPreview := true ;
end;

end.
