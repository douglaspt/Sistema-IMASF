unit Mov_2068;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, AppEvnts, BComboBox;

type
  TFrm_Mov_2068 = class(TFrm_Bas_TelaPadrao)
    ScrollBox1: TScrollBox;
    gbx_cabecalho: TGroupBox;
    Panel7: TPanel;
    edt_inscricao_ben: TBEdit;
    pnl_todos: TPanel;
    gbx_dadospessoais: TGroupBox;
    Panel4: TPanel;
    edt_nome_ben: TDCEdit;
    edt_cpf_ben: TMaskEdit;
    Panel11: TPanel;
    cbx_cod_estadociv: TDCComboBox;
    cbx_sexo_ben: TDCComboBox;
    Panel12: TPanel;
    edt_idade: TDCEdit;
    edt_dtnascim_ben: TDCDateEdit;
    Panel13: TPanel;
    edt_nomepai_ben: TDCEdit;
    edt_nomemae_ben: TDCEdit;
    gbx_documentos: TGroupBox;
    Panel21: TPanel;
    edt_rg_ben: TDCEdit;
    edt_orgemissorrg_ben: TDCEdit;
    edt_dtemissaorg_ben: TDCDateEdit;
    Panel20: TPanel;
    edt_certidaonascvivo_ben: TDCEdit;
    edt_titeleitor_ben: TDCEdit;
    gbx_endereco: TGroupBox;
    Panel16: TPanel;
    SpeedButton6: TSpeedButton;
    edt_endereco_ben: TDCEdit;
    edt_cep_ben: TMaskEdit;
    btn_buscarcep: TPDJButton;
    edt_numero_ben: TDCEdit;
    Panel18: TPanel;
    cbx_cod_uf: TDCComboBox;
    cbx_cod_cidadeCep: TDCComboBox;
    edt_complemento_ben: TDCEdit;
    gbx_enderecocor: TGroupBox;
    Panel43: TPanel;
    edt_enderecocor_ben: TDCEdit;
    edt_cepcor_ben: TMaskEdit;
    edt_numerocor_ben: TDCEdit;
    btn_buscarcep2: TPDJButton;
    Panel44: TPanel;
    cbx_cd2_uf: TDCComboBox;
    cbx_cod_cidadecorCEP: TDCComboBox;
    edt_complementocor_ben: TDCEdit;
    Panel45: TPanel;
    edt_bairrocor_ben: TDCEdit;
    gbx_informacao: TGroupBox;
    gbx_confirmar: TGroupBox;
    btn_confirmar: TPDJButton;
    edt_nome_seg: TDCEdit;
    Panel1: TPanel;
    edt_cod_beneficiario: TBEdit;
    pnl_carteira: TPanel;
    edt_dtinscricao_ben: TDCDateEdit;
    pnl_plano: TPanel;
    cbx_cod_plano: TDCComboBox;
    edt_dtplano_ben: TDCDateEdit;
    Panel8: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edt_processo_ben: TDCEdit;
    edt_titulacartei_ben: TDCEdit;
    edt_digito_ben: TDCEdit;
    edt_dtcarencia_ben: TDCDateEdit;
    cbx_cod_sitbeneficiario: TDCComboBox;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbx_cod_TipoSegurado: TDCComboBox;
    edt_dtcadastro_ben: TDCDateEdit;
    edt_dtsituacao_ben: TDCDateEdit;
    cbx_cod_tipocoberturaunimed: TDCComboBox;
    Panel5: TPanel;
    edt_dtrenovacao_dep: TDCDateEdit;
    edt_dtlimite_dep: TDCDateEdit;
    btn_preencheDtRenovacao: TPDJButton;
    Panel9: TPanel;
    Panel10: TPanel;
    cbx_cod_empresa: TDCComboBox;
    cbx_cod_empresafolha: TDCComboBox;
    cbx_cod_estfisico: TDCComboBox;
    lsv_dependente: TListView;
    edt_idade_ben: TDCEdit;
    Label8: TLabel;
    edt_nomecarteira_ben: TDCEdit;
    Label11: TLabel;
    cbx_cod_ocorrenciaEdital: TDCComboBox;
    Panel23: TPanel;
    edt_outrosdocume_ben: TDCEdit;
    edt_dtdocumento_ben: TDCDateEdit;
    edt_dtendereco_ben: TDCDateEdit;
    Panel17: TPanel;
    edt_bairro_ben: TDCEdit;
    edt_foneresi_ben: TDCEdit;
    Panel19: TPanel;
    edt_email_ben: TDCEdit;
    chb_mailing_ben: TCheckBox;
    edt_fonecel_ben: TDCEdit;
    chB_cpfproprio_dep: TCheckBox;
    edt_dtadmiss_seg: TDCDateEdit;
    edt_cod_formaadm: TDCEdit;
    btn_regra: TPDJButton;
    chB_rgproprio_dep: TCheckBox;
    cbx_cod_tipodependente: TDCComboBox;
    btn_etiqueta: TPDJButton;
    cbx_cod_planoPagto: TDCComboBox;
    Label9: TLabel;
    cbx_cod_grauparent: TBComboBox;
    cbx_cod_tipodocumento: TBComboBox;
    edt_cod_sitbeneficiario: TDCEdit;
    btn_atualizarEndereco: TPDJButton;
    chb_recibomes_dep: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure edt_inscricao_benExit(Sender: TObject);
    procedure btn_atualizarEnderecoClick(Sender: TObject);
    procedure btn_buscarcepClick(Sender: TObject);
    procedure btn_buscarcep2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure edt_dtnascim_benChange(Sender: TObject);
    procedure btn_confirmarClick(Sender: TObject);
    procedure edt_cpf_benExit(Sender: TObject);
    procedure edt_cep_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_preencheDtRenovacaoClick(Sender: TObject);
    procedure edt_dtnascim_benExit(Sender: TObject);
    procedure edt_nome_benExit(Sender: TObject);
    procedure gbx_dadospessoaisDblClick(Sender: TObject);
    procedure gbx_documentosDblClick(Sender: TObject);
    procedure gbx_enderecoDblClick(Sender: TObject);
    procedure gbx_enderecocorDblClick(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure chB_cpfproprio_depClick(Sender: TObject);
    procedure chB_rgproprio_depClick(Sender: TObject);
    procedure edt_cpf_benKeyPress(Sender: TObject; var Key: Char);
    procedure btn_regraClick(Sender: TObject);
    procedure btn_etiquetaClick(Sender: TObject);
    procedure cbx_cod_grauparentChange(Sender: TObject);
    procedure cbx_cod_tipodocumentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbx_cod_tipodependenteChange(Sender: TObject);
  private
    { Private declarations }
  FPesquisaSQLDefalt, FCamposAux, FTabelaAux, FCamposCart, FTabelaCart, FInscricao : string;
  FNumDep : integer;
  ListItem: TListItem;
  Fvltotal : Double;
  procedure CarregarCombos;
  procedure LimpaCabecalho;
  procedure AjustaPanelSimulacao;
  procedure GroupBoxMaxMin(campo : TGroupBox; Height, tamanho : integer; Tit : String);
  procedure GroupBoxONOFF(visible, enabled: boolean);
  procedure PreencheCamposDepNovo;
  procedure PreencheCamposDepLista;
  function CriticaParametros : Boolean ;
  function SalvarPlanoPagtoEspecial: boolean ;
  public
    { Public declarations }
    CodRequerimento, DtProtocolo : string;

  end;

var
  Frm_Mov_2068: TFrm_Mov_2068;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
Fun_obj, Fun_ConsCadastro, Fun_Data, Fun_ConsBeneficiario, Fun_ConsCEP, Bas_Impressao, dtm_principal6, Fun_Desconto ;

{$R *.DFM}

function TFrm_Mov_2068.CriticaParametros : Boolean ;
begin
 // result := (not BAS_ValidarCampo(edt_cod_Requerimento2.name, 'O Código do Requerimento deve ser Preenchido !', VLD_Preenchido ));
  result := true ;
  if (not BAS_ValidarCampo(edt_nome_ben.name, 'O nome deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomecarteira_ben.name, 'O nome para carteirinha deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  if Str_RemoveSimbolos(edt_cpf_ben.Text) = '' then
  begin
    Dlg_Alerta('O CPF deve ser preenchido !',self);
    edt_cpf_ben.SetFocus;
    Exit;
  end;
  if (not BAS_ValidarCampo(edt_cpf_ben.name, 'CPF Inválido !', VLD_CPF )) or
  (not BAS_ValidarCampo(cbx_cod_estadociv.name, 'Um estado civil deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_sexo_ben.name, 'Selecione o sexo do beneficiário !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_grauparent.name, 'Um grau de parentesco deve ser selecionado !', VLD_Preenchido )) or
  //(not BAS_ValidarCampo(cbx_cod_empresa.name, 'Uma empresa deve ser selecionada !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtnascim_ben.name, 'A data de nascimento deve ser preenchida, ou não é uma data de nascimento válida !', VLD_DataNascimento )) or
  //(not BAS_ValidarCampo(edt_nomepai_ben.name, 'O Nome da Pai deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_estfisico.name, 'O estado Físico deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomemae_ben.name, 'O Nome da Mãe deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtrenovacao_dep.name, 'A data de renovação deve ser preencida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtlimite_dep.name, 'A data limite deve ser preencida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(cbx_cod_TipoSegurado.name, 'Um tipo de segurado deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_rg_ben.name, 'O R.G. deve ser preenchido !', VLD_Preenchido )) or
//  (not BAS_ValidarCampo(edt_dtemissaorg_ben.name, 'A Data de Emissão do R.G. deve ser preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_orgemissorrg_ben.name, 'O Orgão Emissor do R.G. deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cep_ben.name, 'O CEP deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_endereco_ben.name, 'O Endereço deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_numero_ben.name, 'O Numero deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_bairro_ben.name, 'O Bairro deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_cidadeCep.name, 'A Cidade deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_uf.name, 'Uma UF deve ser selecionada !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_plano.name, 'Um plano deve ser selecionado !', VLD_Preenchido )) then
    Exit ;
  if not Ben_CriticaDependente(cbx_cod_grauparent.getStrItemValue, cbx_cod_plano.ValueItem, cbx_cod_tipodependente.ValueItem,
  edt_inscricao_ben.Text, cbx_cod_estfisico.valueitem,Data_GetIdadeAnos(edt_dtnascim_ben.date, date), FStatus, edt_dtinscricao_ben.date, self) then
    Exit ;

  if edt_enderecocor_ben.text = '' then
      btn_atualizarEnderecoClick(self);
  if (chb_mailing_ben.Checked) and (edt_email_ben.Text = '') then
  begin
    Dlg_Alerta('O Email deve ser preenchido!', self);
    edt_email_ben.SetFocus;
    Exit;
  end;
  if cbx_cod_ocorrenciaEdital.text = '' then begin
    Dlg_Alerta('A Ocorrencia deve ser Preenchida !',self);
    Exit;
  end;
  if cbx_cod_plano.ValueItem = 3 then
    Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaunimed.Name, 4)
  else
    Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaunimed.Name, 0);
  if (cbx_cod_tipodocumento.Text <> '') and (edt_dtdocumento_ben.Text = '') then
  begin
    Dlg_Alerta('A Data do Documento deve ser Preenchida!',self);
    edt_dtdocumento_ben.SetFocus;
    Exit;
  end;
  if (edt_dtdocumento_ben.Text <> '') and (cbx_cod_tipodocumento.Text = '') then
  begin
    Dlg_Alerta('O Tipo de Documento ser Preenchido!',self);
    cbx_cod_tipodocumento.SetFocus;
    Exit;
  end;
  result := false ;
end;

procedure TFrm_Mov_2068.FormCreate(Sender: TObject);
begin
  inherited;
  FTitulo       := 'Cadastro de Beneficiários' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nomesimulacao' ;
  FUltFoco      := 'cbx_cod_ocorrenciaEdital' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisa     := 'cod_cod_beneficiario, nome_ben' ;
  FPesquisaTit  := 'Código, Nome' ;
  FCamposCart   := 'edt_cod_beneficiario, '+
  'edt_dtemissao_car, edt_dtvalidade_car, edt_via_car';
  FTabelaCart   := 'tbl_carteira';
  FCamposAux    := 'edt_cod_beneficiario, '+
  'edt_dtrenovacao_dep, edt_dtlimite_dep, cbx_cod_grauparent, '+
  'chB_rgproprio_dep, chB_cpfproprio_dep, cbx_cod_estfisico, chb_recibomes_dep';
  FTabelaAux    := 'tbl_dependente';

end;

procedure TFrm_Mov_2068.CarregarCombos;
begin
  BAS_CarregarCombo('cbx_cod_TipoSegurado', 'nome_tse');
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_estadociv', 'nome_civ');
  BAS_CarregarCombo('cbx_cod_sitbeneficiario', 'nome_sit');
  BAS_CarregarCombo('cbx_cod_tipodocumento', 'descricao_tpd');
  BAS_CarregarCombo('cbx_cod_uf', 'sigla_uf');
  Obj_LoadCombo(Self, 'cbx_cd2_uf', 'sigla_uf', 'cod_uf', 'tbl_uf');
  BAS_CarregarCombo('cbx_cod_grauparent', 'nome_gra');
  BAS_CarregarCombo('cbx_cod_estfisico', 'nome_efi');
 // cbx_cod_cidadeCep.ValItems.Clear;
//  cbx_cod_cidadecorCEP.ValItems.Clear;
  Obj_LoadCombo(Self,'cbx_cod_cidadeCep', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep order by cidade_cep');
  Obj_LoadCombo(Self,'cbx_cod_tipodependente', 'nome_tdp', 'cod_tipodependente', 'tbl_tipodependente where cod_tipodependente > 0');

  Obj_LoadCombo(Self,'cbx_cod_cidadecorCEP', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep order by cidade_cep');
  BAS_CarregarCombo('cbx_cod_setoremp', 'nome_ste');
  BAS_CarregarCombo('cbx_cod_situacempr', 'nome_sie');
  BAS_CarregarCombo('cbx_cod_formaadm', 'nome_fad')     ;
  BAS_CarregarCombo('cbx_cod_nivelcar', 'nome_niv');
  BAS_CarregarCombo('cbx_cod_tipocoberturaunimed','descricao_tcu');
  cbx_sexo_ben.Items.Add('Masculino');
  cbx_sexo_ben.Items.Add('Feminino');
  cbx_sexo_ben.ValItems.Add('M');
  cbx_sexo_ben.ValItems.Add('F');
  Obj_LoadCombo(Self, 'cbx_cod_ocorrenciaEdital', 'descricao_oce', 'cod_ocorrenciaEdital', 'tbl_ocorrenciaEdital where tipo_oce = ''I''');
  Obj_LoadCombo(Self, 'cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp', 'cod_planopagto', 'tbl_planopagto where cod_statusativo = 1');
end;

procedure TFrm_Mov_2068.LimpaCabecalho;
begin
  FInscricao := edt_inscricao_ben.text;
  gbx_cabecalho.Enabled := true;
  edt_cod_beneficiario.Text := '';
  edt_inscricao_ben.Enabled := true;
  Obj_EmptyEdit(Self);
  edt_cpf_ben.Text := '';
  edt_cep_ben.Text := '';
  pnl_todos.Height := 855;
  CarregarCombos;
  if gbx_enderecocor.Height = 121 then
    gbx_enderecocorDblClick(self);
 // GroupBoxONOFF(false, True);
end;

procedure TFrm_Mov_2068.GroupBoxONOFF(visible, enabled: boolean);
begin
  pnl_todos.Visible := visible;
  gbx_dadospessoais.Enabled := enabled;
  gbx_documentos.Enabled := enabled;
  gbx_endereco.Enabled := enabled;
  gbx_enderecocor.Enabled := enabled;
  // //gbx_simulacao.Enabled := enabled;
  gbx_informacao.Enabled := enabled;
 // //gbx_confirmar.Enabled := enabled;
  pnl_plano.Enabled := enabled; 
 // Obj_SetCompsEnable(Self,-1,enabled);
  gbx_cabecalho.Enabled := not visible;
end;

procedure TFrm_Mov_2068.GroupBoxMaxMin(campo : TGroupBox; Height, tamanho : integer; Tit : String);
var
 i : integer;
begin
  if campo.Height = Height then
  begin
    campo.Height := tamanho;
    campo.Caption := Tit+' + ';
    For i := 0 to (campo.ControlCount -1) do begin
      campo.Controls[i].Enabled := false;
    end;
  end
  else
  begin
    campo.Height := Height;
    campo.Caption := Tit+' - ';
    For i := 0 to (campo.ControlCount -1) do begin
      campo.Controls[i].Enabled := true;
    end;
  end;
end;

procedure TFrm_Mov_2068.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  FNumDep := 0;
  gbx_enderecocorDblClick(self);
  GroupBoxONOFF(false, True);
  if edt_inscricao_ben.Text <> '' then
    edt_inscricao_benExit(self);
end;
                                                                                                                   
procedure TFrm_Mov_2068.AjustaPanelSimulacao;
var
  i, j, l, m : integer;
begin
  m := pnl_todos.Height;
  m := m + 14;
  pnl_todos.Height := m;
end;

procedure TFrm_Mov_2068.ScrollBox1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  with ScrollBox1.VertScrollBar do
  begin
    if (Position <= (Range - Increment)) then
      Position := Position + Increment
    else
      Position := Range - Increment;
  end;
end;

procedure TFrm_Mov_2068.ScrollBox1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  with ScrollBox1.VertScrollBar do
  begin
    if (Position >= Increment) then
      Position := Position - Increment
    else
      Position := 0;
  end;
end;

procedure TFrm_Mov_2068.PreencheCamposDepLista;
begin
  if lsv_dependente.Items.Count > 0 then
  begin
    if (StrToInt(lsv_dependente.Items.Item[FNumDep].SubItems[1]) = 2) then
    begin
      edt_nome_ben.Text := lsv_dependente.Items.Item[FNumDep].Caption;
      edt_nome_benExit(self);
      Obj_SetFormObjValueByName(self, cbx_cod_tipodependente.Name, StrToInt(lsv_dependente.Items.Item[FNumDep].SubItems[0]));
      Obj_SetFormObjValueByName(self, cbx_cod_grauparent.Name, StrToInt(lsv_dependente.Items.Item[FNumDep].SubItems[2]));
    end;
  end;
end;

procedure TFrm_Mov_2068.PreencheCamposDepNovo;
begin
  GroupBoxONOFF(true, true);
  cbx_cod_empresa.ItemIndex := 0;
  Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 1);
  edt_titulacartei_ben.text := '0';
  edt_digito_ben.text := '0';
  edt_dtcadastro_ben.Date := date;
  edt_dtinscricao_ben.Date := date;
  edt_orgemissorrg_ben.Text := 'SSP-SP';
  edt_processo_ben.Text := '???';
  edt_dtsituacao_ben.Date := Date;
  //Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.Name, cb2_cod_empresafolha.ValueItem);
  edt_dtplano_ben.Date := Date;
 //Obj_SetFormObjValueByName(self, cbx_cod_empresa.Name, Tab.fieldByName('cod_empresa').AsInteger);
  Obj_SetFormObjValueByName(self, cbx_cod_plano.Name, 1);
  Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaunimed.Name, 0);
  Obj_SetFormObjValueByName(self, cbx_cod_tipodependente.Name, 1);
  Obj_SetFormObjValueByName(self, cbx_cod_ocorrenciaEdital.Name, 1001);
  Obj_SetFormObjValueByName(self, cbx_cod_estfisico.Name, 1);
 // chb_mailing_ben.Checked := true;
end;

procedure TFrm_Mov_2068.edt_inscricao_benExit(Sender: TObject);
begin
  inherited;
  if (edt_inscricao_ben.Text <> '') then
  begin
    PreencheCamposDepNovo;
    PreencheCamposDepLista;
    if edt_inscricao_ben.text = '' then exit ;
    if DB_OpenSQL('select nome_ben, endereco_ben, bairro_ben, cidade_ben, cod_uf,'+
    ' cep_ben, foneresi_ben, rg_ben, orgemissorrg_ben, dtemissaorg_ben, cpf_ben,'+
    ' titeleitor_ben, outrosdocume_ben, tipodocume_ben, processo_ben, cod_tiposegurado, cod_empresa,'+
    ' cod_plano, cod_cidadeCep, numero_ben, complemento_ben, cod_empresafolha, cod_formaadm, dtadmiss_seg, cod_sitbeneficiario'+
    ' from tbl_beneficiario b, tbl_segurado s where b.cod_beneficiario = s.cod_beneficiario'+
    ' and b.inscricao_ben = '+edt_inscricao_ben.text+' and titulacartei_ben = 0') > 0 then begin
      edt_nome_seg.text := Tab.FieldByName('nome_ben').AsString ;
      if edt_endereco_ben.text = '' then begin
        edt_endereco_ben.text := Tab.FieldByName('endereco_ben').AsString ;
        edt_bairro_ben.text := Tab.FieldByName('bairro_ben').AsString ;
        edt_numero_ben.Text :=  Tab.FieldByName('numero_ben').AsString ;
        edt_complemento_ben.Text := Tab.FieldByName('complemento_ben').AsString ;
        edt_cep_ben.text := Tab.FieldByName('cep_ben').AsString ;
        edt_foneresi_ben.text := Tab.FieldByName('foneresi_ben').AsString ;
        Obj_SetFormObjValueByName(Self, 'cbx_cod_uf', Tab.FieldByName('cod_uf').AsString);
        Obj_SetFormObjValueByName(Self, 'cbx_cod_TipoSegurado', Tab.FieldByName('cod_tiposegurado').AsString);
        Obj_SetFormObjValueByName(Self, 'cbx_cod_empresa', Tab.FieldByName('cod_empresa').AsString);
        Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.Name, Tab.FieldByName('cod_empresafolha').AsString);
        Obj_SetFormObjValueByName(Self, 'cbx_cod_plano',Tab.FieldByName('cod_plano').AsString);
        Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadeCep', Tab.FieldByName('cod_cidadeCep').AsString);
        edt_cod_formaadm.Text := Tab.FieldByName('cod_formaadm').AsString;
        edt_dtadmiss_seg.Text := Tab.FieldByName('dtadmiss_seg').AsString;
        edt_cod_sitbeneficiario.text := Tab.FieldByName('cod_sitbeneficiario').AsString;
        btn_atualizarEnderecoClick(self);
      end;
      if edt_rg_ben.text = '' then begin
        edt_rg_ben.text := Tab.FieldByName('rg_ben').AsString ;
        edt_orgemissorrg_ben.text := Tab.FieldByName('orgemissorrg_ben').AsString ;
        edt_dtemissaorg_ben.text := Tab.FieldByName('dtemissaorg_ben').AsString ;
        edt_cpf_ben.text := Tab.FieldByName('cpf_ben').AsString ;
       // edt_titeleitor_ben.text := Tab.FieldByName('titeleitor_ben').AsString ;
       // edt_outrosdocume_ben.text := Tab.FieldByName('outrosdocume_ben').AsString ;
       // edt_tipodocume_ben.text := Tab.FieldByName('tipodocume_ben').AsString ;
      end;  
      edt_processo_ben.text := Tab.FieldByName('processo_ben').AsString ;
      edt_titulacartei_ben.text := Ben_GeraTitularidadeCarteira(edt_inscricao_ben.text, cbx_cod_tipodependente.VAlueItem) ;
      pnl_carteira.caption := 'N° Carteirinha : ' + FormatarCarteirinha(
      MontarCarteirinha ( cbx_cod_empresa.ValueItem, cbx_cod_plano.ValueItem, edt_inscricao_ben.text, edt_titulacartei_ben.text )) ;
   //   LsB_Carencia.Clear;
      edt_nome_ben.SetFocus;
    end else begin
      Dlg_Alerta('Inscrição não encontrada !', self);
      edt_inscricao_ben.SetFocus;
    end;
  end;
