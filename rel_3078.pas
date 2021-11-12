unit Rel_3078;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3078 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Panel5: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    Panel6: TPanel;
    cbx_cod_sitdesconto: TDCComboBox;
    PDJButton5: TPDJButton;
    Panel9: TPanel;
    Panel10: TPanel;
    PDJButton2: TPDJButton;
    edt_cod_tarifa: TDCEdit;
    rdb_benefi: TRadioButton;
    rdb_matricula: TRadioButton;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    DataSource3: TDataSource;
    CheckBox1: TCheckBox;
    edt_cpf_ben: TDCEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbx_cod_empresafolhaExit(Sender: TObject);
    procedure rdb_matriculaClick(Sender: TObject);
    procedure rdb_benefiClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt, FMatricula, FDigito : String ;
    function CriticaParametros : Boolean ;
    function PreencheParametros(order : Integer) : Boolean ;
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia, FEmpresaFolha : String ;
  end;

var
  Frm_Rel_3078: TFrm_Rel_3078;

implementation
uses Imp_Med_ResumoConta, dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Adm_ExtratoDesconto001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str,
Imp_Adm_ExtratoDesconto002, Imp_Adm_ExtratoDesconto003, Imp_Adm_ExtratoDesconto004,
Imp_Adm_ExtratoDesconto005, Fun_obj, dtm_principal, Imp_4128,
dtm_principal6, Bas_Impressao, Fun_Data, dtm_principal4;

{$R *.DFM}

procedure TFrm_Rel_3078.FormCreate(Sender: TObject);
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

function TFrm_Rel_3078.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mês de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_ano.name, 'Ano de Referência Final deve ser Preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_3078.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Rel_3078.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.titulacartei_ben = 0 and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if (edt_cod_beneficiario.Text <> '') then
  begin
    with Fdt_principal.spc_cons_adm_beneficiario001 do begin
      close;
      parambyname('@cod_beneficiario').AsString := edt_cod_beneficiario.text ;
      open;
      edt_inscricao_ben.text := FieldByNAme('inscricao_ben').AsString;
      edt_carteira.Text:= FieldByName('matriculadebito_seg').AsString;
      edt_nome.text := FieldByName('nome_ben').AsString;
      if rdb_benefi.Checked = True then
         begin
//         cbx_cod_empresafolha.Enabled:= False;
         cbx_cod_empresafolha.ValueItem:= FieldByName('cod_empresafolha').Value;
//         cbx_cod_empresafolha.Text:= FieldByName('nome_emp').Value;
         Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FieldByName('cod_empresafolha').AsString);
         edt_carteira.text := FieldByName('matriculadebito_seg').AsString;
         FMatricula:= FieldByName('matriculadebito_seg').AsString;
         end
      else
         begin
//         cbx_cod_empresafolha.Enabled:= True;
         cbx_cod_empresafolha.ValueItem:= FieldByName('cod_empresa').Value;
         edt_carteira.text := FieldByName('inscricao_ben').AsString;
         FMatricula:= '';
         end
    end;
  end;
  cbx_cod_mes.SetFocus;
end;

