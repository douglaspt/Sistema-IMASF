unit Rel_HistoricoBenefi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_HistoricoBenefi = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DataSource2: TDataSource;
    DataSource33: TDataSource;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    TabSheet5: TTabSheet;
    Label6: TLabel;
    DataSource3: TDataSource;
    PageControl1: TPageControl;
    TabSheet12: TTabSheet;
    DBGrid5: TDBGrid;
    TabSheet6: TTabSheet;
    DBGrid6: TDBGrid;
    Label4: TLabel;
    DataSource5: TDataSource;
    TabSheet7: TTabSheet;
    mem_obs_ben: TMemo;
    GroupBox1: TGroupBox;
    btn_relatorio: TPDJButton;
    GroupBox2: TGroupBox;
    PDJButton1: TPDJButton;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    Panel5: TPanel;
    cb3_cod_mes: TDCComboBox;
    ed3_ano: TDCEdit;
    cb4_cod_mes: TDCComboBox;
    ed4_ano: TDCEdit;
    btn_atualizar: TSpeedButton;
    Panel6: TPanel;
    cbx_cod_plano: TDCComboBox;
    btn_excluir: TPDJButton;
    lsv_historico: TListView;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_relatorioClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cod_beneficiarioButtonClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    ChaveExp: Integer;
    function CriticaParametros : Boolean ;
  public
    wCod_Beneficiario, wInscricao : String ;
    { Public declarations }
  end;

var
  Frm_Rel_HistoricoBenefi: TFrm_Rel_HistoricoBenefi;

implementation
uses Imp_Med_ResumoConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Med_ExtratoBenefi001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str, Fun_Obj,
Imp_Med_ExtratoBenefi004, dtm_principal2, Imp_Adm_ExtratoDesconto004, Fun_Acesso;

{$R *.DFM}

procedure TFrm_Rel_HistoricoBenefi.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Histórico do Beneficiário' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL  := FSQL_Beneficiario ;
  FPesquisaTit  := FTit_Benefeciario ;
  inherited;
end;

function TFrm_Rel_HistoricoBenefi.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_inscricao_ben.name, 'Código do Beneficiário deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'O Mês de Referência Final deve ser Preenchido !', VLD_Preenchido ))  or
  (not BAS_ValidarCampo(ed2_ano.name, 'O Ano de Referência Final deve ser Preenchido !', VLD_Preenchido ));
end;

procedure TFrm_Rel_HistoricoBenefi.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Rel_HistoricoBenefi.edt_inscricao_benButtonClick(
  Sender: TObject);
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
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    Obj_SetFormObjValueByName(self, cbx_cod_plano.Name, Tab.fieldByName('cod_plano').AsInteger);
    PageControl.Visible := true ;
    PageControl.ActivePageIndex := 0 ;
    TabSheet1Show(Self);
//    TabSheet2Show(Self);
//    TabSheet3Show(Self);
//    TabSheet5Show(Self);
//    TabSheet6Show(Self);
  end;
end;

procedure TFrm_Rel_HistoricoBenefi.TabSheet1Show(Sender: TObject);
var
  ListItem: TListItem;
begin
  inherited;
  with Fdt_principal.spc_cons_adm_histplano do begin
    close;
    parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
    open;
  end;
  lsv_historico.Items.Clear;
  DB_OpenSQL('select dtsistema_aud, nome_usu, detalhe_aud,  nomeComputador_aud '+
  ' from tbl_auditoriasistema a, tbl_usuario u where a.cod_usuario = u.cod_usuario'+
  ' and cod_telasistema = '+Inttostr(FCod_TelaSistema)+' and chaveCampo_aud = '+edt_cod_beneficiario.Text);
  while not Tab.Eof do
  begin
    ListItem := lsv_historico.Items.Add;
    ListItem.Caption := Tab.FieldByName('dtsistema_aud').AsString;
    listItem.SubItems.add(Tab.FieldByName('nome_usu').AsString);
    listItem.SubItems.add(Tab.FieldByName('detalhe_aud').AsString);
    listItem.SubItems.add(Tab.FieldByName('nomeComputador_aud').AsString);
    Tab.Next;
  end;
end;

procedure TFrm_Rel_HistoricoBenefi.TabSheet2Show(Sender: TObject);
begin
  inherited;
  with Fdt_principal.spc_cons_adm_histtipsegurado do begin
    close;
    parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
    open;
  end;
end;

