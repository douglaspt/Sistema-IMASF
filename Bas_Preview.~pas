unit Bas_Preview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ExtCtrls, ComCtrls, PDJButton, StdCtrls, jpeg, FR_Ctrls,
  FR_View, Printers;

type
  TFrm_Bas_Preview = class(TFrm_Bas_TelaPadrao)
    frPreview1: TfrPreview;
    frSpeedButton1: TfrSpeedButton;
    frSpeedButton2: TfrSpeedButton;
    frSpeedButton3: TfrSpeedButton;
    frSpeedButton4: TfrSpeedButton;
    frSpeedButton5: TfrSpeedButton;
    frSpeedButton6: TfrSpeedButton;
    frSpeedButton7: TfrSpeedButton;
    frSpeedButton8: TfrSpeedButton;
    frSpeedButton9: TfrSpeedButton;
    frSpeedButton10: TfrSpeedButton;
    procedure frSpeedButton4Click(Sender: TObject);
    procedure frSpeedButton5Click(Sender: TObject);
    procedure frSpeedButton6Click(Sender: TObject);
    procedure frSpeedButton7Click(Sender: TObject);
    procedure frSpeedButton8Click(Sender: TObject);
    procedure frSpeedButton9Click(Sender: TObject);
    procedure frSpeedButton10Click(Sender: TObject);
    procedure frSpeedButton1Click(Sender: TObject);
    procedure frSpeedButton2Click(Sender: TObject);
    procedure frSpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Bas_Preview: TFrm_Bas_Preview;

implementation

{$R *.DFM}

procedure TFrm_Bas_Preview.frSpeedButton4Click(Sender: TObject);
begin
  frPreview1.First;
end;

procedure TFrm_Bas_Preview.frSpeedButton5Click(Sender: TObject);
begin
  frPreview1.Prev;
end;

procedure TFrm_Bas_Preview.frSpeedButton6Click(Sender: TObject);
begin
  frPreview1.Next;
end;

procedure TFrm_Bas_Preview.frSpeedButton7Click(Sender: TObject);
begin
  frPreview1.Last;
end;

procedure TFrm_Bas_Preview.frSpeedButton8Click(Sender: TObject);
begin
  frPreview1.LoadFromFile;
end;

procedure TFrm_Bas_Preview.frSpeedButton9Click(Sender: TObject);
begin
  frPreview1.SaveToFile;
end;

procedure TFrm_Bas_Preview.frSpeedButton10Click(Sender: TObject);
begin
  frPreview1.Print;
 // PrintDialog1.Execute;
end;

procedure TFrm_Bas_Preview.frSpeedButton1Click(Sender: TObject);
begin
  frPreview1.OnePage;
end;

procedure TFrm_Bas_Preview.frSpeedButton2Click(Sender: TObject);
begin
  frPreview1.Zoom := 100;
end;

procedure TFrm_Bas_Preview.frSpeedButton3Click(Sender: TObject);
begin
  frPreview1.PageWidth;
end;

procedure TFrm_Bas_Preview.FormActivate(Sender: TObject);
begin
  frSpeedButton2.Down := True;
  frSpeedButton2Click(nil);
end;

end.
