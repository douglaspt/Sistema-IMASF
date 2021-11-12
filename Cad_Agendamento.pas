unit Cad_Agendamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, QuickRpt,
  jpeg, BDateEdit, BComboBox, BEdit, Buttons, BEditButton, DCChoice, Grids,
  Mask, DBCtrls;

type
  TFrm_Cad_Agendamento = class(TFrm_Bas_Cadastro)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    edt_cod_AgendamentoBeneficiario: TEditButton;
    pnl_alerta: TPanel;
    Panel1: TPanel;
    edt_carteira: TBEdit;
    edt_nome: TBEdit;
    edt_cod_beneficiario: TEditButton;
    edt_inscricao_ben: TEditButton;
    Panel10: TPanel;
    edt_nome_gra: TBEdit;
    edt_idade: TBEdit;
    edt_nome_efi: TBEdit;
    Panel11: TPanel;
    edt_dtAgendamento_age: TBDateEdit;
    edt_dtSituacao_age: TBDateEdit;
    Panel9: TPanel;
    cbx_cod_sitBeneficiario: TBComboBox;
    PDJButton2: TPDJButton;
    Panel5: TPanel;
    cbx_cod_plano: TBComboBox;
    PDJButton1: TPDJButton;
    TabSheet2: TTabSheet;
    Panel32: TPanel;
    cbx_cod_tipodependente: TBComboBox;
    PDJButton3: TPDJButton;
    Panel7: TPanel;
    cbx_cod_ocorrenciaEdital: TBComboBox;
    Panel6: TPanel;
    cbx_cod_usuario: TBComboBox;
    btn_receber: TPDJButton;
    stg_audi: TStringGrid;
    edt_dtSistema_age: TDCDateEdit;
    edt_status_age: TDCEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure btn_receberClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_cod_beneficiarioKeyPress(Sender: TObject; var Key: Char);
    procedure edt_cod_AgendamentoBeneficiarioButtonClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TabSheet2Show(Sender: TObject);
    procedure Pesquisaultimoagendamento;
  private
    { Private declarations }
    FPesquisaSQLDefalt, FTit, FSitAnt, FGrauparent, Festfisico  : String ;
    FIdade : integer;
    DTInscricao : TDateTime;
    procedure CarregarTela;
  public
    { Public declarations }
    wInscricao, wCod_Beneficiario : String;
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_Agendamento: TFrm_Cad_Agendamento;
  ChaveExp: Integer;
  x: integer;

implementation

uses Constantes, Fun_ConsCadastro, Fun_DB, Fun_Beneficiario, Fun_Str, Dlg_Mensagem,
     Fun_Acesso, Fun_Obj, Fun_Data, Fun_Desconto;

{$R *.DFM}

procedure TFrm_Cad_Agendamento.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Agendamento' ;
  FEditChave    := 'edt_cod_AgendamentoBeneficiario' ;
  FEditAlteracao:= 'edt_cod_beneficiario' ;
  FUltFoco      := 'cbx_cod_ocorrenciaEdital' ;
  FTitPesquisa  := 'Localizar Agendamento' ;
  FPesquisa     := 'cod_AgendamentoBeneficiario, cod_beneficiario, dtSituacao_age, dtAgendamento_age' ;
  inherited;

end;

