unit Rel_3074;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, Psock, NMsmtp;

type
  TFrm_Rel_3074 = class(TFrm_Bas_TelaPadrao)
    PDJButton4: TPDJButton;
    Panel4: TPanel;
    cbx_cod_plano: TDCComboBox;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    GroupBox3: TGroupBox;
    rdb_grupo2: TRadioButton;
    rdb_grupo1: TRadioButton;
    Panel5: TPanel;
    Panel6: TPanel;
    cbx_cod_empresa: TDCComboBox;
    cbx_cod_empresafolha: TDCComboBox;
    Btn_LimpaCampos: TPDJButton;
    rdg_atalhos: TRadioGroup;
    Panel10: TPanel;
    cbx_cod_classificacaoPlano: TDCComboBox;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    PDJButton3: TPDJButton;
    PDJButton5: TPDJButton;
    btn_atualizahistPlanoPagtoEspecial: TPDJButton;
    cbx_cod_tipodependente: TDCComboBox;
    cbx_sexo_ben: TDCComboBox;
    cbx_cod_planoPagto: TDCComboBox;
    ckb_periodo: TCheckBox;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    btn_impcontrib: TPDJButton;
    btn_impcontribpatr: TPDJButton;
    btn_impdespmedicas: TPDJButton;
    btn_copartMensal: TPDJButton;
    btn_copartDetalhado: TPDJButton;
    btn_copartPeriodo: TPDJButton;
    cbx_cod_statusAtivo: TDCComboBox;
    ckb_decimo: TCheckBox;
    procedure PDJButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure rdg_atalhosClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure btn_atualizahistPlanoPagtoEspecialClick(Sender: TObject);
    procedure ckb_periodoClick(Sender: TObject);
    procedure btn_impcontribClick(Sender: TObject);
    procedure btn_impcontribpatrClick(Sender: TObject);
    procedure btn_impdespmedicasClick(Sender: TObject);
    procedure edt_anoExit(Sender: TObject);
    procedure btn_copartDetalhadoClick(Sender: TObject);
    procedure btn_copartPeriodoClick(Sender: TObject);
    procedure btn_copartMensalClick(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
    function CriticaParametrosDt : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_3074: TFrm_Rel_3074;

implementation
uses Imp_Med_ResumoConta, dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,
Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str, dtm_principal3, Dlg_ImprimeCarta,
Imp_4127, Fun_Obj, dtm_principal6, Bas_Impressao, Fun_data, dtm_principal5,
  dtm_principal4 ;

{$R *.DFM}

function TFrm_Rel_3074.CriticaParametros : Boolean ;
begin
   result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser Preenchido !', VLD_Preenchido )) 
   or (not BAS_ValidarCampo(cbx_cod_classificacaoPlano.name, 'O Plano deve ser Preenchido !', VLD_Preenchido ));
end;

function TFrm_Rel_3074.CriticaParametrosDt : Boolean ;
begin
   result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'O Mês de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_ano.name, 'O Ano de Referência Final deve ser Preenchido !', VLD_Preenchido ));
end;

procedure TFrm_Rel_3074.PDJButton4Click(Sender: TObject);
var
  Emp, TipoDepSexo : String;
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal6.spc_cons_adm_fechamentoContribMensal do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
//    ParamByName('@cod_plano').AsString := cbx_cod_plano.ValueItem;
    ParamByName('@cod_ClassificacaoPlano').AsString := cbx_cod_classificacaoPlano.ValueItem;
//    if cbx_cod_tipodependente.Text = '' then
//      ParamByName('@cod_tipodependente').AsInteger := -1
//    else
//      ParamByName('@cod_tipodependente').AsInteger := cbx_cod_tipodependente.ValueItem;
    if rdb_grupo1.Checked then
      ParamByName('@grupo_fxe').AsInteger := 1
    else
      ParamByName('@grupo_fxe').AsInteger := 2;
//    ParamByName('@sexo').AsString := cbx_sexo_ben.valueItem;
//    ParamByName('@cod_planoPagto').AsString := cbx_cod_planoPagto.ValueItem;
//    ParamByName('@cod_empresa').AsString := cbx_cod_empresa.ValueItem;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.ValueItem;
    open;
    if recordcount = 0 then begin
      cbx_cod_empresafolha.SetFocus;
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal6.spc_cons_adm_fechamentoContribMensal;
  Frm_Bas_Impressao.FMesReferencia := 'Mês de Referência     '+cbx_cod_mes.Text+' \ '+edt_ano.Text;
  Frm_Bas_Impressao.FCampo1 := 'Classificação do Plano     '+cbx_cod_classificacaoPlano.Text;
  if (cbx_cod_tipodependente.Text <> '') then
    TipoDepSexo := 'Tipo de Dependente     '+cbx_cod_tipodependente.Text+'             ';
  if cbx_sexo_ben.Text <> '' then
    TipoDepSexo := TipoDepSexo + 'Sexo     '+cbx_sexo_ben.Text;
    Frm_Bas_Impressao.FCampo2 := TipoDepSexo;
  if (cbx_cod_empresa.Text) <> '' then
    Emp := 'Empresa     '+cbx_cod_empresa.Text+'             ';
  if cbx_cod_empresafolha.Text <> '' then
    Emp := Emp + 'Local de Desconto     '+cbx_cod_empresafolha.Text;
  Frm_Bas_Impressao.FCampo3 := Emp;
  if cbx_cod_planoPagto.Text <> '' then
    Frm_Bas_Impressao.FCampo4 := 'Plano de Pgto. Especial     '+cbx_cod_planoPagto.Text;
  Frm_Bas_Impressao.showReport(4172);
  Fdt_principal6.spc_cons_adm_fechamentoContribMensal.close;
end;

procedure TFrm_Rel_3074.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  //BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_classificacaoPlano', 'nome_clp');
  //BAS_CarregarCombo('cbx_cod_tipodependente', 'nome_tdp');
  cbx_sexo_ben.Items.Add('Masculino');
  cbx_sexo_ben.Items.Add('Feminino');
  cbx_sexo_ben.ValItems.Add('M');
  cbx_sexo_ben.ValItems.Add('F');
  //BAS_CarregarCombo('cbx_cod_planoPagto', 'cast(cod_planoPagto as varchar(3)) + '' - '' + nome_plp');
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_statusAtivo','descricao_sta');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
end;

procedure TFrm_Rel_3074.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;

procedure TFrm_Rel_3074.rdg_atalhosClick(Sender: TObject);
begin
  inherited;
  Btn_LimpaCamposClick(self);
  case rdg_atalhos.ItemIndex of
   0 : begin
     Obj_SetFormObjValueByName(self, cbx_cod_mes.name, Data_Month(date));
     edt_ano.Text := IntToStr(Data_Year(date));
   end;
   1 : begin
     Obj_SetFormObjValueByName(self, cbx_cod_mes.name, Data_Month(date));
     edt_ano.Text := IntToStr(Data_Year(date));
     Obj_SetFormObjValueByName(self,cbx_cod_plano.name,1);
   end;
   2 : begin
     Obj_SetFormObjValueByName(self, cbx_cod_mes.name, Data_Month(date));
     edt_ano.Text := IntToStr(Data_Year(date));
     Obj_SetFormObjValueByName(self,cbx_cod_plano.name,6);
   end;
   3 : begin
     Obj_SetFormObjValueByName(self, cbx_cod_mes.name, Data_Month(date));
     edt_ano.Text := IntToStr(Data_Year(date));
     Obj_SetFormObjValueByName(self,cbx_cod_plano.name,2);
   end;
   4 : begin
     Obj_SetFormObjValueByName(self, cbx_cod_mes.name, Data_Month(date));
     edt_ano.Text := IntToStr(Data_Year(date));
     Obj_SetFormObjValueByName(self,cbx_cod_plano.name,3);
   end;
   5 : begin
     Obj_SetFormObjValueByName(self, cbx_cod_mes.name, Data_Month(date));
     edt_ano.Text := IntToStr(Data_Year(date));
     Obj_SetFormObjValueByName(self,cbx_cod_plano.name,1);
     Obj_SetFormObjValueByName(self,cbx_cod_planoPagto.name,512);
   end;
   6 : begin
     Obj_SetFormObjValueByName(self, cbx_cod_mes.name, Data_Month(date));
     edt_ano.Text := IntToStr(Data_Year(date));
     Obj_SetFormObjValueByName(self,cbx_cod_plano.name,3);
     Obj_SetFormObjValueByName(self,cbx_cod_planoPagto.name,531);
   end;
  end;
end;

procedure TFrm_Rel_3074.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if (CriticaParametros) then
    exit;
  with Fdt_principal6.spc_cons_adm_fechamentoContribDetalhado do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
    ParamByName('@cod_classificacaoPlano').AsString := cbx_cod_classificacaoPlano.valueItem;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueItem;
    open;
    if recordcount = 0 then begin
      cbx_cod_empresafolha.SetFocus;
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal6.spc_cons_adm_fechamentoContribDetalhado;
  Frm_Bas_Impressao.FMesReferencia := 'Mês de Referência     '+cbx_cod_mes.Text+' \ '+edt_ano.Text;
  if cbx_cod_empresafolha.Text <> '' then
    Frm_Bas_Impressao.FCampo1 := 'Local de Desconto     '+cbx_cod_empresafolha.Text
  else
    Frm_Bas_Impressao.FCampo1 := '';
  if cbx_cod_classificacaoPlano.Text <> '' then
    Frm_Bas_Impressao.FCampo2 := 'Classificação do Plano    '+cbx_cod_classificacaoPlano.Text
  else
    Frm_Bas_Impressao.FCampo2 := '';
  Frm_Bas_Impressao.showReport(4182);
  Fdt_principal6.spc_cons_adm_fechamentoContribDetalhado.close;
end;  

procedure TFrm_Rel_3074.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal6.spc_cons_adm_fechamentoPatronalMensal do
  begin
    close;
    ParamByName('@dtreferencia_pat').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
    ParamByName('@cod_ClassificacaoPlano').AsString := cbx_cod_classificacaoPlano.ValueItem;
    if rdb_grupo1.Checked then
      ParamByName('@grupo_fxe').AsInteger := 1
    else
      ParamByName('@grupo_fxe').AsInteger := 2;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.ValueItem;
    ParamByName('@decimoTerceiro').AsBoolean := ckb_decimo.Checked;
    ParamByName('@cod_statusAtivo').AsString := cbx_cod_statusAtivo.ValueItem;
    open;
    if recordcount = 0 then begin
      cbx_cod_empresafolha.SetFocus;
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      cbx_cod_empresafolha.SetFocus;
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal6.spc_cons_adm_fechamentoPatronalMensal;
  Frm_Bas_Impressao.FMesReferencia := 'Mês de Referência     '+cbx_cod_mes.Text+' \ '+edt_ano.Text;
  Frm_Bas_Impressao.FCampo1 := 'Classificação do Plano     '+cbx_cod_classificacaoPlano.Text;
  if cbx_cod_empresafolha.Text <> '' then
    Frm_Bas_Impressao.FCampo2 := 'Local de Desconto     '+cbx_cod_empresafolha.Text;
    
  if cbx_cod_statusAtivo.Text <> '' then
     Frm_Bas_Impressao.FCampo3 := 'Situação    '+cbx_cod_statusAtivo.Text
  else
     Frm_Bas_Impressao.FCampo3 := '';

  if ckb_decimo.Checked then
     Frm_Bas_Impressao.FCampo4 := 'Décimo Terceiro'
  else
     Frm_Bas_Impressao.FCampo4 := '';
  Frm_Bas_Impressao.showReport(4183);
  Fdt_principal6.spc_cons_adm_fechamentoPatronalMensal.close;
end;

procedure TFrm_Rel_3074.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal5.spc_cons_adm_consultapatronal do
  begin
    close;
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.Text;
    ParamBYName('@dtreferenciaFin').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@nome_ben').AsString := '';
    ParamByName('@matriculaDebito_seg').AsInteger := 0;
    ParamByName('@cod_classificacaoPlano').AsString := cbx_cod_classificacaoPlano.valueitem;
        ParamByName('@vlsalarioIni').AsString := '';
    ParamByName('@vlsalarioFin').AsString := '';
    ParamByName('@order').AsInteger := 0;
    ParamByName('@decimoTerceiro').AsBoolean := ckb_decimo.Checked;
    ParamByName('@cod_statusAtivo').AsString := cbx_cod_statusAtivo.ValueItem;
    open;
    if recordcount = 0 then begin
      cbx_cod_empresafolha.SetFocus;
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_adm_consultapatronal;
  Frm_Bas_Impressao.FCampo1 := 'Periodo    '+cbx_cod_mes.Text+'\'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo2 := 'Local de Desconto    '+cbx_cod_empresafolha.Text;
  Frm_Bas_Impressao.FCampo3 := 'Classificação do Plano    '+cbx_cod_classificacaoPlano.Text;
  if cbx_cod_statusAtivo.Text <> '' then
     Frm_Bas_Impressao.FCampo3 := 'Situação    '+cbx_cod_statusAtivo.Text
  else
     Frm_Bas_Impressao.FCampo3 := '';

  if ckb_decimo.Checked then
     Frm_Bas_Impressao.FCampo4 := 'Décimo Terceiro'
  else
     Frm_Bas_Impressao.FCampo4 := '';
  Frm_Bas_Impressao.showReport(4164);
  Fdt_principal5.spc_cons_adm_consultapatronal.close;
end;

procedure TFrm_Rel_3074.PDJButton5Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
//  if cbx_cod_empresafolha.Text <> '' then
//    Dlg_Alerta('Esse Relatório não Filtra por Local de Desconto!',self);
    with fdt_principal5.spc_cons_med_despPlanoFaixaEtaria do
  begin
    close;
    ParamByName('@cod_conveniado').asstring := '0';
    ParamByName('@dtreferenciaIni_cta').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.Text;
    ParamByName('@sequenciaIni_cta').AsString := '1';
    ParamBYName('@dtreferenciaFin_cta').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.text;
    ParamByName('@sequenciaFin_cta').AsString := '200';
    ParamByName('@cod_classificacaoPlano').AsString := cbx_cod_classificacaoPlano.valueitem;
    if rdb_grupo1.Checked then
      ParamByName('@grupo_fxe').AsInteger := 1
    else
      ParamByName('@grupo_fxe').AsInteger := 2;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.ValueItem;
    open;
    if recordcount = 0 then begin
      cbx_cod_empresafolha.SetFocus;
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_med_despPlanoFaixaEtaria;
  Frm_Bas_Impressao.FCampo1 := 'Periodo    '+cbx_cod_mes.Text+' / '+edt_ano.Text;
  Frm_Bas_Impressao.FCampo2 := '';
  if cbx_cod_empresafolha.Text <> '' then
     Frm_Bas_Impressao.FCampo2 := 'Local de Desconto         '+ cbx_cod_empresafolha.Text;
  Frm_Bas_Impressao.FCampo3 := 'Classificação do Plano    '+ cbx_cod_classificacaoPlano.Text;
  Frm_Bas_Impressao.showReport(4185);
  Fdt_principal5.spc_cons_med_despPlanoFaixaEtaria.close;
end;

procedure TFrm_Rel_3074.btn_atualizahistPlanoPagtoEspecialClick(
  Sender: TObject);
var
  FCod_beneficiario, FCod_beneficiarioOld, Fcod_planoPagto : String;
  FDtFinal, FDtInicialOld, FDtSistema : TDatetime;
begin
  inherited;
  FCod_beneficiarioOld := '0';
  DB_OpenADOSQL('select cod_beneficiario, cod_planoPagto, dtfinal_hpe, dtsistema_hle, dtinicial_hpe'+
  ' from tbl_histPlanoPagtoEspecial order by cod_beneficiario, dtsistema_hle desc');
  while not TabADO.Eof do
  begin
    FCod_beneficiario := TabADO.fieldByName('cod_beneficiario').AsString;
    Fcod_planoPagto := TabADO.fieldByName('cod_planoPagto').AsString;
    FDtSistema := TabADO.fieldByName('dtsistema_hle').AsDateTime;
    if FCod_beneficiario <> FCod_beneficiarioOld then
    begin
      if DB_OpenSQL('select * from  tbl_beneficiarioPlanoPagtoEspecial b where cod_beneficiario = '+FCod_beneficiario) = 0 then
      begin
        if DB_OpenSQL('select dtfinal_hpl from tbl_histplano h, tbl_planoPagto p where h.cod_plano = p.cod_plano'+
        ' and cod_beneficiario = '+FCod_beneficiario+' and cod_planoPagto = '+Fcod_planoPagto) > 0 then
          FDtFinal := Tab.fieldByName('dtfinal_hpl').AsDateTime
        else
          if DB_OpenSQL('select dtplano_ben from tbl_beneficiario where cod_beneficiario = '+FCod_beneficiario) > 0 then
            FDtFinal := Tab.fieldByName('dtplano_ben').AsDateTime;
        DB_ExecSQL('update tbl_histPlanoPagtoEspecial set dtfinal_hpe = '+DB_FormatDataSQL(FDtFinal, ftDateTime)+
        ' where dtfinal_hpe is null and cod_beneficiario = '+FCod_beneficiario);
      end;
    end
    else begin
      DB_ExecSQL('update tbl_histPlanoPagtoEspecial set dtfinal_hpe = '+DB_FormatDataSQL(FDtInicialOld, ftDateTime)+
      ' where dtfinal_hpe is null and cod_beneficiario = '+FCod_beneficiario+
      ' and cod_planoPagto = '+Fcod_planoPagto+' and dtsistema_hle = '''+Data_Format('mm/dd/yyyy hh:mm:ss:zzz',FDtSistema)+'''');
    end;
    Application.ProcessMessages;
    FCod_beneficiarioOld := TabADO.fieldByName('cod_beneficiario').AsString;
    FDtInicialOld := TabADO.fieldByName('dtinicial_hpe').AsDateTime;
    TabADO.Next;
  end;
end;

procedure TFrm_Rel_3074.ckb_periodoClick(Sender: TObject);
begin
  inherited;
  edt_ano.Text:= '';
  ed2_ano.Text:= '';
  cbx_cod_mes.Text:= '';
  cbx_cod_mes.ItemIndex:= -1;
  cb2_cod_mes.Text:= '';
  cb2_cod_mes.ItemIndex:= -1;
  Btn_LimpaCamposClick(Self);
  cbx_cod_mes.SetFocus;
  if ckb_periodo.Checked then
     begin
     Panel7.Caption:= '    Mês / Ano de Referência de                                                                                               até';
     cb2_cod_mes.Visible:= True;
     ed2_ano.Visible:= True;
     GroupBox3.Visible:= False;
     PDJButton1.Visible:= False;
     PDJButton2.Visible:= False;
     PDJButton3.Visible:= False;
     PDJButton4.Visible:= False;
     PDJButton5.Visible:= False;
     btn_copartMensal.visible := False;
     btn_copartDetalhado.visible := false;
     btn_copartPeriodo.Visible := true;
     btn_impcontrib.Visible:= True;
     btn_impcontribpatr.Visible:= True;
     btn_impdespmedicas.Visible:= True;
     end
  else
     begin
     Panel7.Caption:= '    Mês / Ano de Referência';
     cb2_cod_mes.Visible:= False;
     ed2_ano.Visible:= False;
     GroupBox3.Visible:= True;
     PDJButton1.Visible:= True;
     PDJButton2.Visible:= True;
     PDJButton3.Visible:= True;
     PDJButton4.Visible:= True;
     PDJButton5.Visible:= True;
     btn_copartMensal.visible := true;
     btn_copartDetalhado.visible := true;
     btn_copartPeriodo.Visible := false;
     btn_impcontrib.Visible:= False;
     btn_impcontribpatr.Visible:= False;
     btn_impdespmedicas.Visible:= False;
     end;
end;

procedure TFrm_Rel_3074.btn_impcontribClick(Sender: TObject);
begin
  inherited;
  if CriticaParametrosDt then
    Exit;
  with Fdt_principal4.spc_cons_adm_fechamentoContribPeriodo do
  begin
    Close;
    ParamByName('@dtreferencia_ini').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
    ParamByName('@dtreferencia_fim').AsString := cb2_cod_mes.valueItem+'/01/'+ed2_ano.Text;
    if cbx_cod_classificacaoPlano.ValueItem <> '' then
       ParamByName('@cod_ClassificacaoPlano').AsString := cbx_cod_classificacaoPlano.ValueItem
    else
       ParamByName('@cod_ClassificacaoPlano').AsString := '0';
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.ValueItem;
    Open;
    if RecordCount = 0 then begin
      cbx_cod_empresafolha.SetFocus;
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Panel7.SetFocus;
      Exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal4.spc_cons_adm_fechamentoContribPeriodo;
  Frm_Bas_Impressao.FMesReferencia:= 'Mês de Referência          '+cbx_cod_mes.Text+' / '+edt_ano.Text + '      até      ' + cb2_cod_mes.Text+' / '+ed2_ano.Text;
  Frm_Bas_Impressao.FCampo2:= '';
  if cbx_cod_classificacaoPlano.Text <> '' then
     Frm_Bas_Impressao.FCampo1 := 'Classificação do Plano    '+cbx_cod_classificacaoPlano.Text
  else
     Frm_Bas_Impressao.FCampo1 := '';
  if cbx_cod_empresafolha.Text <> '' then
     Frm_Bas_Impressao.FCampo2:=  'Local de Desconto          '+ cbx_cod_empresafolha.Text
  else
     Frm_Bas_Impressao.FCampo2:= '';
  Frm_Bas_Impressao.showReport(4229);
  Fdt_principal4.spc_cons_adm_fechamentoContribPeriodo.Close;
end;

procedure TFrm_Rel_3074.btn_impcontribpatrClick(Sender: TObject);
begin
  inherited;
  if CriticaParametrosDt then
    Exit;
  with Fdt_principal4.spc_cons_adm_fechamentoPatronalPeriodo do
  begin
    Close;
    ParamByName('@dtreferencia_ini').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
    ParamByName('@dtreferencia_fim').AsString := cb2_cod_mes.valueItem+'/01/'+ed2_ano.Text;
    if cbx_cod_classificacaoPlano.ValueItem <> '' then
       ParamByName('@cod_ClassificacaoPlano').AsString := cbx_cod_classificacaoPlano.ValueItem
    else
       ParamByName('@cod_ClassificacaoPlano').AsString := '0';
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.ValueItem;
    ParamByName('@decimoTerceiro').AsBoolean := ckb_decimo.Checked;
    ParamByName('@cod_statusAtivo').AsString := cbx_cod_statusAtivo.ValueItem;
    Open;
    if RecordCount = 0 then begin
      cbx_cod_empresafolha.SetFocus;
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Panel7.SetFocus;
      Exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal4.spc_cons_adm_fechamentoPatronalPeriodo;
  Frm_Bas_Impressao.FMesReferencia:= 'Mês de Referência          '+cbx_cod_mes.Text+' / '+edt_ano.Text + '      até      ' + cb2_cod_mes.Text+' / '+ed2_ano.Text;
  Frm_Bas_Impressao.FCampo2:= '';
  if cbx_cod_classificacaoPlano.Text <> '' then
     Frm_Bas_Impressao.FCampo1 := 'Classificação do Plano    '+cbx_cod_classificacaoPlano.Text
  else
     Frm_Bas_Impressao.FCampo1 := '';
  if cbx_cod_empresafolha.Text <> '' then
     Frm_Bas_Impressao.FCampo2:=  'Local de Desconto          '+ cbx_cod_empresafolha.Text
  else
     Frm_Bas_Impressao.FCampo2:= '';

  if cbx_cod_statusAtivo.Text <> '' then
     Frm_Bas_Impressao.FCampo3 := 'Situação    '+cbx_cod_statusAtivo.Text
  else
     Frm_Bas_Impressao.FCampo3 := '';

  if ckb_decimo.Checked then
     Frm_Bas_Impressao.FCampo4 := 'Décimo Terceiro'
  else
     Frm_Bas_Impressao.FCampo4 := '';
  Frm_Bas_Impressao.showReport(4230);
  Fdt_principal4.spc_cons_adm_fechamentoPatronalPeriodo.Close;
end;

procedure TFrm_Rel_3074.btn_impdespmedicasClick(Sender: TObject);
begin
  inherited;
  if CriticaParametrosDt then
    Exit;
  with Fdt_principal4.spc_cons_med_despPlanoPeriodo do
  begin
    Close;
    ParamByName('@cod_conveniado').asstring := '0';
    ParamByName('@sequenciaIni_cta').AsString := '1';
    ParamByName('@sequenciaFin_cta').AsString := '200';
    ParamByName('@dtreferenciaIni_cta').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
    ParamByName('@dtreferenciaFin_cta').AsString := cb2_cod_mes.valueItem+'/01/'+ed2_ano.Text;
    if cbx_cod_classificacaoPlano.ValueItem <> '' then
       ParamByName('@cod_ClassificacaoPlano').AsString := cbx_cod_classificacaoPlano.ValueItem
    else
       ParamByName('@cod_ClassificacaoPlano').AsString := '0';
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.ValueItem;
    Open;
    if RecordCount = 0 then begin
      cbx_cod_empresafolha.SetFocus;
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Panel7.SetFocus;
      Exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal4.spc_cons_med_despPlanoPeriodo;
  Frm_Bas_Impressao.FMesReferencia:= 'Mês de Referência          '+cbx_cod_mes.Text+' / '+edt_ano.Text + '      até      ' + cb2_cod_mes.Text+' / '+ed2_ano.Text;
  if cbx_cod_classificacaoPlano.Text <> '' then
     Frm_Bas_Impressao.FCampo1 := 'Classificação do Plano    '+cbx_cod_classificacaoPlano.Text
  else
     Frm_Bas_Impressao.FCampo1 := '';
  Frm_Bas_Impressao.FCampo2 := '';
  if cbx_cod_empresafolha.Text <> '' then
     Frm_Bas_Impressao.FCampo2:=  'Local de Desconto          '+ cbx_cod_empresafolha.Text;
  Frm_Bas_Impressao.showReport(4231);
  Fdt_principal4.spc_cons_med_despPlanoPeriodo.Close;
end;

procedure TFrm_Rel_3074.edt_anoExit(Sender: TObject);
begin
  inherited;
  if ckb_periodo.Checked then
     cb2_cod_mes.SetFocus;
end;

procedure TFrm_Rel_3074.btn_copartDetalhadoClick(Sender: TObject);
begin
  inherited;
  if (CriticaParametros) then
    exit;
  with Fdt_principal3.spc_cons_adm_fechamentoCopartDetalhado do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
    ParamByName('@cod_classificacaoPlano').AsString := cbx_cod_classificacaoPlano.valueItem;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueItem;
    open;
    if recordcount = 0 then begin
      cbx_cod_empresafolha.SetFocus;
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal3.spc_cons_adm_fechamentoCopartDetalhado;
  Frm_Bas_Impressao.FMesReferencia := 'Mês de Referência     '+cbx_cod_mes.Text+' \ '+edt_ano.Text;
  if cbx_cod_empresafolha.Text <> '' then
    Frm_Bas_Impressao.FCampo1 := 'Local de Desconto     '+cbx_cod_empresafolha.Text
  else
    Frm_Bas_Impressao.FCampo1 := '';
  if cbx_cod_classificacaoPlano.Text <> '' then
    Frm_Bas_Impressao.FCampo2 := 'Classificação do Plano    '+cbx_cod_classificacaoPlano.Text
  else
    Frm_Bas_Impressao.FCampo2 := '';
  Frm_Bas_Impressao.showReport(4250);
  Fdt_principal3.spc_cons_adm_fechamentoCopartDetalhado.close;
end;

procedure TFrm_Rel_3074.btn_copartPeriodoClick(Sender: TObject);
begin
  inherited;
  if CriticaParametrosDt then
    Exit;
  with Fdt_principal3.spc_cons_adm_fechamentoCopartPeriodo do
  begin
    Close;
    ParamByName('@dtreferencia_ini').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
    ParamByName('@dtreferencia_fim').AsString := cb2_cod_mes.valueItem+'/01/'+ed2_ano.Text;
    if cbx_cod_classificacaoPlano.ValueItem <> '' then
       ParamByName('@cod_ClassificacaoPlano').AsString := cbx_cod_classificacaoPlano.ValueItem
    else
       ParamByName('@cod_ClassificacaoPlano').AsString := '0';
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.ValueItem;
    Open;
    if RecordCount = 0 then begin
      cbx_cod_empresafolha.SetFocus;
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Panel7.SetFocus;
      Exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal3.spc_cons_adm_fechamentoCopartPeriodo;
  Frm_Bas_Impressao.FMesReferencia:= 'Mês de Referência          '+cbx_cod_mes.Text+' / '+edt_ano.Text + '      até      ' + cb2_cod_mes.Text+' / '+ed2_ano.Text;
  Frm_Bas_Impressao.FCampo2:= '';
  if cbx_cod_classificacaoPlano.Text <> '' then
     Frm_Bas_Impressao.FCampo1 := 'Classificação do Plano    '+cbx_cod_classificacaoPlano.Text
  else
     Frm_Bas_Impressao.FCampo1 := '';
  if cbx_cod_empresafolha.Text <> '' then
     Frm_Bas_Impressao.FCampo2:=  'Local de Desconto          '+ cbx_cod_empresafolha.Text
  else
     Frm_Bas_Impressao.FCampo2:= '';
  Frm_Bas_Impressao.showReport(4248);
  Fdt_principal3.spc_cons_adm_fechamentoCopartPeriodo.Close;
end;

procedure TFrm_Rel_3074.btn_copartMensalClick(Sender: TObject);
var
  Emp, TipoDepSexo : String;
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal3.spc_cons_adm_fechamentoCopartMensal do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
//    ParamByName('@cod_plano').AsString := cbx_cod_plano.ValueItem;
    ParamByName('@cod_ClassificacaoPlano').AsString := cbx_cod_classificacaoPlano.ValueItem;
//    if cbx_cod_tipodependente.Text = '' then
//      ParamByName('@cod_tipodependente').AsInteger := -1
//    else
//      ParamByName('@cod_tipodependente').AsInteger := cbx_cod_tipodependente.ValueItem;
    if rdb_grupo1.Checked then
      ParamByName('@grupo_fxe').AsInteger := 1
    else
      ParamByName('@grupo_fxe').AsInteger := 2;
//    ParamByName('@sexo').AsString := cbx_sexo_ben.valueItem;
//    ParamByName('@cod_planoPagto').AsString := cbx_cod_planoPagto.ValueItem;
//    ParamByName('@cod_empresa').AsString := cbx_cod_empresa.ValueItem;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.ValueItem;
    open;
    if recordcount = 0 then begin
      cbx_cod_empresafolha.SetFocus;
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal3.spc_cons_adm_fechamentoCopartMensal;
  Frm_Bas_Impressao.FMesReferencia := 'Mês de Referência     '+cbx_cod_mes.Text+' \ '+edt_ano.Text;
  Frm_Bas_Impressao.FCampo1 := 'Classificação do Plano     '+cbx_cod_classificacaoPlano.Text;
  if (cbx_cod_tipodependente.Text <> '') then
    TipoDepSexo := 'Tipo de Dependente     '+cbx_cod_tipodependente.Text+'             ';
  if cbx_sexo_ben.Text <> '' then
    TipoDepSexo := TipoDepSexo + 'Sexo     '+cbx_sexo_ben.Text;
    Frm_Bas_Impressao.FCampo2 := TipoDepSexo;
  if (cbx_cod_empresa.Text) <> '' then
    Emp := 'Empresa     '+cbx_cod_empresa.Text+'             ';
  if cbx_cod_empresafolha.Text <> '' then
    Emp := Emp + 'Local de Desconto     '+cbx_cod_empresafolha.Text;
  Frm_Bas_Impressao.FCampo3 := Emp;
  if cbx_cod_planoPagto.Text <> '' then
    Frm_Bas_Impressao.FCampo4 := 'Plano de Pgto. Especial     '+cbx_cod_planoPagto.Text;
  Frm_Bas_Impressao.showReport(4249);
  Fdt_principal3.spc_cons_adm_fechamentoCopartMensal.close;
end;

end.



