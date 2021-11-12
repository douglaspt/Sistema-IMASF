unit Mov_2065;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList,
  Menus, Fun_Obj;

type
  TFrm_Mov_2065 = class(TFrm_Bas_TelaPadrao)
    Panel1: TPanel;
    DataSource3: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBMemo1: TDBMemo;
    btn_localizar: TPDJButton;
    lbl_total: TLabel;
    btn_limpa: TPDJButton;
    dbg_descontos: TDBGrid;
    Panel5: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    edt_inscricao_ben: TDCChoiceEdit;
    rdb_matricula: TRadioButton;
    rdb_benefi: TRadioButton;
    rdb_cpf: TRadioButton;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_cpf_ben: TDCEdit;
    btn_transferematricula: TPDJButton;
    Label6: TLabel;
    pnl_matDebito: TPanel;
    edt_matriculadebito_seg: TDCEdit;
    edt_digitomatdeb_seg: TDCEdit;
    cb2_cod_empresafolha: TDCComboBox;
    pnl_cpf: TPanel;
    edt_cpfdestino: TDCEdit;
    edt_nomedestino: TDCEdit;
    pnl_alerta: TPanel;
    edt_cod_descontofolha: TDCEdit;
    ckb_todos: TCheckBox;
    btn_histopera: TPDJButton;
    TabSheet2: TTabSheet;
    DataSource1: TDataSource;
    lbl_tothist: TLabel;
    DBGrid1: TDBGrid;
    pnl_motivo: TPanel;
    edt_htm_motivo: TDCEdit;
    btn_transfer: TPDJButton;
    edt_cod_sitbeneficiario: TDCEdit;
    edt_cod_situacao_fpm: TDCEdit;
    Label1: TLabel;
    btn_imprimir: TPDJButton;
    lbl_dtatualizacao: TLabel;
    procedure rdb_matriculaClick(Sender: TObject);
    procedure rdb_benefiClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_localizarClick(Sender: TObject);
    procedure btn_limpaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdb_cpfClick(Sender: TObject);
    procedure edt_cpf_benEnter(Sender: TObject);
    procedure edt_inscricao_benEnter(Sender: TObject);
    procedure edt_cod_beneficiarioEnter(Sender: TObject);
    procedure dbg_descontosCellClick(Column: TColumn);
    procedure btn_transferematriculaClick(Sender: TObject);
    procedure edt_matriculadebito_segKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_matriculadebito_segExit(Sender: TObject);
    procedure edt_cpf_benKeyPress(Sender: TObject; var Key: Char);
    procedure ckb_todosClick(Sender: TObject);
    procedure edt_nomedestinoChange(Sender: TObject);
    procedure cb2_cod_empresafolhaEnter(Sender: TObject);
    procedure edt_matriculadebito_segEnter(Sender: TObject);
    procedure btn_histoperaClick(Sender: TObject);
    procedure btn_transferClick(Sender: TObject);
    procedure AtualizarSitBeneficiario(sit:string);
    procedure btn_imprimirClick(Sender: TObject);
    procedure cbx_cod_empresafolhaExit(Sender: TObject);
    procedure edt_cpf_benExit(Sender: TObject);
    procedure edt_cod_beneficiarioExit(Sender: TObject);
    procedure dbg_descontosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
    FPesquisaSQLDefalt, FMatricula, FDigito : String ;
    procedure BotoesOnOff(b:boolean);
    procedure CarregarCombos;
    procedure PanelOnOff(b:boolean);
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    wCod_Beneficiario, FMesReferencia, FAnoReferencia, FEmpresaFolha, WMudancas: String ;
    DadosEntrada, DadosSaida: TResultArray;
    WCodDesconto: Integer;
  end;

var
  Frm_Mov_2065: TFrm_Mov_2065;
  ChaveExp, Pagina: Integer;
  W30: String[30];
  W100: String[100];

implementation

