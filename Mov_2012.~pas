unit Mov_2012;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEditButton, BEdit,
  BComboBox, dbtables;

type
  TFrm_Mov_2012 = class(TFrm_Bas_TelaPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    btn_avancar: TPDJButton;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox1: TGroupBox;
    rdb_situacao: TRadioButton;
    rdb_plano: TRadioButton;
    rdb_tipodependente: TRadioButton;
    GroupBox2: TGroupBox;
    Panel10: TPanel;
    edt_nome_gra: TBEdit;
    edt_idade: TBEdit;
    edt_nome_efi: TBEdit;
    Panel1: TPanel;
    edt_carteira: TBEdit;
    edt_nome: TBEdit;
    edt_cod_beneficiario: TEditButton;
    edt_inscricao_ben: TEditButton;
    GroupBox3: TGroupBox;
    Panel9: TPanel;
    cbx_cod_sitBeneficiario: TBComboBox;
    Panel6: TPanel;
    edt_dtSituacao_sit: TDCDateEdit;
    GroupBox7: TGroupBox;
    Panel5: TPanel;
    cbx_cod_plano: TBComboBox;
    Panel4: TPanel;
    cbx_cod_planoPagto: TDCComboBox;
    GroupBox8: TGroupBox;
    Panel8: TPanel;
    edt_dtSituacao_dep: TDCDateEdit;
    Panel32: TPanel;
    cbx_cod_tipodependente: TBComboBox;
    Panel7: TPanel;
    edt_dtPlano: TDCDateEdit;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    PDJButton3: TPDJButton;
    btn_receber: TPDJButton;
    Panel11: TPanel;
    cbx_cod_ocorrenciaEdital: TBComboBox;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    PDJButton4: TPDJButton;
    GroupBox5: TGroupBox;
    Panel12: TPanel;
    edt_dtcarencia_ben: TDCDateEdit;
    btn_removerCarencia: TPDJButton;
    btn_adicionarCarencia: TPDJButton;
    edt_informacao_car: TDCEdit;
    cbx_cod_nivelcar: TDCComboBox;
    PDJButton5: TPDJButton;
    Label2: TLabel;
    Label3: TLabel;
    ScrollBox1: TScrollBox;
    LsB_Carencia: TListBox;
    rdb_reativarAssistido: TRadioButton;
    tnl_reativacao: TPanel;
    TabSheet6: TTabSheet;
    btn_histopera: TPDJButton;
    rdb_meioscontato: TRadioButton;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    btn_voltar1: TPDJButton;
    btn_voltar2: TPDJButton;
    btn_voltar3: TPDJButton;
    btn_voltar4: TPDJButton;
    btn_voltar5: TPDJButton;
    stg_audi: TStringGrid;
    Panel13: TPanel;
    cb2_cod_planoPagto: TDCComboBox;
    pnl_alerta: TPanel;
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure btn_avancarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure btn_receberClick(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure btn_adicionarCarenciaClick(Sender: TObject);
    procedure btn_removerCarenciaClick(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure btn_histoperaClick(Sender: TObject);
    procedure cbx_cod_nivelcarChange(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure btn_voltar1Click(Sender: TObject);
    procedure btn_voltar2Click(Sender: TObject);
    procedure btn_voltar3Click(Sender: TObject);
    procedure btn_voltar4Click(Sender: TObject);
    procedure btn_voltar5Click(Sender: TObject);
    procedure cbx_cod_planoChange(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TabSheet5Show(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt, FGrauparent, Festfisico, DtSituacao, FnomePlano  : String ;
    FIdade, FSituacao, FPlano, FPlanoAnt, wCod_planoPagto_Old, FTipodependente, FTit, FtipoSit : integer;
    FDtplano, DTInscricao : TDateTime;
    function CriticaParametros : Boolean ;
    function SalvarNivelCar: boolean ;
    function SalvarAgendamentoNivelCar: boolean ;
  public
    { Public declarations }
    wCod_Beneficiario : String;
  end;

var
  Frm_Mov_2012: TFrm_Mov_2012;
  ChaveExp: Integer;
  W100: String[100];

implementation

uses Fun_ConsCadastro, Fun_Medico,Fun_DB, DlG_Mensagem, Fun_Obj, Constantes, Fun_Str, dtm_principal,
     Fun_Acesso, Fun_Beneficiario, Fun_Data, Mov_2063;

{$R *.DFM}

function TFrm_Mov_2012.CriticaParametros : Boolean ;
begin
  result := true;
  if rdb_situacao.Checked then
  begin
    if (not BAS_ValidarCampo(cbx_cod_sitBeneficiario.name, 'A Situação do Beneficiário deve ser preenchida !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(edt_dtSituacao_sit.name, 'A Data da Situação deve ser preenchida !', VLD_DataPreenchida)) then
      Exit;
    if cbx_cod_sitBeneficiario.getItemValue = FSituacao then begin
      Dlg_Alerta('A mudança de Situação não pode ser efetuada porque o Beneficiário já é desta Situação!',self);
      Exit;
    end;
  end;
  if rdb_plano.Checked then
  begin
    if (cbx_cod_plano.Text = '') and (cbx_cod_planoPagto.Text = '') then
    begin
      Dlg_Alerta('Um dos Planos deve ser Preenchido!',self);
      exit;
    end;
    if (not BAS_ValidarCampo(edt_dtPlano.name, 'A Data do Plano deve ser preenchida !', VLD_DataPreenchida)) then
      Exit;
    if (cbx_cod_plano.getItemValue = FPlano) and (cbx_cod_planoPagto.ValueItem = wCod_planoPagto_Old) then begin
      Dlg_Alerta('A mudança de Plano não pode ser efetuada porque o Beneficiário já é deste Plano!',self);
      Exit;
    end;    
    if (FDtplano+30 > edt_dtPlano.Date) and not (Acs_AcessoEspecial('201201')) then
    begin
      Dlg_Alerta('Período para troca de plano deve ser maior do que 30 dias da data do plano Atual!',self);
      exit;
    end;
  end;
  if rdb_tipodependente.Checked then
  begin
    if (not BAS_ValidarCampo(cbx_cod_tipodependente.name, 'O Tipo de Dependente deve ser preenchido !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(cb2_cod_planoPagto.name, 'A tabela do Plano de  Pagamento deve ser Preenchida !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(edt_dtSituacao_dep.name, 'A Data da Situação deve ser preenchida !', VLD_DataPreenchida)) then
      Exit;
    if (FTipodependente > 0) and (cbx_cod_tipodependente.getItemValue = FTipodependente) then begin
      Dlg_Alerta('A mudança do Tipo de Dependente não pode ser efetuada porque o Dependente já é deste Tipo!',self);
      Exit;
    end;
  end;
  if not Ben_CriticaDependente(FGrauparent, cbx_cod_plano.getStrItemValue, cbx_cod_tipodependente.getStrItemValue, edt_inscricao_ben.Text, Festfisico,FIdade, 0, DTInscricao,  self) then
    Exit ;
  if cbx_cod_planoPagto.Text <> '' then
  begin
    if cbx_cod_planoPagto.ValueItem = wCod_planoPagto_Old then begin
      Dlg_Alerta('A mudança de Plano de Pagamento Especial não pode ser efetuada porque o Beneficiário já é deste Plano!',self);
      Exit;
    end;
    if cbx_cod_plano.Text <> '' then
    begin
      FPlanoAnt := cbx_cod_plano.getItemValue;
      FnomePlano :=  cbx_cod_plano.Text;
    end;
    DB_OpenSQL('select cod_plano from tbl_planoPagto where cod_planopagto = '+cbx_cod_planoPagto.valueItem);
    if tab.FieldByName('cod_plano').AsInteger <> FPlanoAnt then
    begin
      Dlg_Alerta('Tabela de Plano de Pagamento Especial não permitida para o Plano '+FnomePlano, self);
      cbx_cod_planoPagto.SetFocus;
      exit;
    end;
  end;
  result := false ;
end;

function TFrm_Mov_2012.SalvarNivelCar: boolean ;
var
  i : integer ;
begin
  DB_ExecSQL('delete from tbl_carencia where cod_beneficiario = '+edt_cod_beneficiario.text );
  if LsB_Carencia.Items.Count = 0 then begin
    result := true;
    exit;
  end;
  with LsB_Carencia do
  begin
    for i := 0 to Items.Count-1 do
      result := DB_ExecSQL('insert into tbl_carencia values ('+edt_cod_beneficiario.text+', '+
      Trim(Copy(Items.Strings[i],1,2))+', '+
      DB_FormatDataSQL(Trim(Copy(Items.Strings[i],14,11)), ftDate)+', '''+
      Trim(Copy(Items.Strings[i],25,200))+''')');
  end;
  if Result then
    DB_ExecSQL('update tbl_beneficiario set dtcarencia_ben = '+DB_FormatDataSQL(edt_dtcarencia_ben.Text,ftDate)+
    ' where cod_beneficiario = '+edt_cod_beneficiario.Text);
end;

function TFrm_Mov_2012.SalvarAgendamentoNivelCar : boolean ;
var
  i : integer ;
begin
  with LsB_Carencia do
  begin
    for i := 0 to Items.Count-1 do
      result := DB_ExecSQL('insert into tbl_AgendamentoCarencia values ('''+ edt_ano.Text + '/' + IntToStr(cbx_cod_mes.ValueItem) + '/01'', '+
      DB_FormatDataSQL(edt_dtcarencia_ben.Date, ftDate)+
      ', '+edt_cod_beneficiario.text+', '+Trim(Copy(Items.Strings[i],1,2))+
      ', '+DB_FormatDataSQL(Trim(Copy(Items.Strings[i],14,11)), ftDate)+
      ', '''+Trim(Copy(Items.Strings[i],25,200))+''', 0 )');
  end;
end;

procedure TFrm_Mov_2012.edt_inscricao_benButtonClick(Sender: TObject);
var
  s : string;
begin
  inherited;
  FStatus := 0;
  wCod_planoPagto_Old := 0;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
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
    if DB_OpenSQL('select cod_planoPagto from tbl_beneficiarioPlanoPagtoEspecial where cod_beneficiario = '+edt_cod_beneficiario.Text) > 0 then begin
      wCod_planoPagto_Old := Tab.fields[0].AsInteger;
      FStatus := 1;
    end;

    DB_OpenSQL('select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.cod_empresa, b.cod_plano, b.titulacartei_ben, b.fonecel_ben, '+
               'b.foneresi_ben, b.email_ben, b.digito_ben, s.fonecome_seg, b.idade_ben, b.cod_sitbeneficiario, b.cod_tipodependente, '+
               'd.cod_grauparent, dtnascim_ben, g.nome_gra, d.cod_estfisico, e.nome_efi, p.nome_pla,  b.cep_ben, b.endereco_ben, '+
               'b.numero_ben, b.complemento_ben, b.bairro_ben, b.cod_cidadeCep, c.cidade_cep, b.cod_uf, u.sigla_uf, b.cepcor_ben, dtinscricao_ben, '+
               'b.enderecocor_ben, b.numerocor_ben, b.complementocor_ben, b.bairrocor_ben, b.cod_cidadecorCEP, cc.cidade_cep as cidadecor_cep, '+
               'b.cd2_uf, uu.sigla_uf as siglacor_uf, b.dtendereco_ben, b.dtplano_ben, tipo_sit, nome_sit from tbl_beneficiario b '+
               'left join tbl_dependente d on b.cod_beneficiario = d.cod_beneficiario '+
               'left join tbl_grauparent g on d.cod_grauparent = g.cod_grauparent '+
               'left join tbl_plano p on b.cod_plano = p.cod_plano '+
               'left join tbl_estfisico e on d.cod_estfisico = e.cod_estfisico '+
               'left join tbl_segurado s on s.cod_beneficiario = b.cod_beneficiario '+
               'left join tbl_cidadeCEP c on c.cod_cidadeCep = b.cod_cidadeCep '+
               'left join tbl_cidadeCEP cc on cc.cod_cidadeCep = b.cod_cidadecorCEP '+
               'left join tbl_uf u on u.cod_uf = b.cod_uf '+
               'left join tbl_uf uu on uu.cod_uf = b.cd2_uf '+
               'left join tbl_sitbeneficiario st on b.cod_sitbeneficiario = st.cod_sitbeneficiario '+
               'WHERE b.cod_beneficiario  = '+ edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    edt_nome_gra.Text := Tab.FieldByNAme('nome_gra').AsString;
    edt_nome_efi.Text := Tab.FieldByNAme('nome_efi').AsString;
    edt_idade.Text := Data_GetIdadeExt(tab.FieldByName('dtnascim_ben').AsDateTime, date);
    FIdade := Data_GetIdadeAnos(tab.FieldByName('dtnascim_ben').AsDateTime, date);
    FGrauparent := Tab.FieldByName('cod_grauparent').AsString;
    Festfisico := Tab.FieldByName('cod_estfisico').AsString;
    FTit := Tab.FieldByName('titulacartei_ben').AsInteger;
    FSituacao := Tab.FieldByName('cod_sitbeneficiario').AsInteger;
    FPlano := Tab.FieldByName('cod_plano').AsInteger;
    FPlanoAnt := Tab.FieldByName('cod_plano').AsInteger;
    FnomePlano := Tab.FieldByNAme('nome_pla').AsString;
    FTipodependente := Tab.FieldByName('cod_tipodependente').AsInteger;
    FDtplano := Tab.FieldByName('dtplano_ben').AsDateTime;
    FtipoSit :=  Tab.FieldByName('tipo_sit').AsInteger;
    DTInscricao := Tab.FieldByName('tipo_sit').AsDateTime;
    pnl_alerta.Caption := '***  '+Tab.FieldByName('nome_sit').AsString+'  ***';
    case Tab.FieldByName('tipo_sit').AsInteger of
      1 : pnl_alerta.color := clYellow;
      2 : pnl_alerta.color := clRed;
    end;
    if  Tab.FieldByName('cod_sitbeneficiario').AsInteger = 28 then
      pnl_alerta.color := clAqua;
    pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
  end;
  wCod_Beneficiario := '';
end;

procedure TFrm_Mov_2012.btn_avancarClick(Sender: TObject);
Var
  s : string;
begin
  inherited;
  if (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A Inscrição do Beneficiário deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  if (FtipoSit = 2) then
    if not Acs_AcessoEspecial('201202') then
    begin
      Dlg_Alerta('Você não tem permissão para alteração de Cancelados!', self);
      Exit;
    end;
  if rdb_plano.Checked then
     begin
     if Tab.FieldByName('dtendereco_ben').Value + 90 < Date then
        if not Dlg_YesNo('MEIOS DE CONTATO '+ #13+
                         'CEP: ' + Tab.FieldByName('cep_ben').AsString + ' - Celular: ' + Tab.FieldByName('fonecel_ben').AsString + #13 +
                         'Residencial: ' + Tab.FieldByName('foneresi_ben').AsString + #13 +
                         'Comercial: ' + Tab.FieldByName('fonecome_seg').AsString + #13 +
                         'E-Mail: ' + Tab.FieldByName('email_ben').AsString + #13 +
                         'Dados Corretos ?', Self) then
          begin
// Confirmação dos dados de contato
          Hide;
          s := edt_cod_beneficiario.text;
          Frm_Mov_2063:= TFrm_Mov_2063.Create(Self);
          Frm_Mov_2063.wCod_Beneficiario := s;
          Frm_Mov_2063.Wtit:= FTit;
          Frm_Mov_2063.ShowModal;
          Frm_Mov_2063.Release;
          Show;
      //    edt_inscricao_benButtonClick(Self);
          end;
     end;
  if rdb_meioscontato.Checked then
     begin
// Confirmação dos dados de contato
     Hide;
     s := edt_cod_beneficiario.text;
     Frm_Mov_2063:= TFrm_Mov_2063.Create(Self);
     Frm_Mov_2063.wCod_Beneficiario := s;
     Frm_Mov_2063.Wtit:= FTit;
     Frm_Mov_2063.ShowModal;
     Frm_Mov_2063.Release;
     Show;
  //   edt_inscricao_benButtonClick(Self);
     end;
  if rdb_situacao.Checked then
     PageControl1.ActivePageIndex := 1;
  if rdb_plano.Checked then
     PageControl1.ActivePageIndex := 2;
  if rdb_tipodependente.Checked then begin
    if FTipodependente <> 1 then begin
      Dlg_Alerta('Só é possível alterar o tipo de dependente se o beneficiário for um dependente!',self);
      Exit;
    end;
    PageControl1.ActivePageIndex := 3;
  end;
  if rdb_reativarAssistido.Checked then begin
    PageControl1.ActivePageIndex := 2;
    tnl_reativacao.Caption := 'Reativação da Inscrição de Assitido para Pré Cadastro';
    tnl_reativacao.Visible := true;
  end;
end;

procedure TFrm_Mov_2012.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  edt_inscricao_ben.Text:= '';
  edt_carteira.Text:= '';
  edt_nome.Text:= '';
  edt_nome_gra.Text:= '';
  edt_nome_efi.Text:= '';
  edt_idade.Text:= '';
  LsB_Carencia.Clear;
  BAS_CarregarCombo('cbx_cod_sitBeneficiario','nome_sit');
  BAS_CarregarCombo('cbx_cod_plano','nome_pla');
  Obj_LoadCombo(Self, 'cbx_cod_plano', 'nome_pla', 'cod_plano', 'tbl_plano where cod_statusativo = 1');
  //BAS_CarregarCombo('cbx_cod_tipodependente','nome_tdp');
  Obj_LoadCombo(Self, 'cbx_cod_tipodependente', 'nome_tdp', 'cod_tipodependente', 'tbl_tipodependente where cod_tipodependente > 0');
//  BAS_CarregarCombo('cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp');
  Obj_LoadCombo(Self, 'cbx_cod_ocorrenciaEdital', 'descricao_oce', 'cod_ocorrenciaEdital', 'tbl_ocorrenciaEdital where cod_statusativo = 1');
  Obj_LoadCombo(Self, 'cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp', 'cod_planopagto', 'tbl_planopagto where cod_statusativo = 1');
  BAS_CarregarCombo('cbx_cod_nivelcar', 'nome_niv');
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Mov_2012.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    exit;
  DtSituacao := ''''+Data_Format('mm/dd/yyyy',edt_dtSituacao_sit.Date)+'''';
  PageControl1.ActivePageIndex := 4;
end;

procedure TFrm_Mov_2012.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    exit;
  if rdb_reativarAssistido.Checked then begin //Reativação de Assistido
    //Se o Beneficiário selecionado for um Dependente o Sistema converte o mesmo para Assistido
    if str_strtoint(copy(edt_carteira.text,11,2)) < 50 then begin
      Obj_SetComboBoxValue(cbx_cod_tipodependente, 2);
      edt_dtSituacao_dep.Text := edt_dtPlano.Text;
    end;
    //Altera Situação para Suspenso - em Análise
    Obj_SetComboBoxValue(cbx_cod_sitBeneficiario, 29);
    edt_dtSituacao_sit.Text := edt_dtPlano.Text;
    //Altera Ocorrencia para Inscrição de Assistidos
    Obj_SetComboBoxValue(cbx_cod_ocorrenciaEdital, 1006);
    DB_ExecSQL('insert into tbl_andamentoInscricao (cod_beneficiario, status_ani)  '+
    ' values ('+edt_cod_beneficiario.Text+', 0)');
    btn_receberClick(self);
  end else begin  //Somente Alteração de Plano
    DtSituacao := ''''+Data_Format('mm/dd/yyyy',edt_dtPlano.Date)+'''';
    PageControl1.ActivePageIndex := 4;
  end;
end;

procedure TFrm_Mov_2012.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    exit;
  DtSituacao := ''''+Data_Format('mm/dd/yyyy',edt_dtSituacao_dep.Date)+'''';
  PageControl1.ActivePageIndex := 4;
end;

procedure TFrm_Mov_2012.btn_receberClick(Sender: TObject);
var Executado, alteraDependentes : boolean;
  procedure EscreveLogAtualizacao(descricao, codigoAntigo, codigoAlterado, cod_beneficiario, inscricao, titula : String);
  begin
    EscreveLog('Alteração sem Agendamento : '+descricao+' de '+codigoAntigo+
    ' para '+codigoAlterado+' do Beneficiário Cod.'+cod_beneficiario+', Insc. '+inscricao+', Tit. '+titula );
    w100:= 'Alteração sem Agendamento '+descricao+' de '+codigoAntigo+ ' para '+codigoAlterado + ', Inscr.'+inscricao+', Tit. '+titula;
  end;
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_ocorrenciaEdital.name, 'A Ocorrência deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  if rdb_plano.Checked = True then
     if edt_dtPlano.Date > Date + 15 then
        begin
        Dlg_Alerta('A data do plano não pode ser superior a 15 dias da data da Alteração/Agendamento!',self);
        PageControl1.ActivePageIndex := 2;
        edt_dtPlano.SetFocus;
        Exit;
        end;

  if rdb_situacao.Checked = True then
     if edt_dtSituacao_sit.Date > Date + 15 then
        begin
        Dlg_Alerta('A data da situação não pode ser superior a 15 dias da data da Alteração/Agendamento!', Self);
        PageControl1.ActivePageIndex := 1;
        edt_dtSituacao_sit.SetFocus;
        Exit;
        end;

  if rdb_tipodependente.Checked = True then
     if edt_dtSituacao_dep.Date > Date + 15 then
        begin
        Dlg_Alerta('A data do Tipo de Dependente não pode ser superior a 15 dias da data da Alteração/Agendamento!', Self);
        PageControl1.ActivePageIndex := 3;
        edt_dtSituacao_dep.SetFocus;
        Exit;
        end;

  Executado := True;
  DB_BeginTrans;
  //Altera a situação
  if (cbx_cod_sitBeneficiario.Text <> '') then begin
    Executado := Ben_AlteraSituacao(edt_cod_beneficiario.Text, edt_inscricao_ben.Text, inttostr(FTit), edt_dtSituacao_sit.Text,
    cbx_cod_sitBeneficiario.getStrItemValue, IntToStr(FSituacao), cbx_cod_ocorrenciaEdital.getStrItemValue);
    EscreveLogAtualizacao('a Situação', IntToStr(FSituacao), cbx_cod_sitBeneficiario.getStrItemValue, edt_cod_beneficiario.Text, edt_inscricao_ben.Text, inttostr(FTit));
    w100:= 'Alteração da Situação ' + cbx_cod_sitBeneficiario.Text + ', Inscr.'+ edt_inscricao_ben.Text +', Tit. '+ IntToStr(FTit);
   end;
  // Altera a carencia do Beneficiario
  if (LsB_Carencia.Items.Count > 0) and (Executado) then begin
    Executado := SalvarNivelCar;
  end;
  //Altera o Plano do Beneficiário
  if (cbx_cod_plano.Text <> '') and (Executado) then begin
  if str_strtoint(copy(edt_carteira.text,11,2)) = 0 then
    alteraDependentes := Dlg_YesNo('ATENÇÃO ! Deseja que Também Altere os Planos dos Dependentes Normais Vínculados ao Segurado ?', Self)
  else
    alteraDependentes := false;
    Executado:= Ben_AlteraPlano(cbx_cod_plano.getStrItemValue, edt_dtPlano.Text,
    edt_inscricao_ben.Text, inttostr(FTit), edt_cod_beneficiario.Text, cbx_cod_ocorrenciaEdital.getStrItemValue, alteraDependentes);
    EscreveLogAtualizacao('o Plano', 'XX', cbx_cod_plano.getStrItemValue, edt_cod_beneficiario.Text, edt_inscricao_ben.Text, inttostr(FTit));
    W100:= 'Alteração Plano ' + cbx_cod_plano.Text + ', Inscr.'+ edt_inscricao_ben.Text +', Tit. '+ IntToStr(FTit);
    if cbx_cod_planoPagto.Text = '' then
      DB_ExecSQL('delete from tbl_beneficiarioPlanoPagtoEspecial where cod_beneficiario = '+edt_cod_beneficiario.Text);
  end;
  //Altera p Plano de Pagamento especial
  if (cbx_cod_planoPagto.Text <> '') and (Executado) then begin
    Executado := Ben_AlteraPlanoPagto(cbx_cod_planoPagto.valueitem, edt_inscricao_ben.Text, inttostr(FTit), edt_cod_beneficiario.text, cbx_cod_ocorrenciaEdital.getStrItemValue,
    inttostr(Fstatus), edt_dtPlano.Text, alteraDependentes);
    EscreveLogAtualizacao('O Plano de Pagamento', IntToStr(wCod_planoPagto_Old), cbx_cod_planoPagto.valueItem, edt_cod_beneficiario.text,
    edt_inscricao_ben.text, IntToStr(FTit));
    w100:= 'Alteração Plano de Pagamento p/' + cbx_cod_planoPagto.Text + ', Inscr.'+ edt_inscricao_ben.Text +', Tit. '+ IntToStr(FTit);
  end;
  //Altera o Tipo de Dependencia
  if (cbx_cod_tipodependente.Text <> '') and (Executado) then
  begin
    Executado := Ben_AlteraTipoDependente(edt_cod_beneficiario.Text, edt_inscricao_ben.Text, inttostr(FTit), cbx_cod_tipodependente.getStrItemValue,
    edt_dtSituacao_dep.Text, cbx_cod_ocorrenciaEdital.getStrItemValue);
    EscreveLogAtualizacao('a Titularidade', 'XX', inttostr(FTit), edt_cod_beneficiario.Text, edt_inscricao_ben.Text, inttostr(FTit));
    w100:= 'Alteração da Titularidade = ' + inttostr(FTit) + ', Inscr.'+ edt_inscricao_ben.Text +', Tit. '+ IntToStr(FTit);

    if (cb2_cod_planoPagto.Text <> '') and (Executado) then begin
    Executado := Ben_AlteraPlanoPagto(cb2_cod_planoPagto.valueitem, edt_inscricao_ben.Text, inttostr(FTit), edt_cod_beneficiario.text, cbx_cod_ocorrenciaEdital.getStrItemValue,
    inttostr(Fstatus), edt_dtPlano.Text, alteraDependentes);
    EscreveLogAtualizacao('O Plano de Pagamento', IntToStr(wCod_planoPagto_Old), cb2_cod_planoPagto.valueItem, edt_cod_beneficiario.text,
    edt_inscricao_ben.text, IntToStr(FTit));
    w100:= 'Alteração Plano de Pagamento p/' + cb2_cod_planoPagto.Text + ', Inscr.'+ edt_inscricao_ben.Text +', Tit. '+ IntToStr(FTit);
  end;
  end;
  if (Executado) then Begin
     Executado := Ben_GeraHistorico(IntToStr(FCod_Usuario), IntToStr(Fcod_TelaSistema), edt_inscricao_ben.text, '00', '');
  end;
     GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, W100, '',116);
  if (Executado) then begin
    Dlg_Ok(MSG_DB_OKUpdate,self);
    DB_Commit;
  end
  else begin
    DB_RollBack;
    Dlg_Erro('Ocorreu um Erro interno e não foi possível efetuar a alteração dos dados do beneficiário!',self);
  end;
  BAS_LimparTela;
  FormShow(self);
end;

procedure TFrm_Mov_2012.PDJButton3Click(Sender: TObject);
var
  Executado : boolean;
  WParte: String;
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_ocorrenciaEdital.name, 'A Ocorrência deve ser preenchida !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês do agendamento deve ser preenchido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_ano.name, 'O Ano do Agendamento deve ser preenchido !', VLD_Preenchido )) then
     begin
     GroupBox4.SetFocus;
     Exit;
     end;

// Verifica se já existe algum agendamento pendente naquele mês
    DB_OpenSQL('select ab.cod_beneficiario, ab.cod_plano, ab.cod_sitBeneficiario, ab.cod_tipodependente, ab.cod_planoPagto, '+
               'ab.dtAgendamento_age, p.nome_pla, sb.nome_sit, td.nome_tdp, pp.nome_plp from tbl_AgendamentoBeneficiario ab '+
               'left join tbl_plano p on p.cod_plano = ab.cod_plano '+
               'left join tbl_sitbeneficiario sb on sb.cod_sitBeneficiario = ab.cod_sitBeneficiario '+
               'left join tbl_tipodependente td on td.cod_tipodependente = ab.cod_tipodependente '+
               'left join tbl_planopagto pp on pp.cod_planopagto = ab.cod_planoPagto '+
               'where cod_beneficiario = ' + edt_cod_beneficiario.Text +
               ' and status_age = 0 and (dtAgendamento_age >= ''' + IntToStr(cbx_cod_mes.ValueItem) + '/01/'+ edt_ano.Text + ''' or ab.cod_plano = ' +
               DB_FormatDataSQL(cbx_cod_plano.getStrItemValue,ftInteger) + ' or ab.cod_sitBeneficiario = ' +
               DB_FormatDataSQL(cbx_cod_sitBeneficiario.getStrItemValue, ftInteger) + ' or ab.cod_tipodependente = ' +
               DB_FormatDataSQL(cbx_cod_tipodependente.getStrItemValue, ftInteger) + ' or ab.cod_planoPagto = ' +
               DB_FormatDataSQL(cbx_cod_planoPagto.valueitem, ftInteger) + ') order by dtAgendamento_age');
    WParte:= '';
    if Tab.RecordCount > 0 then
       WParte:= 'Já existe Agendamento para mudança de ';
    while not Tab.Eof do
      begin
      if Tab.FieldByName('cod_plano').AsInteger > 0 then
         if cbx_cod_plano.getItemValue > 0 then
            WParte:= WParte + Copy(rdb_plano.Caption,5,5) + ' como ' + Tab.FieldByName('nome_pla').Value + ' em ' + Tab.FieldByName('dtAgendamento_age').Text + ', ' + #13;
      if Tab.FieldByName('cod_sitBeneficiario').AsInteger > 0 then
         if cbx_cod_sitBeneficiario.getItemValue > 0 then
            WParte:= WParte + Copy(rdb_situacao.Caption,5,8) + ' como ' + Tab.FieldByName('nome_sit').Value + ' em ' + Tab.FieldByName('dtAgendamento_age').Text + ', ' + #13;
      if Tab.FieldByName('cod_tipodependente').AsInteger > 0 then
         if cbx_cod_tipodependente.getItemValue > 0 then
            WParte:= WParte + Copy(rdb_tipodependente.Caption,5,18) + ' como ' + Tab.FieldByName('nome_tdp').Value + ' em ' + Tab.FieldByName('dtAgendamento_age').Text + ', ' + #13;
      if cbx_cod_planoPagto.ValueItem <> '' then
         if Tab.FieldByName('cod_planoPagto').AsInteger > 0 then
            if cbx_cod_planoPagto.ValueItem > 0 then
               WParte:= WParte + 'Tipo de Pagamento como ' + Tab.FieldByName('nome_plp').Value + ' em ' + Tab.FieldByName('dtAgendamento_age').Text + ', ' + #13;
      {if Tab.FieldByName('cod_plano').AsInteger = cbx_cod_plano.getItemValue then
         WParte:= WParte + Copy(rdb_plano.Caption,5,5) + ' para ' + cbx_cod_plano.Text + ' em ' + Tab.FieldByName('dtAgendamento_age').Text + ', ' + #13;
      if Tab.FieldByName('cod_sitBeneficiario').AsInteger = cbx_cod_sitBeneficiario.getItemValue then
         WParte:= WParte + Copy(rdb_situacao.Caption,5,8) + ' para ' + cbx_cod_sitBeneficiario.Text + ' em ' + Tab.FieldByName('dtAgendamento_age').Text + ', ' + #13;
      if Tab.FieldByName('cod_tipodependente').AsInteger = cbx_cod_tipodependente.getItemValue then
         WParte:= WParte + Copy(rdb_tipodependente.Caption,5,18) + ' para ' + cbx_cod_tipodependente.Text + ' em ' + Tab.FieldByName('dtAgendamento_age').Text + ', ' + #13;
      if cbx_cod_planoPagto.ValueItem <> '' then
         if Tab.FieldByName('cod_planoPagto').AsInteger = cbx_cod_planoPagto.ValueItem then
            WParte:= WParte + 'Tipo de Pagamento para ' + cbx_cod_planoPagto.Text + ' em ' + Tab.FieldByName('dtAgendamento_age').Text + ', ' + #13;}

      Tab.Next;
      end;
    if WParte <> '' then
       begin
       WParte:= WParte + 'deste Beneficiário!';
       Dlg_Alerta(WParte, Self);
       Exit;
       end;
  if StrToDate('01/' + IntToStr(cbx_cod_mes.ValueItem) + '/' + edt_ano.Text) <= Date then
     begin
     Dlg_Alerta('A Data do Agendamento tem que ser maior que a Data de Hoje!', self);
     GroupBox4.SetFocus;
     Exit;
     end;
  if rdb_plano.Checked = True then
     if edt_dtPlano.Date > StrToDate('01/' + IntToStr(cbx_cod_mes.ValueItem) + '/' + edt_ano.Text) + 15 then
        begin
        Dlg_Alerta('A data do plano não pode ser superior a 15 dias da data da Alteração/Agendamento!', Self);
        PageControl1.ActivePageIndex:= 2;
        edt_dtPlano.SetFocus;
        Exit;
        end;

  if rdb_situacao.Checked = True then
     if edt_dtSituacao_sit.Date > StrToDate('01/' + IntToStr(cbx_cod_mes.ValueItem) + '/' + edt_ano.Text) + 15 then
        begin
        Dlg_Alerta('A data da situação não pode ser superior a 15 dias da data da Alteração/Agendamento!', Self);
        PageControl1.ActivePageIndex := 1;
        edt_dtSituacao_sit.SetFocus;
        Exit;
        end;

  if rdb_tipodependente.Checked = True then
     if edt_dtSituacao_dep.Date > StrToDate('01/' + IntToStr(cbx_cod_mes.ValueItem) + '/' + edt_ano.Text) + 15 then
        begin
        Dlg_Alerta('A data do Tipo de Dependente não pode ser superior a 15 dias da data da Alteração/Agendamento!', Self);
        PageControl1.ActivePageIndex := 3;
        edt_dtSituacao_dep.SetFocus;
        Exit;
        end;

  if (cbx_cod_sitBeneficiario.getItemValue = 3) or (cbx_cod_sitBeneficiario.getItemValue = 9) or
  (cbx_cod_sitBeneficiario.getItemValue = 31) or (cbx_cod_sitBeneficiario.getItemValue = 50) then
    begin
    if DB_OpenSQL('select cod_beneficiario from tbl_descontofolha where cod_beneficiario = '+
    edt_cod_beneficiario.Text+' and cod_sitdesconto = 1') > 0 then
      Dlg_Alerta('Beneficiário com Descontos em Aberto',self);
    if DB_OpenSQL('select * from tbl_autorizacaomedica where dtatendimento_aum > (getdate() - 30)'+
    ' and cod_beneficiario = '+edt_cod_beneficiario.Text) > 0 then
      Dlg_Alerta('Autorização Médica Emitida Recentemente',self);
    end;
    if (cb2_cod_planoPagto.Text <> '') then
      Obj_SetFormObjValueByName(self, cbx_cod_planoPagto.name, cb2_cod_planoPagto.ValueItem);
    DB_BeginTrans;
    Executado := DB_ExecSQL('insert into tbl_AgendamentoBeneficiario values('+edt_cod_beneficiario.Text+
    ','+DtSituacao+','''+ IntToStr(cbx_cod_mes.ValueItem) + '/01/'+ edt_ano.Text +''','+DB_FormatDataSQL(cbx_cod_sitBeneficiario.getStrItemValue, ftInteger)+
    ','+DB_FormatDataSQL(cbx_cod_plano.getStrItemValue,ftInteger)+','+DB_FormatDataSQL(cbx_cod_tipodependente.getStrItemValue, ftInteger)+','''+
    Data_Format('mm/dd/yyyy',date)+''','+IntToStr(FCod_Usuario)+', 0,'+DB_FormatDataSQL(cbx_cod_ocorrenciaEdital.getStrItemValue, ftInteger)+
    ', '+DB_FormatDataSQL(cbx_cod_planoPagto.valueitem, ftInteger)+')');

    if (Executado) then
      if (LsB_Carencia.Items.Count > 0) then
         Executado := SalvarAgendamentoNivelCar;

  if (Executado) then
    begin
    Dlg_Ok(MSG_DB_OKUpdate,self);
    DB_Commit;
    btn_voltar1.Enabled:= False;
    end
  else
    begin
    Dlg_Erro('Ocorreu um Erro interno e não foi possível efetuar o Agendamento',self);
    DB_RollBack;
    end;

  BAS_LimparTela;
  FormShow(self);
end;

procedure TFrm_Mov_2012.btn_adicionarCarenciaClick(Sender: TObject);
  function VerCod_NivelCar(c:string): boolean ;
  var
    i,y : integer ;
  begin
// Atenção: O cod_nivelcar da tbl_nivelcar está fixo em 2 dígitos para essa função
    result := false ;
    for i := 0 to LsB_Carencia.Items.Count-1 do
      if Trim(Copy(LsB_Carencia.Items.Strings[i],1,2)) = c then
        result := true ;
  end;
var
  v : string ;
begin
  inherited;
  if edt_dtcarencia_ben.text = '' then begin
    Dlg_Alerta('É necessário preencher a Data de Inicio de Carência !', self);
    groupbox5.SetFocus;
    edt_dtcarencia_ben.setfocus;
    Exit ;
  end;
  if cbx_cod_nivelcar.text = '' then begin
    Dlg_Alerta('Selecione um nível de carência !', self);
    groupbox5.SetFocus;
    cbx_cod_nivelcar.setfocus;
    Exit ;
  end;
  if VerCod_NivelCar(cbx_cod_nivelcar.ValueItem) then begin
    Dlg_Alerta('Esse nível de carência já foi selecionado anteriormente !', self);
    groupbox5.SetFocus;
    cbx_cod_nivelcar.setfocus;
    edt_informacao_car.text := '' ;
    cbx_cod_nivelcar.text := '' ;
    cbx_cod_nivelcar.ItemIndex:= -1;
    Exit ;
  end;
  DB_OpenSQL('select * from tbl_nivelcar where cod_nivelcar = '+cbx_cod_nivelcar.ValueItem);
  v := DateToStr(edt_dtcarencia_ben.date + Tab.FieldByName('dias_niv').AsInteger);
  LsB_Carencia.Items.Add(STR_AddSpaces(Tab.FieldByName('cod_nivelcar').AsString, 2)+
  STR_AddSpaces(Tab.FieldByName('nome_niv').AsString, 10)+
  STR_AddSpaces(v, 10)+edt_informacao_car.text);
  edt_informacao_car.text := '' ;
  cbx_cod_nivelcar.text := '' ;
  cbx_cod_nivelcar.ItemIndex:= -1;
end;

procedure TFrm_Mov_2012.btn_removerCarenciaClick(Sender: TObject);
begin
  inherited;
  LsB_Carencia.Items.Delete(LsB_Carencia.ItemIndex);
  W100:= 'Remover carência ' +', Inscr.'+ edt_inscricao_ben.Text +', Tit. '+ IntToStr(FTit);
  EscreveLog(btn_removerCarencia.name);
end;

procedure TFrm_Mov_2012.PDJButton5Click(Sender: TObject);
begin
  inherited;
{  if cbx_cod_nivelcar.text <> '' then begin
    DB_OpenSQL('select descricao_niv from tbl_nivelcar where cod_nivelcar = '+cbx_cod_nivelcar.valueitem);
    edt_informacao_car.Text := Tab.fields[0].asstring;
  end; }
end;

procedure TFrm_Mov_2012.btn_histoperaClick(Sender: TObject);
begin
  inherited;
  if btn_histopera.Caption = 'Hist.Operações' then
     begin
     if edt_nome.Text = '' then
        ChaveExp:= 999999999
     else
        ChaveExp:= StrToInt(edt_cod_beneficiario.text);
     PageControl1.ActivePageIndex:= 5;
     GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 1);
     btn_histopera.Caption:= '&Hist.Operações';
     end
  else
     begin
     btn_histopera.Caption:= 'Hist.Operações';
     PageControl1.ActivePageIndex:= 0;
     end;
end;

procedure TFrm_Mov_2012.cbx_cod_nivelcarChange(Sender: TObject);
begin
  inherited;
  if cbx_cod_nivelcar.ItemIndex <> -1 then
     if cbx_cod_nivelcar.text <> '' then begin
        DB_OpenSQL('select descricao_niv from tbl_nivelcar where cod_nivelcar = '+cbx_cod_nivelcar.valueitem);
        edt_informacao_car.Text := Tab.fields[0].asstring;
     end;
end;


procedure TFrm_Mov_2012.TabSheet2Show(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(self,'cbx_cod_mes', Data_Month(Data_Soma1mes(Date)));
  edt_ano.Text := IntToStr(Data_Year(Data_Soma1mes(Date)));
end;

procedure TFrm_Mov_2012.btn_voltar1Click(Sender: TObject);
begin
  inherited;
  edt_ano.Text:= '';
  cbx_cod_mes.ItemIndex:= -1;
  cbx_cod_ocorrenciaEdital.ItemIndex:= -1;
  if rdb_situacao.Checked then
     PageControl1.ActivePageIndex := 1;
  if rdb_plano.Checked then
     PageControl1.ActivePageIndex := 2;
  if rdb_tipodependente.Checked then
     PageControl1.ActivePageIndex := 3;
end;

procedure TFrm_Mov_2012.btn_voltar2Click(Sender: TObject);
begin
  inherited;
  btn_histopera.Caption:= 'Hist.Operações';
  PageControl1.ActivePageIndex:= 0;
end;

procedure TFrm_Mov_2012.btn_voltar3Click(Sender: TObject);
begin
  inherited;
  cbx_cod_sitBeneficiario.ItemIndex:= -1;
  edt_dtSituacao_sit.Text:= '';
  FormShow(Self);
end;

procedure TFrm_Mov_2012.btn_voltar4Click(Sender: TObject);
begin
  inherited;
  cbx_cod_plano.ItemIndex:= -1;
  cbx_cod_planoPagto.ItemIndex:= -1;
  edt_dtPlano.Text:= '';
  edt_dtcarencia_ben.Text:= '';
  LsB_Carencia.Clear;
  cbx_cod_nivelcar.ItemIndex:= -1;
  edt_informacao_car.Text:= '';
  FormShow(Self);
end;

procedure TFrm_Mov_2012.btn_voltar5Click(Sender: TObject);
begin
  inherited;
  cbx_cod_tipodependente.ItemIndex:= -1;
  edt_dtSituacao_dep.Text:= '';
  FormShow(Self);
end;

procedure TFrm_Mov_2012.cbx_cod_planoChange(Sender: TObject);
begin
  inherited;
  if cbx_cod_plano.Text <> '' then
    Obj_LoadCombo(Self, 'cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp',
    'cod_planopagto', 'tbl_planopagto where cod_statusativo = 1 and cod_plano = '+cbx_cod_plano.getStrItemValue);
end;

procedure TFrm_Mov_2012.stg_audiDrawCell(Sender: TObject; ACol,
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

procedure TFrm_Mov_2012.TabSheet5Show(Sender: TObject);
begin
  inherited;
    Obj_LoadCombo(Self, 'cb2_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp',
    'cod_planopagto', 'tbl_planopagto where cod_statusativo = 1 and cod_planopagto in (112, 122) and cod_plano = '+inttostr(FPlano)+'' );
  Obj_SetFormObjValueByName(self, cbx_cod_tipodependente.name, 2);

end;

end.



