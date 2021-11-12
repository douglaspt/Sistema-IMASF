unit Rel_3073;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, ShellAPI;

type
  TFrm_Rel_3073 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    Panel11: TPanel;
    edt_descricaoInicial_itc: TDCEdit;
    edt_cod_itemservicoIni: TDCChoiceEdit;
    Btn_LimpaCampos: TPDJButton;
    Panel1: TPanel;
    edt_cod_autorizacao: TDCEdit;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_nome: TDCEdit;
    Panel6: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel8: TPanel;
    edt_nomeMedico_aum: TDCEdit;
    edt_cod_crm: TDCChoiceEdit;
    Panel7: TPanel;
    edt_descricaoFin: TDCEdit;
    edt_cod_itemservicoFin: TDCChoiceEdit;
    Panel9: TPanel;
    cbx_cod_classificacaoSADT: TDCComboBox;
    PDJButton2: TPDJButton;
    PDJButton1: TPDJButton;
    Panel10: TPanel;
    cbx_cod_tipoAutorizacao: TDCComboBox;
    PDJButton4: TPDJButton;
    Panel12: TPanel;
    edt_descricao: TDCEdit;
    btn_exportar: TPDJButton;
    SaveDialog: TSaveDialog;
    pgb_registros: TProgressBar;
    procedure PDJButton3Click(Sender: TObject);
    procedure edt_cod_itemservicoIniExit(Sender: TObject);
    procedure edt_cod_itemservicoIniButtonClick(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure edt_cod_crmButtonClick(Sender: TObject);
    procedure edt_cod_crmExit(Sender: TObject);
    procedure edt_cod_itemservicoFinButtonClick(Sender: TObject);
    procedure edt_cod_itemservicoFinExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure edt_inscricao_benExit(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure btn_exportarClick(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_3073: TFrm_Rel_3073;

implementation
uses Imp_Med_ExtratoItem003, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Fun_Data, Imp_Med_ExtratoConven003, Fun_Obj, DLG_mensagem, dtm_principal6, Imp_4091,
Bas_Impressao, Fun_DB, Fun_Str ;

{$R *.DFM}

function TFrm_Rel_3073.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_dtinicial.name, 'O Periodo Inicial deve ser Preenchido !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtfinal.name, 'O Periodo Final deve ser Preenchido !', VLD_DataPreenchida ));
end;

procedure TFrm_Rel_3073.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     Exit;
  if (edt_inscricao_ben.Text <> '') and (edt_nome.Text = '') then
     begin
     Dlg_Alerta ('Selecione a Inscrição!', Self);
     Panel4.SetFocus;
     edt_inscricao_ben.SetFocus;
     Exit;
     end;

  if edt_descricaoInicial_itc.Text = '' then
     edt_cod_itemservicoIni.Text:= '';
  if edt_descricaoFin.Text = '' then
     edt_cod_itemservicoFin.Text:= '';
  if edt_razao_con.Text = '' then
     edt_cod_conveniado.Text:= '';
  if edt_nome.Text = '' then
     begin
     edt_inscricao_ben.Text:= '';
     edt_cod_beneficiario.Text:= '';
     end;
  if edt_nomeMedico_aum.Text = '' then
     edt_cod_crm.Text:= '';

  with Fdt_principal6.spc_cons_med_autorizacaoMedica do
  begin
    close;
    ParamByName('@dtatendimentoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date);
    ParamByName('@dtatendimentoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date);
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.text,'-');
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
    ParamByName('@cod_crm').AsString := edt_cod_crm.text;
    ParamByName('@cod_itemservicoIni').AsString := edt_cod_itemservicoIni.text;
    ParamByName('@cod_itemservicoFin').AsString := edt_cod_itemservicoFin.text;
    ParamByName('@cod_autorizacaoMedica').AsString := edt_cod_autorizacao.text;
    ParamByName('@cod_classificacaoSADT').AsString := cbx_cod_classificacaoSADT.valueitem;
    ParamByName('@cod_tipoAutorizacao').AsString := cbx_cod_tipoAutorizacao.valueitem;
    ParamByName('@descricao').AsString := edt_descricao.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Panel9.SetFocus;
      Exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal6.spc_cons_med_autorizacaoMedica;
  Frm_Bas_Impressao.FCampo1 := '';
  Frm_Bas_Impressao.FCampo2 := '';
  Frm_Bas_Impressao.FCampo3 := '';
  Frm_Bas_Impressao.FCampo4 := '';
 {  Frm_Bas_Impressao.FCampo1 := 'Período  de  '+edt_dtinicial.Text+'  até  '+edt_dtfinal.Text;
  if edt_cod_itemservicoIni.Text <> '' then
    Frm_Bas_Impressao.FCampo2 := 'Cod. Item Servico  de  '+ edt_cod_itemservicoIni.Text+'  até  '+edt_cod_itemservicoFin.Text;
  if cbx_cod_classificacaoSADT.ValueItem <> '' then
     Frm_Bas_Impressao.FCampo3 := 'Classificação SADT: '+ cbx_cod_classificacaoSADT.Text
  else
     Frm_Bas_Impressao.FCampo3 := '';
  if edt_inscricao_ben.Text <> '' then
    Frm_Bas_Impressao.FCampo4 := 'Beneficiário   '+ edt_inscricao_ben.text+'  -  '+edt_nome.Text;}

  Frm_Bas_Impressao.FCampo1 := 'Período  de  '+edt_dtinicial.Text+'  até  '+edt_dtfinal.Text;
  if edt_cod_conveniado.Text <> '' then
     Frm_Bas_Impressao.FCampo1 := Frm_Bas_Impressao.FCampo1 + '    Cód.Conveniado: ' + edt_cod_conveniado.Text;
  Frm_Bas_Impressao.FCampo2 := '';
  Frm_Bas_Impressao.FCampo3 := '';
  Frm_Bas_Impressao.FCampo4 := '';
  if edt_cod_itemservicoIni.Text <> '' then
     Frm_Bas_Impressao.FCampo2 := 'Cod. Item Serviço  de  '+ edt_cod_itemservicoIni.Text+'  até  '+edt_cod_itemservicoFin.Text;
  if cbx_cod_classificacaoSADT.ValueItem <> '' then
     Frm_Bas_Impressao.FCampo3 := 'Classificação SADT: '+ cbx_cod_classificacaoSADT.Text;
  if edt_cod_crm.Text <> '' then
     if Frm_Bas_Impressao.FCampo3 = '' then
        Frm_Bas_Impressao.FCampo3:= 'CRM: ' + edt_cod_crm.Text + ' - ' + edt_nomeMedico_aum.Text
     else
        Frm_Bas_Impressao.FCampo3 := Frm_Bas_Impressao.FCampo3 + '    CRM: ' + edt_cod_crm.Text + ' - ' + edt_nomeMedico_aum.Text;
  if edt_inscricao_ben.Text <> '' then
     Frm_Bas_Impressao.FCampo4 := 'Beneficiário   '+ edt_inscricao_ben.text+'  -  '+edt_nome.Text;
  if edt_cod_autorizacao.Text <> '' then
     if Frm_Bas_Impressao.FCampo4 = '' then
        Frm_Bas_Impressao.FCampo4 := 'Cód.Autorização: ' + edt_cod_autorizacao.Text
     else
        Frm_Bas_Impressao.FCampo4 := Frm_Bas_Impressao.FCampo4 + '    Cód.Autorização: ' + edt_cod_autorizacao.Text;
  if cbx_cod_tipoAutorizacao.valueItem <> '' then
    Frm_Bas_Impressao.FCampo5 := 'Tipo de Autorização: '+cbx_cod_tipoAutorizacao.Text
  else
    Frm_Bas_Impressao.FCampo5 := '';
  if edt_descricao.Text <> '' then
    Frm_Bas_Impressao.FCampo6 := 'Observação: '+edt_descricao.Text
  else
    Frm_Bas_Impressao.FCampo6 := '';
  Frm_Bas_Impressao.showReport(4171);
  Fdt_principal6.spc_cons_med_autorizacaoMedica.close;
end;

procedure TFrm_Rel_3073.edt_cod_itemservicoIniExit(Sender: TObject);
begin
  inherited;
  edt_descricaoInicial_itc.text := Get_DescricaoServico(edt_cod_itemservicoIni.text);
end;

procedure TFrm_Rel_3073.edt_cod_itemservicoIniButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservicoIni',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento',
  'Localizar Itens de Serviços', '', True));
  edt_cod_itemservicoIniExit(self);
end;

procedure TFrm_Rel_3073.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;

procedure TFrm_Rel_3073.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  end;
end;

procedure TFrm_Rel_3073.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3073.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_conveniado',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_conveniado',8,length('edt_cod_conveniado')),
  'cod_conveniado, nome_con, razao_con', 'Cod.Conv, Nome do Conveniado, Razão Social',
  'Localizar Conveniados', '', true));
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Rel_3073.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
     edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))))
  else
     edt_razao_con.Text := '';
