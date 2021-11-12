unit Cad_Geral;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, DCChoice, StdCtrls, jpeg;

type
  TFrm_Cad_Geral = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    Panel1: TPanel;
    edt_nome_con: TDCEdit;
    Panel5: TPanel;
    edt_cnpj_con: TDCEdit;
    Panel6: TPanel;
    edt_razao_con: TDCEdit;
    edt_processo_con: TDCEdit;
    PageControl: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    GroupBox1: TGroupBox;
    Panel7: TPanel;
    edt_nomedirecao_con: TDCEdit;
    Panel8: TPanel;
    edt_fonedirecao_con: TDCEdit;
    Panel9: TPanel;
    edt_registrodirecao_con: TDCEdit;
    GroupBox2: TGroupBox;
    Panel10: TPanel;
    edt_nomecontato_con: TDCEdit;
    Panel11: TPanel;
    edt_fonecont1_con: TDCEdit;
    Panel12: TPanel;
    edt_faxcont_con: TDCEdit;
    edt_fonecont2_con: TDCEdit;
    GroupBox3: TGroupBox;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    edt_dtassinatura_con: TDCDateEdit;
    edt_dtrenovacao_con: TDCDateEdit;
    DCEdit11: TDCEdit;
    GroupBox4: TGroupBox;
    mem_obs_con: TMemo;
    GroupBox5: TGroupBox;
    Panel16: TPanel;
    edt_enderecojur_con: TDCEdit;
    Panel17: TPanel;
    edt_bairrojur_con: TDCEdit;
    edt_cidadejur_con: TDCEdit;
    Panel18: TPanel;
    edt_cepjur_con: TDCEdit;
    cbx_cod_ufjur_con: TDCComboBox;
    GroupBox6: TGroupBox;
    Panel19: TPanel;
    edt_enderecocor_con: TDCEdit;
    Panel20: TPanel;
    edt_bairrocor_con: TDCEdit;
    edt_cidadecor_con: TDCEdit;
    Panel21: TPanel;
    edt_cepcor_con: TDCEdit;
    cbx_cod_ufcor_con: TDCComboBox;
    Panel22: TPanel;
    edt_site_con: TDCEdit;
    Panel23: TPanel;
    edt_email_con: TDCEdit;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    GroupBox7: TGroupBox;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    chb_autormedicamento_con: TCheckBox;
    chb_autormatmed_con: TCheckBox;
    chb_constamanual_con: TCheckBox;
    GroupBox8: TGroupBox;
    Panel35: TPanel;
    LsB_Especialidade: TListBox;
    cbx_cod_espmedamb: TDCComboBox;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    Label1: TLabel;
    Label2: TLabel;
    edt_nomereduzido_con: TDCEdit;
    edt_porte1_pan: TDCFloatEdit;
    edt_porte2_pan: TDCFloatEdit;
    edt_porte3_pan: TDCFloatEdit;
    edt_porte4_pan: TDCFloatEdit;
    edt_porte5_pan: TDCFloatEdit;
    edt_porte6_pan: TDCFloatEdit;
    edt_porte7_pan: TDCFloatEdit;
    edt_porte8_pan: TDCFloatEdit;
    Label3: TLabel;
    LsB_Plano: TListBox;
    Label4: TLabel;
    cbx_cod_plano: TDCComboBox;
    PDJButton3: TPDJButton;
    PDJButton4: TPDJButton;
    edt_dtcadastro_con: TDCDateEdit;
    pnl_alerta: TPanel;
    edt_cod_sitconveniado: TDCEdit;
    btn_situacao: TPDJButton;
    edt_dtsituacao_con: TDCDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure edt_nomereduzido_conEnter(Sender: TObject);
    procedure btn_situacaoClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux : String ;
    procedure CarregarCombos;
    procedure MostrarEspecialidade(cod_conveniado : string);
    procedure MostrarPlano(cod_conveniado : string);
    procedure AtualizarSitConveniado(sit:string);
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_LimparTela;                           override ;
    function BAS_SalvarInsert(Frm:TForm) : boolean ;    override ;
    function BAS_SalvarUpdate(Frm:TForm) : boolean ;    override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BAS_Cancelar(Frm:Tform);                  override ;
    procedure BAS_Novo(Frm:Tform);                      override ;
    procedure BotoesOnOff(b:boolean);                   override ;
  end;