uses Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes, Fun_Contabil,
  dtm_principal6, Bas_Impressao, Dlg_Mensagem, Mov_2037, Fun_data, Fun_Desconto,
  dtm_principal, Mov_Tramite, Fun_STR, Fun_Numero, Fun_Beneficiario, Cad_fpm, Cad_Segurado,
  Cad_Dependente, Mov_2024, Mov_Parcelamento, Mov_2049 ;

{$R *.DFM}

procedure TFrm_Mov_2065.rdb_matriculaClick(Sender: TObject);
begin
  inherited;
  edt_cpf_ben.Text:= '';
  cbx_cod_empresafolha.Visible:= True;
  Panel5.Caption:= '                                                                                                                                                  Local de Desconto';
  edt_inscricao_ben.ButtonExist := False ;
  edt_inscricao_ben.Text := '';
  edt_cod_beneficiario.Text := '';
  edt_inscricao_ben.Visible:= False;
  edt_cod_beneficiario.Visible:= True;
  edt_cpf_ben.Visible:= False;
  edt_cod_beneficiario.SetFocus;
end;

procedure TFrm_Mov_2065.CarregarCombos;
begin
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
end;

procedure TFrm_Mov_2065.rdb_benefiClick(Sender: TObject);
begin
  inherited;
  edt_cpf_ben.Text:= '';
  edt_inscricao_ben.ButtonExist := true ;
  edt_inscricao_ben.Visible:= True;
  edt_cod_beneficiario.Visible:= False;
  cbx_cod_empresafolha.Visible:= False;
  Panel5.Caption:= '';
  edt_cpf_ben.Visible:= False;
  edt_cod_beneficiario.Text := '';
  edt_inscricao_ben.Text := '';
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Mov_2065.BotoesOnOff(b:boolean);
begin
  dbg_descontos.visible := b ;
end;

procedure TFrm_Mov_2065.edt_inscricao_benButtonClick(Sender: TObject);
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
      edt_inscricao_ben.text := FieldByNAme('inscricao_ben').AsString;
      FMatricula := FieldByNAme('matriculadebito_seg').AsString;
      FDigito := FieldByNAme('digitomatdeb_seg').AsString;
    end;
  end;
end;

procedure TFrm_Mov_2065.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  FEmpresaFolha := '';
  PageControl1.ActivePageIndex:= 0;
  ckb_todos.Visible:= False;
  rdb_matricula.Checked:= True;
  edt_cod_beneficiario.SetFocus;
  DB_OpenSQL('select dtinadimplenciaDia from tbl_parametro');
  lbl_dtatualizacao.Caption := 'Data da Atualização: '+FormatDateTime('dd/mm/yyyy hh:nn:ss', tab.fieldbyname('dtinadimplenciaDia').asDateTime);
end;

function TFrm_Mov_2065.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_matriculadebito_seg.name, 'A Matrícula de Destino deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_empresafolha.name, 'A Empresa de Destino deve ser Preenchida !', VLD_Preenchido )) ;
end;

procedure TFrm_Mov_2065.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if rdb_benefi.Checked then
    if key = 13 then
      edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2065.btn_localizarClick(Sender: TObject);
Var
  WValor: Double;
begin
  inherited;
  Fdt_principal6.spc_cons_adm_descontos2.Close;
  pnl_alerta.Visible:= False;
  btn_transferematricula.Enabled:= False;
  if (edt_inscricao_ben.text = '') and (edt_cod_beneficiario.Text = '') and (edt_cpf_ben.Text = '') then begin
    Dlg_Ok('É necessário selecionar a Inscrição, Matrícula ou CPF',self);
    exit;
  end;
   if rdb_matricula.Checked = True then
     if cbx_cod_empresafolha.text = '' then begin
        Dlg_Ok('É necessário selecionar o Local de Desconto!',self);
        exit;
        end;
  if (not BAS_ValidarCampo(edt_cpf_ben.name, 'CPF Inválido !', VLD_CPF )) then
    begin
    Panel5.SetFocus;
    edt_cpf_ben.SetFocus;
    Exit;
    end;
  if rdb_cpf.Checked = False then
     edt_cpf_ben.Text:= '';
  if rdb_benefi.Checked = True then
     if edt_inscricao_ben.Text <> '' then
