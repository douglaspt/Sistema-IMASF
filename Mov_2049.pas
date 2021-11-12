unit Mov_2049;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_2049 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    edt_cod_descontofolha: TDCEdit;
    Panel1: TPanel;
    edt_nome_ben: TDCEdit;
    edt_carteira: TDCEdit;
    Panel11: TPanel;
    edt_dtdesconto_flh: TDCDateEdit;
    Panel24: TPanel;
    edt_matricula: TDCEdit;
    edt_digito: TDCEdit;
    btn_verificar: TSpeedButton;
    edt_dtreferencia_flh: TDCDateEdit;
    btn_cancelaParcelamento: TPDJButton;
    pnl_parcelamento: TPanel;
    edt_vloriginal: TDCEdit;
    Panel4: TPanel;
    edt_vlamortizado: TDCEdit;
    edt_valorapagarsc: TDCEdit;
    edt_valorpago: TDCEdit;
    edt_parcelaspaga: TDCEdit;
    edt_nparcela_par: TDCEdit;
    edt_dtultimaparcela: TDCDateEdit;
    edt_vldesconto: TDCEdit;
    Panel5: TPanel;
    edt_vlpagarigpm: TDCEdit;
    edt_dtnovodesconto: TDCDateEdit;
    btn_calcular: TPDJButton;
    Panel6: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    cbx_cod_tarifa: TDCComboBox;
    procedure btn_verificarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_calcularClick(Sender: TObject);
    procedure btn_cancelaParcelamentoClick(Sender: TObject);
  private
    { Private declarations }
    Wcod_beneficiario : String;
  public
    { Public declarations }
    FCodDesconto : String;
  end;

var
  Frm_Mov_2049: TFrm_Mov_2049;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
  dtm_principal4, fun_desconto, Fun_obj, Fun_Numero, dtm_principal2, Fun_Data, Fun_Contabil ;

{$R *.DFM}

