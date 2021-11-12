unit Mov_2067;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, AppEvnts, Printers,
  BComboBox, FR_Class, FR_Ctrls;

type
  TFrm_Mov_2067 = class(TFrm_Bas_TelaPadrao)
    scb_fundo: TScrollBox;
    gbx_cabecalho: TGroupBox;
    Panel5: TPanel;
    edt_matriculadebito_seg: TDCEdit;
    edt_digitomatdeb_seg: TDCEdit;
    Panel7: TPanel;
    edt_inscricao_ben: TBEdit;
    edt_cod_beneficiario: TBEdit;
    pnl_todos: TPanel;
    gbx_dadospessoais: TGroupBox;
    Panel4: TPanel;
    edt_nome_ben: TDCEdit;
    edt_cpf_ben: TMaskEdit;
    Panel11: TPanel;
    cbx_cod_estadociv: TDCComboBox;
    cbx_sexo_ben: TDCComboBox;
    cbx_cod_empresa: TDCComboBox;
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
    Panel23: TPanel;
    edt_outrosdocume_ben: TDCEdit;
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
    Panel17: TPanel;
    edt_bairro_ben: TDCEdit;
    Panel19: TPanel;
    edt_email_ben: TDCEdit;
    gbx_enderecocor: TGroupBox;
    pnl_enderecocor: TPanel;
    edt_enderecocor_ben: TDCEdit;
    edt_cepcor_ben: TMaskEdit;
    edt_numerocor_ben: TDCEdit;
    btn_buscarcep2: TPDJButton;
    pnl_enderecocor2: TPanel;
    cbx_cd2_uf: TDCComboBox;
    cbx_cod_cidadecorCEP: TDCComboBox;
    edt_complementocor_ben: TDCEdit;
    pnl_enderecocor3: TPanel;
    edt_bairrocor_ben: TDCEdit;
    gbx_simulacao: TGroupBox;
    pnl_simulacao: TPanel;
    pnl_plano: TPanel;
    cbx_cod_plano: TDCComboBox;
    edt_dtplano_ben: TDCDateEdit;
    pnl_gridsimulacao: TPanel;
    lsv_simulacao: TListView;
    Panel10: TPanel;
    lbl_totalsimulacao: TLabel;
    gbx_empresa: TGroupBox;
    Panel24: TPanel;
    edt_funcaoemp_seg: TDCEdit;
    Panel26: TPanel;
    edt_dtadmiss_seg: TDCDateEdit;
    gbx_confirmar: TGroupBox;
    chb_educacao: TCheckBox;
    btn_confirmar: TPDJButton;
    Label12: TLabel;
    Label13: TLabel;
    gbx_informacao: TGroupBox;
    Panel8: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
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
    Panel1: TPanel;
    edt_dtinscricao_ben: TDCDateEdit;
    edt_idade_ben: TDCEdit;
    edt_nomecarteira_ben: TDCEdit;
    Panel9: TPanel;
    cbx_cod_tipocoberturaunimed: TDCComboBox;
    cbx_cod_ocorrenciaEdital: TDCComboBox;
    edt_matriculaprinc_seg: TDCEdit;
    edt_digitomatpri_seg: TDCEdit;
    edt_dtdocumento_ben: TDCDateEdit;
    edt_dtendereco_ben: TDCDateEdit;
    Label11: TLabel;
    edt_foneresi_ben: TDCEdit;
    chb_mailing_ben: TCheckBox;
    edt_fonecome_seg: TDCEdit;
    edt_fonecel_ben: TDCEdit;
    cbx_cod_empresafolha: TDCComboBox;
    cbx_cod_situacempr: TDCComboBox;
    Label14: TLabel;
    edt_dtlimite_seg: TDCDateEdit;
    Label15: TLabel;
    pnl_carteira: TPanel;
    pnl_alerta: TPanel;
    edt_cod_tipodependente: TDCEdit;
    Label16: TLabel;
    edt_vlbase_mte: TDCEdit;
    Label18: TLabel;
    edt_dtsituempr_seg: TDCDateEdit;
    btn_voltar: TPDJButton;
    Panel14: TPanel;
    edt_nomesimulacao: TDCEdit;
    edt_idadesimulacao: TDCEdit;
    Panel15: TPanel;
    btn_adicionar: TPDJButton;
    btn_imprimiradesao: TPDJButton;
    btn_etiqueta: TPDJButton;
    btn_gerarCI: TPDJButton;
    btn_regra: TPDJButton;
    cbx_cod_tipodocumento: TBComboBox;
    cb2_cod_empresafolha: TBComboBox;
    cbx_cod_setoremp: TBComboBox;
    cbx_cod_formaadm: TBComboBox;
    cbx_cod_grauparent: TBComboBox;
    cb2_cod_tipodependente: TBComboBox;
    Label4: TLabel;
    edt_processo_ben: TDCEdit;
    lbl_processo: TLabel;
    ckb_cadastroRapido: TCheckBox;
    Button1: TButton;
    btn_atualizarEndereco: TPDJButton;
    btn_configArgox: TfrSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure scb_fundoMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure scb_fundoMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure edt_matriculadebito_segExit(Sender: TObject);
    procedure edt_inscricao_benExit(Sender: TObject);
    procedure btn_adicionarClick(Sender: TObject);
    procedure lsv_simulacaoCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure btn_atualizarEnderecoClick(Sender: TObject);
    procedure btn_buscarcepClick(Sender: TObject);
    procedure btn_buscarcep2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure edt_dtnascim_benChange(Sender: TObject);
    procedure edt_cpf_benExit(Sender: TObject);
    procedure edt_cep_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbx_cod_planoChange(Sender: TObject);
    procedure edt_dtnascim_benExit(Sender: TObject);
    procedure edt_nome_benExit(Sender: TObject);
    procedure btn_confirmarClick(Sender: TObject);
    procedure gbx_dadospessoaisDblClick(Sender: TObject);
    procedure gbx_documentosDblClick(Sender: TObject);
    procedure gbx_enderecoDblClick(Sender: TObject);
    procedure gbx_enderecocorDblClick(Sender: TObject);
    procedure gbx_empresaDblClick(Sender: TObject);
    procedure edt_vlbase_mteExit(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure btn_regraClick(Sender: TObject);
    procedure btn_etiquetaClick(Sender: TObject);
    procedure gbx_simulacaoEnter(Sender: TObject);
    procedure cbx_cod_tipodocumentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb2_cod_empresafolhaExit(Sender: TObject);
    procedure cbx_cod_grauparentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_imprimiradesaoClick(Sender: TObject);
    procedure lbl_processoClick(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn_configArgoxClick(Sender: TObject);
  private
    { Private declarations }
  FPesquisaSQLDefalt, FChefeDA, FCargoDA, FRespRC, FCargoRespRC, FCamposAux,
  FTabelaAux, FCamposCart, FTabelaCart : string;
  ListItem: TListItem;
  Fvltotal : Double;
  procedure CarregarCombos;
  procedure PesquisaBenTitular;
  procedure LimpaCabecalho;
  procedure AjustaPanelSimulacao;
  procedure GeraSimulacaoTitular;
  procedure GroupBoxMaxMin(campo : TGroupBox; Height, tamanho : integer; Tit : String);
  procedure GroupBoxONOFF(visible, enabled: boolean);
  procedure BuscaDadosTitular(cod_beneficiario : string);
  procedure PreencheCamposTitNovo;
  procedure PreencheSimulacaoBen;
  procedure BuscaDadosFPM(cod_fpm : string);
  procedure AlertaSituacao(cod_sitbeneficiario : string);
  function CriticaParametros : Boolean ;
  function ImpressoraPadrao :String;
  function CalculaValorPlano(cod_plano, cod_planopagto, tipoDependente, idade : integer; educacao : boolean; vlBase : double) : Double;
  public
    { Public declarations }
    CodRequerimento, DtProtocolo : string;
    FGroupBoxONOFF : Boolean;

  end;

var
  Frm_Mov_2067: TFrm_Mov_2067;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
Fun_obj, Fun_ConsCadastro, Fun_Data, Fun_ConsBeneficiario, Fun_ConsCEP, Bas_Impressao,
dtm_principal6, Fun_Desconto, Mov_2068, dtm_principal2, Mov_Tramite, Dlg_ConfigAgox ;

{$R *.DFM}

function TFrm_Mov_2067.CriticaParametros : Boolean ;
begin
 // result := (not BAS_ValidarCampo(edt_cod_Requerimento2.name, 'O Código do Requerimento deve ser Preenchido !', VLD_Preenchido ));
  result := true ;
  if (not BAS_ValidarCampo(edt_nome_ben.name, 'O nome deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomecarteira_ben.name, 'O nome para carteirinha deve ser preenchido !', VLD_Preenchido )) then
    exit;
  if Str_RemoveSimbolos(edt_cpf_ben.Text) = '' then
  begin
    Dlg_Alerta('O CPF deve ser preenchido !',self);
    edt_cpf_ben.SetFocus;
    Exit;
  end;
  if (not BAS_ValidarCampo(edt_cpf_ben.name, 'CPF Inválido !', VLD_CPF )) or
  (not BAS_ValidarCampo(cbx_cod_estadociv.name, 'Um estado civil deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_sexo_ben.name, 'Selecione o sexo do beneficiário !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresa.name, 'Uma empresa deve ser selecionada !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtnascim_ben.name, 'A data de nascimento deve ser preenchida, ou não é uma data de nascimento válida !', VLD_DataNascimento )) or
 // (not BAS_ValidarCampo(edt_nomepai_ben.name, 'O Nome da Pai deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomemae_ben.name, 'O Nome da Mãe deve ser Preenchido !', VLD_Preenchido )) or
 // (not BAS_ValidarCampo(cbx_cod_TipoSegurado.name, 'Um tipo de segurado deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_rg_ben.name, 'O R.G. deve ser preenchido !', VLD_Preenchido )) or
  //(not BAS_ValidarCampo(edt_dtemissaorg_ben.name, 'A Data de Emissão do R.G. deve ser preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_orgemissorrg_ben.name, 'O Orgão Emissor do R.G. deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cep_ben.name, 'O CEP deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_endereco_ben.name, 'O Endereço deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_numero_ben.name, 'O Numero deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_bairro_ben.name, 'O Bairro deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_cidadeCep.name, 'A Cidade deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_uf.name, 'Uma UF deve ser selecionada !', VLD_Preenchido )) then
    Exit;
  if edt_enderecocor_ben.text = '' then
    btn_atualizarEnderecoClick(self);
  if (chb_mailing_ben.Checked) and (edt_email_ben.Text = '') then
  begin
    Dlg_Alerta('O Email deve ser preenchido!', self);
    edt_email_ben.SetFocus;
    Exit;
  end;
  if (not BAS_ValidarCampo(cbx_cod_setoremp.name, 'Um setor da empresa deve ser selecionado !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_funcaoemp_seg.name, 'A função/cargo deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_formaadm.name, 'Uma forma de admissão deve ser selecionada !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtadmiss_seg.name, 'A data de admissão deve ser preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_vlbase_mte.name, 'O Valor Base deve ser Preenchido!', VLD_Preenchido )) or
//  (not BAS_ValidarCampo(cbx_cod_situacempr.name, 'Uma situação na empresa deve ser selecionada !', VLD_Preenchido )) or
//  (not BAS_ValidarCampo(edt_dtsituempr_seg.name, 'A data de situação na empresa deve ser preenchida !', VLD_DataPreenchida )) or

  (not BAS_ValidarCampo(cbx_cod_plano.name, 'Um plano deve ser selecionado !', VLD_Preenchido )) then
    Exit ;
  edt_dtsituempr_seg.Date := edt_dtadmiss_seg.Date;

  if cbx_cod_ocorrenciaEdital.text = '' then begin
    Dlg_Alerta('A Ocorrencia deve ser Preenchida !',self);
    Exit;
  end;
  if (edt_matriculadebito_seg.Text = '') or (edt_matriculadebito_seg.Text = '0') then
  begin
    Dlg_Alerta('É necessário cadastrar uma matrícula para o Segurado!',self);
    exit;
  end;
  if cbx_cod_plano.ValueItem = 3 then
    Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaunimed.Name, 4)
  else
    Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaunimed.Name, 0);
  result := false ;
end;

procedure TFrm_Mov_2067.FormCreate(Sender: TObject);
begin
  inherited;
  FTitulo       := 'Cadastro de Beneficiários' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nomesimulacao' ;
  FUltFoco      := 'cbx_cod_ocorrenciaEdital' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisa     := 'cod_cod_beneficiario, nome_ben' ;
  FPesquisaTit  := 'Código, Nome' ;
  FCamposAux    := 'edt_cod_beneficiario, '+
  'cbx_cod_setoremp, edt_funcaoemp_seg, edt_fonecome_seg, edt_dtadmiss_seg, '+
  'cbx_cod_situacempr, edt_dtsituempr_seg, cbx_cod_formaadm, edt_funcaocomiss_seg, '+
  'edt_matriculadebito_seg, edt_digitomatdeb_seg, edt_matriculaprinc_seg, edt_digitomatpri_seg, edt_dtlimite_seg';
  FTabelaAux    := 'tbl_segurado';
  FCamposCart   := 'edt_cod_beneficiario, '+
  'edt_dtemissao_car, edt_dtvalidade_car, edt_via_car';
  FTabelaCart   := 'tbl_carteira';

end;

procedure TFrm_Mov_2067.CarregarCombos;
begin
  BAS_CarregarCombo('cbx_cod_TipoSegurado', 'nome_tse');
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_estadociv', 'nome_civ');
  BAS_CarregarCombo('cbx_cod_tipodocumento', 'descricao_tpd');
  BAS_CarregarCombo('cbx_cod_sitbeneficiario', 'nome_sit');
  BAS_CarregarCombo('cbx_cod_uf', 'sigla_uf');
  Obj_LoadCombo(Self, 'cbx_cd2_uf', 'sigla_uf', 'cod_uf', 'tbl_uf');
 // cbx_cod_cidadeCep.ValItems.Clear;
//  cbx_cod_cidadecorCEP.ValItems.Clear;
  Obj_LoadCombo(Self,'cbx_cod_cidadeCep', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep order by cidade_cep');
  Obj_LoadCombo(Self,'cb2_cod_tipodependente', 'nome_tdp', 'cod_tipodependente', 'tbl_tipodependente where cod_tipodependente > 0');

  Obj_LoadCombo(Self,'cbx_cod_cidadecorCEP', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep order by cidade_cep');
  BAS_CarregarCombo('cbx_cod_setoremp', 'nome_ste');
  BAS_CarregarCombo('cbx_cod_situacempr', 'nome_sie');
 // Obj_LoadCombo(Self,'cbx_cod_formaadm', 'nome_fad', 'cod_formaadm', 'tbl_formaadm where cod_categoriadpd < 3');
  BAS_CarregarCombo('cbx_cod_nivelcar', 'nome_niv');
  BAS_CarregarCombo('cbx_cod_tipocoberturaunimed','descricao_tcu');

  cbx_sexo_ben.Items.Add('Masculino');
  cbx_sexo_ben.Items.Add('Feminino');
  cbx_sexo_ben.ValItems.Add('M');
  cbx_sexo_ben.ValItems.Add('F');
  Obj_LoadCombo(Self, 'cbx_cod_ocorrenciaEdital', 'descricao_oce', 'cod_ocorrenciaEdital', 'tbl_ocorrenciaEdital where tipo_oce = ''I''');
  BAS_CarregarCombo('cbx_cod_grauparent', 'nome_gra');
//  cbx_status_mte.Items.Add('Ativo');
//  cbx_status_mte.Items.Add('Inativo');
//  cbx_status_mte.ValItems.Add('1');
//  cbx_status_mte.ValItems.Add('2');

//  if FStatus <> FST_Novo then
//     BAS_CarregarCombo('cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp')
//  else
//     Obj_LoadCombo(Self, 'cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp', 'cod_planopagto', 'tbl_planopagto where cod_statusativo = 1');
end;

procedure TFrm_Mov_2067.LimpaCabecalho;
begin
  pnl_carteira.Visible := false;
  gbx_cabecalho.Enabled := true;
  edt_matriculadebito_seg.Enabled := true;
  edt_inscricao_ben.Enabled := true;
  cb2_cod_empresafolha.Visible := false;
  Obj_EmptyEdit(Self);
  edt_cpf_ben.Text := '';
  edt_cep_ben.Text := '';
  cb2_cod_empresafolha.ItemIndex := -1;
  pnl_simulacao.Height := 158;
  gbx_simulacao.Height := 182;
  pnl_gridsimulacao.Height := 40;
  lsv_simulacao.Items.Clear;
  CarregarCombos;
  GroupBoxONOFF(false, True);
  pnl_todos.Height := 780;
  lbl_totalsimulacao.Caption := '0';
  Fvltotal := 0;
  pnl_alerta.visible := false;
end;

procedure TFrm_Mov_2067.GroupBoxONOFF(visible, enabled: boolean);
begin
  pnl_todos.Height := 780;
  pnl_todos.Visible := visible;
  pnl_plano.Enabled := enabled; 
  Obj_SetCompsEnable(Self,-1,enabled);
  Obj_SetCompsEnable(Self,-5,enabled);
  gbx_cabecalho.Enabled := not visible;
  if enabled then
  begin
    if gbx_documentos.Height <> 122 then
      gbx_documentosDblClick(self);
    if gbx_endereco.Height <> 151 then
      gbx_enderecoDblClick(self);
    if gbx_empresa.Height <> 90 then
      gbx_empresaDblClick(self);
  end
  else
  begin
    if gbx_documentos.Height = 122 then
      gbx_documentosDblClick(self);
    if gbx_endereco.Height = 151 then
      gbx_enderecoDblClick(self);
    if gbx_empresa.Height = 90 then
      gbx_empresaDblClick(self);
  end;
  if gbx_enderecocor.Height = 121 then
    gbx_enderecocorDblClick(self);
end;

procedure TFrm_Mov_2067.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F1 then
  begin
   LimpaCabecalho;
   edt_matriculadebito_seg.SetFocus;
  end;
  if key = vk_F2 then
  begin
   LimpaCabecalho;
   edt_inscricao_ben.SetFocus;
  end;
  if key = vk_F3 then
  begin
    if (lsv_simulacao.Items.Count > 0) then
    begin
      lsv_simulacao.SetFocus;
      lsv_simulacao.Items.Item[0].Selected := true;
    end;
  end;
  if key = 46 then
  begin
    if (lsv_simulacao.Items.Count > 0) and (lsv_simulacao.Focused) then
    begin
      if lsv_simulacao.Selected.Index >= 0 then
      begin
        if (StrToInt(lsv_simulacao.Items.Item[lsv_simulacao.Selected.Index].SubItems[3]) = 2)
        and (StrToInt(lsv_simulacao.Items.Item[lsv_simulacao.Selected.Index].SubItems[4]) > 0) then
        begin
          Fvltotal := Fvltotal - StrToFloat(lsv_simulacao.Items.Item[lsv_simulacao.Selected.Index].SubItems[2]);
          lbl_totalsimulacao.Caption := FormatFloat(VAL_Float, Fvltotal);
          lsv_simulacao.Items.Delete(lsv_simulacao.Selected.Index);
          edt_nomesimulacao.SetFocus;
        end;  
      end;
    end;
  end;
end;

procedure TFrm_Mov_2067.GroupBoxMaxMin(campo : TGroupBox; Height, tamanho : integer; Tit : String);
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
    pnl_todos.Height := pnl_todos.Height - Height+tamanho;
  end
  else
  begin
    campo.Height := Height;
    campo.Caption := Tit+' - ';
    For i := 0 to (campo.ControlCount -1) do begin
      campo.Controls[i].Enabled := true;
    end;
    pnl_todos.Height := pnl_todos.Height + Height-tamanho;
  end;
end;

procedure TFrm_Mov_2067.FormShow(Sender: TObject);
begin
  inherited;
  edt_matriculadebito_seg.SetFocus;
  CarregarCombos;
  pnl_todos.Height := 780;
  if FGroupBoxONOFF then
    GroupBoxONOFF(false, True);
end;
                                                                                                                   
procedure TFrm_Mov_2067.AjustaPanelSimulacao;
var
  i, j, l, m : integer;
begin
  i := pnl_simulacao.Height;
  j := gbx_simulacao.Height;
  l := pnl_gridsimulacao.Height;
  m := pnl_todos.Height;
  i := i + 14;
  j := j + 14;
  l := l + 14;
  m := m + 14;
  pnl_simulacao.Height := i;
  gbx_simulacao.Height := j;
  pnl_gridsimulacao.Height := l;
  pnl_todos.Height := m;
end;

procedure TFrm_Mov_2067.scb_fundoMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  with scb_fundo.VertScrollBar do
  begin
    if (Position <= (Range - Increment)) then
      Position := Position + Increment
    else
      Position := Range - Increment;
  end;
end;

procedure TFrm_Mov_2067.scb_fundoMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  with scb_fundo.VertScrollBar do
  begin
    if (Position >= Increment) then
      Position := Position - Increment
    else
      Position := 0;
  end;
end;

procedure TFrm_Mov_2067.PesquisaBenTitular;
begin
  Frm_Fun_ConsBeneficiario:= TFrm_Fun_ConsBeneficiario.Create(Self);
  Frm_Fun_ConsBeneficiario.FQualQuery:= 1;
  Frm_Fun_ConsBeneficiario.FEmpresaFolha := '';
  Frm_Fun_ConsBeneficiario.FMatricula := '';
  Frm_Fun_ConsBeneficiario.FInscricao1 := '';
  Frm_Fun_ConsBeneficiario.FNomeBen := '';
  Frm_Fun_ConsBeneficiario.FInscricao1 := edt_inscricao_ben.Text;
  Frm_Fun_ConsBeneficiario.FMatricula := edt_matriculadebito_seg.Text;
  Frm_Fun_ConsBeneficiario.FEmpresaFolha := cb2_cod_empresafolha.getStrItemValue;
  Frm_Fun_ConsBeneficiario.ShowModal;
  edt_inscricao_ben.Text := Frm_Fun_ConsBeneficiario.FInscricao1;
  edt_cod_beneficiario.Text := Frm_Fun_ConsBeneficiario.FCodBeneficiario;
  if Frm_Fun_ConsBeneficiario.FEmpresaFolha <> '' then
    Obj_SetFormObjValueByName(self, cb2_cod_empresafolha.name, Frm_Fun_ConsBeneficiario.FEmpresaFolha)
  else
    cb2_cod_empresafolha.ItemIndex := -1;
  if Frm_Fun_ConsBeneficiario.FMatricula <> '' then
    edt_matriculadebito_seg.Text := Frm_Fun_ConsBeneficiario.FMatricula;
  edt_digitomatdeb_seg.Text := Frm_Fun_ConsBeneficiario.FDigito;
end;

procedure TFrm_Mov_2067.PreencheSimulacaoBen;
var
  vlPlano : double;
begin
  lsv_simulacao.Items.Clear;
  pnl_simulacao.Height := 158;
  gbx_simulacao.Height := 182;
  pnl_gridsimulacao.Height := 40;
  Fvltotal := 0;
  DB_OpenADOSQL('select b.cod_beneficiario, nome_ben, idade_ben, cod_plano, b.cod_tipodependente, '+
  ' nome_tdp, tipo_sit, isnull(cod_planopagto,0) as cod_planopagto, isnull(cod_grauparent,0) as cod_grauparent,'+
  ' b.cod_sitbeneficiario, nome_sit'+
  ' from tbl_beneficiario b inner join tbl_tipodependente t ON b.cod_tipodependente = t.cod_tipodependente'+
  ' inner join tbl_sitbeneficiario s on b.cod_sitbeneficiario = s.cod_sitbeneficiario'+
  ' left join tbl_beneficiarioPlanoPagtoEspecial bp ON b.cod_beneficiario = bp.cod_beneficiario'+
  ' left join tbl_dependente d ON b.cod_beneficiario = d.cod_beneficiario'+
  ' where inscricao_ben = '+edt_inscricao_ben.Text+
  ' and (tipo_sit < 2 or b.cod_sitbeneficiario = 29)');
  while not TabADO.Eof do
  begin
    vlPlano := CalculaValorPlano(TabADO.fieldbyName('cod_plano').AsInteger, TabADO.fieldbyName('cod_planopagto').AsInteger,
    TabADO.fieldbyName('cod_tipodependente').AsInteger, TabADO.fieldbyName('idade_ben').AsInteger, false, StrToFloat(STR_RemoveChar(edt_vlbase_mte.text,'.')));
    ListItem := lsv_simulacao.Items.Add;
    ListItem.Caption := TabADO.fieldbyName('nome_ben').AsString;
    listItem.SubItems.add(TabADO.fieldbyName('idade_ben').AsString);
    listItem.SubItems.add(TabADO.fieldbyName('nome_tdp').AsString);
    listItem.SubItems.add(FormatFloat('###,###,##0.00', vlPlano));
    listItem.SubItems.add('1');
    listItem.SubItems.add(TabADO.fieldbyName('cod_tipodependente').AsString);
    listItem.SubItems.add(TabADO.fieldbyName('cod_grauparent').AsString);
    if TabADO.fieldbyName('cod_sitbeneficiario').AsInteger = 29 then
      listItem.SubItems.add(TabADO.fieldbyName('nome_sit').AsString)
    else
      listItem.SubItems.add('');
    Fvltotal := Fvltotal + vlPlano;
    lbl_totalsimulacao.Caption := FormatFloat('###,###,##0.00', Fvltotal);
    AjustaPanelSimulacao;
    TabADO.Next;
  end;
end;

procedure TFrm_Mov_2067.AlertaSituacao(cod_sitbeneficiario : string);
begin
  DB_OpenSql('select nome_sit, tipo_sit from tbl_sitbeneficiario where cod_sitbeneficiario = '+cod_sitbeneficiario);
  pnl_alerta.Caption := '***  '+Tab.FieldByName('nome_sit').AsString+'  ***';
  pnl_alerta.Font.Color := clNavy;
  case Tab.FieldByName('tipo_sit').AsInteger of
    1 : pnl_alerta.color := clYellow;
    2 : pnl_alerta.color := clRed;
  end;
  pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0;
end;

procedure TFrm_Mov_2067.BuscaDadosTitular(cod_beneficiario : string);
begin
  if (cod_beneficiario <> '') then
  begin
    Obj_LoadCombo(Self,'cbx_cod_formaadm', 'nome_fad', 'cod_formaadm', 'tbl_formaadm');
    GroupBoxONOFF(true, false);
    cbx_cod_empresafolha.Enabled := false;
    if (Obj_GetFormObjValueByName(Self, FEditChave) <> '') then
    begin
      if not DB_OpenTable(Self) then
        Exit ;
        Obj_SetCompsEnable(Self,-2,false);
        Obj_SetCompsEnable(Self,-3,false);
        Bas_SetFocus(FEditAlteracao);
        edt_inscricao_ben.Enabled := false;
        edt_matriculadebito_seg.Enabled := false;
        pnl_carteira.caption := 'N° Carteirinha : ' + FormatarCarteirinha(
        MontarCarteirinha ( cbx_cod_empresa.ValueItem, cbx_cod_plano.ValueItem, edt_inscricao_ben.text, '00' )) ;
        DB_OpenTableByFields(self, FCamposAux, FTabelaAux);
        AlertaSituacao(cbx_cod_sitbeneficiario.valueitem);
        DB_OpenSQL('select vlbase_mte from tbl_matriculaentrada where cod_beneficiario = '+cod_beneficiario+
        ' and matricula_mte = '+edt_matriculadebito_seg.text+' and digito_mte = '+edt_digitomatdeb_seg.Text);
        edt_vlbase_mte.Text := FormatFloat('###,###,##0.00', Tab.fieldByName('vlbase_mte').AsFloat);
        PreencheSimulacaoBen;
        pnl_carteira.Visible := true;
    end;
  end;
end;

procedure TFrm_Mov_2067.BuscaDadosFPM(cod_fpm : string);
begin
  if cod_fpm <> '' then
  begin
    DB_OpenSQL('select nome_fpm, funcaoemp_seg, cep_fpm, cpf_fpm, dtsitemp_fpm, '+
    ' foneresi_fpm, vlbase_mte, dtadmissao_fpm, cod_formaadm, numero_fpm, cod_situacao_fpm from tbl_fpm'+
    ' where cod_fpm = '+cod_fpm);
    edt_nome_ben.Text := Tab.fieldByName('nome_fpm').AsString;
    edt_nomecarteira_ben.Text := edt_nome_ben.Text;
    edt_funcaoemp_seg.Text := Tab.fieldByName('funcaoemp_seg').AsString;
    edt_cep_ben.Text := copy(Tab.fieldByName('cep_fpm').AsString,1,5)+'-'+copy(Tab.fieldByName('cep_fpm').AsString,6,3);
    if Length(Tab.fieldByName('cpf_fpm').AsString) = 11 then
      edt_cpf_ben.Text := (copy(Tab.fieldByName('cpf_fpm').AsString,1,3)+'.'+
      copy(Tab.fieldByName('cpf_fpm').AsString,4,3)+'.'+copy(Tab.fieldByName('cpf_fpm').AsString,7,3)+'-'+
      copy(Tab.fieldByName('cpf_fpm').AsString,10,2))
    else
      edt_cpf_ben.Text := '';
    edt_vlbase_mte.Text := Tab.fieldByName('vlbase_mte').AsString;
//    edt_foneresi_ben.Text := Tab.fieldByName('foneresi_fpm').AsString;
    edt_fonecome_seg.Text := trim(Tab.fieldByName('foneresi_fpm').AsString);
    edt_dtsituempr_seg.Date := Tab.fieldByName('dtsitemp_fpm').AsDateTime;
    edt_dtadmiss_seg.Date := Tab.fieldByName('dtadmissao_fpm').AsDateTime;
    Obj_SetFormObjValueByName(self, cbx_cod_formaadm.Name, Tab.fieldByName('cod_formaadm').AsInteger);
    edt_numero_ben.Text := Tab.fieldByName('numero_fpm').AsString;
    pnl_alerta.Caption := '***  MATRICULA DESATIVADA  ***';
    pnl_alerta.visible := Tab.fieldByName('cod_situacao_fpm').AsInteger > 1;
    pnl_alerta.color := clBlack;
    pnl_alerta.Font.Color := clYellow;
    btn_buscarcepClick(self);
    btn_atualizarEnderecoClick(self);
  end;
end;

procedure TFrm_Mov_2067.PreencheCamposTitNovo;
begin
  Obj_LoadCombo(Self,'cbx_cod_formaadm', 'nome_fad', 'cod_formaadm', 'tbl_formaadm where cod_categoriadpd < 3');
  GroupBoxONOFF(true, true);
  edt_matriculaprinc_seg.Text := edt_matriculadebito_seg.Text;
  if edt_digitomatdeb_seg.Text = '' then
   edt_digitomatdeb_seg.Text := IntToStr(CalculaDigito(cb2_cod_empresafolha.getStrItemValue, edt_matriculadebito_seg.Text));
  edt_digitomatpri_seg.Text := edt_digitomatdeb_seg.Text;
  Obj_LoadCombo(Self,'cbx_cod_empresa', 'nome_emp', 'cod_empresa', 'tbl_empresa where cod_empresafolha = '+cb2_cod_empresafolha.getStrItemValue);
  cbx_cod_empresa.ItemIndex := 0;
  //edt_cod_beneficiario.text := '0';
  edt_cod_tipodependente.Text := '0';
  Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 1);
  Obj_SetFormObjValueByName(self, cbx_cod_TipoSegurado.Name, 1);  //verificar
  edt_inscricao_ben.Text := '';
  edt_digito_ben.text := '0';
  edt_dtcadastro_ben.Date := date;
  edt_dtinscricao_ben.Date := date;
  edt_orgemissorrg_ben.Text := 'SSP-SP';
  edt_processo_ben.Text := '';
  edt_dtsituacao_ben.Date := Date;
  edt_titulacartei_ben.text := '0';
  if edt_vlbase_mte.Text = '' then
    edt_vlbase_mte.Text := '800,00';
  Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.Name, cb2_cod_empresafolha.getStrItemValue);
  cbx_cod_empresafolha.Enabled := false;
  edt_dtplano_ben.Date := Date;
 //Obj_SetFormObjValueByName(self, cbx_cod_empresa.Name, Tab.fieldByName('cod_empresa').AsInteger);
  Obj_SetFormObjValueByName(self, cbx_cod_plano.Name, 1);
  Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaunimed.Name, 0);
  Obj_SetFormObjValueByName(self, cbx_cod_ocorrenciaEdital.Name, 1001);
  edt_dtlimite_seg.text := '31/12/2999';
  Obj_SetFormObjValueByName(self, cbx_cod_situacempr.Name, 1);
  chb_mailing_ben.Checked := true;
 { if ckb_cadastroRapido.Checked then
  begin
    if DB_OpenSQL('select * from tbl_parametroCadRapido') > 0 then
    begin
      chb_mailing_ben.Checked := false;
      edt_dtplano_ben.Date := Tab.fieldByName('dtplano_pcr').AsDateTime;
      edt_dtinscricao_ben.Date := Tab.fieldByName('dtinscricao_pcr').AsDateTime;
      edt_dtsituacao_ben.Date := Tab.fieldByName('dtsituacao_pcr').AsDateTime;
      edt_nomepai_ben.Text := Tab.fieldByName('nomepai_pcr').AsString;
      edt_nomemae_ben.Text := Tab.fieldByName('nomemae_pcr').AsString;
    //  Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaunimed.Name, Tab.fieldByName('cod_tipocoberturaunimed').AsInteger);
//      Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaodonto.Name, Tab.fieldByName('cod_tipocoberturaodonto').AsInteger);
  //    edt_endereco_ben.Text := Tab.fieldByName('endereco_pcr').AsString;
 //     edt_bairro_ben.Text := Tab.fieldByName('bairro_pcr').AsString;
 //     Obj_SetFormObjValueByName(self, cbx_cod_uf.Name, Tab.fieldByName('cod_uf').AsInteger);
   //   Obj_SetFormObjValueByName(self, cbx_cod_cidadeCep.Name, Tab.fieldByName('cod_cidadeCep').AsInteger);
    //  edt_cep_ben.Text := Tab.fieldByName('cep_pcr').AsString;
    //  btn_atualizarEnderecoClick(self);
    //  edt_rg_ben.Text := Tab.fieldByName('rg_pcr').AsString;
    //  edt_cpf_ben.Text := Tab.fieldByName('cpf_pcr').AsString;
      Obj_SetFormObjValueByName(self, cbx_cod_setoremp.Name, Tab.fieldByName('cod_setoremp').AsInteger);
    //  edt_funcaoemp_seg.Text := Tab.fieldByName('funcaoemp_pcr').AsString;
    //  edt_fonecome_seg.Text := Tab.fieldByName('fonecome_pcr').AsString;

      Obj_SetFormObjValueByName(self, cbx_cod_formaadm.Name, Tab.fieldByName('cod_formaadm').AsInteger);
      edt_dtlimite_seg.Date := Tab.fieldByName('dtlimite_pcr').AsDateTime;
      //edt_dtadmiss_seg.Date := Tab.fieldByName('dtadmiss_pcr').AsDateTime;
      edt_dtsituempr_seg.Date := Date;
    end;
  end;}
end;

procedure TFrm_Mov_2067.edt_matriculadebito_segExit(Sender: TObject);
begin
  inherited;
  if (edt_matriculadebito_seg.Text <> '') then
  begin
    PesquisaBenTitular;
    if edt_cod_beneficiario.Text <> '' then
    begin
      BuscaDadosTitular(edt_cod_beneficiario.Text);
     // gbx_cabecalho.Enabled := false;
    end
    else begin
      if cb2_cod_empresafolha.Text = '' then
      begin
       // gbx_cabecalho.Enabled := true;
        cb2_cod_empresafolha.Visible := true;
        cb2_cod_empresafolha.SetFocus;
      end
      else
        cb2_cod_empresafolhaExit(self);
    end;
  end;
end;

procedure TFrm_Mov_2067.edt_inscricao_benExit(Sender: TObject);
begin
  inherited;
  if (edt_inscricao_ben.Text <> '') and (edt_cod_beneficiario.Text = '') then
  begin
    PesquisaBenTitular;
    if edt_cod_beneficiario.Text <> '' then
    begin
      BuscaDadosTitular(edt_cod_beneficiario.Text);
      //gbx_cabecalho.Enabled := false;
    end
    else begin
      //gbx_cabecalho.Enabled := true;
      edt_matriculadebito_seg.SetFocus;
    end;
  end;
end;

function TFrm_Mov_2067.CalculaValorPlano(cod_plano, cod_planopagto, tipoDependente, idade : integer; educacao : boolean; vlBase : double) : double;
var
  WPesquisa, Fcod_planopagto : String;
begin
  Fcod_planopagto := '0';
  WPesquisa := 'select cod_planopagto from tbl_planopagto where cod_planopagto > 0';
  if cod_planopagto > 0 then
  begin
      WPesquisa := WPesquisa+' and cod_planopagto = '+inttostr(cod_planopagto);
  end
  else begin
    WPesquisa := WPesquisa+' and cod_plano = '+inttostr(cod_plano);
    if cod_planopagto < 0 then
      WPesquisa := WPesquisa+' and cod_statusAtivo = 1';
    if tipoDependente < 2 then
    begin
      WPesquisa := WPesquisa+' and cod_planopagto <= 17';
      if educacao and (cod_plano = 1) then
        WPesquisa := WPesquisa+' and educacao_ppt = 1'
      else
        WPesquisa := WPesquisa+' and educacao_ppt = 0';
    end
    else
    begin
      if cod_planopagto = 0 then
      begin
        WPesquisa := WPesquisa+' and cod_planopagto >= 51 and cod_planopagto <= 53';
      end;
      if cod_planopagto < 0 then
      begin
        WPesquisa := WPesquisa+' and cod_planopagto >= 511';
        if educacao then
          WPesquisa := WPesquisa+' and educacao_ppt = 1'
        else
          WPesquisa := WPesquisa+' and educacao_ppt = 0';
      end;
    end;
  end;

  if DB_OpenSQL(WPesquisa) > 0 then
    Fcod_planopagto := Tab.FieldByName('cod_planopagto').AsString
  else
    Fcod_planopagto := '0';
  if (cod_plano = 1) and (Fcod_planopagto = '0') then
  begin
    if (tipoDependente = 0) then
      Result :=  vlBase * 0.05
    else
      Result := 0;
  end
  else
  begin
    if DB_OpenSQL('select vlfixo_piv from tbl_planoitemvalor where cod_planopagto = '+Fcod_planopagto+
    ' and '+IntToStr(idade)+' >= faixaIni_piv and '+IntToStr(idade)+' <= faixaFin_piv') > 0 then
      Result := Tab.Fields[0].AsFloat
    else
      Result := 0;
  end;
end;

procedure TFrm_Mov_2067.btn_adicionarClick(Sender: TObject);
var
 Fcod_planopagto, Filtro : String;
 vlPlano : double;
begin
  inherited;
  if not BAS_ValidarCampo(cbx_cod_plano.name, 'O Plano deve ser preenchido!', VLD_Preenchido) or
  not BAS_ValidarCampo(edt_nomesimulacao.name, 'O Nome deve ser preenchido!', VLD_Preenchido) or
  not BAS_ValidarCampo(edt_idadesimulacao.name, 'A Idade deve ser preenchida!', VLD_Preenchido) or
  not BAS_ValidarCampo(cb2_cod_tipodependente.name, 'O Tipo de Dependente deve ser preenchido !', VLD_Preenchido) or
  not BAS_ValidarCampo(cbx_cod_grauparent.name, 'O Grau de Parentesco deve ser preenchido !', VLD_Preenchido) then
    exit;
  DB_OpenSQL('SELECT cod_statusAtivo, obs_gra FROM dbo.tbl_grauparent where cod_grauparent = '+cbx_cod_grauparent.getStrItemValue);
  if Tab.FieldByName('cod_statusAtivo').AsInteger = 2 then
  begin
    Dlg_Alerta('Inclusão de Beneficiário suspenso conforme '+Tab.FieldByName('obs_gra').AsString, self);
    cbx_cod_grauparent.SetFocus;
    Exit;
  end;
  vlPlano := CalculaValorPlano(cbx_cod_plano.valueItem, -1, cb2_cod_tipodependente.getItemValue,
  StrToInt(edt_idadesimulacao.Text), chb_educacao.Checked, StrToFloat(STR_RemoveChar(edt_vlbase_mte.text,'.')));
 { if vlPlano <= 0 then
  begin
    Dlg_Alerta('Plano Atual não permite inclusão neste Perfil!',self);
    edt_nomesimulacao.SetFocus;
    Exit;
  end;   }
  ListItem := lsv_simulacao.Items.Add;
  ListItem.Caption := edt_nomesimulacao.Text;
  listItem.SubItems.add(edt_idadesimulacao.Text);
  listItem.SubItems.add(cb2_cod_tipodependente.Text);
  listItem.SubItems.add(FormatFloat('###,###,##0.00', vlPlano));
  listItem.SubItems.add('2');
  listItem.SubItems.add(cb2_cod_tipodependente.getStrItemValue);
  listItem.SubItems.add(cbx_cod_grauparent.getStrItemValue);
  listItem.SubItems.add('');
  Fvltotal := Fvltotal + vlPlano;
  lbl_totalsimulacao.Caption := FormatFloat('###,###,##0.00', Fvltotal);
  AjustaPanelSimulacao;
  edt_nomesimulacao.Text := '';
  edt_idadesimulacao.Text := '';
  cbx_cod_grauparent.ItemIndex := -1;
  cb2_cod_tipodependente.ItemIndex := -1;
  Application.ProcessMessages;
  if not edt_nomesimulacao.Focused then
    edt_nomesimulacao.SetFocus;
end;

procedure TFrm_Mov_2067.lsv_simulacaoCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  inherited;
  if lsv_simulacao.Items[item.index].SubItems.Strings[3] = '1' then
    lsv_simulacao.Canvas.Font.Color := clblue
  else
    lsv_simulacao.Canvas.Font.Color := clBlack;
  if lsv_simulacao.Items[item.index].SubItems.Strings[6] <> '' then
    lsv_simulacao.Canvas.Font.Color := clRed;
end;

procedure TFrm_Mov_2067.btn_atualizarEnderecoClick(Sender: TObject);
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

procedure TFrm_Mov_2067.btn_buscarcepClick(Sender: TObject);
var
  Fcod_cidadeCep : integer;
begin
  inherited;
  if Trim(STR_RemoveChar(edt_cep_ben.Text,'-')) <> '' then
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

procedure TFrm_Mov_2067.btn_buscarcep2Click(Sender: TObject);
var
  Fcod_cidadeCep : integer;
begin
  inherited;
  if Trim(STR_RemoveChar(edt_cepcor_ben.Text,'-')) <> '' then
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

procedure TFrm_Mov_2067.SpeedButton6Click(Sender: TObject);
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

procedure TFrm_Mov_2067.edt_dtnascim_benChange(Sender: TObject);
var
 i, y : integer;
begin
  inherited;
  edt_idade.text := Data_GetIdadeExt(edt_dtnascim_ben.date, date);
    i := Data_GetIdadeMes(edt_dtnascim_ben.date, Date);
    y := i div 12;
    edt_idade_ben.Text := IntToStr(y);
end;

procedure TFrm_Mov_2067.edt_cpf_benExit(Sender: TObject);
begin
  inherited;
  if Str_RemoveSimbolos(edt_cpf_ben.Text) <> '' then
  begin
    if (not BAS_ValidarCampo(edt_cpf_ben.name, 'CPF Inválido !', VLD_CPF)) then
      Exit;
    if DB_OpenSQL('select cpf_ben, inscricao_ben from tbl_beneficiario b, tbl_sitbeneficiario s'+
    ' where b.cod_sitbeneficiario = s.cod_sitbeneficiario and tipo_sit <= 1'+
    ' and cpf_ben = '''+edt_cpf_ben.Text+'''') > 0 then
      //Dlg_Alerta('CPF ja cadastrado na Inscrição: '+tab.fieldbyname('inscricao_ben').AsString+'!',self);
      ShowMessage('CPF ja cadastrado na Inscrição: '+tab.fieldbyname('inscricao_ben').AsString);
  end;
end;

procedure TFrm_Mov_2067.edt_cep_benKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 13 then
    btn_buscarcepClick(self);  
end;

procedure TFrm_Mov_2067.cbx_cod_planoChange(Sender: TObject);
var
 i : integer;
 vlPlano : double;
begin
  inherited;
  if lsv_simulacao.Items.Count > 0 then
  begin
    Fvltotal := 0;
    for i := 0 to lsv_simulacao.Items.Count -1 do
    begin
      if lsv_simulacao.Items[i].SubItems.Strings[4] = '0' then
        lsv_simulacao.Items[i].SubItems.Strings[0] := edt_idade_ben.Text;
      vlPlano := CalculaValorPlano(cbx_cod_plano.valueItem, -1, StrToInt(lsv_simulacao.Items[i].SubItems.Strings[4]),
      StrToInt(lsv_simulacao.Items[i].SubItems.Strings[0]), chb_educacao.Checked, StrToFloat(STR_RemoveChar(edt_vlbase_mte.text,'.')));
      Fvltotal := Fvltotal + vlPlano;
      lsv_simulacao.Items[i].SubItems.Strings[2] := FormatFloat('###,###,##0.00', vlPlano);
    end;
    lbl_totalsimulacao.Caption := FormatFloat('###,###,##0.00', Fvltotal);
  end;
end;

procedure TFrm_Mov_2067.GeraSimulacaoTitular;
var
 vlPlano : double;
 i : integer;
 TitCadastrado : boolean;
begin
 // if lsv_simulacao.Items.Count <= 0 then
 // begin
  TitCadastrado := true;
  if (cbx_cod_plano.Text <> '') and (edt_nome_ben.Text <> '') and (edt_idade_ben.Text <> '') then
  begin
    for i := 0 to lsv_simulacao.Items.Count -1 do
    begin
      if lsv_simulacao.Items[i].SubItems.Strings[4] = '0' then
        TitCadastrado := false;
    end;
    if TitCadastrado then
    begin
      //cadastra um titular caso não tenha nenhum cadastrado
      vlPlano := CalculaValorPlano(cbx_cod_plano.valueItem, -1, 0, StrToInt(edt_idade_ben.Text),
      chb_educacao.Checked, StrToFloat(STR_RemoveChar(edt_vlbase_mte.text,'.')));
     { if vlPlano <= 0 then
      begin
        Dlg_Alerta('Plano Atual não permite inclusão neste Perfil!',self);
        edt_nomesimulacao.SetFocus;
        Exit;
      end;}
      ListItem := lsv_simulacao.Items.Add;
      ListItem.Caption := edt_nome_ben.Text;
      listItem.SubItems.add(edt_idade_ben.Text);
      listItem.SubItems.add('Segurado');
      listItem.SubItems.add(FormatFloat('###,###,##0.00', vlPlano));
      listItem.SubItems.add('2');
      listItem.SubItems.add('0');
      listItem.SubItems.add('0');
      listItem.SubItems.add('');
      Fvltotal := Fvltotal + vlPlano;
      lbl_totalsimulacao.Caption := FormatFloat('###,###,##0.00', Fvltotal);
      AjustaPanelSimulacao;
    end;  
  end;
 // end;
end;

procedure TFrm_Mov_2067.edt_dtnascim_benExit(Sender: TObject);
begin
  inherited;
  GeraSimulacaoTitular;
  cbx_cod_planoChange(self);
end;

procedure TFrm_Mov_2067.edt_nome_benExit(Sender: TObject);
begin
  inherited;
  edt_nomecarteira_ben.text := edt_nome_ben.text;
end;

procedure TFrm_Mov_2067.btn_confirmarClick(Sender: TObject);
var
 i, j, FDias : integer;
 ListItemDep: TListItem;
 FCadDep, result : boolean;
 FProcesso : String;
begin
  inherited;
  FCadDep := false;
  if (edt_cod_beneficiario.Text = '') then
    begin
    if CriticaParametros then Exit ;
    if not Dlg_YesNo(MSG_DB_CON_Salva, Self) then Exit ;
   { //Regras para cadastrar como suspenso em analise
    if cbx_cod_formaadm.getItemValue = 4 then
      FDias := 30
    else
      FDias := 180;
    if edt_dtadmiss_seg.Date+FDias <= edt_dtsituacao_ben.Date then
      Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 29);

    //resolução 675/2005 retorno de comissionado
    if cbx_cod_formaadm.getItemValue = 1 then
    begin
     if DB_OpenSQL('select cpf_ben, inscricao_ben, cod_formaadm'+
     ' from tbl_beneficiario b, tbl_sitbeneficiario s, tbl_segurado sg'+
     ' where b.cod_sitbeneficiario = s.cod_sitbeneficiario and b.cod_beneficiario = sg.cod_beneficiario'+
     ' and tipo_sit = 2 and cod_formaadm = 1 and cpf_ben = '''+edt_cpf_ben.Text+'''') > 0 then
       Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 29);
    end;}
    Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 28); //apagar essa linha depois
    DB_OpenSQL('select isnull(min(inscricao_ben),0) as inscricao_ben from aux_inscricaoVaga');
    edt_inscricao_ben.Text := tab.fieldByName('inscricao_ben').AsString;
    if edt_inscricao_ben.Text = '0' then
    begin
      DB_OpenSQL('select max(inscricao_ben)+1 from tbl_beneficiario where inscricao_ben < 99999');
      edt_inscricao_ben.Text := Tab.Fields[0].AsString;
    end;
    DB_BeginTrans;
    edt_digito_ben.text := STR_GeraDigito11(cbx_cod_TipoSegurado.ValueItem + cbx_cod_plano.ValueItem + STR_RightAlign(edt_inscricao_ben.text,#48,5) + STR_RightAlign(edt_titulacartei_ben.text,#48,2) ) ;
    //salva processo
    DB_OpenSQL('select isnull(max(processo_tmt),0) + 1 as processo_tmt from tbl_tramite'+
    ' where ano_tmt = '+FormatDateTime('yyyy',Date)+' and cod_corprocesso <> 6');
    FProcesso:= Tab.FieldByName('processo_tmt').AsString;
    edt_processo_ben.Text := FProcesso+'/'+FormatDateTime('yyyy',Date);
    result := DB_ExecSQL('insert into tbl_tramite (processo_tmt, ano_tmt, inscricao_ben, nome_ben,'+
    ' dtprocesso_tmt, cod_setorimasf, cod_corprocesso, assunto_tmt, interessado_tmt, cod_usuario, '+
    ' dtalteracao_tmt, matricula_tmt, digito_tmt) values ('+FProcesso+','+FormatDateTime('yyyy',Date)+
    ','+edt_inscricao_ben.Text+','''+edt_nome_ben.Text+''', getdate(), 2, 5, ''PEDIDO DE INSCRIÇÃO'', '''+
    edt_nome_ben.Text+''', '+IntToStr(FCod_Usuario)+', getdate(),'+edt_matriculadebito_seg.Text+', '+
    edt_digitomatdeb_seg.Text+')');
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
    if result then
      result :=  DB_ExecSQL('insert into tbl_matriculaentrada (cod_beneficiario, matricula_mte, '+
      'digito_mte, vlbase_mte, percentual_mte, inscricao_ben, situacao_mte, cod_empresafolha) values ( '+edt_cod_beneficiario.Text+' ,'+
      edt_matriculadebito_seg.text+', '+edt_digitomatdeb_seg.text+', '''+STR_SubstChar(STR_RemoveChar(edt_vlbase_mte.text,'.'),',','.')+
      ''', 100, '+edt_inscricao_ben.text+', 1,'+cbx_cod_empresafolha.valueItem+')');
    if result then
      result := DB_InsertByFields(self, FCamposCart, FTabelaCart);
    if result then
      result := Ben_GeraHistorico(IntToStr(FCod_Usuario), IntToStr(Fcod_TelaSistema), edt_inscricao_ben.text, '00', '');
   // if result then
   //   result := SalvarNivelCar ;
   // if result then
   //   result := SalvarPlanoPagtoEspecial ;

    if cbx_cod_sitbeneficiario.ValueItem = '28' then
    begin
      if result then
        result := DB_ExecSQL('insert into tbl_histcarteira  (cod_beneficiario, cod_emissaocarteira, dtemissao_hct, cod_statuscarteira)'+
        ' values ('+edt_cod_beneficiario.text+',1, getdate()+180, 1)');
      if result then
        if cbx_cod_plano.ValueItem = 3 then
          result := DB_ExecSQL('insert into tbl_histcarteiraUnimed  (cod_beneficiario, cod_emissaocarteira, dtemissao_hcu, cod_statuscarteira, cod_localunimed)'+
          ' values ('+edt_cod_beneficiario.text+',1, getdate()+180, 1, 11)');
      result := DB_ExecSQL('insert into tbl_andamentoInscricao values('+edt_cod_beneficiario.Text+','+'1, null,getdate(),null,null, null)');
    end
    else begin
      if result then
        result := DB_ExecSQL('insert into tbl_histcarteira  (cod_beneficiario, cod_emissaocarteira, dtemissao_hct, cod_statuscarteira)'+
        ' values ('+edt_cod_beneficiario.text+',1, getdate(), 1)');
      if result then
        if cbx_cod_plano.ValueItem = 3 then
          result := DB_ExecSQL('insert into tbl_histcarteiraUnimed  (cod_beneficiario, cod_emissaocarteira, dtemissao_hcu, cod_statuscarteira, cod_localunimed)'+
          ' values ('+edt_cod_beneficiario.text+',1, getdate(), 1, 11)');
    end;
    if result then
    begin
      DB_Commit;
      AlertaSituacao(cbx_cod_sitbeneficiario.valueitem);
      GroupBoxONOFF(true, false);
      if cbx_cod_sitbeneficiario.ValueItem = 28 then
        Dlg_Alerta('Beneficiário Cadastrado com carências. Vide Tela 2046!', self)
      else
        Dlg_Ok('Beneficiário Cadastrado com Sucesso!', self);
      //LimpaCabecalho;
    end
    else begin
      DB_RollBack;
      Dlg_Alerta('ATENÇÃO ! OCORREU UM ERRO AO TENTAR SALVAR ! COMUNIQUE O DESENVOLVEDOR DO SISTEMA ! ERRO 2067001 ', self);
      Close;
    end;
    GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, 'Incluido ' + pnl_carteira.Caption +
    ', ' + edt_nome_ben.Text + ', Matr.Deb. ' + edt_matriculadebito_seg.Text + '-' +
    edt_digitomatdeb_seg.Text, 'TPPE. ' +// cbx_cod_planoPagto.Text +
    ', Loc.Desc. ' + cbx_cod_empresafolha.Text + ', Dt.Inscr/Sit/Plano/Nasc ' +
    edt_dtinscricao_ben.Text + ', ' + edt_dtsituacao_ben.Text + ', ' +
    edt_dtplano_ben.Text + ', ' + edt_dtnascim_ben.Text +// ',Unimed ' + cbx_cod_tipocoberturaunimed.Text +
    ', End. ' + edt_endereco_ben.Text +', Cep: ' + edt_cep_ben.Text + ', Fone: ' + edt_foneresi_ben.Text,0);
  end;
  //Caso tenha simulação de dependentes vai para tela de Cadastro de Dependentes
  for j := 0 to lsv_simulacao.Items.Count -1 do
  begin
    if (StrToInt(lsv_simulacao.Items[j].SubItems.Strings[3]) = 2)
    and (StrToInt(lsv_simulacao.Items.Item[j].SubItems[4]) > 0) then
      FCadDep := True;
  end;
  if FCadDep then
  begin
    Hide;
    Frm_Mov_2068 := TFrm_Mov_2068.Create(Self);
    Frm_Mov_2068.lsv_dependente.Items.Clear;
    Frm_Mov_2068.edt_inscricao_ben.Text := edt_inscricao_ben.Text;
    if lsv_simulacao.Items.Count > 0 then
    begin
      for i := 0 to lsv_simulacao.Items.Count -1 do
      begin
        if (StrToInt(lsv_simulacao.Items[i].SubItems.Strings[3]) = 2)
        and (StrToInt(lsv_simulacao.Items.Item[i].SubItems[4]) > 0) then
        begin
          ListItemDep := Frm_Mov_2068.lsv_dependente.Items.Add;
          ListItemDep.Caption := lsv_simulacao.Items[i].Caption;
          ListItemDep.SubItems.add(lsv_simulacao.Items[i].SubItems.Strings[4]);
          ListItemDep.SubItems.add(lsv_simulacao.Items[i].SubItems.Strings[3]);
          ListItemDep.SubItems.add(lsv_simulacao.Items[i].SubItems.Strings[5]);
        end;
      end;
    end;
    FGroupBoxONOFF := false;
    Frm_Mov_2068.ShowModal;
    Frm_Mov_2068.Release;
    PreencheSimulacaoBen;
    Show;
  end;

end;

procedure TFrm_Mov_2067.gbx_dadospessoaisDblClick(Sender: TObject);
begin
  inherited;
  GroupBoxMaxMin(gbx_dadospessoais,154,20, 'Dados Pessoais');
end;

procedure TFrm_Mov_2067.gbx_documentosDblClick(Sender: TObject);
begin
  inherited;
  GroupBoxMaxMin(gbx_documentos,122,20, 'Documentos');
end;

procedure TFrm_Mov_2067.gbx_enderecoDblClick(Sender: TObject);
begin
  inherited;
  GroupBoxMaxMin(gbx_endereco,151,20, 'Meios de Contato');
end;

procedure TFrm_Mov_2067.gbx_enderecocorDblClick(Sender: TObject);
begin
  inherited;
  GroupBoxMaxMin(gbx_enderecocor,121,20, 'Endereço de Correspondência');
end;

procedure TFrm_Mov_2067.gbx_empresaDblClick(Sender: TObject);
begin
  inherited;
  GroupBoxMaxMin(gbx_empresa,90,20, 'Empresa');
end;

procedure TFrm_Mov_2067.edt_vlbase_mteExit(Sender: TObject);
begin
  inherited;
  if edt_vlbase_mte.Text <> '' then
    cbx_cod_planoChange(self);
end;

procedure TFrm_Mov_2067.btn_voltarClick(Sender: TObject);
begin
  inherited;
  LimpaCabecalho;
  edt_matriculadebito_seg.SetFocus;
end;

procedure TFrm_Mov_2067.btn_regraClick(Sender: TObject);
var
  FDias : integer;
begin
  inherited;
    if cbx_cod_formaadm.getItemValue = 4 then
      FDias := 30
    else
      FDias := 180;
    if edt_dtadmiss_seg.Date+FDias <= edt_dtsituacao_ben.Date then
    begin
      Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 29);
      ShowMessage(cbx_cod_sitbeneficiario.text);
    end;
    //resolução 675/2005 retorno de comissionado
    if cbx_cod_formaadm.getItemValue = 1 then
    begin
     if DB_OpenSQL('select cpf_ben, inscricao_ben, cod_formaadm'+
     ' from tbl_beneficiario b, tbl_sitbeneficiario s, tbl_segurado sg'+
     ' where b.cod_sitbeneficiario = s.cod_sitbeneficiario and b.cod_beneficiario = sg.cod_beneficiario'+
     ' and tipo_sit = 2 and cod_formaadm = 1 and cpf_ben = '''+edt_cpf_ben.Text+'''') > 0 then
     begin
       Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 29);
       ShowMessage(cbx_cod_sitbeneficiario.text);
     end;  
    end;
end;

function TFrm_Mov_2067.ImpressoraPadrao :String;
var
  aDevice : array[0..255] of char;
  aDriver : array[0..255] of char;
  aPort : array[0..255] of char;
  ahDMode : THandle;
begin
  Printer.GetPrinter(aDevice, aDriver, aPort, ahDMode);
  Result := aDevice;
end;

procedure TFrm_Mov_2067.btn_etiquetaClick(Sender: TObject);
var
  i : integer;
  FArgoxEncontrada : boolean;
  FNomeImpressora, FImpPadrao : String;
begin
  inherited;
  FArgoxEncontrada := false;
  FNomeImpressora := '';
 // FImpPadrao := ImpressoraPadrao;
  if edt_cod_beneficiario.Text <> '' then
  begin
    for i := 0 to Printer.Printers.Count - 1 do
    begin
      if Pos('Argox',Printer.Printers.Strings[I]) <> 0 then
      begin
        FArgoxEncontrada := true;
       // FNomeImpressora := Printer.Printers.Strings[I];
      end;
    end;
    if not FArgoxEncontrada then
    begin
      Dlg_Alerta('Impressora Argox OS-214 não Encontrada! Favor Instalar a Impressora.',self);
      Exit;
    end;
    //Printer.PrinterIndex := Printer.Printers.IndexOf(FNomeImpressora);
    Application.ProcessMessages;
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
    Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_adm_etiquetaprocesso;
    Frm_Bas_Impressao.showReport(4212);
    fdt_principal6.spc_cons_adm_etiquetaprocesso.Close;
    Application.ProcessMessages;
  //  Printer.PrinterIndex := Printer.Printers.IndexOf(FImpPadrao);
  end;
end;

procedure TFrm_Mov_2067.gbx_simulacaoEnter(Sender: TObject);
begin
  inherited;
  scb_fundo.VertScrollBar.Position := 200;
end;

procedure TFrm_Mov_2067.cbx_cod_tipodocumentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_ESCAPE then
    cbx_cod_tipodocumento.ItemIndex := -1;
end;

procedure TFrm_Mov_2067.cb2_cod_empresafolhaExit(Sender: TObject);
begin
  inherited;
  if (edt_matriculadebito_seg.Text <> '') and (cb2_cod_empresafolha.Text <> '') then
  begin
    with fdt_principal6.spc_cons_adm_BenefMatricDesc do
    begin
      Close;
      ParamByName('@cod_empresafolha').AsString := cb2_cod_empresafolha.getStrItemValue;
      ParamByName('@cod_tipodependente').AsString := '0';
      ParamByName('@matriculadebito_seg').AsString := edt_matriculadebito_seg.text;
      ParamByName('@tipo_sit').AsString := '';
      ParamByName('@nome_ben').AsString := '';
      ParamByName('@inscricao_ben').AsString := '';
      Open;
      if RecordCount > 0 then
      begin
        if fieldByname('cod_beneficiario').AsInteger > 0 then
        begin
          edt_cod_beneficiario.Text := fieldByname('cod_beneficiario').asstring;
          BuscaDadosTitular(edt_cod_beneficiario.Text);
          edt_nomesimulacao.SetFocus;
        end
        else
        begin
          if fieldByname('cod_fpm').asstring <> '' then
          begin
            BuscaDadosFPM(fieldByname('cod_fpm').asstring);
            PreencheCamposTitNovo;
          end;
         // gbx_cabecalho.Enabled := false;
          PreencheCamposTitNovo;
          edt_nome_ben.SetFocus;
        end;
      end
      else begin
       // gbx_cabecalho.Enabled := false;
        PreencheCamposTitNovo;
        edt_nome_ben.SetFocus;
      end;
    end;
    cb2_cod_empresafolha.Visible := false;
  end;
end;

procedure TFrm_Mov_2067.cbx_cod_grauparentKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
  begin
    btn_adicionarClick(self);
    key := 0;
  end;
end;

procedure TFrm_Mov_2067.btn_imprimiradesaoClick(Sender: TObject);
begin
  inherited;
  if edt_cod_beneficiario.Text = '' then
    Exit;
  with Fdt_principal.spc_cons_adm_requerimentocomvalor do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_adm_requerimentocomvalor;
  Frm_Bas_Impressao.FCampo_Topo := 'REQUERIMENTO - INSCRIÇÃO';
  Frm_Bas_Impressao.FCampo1:= edt_nome_ben.Text;
  Frm_Bas_Impressao.FCampo2:= edt_inscricao_ben.Text;
  Frm_Bas_Impressao.FCampo3:= STR_AddSpaces2('Endereço: ' + edt_endereco_ben.Text + ', ' + edt_numero_ben.Text + ' ' + edt_complemento_ben.Text,95) + ' CEP: ' + edt_cep_ben.Text;
  Frm_Bas_Impressao.FCampo4:= STR_AddSpaces2('Bairro:' + edt_bairro_ben.Text,45) + STR_AddSpaces2('Cidade: ' + cbx_cod_cidadeCep.Text,45) + 'UF: ' + cbx_cod_uf.Text;
  Frm_Bas_Impressao.FCampo5:= STR_AddSpaces2('Residencial:' + edt_foneresi_ben.Text,60) + STR_AddSpaces2('Celular: ' + edt_fonecel_ben.Text,30) + STR_AddSpaces2('Comercial: ' + edt_fonecome_seg.Text,30);
  Frm_Bas_Impressao.FCampo6:= 'E-Mail:' + edt_email_ben.Text;
  Frm_Bas_Impressao.showReport(4228);
  Fdt_principal.spc_cons_adm_requerimentocomvalor.close;

//Antes 05/08/13
{  if edt_cod_beneficiario.Text = '' then
    Exit;
// Titular
  with Fdt_principal2.spc_cons_adm_beneficiario002 do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
    ParamByName('@titulacartei_ben').AsString := '0';
    ParamByName('@cod_plano').AsString := '0';
    ParamByName('@tipo_sit').AsString := '0';
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal2.spc_cons_adm_beneficiario002;
  Frm_Bas_Impressao.FCampo_Topo := 'FICHA DE ADESÃO';
 // Frm_Bas_Impressao.FCampo1 := Memo1.Text;
  Frm_Bas_Impressao.showReport(4219);
  Fdt_principal2.spc_cons_adm_beneficiario002.close;}

// Dependentes/Assistidos
//CUIDADO, AQUI JÁ ESTAVA COMENTADO ANTES DE 05/08/13
 { with Fdt_principal2.spc_cons_adm_beneficiario002 do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
    ParamByName('@titulacartei_ben').AsString := '0';
    ParamByName('@cod_plano').AsString := '0';
    ParamByName('@tipo_sit').AsString := '0';
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;  }

{  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal2.spc_cons_adm_beneficiario002;
  Frm_Bas_Impressao.FCampo_Topo := 'FICHA DE ADESÃO';
 // Frm_Bas_Impressao.FCampo1 := Memo1.Text;
  Frm_Bas_Impressao.showReport(4220);
  Fdt_principal2.spc_cons_adm_beneficiario002.close;}

end;

procedure TFrm_Mov_2067.lbl_processoClick(Sender: TObject);
var
  b : string ;
begin
  inherited;
  if (edt_cod_beneficiario.Text <> '') and (edt_processo_ben.Text <> '') then
  begin
    b := edt_cod_beneficiario.Text ;
    Frm_Mov_Tramite := TFrm_Mov_Tramite.Create(Self);
    Frm_Mov_Tramite.edt_processo_tmt.Text := Trim(copy(edt_processo_ben.Text,1,Length(edt_processo_ben.Text) - 5));
    Frm_Mov_Tramite.edt_ano_tmt.Text := Trim(copy(edt_processo_ben.Text,(Length(edt_processo_ben.Text) - 3), 4));
    Frm_Mov_Tramite.btn_alterarClick(self);
    Hide;
    Frm_Mov_Tramite.ShowModal;
    Frm_Mov_Tramite.Release;
   // wCod_Beneficiario := b;
    Show;
  end;
end;

procedure TFrm_Mov_2067.Btn_FecharClick(Sender: TObject);
begin
  if (pnl_todos.Visible) and (edt_nome_ben.Enabled) then
  begin
    if not Dlg_YesNo('Confirma Cancelar o Cadastro?',self) then
      Exit;
  end;
  inherited;

end;

procedure TFrm_Mov_2067.Button1Click(Sender: TObject);
var
  FNomeImpressora, FImpPadrao : String;
  i : integer;
  FArgoxEncontrada : boolean;
begin
  inherited;
{  FImpPadrao := ImpressoraPadrao;
  FNomeImpressora := '';
  //imprimir direto
  for i := 0 to Printer.Printers.Count - 1 do
  begin
    if Pos('Argox',Printer.Printers.Strings[I]) <> 0 then
    begin
      FArgoxEncontrada := true;
      FNomeImpressora := Printer.Printers.Strings[I];
    end;
  end;
  if FArgoxEncontrada then
  begin
    Frm_Bas_Impressao.frReport1.LoadFromFile('P:\reports\4212b.frf');
    if Frm_Bas_Impressao.frReport1.PrepareReport then
      Frm_Bas_Impressao.frReport1.PrintPreparedReport('',1);
  end;
  Printer.PrinterIndex := Printer.Printers.IndexOf(FImpPadrao); }
end;

procedure TFrm_Mov_2067.btn_configArgoxClick(Sender: TObject);
begin
  inherited;
  Frm_ConfigArgox := TFrm_ConfigArgox.Create(Self);
  Frm_ConfigArgox.Show;
end;

end.




