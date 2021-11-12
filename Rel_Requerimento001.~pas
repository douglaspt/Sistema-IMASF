unit Rel_Requerimento001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, shellapi;

type
  TFrm_Rel_Requerimento001 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    edt_carteirinha: TDCEdit;
    edt_entrada: TDCEdit;
    PDJButton1: TPDJButton;
    pnl_alerta: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Rdg_Medico: TRadioGroup;
    Rdg_Farmacia: TRadioGroup;
    Rdg_Administrativo: TRadioGroup;
    cbx_cod_textoRequerimento: TDCComboBox;
    btn_limpar: TPDJButton;
    Edit1: TEdit;
    edt_pricaracter: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    cbx_cod_tipodependente: TDCComboBox;
    cbx_cod_grauparent: TDCComboBox;
    ckb_pensionista: TCheckBox;
    edt_dtendereco_ben: TDCDateEdit;
    pnl_contacorrente: TPanel;
    cbx_cod_beneficiario: TDCComboBox;
    cbx_cod_contacorrente: TDCComboBox;
    edt_cod_contacorrente: TDCEdit;
    btn_adicionar: TPDJButton;
    Label3: TLabel;
    edt_cod_Requerimento: TEdit;
    DSItens: TDataSource;
    pnl_pacientes: TPanel;
    Label4: TLabel;
    DBG_Itens: TDBGrid;
    btn_imprimereq: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_limparClick(Sender: TObject);
    procedure edt_carteirinhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton1Click(Sender: TObject);
    procedure edt_entradaEnter(Sender: TObject);
    procedure Rdg_AdministrativoClick(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure TabSheet3Enter(Sender: TObject);
    procedure VerSituacao;
    procedure cbx_cod_TipoDependenteChange(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure Rdg_MedicoClick(Sender: TObject);
    procedure cbx_cod_beneficiarioChange(Sender: TObject);
    procedure btn_incluiccClick(Sender: TObject);
    procedure btn_adicionarClick(Sender: TObject);
    procedure edt_inscricao_benEnter(Sender: TObject);
    procedure AtualizaFavorecido;
    procedure edt_inscricao_benExit(Sender: TObject);
    procedure btn_imprimereqClick(Sender: TObject);
    procedure edt_carteirinhaExit(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    TitReq, WPaciente, Idade : Integer;
    procedure CarregaCamposReq(nomeReq : String);
    function CriticaParametros : Boolean ;
    function CriticaParametroscc : Boolean ;
    function CriticaParametrosprot : Boolean ;
    function CriticaParametrospac : Boolean ;

  public
    wInscricao, wCod_Beneficiario, wCod_Beneficiario1 : String;
    { Public declarations }
    Wl1, Wl2, Wl3, Wl4, WFlagVolta, WPacientes, WIC: String;
    Wopcao: Integer;
  end;

var
  Frm_Rel_Requerimento001: TFrm_Rel_Requerimento001;

implementation

uses Imp_Med_ResumoConta, dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,
     Imp_Adm_FichaBenefi001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str, Fun_Obj,
     Imp_Adm_FichaBenefi002, Imp_Adm_Requerimento001, Imp_Adm_Requerimento002,
     Imp_Adm_Requerimento003, fun_acesso, fun_xml, Bas_Impressao, dtm_principal6,
     dtm_principal4, Mov_2070, Mov_2063;

{$R *.DFM}

procedure TFrm_Rel_Requerimento001.FormCreate(Sender: TObject);
begin
 //Titulo       := 'Resumo dos Atendimentos Realizados pelo Beneficiário' ;
 //EditChave    := 'edt_cod_beneficiario' ;
 // FEditAlteracao:= 'edt_nome_ben' ;
 // FUltFoco      := 'mem_obs_ben' ;
 // FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  PageControl1.ActivePageIndex:= 0;
  WFlagVolta:= '';
  WIC:= '';
  inherited;
end;

function TFrm_Rel_Requerimento001.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_inscricao_ben.name, 'Inscrição do Beneficiário deve ser Preenchida.', VLD_Preenchido ));
end;

function TFrm_Rel_Requerimento001.CriticaParametroscc : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_beneficiario.name, 'Favorecido deve ser Preenchido.', VLD_Preenchido ));
end;

function TFrm_Rel_Requerimento001.CriticaParametrospac : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_beneficiario.name, 'Paciente deve ser Preenchido.', VLD_Preenchido ));
end;

function TFrm_Rel_Requerimento001.CriticaParametrosProt : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_Requerimento.name, 'No.Protocolo deve ser Preenchido.', VLD_Preenchido ));
end;

procedure TFrm_Rel_Requerimento001.edt_cod_beneficiarioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
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
      Dlg_Alerta('Inscrição não encontrada !', self);
  end;
  var
    insc : string ;
begin
end;

procedure TFrm_Rel_Requerimento001.edt_inscricao_benButtonClick(
  Sender: TObject);