function TFrm_Cad_Agendamento.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if  (not BAS_ValidarCampo(edt_carteira.name, 'A inscri��o deve ser preenchida !', VLD_Preenchido )) or
   (not BAS_ValidarCampo(edt_dtSituacao_age.name, 'A data da situa��o deve ser preenchida !', VLD_DataPreenchida )) then Exit;
  if (cbx_cod_plano.text = '') and (cbx_cod_tipodependente.text = '')  and (cbx_cod_sitBeneficiario.Text = '') then begin
     Dlg_Alerta('Um dos campos situa��o, plano ou tipo de dependente deve ser preenchido!',self);
     Exit;
  end;
  if cbx_cod_tipodependente.Text <> '' then
    if copy(edt_carteira.text,11,2) = '00' then begin
      Dlg_Alerta('S� � poss�vel alterar o tipo de dependente se o benefici�rio for um dependente!',self);
      Exit;
    end;
  DB_OpenSQL('select b.cod_plano,  b.cod_sitbeneficiario, b.cod_tipodependente'+
  ' from tbl_beneficiario b, tbl_beneficiario a, tbl_segurado m '+
  ' where  a.cod_beneficiario = m.cod_beneficiario and b.inscricao_ben = a.inscricao_ben'+
  ' and b.cod_beneficiario = '+edt_cod_beneficiario.Text);
  if cbx_cod_plano.getItemValue = Tab.FieldByName('cod_plano').AsInteger then begin
    Dlg_Alerta('A mudan�a de plano n�o pode ser efetuada porque o benefici�rio j� � deste plano!',self);
    Exit;
  end;
  if cbx_cod_sitBeneficiario.getItemValue = Tab.FieldByName('cod_sitbeneficiario').AsInteger then begin
    Dlg_Alerta('A mudan�a de situa��o n�o pode ser efetuada porque o benefici�rio j� � desta situa��o!',self);
    Exit;
  end;
  if (Tab.FieldByName('cod_tipodependente').AsInteger > 0) and
  (cbx_cod_tipodependente.getItemValue = Tab.FieldByName('cod_tipodependente').AsInteger) then begin
    Dlg_Alerta('A mudan�a do tipo de dependente n�o pode ser efetuada porque o dependente j� � deste tipo!',self);
    Exit;
  end;
  if cbx_cod_ocorrenciaEdital.Text = '' then begin
     Dlg_Alerta('A ocorr�ncia deve ser preenchida !',self);
     Exit;
  end;
  if not Ben_CriticaDependente(FGrauparent, cbx_cod_plano.getStrItemValue, cbx_cod_tipodependente.getStrItemValue, edt_inscricao_ben.Text, Festfisico,FIdade, 0, DTInscricao,  self) then
    Exit ;
  result := false ;
end;

procedure TFrm_Cad_Agendamento.btn_novoClick(Sender: TObject);
begin
  CarregarTela;
  inherited;
  edt_cod_AgendamentoBeneficiario.Enabled:= False;
  edt_inscricao_ben.SetFocus;
  FStatus:= FST_Novo;
end;

procedure TFrm_Cad_Agendamento.CarregarTela;
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_sitBeneficiario','nome_sit');
  BAS_CarregarCombo('cbx_cod_plano','nome_pla');
  BAS_CarregarCombo('cbx_cod_tipodependente','nome_tdp');
  BAS_CarregarCombo('cbx_cod_usuario','nome_usu');
  Obj_SetFormObjValueByName(self,'cbx_cod_usuario',FCod_Usuario);
  Obj_LoadCombo(Self, 'cbx_cod_ocorrenciaEdital', 'descricao_oce', 'cod_ocorrenciaEdital', 'tbl_ocorrenciaEdital');
  edt_dtSistema_age.Date:= date;
end;

procedure TFrm_Cad_Agendamento.FormShow(Sender: TObject);
begin
  inherited;
  CarregarTela;
  if wCod_Beneficiario <> '' then begin
    btn_novoClick(self);
  edt_inscricao_benButtonClick(self);
  end;
end;

procedure TFrm_Cad_Agendamento.btn_alterarClick(Sender: TObject);
begin
  FPesquisaSQL := 'select a.cod_AgendamentoBeneficiario, b.inscricao_ben, b.nome_ben, '+
  ' a.dtAgendamento_age, a.dtSituacao_age, a.status_age '+
  ' from tbl_AgendamentoBeneficiario a, tbl_beneficiario b '+
  ' where a.cod_beneficiario = b.cod_beneficiario';
  FPesquisaTit:= 'Cod. Agend., Inscri��o, Nome do Benefici�rio , Dt. Agendamento, Dt. Situa��o' ;
// Aqui Robson
//  FormShow(self);
  inherited;
    if edt_cod_beneficiario.Text <> '' then
      begin
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
      pnl_alerta.Visible := edt_status_age.text = '9';
  DadosEntrada:= LerDadosTela(Self);
end;

procedure TFrm_Cad_Agendamento.PDJButton2Click(Sender: TObject);
begin
  inherited;
  cbx_cod_sitBeneficiario.ItemIndex := -1;
  cbx_cod_sitBeneficiario.Refresh;
//  FormShow(self);
end;

procedure TFrm_Cad_Agendamento.PDJButton1Click(Sender: TObject);
begin
  inherited;
  cbx_cod_plano.ItemIndex := -1;
  cbx_cod_plano.Refresh;
