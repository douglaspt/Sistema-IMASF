unit Rel_3086;

interface

uses
  Windows, Messages, Bas_TelaPadrao, DCChoice, StdCtrls, ExtCtrls, ComCtrls,
  PDJButton, jpeg, Controls, Classes, Dialogs, SysUtils, Graphics, Forms,
  DB, Grids, DBGrids, Buttons, Mask, DBCtrls, QRExport, ShellApi, ComObj, FileCtrl;

type
  TFrm_Rel_3086 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    edt_dtinscricaoIni: TDCDateEdit;
    edt_dtinscricaoFin: TDCDateEdit;
    btn_inscritos: TPDJButton;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    edt_dtplanoIni: TDCDateEdit;
    edt_dtplanoFin: TDCDateEdit;
    btn_transfPlano: TPDJButton;
    Panel4: TPanel;
    edt_dtinscricaoIni02: TDCDateEdit;
    edt_dtinscricaoFin02: TDCDateEdit;
    GroupBox3: TGroupBox;
    Panel6: TPanel;
    edt_dtsituacaoIni: TDCDateEdit;
    edt_dtsituacaoFin: TDCDateEdit;
    btn_falecimento: TPDJButton;
    btn_definitivo: TPDJButton;
    btn_cancelados: TPDJButton;
    GroupBox4: TGroupBox;
    Panel8: TPanel;
    edt_dtplanoIni02: TDCDateEdit;
    edt_dtplanoFin02: TDCDateEdit;
    btn_PFGBIMASF: TPDJButton;
    Panel9: TPanel;
    edt_dtinscricaoIni03: TDCDateEdit;
    edt_dtinscricaoFin03: TDCDateEdit;
    btn_inscritosCSV: TPDJButton;
    btn_canceladosCSV: TPDJButton;
    SaveDialog: TSaveDialog;
    pgb_portal: TProgressBar;
    btn_transfPlanoCSV: TPDJButton;
    btn_PFGBIMASFCSV: TPDJButton;
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btn_inscritosClick(Sender: TObject);
    procedure btn_transfPlanoClick(Sender: TObject);
    procedure btn_falecimentoClick(Sender: TObject);
    procedure btn_definitivoClick(Sender: TObject);
    procedure btn_canceladosClick(Sender: TObject);
    procedure btn_PFGBIMASFClick(Sender: TObject);
    procedure btn_canceladosCSVClick(Sender: TObject);
    procedure btn_inscritosCSVClick(Sender: TObject);
    procedure btn_transfPlanoCSVClick(Sender: TObject);
    procedure btn_PFGBIMASFCSVClick(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt, S, FArquivo : String ;
    procedure Cancelados(situacao : String);
    procedure Inscritos;
    procedure IMASFPFGB;
    procedure PFGBIMASF;
    procedure GeraCSV(titulo : String);

  public
    { Public declarations }
    FMesReferencia, FAnoReferencia, FEmpresaFolha : String ;
    WConta, WContb: Integer;
    WNomeSituacao: String;
  end;

var
  Frm_Rel_3086: TFrm_Rel_3086;
  str_arquiventrad, s, Algo: String;
  byt_nameofthfile : TextFile;

implementation

uses Fun_ConsCadastro, Constantes, Fun_DB, Dlg_Mensagem, Fun_obj,
     dtm_principal3, Bas_Impressao, dtm_principal2, dtm_principal,
  dtm_principal4, Fun_Data;

{$R *.DFM}

procedure TFrm_Rel_3086.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Rel_3086.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  edt_dtinscricaoIni02.text := '01/01/1966';
  edt_dtinscricaoIni03.text := '01/01/1966';
end;

procedure TFrm_Rel_3086.Inscritos;
begin
//cbx_cod_empresafolha.ItemIndex:= -1;
  if (not BAS_ValidarCampo(edt_dtinscricaoIni.name, 'A Data de Inscrição Inicial deve ser Preenchida!', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtinscricaoFin.name, 'A Data de Inscrição Final deve ser Preenchida!', VLD_DataPreenchida )) then
    Exit;

  with fdt_principal4.spc_cons_adm_fechamentoMensalADM do
  begin
    close;
    ParamByName('@dtinscricaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtinscricaoIni.Date);
    ParamByName('@dtinscricaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtinscricaoFin.Date);
    ParamByName('@dtsituacaoIni').AsString := '';
    ParamByName('@dtsituacaoFin').AsString := '';
    ParamByName('@dtplanoIni').AsString := '';
    ParamByName('@dtplanoFin').AsString := '';
    ParamByName('@situacao').AsString := '';
    ParamByName('@tipoSit').AsInteger := 1;
    if cbx_cod_empresafolha.ItemIndex > -1 then
       ParamByName('@cod_empresafolha').AsString:= cbx_cod_empresafolha.ValueItem
    else
       ParamByName('@cod_empresafolha').AsString:= '0';
    ParamByName('@cod_plano').AsString := '';   

    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
end;

procedure TFrm_Rel_3086.btn_inscritosClick(Sender: TObject);
begin
  inherited;
  Inscritos;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_fechamentoMensalADM;
  Frm_Bas_Impressao.FCampo1:= 'BENEFICIÁRIOS INCLUSOS';
  Frm_Bas_Impressao.FCampo2 := edt_dtinscricaoIni.Text+' a '+edt_dtinscricaoFin.Text;
  Frm_Bas_Impressao.showReport(4257);
  fdt_principal4.spc_cons_adm_fechamentoMensalADM.close;
end;



procedure TFrm_Rel_3086.IMASFPFGB;
begin
//cbx_cod_empresafolha.ItemIndex:= -1;
  if (not BAS_ValidarCampo(edt_dtinscricaoIni02.name, 'A Data de Inscrição Inicial deve ser Preenchida!', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtinscricaoFin02.name, 'A Data de Inscrição Final deve ser Preenchida!', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtplanoIni.name, 'A Data do Plano Inicial deve ser Preenchida!', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtplanoFin.name, 'A Data do Plano Final deve ser Preenchida!', VLD_DataPreenchida )) then
    Exit;

  with fdt_principal4.spc_cons_adm_fechamentoMensalADM do
  begin
    close;
    ParamByName('@dtinscricaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtinscricaoIni02.Date);
    ParamByName('@dtinscricaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtinscricaoFin02.Date);
    ParamByName('@dtsituacaoIni').AsString := '';
    ParamByName('@dtsituacaoFin').AsString := '';
    ParamByName('@dtplanoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtplanoIni.Date);
    ParamByName('@dtplanoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtplanoFin.Date);
    ParamByName('@situacao').AsString := '';
    ParamByName('@tipoSit').AsInteger := 1;
    if cbx_cod_empresafolha.ItemIndex > -1 then
       ParamByName('@cod_empresafolha').AsString:= cbx_cod_empresafolha.ValueItem
    else
       ParamByName('@cod_empresafolha').AsString:= '0';
    ParamByName('@cod_plano').AsString := '1,6';   

    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
end;

procedure TFrm_Rel_3086.btn_transfPlanoClick(Sender: TObject);
begin
  inherited;
  IMASFPFGB;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_fechamentoMensalADM;
  Frm_Bas_Impressao.FCampo1:= 'TRANSFERÊNCIA IMASF PARA PFGB';
  Frm_Bas_Impressao.FCampo2 := edt_dtplanoIni.Text+' a '+edt_dtplanoFin.Text;
  Frm_Bas_Impressao.showReport(4257);
  fdt_principal4.spc_cons_adm_fechamentoMensalADM.close;
end;

procedure TFrm_Rel_3086.Cancelados(situacao : String);
begin
  //cbx_cod_empresafolha.ItemIndex:= -1;
  if (not BAS_ValidarCampo(edt_dtsituacaoIni.name, 'A Data de Situação Inicial deve ser Preenchida!', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtsituacaoFin.name, 'A Data de Situação Final deve ser Preenchida!', VLD_DataPreenchida )) then
    Exit;

  with fdt_principal4.spc_cons_adm_fechamentoMensalADM do
  begin
    close;
    ParamByName('@dtinscricaoIni').AsString := '';
    ParamByName('@dtinscricaoFin').AsString := '';
    ParamByName('@dtsituacaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtsituacaoIni.Date);
    ParamByName('@dtsituacaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtsituacaoFin.Date);
    ParamByName('@dtplanoIni').AsString := '';
    ParamByName('@dtplanoFin').AsString := '';
    ParamByName('@situacao').AsString := situacao;
    ParamByName('@tipoSit').AsInteger := 2;
    if cbx_cod_empresafolha.ItemIndex > -1 then
       ParamByName('@cod_empresafolha').AsString:= cbx_cod_empresafolha.ValueItem
    else
       ParamByName('@cod_empresafolha').AsString:= '0';
    ParamByName('@cod_plano').AsString := '';   

    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
end;

procedure TFrm_Rel_3086.btn_falecimentoClick(Sender: TObject);
begin
  inherited;
  Cancelados('4');
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_fechamentoMensalADM;
  Frm_Bas_Impressao.FCampo1:= 'CANCELAMENTO POR FALECIMENTO';
  Frm_Bas_Impressao.FCampo2 := edt_dtsituacaoIni.Text+' a '+edt_dtsituacaoFin.Text;
  Frm_Bas_Impressao.showReport(4257);
  fdt_principal4.spc_cons_adm_fechamentoMensalADM.close;
end;

procedure TFrm_Rel_3086.btn_definitivoClick(Sender: TObject);
begin
  inherited;
  Cancelados('31');
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_fechamentoMensalADM;
  Frm_Bas_Impressao.FCampo1:= 'CANCELAMENTO DEFINITIVO';
  Frm_Bas_Impressao.FCampo2 := edt_dtsituacaoIni.Text+' a '+edt_dtsituacaoFin.Text;
  Frm_Bas_Impressao.showReport(4257);
  fdt_principal4.spc_cons_adm_fechamentoMensalADM.close;
end;

procedure TFrm_Rel_3086.btn_canceladosClick(Sender: TObject);
begin
  inherited;
  Cancelados('3,6,9');
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_fechamentoMensalADM;
  Frm_Bas_Impressao.FCampo1:= 'CANCELAMENTO';
  Frm_Bas_Impressao.FCampo2 := edt_dtsituacaoIni.Text+' a '+edt_dtsituacaoFin.Text;
  Frm_Bas_Impressao.showReport(4257);
  fdt_principal4.spc_cons_adm_fechamentoMensalADM.close;
end;

procedure TFrm_Rel_3086.PFGBIMASF;
begin
//cbx_cod_empresafolha.ItemIndex:= -1;
  if (not BAS_ValidarCampo(edt_dtinscricaoIni03.name, 'A Data de Inscrição Inicial deve ser Preenchida!', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtinscricaoFin03.name, 'A Data de Inscrição Final deve ser Preenchida!', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtplanoIni02.name, 'A Data do Plano Inicial deve ser Preenchida!', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtplanoFin02.name, 'A Data do Plano Final deve ser Preenchida!', VLD_DataPreenchida )) then
    Exit;

  with fdt_principal4.spc_cons_adm_fechamentoMensalADM do
  begin
    close;
    ParamByName('@dtinscricaoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtinscricaoIni03.Date);
    ParamByName('@dtinscricaoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtinscricaoFin03.Date);
    ParamByName('@dtsituacaoIni').AsString := '';
    ParamByName('@dtsituacaoFin').AsString := '';
    ParamByName('@dtplanoIni').AsString := Data_Format('mm/dd/yyyy',edt_dtplanoIni02.Date);
    ParamByName('@dtplanoFin').AsString := Data_Format('mm/dd/yyyy',edt_dtplanoFin02.Date);
    ParamByName('@situacao').AsString := '';
    ParamByName('@tipoSit').AsInteger := 1;
    if cbx_cod_empresafolha.ItemIndex > -1 then
       ParamByName('@cod_empresafolha').AsString:= cbx_cod_empresafolha.ValueItem
    else
       ParamByName('@cod_empresafolha').AsString:= '0';
    ParamByName('@cod_plano').AsString := '2,3';

    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
end;

procedure TFrm_Rel_3086.btn_PFGBIMASFClick(Sender: TObject);
begin
  inherited;
  PFGBIMASF;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_fechamentoMensalADM;
  Frm_Bas_Impressao.FCampo1:= 'TRANSFERÊNCIA PFGB PARA IMASF';
  Frm_Bas_Impressao.FCampo2 := edt_dtplanoIni.Text+' a '+edt_dtplanoFin.Text;
  Frm_Bas_Impressao.showReport(4257);
  fdt_principal4.spc_cons_adm_fechamentoMensalADM.close;
end;

procedure TFrm_Rel_3086.btn_canceladosCSVClick(Sender: TObject);
begin
  inherited;
  Cancelados('3,6,9,4,31');
  GeraCSV('CANCELADOS');
end;

procedure TFrm_Rel_3086.GeraCSV(titulo : String);
begin
  SaveDialog.DefaultExt:= 'csv';
  SaveDialog.Filter:= 'csv';
  SaveDialog.InitialDir := 'W:\Fechamento Mensal\';
  SaveDialog.FileName := titulo;
  if DirectoryExists('W:Portal') then
  begin
    FArquivo := 'W:\Fechamento Mensal\'+titulo+'.csv';
  end
  else
  begin
    if SaveDialog.Execute then
      ExtractFilePath(SaveDialog.FileName);
      FArquivo:= ExtractFilePath(SaveDialog.FileName)+titulo+'.csv';
  end;
  AssignFile(byt_nameofthfile, FArquivo);
  Rewrite (byt_nameofthfile);
  S := 'MATRICULA;DIG;INSCRICAO;NOME;CPF;PARENTESCO;PLANO;NASCIMENTO';
  Writeln(byt_nameofthfile, S);
  pgb_portal.Visible:= True;
  pgb_portal.Min:= 0;
  try
    with fdt_principal4.spc_cons_adm_fechamentoMensalADM do
    begin
      while not EOF do
      begin
        pgb_portal.Position:= pgb_portal.Position + 1;
        Application.ProcessMessages;
        S:= FieldByName('matriculadebito_seg').AsString + ';' +
        FieldByName('digitomatdeb_seg').AsString + ';' +
        FieldByName('inscricao_ben').AsString + ';' +
        FieldByName('nome_ben').AsString + ';' +
        FieldByName('cpf_ben').AsString + ';' +
        FieldByName('nome_gra').AsString + ';' +
        FieldByName('plano').AsString + ';' +
        FieldByName('dtnascim_ben').AsString;
        Writeln(byt_nameofthfile, S);
        Next;
      end;
    end;
  except
    Closefile (byt_nameofthfile);
  end;
  Closefile (byt_nameofthfile);
  Dlg_Ok('Arquivos Gerados em '+ ExtractFilePath(FArquivo),self);
  pgb_portal.Visible:= False;
end;

procedure TFrm_Rel_3086.btn_inscritosCSVClick(Sender: TObject);
begin
  inherited;
  Inscritos;
  GeraCSV('INSCRITOS');
end;

procedure TFrm_Rel_3086.btn_transfPlanoCSVClick(Sender: TObject);
begin
  inherited;
  IMASFPFGB;
  GeraCSV('IMASF_PFGB');
end;

procedure TFrm_Rel_3086.btn_PFGBIMASFCSVClick(Sender: TObject);
begin
  inherited;
  PFGBIMASF;
  GeraCSV('PFGB_IMASF');
end;

end.



