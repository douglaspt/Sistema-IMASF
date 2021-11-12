unit Mov_2046;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, ImgList, BEditButton;

type
  TFrm_Mov_2046 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    ImageList1: TImageList;
    btn_beneficiario: TPDJButton;
    PageControl: TPageControl;
    tbs_principal: TTabSheet;
    tbs_aprovacao: TTabSheet;
    btn_atualizar: TSpeedButton;
    lsv_agenda: TListView;
    Label4: TLabel;
    chb_aprov2: TCheckBox;
    chb_aprov1: TCheckBox;
    btn_imprimirauto: TPDJButton;
    btn_aprovarpericia: TPDJButton;
    PDJButton3: TPDJButton;
    PDJButton5: TPDJButton;
    tbs_pericia: TTabSheet;
    btn_pericia: TPDJButton;
    PDJButton6: TPDJButton;
    tbs_contribuicao: TTabSheet;
    GroupBox1: TGroupBox;
    btn_calcular: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btn_contribuicao: TPDJButton;
    edt_vldesconto_adf: TDCEdit;
    edt_dtdesconto_flh: TDCDateEdit;
    edt_nguia_flh: TDCEdit;
    PDJButton7: TPDJButton;
    tbs_reprovacao: TTabSheet;
    btn_recusar: TPDJButton;
    PDJButton8: TPDJButton;
    Label5: TLabel;
    chb_pericia3: TCheckBox;
    Label6: TLabel;
    chb_contrib1: TCheckBox;
    Label7: TLabel;
    chb_recusar: TCheckBox;
    chb_pericia2: TCheckBox;
    chb_contrib2: TCheckBox;
    lbl_nome_ben: TLabel;
    btn_voltar: TPDJButton;
    PDJButton10: TPDJButton;
    PDJButton11: TPDJButton;
    PDJButton12: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    btn_removerCarencia: TPDJButton;
    btn_adicionarCarencia: TPDJButton;
    edt_informacao_car: TDCEdit;
    cbx_cod_nivelcar: TDCComboBox;
    PDJButton13: TPDJButton;
    ScrollBox1: TScrollBox;
    LsB_Carencia: TListBox;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    edt_cod_cid: TEditButton;
    Label10: TLabel;
    btn_adicionarCID: TPDJButton;
    btn_removerCID: TPDJButton;
    DataSource6: TDataSource;
    PDJButton1: TPDJButton;
    btn_imprimiradesao: TPDJButton;
    Label11: TLabel;
    cbx_status: TComboBox;
    tbs_aprovacaoben: TTabSheet;
    chb_confirmaInscricao: TCheckBox;
    Label12: TLabel;
    PDJButton2: TPDJButton;
    btn_confirmaInscricao: TPDJButton;
    Label13: TLabel;
    edt_dtsituacao: TDCDateEdit;
    edt_valorConsulta: TDCEdit;
    edt_nguia2: TDCEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edt_dtcarencia_ben2: TDCDateEdit;
    edt_dtpericia: TDCDateEdit;
    Label17: TLabel;
    lbl_pericia: TLabel;
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_aprovarpericiaClick(Sender: TObject);
    procedure btn_periciaClick(Sender: TObject);
    procedure btn_contribuicaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_imprimirautoClick(Sender: TObject);
    procedure btn_beneficiarioClick(Sender: TObject);
    procedure btn_recusarClick(Sender: TObject);
    procedure btn_calcularClick(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
    procedure PDJButton8Click(Sender: TObject);
    procedure chb_aprov1Click(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure btn_adicionarCarenciaClick(Sender: TObject);
    procedure lsv_agendaClick(Sender: TObject);
    procedure lsv_agendaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_removerCarenciaClick(Sender: TObject);
    procedure chb_contrib1Click(Sender: TObject);
    procedure chb_recusarClick(Sender: TObject);
    procedure tbs_periciaShow(Sender: TObject);
    procedure edt_cod_cidButtonClick(Sender: TObject);
    procedure btn_adicionarCIDClick(Sender: TObject);
    procedure btn_removerCIDClick(Sender: TObject);
    procedure btn_imprimiradesaoClick(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_confirmaInscricaoClick(Sender: TObject);
    procedure chb_confirmaInscricaoClick(Sender: TObject);
    procedure cbx_cod_nivelcarChange(Sender: TObject);
    procedure chb_pericia2Click(Sender: TObject);
    procedure chb_pericia3Click(Sender: TObject);
    procedure lsv_agendaColumnClick(Sender: TObject; Column: TListColumn);
    procedure edt_valorConsultaExit(Sender: TObject);
    procedure edt_vldesconto_adfExit(Sender: TObject);
    procedure tbs_contribuicaoShow(Sender: TObject);
    procedure tbs_aprovacaobenShow(Sender: TObject);
    procedure cbx_statusChange(Sender: TObject);
  private
    { Private declarations }
    idade, cod_planopagto, cod_tarifa, Finscricao, FMatricula, FDigito,
    FCod_empresafolha, FTit, FDescOrder : String;
    FOrder, FPlano : integer;
    ListItem: TListItem;
    DtInscricao, DtPericia : TDateTime;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    wCod_Desconto, wParcela : String ;
  end;

var
  Frm_Mov_2046: TFrm_Mov_2046;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
 dtm_principal3, Bas_Impressao, Cad_Dependente, Fun_Data, Fun_Desconto, Fun_Obj, Fun_ConsCadastro,
 dtm_principal6, dtm_principal2, Cad_Segurado ;

{$R *.DFM}


function TFrm_Mov_2046.CriticaParametros : Boolean ;
begin
 // result :=(not BAS_ValidarCampo(edt_cod_descontofolha.name, 'O Código do Desconto deve ser Preenchido !', VLD_Preenchido )) or
 // (not BAS_ValidarCampo(edt_parcelan_par.name, 'O Parcelamento deve ser Preenchido !', VLD_Preenchido ));

end;

procedure TFrm_Mov_2046.btn_atualizarClick(Sender: TObject);
var
 FStatus : integer;
begin
  inherited;
  if cbx_status.Text = '' then begin
    Dlg_Ok('Selecione um Status do Beneficiário', self);
    Exit;
  end;
  case FOrder of
   0 : FDescOrder := 'carteirinha';
   1 : FDescOrder := 'nome_ben';
   2 : FDescOrder := 'a.status_ani';
   3 : FDescOrder := 'a.dtaprovacao_ani desc';
   4 : FDescOrder := 'a.dtpericia_ani desc';
   5 : FDescOrder := 'a.dtcontribuicao_ani desc';
   6 : FDescOrder := 'a.dtcancelado_ani desc';
  end;
  FStatus := cbx_status.ItemIndex+1;
  if FStatus = 4 then
    FStatus := FStatus + 1;
  DB_OpenSQL('SELECT a.cod_beneficiario, a.status_ani, a.obs_ani, a.dtaprovacao_ani,'+
  ' a.dtpericia_ani, a.dtcontribuicao_ani, a.dtcancelado_ani, '+
  ' imasf.dbo.fun_FormatarCarteirinha(substring(cast(cod_empresa as varchar),1,1)+ cast(cod_plano as varchar)+right(''0000''+cast(inscricao_ben as varchar),5)+'+
  ' right(''00''+cast(titulacartei_ben as varchar),2)+ cast(digito_ben as varchar)) as carteirinha,'+
  ' case when (b.nome_ben is null) then obs_ani else b.nome_ben end as nome_ben, b.inscricao_ben, b.cod_tipodependente, b.sexo_ben, b.dtinscricao_ben'+
  ' FROM  tbl_andamentoInscricao AS a LEFT JOIN tbl_beneficiario AS b ON a.cod_beneficiario = b.cod_beneficiario '+
  ' WHERE a.status_ani = '+inttostr(FStatus)+
  ' ORDER BY '+FDescOrder+'');
  lsv_agenda.Items.Clear;
  while not tab.Eof do
  begin
    ListItem := lsv_agenda.Items.Add;
    ListItem.Caption := Tab.FieldByName('carteirinha').AsString;
    listItem.SubItems.add(Tab.FieldByName('nome_ben').AsString);
    case Tab.FieldByName('status_ani').AsInteger of
      0 : listItem.SubItems.add('pré cadastrado');
      1 : listItem.SubItems.add('aguardando perícia');
      2 : listItem.SubItems.add('aprovado pela perícia');
      3 : listItem.SubItems.add('cadastrado com sucesso');
      5 : listItem.SubItems.add('cancelados');
    else
      listItem.SubItems.add(Tab.FieldByName('status_ani').AsString);
    end;  
    listItem.SubItems.add(Tab.FieldByName('dtaprovacao_ani').AsString);
    listItem.SubItems.add(Tab.FieldByName('dtpericia_ani').AsString);
    listItem.SubItems.add(Tab.FieldByName('dtcontribuicao_ani').AsString);
    listItem.SubItems.add(Tab.FieldByName('dtcancelado_ani').AsString);
    ListItem.SubItems.Add(Tab.FieldByName('cod_beneficiario').AsString);
    ListItem.SubItems.add(Tab.FieldByName('inscricao_ben').AsString);
    ListItem.SubItems.add(Tab.FieldByName('cod_tipodependente').AsString);
    ListItem.SubItems.add(Tab.FieldByName('sexo_ben').AsString);
    ListItem.SubItems.add(Tab.FieldByName('dtinscricao_ben').AsString);
    ListItem.ImageIndex := Tab.FieldByName('status_ani').AsInteger;
    tab.Next;
  end;
end;

procedure TFrm_Mov_2046.btn_aprovarpericiaClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Confirma aprovação do '+lbl_nome_ben.Caption+'?',self) then begin
  {  DB_ExecSQL('insert into tbl_carencia select '+ListItem.ListView.Selected.SubItems[6]+
    ', cod_nivelcar, getdate()+dias_niv, descricao_niv from tbl_nivelcar where cod_nivelcar in (1,3)');
    if ListItem.ListView.Selected.SubItems[9] = 'F' then
      DB_ExecSQL('insert into tbl_carencia select '+ListItem.ListView.Selected.SubItems[6]+
      ', cod_nivelcar, getdate()+dias_niv, descricao_niv from tbl_nivelcar where cod_nivelcar in (2)');   }
    DB_ExecSQL('update tbl_andamentoInscricao set dtaprovacao_ani = getdate(), status_ani = 1 where cod_beneficiario = '+
    ListItem.ListView.Selected.SubItems[6]);
    btn_atualizarClick(self);
    Dlg_Ok('Beneficiário Aprovado para Perícia !',self);
    chb_aprov1.Checked := false;
    chb_aprov2.Checked := false;
    btn_voltarClick(self);
  end;
end;

procedure TFrm_Mov_2046.btn_periciaClick(Sender: TObject);
var
 s : string;
begin
  inherited;
  if (not BAS_ValidarCampo(edt_dtpericia.name, 'A Data da Perícia Médica deve ser Preenchida !', VLD_DataPreenchida )) then
    Exit;
  DB_ExecSQL('update tbl_andamentoInscricao set dtpericia_ani = '''+Data_Format('mm/dd/yyyy', edt_dtpericia.Date)+''', status_ani = 2 where cod_beneficiario = '+
  ListItem.ListView.Selected.SubItems[6]);
  //Atualizar data da carência
  {DB_OpenSQL('update tbl_carencia set dtlimite_car = getdate()+dias_niv'+
  ' from tbl_nivelcar n where tbl_carencia.cod_nivelcar = n.cod_nivelcar'+
  ' and cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]);}
  if chb_pericia2.Checked then
  begin
    DB_ExecSQL('delete from tbl_doencaPreExistente where cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]);
    DB_ExecSQL('delete from tbl_carencia where cod_nivelcar = 4 and cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]);
  end;
  if chb_pericia3.Checked then
  begin
    edt_informacao_car.Text := '';
    if fdt_principal6.spc_cons_adm_doencaPreExistente.RecordCount > 0 then
    begin
      s := ' ';
      fdt_principal6.spc_cons_adm_doencaPreExistente.First;
      while not fdt_principal6.spc_cons_adm_doencaPreExistente.eof do
      begin
        s := s + fdt_principal6.spc_cons_adm_doencaPreExistente.FieldbyName('cod_cid').AsString+',';
        fdt_principal6.spc_cons_adm_doencaPreExistente.Next;
      end;
      s := copy(s,1,length(s)-1);
      cbx_cod_nivelcar.ItemIndex := 3;
      cbx_cod_nivelcarChange(self);
      edt_informacao_car.Text := edt_informacao_car.Text+s;
      btn_adicionarCarenciaClick(self);
    end;
  end;
  PageControl.ActivePage := tbs_principal;
  chb_pericia2.Checked := false;
  chb_pericia3.Checked := false;
  LsB_Carencia.Clear;
  btn_atualizarClick(self);
end;

procedure TFrm_Mov_2046.btn_contribuicaoClick(Sender: TObject);
var
  Executado : boolean;
begin
  inherited;
if (not BAS_ValidarCampo(edt_dtdesconto_flh.name, 'A Data de Referência deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_vldesconto_adf.name, 'O Valor da Contribuição deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nguia_flh.name, 'O Numero da Guia deve ser Preenchido !', VLD_Preenchido )) then
 // (not BAS_ValidarCampo(edt_valorConsulta.name, 'O Valor da Consulta deve ser Preenchido !', VLD_Preenchido )) or
 // (not BAS_ValidarCampo(edt_nguia2.name, 'O Numero da Guia da Consulta deve ser Preenchido !', VLD_Preenchido )) then
    Exit;
  //buscar matricula e empresafolha
  with Fdt_principal.spc_cons_adm_beneficiario001 do begin
    close;
    parambyname('@cod_beneficiario').AsString := ListItem.ListView.Selected.SubItems[6] ;
    open;
    Finscricao := FieldByNAme('inscricao_ben').AsString;
    FMatricula := FieldByNAme('matriculadebito_seg').AsString;
    FDigito := FieldByNAme('digitomatdeb_seg').AsString;
    Ftit := FieldByName('titulacartei_ben').AsString;
    FCod_empresafolha := FieldByName('cod_empresafolha').AsString;
    FPlano := FieldByName('cod_plano').AsInteger;
  end;
  DB_BeginTrans;
  // incluir Primeira contribuição
  Executado := DB_ExecSQL('insert into tbl_descontofolha ('+
  ' cod_beneficiario, vlfixo_adf, vlbase_adf, matriculadebito_seg, digitomatdeb_seg, nguia_flh, '+
  ' vldesconto_adf, vljuros_flh, cod_tarifa, cod_empresafolha, dtreferencia_flh, dtdesconto_flh, '+
  ' cod_sitdesconto, dtsitdesconto_flh, cod_usuario, dtsistema_flh, dtrefatraso_flh, dtpagto_flh, vlpago_flh) values ('+
  ListItem.ListView.Selected.SubItems[6]+', 0, 0, '+FMatricula+', '+FDigito+', '+edt_nguia_flh.Text+
  ', '''+STR_SubstChar(edt_vldesconto_adf.Text,',','.')+''', 0, '+cod_tarifa+', '+FCod_empresafolha+', '''+
  Data_Format('mm',edt_dtdesconto_flh.Date) + '/01/'+Data_Format('yyyy',edt_dtdesconto_flh.date)+
  ''', '''+Data_Format('mm/dd/yyyy', edt_dtdesconto_flh.Date)+''', 102, getdate(),'+
  Str_IntToStr(FCod_Usuario)+', getdate() , '''+
  Data_Format('mm',edt_dtdesconto_flh.Date) + '/01/'+Data_Format('yyyy',edt_dtdesconto_flh.date)+
  ''', '''+Data_Format('mm/dd/yyyy', edt_dtdesconto_flh.Date)+''', '''+STR_SubstChar(edt_vldesconto_adf.Text,',','.')+''')');
  if Executado then
    Executado := Set_HistoricoDesconto(Get_UltimoDesconto(FCod_Usuario), FCod_Usuario, FCod_TelaSistema, 1, '');

 { if edt_valorConsulta.Text = ' ' then
     edt_valorConsulta.Text := '0'
  else
     edt_valorConsulta.Text := STR_RemoveChar(edt_valorConsulta.Text,'.');  }
//    try
//      StrToFloat(edt_valorConsulta.Text);

  //incluir cobrança da consulta - 632  --comentado em 18/03/2014
 { if (edt_valorConsulta.Text <> '') and (edt_valorConsulta.Text <> '0') then
  begin
    Executado := DB_ExecSQL('insert into tbl_descontofolha ('+
    ' cod_beneficiario, vlfixo_adf, vlbase_adf, matriculadebito_seg, digitomatdeb_seg, nguia_flh, '+
    ' vldesconto_adf, vljuros_flh, cod_tarifa, cod_empresafolha, dtreferencia_flh, dtdesconto_flh, '+
    ' cod_sitdesconto, dtsitdesconto_flh, cod_usuario, dtsistema_flh, dtrefatraso_flh, obs_flh, dtpagto_flh, vlpago_flh) values ('+
    ListItem.ListView.Selected.SubItems[6]+', 0, 0, '+FMatricula+', '+FDigito+', '+edt_nguia2.Text+
    ', '''+STR_SubstChar(edt_valorConsulta.Text,',','.')+''', 0, 632, '+FCod_empresafolha+', '''+
    Data_Format('mm',edt_dtdesconto_flh.Date) + '/01/'+Data_Format('yyyy',edt_dtdesconto_flh.date)+
    ''', '''+Data_Format('mm/dd/yyyy', edt_dtdesconto_flh.Date)+''', 102, getdate(),'+
    Str_IntToStr(FCod_Usuario)+', getdate() , '''+
    Data_Format('mm',edt_dtdesconto_flh.Date) + '/01/'+Data_Format('yyyy',edt_dtdesconto_flh.date)+
    ''',''Consulta - Perícia'', '''+Data_Format('mm/dd/yyyy', edt_dtdesconto_flh.Date)+
    ''', '''+STR_SubstChar(edt_valorConsulta.Text,',','.')+''')');
    if Executado then
      Executado := Set_HistoricoDesconto(Get_UltimoDesconto(FCod_Usuario), FCod_Usuario, FCod_TelaSistema, 1, '');
  end;}
  // Altera o Status do Andamento
  if Executado then
    Executado := DB_ExecSQL('update tbl_andamentoInscricao set dtcontribuicao_ani = getdate(), status_ani = 3 where cod_beneficiario = '+
    ListItem.ListView.Selected.SubItems[6]);
  // Altera as Datas do Cadastro de Beneficiários
  if Executado then
    Executado := DB_ExecSQL('update tbl_beneficiario set dtinscricao_ben = cast('''+Data_Format('mm/dd/yyyy', edt_dtdesconto_flh.Date)+''' as datetime), '+
    ' dtsituacao_ben = cast('''+Data_Format('mm/dd/yyyy', edt_dtdesconto_flh.Date)+''' as datetime), '+
    ' dtcarencia_ben = cast('''+Data_Format('mm/dd/yyyy', edt_dtdesconto_flh.Date)+''' as datetime) '+
    ', dtplano_ben = cast('''+Data_Format('mm/dd/yyyy', edt_dtdesconto_flh.Date)+''' as datetime) '+//linha adicionada em 30/10/2012
    ' where cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]);
  //Altera Situação do beneficiario para Normal
  if Executado then
    Executado := Ben_AlteraSituacao(ListItem.ListView.Selected.SubItems[6], Finscricao, FTit, Data_Format('dd/mm/yyyy',edt_dtdesconto_flh.Date), '1', '29', '9999');
  //Pedido de Carteirinha
{  if Executado then
    Executado := DB_ExecSQL('insert into tbl_histcarteira  (cod_beneficiario, cod_emissaocarteira, dtemissao_hct, cod_statuscarteira)'+
    ' values ('+ListItem.ListView.Selected.SubItems[6]+',1, getdate(), 1)');
  //pedido de Carteirinha Unimed em caso de plano Especial
  if Executado then
    if FPlano = 3 then
      Executado := DB_ExecSQL('insert into tbl_histcarteiraUnimed  (cod_beneficiario, cod_emissaocarteira, dtemissao_hcu, cod_statuscarteira, cod_localunimed)'+
      ' values ('+ListItem.ListView.Selected.SubItems[6]+',1, getdate(), 1, 11)');  }

    
  //Elimina o Plano de Pagamento Especial quando o beneficiário não tem plano de pagto esp (Ex. Plano de Pagto 1,2 ou 3 "Dependentes ou Assistidos que tem direito a tabela antiga")
  if Executado then
    Executado := DB_ExecSQL('delete from tbl_beneficiarioPlanoPagtoEspecial where cod_beneficiario = '+
    ListItem.ListView.Selected.SubItems[6]+' and cod_planoPagto in (1, 2, 3)');
  if Executado then
    Executado := DB_ExecSQL('delete from tbl_histPlanoPagtoEspecial where cod_beneficiario = '+
    ListItem.ListView.Selected.SubItems[6]+' and cod_planoPagto in (1, 2, 3)');
  // Atualiza a Data Limite das Carencias
  if Executado then
  begin
    Executado := Db_ExecSql('update tbl_carencia set dtlimite_car = cast('''+Data_Format('mm/dd/yyyy', edt_dtdesconto_flh.Date)+''' as datetime) + dias_niv'+
    ' from tbl_carencia c, tbl_nivelcar n where c.cod_nivelcar = n.cod_nivelcar'+
    ' and cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]);
  end;
  if (Executado) then begin
    Dlg_Ok(MSG_DB_OKUpdate,self);
    DB_Commit;
  end
  else begin
    DB_RollBack;
    Dlg_Erro('Ocorreu um Erro interno e não foi possível efetuar a alteração dos dados do beneficiário!',self);
  end;
  // Limpar Tela
  chb_contrib1.Checked := false;
  chb_contrib1.Checked := false;
  edt_dtdesconto_flh.Text := '';
  edt_vldesconto_adf.Text := '';
  edt_nguia_flh.Text := '';
  //edt_nguia2.Text := '';
  //edt_valorConsulta.Text := '';
  PageControl.ActivePage := tbs_principal;
  btn_atualizarClick(self);
end;

procedure TFrm_Mov_2046.FormCreate(Sender: TObject);
begin
  inherited;
  if Acs_AcessoEspecial('204601') then begin
    btn_imprimirauto.Visible := true;
//    btn_aprovarpericia.Visible := true;
  end;
end;

procedure TFrm_Mov_2046.btn_imprimirautoClick(Sender: TObject);
begin
  inherited;
  DB_OpenSQL('select b.cod_beneficiario, b.inscricao_ben, b.cod_empresafolha, b.nome_ben, s.matriculadebito_seg, s.digitomatdeb_seg, e.nome_emp'+
  ' from tbl_beneficiario b, tbl_segurado s, tbl_empresafolha e where b.cod_beneficiario = s.cod_beneficiario '+
  ' and b.cod_empresafolha = e.cod_empresafolha and inscricao_ben = '+ListItem.ListView.Selected.SubItems[7]);
  Frm_Bas_Impressao.FCampo1 := ListItem.ListView.Selected.SubItems[0];
  Frm_Bas_Impressao.FCampo2 := Tab.FieldByNAme('nome_ben').AsString;
  Frm_Bas_Impressao.FCampo3 := Tab.FieldByNAme('inscricao_ben').AsString;
  Frm_Bas_Impressao.FCampo4 := Tab.FieldByNAme('nome_emp').AsString;
  Frm_Bas_Impressao.FCampo5 := PAR_ChefiaADM;
  Frm_Bas_Impressao.FCampo6 :=  Tab.FieldByNAme('matriculadebito_seg').AsString;
  Frm_Bas_Impressao.showReport(4189);
end;

procedure TFrm_Mov_2046.btn_beneficiarioClick(Sender: TObject);
begin
  inherited;
  Hide;
  if ListItem.ListView.Selected.SubItems[8] = '0' then
  begin
    Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
    Frm_Cad_Segurado.wCod_Beneficiario := ListItem.ListView.Selected.SubItems[6];
    Frm_Cad_Segurado.ShowModal;
    Frm_Cad_Segurado.Release;
  end
  else begin
    Frm_Cad_Dependente := TFrm_Cad_Dependente.Create(Self);
    Frm_Cad_Dependente.wCod_Beneficiario := ListItem.ListView.Selected.SubItems[6];
    Frm_Cad_Dependente.ShowModal;
    Frm_Cad_Dependente.Release;
  end;
  Show;
end;

procedure TFrm_Mov_2046.btn_recusarClick(Sender: TObject);
begin
  inherited;
  if DB_OpenSQL('select * from tbl_descontofolha where cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]) > 0 then
  begin
    Dlg_Alerta('Não é possivel recusar inscrição pois há descontos lançados para esse beneficiario!',self);
    Exit;
  end;
    DB_ExecSQL('update tbl_andamentoInscricao set dtcancelado_ani = getdate(), status_ani = 5, obs_ani = '''+
  ListItem.ListView.Selected.Caption+'  -  '+ListItem.ListView.Selected.SubItems[0]+' - Cancelado'''+
  ' where cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]);
  DB_ExecSQL('delete from tbl_beneficiario where cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]);
  chb_recusar.Checked := false;
  PageControl.ActivePage := tbs_principal;
  btn_atualizarClick(self);
end;

procedure TFrm_Mov_2046.btn_calcularClick(Sender: TObject);
var
  Dias : Integer;
  vltabela, vltabelaDp : double;
begin
  inherited;
  if (not BAS_ValidarCampo(edt_dtdesconto_flh.name, 'A Data do Desconto deve ser Preenchida !', VLD_DataPreenchida )) then
    exit;
  Dias := 31 - strtoint(Data_Format('dd',edt_dtdesconto_flh.Date));
  DB_OpenSQL('select vlfixo_piv, vldependente_piv from tbl_planoitemvalor where cod_planopagto = '+cod_planopagto+
  ' and '+idade+' >= faixaIni_piv and '+idade+' <= faixaFin_piv');
  vltabela := tab.fieldByName('vlfixo_piv').AsFloat;
  vltabelaDp := tab.fieldByName('vldependente_piv').AsFloat;
  if  cod_planopagto <> '1' then
    edt_vldesconto_adf.Text := FormatFloat('###,###,##0.00',(vltabela / 30) * Dias)
  else
    edt_vldesconto_adf.Text := FormatFloat('###,###,##0.00',(vltabelaDp / 30) * Dias);
end;

procedure TFrm_Mov_2046.PDJButton5Click(Sender: TObject);
begin
  inherited;
  if not Acs_AcessoEspecial('204601') then begin
    Dlg_Alerta(MSG_DLG_NaoAutorizado,self);
    Exit;
  end;
  if (lsv_agenda.Items.Count < 1) or (not ListItem.ListView.Focused) then begin
    Dlg_Alerta('É necessário selecionar um Beneficiário',self);
    Exit;
  end;
  if ListItem.ListView.Selected.SubItems[2] <> '' then
    Dlg_Alerta('Aprovação Administrativa já foi efetivada em '+ListItem.ListView.Selected.SubItems[2],self)
  else
    PageControl.ActivePage := tbs_aprovacao;
end;

procedure TFrm_Mov_2046.PDJButton6Click(Sender: TObject);
begin
  inherited;
  if not Acs_AcessoEspecial('204602') then begin
    Dlg_Alerta(MSG_DLG_NaoAutorizado,self);
    Exit;
  end;
  if (lsv_agenda.Items.Count < 1) or (not ListItem.ListView.Focused) then begin
    Dlg_Alerta('É necessário selecionar um Beneficiário',self);
    Exit;
  end;
  if ListItem.ListView.Selected.SubItems[2] = '' then
  begin
    Dlg_Alerta('Não é possível registrar a perícia médica, pois é necessária a Aprovação Administrativa do Beneficiário!',self);
    Exit;
  end
  else begin
    if ListItem.ListView.Selected.SubItems[3] <> '' then
      Dlg_Alerta('Aprovação da Perícia Médica já foi efetivada em '+ListItem.ListView.Selected.SubItems[3],self)
    else
      PageControl.ActivePage := tbs_pericia;
  end;
end;

procedure TFrm_Mov_2046.PDJButton7Click(Sender: TObject);
begin
  inherited;
  if (lsv_agenda.Items.Count < 1) or (not ListItem.ListView.Focused) then begin
    Dlg_Alerta('É necessário selecionar um Beneficiário',self);
    Exit;
  end;
  idade := '';
  cod_planopagto := '';
  cod_tarifa := '';
  if (ListItem.ListView.Selected.SubItems[2] = '') or (ListItem.ListView.Selected.SubItems[3] = '') then
    Dlg_Alerta('Não é possível registrar a primeira contribuição, pois é necessária a Aprovação Administrativa e Registro de Perícia do Beneficiário!',self)
  else begin
    if ListItem.ListView.Selected.SubItems[4] <> '' then
    begin
      Dlg_Alerta('Aprovação de Inscrição já foi efetivada em '+ListItem.ListView.Selected.SubItems[4],self);
      Exit;
    end;
    if ListItem.ListView.Selected.SubItems[8] = '2' then
    begin
      if not Acs_AcessoEspecial('204603') then begin
        Dlg_Alerta(MSG_DLG_NaoAutorizado,self);
        Exit;
      end;
      DB_OpenSQL('SELECT b.dtnascim_ben, bp.cod_planoPagto, p.cod_tarifa FROM tbl_beneficiario AS b'+
      ' INNER JOIN tbl_beneficiarioPlanoPagtoEspecial AS bp ON b.cod_beneficiario = bp.cod_beneficiario'+
      ' INNER JOIN tbl_planopagto p ON bp.cod_planoPagto = p.cod_planoPagto '+
      ' where b.cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]);
      idade := IntToStr(Data_GetIdadeAnos(Tab.Fields[0].AsDateTime, date));
      cod_planopagto := tab.Fields[1].AsString;
      cod_tarifa := tab.Fields[2].AsString;
      if cod_planopagto = '' then begin
        Dlg_Alerta('Um Plano de Pagamento deve ser cadastrado para o Beneficiário',self);
        Exit;
      end;
      PageControl.ActivePage := tbs_contribuicao;
    end
    else begin
      if not Acs_AcessoEspecial('204605') then begin
        Dlg_Alerta(MSG_DLG_NaoAutorizado,self);
        Exit;
      end;
      PageControl.ActivePage := tbs_aprovacaoben;
    end;
  end;
end;

procedure TFrm_Mov_2046.PDJButton8Click(Sender: TObject);
begin
  inherited;
  if not Acs_AcessoEspecial('204604') then begin
    Dlg_Alerta(MSG_DLG_NaoAutorizado,self);
    Exit;
  end;
  if (lsv_agenda.Items.Count < 1) or (not ListItem.ListView.Focused) then begin
    Dlg_Alerta('É necessário selecionar um Beneficiário',self);
    Exit;
  end;
    PageControl.ActivePage := tbs_reprovacao;
end;

procedure TFrm_Mov_2046.chb_aprov1Click(Sender: TObject);
begin
  inherited;
  btn_aprovarpericia.Visible := chb_aprov1.Checked and chb_aprov2.Checked;
end;

procedure TFrm_Mov_2046.btn_voltarClick(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex := 0;
end;

procedure TFrm_Mov_2046.btn_adicionarCarenciaClick(Sender: TObject);
  function VerCod_NivelCar(c:string): boolean ;
  var
    i : integer ;
  begin
    result := false ;
// Atenção: O cod_nivelcar da tbl_nivelcar está fixo em 2 dígitos para essa função
    for i := 0 to LsB_Carencia.Items.Count-1 do
      if Trim(Copy(LsB_Carencia.Items.Strings[i],1,2)) = c then
        result := true ;
  end;
var
  v : string ;
begin
  inherited;
  if lsv_agenda.Items.Count < 1 then begin
    Dlg_Alerta('É necessário selecionar um Beneficiário',self);
    Exit;
  end;  
  if (not BAS_ValidarCampo(cbx_cod_nivelcar.name, 'Um Nível de Carência deve ser Preenchido !', VLD_Preenchido )) then
    Exit;
  if VerCod_NivelCar(cbx_cod_nivelcar.ValueItem) then begin
    Dlg_Alerta('Esse nível de carência já foi selecionado anteriormente !', self);
    GroupBox5.SetFocus;
    cbx_cod_nivelcar.Setfocus;
    edt_informacao_car.text := '' ;
    cbx_cod_nivelcar.text := '' ;
    cbx_cod_nivelcar.ItemIndex:= -1;
    Exit ;
  end;
  DB_OpenSQL('select * from tbl_nivelcar where cod_nivelcar = '+cbx_cod_nivelcar.ValueItem);
  v := DateToStr(Date + Tab.FieldByName('dias_niv').AsInteger);
  LsB_Carencia.Items.Add(STR_AddSpaces(Tab.FieldByName('cod_nivelcar').AsString, 2)+
  STR_AddSpaces(Tab.FieldByName('nome_niv').AsString, 10)+
  STR_AddSpaces(v, 10)+edt_informacao_car.text);
  DB_ExecSQL('insert into tbl_carencia values ('+ListItem.ListView.Selected.SubItems[6]+','+
  Tab.FieldByName('cod_nivelcar').AsString+','''+Data_Format('mm/dd/yyyy',StrToDate(v))+''','''+
  edt_informacao_car.text+''')');
  edt_informacao_car.text := '' ;
  cbx_cod_nivelcar.text := '' ;
  cbx_cod_nivelcar.ItemIndex:= -1;
end;

procedure TFrm_Mov_2046.lsv_agendaClick(Sender: TObject);
begin
  inherited;
  if (lsv_agenda.Items.Count > 0) then
    if ListItem.ListView.Selected.Focused then
       lbl_nome_ben.Caption := 'Beneficiário: '+ListItem.ListView.Selected.Caption+
       '  '+ListItem.ListView.Selected.SubItems[0];
end;

procedure TFrm_Mov_2046.lsv_agendaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (lsv_agenda.Items.Count > 0) then
    if ListItem.Selected = True then
        lbl_nome_ben.Caption := 'Beneficiário: '+ListItem.ListView.Selected.Caption+
        '  '+ListItem.ListView.Selected.SubItems[0];
end;

procedure TFrm_Mov_2046.PDJButton13Click(Sender: TObject);
begin
  inherited;
{  if cbx_cod_nivelcar.text <> '' then begin
    DB_OpenSQL('select descricao_niv from tbl_nivelcar where cod_nivelcar = '+cbx_cod_nivelcar.valueitem);
    edt_informacao_car.Text := Tab.fields[0].asstring;
  end;}
end;

procedure TFrm_Mov_2046.FormShow(Sender: TObject);
begin
  inherited;
  FOrder := 3;
  BAS_CarregarCombo('cbx_cod_nivelcar', 'nome_niv');
  cbx_status.ItemIndex := 0;
  btn_atualizarClick(self);
end;

procedure TFrm_Mov_2046.btn_removerCarenciaClick(Sender: TObject);
begin
  inherited;
  if LsB_Carencia.ItemIndex > -1 then
     begin
     DB_ExecSQL('delete from tbl_carencia where cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]+
     ' and cod_nivelcar = '+Trim(Copy(LsB_Carencia.Items.Strings[LsB_Carencia.ItemIndex],1,2)));
     LsB_Carencia.Items.Delete(LsB_Carencia.ItemIndex);
     EscreveLog(btn_removerCarencia.name);
     end;
end;

procedure TFrm_Mov_2046.chb_contrib1Click(Sender: TObject);
begin
  inherited;
  btn_contribuicao.Visible := (chb_contrib1.Checked) and (chb_contrib2.Checked);
end;

procedure TFrm_Mov_2046.chb_recusarClick(Sender: TObject);
begin
  inherited;
  btn_recusar.Visible := chb_recusar.Checked;    
end;

procedure TFrm_Mov_2046.tbs_periciaShow(Sender: TObject);
begin
  inherited;
//  edt_dtcarencia_ben.Date := Date;
  DB_OpenSQL('select c.cod_nivelcar, c.dtlimite_car, c.informacao_car, n.nome_niv'+
  ' from tbl_carencia c, tbl_nivelcar n where c.cod_nivelcar = n.cod_nivelcar'+
  ' and c.cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]+' order by c.cod_nivelcar');
  LsB_Carencia.Items.Clear;
  while not Tab.Eof do
  begin
    LsB_Carencia.Items.Add(STR_AddSpaces(Tab.FieldByName('cod_nivelcar').AsString, 2)+
    STR_AddSpaces(Tab.FieldByName('nome_niv').AsString, 10)+
    STR_AddSpaces(Tab.FieldByName('dtlimite_car').AsString, 10)+
    Tab.FieldByName('informacao_car').AsString);
    Tab.Next;
  end;
  with fdt_principal6.spc_cons_adm_doencaPreExistente do
  begin
    Close;
    ParamByName('@cod_beneficiario').AsString := ListItem.ListView.Selected.SubItems[6];
    Open;
  end;
end;

procedure TFrm_Mov_2046.edt_cod_cidButtonClick(Sender: TObject);
begin
  inherited;
  if edt_cod_cid.Text = '' then
    Obj_SetFormObjValueByName(Self, 'edt_cod_cid',
    Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_cid',8,length('edt_cod_cid')),
    'cod_cid, nome_cid', 'Cod.Cid, CID',
    'Localizar CID', '', true))
  else
    btn_adicionarCIDClick(self);
end;

procedure TFrm_Mov_2046.btn_adicionarCIDClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cod_cid.name, 'O CID deve ser Preenchido !', VLD_Preenchido )) then
    exit;
  if DB_OpenSQL('select cod_cid from tbl_cid where cod_cid = '''+edt_cod_cid.Text+'''') < 1 then
  begin
    Dlg_Alerta('Código de CID Inválido',self);
    DBGrid1.SetFocus;
    Exit;
  end;
  DB_ExecSQL('insert into tbl_doencaPreExistente (cod_beneficiario, cod_cid) values ('+
  ListItem.ListView.Selected.SubItems[6]+','''+UpperCase(edt_cod_cid.text)+''')');
  fdt_principal6.spc_cons_adm_doencaPreExistente.close;
  fdt_principal6.spc_cons_adm_doencaPreExistente.open;
  DBGrid1.SetFocus;
  edt_cod_cid.Text := '';
  EscreveLog(btn_adicionarCID.name);
end;

procedure TFrm_Mov_2046.btn_removerCIDClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir O Item ?', Self) then begin
    DB_ExecSQL('delete from tbl_doencaPreExistente where cod_beneficiario = '+
    ListItem.ListView.Selected.SubItems[6]+' and cod_cid = '''+fdt_principal6.spc_cons_adm_doencaPreExistente.FieldByName('cod_cid').asstring+'''');
    fdt_principal6.spc_cons_adm_doencaPreExistente.close;
    fdt_principal6.spc_cons_adm_doencaPreExistente.open;
  end;
  EscreveLog(btn_removerCID.name);
end;

procedure TFrm_Mov_2046.btn_imprimiradesaoClick(Sender: TObject);
begin
  inherited;
  with Fdt_principal2.spc_cons_adm_beneficiario002 do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := ListItem.ListView.Selected.SubItems[7];
    ParamByName('@titulacartei_ben').AsString := '0';
    ParamByName('@cod_plano').AsString := '0';
    ParamByName('@tipo_sit').AsString := '0';
    open;
  end;
  Frm_Bas_Impressao.FCampo1 := ListItem.ListView.Selected.SubItems[0];
  Frm_Bas_Impressao.showReport(4190);
  Fdt_principal2.spc_cons_adm_beneficiario002.Close;
end;

procedure TFrm_Mov_2046.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if (lsv_agenda.Items.Count < 1) or (not ListItem.ListView.Focused) then begin
    Dlg_Alerta('É necessário selecionar um Beneficiário',self);
    Exit;
  end;
  btn_imprimirautoClick(self);
end;

procedure TFrm_Mov_2046.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if (lsv_agenda.Items.Count < 1) or (not ListItem.ListView.Focused) then begin
    Dlg_Alerta('É necessário selecionar um Beneficiário',self);
    Exit;
  end;
  btn_imprimiradesaoClick(self);
end;

procedure TFrm_Mov_2046.btn_confirmaInscricaoClick(Sender: TObject);
var
  Executado : boolean;
begin
  inherited;
  if (not BAS_ValidarCampo(edt_dtsituacao.name, 'A Data da Situação deve ser Preenchida !', VLD_DataPreenchida )) then
    Exit;
  DB_BeginTrans;
  Finscricao :=  ListItem.ListView.Selected.SubItems[7];
  // Altera o Status do Andamento
  Executado := DB_ExecSQL('update tbl_andamentoInscricao set dtcontribuicao_ani = getdate(), status_ani = 3 where cod_beneficiario = '+
  ListItem.ListView.Selected.SubItems[6]);
  // Altera as Datas do Cadastro de Beneficiários
  if Executado then
    Executado := DB_ExecSQL('update tbl_beneficiario set dtinscricao_ben = cast('''+Data_Format('mm/dd/yyyy', edt_dtsituacao.Date)+''' as datetime), '+
    ' dtsituacao_ben = cast('''+Data_Format('mm/dd/yyyy', edt_dtsituacao.Date)+''' as datetime), '+
    ' dtcarencia_ben = cast('''+Data_Format('mm/dd/yyyy', edt_dtsituacao.Date)+''' as datetime) '+
    ', dtplano_ben = cast('''+Data_Format('mm/dd/yyyy', edt_dtsituacao.Date)+''' as datetime) '+//linha adicionada em 30/10/2012
    ' where cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]);
  //Altera Situação do beneficiario para Normal
  if Executado then
    Executado := Ben_AlteraSituacao(ListItem.ListView.Selected.SubItems[6], Finscricao, FTit, Data_Format('dd/mm/yyyy',edt_dtsituacao.Date), '1', '29', '9999');
  //Pedido de Carteirinha
 { if Executado then
    Executado := DB_ExecSQL('insert into tbl_histcarteira  (cod_beneficiario, cod_emissaocarteira, dtemissao_hct, cod_statuscarteira)'+
    ' values ('+ListItem.ListView.Selected.SubItems[6]+',1, getdate(), 1)');
  //pedido de Carteirinha Unimed em caso de plano Especial
  if Executado then
    if FPlano = 3 then
      Executado := DB_ExecSQL('insert into tbl_histcarteiraUnimed  (cod_beneficiario, cod_emissaocarteira, dtemissao_hcu, cod_statuscarteira, cod_localunimed)'+
      ' values ('+ListItem.ListView.Selected.SubItems[6]+',1, getdate(), 1, 11)');    }
  if ListItem.ListView.Selected.SubItems[8] = '0' then
  begin
    // Atualiza a Data Limite das Carencias sem doenças Pre existentes Titular
    if Executado then
    begin
      Executado := Db_ExecSql('update tbl_carencia set dtlimite_car = cast('''+Data_Format('mm/dd/yyyy', edt_dtsituacao.Date)+''' as datetime) + dias_niv'+
      ' from tbl_carencia c, tbl_nivelcar n where c.cod_nivelcar = n.cod_nivelcar'+
      ' and  c.cod_nivelcar not in (4,7) and cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]);
    end;
      // Atualiza a Data Limite das Carencias com doenças Pre existentes Titular
    if Executado then
    begin
      Executado := Db_ExecSql('update tbl_carencia set dtlimite_car = cast('''+Data_Format('mm/dd/yyyy', DtPericia)+''' as datetime) + dias_niv'+
      ' from tbl_carencia c, tbl_nivelcar n where c.cod_nivelcar = n.cod_nivelcar'+
      ' and  c.cod_nivelcar in (4,7) and cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]);
    end;
  end
  else begin
    // Atualiza a Data Limite das Carencias dos Dependentes
    if Executado then
    begin
      Executado := Db_ExecSql('update tbl_carencia set dtlimite_car = cast('''+Data_Format('mm/dd/yyyy', edt_dtsituacao.Date)+''' as datetime) + dias_niv'+
      ' from tbl_carencia c, tbl_nivelcar n where c.cod_nivelcar = n.cod_nivelcar'+
      ' and cod_beneficiario = '+ListItem.ListView.Selected.SubItems[6]);
    end;
  end;
  if (Executado) then begin
    Dlg_Ok(MSG_DB_OKUpdate,self);
    DB_Commit;
  end
  else begin
    DB_RollBack;
    Dlg_Erro('Ocorreu um Erro interno e não foi possível efetuar a alteração dos dados do beneficiário!',self);
  end;
  // Limpar Tela
  chb_confirmaInscricao.Checked := false;
  PageControl.ActivePage := tbs_principal;
  btn_atualizarClick(self);
end;

procedure TFrm_Mov_2046.chb_confirmaInscricaoClick(Sender: TObject);
begin
  inherited;
  btn_confirmaInscricao.Visible := (chb_confirmaInscricao.Checked);
end;

procedure TFrm_Mov_2046.cbx_cod_nivelcarChange(Sender: TObject);
begin
  inherited;
  if cbx_cod_nivelcar.ItemIndex <> -1 then
     if cbx_cod_nivelcar.text <> '' then begin
       DB_OpenSQL('select descricao_niv from tbl_nivelcar where cod_nivelcar = '+cbx_cod_nivelcar.valueitem);
       edt_informacao_car.Text := Tab.fields[0].asstring;
     end;
end;

procedure TFrm_Mov_2046.chb_pericia2Click(Sender: TObject);
begin
  inherited;
  chb_pericia3.Checked := false;
  btn_pericia.Visible := chb_pericia2.Checked;
end;

procedure TFrm_Mov_2046.chb_pericia3Click(Sender: TObject);
begin
  inherited;
  chb_pericia2.Checked := false;
  btn_pericia.Visible := chb_pericia3.Checked;
end;

procedure TFrm_Mov_2046.lsv_agendaColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  inherited;
  FOrder := Column.Index;
  btn_atualizarClick(self);
end;

procedure TFrm_Mov_2046.edt_valorConsultaExit(Sender: TObject);
begin
  inherited;
  {if edt_valorConsulta.Text <> '' then
  begin
    edt_valorConsulta.Text := STR_RemoveChar(edt_valorConsulta.Text,'.');
    try
      StrToFloat(edt_valorConsulta.Text);
    except
      edt_valorConsulta.Text := '0';
    end;
  end; }
end;

procedure TFrm_Mov_2046.edt_vldesconto_adfExit(Sender: TObject);
begin
  inherited;
  if edt_vldesconto_adf.Text <> '' then
  begin
    edt_vldesconto_adf.Text := STR_RemoveChar(edt_vldesconto_adf.Text,'.');
    try
      StrToFloat(edt_vldesconto_adf.Text);
    except
      btn_calcularClick(self);
    end;
  end;
end;

procedure TFrm_Mov_2046.tbs_contribuicaoShow(Sender: TObject);
begin
  inherited;
  edt_dtdesconto_flh.Date := Date;
 { DB_OpenSQL('select vlentrevistaqualificada from tbl_parametro');
  edt_valorConsulta.Text:= FormatFloat('##,###,##0.00', Tab.fieldByName('vlentrevistaqualificada').Value);  }
end;

procedure TFrm_Mov_2046.tbs_aprovacaobenShow(Sender: TObject);
begin
  inherited;
  DtInscricao := StrToDateTime(ListItem.ListView.Selected.SubItems[10]);
  DtPericia := StrToDateTime(ListItem.ListView.Selected.SubItems[3]);
  lbl_pericia.Caption := 'Data da Perícia Médica: '+Data_Format('dd/mm/yyyy',DtPericia);
  if ListItem.ListView.Selected.SubItems[8] = '0' then
    edt_dtsituacao.Date := DtInscricao
  else
    edt_dtsituacao.Date := DtPericia;
end;

procedure TFrm_Mov_2046.cbx_statusChange(Sender: TObject);
begin
  inherited;
  case cbx_status.ItemIndex of
    0 : FOrder := 3 ;
    1 : FOrder := 4 ;
    2 : FOrder := 5 ;
    3 : FOrder := 6 ;
   // 4 : FOrder := 6 ;
  end;
end;

end.