//  FormShow(self);
end;

procedure TFrm_Cad_Agendamento.PDJButton3Click(Sender: TObject);
begin
  inherited;
  cbx_cod_tipodependente.ItemIndex := -1;
  cbx_cod_tipodependente.Refresh;
//  FormShow(self);
end;

procedure TFrm_Cad_Agendamento.btn_receberClick(Sender: TObject);
var
  Executado, alteraDependentes: boolean;
procedure EscreveLogAtualizacao(descricao, codigoAntigo, codigoAlterado, cod_beneficiario, inscricao, titula : String);
begin
    EscreveLog('Altera��o sem Agendamento : '+descricao+' de '+codigoAntigo+
    ' para '+codigoAlterado+' do benefici�rio cod.'+cod_beneficiario+', insc. '+inscricao+', Tit. '+titula );
end;
begin
  inherited;
  if BAS_ValidarCadastro then
    Exit;
  Executado:= True;
    if (cbx_cod_plano.Text <> '') then begin
      if (Acs_GetComputerName = 'ADM03') then
            EscreveLog('LOG DE MANUTENCAO :  do Benefici�rio Cod.'+edt_cod_beneficiario.Text+', Insc. '+edt_inscricao_ben.Text+', Tit. '+FTit )
      else begin
        showmessage('A OPERA��O N�O PODE SER CONCLU�DA! ALTERA��O DE PLANOS EM MANUTEN��O !');
        exit;
      end;
    end;
  if (cbx_cod_sitBeneficiario.Text <> '') then begin
    Executado := Ben_AlteraSituacao(edt_cod_beneficiario.Text, edt_inscricao_ben.Text, FTit, edt_dtSituacao_age.Text,
    cbx_cod_sitBeneficiario.getStrItemValue, FSitAnt, cbx_cod_ocorrenciaEdital.getStrItemValue);
    EscreveLogAtualizacao('a Situa��o', FSitAnt, cbx_cod_sitBeneficiario.getStrItemValue, edt_cod_beneficiario.Text, edt_inscricao_ben.Text, FTit);
   end;
  //Altera o Plano do Benefici�rio
  if (cbx_cod_plano.Text <> '') and (Executado) then begin
    alteraDependentes := Dlg_YesNo('ATEN��O ! Deseja que Tamb�m Altere os Planos dos Dependentes Normais ?', Self);
    Executado:= Ben_AlteraPlano(cbx_cod_plano.getStrItemValue, edt_dtSituacao_age.Text,
    edt_inscricao_ben.Text, FTit, edt_cod_beneficiario.Text, cbx_cod_ocorrenciaEdital.getStrItemValue, alteraDependentes);
    EscreveLogAtualizacao('o Plano', 'XX', cbx_cod_plano.getStrItemValue, edt_cod_beneficiario.Text, edt_inscricao_ben.Text, FTit);
  end;
  //Altera o Tipo de Dependencia
  if (cbx_cod_tipodependente.Text <> '') and (Executado) then begin
    Executado := Ben_AlteraTipoDependente(edt_cod_beneficiario.Text, edt_inscricao_ben.Text, FTit, cbx_cod_tipodependente.getStrItemValue,
    edt_dtSituacao_age.Text, cbx_cod_ocorrenciaEdital.getStrItemValue);
    EscreveLogAtualizacao('a Titularidade', 'XX', FTit, edt_cod_beneficiario.Text, edt_inscricao_ben.Text, FTit);
  end;
  if (Executado) then Begin
    Executado := Ben_GeraHistorico(IntToStr(FCod_Usuario), IntToStr(Fcod_TelaSistema), edt_inscricao_ben.text, '00', '');
  end;
  if (Executado) then
  DB_Commit
  else begin
    DB_RollBack;
    Dlg_Erro('Ocorreu um Erro interno e n�o foi poss�vel efetuar a altera��o dos dados do benefici�rio!',self);
  end;
  BotoesOnOff(false);
  WMudancas:= '';
  DadosSaida:= LerDadosTela(Self);
  For x:= 1 to High(DadosSaida) do
     if DadosEntrada[x] <> DadosSaida[x] then
        WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosSaida[x])) + ', ';
  GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, 'sem agendamento, inscr. ' + edt_inscricao_ben.Text, WMudancas, 0);
{  GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, 'Sem agendamento inscr.' + edt_inscricao_ben.Text +
               ', dt.agendamento ' + edt_dtAgendamento_age.Text + ', dt.situa��o ' + edt_dtSituacao_age.Text,
               'situa��o ' + cbx_cod_sitBeneficiario.Text + ', plano ' + cbx_cod_plano.Text +
               ', tipo dependente ' + cbx_cod_tipodependente.Text + ', ocorr�ncia ' +
               cbx_cod_ocorrenciaEdital.Text,0);}
  FStatus:= FST_Normal;
  BAS_LimparTela;