end;

procedure TFrm_Mov_2068.btn_atualizarEnderecoClick(Sender: TObject);
begin
  inherited;
  edt_cepcor_ben.text := edt_cep_ben.text;
  edt_enderecocor_ben.text := edt_endereco_ben.text;
  edt_bairrocor_ben.text := edt_bairro_ben.text;
  Obj_SetFormObjValueByName(Self,'cbx_cod_cidadecorCEP',cbx_cod_cidadeCep.ValueItem);
  Obj_SetFormObjValueByName(Self,'cbx_cd2_uf',cbx_cod_uf.ValueItem);
  edt_numerocor_ben.Text := edt_numero_ben.Text;
  edt_complementocor_ben.Text := edt_complemento_ben.Text;
 // edt_cepcor_ben.SetFocus;
  EscreveLog(btn_atualizarEndereco.name);
end;

procedure TFrm_Mov_2068.btn_buscarcepClick(Sender: TObject);
var
  Fcod_cidadeCep : integer;
begin
  inherited;
  if edt_cep_ben.Text <> '' then
  begin
    if DB_OpenSQL('select tipoLogradouro_cep, endereco_cep, bairro_cep, cod_uf, cod_cidadeCep'+
    ' from tbl_cep where cod_cep = '+STR_RemoveChar(edt_cep_ben.Text,'-')) > 0 then
    begin
      edt_endereco_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
      edt_bairro_ben.Text := Tab.fieldByName('bairro_cep').AsString;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_uf',Tab.fieldByName('cod_uf').AsInteger);
      Fcod_cidadeCep := Tab.fieldByName('cod_cidadeCep').AsInteger;
   //   cbx_cod_ufExit(self);
      Application.ProcessMessages;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadeCep', Fcod_cidadeCep);
      edt_dtendereco_ben.Date := Date;
    end
    else begin
      edt_endereco_ben.Text := '';
      edt_bairro_ben.Text := '';
    end;
  end;
