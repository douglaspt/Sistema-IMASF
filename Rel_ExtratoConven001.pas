unit Rel_ExtratoConven001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_ExtratoConven001 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton3: TPDJButton;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    edt_ano2: TDCEdit;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    edt_sequenciaInicial: TDCEdit;
    edt_sequenciaFinal: TDCEdit;
    SaveDialog: TSaveDialog;
    pgb_registros: TProgressBar;
    btn_estratoMensal: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure btn_estratoMensalClick(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
    procedure PesquisaExtratoConveniadoMensal();
  public
    { Public declarations }
  end;

var
  Frm_Rel_ExtratoConven001: TFrm_Rel_ExtratoConven001;

implementation
uses Imp_Med_ExtratoConven001, Imp_Med_ExtratoConven002, dtm_principal, Fun_Medico,
Fun_ConsCadastro, Constantes, Fun_Data, Imp_Med_ExtratoConven003, Dlg_Mensagem ;

{$R *.DFM}

procedure TFrm_Rel_ExtratoConven001.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Extrato de Conveniados' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Rel_ExtratoConven001.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_ExtratoConven001.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  edt_sequenciaInicial.Text := '1';
  edt_sequenciaFinal.Text := '100';
end;

procedure TFrm_Rel_ExtratoConven001.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Rel_ExtratoConven001.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_conveniado.name, 'Código do Conveiado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mes de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'Ano de Referencia Final deve ser Preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_ExtratoConven001.PesquisaExtratoConveniadoMensal();
begin
  with Fdt_principal.spc_cons_med_extratoconvenMensal do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtrealizacaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtrealizacaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaIni').AsString := edt_sequenciaInicial.Text;
    ParamByName('@dtreferenciaFin').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@sequenciaFin').AsString := edt_sequenciaFinal.Text;
    open;
  end;
end;


procedure TFrm_Rel_ExtratoConven001.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratoconven001 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@cod_itemservicoIni').AsString := '0' ;
    ParamByName('@cod_itemservicoFin').AsString := '0' ;
    ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaInicial_cta').AsString := edt_sequenciaInicial.Text;
    ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@sequenciaFinal_cta').AsString := edt_sequenciaFinal.Text;
    ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
  end;
  Frm_Imp_Med_ExtratoConven001 := TFrm_Imp_Med_ExtratoConven001.Create(Self);
  Frm_Imp_Med_ExtratoConven001.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_ExtratoConven001.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_Med_ExtratoConven001.FDataInicial := edt_dtinicial.text;
  Frm_Imp_Med_ExtratoConven001.FDataFinal := edt_dtfinal.text;
  Frm_Imp_Med_ExtratoConven001.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoConven001.Release;
  Fdt_principal.spc_cons_med_extratoconven001.close;
end;

procedure TFrm_Rel_ExtratoConven001.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratoconven002 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaInicial_cta').AsString := edt_sequenciaInicial.Text;
    ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@sequenciaFinal_cta').AsString := edt_sequenciaFinal.Text;
    open;
  end;
  Frm_Imp_Med_ExtratoConven002 := TFrm_Imp_Med_ExtratoConven002.Create(Self);
  Frm_Imp_Med_ExtratoConven002.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_ExtratoConven002.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_Med_ExtratoConven002.FDataInicial := edt_dtinicial.text;
  Frm_Imp_Med_ExtratoConven002.FDataFinal := edt_dtfinal.text;
  Frm_Imp_Med_ExtratoConven002.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoConven002.Release;
  Fdt_principal.spc_cons_med_extratoconven002.close;
end;

procedure TFrm_Rel_ExtratoConven001.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratoconven003 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaInicial_cta').AsString := edt_sequenciaInicial.Text;
    ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@sequenciaFinal_cta').AsString := edt_sequenciaFinal.Text;
    open;
  end;
  Frm_Imp_Med_ExtratoConven003 := TFrm_Imp_Med_ExtratoConven003.Create(Self);
  Frm_Imp_Med_ExtratoConven003.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_ExtratoConven003.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_Med_ExtratoConven003.FDataInicial := edt_dtinicial.text;
  Frm_Imp_Med_ExtratoConven003.FDataFinal := edt_dtfinal.text;
  Frm_Imp_Med_ExtratoConven003.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoConven003.Release;
  Fdt_principal.spc_cons_med_extratoconven003.close;
end;

procedure TFrm_Rel_ExtratoConven001.btn_estratoMensalClick(
  Sender: TObject);
var
  str_arquiventrada, s: String;
  byt_nameofthfile : TextFile;
begin
  inherited;
if CriticaParametros = True then
    Exit;
  PesquisaExtratoConveniadoMensal;
  Fdt_principal.spc_cons_med_extratoconvenMensal.First;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.execute then
    begin
    str_arquiventrada:= SaveDialog.filename;
    AssignFile(byt_nameofthfile, str_arquiventrada);
    Rewrite (byt_nameofthfile);
    S:= 'Cod. Conv.;Conveniado;Referencia;Cod. item;Procedimento; Qtde. Itens; Qtde. Paciente; Vl. Médio; Total Pago';
    Writeln(byt_nameofthfile,S);
    S:= '';
    pgb_registros.Visible:= True;
    pgb_registros.Min := 0;
    pgb_registros.Max := Fdt_principal.spc_cons_med_extratoconvenMensal.RecordCount;
    with Fdt_principal.spc_cons_med_extratoconvenMensal do
    begin
      while not eof do
      begin
        S:= FieldByName('cod_conveniado').AsString + ';' +
        FieldByName('nome_con').AsString + ';' +
        FieldByName('dtreferencia_cta').AsString + ';' +
        FieldByName('cod_itemservico').AsString + ';' +
        FieldByName('nome_its').AsString + ';' +
        FieldByName('qtde_itc').AsString + ';' +
        FieldByName('qtdeBenefi').AsString + ';' +
        FormatFloat('###,###,##0', FieldByName('vlmedio').Value) + ';' +
        FormatFloat('###,###,##0', FieldByName('vlpagar_itc').Value);
        pgb_registros.Position:= pgb_registros.Position + 1;
        Writeln(byt_nameofthfile,S);
        Next ;
      end;
    end;
    closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrada,self);
    pgb_registros.Visible:= False;
    end;
    Fdt_principal.spc_cons_med_extratoconvenMensal.close;
end;

end.

