unit Rel_ContaRepassada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_ContaRepassada = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    edt_sequencia_con: TDCEdit;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    Panel1: TPanel;
    rdb_vencimento1: TRadioButton;
    rdb_vencimento2: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
  private
    { Private declarations }
    dtrefe, conven : string ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FCod_Conveniado, FMes, FAno, FSeq : String ;
  end;

var
  Frm_Rel_ContaRepassada: TFrm_Rel_ContaRepassada;

implementation
uses Imp_Med_ResumoConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
     Imp_Med_ContaGlosa, Imp_Med_Repasse_Autoriz, Fun_Obj, dtm_principal6,
     dtm_principal4, Bas_Impressao, Fun_DB, Bas_Preview;

{$R *.DFM}

procedure TFrm_Rel_ContaRepassada.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Emissão de Autorização de Pagamento' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Rel_ContaRepassada.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_ContaRepassada.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  if FCod_Conveniado <> '' then begin
    edt_cod_conveniado.Text := FCod_Conveniado;
    Obj_SetFormObjValueByName(self,'cbx_cod_mes',FMes);
    edt_ano.Text := Fano;
    edt_sequencia_con.Text := Fseq;
    edt_cod_conveniadoExit(self);
  end;
end;

procedure TFrm_Rel_ContaRepassada.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Rel_ContaRepassada.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_conveniado.name, 'Código do Conveiado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia da Conta deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequencia_con.name, 'Sequencia da Conta deve ser Preenchida !', VLD_Preenchido )) ;
end;


procedure TFrm_Rel_ContaRepassada.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal6.spc_cons_med_dotacoestmedico do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFin').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaIni').AsString := edt_sequencia_con.text ;
    ParamByName('@sequenciaFin').AsString := edt_sequencia_con.text ;
    open;
  end;
  Frm_Imp_Med_Repasse_Autoriz := TFrm_Imp_Med_Repasse_Autoriz.Create(Self);
  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 5');
  if (Tab.FieldByName('flag_sti').AsInteger =  0) then
  begin
    Frm_Imp_Med_Repasse_Autoriz.FChefeDA := AnsiUpperCase(Tab.FieldByName('chefe').AsString);
    Frm_Imp_Med_Repasse_Autoriz.FCargoDA := Tab.FieldByName('cargoChefe').AsString;
    Frm_Imp_Med_Repasse_Autoriz.FSetorDA := Tab.FieldByName('nome_sti').AsString;

  end
  else
  begin
    Frm_Imp_Med_Repasse_Autoriz.FChefeDA := AnsiUpperCase(Tab.FieldByName('responsavel').AsString);
    Frm_Imp_Med_Repasse_Autoriz.FCargoDA := Tab.FieldByName('cargoResponsavel').AsString;
    Frm_Imp_Med_Repasse_Autoriz.FSetorDA := 'Resp. pelo(a) '+Tab.FieldByName('nome_sti').AsString;
  end;
  Frm_Imp_Med_Repasse_Autoriz.QuickRep1.Preview;
  Frm_Imp_Med_Repasse_Autoriz.Release;
  Fdt_principal6.spc_cons_med_dotacoestmedico.close;
end;

procedure TFrm_Rel_ContaRepassada.PDJButton2Click(Sender: TObject);
var
  vlPagar : double;
