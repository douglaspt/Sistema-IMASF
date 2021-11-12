unit Dlg_ImprimeCarta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DCStdCtrls, PDJButton, StdCtrls, ExtCtrls;

function Dlg_ImprimeEtiquetaYesNo(FormAtivo:Tform) : boolean ;

type
  TFrm_Dlg_imprimecarta = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    img_icone: TImage;
    lbl_mensagem: TLabel;
    btn_ok: TPDJButton;
    btn_cancelar: TPDJButton;
    DCHeaderPanel1: TDCHeaderPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
  private
    { Private declarations }
    FRetorno : boolean ;    
  public
    { Public declarations }
  end;

var
  Frm_Dlg_imprimecarta: TFrm_Dlg_imprimecarta;

implementation

{$R *.DFM}

function Dlg_ImprimeEtiquetaYesNo(FormAtivo:Tform) : boolean ;
begin
  if FormAtivo = nil then
    FormAtivo := Screen.ActiveForm ;
  FormAtivo.Enabled := false ;
  with Frm_Dlg_imprimecarta do begin
    ShowModal;
    result := FRetorno ;
  end;
  FormAtivo.Enabled := true ;
end;

procedure TFrm_Dlg_imprimecarta.btn_cancelarClick(Sender: TObject);
begin
  FRetorno := false ;
  Close;
end;

procedure TFrm_Dlg_imprimecarta.btn_okClick(Sender: TObject);
begin
  FRetorno := true ;
  Close;
end;

end.
