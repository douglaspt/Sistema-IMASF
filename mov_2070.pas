unit mov_2070;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList, FileCtrl, Psock, NMsmtp;

type
  TFrm_Mov_2070 = class(TFrm_Bas_TelaPadrao)
    DataSource1: TDataSource;
    btn_cancelar: TPDJButton;
    btn_salvar: TPDJButton;
    btn_alterar: TPDJButton;
    btn_novo: TPDJButton;
    Panel24: TPanel;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel7: TPanel;
    cbx_cod_banco: TDCComboBox;
    Panel4: TPanel;
    edt_agencia_ctc: TDCEdit;
    edt_digAgencia_ctc: TBEdit;
    edt_contaCorrente_ctc: TDCEdit;
    lbl_total: TLabel;
    dbg_contacorrente: TDBGrid;
    edt_matricula: TBEdit;
    edt_empresafolha: TBEdit;
    edt_cod_beneficiario: TBEdit;
    edt_cod_contacorrente: TBEdit;
    Panel6: TPanel;
    edt_nome_ben: TBEdit;
    edt_rg_ben: TBEdit;
    edt_dtnascim_ben: TDCDateEdit;
    btn_salvar1: TPDJButton;
    Label1: TLabel;
    edt_cpf_ben: TMaskEdit;
    Panel1: TPanel;
    edt_nome_bco: TBEdit;
    edt_agencia_ct2: TBEdit;
    edt_digAgencia_ct2: TBEdit;
    edt_contacorrente_ct2: TBEdit;
    btn_avancar: TButton;
    chb_contaprincipal: TCheckBox;
    btn_excluir: TPDJButton;
    btn_voltar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabSheet1Show(Sender: TObject);
    procedure dbg_contacorrenteDblClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Btn_FecharClick(Sender: TObject);
    procedure btn_salvar1Click(Sender: TObject);
    procedure edt_cpf_ben1Enter(Sender: TObject);
    procedure dbg_contacorrenteCellClick(Column: TColumn);
    procedure edt_cpf_benEnter(Sender: TObject);
    procedure btn_avancarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    procedure BotoesOnOff(b:boolean);
    procedure BotoesRequerimentoOnOff(b:boolean);
  public
    { Public declarations }
    WtitReq, wTitFav, Wcod_contacorrente, WIdade, WProcesso : Integer;
    wCod_Beneficiario, wCod_Favorecido, FMesReferencia, FAnoReferencia, Wcod_requerimento,
    WFlagVolta, WCPFTIT: String;
    WDtProtocolo: TDate;
    ValorPFGB: Double;
  end;

var
  Frm_Mov_2070: TFrm_Mov_2070;
  ChaveExp: Integer;
  wCod_Beneficiario, wCod_Favorecido, WCod_ContaCorrente: String;
  WDtProtocolo: TDate;

implementation

uses Fun_Obj, Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes, dtm_principal6, Bas_Impressao,
     Dlg_Mensagem, Mov_2037, Fun_data, dtm_principal, dtm_principal4, fun_str, Fun_Desconto;

{$R *.DFM}

procedure TFrm_Mov_2070.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := b ;
  btn_alterar.Enabled := b ;
  btn_salvar.Enabled := not b ;
  btn_cancelar.Enabled := not b;
  dbg_contacorrente.visible := b ;
end;