var
  Frm_Cad_Geral: TFrm_Cad_Geral;

implementation
uses Constantes, Fun_Obj, Fun_Str, Fun_DB, DLG_Mensagem, Mov_SitConveniado;
{$R *.DFM}

procedure TFrm_Cad_Geral.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Conveniados' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FEditAlteracao:= 'edt_nome_con' ;
  FUltFoco      := 'edt_site_con' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  FCamposAux    := 'edt_cod_conveniado, '+
  'edt_porte1_pan, edt_porte2_pan, edt_porte3_pan, edt_porte4_pan, edt_porte5_pan, edt_porte6_pan, edt_porte7_pan, edt_porte8_pan';
  FTabelaAux    := 'tbl_porteanest';
  inherited;

end;

procedure TFrm_Cad_Geral.BotoesOnOff(b:boolean);
begin
  inherited;
  if FStatus <> FST_Novo then begin
    btn_situacao.enabled := b ;
  end;
  pnl_alerta.Visible := b ;
end;

procedure TFrm_Cad_Geral.AtualizarSitConveniado(sit:string);
begin
  if sit <> '' then begin
    DB_OpenSql('select nome_stc, tipo_stc from tbl_sitconveniado where cod_sitconveniado = '+sit);
    pnl_alerta.Caption := '***  '+'Situação : '+Tab.FieldByName('nome_stc').AsString+'  ***';
    case Tab.FieldByName('tipo_stc').AsInteger of
      1 : pnl_alerta.color := clYellow;
      2 : pnl_alerta.color := clRed;
    end;
    pnl_alerta.visible := Tab.FieldByName('tipo_stc').AsInteger > 0 ;
    DB_ClearSQL;
  end;
end;

procedure TFrm_Cad_Geral.BAS_Novo(Frm:Tform);
begin
  inherited;
    PageControl.Visible := true ;
    edt_dtcadastro_con.date := date ;
    edt_cod_sitconveniado.text := '1' ;
    LsB_Especialidade.Items.Clear;
    LsB_Plano.Items.Clear;
    CarregarCombos;
end;

procedure TFrm_Cad_Geral.BAS_LimparTela;
begin
  inherited;
//  edt_dtinscricao_ben.Date := date ;
//  edt_dtsituacao_ben.text := datetostr(date) ;
//  edt_dtcadastro_ben.text := datetostr(date) ;
  cbx_cod_ufjur_con.text := 'SP' ;
  cbx_cod_ufcor_con.text := 'SP' ;
  PageControl.ActivePageIndex := 0 ;
end;

function TFrm_Cad_Geral.BAS_SalvarInsert(Frm:TForm): boolean ;
var
  conv : string ;
begin
//  conv := edt_cod_conveniado.text ;
  conv := STR_RemoveChar(edt_cod_conveniado.text,'-');
  edt_cod_conveniado.text := conv ;
  result := DB_Insert(Frm) ;
  edt_cod_conveniado.text := conv ;
  if result then
    result := DB_InsertByFields(self, FCamposAux, FTabelaAux);
  PageControl.Visible := false ;
end;

function TFrm_Cad_Geral.BAS_SalvarUpdate(Frm:TForm): boolean ;
begin
  result := DB_Update(Frm) ;
  if result then
    result := DB_UpdateByFields(self, FCamposAux, FTabelaAux);
  PageControl.Visible := false ;
end;

procedure TFrm_Cad_Geral.CarregarCombos;
begin
  Obj_LoadCombo(Self, 'cbx_cod_ufjur_con', 'sigla_uf', 'cod_uf', 'tbl_uf');
  Obj_LoadCombo(Self, 'cbx_cod_ufcor_con', 'sigla_uf', 'cod_uf', 'tbl_uf');
  BAS_CarregarCombo('cbx_cod_espmedamb','nome_esp');
  BAS_CarregarCombo('cbx_cod_plano','nome_pla');
end;

