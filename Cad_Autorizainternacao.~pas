unit Cad_Autorizainternacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, DCChoice, StdCtrls, QuickRpt,
  Db, Grids, DBGrids, jpeg;

type
  TFrm_Cad_Autorizainternacao = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    edt_cod_autorizainternacao: TDCChoiceEdit;
    Panel1: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel5: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_carteira: TDCEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_idade: TDCEdit;
    Panel6: TPanel;
    edt_nome_pla: TDCEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    DataSource2: TDataSource;
    Panel7: TPanel;
    edt_cod_padrao: TDCChoiceEdit;
    edt_nome_its: TDCEdit;
    Panel8: TPanel;
    edt_cod_crm: TDCChoiceEdit;
    edt_medico_crm: TDCEdit;
    Panel10: TPanel;
    edt_nome_cid: TDCEdit;
    Panel11: TPanel;
    cbx_cod_acomodacao: TDCComboBox;
    Panel12: TPanel;
    edt_obs_ain: TDCEdit;
    Panel13: TPanel;
    edt_dtalteracao_ain: TDCDateEdit;
    cbx_cod_usuario: TDCComboBox;
    Panel14: TPanel;
    pnl_alerta: TPanel;
    pnl_carencia: TPanel;
    edt_dtprevisao_ain: TDCDateEdit;
    btn_imprimirAutorizacao: TPDJButton;
    Mem_autorizacao: TMemo;
    edt_cod_cid: TDCChoiceEdit;
    pnl_procedimento: TPanel;
    edt_rn_ain: TDCEdit;
    edt_excecao_ain: TDCEdit;
    edt_cod_statusAutorizaInternacao: TDCEdit;
    btn_pdf: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_autorizainternacaoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_crmButtonClick(Sender: TObject);
    procedure edt_cod_crmExit(Sender: TObject);
    procedure edt_cod_padraoButtonClick(Sender: TObject);
    procedure edt_cod_padraoExit(Sender: TObject);
    procedure edt_cod_cidButtonClick(Sender: TObject);
    procedure edt_cod_cidExit(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_cancelarClick(Sender: TObject);
    procedure edt_cod_autorizainternacaoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_imprimirAutorizacaoClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure edt_cod_conveniadoEnter(Sender: TObject);
    procedure btn_pdfClick(Sender: TObject);
  private
    { Private declarations }
    Int_Retorno : integer;
    FPesquisaSQLDefalt, FPesquisaItemSevico, FconvOLD : String ;
    procedure CarregarCombos;
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BAS_Salvar(Frm:TForm);                    override ;
  end;

var
  Frm_Cad_Autorizainternacao: TFrm_Cad_Autorizainternacao;

implementation
uses Constantes, Fun_Medico, Fun_ConsCadastro, Fun_DB, Fun_Beneficiario, Fun_Str,
Fun_Obj, Fun_Acesso, Fun_Data, dtm_principal3, DLG_Mensagem, dtm_principal5, Imp_4126,
  Bas_Impressao ;

//  Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'
//  Function Daruma_DUAL_VerificaStatus: Integer; StdCall; External 'Daruma32.dll'
  function rStatusImpressora_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'
  function iImprimirTexto_DUAL_DarumaFramework(stTexto: String; iTam: Integer ): Integer; StdCall; External 'DarumaFramework.dll'

{$R *.DFM}


procedure TFrm_Cad_Autorizainternacao.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Solicitação para Internação' ;
  FEditChave    := 'edt_cod_autorizainternacao' ;
  FEditAlteracao:= 'edt_cod_conveniado' ;
  FUltFoco      := 'edt_obs_ain' ;
  FTitPesquisa  := 'Localizar Internação' ;
  inherited;

end;

procedure TFrm_Cad_Autorizainternacao.CarregarCombos;
begin
  inherited ;
   BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
   BAS_CarregarCombo('cbx_cod_acomodacao', 'nome_aco');
   BAS_CarregarCombo('cbx_cod_usuario', 'descricao_usu');
end;

procedure TFrm_Cad_Autorizainternacao.BAS_Salvar(Frm:TForm);
begin
 if BAS_ValidarCadastro then Exit ;
  if not Dlg_YesNo(MSG_DB_CON_Salva, Self) then Exit ;
  edt_cod_conveniado.text := STR_RemoveChar(edt_cod_conveniado.text, '-');
  Obj_SetFormObjValueByName(self, cbx_cod_usuario.name, FCod_usuario);
  edt_dtalteracao_ain.Date := now ;
  if FStatus = FST_Novo then begin
    if not BAS_SalvarInsert(Self) then
      Exit ;
  end else begin
    if not BAS_SalvarUpdate(Self) then begin
      Dlg_Erro('ATENÇÃO ! Ocorreu algum erro ao tentar salvar ! Não foi possível salvar', self);
      Exit ;
    end;
  end;
  if FStatus = FST_Novo then
    if Dlg_YesNo('Deseja Imprimir ou Salvar a Autorização?',self) then
      btn_pdfClick(self);
  DB_Commit;
  BotoesOnOff(false);
  BAS_LimparTela;
  FStatus := FST_Normal;
  pnl_carencia.Visible := false;
  pnl_alerta.Visible := false;
end;

procedure TFrm_Cad_Autorizainternacao.BAS_Alterar(Frm:Tform);
begin
  CarregarCombos;
  pnl_procedimento.Visible := false;
  inherited ;
  btn_imprimirAutorizacao.Visible := true;
  edt_cod_conveniadoExit(self);
  edt_cod_padraoExit(self);
  edt_cod_crmExit(self);
  edt_cod_cidExit(self);
  if edt_cod_conveniado.Text <> '' then
  begin
    DB_OpenSQL('select nome_ben, cod_empresa, b.cod_plano, nome_pla, inscricao_ben, titulacartei_ben, idade_ben,  digito_ben'+
    ' from tbl_beneficiario b, tbl_plano p where  b.cod_plano = p.cod_plano and cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    edt_idade.text := Tab.FieldByNAme('idade_ben').AsString;
    edt_nome_pla.Text := Tab.FieldByNAme('nome_pla').AsString;
  end;
end;

function TFrm_Cad_Autorizainternacao.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_conveniado.name, 'O Código do Conveniado deve ser preenchido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_razao_con.name, 'Digite um Código de Conveniado Válido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_cod_beneficiario.name, 'O Código do Beneficiário deve ser preenchido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_cod_padrao.name, 'O Código do AMB deve ser preenchido!', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_nome_its.name, 'Digite um Código AMB Válido!', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_cod_crm.name, 'o Código do CRM deve ser preenchido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_medico_crm.name, 'Digite um CRM Válido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_cod_cid.name, 'o Código do CID deve ser preenchido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_nome_cid.name, 'Digite um CID Válido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_dtprevisao_ain.name, 'A Data da Internação ser preenchida !', VLD_Preenchido )) then
    Exit;
    if pnl_procedimento.Visible then begin
      Dlg_Alerta('O Procedimento não está autorizado para o Conveniado!',self);
      Exit;
    end;
    if (edt_rn_ain.Text <> 'S') and (edt_rn_ain.Text <> 'N') then
    begin
      Dlg_Alerta('O Campo RN deve ser preenchido com S ou N',self);
      Exit;
    end;

    if (edt_excecao_ain.Text <> 'S') and (edt_excecao_ain.Text <> 'N') then
    begin
      Dlg_Alerta('O Campo Exceção deve ser preenchido com S ou N',self);
      Exit;
    end;
  result := false ;
end;

procedure TFrm_Cad_Autorizainternacao.edt_cod_autorizainternacaoButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_Autorizainternacao.edt_cod_conveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_sitconveniado = 1';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl_conveniado', FPesquisa,
  'Cod.Conv, Nome do Conveniado, Razão Social', 'Localizar Conveniados', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Cad_Autorizainternacao.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
  begin
    edt_razao_con.text := Get_NomeConveniadoAtivo(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
    if FconvOLD <> STR_RemoveZero(STR_RemoveChar(edt_cod_conveniado.text, '-')) then
    begin
      edt_cod_padrao.Text := '';
      edt_nome_its.Text := '';
    end;  
  end;
end;

procedure TFrm_Cad_Autorizainternacao.FormShow(Sender: TObject);
begin
  inherited;
    CarregarCombos;
    //edt_ncopias.Text := '2';
end;

procedure TFrm_Cad_Autorizainternacao.edt_cod_crmButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_crm',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_crm',8,length('edt_cod_crm')),
  'cod_crm, medico_crm', 'CRM, Nome do Médico',
  'Localizar Médicos', '', true));
  edt_cod_crmExit(self);
