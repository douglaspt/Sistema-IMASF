unit Dlg_NovaDigitacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

function Dlg_ImprimeEtiquetaYesNo(FormAtivo:Tform) : boolean ;

type
  TFrm_Dlg_NovaDigitacao = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    img_icone: TImage;
    lbl_mensagem: TLabel;
    btn_ok: TSpeedButton;
    btn_cancelar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    lbl_senha: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    edt_senha: TEdit;
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FRetorno : boolean ;    
  public
    { Public declarations }
  end;

var
  Frm_Dlg_NovaDigitacao: TFrm_Dlg_NovaDigitacao;

implementation

{$R *.DFM}

function Dlg_ImprimeEtiquetaYesNo(FormAtivo:Tform) : boolean ;
begin
  if FormAtivo = nil then
    FormAtivo := Screen.ActiveForm ;
  FormAtivo.Enabled := false ;
  with Frm_Dlg_novadigitacao do begin
    ShowModal;
    result := FRetorno ;
  end;
  FormAtivo.Enabled := true ;
end;

procedure TFrm_Dlg_NovaDigitacao.btn_cancelarClick(Sender: TObject);
begin
  FRetorno := false ;
  Close;
end;

procedure TFrm_Dlg_NovaDigitacao.btn_okClick(Sender: TObject);
begin
  if edt_senha.Text = lbl_senha.caption then begin
    FRetorno := true ;
    Close;
  end else
    ShowMessage('A senha digitada n�o � igual a fornecida pelo sistema digite novamente ou cancele a opera��o');
end;

procedure TFrm_Dlg_NovaDigitacao.FormShow(Sender: TObject);
begin
  Randomize;
  lbl_senha.Caption := inttostr(random(100000));
end;

end.