procedure TFrm_Rel_3078.FormShow(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.SetFocus;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  Obj_LoadCombo(Self, 'cbx_cod_sitdesconto', 'nome_sds', 'cod_sitdesconto', 'tbl_sitdesconto where tipoSituacao_sds <> ''sistema''');
  if FAnoReferencia <> '' then begin
    edt_ano.text := FAnoReferencia ;
    ed2_ano.text := FAnoReferencia ;
  end;
  if FMesReferencia <> '' then begin
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
    Obj_SetFormObjValueByName(self, cb2_cod_mes.name, FMesReferencia);
  end;
  if FEmpresaFolha <> '' then begin
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
  end;
end;

procedure TFrm_Rel_3078.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  if rdb_matricula.Checked = True then
     if DB_OpenSQL('select cpf_fpm from tbl_fpm where matricula_mte = ' + edt_cod_beneficiario.Text + ' and cod_empresafolha = ' + IntToStr(cbx_cod_empresafolha.ValueItem)) > 0 then
        edt_cpf_ben.Text:= Tab.FieldByName('cpf_fpm').Text;
  if rdb_benefi.Checked = True then
     if edt_inscricao_ben.Text <> '' then
     if DB_OpenSQL('select cpf_fpm from tbl_fpm where inscricao_ben = ' + edt_inscricao_ben.Text) > 0 then
        edt_cpf_ben.Text:= Tab.FieldByName('cpf_fpm').Text;
  // Verifica se tem descontos em + uma matricula
   with Fdt_principal6.spc_cons_adm_descontos2 do
   begin
     close;
     DataSource3.DataSet:= fdt_principal6.spc_cons_adm_descontos2;
{     if rdb_benefi.Checked then
        begin
        if edt_inscricao_ben.text = '' then
           parambyname('@matriculadebito_seg').AsString := '0'
        else
           begin
           FMatricula := '';
           edt_inscricao_benButtonClick(self);
           if FMatricula = '' then
              parambyname('@matriculadebito_seg').AsString := '99999'
           else
              parambyname('@matriculadebito_seg').AsString := FMatricula;
           end;
        end
     else
        begin
        if edt_inscricao_ben.text = '' then
           parambyname('@matriculadebito_seg').AsString := edt_cod_beneficiario.Text
        else
           parambyname('@matriculadebito_seg').AsString := edt_cod_beneficiario.Text
        end;}
     parambyname('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
     if (cb2_cod_mes.valueItem = '') and (ed2_ano.Text = '') then
        begin
        cb2_cod_mes.ValueItem:= 1;
        ed2_ano.Text:= '9999';
        end;
     parambyname('@dtreferencia_flh').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text;
     parambyname('@cod_tarifa').AsString := edt_cod_tarifa.Text;
//     parambyname('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem ;
     parambyname('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueitem ;
//     parambyname('@nossonumero_flh').AsString := '';
     parambyname('@cod_order').AsInteger := 3;
     parambyname('@cpf_fpm').AsString := edt_cpf_ben.Text;
     open;
    if FieldByName('cod_beneficiario').AsString = '' then
    begin
      Dlg_Alerta('Nenhum registro encontrado', self);
      close;
      exit;
    end;
  end;

  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_adm_descontos2;
  Frm_Bas_Impressao.FCampo1 := 'Nome ' + edt_nome.Text;
  Frm_Bas_Impressao.FCampo2 := 'Período Inicial ' + cbx_cod_mes.Text + '/' +  edt_ano.Text + '           Período Final ' + cb2_cod_mes.Text + '/' + ed2_ano.Text;
{  Frm_Bas_Impressao.FCampo3 := '';
  if cbx_cod_sitdesconto.Text = '' then
     Frm_Bas_Impressao.FCampo3 := 'X';
  Frm_Bas_Impressao.FCampo4 := '';
  Frm_Bas_Impressao.FCampo5 := '';
  Frm_Bas_Impressao.FCampo6 := '';}
  Frm_Bas_Impressao.showReport(4202);
end;

procedure TFrm_Rel_3078.PDJButton5Click(Sender: TObject);
begin
  inherited;
  CheckBox1.Checked:= False;
  edt_inscricao_ben.text := '' ;
  cbx_cod_mes.Clear;
  cbx_cod_mes.ValueItem := '0' ;
  cbx_cod_mes.Refresh;
  edt_ano.text := '' ;
  cb2_cod_mes.Clear;
  cb2_cod_mes.ValueItem := '0' ;
  cb2_cod_mes.Refresh;
  ed2_ano.text := '' ;
  cbx_cod_empresafolha.Clear;
  cbx_cod_empresafolha.ValueItem := '0' ;
  cbx_cod_empresafolha.Refresh;
  cbx_cod_sitdesconto.Clear;
  cbx_cod_sitdesconto.ValueItem := '0' ;
  cbx_cod_sitdesconto.Refresh;
  edt_carteira.text := '' ;
  edt_nome.text := '' ;
  FAnoReferencia := '';
  FMesReferencia := '';
  FEmpresaFolha := '';
  FormShow(Self)
end;
                                     
function TFrm_Rel_3078.PreencheParametros(order : Integer) : Boolean;
begin
  result := false;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_adm_descontofolha02 do
  begin
    close;
////    if edt_inscricao_ben.text = '' then
////      ParamByName('@inscricao_ben').AsString := '0'
////    else
////      ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
    if edt_inscricao_ben.text = '' then begin
      ParamByName('@inscricao_ben').AsString := '0';
      ParamByName('@titulacartei_ben').AsString := '0';
    end else begin
      ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
      ParamByName('@titulacartei_ben').AsString := copy(edt_carteira.text,11,2);
      ParamByName('@matriculadebito_seg').AsString := '999999';
    end;
    ParamByName('@dtreferenciaInicial_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@dtreferenciaFinal_flh').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text ;
//    if cbx_cod_empresafolha.text = '' then
//      ParamByName('@cod_beneficiario').AsString := '0'
//    else
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueitem;
    ParamByName('@cod_tarifa').AsString := edt_cod_tarifa.Text;
    ParamByName('@dtsistema_flh').AsString := '';
    ParamByName('@cod_order').AsInteger := order;
    open;
    if FieldByName('inscricao_ben').AsString = '' then begin
      Dlg_Alerta('Nenhum registro encontrado', self);
      close;
      exit;
    end;
  end;
  result := true;
end;

procedure TFrm_Rel_3078.edt_inscricao_benKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if rdb_benefi.Checked then
    if key = 13 then
      edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3078.cbx_cod_empresafolhaExit(
  Sender: TObject);
begin
  inherited;
  if rdb_matricula.Checked then
    if (edt_cod_beneficiario.Text <> '') and (cbx_cod_empresafolha.Text <> '') then
    begin
      DB_OpenSQL('select nome_fpm, inscricao_ben from tbl_fpm where matricula_mte = '+edt_cod_beneficiario.Text+
      ' and cod_empresafolha = '+cbx_cod_empresafolha.valueitem);
      edt_nome.Text := Tab.FieldByName('nome_fpm').AsString;
      edt_carteira.Text:= Tab.FieldByName('inscricao_ben').AsString;
      Panel24.Caption:= '   Inscrição';
    end;
end;

procedure TFrm_Rel_3078.rdb_matriculaClick(Sender: TObject);
begin
  inherited;
  Panel4.Caption := '    Matrícula';
  edt_inscricao_ben.Visible := false;
  edt_carteira.Text := '';
  edt_nome.Text := '';
  edt_cod_beneficiario.Visible := True;
  edt_cod_beneficiario.SetFocus;
end;

procedure TFrm_Rel_3078.rdb_benefiClick(Sender: TObject);
begin
  inherited;
  Panel4.Caption := '    Inscrição';
  edt_cod_beneficiario.Visible := false;
  edt_carteira.Text := '';
  edt_nome.Text := '';
  edt_inscricao_ben.Visible := True;
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Rel_3078.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked = True then
     begin
     FMesReferencia:= FormatDateTime('mm', now);
     FAnoReferencia:= FormatDateTime('yyyy', now);
     Obj_SetFormObjValueByName(self, cbx_cod_mes.name, STR_RemoveZero(FMesReferencia));
     Obj_SetFormObjValueByName(self, edt_ano.name, FAnoReferencia);
     Obj_SetFormObjValueByName(self, cb2_cod_mes.name, '12');
     Obj_SetFormObjValueByName(self, ed2_ano.name, '9999');
     end
  else
     begin
     Obj_SetFormObjValueByName(self, cbx_cod_mes.name, '-1');
     Obj_SetFormObjValueByName(self, edt_ano.name,'');
     Obj_SetFormObjValueByName(self, cb2_cod_mes.name,'-1');
     Obj_SetFormObjValueByName(self, ed2_ano.name,'');
     end;
end;

end.



