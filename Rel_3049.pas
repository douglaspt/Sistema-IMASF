unit Rel_3049;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3049 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel24: TPanel;
    edt_carteira: TDCEdit;
    GrB_Registra: TGroupBox;
    Panel8: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    Panel10: TPanel;
    cb2_cod_tarifa: TDCComboBox;
    edt_codtarifa: TDCEdit;
    Panel11: TPanel;
    edt_vldesconto_adf: TDCEdit;
    edt_dtdesconto_flh: TDCDateEdit;
    pnl_referencia: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    btn_salvar: TPDJButton;
    btn_imprimir: TPDJButton;
    edt_titularcarteira: TDCEdit;
    edt_nome: TDCEdit;
    Panel1: TPanel;
    edt_matricula: TDCEdit;
    edt_digito: TDCEdit;
    btn_beneficiario: TPDJButton;
    rdb_Imasf: TRadioButton;
    rdb_unimed: TRadioButton;
    ckb_outreg: TCheckBox;
    cbx_cod_localunimed: TDCComboBox;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_codtarifaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_beneficiarioClick(Sender: TObject);
    procedure rdb_unimedClick(Sender: TObject);
    procedure rdb_ImasfClick(Sender: TObject);
    procedure ckb_outregClick(Sender: TObject);
    procedure edt_vldesconto_adfKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
     Dtref, uC : TDateTime;
    function CriticaParametros : Boolean ;
    procedure Bas_CarregarCombos ;
  public
    { Public declarations }
    comp : String;
  end;

var
  Frm_Rel_3049: TFrm_Rel_3049;

implementation
uses  dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,Fun_DB, Dlg_Mensagem,
Fun_beneficiario, Fun_Str,Imp_4097, Fun_Acesso, Fun_obj, dtm_principal4, Cad_fpm, Cad_Segurado,
Cad_Dependente, Fun_Contabil, Fun_Data ;

{$R *.DFM}

procedure TFrm_Rel_3049.FormCreate(Sender: TObject);
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

function TFrm_Rel_3049.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_inscricao_ben.name, 'Inscri��o do Benefici�rio deve ser Preenchida !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_3049.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Rel_3049.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text + ' and s.tipo_sit < 2';
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
    GrB_Registra.visible := false ;
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
    btn_imprimir.Visible := true ;
    btn_beneficiario.Enabled := true;
    edt_vldesconto_adf.SetFocus;
    Obj_SetFormObjValueByName(self,'cbx_cod_empresafolha',tab.FieldByName('cod_empresafolha').AsString);
    uc := Ctb_DtUltimoEnvioGerado(cbx_cod_empresafolha.valueItem);
    Obj_SetFormObjValueByName(self,'cbx_cod_mes',FormatDateTime('m',Data_Soma1mes(uC)));
    edt_ano.Text := FormatDateTime('yyyy',uC);
    edt_dtdesconto_flh.Date := date;
    DB_OpenSQL('select cod_tarifaSegViaCart from tbl_parametro ');
    edt_codtarifa.text := tab.fieldbyname('cod_tarifaSegViaCart').AsString;
    Obj_SetFormObjValueByName(self, cb2_cod_tarifa.name, edt_codtarifa.text);
    //Exibe os campos para o desconto
    //////********* perguntar como fazer para preencher a data de referencia.
  end;
end;