procedure TFrm_Rel_HistoricoBenefi.TabSheet3Show(Sender: TObject);
begin
  inherited;
  with Fdt_principal.spc_cons_adm_histtipdepend do begin
    close;
    parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
    open;
  end;
end;

procedure TFrm_Rel_HistoricoBenefi.FormShow(Sender: TObject);
begin
  inherited;
  lsv_historico.Items.Clear;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb3_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb4_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  if wInscricao <> '' then begin
    edt_inscricao_ben.text := wInscricao;
    edt_inscricao_benButtonClick(self);
  end;
  edt_inscricao_ben.SetFocus;
  if Acs_AcessoEspecial('101403') then
    btn_excluir.Enabled := true;
//  DBGrid5.DefaultDrawing := false;
end;

procedure TFrm_Rel_HistoricoBenefi.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratobenefi002 do
  begin
    close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
    ParamByName('@dtentradaInicial').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtentradaFinal').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text ;
    ParamByName('@cod_conveniado').AsInteger := 0;
    ParamByName('@inscricao_ben').AsInteger := 0;
    open;
  end;
  Frm_Imp_Med_ExtratoBenefi004 := TFrm_Imp_Med_ExtratoBenefi004.Create(Self);
  Frm_Imp_Med_ExtratoBenefi004.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text ;
  Frm_Imp_Med_ExtratoBenefi004.FPeriodoFinal := cb2_cod_mes.text+'/'+ed2_ano.text ;
  Frm_Imp_Med_ExtratoBenefi004.NomeBen := edt_nome.Text;
  Frm_Imp_Med_ExtratoBenefi004.CarteiraBen := edt_carteira.Text;
  Frm_Imp_Med_ExtratoBenefi004.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoBenefi004.Release;
  Fdt_principal.spc_cons_med_extratobenefi002.close;
end;

procedure TFrm_Rel_HistoricoBenefi.TabSheet6Show(Sender: TObject);
begin
  inherited;
  with Fdt_principal2.spc_cons_adm_histsitbeneficiario do begin
    close;
    parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
    open;
  end;
end;

procedure TFrm_Rel_HistoricoBenefi.DBGrid5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If not (gdFocused in State) then begin
    case Column.Field.Dataset.FieldbyName('cod_sitdesconto').AsInteger of
      1 : (Sender as TDBGrid).Canvas.Font.Color := clBlue ;
      100..200 : (Sender as TDBGrid).Canvas.Font.Color := clBlack ;
    else
      (Sender as TDBGrid).Canvas.Font.Color := clRed ;
    end;
  end else
    (Sender as TDBGrid).Canvas.Font.Color := clWhite ;
    dbgrid5.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFrm_Rel_HistoricoBenefi.btn_relatorioClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
  Exit;
  if (edt_inscricao_ben.text <> '') and (edt_carteira.text = '') then begin
    Dlg_Alerta('É necessário selecionar um Beneficiário para este Relatório', self);
    edt_inscricao_benButtonClick(self);
    Exit;
  end;
  with Fdt_principal2.spc_cons_adm_descontofolha04 do
  begin
    close;
    if edt_inscricao_ben.text = '' then begin
      ParamByName('@inscricao_ben').AsString := '0';
      ParamByName('@titulacartei_ben').AsString := '0';
    end else begin
      ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
      ParamByName('@titulacartei_ben').AsString := copy(edt_carteira.text,11,2);
    end;
    ParamByName('@dtreferenciaInicial_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@dtreferenciaFinal_flh').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text ;
    ParamByName('@cod_empresafolha').AsString := '0';
    ParamByName('@cod_sitdesconto').AsString := '0';
    ParamByName('@dtpagto_flh').AsString := '';
    ParamByName('@cod_order').AsInteger := 4 ;
    open;
    if FieldByName('inscricao_ben').AsString = '' then begin
      Dlg_Alerta('Nenhum registro encontrado', self);
      close;
      exit;
    end;
  end;
  Frm_Imp_Adm_ExtratoDesconto004 := TFrm_Imp_Adm_ExtratoDesconto004.Create(Self);
  Frm_Imp_Adm_ExtratoDesconto004.FPeriodoInicial := 'De ' + cbx_cod_mes.text + ' de ' + edt_ano.text ;
  Frm_Imp_Adm_ExtratoDesconto004.FPeriodoFinal  := 'Até ' + cb2_cod_mes.text + ' de ' + ed2_ano.text ;
  Frm_Imp_Adm_ExtratoDesconto004.FEmpresaFolha := '' ;
  Frm_Imp_Adm_ExtratoDesconto004.QuickRep1.Preview;
  Frm_Imp_Adm_ExtratoDesconto004.Release;
  Fdt_principal2.spc_cons_adm_descontofolha04.close;
