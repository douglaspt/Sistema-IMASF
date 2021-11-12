unit Cad_Tarifa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, Db, BComboBox,
  BEditButton, BEdit, Grids, Fun_Obj;

type
  TFrm_Cad_Tarifa = class(TFrm_Bas_Cadastro)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel5: TPanel;
    Panel8: TPanel;
    edt_cod_tarifa: TEditButton;
    edt_valor_tar: TBEdit;
    edt_nomeTXT_tar: TBEdit;
    edt_nome_tar: TBEdit;
    cbx_cod_statusAtivo: TBComboBox;
    cbx_cod_tipoTarifa: TBComboBox;
    stg_audi: TStringGrid;
    Panel9: TPanel;
    cbx_parcelamento_tar: TBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure edt_nome_tar1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_salvarClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure CarregarCombos;
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure edt_cod_tarifaButtonClick(Sender: TObject);
    procedure edt_cod_tarifaEnter(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btn_excluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_Tarifa: TFrm_Cad_Tarifa;
  ChaveExp: Integer;

implementation

{$R *.DFM}

uses Constantes, Fun_Db, Fun_Str, Fun_Acesso;

procedure TFrm_Cad_Tarifa.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Planos' ;
  FEditChave    := 'edt_cod_tarifa' ;
  FEditAlteracao:= 'edt_nome_tar' ;
  FUltFoco      := 'edt_valor_tar' ;
  FTitPesquisa  := 'Localizar Tarifa' ;
  FPesquisa     := 'cod_tarifa, nome_tar, valor_tar, nomeTXT_tar' ;
  FPesquisaTit  := 'Código, Nome da Tarifa, Valor, Nome para o Arquivo' ;
  inherited;
end;

function TFrm_Cad_Tarifa.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_tarifa.name, 'O código deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_tar.name, 'O Nome da Tarifa deve ser preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomeTXT_tar.name, 'O Nome da Tarifa para o Arquivo TXT deve ser preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_valor_tar.name, 'O Valor da Tarifa deve ser preenchido!', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_Tarifa.edt_nome_tar1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  edt_nomeTXT_tar.Text := edt_nome_tar.Text;
end;

procedure TFrm_Cad_Tarifa.btn_salvarClick(Sender: TObject);
var
  x: Integer;
begin
  StatusBotaoAntesHeranca:= FStatus;
  FCodigoGeral:= StrToInt(STR_RemoveChar(edt_cod_tarifa.Text,'-'));
  FNomeGeral:= edt_nome_tar.Text;
  WMudancas:= '';
  DadosSaida:= LerDadosTela(Self);
  For x:= 1 to High(DadosSaida) do
      if DadosEntrada[x] <> DadosSaida[x] then
         WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';
  edt_valor_tar.Text := STR_SubstChar(edt_valor_tar.text,',','.');
  inherited;
  if FStatus = FST_Normal then
     begin
     if WMudancas <> '' then
        if StatusBotaoAntesHeranca = FST_Novo then
           GeraAuditoria(FCodigoGeral, '0', 'Incluído ', FNomeGeral, 0)
        else
           GeraAuditoria(FCodigoGeral, '0', 'Alterado ' + FNomeGeral, 'Situação Anterior ' + WMudancas, 0);
     end;
{  GeraAuditoria(0,'0','Cód.Tarifa ' + edt_cod_tarifa.Text +
                ', Nome ' + edt_nome_tar.Text +
                ', Nome Txt ' + edt_nomeTXT_tar.Text, 'Vlr. ' +
                FormatFloat('##,###,##0.00',StrToFloat(edt_valor_tar.Text)),0);}
end;

procedure TFrm_Cad_Tarifa.PageControl1Change(Sender: TObject);
begin
  inherited;
  ChaveExp:= 0;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

procedure TFrm_Cad_Tarifa.CarregarCombos;
begin
  BAS_CarregarCombo('cbx_cod_statusAtivo', 'descricao_sta');
  BAS_CarregarCombo('cbx_cod_tipoTarifa', 'descricao_tpt');
  cbx_parcelamento_tar.Clear;
  cbx_parcelamento_tar.Items.AddObject('S', TObject(1));
  cbx_parcelamento_tar.Items.AddObject('N', TObject(2));  
end;

procedure TFrm_Cad_Tarifa.btn_alterarClick(Sender: TObject);
begin
  CarregarCombos;
  inherited;
  DadosEntrada := LerDadosTela(Self);
end;

procedure TFrm_Cad_Tarifa.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
end;

procedure TFrm_Cad_Tarifa.btn_novoClick(Sender: TObject);
begin
  CarregarCombos;
  inherited;
end;

procedure TFrm_Cad_Tarifa.edt_cod_tarifaButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

procedure TFrm_Cad_Tarifa.edt_cod_tarifaEnter(Sender: TObject);
begin
  CarregarCombos;
  inherited;
end;

procedure TFrm_Cad_Tarifa.stg_audiDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S: String;
  drawrect :trect;
begin
  inherited;
  stg_audi.Brush.Style := (bsSolid);
  if Arow = 0 then
     begin
     stg_audi.Canvas.Font.Style:= [fsbold]; // negrito
     stg_audi.Canvas.Brush.Color:= clBtnFace;
     end
  else
     stg_audi.Canvas.Font.Style:=[];

  S:= (Sender as TStringgrid).Cells[ACol, ARow];
  if Length(S) > 0 then
    begin
    drawrect := rect;
    DrawText((Sender As TStringgrid).canvas.handle, Pchar(S), Length(S), drawrect, dt_calcrect or dt_wordbreak or dt_left );
    if (drawrect.bottom - drawrect.top) > (Sender As TStringgrid).RowHeights[Arow] then
       (Sender As TStringgrid).RowHeights[Arow]:= (drawrect.bottom - drawrect.top)  // changing the row height fires the event again!
    else
      begin
      drawrect.Right := rect.right;
      (Sender As TStringgrid).canvas.fillrect(drawrect);
      DrawText((Sender As TStringgrid).canvas.handle, Pchar(S), Length(S), drawrect, dt_wordbreak or dt_left);
      end;
    end;
end;

procedure TFrm_Cad_Tarifa.btn_excluirClick(Sender: TObject);
begin
  StatusBotaoAntesHeranca:= FStatus;
  FCodigoGeral:= StrToInt(STR_RemoveChar(edt_cod_tarifa.Text,'-'));
  FNomeGeral:= edt_nome_tar.Text;
  inherited;
  if FStatus = FST_Normal then
     GeraAuditoria(FCodigoGeral, '0', 'Excluído ' + FNomeGeral, '', 0)
end;

end.