end;

procedure TFrm_Cad_Agendamento.btn_salvarClick(Sender: TObject);
var
  WMensagem: String;
begin
  if (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A inscri��o do benefici�rio deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtAgendamento_age.name, 'A data de agendamento deve ser preenchida !', VLD_DataPreenchida )) then
    Exit;
  edt_status_age.Text:= IntToStr(FStatus);
  if FStatus <> FST_Novo then begin
    if edt_dtAgendamento_age.Date <= Date then begin
      Dlg_Alerta('N�o � poss�vel alterar um agendamento que j� foi executado!',self);
      Exit;
    end;
  end
  else begin
    if (edt_dtAgendamento_age.Date <= Date) and (edt_dtSistema_age.Date <= Date) then begin
      Dlg_Alerta('A data do agendamento tem que ser maior que a data de hoje!',self);
      Exit;
    end;
  end;
  if (cbx_cod_sitBeneficiario.getItemValue = 3) or (cbx_cod_sitBeneficiario.getItemValue = 9) or
  (cbx_cod_sitBeneficiario.getItemValue = 31) or (cbx_cod_sitBeneficiario.getItemValue = 50) then
  begin
    if DB_OpenSQL('select cod_beneficiario from tbl_descontofolha where cod_beneficiario = '+
    edt_cod_beneficiario.Text+' and cod_sitdesconto = 1') > 0 then
      Dlg_Alerta('Benefici�rio com descontos em aberto',self);
    if DB_OpenSQL('select * from tbl_autorizacaomedica where dtatendimento_aum > (getdate() - 30)'+
    ' and cod_beneficiario = '+edt_cod_beneficiario.Text) > 0 then
      Dlg_Alerta('Autoriza��o m�dica emitida recentemente',self);
  end;
  pnl_alerta.Visible:= False;
  if BAS_ValidarCadastro = True then
     Exit;
  WMudancas:= '';
  DadosSaida:= LerDadosTela(Self);
  if FStatus <> FST_Novo then
     begin
     WMensagem:= 'Alterado, inscr. ' + edt_inscricao_ben.Text;
     WMudancas:= 'c�d.agend. ' + edt_cod_AgendamentoBeneficiario.Text + ', situa��o anterior ';
     For x:= 1 to High(DadosSaida) do
        if DadosEntrada[x] <> DadosSaida[x] then
           WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';
     end
  else
     begin
     WMensagem:= 'Inclu�do, inscr. ' + edt_inscricao_ben.Text;
     Pesquisaultimoagendamento;
     WMudancas:= 'c�d.agend. ' + edt_cod_AgendamentoBeneficiario.Text;
     end;
  ChaveExp:= StrToInt(edt_cod_beneficiario.Text);
  x:= StrToInt(edt_inscricao_ben.Text);
  inherited;
  if FStatus = FST_Normal then
     GeraAuditoria(ChaveExp, IntToStr(x), WMensagem, WMudancas, 0);
{   GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, 'Agendado Inscr.' + edt_inscricao_ben.Text +
                ', Dt.Agendamento ' + edt_dtAgendamento_age.Text + ', Dt.Situa��o ' + edt_dtSituacao_age.Text,
                'Situa��o ' + cbx_cod_sitBeneficiario.Text + ', Plano ' + cbx_cod_plano.Text +
                ', Tipo Dependente ' + cbx_cod_tipodependente.Text + ', Ocorrencia ' +
                cbx_cod_ocorrenciaEdital.Text,0);}
end;

procedure TFrm_Cad_Agendamento.Pesquisaultimoagendamento;
begin
  DB_OpenSQL('select max((cod_AgendamentoBeneficiario) + 1) as proximo from tbl_AgendamentoBeneficiario');
  edt_cod_AgendamentoBeneficiario.Text:= Tab.FieldByName('proximo').AsString;