end;

procedure TFrm_Cad_Autorizainternacao.edt_cod_crmExit(Sender: TObject);
begin
  inherited;
  if edt_cod_crm.text <> '' then
    edt_medico_crm.text := Get_NomeMedico(edt_cod_crm.text);
end;

procedure TFrm_Cad_Autorizainternacao.edt_cod_padraoButtonClick(
  Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.Text <> '' then
  begin
    FPesquisaItemSevico := 'select cod_padrao, i.cod_itemservico, nome_its, apelido_its, max(dtvalidade_hit) as dtvalidade_hit '+
    ' from tbl_itemservico i inner join tbl_Itemhonorario it on i.cod_itemservico = it.cod_itemservico '+
    ' where cod_statusAtivo = 1 and cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+
    ' group by i.cod_itemservico, cod_padrao, nome_its, apelido_its';
    FPesquisaSQL  := FPesquisaItemSevico;
    edt_cod_padrao.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, 'Cod.AMB, Cod. Item Serv., Descrição, Apelido, Dt. Ult. Atual.', 'Localizar AMB', FPesquisaSQL, true);
    edt_cod_padraoExit(self);
  end
  else
    edt_cod_conveniado.SetFocus;
  {
  Obj_SetFormObjValueByName(Self, 'edt_cod_padrao',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_padrao, cod_itemservico, nome_its', 'Cod.AMB, Cod. Item Serv., Descrição',
  'Localizar AMB', '', true));
  edt_cod_padraoExit(self);  }
