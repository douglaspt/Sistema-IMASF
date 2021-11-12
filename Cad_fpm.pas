unit Cad_fpm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BComboBox, BEdit,
  Buttons, BChoiceEdit, BEditButton, DCChoice, Grids, Db, DBGrids;

type
  TFrm_Cad_fpm = class(TFrm_Bas_Cadastro)
    btn_relatorio: TPDJButton;
    btn_beneficiario: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    edt_cod_fpm: TEditButton;
    Panel6: TPanel;
    edt_inscricao_ben: TBEdit;
    edt_matricula_mte: TBEdit;
    edt_digito_mte: TBEdit;
    Panel1: TPanel;
    edt_nome_fpm: TBEdit;
    edt_cpf_fpm: TBEdit;
    Panel9: TPanel;
    cbx_cod_situacaodpd: TBComboBox;
    cbx_cod_situacao_fpm: TDCComboBox;
    Panel37: TPanel;
    cbx_cod_empresafolha: TBComboBox;
    edt_cod_setorfpm: TBEdit;
    Panel7: TPanel;
    cbx_cod_categoriadpd: TBComboBox;
    edt_funcaoemp_seg: TBEdit;
    Panel5: TPanel;
    gg: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_cod_beneficiario: TBEdit;
    edt_nome: TEdit;
    edt_plano: TEdit;
    edt_inscricao: TEdit;
    edt_nascimento: TEdit;
    edt_situacao: TEdit;
    PageControl: TPageControl;
    TabSheet5: TTabSheet;
    Panel17: TPanel;
    edt_bairro_fpm: TBEdit;
    Panel16: TPanel;
    edt_endereco_fpm: TBEdit;
    Panel18: TPanel;
    edt_cep_fpm: TBEdit;
    cbx_cod_uf: TBComboBox;
    Panel8: TPanel;
    edt_foneresi_fpm: TBEdit;
    edt_fonecome_fpm: TBEdit;
    pnl_conveniado: TPanel;
    edt_dtsitemp_fpm: TDCDateEdit;
    edt_dtcadastro_fpm: TDCDateEdit;
    edt_dtsistema_fpm: TDCDateEdit;
    edt_cidade_fpm: TBEdit;
    edt_complemento_fpm: TBEdit;
    edt_numero_fpm: TBEdit;
    TabSheet3: TTabSheet;
    Panel10: TPanel;
    edt_banco_fpm: TBEdit;
    edt_contaCorrente_fpm: TBEdit;
    edt_agencia_fpm: TBEdit;
    edt_digAgencia_fpm: TBEdit;
    Panel11: TPanel;
    edt_vlbase_mte: TBEdit;
    edt_obs_fpm: TBEdit;
    edt_ano_mes: TBEdit;
    edt_dtadmissao_fpm: TDCDateEdit;
    stg_audi: TStringGrid;
    TabSheet4: TTabSheet;
    dbg_dependente: TDBGrid;
    dts_dependente: TDataSource;
    btn_cadBenefi: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_relatorioClick(Sender: TObject);
    procedure btn_beneficiarioClick(Sender: TObject);
    procedure edt_cod_fpmButtonClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure cbx_cod_empresafolhaExit(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btn_alterarClick(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure btn_cadBenefiClick(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FCamposCart,
    FTabelaCart : String ;
    procedure CarregarCombos;
    procedure MostrarEspecialidade(cod_conveniado : string);
    procedure MostrarPlano(cod_conveniado : string);
  public
    { Public declarations }
    wCod_Beneficiario : String ;
    procedure BotoesOnOff(b:boolean);                   override ;
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_LimparTela;                           override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BAS_Cancelar(Frm:Tform);                  override ;
    procedure BAS_Novo(Frm:Tform);                      override ;
    procedure BAS_Salvar(Frm:Tform);                    override ;
  end;

var
  Frm_Cad_fpm: TFrm_Cad_fpm;
  ChaveExp: Integer;

implementation

uses Constantes, Fun_Obj, Fun_Str, Fun_DB, DLG_Mensagem, Mov_SitConveniado, Imp_Adm_FichaServidor001,
     dtm_principal2, dtm_principal, Cad_Dependente, Cad_Segurado, Fun_Acesso, Fun_Beneficiario, Fun_Desconto;

{$R *.DFM}

procedure TFrm_Cad_fpm.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro Geral de Funcionários Públicos Municipais' ;
  FEditChave    := 'edt_cod_fpm' ;
  FEditAlteracao:= 'edt_nome_fpm' ;
  FUltFoco      := 'edt_fonecome_fpm' ;
  FTitPesquisa  := 'Localizar Funcionário' ;
  FPesquisa     := 'cod_fpm, inscricao_ben, cod_empresafolha, matricula_mte, nome_fpm' ;
  FPesquisaTit  := 'Código, Inscrição, Empresa, Matrícula, Nome do Funcionário' ;
  FCamposCart   := 'edt_cod_beneficiario, '+
  'edt_dtemissao_car, edt_dtvalidade_car, edt_via_car';
  FTabelaCart   := 'tbl_carteira';
  inherited;
end;

procedure TFrm_Cad_fpm.BotoesOnOff(b:boolean);
begin
  inherited;
  btn_relatorio.Enabled := b ;
end;

procedure TFrm_Cad_fpm.BAS_Novo(Frm:Tform);
begin
  inherited;
  PageControl.Visible := true ;
  CarregarCombos;
  edt_nome.Text := '';
  edt_plano.Text := '';
  edt_inscricao.Text := '';
  edt_situacao.Text := '';
  edt_nascimento.Text := '';
  pnl_conveniado.Visible := false ;
  Obj_SetFormObjValueByName(self, cbx_cod_situacao_fpm.Name, 1);
  edt_cod_fpm.Enabled:= False;
  edt_matricula_mte.Enabled:= True;
  edt_digito_mte.Enabled:= True;
  cbx_cod_empresafolha.Enabled:= True;
  edt_inscricao_ben.SetFocus;
  edt_dtcadastro_fpm.Date := Date;
  edt_dtsistema_fpm.Date := Date;
end;

procedure TFrm_Cad_fpm.BAS_Salvar(Frm:Tform);
var
  x: Integer;
begin
  if BAS_ValidarCadastro then Exit ;
  if (cbx_cod_empresafolha.Text <> '') and (edt_matricula_mte.Text <> '') and (FStatus = FST_novo) then
    edt_cod_fpm.Text := cbx_cod_empresafolha.getStrItemValue+edt_matricula_mte.text;
  if not Dlg_YesNo(MSG_DB_CON_Salva, Self) then
     Exit ;
  DadosSaida:= LerDadosTela(Self);
  WMudancas:= '';
  edt_vlbase_mte.Text:= STR_SubstChar(STR_RemoveChar(edt_vlbase_mte.text,'.'), ',', '.');
  if FStatus = FST_Novo then begin
    if not BAS_SalvarInsert(Self) then
      Exit ;
  end else begin
    if not BAS_SalvarUpdate(Self) then begin
      Dlg_Erro('ATENÇÃO ! Ocorreu algum erro ao tentar salvar ! Não foi possível salvar', self);
      Exit ;
    end;
  end;
  edt_dtsistema_fpm.Date:= Date;
  For x:= 1 to High(DadosSaida) do
     if DadosEntrada[x] <> DadosSaida[x] then
        WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';
  if FTransacao then
    begin
    if WMudancas <> '' then
       GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, 'Situação Anterior ', WMudancas, 0);
    DB_Commit;
    end;
  BotoesOnOff(false);
  BAS_LimparTela;
  FStatus := FST_Normal;
  edt_cod_fpm.Enabled:= True;
end;

procedure TFrm_Cad_fpm.BAS_LimparTela;
begin
  inherited;
//  edt_dtinscricao_ben.Date := date ;
//  edt_dtsituacao_ben.text := datetostr(date) ;
//  edt_dtcadastro_ben.text := datetostr(date) ;
  PageControl.ActivePageIndex := 0 ;
  PageControl.Visible := false;
end;

procedure TFrm_Cad_fpm.CarregarCombos;
begin
  BAS_CarregarCombo('cbx_cod_uf', 'nome_uf');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_categoriadpd', 'nome_cdp');
  BAS_CarregarCombo('cbx_cod_situacaodpd', 'nome_sdp');
  cbx_cod_situacao_fpm.Clear;
  cbx_cod_situacao_fpm.Items.Add('Ativado');
  cbx_cod_situacao_fpm.Items.Add('Desativado');
  cbx_cod_situacao_fpm.ValItems.Add('1');
  cbx_cod_situacao_fpm.ValItems.Add('2');
end;

procedure TFrm_Cad_fpm.MostrarEspecialidade(cod_conveniado : string);
begin
end;

procedure TFrm_Cad_fpm.MostrarPlano(cod_conveniado : string);
begin
end;

procedure TFrm_Cad_fpm.BAS_Alterar(Frm:Tform);
var
  conv : string ;
begin
  CarregarCombos;
  inherited ;
  if FStatus = FST_Alteracao then begin
    PageControl.Visible := true ;
  end;
  if edt_inscricao_ben.Text = '0' then
     btn_beneficiario.Enabled := false
  else
     btn_beneficiario.Enabled := true;
  if edt_cod_beneficiario.text <> '' then
     begin
     DB_OpenSQL('select inscricao_ben, nome_ben, nome_sit, nome_pla, dtnascim_ben '+
     ' from tbl_beneficiario b, tbl_plano p, tbl_sitbeneficiario s '+
     ' where p.cod_plano = b.cod_plano and s.cod_sitbeneficiario = b.cod_sitbeneficiario and '+
     ' cod_beneficiario = '+edt_cod_beneficiario.text);
     edt_nome.Text := Tab.fieldbyname('nome_ben').AsString;
     edt_situacao.Text := Tab.fieldbyname('nome_sit').AsString;
     edt_plano.Text := Tab.fieldbyname('nome_pla').AsString;
     edt_inscricao.Text := Tab.fieldbyname('inscricao_ben').AsString;
     edt_nascimento.Text := Tab.fieldbyname('dtnascim_ben').AsString;
     pnl_conveniado.Visible := true ;
     DadosEntrada:= LerDadosTela(Self);
     end
  else
     begin
     edt_nome.Text := '';
     edt_plano.Text := '';
     edt_inscricao.Text := '';
     edt_situacao.Text := '';
     edt_nascimento.Text := '';
     pnl_conveniado.Visible := false ;
     end;
  edt_matricula_mte.Enabled:= False;
  edt_digito_mte.Enabled:= False;
  cbx_cod_empresafolha.Enabled:= False;
end;

procedure TFrm_Cad_fpm.BAS_Cancelar(Frm:TForm);
begin
  inherited;
  edt_cod_fpm.Enabled:= True;
end;

function TFrm_Cad_fpm.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_matricula_mte.name, 'A Matrícula deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_digito_mte.name, 'O Digito deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_fpm.name, 'O Nome deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O código da empresa deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_situacao_fpm.name, 'A Situação no IMASF deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  if FStatus = FST_Novo then
  begin
    if DB_OpenSQL('select cod_fpm from tbl_fpm where matricula_mte = '+edt_matricula_mte.Text+
    ' and cod_empresafolha = '+cbx_cod_empresafolha.getStrItemValue) > 0 then
    begin
      Dlg_Alerta('Matrícula já Cadastrada !',self);
      Exit;
    end;
  end;
  if edt_cod_beneficiario.text = '' then
    edt_cod_beneficiario.text := '0';
  if edt_inscricao_ben.text = '' then
    edt_inscricao_ben.text := '0';
  result := false ;
end;

procedure TFrm_Cad_fpm.FormShow(Sender: TObject);
begin
  inherited;
  carregarcombos;
  if wCod_Beneficiario <> '' then
    begin
    Frm_Cad_fpm.edt_cod_fpm.text := wCod_Beneficiario ;
    Frm_Cad_fpm.BAS_Alterar(Frm_Cad_fpm);
  end;
  btn_beneficiario.Visible:= not Obj_LocalizarFormAtivo(Frm_Cad_Segurado);
end;

procedure TFrm_Cad_fpm.btn_relatorioClick(Sender: TObject);
begin
  inherited;
  with Fdt_principal2.spc_cons_adm_fpm001 do
  begin
    close;
    ParamByName('@cod_fpm').AsString := edt_cod_fpm.text ;
    open;
  end;
  Frm_Imp_Adm_FichaServidor001 := TFrm_Imp_Adm_FichaServidor001.Create(Self);
  Frm_Imp_Adm_FichaServidor001.QuickRep1.Preview;
  Frm_Imp_Adm_FichaServidor001.Release;
  Fdt_principal2.spc_cons_adm_fpm001.close;
end;

procedure TFrm_Cad_fpm.btn_beneficiarioClick(Sender: TObject);
begin
  inherited;
  Hide;
  begin
    Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
    if edt_inscricao_ben.text <> '' then begin
      DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where titulacartei_ben = 0 '+
      ' and inscricao_ben = '+edt_inscricao_ben.text);
      Frm_Cad_Segurado.wCod_Beneficiario := tab.FieldByName('cod_beneficiario').AsString ;
    end;
    Frm_Cad_Segurado.ShowModal;
    Frm_Cad_Segurado.Release;
  end;
  Show;
  EscreveLog(btn_beneficiario.Name);
end;

procedure TFrm_Cad_fpm.edt_cod_fpmButtonClick(Sender: TObject);
begin
  inherited;
  if (FStatus <> FST_Novo) then
    btn_alterarClick(self)
  else
    begin
    SelectNext(ActiveControl,True,True);
    end;
end;

procedure TFrm_Cad_fpm.SpeedButton1Click(Sender: TObject);
var
  s : string;
begin
  if FStatus = FST_Alteracao then
  begin
    s := edt_cod_fpm.text;
    btn_salvarclick(self);
    inherited;
      DB_ExecSQL('update tbl_fpm set cod_beneficiario = null where cod_fpm = '+s);
  end;
end;

procedure TFrm_Cad_fpm.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 999999999;
  if edt_cod_beneficiario.Text <> '' then
     ChaveExp:= StrToInt(STR_RemoveChar(edt_cod_beneficiario.text,'-'));
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 1);
end;