// Procura no FPM
        if DB_OpenSQL('select cpf_fpm from tbl_fpm where inscricao_ben = ' + edt_inscricao_ben.Text) > 0 then
           edt_cpf_ben.Text:= Tab.FieldByName('cpf_fpm').Text
        else
// Não existe no FPM, procura então no Beneficiario
           if DB_OpenSQL('select replace(replace(cpf_ben,''.'',''''),''-'','''') as '+
                         'cpf_ben from tbl_beneficiario where inscricao_ben = ' + edt_inscricao_ben.Text) > 0 then
              edt_cpf_ben.Text:= Tab.FieldByName('cpf_ben').Text;
  if rdb_matricula.Checked = True then
     if edt_cod_beneficiario.Text <> '' then
// Procura no FPM
     if DB_OpenSQL('select cpf_fpm from tbl_fpm where matricula_mte = ' + edt_cod_beneficiario.Text +
                   ' and cod_empresafolha = ' + IntToStr(cbx_cod_empresafolha.ValueItem)) > 0 then
        edt_cpf_ben.Text:= Tab.FieldByName('cpf_fpm').Text
     else
// Não existe no FPM, procura então no Beneficiario
        if DB_OpenSQL('select replace(replace(cpf_ben,''.'',''''),''-'','''') as cpf_ben from tbl_beneficiario b '+
                      'left join dbo.tbl_matriculaentrada me on me.cod_beneficiario = b.cod_beneficiario '+
                      'where me.matricula_mte = ' + edt_cod_beneficiario.Text + ' and me.cod_empresafolha = b.cod_empresafolha') > 0 then
           edt_cpf_ben.Text:= Tab.FieldByName('cpf_ben').Text;

  DataSource3.DataSet:= fdt_principal6.spc_cons_adm_descontos2;
  WValor:= 0;
  with Fdt_principal6.spc_cons_adm_descontos2 do
     begin
     Close;
     parambyname('@cpf_fpm').AsString := edt_cpf_ben.Text;
     Open;
     Application.ProcessMessages;
     while not EOF do
        begin
        WValor:= WValor + FieldByName('vldesconto_adf').Value;
        Next;
        end;
     lbl_total.Caption := IntToStr(fdt_principal6.spc_cons_adm_descontos2.RecordCount) + ' Descontos, R$' + FormatFloat('###,###,##0.00', WValor);
     end;
  btn_imprimir.Enabled:= False;
  if fdt_principal6.spc_cons_adm_descontos2.RecordCount > 0 then
     btn_imprimir.Enabled:= True;
  cb2_cod_empresafolha.ItemIndex := -1;
  edt_matriculadebito_seg.Text:= '';
  edt_digitomatdeb_seg.Text:= '';
  edt_nomedestino.Text:= '';
  edt_cpfdestino.Text:= '';
  edt_htm_motivo.Text:= '';
  btn_histopera.Enabled:= True;
  if Acs_AcessoEspecial('206501') then
     ckb_todos.Visible:= True;
end;

procedure TFrm_Mov_2065.PanelOnOff(b:boolean);
begin
end;

procedure TFrm_Mov_2065.btn_limpaClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEditTag(self,-5);
  CarregarCombos;
  cbx_cod_empresafolha.Refresh;
  lbl_total.Caption:= '';
  Fdt_principal6.spc_cons_adm_descontos2.Close;
  Fdt_principal6.spc_cons_adm_histTransfMatDesconto.Close;
  pnl_matDebito.Visible:= False;
  pnl_cpf.Visible:= False;
  pnl_motivo.Visible:= False;
  DBMemo1.Visible:= False;
  btn_transferematricula.Enabled:= False;
  btn_transfer.Enabled:= False;
  if rdb_matricula.Checked = True then
     edt_cod_beneficiario.SetFocus
  else
     if rdb_benefi.Checked = True then
        edt_inscricao_ben.SetFocus
     else
        if rdb_cpf.Checked = True then
           edt_cpf_ben.SetFocus;
end;