end;

procedure TFrm_Cad_Autorizainternacao.edt_cod_padraoExit(
  Sender: TObject);
begin
  inherited;
  if (edt_cod_padrao.text <> '') and (edt_cod_conveniado.Text <> '') then
  begin
    DB_OpenSQL('select distinct i.nome_its from tbl_itemservico i '+
    ' inner join tbl_Itemhonorario it on i.cod_itemservico = it.cod_itemservico'+
    ' where cod_statusAtivo = 1 and cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text, '-')+
    ' and i.cod_padrao = '+edt_cod_padrao.text);
    edt_nome_its.text := Tab.FieldByName('nome_its').AsString;
    if edt_nome_its.Text = '' then
    begin
      edt_nome_its.text := Get_NomeAMB(edt_cod_padrao.Text);
      if edt_nome_its.Text <> '' then
        pnl_procedimento.Visible := true;
    end
    else
      pnl_procedimento.Visible := false;
  end;
end;

procedure TFrm_Cad_Autorizainternacao.edt_cod_cidButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_cid',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_cid',8,length('edt_cod_cid')),
  'cod_cid, nome_cid', 'Cod.Cid, CID',
  'Localizar CID', '', true));
  edt_cod_cidExit(self);
end;

procedure TFrm_Cad_Autorizainternacao.edt_cod_cidExit(Sender: TObject);
begin
  inherited;
  if edt_cod_cid.text <> '' then
    edt_nome_cid.text := Get_NomeCid(edt_cod_cid.text);
end;

procedure TFrm_Cad_Autorizainternacao.edt_inscricao_benButtonClick(
  Sender: TObject);
var
  FPlano : String;  
begin
  inherited;
   FPesquisaSQLDefalt := FSQL_Beneficiario ;
//  'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
//  'from tbl_beneficiario b, tbl_sitbeneficiario s '+
//  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario ';
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FTit_Benefeciario, 'Localizar Beneficiarios', FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, b.cod_plano, p.nome_pla, inscricao_ben,'+
    ' titulacartei_ben, idade_ben,  digito_ben, nome_sit, tipo_sit, bn.cod_planoPagto,'+
    ' bn.cod_planoPagtoOld, pp.cod_plano as cod_planoOld, p2.nome_pla as nome_plaOld'+
    ' from tbl_beneficiario b, tbl_plano p, tbL_sitbeneficiario s, tbl_beneficiarioPlanoPagtoEspecial bn, tbl_planopagto pp, tbl_plano p2 '+
    ' where  b.cod_plano = p.cod_plano and b.cod_sitbeneficiario = s.cod_sitbeneficiario'+
    ' and b.cod_beneficiario = bn.cod_beneficiario and bn.cod_planoPagtoOld = pp.cod_planopagto'+
    ' and pp.cod_plano = p2.cod_plano'+
    ' and b.cod_beneficiario = '+edt_cod_beneficiario.text);
    if (Date >= StrToDate('01/10/2021')) then
    begin
      FPlano := Tab.FieldByNAme('cod_plano').AsString;
      edt_nome_pla.Text := Tab.FieldByNAme('nome_pla').AsString;
    end
    else
    begin
      FPlano := Tab.FieldByNAme('cod_planoOld').AsString;
      edt_nome_pla.Text := Tab.FieldByNAme('nome_plaOld').AsString;
    end;
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+FPlano+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    edt_idade.text := Tab.FieldByNAme('idade_ben').AsString;
    //edt_nome_pla.Text := Tab.FieldByNAme('nome_pla').AsString;
        pnl_alerta.Caption := '***   Situação: '+Tab.FieldByName('nome_sit').AsString+'  ***';
    case Tab.FieldByName('tipo_sit').AsInteger of
      1 : pnl_alerta.color := clYellow;
      2 : pnl_alerta.color := clRed;
    end;
    pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
    pnl_carencia.Visible := ADM_VerCarencia(edt_cod_beneficiario.text);
  end;
