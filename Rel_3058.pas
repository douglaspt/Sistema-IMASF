unit Rel_3058;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3058 = class(TFrm_Bas_TelaPadrao)
    GrB_Registra: TGroupBox;
    Panel5: TPanel;
    edt_idade: TDCEdit;
    edt_dtdesconto_flh: TDCDateEdit;
    cbx_cod_planopagto: TDCComboBox;
    Panel7: TPanel;
    edt_vldesconto_adf: TDCEdit;
    edt_vltabela: TDCEdit;
    SpeedButton7: TSpeedButton;
    Panel1: TPanel;
    edt_vlsalario: TDCEdit;
    rdb_cancelamento: TRadioButton;
    rdb_incricao: TRadioButton;
    GroupBox1: TGroupBox;
    Panel6: TPanel;
    cb2_cod_planopagto: TDCComboBox;
    Panel9: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    ed2_ano: TDCEdit;
    cb2_cod_mes: TDCComboBox;
    cb3_cod_planopagto: TDCComboBox;
    edt_dtnascimento: TDCDateEdit;
    SpeedButton2: TSpeedButton;
    GroupBox2: TGroupBox;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    rdb_titular: TRadioButton;
    rdb_dependente: TRadioButton;
    edt_diaInicial: TDCEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    FCamposAux, FTabelaAux, FPesquisaSQLDefalt : String ;
    cod_planopagto, Dias, Ftit : Integer;
    vltabela, vltabelaDp : double;
    procedure PreencheValores;
  public
    { Public declarations }
    comp : String;
  end;

var
  Frm_Rel_3058: TFrm_Rel_3058;

implementation
uses  dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,Fun_DB, Dlg_Mensagem,
Fun_beneficiario, Fun_Str,Imp_4097, Fun_Acesso, Fun_obj, dtm_principal4, Cad_fpm, Cad_Segurado,
Cad_Dependente, Fun_Data, Fun_XML, dtm_Principal, Imp_4134, dtm_principal5 ;

{$R *.DFM}

procedure TFrm_Rel_3058.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Resumo dos Atendimentos Realizados pelo Beneficiário' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  inherited;
end;

procedure TFrm_Rel_3058.FormShow(Sender: TObject);
begin
  inherited;
  Obj_LoadCombo(Self, 'cbx_cod_planopagto', 'nome_plp', 'cod_planopagto', 'tbl_planopagto ');
  Obj_LoadCombo(Self, 'cb2_cod_planopagto', 'nome_plp', 'cod_planopagto', 'tbl_planopagto ');
  Obj_LoadCombo(Self, 'cb3_cod_planopagto', 'nome_plp', 'cod_planopagto', 'tbl_planopagto ');
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  edt_dtdesconto_flh.Date := date;
end;

procedure TFrm_Rel_3058.PreencheValores;
begin
  inherited;
    cod_planopagto := cbx_cod_planopagto.valueitem;
    DB_OpenSQL('select vlfixo_piv, vldependente_piv from tbl_planoitemvalor where cod_planopagto = '+IntToStr(cod_planopagto)+
    ' and '+edt_idade.Text+' >= faixaIni_piv and '+edt_idade.Text+' <= faixaFin_piv');
    if rdb_incricao.Checked then
    Dias := 31 - strtoint(Data_Format('dd',edt_dtdesconto_flh.Date));
    if rdb_cancelamento.Checked then
    Dias := strtoint(Data_Format('dd',edt_dtdesconto_flh.Date));
    vltabela := tab.fieldByName('vlfixo_piv').AsFloat;
    vltabelaDp := tab.fieldByName('vldependente_piv').AsFloat;
end;

