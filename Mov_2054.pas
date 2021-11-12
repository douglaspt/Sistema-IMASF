unit Mov_2054;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BComboBox, BDateEdit, ShellApi;

type
  TFrm_Mov_2054 = class(TFrm_Bas_TelaPadrao)
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
    Panel1: TPanel;
    edt_obs_bth: TDCEdit;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_carteira: TDCEdit;
    edt_nome: TDCEdit;
    edt_dtinicio_bht: TDCDateEdit;
    edt_dtfim_bth: TDCDateEdit;
    Panel8: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel5: TPanel;
    cbx_cod_usuario: TBComboBox;
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
    btn_exportaexcel: TPDJButton;
    btn_beneficiario: TPDJButton;
    dbe_cod_beneficiario: TDBEdit;
    dbe_titulacarteiben: TDBEdit;
    SaveDialog: TSaveDialog;
    pgb_registros: TProgressBar;
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_RemoverClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure rdg_indiceClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_beneficiarioClick(Sender: TObject);
    procedure btn_exportaexcelClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
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
  Frm_Mov_2054: TFrm_Mov_2054;
  str_arquiventrad, S, Algo: String;
  byt_nameofthfile : TextFile;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
     dtm_principal4, Fun_Obj, dtm_principal6, Fun_ConsCadastro, Fun_Data, Fun_Medico, Cad_fpm,
     Cad_Segurado, Cad_Dependente, Bas_Impressao;

{$R *.DFM}

procedure TFrm_Mov_2054.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_usuario','descricao_usu');
  AtualizaIndice;
  dbg_conveniado.SetFocus;
  with fdt_principal4.spc_cons_med_benefTratamentoHospReferencia do begin
    Close;
    Open;
  end;
end;

procedure TFrm_Mov_2054.AtualizaIndice;
begin
  with fdt_principal4.spc_cons_med_benefTratamentoHospReferencia do
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

procedure TFrm_Mov_2054.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := b ;
  btn_alterar.Enabled := b ;
  btn_Salvar.Enabled := not b ;
  btn_cancelar.Enabled := not b;
  btn_Remover.Enabled := b ;
  dbg_conveniado.visible := b ;
end;

procedure TFrm_Mov_2054.btn_novoClick(Sender: TObject);
begin
  inherited;
  if not FIncluir then begin
    Dlg_Alerta('Usu�rio n�o autorizado a Incluir Novo Registro !', self);
    exit;
  end;
  inherited;
  EscreveLog(btn_novo.name);

  pnl_filtro.Visible:= False;
  pnl_indices.Visible:= False;
  FStatus := FST_Novo;
  BotoesOnOff(false);
  Obj_EmptyEdit(self);
  Obj_SetFormObjValueByName(self,'cbx_cod_usuario', FCod_Usuario);
  edt_inscricao_ben.Enabled := true;
  edt_inscricao_ben.SetFocus;
  EscreveLog(btn_novo.name);
end;

procedure TFrm_Mov_2054.btn_alterarClick(Sender: TObject);
begin
  inherited;
  if not FAlterar then begin
    Dlg_Alerta('Usu�rio n�o autorizado a Alterar Registro !', self);
    exit;
  end;
  EscreveLog(btn_salvar.name);

  pnl_filtro.Visible:= False;
  pnl_indices.Visible:= False;
  FStatus := FST_Alteracao;
  with fdt_principal4.spc_cons_med_benefTratamentoHospReferencia do begin
    BotoesOnOff(false);
    edt_cod_beneficiario.text := FieldByName('cod_beneficiario').AsString ;
    edt_cod_conveniado.Text :=  FieldByName('cod_conveniado').AsString;
    edt_dtinicio_bht.Text := FieldByName('dtinicio_bht').AsString ;
    edt_dtfim_bth.text := FieldByName('dtfim_bth').AsString ;
    edt_obs_bth.Text := FieldByName('obs_bth').AsString ;
    edt_dtsistema_bth.Date :=  FieldByName('dtsistema_bth').AsDateTime;
    Obj_SetFormObjValueByName(self,'cbx_cod_usuario', FieldByName('cod_usuario').AsString);
  end;
    edt_inscricao_ben.enabled := false;
    edt_inscricao_benButtonClick(self);
    edt_dtinicio_bht.SetFocus;
    EscreveLog(btn_alterar.name);
end;

