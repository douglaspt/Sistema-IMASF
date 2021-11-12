unit Rel_3059;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3059 = class(TFrm_Bas_TelaPadrao)
    GroupBox1: TGroupBox;
    Panel6: TPanel;
    GroupBox2: TGroupBox;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton1: TPDJButton;
    PDJButton3: TPDJButton;
    PDJButton2: TPDJButton;
    GroupBox3: TGroupBox;
    rdb_grupo2: TRadioButton;
    rdb_grupo1: TRadioButton;
    GroupBox4: TGroupBox;
    PDJButton4: TPDJButton;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    Panel4: TPanel;
    cb3_cod_mes: TDCComboBox;
    ed3_ano: TDCEdit;
    ckb_totais: TCheckBox;
    cbx_referenciaFechamentos: TDCComboBox;
    GroupBox5: TGroupBox;
    Panel5: TPanel;
    cbx_cod_regiao: TDCComboBox;
    PDJButton5: TPDJButton;
    Panel8: TPanel;
    cbx_sexo_ben: TDCComboBox;
    GroupBox6: TGroupBox;
    Panel9: TPanel;
    cbx_cod_classificacaoPlano: TDCComboBox;
    PDJButton6: TPDJButton;
    cb2_cod_regiao: TDCComboBox;
    cb2_sexo_ben: TDCComboBox;
    rdb_beneficios: TRadioButton;
    RadioButton2: TRadioButton;
    rbg_opcao: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton3: TRadioButton;
    rdg_opcoes: TRadioGroup;
    PDJButton7: TPDJButton;
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3059: TFrm_Rel_3059;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  Fun_data, Imp_4118, Imp_4122, Dlg_Mensagem, dtm_principal5, Fun_Obj, Imp_4132,
  Bas_Impressao, dtm_principal6, Fun_DB ;

{$R *.DFM}


function TFrm_Rel_3059.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano deve ser Preenchido !', VLD_Preenchido ));
end;


procedure TFrm_Rel_3059.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal5.spc_cons_adm_totalBenefiAtivo do
  begin
    close;
    ParamByName('@dtreferencia_tba').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
    if rdb_grupo1.Checked then
      ParamByName('@grupo_fxe').AsInteger := 1;
    if rdb_grupo2.Checked then
      ParamByName('@grupo_fxe').AsInteger := 2;
    if rdb_beneficios.Checked then
      ParamByName('@tipoClassificacao').AsInteger := 0
    else
      ParamByName('@tipoClassificacao').AsInteger := 1;
    open;
      if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;

  end;
  Frm_Imp_4118 := TFrm_Imp_4118.Create(Self);
  Frm_Imp_4118.QuickRep1.Preview;
  Frm_Imp_4118.Release;
  fdt_principal5.spc_cons_adm_totalBenefiAtivo.close;
end;

procedure TFrm_Rel_3059.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  if (rdb_grupo2.Checked) and (strtoint(edt_ano.Text) < 2006) then
  begin
    Dlg_Alerta('A Classificação por Grupos so começou a partir de 2006',self);
    Exit;
  end;
  with fdt_principal5.spc_cons_adm_totalBenefiAtivo02 do
  begin
    close;
    ParamByName('@dtreferencia_dr2').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
    if rdb_grupo1.Checked then
      ParamByName('@grupo_fxe').AsInteger := 1;
    if rdb_grupo2.Checked then
      ParamByName('@grupo_fxe').AsInteger := 2;
    if rdb_beneficios.Checked then
      ParamByName('@tipoClassificacao').AsInteger := 0
    else
      ParamByName('@tipoClassificacao').AsInteger := 1;      
    open;
      if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;
  end;
  with fdt_principal5.spc_cons_adm_totalBenefiAtivo03 do
  begin
    close;
    ParamByName('@dtreferencia_dr2').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
     if rdb_grupo1.Checked then
      ParamByName('@grupo_fxe').AsInteger := 1;
    if rdb_grupo2.Checked then
      ParamByName('@grupo_fxe').AsInteger := 2;
    open;
  end;
  Frm_Imp_4122 := TFrm_Imp_4122.Create(Self);
  Frm_Imp_4122.FDtReferenciaNome := cbx_cod_mes.Text+'/'+edt_ano.Text;
  Frm_Imp_4122.FDtReferencia := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
  if rdb_grupo1.Checked then
    Frm_Imp_4122.FGrupo := 1;
  if rdb_grupo2.Checked then
    Frm_Imp_4122.FGrupo := 2;  
  Frm_Imp_4122.QuickRep1.Preview;
  Frm_Imp_4122.Release;
  fdt_principal5.spc_cons_adm_totalBenefiAtivo03.close;
  fdt_principal5.spc_cons_adm_totalBenefiAtivo02.close;
end;

