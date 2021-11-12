unit Rel_ExtratoDesconto001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, QRExport, ShellApi;

type
  TFrm_Rel_ExtratoDesconto001 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
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
    RdG_OrdemImpressao: TRadioGroup;
    PDJButton3: TPDJButton;
    Panel8: TPanel;
    edt_dtpagto_flh: TDCDateEdit;
    PDJButton5: TPDJButton;
    Panel9: TPanel;
    Panel10: TPanel;
    PDJButton2: TPDJButton;
    PDJButton6: TPDJButton;
    lbl_alerta: TLabel;
    PDJButton1: TPDJButton;
    edt_dtdesconto_flh: TDCDateEdit;
    edt_cod_tarifa: TDCEdit;
    PDJButton4: TPDJButton;
    ckb_mostrarIten: TCheckBox;
    ckb_mostrarTodos: TCheckBox;
    ckb_naosegurado: TCheckBox;
    edt_matricula: TDCEdit;
    PDJButton7: TPDJButton;
    edt_seltarifa: TDCEdit;
    btn_Inctarifa: TPDJButton;
    btn_deltarifa: TPDJButton;
    btn_Incsituacao: TPDJButton;
    btn_delsituacao: TPDJButton;
    edt_selsituacao: TDCEdit;
    btn_cobranca: TPDJButton;
    SaveDialog: TSaveDialog;
    pgb_registros: TProgressBar;
    btn_relacaocobranca: TPDJButton;
    btn_relacaoanaliticadescontos: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure edt_inscricao_benKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton4Click(Sender: TObject);
    procedure ckb_naoseguradoClick(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
    procedure cbx_cod_empresafolhaExit(Sender: TObject);
    procedure btn_InctarifaClick(Sender: TObject);
    procedure btn_deltarifaClick(Sender: TObject);
    procedure btn_IncsituacaoClick(Sender: TObject);
    procedure btn_delsituacaoClick(Sender: TObject);
    procedure btn_cobrancaClick(Sender: TObject);
    procedure btn_relacaocobrancaClick(Sender: TObject);
    procedure btn_relacaoanaliticadescontosClick(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
    function PreencheParametros(order : Integer) : Boolean ;
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia, FEmpresaFolha : String ;
    WConta, WContb: Integer;
    WNomeSituacao: String;
  end;

var
  Frm_Rel_ExtratoDesconto001: TFrm_Rel_ExtratoDesconto001;
  str_arquiventrad, s, Algo: String;
  byt_nameofthfile : TextFile;

implementation
uses Imp_Med_ResumoConta, dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Adm_ExtratoDesconto001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str,
Imp_Adm_ExtratoDesconto002, Imp_Adm_ExtratoDesconto003, Imp_Adm_ExtratoDesconto004,
Imp_Adm_ExtratoDesconto005, Fun_obj, dtm_principal, Imp_4128,
dtm_principal6, Bas_Impressao, Fun_Data, dtm_principal5 ;

{$R *.DFM}

procedure TFrm_Rel_ExtratoDesconto001.FormCreate(Sender: TObject);
begin
  WConta:= 0;
  WContb:= 0;
  FTitulo       := 'Resumo dos Atendimentos Realizados pelo Beneficiário' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  inherited;
end;

function TFrm_Rel_ExtratoDesconto001.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mês de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_ano.name, 'Ano de Referência Final deve ser Preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_ExtratoDesconto001.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Rel_ExtratoDesconto001.edt_inscricao_benButtonClick(
  Sender: TObject);
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
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben, cod_empresafolha'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, Tab.FieldByNAme('cod_empresafolha').AsString);
  end;
end;

procedure TFrm_Rel_ExtratoDesconto001.FormShow(Sender: TObject);
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
  end;
end;

procedure TFrm_Rel_ExtratoDesconto001.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal2.spc_cons_adm_descontofolha04 do
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
    end;
    ParamByName('@dtreferenciaInicial_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@dtreferenciaFinal_flh').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text ;
//    if cbx_cod_empresafolha.text = '' then
//      ParamByName('@cod_beneficiario').AsString := '0'
//    else
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueitem;
    if edt_seltarifa.Text = '' then
       ParamByName('@cod_tarifa').AsString := edt_cod_tarifa.Text
    else
       ParamByName('@cod_tarifa').AsString := edt_seltarifa.Text;
    if edt_dtpagto_flh.text = '' then
      ParamByName('@dtpagto_flh').AsString := ''
    else
      ParamByName('@dtpagto_flh').AsString :=FormatDateTime('mm/dd/yyyy',edt_dtpagto_flh.date);
    if edt_dtdesconto_flh.text = '' then
      ParamByName('@dtdesconto_flh').AsString := ''
    else
      ParamByName('@dtdesconto_flh').AsString :=FormatDateTime('mm/dd/yyyy',edt_dtdesconto_flh.date);
    ParamByName('@cod_order').AsInteger := RdG_OrdemImpressao.ItemIndex ;
    open;
    if FieldByName('inscricao_ben').AsString = '' then begin
      Dlg_Alerta('Nenhum registro encontrado', self);
      close;
      exit;
    end;
  end;
  Frm_Imp_Adm_ExtratoDesconto002 := TFrm_Imp_Adm_ExtratoDesconto002.Create(Self);
  Frm_Imp_Adm_ExtratoDesconto002.FPeriodoInicial := 'De ' + cbx_cod_mes.text + ' de ' + edt_ano.text ;
  Frm_Imp_Adm_ExtratoDesconto002.FPeriodoFinal  := 'Até ' + cb2_cod_mes.text + ' de ' + ed2_ano.text ;
  Frm_Imp_Adm_ExtratoDesconto002.FEmpresaFolha := cbx_cod_empresafolha.text ;
  Frm_Imp_Adm_ExtratoDesconto002.QuickRep1.Preview;
  Frm_Imp_Adm_ExtratoDesconto002.Release;
  Fdt_principal2.spc_cons_adm_descontofolha04.close;
end;

procedure TFrm_Rel_ExtratoDesconto001.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal2.spc_cons_adm_descontofolha05 do
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
    end;
    ParamByName('@dtreferenciaInicial_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@dtreferenciaFinal_flh').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text ;
//    if cbx_cod_empresafolha.text = '' then
//      ParamByName('@cod_beneficiario').AsString := '0'
//    else
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    if edt_selsituacao.Text = '' then
       ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueitem
    else
       ParamByName('@cod_sitdesconto').AsString:= edt_selsituacao.Text;
    ParamByName('@cod_order').AsInteger := RdG_OrdemImpressao.ItemIndex ;
    ParamByName('@dtpagto_flh').AsString := Data_Format('mm/dd/yyyy',edt_dtpagto_flh.Date);
    open;
    if FieldByName('inscricao_ben').AsString = '' then begin
      Dlg_Alerta('Nenhum registro encontrado', self);
      close;
      exit;
    end;
  end;
  Frm_Imp_Adm_ExtratoDesconto003 := TFrm_Imp_Adm_ExtratoDesconto003.Create(Self);
  Frm_Imp_Adm_ExtratoDesconto003.FPeriodoInicial := 'De ' + cbx_cod_mes.text + ' de ' + edt_ano.text ;
  Frm_Imp_Adm_ExtratoDesconto003.FPeriodoFinal  := 'Até ' + cb2_cod_mes.text + ' de ' + ed2_ano.text ;
  Frm_Imp_Adm_ExtratoDesconto003.FEmpresaFolha := cbx_cod_empresafolha.text ;
  if edt_selsituacao.Text = '' then
     Frm_Imp_Adm_ExtratoDesconto003.FSitDesconto:= cbx_cod_sitdesconto.Text
  else
     Frm_Imp_Adm_ExtratoDesconto003.FSitDesconto:= WNomeSituacao;
  Frm_Imp_Adm_ExtratoDesconto003.QuickRep1.Preview;
  Frm_Imp_Adm_ExtratoDesconto003.Release;
  Fdt_principal2.spc_cons_adm_descontofolha05.close;
end;

procedure TFrm_Rel_ExtratoDesconto001.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if edt_inscricao_ben.text = '' then begin
    Dlg_Alerta('É necessário selecionar um Beneficiário para este Relatório', self);
    Exit;
  end;
  if (edt_inscricao_ben.text <> '') and (edt_carteira.text = '') then begin
    Dlg_Alerta('É necessário selecionar um Beneficiário para este Relatório', self);
    edt_inscricao_benButtonClick(self);
    Exit;
  end;
  if CriticaParametros then
    Exit;
  if RdG_OrdemImpressao.ItemIndex < 2 then
    RdG_OrdemImpressao.ItemIndex := 4 ;
  with Fdt_principal2.spc_cons_adm_descontofolha04 do
  begin
    close;
    if ckb_mostrarTodos.Checked then begin
      ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
      ParamByName('@titulacartei_ben').AsString := '00';
      ParamByName('@cod_beneficiario').AsString := '0';
    end
    else
      ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
   { if edt_inscricao_ben.text = '' then begin
      ParamByName('@inscricao_ben').AsString := '0';
      ParamByName('@titulacartei_ben').AsString := '0';
    end else begin
      ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
      ParamByName('@titulacartei_ben').AsString := copy(edt_carteira.text,11,2);
    end;    }
    ParamByName('@dtreferenciaInicial_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@dtreferenciaFinal_flh').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text ;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    if edt_seltarifa.Text = '' then
       ParamByName('@cod_tarifa').AsString := edt_cod_tarifa.Text
    else
       ParamByName('@cod_tarifa').AsString := edt_seltarifa.Text;
    ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueitem;
    if edt_dtpagto_flh.text = '' then
      ParamByName('@dtpagto_flh').AsString := ''
    else
      ParamByName('@dtpagto_flh').AsString :=FormatDateTime('mm/dd/yyyy',edt_dtpagto_flh.date);
    ParamByName('@cod_order').AsInteger := RdG_OrdemImpressao.ItemIndex ;
    open;
{
    if edt_inscricao_ben.text = '' then begin
      ParamByName('@inscricao_ben').AsString := '0';
      ParamByName('@titulacartei_ben').AsString := '0';
    end else begin
      ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
      ParamByName('@titulacartei_ben').AsString := copy(edt_carteira.text,11,2);
    end;
    ParamByName('@dtreferenciaInicial_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@dtreferenciaFinal_flh').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text ;
//    if cbx_cod_empresafolha.text = '' then
//      ParamByName('@cod_beneficiario').AsString := '0'
//    else
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueitem;
    ParamByName('@cod_order').AsInteger := RdG_OrdemImpressao.ItemIndex ;
    open;
    if FieldByName('inscricao_ben').AsString = '' then begin
      Dlg_Alerta('Nenhum registro encontrado', self);
      close;
      exit;
    end;   }
  end;
  Frm_Imp_Adm_ExtratoDesconto004 := TFrm_Imp_Adm_ExtratoDesconto004.Create(Self);
  Frm_Imp_Adm_ExtratoDesconto004.FPeriodoInicial := 'De ' + cbx_cod_mes.text + ' de ' + edt_ano.text ;
  Frm_Imp_Adm_ExtratoDesconto004.FPeriodoFinal  := 'Até ' + cb2_cod_mes.text + ' de ' + ed2_ano.text ;
  Frm_Imp_Adm_ExtratoDesconto004.FEmpresaFolha := cbx_cod_empresafolha.text ;
  Frm_Imp_Adm_ExtratoDEsconto004.FNomeBen := edt_nome.text;
  if edt_selsituacao.Text = '' then
     Frm_Imp_Adm_ExtratoDesconto004.FSitDesconto := cbx_cod_sitdesconto.Text
  else
     Frm_Imp_Adm_ExtratoDesconto004.FSitDesconto := WNomeSituacao;
  if edt_seltarifa.Text = '' then
     Frm_Imp_Adm_ExtratoDesconto004.FTarifas := edt_cod_tarifa.Text
  else
     Frm_Imp_Adm_ExtratoDesconto004.FTarifas := edt_seltarifa.Text;
  Frm_Imp_Adm_ExtratoDesconto004.QuickRep1.Preview;
  Frm_Imp_Adm_ExtratoDesconto004.Release;
  Fdt_principal2.spc_cons_adm_descontofolha04.close;
end;

procedure TFrm_Rel_ExtratoDesconto001.PDJButton5Click(Sender: TObject);
begin
  inherited;
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
  edt_dtpagto_flh.text := '' ;
  edt_carteira.text := '' ;
  edt_nome.text := '' ;
  FAnoReferencia := '';
  FMesReferencia := '';
  FEmpresaFolha := '';
  btn_deltarifaClick(Self);
  btn_delsituacaoClick(Self);
  FormShow(Self)
end;
                                     
function TFrm_Rel_ExtratoDesconto001.PreencheParametros(order : Integer) : Boolean;
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
      ParamByName('@matriculadebito_seg').AsString := '';
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
    if edt_selsituacao.Text = '' then
       begin
       ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueitem;
       Frm_Bas_Impressao.FCampo5 := cbx_cod_sitdesconto.Text;
       end
    else
       begin
       ParamByName('@cod_sitdesconto').AsString:= edt_selsituacao.Text;
       Frm_Bas_Impressao.FCampo5 := WNomeSituacao;
       end;
    if edt_seltarifa.Text = '' then
       begin
       ParamByName('@cod_tarifa').AsString := edt_cod_tarifa.Text;
       Frm_Bas_Impressao.FCampo4 := edt_cod_tarifa.Text;
       end
    else
       begin
       ParamByName('@cod_tarifa').AsString := edt_seltarifa.Text;
       Frm_Bas_Impressao.FCampo4 := edt_seltarifa.Text;
       end;
    ParamByName('@dtsistema_flh').AsString := '';
    if edt_dtpagto_flh.text = '' then
      ParamByName('@dtpagto_flh').AsString := ''
    else
      ParamByName('@dtpagto_flh').AsString :=FormatDateTime('mm/dd/yyyy',edt_dtpagto_flh.date);
    if edt_dtdesconto_flh.text = '' then
      ParamByName('@dtdesconto_flh').AsString := ''
    else
      ParamByName('@dtdesconto_flh').AsString :=FormatDateTime('mm/dd/yyyy',edt_dtdesconto_flh.date);
    ParamByName('@parcelas').AsString := '0';
    ParamByName('@nossonumero_flh').AsString := '';
    ParamByName('@cod_usuario').AsString := '0';
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

procedure TFrm_Rel_ExtratoDesconto001.PDJButton6Click(Sender: TObject);
begin
  inherited;
  if PreencheParametros(RdG_OrdemImpressao.ItemIndex) then begin
    Frm_Imp_Adm_ExtratoDesconto005 := TFrm_Imp_Adm_ExtratoDesconto005.Create(Self);
    Frm_Imp_Adm_ExtratoDesconto005.FPeriodoInicial := 'De ' + cbx_cod_mes.text + ' de ' + edt_ano.text ;
    Frm_Imp_Adm_ExtratoDesconto005.FPeriodoFinal  := 'Até ' + cb2_cod_mes.text + ' de ' + ed2_ano.text ;
    Frm_Imp_Adm_ExtratoDesconto005.FEmpresaFolha := cbx_cod_empresafolha.text ;
    if edt_selsituacao.Text = '' then
       Frm_Imp_Adm_ExtratoDesconto005.FSitDesconto := cbx_cod_sitdesconto.Text
    else
       Frm_Imp_Adm_ExtratoDesconto005.FSitDesconto := WNomeSituacao;
    if edt_seltarifa.Text = '' then
       Frm_Imp_Adm_ExtratoDesconto005.FTarifas := edt_cod_tarifa.Text
    else
       Frm_Imp_Adm_ExtratoDesconto005.FTarifas := edt_seltarifa.Text;
    Frm_Imp_Adm_ExtratoDesconto005.QuickRep1.Preview;
    Frm_Imp_Adm_ExtratoDesconto005.Release;
    Fdt_principal.spc_cons_adm_descontofolha02.close;
  end;
end;

procedure TFrm_Rel_ExtratoDesconto001.edt_inscricao_benKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if edt_inscricao_ben.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end;
end;

procedure TFrm_Rel_ExtratoDesconto001.edt_inscricao_benKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_ExtratoDesconto001.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if ckb_mostrarIten.Checked then
    RdG_OrdemImpressao.ItemIndex := 5;
  if PreencheParametros(RdG_OrdemImpressao.ItemIndex) then
  begin
    Frm_Imp_4128 := TFrm_Imp_4128.Create(Self);
    Frm_Imp_4128.FPeriodoInicial := 'De ' + cbx_cod_mes.text + ' de ' + edt_ano.text ;
    Frm_Imp_4128.FPeriodoFinal  := 'Até ' + cb2_cod_mes.text + ' de ' + ed2_ano.text ;
    Frm_Imp_4128.FEmpresaFolha := cbx_cod_empresafolha.text ;
    if edt_selsituacao.Text = '' then
       Frm_Imp_4128.FSitDesconto := cbx_cod_sitdesconto.Text
    else
       Frm_Imp_4128.FSitDesconto := WNomeSituacao;
    if edt_seltarifa.Text = '' then
       Frm_Imp_4128.FTarifas := edt_cod_tarifa.Text
    else
       Frm_Imp_4128.FTarifas := edt_seltarifa.Text;
    Frm_Imp_4128.QuickRep1.Preview;
    Frm_Imp_4128.Release;
    Fdt_principal.spc_cons_adm_descontofolha02.close;
  end;
end;

procedure TFrm_Rel_ExtratoDesconto001.ckb_naoseguradoClick(
  Sender: TObject);
begin
  inherited;
  if ckb_naosegurado.Checked then
  begin
    Panel4.Caption := '    Matrícula';
    edt_matricula.Visible := true;
    ckb_mostrarTodos.Visible := false;
    edt_carteira.Text := '';
    edt_nome.Text := '';
  end
  else
  begin
    Panel4.Caption := '    Inscrição';
    edt_matricula.Visible := false;
    ckb_mostrarTodos.Visible := true;
    edt_carteira.Text := '';
    edt_nome.Text := '';
  end;
end;

procedure TFrm_Rel_ExtratoDesconto001.PDJButton7Click(Sender: TObject);
var
  Ftarifa, Fsit, FDtPg, FDtDesc : String;
begin
  inherited;
  if not ckb_naosegurado.Checked then
  begin
    Dlg_Alerta('É necessário selecionar o campo Imprimir Não Segurados!',self);
    Exit;
  end;
  if not BAS_ValidarCampo(edt_matricula.name, 'A Matrícula deve ser Preenchida!', VLD_Preenchido ) or
  not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O Local de Desconto deve ser Preenchido!', VLD_Preenchido ) or
  not BAS_ValidarCampo(edt_nome.name, 'O Beneficiario deve ser Preenchido!', VLD_Preenchido ) then
    exit;
  if CriticaParametros then
    Exit;
  with Fdt_principal6.spc_cons_adm_descontofolha07 do
  begin
    close;
    ParamByName('@matricula_mte').AsString := edt_matricula.text ;
   // ParamByName('@digito_mte').AsString := edt_digito.text ;
    ParamByName('@dtreferenciaInicial_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text ;
    ParamByName('@dtreferenciaFinal_flh').AsString := cb2_cod_mes.valueItem + '/01/'+ed2_ano.text ;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    if edt_seltarifa.Text = '' then
       ParamByName('@cod_tarifa').AsString := edt_cod_tarifa.Text
    else
       ParamByName('@cod_tarifa').AsString := edt_seltarifa.Text;
    ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueitem;
    if edt_dtpagto_flh.text = '' then
      ParamByName('@dtpagto_flh').AsString := ''
    else
      ParamByName('@dtpagto_flh').AsString :=FormatDateTime('mm/dd/yyyy',edt_dtpagto_flh.date);
    ParamByName('@cod_order').AsInteger := RdG_OrdemImpressao.ItemIndex ;
    open;
  end;
  FSit:= '';
  Ftarifa:= '';
  if edt_selsituacao.Text = '' then
     if cbx_cod_sitdesconto.Text <> '' then
        Fsit := 'Situação do Desconto   '+cbx_cod_sitdesconto.Text + '       '
     else
  else
     Fsit := 'Situação do Desconto   '+ WNomeSituacao +'       ';
  if edt_seltarifa.Text = '' then
     if edt_cod_tarifa.Text <> '' then
        Ftarifa := 'Cod. Tarifa   ' + edt_cod_tarifa.text
     else
  else
     Ftarifa := 'Cod. Tarifa   ' + edt_seltarifa.text;
  if edt_dtpagto_flh.Text <> '' then
    FDtPg := 'Data de Pagamento   '+ edt_dtpagto_flh.Text+'       ';
  if edt_dtdesconto_flh.Text <> '' then
    FDtDesc := 'Data de Desconto   '+ edt_dtdesconto_flh.Text;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_adm_descontofolha07;
  Frm_Bas_Impressao.FCampo1 := 'Empresa para Desconto   '+cbx_cod_empresafolha.Text;
  Frm_Bas_Impressao.FCampo2 := 'Periodo Inicial   '+cbx_cod_mes.Text+'/'+edt_ano.Text+'       Periodo Final   '+cb2_cod_mes.Text+'/'+ed2_ano.Text;
  Frm_Bas_Impressao.FCampo3 := Fsit+Ftarifa;
  Frm_Bas_Impressao.FCampo4 := FDtPg+FDtDesc;
  Frm_Bas_Impressao.FCampo5 := 'Matrícula   '+edt_matricula.Text+'     Nome   '+edt_nome.Text;
  Frm_Bas_Impressao.showReport(4144);
  fdt_principal6.spc_cons_adm_descontofolha07.close;
end;

procedure TFrm_Rel_ExtratoDesconto001.cbx_cod_empresafolhaExit(
  Sender: TObject);
begin
  inherited;
  if ckb_naosegurado.Checked then
    if (edt_matricula.Text <> '') and (cbx_cod_empresafolha.Text <> '') then
    begin
      DB_OpenSQL('select nome_fpm from tbl_fpm where matricula_mte = '+edt_matricula.Text+        
      ' and cod_empresafolha = '+cbx_cod_empresafolha.valueitem);
      edt_nome.Text := Tab.FieldByName('nome_fpm').AsString;
    end;
end;

procedure TFrm_Rel_ExtratoDesconto001.btn_InctarifaClick(Sender: TObject);
begin
  inherited;
  if edt_cod_tarifa.Text <> '' then
     begin
     if WConta = 0 then
        edt_seltarifa.Text:= edt_cod_tarifa.Text
     else
        edt_seltarifa.Text:= edt_seltarifa.Text + ', ' + edt_cod_tarifa.Text;
     Inc(WConta);
     edt_cod_tarifa.Text:= '';
     Panel9.Caption:= '   +Cod. Tarifa';
     edt_cod_tarifa.SetFocus;
     end;
end;

procedure TFrm_Rel_ExtratoDesconto001.btn_deltarifaClick(Sender: TObject);
begin
  inherited;
  WConta:= 0;
  Panel9.Caption:= '    Cod. Tarifa';
  edt_cod_tarifa.Text:= '';
  edt_seltarifa.Text:= '';
end;

procedure TFrm_Rel_ExtratoDesconto001.btn_IncsituacaoClick(Sender: TObject);
begin
  inherited;
  if cbx_cod_sitdesconto.ValueItem <> -1 then
     begin
     if WContb = 0 then
        begin
        edt_selsituacao.Text:= IntToStr(cbx_cod_sitdesconto.ValueItem);
        WNomeSituacao:= cbx_cod_sitdesconto.Text;
        end
     else
        begin
        edt_selsituacao.Text:= edt_selsituacao.Text + ', ' + IntToStr(cbx_cod_sitdesconto.ValueItem);
        WNomeSituacao:= WNomeSituacao + ', ' + cbx_cod_sitdesconto.Text;
        end;
     Inc(WContb);
     cbx_cod_sitdesconto.ItemIndex:= -1;
     Panel6.Caption:= '   +Situação do Desconto                                                                                                                      ';
     cbx_cod_sitdesconto.SetFocus;
     end;
end;

procedure TFrm_Rel_ExtratoDesconto001.btn_delsituacaoClick(Sender: TObject);
begin
  inherited;
  WContb:= 0;
  Panel6.Caption:= '    Situação do Desconto                                                                                                                      ';
  cbx_cod_sitdesconto.ItemIndex:= -1;
  edt_selsituacao.Text:= '';
end;

procedure TFrm_Rel_ExtratoDesconto001.btn_cobrancaClick(Sender: TObject);
begin
  inherited;
  if ckb_mostrarIten.Checked then
    RdG_OrdemImpressao.ItemIndex := 5;
  if PreencheParametros(RdG_OrdemImpressao.ItemIndex) then
  begin
    Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_adm_descontofolha02;
    Frm_Bas_Impressao.FCampo1 := 'De ' + cbx_cod_mes.text + ' de ' + edt_ano.text ;
    Frm_Bas_Impressao.FCampo2 := 'Até ' + cb2_cod_mes.text + ' de ' + ed2_ano.text ;
    Frm_Bas_Impressao.FCampo3 := cbx_cod_empresafolha.text;
    Frm_Bas_Impressao.showReport(4209);
    Fdt_principal.spc_cons_adm_descontofolha02.close;
  end;
end;

procedure TFrm_Rel_ExtratoDesconto001.btn_relacaocobrancaClick(
  Sender: TObject);
Var
  WTotinf, WTotpago, WTotAberto: Double;
  WDescricaoParcela, WVPago, WCodBenef: string;
begin
  inherited;
  WTotinf:= 0;
  WTotpago:= 0;
  WTotAberto:= 0;
  if CriticaParametros = True then
    Exit;
  if ckb_mostrarIten.Checked then
    RdG_OrdemImpressao.ItemIndex := 5;
  if PreencheParametros(RdG_OrdemImpressao.ItemIndex) then
  begin
    Fdt_principal.spc_cons_adm_descontofolha02.First;
    SaveDialog.DefaultExt:= 'CSV';
    SaveDialog.Filter:= 'CSV';
    if SaveDialog.execute then
       begin
       str_arquiventrad:= SaveDialog.filename;
       AssignFile(byt_nameofthfile, str_arquiventrad);
       Rewrite (byt_nameofthfile);
       S:= 'Matrícula;Empresa;Situação no IMASF;Inscrição;Cód.Beneficiário;Nome;No.Processo;Data Desconto;Cod.Tarifa;Valor;Endereço;Bairro;Cidade;Estado;CEP;Telefone;Dt Nasc.;CPF;RG;E-Mail;Nº CDA;Dt.Envio CDA;Dt.Retorno CDA;';
       Writeln(byt_nameofthfile,S);
       pgb_registros.Visible:= True;
       pgb_registros.Min := 0;
       pgb_registros.Max := Fdt_principal.spc_cons_adm_descontofolha02.RecordCount;
       try
         with Fdt_principal.spc_cons_adm_descontofolha02 do
           begin
            while not Eof do
              begin
              if FieldByName('inscricao_ben').AsString = FieldByName('matriculadebito_seg').AsString then
                 WCodBenef:= '0'
              else
                 WCodBenef:= FieldByName('cod_beneficiario').AsString;
              if FieldByName('parcelan_par').Value <> Null then
                 WDescricaoParcela:= FieldByName('parcelan_par').AsString + ' de ' + FieldByName('nparcela_par').AsString
              else
                 WDescricaoParcela:= '';
              if FieldByName('vlpago_flh').Value = Null then
                 WVPago:= '0'
              else
                 WVPago:= FieldByName('vlpago_flh').AsString;
              S:= FieldByName('matriculadebito_seg').AsString + ';' +
                  FieldByName('cod_empresafolha').AsString + ';' +
                  FieldByName('nome_sit').AsString + ';' +
                  FieldByName('inscricao_ben').AsString + ';' +
                  FieldByName('cod_beneficiario').AsString + ';' +
                  FieldByName('nome_ben').AsString + ';' +
                  FieldByName('processo_ben').AsString + ';' +
                  FieldByName('dtrefatraso_flh').AsString + ';' +
                  FieldByName('cod_tarifa').AsString + ';' +
                  FormatFloat('##,###,##0.00', FieldByName('vldesconto_adf').Value) + ';' +
                  FieldByName('endereco_ben').AsString + ';' +
                  FieldByName('bairro_ben').AsString + ';' +
                  FieldByName('cidade_cep').AsString + ';' +
                  FieldByName('sigla_uf').AsString + ';' +
                  FieldByName('cep_ben').AsString + ';' +
                  FieldByName('fonetit').AsString + ';' +
                  FieldByName('dtnascim_ben').AsString + ';' +
                  FieldByName('cpf_ben').AsString + ';' +
                  FieldByName('rg_ben').AsString + ';' +
                  FieldByName('emailtit').AsString + ';;;;';
              pgb_registros.Position:= pgb_registros.Position + 1;
              Writeln(byt_nameofthfile,S);
              WTotinf:= WTotinf + FieldByName('vldesconto_adf').Value;
              if WVPago <> '0' then
                 WTotpago:= WTotpago + FieldByName('vlpago_flh').Value;
              WTotAberto:= WTotinf - WTotpago;
              Next ;
              end;
          end;
        except
          showmessage('Linha '+IntToStr(pgb_registros.Position));
        end;
    closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
    end;
  pgb_registros.Visible:= False;
  Fdt_principal.spc_cons_adm_descontofolha02.close;
  if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self)
     then Exit ;
  Algo:= SaveDialog.InitialDir + str_arquiventrad;
  ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TFrm_Rel_ExtratoDesconto001.btn_relacaoanaliticadescontosClick(
  Sender: TObject);
Var
  WTotinf, WTotpago, WTotAberto: Double;
  WDescricaoParcela, WVPago, WCodBenef: string;
begin
  inherited;
  WTotinf:= 0;
  WTotpago:= 0;
  WTotAberto:= 0;
  if CriticaParametros = True then
    Exit;
  if ckb_mostrarIten.Checked then
    RdG_OrdemImpressao.ItemIndex := 5;
  if PreencheParametros(RdG_OrdemImpressao.ItemIndex) then
  begin
    Fdt_principal.spc_cons_adm_descontofolha02.First;
    SaveDialog.DefaultExt:= 'CSV';
    SaveDialog.Filter:= 'CSV';
    if SaveDialog.execute then
       begin
       str_arquiventrad:= SaveDialog.filename;
       AssignFile(byt_nameofthfile, str_arquiventrad);
       Rewrite (byt_nameofthfile);
       S:= 'Insc.;Tit;Cod.Benef.;Nome;Sit;Referencia;Mes Atraso;Parc.;Vl.Parc.;Cod.Desc.;Valor;Valor Pago;Situacao do Desc.;Dt.Baixa;OBS;Telefone;E-Mail';
       Writeln(byt_nameofthfile,S);
       pgb_registros.Visible:= True;
       pgb_registros.Min := 0;
       pgb_registros.Max := Fdt_principal.spc_cons_adm_descontofolha02.RecordCount;
       with Fdt_principal.spc_cons_adm_descontofolha02 do
         begin
          while not Eof do
            begin
          {  if FieldByName('inscricao_ben').AsString = FieldByName('matriculadebito_seg').AsString then
               WCodBenef:= '0'
            else
               WCodBenef:= FieldByName('cod_beneficiario').AsString;
            if FieldByName('parcelan_par').Value <> Null then
               WDescricaoParcela:= FieldByName('parcelan_par').AsString + ' de ' + FieldByName('nparcela_par').AsString
            else
               WDescricaoParcela:= '';
            if FieldByName('vlpago_flh').Value = Null then
               WVPago:= '0'
            else
               WVPago:= FieldByName('vlpago_flh').AsString; }
            S:= FieldByName('inscricao_ben').AsString + ';' +
                FieldByName('titulacartei_ben').AsString + ';' + WCodBenef + ';' +
                FieldByName('nome_ben').AsString + ';' +
                FieldByName('cod_sitbeneficiario').AsString + ';' +
                FieldByName('COLUMN7').AsString + ';' +
                FieldByName('dtrefatraso_flh').AsString + ';' + WDescricaoParcela + ';' +
                FieldByName('vlparcelado').AsString + ';' +
                FieldByName('cod_tarifa').AsString + ';' +
                FieldByName('vldesconto_adf').AsString + ';' + WVPago + ';' +
                FieldByName('nome_sds').AsString + ';' +
                FieldByName('dtpagto_flh').AsString + ';' +
                FieldByName('obs_flh').AsString + ';' +
                FieldByName('fonetit').AsString + ';' +
                FieldByName('emailtit').AsString + ';';

            pgb_registros.Position:= pgb_registros.Position + 1;
            Writeln(byt_nameofthfile,S);
          {  WTotinf:= WTotinf + FieldByName('vldesconto_adf').Value;
            if WVPago <> '0' then
               WTotpago:= WTotpago + FieldByName('vlpago_flh').Value;
            WTotAberto:= WTotinf - WTotpago;  }
            Next ;
            end;
        end;
    closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
    end;
  pgb_registros.Visible:= False;
  Fdt_principal.spc_cons_adm_descontofolha02.close;
  if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self)
     then Exit ;
  Algo:= SaveDialog.InitialDir + str_arquiventrad;
  ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);
  end;
end;

end.