procedure TFrm_Rel_3049.btn_imprimirClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal2.spc_cons_adm_beneficiario002 do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
    ParamByName('@titulacartei_ben').AsString := '0';
    open;
  end;
  if edt_vldesconto_adf.Text = '' then
     edt_vldesconto_adf.Text:= '0';
  if edt_titularcarteira.Text = '0' then begin
    Frm_Imp_4097 := TFrm_Imp_4097.Create(Self);
    Frm_Imp_4097.comp := 'por motivo de:';
    Frm_Imp_4097.FVF := false;
    Frm_Imp_4097.VlDesc := edt_vldesconto_adf.Text;
    Frm_Imp_4097.FChefiaADM := PAR_ChefiaADM;
    Frm_Imp_4097.qrl_opcimasf.Caption := '(   )';
    Frm_Imp_4097.qrl_opcunimed.Caption := '(   )';
    if rdb_Imasf.Checked = True then
       Frm_Imp_4097.qrl_opcimasf.Caption := '( X )'
    else
       Frm_Imp_4097.qrl_opcunimed.Caption := '( X )';
    Frm_Imp_4097.QuickRep1.Preview;
    Frm_Imp_4097.Release;
  end
  else begin
    Frm_Imp_4097 := TFrm_Imp_4097.Create(Self);
    Frm_Imp_4097.comp := 'do(a) '+edt_nome.text;
    Frm_Imp_4097.FVF := true;
    Frm_Imp_4097.lbl_nome.Font.Style := [fsbold];
    Frm_Imp_4097.VlDesc := edt_vldesconto_adf.Text;
    Frm_Imp_4097.FChefiaADM := PAR_ChefiaADM;
    Frm_Imp_4097.qrl_opcimasf.Caption := '(   )';
    Frm_Imp_4097.qrl_opcunimed.Caption := '(   )';
    if rdb_Imasf.Checked = True then
       Frm_Imp_4097.qrl_opcimasf.Caption := '( X )'
    else
       Frm_Imp_4097.qrl_opcunimed.Caption := '( X )';
    Frm_Imp_4097.QuickRep1.Preview;
    Frm_Imp_4097.Release;
  end ;
  Fdt_principal2.spc_cons_adm_beneficiario002.close;
end;

procedure TFrm_Rel_3049.btn_salvarClick(Sender: TObject);
var
  WLocal: Integer;
