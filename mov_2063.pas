unit Mov_2063;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, Fun_Obj;

type
  TFrm_Mov_2063 = class(TFrm_Bas_TelaPadrao)
    btn_salvarReq: TPDJButton;
    DSOutros: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_nome: TDCEdit;
    Panel16: TPanel;
    SpeedButton6: TSpeedButton;
    edt_endereco_ben: TDCEdit;
    edt_cep_ben: TMaskEdit;
    btn_buscarcep: TPDJButton;
    edt_numero_ben: TDCEdit;
    Panel18: TPanel;
    edt_complemento_ben: TDCEdit;
    edt_bairro_ben: TDCEdit;
    Panel17: TPanel;
    cbx_cod_cidadeCep: TDCComboBox;
    cbx_cod_uf: TDCComboBox;
    btn_atualizarEndereco: TPDJButton;
    Panel1: TPanel;
    edt_fonecel_ben: TDCEdit;
    edt_foneresi_ben: TDCEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt_cepcor_ben: TMaskEdit;
    edt_enderecocor_ben: TDCEdit;
    edt_numerocor_ben: TDCEdit;
    btn_buscarcep2: TPDJButton;
    Panel44: TPanel;
    edt_complementocor_ben: TDCEdit;
    edt_bairrocor_ben: TDCEdit;
    Panel45: TPanel;
    cbx_cod_cidadecorCEP: TDCComboBox;
    cbx_cd2_uf: TDCComboBox;
    DBG_Itens: TDBGrid;
    Label6: TLabel;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    edt_email_ben: TDCEdit;
    edt_fonecome_seg: TDCEdit;
    chb_mailing_ben: TCheckBox;
    btn_chamacadcep: TPDJButton;
    stg_audi: TStringGrid;
    Label7: TLabel;   procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_salvarReqClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_buscarcepClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure btn_buscarcep2Click(Sender: TObject);
    procedure btn_atualizarEnderecoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DivideTres;
    procedure edt_nomeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_cep_benExit(Sender: TObject);
    procedure edt_cepcor_benExit(Sender: TObject);
    function CriticaParametros : Boolean ;
    procedure btn_chamacadcepClick(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TabSheet2Show(Sender: TObject);
  private
    { Private declarations }
    FStatus2, Seq, Seq2, CodIts : Integer ;
    Idade, DTrealizacao : String;
    FPesquisaSQLDefalt : String ;
    procedure BotoesRequerimentoOnOff(b:boolean);
  public
    { Public declarations }
    wCod_Desconto, wParcela, wCod_Beneficiario, wCod_Favorecido, WCod_ContaCorrente, WCEPDEP : String ;
    wPlano, wBotao, WUF, WUFCOR, WCID, WCIDCOR, Wtit, WProcesso: integer;
    WDtProtocolo: TDate;
  end;

var
  Frm_Mov_2063: TFrm_Mov_2063;
  ChaveExp: Integer;
  WCEP, WNUM, WEND, WBAI, WCOMPLEMENTO, WCEPC, WENDC, WNUMC, WBAIC, WCOMPLEMENTOC: String;
  Executado: boolean;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_Acesso,
     dtm_principal4, Fun_ConsCadastro, Fun_ConsCEP, dtm_principal6, Cad_Cep;

{$R *.DFM}

procedure TFrm_Mov_2063.BotoesRequerimentoOnOff(b:boolean);
begin
  inherited;
//  if wCod_Beneficiario <> '' then
//     btn_salvarReq.Enabled := b ;
    Btn_Fechar.Enabled := not b ;
end;

procedure TFrm_Mov_2063.FormShow(Sender: TObject);
begin
  inherited;
  Obj_LoadCombo(Self,'cbx_cod_cidadeCep', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep order by cidade_cep');
  Obj_LoadCombo(Self,'cbx_cod_cidadecorCEP', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep order by cidade_cep');
  Obj_LoadCombo(self,'cbx_cod_uf','sigla_uf','cod_uf', 'tbl_uf');
  Obj_LoadCombo(self,'cbx_cd2_uf','sigla_uf','cod_uf', 'tbl_uf');
  Fdt_principal6.spc_cons_dependenteTrocaEndereco.close;
  if wCod_Beneficiario <> '' then
     begin
     edt_cod_beneficiario.Text:= wCod_Beneficiario;
     edt_inscricao_benButtonClick(Self);
     end;
  DBG_Itens.Visible:= True;
  Label6.Visible:= True;
  if Wtit > 0 then
     begin
     DBG_Itens.Visible:= False;
     Label6.Visible:= False;
     end;
//  WProcesso:= 0;
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Mov_2063.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//   wCod_Beneficiario:= '';
   fdt_principal4.spc_cons_adm_reembolso.close;
   fdt_principal4.spc_cons_adm_itemreembolso.close;
end;

function TFrm_Mov_2063.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cep_ben.name, 'Cep deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_endereco_ben.name, 'Logradouro deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_endereco_ben.name, 'Número deve ser Preenchido, Caso digite 0 !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_cidadeCep.name, 'Cidade deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_bairro_ben.name, 'Bairro deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_uf.name, 'UF deve ser Preenchida !', VLD_Preenchido )) ;
end;

procedure TFrm_Mov_2063.btn_salvarReqClick(Sender: TObject);
var
  i,x : Integer;
begin
//  inherited;
  if CriticaParametros then
     Exit;

  if Length(edt_endereco_ben.Text + ', ' + edt_numero_ben.Text + ' ' + edt_complemento_ben.Text) > 80 then
     begin
     Dlg_Alerta('ATENÇÃO ! Logradouro, Nº e Complemento não podem exceder 80 caracteres!', Self);
     Panel16.SetFocus;
     edt_endereco_ben.SetFocus;
     Exit;
     end;
  if Length(edt_enderecocor_ben.Text + ', ' + edt_numerocor_ben.Text + ' ' + edt_complementocor_ben.Text) > 80 then
     begin
     Dlg_Alerta('ATENÇÃO ! Logradouro de Correspondência, Nº e Complemento não podem exceder 80 caracteres!', Self);
     GroupBox2.SetFocus;
     edt_enderecocor_ben.SetFocus;
     Exit;
     end;
  if (chb_mailing_ben.Checked) and (edt_email_ben.Text = '') then
    begin
    Dlg_Alerta('O E-Mail deve ser preenchido quando Aut.Mailing estiver clicado!', self);
    edt_email_ben.SetFocus;
    Exit;
    end;
  if edt_fonecel_ben.Text = '' then
    if Dlg_YesNo('Celular não cadastrado, deseja cadastra-lo?', Self) then
       begin
       edt_fonecel_ben.SetFocus;
       Exit;
       end;
  if edt_email_ben.Text = '' then
    if Dlg_YesNo('E-mail não cadastrado, deseja cadastra-lo?', Self) then
       begin
       edt_email_ben.SetFocus;
       Exit;
       end;

// Atualiza dados do beneficiário da Pesquisa
  Executado:= DB_ExecSQL('update tbl_beneficiario set cep_ben = ''' + edt_cep_ben.Text + ''', endereco_ben = '''+
             edt_endereco_ben.Text + ''', numero_ben = ''' + edt_numero_ben.Text +
             ''', complemento_ben = ''' + edt_complemento_ben.Text + ''', cod_cidadeCEP = ''' +
             IntToStr(cbx_cod_cidadeCep.ValueItem) + ''', cod_uf = ''' + IntToStr(cbx_cod_uf.ValueItem) + ''', bairro_ben = ''' +
             edt_bairro_ben.Text + ''', cepcor_ben = ''' + edt_cepcor_ben.Text + ''', enderecocor_ben = '''+
             edt_enderecocor_ben.Text + ''', numerocor_ben = ''' + edt_numerocor_ben.Text +
             ''', complementocor_ben = ''' + edt_complementocor_ben.Text + ''', cod_cidadecorCEP = ''' +
             IntToStr(cbx_cod_cidadecorCep.ValueItem) + ''', cd2_uf = ''' + IntToStr(cbx_cd2_uf.ValueItem) + ''', bairrocor_ben = ''' +
             edt_bairrocor_ben.Text + ''', fonecel_ben = ''' + edt_fonecel_ben.Text + ''', foneresi_ben = ''' + edt_foneresi_ben.Text +
             ''', email_ben = ''' + edt_email_ben.Text + ''', mailing_ben = ' + IntToStr(ord(chb_mailing_ben.checked)) + ', dtendereco_ben = getdate() ' +
             ' where inscricao_ben = ''' + edt_inscricao_ben.Text + ''' and cod_beneficiario = ''' + edt_cod_beneficiario.text + '''');
  if Executado then
     Begin
     Executado:= DB_ExecSQL('update tbl_segurado set fonecome_seg = '''+edt_fonecome_seg.Text+''' where cod_beneficiario = '+edt_cod_beneficiario.Text);
     if Executado then
        Begin
        WCID:= cbx_cod_cidadeCep.ValueItem;
        WCIDCOR:= cbx_cod_cidadecorCep.ValueItem;
        WUF:= cbx_cod_uf.ValueItem;
        WUFCOR:= cbx_cd2_uf.ValueItem;

        DadosSaida:= LerDadosTela(Self);
        WMudancas:= '';
        For x:= 1 to High(DadosSaida) do
           if DadosEntrada[x] <> DadosSaida[x] then
              WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';
        if WMudancas <> '' then
           begin
           GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, 'Situação Anterior ', WMudancas, 0);
           Dlg_Ok('Dados do titular atualizados com Sucesso!',self);
           end;

// Atualiza dados dos beneficiários selecionados no Grid
        if DBG_Itens.SelectedRows.Count > 0 then
           Begin
           for i:= 0 to DBG_Itens.SelectedRows.Count-1 do
              Begin
              DBG_Itens.DataSource.DataSet.GotoBookmark(pointer(DBG_Itens.SelectedRows.Items[i]));
// Ler novamente a SP para preencher campos do formulário
              DB_OpenSQL('select b.inscricao_ben, b.nome_ben, b.cep_ben, b.cepcor_ben, b.endereco_ben, b.enderecocor_ben, b.cod_cidadeCEP, b.cod_cidadecorCEP, '+
                         'b.numero_ben, b.numerocor_ben, b.complemento_ben, b.complementocor_ben, b.bairro_ben, b.bairrocor_ben, b.cod_uf, b.cd2_uf, b.titulacartei_ben, '+
                         'fonecel_ben, b.foneresi_ben, b.email_ben, s.fonecome_seg, b.mailing_ben from tbl_beneficiario b left join tbl_segurado s '+
                         'on s.cod_beneficiario = b.cod_beneficiario where b.cod_beneficiario = '+DBG_Itens.DataSource.DataSet.FieldByName('cod_beneficiario').AsString);
              if Tab.FieldByName('titulacartei_ben').Text = '0' then
                 begin
                 edt_fonecome_seg.Visible:= True;
                 Panel4.Caption:= '  E-Mail                                                                                                                                                      Fone Comercial';
                 end;
              DadosEntrada := LerDadosTela(Self);
              Executado:= DB_ExecSQL('update tbl_beneficiario set cep_ben = ''' + edt_cep_ben.Text + ''', endereco_ben = '''+
                         edt_endereco_ben.Text + ''', numero_ben = ''' + edt_numero_ben.Text +
                         ''', complemento_ben = ''' + edt_complemento_ben.Text + ''', cod_cidadeCEP = ''' +
                         IntToStr(cbx_cod_cidadeCep.ValueItem) + ''', cod_uf = ''' + IntToStr(cbx_cod_uf.ValueItem) + ''', bairro_ben = ''' +
                         edt_bairro_ben.Text + ''', cepcor_ben = ''' + edt_cepcor_ben.Text + ''', enderecocor_ben = '''+
                         edt_enderecocor_ben.Text + ''', numerocor_ben = ''' + edt_numerocor_ben.Text +
                         ''', complementocor_ben = ''' + edt_complementocor_ben.Text + ''', cod_cidadecorCEP = ''' +
                         IntToStr(cbx_cod_cidadecorCep.ValueItem) + ''', cd2_uf = ''' + IntToStr(cbx_cd2_uf.ValueItem) + ''', bairrocor_ben = ''' +
                         edt_bairrocor_ben.Text + ''', fonecel_ben = ''' + edt_fonecel_ben.Text + ''', foneresi_ben = ''' + edt_foneresi_ben.Text +
                         ''', email_ben = ''' + edt_email_ben.Text + ''', mailing_ben = ' + IntToStr(ord(chb_mailing_ben.checked)) + ', dtendereco_ben = getdate() ' +
                         ' where inscricao_ben = ''' + edt_inscricao_ben.Text + ''' and cod_beneficiario = ''' + DBG_Itens.DataSource.DataSet.FieldByName('cod_beneficiario').AsString + '''');
              if not Executado then
                 begin
                 Dlg_Erro('Erro na alteração de dados de dependentes/assistidos cód.beneficiario = ' + DBG_Itens.DataSource.DataSet.FieldByName('cod_beneficiario').AsString, Self);
                 Exit;
                 end;
{
// CUIDADO AO INSERIR NOVOS CAMPOS, POIS DEVE INFLUENCIAR NESTA ATUALIZAÇÃO
   DB_ExecSQL('update tbl_beneficiario set cep_ben = ''' + DadosSaida[9] + ''', endereco_ben = '''+
              DadosSaida[7] + ''', numero_ben = ''' + DadosSaida[11] +
              ''', complemento_ben = ''' + DadosSaida[13] + ''', cod_cidadeCEP = ''' +
              IntToStr(WCID) + ''', cod_uf = ''' + IntToStr(WUF) + ''', bairro_ben = ''' +
              DadosSaida[15] + ''', cepcor_ben = ''' + DadosSaida[25] + ''', enderecocor_ben = '''+
              DadosSaida[27] + ''', numerocor_ben = ''' + DadosSaida[29] + ''', foneresi_ben = '''+ DadosSaida[23]+
              ''', complementocor_ben = ''' + DadosSaida[31] + ''', cod_cidadecorCEP = ''' +
              IntToStr(WCIDCOR) + ''', cd2_uf = ''' + IntToStr(WUFCOR) + ''', bairrocor_ben = ''' + DadosSaida[33] + ''' , dtendereco_ben = getdate() ' +
              ' where inscricao_ben = ''' +  edt_inscricao_ben.Text +
              ''' and cod_beneficiario = ''' + DBG_Itens.DataSource.DataSet.FieldByName('cod_beneficiario').AsString + '''');}

              WMudancas:= '';
              For x:= 1 to High(DadosSaida) do
                if DadosEntrada[x] <> DadosSaida[x] then
                   if DadosEntrada[x-1] <> 'nome_ben' then
                      WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';

              if WMudancas <> '' then
                 GeraAuditoria(StrToInt(DBG_Itens.DataSource.DataSet.FieldByName('cod_beneficiario').AsString ), edt_inscricao_ben.Text, 'Situação Anterior ', WMudancas, 0);
              End;
           Dlg_Ok('Dados dependentes/assistidos atualizados com Sucesso!',self);
           End;
        edt_nomeChange(Self);
        Exit;
        End;
     End
   else
     begin
     Dlg_Erro('Erro na Alteração de Dados de Dependentes/Assistidos !',self);
     Exit;
     end;
  BotoesRequerimentoOnOff(False);
  Obj_EmptyEdit(self);
  edt_cep_ben.Text:= '';
  edt_cepcor_ben.Text:= '';
  FormShow(Self);
  EscreveLog(btn_salvarReq.name);
end;

procedure TFrm_Mov_2063.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2063.btn_buscarcepClick(Sender: TObject);
var
//  Fcod_cidadeCep : integer;
  Fcod_cidadeCep, WQtd : integer;
begin
  inherited;
  wBotao:= 1;
  DivideTres;
  edt_endereco_ben.Text:= '';
  edt_bairro_ben.Text:= '';
{  if edt_cep_ben.Text <> '' then
  begin
    if DB_OpenSQL('select tipoLogradouro_cep, endereco_cep, bairro_cep, cod_uf, cod_cidadeCep'+
    ' from tbl_cep where cod_cep = '+STR_RemoveChar(edt_cep_ben.Text,'-')) > 0 then
    begin
      edt_endereco_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
      edt_bairro_ben.Text := Tab.fieldByName('bairro_cep').AsString;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_uf',Tab.fieldByName('cod_uf').AsInteger);
      Fcod_cidadeCep := Tab.fieldByName('cod_cidadeCep').AsInteger;
      Application.ProcessMessages;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadeCep', Fcod_cidadeCep);
    end;
  end;}

  edt_endereco_ben.ReadOnly:= True;
  edt_bairro_ben.ReadOnly:= True;
  edt_endereco_ben.Color:= clInfoBk;
  edt_bairro_ben.Color:= clInfoBk;
  edt_endereco_ben.SetFocus;
  if edt_cep_ben.Text <> '' then
  begin
    if DB_OpenSQL('select c.tipoLogradouro_cep, c.endereco_cep, c.bairro_cep, c.cod_uf, c.cod_cidadeCep, '+
                  'ci.qtd_cep from tbl_CEP c inner join tbl_cidadeCEP ci on c.cod_cidadeCEP = ci.cod_cidadeCEP '+
                  'where c.cod_cep = ' + STR_RemoveChar(edt_cep_ben.Text,'-')) > 0 then
    begin
      WQtd:= Tab.fieldByName('qtd_cep').AsInteger;
      if WQTD > 2 then
         begin
         edt_endereco_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
         edt_bairro_ben.Text := Tab.fieldByName('bairro_cep').AsString;
         end
      else
         if WCEP = edt_cep_ben.Text then
            begin
            edt_endereco_ben.Text := WEND;
            edt_bairro_ben.Text := WBAI;
            end
         else
            begin
            edt_endereco_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
            edt_bairro_ben.Text := Tab.fieldByName('bairro_cep').AsString;
            end;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_uf',Tab.fieldByName('cod_uf').AsInteger);
      Fcod_cidadeCep := Tab.fieldByName('cod_cidadeCep').AsInteger;
//      cbx_cod_ufExit(self);
      Application.ProcessMessages;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadeCep', Fcod_cidadeCep);

// Se existe apenas uma única rua na Cidade
      if WQtd < 2 then
         begin
         Dlg_Alerta('ATENÇÃO, CEP Único para a Cidade! ', Self);
         edt_endereco_ben.ReadOnly:= False;
         edt_bairro_ben.ReadOnly:= False;
         edt_endereco_ben.Color:= clWindow;
         edt_bairro_ben.Color:= clWindow;
         Panel16.SetFocus;
         edt_endereco_ben.SetFocus;
         end;
//      edt_dtendereco_ben.Date := Date;
    end
    else
      begin
      if not Dlg_YesNo('CEP ' + edt_cep_ben.Text + ' Não Cadastrado, Deseja Cadastrar?', Self) then
         begin
         Panel16.SetFocus;
         edt_cep_ben.SetFocus;
         Exit;
         end
      else
         begin
         WCEPDEP:= edt_cep_ben.Text;
         btn_chamacadcepClick(Self);
         edt_cep_ben.Text:= WCEPDEP;
         Panel16.SetFocus;
         btn_buscarcepClick(Self);
         btn_buscarcep2Click(Self);
         edt_cep_ben.SetFocus;
         end;
      end;
  end;
  
end;

procedure TFrm_Mov_2063.edt_inscricao_benButtonClick(Sender: TObject);
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
    edt_nome.text := ''
  else
   begin
//   DB_OpenSQL('select * from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
   DB_OpenSQL('select b.inscricao_ben, b.nome_ben, b.cep_ben, b.cepcor_ben, b.endereco_ben, b.enderecocor_ben, b.cod_cidadeCEP, b.cod_cidadecorCEP, '+
              'b.numero_ben, b.numerocor_ben, b.complemento_ben, b.complementocor_ben, b.bairro_ben, b.bairrocor_ben, b.cod_uf, b.cd2_uf, b.titulacartei_ben, '+
              'fonecel_ben, b.foneresi_ben, b.email_ben, s.fonecome_seg, b.mailing_ben from tbl_beneficiario b left join tbl_segurado s '+
              'on s.cod_beneficiario = b.cod_beneficiario where b.cod_beneficiario = '+edt_cod_beneficiario.text);
   edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
   edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
   edt_cep_ben.Text:= Tab.FieldByName('cep_ben').AsString;
   edt_cepcor_ben.Text:= Tab.FieldByName('cepcor_ben').AsString;
   edt_endereco_ben.Text:= Tab.FieldByName('endereco_ben').AsString;
   edt_enderecocor_ben.Text:= Tab.FieldByName('enderecocor_ben').AsString;
   edt_numero_ben.Text:= Tab.FieldByName('numero_ben').AsString;
   edt_numerocor_ben.Text:= Tab.FieldByName('numerocor_ben').AsString;
   edt_complemento_ben.Text:= Tab.FieldByName('complemento_ben').AsString;
   edt_complementocor_ben.Text:= Tab.FieldByName('complementocor_ben').AsString;
   edt_bairro_ben.Text:= Tab.FieldByName('bairro_ben').AsString ;
   edt_bairrocor_ben.Text:= Tab.FieldByName('bairrocor_ben').AsString ;
   edt_fonecel_ben.Text:= Tab.FieldByName('fonecel_ben').AsString ;
   edt_foneresi_ben.Text:= Tab.FieldByName('foneresi_ben').AsString ;
   edt_email_ben.Text:= Tab.FieldByName('email_ben').AsString ;
   edt_fonecome_seg.Text:= Tab.FieldByName('fonecome_seg').AsString ;
   Obj_SetFormObjValueByName(self, cbx_cod_cidadeCep.Name, Tab.fieldByName('cod_cidadeCEP').AsInteger);
   Obj_SetFormObjValueByName(self, cbx_cod_cidadecorCEP.Name, Tab.fieldByName('cod_cidadecorCEP').AsInteger);
   Obj_SetFormObjValueByName(Self, 'cbx_cod_uf',Tab.fieldByName('cod_uf').AsInteger);
   Obj_SetFormObjValueByName(Self, 'cbx_cd2_uf',Tab.fieldByName('cd2_uf').AsInteger);
   Obj_SetFormObjValueByName(Self, 'chb_mailing_ben',Tab.fieldByName('mailing_ben').AsInteger);
   edt_fonecome_seg.Visible:= False;
   DBG_Itens.Visible:= False;
   Label6.Visible:= False;
   Panel4.Caption:= '  E-Mail';
   if Tab.FieldByName('titulacartei_ben').Text = '0' then
      begin
      DBG_Itens.Visible:= True;
      Label6.Visible:= True;
      edt_fonecome_seg.Visible:= True;
      Panel4.Caption:= '  E-Mail                                                                                                                                                      Fone Comercial';
      end
   end;
   DadosEntrada := LerDadosTela(Self);
end;

procedure TFrm_Mov_2063.btn_buscarcep2Click(Sender: TObject);
var
//  Fcod_cidadeCep : integer;
  Fcod_cidadeCepcor, WQtd : integer;
begin
  inherited;
  wBotao:= 2;
  DivideTres;
  edt_enderecocor_ben.Text:= '';
  edt_bairrocor_ben.Text:= '';
{
  if edt_cepcor_ben.Text <> '' then
  begin
    if DB_OpenSQL('select tipoLogradouro_cep, endereco_cep, bairro_cep, cidade_cep, cod_uf, cod_cidadeCep'+
    ' from tbl_cep where cod_cep = '+STR_RemoveChar(edt_cepcor_ben.Text,'-')) > 0 then
    begin
      edt_enderecocor_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
      edt_bairrocor_ben.Text := Tab.fieldByName('bairro_cep').AsString;
      Obj_SetFormObjValueByName(Self, 'cbx_cd2_uf',Tab.fieldByName('cod_uf').AsInteger);
      Fcod_cidadeCep := Tab.fieldByName('cod_cidadeCep').AsInteger;
      Application.ProcessMessages;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadecorCEP', Fcod_cidadeCep);
    end;
  end;}

  if edt_cepcor_ben.Text <> '' then
    begin
    if DB_OpenSQL('select c.tipoLogradouro_cep, c.endereco_cep, c.bairro_cep, c.cod_uf, c.cod_cidadeCep, '+
                  'ci.qtd_cep from tbl_CEP c inner join tbl_cidadeCEP ci on c.cod_cidadeCEP = ci.cod_cidadeCEP '+
                  'where c.cod_cep = ' + STR_RemoveChar(edt_cepcor_ben.Text,'-')) > 0 then
      begin
      WQtd:= Tab.fieldByName('qtd_cep').AsInteger;
      if WQTD > 2 then
         begin
         edt_enderecocor_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
         edt_bairrocor_ben.Text := Tab.fieldByName('bairro_cep').AsString;
         end
      else
         if WCEPC = edt_cepcor_ben.Text then
            begin
            edt_enderecocor_ben.Text := WENDC;
            edt_bairrocor_ben.Text := WBAIC;
            end
         else
            begin
            edt_enderecocor_ben.Text := Tab.fieldByName('tipoLogradouro_cep').AsString+' '+Tab.fieldByName('endereco_cep').AsString;
            edt_bairrocor_ben.Text := Tab.fieldByName('bairro_cep').AsString;
            end;
      Obj_SetFormObjValueByName(Self,'cbx_cd2_uf',Tab.fieldByName('cod_uf').AsInteger);
      Fcod_cidadeCepcor := Tab.fieldByName('cod_cidadeCep').AsInteger;
//      cbx_cod_ufExit(self);
      Application.ProcessMessages;
      Obj_SetFormObjValueByName(Self, 'cbx_cod_cidadecorCEP', Fcod_cidadeCepcor);

// Se existe apenas uma única rua na Cidade
      if WQtd < 2 then
         begin
         Dlg_Alerta('ATENÇÃO, CEP Único para a Cidade! ', Self);
         edt_enderecocor_ben.ReadOnly:= False;
         edt_bairrocor_ben.ReadOnly:= False;
         edt_enderecocor_ben.Color:= clWindow;
         edt_bairrocor_ben.Color:= clWindow;
         GroupBox2.SetFocus;
         edt_enderecocor_ben.SetFocus;
         end;
//      edt_dtendereco_ben.Date := Date;
      end
    else
      begin
      if not Dlg_YesNo('CEP ' + edt_cepcor_ben.Text + ' Não Cadastrado, Deseja Cadastrar?', Self) then
         begin
         GroupBox2.SetFocus;
         edt_cepcor_ben.SetFocus;
         Exit;
         end
      else
         begin
         WCEPDEP:= edt_cepcor_ben.Text;
         btn_chamacadcepClick(Self);
         edt_cepcor_ben.Text:= WCEPDEP;
         GroupBox2.SetFocus;
         btn_buscarcep2Click(Self);
         edt_cepcor_ben.SetFocus;
         end;
      end;
   end;
end;

procedure TFrm_Mov_2063.btn_atualizarEnderecoClick(Sender: TObject);
begin
  inherited;
  edt_cepcor_ben.text := edt_cep_ben.text;
  edt_enderecocor_ben.text := edt_endereco_ben.text;
  edt_bairrocor_ben.text := edt_bairro_ben.text;
  Obj_SetFormObjValueByName(Self,'cbx_cod_cidadecorCEP',cbx_cod_cidadeCep.ValueItem);
  Obj_SetFormObjValueByName(Self,'cbx_cd2_uf',cbx_cod_uf.ValueItem);
  edt_numerocor_ben.Text := edt_numero_ben.Text;
  edt_complementocor_ben.Text := edt_complemento_ben.Text;
  EscreveLog(btn_atualizarEndereco.name);
end;

procedure TFrm_Mov_2063.SpeedButton1Click(Sender: TObject);
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

procedure TFrm_Mov_2063.SpeedButton6Click(Sender: TObject);
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

procedure TFrm_Mov_2063.DivideTres;
Var
 i,j,k: Integer;
 WEnderecoA, WEnderecoB, WNumB, WComplB: String;
begin
// Dividimos campo Endereço, em Logradouro, Número e Complemento para adequação de Lay-out
// Pelo botão de busca de cep, ele sabe em quais campos tem que fazer as alterações
  inherited;
  i:= 0;
  j:= 0;
  k:= 0;
  if wBotao = 1 then
     if edt_numero_ben.Text <> '' then
        Exit;
  if wBotao = 2 then
     if edt_numerocor_ben.Text <> '' then
        Exit;
  WEnderecoB:= '';
  WNumB:= '';
  WComplB:='';
  if wBotao = 1 then
     WEnderecoA:= edt_endereco_ben.Text
  else
     WEnderecoA:= edt_enderecocor_ben.Text;
  for i:= 1 to length(WEnderecoA) do
     begin
     if j = 0 then
        begin
        if (WEnderecoA[i] = 'N') and (WEnderecoA[i+1] = '°') or
           (WEnderecoA[i] = 'n') and (WEnderecoA[i+1] = '°') then
           j:= 1
        else
           if (WEnderecoA[i] = ',') or (WEnderecoA[i] in ['0'..'9']) then
              if WEnderecoA[i] = ',' then
                 if WEnderecoA[i+ 1] = ' ' then
                    j:= 1
                 else
                    j:= 0
              else
                 j:= 1
           else
              WEnderecoB:= WEnderecoB + WEnderecoA[i]
        end
     else
        if j = 1 then
           if WEnderecoA[i] = ' ' then
              if (WEnderecoA[i- 1] = ',') or (WEnderecoA[i- 1] = ' ') then
                 j:= 1
              else
                 j:= 2
           else
              WNumB:= WNumB + WEnderecoA[i]
        else
           if j = 2 then
              begin
              WComplB:= WComplB + WEnderecoA[i];
              if Copy(WComplB,1,1) = ' ' then
                 WComplB:= '';
              end;
     end;
     try
     if WNumb <> '' then
        strtoint(Copy(WNumb,1,1));
     except
     end;
  if wBotao = 1 then
     begin
     edt_endereco_ben.Text:= WEnderecoB;
     edt_numero_ben.Text:= WNumB;
     edt_complemento_ben.Text:= WComplB;
     end
  else
     begin
     edt_enderecocor_ben.Text:= WEnderecoB;
     edt_numerocor_ben.Text:= WNumB;
     edt_complementocor_ben.Text:= WComplB;
     end;
end;

procedure TFrm_Mov_2063.edt_nomeChange(Sender: TObject);
begin
  inherited;
  if edt_inscricao_ben.Text <> '' then
  begin
    with Fdt_principal6.spc_cons_dependenteTrocaEndereco do
      begin
      close;
      parambyname('@cod_beneficiario').AsInteger:= StrToInt(edt_cod_beneficiario.Text);
      parambyname('@inscricao_ben').AsInteger := StrToInt(edt_inscricao_ben.text);
      open;
      end;
  end;
end;

procedure TFrm_Mov_2063.FormCreate(Sender: TObject);
begin
  inherited;
// No caso de 2 logradouros no mesmo Cep, qdo cidade só tem um cep
  {btn_salvarReq.Enabled:= False;
  Panel1.Enabled:= False;
  Panel4.Enabled:= False;
  Panel16.Enabled:= False;
  Panel17.Enabled:= False;
  Panel18.Enabled:= False;
  Panel43.Enabled:= False;
  Panel44.Enabled:= False;
  Panel45.Enabled:= False;
  edt_endereco_ben.ReadOnly:= True;
  cbx_cod_uf.ReadOnly:= True;
  cbx_cod_cidadeCep.ReadOnly:= True;
  edt_bairro_ben.ReadOnly:= True;
  edt_enderecocor_ben.ReadOnly:= True;
  cbx_cd2_uf.ReadOnly:= True;
  cbx_cod_cidadecorCEP.ReadOnly:= True;
  edt_bairrocor_ben.ReadOnly:= True;
  edt_endereco_ben.Color:= clInfoBk;
  cbx_cod_uf.Color:= clInfoBk;
  cbx_cod_cidadeCep.Color:= clInfoBk;
  edt_bairro_ben.Color:= clInfoBk;
  edt_enderecocor_ben.Color:= clInfoBk;
  cbx_cd2_uf.Color:= clInfoBk;
  cbx_cod_cidadecorCEP.Color:= clInfoBk;
  edt_bairrocor_ben.Color:= clInfoBk;
  if wCod_Beneficiario = '' then
     begin
     btn_salvarReq.Enabled:= True;
     Panel1.Enabled:= True;
     Panel4.Enabled:= True;
     Panel16.Enabled:= True;
     Panel17.Enabled:= True;
     Panel18.Enabled:= True;
     Panel43.Enabled:= True;
     Panel44.Enabled:= True;
     Panel45.Enabled:= True;
     edt_endereco_ben.ReadOnly:= False;
     cbx_cod_uf.ReadOnly:= False;
     cbx_cod_cidadeCep.ReadOnly:= False;
     edt_bairro_ben.ReadOnly:= False;
     edt_enderecocor_ben.ReadOnly:= False;
     cbx_cd2_uf.ReadOnly:= False;
     cbx_cod_cidadecorCEP.ReadOnly:= False;
     edt_bairrocor_ben.ReadOnly:= False;
     edt_endereco_ben.Color:= clWindow;
     cbx_cod_uf.Color:= clWindow;
     cbx_cod_cidadeCep.Color:= clWindow;
     edt_bairro_ben.Color:= clWindow;
     edt_enderecocor_ben.Color:= clWindow;
     cbx_cd2_uf.Color:= clWindow;
     cbx_cod_cidadecorCEP.Color:= clWindow;
     edt_bairrocor_ben.Color:= clWindow;
     end;}
end;

procedure TFrm_Mov_2063.edt_cep_benExit(Sender: TObject);
begin
  inherited;
  btn_buscarcepClick(Self);
end;

procedure TFrm_Mov_2063.edt_cepcor_benExit(Sender: TObject);
begin
  inherited;
  btn_buscarcep2Click(Self);
end;

procedure TFrm_Mov_2063.btn_chamacadcepClick(Sender: TObject);
begin
  inherited;
  Hide;
  Frm_Cad_Cep := TFrm_Cad_Cep.Create(Self);
  Frm_Cad_Cep.WCOD_CEP := WCEPDEP;
  Frm_Cad_Cep.ShowModal;
  Frm_Cad_Cep.Release;
  Show;
end;

procedure TFrm_Mov_2063.stg_audiDrawCell(Sender: TObject; ACol,
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

procedure TFrm_Mov_2063.TabSheet2Show(Sender: TObject);
begin
  inherited;
  if edt_inscricao_ben.Text = '' then
     edt_cod_beneficiario.Text:= '';
  if edt_cod_beneficiario.Text <> '' then
     begin
     ChaveExp:= StrToInt(STR_RemoveChar(edt_cod_beneficiario.Text,'-'));
     GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 1);
     end
  else
     GetInfoAuditoria1ou2(self, stg_audi.name, 999999999, 1);
end;

end.



