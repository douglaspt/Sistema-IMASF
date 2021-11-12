unit Dlg_ConfigAgox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, PDJButton;

type
  TFrm_ConfigArgox = class(TForm)
    btn_ok: TPDJButton;
    Label1: TLabel;
    cbx_porta: TComboBox;
    procedure btn_okClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ConfigArgox: TFrm_ConfigArgox;

implementation

{$R *.DFM}

procedure TFrm_ConfigArgox.btn_okClick(Sender: TObject);
var
  F : TextFile;
begin
  try
    AssignFile(F,cbx_porta.Text);
    Rewrite(F);
    Writeln(F,'f340');  //CORTA E VOLTA  f3200
    CloseFile(F);
    ShowMessage('Configuração realizada com sucesso!');
  except
    ShowMessage('Porta '+cbx_porta.Text+' não encontrada');
    Exit;
  end;
  Close;
end;

procedure TFrm_ConfigArgox.FormShow(Sender: TObject);
begin
  cbx_porta.ItemIndex := 0;
end;

end.
