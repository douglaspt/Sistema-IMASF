unit Mov_2039;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BComboBox;

type
  TFrm_Mov_2039 = class(TFrm_Bas_TelaPadrao)
    Panel1: TPanel;
    DataSource1: TDataSource;
    Image2: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    btn_alterar_age: TPDJButton;
    btn_Remover_age: TPDJButton;
    btn_Salvar_age: TPDJButton;
    btn_cancelar_age: TPDJButton;
    pnl_crm: TPanel;
    cbx_diaDaSemana_ccl: TBComboBox;
    Panel15: TPanel;
    edt_inicioatendimentomanha_ccl: TDCEdit;
    edt_fimatendimentomanha_ccl: TDCEdit;
    Panel4: TPanel;
    edt_inicioatendimentotarde_ccl: TDCEdit;
    edt_fimatendimentotarde_ccl: TDCEdit;
    Panel5: TPanel;
    edt_intervalo_ccl: TDCEdit;
    btn_novo_age: TPDJButton;
    dbg_horario: TDBGrid;
    DataSource2: TDataSource;
    Panel6: TPanel;
    Panel7: TPanel;
    edt_cod_conveniado: TDCEdit;
    edt_celular_ccl: TDCEdit;
    edt_cod_espmedamb: TDCEdit;
    Medico: TPanel;
    edt_medico_ccl: TDCEdit;
    edt_cod_crm: TDCEdit;
    btn_novo_med: TPDJButton;
    btn_alterar_med: TPDJButton;
    btn_Remover_med: TPDJButton;
    btn_Salvar_med: TPDJButton;
    btn_cancelar_med: TPDJButton;
    dbg_medico: TDBGrid;
    edt_cod_medico: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure edt_cod_crmButtonClick(Sender: TObject);
    procedure btn_novo_ageClick(Sender: TObject);
    procedure btn_cancelar_ageClick(Sender: TObject);
    procedure btn_alterar_ageClick(Sender: TObject);
    procedure btn_Salvar_ageClick(Sender: TObject);
    procedure btn_Remover_ageClick(Sender: TObject);
    procedure edt_cod_crmExit(Sender: TObject);
    procedure btn_novo_medClick(Sender: TObject);
    procedure btn_alterar_medClick(Sender: TObject);
    procedure btn_Salvar_medClick(Sender: TObject);
    procedure btn_cancelar_medClick(Sender: TObject);
    procedure btn_Remover_medClick(Sender: TObject);
    procedure edt_cod_medicoChange(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    FStatus2 : Integer ;
    procedure BotoesHorariosONOFF(b: boolean);
    procedure BotoesMedicoOnOff(b:boolean);
    Procedure AtualizaHorario;
    procedure CarregarCombos;
  public
    { Public declarations }
  end;

var
  Frm_Mov_2039: TFrm_Mov_2039;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
  dtm_principal4, Fun_Obj, dtm_principal6, Fun_ConsCadastro, Fun_Data ;

{$R *.DFM}

procedure TFrm_Mov_2039.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  fdt_principal6.spc_cons_med_corpoClinicoAmbulatorio.open;
  dbg_medico.SetFocus;
end;

procedure TFrm_Mov_2039.BotoesMedicoOnOff(b:boolean);
begin
  btn_novo_med.Enabled := b ;
  btn_alterar_med.Enabled := b ;
  btn_Salvar_med.Enabled := not b ;
  btn_cancelar_med.Enabled := not b;
  btn_Remover_med.Enabled := b ;
  dbg_medico.visible := b ;
end;

procedure TFrm_Mov_2039.BotoesHorariosONOFF(b: boolean);
begin
  btn_novo_age.Enabled := b ;
  btn_alterar_age.Enabled := b ;
  btn_Salvar_age.Enabled := not b ;
  btn_cancelar_age.Enabled := not b;
  btn_Remover_age.Enabled := b ;
  dbg_horario.visible := b ;
end;

procedure TFrm_Mov_2039.CarregarCombos;
begin
  cbx_diaDaSemana_ccl.Items.AddObject('Segunda',TObject(2));
  cbx_diaDaSemana_ccl.Items.AddObject('Terça',TObject(3));
  cbx_diaDaSemana_ccl.Items.AddObject('Quarta',TObject(4));
  cbx_diaDaSemana_ccl.Items.AddObject('Quinta',TObject(5));
  cbx_diaDaSemana_ccl.Items.AddObject('Sexta',TObject(6));
end;

procedure TFrm_Mov_2039.edt_cod_crmButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select c.cod_crm, c.medico_ccl, c.celular_ccl, e.nome_esp'+
  ' from tbl_corpoclinicoambulatorio c, tbl_espmedamb e where c.cod_espmedamb = e.cod_espmedamb';
  edt_cod_crm.Text := Cons_ConsultaCadastro(self, 'tbl_corpoclinicoambulatorio', FPesquisa,
  'Código, Médico, Telefone, Especialidade', 'Localizar Médico', FPesquisaSQL, true);
  edt_cod_crmExit(self);
end;

procedure TFrm_Mov_2039.btn_novo_ageClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  BotoesHorariosONOFF(false);
  Obj_EmptyEditTag(self,1);
  cbx_diaDaSemana_ccl.Clear;
  CarregarCombos;
  cbx_diaDaSemana_ccl.Enabled := true;
  EscreveLog(btn_novo_age.name);
end;

procedure TFrm_Mov_2039.btn_cancelar_ageClick(Sender: TObject);
begin
  inherited;
  BotoesHorariosONOFF(true);
  EscreveLog(btn_cancelar_age.name);
end;

procedure TFrm_Mov_2039.btn_alterar_ageClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Alteracao;
  with fdt_principal6.spc_cons_med_corpoClinicoAmbulatorioHorario do begin
    BotoesHorariosONOFF(false);
    Obj_SetFormObjValueByName(self,'cbx_diaDaSemana_ccl',FieldByName('diaDaSemana_ccl').AsInteger);
    edt_inicioatendimentomanha_ccl.text := FieldByName('inicioatendimentomanha_ccl').AsString ;
    edt_fimatendimentomanha_ccl.text := FieldByName('fimatendimentomanha_ccl').AsString ;
    edt_inicioatendimentotarde_ccl.text := FieldByName('inicioatendimentotarde_ccl').AsString ;
    edt_fimatendimentotarde_ccl.text := FieldByName('fimatendimentotarde_ccl').AsString ;
    edt_intervalo_ccl.text := FieldByName('intervalo_ccl').AsString ;
  end;
  cbx_diaDaSemana_ccl.Enabled := false;
  EscreveLog(btn_alterar_age.name);
end;

Procedure TFrm_Mov_2039.AtualizaHorario;
begin
  with fdt_principal6.spc_cons_med_corpoClinicoAmbulatorioHorario do
  begin
    close;
    ParamByName('@cod_crm').AsString := edt_cod_medico.Text;
    open;
  end;
end;


procedure TFrm_Mov_2039.btn_Salvar_ageClick(Sender: TObject);
begin
  inherited;
  if not BAS_ValidarCampo(cbx_diaDaSemana_ccl.name, 'É necessário preencher o Dia da Semana', VLD_Preenchido) or
     not BAS_ValidarCampo(edt_intervalo_ccl.Name, 'É necessário preencher o Intervalo', VLD_Preenchido) then
    exit ;
  if not Dlg_YesNo('Tem Certeza que Deseja Salvar os Horarios?', Self) then Exit;
  if FStatus2 = FST_Novo then
  DB_ExecSQL('insert into tbl_corpoClinicoAmbulatorioHorario ('+
  'cod_crm, diaDaSemana_ccl, inicioatendimentomanha_ccl, fimatendimentomanha_ccl, inicioatendimentotarde_ccl, fimatendimentotarde_ccl, intervalo_ccl) values ('+
  edt_cod_medico.Text+','+cbx_diaDaSemana_ccl.getStrItemValue+','''+edt_inicioatendimentomanha_ccl.text+''','''+edt_fimatendimentomanha_ccl.Text+
  ''', '''+edt_inicioatendimentotarde_ccl.Text+''', '''+edt_fimatendimentotarde_ccl.Text+''','''+edt_intervalo_ccl.text+''')')
  else
      DB_ExecSQL('update tbl_corpoClinicoAmbulatorioHorario set'+
    ' inicioatendimentomanha_ccl = '''+edt_inicioatendimentomanha_ccl.text+''','+
    ' fimatendimentomanha_ccl = '''+edt_fimatendimentomanha_ccl.text+''', '+
    ' inicioatendimentotarde_ccl = '''+edt_inicioatendimentotarde_ccl.text+''','+
    ' fimatendimentotarde_ccl = '''+edt_fimatendimentotarde_ccl.text+''','+
    ' intervalo_ccl = '''+edt_intervalo_ccl.text+''''+
    ' where cod_crm = '+edt_cod_medico.text+' and diaDaSemana_ccl = '+cbx_diaDaSemana_ccl.getStrItemValue);
  BotoesHorariosONOFF(true);
  AtualizaHorario;
  EscreveLog(btn_Salvar_age.name);
end;

procedure TFrm_Mov_2039.btn_Remover_ageClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja Remover o Registro ?', Self) then begin
    DB_ExecSQL('delete from tbl_corpoClinicoAmbulatorioHorario where cod_crm = '+
    edt_cod_medico.text+' and diaDaSemana_ccl = '+fdt_principal6.spc_cons_med_corpoClinicoAmbulatorioHorario.FieldByName('diaDaSemana_ccl').asstring);
    fdt_principal6.spc_cons_med_corpoClinicoAmbulatorioHorario.close;
    fdt_principal6.spc_cons_med_corpoClinicoAmbulatorioHorario.open;
  end;
  EscreveLog(btn_Remover_age.name);
end;

procedure TFrm_Mov_2039.edt_cod_crmExit(Sender: TObject);
begin
  inherited;
  if edt_cod_crm.text <> '' then
  begin
    DB_OpenSQL('select cod_conveniado, medico_ccl, celular_ccl, cod_espmedamb from tbl_corpoclinicoambulatorio where cod_crm = '+edt_cod_crm.Text);
    edt_medico_ccl.text := tab.fieldByName('medico_ccl').AsString;
    edt_cod_conveniado.text := tab.fieldByName('cod_conveniado').AsString;
    edt_celular_ccl.text := tab.fieldByName('celular_ccl').AsString;
    edt_cod_espmedamb.text := tab.fieldByName('cod_espmedamb').AsString;
  end;
  with fdt_principal6.spc_cons_med_agendacompromisso do
  begin
    close;
    ParamByName('@cod_crm').AsString := edt_cod_crm.text;
    open;
  end;
end;

procedure TFrm_Mov_2039.btn_novo_medClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Novo;
  BotoesMedicoOnOff(false);
  Obj_EmptyEditTag(self,0);
  edt_cod_crm.Enabled := true;
  edt_cod_crm.SetFocus;
  EscreveLog(btn_novo_med.name);
end;

procedure TFrm_Mov_2039.btn_alterar_medClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Alteracao;
  with fdt_principal6.spc_cons_med_corpoClinicoAmbulatorio do begin
    BotoesMedicoOnOff(false);
    edt_cod_crm.text := FieldByName('cod_crm').AsString ;
    edt_medico_ccl.text := FieldByName('medico_ccl').AsString ;
    edt_cod_conveniado.text := FieldByName('cod_conveniado').AsString ;
    edt_celular_ccl.text := FieldByName('celular_ccl').AsString ;
    edt_cod_espmedamb.text := FieldByName('cod_espmedamb').AsString ;
    end;
    edt_cod_crm.enabled := false;
    edt_medico_ccl.SetFocus;
    EscreveLog(btn_alterar_med.name);
end;

procedure TFrm_Mov_2039.btn_Salvar_medClick(Sender: TObject);
begin
  inherited;
 if not BAS_ValidarCampo(edt_cod_crm.name, 'É necessário preencher o Código do Médico!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_medico_ccl.name, 'É necessário preencher o Nome do Médico!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_cod_conveniado.Name, 'É necessário preencher o Código do Conveniado!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_cod_espmedamb.Name, 'É necessário preencher o Código da Especialidade!', VLD_Preenchido) then
     exit ;
  if not Dlg_YesNo('Tem Certeza que Deseja Salvar o Médico ?', Self) then Exit;
  if FStatus = FST_Novo then
  DB_ExecSQL('insert into tbl_corpoClinicoAmbulatorio ('+
  'cod_crm, cod_conveniado, medico_ccl, celular_ccl, cod_espmedamb) values ('+
  edt_cod_crm.Text+','+edt_cod_conveniado.text+','''+edt_medico_ccl.Text+
  ''', '''+edt_celular_ccl.Text+''', '+edt_cod_espmedamb.Text+')')
  else
      DB_ExecSQL('update tbl_corpoClinicoAmbulatorio set '+
    ' cod_conveniado = '+edt_cod_conveniado.Text+', '+
    ' medico_ccl = '''+edt_medico_ccl.text+''','+
    ' celular_ccl = '''+edt_celular_ccl.text+''', '+
    ' cod_espmedamb = '+edt_cod_espmedamb.text+
    ' where cod_crm = '+edt_cod_crm.text);
  with fdt_principal6.spc_cons_med_corpoClinicoAmbulatorio do begin
    Close;
    Open;
  end;
  BotoesMedicoOnOff(true);
  EscreveLog(btn_Salvar_age.name);
end;

procedure TFrm_Mov_2039.btn_cancelar_medClick(Sender: TObject);
begin
  inherited;
  BotoesMedicoOnOff(true);
  EscreveLog(btn_cancelar_med.name);
end;

procedure TFrm_Mov_2039.btn_Remover_medClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja Remover o Registro ?', Self) then begin
    DB_ExecSQL('delete from tbl_corpoClinicoAmbulatorio where cod_crm = '+
    edt_cod_medico.text);
    fdt_principal6.spc_cons_med_corpoClinicoAmbulatorio.close;
    fdt_principal6.spc_cons_med_corpoClinicoAmbulatorio.open;
  end;
  EscreveLog(btn_Remover_age.name);
end;

procedure TFrm_Mov_2039.edt_cod_medicoChange(Sender: TObject);
begin
  inherited;
  AtualizaHorario;
end;

end.