end;

procedure TFrm_Mov_2068.btn_buscarcep2Click(Sender: TObject);
var
  Fcod_cidadeCep : integer;
begin
  inherited;
  if edt_cep_ben.Text <> '' then
  begin
    if DB_OpenSQL('select tipoLogradouro_cep, endereco_cep, bairro_cep, cidade_cep, cod_uf, cod_cidadeCep'+
    ' from tbl_cep where cod_cep = '+STR_RemoveChar(edt_cepcor_ben.Text,'-')) > 0 then
    begin
      edt_enderecocor_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
      edt_bairrocor_ben.Text := Tab.fieldByName('bairro_cep').AsString;
      Obj_SetFormObjValueByName(Self,'cbx_cd2_uf',Tab.fieldByName('cod_uf').AsInteger);
      Fcod_cidadeCep := Tab.fieldByName('cod_cidadeCep').AsInteger;
      //cbx_cod_ufExit(self);
      Application.ProcessMessages;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadecorCEP', Fcod_cidadeCep);
      edt_dtendereco_ben.Date := Date;
    end
    else begin
      edt_enderecocor_ben.Text := '';
      edt_bairrocor_ben.Text := '';
    end;
  end;
end;

procedure TFrm_Mov_2068.SpeedButton6Click(Sender: TObject);
var
  FCep, FPesquisaCEP : String;