end;

procedure TFrm_Rel_HistoricoBenefi.edt_inscricao_benKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_HistoricoBenefi.edt_cod_beneficiarioButtonClick(
  Sender: TObject);
  function Get_Cod_beneficiario(inscricao:string): string;
  begin
    if inscricao <> '' then begin
      DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+
      inscricao +' and titulacartei_ben = 0');
      result := Tab.Fields[0].AsString;
    end else
      result := '' ;
  end;
  var
    insc : string ;
begin
    insc := Get_Cod_beneficiario(edt_cod_beneficiario.text) ;
    if (insc = '') and (edt_cod_beneficiario.text <> '') then
      Dlg_Alerta('Inscrição não encontrada !', self);
    edt_cod_beneficiario.text := insc ;
  inherited;

end;

procedure TFrm_Rel_HistoricoBenefi.btn_atualizarClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cb3_cod_mes.name, 'O Mês de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed3_ano.name, 'O Ano de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb4_cod_mes.name, 'O Mês de Referência Final deve ser Preenchido !', VLD_Preenchido ))  or
  (not BAS_ValidarCampo(ed4_ano.name, 'O Ano de Referência Final deve ser Preenchido !', VLD_Preenchido )) then
  Exit;
  with Fdt_principal.spc_cons_adm_descontofolha02 do begin
    close;
    parambyname('@inscricao_ben').AsString := edt_inscricao_ben.text ;
    parambyname('@matriculadebito_seg').AsString := '999999';
    parambyname('@dtreferenciaInicial_flh').AsString := cb3_cod_mes.valueItem+'/01/'+ed3_ano.Text;
    parambyname('@dtreferenciaFinal_flh').AsString :=  cb4_cod_mes.valueItem+'/01/'+ed4_ano.Text;
    parambyname('@cod_tarifa').AsString := '0' ;
    parambyname('@cod_order').AsString := '4' ;
    parambyname('@cod_sitdesconto').AsString := '0';
    parambyname('@cod_empresafolha').AsString := '0';
    parambyname('@dtpagto_flh').AsString := '';
    parambyname('@dtdesconto_flh').AsString := '';
    parambyname('@nossonumero_flh').AsString := '' ;
    parambyname('@parcelas').AsInteger := 0 ;
    parambyname('@dtsistema_flh').AsString := '';
    open;
  end;
end;

procedure TFrm_Rel_HistoricoBenefi.FormDestroy(Sender: TObject);
begin
  inherited;
  Fdt_principal.spc_cons_adm_descontofolha02.close;
end;

procedure TFrm_Rel_HistoricoBenefi.btn_excluirClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja Excluir esse Histórico do Plano?', Self) then begin
    DB_ExecSQL('delete from tbl_histplano where cod_beneficiario = '+
    edt_cod_beneficiario.text+' and cod_plano = '''+
    Fdt_principal.spc_cons_adm_histplano.fieldbyname('cod_plano').AsString+
    ''' and dtinicial_hlp = '''+FormatDateTime('mm/dd/yyyy hh:mm:ss.zzz',
    fdt_principal.spc_cons_adm_histplano.fieldbyname('dtinicial_hlp').AsDateTime)+
    ''' and dtsistema_hpl = '''+FormatDateTime('mm/dd/yyyy hh:mm:ss.zzz',
    fdt_principal.spc_cons_adm_histplano.fieldbyname('dtsistema_hpl').AsDateTime)+'''');

    GeraAuditoria(StrToInt(edt_cod_beneficiario.text), edt_inscricao_ben.Text, 'Exclusão','Plano '+
    Fdt_principal.spc_cons_adm_histplano.fieldbyname('nome_pla').AsString+
    ' Dt. Inicial: '+FormatDateTime('dd/mm/yyyy', Fdt_principal.spc_cons_adm_histplano.fieldbyname('dtinicial_hlp').AsDateTime)+' até : '+
    FormatDateTime('dd/mm/yyyy', Fdt_principal.spc_cons_adm_histplano.fieldbyname('dtfinal_hpl').AsDateTime)+' Excluido do Histórico.', 3);
    TabSheet1Show(Self);
    lsv_historico.SetFocus;
  end;
end;

end.



