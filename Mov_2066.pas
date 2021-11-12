unit Mov_2066;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList,
  Menus, DBTables;

type
  TFrm_Mov_2066 = class(TFrm_Bas_TelaPadrao)
    btn_cancelar: TPDJButton;
    btn_salvar: TPDJButton;
    btn_alterar: TPDJButton;
    btn_novo: TPDJButton;
    btn_excluir: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbg_odonto: TDBGrid;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    edt_nome_afo: TBEdit;
    Panel5: TPanel;
    edt_nomemae_afo: TBEdit;
    Panel7: TPanel;
    cbx_cod_tipocoberturaodonto: TDCComboBox;
    edt_dtadesaoodonto_afo: TDCDateEdit;
    Panel8: TPanel;
    edt_cpf_afo: TMaskEdit;
    edt_rg_afo: TDCEdit;
    edt_dtnascim_afo: TDCDateEdit;
    Panel9: TPanel;
    edt_obs_afo: TBEdit;
    Panel39: TPanel;
    edt_dtsistema_afo: TDCDateEdit;
    cbx_cod_usuario: TDCComboBox;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    lbl_total: TLabel;
    pnl_benefi: TPanel;
    rdb_matricula: TRadioButton;
    rdb_benefi: TRadioButton;
    Panel6: TPanel;
    edt_nome_ben: TBEdit;
    cbx_cod_empresafolha: TDCComboBox;
    edt_cod_beneficiario: TBEdit;
    edt_digito_mte: TBEdit;
    edt_cod_afiliadoOdonto: TDCChoiceEdit;
    ed2_inscricao_ben: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_matricula_mte: TDCChoiceEdit;
    Memo1: TMemo;
    edt_cod_afiliado: TDBEdit;
    Label1: TLabel;
    pnl_alerta: TPanel;
    btn_transfmatricula: TPDJButton;
    Panel1: TPanel;
    edt_matriculadestino: TDCEdit;
    cb2_cod_empresafolha: TDCComboBox;
    edt_nomedestino: TDCEdit;
    edt_digitodestino: TBEdit;
    btn_confirma: TPDJButton;
    dbg_hist: TDBGrid;
    PDJButton1: TPDJButton;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbg_odontoDblClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure carregaparte;
    procedure rdb_matriculaClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed2_inscricao_benButtonClick(Sender: TObject);
    procedure ed2_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CarregaQuery;
    procedure regravar;
    procedure edt_cod_afiliadoChange(Sender: TObject);
    procedure Inseri_Afiliado;
    procedure SelecionaBeneficiario;
    procedure edt_matricula_mteButtonClick(Sender: TObject);
    procedure edt_matricula_mteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_transfmatriculaClick(Sender: TObject);
    procedure btn_confirmaClick(Sender: TObject);
    procedure cb2_cod_empresafolhaExit(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure dbg_odontoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    FPesquisaSQLDefalt, FMatricula, FDigito : String ;
    procedure BotoesOnOff(b:boolean);
    procedure CarregarCombos;
    procedure PanelOnOff(b:boolean);
    function CriticaParametros : Boolean ;
    function CriticaParametros2 : Boolean ;
  public
    { Public declarations }
    FIdade: Real;
    wCod_Beneficiario, FMesReferencia, FAnoReferencia, FEmpresaFolha, FNomeSegurado, FCPF,
    FInscricao, FCodBeneficiario, FTitulaCartei, FCarencia, FDTCarencia, FTipoCobertura, 
    FCodBeneficiarioTit : String ;
  end;

var
  Frm_Mov_2066: TFrm_Mov_2066;
  ChaveExp, Pagina: Integer;
  W30: String[30];
  W100: String[100];

implementation

uses Constantes, Fun_Db, Fun_Acesso, Dlg_Mensagem, Fun_Obj, dtm_principal4, Fun_ConsBeneficiario,
     dtm_principal5, dtm_principal6, dtm_principal, Fun_ConsCadastro, dtm_principal2, Fun_Data,
     Fun_STR, Fun_Beneficiario;

{$R *.DFM}

procedure TFrm_Mov_2066.CarregarCombos;
begin
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_tipocoberturaodonto', 'descricao_tco');
  BAS_CarregarCombo('cbx_cod_usuario', 'descricao_usu');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
end;

procedure TFrm_Mov_2066.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := b ;
  btn_alterar.Enabled := b ;
  btn_salvar.Enabled := not b ;
  btn_cancelar.Enabled := not b;
  btn_excluir.Enabled := b ;
end;

function TFrm_Mov_2066.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cpf_afo.name, 'O CPF deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cpf_afo.name, 'CPF Inv�lido !', VLD_CPF )) or
  (not BAS_ValidarCampo(cbx_cod_tipocoberturaodonto.Name, 'Tipo de Cobertura Inv�lido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomemae_afo.name, 'O Nome da M�e deve ser Preenchido!', VLD_Preenchido ));
end;

procedure TFrm_Mov_2066.btn_novoClick(Sender: TObject);
begin
  inherited;
  if edt_matricula_mte.Text = '' then
  begin
    edt_matricula_mte.SetFocus;
    Exit;
  end;
  if edt_nome_ben.Text = '' then
  begin
    Dlg_Alerta('Necess�rio selecionar um Segurado!',self);
    edt_matricula_mte.SetFocus;
    Exit;
  end;
  if pnl_alerta.Visible then
  begin
    Dlg_Alerta('Benefici�rio Titular Cancelado! N�o � possivel realizar um cadastro para esta matr�cula.',self);
    Exit;
  end;
  FStatus := FST_Novo;
  BotoesOnOff(false);
  edt_cpf_afo.Text:= '';
  if fdt_principal6.spc_cons_adm_afiliadoodonto.RecordCount = 0 then
     begin
     PageControl1.ActivePage:= TabSheet2;
     CarregarCombos;
     edt_dtadesaoodonto_afo.ReadOnly:= False;
     if FCodBeneficiario = '' then
        FCodBeneficiario:= '0'; 
     if DB_OpenSQL('select b.cod_beneficiario, b.inscricao_ben, b.titulacartei_ben, '+
                'b.cod_empresafolha, sg.matriculadebito_seg, sg.digitomatdeb_seg, '+
                'b.nome_ben, b.dtnascim_ben, b.rg_ben, b.cpf_ben, b.cod_tipodependente, '+
                'b.dtcadastro_ben, b.nomemae_ben from tbl_beneficiario b '+
                'INNER JOIN tbl_sitbeneficiario s ON b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
                'INNER JOIN tbl_beneficiario b2 ON b.inscricao_ben = b2.inscricao_ben and b2.cod_tipodependente = 0 '+
                'INNER JOIN tbl_segurado sg ON b2.cod_beneficiario = sg.cod_beneficiario '+
                'where b.cod_beneficiario = ' + FCodBeneficiario + ' and b.cod_tipodependente = 0') > 0 then
         begin
         SelecionaBeneficiario;
         edt_dtadesaoodonto_afo.Text:= DateToStr(Date);
         FTitulaCartei:= Tab.FieldByName('titulacartei_ben').Value;
         Exit;
         end
     else
         begin
         edt_nome_afo.Text:= FNomeSegurado;
         edt_nomemae_afo.Text:= '';
         edt_rg_afo.Text:= '';
         FCPF:= STR_RemoveChars(FCPF);
         FCPF:= STR_AddZeros(FCPF, 11);
         edt_cpf_afo.Text:= Copy(FCPF,1,3) + '.' + Copy(FCPF,4,3) + '.' +
                            Copy(FCPF,7,3) + '-' + Copy(FCPF,10,2);
         edt_dtnascim_afo.Text:= '';
         ed2_inscricao_ben.text:= FInscricao;
         FCodBeneficiario:= FCodBeneficiario;
         FTitulaCartei:= '0';
         edt_dtadesaoodonto_afo.Text:= DateToStr(Date);
         cbx_cod_tipocoberturaodonto.SetFocus;
         Exit;
         end
     end;
  Obj_EmptyEdit(Self);
  edt_dtadesaoodonto_afo.ReadOnly:= False;
  edt_inscricao_ben.Text:= FInscricao;
  ed2_inscricao_ben.Text:= FInscricao;
  edt_nome_ben.Text:= FNomeSegurado;
  edt_matricula_mte.Text:= FMatricula;
  edt_dtadesaoodonto_afo.Text:= DateToStr(Date);
  PageControl1.ActivePage:= TabSheet2;
  CarregarCombos;
  FCodBeneficiario:= '0';
  Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
  edt_nome_afo.ReadOnly:= True;
  if FCodBeneficiario = '0' then
     edt_nome_afo.ReadOnly:= False;
  ed2_inscricao_benButtonClick(Self);
end;

procedure TFrm_Mov_2066.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  BotoesOnOff(true);
  PanelOnOff(true);
  PageControl1.ActivePageIndex := 0;
  EscreveLog(btn_cancelar.name);
end;

procedure TFrm_Mov_2066.PanelOnOff(b:boolean);
begin
end;

procedure TFrm_Mov_2066.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Fdt_principal6.spc_cons_adm_descontos.close;
end;

procedure TFrm_Mov_2066.dbg_odontoDblClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Mov_2066.carregaparte;
begin
  PageControl1.ActivePage:= TabSheet2;
  with fdt_principal6.spc_cons_adm_afiliadoodonto do
    begin
    Close;
    parambyname('@matricula_mte').AsString := edt_matricula_mte.text ;
    parambyname('@cod_empresafolha').AsString := IntToStr(cbx_cod_empresafolha.ValueItem) ;
    parambyname('@cod_tipocoberturaodonto').AsString := '';
    parambyname('@carencia').AsString := '';
    Open;
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FieldByName('cod_empresafolha').Value);
    edt_digito_mte.Text:= FieldByName('digito_mte').Value;
    edt_cod_beneficiario.Text:= FieldByName('cod_beneficiario').Value;
    FCodBeneficiario:= FieldByName('cod_beneficiario').Value;
    Obj_SetFormObjValueByName(self, cbx_cod_usuario.Name, FieldByName('cod_usuario').Text);
    end;
  BotoesOnOff(false);
  DB_OpenSQL('select b.cod_beneficiario, b.inscricao_ben, b.titulacartei_ben, '+
            'b.cod_empresafolha, sg.matriculadebito_seg, sg.digitomatdeb_seg, '+
            'b.nome_ben, b.dtnascim_ben, b.rg_ben, b.cpf_ben, b.cod_tipodependente, '+
            'b.dtcadastro_ben from tbl_beneficiario b '+
            'INNER JOIN tbl_sitbeneficiario s ON b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
            'INNER JOIN tbl_beneficiario b2 ON b.inscricao_ben = b2.inscricao_ben and b2.cod_tipodependente = 0 '+
            'INNER JOIN tbl_segurado sg ON b2.cod_beneficiario = sg.cod_beneficiario '+
            'where b.cod_beneficiario = ' + edt_cod_beneficiario.Text + ' and b.cod_tipodependente = 0');
  Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, Tab.FieldByName('cod_empresafolha').Value);
  edt_nome_ben.Text:= Tab.FieldByName('nome_ben').Value;
  FTitulaCartei:= Tab.FieldByName('titulacartei_ben').Value;
  edt_nomemae_afo.SetFocus;
end;

procedure TFrm_Mov_2066.btn_alterarClick(Sender: TObject);
begin
  inherited;
  if fdt_principal6.spc_cons_adm_afiliadoodonto.RecordCount = 0 then
    Exit;
  edt_dtadesaoodonto_afo.ReadOnly:= True;
  FStatus := FST_Alteracao;
  PageControl1.ActivePage:= TabSheet2;
  edt_cod_afiliadoOdonto.text:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('cod_afiliadoOdonto').Text;
  edt_nome_afo.Text:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('nome_afo').Text;
  edt_nomemae_afo.Text:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('nomemae_afo').Text;
  FCodBeneficiario:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('cod_beneficiario').AsString;
  edt_cod_beneficiario.Text:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('cod_beneficiario').AsString;
  Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaodonto.Name, Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('cod_tipocoberturaodonto').AsString);
  FTipoCobertura:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('cod_tipocoberturaodonto').AsString;
  edt_dtadesaoodonto_afo.Text:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('dtadesaoodonto_afo').Text;
  edt_rg_afo.Text:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('rg_afo').Text;
  edt_cpf_afo.Text:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('cpf_afo').Text;
  edt_dtnascim_afo.Text:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('dtnascim_afo').Text;
  edt_obs_afo.Text:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('obs_afo').Text;
  edt_dtsistema_afo.Text:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('dtsistema_afo').Text;
  Obj_SetFormObjValueByName(self, cbx_cod_usuario.Name, Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('cod_usuario').Text);
  Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('cod_empresafolha').Value);
  edt_digito_mte.Text:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('digito_mte').Value;
  Obj_SetFormObjValueByName(self, cbx_cod_usuario.Name, Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('cod_usuario').Text);
  if Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('cod_titulacartei_afo').Text = '' then
     FTitulaCartei:= '99'
  else
     FTitulaCartei:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('cod_titulacartei_afo').Text;
  FCarencia:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('carencia').Text;
  FDTCarencia:= Fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByname('DtCarencia').Text;
  BotoesOnOff(false);
