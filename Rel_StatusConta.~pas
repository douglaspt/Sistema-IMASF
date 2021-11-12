unit Rel_StatusConta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, ShellAPI;

type
  TFrm_Rel_StatusConta = class(TFrm_Bas_TelaPadrao)
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
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    btn_itemhonorario: TPDJButton;
    SaveDialog: TSaveDialog;
    pgb_registros: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure btn_itemhonorarioClick(Sender: TObject);
  private
    { Private declarations }
    STR_cod_conveniado : String;
    function CriticaParametros : Boolean ;
  public
    STR_Conveniado, STR_Mes, STR_Ano : String;
    { Public declarations }
  end;

var
  Frm_Rel_StatusConta: TFrm_Rel_StatusConta;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
dtm_principal4, Imp_4115, Bas_Impressao, Fun_STR, Dlg_Mensagem, Fun_Obj;

{$R *.DFM}

procedure TFrm_Rel_StatusConta.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Relatório de Status das Contas' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Rel_StatusConta.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_StatusConta.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  if STR_conveniado <> '' then begin
    edt_cod_conveniado.Text := STR_conveniado;
    Obj_SetFormObjValueByName(self,'cbx_cod_mes',STR_Mes);
    Obj_SetFormObjValueByName(self,'cb2_cod_mes',STR_Mes);
    edt_ano.Text := STR_Ano;
    edt_ano2.Text := STR_Ano;
    edt_cod_conveniadoExit(self);
  end;
end;

procedure TFrm_Rel_StatusConta.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Rel_StatusConta.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mes de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'Ano de Referencia Final deve ser Preenchido !', VLD_Preenchido )) ;
end;


procedure TFrm_Rel_StatusConta.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  STR_cod_conveniado :=  STR_RemoveChar(edt_cod_conveniado.text,'-');
  with Fdt_principal.spc_cons_med_statusloteconta do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := STR_cod_conveniado;
    ParamByName('@dtreferenciainicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciafinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    open;
  end;
  Frm_Imp_Med_StatusConta := TFrm_Imp_Med_StatusConta.Create(Self);
  Frm_Imp_Med_StatusConta.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_StatusConta.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_Med_StatusConta.QuickRep1.Preview;
  Frm_Imp_Med_StatusConta.Release;
  Fdt_principal.spc_cons_med_statusloteconta.close;
end;

procedure TFrm_Rel_StatusConta.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'O Mês Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'O Ano Final deve ser Preenchido !', VLD_Preenchido )) then
  Exit;
  with Fdt_principal4.spc_cons_med_statusloteconta001 do
  begin
    close;
    ParamByName('@dtreferenciainicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciafinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    open;
  end;
  Frm_Imp_4115 := TFrm_Imp_4115.Create(Self);
  Frm_Imp_4115.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4115.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_4115.QuickRep1.Preview;
  Frm_Imp_4115.Release;
  Fdt_principal4.spc_cons_med_statusloteconta001.close;
end;

procedure TFrm_Rel_StatusConta.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'O Mês Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'O Ano Final deve ser Preenchido !', VLD_Preenchido )) then
  Exit;
  with Fdt_principal4.spc_cons_med_statusloteconta001 do
  begin
    close;
    ParamByName('@dtreferenciainicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciafinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    open;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_med_statusloteconta001;
  //Frm_Bas_Impressao.FCampo1 := edt_dtsistema_tmt.Text;
  //Frm_Bas_Impressao.FCampo2 := cbx_cod_corprocesso.Text;
  //Frm_Bas_Impressao.FCampo3 := RadioGroup1.Items[RadioGroup1.ItemIndex];
  Frm_Bas_Impressao.showReport(4243);
  fdt_principal4.spc_cons_med_statusloteconta001.Close;
end;

procedure TFrm_Rel_StatusConta.btn_itemhonorarioClick(Sender: TObject);
Var
  byt_nameofthfile: TextFile;
  str_arquiventrad, S, Algo, tipoPagto: String;
  DIF : double;
begin
  inherited;
  if CriticaParametros then
    Exit;
  STR_cod_conveniado :=  STR_RemoveChar(edt_cod_conveniado.text,'-');
  with Fdt_principal.spc_cons_med_statusloteconta do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := STR_cod_conveniado;
    ParamByName('@dtreferenciainicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciafinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    open;
  end;
  Fdt_principal.spc_cons_med_statusloteconta.First;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.Execute then
     begin
     str_arquiventrad:= SaveDialog.filename;
     AssignFile(byt_nameofthfile, str_arquiventrad);
     Rewrite (byt_nameofthfile);
     S:= 'Cód. Conv.;Nome;Seq;Nº NF;Dt. Referencia; Dt. Protocolo; Dt. Repasse;Dt. Vencimento; Pgto.; Vl. Apresentado; Vl. Recuperado; Vl. ISS, VL. Pago, Vl. Repasse, Diferença';
     Writeln(byt_nameofthfile,S);
     S:= '';
     pgb_registros.Visible:= True;
     pgb_registros.Min:= 0;
     with Fdt_principal.spc_cons_med_statusloteconta do
        while not EOF do
        begin
        pgb_registros.Position:= pgb_registros.Position + 1;
        if (FieldByName('vlpago_cta').AsFloat+FieldByName('vlrecuperado_cta').AsFloat+FieldByName('vlISS_cta').AsFloat)
            = FieldByName('vlrepasse_cta').AsFloat then
              tipoPagto := 'VR'
            else
              tipoPagto := 'VA';
        DIF := (FieldByName('vlapresentado_cta').AsFloat - FieldByName('vlrepasse_cta').AsFloat);

        S:= FieldByName('cod_conveniado').AsString + ';' +
            FieldByName('nome_con').AsString + ';' +
            FieldByName('sequencia_cta').AsString + ';' +
            FieldByName('nf_cta').AsString + ';' +
            FieldByName('dtreferencia_cta').AsString + ';' +
            FieldByName('dtrecebimentoNF_cta').AsString + ';' +
            FieldByName('dtrepasse_cta').AsString + ';' +
            FieldByName('dtvencimento_cta').AsString + ';' +
            tipoPagto + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlapresentado_cta').AsFloat) + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlrecuperado_cta').AsFloat) + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlISS_cta').AsFloat) + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlpago_cta').AsFloat) + ';' +
            FormatFloat('###,###,##0.00', FieldByName('vlrepasse_cta').AsFloat) + ';' +
            FormatFloat('###,###,##0.00',DIF);
        Writeln(byt_nameofthfile, S);
        Next;
        end;
    Closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
    end;
  pgb_registros.Visible:= False;
  Fdt_principal.spc_cons_med_statusloteconta.Close;
  if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self)
     then Exit ;
  Algo:= SaveDialog.InitialDir + str_arquiventrad;
  ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);
end;

end.

