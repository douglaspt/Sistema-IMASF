unit Mov_ExcluirConta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_ExcluirConta = class(TFrm_Bas_TelaPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    edt_sequencia_con: TDCEdit;
    btn_excluiconta: TPDJButton;
    stg_audi: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure btn_excluicontaClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
    dtrefe, conven : string ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Mov_ExcluirConta: TFrm_Mov_ExcluirConta;
  ChaveExp: Integer;

implementation

uses Fun_ConsCadastro, Fun_Medico,Fun_DB, DlG_Mensagem, Fun_Obj, Constantes, Fun_Str, dtm_principal,
     Fun_Acesso;

{$R *.DFM}

procedure TFrm_Mov_ExcluirConta.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Exluir Conta' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'C�digo, Nome do Conveniado, Raz�o Social' ;
  inherited;
end;

procedure TFrm_Mov_ExcluirConta.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Mov_ExcluirConta.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
end;

procedure TFrm_Mov_ExcluirConta.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Mov_ExcluirConta.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_conveniado.name, 'C�digo do Conveiado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Refer�ncia da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequencia_con.name, 'Sequencia da Conta deve ser Preenchida !', VLD_Preenchido )) ;
end;


procedure TFrm_Mov_ExcluirConta.btn_excluicontaClick(Sender: TObject);
begin
  inherited;
    if CriticaParametros then
      Exit;
    dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
    conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    if DB_OpenSQL('select cod_conveniado, dtreferencia_cta, sequencia_cta, dtrepasse_cta from tbl_lotecontamedica where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text) < 1 then begin
      Dlg_Alerta('A Conta N�o foi Registrada !', self);
      Exit;
    end;
      if tab.FieldByName('dtrepasse_cta').AsString <> '' then begin
        Dlg_Alerta('N�o � possivel excluir uma conta Repassada!', self);
        Exit;
      end;
    DB_ExecSQL('exec spc_exclui_contas '+conven+', '+dtrefe+', '+edt_sequencia_con.text);
    GeraAuditoria(StrToInt(conven), '0', 'Conta Exclu�da', cbx_cod_mes.Text + '/' + edt_ano.Text + ', sequ�ncia ' + edt_sequencia_con.Text, 0);
    Dlg_Ok('Conta Exclu�da com Sucesso !',self);
    EscreveLog(btn_excluiconta.name);
end;

procedure TFrm_Mov_ExcluirConta.TabSheet2Show(Sender: TObject);
begin
  inherited;
//  if edt_cod_conveniado.Text = '' then
//     Exit;
  if edt_cod_conveniado.Text <> '' then
     begin
     ChaveExp:= StrToInt(STR_RemoveChar(edt_cod_conveniado.Text,'-'));
     GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 2);
     end
  else
     GetInfoAuditoria1ou2(self, stg_audi.name, 999999999, 2);
end;

procedure TFrm_Mov_ExcluirConta.stg_audiDrawCell(Sender: TObject; ACol,
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

end.



