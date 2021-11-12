unit Rel_3057;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3057 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel24: TPanel;
    edt_carteira: TDCEdit;
    GrB_Registra2: TGroupBox;
    Panel10: TPanel;
    cb2_cod_tarifa: TDCComboBox;
    Panel11: TPanel;
    ed2_vldesconto_adf: TDCEdit;
    ed2_dtdesconto_flh: TDCDateEdit;
    btn_salvar: TPDJButton;
    edt_titularcarteira: TDCEdit;
    edt_nome: TDCEdit;
    Panel1: TPanel;
    edt_nomeass: TDCEdit;
    btn_beneficiario: TPDJButton;
    btn_imprimir: TPDJButton;
    GrB_Registra: TGroupBox;
    Panel6: TPanel;
    cbx_cod_tarifa: TDCComboBox;
    Panel9: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton1: TPDJButton;
    cbx_cod_empresafolha: TDCComboBox;
    Panel5: TPanel;
    edt_idade: TDCEdit;
    edt_dtdesconto_flh: TDCDateEdit;
    cbx_cod_plano: TDCComboBox;
    Panel7: TPanel;
    edt_vldesconto_adf: TDCEdit;
    Panel12: TPanel;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    cb2_cod_empresafolha: TDCComboBox;
    Panel8: TPanel;
    edt_matricula: TDCEdit;
    edt_digito: TDCEdit;
    edt_vltabela: TDCEdit;
    SpeedButton7: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_beneficiarioClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    cod_planopagto, Dias : Integer;
    vltabela : double;
    procedure PreencheCampos(doc : string);
    function CriticaParametros : Boolean ;
    procedure PreencheValores;
    procedure RegistraDesconto(vldesconto, codtarifa, emp, dtrefer, dtdesc,dtrefatraso : string);
  public
    { Public declarations }
    comp : String;
  end;

var
  Frm_Rel_3057: TFrm_Rel_3057;

implementation
uses  dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,Fun_DB, Dlg_Mensagem,
Fun_beneficiario, Fun_Str,Imp_4097, Fun_Acesso, Fun_obj, dtm_principal4, Cad_fpm, Cad_Segurado,
Cad_Dependente, Fun_Data, Fun_XML, Fun_Contabil ;

{$R *.DFM}

procedure TFrm_Rel_3057.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Resumo dos Atendimentos Realizados pelo Benefici�rio' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Benefici�rios' ;
  FPesquisaSQL := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  inherited;
end;

function TFrm_Rel_3057.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_inscricao_ben.name, 'Incri��o do Benefici�rio deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomeass.name, 'O Nome do Assistido deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_plano.name, 'O Plano deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_idade.name, 'A idade deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_vltabela.name, 'O valor da Tabela deve ser Preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_3057.edt_cod_beneficiarioKeyDown(
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
      Dlg_Alerta('Inscri��o n�o encontrada !', self);
  end;
  var
    insc : string ;
begin


end;