begin
  inherited;
  FCep := Cons_ConsultaCadastroCEP(self, 'tbl_cep',
  'cod_cep, bairro_cep, enderecoCompleto_cep, cidade_cep, UF_cep', 'CEP, Bairro, Endereço, Cidade, UF',
  'Localizar CEP', '', true);
  if FCep <> '' then
  begin
    edt_cep_ben.text := copy(FCep,1,5)+'-'+copy(FCep,6,3);
    btn_buscarcepClick(self);
  end;
end;

procedure TFrm_Mov_2068.edt_dtnascim_benChange(Sender: TObject);
var
 i, y : integer;
begin
  inherited;
  edt_idade.text := Data_GetIdadeExt(edt_dtnascim_ben.date, date);
    i := Data_GetIdadeMes(edt_dtnascim_ben.date, Date);
    y := i div 12;
    edt_idade_ben.Text := IntToStr(y);
end;

function TFrm_Mov_2068.SalvarPlanoPagtoEspecial: boolean ;
begin
  if (cbx_cod_planoPagto.text <> '') then begin
    DB_ExecSQL('delete from tbl_beneficiarioPlanoPagtoEspecial where cod_beneficiario = '+edt_cod_beneficiario.text );
    result := DB_ExecSQL('insert into tbl_beneficiarioPlanoPagtoEspecial (cod_beneficiario, cod_planoPagto, dtplanoPagto) values ('+
    edt_cod_beneficiario.text+', '+Obj_GetFormObjValueByName(self, cbx_cod_planoPagto.name)+', '+DB_FormatDataSQL(edt_dtplano_ben.text, ftDate)+')');
  end;