//  carregaparte;
end;

procedure TFrm_Mov_2066.Inseri_Afiliado;
begin
  if FTitulaCartei <> '0' then
     if DB_OpenSQL('select * from tbl_afiliadoodonto where matricula_mte = ' + FMatricula + ' and cod_empresafolha = ' +
                   FEmpresaFolha + ' and cod_titulacartei_afo = 0 and cod_tipocoberturaodonto between 1 and 8') = 0 then
        begin
        Dlg_Alerta('Deve-se inclui o titular antes de dependentes/afiliados !',self);
        btn_cancelarClick(Self);
        Exit;
        end;
  DB_ExecSQL('insert into tbl_afiliadoodonto (cod_empresafolha, matricula_mte, digito_mte, nome_afo, cod_tipocoberturaodonto, '+
             'dtadesaoodonto_afo, dtsistema_afo, dtnascim_afo, rg_afo, cpf_afo, obs_afo, cod_usuario, cod_beneficiario, nomemae_afo, cod_titulacartei_afo) '+
             'values ('+ IntToStr(cbx_cod_empresafolha.ValueItem)+ ', '+ edt_matricula_mte.Text + ', ' + FDigito + ', ''' +
             edt_nome_afo.Text + ''', ' + IntToStr(cbx_cod_tipocoberturaodonto.ValueItem) + ', ' + DB_FormatDataSQL(edt_dtadesaoodonto_afo.Date, ftDate) +
             ', getdate(), ' + DB_FormatDataSQL(edt_dtnascim_afo.Date, ftDate) + ', ''' + edt_rg_afo.Text + ''',''' + edt_cpf_afo.Text + ''', ''' +
             edt_obs_afo.Text + ''', ' + IntToStr(FCod_usuario) + ', ' + FCodBeneficiario + ', ''' + edt_nomemae_afo.Text + ''', ' + FTitulaCartei+ ')');

  DB_OpenSQL('select max(cod_afiliadoodonto) as cod_afiliadoodonto from tbl_afiliadoOdonto');
  DB_ExecSQL('insert into tbl_histplanoOdonto values('+ FCodBeneficiario + ', ' + cbx_cod_tipocoberturaodonto.valueItem + ', ' +
             DB_FormatDataSQL(edt_dtadesaoodonto_afo.Date, ftDate)+ ', Null, getdate(),' + Tab.FieldByName('cod_afiliadoodonto').AsString +', ' +
             IntToStr(FCod_usuario) + ', ' + IntToStr(cbx_cod_empresafolha.ValueItem) + ', '+ edt_matricula_mte.Text + ')');
end;

procedure TFrm_Mov_2066.btn_salvarClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  FIdade := Data_GetIdadeAnos(edt_dtnascim_afo.date, date);
  if edt_cpf_afo.Text = '   .   .   -  ' then
     if Fidade < 18 then
        begin
        FCPF:= STR_RemoveChars(FCPF);
        FCPF:= STR_AddZeros(FCPF, 11);
        edt_cpf_afo.Text:= Copy(FCPF,1,3) + '.' + Copy(FCPF,4,3) + '.' +
                            Copy(FCPF,7,3) + '-' + Copy(FCPF,10,2);
        end
     else
        begin
        Dlg_Alerta('CPF Inv�lido !',self);
        edt_cpf_afo.SetFocus;
        Exit;
        end;
  if FCodBeneficiario = '' then
     FCodBeneficiario:= '0';
  if edt_cod_beneficiario.Text = '' then
     edt_cod_beneficiario.Text:= '0';
  Obj_SetFormObjValueByName(self, cbx_cod_usuario.name, FCod_usuario);
  if (FTitulaCartei = '0') and (cbx_cod_tipocoberturaodonto.ValueItem = 9) then
     if not Dlg_YesNo('Cancelamento do Titular cancela tamb�m todos os dependentes/assistidos, deseja continuar?', Self) then
        begin
        CarregaQuery;
        btn_cancelarClick(self);
        PageControl1.ActivePage:= TabSheet1;
        Exit;
        end;
// Testar se pessoa duplicada na matr�cula quando inclus�o
  if FStatus = FST_Novo then
     begin
     if FCodBeneficiario <> '0' then
        if DB_OpenSQL('select nome_afo, cod_tipocoberturaodonto, cod_beneficiario from tbl_afiliadoodonto where '+
                      'cod_empresafolha = ' + cbx_cod_empresafolha.valueItem + ' and matricula_mte = ' +
                      edt_matricula_mte.Text + ' and cod_beneficiario = ' + FCodBeneficiario) > 0 then
           begin
           Dlg_Alerta(edt_nome_afo.Text + ' j� cadastrada(o) !',self);
           btn_cancelarClick(Self);
           Exit;
           end
        else
           Inseri_Afiliado
     else
        begin
        if DB_OpenSQL('select nome_afo, cod_tipocoberturaodonto, cod_beneficiario from tbl_afiliadoodonto where '+
                      'cod_empresafolha = ' + cbx_cod_empresafolha.valueItem + ' and matricula_mte = ' +
                      edt_matricula_mte.Text + ' and SUBSTRING(nome_afo,1,8) = ''' + Copy(edt_nome_afo.Text,1,8) + '''') > 0 then
           if not Dlg_YesNo('J� existe afiliado nessa matr�cula com o nome de ' + Tab.FieldByName('nome_afo').AsString +
                            ', Essa � outra pessoa ?', Self) then
              begin
              btn_cancelarClick(Self);
              Exit;
              end;
        Inseri_Afiliado;
        end;
     end
  else
     begin
// Regra p/Cancelamento Odontol�gico
     if cbx_cod_tipocoberturaodonto.ValueItem = 9 then
// N�o Titular
        if FTitulaCartei <> '0' then
           if FCarencia = 'SIM' then
              begin
              Dlg_Alerta(edt_nome_afo.Text + ' est� em car�ncia at� ''' + FDTCarencia + '''', Self);
              if Dlg_YesNo('Deseja cancelar mesmo assim?', Self) then
                 begin
                 edt_obs_afo.Text:= 'Liberado da Car�ncia';
                 regravar;
                 if FTipoCobertura <> cbx_cod_tipocoberturaodonto.ValueItem then
                    DB_ExecSQL('insert into tbl_histplanoOdonto values('+ FCodBeneficiario + ', ' + cbx_cod_tipocoberturaodonto.valueItem + ', ' +
                               DB_FormatDataSQL(edt_dtadesaoodonto_afo.Date, ftDate)+ ', Null, getdate(),' + edt_cod_afiliadoodonto.Text  + ', ' +
                               IntToStr(FCod_usuario)+ ', ' + IntToStr(cbx_cod_empresafolha.ValueItem) + ', '+ edt_matricula_mte.Text + ')');
                 end
              end
           else
              begin
              regravar;
              if FTipoCobertura <> cbx_cod_tipocoberturaodonto.ValueItem then
                 DB_ExecSQL('insert into tbl_histplanoOdonto values('+ FCodBeneficiario + ', ' + cbx_cod_tipocoberturaodonto.valueItem + ', ' +
                            DB_FormatDataSQL(edt_dtadesaoodonto_afo.Date, ftDate)+ ', Null, getdate(),' + edt_cod_afiliadoodonto.Text  + ', ' +
                            IntToStr(FCod_usuario)+ ', ' + IntToStr(cbx_cod_empresafolha.ValueItem) + ', '+ edt_matricula_mte.Text + ')');
              end
        else
           begin
// Se Titular
           with fdt_principal6.spc_cons_adm_afiliadoodonto do
             begin
             Close;
             parambyname('@matricula_mte').AsString := edt_matricula_mte.text ;
             parambyname('@cod_empresafolha').AsString := IntToStr(cbx_cod_empresafolha.ValueItem) ;
             parambyname('@cod_tipocoberturaodonto').AsString := '9';
             parambyname('@carencia').AsString := '99';
             Open;
// sem pessoas com car�ncia na Matr�cula, todos s�o cancelados
             if fdt_principal6.spc_cons_adm_afiliadoodonto.RecordCount = 0 then
                begin
                regravar;
                if FTipoCobertura <> cbx_cod_tipocoberturaodonto.ValueItem then
                   DB_ExecSQL('insert into tbl_histplanoOdonto values('+ FCodBeneficiario + ', ' + cbx_cod_tipocoberturaodonto.valueItem + ', ' +
                              DB_FormatDataSQL(edt_dtadesaoodonto_afo.Date, ftDate)+ ', Null, getdate(),' + edt_cod_afiliadoodonto.Text  + ', ' +
                              IntToStr(FCod_usuario)+ ', ' + IntToStr(cbx_cod_empresafolha.ValueItem) + ', '+ edt_matricula_mte.Text + ')');
                DB_OpenSQL('select * from tbl_afiliadoodonto where matricula_mte = ' + FMatricula + ' and cod_empresafolha = ' +
                           FEmpresaFolha + ' and cod_tipocoberturaodonto between 1 and 8');
                if Tab.RecordCount > 0 then
                   begin
                   while not Tab.EOF do
                      begin
                      if FTipoCobertura <> cbx_cod_tipocoberturaodonto.ValueItem then
                         DB_ExecADOSQL('insert into tbl_histplanoOdonto values('+ Tab.FieldByName('cod_beneficiario').Text + ', ' +
                                       cbx_cod_tipocoberturaodonto.valueItem + ', ' + DB_FormatDataSQL(edt_dtadesaoodonto_afo.Date, ftDate)+
                                       ', Null, getdate(),' + Tab.FieldByName('cod_afiliadoodonto').AsString + ', ' + IntToStr(FCod_usuario)+
                                       ', ' + IntToStr(cbx_cod_empresafolha.ValueItem) + ', '+ edt_matricula_mte.Text + ')');
                      Tab.Next;
                      end;
                   end;
                DB_ExecADOSQL('update tbl_afiliadoodonto set cod_tipocoberturaodonto = 9, '+
                           'dtsistema_afo = getdate(), dtadesaoodonto_afo = getdate(), cod_usuario = ' +
                           IntToStr(FCod_usuario) + ' where matricula_mte = ' + FMatricula +
                           ' and cod_empresafolha = ' + FEmpresaFolha + ' and cod_tipocoberturaodonto between 1 and 8');
                end
             else
                begin
                with fdt_principal6.spc_cons_adm_afiliadoodonto do
                  begin
                  Close;
                  parambyname('@matricula_mte').AsString := edt_matricula_mte.text ;
                  parambyname('@cod_empresafolha').AsString := IntToStr(cbx_cod_empresafolha.ValueItem) ;
                  parambyname('@cod_tipocoberturaodonto').AsString := '9';
                  parambyname('@carencia').AsString := '';
                  Open;
                  First;
// Tendo alguma pessoa na car�ncia, ent�o este e o titular continuam e os demais ser�o cancelados
                  while not fdt_principal6.spc_cons_adm_afiliadoodonto.EOF do
                    begin
                    if fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByName('cod_titulacartei_afo').Text <> '0' then
                       if fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByName('carencia').Text <> 'SIM' then
                          begin
                          DB_ExecSQL('update tbl_afiliadoodonto set cod_tipocoberturaodonto = 9, cod_usuario = ' +
                                     IntToStr(cbx_cod_usuario.ValueItem) + ', dtsistema_afo = getdate(), ' +
                                     'dtadesaoodonto_afo = getdate() where cod_afiliadoOdonto = ' +
                                     FieldByName('cod_afiliadoOdonto').Text);
                          Memo1.Lines.Add(fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByName('nome_afo').AsString + ' Cancelado');
                          if FTipoCobertura <> cbx_cod_tipocoberturaodonto.ValueItem then
                             DB_ExecADOSQL('insert into tbl_histplanoOdonto values('+
                                           fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByName('cod_beneficiario').Text + ', ' +
                                           cbx_cod_tipocoberturaodonto.valueItem + ', getdate(), Null, '+
                                           'getdate(),' + fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByName('cod_afiliadoodonto').Text +
                                           ', ' + IntToStr(FCod_usuario)+ ', ' + IntToStr(cbx_cod_empresafolha.ValueItem) + ', '+ edt_matricula_mte.Text + ')');
                          end;
                    Next;
                    end;
                  if Memo1.Text = '' then
// Todos est�o em car�ncia, confirmando cancelar, todos ser�o cancelados
                     begin
                     if Dlg_YesNo('N�o h� pessoas a cancelar, somente pessoas com car�ncia, deseja cancelar mesmo assim?', Self) then
                        begin
                        edt_obs_afo.Text:= 'Liberado da Car�ncia';
                        with fdt_principal6.spc_cons_adm_afiliadoodonto do
                            begin
                            Close;
                            parambyname('@matricula_mte').AsString := edt_matricula_mte.text ;
                            parambyname('@cod_empresafolha').AsString := IntToStr(cbx_cod_empresafolha.ValueItem) ;
                            parambyname('@cod_tipocoberturaodonto').AsString := '9';
                            parambyname('@carencia').AsString := '';
                            Open;
                            fdt_principal6.spc_cons_adm_afiliadoodonto.RecordCount;
                            First;

                            while not fdt_principal6.spc_cons_adm_afiliadoodonto.EOF do
                               begin
                               DB_ExecSQL('update tbl_afiliadoodonto set cod_tipocoberturaodonto = 9, cod_usuario = ' +
                                         IntToStr(cbx_cod_usuario.ValueItem) + ', dtsistema_afo = getdate(), ' +
                                         'dtadesaoodonto_afo = getdate(), obs_afo = ''' + edt_obs_afo.Text + ''' where cod_afiliadoOdonto = ' +
                                         FieldByName('cod_afiliadoOdonto').Text);
                               Memo1.Lines.Add(fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByName('nome_afo').AsString + ' Cancelado');
                               if FTipoCobertura <> cbx_cod_tipocoberturaodonto.ValueItem then
                                  DB_ExecADOSQL('insert into tbl_histplanoOdonto values('+
                                                fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByName('cod_beneficiario').Text + ', ' +
                                                cbx_cod_tipocoberturaodonto.valueItem + ', getdate(), Null, '+
                                                'getdate(),' + fdt_principal6.spc_cons_adm_afiliadoodonto.FieldByName('cod_afiliadoodonto').Text +
                                                ', ' + IntToStr(FCod_usuario)+ ', ' + IntToStr(cbx_cod_empresafolha.ValueItem) + ', '+ edt_matricula_mte.Text + ')');
                               Next;
                               end;
                            end;
                        Dlg_Ok(Memo1.Text, self);
                        end;
                     end
                  else
                     Dlg_Ok(Memo1.Text, self);
                  end;
                end;
                end;
         end
     else
        begin
        regravar;
        if FTipoCobertura <> cbx_cod_tipocoberturaodonto.ValueItem then
           DB_ExecSQL('insert into tbl_histplanoOdonto values('+ FCodBeneficiario + ', ' + cbx_cod_tipocoberturaodonto.valueItem + ', ' +
                      DB_FormatDataSQL(edt_dtadesaoodonto_afo.Date, ftDate)+ ', Null, getdate(),' + edt_cod_afiliadoodonto.Text  + ', ' +
                      IntToStr(FCod_usuario)+ ', ' + IntToStr(cbx_cod_empresafolha.ValueItem) + ', '+ edt_matricula_mte.Text + ')');
        end;
     end;
  CarregaQuery;
  btn_cancelarClick(self);
  PageControl1.ActivePage:= TabSheet1;
end;

procedure TFrm_Mov_2066.regravar;
begin
  if FTipoCobertura <> cbx_cod_tipocoberturaodonto.ValueItem then
     edt_dtadesaoodonto_afo.Text:= DateTOStr(Date);
  DB_ExecSQL('update tbl_afiliadoodonto set cod_empresafolha = ' + IntToStr(cbx_cod_empresafolha.ValueItem) +
             ', matricula_mte = ' + edt_matricula_mte.Text + ', digito_mte = ' + FDigito + ', nome_afo = ''' +
             edt_nome_afo.text + ''', cod_tipocoberturaodonto = ' + IntToStr(cbx_cod_tipocoberturaodonto.ValueItem) +
             ', dtadesaoodonto_afo = ' + DB_FormatDataSQL(edt_dtadesaoodonto_afo.Date, ftDate) + ', dtsistema_afo = getdate()' +
             ', dtnascim_afo = ' +  DB_FormatDataSQL(edt_dtnascim_afo.Date, ftDate) +
             ', rg_afo = ''' + edt_rg_afo.Text + ''', cpf_afo = ''' + edt_cpf_afo.Text + ''', obs_afo = ''' + edt_obs_afo.Text +
             ''', cod_usuario = ' + IntToStr(cbx_cod_usuario.ValueItem) + ', cod_beneficiario = ' + FCodBeneficiario +
             ', nomemae_afo = ''' + edt_nomemae_afo.Text + ''' where cod_afiliadoOdonto = ' + edt_cod_afiliadoOdonto.Text);
end;

procedure TFrm_Mov_2066.FormShow(Sender: TObject);
begin
  inherited;
  fdt_principal6.spc_cons_adm_afiliadoodonto.Close;
  fdt_principal5.spc_cons_adm_histplanoOdonto.Close;
  CarregarCombos;
  PageControl1.ActivePage:= TabSheet1;
  edt_matricula_mte.Text:= '';
  rdb_matriculaClick(Self);
  btn_transfmatricula.Enabled:= False;
end;

procedure TFrm_Mov_2066.TabSheet3Show(Sender: TObject);
begin
  inherited;
  with fdt_principal5.spc_cons_adm_histplanoOdonto do
    begin
    Close;
    ParamByName('@cod_beneficiario').AsString := Tab.FieldByName('cod_beneficiario').Text;
    Open;
    end;
end;

procedure TFrm_Mov_2066.CarregaQuery;
begin
  if FInscricao <> '999999' then
     with fdt_principal6.spc_cons_adm_afiliadoodonto do begin
     close;
     parambyname('@matricula_mte').AsString := edt_matricula_mte.text ;
     parambyname('@cod_empresafolha').AsString := IntToStr(cbx_cod_empresafolha.ValueItem) ;
     parambyname('@cod_tipocoberturaodonto').AsString := '';
     parambyname('@carencia').AsString := '';
     Open;
     lbl_total.Caption:= IntToStr(fdt_principal6.spc_cons_adm_afiliadoodonto.RecordCount) + ' registros';
     end;
end;

procedure TFrm_Mov_2066.rdb_matriculaClick(Sender: TObject);
begin
  inherited;
  pnl_benefi.Caption:= '    Matr�cula';
  edt_inscricao_ben.Text:= '';
  edt_inscricao_ben.Visible:= False;
  edt_matricula_mte.Visible:= True;
  edt_matricula_mte.SetFocus;
end;

procedure TFrm_Mov_2066.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.titulacartei_ben = 0 and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if (edt_cod_beneficiario.Text <> '') then
  begin
    with Fdt_principal.spc_cons_adm_beneficiario001 do begin
      close;
      parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
      open;
      FInscricao:= FieldByNAme('inscricao_ben').AsString;
      edt_inscricao_ben.text := FInscricao;
      FMatricula := FieldByNAme('matriculadebito_seg').AsString;
      edt_matricula_mte.Text:= FMatricula;
      FDigito := FieldByNAme('digitomatdeb_seg').AsString;
      edt_digito_mte.Text:= FDigito;
      FNomeSegurado:= FieldByNAme('nome_ben').AsString;
      edt_nome_ben.Text:= FNomeSegurado;
      FTitulaCartei:= FieldByNAme('cod_titulacartei').AsString;
      FEmpresaFolha:= FieldByName('cod_empresafolha').AsString;
      Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
    end;
  end;
end;

procedure TFrm_Mov_2066.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if rdb_benefi.Checked then
    if key = 13 then
      edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2066.ed2_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  Frm_Fun_ConsBeneficiario:= TFrm_Fun_ConsBeneficiario.Create(Self);
  Frm_Fun_ConsBeneficiario.FQualQuery:= 3;
  Frm_Fun_ConsBeneficiario.FInscricao1:= FInscricao;
  Frm_Fun_ConsBeneficiario.ShowModal;
  Frm_Fun_ConsBeneficiario.Release;
  edt_cod_beneficiario.text:= Frm_Fun_ConsBeneficiario.FCodBeneficiario;
  if edt_cod_beneficiario.text = '' then
     begin
     edt_cod_beneficiario.text:= edt_cod_beneficiario.text;
     FTitulaCartei:= '99';
     end
  else
     begin
     DB_OpenSQL('select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.cod_empresa, b.cod_plano, b.titulacartei_ben, '+
                'b.digito_ben, m.matriculadebito_seg, m.digitomatdeb_seg, b.dtnascim_ben, b.nomemae_ben, b.rg_ben, b.cpf_ben, '+
                'b.cod_empresafolha from tbl_beneficiario b, tbl_beneficiario b2, tbl_segurado m where b2.cod_beneficiario = '+
                'm.cod_beneficiario and b2.inscricao_ben = b.inscricao_ben and b.cod_beneficiario = ' + edt_cod_beneficiario.text);
     SelecionaBeneficiario;
     end;


{  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if ed2_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+ ed2_inscricao_ben.text;
  if wCod_Beneficiario = '' then
     edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa,
     'Cod.Benef., Inscri��o, Nome, Plano, Processo, Situa��o, Tipo, Matr�cula', FTitPesquisa, FPesquisaSQL, false)
  else
     edt_cod_beneficiario.text := wCod_Beneficiario ;
  if edt_cod_beneficiario.text = '' then
     begin
     edt_cod_beneficiario.text:= edt_cod_beneficiario.text;
     FTitulaCartei:= '99';
     end
  else
     begin
     DB_OpenSQL('select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.cod_empresa, b.cod_plano, b.titulacartei_ben, '+
                'b.digito_ben, m.matriculadebito_seg, m.digitomatdeb_seg, b.dtnascim_ben, b.nomemae_ben, b.rg_ben, b.cpf_ben, '+
                'b.cod_empresafolha from tbl_beneficiario b, tbl_beneficiario b2, tbl_segurado m where b2.cod_beneficiario = '+
                'm.cod_beneficiario and b2.inscricao_ben = b.inscricao_ben and b.cod_beneficiario = ' + edt_cod_beneficiario.text);
     SelecionaBeneficiario;
     end;}
end;

procedure TFrm_Mov_2066.ed2_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    ed2_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2066.SelecionaBeneficiario;
begin
  edt_nome_afo.Text:= Tab.FieldByName('nome_ben').AsString;
  edt_nomemae_afo.Text:= Tab.FieldByName('nomemae_ben').AsString;
  edt_rg_afo.Text:= Tab.FieldByName('rg_ben').AsString;
  edt_cpf_afo.Text:= Tab.FieldByName('cpf_ben').AsString;
  edt_dtnascim_afo.Text:= Tab.FieldByName('dtnascim_ben').AsString;
  ed2_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
  FCodBeneficiario:= Tab.FieldByNAme('cod_beneficiario').AsString;
  FTitulaCartei:= Tab.FieldByName('titulacartei_ben').AsString;
  cbx_cod_tipocoberturaodonto.SetFocus;
end;

procedure TFrm_Mov_2066.edt_cod_afiliadoChange(Sender: TObject);
begin
  inherited;
    with fdt_principal5.spc_cons_adm_histplanoOdonto do
    begin
      close;
      ParamByName('@cod_beneficiario').AsString := edt_cod_afiliado.Text;
      Open;
    end;
end;

procedure TFrm_Mov_2066.edt_matricula_mteButtonClick(Sender: TObject);
begin
  inherited;
  Memo1.Text:= '';
  FMatricula:= edt_matricula_mte.Text;
  FTitulaCartei:= '';
  FCPF:= '';
  Frm_Fun_ConsBeneficiario:= TFrm_Fun_ConsBeneficiario.Create(Self);
  Frm_Fun_ConsBeneficiario.FMatricula:= edt_matricula_mte.text;
  Frm_Fun_ConsBeneficiario.FInscricao1:= '';
  Frm_Fun_ConsBeneficiario.FQualQuery:= 1;
  Frm_Fun_ConsBeneficiario.FCPF:= '';
  Frm_Fun_ConsBeneficiario.ShowModal;
  Frm_Fun_ConsBeneficiario.Release;
  FNomeSegurado:= Frm_Fun_ConsBeneficiario.FNomeBen;
  edt_nome_ben.Text:= FNomeSegurado;
  FEmpresaFolha:= Frm_Fun_ConsBeneficiario.FEmpresaFolha;
  Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
  FInscricao:= Frm_Fun_ConsBeneficiario.FInscricao1;
  edt_matricula_mte.Text := Frm_Fun_ConsBeneficiario.FMatricula;
  pnl_alerta.Visible := Frm_Fun_ConsBeneficiario.FTipo_sit = '2';
  edt_inscricao_ben.Text:= FInscricao;
  ed2_inscricao_ben.Text:= FInscricao;
  FDigito:= Frm_Fun_ConsBeneficiario.FDigito;
  FTitulaCartei:= Frm_Fun_ConsBeneficiario.FTitulaCartei;
  edt_digito_mte.Text:= FDigito;
  edt_cod_beneficiario.Text:= Frm_Fun_ConsBeneficiario.FCodBeneficiario;
  FCodBeneficiario:= Frm_Fun_ConsBeneficiario.FCodBeneficiario;
  FCodBeneficiarioTit:= Frm_Fun_ConsBeneficiario.FCodBeneficiario;
  FCPF:= Frm_Fun_ConsBeneficiario.FCPF;
  if Frm_Fun_ConsBeneficiario.FInscricao1 = '' then
     Exit;
  CarregaQuery;
  btn_transfmatricula.Enabled:= False;
  if fdt_principal6.spc_cons_adm_afiliadoodonto.RecordCount > 0 then
     btn_transfmatricula.Enabled:= True;
end;

procedure TFrm_Mov_2066.edt_matricula_mteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_matricula_mteButtonClick(self);
end;

procedure TFrm_Mov_2066.btn_transfmatriculaClick(Sender: TObject);
begin
  inherited;
  dbg_hist.Visible:= False;
  edt_matriculadestino.SetFocus;
  
end;

procedure TFrm_Mov_2066.btn_confirmaClick(Sender: TObject);
var
  executado : boolean;
begin
  inherited;
  if CriticaParametros2 then
    Exit;
  executado := false;
  DB_BeginTrans;
  fdt_principal6.spc_cons_adm_afiliadoodonto.RecordCount;
  fdt_principal6.spc_cons_adm_afiliadoodonto.First;
  while not fdt_principal6.spc_cons_adm_afiliadoodonto.Eof do
  begin
    executado := DB_ExecSQL('insert into tbl_histplanoOdonto values(0, ' +
               fdt_principal6.spc_cons_adm_afiliadoodonto.fieldByName('cod_tipocoberturaodonto').AsString +
               ', getdate(), Null, getdate(),' + fdt_principal6.spc_cons_adm_afiliadoodonto.fieldByName('cod_afiliadoOdonto').AsString
               + ', ' + IntToStr(FCod_usuario) + ', ' + cb2_cod_empresafolha.valueitem + ', ' + edt_matriculadestino.Text + ')');
    fdt_principal6.spc_cons_adm_afiliadoodonto.Next;
  end;
  if executado then
    executado := DB_ExecSQL('update tbl_afiliadoodonto set matricula_mte = '+edt_matriculadestino.Text+
    ', cod_empresafolha = '+cb2_cod_empresafolha.valueitem+', digito_mte = '+edt_digitodestino.text+' where cod_empresafolha = '+
    cbx_cod_empresafolha.valueitem + ' and matricula_mte = ' + edt_matricula_mte.Text);
  if executado then
  begin
    DB_Commit;
    edt_matricula_mte.Text:= edt_matriculadestino.Text;
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, cb2_cod_empresafolha.ValueItem);
    Dlg_Ok('Transfer�ncia Efetuada com Sucesso!',self);
    edt_matriculadestino.Text:= '';
    cb2_cod_empresafolha.ItemIndex:= -1;
    edt_digitodestino.Text:= '';
    dbg_hist.Visible:= True;
  end
  else
    DB_RollBack;
end;

function TFrm_Mov_2066.CriticaParametros2 : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_matriculadestino.name, 'A Matr�cula de Destino deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_empresafolha.name, 'A Empresa de Destino deve ser Preenchida !', VLD_Preenchido )) ;
end;

procedure TFrm_Mov_2066.cb2_cod_empresafolhaExit(Sender: TObject);
begin
  inherited;
  if (edt_matriculadestino.Text <> '') and (cb2_cod_empresafolha.Text <> '') then
  begin
    DB_OpenSQL('select nome_fpm, digito_mte from tbl_fpm where matricula_mte = '+edt_matriculadestino.Text+
    ' and cod_empresafolha = '+cb2_cod_empresafolha.valueItem);
    edt_nomedestino.Text := Tab.FieldByName('nome_fpm').AsString;
    //edt_digitodestino.Text := Tab.FieldByName('digito_mte').AsString;
    edt_digitodestino.Text := IntToStr(CalculaDigito(cb2_cod_empresafolha.valueitem, edt_matriculadestino.Text));
  end;
end;

procedure TFrm_Mov_2066.PDJButton1Click(Sender: TObject);
begin
  inherited;
  edt_matriculadestino.Text:= '';
  cb2_cod_empresafolha.ItemIndex:= -1;
  edt_digitodestino.Text:= '';
  dbg_hist.Visible:= True;
end;

procedure TFrm_Mov_2066.dbg_odontoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If not (gdFocused in State) then
  begin
    if Column.Field.Dataset.FieldbyName('descricao_tco').AsString = 'Cancelado' then
      (Sender as TDBGrid).Canvas.Font.Color := clRed
    else
      (Sender as TDBGrid).Canvas.Font.Color := clBlack ;
  end else
    (Sender as TDBGrid).Canvas.Font.Color := clWhite ;
    dbg_odonto.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

end.