end;

procedure TFrm_Rel_3073.edt_cod_crmButtonClick(Sender: TObject);
begin
  inherited;
    Obj_SetFormObjValueByName(Self, 'edt_cod_crm',
    Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_crm',8,length('edt_cod_crm')),
    'cod_crm, medico_crm', 'Cod. CRM, Nome do Médico',
    'Localizar CRM', '', true));
    edt_cod_crmExit(self);
end;

procedure TFrm_Rel_3073.edt_cod_crmExit(Sender: TObject);
begin
  inherited;
  if edt_cod_crm.text <> '' then
     edt_nomeMedico_aum.text := Get_NomeMedico(edt_cod_crm.text)
  else
     edt_nomeMedico_aum.Text:= '';
end;

procedure TFrm_Rel_3073.edt_cod_itemservicoFinButtonClick(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservicoFin',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento',
  'Localizar Itens de Serviços', '', True));
  edt_cod_itemservicoFinExit(self);
end;

procedure TFrm_Rel_3073.edt_cod_itemservicoFinExit(Sender: TObject);
begin
  inherited;
  edt_descricaoFin.text := Get_DescricaoServico(edt_cod_itemservicoFin.text);
end;

procedure TFrm_Rel_3073.FormShow(Sender: TObject);
begin
  inherited;
  Obj_LoadCombo(Self, 'cbx_cod_classificacaoSADT', 'RTRIM(descricaoGrupo_csa)+'' - ''+descricaoSubGrupo_csa', 'cod_classificacaoSADT', 'tbl_classificacaoSadt');
  Obj_LoadCombo(self,'cbx_cod_tipoAutorizacao','nome_tau','cod_tipoAutorizacao', 'tbl_tipoAutorizacao');