procedure TFrm_Mov_2070.FormShow(Sender: TObject);
begin
  inherited;
  WFlagVolta:= '';
  edt_cpf_ben.ReadOnly:= True;
  with Fdt_principal6.spc_cons_adm_contacorrente do
      begin
      Close;
      parambyname('@cod_beneficiario').AsInteger:= StrToInt(wCod_Favorecido);
      Open;
      Panel24.Enabled:= True;
      if Fdt_principal6.spc_cons_adm_contacorrente.RecordCount > 0 then
         begin
         edt_cod_beneficiario.Text:= wCod_Favorecido;
         edt_inscricao_ben.Text:= FieldByName('inscricao_ben').AsString;
         edt_nome_ben.Text:= FieldByName('nome_ben').AsString;
         edt_matricula.Text:= FieldByName('matriculadebito_seg').AsString;
         edt_empresafolha.Text:= FieldByName('cod_empresafolha').AsString;
         edt_cpf_ben.Text:= FieldByName('cpf_ben').AsString;
         edt_rg_ben.Text:= FieldByName('rg_ben').AsString;
         edt_dtnascim_ben.Text:= FieldByName('dtnascim_ben').AsString;
         wTitFav:= FieldByName('titulacartei_ben').Value;
         if (FieldByName('idade_ben').Value > 17) and (Copy(edt_cpf_ben.Text,1,1) = ' ') then
//         if Copy(edt_cpf_ben.Text,1,1) = ' ' then
            begin
            edt_cpf_ben.ReadOnly:= False;
            edt_cpf_ben.Color:= clWindow;
            edt_cpf_ben.SetFocus;
            end
         end
      else
         begin
         DB_OpenSQL('select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, s.matriculadebito_seg, b.cod_empresafolha, b.cpf_ben, b.rg_ben, b.dtnascim_ben, b.idade_ben from tbl_beneficiario b '+
                    'left join tbl_segurado s on b.cod_beneficiario = s.cod_beneficiario where b.cod_beneficiario = ' + wCod_Favorecido);
         edt_cod_beneficiario.Text:= wCod_Favorecido;
         edt_inscricao_ben.Text:= Tab.Fields[1].AsString;
         edt_nome_ben.Text:= Tab.Fields[2].AsString;
         edt_matricula.Text:= Tab.Fields[3].AsString;
         edt_empresafolha.Text:= Tab.Fields[4].AsString;
         edt_cpf_ben.Text:= Tab.Fields[5].AsString;
         edt_rg_ben.Text:= Tab.Fields[6].AsString;
         edt_dtnascim_ben.Text:= Tab.Fields[7].AsString;
         if (FieldByName('idade_ben').Value > 17) and (Copy(edt_cpf_ben.Text,1,1) = ' ') then
//         if Copy(edt_cpf_ben.Text,1,1) = ' ' then
            begin
            edt_cpf_ben.ReadOnly:= False;
            edt_cpf_ben.Color:= clWindow;
            edt_cpf_ben.SetFocus;
            end
         end;
      lbl_total.Caption := 'Total de Contas => '+IntToStr(Fdt_principal6.spc_cons_adm_contacorrente.RecordCount);
      end;
  Obj_LoadCombo(Self,'cbx_cod_banco', 'nome_bco', 'cod_banco', 'tbl_banco order by nome_bco');
//  btn_avancar.Width:= 102;
end;

procedure TFrm_Mov_2070.btn_novoClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Novo;
  BotoesOnOff(false);
  Obj_EmptyEditTag(self,1);
  dbg_contacorrente.Visible:= False;
  FormShow(self);
  EscreveLog(btn_novo.name);
  lbl_total.Visible:= False;
  btn_avancar.Width:= 0;
  cbx_cod_banco.ItemIndex:= -1;
  edt_nome_bco.Text:= '';
  edt_agencia_ct2.Text:= '';
  edt_digAgencia_ct2.Text:= '';
  edt_contaCorrente_ct2.Text:= '';
  Wcod_contacorrente:= 0;
end;