procedure TFrm_Rel_3057.edt_inscricao_benButtonClick(
  Sender: TObject);
  var
    uC : TDateTime ;  
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt +' and b.titulacartei_ben = 0'
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.titulacartei_ben = 0 and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
    GrB_Registra.visible := false ;
    GrB_Registra2.visible := false ;
    btn_imprimir.Visible := false;
  end else begin
      DB_OpenSQL('select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.cod_empresa, b.cod_empresafolha, '+
    ' b.cod_plano, b.inscricao_ben, b.titulacartei_ben, b.digito_ben, m.matriculadebito_seg, m.digitomatdeb_seg '+
    ' from tbl_beneficiario b, tbl_beneficiario b2, tbl_segurado m where b2.cod_beneficiario = m.cod_beneficiario '+
    ' and b2.inscricao_ben = b.inscricao_ben and b.cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    edt_titularcarteira.Text :=  Tab.FieldByName('titulacartei_ben').AsString;
    edt_matricula.text := tab.FieldByNAme('matriculadebito_seg').AsString;
    edt_digito.text := tab.FieldByNAme('digitomatdeb_seg').AsString;
    GrB_Registra.Visible := true ;
    GrB_Registra2.Visible := true ;
    btn_imprimir.Visible := true ;
    btn_beneficiario.Enabled := true;
    //edt_vldesconto_adf.SetFocus;
    Obj_SetFormObjValueByName(self,'cbx_cod_empresafolha',99);
    Obj_SetFormObjValueByName(self,'cb2_cod_empresafolha',99);
    uc := Ctb_DtReferenciaUltimaContribuicaoGerada(cbx_cod_empresafolha.valueItem);
    Obj_SetFormObjValueByName(self,'cbx_cod_mes',FormatDateTime('m',uC));
    edt_ano.Text := FormatDateTime('yyyy',uC);
    Obj_SetFormObjValueByName(self,'cb2_cod_mes',FormatDateTime('m',uC));
    ed2_ano.Text := FormatDateTime('yyyy',uC);
    edt_dtdesconto_flh.Date := date;
    ed2_dtdesconto_flh.Date := date;
    ed2_vldesconto_adf.Text := '18,00';
    Obj_SetFormObjValueByName(self, cbx_cod_tarifa.name, 516);
    Obj_SetFormObjValueByName(self, cb2_cod_tarifa.name, 632);
    //Exibe os campos para o desconto
    //////********* perguntar como fazer para preencher a data de referencia.
  end;
end;

procedure TFrm_Rel_3057.PreencheCampos(doc : string);
var
campos : array[0..9] of TFieldsXML;
begin
  inherited;
  campos[0].FName := 'nome_ben';
  campos[0].FValue := edt_nome.text;
  campos[1].FName := 'carteirinha_ben';
  campos[1].FValue := edt_carteira.text;
  campos[2].FName := 'dtdesconto_flh';
  campos[2].FValue := edt_dtdesconto_flh.Text;
  campos[3].FName := 'nome_dep';
  campos[3].FValue := edt_nomeass.text;
  campos[4].FName := 'idade_ben';
  campos[4].FValue := edt_idade.text;
  campos[5].FName := 'nome_pla';
  campos[5].FValue := cbx_cod_plano.text;
  campos[6].FName := 'valortabela';
  campos[6].FValue := edt_vltabela.text;
  campos[7].FName := 'inscricao_ben';
  campos[7].FValue := edt_inscricao_ben.text;
  campos[8].FName := 'matricula_ben';
  campos[8].FValue := edt_matricula.text;
  campos[9].FName := 'vldesconto_exa';
  campos[9].FValue := ed2_vldesconto_adf.text;
  XML_CriaRelatorio(self, doc, campos, false);
end;

procedure TFrm_Rel_3057.btn_imprimirClick(Sender: TObject);
begin
  inherited;
    if CriticaParametros then
    Exit;
    PreencheCampos('Ades�o - Dependente');
    PreencheCampos('Assistido - ENCAM PER�CIA M�DICA');
    PreencheCampos('Assistido - CAR�NCIAS');
end;

procedure TFrm_Rel_3057.RegistraDesconto(vldesconto, codtarifa, emp, dtrefer, dtdesc,dtrefatraso : string);
begin
  try
    DB_BeginTrans;
    if Dlg_YesNo('Tem Certeza que deseja Incluir ?', self) then begin
    DB_ExecSQL('insert into tbl_histcarteira (cod_beneficiario,cod_emissaocarteira,dtemissao_hct,cod_statuscarteira) values ('+
    edt_cod_beneficiario.text+', 9, getdate(), 1)');
    DB_ExecSQL('insert into tbl_descontofolha ('+
    ' cod_beneficiario, vlfixo_adf, vlbase_adf, matriculadebito_seg, digitomatdeb_seg, '+
    ' vldesconto_adf, cod_tarifa, cod_empresafolha, dtreferencia_flh, dtdesconto_flh, '+
    ' cod_sitdesconto, dtsitdesconto_flh, cod_usuario, dtsistema_flh, dtrefatraso_flh) values ('+
    edt_cod_beneficiario.text+', 0, 0, '+edt_matricula.text+', '+edt_digito.text+', '''+
    vldesconto+''', '+codtarifa+', '+emp+', '''+dtrefer+''', '''+dtdesc+''', 1, getdate(), '+
    Str_IntToStr(FCod_Usuario)+', getdate(), '''+
    dtrefatraso+''')') ;
    Dlg_Ok('Documento Registrado',self);
    DB_Commit;
    end;
  except
    Dlg_Erro('Ocorreu um erro ao tentar registrar o Desconto. N�O FOI POSS�VEL SALVAR', self);
    DB_RollBack;
  end;
end;

procedure TFrm_Rel_3057.FormShow(Sender: TObject);
begin
  inherited;
  Obj_LoadCombo(Self, 'cbx_cod_tarifa', 'cast(cod_tarifa as char(3)) + '' - '' + nome_tar', 'cod_tarifa', 'tbl_tarifa');
  Obj_LoadCombo(Self, 'cb2_cod_tarifa', 'cast(cod_tarifa as char(3)) + '' - '' + nome_tar', 'cod_tarifa', 'tbl_tarifa');
  Obj_LoadCombo(Self, 'cbx_cod_plano', 'nome_pla', 'cod_plano', 'tbl_plano where cod_plano > 1');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  edt_inscricao_ben.SetFocus;
  btn_beneficiario.Visible := not Obj_LocalizarFormAtivo(Frm_Cad_Segurado);
  btn_beneficiario.Visible := not Obj_LocalizarFormAtivo(Frm_Cad_Dependente);
end;

procedure TFrm_Rel_3057.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3057.btn_beneficiarioClick(Sender: TObject);
var Tit : Integer;
begin
  inherited;
  Tit := StrToInt(copy(STR_RemoveChar(STR_RemoveChar(edt_carteira.text,'.'),'-'),8,2));
  Hide;
  if Tit = 0 then
    begin
      Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
      Frm_Cad_Segurado.wCod_Beneficiario := edt_cod_beneficiario.Text ;
      Frm_Cad_Segurado.ShowModal;
      Frm_Cad_Segurado.Release;
    end;
    if Tit > 0 then
    begin
      Frm_Cad_Dependente := TFrm_Cad_Dependente.Create(Self);
      Frm_Cad_Dependente.wCod_Beneficiario := edt_cod_beneficiario.Text ;
      Frm_Cad_Dependente.ShowModal;
      Frm_Cad_Dependente.Release;
    end;
  Show;
end;

procedure TFrm_Rel_3057.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if edt_vldesconto_adf.Text = '' then begin
    Dlg_Alerta('O Valor do Desconto tem que ser preenchido!',self);
    Exit;
  end;
  RegistraDesconto(STR_SubstChar(edt_vldesconto_adf.text,',','.'),cbx_cod_tarifa.valueitem,
  cbx_cod_empresafolha.valueitem, cbx_cod_mes.valueItem +'/01/'+edt_ano.text,
  FormatDateTime('mm/dd/yyyy', edt_dtdesconto_flh.Date), cbx_cod_mes.valueItem +'/01/'+edt_ano.text);
end;

procedure TFrm_Rel_3057.btn_salvarClick(Sender: TObject);
begin
  inherited;
  RegistraDesconto(STR_SubstChar(ed2_vldesconto_adf.text,',','.'),cb2_cod_tarifa.valueitem,
  cb2_cod_empresafolha.valueitem, cb2_cod_mes.valueItem + '/01/'+ed2_ano.text,
  FormatDateTime('mm/dd/yyyy', ed2_dtdesconto_flh.Date), cb2_cod_mes.valueItem + '/01/'+ed2_ano.text);
end;

procedure TFrm_Rel_3057.PreencheValores;
begin
  inherited;
    if cbx_cod_plano.valueitem = 2 then
      cod_planopagto := 52
    else
      cod_planopagto := 53;
    DB_OpenSQL('select vlfixo_piv from tbl_planoitemvalor where cod_planopagto = '+IntToStr(cod_planopagto)+
    ' and '+edt_idade.Text+' >= faixaIni_piv and '+edt_idade.Text+' <= faixaFin_piv');
    Dias := 31 - strtoint(Data_Format('dd',edt_dtdesconto_flh.Date));
    vltabela := tab.fieldByName('vlfixo_piv').AsFloat;
end;

procedure TFrm_Rel_3057.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_plano.name, 'O Plano deve ser Preenchido !', VLD_Preenchido )) or
    (not BAS_ValidarCampo(edt_idade.name, 'A Idade deve ser Preenchida !', VLD_Preenchido )) then
    Exit;
  PreencheValores;
  edt_vldesconto_adf.Text := FormatFloat('###,###,##0.00',(tab.fieldbyname('vlfixo_piv').AsFloat / 30) * Dias);
  edt_vltabela.Text := FormatFloat('###,###,##0.00',vltabela);
end;

end.



