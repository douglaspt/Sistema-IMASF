unit Cad_CotacaoIndice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, Grids, DBGrids, Db,
  jpeg, Buttons, BEditButton, BEdit, DCChoice;

type TCrakerDB = class(TCustomDBGrid);
type
  TFrm_Cad_CotacaoIndice = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    DataSource2: TDataSource;
    btn_relatorio: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel6: TPanel;
    Label5: TLabel;
    Panel8: TPanel;
    Panel7: TPanel;
    btn_calcular: TSpeedButton;
    btn_alterarCotacao: TPDJButton;
    btn_salvarCotacao: TPDJButton;
    btn_cancelarCotacao: TPDJButton;
    Panel16: TPanel;
    Panel13: TPanel;
    DBG_matricula: TDBGrid;
    edt_cod_indice: TEditButton;
    edt_sigla_ind: TBEdit;
    edt_nome_ind: TBEdit;
    edt_percentualigpm: TBEdit;
    edt_vlcota_cti: TBEdit;
    edt_vlCotaAtual: TBEdit;
    edt_dtcota_cti: TDCDateEdit;
    stg_audi: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_alterarCotacaoClick(Sender: TObject);
    procedure btn_salvarCotacaoClick(Sender: TObject);
    procedure btn_cancelarCotacaoClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_relatorioClick(Sender: TObject);
    procedure btn_calcularClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure edt_cod_indiceButtonClick(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
    FStatusCotacao : integer;
    procedure BotoesPrecoOnOff(b : boolean);
  public
    { Public declarations }
    procedure BotoesOnOff(b:boolean);                   override ;
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
  end;

var
  Frm_Cad_CotacaoIndice: TFrm_Cad_CotacaoIndice;
  ChaveExp: Integer;

implementation
uses Constantes, Fun_obj, Fun_DB, dtm_principal2, Imp_4053, Fun_Acesso,
Dlg_Mensagem, Fun_Data, Fun_Str;
{$R *.DFM}

procedure TFrm_Cad_CotacaoIndice.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Cotação de Índices' ;
  FEditChave    := 'edt_cod_indice' ;
  FEditAlteracao:= 'edt_sigla_ind' ;
  FUltFoco      := 'edt_nome_ind' ;
  FTitPesquisa  := 'Localizar Indices de Reajustes' ;
  FPesquisa     := 'cod_indice, nome_ind' ;
  FPesquisaTit  := 'Código, Nome do Índice' ;
  inherited;

end;

procedure TFrm_Cad_CotacaoIndice.BotoesOnOff(b:boolean);
begin
  inherited;
    btn_relatorio.Enabled := b ;
end;

procedure TFrm_Cad_CotacaoIndice.BotoesPrecoOnOff(b : boolean);
begin
  btn_alterarCotacao.Enabled := not b ;
  btn_salvarCotacao.Enabled := b ;
  btn_cancelarCotacao.Enabled := b ;
  DBG_matricula.Visible := not b ;
end;

function TFrm_Cad_CotacaoIndice.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_indice.name, 'O código do índice deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sigla_ind.name, 'A Sigla do índice deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_ind.name, 'O nome do índice deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_CotacaoIndice.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_tipodependente', 'nome_tdp');
  BAS_CarregarCombo('cbx_cod_planopagto', 'nome_plp');
  FStatus:= 0;
end;

procedure TFrm_Cad_CotacaoIndice.btn_alterarCotacaoClick(Sender: TObject);
begin
  inherited;
  if FStatus = FST_Novo then
    FStatusCotacao:= 1
  else
    FStatusCotacao:= 2;
  edt_percentualigpm.text := '0';
  edt_vlCotaAtual.Text := '0';
  if FStatusCotacao = 2 then
  begin
    edt_dtcota_cti.Date := fdt_principal2.spc_cons_cotacaoindice.fieldbyname('dtcota_cti').AsDateTime;
    edt_vlcota_cti.Text := fdt_principal2.spc_cons_cotacaoindice.fieldbyname('vlcota_cti').AsString;
   { if StrToDate(FormatDateTime('mm/01/yyyy',edt_dtcota_cti.Date)) <= StrToDate(FormatDateTime('mm/01/yyyy',Date)) then
    begin
      Dlg_Alerta('Não é possivel alterar Cotação com data inferior ao mês Atual!',self);
      edt_nome_ind.SetFocus;
      Exit;
    end; }
  end;
  edt_percentualigpm.SetFocus;
  BotoesPrecoOnOff(true);
  EscreveLog(btn_alterarCotacao.Name);
end;

procedure TFrm_Cad_CotacaoIndice.btn_salvarCotacaoClick(Sender: TObject);
var
 i : integer;
 FDtCota : tDatetime;
 FDtAlteracao : String;