procedure TFrm_Rel_3058.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_planopagto.name, 'O Plano deve ser Preenchido !', VLD_Preenchido )) Then Exit;
  if  cbx_cod_planopagto.valueItem <> 1 then begin
    if (not BAS_ValidarCampo(edt_idade.name, 'A Idade deve ser Preenchida !', VLD_Preenchido )) then
      Exit;
    PreencheValores;
    edt_vldesconto_adf.Text := FormatFloat('###,###,##0.00',(tab.fieldbyname('vlfixo_piv').AsFloat / 30) * Dias);
    edt_vltabela.Text := FormatFloat('###,###,##0.00',vltabela);
  end
  else begin
    PreencheValores;
    if Ftit = 0 then
      edt_vldesconto_adf.Text := FormatFloat('###,###,##0.00',((strtofloat(edt_vlsalario.Text) * 0.05) / 30) * Dias)
    else begin
      edt_vldesconto_adf.Text := FormatFloat('###,###,##0.00',(vltabelaDp / 30) * Dias);
      edt_vltabela.Text := FormatFloat('###,###,##0.00',vltabelaDp);
    end;
  end;
end;

procedure TFrm_Rel_3058.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben, dtnascim_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    edt_idade.Text := IntToStr(Data_GetIdadeAnos(Tab.fieldByName('dtnascim_ben').AsDateTime, date));
    edt_dtnascimento.Date := Tab.fieldByName('dtnascim_ben').AsDateTime;
    Ftit := Tab.FieldByName('titulacartei_ben').AsInteger;
    with fdt_principal.spc_cons_adm_matriculaentrada do
    begin
      Close;
      ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
      Open;
      edt_vlsalario.Text := fdt_principal.spc_cons_adm_matriculaentrada.FieldByName('vlbase_mte').AsString;
    end;
  end;
end;

procedure TFrm_Rel_3058.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self)
end;

procedure TFrm_Rel_3058.SpeedButton2Click(Sender: TObject);
var
  idade : integer;
  dtincial, dtfinal : TDateTime;
  vlTotal, vlfixo1, vlfixo2, Diferenca : Double;