end;

procedure TFrm_Mov_2068.btn_confirmarClick(Sender: TObject);
var
  result : boolean;
  FDias : integer;
begin
  inherited; 
  if CriticaParametros then Exit ;
  if not Dlg_YesNo(MSG_DB_CON_Salva, Self) then Exit ;
  //Regras para cadastrar como suspenso em analise
 { if edt_cod_formaadm.Text = '4' then
    FDias := 30
  else
    FDias := 180;
  if edt_dtadmiss_seg.Date+FDias <= edt_dtsituacao_ben.Date then
  begin
    Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 29);
    if (cbx_cod_tipodocumento.Text <> '') and (edt_dtdocumento_ben.Text <> '') then
      if edt_dtdocumento_ben.Date+30 > edt_dtsituacao_ben.Date then
        Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 1);
  end; }
  Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 29); // apagar depois
  if edt_cod_sitbeneficiario.Text = '29' then
    Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 29);
  //regras para assistido
  if cbx_cod_tipodependente.ValueItem = 2 then
  begin
    //Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 29); //voltar depois
    if cbx_cod_plano.ValueItem = 2 then
      Obj_SetFormObjValueByName(Self, 'cbx_cod_planoPagto', 512);
    if cbx_cod_plano.ValueItem = 3 then
      Obj_SetFormObjValueByName(Self, 'cbx_cod_planoPagto', 531);
  end;
  edt_titulacartei_ben.text := Ben_GeraTitularidadeCarteira(edt_inscricao_ben.text, cbx_cod_tipodependente.VAlueItem);
  DB_BeginTrans;
  edt_digito_ben.text := STR_GeraDigito11(cbx_cod_TipoSegurado.ValueItem + cbx_cod_plano.ValueItem + STR_RightAlign(edt_inscricao_ben.text,#48,5) + STR_RightAlign(edt_titulacartei_ben.text,#48,2) ) ;
  //salva tbl_beneficiario
  result := DB_Insert(self);
  DB_OpenSQL('select max(cod_beneficiario) from tbl_beneficiario where inscricao_ben < 99999');
  edt_cod_beneficiario.text := Tab.Fields[0].AsString ;
  if result then
    DB_ExecSQL('delete from aux_inscricaoVaga where inscricao_ben = '+edt_inscricao_ben.Text);
  edt_processo_ben.Text := '';
  if result then
    result := Set_OcorrenciaEdital(edt_cod_beneficiario.text, edt_inscricao_ben.text, edt_titulacartei_ben.text,
    cbx_cod_ocorrenciaEdital.valueitem, edt_dtinscricao_ben.text, Get_MesReferenciaFolha('01/mm/yyyy'));
  if result then
    result := DB_InsertByFields(self, FCamposAux, FTabelaAux);
//  if result then
  //  result := DB_InsertByFields(self, FCamposCart, FTabelaCart);
  if result then
    result := Ben_GeraHistorico(IntToStr(FCod_Usuario), IntToStr(Fcod_TelaSistema), '', edt_titulacartei_ben.text , edt_cod_beneficiario.text);
    //Ben_GeraHistorico(IntToStr(FCod_Usuario), IntToStr(Fcod_TelaSistema), edt_inscricao_ben.text, '00', '');
 // if result then
 //   result := SalvarNivelCar ;
  if result then
    result := SalvarPlanoPagtoEspecial ;

  if cbx_cod_sitbeneficiario.ValueItem <> 29 then
  begin
    if result then
      result := DB_ExecSQL('insert into tbl_histcarteira  (cod_beneficiario, cod_emissaocarteira, dtemissao_hct, cod_statuscarteira)'+
      ' values ('+edt_cod_beneficiario.text+',1, getdate(), 1)');
    if result then
      if cbx_cod_plano.ValueItem = 3 then
        result := DB_ExecSQL('insert into tbl_histcarteiraUnimed  (cod_beneficiario, cod_emissaocarteira, dtemissao_hcu, cod_statuscarteira, cod_localunimed)'+
        ' values ('+edt_cod_beneficiario.text+',1, getdate(), 1, 11)');
  end;
  if cbx_cod_sitbeneficiario.ValueItem = 29 then
    if Result then
      result := DB_ExecSQL('insert into tbl_andamentoInscricao values('+edt_cod_beneficiario.Text+','+'0, null,null,null,null, null)');
  if result then
  begin
    DB_Commit;
    if cbx_cod_sitbeneficiario.ValueItem = 29 then
      Dlg_Alerta('Beneficiário Cadastrado com carências. Vide Tela 2046!', self)
    else
      Dlg_Ok('Beneficiário Cadastrado com Sucesso!', self);
    LimpaCabecalho;
    edt_inscricao_ben.Text := FInscricao;
    edt_inscricao_benExit(self);
    lsv_dependente.Items.Item[FNumDep].SubItems[1] := '3';
    FNumDep := FNumDep + 1;
    if FNumDep >= lsv_dependente.Items.Count then
    begin
      GroupBoxONOFF(false, True);
      LimpaCabecalho;
      edt_inscricao_ben.Text := '';
      edt_nome_seg.Text := '';
      Close;
    end
    else
    begin
      PreencheCamposDepLista;
    end;
  end
  else begin
    DB_RollBack;
    Dlg_Alerta('ATENÇÃO ! OCORREU UM ERRO AO TENTAR SALVAR ! COMUNIQUE O DESENVOLVEDOR DO SISTEMA ! ERRO 2068001 ', self);
    Close;
  end;
  GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, 'Incluido ' + pnl_carteira.Caption +
  ', ' + edt_nome_ben.Text + ', Loc.Desc. ' + cbx_cod_empresafolha.Text,'Dt.Inscr/Sit/Plano/Nasc ' +
  edt_dtinscricao_ben.Text + ', ' + edt_dtsituacao_ben.Text + ', ' +
  edt_dtplano_ben.Text + ', ' + edt_dtnascim_ben.Text + ',Unimed ' + cbx_cod_tipocoberturaunimed.Text +
  ', End. ' + edt_endereco_ben.Text + ', Cep: ' + edt_cep_ben.Text + ', Fone: ' + edt_foneresi_ben.Text,0);
end;

procedure TFrm_Mov_2068.edt_cpf_benExit(Sender: TObject);
begin
  inherited;
  if Str_RemoveSimbolos(edt_cpf_ben.Text) <> '' then
  begin
    if (not BAS_ValidarCampo(edt_cpf_ben.name, 'CPF Inválido !', VLD_CPF)) then
      Exit;
    if DB_OpenSQL('select cpf_ben, inscricao_ben from tbl_beneficiario b, tbl_sitbeneficiario s'+
    ' where b.cod_sitbeneficiario = s.cod_sitbeneficiario and tipo_sit <= 1'+
    ' and cpf_ben = '''+edt_cpf_ben.Text+'''') > 0 then
//    Dlg_Alerta('CPF ja cadastrado na Inscrição: '+tab.fieldbyname('inscricao_ben').AsString+'!',self);
       ShowMessage('CPF ja cadastrado na Inscrição: '+tab.fieldbyname('inscricao_ben').AsString);
  end;
end;

procedure TFrm_Mov_2068.edt_cep_benKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 13 then
    btn_buscarcepClick(self);  
end;

procedure TFrm_Mov_2068.btn_preencheDtRenovacaoClick(Sender: TObject);
begin
  inherited;
  if (edt_inscricao_ben.Text <> '') and (cbx_cod_tipodependente.Text <> '')
  and (cbx_cod_grauparent.Text <> '') and (edt_dtnascim_ben.Text <> '') then
  begin
    DB_OpenSQL('select s.cod_formaadm from tbl_segurado s, tbl_beneficiario b where '+
    'b.cod_beneficiario = s.cod_beneficiario and inscricao_ben = '+edt_inscricao_ben.text);
    edt_dtrenovacao_dep.text := ADM_critica_carteiravalidade(cbx_cod_tipodependente.valueitem,
    Tab.Fields[0].AsString, cbx_cod_grauparent.getStrItemValue, formatdatetime('mm/dd/yyyy',edt_dtnascim_ben.date));
    edt_dtlimite_dep.text := edt_dtrenovacao_dep.text ;
    DB_ClearSQL;
  end;
end;

procedure TFrm_Mov_2068.edt_dtnascim_benExit(Sender: TObject);
begin
  inherited;
  btn_preencheDtRenovacaoClick(self);
end;

procedure TFrm_Mov_2068.edt_nome_benExit(Sender: TObject);
begin
  inherited;
  edt_nomecarteira_ben.text := edt_nome_ben.text;
end;

procedure TFrm_Mov_2068.gbx_dadospessoaisDblClick(Sender: TObject);
begin
  inherited;
  GroupBoxMaxMin(gbx_dadospessoais,188,20, 'Dados Pessoais');
end;

procedure TFrm_Mov_2068.gbx_documentosDblClick(Sender: TObject);
begin
  inherited;
  GroupBoxMaxMin(gbx_dadospessoais,122,20, 'Documentos');
end;

procedure TFrm_Mov_2068.gbx_enderecoDblClick(Sender: TObject);
begin
  inherited;
  GroupBoxMaxMin(gbx_endereco,151,20, 'Meios de Contato');
end;

procedure TFrm_Mov_2068.gbx_enderecocorDblClick(Sender: TObject);
begin
  inherited;
  GroupBoxMaxMin(gbx_enderecocor,121,20, 'Endereço de Correspondência');
end;

procedure TFrm_Mov_2068.Btn_FecharClick(Sender: TObject);
var
 j : integer;
 FCadDep : boolean;
begin
  FCadDep := false;
  for j := 0 to lsv_dependente.Items.Count -1 do
  begin
    if (StrToInt(lsv_dependente.Items[j].SubItems.Strings[1]) = 2) then
      FCadDep := True;
  end;
  if FCadDep then
    if not Dlg_YesNo('ATENÇÃO! Há dependentes que não foram cadastrados. Tem Certeza que deseja finalizar o cadastro?',self) then
      Exit;
  inherited;

end;

procedure TFrm_Mov_2068.chB_cpfproprio_depClick(Sender: TObject);
begin
  inherited;
  if chB_cpfproprio_dep.Checked then
  begin
    edt_cpf_ben.Text := '';
    edt_cpf_ben.SetFocus;
  end;
end;

procedure TFrm_Mov_2068.chB_rgproprio_depClick(Sender: TObject);
begin
  inherited;
  if chB_rgproprio_dep.Checked then
  begin
    edt_rg_ben.Text := '';
    edt_dtemissaorg_ben.Text := '';
    edt_rg_ben.SetFocus;
  end;
end;

procedure TFrm_Mov_2068.edt_cpf_benKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    key := '0';
  inherited;

end;

procedure TFrm_Mov_2068.btn_regraClick(Sender: TObject);
var
  FDias : integer;
begin
  inherited;
  //Regras para cadastrar como suspenso em analise
  if edt_cod_formaadm.Text = '4' then
    FDias := 30
  else
    FDias := 180;
  if edt_dtadmiss_seg.Date+FDias <= edt_dtsituacao_ben.Date then
  begin
    Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 29);
    if (cbx_cod_tipodocumento.Text <> '') and (edt_dtdocumento_ben.Text <> '') then
      if edt_dtdocumento_ben.Date+30 > edt_dtsituacao_ben.Date then
        Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 1);
  end;
  if edt_cod_sitbeneficiario.Text = '29' then
    Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 29);

  if cbx_cod_tipodependente.ValueItem = 2 then
    Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 29);

  if cbx_cod_sitbeneficiario.ValueItem = 29 then
    ShowMessage('Suspenso em Analise')
  else
    ShowMessage('Normal');  

end;

procedure TFrm_Mov_2068.btn_etiquetaClick(Sender: TObject);
var
  F : TextFile;
begin
  inherited;
  with fdt_principal6.spc_cons_adm_etiquetaprocesso do
  begin
    close;
    ParamByName('@inscricaoIni').AsString := edt_inscricao_ben.text;
    ParamByName('@inscricaoFin').AsString := edt_inscricao_ben.text;
    ParamByName('@processoIni').AsString := Trim(copy(edt_processo_ben.Text,1,Length(edt_processo_ben.Text) - 5));
    ParamByName('@processoFin').AsString := Trim(copy(edt_processo_ben.Text,1,Length(edt_processo_ben.Text) - 5));
    ParamByName('@anoIni').AsString := Trim(copy(edt_processo_ben.Text,(Length(edt_processo_ben.Text) - 3), 4));
    ParamByName('@anoFin').AsString := Trim(copy(edt_processo_ben.Text,(Length(edt_processo_ben.Text) - 3), 4));
    ParamByName('@cod_corprocesso').AsString := '5';
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
 { AssignFile(F,'LPT1');
  Rewrite(F);
  Writeln(F,'f340');  //CORTA E VOLTA  f3200
  CloseFile(F); }
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_adm_descontos2;
  Frm_Bas_Impressao.showReport(4214);
end;

procedure TFrm_Mov_2068.cbx_cod_grauparentChange(Sender: TObject);
begin
  inherited;
  btn_preencheDtRenovacaoClick(self);
end;

procedure TFrm_Mov_2068.cbx_cod_tipodocumentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_ESCAPE then
    cbx_cod_tipodocumento.ItemIndex := -1;
end;

procedure TFrm_Mov_2068.cbx_cod_tipodependenteChange(Sender: TObject);
begin
  inherited;
  btn_preencheDtRenovacaoClick(self);
end;

end.