procedure TFrm_Mov_2070.btn_alterarClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Alteracao;
  with fdt_principal6.spc_cons_adm_contacorrente do
     begin
     BotoesOnOff(false);
     Obj_SetFormObjValueByName(self, cbx_cod_banco.name, FieldByName('banco_ctc').AsString);
     edt_agencia_ctc.Text:= FieldByName('agencia_ctc').AsString;
     edt_digAgencia_ctc.Text:= FieldByName('digAgencia_ctc').AsString;
     edt_contaCorrente_ctc.Text:= FieldByName('contaCorrente_ctc').AsString;
     edt_cod_contacorrente.Text:= FieldByName('cod_contacorrente').AsString;
     chb_contaprincipal.Checked:= FieldByName('contaprincipal_ctc').Value;
     end;
  lbl_total.Visible:= False;
  btn_salvar.Visible:= True;
  edt_nome_bco.Text:= '';
  edt_agencia_ct2.Text:= '';
  edt_digAgencia_ct2.Text:= '';
  edt_contaCorrente_ct2.Text:= '';
  Wcod_contacorrente:= 0;
end;

procedure TFrm_Mov_2070.btn_salvarClick(Sender: TObject);
begin
  inherited;
  if edt_contaCorrente_ctc.Text = '' then
     begin
     Dlg_Alerta('Digite os dados da conta corrente!', Self);
     Exit;
     end;
  if not Dlg_YesNo('Tem Certeza que Deseja Salvar?', Self) then
     Exit;
  if edt_matricula.Text = '' then
     edt_matricula.Text:= '0';