end;

procedure TFrm_Rel_3073.PDJButton2Click(Sender: TObject);
begin
  inherited;
  cbx_cod_classificacaoSADT.ItemIndex:= -1;
end;

procedure TFrm_Rel_3073.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if edt_descricaoInicial_itc.Text = '' then
     edt_cod_itemservicoIni.Text:= '';
  if edt_descricaoFin.Text = '' then
     edt_cod_itemservicoFin.Text:= '';
  if edt_razao_con.Text = '' then
     edt_cod_conveniado.Text:= '';
  if edt_nome.Text = '' then
     begin
     edt_inscricao_ben.Text:= '';
     edt_cod_beneficiario.Text:= '';
     end;
  if edt_nomeMedico_aum.Text = '' then
     edt_cod_crm.Text:= '';

// Somente para ordenar por cod_itemservico
   with Fdt_principal6.spc_cons_med_totalitensautorizados do
    begin
    Close;
    ParamByName('@dtatendimentoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date);
    ParamByName('@dtatendimentoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date);
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.text,'-');
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
    ParamByName('@cod_crm').AsString := edt_cod_crm.text;
    ParamByName('@cod_itemservicoIni').AsString := edt_cod_itemservicoIni.text;
    ParamByName('@cod_itemservicoFin').AsString := edt_cod_itemservicoFin.text;
    ParamByName('@cod_autorizacaoMedica').AsString := edt_cod_autorizacao.text;
    ParamByName('@cod_classificacaoSADT').AsString := cbx_cod_classificacaoSADT.valueitem;
    ParamByName('@cod_tipoAutorizacao').AsString := cbx_cod_tipoAutorizacao.valueitem;
    ParamByName('@descricao').AsString := edt_descricao.Text;
    Open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Panel9.SetFocus;
      Exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal6.spc_cons_med_totalitensautorizados;
  Frm_Bas_Impressao.FCampo1 := 'Período  de  '+edt_dtinicial.Text+'  até  '+edt_dtfinal.Text;
  if edt_cod_conveniado.Text <> '' then
     Frm_Bas_Impressao.FCampo1 := Frm_Bas_Impressao.FCampo1 + '    Cód.Conveniado: ' + edt_cod_conveniado.Text;
  Frm_Bas_Impressao.FCampo2 := '';
  Frm_Bas_Impressao.FCampo3 := '';
  Frm_Bas_Impressao.FCampo4 := '';
  if edt_cod_itemservicoIni.Text <> '' then
     Frm_Bas_Impressao.FCampo2 := 'Cod. Item Serviço  de  '+ edt_cod_itemservicoIni.Text+'  até  '+edt_cod_itemservicoFin.Text;
  if cbx_cod_classificacaoSADT.ValueItem <> '' then
     Frm_Bas_Impressao.FCampo3 := 'Classificação SADT: '+ cbx_cod_classificacaoSADT.Text;
  if edt_cod_crm.Text <> '' then
     if Frm_Bas_Impressao.FCampo3 = '' then
        Frm_Bas_Impressao.FCampo3:= 'CRM: ' + edt_cod_crm.Text + ' - ' + edt_nomeMedico_aum.Text
     else
        Frm_Bas_Impressao.FCampo3 := Frm_Bas_Impressao.FCampo3 + '    CRM: ' + edt_cod_crm.Text + ' - ' + edt_nomeMedico_aum.Text;
  if edt_inscricao_ben.Text <> '' then
     Frm_Bas_Impressao.FCampo4 := 'Beneficiário   '+ edt_inscricao_ben.text+'  -  '+edt_nome.Text;
  if edt_cod_autorizacao.Text <> '' then
     if Frm_Bas_Impressao.FCampo4 = '' then
        Frm_Bas_Impressao.FCampo4 := 'Cód.Autorização: ' + edt_cod_autorizacao.Text
     else
        Frm_Bas_Impressao.FCampo4 := Frm_Bas_Impressao.FCampo4 + '    Cód.Autorização: ' + edt_cod_autorizacao.Text;
  if cbx_cod_tipoAutorizacao.valueItem <> '' then
    Frm_Bas_Impressao.FCampo5 := 'Tipo de Autorização: '+cbx_cod_tipoAutorizacao.Text
  else
    Frm_Bas_Impressao.FCampo5 := '';
  if edt_descricao.Text <> '' then
    Frm_Bas_Impressao.FCampo6 := 'Observação: '+edt_descricao.Text
  else
    Frm_Bas_Impressao.FCampo6 := '';
  Frm_Bas_Impressao.showReport(4232);
  Fdt_principal6.spc_cons_med_totalitensautorizados.close;
end;

procedure TFrm_Rel_3073.edt_inscricao_benExit(Sender: TObject);
begin
  edt_nome.Text:= '';
  edt_inscricao_ben.Text:= '';
  inherited;
end;

procedure TFrm_Rel_3073.PDJButton4Click(Sender: TObject);
begin
  inherited;
  cbx_cod_tipoAutorizacao.ItemIndex:= -1;
end;

procedure TFrm_Rel_3073.btn_exportarClick(Sender: TObject);
var
  str_arquiventrad, s, Algo: String;
  byt_nameofthfile : TextFile;
begin
  inherited;
if CriticaParametros then
    Exit;
  with Fdt_principal6.spc_cons_med_autorizacaoMedica do
  begin
    close;
    ParamByName('@dtatendimentoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date);
    ParamByName('@dtatendimentoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date);
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.text,'-');
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
    ParamByName('@cod_crm').AsString := edt_cod_crm.text;
    ParamByName('@cod_itemservicoIni').AsString := edt_cod_itemservicoIni.text;
    ParamByName('@cod_itemservicoFin').AsString := edt_cod_itemservicoFin.text;
    ParamByName('@cod_autorizacaoMedica').AsString := edt_cod_autorizacao.text;
    ParamByName('@cod_classificacaoSADT').AsString := cbx_cod_classificacaoSADT.valueitem;
    ParamByName('@cod_tipoAutorizacao').AsString := cbx_cod_tipoAutorizacao.valueitem;
    ParamByName('@descricao').AsString := edt_descricao.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Exit;
    end;
  end;
  Fdt_principal6.spc_cons_med_autorizacaoMedica.First;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.execute then
  begin
    str_arquiventrad:= SaveDialog.filename;
    AssignFile(byt_nameofthfile, str_arquiventrad);
    Rewrite (byt_nameofthfile);
    pgb_registros.Visible:= True;
    pgb_registros.Min:= 0;
    pgb_registros.Max:= Fdt_principal6.spc_cons_med_autorizacaoMedica.RecordCount;
    S:= 'Cod. Conv.;Conveniado; Autorizacao; Dt. Autorizacao; Carteira;Nome do Beneficiario; Idade; CRM; Medico;Cod. Item;Descricao;Qtde;Valor;Usuario';
    Writeln(byt_nameofthfile,S);
    Fdt_principal6.spc_cons_med_autorizacaoMedica.First;
    with Fdt_principal6.spc_cons_med_autorizacaoMedica do
    begin
      while not EOF do
      begin
        S:= FieldByName('cod_conveniado').AsString + ';' + FieldByName('nome_con').AsString + ';' +
        FieldByName('cod_autorizacaoMedica').AsString + ';' + FieldByName('dtatendimento_aum').AsString + ';' +
        FieldByName('carteirinha').AsString + ';' + FieldByName('nome_ben').AsString + ';' +
        FieldByName('idade_ben').AsString + ';' + FieldByName('cod_crm').AsString + ';' +
        FieldByName('nomeMedico_aum').AsString + ';' + FieldByName('cod_itemservico').AsString + ';' +
        FieldByName('nome_its').AsString + ';' + FieldByName('qtde_ita').AsString +';'+
        FormatFloat('###,###,##0.00', FieldByName('vlTotal_hit').AsFloat)+';'+
        FieldByName('nome_usu').AsString;
        pgb_registros.Position:= pgb_registros.Position + 1;
        Writeln(byt_nameofthfile,S);
        Next;
      end;
    end;
    CloseFile(byt_nameofthfile);
    pgb_registros.Visible:= False;
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
    if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self)
       then Exit ;
    Algo:= SaveDialog.InitialDir + str_arquiventrad;
    ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);
  end;
  pgb_registros.Visible:= False;
end;

end.

