unit Mov_2076;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BComboBox, BDateEdit, ShellApi;

type
  TFrm_Mov_2076 = class(TFrm_Bas_TelaPadrao)
    DataSource1: TDataSource;
    Image2: TImage;
    Panel6: TPanel;
    Panel7: TPanel;
    btn_novo: TPDJButton;
    btn_alterar: TPDJButton;
    btn_Remover: TPDJButton;
    btn_Salvar: TPDJButton;
    btn_cancelar: TPDJButton;
    dbg_conveniado: TDBGrid;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_carteira: TDCEdit;
    edt_nome: TDCEdit;
    edt_dtinicio_bht: TDCDateEdit;
    edt_dtfim_bth: TDCDateEdit;
    Panel5: TPanel;
    edt_dtsistema_bth: TBDateEdit;
    pnl_filtro: TPanel;
    Label1: TLabel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    rdg_indfiltro: TRadioGroup;
    btn_localizar: TPDJButton;
    btn_limpar: TPDJButton;
    pnl_indices: TPanel;
    rdg_indice: TRadioGroup;
    Label11: TLabel;
    edt_localizar: TEdit;
    SpeedButton6: TSpeedButton;
    lbl_total: TLabel;
    btn_imprimir: TPDJButton;
    pgb_registros: TProgressBar;
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rdg_indiceClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure edt_dtinicio_bhtExit(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    FStatus2 : Integer ;
    procedure BotoesOnOff(b:boolean);
    procedure AtualizaIndice;
  public
    { Public declarations }
  end;

var
  Frm_Mov_2076: TFrm_Mov_2076;
  str_arquiventrad, S, Algo: String;
  byt_nameofthfile : TextFile;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
     Fun_Obj, dtm_principal6, Fun_ConsCadastro, Fun_Data, Fun_Medico, Cad_fpm,
     Cad_Segurado, Cad_Dependente, Bas_Impressao;

{$R *.DFM}

procedure TFrm_Mov_2076.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_usuario','descricao_usu');
  AtualizaIndice;
  dbg_conveniado.SetFocus;
end;

procedure TFrm_Mov_2076.AtualizaIndice;
begin
  with fdt_principal.spc_cons_med_gestante do
  begin
   Close;
   ParamByName('@cod_order').Value := rdg_indice.ItemIndex;
   ParamByName('@dtini').AsString := '';
   ParamByName('@dtfim').AsString := '';
   if edt_dtinicial.Text <> '' then
      ParamByName('@dtini').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date);
   if edt_dtfinal.Text <> '' then
      ParamByName('@dtfim').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date);
   ParamByName('@indfiltro').Value := rdg_indfiltro.ItemIndex;
   Open;
   lbl_total.Caption := 'Total de Registros => ' + IntToStr(DB_RollCount);
  end;
end;

procedure TFrm_Mov_2076.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := b ;
  btn_alterar.Enabled := b ;
  btn_Salvar.Enabled := not b ;
  btn_cancelar.Enabled := not b;
  btn_Remover.Enabled := b ;
  dbg_conveniado.visible := b ;
end;

procedure TFrm_Mov_2076.btn_novoClick(Sender: TObject);
begin
  inherited;
  if not FIncluir then begin
    Dlg_Alerta('Usuário não autorizado a Incluir Novo Registro !', self);
    exit;
  end;
  inherited;
  EscreveLog(btn_novo.name);
  pnl_filtro.Visible:= False;
  pnl_indices.Visible:= False;
  FStatus := FST_Novo;
  BotoesOnOff(false);
  Obj_EmptyEdit(self);
  edt_inscricao_ben.Enabled := true;
  edt_inscricao_ben.SetFocus;
  edt_dtinicio_bht.Date := Date;
  edt_dtfim_bth.Date := Date + 270;
  EscreveLog(btn_novo.name);
end;

procedure TFrm_Mov_2076.btn_alterarClick(Sender: TObject);
begin
  inherited;
  if not FAlterar then begin
    Dlg_Alerta('Usuário não autorizado a Alterar Registro !', self);
    exit;
  end;
  EscreveLog(btn_salvar.name);

  pnl_filtro.Visible:= False;
  pnl_indices.Visible:= False;
  FStatus := FST_Alteracao;
  with fdt_principal.spc_cons_med_gestante do begin
    BotoesOnOff(false);
    edt_cod_beneficiario.text := FieldByName('cod_beneficiario').AsString ;
    edt_dtinicio_bht.Text := FieldByName('dtinicio_gte').AsString ;
    edt_dtfim_bth.text := FieldByName('dtfinal_gte').AsString ;
    edt_dtsistema_bth.Date :=  FieldByName('dtsistema_gte').AsDateTime;
  end;
    edt_inscricao_ben.enabled := false;
    edt_inscricao_benButtonClick(self);
    edt_dtinicio_bht.SetFocus;
    EscreveLog(btn_alterar.name);
end;

