unit Rel_3066;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3066 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Btn_LimpaCampos: TPDJButton;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel1: TPanel;
    edt_dtvalidade: TDCDateEdit;
    Panel5: TPanel;
    cbx_cod_planopagto: TDCComboBox;
    pnl_alerta: TPanel;
    cbx_cod_plano: TDCComboBox;
    edt_chefeDiv: TDCEdit;
    edt_rg_ben: TDCEdit;
    edt_cpf_ben: TDCEdit;
    edt_dtnascim_ben: TDCDateEdit;
    btn_limpar: TPDJButton;
    procedure PDJButton3Click(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cbx_cod_planoEnter(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
  private
    { Private declarations }
  FPesquisaSQLDefalt, Fdescricao_pla : string;
  function CriticaParametros : Boolean ;
  public
    { Public declarations }
    CodRequerimento, DtProtocolo, FInscricao : string;
  end;

var
  Frm_Rel_3066: TFrm_Rel_3066;

implementation
uses DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_obj, Fun_Data, Imp_4137,
     Bas_Impressao, dtm_principal6, Fun_ConsCadastro, Fun_Beneficiario, Fun_Acesso;

{$R *.DFM}

function TFrm_Rel_3066.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A Inscrição deve ser Preenchida !', VLD_Preenchido )) or
   (not BAS_ValidarCampo(edt_nome.name, 'A Inscrição deve existir !', VLD_Preenchido )) or
   (not BAS_ValidarCampo(edt_dtvalidade.name, 'A Data de Validade deve ser Preenchida !', VLD_DataPreenchida ))
end;

procedure TFrm_Rel_3066.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros
     then Exit;
  if edt_dtvalidade.Date < Date then
     begin
     Dlg_Alerta ('A data de validade não pode ser menor que hoje!', Self);
     edt_dtvalidade.SetFocus;
     Exit;
     end;
  with fdt_principal6.spc_cons_adm_carencia do
  begin
    close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_adm_carencia;
  if cbx_cod_planopagto.Text = '' then
     begin
     Frm_Bas_Impressao.FCampo3 := AnsiUpperCase(Fdescricao_pla);
     Frm_Bas_Impressao.FCampo1 := AnsiUpperCase(Fdescricao_pla);
     edt_chefeDiv.Text:= '';
     Frm_Bas_Impressao.FCampo4 := '';
     end
  else
     begin
     Frm_Bas_Impressao.FCampo3 := AnsiUpperCase(cbx_cod_planopagto.Text);
     if DB_OpenSQL('select nome_plp, p.cod_plano, descricao_pla from tbl_planopagto pp '+
                   'inner join tbl_plano p on pp.cod_plano = p.cod_plano '+
                   'where cod_planopagto = ' + IntToStr(cbx_cod_planopagto.ValueItem)) > 0 then
     Frm_Bas_Impressao.FCampo1 := AnsiUpperCase(Tab.FieldByName('descricao_pla').AsString);
     DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 4');
     {edt_chefeDiv.Text:= Tab.FieldByName('Chefe').AsString;
     Frm_Bas_Impressao.FCampo4 := 'Chefe da Divisão de Administração';}
     edt_chefeDiv.Text:= '';
     Frm_Bas_Impressao.FCampo4 := '';
     end;
  Frm_Bas_Impressao.FCampo2 := edt_nome.Text +', nascido(a) em ' + edt_dtnascim_ben.Text + ', RG ' +
                               edt_rg_ben.Text + ', CPF ' + edt_cpf_ben.Text + ' inscrito(a) sob N.° ' +
                               edt_carteira.Text + ', no ';

  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 2');
  if (Tab.FieldByName('flag_sti').AsInteger =  0) then
  begin
    Frm_Bas_Impressao.FSetorChefe := Tab.FieldByName('nome_sti').AsString;
    Frm_Bas_Impressao.FChefe := AnsiUpperCase(Tab.FieldByName('chefe').AsString);
    Frm_Bas_Impressao.FCargoChefe := Tab.FieldByName('cargoChefe').AsString;
  end
  else
  begin
    Frm_Bas_Impressao.FSetorChefe := 'Resp. pelo(a) '+Tab.FieldByName('nome_sti').AsString;

    Frm_Bas_Impressao.FChefe := AnsiUpperCase(Tab.FieldByName('responsavel').AsString);
    Frm_Bas_Impressao.FCargoChefe := Tab.FieldByName('cargoResponsavel').AsString;
  end;
  if fdt_principal6.spc_cons_adm_carencia.RecordCount > 0 then
    Frm_Bas_Impressao.FCampo6 := 'Carências'
  else
    Frm_Bas_Impressao.FCampo6 := '';
  Frm_Bas_Impressao.FMesReferencia := edt_dtvalidade.Text;
  Frm_Bas_Impressao.showReport(4151);
  fdt_principal6.spc_cons_adm_carencia.close;
end;

procedure TFrm_Rel_3066.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  Fdescricao_pla := '';
  FormShow(self);
end;

procedure TFrm_Rel_3066.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  edt_dtnascim_ben.Text:= '';
  edt_cpf_ben.Text:= '';
  edt_rg_ben.Text:= '';
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, b.cod_plano, nome_pla, inscricao_ben, titulacartei_ben, '+
               'idade_ben, digito_ben, nome_sit, tipo_sit, descricao_pla, dtnascim_ben, rg_ben, cpf_ben '+
               'from tbl_beneficiario b, tbl_plano p, tbL_sitbeneficiario s where b.cod_plano = p.cod_plano '+
               'and b.cod_sitbeneficiario = s.cod_sitbeneficiario and cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    Obj_SetFormObjValueByName(self, cbx_cod_plano.Name, Tab.fieldByName('cod_plano').AsInteger);
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    Fdescricao_pla := Tab.FieldByNAme('descricao_pla').AsString;
    edt_dtnascim_ben.Text:= Tab.FieldByName('dtnascim_ben').AsString;
    edt_rg_ben.Text:= Tab.FieldByName('rg_ben').AsString;
    edt_cpf_ben.Text:= Tab.FieldByName('cpf_ben').AsString;
    edt_dtvalidade.Text:= DateToStr(Date + 30);

    pnl_alerta.Caption := '***   Situação: '+Tab.FieldByName('nome_sit').AsString+'  ***';
    case Tab.FieldByName('tipo_sit').AsInteger of
      1 : pnl_alerta.color := clYellow;
      2 : pnl_alerta.color := clRed;
    end;
    pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
    if Db_openSql('select cod_planoPagto, cod_planoPagtoOld from tbl_beneficiarioPlanoPagtoEspecial'+
    ' where cod_beneficiario = '+edt_cod_beneficiario.Text) > 0 then
    begin
      if (Date >= StrToDate('01/10/2021')) then
        Obj_SetFormObjValueByName(self, cbx_cod_planopagto.name, tab.FieldByName('cod_planoPagto').AsString)
      else
        Obj_SetFormObjValueByName(self, cbx_cod_planopagto.name, tab.FieldByName('cod_planoPagtoOld').AsString);
    end
    else
      cbx_cod_planopagto.ItemIndex := -1;  
  end;
end;

procedure TFrm_Rel_3066.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3066.FormShow(Sender: TObject);
begin
  inherited;
  Obj_LoadCombo(Self,'cbx_cod_planopagto', 'nome_plp', 'cod_planopagto', 'tbl_planopagto'); //where cod_statusAtivo = 1
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  Panel5.Height:= 0;
  if Acs_AcessoEspecial('306601') then
     Panel5.Height:= 32;
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Rel_3066.cbx_cod_planoEnter(Sender: TObject);
begin
  inherited;
  edt_dtvalidade.SetFocus;
end;

procedure TFrm_Rel_3066.btn_limparClick(Sender: TObject);
begin
  inherited;
  cbx_cod_planopagto.ItemIndex := -1;
  cbx_cod_planopagto.Refresh;
end;

end.