end;

procedure TFrm_Cad_Autorizainternacao.btn_novoClick(Sender: TObject);
var
  VerificaCodigo : Boolean;
begin
  inherited;
  VerificaCodigo := false;
  pnl_procedimento.Visible := false;
  edt_cod_autorizainternacao.Enabled := false ;
  edt_cod_conveniado.SetFocus ;
  CarregarCombos;
  edt_dtalteracao_ain.Date := now ;
  edt_rn_ain.Text := 'N';
  edt_excecao_ain.Text := 'N';
  edt_cod_statusAutorizaInternacao.Text := '1';
  Obj_SetFormObjValueByName(self, cbx_cod_usuario.name, FCod_usuario);
  edt_cod_autorizainternacao.text := DB_GetPrimaryKey();
  while not VerificaCodigo  do
  begin
    if DB_OpenSQL('select * from tbl_autorizacaoMedica where cod_autorizacaoMedica = '+edt_cod_autorizainternacao.Text) > 0 then
      edt_cod_autorizainternacao.Text := DB_GetPrimaryKey()
    else
      VerificaCodigo := true;
  end;
    btn_imprimirAutorizacao.Visible := false;
end;

procedure TFrm_Cad_Autorizainternacao.edt_inscricao_benKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
      edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Cad_Autorizainternacao.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  pnl_carencia.Visible := false;
  pnl_alerta.Visible := false;
end;

procedure TFrm_Cad_Autorizainternacao.edt_cod_autorizainternacaoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_cod_autorizainternacaoButtonClick(self);
end;

procedure TFrm_Cad_Autorizainternacao.btn_alterarClick(Sender: TObject);
begin
  FTitPesquisa  := 'Localizar Internação' ;
  FPesquisaTit  := 'Cod. Int., Cod. Conv, Nome do Conveniado, Inscricao, Nome do Beneficiário, Cod.AMB, Descrição, CRM, Nome do médico, Dt.entrada, Usuário' ;
  FPesquisaSQL := 'select a.cod_autorizainternacao, c.cod_conveniado, c.nome_con, b.inscricao_ben, b.nome_ben, i.cod_padrao, i.nome_its, cr.cod_crm, cr.medico_crm, a.dtentrada_ain, u.descricao_usu '+
  'from tbl_autorizainternacao a, tbl_conveniado c, tbl_beneficiario b, tbl_crm cr, tbl_usuario u, tbl_itemservico i '+
  'where c.cod_conveniado = a.cod_conveniado and a.cod_beneficiario = b.cod_beneficiario and a.cod_crm = cr.cod_crm and a.cod_usuario = u.cod_usuario and a.cod_padrao = i.cod_padrao';
  inherited;

end;

procedure TFrm_Cad_Autorizainternacao.btn_imprimirAutorizacaoClick(
  Sender: TObject);
var
 i, Retorno : integer;

begin
  inherited;
  Int_Retorno := rStatusImpressora_DUAL_DarumaFramework();
