unit Rel_3050;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3050 = class(TFrm_Bas_TelaPadrao)
    GroupBox1: TGroupBox;
    Panel6: TPanel;
    edt_dtreferencia: TDCDateEdit;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    GroupBox2: TGroupBox;
    PDJButton3: TPDJButton;
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel7: TPanel;
    edt_inscricao_ben: TDCEdit;
    Panel5: TPanel;
    edt_dtentrada_ain_Ini: TDCDateEdit;
    edt_dtentrada_ain_Fin: TDCDateEdit;
    Panel1: TPanel;
    edt_dtalta_alt_Ini: TDCDateEdit;
    edt_dtalta_alt_Fin: TDCDateEdit;
    GroupBox3: TGroupBox;
    Panel8: TPanel;
    PDJButton4: TPDJButton;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton5: TPDJButton;
    PDJButton6: TPDJButton;
    Panel9: TPanel;
    cbx_cod_plano: TDCComboBox;
    cbx_cod_tipointernacao: TDCComboBox;
    Panel10: TPanel;
    ed2_cod_conveniado: TDCChoiceEdit;
    ed2_razao_con: TDCEdit;
    btn_exportacsv: TPDJButton;
    SaveDialog: TSaveDialog;
    pgb_criar: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure ed2_cod_conveniadoButtonClick(Sender: TObject);
    procedure ed2_cod_conveniadoExit(Sender: TObject);
    procedure btn_exportacsvClick(Sender: TObject);
    procedure geracsv;
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
   CodConv, Insc, DtInterIni , DtAltaIni, DtInterFin, DtAltaFin  : String ;
    { Public declarations }
  end;

var
  Frm_Rel_3050: TFrm_Rel_3050;

implementation
uses Imp_Med_ExtratoConven001, Imp_Med_ExtratoConven002, dtm_principal4, Fun_Medico,
Fun_ConsCadastro, Constantes, Fun_Data, Dlg_Mensagem, Imp_4131,
dtm_principal, Imp_4099, Fun_Str, Imp_4103, Imp_4130, dtm_principal5,
  dtm_principal6, Bas_Impressao;

{$R *.DFM}

procedure TFrm_Rel_3050.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Extrato de Conveniados' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'C�digo, Nome do Conveniado, Raz�o Social' ;
  inherited;
end;

procedure TFrm_Rel_3050.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_3050.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_tipointernacao', 'nome_int');
  edt_dtreferencia.Date := Date;
end;

procedure TFrm_Rel_3050.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Rel_3050.CriticaParametros : Boolean ;
begin
  if (edt_cod_conveniado.Text = '') and (edt_inscricao_ben.text = '') and (edt_dtentrada_ain_Ini.Text = '')
    and (edt_dtalta_alt_Ini.Text = '') then begin
    result := true;
    Dlg_Alerta ('Preencha os campos desejado', Self);
  end else
    result := false;
end;

procedure TFrm_Rel_3050.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal4.spc_cons_med_autorizainternacao do
  begin
    close;
    if edt_cod_conveniado.Text = '' then
                 ParamByName('@cod_conveniado').AsString := '0'
    else
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@inscricao_ben').AsString :=  edt_inscricao_ben.text;
    ParamByName('@dtentrada_ain_Ini').AsString := Data_Format('mm/dd/yyyy',edt_dtentrada_ain_Ini.Date) ;
    ParamByName('@dtentrada_ain_Fin').AsString := Data_Format('mm/dd/yyyy',edt_dtentrada_ain_Fin.Date) ;
    ParamByName('@dtalta_alt_Ini').AsString := Data_Format('mm/dd/yyyy',edt_dtalta_alt_Ini.Date) ;
    ParamByName('@dtalta_alt_Fin').AsString := Data_Format('mm/dd/yyyy',edt_dtalta_alt_Fin.Date) ;
    ParamByName('@cod_plano').AsString :=  cbx_cod_plano.valueitem;
    ParamByName('@cod_tipointernacao').AsString :=  cbx_cod_tipointernacao.valueitem;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;
  end;
  Frm_Imp_4099 := TFrm_Imp_4099.Create(Self);
    if edt_cod_conveniado.text = '' then
  Frm_Imp_4099.QRLabel18.Caption := ''
  else
  Frm_Imp_4099.CodConv := edt_cod_conveniado.Text;
    if edt_inscricao_ben.text = '' then
      Frm_Imp_4099.QRLabel9.Caption := ''
    else
    Frm_Imp_4099.Insc := edt_inscricao_ben.Text;
      if edt_dtentrada_ain_Ini.text = '' then begin
      Frm_Imp_4099.QRLabel8.Caption := '';
      Frm_Imp_4099.QRLabel15.Caption := '';
      end
      else begin
      Frm_Imp_4099.DtInterIni := edt_dtentrada_ain_Ini.Text;
      Frm_Imp_4099.DtInterFin := edt_dtentrada_ain_Fin.Text;
      end;
        if edt_dtalta_alt_Ini.text = '' then begin
        Frm_Imp_4099.QRLabel12.Caption := '';
        Frm_Imp_4099.QRLabel16.Caption := '';
        end
        else begin
        Frm_Imp_4099.DtAltaIni := edt_dtalta_alt_Ini.Text;
        Frm_Imp_4099.DtAltaFin := edt_dtalta_alt_Fin.Text;
        end;
  Frm_Imp_4099.QuickRep1.Preview;
  Frm_Imp_4099.Release;
  Fdt_principal4.spc_cons_med_autorizainternacao.close;
