unit Rel_ExtratoCrm001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, ShellApi;

type
  TFrm_Rel_ExtratoCrm001 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton3: TPDJButton;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    edt_ano2: TDCEdit;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    Panel6: TPanel;
    edt_cod_itemservico: TDCChoiceEdit;
    edt_descricao_itc: TDCEdit;
    Panel8: TPanel;
    edt_cod_crm: TDCChoiceEdit;
    edt_medico_crm: TDCEdit;
    Panel9: TPanel;
    rdb_abulatorial: TRadioButton;
    rdb_internacao: TRadioButton;
    rdb_todos: TRadioButton;
    PDJButton1: TPDJButton;
    btn_exportaitemservico: TPDJButton;
    SaveDialog: TSaveDialog;
    btn_extratoitemservico: TPDJButton;
    pgb_registros: TProgressBar;
    btn_exportaatendimento: TPDJButton;
    btn_extratoatendimento: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure edt_cod_itemservicoExit(Sender: TObject);
    procedure edt_cod_itemservicoButtonClick(Sender: TObject);
    procedure edt_cod_crmButtonClick(Sender: TObject);
    procedure edt_cod_crmExit(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_exportaitemservicoClick(Sender: TObject);
    procedure btn_extratoitemservicoClick(Sender: TObject);
    procedure btn_extratoatendimentoClick(Sender: TObject);
    procedure btn_exportaatendimentoClick(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_ExtratoCrm001: TFrm_Rel_ExtratoCrm001;
  str_arquiventrad, s: String;
  byt_nameofthfile : TextFile;

implementation
uses Imp_Med_ExtratoCRM001, Imp_Med_ExtratoConven002, dtm_principal, Fun_Medico,
Fun_ConsCadastro, Constantes, Fun_Data, Fun_Obj, DLG_mensagem, dtm_principal4,
  Bas_Impressao ;

{$R *.DFM}

procedure TFrm_Rel_ExtratoCrm001.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Extrato de Item de Serviço por CRM' ;
  FEditChave    := 'edt_cod_crm' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Rel_ExtratoCrm001.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_ExtratoCrm001.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
end;

procedure TFrm_Rel_ExtratoCrm001.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Rel_ExtratoCrm001.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mes de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'Ano de Referencia Final deve ser Preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_ExtratoCrm001.PDJButton3Click(Sender: TObject);
begin
  inherited;
  btn_extratoitemservico.OnClick(Self);
  Frm_Imp_Med_ExtratoCRM001 := TFrm_Imp_Med_ExtratoCRM001.Create(Self);
  Frm_Imp_Med_ExtratoCRM001.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_ExtratoCRM001.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_Med_ExtratoCRM001.FDataInicial := edt_dtinicial.text;
  Frm_Imp_Med_ExtratoCRM001.FDataFinal := edt_dtfinal.text;
  Frm_Imp_Med_ExtratoCRM001.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoCRM001.Release;
  Fdt_principal.spc_cons_med_extratocrm001.close;
end;

procedure TFrm_Rel_ExtratoCrm001.edt_cod_itemservicoExit(Sender: TObject);
begin
  inherited;
  edt_descricao_itc.text := Get_DescricaoServico(edt_cod_itemservico.text);
end;

procedure TFrm_Rel_ExtratoCrm001.edt_cod_itemservicoButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservico',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento',
  'Localizar Itens de Serviços', '', true));
end;

procedure TFrm_Rel_ExtratoCrm001.edt_cod_crmButtonClick(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_crm',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_crm',8,length('edt_cod_crm')),
  'cod_crm, medico_crm', 'CRM, Nome do Médico',
  'Localizar Médicos', '', true));
end;

procedure TFrm_Rel_ExtratoCrm001.edt_cod_crmExit(Sender: TObject);
begin
  inherited;
  if edt_cod_crm.text <> '' then
    edt_medico_crm.text := Get_NomeMedico(edt_cod_crm.text);
end;

procedure TFrm_Rel_ExtratoCrm001.PDJButton1Click(Sender: TObject);
begin
  inherited;
  btn_extratoatendimento.OnClick(Self);
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal4.spc_cons_med_extratoCrmDetalhado;
  Frm_Bas_Impressao.Fcampo1 := 'Médico   '+edt_cod_crm.Text+'  -  '+edt_medico_crm.Text;
  Frm_Bas_Impressao.showReport(4192);
  Fdt_principal4.spc_cons_med_extratoCrmDetalhado.close;
end;

procedure TFrm_Rel_ExtratoCrm001.btn_exportaitemservicoClick(
  Sender: TObject);
Var
  Algo: String;