end;

procedure TFrm_Cad_Agendamento.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
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
    DB_OpenSQL('select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.cod_empresa, b.cod_plano, b.titulacartei_ben,'+
    ' b.digito_ben, b.idade_ben, b.cod_sitbeneficiario, b.cod_tipodependente,d.cod_grauparent, dtnascim_ben, dtinscricao_ben '+
    ' g.nome_gra, d.cod_estfisico, e.nome_efi from tbl_beneficiario b '+
    ' left join tbl_dependente d on b.cod_beneficiario = d.cod_beneficiario'+
    ' left join tbl_grauparent g on d.cod_grauparent = g.cod_grauparent '+
    ' left join tbl_estfisico e on d.cod_estfisico = e.cod_estfisico '+
    ' WHERE b.cod_beneficiario  = '+edt_cod_beneficiario.text);
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
    FGrauparent := Tab.FieldByNAme('cod_grauparent').AsString;
    Festfisico := Tab.FieldByNAme('cod_estfisico').AsString;
    FTit := Tab.FieldByName('titulacartei_ben').AsString;
    FSitAnt := Tab.FieldByName('cod_sitbeneficiario').AsString;
    DTInscricao := Tab.FieldByName('cod_sitbeneficiario').AsDateTime;
  end;
  wCod_Beneficiario:= '';
  DadosEntrada:= LerDadosTela(Self);
  edt_dtAgendamento_age.SetFocus;
end;

procedure TFrm_Cad_Agendamento.edt_cod_beneficiarioKeyPress(
  Sender: TObject; var Key: Char);
  function Get_Cod_beneficiario(inscricao:string): string;
  begin
    if inscricao = '' then begin
      result := '' ;
      exit;
    end;
    DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+
    inscricao);
    result := Tab.Fields[0].AsString;
    if result = '' then
      Dlg_Alerta('Inscri��o n�o encontrada !', self);
  end;
begin
  inherited;

end;

procedure TFrm_Cad_Agendamento.edt_cod_AgendamentoBeneficiarioButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_Agendamento.btn_excluirClick(Sender: TObject);
begin
  if not FExcluir then begin
    Dlg_Alerta('Usu�rio n�o autorizado a excluir !', self);
    exit;
  end;
  EscreveLog(btn_excluir.name);
  if not Dlg_YesNo(MSG_DB_CON_Exclui, Self) then Exit ;
  if not DB_ExecSQL('update tbl_agendamentobeneficiario set status_age = 9, dtSistema_age = getdate(), cod_usuario = '+inttostr(FCod_Usuario)+' where cod_AgendamentoBeneficiario = '+edt_cod_AgendamentoBeneficiario.text) then
    Exit;
  WMudancas:= '';
  GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, 'Exclu�do, inscr. ' + edt_inscricao_ben.Text,'c�d.agend. ' + edt_cod_AgendamentoBeneficiario.Text, 0);
{  GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, 'Exclu�do Inscr.' + edt_inscricao_ben.Text +
               ', Dt.Agendamento ' + edt_dtAgendamento_age.Text + ', Dt.Situa��o ' + edt_dtSituacao_age.Text,
               'Situa��o ' + cbx_cod_sitBeneficiario.Text + ', Plano ' + cbx_cod_plano.Text +
               ', Tipo Dependente ' + cbx_cod_tipodependente.Text + ', Ocorrencia ' +
               cbx_cod_ocorrenciaEdital.Text,0);}
  if FTransacao then
    DB_Commit;
  BotoesOnOff(false);
  BAS_LimparTela;
  Dlg_Ok('Registro exclu�do com sucesso !', self);
end;

procedure TFrm_Cad_Agendamento.btn_cancelarClick(Sender: TObject);
begin
  inherited;
    pnl_alerta.Visible := false;
end;

procedure TFrm_Cad_Agendamento.stg_audiDrawCell(Sender: TObject; ACol,
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

procedure TFrm_Cad_Agendamento.TabSheet2Show(Sender: TObject);
begin
  inherited;
  if edt_inscricao_ben.Text = '' then
     ChaveExp:= 999999999
  else
     ChaveExp:= StrToInt(edt_cod_beneficiario.Text);
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 1);
end;

end.