procedure TFrm_Cad_Geral.MostrarEspecialidade(cod_conveniado : string);
begin
  DB_OpenSQL('select c.cod_espmedamb, e.nome_esp from tbl_espmedamb e, tbl_conveniadoespmed c '+
  'where e.cod_espmedamb = c.cod_espmedamb and c.cod_conveniado = '+cod_conveniado+
  ' order by c.cod_espmedamb');
  LsB_Especialidade.Items.Clear;
  while not Tab.Eof do
  begin
    LsB_Especialidade.Items.Add(STR_AddZeros(Tab.FieldByName('cod_espmedamb').AsString, 4)+
    '  -  '+STR_AddSpaces(Tab.FieldByName('nome_esp').AsString, 50));
    Tab.Next;
  end;
end;

procedure TFrm_Cad_Geral.MostrarPlano(cod_conveniado : string);
begin
  DB_OpenSQL('select c.cod_plano, e.nome_pla from tbl_plano e, tbl_planoconveniado c '+
  'where e.cod_plano = c.cod_plano and c.cod_conveniado = '+cod_conveniado+
  ' order by c.cod_plano');
  LsB_Plano.Items.Clear;
  while not Tab.Eof do
  begin
    LsB_Plano.Items.Add(STR_AddZeros(Tab.FieldByName('cod_plano').AsString, 4)+
    '  -  '+STR_AddSpaces(Tab.FieldByName('nome_pla').AsString, 50));
    Tab.Next;
  end;
end;
{
procedure TFrm_Cad_Conveniado.MostrarItens(cod_conveniado : string);
begin
  DB_OpenSQL('select c.cod_itemservico, e.nome_its from tbl_itemservico e, tbl_itemhonorario c '+
  'where e.cod_itemservico = c.cod_itemservico and c.cod_conveniado = '+cod_conveniado+
  ' order by c.cod_itemservico');
  LsB_Itens.Items.Clear;
  while not Tab.Eof do
  begin
    LsB_Itens.Items.Add(STR_AddZeros(Tab.FieldByName('cod_itemservico').AsString, 8)+
    '  -  '+STR_AddSpaces(Tab.FieldByName('nome_its').AsString, 50));
    Tab.Next;
  end;
end;
}
procedure TFrm_Cad_Geral.BAS_Alterar(Frm:Tform);
  var
    conv : string ;
begin
  CarregarCombos;
  inherited ;
  if FStatus = FST_Alteracao then begin
    conv := edt_cod_conveniado.text ;
    edt_cod_conveniado.text := STR_RemoveChar(edt_cod_conveniado.text, '-');
    DB_OpenTableByFields(self, FCamposAux, FTabelaAux);
    MostrarEspecialidade(edt_cod_conveniado.text);
    MostrarPlano(edt_cod_conveniado.text);
    edt_cod_conveniado.text := conv ;
    PageControl.Visible := true ;
    AtualizarSitConveniado(edt_cod_sitconveniado.text);
  end;
end;

procedure TFrm_Cad_Geral.BAS_Cancelar(Frm:TForm);
begin
  inherited;
  if FStatus = FST_Normal then
    PageControl.Visible := false ;
end;

function TFrm_Cad_Geral.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
//  if (not BAS_ValidarCampo(edt_cod_empresa.name, 'O código da empresa deve ser preenchido !', VLD_Preenchido )) or
//  (not BAS_ValidarCampo(edt_nome_emp.name, 'O nome da empresa deve ser preenchido !', VLD_Preenchido )) or
//  (not BAS_ValidarCampo(edt_descricao_emp.name, 'O nome completo da empresa deve ser preenchido !', VLD_Preenchido )) then
//    Exit;
  result := false ;
end;

procedure TFrm_Cad_Geral.edt_cod_conveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
   btn_alterarClick(self);
end;

procedure TFrm_Cad_Geral.FormShow(Sender: TObject);
begin
  inherited;
  carregarcombos;
end;

procedure TFrm_Cad_Geral.btn_salvarClick(Sender: TObject);
begin
  edt_cod_conveniado.text := STR_RemoveChar(edt_cod_conveniado.text, '-');
  inherited;

end;

procedure TFrm_Cad_Geral.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  PageControl.Visible := false ;
end;