procedure TFrm_Mov_2076.btn_SalvarClick(Sender: TObject);
begin
  inherited;
  if not FAlterar then begin
    Dlg_Alerta('Usuário não autorizado a Alterar Registro !', self);
    exit;
  end;
  EscreveLog(btn_salvar.name);

  if not BAS_ValidarCampo(edt_inscricao_ben.name, 'É necessário preencher a Inscrição!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_dtinicio_bht.name, 'É necessário preencher a Data de Inicio !', VLD_DataPreenchida) or
   not BAS_ValidarCampo(edt_dtfim_bth.name, 'É necessário preencher a Data Final!', VLD_DataPreenchida) then
     exit ;
  if not Dlg_YesNo('Tem Certeza que Deseja Salvar?', Self) then Exit;
  if FStatus = FST_Novo then
  DB_ExecSQL('insert into tbl_gestante ('+
  'cod_beneficiario, dtinicio_gte, dtfinal_gte, dtsistema_gte) values ('+
  edt_cod_beneficiario.Text+','+DB_FormatDataSQL(edt_dtinicio_bht.text, ftDate)+
  ', '+DB_FormatDataSQL(edt_dtfim_bth.Text, ftDate)+', getdate())')
  else
      DB_ExecSQL('update tbl_gestante set '+
    ' dtinicio_gte = '+DB_FormatDataSQL(edt_dtinicio_bht.text, ftDate)+', '+
    ' dtfinal_gte = '+DB_FormatDataSQL(edt_dtfim_bth.text, ftDate)+
    ' where cod_beneficiario = '+edt_cod_beneficiario.Text);
  with fdt_principal.spc_cons_med_gestante do begin
    Close;
    Open;
  end;
  BotoesOnOff(true);
  dbg_conveniado.SetFocus;
  EscreveLog(btn_Salvar.name);
  pnl_filtro.Visible:= True;
  pnl_indices.Visible:= True;
end;

procedure TFrm_Mov_2076.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  BotoesOnOff(true);
  dbg_conveniado.SetFocus;
  EscreveLog(btn_cancelar.name);
  pnl_filtro.Visible:= True;
  pnl_indices.Visible:= True;
end;

procedure TFrm_Mov_2076.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario+' and b.sexo_ben = ''F''';
  if FStatus = FST_Novo then
  begin
    if edt_inscricao_ben.text = '' then
      FPesquisaSQL  := FPesquisaSQLDefalt
    else
      FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end;
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, b.cod_plano, inscricao_ben, titulacartei_ben,'+
    ' digito_ben, descricao_pla, endereco_ben, bairro_ben, cep_ben'+
    ' from tbl_beneficiario b, tbl_plano p where b.cod_plano = p.cod_plano and b.cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  end;
end;

procedure TFrm_Mov_2076.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2076.rdg_indiceClick(Sender: TObject);
begin
  inherited;
  edt_localizar.Text:= '';
  SpeedButton6.Click;
  edt_localizar.SetFocus;
end;

procedure TFrm_Mov_2076.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AtualizaIndice;
  if edt_localizar.text <> '' then
     if rdg_indice.ItemIndex = 0 then
        fdt_principal.spc_cons_med_gestante.Locate('inscricao_ben', edt_localizar.text, [loCaseInsensitive])
     else
        if rdg_indice.ItemIndex = 1  then
           fdt_principal.spc_cons_med_gestante.Locate('nome_ben', edt_localizar.text, [loPartialKey])
        else
           if rdg_indice.ItemIndex = 2  then
              fdt_principal.spc_cons_med_gestante.Locate('dtinicio_gte', edt_localizar.text, [loPartialKey])
           else
              if rdg_indice.ItemIndex = 3 then
                 fdt_principal.spc_cons_med_gestante.Locate('dtfinal_gte', edt_localizar.text, [loPartialKey]);

end;

procedure TFrm_Mov_2076.btn_localizarClick(Sender: TObject);
begin
  inherited;
  AtualizaIndice;
end;

procedure TFrm_Mov_2076.btn_limparClick(Sender: TObject);
begin
  inherited;
  edt_dtinicial.Text:= '';
  edt_dtfinal.Text:= '';
  AtualizaIndice;
end;

procedure TFrm_Mov_2076.btn_imprimirClick(Sender: TObject);
begin
  inherited;
  {
  AtualizaIndice;
  if fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.RecordCount = 0 then
     begin
     Dlg_Alerta('Não há registros a listar!', Self);
     Exit;
     end;
  fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.First;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_med_benefTratamentoHospReferencia;
  Frm_Bas_Impressao.FCampo1:= rdg_indfiltro.Items[rdg_indfiltro.ItemIndex];
  Frm_Bas_Impressao.FCampo2:= edt_dtinicial.Text;
  Frm_Bas_Impressao.FCampo3:= edt_dtfinal.Text;
  Frm_Bas_Impressao.showReport(4241);
  fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.close;
  lbl_total.Caption := 'Total de Registros => ';   }
end;

procedure TFrm_Mov_2076.edt_dtinicio_bhtExit(Sender: TObject);
begin
  inherited;
  edt_dtfim_bth.Date := (edt_dtinicio_bht.Date + 270);
end;

end.