// Se a conta corrente a ser incluída/alterada for a principal, todas as outras contas serão secundárias.
  if chb_contaprincipal.Checked = True then
     DB_ExecSQL('update tbl_contacorrente set contaprincipal_ctc = 0 where cod_empresafolha = ' + edt_empresafolha.Text +
                ' and cod_beneficiario = ' + wCod_Favorecido);

  if FStatus = FST_Novo then
     DB_ExecSQL('insert into tbl_contacorrente (cod_beneficiario, banco_ctc, agencia_ctc, digAgencia_ctc, contaCorrente_ctc, contaprincipal_ctc, '+
                'matricula_ctc, cod_empresafolha) values (' + edt_cod_Beneficiario.Text + ',''' + IntToStr(cbx_cod_banco.ValueItem) + ''',''' +
                edt_agencia_ctc.Text + ''', ''' + edt_digAgencia_ctc.Text + ''', ''' + edt_contacorrente_ctc.Text + ''',' + intToStr(ord(chb_contaprincipal.Checked))+', '+
                edt_inscricao_ben.Text + ', '+ edt_empresafolha.Text + ')')
//Fazer pesquisa, se tiver algum reelmbolso feito, não deixa mais alterar...
     else
     DB_ExecSQL('update tbl_contacorrente set banco_ctc = ''' + IntToStr(cbx_cod_banco.ValueItem) + ''', '+
                'agencia_ctc = ''' + edt_agencia_ctc.Text + ''', '+
                'digAgencia_ctc = ''' + edt_digAgencia_ctc.Text + ''', '+
                'contaprincipal_ctc = ' + intToStr(ord(chb_contaprincipal.Checked)) + ', '+
                'contaCorrente_ctc = ''' + edt_contacorrente_ctc.Text + ''' '+
                'where cod_contacorrente = ' + edt_cod_contacorrente.Text);
  with fdt_principal6.spc_cons_adm_contacorrente do begin
    Close;
    Open;
  end;
  BotoesOnOff(true);
  EscreveLog(btn_salvar.name);
  lbl_total.Caption := 'Total de Contas => '+IntToStr(Fdt_principal6.spc_cons_adm_contacorrente.RecordCount);
  lbl_total.Visible:= True;
  btn_salvar.Visible:= True;
  Wcod_contacorrente:= 0;
end;

procedure TFrm_Mov_2070.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  BotoesOnOff(true);
  EscreveLog(btn_cancelar.name);
  lbl_total.Visible:= True;
  edt_nome_bco.Text:= '';
  edt_agencia_ct2.Text:= '';
  edt_digAgencia_ct2.Text:= '';
  edt_contaCorrente_ct2.Text:= '';
  Wcod_contacorrente:= 0;
//  btn_avancar.Width:= 102;
end;

procedure TFrm_Mov_2070.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal6.spc_cons_adm_contribPFGB.Close;
end;

procedure TFrm_Mov_2070.TabSheet1Show(Sender: TObject);
begin
  inherited;
  btn_novo.Enabled:= False;
  btn_alterar.Enabled:= False;
end;

procedure TFrm_Mov_2070.dbg_contacorrenteDblClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

procedure TFrm_Mov_2070.edt_inscricao_benButtonClick(Sender: TObject);
begin
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  BotoesRequerimentoOnOff(false);

  if wCod_Beneficiario <> '' then begin
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.cod_beneficiario = '+wCod_Beneficiario;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end
  else begin
    if edt_inscricao_ben.text = '' then
      FPesquisaSQL  := FPesquisaSQLDefalt
    else
      FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text + ' and s.tipo_sit < 2';
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end;

  if edt_cod_beneficiario.text = '' then
     edt_nome_ben.text := ''
  else
    begin
    DB_OpenSQL('select inscricao_ben, nome_ben, cod_beneficiario from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    wCod_Beneficiario:= Tab.FieldByName('cod_beneficiario').AsString;
    edt_nome_ben.text := Tab.FieldByNAme('nome_ben').AsString;
    FormShow(Self);
    end;
end;

procedure TFrm_Mov_2070.BotoesRequerimentoOnOff(b:boolean);
begin
  inherited;
    Btn_Fechar.Enabled := not b ;
end;

procedure TFrm_Mov_2070.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2070.Btn_FecharClick(Sender: TObject);
var
  i: integer;
begin
  if WFlagVolta = '' then
     begin
     Wcod_contacorrente:= 0;
     if dbg_contacorrente.SelectedRows.Count > 0 then
       for i:= 0 to dbg_contacorrente.SelectedRows.Count-1 do
          begin
          dbg_contacorrente.DataSource.DataSet.GotoBookmark(pointer(dbg_contacorrente.SelectedRows.Items[i]));
          Wcod_contacorrente:= dbg_contacorrente.DataSource.DataSet.FieldByName('cod_contacorrente').Value;
          end;
     DB_OpenSQL('select idade_ben, cpf_ben, titulacartei_ben from tbl_beneficiario where cod_beneficiario = ' + wCod_Favorecido);
     edt_cpf_ben.Text:= Tab.FieldByName('cpf_ben').Text;
     if edt_cpf_ben.Text = '   .   .   -  ' then
        begin
        Dlg_Alerta('Digite o CPF!', Self);
        edt_cpf_ben.ReadOnly:= False;
        edt_cpf_ben.SetFocus;
        Exit;
        end;
//     if (Tab.FieldByName('idade_ben').Value > 17) and ((Copy(edt_cpf_ben.Text,1,1) = ' ') or (edt_cpf_ben.Text = WCPFTIT)) then
     if (Tab.FieldByName('idade_ben').Value > 17) and (Copy(edt_cpf_ben.Text,1,1) = ' ') then
        begin
        btn_salvar1.Enabled:= False;
        Dlg_Alerta('Obrigatório CPF próprio para maiores de 18 anos!', Self);
        edt_cpf_ben.ReadOnly:= False;
        edt_cpf_ben.SetFocus;
        Exit;
        end;
     if Wcod_contacorrente = 0 then
        begin
        Dlg_Alerta('Selecione uma conta corrente!', Self);
        dbg_contacorrente.SetFocus;
        Exit;
        end;

     if Tab.FieldByName('titulacartei_ben').Text <> '0' then
        if (Tab.FieldByName('idade_ben').Value > 17) and (edt_cpf_ben.Text = WCPFTIT) then
        begin
        btn_salvar1.Enabled:= False;
        Dlg_Alerta('Dependente/Titular com mesmo CPF que o Titular sendo maior de 18 anos!', Self);
        Exit;
        end;
     if Wcod_contacorrente = 0 then
        begin
        Dlg_Alerta('Selecione uma conta corrente!', Self);
        dbg_contacorrente.SetFocus;
        Exit;
        end;



     edt_nome_bco.Text:= '';
     edt_agencia_ct2.Text:= '';
     edt_digAgencia_ct2.Text:= '';
     edt_contaCorrente_ct2.Text:= '';
//  DB_ExecSQL('update tbl_protocoloReembolso set cod_benPaciente = ' + wCod_Beneficiario + ', cod_benFavorecido = ' + wCod_Favorecido + ', cod_contacorrente = ' +
     DB_ExecSQL('update tbl_protocoloReembolso set cod_benFavorecido = ' + wCod_Favorecido + ', cod_contacorrente = ' +
                IntToStr(Wcod_contacorrente) + ', cod_status = 1 where numProtocolo = ' + IntToStr(WProcesso) + ' and dtprotocolo = ''' + FormatDateTime('mm/dd/yyyy', WDtProtocolo)+ '''');
     Wcod_contacorrente:= 0;
//     wCod_Beneficiario := '';
     end;
  inherited;
end;

procedure TFrm_Mov_2070.btn_salvar1Click(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cpf_ben.name, 'CPF Inválido !', VLD_CPF )) then
     begin
     edt_cpf_ben.ReadOnly:= False;
     edt_cpf_ben.Color:= clWindow;
     edt_cpf_ben.SetFocus;
     Exit;
     end;
  DB_ExecSQL('update tbl_beneficiario set cpf_ben = ''' + edt_cpf_ben.Text + ''' where cod_beneficiario = ' + edt_cod_beneficiario.Text);
  btn_salvar1.Enabled:= False;
  edt_cpf_ben.Color:= clInfoBk;
end;

procedure TFrm_Mov_2070.edt_cpf_ben1Enter(Sender: TObject);
begin
  btn_salvar1.Enabled:= True;
  inherited;
end;

procedure TFrm_Mov_2070.dbg_contacorrenteCellClick(Column: TColumn);
begin
  inherited;
  if dbg_contacorrente.DataSource.DataSet.FieldByName('cod_contacorrente').Value = Null then
     Exit;
  Wcod_contacorrente:= dbg_contacorrente.DataSource.DataSet.FieldByName('cod_contacorrente').Value;
  edt_nome_bco.Text:= dbg_contacorrente.DataSource.DataSet.FieldByName('nome_bco').Value;
  edt_agencia_ct2.Text:= dbg_contacorrente.DataSource.DataSet.FieldByName('agencia_ctc').Value;
  edt_digAgencia_ct2.Text:= dbg_contacorrente.DataSource.DataSet.FieldByName('digAgencia_ctc').Value;
  edt_contacorrente_ct2.Text:= dbg_contacorrente.DataSource.DataSet.FieldByName('contacorrente_ctc').Value;
//  btn_avancar.Width:= 102;
  btn_alterar.Enabled:= True;
  btn_excluir.Enabled:= True;
end;

procedure TFrm_Mov_2070.edt_cpf_benEnter(Sender: TObject);
begin
  inherited;
  edt_cpf_ben.Color:= clWindow;
  if edt_cpf_ben.Text = '   .   .   -  ' then
     btn_salvar1.Enabled:= True;
end;

procedure TFrm_Mov_2070.btn_avancarClick(Sender: TObject);
begin
  inherited;
  WFlagVolta:= '';
  Btn_FecharClick(Self);
end;

procedure TFrm_Mov_2070.btn_excluirClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Deseja Excluir essa Conta?', Self) then
     begin
     DB_ExecSQL('delete from tbl_contacorrente where cod_contacorrente = ' + IntToStr(Wcod_contacorrente));
     FormShow(Self);
     end;
end;

procedure TFrm_Mov_2070.btn_voltarClick(Sender: TObject);
begin
  inherited;
  WFlagVolta:= '1';
  Btn_FecharClick(Self);
end;

end.