procedure TFrm_Rel_3059.FormShow(Sender: TObject);
begin
  inherited;
  Obj_LoadCombo(Self, 'cbx_cod_mes', 'nome_mes', 'cod_mes', 'tbl_mes');
  Obj_LoadCombo(Self, 'cb2_cod_mes', 'nome_mes', 'cod_mes', 'tbl_mes');
  Obj_LoadCombo(Self, 'cb3_cod_mes', 'nome_mes', 'cod_mes', 'tbl_mes');
  Obj_LoadCombo(Self, 'cbx_referenciaFechamentos', 'distinct dtreferencia_tba ', 'dtreferencia_tba as valor',
  'tbl_totalBenefiAtivo__ where dtreferencia_tba >= (getdate() - 1825) order by dtreferencia_tba desc');
  cbx_sexo_ben.Items.Add('Masculino');
  cbx_sexo_ben.Items.Add('Feminino');
  cbx_sexo_ben.ValItems.Add('M');
  cbx_sexo_ben.ValItems.Add('F');
  cb2_sexo_ben.Items.Add('Masculino');
  cb2_sexo_ben.Items.Add('Feminino');
  cb2_sexo_ben.ValItems.Add('M');
  cb2_sexo_ben.ValItems.Add('F');
  Obj_LoadCombo(Self, 'cbx_cod_regiao', 'descricao_reg', 'cod_regiao', 'tbl_regiao');
  Obj_LoadCombo(Self, 'cb2_cod_regiao', 'descricao_reg', 'cod_regiao', 'tbl_regiao');
  Obj_LoadCombo(Self, 'cbx_cod_classificacaoPlano', 'nome_clp', 'cod_classificacaoPlano', 'tbl_classificacaoPlano');
end;

procedure TFrm_Rel_3059.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if cbx_referenciaFechamentos.Text = '' then begin
    Dlg_Alerta('A Data de Referência deve ser Preenchida',self);
    Exit;
  end;
  with fdt_principal5.spc_cons_adm_totalBenefiAtivo04 do
  begin
    close;
    ParamByName('@dtreferencia_tba').AsString := FormatDateTime('mm/dd/yyyy', strtodate(cbx_referenciaFechamentos.valueitem));
    if rdb_grupo1.Checked then
      ParamByName('@grupo_fxe').AsInteger := 1;
    if rdb_grupo2.Checked then
      ParamByName('@grupo_fxe').AsInteger := 2;
    open;
      if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;
  end;
  Frm_Imp_4132 := TFrm_Imp_4132.Create(Self);
  Frm_Imp_4132.FDtReferencia := cbx_referenciaFechamentos.Text;
  Frm_Imp_4132.Ftitulo := 'Relação de Beneficiários Ativos do Dia  '+cbx_referenciaFechamentos.Text;
  Frm_Imp_4132.FRegiao := '';
  Frm_Imp_4132.Fsexo := '';
  if rdb_grupo1.Checked then
    Frm_Imp_4132.FGrupo := 1;
  if rdb_grupo2.Checked then
    Frm_Imp_4132.FGrupo := 2;
  Frm_Imp_4132.QuickRep1.Preview;
  Frm_Imp_4132.Release;
  fdt_principal5.spc_cons_adm_totalBenefiAtivo04.close;
end;

procedure TFrm_Rel_3059.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mês de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_ano.name, 'O Ano de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb3_cod_mes.name, 'Mês de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed3_ano.name, 'O Ano de Referência Final deve ser Preenchido !', VLD_Preenchido )) then
    Exit;
  if StrToDate(cb2_cod_mes.valueItem + '/01/'+ed2_ano.text) < StrToDate('04/01/2006') then
  Begin
    Dlg_Alerta('Este relatório analisa os dados do PFGB, portanto a data inicial não pode ser inferior a Abril de 2006, periodo no qual o PFGB foi criado',self);
    Exit;

  end;
  if StrToDate(cb3_cod_mes.valueItem + '/01/'+ed3_ano.text) < StrToDate(cb2_cod_mes.valueItem + '/01/'+ed2_ano.text) then
  begin
    Dlg_Alerta('A data de referência final deve ser maior ou igual a data de referência inicial',self);
    Exit;
  end;
  if rdg_opcoes.ItemIndex = -1 then
  begin
     Dlg_Alerta('Uma opção deve ser selecionada',self);
     Exit;
  end;
  if rdg_opcoes.ItemIndex = 2 then
     begin
     with Fdt_principal6.spc_cons_dir_TotalBenefiAtivoporDependente do
       begin
       Close;
       ParamByName('@dtreferenciaIni').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text;
       ParamByName('@dtreferenciaFin').AsString := cb3_cod_mes.valueItem + '/01/'+ed3_ano.text;
       open;
       end;
    Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_dir_TotalBenefiAtivoporDependente;
    Frm_Bas_Impressao.FCampo1 := 'Periodo Inicial  '+cb2_cod_mes.Text+'/'+ed2_ano.Text;
    Frm_Bas_Impressao.FCampo2 := 'Periodo Final  '+cb3_cod_mes.Text+'/'+ed3_ano.Text;
    Frm_Bas_Impressao.showReport(4204);
    Fdt_principal6.spc_cons_dir_TotalBenefiAtivoporDependente.close;
    end
  else
     begin
     with Fdt_principal6.spc_cons_dir_TotalBenefiAtivo01 do
       begin
       close;
       ParamByName('@dtreferenciaIni').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text;
       ParamByName('@dtreferenciaFin').AsString := cb3_cod_mes.valueItem + '/01/'+ed3_ano.text;
       open;
       end;
    Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_dir_TotalBenefiAtivo01;
    Frm_Bas_Impressao.FCampo1 := 'Periodo Inicial  '+cb2_cod_mes.Text+'/'+ed2_ano.Text;
    Frm_Bas_Impressao.FCampo2 := 'Periodo Final    '+cb3_cod_mes.Text+'/'+ed3_ano.Text;
    if rdg_opcoes.ItemIndex = 0 then
      Frm_Bas_Impressao.showReport(4161);
    if rdg_opcoes.ItemIndex = 1 then
      Frm_Bas_Impressao.showReport(4162);
    Fdt_principal6.spc_cons_dir_TotalBenefiAtivo01.close;
    end;