begin
  inherited;
  pgb_registros.Visible:= False;
  btn_extratoitemservico.OnClick(Self);
  if Fdt_principal.spc_cons_med_extratoCrm001.RecordCount < 1 then
     Exit;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.execute then
     begin
     str_arquiventrad:= SaveDialog.filename;
     AssignFile(byt_nameofthfile, str_arquiventrad);
     Rewrite (byt_nameofthfile);
     pgb_registros.Visible:= True;
     pgb_registros.Min:= 0;
     pgb_registros.Max:= Fdt_principal.spc_cons_med_extratoCrm001.RecordCount;
     S:= 'Cod.CRM;Nome do Médico;Item Serviço/Procedimento;Descrição Serviço/Procedimento;Cod.Conveniado;Nome Conveniado;Qtde;Qtde de Pacientes;Vlr.Médio p/Item;Total Pago';
     Writeln(byt_nameofthfile,S);
     Fdt_principal.spc_cons_med_extratoCrm001.First;
     with Fdt_principal.spc_cons_med_extratoCrm001 do
         begin
          while not EOF do
          begin
          S:= FieldByName('cod_crm').Text + ';' + FieldByName('medico_crm').Text + ';' +
              FieldByName('cod_itemservico').Text + ';' + FieldByName('nome_its').AsString + ';' +
              FieldByName('cod_conveniado').AsString + ';' + FieldByName('nome_con').AsString + ';' +
              FieldByName('tlitens_exc').AsString + ';;' +
              FormatFloat('###,###,###,##0.000', FieldByName('tlpago_exc').Value / FieldByName('tlitens_exc').Value) + ';' +
              FormatFloat('###,###,###,##0.00', FieldByName('tlpago_exc').Value);
//               + ';' +  FormatFloat('###0.0000000000', FieldByName('tlgeral_exc').Value);
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

procedure TFrm_Rel_ExtratoCrm001.btn_extratoitemservicoClick(
  Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratoCrm001 do
  begin
    close;
    if edt_cod_conveniado.text = '' then
      ParamByName('@cod_conveniado').AsString := '0'
    else
      ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    if edt_cod_itemservico.text <> '' then begin
      ParamByName('@cod_itemServicoIni').AsString := edt_cod_itemservico.text ;
      ParamByName('@cod_itemServicoFin').AsString := edt_cod_itemservico.text ;
    end else begin
      ParamByName('@cod_itemServicoIni').AsString := '0' ;
      ParamByName('@cod_itemServicoFin').AsString := '0' ;
    end;
    if edt_dtinicial.Text <> '' then begin
      ParamByName('@dtrealizacaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
      ParamByName('@dtrealizacaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    end else begin
      ParamByName('@dtrealizacaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
      ParamByName('@dtrealizacaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    end;
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaIni').AsString := '01' ;
    ParamByName('@dtreferenciaFin').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@sequenciaFin').AsString := '100' ;
    if edt_cod_crm.text <> '' then
      ParamByName('@cod_crm').AsString := edt_cod_crm.text
    else
      ParamByName('@cod_crm').AsString := '0' ;
    if rdb_abulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_todos.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
    if recordcount < 1 then begin
      Dlg_Ok('Nenhum Item encontrado !', self);
      close;
      exit;
    end;
  end;
end;

procedure TFrm_Rel_ExtratoCrm001.btn_extratoatendimentoClick(
  Sender: TObject);
begin
  inherited;
 // if(not BAS_ValidarCampo(edt_cod_crm.name, 'O CRM do Médico deve ser Preenchido !', VLD_Preenchido )) then
 //   Exit;
  if CriticaParametros then
    Exit;
  with Fdt_principal4.spc_cons_med_extratoCrmDetalhado do
  begin
    close;
    ParamByName('@cod_crm').AsString := edt_cod_crm.Text;
    if edt_cod_conveniado.text = '' then
      ParamByName('@cod_conveniado').AsString := '0'
    else
      ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@cod_itemServico').AsString := edt_cod_itemservico.Text;
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFin').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@dtrealizacaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date);
    ParamByName('@dtrealizacaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date);
    if rdb_abulatorial.Checked then
      ParamByName('@cod_acomodacao').AsString := '5' ;
    if rdb_internacao.Checked then
      ParamByName('@cod_acomodacao').AsString := '6' ;
    if rdb_todos.Checked then
      ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
    if recordcount < 1 then
       begin
       Dlg_Ok('Nenhum Item encontrado !', self);
       close;
       exit;
       end;
end;

end;

procedure TFrm_Rel_ExtratoCrm001.btn_exportaatendimentoClick(
  Sender: TObject);
Var
  Algo: String;
begin
  inherited;
  pgb_registros.Visible:= False;
  btn_extratoatendimento.OnClick(Self);
  if Fdt_principal4.spc_cons_med_extratoCrmDetalhado.RecordCount < 1 then
     Exit;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.execute then
     begin
     str_arquiventrad:= SaveDialog.filename;
     AssignFile(byt_nameofthfile, str_arquiventrad);
     Rewrite (byt_nameofthfile);
     pgb_registros.Visible:= True;
     pgb_registros.Min:= 0;
     pgb_registros.Max:= Fdt_principal4.spc_cons_med_extratoCrmDetalhado.RecordCount;
     S:= 'Cod.CRM;Nome do Médico;No.Carteira;Nome Beneficiário;Dt.Atendimento;Conveniado;Qtde;Vlr.Pagar';
     Writeln(byt_nameofthfile,S);
     Fdt_principal4.spc_cons_med_extratoCrmDetalhado.First;
     with Fdt_principal4.spc_cons_med_extratoCrmDetalhado do
         begin
          while not EOF do
          begin
          S:= FieldByName('cod_crm').Text + ';' + FieldByName('medico_crm').Text + ';' +
              FieldByName('carteirainform_ctm').Text + ';' + FieldByName('nome_ben').AsString + ';' +
              FormatDateTime('dd/mm/yyyy', FieldByName('dtentrada_ctm').Value) + ';' + FieldByName('nomereduzido_con').AsString + ';' +
              FieldByName('qtde_itc').AsString + ';' + FormatFloat('###,###,###,##0.000', FieldByName('vlpagar_itc').Value);
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