procedure TFrm_Cad_fpm.cbx_cod_empresafolhaExit(Sender: TObject);
begin
  inherited;
  edt_digito_mte.Text := IntToStr(CalculaDigito(cbx_cod_empresafolha.getStrItemValue, edt_matricula_mte.Text));
end;

procedure TFrm_Cad_fpm.stg_audiDrawCell(Sender: TObject; ACol,
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

procedure TFrm_Cad_fpm.btn_alterarClick(Sender: TObject);
begin
  inherited;
  DadosEntrada:= LerDadosTela(Self);
end;

procedure TFrm_Cad_fpm.TabSheet4Show(Sender: TObject);
begin
  inherited;
    with Fdt_principal2.spc_cons_adm_arqDependente do begin
    close;
    ParamByName('@cod_empresa').AsString := cbx_cod_empresafolha.getStrItemValue;
    ParamByName('@matricula_mte').AsString := edt_matricula_mte.Text;
    ParamByName('@digito_mte').AsString := edt_digito_mte.Text;
    open;
  end;
end;

procedure TFrm_Cad_fpm.btn_cadBenefiClick(Sender: TObject);
var
  FTipoSegurado, FCod_empresa, Fcod_tipodependente, Fcod_sitbeneficiario,
  Forgemissorrg, Ftitulacartei, Fvlbase, Fcod_plano, Ftipocoberturaunimed,
  Fcod_ocorrenciaEdital, Fdtlimite_seg, Fcod_situacempr, Fdigito_ben, FProcesso,
  Fcod_setoremp, Fcod_formaadm, Funcaocomiss, FunidadeRH : String;
  result : boolean;
  Fdtinscricao : TDate;
begin
  inherited;
  //Obj_LoadCombo(Self,'cbx_cod_formaadm', 'nome_fad', 'cod_formaadm', 'tbl_formaadm where cod_categoriadpd < 3');
  Db_OpenSql('select cod_empresa from tbl_empresa where cod_empresafolha = '+cbx_cod_empresafolha.getStrItemValue);
  FCod_empresa := Tab.fieldByName('cod_empresa').AsString;
  Fcod_tipodependente := '0';
  Fcod_sitbeneficiario := '1';
  FTipoSegurado := '1';
  //edt_dtcadastro_ben.Date := date;
  //edt_dtinscricao_ben.Date := date;
  Forgemissorrg := 'SSP-SP';
  //edt_processo_ben.Text := '';
  Fdtinscricao := Date;
  Ftitulacartei := '0';
  if Fvlbase = '' then
    Fvlbase := '800,00';
//  edt_dtplano_ben.Date := Date;
  Fcod_plano := '1';
  Ftipocoberturaunimed := '0';
  Fcod_ocorrenciaEdital := '1001';
  Fdtlimite_seg := '12/31/2999';
  Fcod_situacempr := '1';//Ativo
  Fcod_setoremp := '0';//Não informado
  Fcod_formaadm := '10';//Sem Referências
  Funcaocomiss := '';
  FunidadeRH := '';
//  chb_mailing_ben.Checked := true;
  if edt_cod_beneficiario.Text <> '' then
  begin
    Dlg_Alerta('Beneficiário já Cadastrado!',self);
    Exit;
  end
  else
  begin
   // if CriticaParametros then Exit ;
    if not Dlg_YesNo(MSG_DB_CON_Salva, Self) then Exit ;

  //  Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, 28); //apagar essa linha depois
    DB_OpenSQL('select isnull(min(inscricao_ben),0) as inscricao_ben from aux_inscricaoVaga');
    edt_inscricao_ben.Text := tab.fieldByName('inscricao_ben').AsString;
    if edt_inscricao_ben.Text = '0' then
    begin
      DB_OpenSQL('select max(inscricao_ben)+1 from tbl_beneficiario where inscricao_ben < 99999');
      edt_inscricao_ben.Text := Tab.Fields[0].AsString;
    end;

    DB_BeginTrans;
    Fdigito_ben := STR_GeraDigito11(FTipoSegurado + Fcod_plano + STR_RightAlign(edt_inscricao_ben.text,#48,5) + STR_RightAlign(Ftitulacartei,#48,2)) ;
    //salva processo
    DB_OpenSQL('select isnull(max(processo_tmt),0) + 1 as processo_tmt from tbl_tramite'+
    ' where ano_tmt = '+FormatDateTime('yyyy',Date)+' and cod_corprocesso <> 6');
    FProcesso:= Tab.FieldByName('processo_tmt').AsString;
    FProcesso := FProcesso+'/'+FormatDateTime('yyyy',Date);
    result := DB_ExecSQL('insert into tbl_tramite (processo_tmt, ano_tmt, inscricao_ben, nome_ben,'+
    ' dtprocesso_tmt, cod_setorimasf, cod_corprocesso, assunto_tmt, interessado_tmt, cod_usuario, '+
    ' dtalteracao_tmt, matricula_tmt, digito_tmt) values ('+FProcesso+','+FormatDateTime('yyyy',Date)+
    ','+edt_inscricao_ben.Text+','''+edt_nome_fpm.Text+''', getdate(), 2, 5, ''PEDIDO DE INSCRIÇÃO'', '''+
    edt_nome_fpm.Text+''', '+IntToStr(FCod_Usuario)+', getdate(),'+edt_matricula_mte.Text+', '+
    edt_digito_mte.Text+')');
    //salva tbl_beneficiario
    result := DB_Insert(self);

    DB_OpenSQL('select max(cod_beneficiario) from tbl_beneficiario where inscricao_ben < 99999');
    edt_cod_beneficiario.text := Tab.Fields[0].AsString ;
    if result then
      DB_ExecSQL('delete from aux_inscricaoVaga where inscricao_ben = '+edt_inscricao_ben.Text);
    FProcesso := '';
    if result then
      result := Set_OcorrenciaEdital(edt_cod_beneficiario.text, edt_inscricao_ben.text, Ftitulacartei,
      Fcod_ocorrenciaEdital, DateToStr(Fdtinscricao), Get_MesReferenciaFolha('01/mm/yyyy'));

    //Salva tbl_segurado
    if edt_dtsitemp_fpm.Text = '' then
      edt_dtsitemp_fpm.Text := edt_dtadmissao_fpm.Text;
    if result then
      result := DB_ExecSQL('insert into tbl_segurado values ('+edt_cod_beneficiario.Text+','+
      Fcod_situacempr+','''+edt_funcaoemp_seg.Text+''','+Fcod_setoremp+','''+edt_fonecome_fpm.Text+''','+
      Fcod_formaadm+','+DB_FormatDataSQL(edt_dtadmissao_fpm.Text, ftDate)+','+
      DB_FormatDataSQL(edt_dtsitemp_fpm.Text,ftDate)+','+Funcaocomiss+','+edt_matricula_mte.Text+','+
      edt_digito_mte.Text+','+edt_matricula_mte.Text+','+edt_digito_mte.Text+','+
      FunidadeRH+','''+Fdtlimite_seg+'''');
    //Salva Matricula de entrada
    if result then
      result :=  DB_ExecSQL('insert into tbl_matriculaentrada (cod_beneficiario, matricula_mte, '+
      'digito_mte, vlbase_mte, percentual_mte, inscricao_ben, situacao_mte, cod_empresafolha) values ( '+edt_cod_beneficiario.Text+' ,'+
      edt_matricula_mte.text+', '+edt_digito_mte.text+', '''+STR_SubstChar(STR_RemoveChar(edt_vlbase_mte.text,'.'),',','.')+
      ''', 100, '+edt_inscricao_ben.text+', 1,'+cbx_cod_empresafolha.getStrItemValue+')');
    if result then
      result := DB_InsertByFields(self, FCamposCart, FTabelaCart);
    if result then
      result := Ben_GeraHistorico(IntToStr(FCod_Usuario), IntToStr(Fcod_TelaSistema), edt_inscricao_ben.text, '00', '');

 {
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
//      AlertaSituacao(cbx_cod_sitbeneficiario.valueitem);
//      GroupBoxONOFF(true, false);
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
    Show;}
  end;
end;

end.