end;

procedure TFrm_Rel_3059.PDJButton5Click(Sender: TObject);
begin
  inherited;
  if cbx_cod_regiao.Text = '' then begin
    Dlg_Alerta('A Região deve ser Preenchida',self);
    Exit;
  end;
  if DB_ExecSQL('exec spc_geraTotalBenefiAtivoParam '''+Data_Format('mm/dd/yyyy',Date)+
  ''','+cbx_cod_regiao.valueItem+','''+cbx_sexo_ben.Text+'''') then
  begin
    with fdt_principal5.spc_cons_adm_totalBenefiAtivo04 do
    begin
      close;
      ParamByName('@dtreferencia_tba').AsString := FormatDateTime('mm/dd/yyyy', Date);
      if rdb_grupo1.Checked then
        ParamByName('@grupo_fxe').AsInteger := 1;
      if rdb_grupo2.Checked then
        ParamByName('@grupo_fxe').AsInteger := 2;
      open;
      if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;
    end;
    Frm_Imp_4132 := TFrm_Imp_4132.Create(Self);
    Frm_Imp_4132.FDtReferencia := Data_Format('dd/mm/yyyy',Date);
    frm_Imp_4132.Ftitulo := 'Relação de Beneficiários Ativos por Região';
    Frm_Imp_4132.FRegiao := 'Região    '+cbx_cod_regiao.Text;
    if cbx_sexo_ben.Text <> '' then
      Frm_Imp_4132.Fsexo := 'Sexo    '+cbx_sexo_ben.Text;
    if rdb_grupo1.Checked then
      Frm_Imp_4132.FGrupo := 1;
    if rdb_grupo2.Checked then
      Frm_Imp_4132.FGrupo := 2;
    Frm_Imp_4132.QuickRep1.Preview;
    Frm_Imp_4132.Release;
    fdt_principal5.spc_cons_adm_totalBenefiAtivo04.close;
  end;
  DB_ExecSQL('delete from tbl_totalBenefiAtivo__ where dtreferencia_tba = '''+Data_Format('mm/dd/yyyy',Date)+'''');
end;

procedure TFrm_Rel_3059.PDJButton6Click(Sender: TObject);
var
  FRegiaoSexo : string;
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_classificacaoPlano.name, 'A Classificação do Plano deve ser Preenchida !', VLD_Preenchido )) then
    Exit;
  with fdt_principal5.spc_cons_adm_TotalBenefiAtivoDetalhado do
  begin
    close;
    ParamByName('@cod_classificacaoPlano').AsString := cbx_cod_classificacaoPlano.valueItem;
    ParamByName('@cod_regiao').AsString := cb2_cod_regiao.valueItem;
    ParamByName('@sexo_tba').AsString := cb2_sexo_ben.valueItem;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_adm_TotalBenefiAtivoDetalhado;
  Frm_Bas_Impressao.FCampo1 := 'Classificação do Plano   '+cbx_cod_classificacaoPlano.Text;
  if cb2_cod_regiao.Text <> '' then
    FRegiaoSexo := 'Região   '+cb2_cod_regiao.Text+'                ';
  if cb2_sexo_ben.Text <> '' then
    FRegiaoSexo := FRegiaoSexo + 'Sexo   '+cb2_sexo_ben.Text;
  Frm_Bas_Impressao.FCampo2 := FRegiaoSexo;
  Frm_Bas_Impressao.showReport(4187);
  fdt_principal5.spc_cons_adm_TotalBenefiAtivoDetalhado.close;

end;

procedure TFrm_Rel_3059.PDJButton7Click(Sender: TObject);
begin
  inherited;
  rdg_opcoes.ItemIndex:= -1;
  cb2_cod_mes.ItemIndex:= -1;
  ed2_ano.Text:= '';
  cb3_cod_mes.ItemIndex:= -1;
  ed3_ano.Text:= '';
end;

end.