end;

procedure TFrm_Rel_3050.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if edt_dtreferencia.Text = '' then begin
    Dlg_Alerta('� necess�rio preencher a Data de Refer�ncia!',self);
    Exit;
  end;
  if edt_dtreferencia.Date > Date then begin
    Dlg_Alerta('A Data de Refer�ncia n�o pode ser maior do que a Data de Hoje!',self);
    Exit;
  end;
  with Fdt_principal4.spc_cons_med_pacienteinternado do
  begin
    close;
    ParamByName('@dtreferencia').AsString := Data_Format('mm/dd/yyyy',edt_dtreferencia.Date) ;
//    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(ed2_cod_conveniado.text,1,5)+copy(ed2_cod_conveniado.text,7,1)));
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;
  end;
  Frm_Imp_4103 := TFrm_Imp_4103.Create(Self);
  Frm_Imp_4103.DtReferencia := edt_dtreferencia.text;
  Frm_Imp_4103.QuickRep1.Preview;
  Frm_Imp_4103.Release;
  Fdt_principal4.spc_cons_med_pacienteinternado.close;
end;

procedure TFrm_Rel_3050.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if edt_dtreferencia.Text = '' then begin
    Dlg_Alerta('� necess�rio preencher a Data de Refer�ncia!',self);
    Exit;
  end;
  if edt_dtreferencia.Date > Date then begin
    Dlg_Alerta('A Data de Refer�ncia n�o pode ser maior do que a Data de Hoje!',self);
    Exit;
  end;
  with fdt_principal5.spc_cons_med_pacienteinternadoDiario do
  begin
    close;
    ParamByName('@dtreferencia').AsString := Data_Format('mm/dd/yyyy',edt_dtreferencia.Date) ;
   // ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(ed2_cod_conveniado.text,1,5)+copy(ed2_cod_conveniado.text,7,1)));
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;
  end;
  Frm_Imp_4130 := TFrm_Imp_4130.Create(Self);
  Frm_Imp_4130.DtReferencia := edt_dtreferencia.Text;
  Frm_Imp_4130.QuickRep1.Preview;
  Frm_Imp_4130.Release;
  fdt_principal5.spc_cons_med_pacienteinternadoDiario.close;
end;

procedure TFrm_Rel_3050.PDJButton4Click(Sender: TObject);
var
dtreferencia : string;
begin
  inherited;
  if (cbx_cod_mes.Text = '') or (edt_ano.Text = '') then begin
    Dlg_Alerta('O M�s e Ano deve ser preenchido!',self);
    Exit;
  end;
  dtreferencia := '01/'+cbx_cod_mes.valueitem+'/'+edt_ano.Text;
  if StrToDate(dtreferencia) > Date then begin
    Dlg_Alerta('O M�s/Ano de Refer�ncia n�o pode ser maior do que o M�s/Ano de Refer�ncia de Hoje!',self);
    Exit;
  end;
  with fdt_principal5.spc_cons_med_pacienteinternadoTotalDiariasMensal do
  begin
    close;
    ParamByName('@dtreferencia').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;
  end;
  Frm_Imp_4131 := TFrm_Imp_4131.Create(Self);
  Frm_Imp_4131.DtReferencia := cbx_cod_mes.Text+' / '+edt_ano.Text;
  Frm_Imp_4131.QuickRep1.Preview;
  Frm_Imp_4131.Release;
  fdt_principal5.spc_cons_med_pacienteinternadoTotalDiariasMensal.close;
end;