procedure TFrm_Mov_2054.btn_SalvarClick(Sender: TObject);
begin
  inherited;
  if not FAlterar then begin
    Dlg_Alerta('Usu�rio n�o autorizado a Alterar Registro !', self);
    exit;
  end;
  EscreveLog(btn_salvar.name);

  if not BAS_ValidarCampo(edt_inscricao_ben.name, '� necess�rio preencher a Inscri��o!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_cod_conveniado.name, '� necess�rio preencher a Inscri��o!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_dtinicio_bht.name, '� necess�rio preencher a Data de Inicio !', VLD_DataPreenchida) or
   not BAS_ValidarCampo(edt_dtfim_bth.name, '� necess�rio preencher a Data Final!', VLD_DataPreenchida) then
     exit ;
  if not Dlg_YesNo('Tem Certeza que Deseja Salvar?', Self) then Exit;
  if FStatus = FST_Novo then
  DB_ExecSQL('insert into tbl_beneficiarioTratamentoHospReferencia ('+
  'cod_beneficiario, dtinicio_bht, dtsistema_bth, dtfim_bth, obs_bth, cod_conveniado, cod_usuario) values ('+
  edt_cod_beneficiario.Text+','+DB_FormatDataSQL(edt_dtinicio_bht.text, ftDate)+
  ', getdate(),'+DB_FormatDataSQL(edt_dtfim_bth.Text, ftDate)+
  ', '''+edt_obs_bth.Text+''','+STR_RemoveChar(edt_cod_conveniado.Text,'-')+','+cbx_cod_usuario.getStrItemValue+')')
  else
      DB_ExecSQL('update tbl_beneficiarioTratamentoHospReferencia set '+
    ' dtinicio_bht = '+DB_FormatDataSQL(edt_dtinicio_bht.text, ftDate)+', '+
    ' dtfim_bth = '+DB_FormatDataSQL(edt_dtfim_bth.text, ftDate)+','+
    ' dtsistema_bth = getdate(),'+
    ' obs_bth = '''+edt_obs_bth.text+''','+
    ' cod_usuario = '+IntToStr(FCod_Usuario)+
    ' where cod_beneficiario = '+edt_cod_beneficiario.Text+
    ' and cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.Text,'-'));
  with fdt_principal4.spc_cons_med_benefTratamentoHospReferencia do begin
    Close;
    Open;
  end;
  BotoesOnOff(true);
  dbg_conveniado.SetFocus;
  EscreveLog(btn_Salvar.name);
  pnl_filtro.Visible:= True;
  pnl_indices.Visible:= True;
end;

procedure TFrm_Mov_2054.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  BotoesOnOff(true);
  dbg_conveniado.SetFocus;
  EscreveLog(btn_cancelar.name);
  pnl_filtro.Visible:= True;
  pnl_indices.Visible:= True;
end;

procedure TFrm_Mov_2054.btn_RemoverClick(Sender: TObject);
begin
  inherited;
  if not FExcluir then begin
    Dlg_Alerta('Usu�rio n�o autorizado a Excluir !', self);
    exit;
  end;
  EscreveLog(btn_Remover.name);

  if Dlg_YesNo('Tem Certeza que deseja Remover o Registro ?', Self) then begin
    DB_ExecSQL('delete from tbl_beneficiarioTratamentoHospReferencia where cod_beneficiario = '+
    fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.fieldByName('cod_beneficiario').AsString);
    fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.close;
    fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.open;
  end;
  dbg_conveniado.SetFocus;
  EscreveLog(btn_Remover.name);
end;

procedure TFrm_Mov_2054.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
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

procedure TFrm_Mov_2054.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2054.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_sitconveniado = 1';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl_conveniado', FPesquisa,
  'Cod.Conv, Nome do Conveniado, Raz�o Social', 'Localizar Conveniados', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Mov_2054.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniadoAtivo(STR_RemoveChar(edt_cod_conveniado.text,'-'));
end;

procedure TFrm_Mov_2054.rdg_indiceClick(Sender: TObject);
begin
  inherited;
  edt_localizar.Text:= '';
  SpeedButton6.Click;
  edt_localizar.SetFocus;
end;

procedure TFrm_Mov_2054.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AtualizaIndice;
  if edt_localizar.text <> '' then
     if rdg_indice.ItemIndex = 0 then
        fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.Locate('inscricao_ben', edt_localizar.text, [loCaseInsensitive])
     else
        if rdg_indice.ItemIndex = 1  then
           fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.Locate('nome_ben', edt_localizar.text, [loPartialKey])
        else
           if rdg_indice.ItemIndex = 2  then
              fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.Locate('dtinicio_bht', edt_localizar.text, [loPartialKey])
           else
              if rdg_indice.ItemIndex = 3 then
                 fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.Locate('dtfim_bth', edt_localizar.text, [loPartialKey])
              else
                 if rdg_indice.ItemIndex = 4 then
                    fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.Locate('cod_conveniado', edt_localizar.text, [loCaseInsensitive]);

end;

procedure TFrm_Mov_2054.btn_localizarClick(Sender: TObject);
begin
  inherited;
  AtualizaIndice;
end;

procedure TFrm_Mov_2054.btn_limparClick(Sender: TObject);
begin
  inherited;
  edt_dtinicial.Text:= '';
  edt_dtfinal.Text:= '';
  AtualizaIndice;
end;

procedure TFrm_Mov_2054.btn_beneficiarioClick(Sender: TObject);
begin
  inherited;
  Hide;
  if dbe_titulacarteiben.Text = '0' then
    begin
    Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
    Frm_Cad_Segurado.wCod_Beneficiario := dbe_cod_beneficiario.text;
    Frm_Cad_Segurado.ShowModal;
    Frm_Cad_Segurado.Release;
    end
  else
    begin
    Frm_Cad_Dependente := TFrm_Cad_Dependente.Create(Self);
    Frm_Cad_Dependente.wCod_Beneficiario := dbe_cod_beneficiario.text;
    Frm_Cad_Dependente.ShowModal;
    Frm_Cad_Dependente.Release;
    end;
  Show;
end;

procedure TFrm_Mov_2054.btn_exportaexcelClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  AtualizaIndice;
  if fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.RecordCount = 0 then
     begin
     Dlg_Alerta('N�o h� registros a exportar!', Self);
     Exit;
     end;
  fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.First;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.Execute then
     begin
     str_arquiventrad:= SaveDialog.filename;
     AssignFile(byt_nameofthfile, str_arquiventrad);
     Rewrite (byt_nameofthfile);
     S:= '';
// Ler titulo de todas colunas do DBGrid
     for i := 0 to dbg_conveniado.Columns.Count -1 do
        S:= S + dbg_conveniado.Columns.Items[i].Title.Caption + ';';
     Writeln(byt_nameofthfile,S);
     pgb_registros.Visible:= True;
     pgb_registros.Min:= 0;
     pgb_registros.Max:= fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.RecordCount;
     with fdt_principal4.spc_cons_med_benefTratamentoHospReferencia do
       while not Eof do
          begin
          S:= FieldByName('inscricao_ben').AsString + ';' +
              FieldByName('nome_ben').AsString + ';' +
              FieldByName('dtinicio_bht').AsString + ';' +
              FieldByName('dtfim_bth').AsString + ';' +
              FieldByName('nome_sit').AsString + ';' +
              FieldByName('descricao_sie').AsString + ';' +
              FieldByName('cod_conveniado').AsString + ';' +
              FieldByName('nome_con').AsString + ';' +
              FieldByName('obs_bth').AsString + ';' +
              FieldByName('dtsistema_bth').AsString + ';' +
              FieldByName('nome_usu').AsString;
              pgb_registros.Position:= pgb_registros.Position + 1;
              Writeln(byt_nameofthfile,S);
          Next;
          end;
    Closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad, Self);
    end;
  pgb_registros.Visible:= False;
  if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self)
     then Exit ;
  Algo:= SaveDialog.InitialDir + str_arquiventrad;
  ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);
end;

procedure TFrm_Mov_2054.btn_imprimirClick(Sender: TObject);
begin
  inherited;
  AtualizaIndice;
  if fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.RecordCount = 0 then
     begin
     Dlg_Alerta('N�o h� registros a listar!', Self);
     Exit;
     end;
  fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.First;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_med_benefTratamentoHospReferencia;
  Frm_Bas_Impressao.FCampo1:= rdg_indfiltro.Items[rdg_indfiltro.ItemIndex];
  Frm_Bas_Impressao.FCampo2:= edt_dtinicial.Text;
  Frm_Bas_Impressao.FCampo3:= edt_dtfinal.Text;
  Frm_Bas_Impressao.showReport(4241);
  fdt_principal4.spc_cons_med_benefTratamentoHospReferencia.close;
  lbl_total.Caption := 'Total de Registros => ';
end;

end.