procedure TFrm_Cad_Geral.PDJButton1Click(Sender: TObject);
  function VerCod_Especialidade(c:string): boolean ;
  var
    i : integer ;
  begin
    result := false ;
    for i := 0 to LsB_Especialidade.Items.Count-1 do
      if Trim(Copy(LsB_Especialidade.Items.Strings[i],1,4)) = c then
        result := true ;
  end;
var
  conven, v : string ;
begin
  inherited;
  if cbx_cod_espmedamb.text = '' then begin
    Dlg_Alerta('Selecione uma Especialidade Médica !', self);
    cbx_cod_espmedamb.setfocus;
    Exit ;
  end;
{
  if VerCod_Especialidade(cbx_cod_espmedamb.ValueItem) then begin
    Dlg_Alerta('Essa Especialidade já foi selecionado anteriormente !', self);
    cbx_cod_espmedamb.setfocus;
    Exit ;
  end;
}
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  DB_ExecSql('insert into tbl_conveniadoespmed values ('+conven+', '+
  cbx_cod_espmedamb.valueItem+')');
  cbx_cod_espmedamb.text := '' ;
  MostrarEspecialidade(conven);
end;

procedure TFrm_Cad_Geral.PDJButton2Click(Sender: TObject);
var
  conven : string ;
begin
  inherited;
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  DB_ExecSql('delete from tbl_conveniadoespmed where cod_conveniado = '+conven+
  ' and cod_espmedamb = '+Trim(Copy(LsB_Especialidade.Items.Strings[LsB_Especialidade.ItemIndex],1,4)));
  MostrarEspecialidade(conven);
end;

procedure TFrm_Cad_Geral.PDJButton3Click(Sender: TObject);
var
  conven, v : string ;
begin
  inherited;
  if cbx_cod_plano.text = '' then begin
    Dlg_Alerta('Selecione um Plano !', self);
    cbx_cod_plano.setfocus;
    Exit ;
  end;
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  DB_ExecSql('insert into tbl_planoconveniado values ('+conven+', '+
  cbx_cod_plano.valueItem+')');
  cbx_cod_plano.text := '' ;
  MostrarPlano(conven);
end;

procedure TFrm_Cad_Geral.PDJButton4Click(Sender: TObject);
var
  conven : string ;
begin
  inherited;
  conven := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
  DB_ExecSql('delete from tbl_planoconveniado where cod_conveniado = '+conven+
  ' and cod_plano = '+Trim(Copy(LsB_Plano.Items.Strings[LsB_Plano.ItemIndex],1,4)));
  MostrarPlano(conven);
end;

procedure TFrm_Cad_Geral.edt_nomereduzido_conEnter(Sender: TObject);
begin
  inherited;
  if FStatus = fst_novo then begin
    edt_cod_conveniado.text := copy(STR_RemoveChar(edt_cod_conveniado.text,'-'),2,5)+'-'+
    STR_GeraDigito11(STR_RemoveChar(edt_cod_conveniado.text,'-'));
    if edt_cod_conveniado.text <> '' then begin
      if DB_OpenSQL('select cod_conveniado from tbl_conveniado where cod_conveniado = '+
      STR_RemoveChar(edt_cod_conveniado.text,'-')) > 0 then begin
        Dlg_Alerta('Código de Conveniado informado já cadastrado !', self);
        edt_cod_conveniado.setfocus;
      end;
    end;
  end;
end;

procedure TFrm_Cad_Geral.btn_situacaoClick(Sender: TObject);
var
 c : string ;
begin
  inherited;
  if Sit_AlterarSituacaoConven(edt_cod_conveniado.text, edt_nomereduzido_con.text,
  edt_dtsituacao_con.text, edt_cod_sitconveniado.text, Self) then begin
      c := Fsituacao;
      edt_dtsituacao_con.text := Fdtsituacao ;
  end;
  if c <> '' then
    edt_cod_sitconveniado.text := c ;
    EscreveLog(btn_situacao.Name); 
end;

procedure TFrm_Cad_Geral.btn_novoClick(Sender: TObject);
begin
  inherited;
  pnl_alerta.Visible := false ;
end;

end.
