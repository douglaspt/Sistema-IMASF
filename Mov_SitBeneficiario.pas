unit Mov_SitBeneficiario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, PDJButton, Grids, DCGrids, DCDBGrids, Db, DBTables, StdCtrls,
  DCChoice;

var
  Fdtsituacao,
  Fsituacao : string ;
function Sit_AlterarSituacao(cod_beneficiario, inscricao, titularidade, carteira, nome, dtsituacao, situacao : string;Frm:Tform): boolean;
type
  TFrm_Mov_SitBeneficiario = class(TForm)
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
    pnl_carteira: TPanel;
    edt_inscricao_ben: TDCEdit;
    Panel9: TPanel;
    edt_dtsituacao_ben: TDCDateEdit;
    cbx_cod_sitbeneficiario: TDCComboBox;
    Panel5: TPanel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure cbx_cod_sitbeneficiarioCloseUp(Sender: TObject);
  private
    { Private declarations }
     wCod_Sit_Old : string ;
     FResult : boolean ;
     procedure BAS_CarregarCombo(Combo, Campo : String);
  public
    { Public declarations }
  end;

var
  Frm_Mov_SitBeneficiario: TFrm_Mov_SitBeneficiario;

implementation
uses Fun_obj, Fun_Str, Fun_db, Fun_Acesso, Fun_beneficiario;
{$R *.DFM}

function Sit_AlterarSituacao(cod_beneficiario, inscricao, titularidade, carteira, nome, dtsituacao, situacao : string;Frm:Tform): boolean;
begin
  Frm.Enabled := false ;
  Frm_Mov_SitBeneficiario := TFrm_Mov_SitBeneficiario.Create(Frm);
  with Frm_Mov_SitBeneficiario do begin
    edt_inscricao_ben.text := inscricao ;
    pnl_carteira.Caption := carteira ;
    edt_nome_ben.text := nome ;
    edt_dtsituacao_ben.text := dtsituacao ;
    Obj_SetFormObjValueByName(Frm_Mov_SitBeneficiario, 'cbx_cod_sitbeneficiario', situacao);
    wCod_Sit_Old := situacao ;
    ShowModal;
    if (FResult) then begin
      Ben_AlteraSituacaoHistorico(cod_beneficiario, inscricao, titularidade, Fdtsituacao, Fsituacao, wCod_Sit_Old, '');
    end;
    Result := FResult ;
    Release;
  end;
  frm.Enabled := true ;
end;

procedure TFrm_Mov_SitBeneficiario.BAS_CarregarCombo(Combo, Campo : String);
begin
  Obj_LoadCombo(Self, combo, campo, Copy(combo, 5, length(combo)), 'tbl_'+Copy(combo, 9, length(combo)));
end;

procedure TFrm_Mov_SitBeneficiario.FormCreate(Sender: TObject);
begin
  pnl_Titulo.Caption := '    Alteração de Situação do Beneficiário no Instituto' ;
  BAS_CarregarCombo('cbx_cod_sitbeneficiario', 'nome_sit');
end;

procedure TFrm_Mov_SitBeneficiario.btn_cancelarClick(Sender: TObject);
begin
  FResult := false ;
  Close;
  EscreveLog(btn_cancelar.Name);
end;

procedure TFrm_Mov_SitBeneficiario.btn_okClick(Sender: TObject);
begin
  FResult := wCod_Sit_Old <> cbx_cod_sitbeneficiario.ValueItem ;
  if FResult then begin
    Fsituacao := cbx_cod_sitbeneficiario.ValueItem ;
    Fdtsituacao := edt_dtsituacao_ben.text ;
  end;
  Close;
  EscreveLog(btn_ok.Name);
end;

procedure TFrm_Mov_SitBeneficiario.cbx_cod_sitbeneficiarioCloseUp(
  Sender: TObject);
begin
  if (cbx_cod_sitbeneficiario.valueitem = '3') or (cbx_cod_sitbeneficiario.valueitem = '4') then
    edt_dtsituacao_ben.date := date ;
end;

end.