procedure TFrm_Rel_3050.PDJButton5Click(Sender: TObject);
begin
  inherited;
  if edt_dtreferencia.Text = '' then begin
    Dlg_Alerta('� necess�rio preencher a Data de Refer�ncia!',self);
    Exit;
  end;
  if edt_dtreferencia.Date > Date then begin
    Dlg_Alerta('A Data de Refer�ncia n�o pode ser maior do que a Data de Hoje!',self);
    Exit;
  end;
  with fdt_principal6.spc_cons_med_pacienteinternadoPlano do
  begin
    close;
    ParamByName('@dtreferencia').AsString := Data_Format('mm/dd/yyyy',edt_dtreferencia.Date) ;
    if ed2_cod_conveniado.Text = '' then
      ParamByName('@cod_conveniado').AsString := '0'
    else
      ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(ed2_cod_conveniado.text,1,5)+copy(ed2_cod_conveniado.text,7,1)));
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_pacienteinternadoPlano;
  Frm_Bas_Impressao.FCampo1 := edt_dtreferencia.Text;
  if (ed2_cod_conveniado.Text <> '') then
    Frm_Bas_Impressao.FCampo2 := 'Conveniado    '+ed2_cod_conveniado.Text+'  -  '+ed2_razao_con.Text;
  Frm_Bas_Impressao.showReport(4166);
  fdt_principal6.spc_cons_med_pacienteinternadoPlano.close;
end;

procedure TFrm_Rel_3050.PDJButton6Click(Sender: TObject);
var
  dtreferencia : String;
begin
  inherited;
  if (cbx_cod_mes.Text = '') or (edt_ano.Text = '') then begin
    Dlg_Alerta('O M�s e Ano deve ser preenchido!',self);
    Exit;
  end;
  dtreferencia := '01/'+cbx_cod_mes.valueitem+'/'+edt_ano.Text;
  if StrToDate(dtreferencia) > Date then begin
    Dlg_Alerta('O M�s/Ano de Refer�ncia n�o pode ser maior do que o M�s/Ano de Refer�ncia de Hoje!',self);
    Exit;
  end;
  with fdt_principal6.spc_cons_med_pacienteinternadoPlanoMensal do
  begin
    close;
    ParamByName('@dtreferencia').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_pacienteinternadoPlanoMensal;
  Frm_Bas_Impressao.FCampo1 := 'M�s / Ano de Refer�ncia    '+cbx_cod_mes.Text+' / '+edt_ano.Text;
  Frm_Bas_Impressao.showReport(4176);
  fdt_principal6.spc_cons_med_pacienteinternadoPlanoMensal.close;
end;

procedure TFrm_Rel_3050.ed2_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  ed2_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_3050.ed2_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if ed2_cod_conveniado.text <> '' then
    ed2_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(ed2_cod_conveniado.text,1,5)+copy(ed2_cod_conveniado.text,7,1))));
end;

procedure TFrm_Rel_3050.geracsv;
var
  Stream: TFileStream;
  i: Integer;
  OutLine: string;
  sTemp: string;
begin
//  Stream := TFileStream.Create('C:\DOWN\ARQ.csv', fmCreate);
  Stream := TFileStream.Create(SaveDialog.FileName, fmCreate);
  try