//////////////////////  showmessage('Ret '+inttostr(Int_Retorno));
 { case Int_Retorno of
    0 : MSG_ERRO := '0 - Impressora Desligada!';
    1 : MSG_ERRO := '1 -Impressora OK!';
    -50 : MSG_ERRO := '-50 - Impressora OFF-LINE!';
    -51 : MSG_ERRO := '-51 - Impressora Sem papel!';
    -27 : MSG_ERRO := '-27 -Erro Generico!';
  end;  }
  if Int_Retorno = 1 then
  begin
    with fdt_principal5.spc_cons_med_autorizainternacao02 do
    begin
      close;
      ParamByName('@cod_autorizainternacao').AsString := edt_cod_autorizainternacao.text;
      open;
      with Mem_autorizacao do
      begin
        Clear;
        Lines.Add('<sp>28</sp>'+DateToStr(Date)+' <hr></hr><sp>10</sp>');
        Lines.Add('<e><b><ce>Guia de Internação</ce></b></e>');
        Lines.Add('<l></l>');
        Lines.Add('Autorização: <e>'+Fieldbyname('cod_autorizainternacao').AsString+'</e>');
        Lines.Add('Dt. Autorização: '+Fieldbyname('dtalteracao_ain').AsString);
        Lines.Add('Dt. Internação: '+Fieldbyname('dtprevisao_ain').AsString);
        Lines.Add('Paciente: '+Fieldbyname('nome_ben').AsString);
        Lines.Add('Carteira: '+edt_carteira.Text);
        Lines.Add('Após 30/09/2021 verificar com a GNDI de acordo com seu novo plano.');
        //Lines.Add('<l></l>');
        //Lines.Add('<ce><tc>-</tc></ce>');
        Lines.Add('<tc>-</tc>');
        Lines.Add('<b>Procedimentos Autorizados: </b>');
        Lines.Add(STR_AddSpaces('Cod. AMB',8)+STR_AddSpaces('Descrição',35));
        Lines.Add('  ');
        Lines.Add(STR_AddSpaces(FieldByName('cod_padrao').AsString,8)+STR_AddSpaces(FieldByName('nomeextrato_its').AsString,70));
        Lines.Add('  ');
        Lines.Add('Acomodação: '+Fieldbyname('nome_aco').AsString);
        Lines.Add('Concedido 1 Diária');
        Lines.Add('Obs: '+Fieldbyname('obs_ain').AsString);
        Lines.Add(pchar('  '));
        Lines.Add('<tc>-</tc>');
        Lines.Add('Conveniado: '+fieldbyName('nome_con').AsString);
        Lines.Add('End: '+fieldbyName('enderecojur_con').AsString);
        Lines.Add('Bairro: '+fieldbyName('bairrojur_con').AsString);
        Lines.Add('Telefone: '+fieldbyName('fonedirecao_con').AsString);
        Lines.Add('Médico solicitante: '+fieldbyName('cod_crm').AsString+' - '+fieldbyName('medico_crm').AsString);
        Lines.Add('<l></l>');
        Lines.Add('<tc>_</tc>');
        Lines.Add('Emitente: '+FNome_Usu);
        Lines.Add('<l></l>');
        Lines.Add('<tc>_</tc>');
        Lines.Add('Assinatura do beneficiário');
        Lines.Add('  ');
        //Lines.Add('<tc>_</tc>');
        Lines.Add('<e>IMASF</e>');
        Lines.Add('<c>Rua Dom Luiz, 201 - Nova Petrópolis - S. B. do Campo - SP</c>');
        Lines.Add('<c>3737-7000 - www.imasf.com.br - internacao@imasf.com.br</c>');
        Lines.Add('<sl>3</sl>');
       // Lines.Add('<gui></gui>');
      end;
    end;
    Retorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(Mem_autorizacao.Text),0);
    sleep(1000);
    Application.ProcessMessages;
    Retorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(' <gui></gui>'),0);
    Application.ProcessMessages;
  end
  else
    Dlg_Alerta('Falha de Comunicação com a Impressora!', self);
end;

procedure TFrm_Cad_Autorizainternacao.btn_excluirClick(Sender: TObject);
begin
  edt_cod_conveniado.text := STR_RemoveChar(edt_cod_conveniado.text, '-');
  inherited;

end;

procedure TFrm_Cad_Autorizainternacao.edt_cod_conveniadoEnter(
  Sender: TObject);
begin
  inherited;
  FconvOLD := STR_RemoveChar(edt_cod_conveniado.Text,'-');
end;

procedure TFrm_Cad_Autorizainternacao.btn_pdfClick(Sender: TObject);
begin
  inherited;
  with fdt_principal5.spc_cons_med_autorizainternacao02 do
  begin
    close;
    ParamByName('@cod_autorizainternacao').AsString := edt_cod_autorizainternacao.text;
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_med_autorizainternacao02;
  Frm_Bas_Impressao.FCampo1 := edt_carteira.Text;
  Frm_Bas_Impressao.FCampo2 := FNome_Usu;
  Frm_Bas_Impressao.showReport(4258);
  fdt_principal5.spc_cons_med_autorizainternacao02.close;
  {
  Frm_Imp_4126 := TFrm_Imp_4126.Create(Self);
  Frm_Imp_4126.FCartei := edt_carteira.Text;
  Frm_Imp_4126.QuickRep1.PrinterSettings.Copies := StrToInt(edt_ncopias.text);
  //Frm_Imp_4126.QuickRep1.Print;
  Frm_Imp_4126.QuickRep1.Preview;
  Frm_Imp_4126.Release;
  }
end;

end.
