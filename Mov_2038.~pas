unit Mov_2038;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList,
  BDateEdit, ToolWin;

type
  TFrm_Mov_2038 = class(TFrm_Bas_TelaPadrao)
    ImageList1: TImageList;
    Panel4: TPanel;
    lsv_agenda: TListView;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cbx_cod_statusagenda: TBComboBox;
    edt_fone_agc: TBEdit;
    edt_obs_agc: TBEdit;
    edt_hora_agc: TBEdit;
    btn_Salvar: TPDJButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btn_atualizar: TSpeedButton;
    mtc_dtagenda_agc: TMonthCalendar;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Label6: TLabel;
    btn_Cancelar: TPDJButton;
    edt_cod_beneficiario: TDCChoiceEdit;
    Label7: TLabel;
    edt_cod_crm: TDCChoiceEdit;
    edt_medico: TDCEdit;
    ListBox1: TListBox;
    Label8: TLabel;
    PDJButton4: TPDJButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    btn_encaixe: TPDJButton;
    procedure FormShow(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure lsv_agendaDblClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mtc_dtagenda_agcClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure edt_cod_crmButtonClick(Sender: TObject);
    procedure edt_cod_crmExit(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure lsv_agendaClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure cbx_cod_statusagendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_encaixeClick(Sender: TObject);
  private
    { Private declarations }
    ListItem: TListItem;
    FCod_Agenda, FPesquisaSQLDefalt, wCod_Beneficiario : String;
  public
    { Public declarations }

  end;

var
  Frm_Mov_2038: TFrm_Mov_2038;

implementation

uses Fun_Obj, Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes,
  dtm_principal6, Fun_Beneficiario, Fun_Str, Fun_Data, Dlg_Mensagem, Bas_Impressao;
{$R *.DFM}



procedure TFrm_Mov_2038.FormShow(Sender: TObject);
begin
  inherited;
  Obj_LoadCombo(Self, 'cbx_cod_statusagenda', 'descricao_sta', 'cod_statusagenda', 'tbl_statusagenda');
  mtc_dtagenda_agc.Date := Date;
end;

procedure TFrm_Mov_2038.btn_atualizarClick(Sender: TObject);
var
  horaInicial : Ttime;
  horaFinal : Ttime;
  horaInicial2 : Ttime;
  horaFinal2 : Ttime;
  horaInicial3 : Ttime;
  horaFinal3 : Ttime;
  intervalo : Ttime;
  ListItem: TListItem;
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cod_crm.name, 'O Médico deve ser Selecionado !', VLD_Preenchido)) then
    exit;
  if mtc_dtagenda_agc.Date < Date then
  begin
    DB_OpenSQL('select max(hora_agc) as max, min(hora_agc) as min from tbl_agendacompromisso'+
    ' where cod_medico = '+edt_cod_crm.Text+' and dtagenda_agc = '''+Data_Format('mm/dd/yyyy',mtc_dtagenda_agc.date)+'''');
    if tab.fieldByName('min').AsString <> '' then
    begin
      horaInicial := StrToTime(tab.fieldByName('min').AsString);
      horaFinal := StrToTime(tab.fieldByName('max').AsString);
      horaInicial2 := StrToTime(tab.fieldByName('min').AsString);
      horaFinal2 := StrToTime(tab.fieldByName('max').AsString);
      intervalo := StrToTime('00:15:00');
    end  
    else begin
      Dlg_Alerta('Não há consultas marcadas nesse dia!',self);
      lsv_agenda.Items.Clear;
      Exit;
    end;
  end
  else begin

    DB_OpenSQL('select dtferiado_fro from tbl_feriado where dtferiado_fro = '''+Data_Format('mm/dd/yyyy',mtc_dtagenda_agc.date)+'''');
    if tab.RecordCount > 0 then
    begin
      Dlg_Alerta('O Médico não atende nesse Dia!',self);
      lsv_agenda.Items.Clear;
      Exit;
    end;
    DB_OpenSQL('select cod_crm, inicioatendimentomanha_ccl, fimatendimentomanha_ccl,'+
    ' inicioatendimentotarde_ccl, fimatendimentotarde_ccl, intervalo_ccl from tbl_corpoClinicoAmbulatorioHorario where cod_crm = '+
    edt_cod_crm.text+' and diaDaSemana_ccl = '+IntToStr(DayOfWeek(mtc_dtagenda_agc.date)));
    if tab.RecordCount < 1 then
    begin
      Dlg_Alerta('O Médico não atende nesse Dia!',self);
      lsv_agenda.Items.Clear;
      Exit;
    end;
    intervalo := StrToTime(tab.fieldByName('intervalo_ccl').AsString);
    if (tab.fieldByName('inicioatendimentomanha_ccl').AsString <> '') and (tab.fieldByName('inicioatendimentomanha_ccl').AsString <> 'null') then
      horaInicial2 := StrToTime(tab.fieldByName('inicioatendimentomanha_ccl').AsString);
    if (tab.fieldByName('fimatendimentomanha_ccl').AsString <> '') and (tab.fieldByName('fimatendimentomanha_ccl').AsString <> 'null') then
      horaFinal2 := StrToTime(tab.fieldByName('fimatendimentomanha_ccl').AsString) + 0.001;
    if (tab.fieldByName('inicioatendimentotarde_ccl').AsString <> '') and (tab.fieldByName('inicioatendimentotarde_ccl').AsString <> 'null') then
      horaInicial3 := StrToTime(tab.fieldByName('inicioatendimentotarde_ccl').AsString);
    if (tab.fieldByName('fimatendimentotarde_ccl').AsString <> '') and (tab.fieldByName('fimatendimentotarde_ccl').AsString <> 'null') then
      horaFinal3 := StrToTime(tab.fieldByName('fimatendimentotarde_ccl').AsString) + 0.001;
    if (tab.fieldByName('inicioatendimentomanha_ccl').AsString <> '') and (tab.fieldByName('inicioatendimentomanha_ccl').AsString <> 'null') then
      horaInicial := StrToTime(tab.fieldByName('inicioatendimentomanha_ccl').AsString);
    if horaInicial = 0 then
      horaInicial := StrToTime(tab.fieldByName('inicioatendimentotarde_ccl').AsString);
    if (tab.fieldByName('fimatendimentomanha_ccl').AsString <> '') and (tab.fieldByName('fimatendimentomanha_ccl').AsString <> 'null') then
      horaFinal := StrToTime(tab.fieldByName('fimatendimentomanha_ccl').AsString) + 0.001;
    if (tab.fieldByName('fimatendimentotarde_ccl').AsString <> '') and (tab.fieldByName('fimatendimentotarde_ccl').AsString <> 'null') then
      if horaFinal < StrToTime(tab.fieldByName('fimatendimentotarde_ccl').AsString) then
        horaFinal := StrToTime(tab.fieldByName('fimatendimentotarde_ccl').AsString) + 0.001;
    DB_OpenSQL('select max(hora_agc) as hora_agc from tbl_agendacompromisso where dtagenda_agc = '''+Data_Format('mm/dd/yyyy',mtc_dtagenda_agc.date)+
    ''' and cod_medico = '+edt_cod_crm.Text);
    if (Tab.FieldByName('hora_agc').AsString <> '') and (tab.fieldByName('hora_agc').AsString <> 'null') then
      if horaFinal < StrToTime(tab.FieldByName('hora_agc').AsString) then
        horaFinal := StrToTime(tab.FieldByName('hora_agc').AsString) + 0.001;

  end;
  with fdt_principal6.spc_cons_med_agendacompromisso do
  begin
    close;
    ParamByName('@cod_medico').AsString := edt_cod_crm.text;
    ParamByName('@dtagenda_agc').AsString := Data_Format('mm/dd/yyyy',mtc_dtagenda_agc.date);
    open;
  end;
  lsv_agenda.Items.Clear;
  while (horaInicial < horaFinal) or (not fdt_principal6.spc_cons_med_agendacompromisso.eof) do begin
    if (fdt_principal6.spc_cons_med_agendacompromisso.FieldByName('hora_agc').AsString <= timetostr(horaInicial))
    and (not fdt_principal6.spc_cons_med_agendacompromisso.eof) then begin
      ListItem := lsv_agenda.Items.Add;
      ListItem.Caption := fdt_principal6.spc_cons_med_agendacompromisso.FieldByName('hora_agc').AsString;
      listItem.SubItems.add(fdt_principal6.spc_cons_med_agendacompromisso.FieldByName('cod_carteirinha').AsString);
      listItem.SubItems.add(fdt_principal6.spc_cons_med_agendacompromisso.FieldByName('nome_ben').AsString);
      listItem.SubItems.add(fdt_principal6.spc_cons_med_agendacompromisso.FieldByName('descricao_sta').AsString);
      listItem.SubItems.add(fdt_principal6.spc_cons_med_agendacompromisso.FieldByName('fone_agc').AsString);
      listItem.SubItems.add(fdt_principal6.spc_cons_med_agendacompromisso.FieldByName('cod_agendacompromisso').AsString);
      ListItem.ImageIndex := fdt_principal6.spc_cons_med_agendacompromisso.FieldByName('cod_statusAgenda').AsInteger ;
      fdt_principal6.spc_cons_med_agendacompromisso.next;
    end else begin
      if ((horaInicial >= horaInicial2) and (horaInicial < horaFinal2)) or
      ((horaInicial >= horaInicial3) and (horaInicial < horaFinal3)) then begin
      ListItem := lsv_agenda.Items.Add;
      ListItem.Caption := (TimeToStr(horaInicial));
      listItem.SubItems.add('');
      listItem.SubItems.add('  -  Horário Vago');
      listItem.SubItems.add('');
      listItem.SubItems.add('');
      listItem.SubItems.add('');
      end;
    end;
    horaInicial := horaInicial + intervalo;
  end;
end;

procedure TFrm_Mov_2038.btn_SalvarClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_hora_agc.name, 'A Hora deve ser Preenchida !', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A Inscrição deve ser Preenchida !', VLD_Preenchido)) or
  (not BAS_ValidarCampo(edt_nome.name, 'Preencher uma Inscrição Valida !', VLD_Preenchido)) or
  (not BAS_ValidarCampo(cbx_cod_statusagenda.name, 'O Status deve ser Preenchida !', VLD_Preenchido)) then
    exit;
  if FCod_Agenda = '' then
    DB_ExecSQL('insert into tbl_agendacompromisso (dtagenda_agc, cod_statusagenda,'+
    ' valor_agc, obs_agc, hora_agc, cod_medico, cod_carteirinha, fone_agc, cod_beneficiario, cod_agendacompromisso)'+
    ' values ('+DB_FormatDataSQL(mtc_dtagenda_agc.date,ftDate)+','+cbx_cod_statusagenda.getStrItemValue+', 0, '''+
    edt_obs_agc.Text+''', '''+edt_hora_agc.Text+''','+edt_cod_crm.Text+','+STR_RemoveChar(STR_RemoveChar(edt_carteira.text,'.'),'-')+','''+edt_fone_agc.Text+''','+
    edt_cod_beneficiario.Text+','+DB_GetPrimaryKey()+')')
  else
    DB_ExecSQL('update tbl_agendacompromisso set cod_statusagenda = '+cbx_cod_statusagenda.getStrItemValue+', '+
    ' obs_agc = '''+edt_obs_agc.Text+''', '+
    ' hora_agc = '''+edt_hora_agc.Text+''', '+
    ' cod_carteirinha = '+STR_RemoveChar(STR_RemoveChar(edt_carteira.text,'.'),'-')+', '+
    ' fone_agc = '''+edt_fone_agc.Text+''', '+
    ' cod_beneficiario = '+edt_cod_beneficiario.Text+
    ' where cod_agendacompromisso = '+FCod_Agenda);
  lsv_agenda.Visible := true;
  wCod_Beneficiario := '';
  btn_atualizarClick(self);
end;

procedure TFrm_Mov_2038.lsv_agendaDblClick(Sender: TObject);
begin
  inherited;
//  FCod_Agenda := lsv_agenda.Items[lsv_agenda.Selected.Index].SubItems.Strings[4];
 { if FCod_Agenda <> '' then
  begin
    DB_OpenSQL('select cod_beneficiario, cod_statusagenda, obs_agc, hora_agc, fone_agc from tbl_agendacompromisso'+
    ' where cod_agendacompromisso = '+FCod_Agenda);
    edt_hora_agc.Text := lsv_agenda.Items[lsv_agenda.Selected.Index].Caption;
    edt_obs_agc.Text := tab.fieldByName('obs_agc').AsString;
    edt_fone_agc.Text := tab.fieldByName('fone_agc').AsString;
    Obj_SetFormObjValueByName(self,'cbx_cod_statusagenda',tab.fieldByName('cod_statusagenda').AsInteger);
    wCod_Beneficiario := tab.fieldByName('cod_beneficiario').AsString;
    edt_inscricao_benButtonClick(self);
    wCod_Beneficiario := '';
    edt_hora_agc.SetFocus;
  end
  else begin
    try
      edt_hora_agc.Text := lsv_agenda.Items[lsv_agenda.Selected.Index].Caption;
    except
      exit;
    end;
    Obj_EmptyEditTag(self,1);
    Obj_SetFormObjValueByName(self,'cbx_cod_statusagenda',1);
    edt_hora_agc.SetFocus;
  end;
  lsv_agenda.Visible := false;  }
end;

procedure TFrm_Mov_2038.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if wCod_Beneficiario <> '' then begin
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.cod_beneficiario = '+wCod_Beneficiario;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end
  else begin
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
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  end;
end;

procedure TFrm_Mov_2038.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2038.mtc_dtagenda_agcClick(Sender: TObject);
begin
  inherited;
  btn_atualizarClick(self);
end;

procedure TFrm_Mov_2038.btn_CancelarClick(Sender: TObject);
begin
  inherited;
  lsv_agenda.Visible := true;
  wCod_Beneficiario := '';
end;

procedure TFrm_Mov_2038.edt_cod_crmButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select c.cod_crm, c.medico_ccl, c.celular_ccl, e.nome_esp'+
  ' from tbl_corpoclinicoambulatorio c, tbl_espmedamb e where c.cod_espmedamb = e.cod_espmedamb';
  edt_cod_crm.Text := Cons_ConsultaCadastro(self, 'tbl_corpoclinicoambulatorio', FPesquisa,
  'Código, Médico, Telefone, Especialidade', 'Localizar Médico', FPesquisaSQL, true);
  edt_cod_crmExit(self);
end;

procedure TFrm_Mov_2038.edt_cod_crmExit(Sender: TObject);
begin
  inherited;
  if edt_cod_crm.text <> '' then
  begin
    DB_OpenSQL('select medico_ccl from tbl_corpoclinicoambulatorio where cod_crm = '+edt_cod_crm.Text);
    edt_medico.text := tab.fieldByName('medico_ccl').AsString;
    DB_OpenSQL('select diaDaSemana_ccl, inicioatendimentomanha_ccl, fimatendimentomanha_ccl,'+
    ' inicioatendimentotarde_ccl, fimatendimentotarde_ccl from tbl_corpoClinicoAmbulatorioHorario'+
    ' where cod_crm = '+edt_cod_crm.text);
    ListBox1.Clear;
    while not Tab.Eof do
    begin
      case tab.FieldByName('diaDaSemana_ccl').AsInteger of
        2 : begin
          ListBox1.Items.Add('Segunda-Feira');
          if tab.FieldByName('inicioatendimentomanha_ccl').AsString <> '' then
            ListBox1.Items.Add(tab.FieldByName('inicioatendimentomanha_ccl').AsString+' as '+
            tab.FieldByName('fimatendimentomanha_ccl').AsString);
          if tab.FieldByName('inicioatendimentotarde_ccl').AsString <> '' then
            ListBox1.Items.Add(tab.FieldByName('inicioatendimentotarde_ccl').AsString+' as '+
            tab.FieldByName('fimatendimentotarde_ccl').AsString);
        end;
        3 : begin
          ListBox1.Items.Add('Terça-Feira');
          if tab.FieldByName('inicioatendimentomanha_ccl').AsString <> '' then
            ListBox1.Items.Add(tab.FieldByName('inicioatendimentomanha_ccl').AsString+' as '+
            tab.FieldByName('fimatendimentomanha_ccl').AsString);
          if tab.FieldByName('inicioatendimentotarde_ccl').AsString <> '' then
            ListBox1.Items.Add(tab.FieldByName('inicioatendimentotarde_ccl').AsString+' as '+
            tab.FieldByName('fimatendimentotarde_ccl').AsString);
        end;
        4 : begin
          ListBox1.Items.Add('Quarta-Feira');
          if tab.FieldByName('inicioatendimentomanha_ccl').AsString <> '' then
            ListBox1.Items.Add(tab.FieldByName('inicioatendimentomanha_ccl').AsString+' as '+
            tab.FieldByName('fimatendimentomanha_ccl').AsString);
          if tab.FieldByName('inicioatendimentotarde_ccl').AsString <> '' then
            ListBox1.Items.Add(tab.FieldByName('inicioatendimentotarde_ccl').AsString+' as '+
            tab.FieldByName('fimatendimentotarde_ccl').AsString);
        end;
        5 : begin
          ListBox1.Items.Add('Quinta-Feira');
          if tab.FieldByName('inicioatendimentomanha_ccl').AsString <> '' then
            ListBox1.Items.Add(tab.FieldByName('inicioatendimentomanha_ccl').AsString+' as '+
            tab.FieldByName('fimatendimentomanha_ccl').AsString);
          if tab.FieldByName('inicioatendimentotarde_ccl').AsString <> '' then
            ListBox1.Items.Add(tab.FieldByName('inicioatendimentotarde_ccl').AsString+' as '+
            tab.FieldByName('fimatendimentotarde_ccl').AsString);
        end;
        6 : begin
          ListBox1.Items.Add('Sexta-Feira');
          if tab.FieldByName('inicioatendimentomanha_ccl').AsString <> '' then
            ListBox1.Items.Add(tab.FieldByName('inicioatendimentomanha_ccl').AsString+' as '+
            tab.FieldByName('fimatendimentomanha_ccl').AsString);
          if tab.FieldByName('inicioatendimentotarde_ccl').AsString <> '' then
            ListBox1.Items.Add(tab.FieldByName('inicioatendimentotarde_ccl').AsString+' as '+
            tab.FieldByName('fimatendimentotarde_ccl').AsString);
        end;
      end;
      Tab.Next;
    end;
    btn_atualizarClick(self);
  end;
end;

procedure TFrm_Mov_2038.PDJButton4Click(Sender: TObject);
begin
  inherited;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_agendacompromisso;
  Frm_Bas_Impressao.showReport(4148);
  fdt_principal6.spc_cons_med_agendacompromisso.close;
end;

procedure TFrm_Mov_2038.ToolButton2Click(Sender: TObject);
begin
  inherited;
    DB_ExecSQL('update tbl_agendacompromisso set cod_statusagenda = 1'+
    ' where cod_agendacompromisso = '+FCod_Agenda);
    btn_atualizarClick(self);
end;

procedure TFrm_Mov_2038.lsv_agendaClick(Sender: TObject);
begin
  inherited;
  try
    FCod_Agenda := lsv_agenda.Items[lsv_agenda.Selected.Index].SubItems.Strings[4];
  except
    FCod_Agenda := '';
  end;
end;

procedure TFrm_Mov_2038.ToolButton3Click(Sender: TObject);
begin
  inherited;
    DB_ExecSQL('update tbl_agendacompromisso set cod_statusagenda = 2'+
    ' where cod_agendacompromisso = '+FCod_Agenda);
    btn_atualizarClick(self);
end;

procedure TFrm_Mov_2038.ToolButton4Click(Sender: TObject);
begin
  inherited;
    DB_ExecSQL('update tbl_agendacompromisso set cod_statusagenda = 3'+
    ' where cod_agendacompromisso = '+FCod_Agenda);
    btn_atualizarClick(self);
end;

procedure TFrm_Mov_2038.ToolButton5Click(Sender: TObject);
begin
  inherited;
    DB_ExecSQL('update tbl_agendacompromisso set cod_statusagenda = 4'+
    ' where cod_agendacompromisso = '+FCod_Agenda);
    btn_atualizarClick(self);
end;

procedure TFrm_Mov_2038.ToolButton6Click(Sender: TObject);
begin
  inherited;
    DB_ExecSQL('update tbl_agendacompromisso set cod_statusagenda = 5'+
    ' where cod_agendacompromisso = '+FCod_Agenda);
    btn_atualizarClick(self);
end;

procedure TFrm_Mov_2038.cbx_cod_statusagendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    btn_SalvarClick(self);
end;

procedure TFrm_Mov_2038.btn_encaixeClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cod_crm.name, 'O Médico deve ser Selecionado !', VLD_Preenchido)) then
    exit;
    
  FCod_Agenda := '';
  Obj_EmptyEditTag(self,1);
  Obj_SetFormObjValueByName(self,'cbx_cod_statusagenda',1);
  edt_hora_agc.SetFocus;
  lsv_agenda.Visible := false;
end;

end.



