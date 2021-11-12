unit Mov_CancRepasseConta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DB, Grids,
  DBGrids, Buttons, Mask, DBCtrls, jpeg, BEditButton, BEdit, BComboBox;

type
  TFrm_Mov_CancRepasseConta = class(TFrm_Bas_TelaPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    edt_razao_con: TBEdit;
    edt_cod_conveniado: TEditButton;
    pnl_alerta: TPanel;
    Panel7: TPanel;
    edt_sequencia_con: TBEdit;
    edt_ano: TBEdit;
    cbx_cod_mes: TBComboBox;
    btn_cancelarrepasse: TPDJButton;
    btn_cancelaregistro: TPDJButton;
    TabSheet2: TTabSheet;
    stg_audi: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_cancelarrepasseClick(Sender: TObject);
    procedure btn_cancelaregistroClick(Sender: TObject);
    procedure edt_sequencia_conExit(Sender: TObject);
    procedure edt_anoExit(Sender: TObject);
    procedure cbx_cod_mesChange(Sender: TObject);
    procedure edt_cod_conveniado1ButtonClick(Sender: TObject);
    procedure edt_cod_conveniado1Exit(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
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
  Frm_Mov_CancRepasseConta: TFrm_Mov_CancRepasseConta;
  ChaveExp: Integer;

implementation

uses Fun_ConsCadastro, Fun_Medico,Fun_DB, DlG_Mensagem, Fun_Obj, Constantes, Fun_Str, dtm_principal,
     Fun_Acesso;

{$R *.DFM}

procedure TFrm_Mov_CancRepasseConta.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cancelamento de Repasse de Contas à Contabilidade' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Mov_CancRepasseConta.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  edt_cod_conveniado.SetFocus;
end;

function TFrm_Mov_CancRepasseConta.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_conveniado.name, 'Código do Conveniado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referência da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequencia_con.name, 'Sequência da Conta deve ser Preenchida !', VLD_Preenchido )) ;
end;


procedure TFrm_Mov_CancRepasseConta.btn_cancelarrepasseClick(Sender: TObject);
var
  Executado : boolean;
  function CriticaRepasse: boolean ;
  begin
    result := false ;
    if DB_OpenSQL('select * from tbl_lotecontamedica where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text) < 1 then begin
      Dlg_Alerta('A Conta Não foi Registrada !', self);
      Exit;
    end else begin
      if Tab.FieldByName('dtrepasse_cta').AsString = '' then begin
        Dlg_Alerta('A Conta não foi Repassada !', self);
        exit;
      end;
    end;

    if (DB_OpenSQL('select * from tbl_lotecontamedica where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text+' and dtCoparticipacao_cta >= ''01/01/2019''') > 0)
    and not(Acs_AcessoEspecial('200101')) then
    begin
      Dlg_Alerta('Não é possivel cancelar o Repasse pois ja foi gerado Coparticipação para esta conta!', self);
      Exit;
    end;

    {
    if (Date - StrToDateTime('01/'+cbx_cod_mes.getStrItemValue+'/'+edt_ano.text)) > 90 then
    begin
      Dlg_Alerta('O Mês/Ano de Referência não pode ser inferior a 90 dias da Data atual!',self);
      exit;
    end; }
    result := true ;
  end;

begin
  inherited;
    if CriticaParametros then
      Exit;
    dtrefe := ''''+cbx_cod_mes.getStrItemValue + '/01/'+edt_ano.text+'''';
    conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    if not CriticaRepasse then
      Exit ;
    Executado := false;

    DB_BeginTrans;
    Executado := DB_ExecSQL('exec spc_repassecancela_conta '+conven+', '+dtrefe+', '+edt_sequencia_con.text);
    if Executado then
      Executado := DB_ExecSQL('delete from tbl_histempenhoConveniado where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+
      ' and sequencia_cta = '+edt_sequencia_con.Text);
    if Executado then
      Executado := DB_ExecSQL('update tbl_empenhoConveniado set cod_statusAtivo = 1'+
      ' where cod_empenhoConveniado in (select cod_empenhoConveniado from tbl_histempenhoConveniado'+
      ' where cod_conveniado = '+conven+' and dtreferencia_cta = '+dtrefe+
      ' and sequencia_cta = '+edt_sequencia_con.Text+' and vlpago_cta > 0) and cod_statusAtivo = 2');
    if Executado then
    begin
      GeraAuditoria(StrToInt(conven), '0', cbx_cod_mes.Text + '/' + edt_ano.Text +
                   ', seq: ' + edt_sequencia_con.Text + ', ' + btn_cancelarrepasse.Caption, '', 0);
      Dlg_Ok('Cancelamento de Repasse Efetuado com Sucesso !',self);
      DB_Commit;
    end
    else
    begin
      Dlg_Erro('ATENÇÃO ! Ocorreu um erro e não foi possivel Cancelar o Repasse da Conta!', self);
      DB_RollBack;
    end;
    edt_cod_conveniado.SetFocus;
    EscreveLog(btn_cancelarrepasse.name);   
end;

procedure TFrm_Mov_CancRepasseConta.btn_cancelaregistroClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  edt_sequencia_conExit(self);
  if (pnl_alerta.Visible) and (pnl_alerta.Caption = 'CONTA REGISTRADA') then
  begin
    DB_ExecSQL('update tbl_lotecontamedica set protocolo_cta = null, nf_cta = null, vlnf_cta = null,'+
    ' dtemissaoNF_cta = null, dtrecebimentoNF_cta = null, dtenvioNF_cta =  null, dtcompetencia_cta = null,'+
    ' vlISS_cta = null, ISSrequerido_cta = 0, ISSrecebido_cta = 0, vljurosMulta_cta = null, dtrecolhimento_cta = null'+
    ' where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text);
    edt_sequencia_conExit(self);
    GeraAuditoria(StrToInt(conven), '0', cbx_cod_mes.Text + '/' + edt_ano.Text +
                 ', seq: ' + edt_sequencia_con.Text + ', ' + btn_cancelaregistro.Caption, '', 0);
    Dlg_Ok('Cancelamento de Registro Efetuado com Sucesso !',self);
  end
  else
    Dlg_Alerta('A Conta Não foi Registrada !', self);
end;

procedure TFrm_Mov_CancRepasseConta.edt_sequencia_conExit(Sender: TObject);
begin
  inherited;
  if (edt_cod_conveniado.Text <> '') and (cbx_cod_mes.text <> '')
  and (edt_ano.text <> '') and (edt_sequencia_con.text <> '') then
  begin
    dtrefe := ''''+cbx_cod_mes.getStrItemValue + '/01/'+edt_ano.text+'''';
    conven := STR_RemoveChar(edt_cod_conveniado.text,'-');
    DB_OpenSQL('select dtrepasse_cta, protocolo_cta from tbl_lotecontamedica where cod_conveniado = '+conven+
    ' and dtreferencia_cta = '+dtrefe+' and sequencia_cta = '+edt_sequencia_con.text);
    if Tab.fieldByName('dtrepasse_cta').AsString <> '' then
    begin
      pnl_alerta.Caption := 'CONTA REPASSADA';
      pnl_alerta.Color := clred;
      pnl_alerta.Visible := true;
    end
    else begin
      pnl_alerta.Visible := false;
      if Tab.fieldByName('protocolo_cta').AsString <> '' then
      begin
        pnl_alerta.Caption := 'CONTA REGISTRADA';
        pnl_alerta.Color := clLime;
        pnl_alerta.Visible := true;
      end
      else
        pnl_alerta.Visible := false;
    end;
  end;
end;

procedure TFrm_Mov_CancRepasseConta.edt_anoExit(Sender: TObject);
begin
  inherited;
  edt_sequencia_conExit(self);
end;

procedure TFrm_Mov_CancRepasseConta.cbx_cod_mesChange(Sender: TObject);
begin
  inherited;
  edt_sequencia_conExit(self);
end;

procedure TFrm_Mov_CancRepasseConta.edt_cod_conveniado1ButtonClick(
  Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Mov_CancRepasseConta.edt_cod_conveniado1Exit(
  Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
  edt_sequencia_conExit(self);
end;

procedure TFrm_Mov_CancRepasseConta.edt_cod_conveniadoExit(
  Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
  edt_sequencia_conExit(self);
end;

procedure TFrm_Mov_CancRepasseConta.edt_cod_conveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text = '' then
    begin
    edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
    end
  else
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Mov_CancRepasseConta.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 999999999;
  if edt_cod_conveniado.Text <> '' then
     ChaveExp:= StrToInt(STR_RemoveChar(edt_cod_conveniado.text,'-'));
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 2);
end;

procedure TFrm_Mov_CancRepasseConta.stg_audiDrawCell(Sender: TObject; ACol,
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