begin
  inherited;
  try
    uc := Ctb_DtUltimoEnvioGerado(cbx_cod_empresafolha.valueItem);
    dtref := strtodate('01/'+cbx_cod_mes.ValueItem+'/'+edt_ano.text);
    if dtref <= uc then
    begin
      Dlg_Alerta('ATEN��O ! N�o � poss�vel Registrar o Requerimento para o M�s/Ano de Refer�ncia pois a folha deste m�s ja foi fechada',self);
      Exit;
    end;

    if rdb_Imasf.Checked = True then
       if DB_OpenSQL('select * from tbl_histcarteira where cod_beneficiario = ' + edt_cod_beneficiario.text +
                     ' and cod_statuscarteira < 11') > 0 then
          begin
          Dlg_Alerta('J� existe pedido de carteirinha IMASF pendente deste benefici�rio!', self);
          Exit;
          end;

    if rdb_unimed.Checked = True then
       if DB_OpenSQL('select * from tbl_histcarteiraUnimed where cod_beneficiario = ' + edt_cod_beneficiario.text +
                     ' and cod_statuscarteira < 11') > 0 then
          begin
          Dlg_Alerta('J� existe pedido de carteirinha UNIMED pendente deste benefici�rio!', self);
          Exit;
          end;

    if edt_vldesconto_adf.Text = '' then
       begin
       Dlg_Alerta('Digite um valor de desconto diferente de Zero!', self);
       rdb_Imasf.SetFocus;
       Exit;
       end;

    if copy(edt_vldesconto_adf.Text,1,1) = '0' then
       begin
       Dlg_Alerta('Para registrar requerimento, Digite um valor de desconto diferente de Zero!', self);
       rdb_Imasf.SetFocus;
       Exit;
       end;

    if rdb_Imasf.Checked = False then
       if rdb_unimed.Checked = False then
          begin
          Dlg_Alerta('Selecione IMASF ou UNIMED!', self);
          rdb_Imasf.SetFocus;
          Exit;
          end;
    if Dlg_YesNo('Tem certeza que deseja Incluir ?', self) then begin

    DB_BeginTrans;

    if rdb_unimed.Checked = True then
       begin
       if ckb_outreg.Checked = False then
          WLocal:= 11
       else
          WLocal:= cbx_cod_localunimed.valueitem;
       if not DB_ExecSQL('insert into tbl_histcarteiraUnimed (cod_beneficiario,cod_emissaocarteira,dtemissao_hcu,cod_statuscarteira, cod_localunimed) values ('+
              edt_cod_beneficiario.text+', 9, getdate(), 1,' + IntToStr(WLocal) + ')') then
        raise Exception.Create(EXP_SQLInvalido);
       end
    else
       begin
       if not DB_ExecSQL('insert into tbl_histcarteira (cod_beneficiario,cod_emissaocarteira,dtemissao_hct,cod_statuscarteira) values ('+
              edt_cod_beneficiario.text+', 9, getdate(), 1)') then
       raise Exception.Create(EXP_SQLInvalido);
       end;
    //Solicita Confec��o da Carteirinha
   //*****ver tela 2023 btn_incluirClick
   //Registra o Desconto
    /////////////////*****ver tela 2003 salva tbl_descontofolha
    if not DB_ExecSQL('insert into tbl_descontofolha ('+
    ' cod_beneficiario, vlfixo_adf, vlbase_adf, matriculadebito_seg, digitomatdeb_seg, '+
    ' vldesconto_adf, cod_tarifa, cod_empresafolha, dtreferencia_flh, dtdesconto_flh, '+
    ' cod_sitdesconto, dtsitdesconto_flh, cod_usuario, dtsistema_flh, dtrefatraso_flh) values ('+
    edt_cod_beneficiario.text+', 0, 0, '+edt_matricula.text+', '+edt_digito.text+', '''+
    STR_SubstChar(edt_vldesconto_adf.text,',','.')+''', '+cb2_cod_tarifa.valueitem+', '+
    cbx_cod_empresafolha.valueitem+', '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''', '''+
    FormatDateTime('mm/dd/yyyy', edt_dtdesconto_flh.Date)+''', 1, getdate(), '+
    Str_IntToStr(FCod_Usuario)+', '''+
    FormatDateTime('mm/dd/yyyy', date)+''', '''+
    cbx_cod_mes.valueItem + '/01/'+edt_ano.text+''')') then
      raise Exception.Create(EXP_SQLInvalido) ;
    Dlg_Ok('Documento Registrado',self);
    end;
    Obj_EmptyEditTag(self,0);
    Bas_CarregarCombos;
    GrB_Registra.visible := false ;
    btn_imprimir.Visible := false;
    DB_Commit;
  except
    Dlg_Erro('Ocorreu um erro ao tentar registrar a 2a via de Carteirinha. N�O FOI POSS�VEL SALVAR', self);
    DB_RollBack;
  end;
end;

procedure TFrm_Rel_3049.Bas_CarregarCombos;
begin
  Obj_LoadCombo(Self, 'cb2_cod_tarifa', 'cast(cod_tarifa as char(3)) + '' - '' + nome_tar', 'cod_tarifa', 'tbl_tarifa');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Rel_3049.FormShow(Sender: TObject);
begin
  inherited;
  Bas_CarregarCombos;
  btn_beneficiario.Visible := not Obj_LocalizarFormAtivo(Frm_Cad_Segurado);
  btn_beneficiario.Visible := not Obj_LocalizarFormAtivo(Frm_Cad_Dependente);
  rdb_Imasf.Checked:= True;
  ckb_outreg.Visible:= False;
  cbx_cod_localunimed.Visible:= False;
  Obj_LoadCombo(Self, 'cbx_cod_localunimed', 'cidade_lcu', 'cod_localunimed', 'tbl_localunimed order by cidade_lcu');
  edt_vldesconto_adf.Text:= '0,00';
end;

procedure TFrm_Rel_3049.edt_codtarifaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    Obj_SetFormObjValueByName(self, cb2_cod_tarifa.name, edt_codtarifa.text);
end;

procedure TFrm_Rel_3049.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3049.btn_beneficiarioClick(Sender: TObject);
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

procedure TFrm_Rel_3049.rdb_unimedClick(Sender: TObject);
begin
  inherited;
  ckb_outreg.Visible:= False;
  cbx_cod_localunimed.Visible:= False;
  if rdb_unimed.Checked = True then
     begin
     ckb_outreg.Visible:= True;
     cbx_cod_localunimed.Visible:= True;
     end;
end;

procedure TFrm_Rel_3049.rdb_ImasfClick(Sender: TObject);
begin
  inherited;
  ckb_outreg.Visible:= True;
  cbx_cod_localunimed.Visible:= True;
  if rdb_Imasf.Checked = True then
     begin
     ckb_outreg.Visible:= False;
     cbx_cod_localunimed.Visible:= False;
     end;
end;

procedure TFrm_Rel_3049.ckb_outregClick(Sender: TObject);
begin
  inherited;
  if ckb_outreg.Checked = True then
     cbx_cod_localunimed.Visible:= True
  else
     cbx_cod_localunimed.Visible:= False;
end;

procedure TFrm_Rel_3049.edt_vldesconto_adfKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8])
     then key :=#0;
end;

end.