// Parametros
  OutLine := '';
  if edt_dtentrada_ain_Ini.Text <> '' then
     begin
     sTemp := 'Dt.Interna��o de;' +  edt_dtentrada_ain_Ini.Text + ';at�;' + edt_dtentrada_ain_Fin.Text;
     OutLine := OutLine + sTemp + ';';
     SetLength(OutLine, Length(OutLine) - 1);
     Stream.Write(OutLine[1], Length(OutLine) * SizeOf(Char));
     Stream.Write(#13#10, Length(#13#10));
     end;

  OutLine := '';
  if edt_dtalta_alt_Ini.Text <> '' then
     begin
     sTemp := 'Dt.Alta de;' +  edt_dtalta_alt_Ini.Text + ';at�;' + edt_dtalta_alt_Fin.Text;
     OutLine := OutLine + sTemp + ';';
     SetLength(OutLine, Length(OutLine) - 1);
     Stream.Write(OutLine[1], Length(OutLine) * SizeOf(Char));
     Stream.Write(#13#10, Length(#13#10));
     Stream.Write(#13#10, Length(#13#10));
     end;

// Monta Cabe�alho
    while not Fdt_principal4.spc_cons_med_autorizainternacao.Eof do
    begin
      // You'll need to add your special handling here where OutLine is built
      OutLine := '';
      for i := 0 to Fdt_principal4.spc_cons_med_autorizainternacao.FieldCount - 1 do
      begin
        sTemp := Fdt_principal4.spc_cons_med_autorizainternacao.Fields[I].DisplayName;
        // Special handling to sTemp here
        OutLine := OutLine + sTemp + ';';
      end;
      // Remove final unnecessary ';'
      SetLength(OutLine, Length(OutLine) - 1);
      // Write line to file
      Stream.Write(OutLine[1], Length(OutLine) * SizeOf(Char));
      // Write line ending
      Stream.Write(#13#10, Length(#13#10));
      Fdt_principal4.spc_cons_med_autorizainternacao.Last;
    end;
  finally
  begin
// Grava Registros
   Fdt_principal4.spc_cons_med_autorizainternacao.First;
    while not Fdt_principal4.spc_cons_med_autorizainternacao.Eof do
    begin
      OutLine := '';
      for i := 0 to Fdt_principal4.spc_cons_med_autorizainternacao.FieldCount - 1 do
      begin
        sTemp := Fdt_principal4.spc_cons_med_autorizainternacao.Fields[i].AsString;
        OutLine := OutLine + sTemp + ';';
      end;
      SetLength(OutLine, Length(OutLine) - 1);
      Stream.Write(OutLine[1], Length(OutLine) * SizeOf(Char));
      Stream.Write(#13#10, Length(#13#10));
      pgb_criar.Position:= pgb_criar.Position + 1;
      Fdt_principal4.spc_cons_med_autorizainternacao.Next;
    end;
  end;
  end;
  Stream.Free;  // Saves the file
end;

procedure TFrm_Rel_3050.btn_exportacsvClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal4.spc_cons_med_autorizainternacao do
  begin
    close;
    if edt_cod_conveniado.Text = '' then
                 ParamByName('@cod_conveniado').AsString := '0'
    else
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@inscricao_ben').AsString :=  edt_inscricao_ben.text;
    ParamByName('@dtentrada_ain_Ini').AsString := Data_Format('mm/dd/yyyy',edt_dtentrada_ain_Ini.Date) ;
    ParamByName('@dtentrada_ain_Fin').AsString := Data_Format('mm/dd/yyyy',edt_dtentrada_ain_Fin.Date) ;
    ParamByName('@dtalta_alt_Ini').AsString := Data_Format('mm/dd/yyyy',edt_dtalta_alt_Ini.Date) ;
    ParamByName('@dtalta_alt_Fin').AsString := Data_Format('mm/dd/yyyy',edt_dtalta_alt_Fin.Date) ;
    ParamByName('@cod_plano').AsString :=  cbx_cod_plano.valueitem;
    ParamByName('@cod_tipointernacao').AsString :=  cbx_cod_tipointernacao.valueitem;
    open;
    if RecordCount = 0 then
      begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Exit;
      end;
  pgb_criar.Max:= RecordCount;
  end;
  if not SaveDialog.execute then
     Exit ;
  pgb_criar.Visible:= True;
  geracsv;
  pgb_criar.Visible:= False;
  Dlg_Ok('Gerado arquivo em ' + SaveDialog.FileName, Self);
  Fdt_principal4.spc_cons_med_autorizainternacao.close;

{  Frm_Imp_4099 := TFrm_Imp_4099.Create(Self);
    if edt_cod_conveniado.text = '' then
  Frm_Imp_4099.QRLabel18.Caption := ''
  else
  Frm_Imp_4099.CodConv := edt_cod_conveniado.Text;
    if edt_inscricao_ben.text = '' then
      Frm_Imp_4099.QRLabel9.Caption := ''
    else
    Frm_Imp_4099.Insc := edt_inscricao_ben.Text;
      if edt_dtentrada_ain_Ini.text = '' then begin
      Frm_Imp_4099.QRLabel8.Caption := '';
      Frm_Imp_4099.QRLabel15.Caption := '';
      end
      else begin
      Frm_Imp_4099.DtInterIni := edt_dtentrada_ain_Ini.Text;
      Frm_Imp_4099.DtInterFin := edt_dtentrada_ain_Fin.Text;
      end;
        if edt_dtalta_alt_Ini.text = '' then begin
        Frm_Imp_4099.QRLabel12.Caption := '';
        Frm_Imp_4099.QRLabel16.Caption := '';
        end
        else begin
        Frm_Imp_4099.DtAltaIni := edt_dtalta_alt_Ini.Text;
        Frm_Imp_4099.DtAltaFin := edt_dtalta_alt_Fin.Text;
        end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal4.spc_cons_med_autorizainternacao;
  Frm_Bas_Impressao.FCampo1 := 'Dt.Interna��o de ' +  edt_dtentrada_ain_Ini.Text + '  at�  ' + edt_dtentrada_ain_Fin.Text;
  Frm_Bas_Impressao.FCampo2 := 'Dt.Alta            de ' +  edt_dtalta_alt_Ini.Text + '  at�  ' + edt_dtalta_alt_Fin.Text;
  Frm_Bas_Impressao.showReport(4227);
  Fdt_principal4.spc_cons_med_autorizainternacao.close;}
end;

end.