procedure TFrm_Mov_2049.btn_verificarClick(Sender: TObject);
begin
  inherited;
  if edt_cod_descontofolha.Text <> '' Then
  begin
    Wcod_beneficiario := '';
    with fdt_principal4.spc_cons_adm_altecaonossoNumero do
    begin
      Close;
      ParamByName('@cod_descontofolha').AsString := edt_cod_descontofolha.text;
      ParamByName('@parcelan_par').AsInteger := 1;
      Open;
      if recordcount > 0 then begin
        edt_carteira.text := FormatarCarteirinha(
        FieldByName('cod_empresa').AsString+FieldByName('cod_plano').AsString+
        STR_RightAlign(FieldByName('inscricao_ben').AsString,#48,5)+
        STR_RightAlign(FieldByName('titulacartei_ben').AsString,#48,2)+
        FieldByName('digito_ben').AsString) ;
        if FieldByName('inscricao_ben').AsInteger > 0 then
          Wcod_beneficiario := FieldByName('cod_beneficiario').AsString
        else
          Wcod_beneficiario := '0';  
        edt_nome_ben.Text := fieldbyname('nome_ben').AsString;
        edt_matricula.Text := fieldByname('matriculadebito_seg').AsString;
        edt_digito.Text := fieldbyname('digitomatdeb_seg').AsString;
        Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, fieldbyName('cod_empresafolha').AsString);
        Obj_SetFormObjValueByName(self, cbx_cod_tarifa.name, fieldbyname('cod_tarifa').AsString) ;
        edt_dtdesconto_flh.Text := fieldbyname('dtdesconto_flh').AsString;
        edt_dtreferencia_flh.Text := fieldbyname('dtreferencia_flh').AsString;
        edt_vldesconto.Text := FormatFloat('##,####,##0.00', fieldbyname('vldesconto_adf').Asfloat);
        edt_nparcela_par.Text :=  fieldbyname('nparcela_par').AsString;
        edt_vloriginal.Text := FormatFloat('##,####,##0.00', strToFloat(STR_RemoveChar(edt_vldesconto.text,'.'))/((
        Num_JuroComposto(FieldByName('vlpercjuros_par').AsFloat, str_strtoint(edt_nparcela_par.text)))*str_strtoint(edt_nparcela_par.text)));
      end;
    end;
    DB_OpenSQL('select count(parcelan_par) as parcelan_par, max(dtvencimento_par) as dtvencimento_par, sum(vlpago_par) as vlpago_par'+
    ' from tbl_parcelamento where cod_descontofolha = '+edt_cod_descontofolha.Text+' and cod_sitdesconto > 1');
    edt_parcelaspaga.Text := Tab.Fieldbyname('parcelan_par').AsString;
    edt_dtultimaparcela.Text :=  Tab.Fieldbyname('dtvencimento_par').AsString;
    edt_valorpago.Text := FormatFloat('###,###,##0.00', Tab.Fieldbyname('vlpago_par').AsFloat);
    edt_vlamortizado.Text := FormatFloat('###,###,##0.00', ((StrToFloat(STR_RemoveChar(edt_vloriginal.Text,'.')) / StrToFloat(edt_nparcela_par.text)) * StrToFloat(edt_parcelaspaga.text)));
    edt_valorapagarsc.Text := FormatFloat('###,###,##0.00', (StrToFloat(STR_RemoveChar(edt_vloriginal.Text,'.')) - StrToFloat(STR_RemoveChar(edt_vlamortizado.text,'.'))));
    btn_calcularClick(self);
  end;
end;

procedure TFrm_Mov_2049.FormShow(Sender: TObject);
begin
  inherited;
  edt_dtnovodesconto.Date := date;
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  Obj_LoadCombo(Self, 'cbx_cod_tarifa', 'cast(cod_tarifa as char(3)) + '' - '' + nome_tar', 'cod_tarifa', 'tbl_tarifa');
  if FCodDesconto <> '' then
  begin
    edt_cod_descontofolha.Text := FCodDesconto;
    btn_verificarClick(self);
  end;
end;

procedure TFrm_Mov_2049.btn_calcularClick(Sender: TObject);
begin
  inherited;
  with Fdt_principal2.spc_cont_simulareajuste do begin
    parambyname('@dtcotaIni').asstring := FormatDateTime('mm/01/yyyy',edt_dtdesconto_flh.date);
    parambyname('@dtcotaFin').asstring := FormatDateTime('mm/01/yyyy',edt_dtnovodesconto.date) ;
    parambyname('@cod_indice').asstring := '1' ;
    parambyname('@valor').AsString := STR_SubstChar(STR_RemoveChar(edt_valorapagarsc.Text,'.'), ',', '.');
    open;
    edt_vlpagarigpm.text  := FormatFloat('###,###,##0.00', FieldByName('vlreajustado').AsFloat);
    close;
  end;
end;

procedure TFrm_Mov_2049.btn_cancelaParcelamentoClick(Sender: TObject);
var
  Executado : boolean;
begin
  inherited;
 { if (STR_StrToInt(FormatDateTime('yyyymm', edt_dtnovodesconto.date))) <=
  (STR_StrToInt(FormatDateTime('yyyymm', Ctb_DtUltimoEnvioGerado(cbx_cod_empresafolha.valueitem)))) then
  begin
    Dlg_OK('A folha do m�s de "'+Data_GetMonthName(StrToInt(FormatDateTime('mm',edt_dtnovodesconto.date)))+
    '" j� foi gerada, assim n�o se pode mais efetuar lan�amentos para este m�s',self);
    Exit;
  end; }
  if Dlg_YesNo('Confere os Dados ? Confirma Cancelar ?!', self) then
  begin
    DB_BeginTrans;
    //Cancelar Parcelementos em Aberto
    Executado := DB_ExecSQL('update tbl_parcelamento set cod_sitdesconto = 900 '+
    ', cod_usuario = '+Str_IntToStr(Fcod_usuario)+
    ' where cod_descontofolha ='+ edt_cod_descontofolha.text+' and cod_sitdesconto = 1');
    //Incluir novo desconto com o valor da Divida
    if Executado then
      Executado := Set_IncluirDesconto(Wcod_beneficiario, edt_matricula.Text, edt_digito.Text, STR_RemoveChar(edt_vlpagarigpm.Text,'.'),
       '', cbx_cod_tarifa.valueitem, cbx_cod_empresafolha.valueitem, FormatDateTime('mm',edt_dtnovodesconto.Date),
       FormatDateTime('yyyy',edt_dtnovodesconto.date), edt_dtnovodesconto.Date, 'Referente as Parcelas do Desconto = '+edt_cod_descontofolha.Text,
       FCod_Usuario , FCod_TelaSistema );
    if Executado then begin
      Dlg_Ok('Parcelamentos Cancelados', self);
      Obj_EmptyEdit(self);
      DB_Commit;
    end
    else begin
      DB_RollBack;
      Dlg_Erro('Aten��o, Erro ao tentar Cancelar o Parcelamento!', self);
    end;
  end;
end;

end.