begin
  inherited;
    if CriticaParametros then
    Exit;
  with Fdt_principal4.spc_cons_med_dotacoestmedico02 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtreferencia').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequencia_cta').AsString := edt_sequencia_con.text ;
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal4.spc_cons_med_dotacoestmedico02;
  Frm_Bas_Impressao.FCampo4 := '';
  Frm_Bas_Impressao.FCampo6 := '';
  Frm_Bas_Impressao.FMesReferencia := cbx_cod_mes.Text+'/'+edt_ano.Text;
  vlPagar := Fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vlpago_cta').AsFloat+
  Fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vlISS_cta').AsFloat+
  Fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vljurosMulta_cta').AsFloat;
  //add em 28/10/2015
  DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 5');
  if (Tab.FieldByName('flag_sti').AsInteger =  0) then
  begin
    Frm_Bas_Impressao.FCampo3 := Tab.FieldByName('nome_sti').AsString;
    Frm_Bas_Impressao.FCampo1 := AnsiUpperCase(Tab.FieldByName('chefe').AsString);
    Frm_Bas_Impressao.FCampo2 := Tab.FieldByName('cargoChefe').AsString;
  end
  else
  begin
    Frm_Bas_Impressao.FCampo3 := 'Resp. pelo(a) '+Tab.FieldByName('nome_sti').AsString;
    Frm_Bas_Impressao.FCampo1 := AnsiUpperCase(Tab.FieldByName('responsavel').AsString);
    Frm_Bas_Impressao.FCampo2 := Tab.FieldByName('cargoResponsavel').AsString;
  end;
  //comentado em 28/10/2015
  {
  if vlPagar <= 2000 then
     begin
     DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 9');
     Frm_Bas_Impressao.FCampo1 := Tab.FieldByName('Chefe').AsString;
     Frm_Bas_Impressao.FCampo2 := Tab.FieldByName('cargoChefe').AsString;
     Frm_Bas_Impressao.FCampo3 := Tab.FieldByName('nome_sti').AsString;
     end;
  if vlPagar > 2000 then
     begin
     DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 5');
     Frm_Bas_Impressao.FCampo1 := Tab.FieldByName('Chefe').AsString;
     Frm_Bas_Impressao.FCampo2 := Tab.FieldByName('cargoChefe').AsString;
     Frm_Bas_Impressao.FCampo3 := Tab.FieldByName('nome_sti').AsString;
     end;
  if vlPagar >= 8000 then
     begin
     DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 1');
     Frm_Bas_Impressao.FCampo4 := Tab.FieldByName('Chefe').AsString;
     Frm_Bas_Impressao.FCampo6 := Tab.FieldByName('cargoChefe').AsString;
     Frm_Bas_Impressao.FMesReferencia := Tab.FieldByName('nome_sti').AsString;
     end;
  }
  if date >= fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtvalidade').AsDateTime then
  begin
    Frm_Bas_Impressao.FCampo5 := 'Salientamos que a NFe. nº '+fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('nf_cta').AsString+
    ' competência '+FormatDateTime('MMMM/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtcompetencia_cta').AsDateTime)+
    ' teve recolhimento do ISS no valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vlISS_cta').AsFloat)+
    ' em '+FormatDateTime('dd/mm/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtvalidade').AsDateTime);
    if fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('ISSrecebido_cta').AsBoolean then
      Frm_Bas_Impressao.FCampo5 := 'Salientamos que a NFe. nº '+fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('nf_cta').AsString+
      ' competência '+FormatDateTime('MMMM/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtcompetencia_cta').AsDateTime)+
      ' teve recolhimento do ISS no valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vlISS_cta').AsFloat)+
      ' e Juros/Multa no Valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vljurosMulta_cta').AsFloat)+
      ' em '+FormatDateTime('dd/mm/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtvalidade').AsDateTime)
  end
  else
  begin
    Frm_Bas_Impressao.FCampo5 := 'Salientamos que a NFe. nº '+fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('nf_cta').AsString+
    ' competência '+FormatDateTime('MMMM/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtcompetencia_cta').AsDateTime)+
    ' terá recolhimento do ISS no valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vlISS_cta').AsFloat)+
    ' em '+FormatDateTime('dd/mm/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtvalidade').AsDateTime) ;
    if fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('ISSrecebido_cta').AsBoolean then
      Frm_Bas_Impressao.FCampo5 := 'Salientamos que a NFe. nº '+fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('nf_cta').AsString+
      ' competência '+FormatDateTime('MMMM/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtcompetencia_cta').AsDateTime)+
      ' terá recolhimento do ISS no valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vlISS_cta').AsFloat)+
      ' e Juros/Multa no Valor de R$ '+FormatFloat('###,###,##0.00',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('vljurosMulta_cta').AsFloat)+
      ' em '+FormatDateTime('dd/mm/yyyy',fdt_principal4.spc_cons_med_dotacoestmedico02.FieldByName('dtvalidade').AsDateTime) ;
  end;
 // Frm_Bas_Impressao.FNumCopias := 2;
 if rdb_vencimento1.Checked then
    Frm_Bas_Impressao.showReport(4198)
  else
   Frm_Bas_Impressao.showReport(4242);

//  Frm_Bas_Impressao.FNumCopias := 1;
  Fdt_principal4.spc_cons_med_dotacoestmedico02.close;
end;

end.