procedure TFrm_Mov_2065.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Fdt_principal6.spc_cons_adm_descontos2.close;
end;

procedure TFrm_Mov_2065.rdb_cpfClick(Sender: TObject);
begin
  inherited;
  cbx_cod_empresafolha.Visible:= False;
  Panel5.Caption:= '';
  edt_cpf_ben.Text:= '';
  edt_inscricao_ben.ButtonExist := true ;
  edt_inscricao_ben.Visible:= False;
  edt_cod_beneficiario.Visible:= False;
  edt_cpf_ben.Visible:= True;
  edt_cod_beneficiario.Text := '';
  edt_inscricao_ben.Text := '';
  edt_cpf_ben.SetFocus;
end;

procedure TFrm_Mov_2065.edt_cpf_benEnter(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.Text := '';
  edt_cod_beneficiario.Text := '';
  edt_cpf_ben.Text := '';
  btn_limpa.OnClick(Self);
  Fdt_principal6.spc_cons_adm_descontos2.Close;
end;

procedure TFrm_Mov_2065.edt_inscricao_benEnter(Sender: TObject);
begin
  inherited;
  edt_cpf_benEnter(Self);
  btn_limpa.OnClick(Self);
  Fdt_principal6.spc_cons_adm_descontos2.Close;
end;

procedure TFrm_Mov_2065.edt_cod_beneficiarioEnter(Sender: TObject);
begin
  inherited;
  edt_cpf_benEnter(Self);
  btn_limpa.OnClick(Self);
  Fdt_principal6.spc_cons_adm_descontos2.Close;
end;

procedure TFrm_Mov_2065.dbg_descontosCellClick(Column: TColumn);
begin
  inherited;
  pnl_matDebito.Visible:= False;
  pnl_cpf.Visible:= False;
  pnl_motivo.Visible:= False;
  btn_transferematricula.Visible:= False;
  DBMemo1.Visible:= True;
  btn_transfer.Enabled:= False;
  if Acs_AcessoEspecial('206501') then
     btn_transfer.Enabled:= True;
end;

procedure TFrm_Mov_2065.btn_transferematriculaClick(Sender: TObject);
var
  executado : boolean;
  i: integer;
begin
  inherited;
  if CriticaParametros then
     Exit;
  executado := False;
  DB_BeginTrans;

//  E PARCELAMENTO ?
  if dbg_descontos.SelectedRows.Count > 0 then
     for i:= 0 to dbg_descontos.SelectedRows.Count-1 do
        begin
        dbg_descontos.DataSource.DataSet.GotoBookmark(pointer(dbg_descontos.SelectedRows.Items[i]));

// Ler novamente a SP para preencher campos do formulário
        DB_OpenSQL('select d.cod_descontofolha, cod_empresafolha, matriculadebito_seg, parcelan_par '+
                   'from tbl_descontofolha d left join tbl_parcelamento p on p.cod_descontofolha = '+
                   'd.cod_descontofolha where d.cod_descontofolha = ' + dbg_descontos.DataSource.DataSet.FieldByName('cod_descontofolha').AsString);
        edt_cod_descontofolha.text := Tab.FieldByName('cod_descontofolha').AsString;
        if (Tab.FieldByName('cod_empresafolha').Value <> cb2_cod_empresafolha.valueitem) or (Tab.FieldByName('matriculadebito_seg').Value <> edt_matriculadebito_seg.Text) then
               begin

// Gravar Histórico
               executado := DB_ExecSQL('insert into tbl_histTransfMatDesconto values( ' +
                            fdt_principal6.spc_cons_adm_descontos2.fieldByName('cod_descontofolha').AsString +
                           ', getdate(), '+ IntToStr(FCod_Usuario) + ', ' + IntToStr(FCod_TelaSistema) + ', '+
                           fdt_principal6.spc_cons_adm_descontos2.fieldByName('cod_empresafolha').AsString + ', ' +
                           fdt_principal6.spc_cons_adm_descontos2.fieldByName('matriculadebito_seg').AsString + ', ''' +
                           edt_cpf_ben.Text + ''', ''' + edt_htm_motivo.Text + ''', ' + IntToStr(cb2_cod_empresafolha.ValueItem) + ', ' +
                           edt_matriculadebito_seg.Text + ', ''' + edt_cpfdestino.Text + ''')');

// Alterar Registro (quando não parcelamento)
               executado := DB_ExecSQL('update tbl_descontofolha set matriculadebito_seg = '+ edt_matriculadebito_seg.Text+
                            ', digitomatdeb_seg = '+edt_digitomatdeb_seg.text+', cod_empresafolha = ' +cb2_cod_empresafolha.valueitem +
                            ', cod_beneficiario = ' + edt_cod_beneficiario.Text + ' where cod_descontofolha = '+ edt_cod_descontofolha.Text);
               end;
        end;
  if executado then
     begin
     DB_Commit;
     Dlg_Ok('Transferência(s) efetuada(s) com Sucesso!',self);
     end
  else
     DB_RollBack;
  btn_limpa.OnClick(Self);
  btn_histopera.Enabled:= False;
  ckb_todos.Checked:= False;  
  btn_transferematricula.Enabled:= False;
end;

procedure TFrm_Mov_2065.edt_matriculadebito_segKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  edt_digitomatdeb_seg.Text := IntToStr(CalculaDigito(cb2_cod_empresafolha.valueitem, edt_matriculadebito_seg.Text));
end;

procedure TFrm_Mov_2065.edt_matriculadebito_segExit(Sender: TObject);
begin
  inherited;
  btn_transferematricula.Enabled:= False;
  if (edt_matriculadebito_seg.Text <> '') and (cb2_cod_empresafolha.Text <> '') then
     begin
     if DB_OpenSQL('select f.nome_fpm, f.digito_mte, f.cod_empresafolha, f.cod_situacao_fpm, f.cpf_fpm, f.inscricao_ben, f.cod_beneficiario, 0 as cod_sitbeneficiario '+
                   'from tbl_fpm f where ((cod_beneficiario is null) or (cod_beneficiario = 0)) and f.matricula_mte = ' + edt_matriculadebito_seg.Text + ' and f.cod_empresafolha = '+ cb2_cod_empresafolha.valueItem +
                   'union '+
                   'select b.nome_ben, s.digitomatdeb_seg, b.cod_empresafolha, b.cod_sitbeneficiario, b.cpf_ben, b.inscricao_ben, b.cod_beneficiario, b.cod_sitbeneficiario '+
                   'from tbl_beneficiario b inner join tbl_segurado s on b.cod_beneficiario = s.cod_beneficiario where s.matriculadebito_seg = ' + edt_matriculadebito_seg.Text + ' and b.cod_empresafolha = '+ cb2_cod_empresafolha.valueItem) > 0 then
{     if DB_OpenSQL('select f.nome_fpm, f.digito_mte, f.cod_empresafolha, f.cod_situacao_fpm, f.cpf_fpm, f.cod_situacao_fpm, b.inscricao_ben, '+
                  'b.cod_beneficiario, b.cod_sitbeneficiario from tbl_fpm f '+
                  'left join tbl_segurado m on m.matriculadebito_seg = f.matricula_mte '+
                  'left join tbl_beneficiario b on b.cod_beneficiario = m.cod_beneficiario and b.cod_empresafolha = f.cod_empresafolha '+
                  'where f.matricula_mte = '+ edt_matriculadebito_seg.Text+' and f.cod_empresafolha = '+ cb2_cod_empresafolha.valueItem) > 0 then}
        begin
        edt_nomedestino.Text := Tab.FieldByName('nome_fpm').AsString;
        edt_digitomatdeb_seg.Text := Tab.FieldByName('digito_mte').AsString;
        edt_cpfdestino.Text := Tab.FieldByName('cpf_fpm').AsString;
        edt_inscricao_ben.Text:= Tab.FieldByName('inscricao_ben').Text;
        edt_cod_beneficiario.Text:= '0';
        if Tab.FieldByName('cod_beneficiario').Text <> '' then
           edt_cod_beneficiario.Text:= Tab.FieldByName('cod_beneficiario').Text;
        edt_cod_sitbeneficiario.Text:= Tab.FieldByName('cod_sitbeneficiario').Text;
        edt_cod_situacao_fpm.Text:= Tab.FieldByName('cod_situacao_fpm').Text;
        AtualizarSitBeneficiario(edt_cod_sitbeneficiario.text);
        if edt_cod_situacao_fpm.Text = '2' then
           begin
           pnl_alerta.Visible:= True;
           pnl_alerta.Caption:= 'MATRÍCULA DESATIVADA';
           pnl_alerta.Color:= clBlack;
           end;
        edt_htm_motivo.SetFocus;
        btn_transferematricula.Enabled:= True;
        end
     else
        begin
        if not Dlg_YesNo('Não foi possível encontrar no Cadastro de Servidores, transferir mesmo assim?', Self) then
           begin
           edt_matriculadebito_seg.Text:= '';
           edt_digitomatdeb_seg.Text:= '';
           edt_matriculadebito_seg.SetFocus;
           Exit;
           end
        else
           begin
           edt_cod_beneficiario.Text:= '0';
           if Tab.FieldByName('cod_beneficiario').Text <> '' then
              edt_cod_beneficiario.Text:= Tab.FieldByName('cod_beneficiario').Text;
           btn_transferematricula.Enabled:= True;
           edt_htm_motivo.SetFocus;
           end
        end;
     end;
end;

procedure TFrm_Mov_2065.edt_cpf_benKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
{  if not (key in ['0'..'9',#8]) then
     key:=#0;}
end;

procedure TFrm_Mov_2065.ckb_todosClick(Sender: TObject);
var
 i: Integer;
begin
  inherited;
  btn_transfer.Enabled:= False;
  if Acs_AcessoEspecial('206501') then
     btn_transfer.Enabled:= True;
  if ckb_todos.Checked = True then
     DBMemo1.Visible:= True
  else
     begin
     pnl_matDebito.Visible:= False;
     pnl_cpf.Visible:= False;
     pnl_motivo.Visible:= False;
     DBMemo1.Visible:= False;
     btn_transfer.Enabled:= False;
     end;
  with dbg_descontos.DataSource.DataSet do
    begin
    First;
    for i := 0 to RecordCount - 1 do
      begin
      if ckb_todos.Checked = True then
         dbg_descontos.SelectedRows.CurrentRowSelected := True
      else
         dbg_descontos.SelectedRows.CurrentRowSelected := False;
      Next;
      end;
    end;
  dbg_descontos.SelectedRows.Refresh;
  if ckb_todos.Checked = True then
     btn_transfer.SetFocus
  else
     dbg_descontos.SetFocus;
end;

procedure TFrm_Mov_2065.edt_nomedestinoChange(Sender: TObject);
begin
  inherited;
  btn_transferematricula.Enabled:= True;
end;

procedure TFrm_Mov_2065.cb2_cod_empresafolhaEnter(Sender: TObject);
begin
  inherited;
  btn_transferematricula.Enabled:= False;
end;

procedure TFrm_Mov_2065.edt_matriculadebito_segEnter(Sender: TObject);
begin
  inherited;
  edt_nomedestino.Text:= '';
  edt_cpfdestino.Text:= '';
  edt_htm_motivo.Text:= '';
end;

procedure TFrm_Mov_2065.btn_histoperaClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex:= 1;
  Panel5.Enabled:= False;
  lbl_tothist.Caption := '0';
  if btn_histopera.Caption = 'Hist.Operações' then
     begin
     if edt_cpf_ben.Text <> '' then
        begin
        DataSource1.DataSet:= Fdt_principal6.spc_cons_adm_histTransfMatDesconto;
        with Fdt_principal6.spc_cons_adm_histTransfMatDesconto do
           begin
           Close;
           parambyname('@cpf_fpm').AsString := edt_cpf_ben.Text;
           Open;
           btn_histopera.Caption:= 'Voltar';
           lbl_tothist.Caption := IntToStr(fdt_principal6.spc_cons_adm_histTransfMatDesconto.RecordCount) + ' Registros';
           Application.ProcessMessages;
           end;
        end
     end
  else
     begin
     PageControl1.ActivePageIndex:= 0;
     btn_histopera.Caption:= 'Hist.Operações';
     Panel5.Enabled:= True;
     end;
end;

procedure TFrm_Mov_2065.btn_transferClick(Sender: TObject);
begin
  inherited;
  btn_transfer.Enabled:= False;
  if Acs_AcessoEspecial('206501') then
     begin
     Obj_SetFormObjValueByName(self, cb2_cod_empresafolha.name, cbx_cod_empresafolha.ValueItem);
     btn_histopera.Enabled:= False;
     pnl_matDebito.Visible:= True;
     pnl_cpf.Visible:= True;
     pnl_motivo.Visible:= True;
     btn_transferematricula.Visible:= True;
     cb2_cod_empresafolha.SetFocus;
     end;
end;

procedure TFrm_Mov_2065.AtualizarSitBeneficiario(sit:string);
begin
  if sit <> '' then begin
    DB_OpenSql('select nome_sit, tipo_sit from tbl_sitbeneficiario where cod_sitbeneficiario = '+sit);
    pnl_alerta.Caption := '***  '+'Situação : '+Tab.FieldByName('nome_sit').AsString+'  ***';
    case Tab.FieldByName('tipo_sit').AsInteger of
      1 : pnl_alerta.color := clYellow;
      2 : pnl_alerta.color := clRed;
    end;
    pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
    DB_ClearSQL;
  end;
end;
procedure TFrm_Mov_2065.btn_imprimirClick(Sender: TObject);
begin
  inherited;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_adm_descontos2;
  Frm_Bas_Impressao.FCampo1 := edt_cpf_ben.Text;
  Frm_Bas_Impressao.showReport(4226);
end;

procedure TFrm_Mov_2065.cbx_cod_empresafolhaExit(Sender: TObject);
begin
  inherited;
  btn_localizar.SetFocus;
end;

procedure TFrm_Mov_2065.edt_cpf_benExit(Sender: TObject);
begin
  inherited;
  if (edt_cpf_ben.Text <> '') or (edt_inscricao_ben.Text <> '') then
     SetCursorPos(btn_localizar.Left + 20,btn_localizar.Top + 100);
  Fdt_principal6.spc_cons_adm_descontos2.Close;
end;

procedure TFrm_Mov_2065.edt_cod_beneficiarioExit(Sender: TObject);
begin
  inherited;
  if edt_cod_beneficiario.Text <> '' then
     SetCursorPos(cbx_cod_empresafolha.Left + 20,cbx_cod_empresafolha.Top + 60);
  Fdt_principal6.spc_cons_adm_descontos2.Close;
end;

procedure TFrm_Mov_2065.dbg_descontosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
{  if not (gdFocused in State) then
  begin
    case Column.Field.Dataset.FieldbyName('cod_sitdesconto').AsInteger of
      1 : (Sender as TDBGrid).Canvas.Font.Color := clBlue ;
      100..200 : (Sender as TDBGrid).Canvas.Font.Color := clBlack ;
    else
      (Sender as TDBGrid).Canvas.Font.Color := clRed ;
    end;
  end
  else
    (Sender as TDBGrid).Canvas.Font.Color := clWhite ;
  dbg_descontos.DefaultDrawDataCell(Rect, dbg_descontos.columns[datacol].field, State);
 }
  if not (gdselected in State) then
     begin
     case Column.Field.Dataset.FieldbyName('cod_sitdesconto').AsInteger of
       1        : (Sender as TDBGrid).Canvas.Font.Color := clBlue ;
       100..200 : (Sender as TDBGrid).Canvas.Font.Color := clBlack ;
     else
                  (Sender as TDBGrid).Canvas.Font.Color := clRed ;
     end;
     end;
  dbg_descontos.DefaultDrawDataCell(Rect, dbg_descontos.columns[datacol].field, State);
end;

end.