begin
  inherited;
  if not BAS_ValidarCampo(edt_dtcota_cti.name, 'É necessário preencher a data da cota', VLD_DataPreenchida) or
  not BAS_ValidarCampo(edt_percentualigpm.name, 'É necessário preencher o percentual IGPM', VLD_Preenchido) or
  not BAS_ValidarCampo(edt_vlcota_cti.name, 'É necessário preencher o valor da cota do mês anterior', VLD_Preenchido) or
  not BAS_ValidarCampo(edt_vlCotaAtual.name, 'É necessário preencher o valor da cota do mês atual', VLD_Preenchido) then
    exit ;

  FDtCota := edt_dtcota_cti.Date;
  FDtAlteracao := ''''+FormatDateTime('mm/dd/yyyy',date)+'''';
  DB_ExecSQL('delete from tbl_cotacaoindice where cod_indice = '+edt_cod_indice.Text+' and dtcota_cti >= '+DB_FormatDataSQL(edt_dtcota_cti.date, ftDate));
  for i := 1 to 20 do
  begin
    DB_ExecSQL('insert into tbl_cotacaoindice ('+
    'cod_indice, dtcota_cti, vlcota_cti, dtalteracao_cti ) values ('+
    edt_cod_indice.text+', '+DB_FormatDataSQL(FDtCota, ftdate)+', '+
    DB_FormatDataSQL(edt_vlCotaAtual.text, ftfloat)+', '+FDtAlteracao+')');
    FDtCota := Data_Soma1mes(FDtCota);
    FDtAlteracao := 'null';
  end;
 // DB_ExecSQL('exec spc_cont_recalculaPrimeiraParcela '+DB_FormatDataSQL(edt_dtcota_cti.text, ftdate));
  with fdt_principal2.spc_cons_cotacaoindice do begin
    Close;
    parambyname('@cod_indice').asstring := edt_cod_indice.text ;
    parambyname('@dtcota_cti').asstring := '';
    Open;
  end;
  EscreveLog(btn_salvarCotacao.Name);
  BotoesPrecoOnOff(false);
  if FStatusCotacao = 2 then
     GeraAuditoria(StrToInt(STR_RemoveChar(edt_cod_indice.Text,'-')), '0','Alterado índice ' + edt_sigla_ind.Text, 'dt.cotação ' + FormatDateTime('mm/dd/yyyy',edt_dtcota_cti.Date) +
               ', %IGPM ' + edt_percentualigpm.Text + ', %índice do mês ' + edt_vlCotaAtual.Text, 0)
  else
     GeraAuditoria(StrToInt(STR_RemoveChar(edt_cod_indice.Text,'-')), '0','Incluido índice ' + edt_sigla_ind.Text, 'dt.cotação ' + FormatDateTime('mm/dd/yyyy',edt_dtcota_cti.Date) +
               ', %IGPM ' + edt_percentualigpm.Text + ', %índice do mês ' + edt_vlCotaAtual.Text, 0);

// Atualiza o valor de todas as cotas em aberto conforme o indice do mes de vencimento da parcela
  if edt_cod_indice.Text = '1' then
  begin
    DB_ExecSQL('update tbl_parcelamento set tbl_parcelamento.valorpagar_par = tbl_parcelamento.qtdecotas_par/tbl_parcelamento.nparcela_par*vlcota_cti '+
    'from tbl_cotacaoindice c, tbl_descontofolha d where  tbl_parcelamento.cod_indice = c.cod_indice'+
    ' and tbl_parcelamento.cod_descontofolha = d.cod_descontofolha'+
    ' and tbl_parcelamento.dtvencimento_par >= getdate()-day(getdate())'+
    ' and tbl_parcelamento.cod_sitdesconto = 1'+
    ' and d.dtdesconto_flh <= ''10/01/2013'''+//resolução 714/2013 - não ha mais reajuste a partir desta data
    ' and month(dtcota_cti) = month(tbl_parcelamento.dtvencimento_par) and year(dtcota_cti) = year(tbl_parcelamento.dtvencimento_par)');
  end;
end;

procedure TFrm_Cad_CotacaoIndice.btn_cancelarCotacaoClick(Sender: TObject);
begin
  inherited;
  BotoesPrecoOnOff(false);
  EscreveLog(btn_cancelarCotacao.Name);
  FStatus:= 0;
end;

procedure TFrm_Cad_CotacaoIndice.BAS_Alterar(Frm:Tform);
begin
  inherited ;
  with fdt_principal2.spc_cons_cotacaoindice do begin
    Close;
    parambyname('@cod_indice').asstring := edt_cod_indice.text ;
    parambyname('@dtcota_cti').asstring := '';
    Open;
  end;
  Fdt_principal2.spc_cons_cotacaoindice.Locate('dtcota_cti', Data_BOM(Date+30), [lopartialkey]);
end;

procedure TFrm_Cad_CotacaoIndice.btn_novoClick(Sender: TObject);
begin
  inherited;
  fdt_principal2.spc_cons_cotacaoindice.Close;
end;

procedure TFrm_Cad_CotacaoIndice.btn_relatorioClick(Sender: TObject);
begin
  inherited;
  Frm_Imp_4053 := TFrm_Imp_4053.Create(Self);
  Frm_Imp_4053.QuickRep1.Preview;
  Frm_Imp_4053.Release;
end;

procedure TFrm_Cad_CotacaoIndice.btn_calcularClick(Sender: TObject);
begin
  inherited;
  try
    if StrToFloat(edt_percentualigpm.text) < 0 then
     edt_percentualigpm.Text := '0';
    edt_vlCotaAtual.Text := FormatFloat('###,###,##0.0000',((StrToFloat(edt_vlcota_cti.Text) * StrToFloat(edt_percentualigpm.Text)) / 100) + StrToFloat(edt_vlcota_cti.Text));
  except
    edt_percentualigpm.Text := '0';
  end;
end;

procedure TFrm_Cad_CotacaoIndice.TabSheet2Show(Sender: TObject);
begin
  ChaveExp:= 0;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

procedure TFrm_Cad_CotacaoIndice.edt_cod_indiceButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_CotacaoIndice.stg_audiDrawCell(Sender: TObject; ACol,
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