var
  s : string;
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
  wCod_Beneficiario:= edt_cod_beneficiario.text;
  Wl1:= '';
  Wl2:= '';
  Wl3:= '';
  Wl4:= '';
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    VerSituacao;
    DB_OpenSQL('select b.nome_ben, b.cod_empresa, b.cod_plano, b.inscricao_ben, b.titulacartei_ben, b.digito_ben, b.fonecel_ben, '+
               'b.foneresi_ben, b.email_ben, b.dtendereco_ben, s.fonecome_seg, b.cep_ben, b.endereco_ben, b.numero_ben, b.complemento_ben, '+
               'b.bairro_ben, b.cod_cidadeCep, c.cidade_cep, b.cod_uf, u.sigla_uf, b.cepcor_ben, b.enderecocor_ben, b.numerocor_ben, '+
               'b.complementocor_ben, b.bairrocor_ben, b.cod_cidadecorCEP, cc.cidade_cep as cidadecor_cep, b.cd2_uf, uu.sigla_uf as siglacor_uf, idade_ben ' +
               'from tbl_beneficiario b left join tbl_segurado s on s.cod_beneficiario = b.cod_beneficiario '+
               'left join tbl_cidadeCEP c on c.cod_cidadeCep = b.cod_cidadeCep '+
               'left join tbl_cidadeCEP cc on cc.cod_cidadeCep = b.cod_cidadecorCEP '+
               'left join tbl_uf u on u.cod_uf = b.cod_uf '+
               'left join tbl_uf uu on uu.cod_uf = b.cd2_uf '+
               'where b.cod_beneficiario = '+ edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    Tab.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByName('nome_ben').AsString;
    cbx_cod_beneficiario.ItemIndex:= -1;
    cbx_cod_beneficiario.Clear;
    TitReq := Tab.FieldByName('titulacartei_ben').AsInteger;
    Idade:= Tab.FieldByName('idade_ben').AsInteger;
    edt_dtendereco_ben.Date:= Tab.FieldByName('dtendereco_ben').AsDateTime;
    Wl1:= 'CEP: ' + Tab.FieldByName('cep_ben').AsString + ' - Celular: ' + Tab.FieldByName('fonecel_ben').AsString;
    Wl2:= 'Residencial: ' + Tab.FieldByName('foneresi_ben').AsString;
    Wl3:= 'Comercial: ' + Tab.FieldByName('fonecome_seg').AsString;
    Wl4:= 'E-Mail: ' + Tab.FieldByName('email_ben').AsString;
    wCod_Beneficiario1:= wCod_Beneficiario;
    wInscricao := '';
//    AtualizaFavorecido;
  end;
end;

procedure TFrm_Rel_Requerimento001.AtualizaFavorecido;
begin
{  cbx_cod_beneficiario.Clear;
  if edt_nome.Text <> '' then
     Obj_LoadCombo(Self, 'cbx_cod_beneficiario', 'nome_ben', 'cod_beneficiario', 'tbl_beneficiario b left join tbl_sitbeneficiario sb '+
                          'on sb.cod_sitbeneficiario = b.cod_sitbeneficiario where tipo_sit < 2 and inscricao_ben = ' + edt_inscricao_ben.Text + ' order by cod_tipodependente');}
{  DB_OpenSQL('select nome_ben, inscricao_ben, cod_beneficiario from tbl_beneficiario b '+
             'left join tbl_sitbeneficiario sb on sb.cod_sitbeneficiario = b.cod_sitbeneficiario '+
             'where tipo_sit < 2 and inscricao_ben = ' + edt_inscricao_ben.Text + ' order by cod_tipodependente');}
  if edt_inscricao_ben.text = '' then
     Exit;
  with Fdt_principal6.spc_cons_dependenteTrocaEndereco do
    begin
    close;
    parambyname('@cod_beneficiario').AsInteger:= 0;
    parambyname('@inscricao_ben').AsInteger := StrToInt(edt_inscricao_ben.text);
    open;
    Fdt_principal6.spc_cons_dependenteTrocaEndereco.RecordCount;
    end;
end;

procedure TFrm_Rel_Requerimento001.CarregaCamposReq(nomeReq : String);
var
  campos : array[0..7] of TFieldsXML;
begin
  DB_OpenSQL('select nome_ben, inscricao_ben, endereco_ben, rg_ben, bairro_ben, nome_civ, cidade_ben from tbl_beneficiario b, tbl_estadociv e'+
  ' where b.cod_estadociv = e.cod_estadociv and titulacartei_ben = 0 and inscricao_ben = '+edt_inscricao_ben.Text);
  campos[0].FName := 'nome_dep';
  campos[0].FValue := edt_nome.text;
  campos[1].FName := 'nome_ben';
  campos[1].FValue := tab.fieldbyname('nome_ben').AsString;
  campos[2].FName := 'endereco_ben';
  campos[2].FValue := tab.fieldbyname('endereco_ben').AsString;
  campos[3].FName := 'bairro_ben';
  campos[3].FValue := tab.fieldbyname('bairro_ben').AsString;
  campos[4].FName := 'nome_civ';
  campos[4].FValue := tab.fieldbyname('nome_civ').AsString;
  campos[5].FName := 'cidade_ben';
  campos[5].FValue := tab.fieldbyname('cidade_ben').AsString;;
  campos[6].FName := 'rg_ben';
  campos[6].FValue := tab.fieldbyname('rg_ben').AsString;
  campos[7].FName := 'inscricao_ben';
  campos[7].FValue := tab.fieldbyname('inscricao_ben').AsString;
  XML_CriaRelatorio(self, nomeReq, campos, false);
end;

procedure TFrm_Rel_Requerimento001.FormShow(Sender: TObject);
begin
  inherited;
  edt_dtendereco_ben.Date:= 0;
  edt_inscricao_ben.SetFocus;
  cbx_cod_textoRequerimento.Visible:= False;
  btn_limpar.Visible:= False;
  if wInscricao <> '' then begin
    edt_inscricao_ben.Text := wInscricao;
    edt_inscricao_benButtonClick(self);
  end;
  Obj_LoadCombo(Self,'cbx_cod_textoRequerimento', 'titulo_txr', 'cod_textoRequerimento', 'tbl_textoRequerimento where cod_textoRequerimento <> 12 order by titulo_txr');
  Obj_LoadCombo(Self,'cbx_cod_grauparent', 'nome_gra', 'cod_grauparent', 'tbl_grauparent where cod_statusAtivo = 1');
  BAS_CarregarCombo('cbx_cod_tipodependente','nome_tdp');
  Label1.Visible:= False;
  Label2.Visible:= False;
  ckb_pensionista.Visible:= False;
  cbx_cod_tipodependente.Visible:= False;
  cbx_cod_grauparent.Visible:= False;
  Wopcao:= 0;
  pnl_pacientes.Visible:= False;
end;

procedure TFrm_Rel_Requerimento001.edt_inscricao_benKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_Requerimento001.btn_limparClick(Sender: TObject);
begin
  inherited;
  cbx_cod_textoRequerimento.ItemIndex := -1;
  cbx_cod_textoRequerimento.Refresh;
  ckb_pensionista.Checked:= False;
  cbx_cod_tipodependente.ItemIndex := -1;
  cbx_cod_tipodependente.Refresh;
  cbx_cod_grauparent.ItemIndex := -1;
  cbx_cod_grauparent.Refresh;
end;

procedure TFrm_Rel_Requerimento001.edt_carteirinhaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if Key = 13 then
    begin
      if edt_carteirinha.Text <> '' then
      begin
        if length(edt_carteirinha.text) = 33 then
        begin
          wCod_Beneficiario := copy(edt_carteirinha.text, 2, 6) ;
          edt_carteirinha.Text := FormatarCarteirinha(copy(edt_carteirinha.text, 8, 10));
          edt_cod_beneficiario.Text := FormatarCarteirinha(copy(edt_carteirinha.text, 8, 10));
        end
        else begin
          wCod_Beneficiario := copy(edt_carteirinha.text, 2, 5) ;
          edt_carteirinha.Text := FormatarCarteirinha(copy(edt_carteirinha.text, 7, 10));
          edt_cod_beneficiario.Text:= edt_carteirinha.Text;
        end;
      VerSituacao;
    end;
   end;
{  edt_inscricao_ben.Text:= wCod_Beneficiario;
  edt_inscricao_benButtonClick(Self);}
end;

procedure TFrm_Rel_Requerimento001.VerSituacao;
begin
  DB_OpenSQL('SELECT b.nome_ben, p.descricao_pla, b.dtnascim_ben, cod_sitbeneficiario, b.cod_plano FROM tbl_beneficiario b INNER JOIN tbl_plano p ON b.cod_plano = p.cod_plano '+
  ' WHERE b.cod_beneficiario = '+wCod_Beneficiario);
  if edt_carteirinha.Text <> '' then
     begin
     edt_nome.Text := tab.fieldbyname('nome_ben').AsString;
     edt_carteira.Text:= edt_carteirinha.Text;
     edt_entrada.Text:= edt_carteirinha.Text;
     edt_inscricao_ben.Text:= Copy(edt_carteirinha.Text,5,5);
     end;

  if Tab.FieldByName('cod_sitbeneficiario').AsString <> '' then
  begin
  DB_OpenSql('select nome_sit, tipo_sit from tbl_sitbeneficiario where cod_sitbeneficiario = '+Tab.FieldByName('cod_sitbeneficiario').AsString);
  pnl_alerta.Caption := '***  Situação : '+Tab.FieldByName('nome_sit').AsString+'  ***';
  case Tab.FieldByName('tipo_sit').AsInteger of
    1 : pnl_alerta.color := clYellow;
    2 : pnl_alerta.color := clRed;
  end;
  pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
  DB_ClearSQL;
  end;
  if Wopcao = 1 then
     begin
     AtualizaFavorecido;
     Rdg_Medico.ItemIndex:= 1;
     pnl_pacientes.Visible:= True;
     Rdg_Medico.SetFocus;
     end;
end;

procedure TFrm_Rel_Requerimento001.PDJButton1Click(Sender: TObject);
begin
  inherited;
  Obj_EmptyEditTag(self,-1);
  Obj_EmptyEditTag(self,-5);
  Obj_EmptyEditTag(self,-10);
  cbx_cod_beneficiario.Refresh;
  cbx_cod_contacorrente.Refresh;
  wCod_Beneficiario := '';
  wInscricao := '';
  edt_entrada.Text:= '';
  edt_carteira.Text:= '';
  edt_inscricao_ben.Text:= '';
  edt_nome.Text:= '';
  pnl_alerta.Visible:= False;
  cbx_cod_beneficiario.ValueItem:= -1;
  cbx_cod_contacorrente.ValueItem:= -1;
  edt_carteirinha.SetFocus;
end;

procedure TFrm_Rel_Requerimento001.edt_entradaEnter(Sender: TObject);
begin
  inherited;
  edt_carteirinha.SetFocus;
  WIC:= 'C';
  pnl_pacientes.Visible:= False;
end;

procedure TFrm_Rel_Requerimento001.Rdg_AdministrativoClick(Sender: TObject);
begin
  inherited;
  Label1.Visible:= False;
  Label2.Visible:= False;
  btn_limpar.Visible := False;
  ckb_pensionista.Visible:= False;
  cbx_cod_TipoDependente.Visible:= False;
  cbx_cod_grauparent.Visible:= False;
  if Rdg_Administrativo.ItemIndex = 0 then
  begin
    cbx_cod_textoRequerimento.Visible := true;
    cbx_cod_textoRequerimento.Width:= 443;
    btn_limpar.Visible := True;
  end
  else begin
    cbx_cod_textoRequerimento.Visible := false;
    cbx_cod_textoRequerimento.Width:= 1;
    btn_limpar.Visible := False;
  end;

  if Rdg_Administrativo.ItemIndex = 6 then
  begin
    btn_limpar.Visible := True;
    Label1.Visible:= True;
    cbx_cod_TipoDependente.Visible:= True;
  end
end;

procedure TFrm_Rel_Requerimento001.TabSheet1Enter(Sender: TObject);
begin
  inherited;
  cbx_cod_textoRequerimento.Visible := false;
  btn_limpar.Visible:= False;
  edt_cod_Requerimento.Visible:= False;
  Label3.Visible:= False;
  Rdg_Administrativo.ItemIndex:= -1;
  Rdg_Medico.ItemIndex:= -1;
  Rdg_Farmacia.ItemIndex:= -1;
end;

procedure TFrm_Rel_Requerimento001.TabSheet2Enter(Sender: TObject);
begin
  inherited;
  edt_cod_Requerimento.Visible:= False;
  Label3.Visible:= False;
//  TabSheet1Enter(Self);
  Rdg_Administrativo.ItemIndex:= -1;
//  Rdg_Medico.ItemIndex:= -1;
  Rdg_Farmacia.ItemIndex:= -1;
  if edt_inscricao_ben.Text <> '' then
     if Rdg_Medico.ItemIndex = 1 then
        pnl_pacientes.Visible:= True;
end;

procedure TFrm_Rel_Requerimento001.TabSheet3Enter(Sender: TObject);
begin
  inherited;
  edt_cod_Requerimento.Visible:= False;
  Label3.Visible:= False;

  TabSheet1Enter(Self);
end;

procedure TFrm_Rel_Requerimento001.cbx_cod_TipoDependenteChange(
  Sender: TObject);
begin
  inherited;
  Label2.Visible:= False;
  ckb_pensionista.Visible:= False;
  ckb_pensionista.Checked:= False;
  cbx_cod_grauparent.Visible:= False;
  if cbx_cod_TipoDependente.ValueItem <> '' then
     if cbx_cod_TipoDependente.ValueItem > 0 then
        begin
        Label2.Visible:= True;
        cbx_cod_grauparent.ItemIndex:= -1;
        cbx_cod_grauparent.Visible:= True;
        end
     else
        ckb_pensionista.Visible:= True;
end;

procedure TFrm_Rel_Requerimento001.PDJButton3Click(Sender: TObject);
begin
//Relatório do Aqua
{  inherited;
  if CriticaParametros then
     Exit;
  with Fdt_principal2.spc_cons_adm_beneficiario002 do
      begin
      close;
      ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
      ParamByName('@titulacartei_ben').AsString := '0';
      open;
      Frm_Bas_Impressao.FCampo_Proc := FieldByName('processo_ben').AsString;
      end;
   Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal2.spc_cons_adm_beneficiario002;
   if cbx_cod_textoRequerimento.Text <> '' then
      begin
      DB_OpenSQL('select texto_txr, titulo_txr from tbl_textoRequerimento where cod_textoRequerimento = '+cbx_cod_textoRequerimento.valueItem);
      Frm_Bas_Impressao.FCampo1 := (Tab.FieldByName('texto_txr').AsString);
      Frm_Bas_Impressao.FCampo_Topo := (Tab.FieldByName('titulo_txr').AsString);
      Frm_Bas_Impressao.showReport(4222);
      Fdt_principal2.spc_cons_adm_beneficiario002.close;
      end;}
end;

{procedure TFrm_Mov_2067.PreencheSimulacaoBen;
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
 .
}
procedure TFrm_Rel_Requerimento001.Rdg_MedicoClick(Sender: TObject);
begin
  inherited;
{  if Rdg_Medico.ItemIndex <> 1 then
     begin
     if CriticaParametros then
        begin
        Rdg_Medico.ItemIndex:= -1;
        Exit;
        end;
     end;}
  Label3.Visible:= False;
  edt_cod_Requerimento.Visible:= False;
  pnl_pacientes.Visible:= False;
  if Rdg_Medico.ItemIndex <> 1 then
     begin
     Wopcao:= 0;
     Exit;
     end;
  if (wCod_Beneficiario = '') and (edt_inscricao_ben.Text = '') then
     Exit;
  if edt_carteirinha.Text <> '' then
     begin
     if length(edt_carteirinha.text) = 33 then
        wCod_Beneficiario:= copy(edt_carteirinha.text, 5, 6)
     else
        wCod_Beneficiario:= copy(edt_carteirinha.text, 5, 5);

     DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = ' + wCod_Beneficiario + ' and titulacartei_ben = 0');
     wCod_Beneficiario:= Tab.Fields[0].AsString;

// Forçar o Titular, mesmo que tenha passado carteirinha de dependente
     DB_OpenSQL('select b.nome_ben, b.cod_empresa, b.cod_plano, b.inscricao_ben, b.titulacartei_ben, b.digito_ben, b.fonecel_ben, '+
                'b.foneresi_ben, b.email_ben, b.dtendereco_ben, s.fonecome_seg, b.cep_ben, b.endereco_ben, b.numero_ben, b.complemento_ben, '+
                'b.bairro_ben, b.cod_cidadeCep, c.cidade_cep, b.cod_uf, u.sigla_uf, b.cepcor_ben, b.enderecocor_ben, b.numerocor_ben, '+
                'b.complementocor_ben, b.bairrocor_ben, b.cod_cidadecorCEP, cc.cidade_cep as cidadecor_cep, b.cd2_uf, uu.sigla_uf as siglacor_uf, idade_ben ' +
                'from tbl_beneficiario b left join tbl_segurado s on s.cod_beneficiario = b.cod_beneficiario '+
                'left join tbl_cidadeCEP c on c.cod_cidadeCep = b.cod_cidadeCep '+
                'left join tbl_cidadeCEP cc on cc.cod_cidadeCep = b.cod_cidadecorCEP '+
                'left join tbl_uf u on u.cod_uf = b.cod_uf '+
                'left join tbl_uf uu on uu.cod_uf = b.cd2_uf '+
                'where b.cod_beneficiario = '+ wCod_Beneficiario);
     edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
     edt_carteira.text := FormatarCarteirinha(
     Tab.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
     STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
     STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
     Tab.FieldByName('digito_ben').AsString) ;
     edt_nome.text := Tab.FieldByName('nome_ben').AsString;
     cbx_cod_beneficiario.ItemIndex:= -1;
     cbx_cod_beneficiario.Clear;
     TitReq := Tab.FieldByName('titulacartei_ben').AsInteger;
     Idade:= Tab.FieldByName('idade_ben').AsInteger;
     edt_dtendereco_ben.Date:= Tab.FieldByName('dtendereco_ben').AsDateTime;
     Wl1:= 'CEP: ' + Tab.FieldByName('cep_ben').AsString + ' - Celular: ' + Tab.FieldByName('fonecel_ben').AsString;
     Wl2:= 'Residencial: ' + Tab.FieldByName('foneresi_ben').AsString;
     Wl3:= 'Comercial: ' + Tab.FieldByName('fonecome_seg').AsString;
     Wl4:= 'E-Mail: ' + Tab.FieldByName('email_ben').AsString;
     wCod_Beneficiario1:= wCod_Beneficiario;
     wInscricao := '';
     end;
  AtualizaFavorecido;
  pnl_pacientes.Visible:= True;
  Rdg_Medico.ItemIndex:= 1;
end;

procedure TFrm_Rel_Requerimento001.cbx_cod_beneficiarioChange(Sender: TObject);
begin
  inherited;
  btn_imprimereq.Enabled:= True;
  if cbx_cod_beneficiario.valueitem = '' then
     Exit;
  Obj_LoadCombo(Self, 'cbx_cod_contacorrente', '''Agência: ''+ cc.agencia_ctc+ ''-'' + cc.digAgencia_ctc + ''-Conta:''+cc.contaCorrente_ctc + '' (''+ rtrim(bc.nome_bco) + '')''', 'cc.cod_contacorrente',
                      'tbl_beneficiario b left join tbl_contacorrente cc on cc.cod_beneficiario = b.cod_beneficiario left join tbl_banco bc on bc.cod_banco = '+
                      'cc.banco_ctc where b.cod_beneficiario = ' + cbx_cod_beneficiario.valueitem);
  WPaciente:= cbx_cod_beneficiario.valueitem;
  if Tab.FieldByName('cod_contacorrente').AsInteger < 1 then
     begin
     Obj_EmptyEditTag(self,-5);
     cbx_cod_contacorrente.Refresh;
     Dlg_Alerta('Não existe conta corrente para esse beneficiário!', self);
     Exit;
     end
  else
     begin
     Obj_SetFormObjValueByName(self, cbx_cod_contacorrente.name, Tab.FieldByName('cod_contacorrente').Text);
     cbx_cod_contacorrente.ItemIndex:= 0;
     end;
  edt_cod_beneficiario.Text;
end;

procedure TFrm_Rel_Requerimento001.btn_incluiccClick(Sender: TObject);
begin
  inherited;
  Hide;
  WFlagVolta:= '';
  Frm_Mov_2070:= TFrm_Mov_2070.Create(Self);
  Frm_Mov_2070.wCod_Beneficiario := wCod_Beneficiario1;
  Frm_Mov_2070.wCod_Favorecido := cbx_cod_beneficiario.valueitem;
  Frm_Mov_2070.WProcesso:= 0;
  Frm_Mov_2070.WtitReq:= TitReq;
  Frm_Mov_2070.WIdade:= Idade;
  Frm_Mov_2070.ShowModal;
  Frm_Mov_2070.Release;
  if Frm_Mov_2070.wCod_Beneficiario = '' then
     WFlagVolta:= '1';
  Show;
end;

procedure TFrm_Rel_Requerimento001.btn_adicionarClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     Exit;
//  if CriticaParametroscc then
//     Exit;
//  btn_incluiccClick(Self);
//  Rdg_Medico.ItemIndex:= 1;
  cbx_cod_beneficiarioChange(Self);
end;

procedure TFrm_Rel_Requerimento001.edt_inscricao_benEnter(Sender: TObject);
begin
  inherited;
//AQUI AGORA  
{  edt_inscricao_ben.Text:= '';
  edt_cod_beneficiario.Text:= '';
  wCod_Beneficiario:= '';}
end;

procedure TFrm_Rel_Requerimento001.edt_inscricao_benExit(Sender: TObject);
begin
  inherited;
  if WFlagVolta = '' then
     begin
     edt_carteira.Text:= '';
     edt_nome.Text:= '';
     cbx_cod_beneficiario.ItemIndex:= -1;
     end;
  wCod_Beneficiario:= '';
  edt_cod_beneficiario.text:= '';
  WPacientes:= '';
  if Wopcao = 1 then
     begin
     AtualizaFavorecido;
     Rdg_Medico.ItemIndex:= 1;
     pnl_pacientes.Visible:= True;
     end;
  WIC:= 'I';
end;

procedure TFrm_Rel_Requerimento001.btn_imprimereqClick(Sender: TObject);
var
 s : string;
 i: Integer;
begin
  inherited;
  if Wopcao = 1 then
     Rdg_Medico.ItemIndex:= 1;
  case Rdg_Administrativo.ItemIndex of
    0 : begin
      if CriticaParametros then
         Exit;
      with Fdt_principal2.spc_cons_adm_beneficiario002 do
      begin
        close;
        ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
        ParamByName('@titulacartei_ben').AsString := '0';
        open;
        Frm_Bas_Impressao.FCampo_Proc := FieldByName('processo_ben').AsString;
//        Frm_Bas_Impressao.FCampo_Proc := '____________';
      end;
      Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal2.spc_cons_adm_beneficiario002;
      if cbx_cod_textoRequerimento.Text <> '' then
      begin
        DB_OpenSQL('select texto_txr, titulo_txr from tbl_textoRequerimento where cod_textoRequerimento = '+cbx_cod_textoRequerimento.valueItem);
        Frm_Bas_Impressao.FCampo1 := (Tab.FieldByName('texto_txr').AsString);
        Frm_Bas_Impressao.FCampo_Topo := (Tab.FieldByName('titulo_txr').AsString);
        Frm_Bas_Impressao.showReport(4159);
        Fdt_principal2.spc_cons_adm_beneficiario002.close;
      end
      else
      begin
        Frm_Imp_Adm_Requerimento001 := TFrm_Imp_Adm_Requerimento001.Create(Self);
        Frm_Imp_Adm_Requerimento001.QuickRep1.Preview;
        Frm_Imp_Adm_Requerimento001.Release;
        Fdt_principal2.spc_cons_adm_beneficiario002.close;
      end;
    end;
    1 : begin
      if CriticaParametros then
         Exit;
      with Fdt_principal2.spc_cons_adm_beneficiario002 do
      begin
        close;
        ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
        ParamByName('@titulacartei_ben').AsString := '0';
        open;
      end;
      Frm_Imp_Adm_Requerimento003 := TFrm_Imp_Adm_Requerimento003.Create(Self);
      Frm_Imp_Adm_Requerimento003.QuickRep1.Preview;
      Frm_Imp_Adm_Requerimento003.Release;
      Fdt_principal2.spc_cons_adm_beneficiario002.close;
    end;
    2 : begin
      if CriticaParametros then
         Exit;
      if TitReq = 0 then
        Dlg_Alerta('É necessário selecionar um Dependente!',self)
      else
      CarregaCamposReq('Dependente - Filho Inválido - DECL.ECONÔMICA');
    end;
    3 : begin
      if CriticaParametros then
      Exit;
      if TitReq = 0 then
        Dlg_Alerta('É necessário selecionar um Dependente!',self)
      else
      CarregaCamposReq('Dependente - Menor Sob Guarda - DECL.ECONÔMICA');
    end;
    4 : begin
      if CriticaParametros then
      Exit;
      if TitReq = 0 then
        Dlg_Alerta('É necessário selecionar um Dependente!',self)
      else
      CarregaCamposReq('Dependente - Menor sob Guarda - QUEST.');
    end;
    5: begin
       Frm_Bas_Impressao.showReport(4211);
       end;
    6: begin
       if cbx_cod_TipoDependente.ValueItem > 0 then
          if cbx_cod_grauparent.ItemIndex = -1 then
             begin
             Dlg_Alerta('É necessário selecionar um Grau de Parentesco !', Self);
             TabSheet1.SetFocus;
             cbx_cod_grauparent.SetFocus;
             Exit;
             end;
       if cbx_cod_TipoDependente.ValueItem = 1 then
          begin
          if (cbx_cod_grauparent.ValueItem <> 1) and (cbx_cod_grauparent.ValueItem <> 2) and
             (cbx_cod_grauparent.ValueItem <> 3) and (cbx_cod_grauparent.ValueItem <> 4) and
             (cbx_cod_grauparent.ValueItem <> 5) and (cbx_cod_grauparent.ValueItem <> 6) and
             (cbx_cod_grauparent.ValueItem <> 10) and (cbx_cod_grauparent.ValueItem <> 25) then
             begin
             Dlg_Alerta('Esse grau de parentesco não se enquadra como Dependente !', Self);
             TabSheet1.SetFocus;
             cbx_cod_tipodependente.SetFocus;
             Exit;
             end;
          end;
       with Fdt_principal4.spc_cons_adm_verdocingresso do
       begin
         close;
         ParamByName('@cod_tipodependente').AsString := IntToStr(cbx_cod_tipodependente.ValueItem);
         ParamByName('@cod_grauparent').AsString := '0';
         if ckb_pensionista.Checked = True then
            begin
            Frm_Bas_Impressao.FCampo_Topo := 'RELAÇÃO DOS DOCUMENTOS OBRIGATÓRIOS PARA ADESÃO DE ' + UpperCase(ckb_pensionista.Caption);
            ParamByName('@cod_pensionista').AsString := '1';
            end
         else
            begin
            Frm_Bas_Impressao.FCampo_Topo := 'RELAÇÃO DOS DOCUMENTOS OBRIGATÓRIOS PARA ADESÃO DE ' + UpperCase(cbx_cod_tipodependente.Text);
            ParamByName('@cod_pensionista').AsString := '0';
            end;
         if cbx_cod_tipodependente.ValueItem > 0 then
            begin
            ParamByName('@cod_grauparent').AsString := IntToStr(cbx_cod_grauparent.ValueItem);
            Frm_Bas_Impressao.FCampo_Topo := Frm_Bas_Impressao.FCampo_Topo + ' - ' + UpperCase(cbx_cod_grauparent.Text);
            if cbx_cod_TipoDependente.ValueItem > 1 then
               begin
               if (cbx_cod_grauparent.ValueItem <> 2) and
                  (cbx_cod_grauparent.ValueItem <> 3) and (cbx_cod_grauparent.ValueItem <> 4) and
                  (cbx_cod_grauparent.ValueItem <> 5) and (cbx_cod_grauparent.ValueItem <> 6) and
                  (cbx_cod_grauparent.ValueItem <> 10) and (cbx_cod_grauparent.ValueItem <> 25) then
                  ParamByName('@cod_grauparent').AsString := '99';
               end;
            end;
       end;
       Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal4.spc_cons_adm_verdocingresso;
       Frm_Bas_Impressao.showReport(4217);
       Fdt_principal4.spc_cons_adm_verdocingresso.close;
       end;
    7: begin
       if CriticaParametros then
          Exit;
       with Fdt_principal2.spc_cons_adm_beneficiario002 do
       begin
         close;
         ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
         ParamByName('@titulacartei_ben').AsString := '0';
         ParamByName('@tipo_sit').AsString := '1';
         open;
         if Fdt_principal2.spc_cons_adm_beneficiario002.RecordCount = 0 then
            begin
            Dlg_Alerta('Inscrição Cancelada !', self);
            Exit;
            end;
         Fdt_principal2.spc_cons_adm_beneficiario002.First;            
         Frm_Bas_Impressao.FCampo_Proc := FieldByName('processo_ben').AsString;
         Frm_Bas_Impressao.FCampo1 := FieldByName('inscricao_ben').AsString;
         Frm_Bas_Impressao.FCampo2 := FieldByName('nome_ben').AsString;
      end;
      Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal2.spc_cons_adm_beneficiario002;
      Frm_Bas_Impressao.FCampo_Topo := 'TERMO DE RESPONSABILIDADE';
      Frm_Bas_Impressao.showReport(4213);
      end;
  end;

  case Rdg_Farmacia.ItemIndex of
    0 : begin
      if CriticaParametros then
      Exit;
      with Fdt_principal2.spc_cons_adm_beneficiario002 do
      begin
        close;
        ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
        ParamByName('@titulacartei_ben').AsString := '0';
        open;
      end;
      Frm_Imp_Adm_Requerimento002:= TFrm_Imp_Adm_Requerimento002.Create(Self);
      Frm_Imp_Adm_Requerimento002.QRLabel1.Caption := 'Ilmo Sr. Chefe da Seção Farmacêutica do ';
      Frm_Imp_Adm_Requerimento002.QuickRep1.Preview;
      Frm_Imp_Adm_Requerimento002.Release;
      Fdt_principal2.spc_cons_adm_beneficiario002.close;
    end;
    1 : begin
      if CriticaParametros then
      Exit;
      with Fdt_principal2.spc_cons_adm_beneficiario002 do
      begin
        close;
        ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
        ParamByName('@titulacartei_ben').AsString := '0';
        open;
        Frm_Bas_Impressao.FCampo_Proc := FieldByName('processo_ben').AsString;
      end;
      Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal2.spc_cons_adm_beneficiario002;
      DB_OpenSQL('select texto_txr, titulo_txr from tbl_textoRequerimento where cod_textoRequerimento = 12');
      Frm_Bas_Impressao.FCampo1 := (Tab.FieldByName('texto_txr').AsString);
      Frm_Bas_Impressao.FCampo_Topo := (Tab.FieldByName('titulo_txr').AsString);
      Frm_Bas_Impressao.showReport(4159);
      Fdt_principal2.spc_cons_adm_beneficiario002.close;
      end;
    end;

  case Rdg_Medico.ItemIndex of
    0 : begin
      if CriticaParametros then
         Exit;
      with Fdt_principal2.spc_cons_adm_beneficiario002 do
      begin
        close;
        ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
        ParamByName('@titulacartei_ben').AsString := '0';
        open;
      end;
      Frm_Imp_Adm_Requerimento002 := TFrm_Imp_Adm_Requerimento002.Create(Self);
      Frm_Imp_Adm_Requerimento002.QRLabel1.Caption:= 'Ilmo Sr. Diretor de Assistência a Saúde do ';
      Frm_Imp_Adm_Requerimento002.QuickRep1.Preview;
      Frm_Imp_Adm_Requerimento002.Release;
      Fdt_principal2.spc_cons_adm_beneficiario002.close;
    end;
    1 : begin
      if CriticaParametros then
         Exit;
      if DBG_Itens.SelectedRows.Count > 0 then
         begin
         for i:= 0 to DBG_Itens.SelectedRows.Count-1 do
           begin
           DBG_Itens.DataSource.DataSet.GotoBookmark(pointer(DBG_Itens.SelectedRows.Items[i]));
           if DBG_Itens.SelectedRows.Count < 5 then
              WPacientes:= WPacientes + DBG_Itens.DataSource.DataSet.FieldByName('nome_ben').AsString + #13 + '                   '
           else
              WPacientes:= WPacientes + DBG_Itens.DataSource.DataSet.FieldByName('nome_ben').AsString + ', ';
           end;
         end;
    AtualizaFavorecido;
// Atualizar Endereço
      Hide;
      Frm_Mov_2063:= TFrm_Mov_2063.Create(Self);
      Frm_Mov_2063.wCod_Beneficiario := wCod_Beneficiario;
      Frm_Mov_2063.wCod_Favorecido := wCod_Favorecido;
      Frm_Mov_2063.Wtit:= 0;
      Frm_Mov_2063.ShowModal;
      Frm_Mov_2063.Release;
      Show;

      if wCod_Beneficiario = '' then
         wCod_Beneficiario:= wCod_Beneficiario1;
      wCod_Favorecido:= wCod_Beneficiario;
      Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso;
      Frm_Bas_Impressao.FCampo_Proc:= '_______________________________________________________________';
      Frm_Bas_Impressao.FCampo8:= '_______________________________________________________________';
      Frm_Bas_Impressao.FCampo9:= '_____________________________________________________________________________';
      Frm_Bas_Impressao.FCampo10:= '_______________________';
      Frm_Bas_Impressao.FCampo11:= '_____________________________________';
// Se existe pelo menos uma conta
      if DB_OpenSQL('select cod_contacorrente, agencia_ctc, digAgencia_ctc, contaCorrente_ctc, nome_bco, nome_ben, cpf_ben from tbl_contacorrente c '+
                    'inner join tbl_banco bc on bc.cod_banco = c.banco_ctc '+
                    'inner join tbl_beneficiario b on b.cod_beneficiario = c.cod_beneficiario '+
                    'where c.cod_beneficiario = ' + wCod_Beneficiario + ' and c.contaprincipal_ctc = 1') > 0 then
         Begin
         edt_cod_contacorrente.Text:= Tab.FieldByName('cod_contacorrente').Text;
         if not Dlg_YesNo('DADOS DA CONTA CORRENTE'+ #13+
                          'Favorecido: ' + Tab.FieldByName('nome_ben').AsString + #13 +
                          'Banco: ' + Copy(Tab.FieldByName('nome_bco').AsString,1,20) + #13 +
                          'Agência: ' + Tab.FieldByName('agencia_ctc').AsString + '-' + Tab.FieldByName('digAgencia_ctc').AsString + #13 +
                          'Conta: ' + Tab.FieldByName('contaCorrente_ctc').AsString + #13 +
                          'Dados Corretos ?', Self) then
            begin
            with Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso do
               begin
               Close;
               ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
               ParamByName('@titulacartei_ben').AsString := IntToStr(TitReq);
               ParamByName('@cod_beneficiario2').AsString := IntToStr(WPaciente);
               ParamByName('@cod_contacorrente').AsString := edt_cod_contacorrente.text;
               Open;
               end;
            end
         else
            begin
            Frm_Bas_Impressao.FCampo_Proc:= Tab.FieldByName('nome_ben').Text;
            Frm_Bas_Impressao.FCampo8:= Tab.FieldByName('cpf_ben').Text;
            Frm_Bas_Impressao.FCampo9:= Tab.FieldByName('nome_bco').Text;
            Frm_Bas_Impressao.FCampo10:= Tab.FieldByName('agencia_ctc').Text + '-' + Tab.FieldByName('digAgencia_ctc').Text;
            Frm_Bas_Impressao.FCampo11:= Tab.FieldByName('contaCorrente_ctc').Text;
            with Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso do
               begin
               Close;
               ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
               ParamByName('@titulacartei_ben').AsString := IntToStr(TitReq);
               ParamByName('@cod_beneficiario2').AsString := IntToStr(WPaciente);
               ParamByName('@cod_contacorrente').AsString := edt_cod_contacorrente.text;
               Open;
               if Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('nome_bco').Text <> '' then
                  Frm_Bas_Impressao.FCampo_Proc:= Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('nome_favorecido').Text;
               if Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('cpf_favorecido').Text <> '' then
                  Frm_Bas_Impressao.FCampo8:= Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('cpf_favorecido').Text;
               if Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('nome_bco').Text <> '' then
                  Frm_Bas_Impressao.FCampo9:= Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('nome_bco').Text;
               if Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('agencia_ctc').Text <> '' then
                  Frm_Bas_Impressao.FCampo10:= Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('agencia_ctc').Text + '-' +
                                               Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('digAgencia_ctc').Text;
               if Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('contaCorrente_ctc').Text <> '' then
                  Frm_Bas_Impressao.FCampo11:= Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('contaCorrente_ctc').Text;
               end;
         End;
            end
      else
        begin
        with Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso do
           begin
           Close;
           ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
           ParamByName('@titulacartei_ben').AsString := IntToStr(TitReq);
           ParamByName('@cod_beneficiario2').AsString := IntToStr(WPaciente);
           ParamByName('@cod_contacorrente').AsString := edt_cod_contacorrente.text;
           Open;
           end;
        end;
//    Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso;
      Frm_Bas_Impressao.FCampo1:= Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('nome_ben').Text;
      Frm_Bas_Impressao.FCampo2:= Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('inscricao_ben').Text;
      Frm_Bas_Impressao.FCampo3:= Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('descricao_pla').Text;
      Frm_Bas_Impressao.FCampo4:= WPacientes;
      Frm_Bas_Impressao.FCampo5:= Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('fonecel').Text + ' / ' +
                                  Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('foneresi').Text + ' / ' +
                                  Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('fonecome').Text;
      Frm_Bas_Impressao.FCampo7:= Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.FieldByName('email').Text;
      DB_OpenSQL('select nome_usu from tbl_usuario where cod_usuario = ' + IntToStr(FCod_usuario));
      Frm_Bas_Impressao.FCampo6 := Str_PrimeiraLetraMaiuscula(Tab.FieldByName('nome_usu').AsString);
      Fdt_principal2.spc_cons_adm_requerimentopedidoreembolso.Close;

      Frm_Bas_Impressao.showReport(4207);
      cbx_cod_contacorrente.ItemIndex:= -1;
      cbx_cod_beneficiario.ItemIndex:= -1;
      edt_inscricao_ben.Text:= '';
      edt_carteira.Text:= '';
      edt_nome.Text:= '';
      edt_cod_contacorrente.Text:= '';
      pnl_alerta.Visible:= False;
      Wopcao:= 1;
      pnl_pacientes.Visible:= False;
      if WIC = 'I' then
         edt_inscricao_ben.SetFocus
      else
         begin
         edt_carteirinha.SetFocus;
         pnl_pacientes.Visible:= False;
         Rdg_Medico.ItemIndex:= -1;
         end;
    end;
    2 : begin
        Frm_Bas_Impressao.showReport(4208);
        end;
   end;
  cbx_cod_textoRequerimento.ItemIndex:= -1;
  edt_inscricao_ben.Text:= '';
  edt_cod_beneficiario.Text:= '';
  wCod_Beneficiario:= '';
  edt_entrada.Text:= '';
  edt_carteirinha.Text:= '';
end;

procedure TFrm_Rel_Requerimento001.edt_carteirinhaExit(Sender: TObject);
begin
  inherited;
  if Wopcao = 1 then
     begin
     AtualizaFavorecido;
     Rdg_Medico.ItemIndex:= 1;
     pnl_pacientes.Visible:= True;
     end;
end;

end.