begin
  inherited;
  DB_ExecSQL('delete from aux_simulacontribuicao');
  if (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A Inscrição deve ser Prrenchida!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês/Ano Incial deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mês/Ano Final deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_planopagto.name, 'O Plano 1 deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb3_cod_planopagto.name, 'O Plano 2 deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtnascimento.name, 'A Data de Nascimento deve ser Preenchida!', VLD_Preenchido )) then
  Exit;
  dtincial := StrToDate('01/'+cbx_cod_mes.valueitem+'/'+edt_ano.Text);
  dtfinal := StrToDate('01/'+cb2_cod_mes.valueitem+'/'+ed2_ano.Text);
  while dtincial <= dtfinal do
  begin
    idade := Data_GetIdadeAnos(edt_dtnascimento.date,dtincial);
    if DB_OpenSQL('select vlfixo_hpi, vldependente_hpi from tbl_histplanoitemvalor where  dtvalidade_hpi >= '''+
    FormatDateTime('mm/dd/yyyy',dtincial)+''' and cod_planopagto = '+cb2_cod_planopagto.valueitem+
    ' and '+IntToStr(idade)+' <= faixaFin_hpi and '+IntToStr(idade)+' >= faixaIni_hpi order by dtvalidade_hpi') > 0 then
      if cb2_cod_planopagto.ValueItem <> 1 then
        vlfixo1 := Tab.fieldByName('vlfixo_hpi').AsFloat
      else
        if rdb_titular.Checked then
        begin
          DB_OpenSQL('select top 1 vlbase_mte from tbl_arqbeneficiario where inscricao_ben = '+
          edt_inscricao_ben.Text+' and dtreferencia_abe >= '''+FormatDateTime('mm/dd/yyyy',dtincial)+''' order by dtreferencia_abe');
          vlfixo1 := (Tab.fieldByName('vlbase_mte').AsFloat  * 0.05);
        end
        else
          vlfixo1 := Tab.fieldByName('vldependente_hpi').AsFloat
    else begin
      DB_OpenSQL('select vlfixo_piv, vldependente_piv from tbl_planoitemvalor where cod_planopagto = '+cb2_cod_planopagto.valueitem+
      ' and '+IntToStr(idade)+' <= faixaFin_piv and '+IntToStr(idade)+' >= faixaIni_piv');
      if cb2_cod_planopagto.ValueItem <> 1 then
        vlfixo1 := Tab.fieldByName('vlfixo_piv').AsFloat
      else
        vlfixo1 := Tab.fieldByName('vldependente_piv').AsFloat;
    end;
    if cb3_cod_planopagto.Text <> '' then begin
      if DB_OpenSQL('select vlfixo_hpi, vldependente_hpi from tbl_histplanoitemvalor where  dtvalidade_hpi >= '''+
      FormatDateTime('mm/dd/yyyy',dtincial)+''' and cod_planopagto = '+cb3_cod_planopagto.valueitem+
      ' and '+IntToStr(idade)+' <= faixaFin_hpi and '+IntToStr(idade)+' >= faixaIni_hpi order by dtvalidade_hpi') > 0 then
        if cb3_cod_planopagto.ValueItem <> 1 then
          vlfixo2 := Tab.fieldByName('vlfixo_hpi').AsFloat
           else
        if rdb_titular.Checked then
        begin
          DB_OpenSQL('select top 1 vlbase_mte from tbl_arqbeneficiario where inscricao_ben = '+
          edt_inscricao_ben.Text+' and dtreferencia_abe >= '''+FormatDateTime('mm/dd/yyyy',dtincial)+''' order by dtreferencia_abe');
          vlfixo1 := (Tab.fieldByName('vlbase_mte').AsFloat  * 0.05);
        end
        else
          vlfixo2 := Tab.fieldByName('vldependente_hpi').AsFloat
      else begin
        DB_OpenSQL('select vlfixo_piv, vldependente_piv from tbl_planoitemvalor where cod_planopagto = '+cb3_cod_planopagto.valueitem+
        ' and '+IntToStr(idade)+' <= faixaFin_piv and '+IntToStr(idade)+' >= faixaIni_piv');
        if cb3_cod_planopagto.ValueItem <> 1 then
          vlfixo2 := Tab.fieldByName('vlfixo_piv').AsFloat
        else
          vlfixo2 := Tab.FieldByName('vldependente_piv').AsFloat;
      end;
    end;
    Diferenca := vlfixo2 - vlfixo1;
    DB_ExecSQL('insert into aux_simulacontribuicao (cod_beneficiario, dtreferencia, idade,'+
    ' valor1, valor2, diferenca) values ('+edt_cod_beneficiario.Text+', '+DB_FormatDataSQL(dtincial,ftDate)+
    ', '+IntToStr(idade)+', '+DB_FormatDataSQL(vlfixo1,ftFloat)+', '+DB_FormatDataSQL(vlfixo2,ftFloat)+
    ', '+DB_FormatDataSQL(Diferenca, ftFloat)+')');
    dtincial := Data_Soma1mes(dtincial);
  end;
  fdt_principal5.spc_cons_adm_Simulacontrib.open;
  Frm_Imp_4134 := TFrm_Imp_4134.Create(Self);
  Frm_Imp_4134.FPeriodoInicial := '01/'+cbx_cod_mes.valueItem+'/'+edt_ano.Text;
  Frm_Imp_4134.FPeriodoFinal := '01/'+cb2_cod_mes.valueItem+'/'+ed2_ano.Text;
  Frm_Imp_4134.FDiaInicial := strtoint(edt_diaInicial.text);
  Frm_Imp_4134.FCarteira := edt_carteira.Text;
  Frm_Imp_4134.FNome := edt_nome.Text;
  Frm_Imp_4134.FPlano1 := cb2_cod_planopagto.Text;
  Frm_Imp_4134.FPlano2 := cb3_cod_planopagto.Text;
  Frm_Imp_4134.QuickRep1.Preview;
  Frm_Imp_4134.Release;
  fdt_principal5.spc_cons_adm_Simulacontrib.close;
end;

end.



