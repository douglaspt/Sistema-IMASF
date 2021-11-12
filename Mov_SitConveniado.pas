unit Mov_SitConveniado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, PDJButton, Grids, DCGrids, DCDBGrids, Db, DBTables, StdCtrls,
  DCChoice;

var
  Fdtsituacao,
  Fsituacao : string ;
function Sit_AlterarSituacaoConven(codigo, nome, dtsituacao, situacao : string;Frm:Tform): boolean;
type
  TFrm_Mov_SitConveniado = class(TForm)
    pnl_Titulo: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Image3: TImage;
    btn_ok: TPDJButton;
    btn_cancelar: TPDJButton;
    Panel1: TPanel;
    edt_nome_ben: TDCEdit;
    Panel4: TPanel;
    edt_cod_conveniado: TDCEdit;
    Panel9: TPanel;
    edt_dtsituacao_ben: TDCDateEdit;
    cbx_cod_sitconveniado: TDCComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure cbx_cod_sitconveniadoCloseUp(Sender: TObject);
  private
    { Private declarations }
     wCod_Sit_Old : string ;
     FResult : boolean ;
     procedure BAS_CarregarCombo(Combo, Campo : String);
  public
    { Public declarations }
  end;

var
  Frm_Mov_SitConveniado: TFrm_Mov_SitConveniado;

implementation
uses Fun_obj, Fun_Str, Fun_db, Fun_Acesso;
{$R *.DFM}

function Sit_AlterarSituacaoConven(codigo, nome, dtsituacao, situacao : string;Frm:Tform): boolean;
begin
  Frm.Enabled := false ;
  Frm_Mov_SitConveniado := TFrm_Mov_SitConveniado.Create(Frm);
  with Frm_Mov_SitConveniado do begin
    edt_cod_conveniado.text := codigo ;
    edt_nome_ben.text := nome ;
    edt_dtsituacao_ben.text := dtsituacao ;
    Obj_SetFormObjValueByName(Frm_Mov_SitConveniado, 'cbx_cod_sitconveniado', situacao);
    wCod_Sit_Old := situacao ;
    ShowModal;
    Result := FResult ;
    Release;
  end;
  frm.Enabled := true ;
end;


procedure TFrm_Mov_SitConveniado.BAS_CarregarCombo(Combo, Campo : String);
begin
  Obj_LoadCombo(Self, combo, campo, Copy(combo, 5, length(combo)), 'tbl_'+Copy(combo, 9, length(combo)));
end;

procedure TFrm_Mov_SitConveniado.FormCreate(Sender: TObject);
begin
  pnl_Titulo.Caption := '    Alteração de Situação do Conveniado no Instituto' ;
  BAS_CarregarCombo('cbx_cod_sitconveniado', 'nome_stc');
end;

procedure TFrm_Mov_SitConveniado.btn_cancelarClick(Sender: TObject);
begin
  FResult := false ;
  Close;
  EscreveLog(btn_cancelar.Name);
end;

procedure TFrm_Mov_SitConveniado.btn_okClick(Sender: TObject);
begin
  FResult := wCod_Sit_Old <> cbx_cod_sitconveniado.ValueItem ;
  if FResult then begin
    Fsituacao := cbx_cod_sitconveniado.ValueItem ;
    Fdtsituacao := edt_dtsituacao_ben.text ;
  end;
  Close;
  EscreveLog(btn_ok.Name);
end;

procedure TFrm_Mov_SitConveniado.cbx_cod_sitconveniadoCloseUp(
  Sender: TObject);
begin
  edt_dtsituacao_ben.date := date ;
end;

end.
