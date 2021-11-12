unit Bas_Impressao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FR_DSet, FR_DBSet, FR_Class, Db, Grids, DBGrids, FR_E_TXT, FR_E_RTF,
  FR_E_HTM, FR_E_CSV, FR_Chart, Printers, FR_Shape, QuickRpt, Qrctrls, jpeg,
  FR_Desgn, FR_OLE, FR_BarC;

type
  TFrm_Bas_Impressao = class(TForm)
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    frUserDataset1: TfrUserDataset;
    frRTFExport1: TfrRTFExport;
    frTextExport1: TfrTextExport;
    frCSVExport1: TfrCSVExport;
    frHTMExport1: TfrHTMExport;
    frChartObject1: TfrChartObject;
    PrintDialog1: TPrintDialog;
    frShapeObject1: TfrShapeObject;
    frBarCodeObject1: TfrBarCodeObject;
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure FormCreate(Sender: TObject);
    procedure frReport1EnterRect(Memo: TStringList; View: TfrView);
  private
    { Private declarations }
    FCod_Relatorio : String ;
  public
    { Public declarations }
    FMesReferencia, FCampo1, FCampo2, FCampo3, FCampo4, FCampo5, FCampo6, FCampo7, FCampo8, FCampo9,
    FCampo10, FCampo11, FCampo_Topo, FCampo_Proc, FSetorChefe, FChefe, FCargoChefe,
    FSetorResponsavel, FResponsavel, FCargoResponsavel : String;
    FNumCopias : integer;
    procedure showReport(Cod_Relatorio : Integer);
  end;

var
  Frm_Bas_Impressao: TFrm_Bas_Impressao;

implementation
uses FUN_DB, FUN_Acesso, Constantes, Bas_Preview    ;

{$R *.DFM}

procedure TFrm_Bas_Impressao.showReport(Cod_Relatorio : Integer);
var
 i : integer;
begin
  FCod_Relatorio := IntToStr(Cod_Relatorio);
  frReport1.LoadFromFile(ARQ_Relatorios+'\'+FCod_Relatorio+'.frf');
  frReport1.ShowReport;
//  for i := 0 to Printer.Printers.Count -1 do
//  begin
//    if Printer.Printers.Strings[i] = 'Microsoft XPS Document Writer' then
//      Printer.PrinterIndex := 2;
//  end;
//  Frm_Bas_Preview.PrintDialog1.Copies := FNumCopias;
  Application.ProcessMessages;
  Frm_Bas_Preview.showModal;
end;

procedure TFrm_Bas_Impressao.frReport1GetValue(const ParName: String;
  var ParValue: Variant );
function SetCod_Relatorio(): String;
begin
//  result := 'Cod. Relatório : '+ FCod_Relatorio + '.' + IntToStr(FCod_TelaSistema) ;
  result := FCod_Relatorio + '.' + IntToStr(FCod_TelaSistema) ;
end;
begin
  if ParName = 'codTela' then
    ParValue := SetCod_Relatorio;
  if ParName = 'mesReferencia' then
    ParValue := FMesReferencia;
  if ParName = 'Campo1' then
    ParValue := FCampo1;
  if ParName = 'Campo2' then
    ParValue := FCampo2;
  if ParName = 'Campo3' then
    ParValue := FCampo3;
  if ParName = 'Campo4' then
    ParValue := FCampo4;
  if ParName = 'Campo5' then
    ParValue := FCampo5;
  if ParName = 'Campo6' then
    ParValue := FCampo6;
  if ParName = 'Campo7' then
    ParValue := FCampo7;
  if ParName = 'Campo8' then
    ParValue := FCampo8;
  if ParName = 'Campo9' then
    ParValue := FCampo9;
  if ParName = 'Campo10' then
    ParValue := FCampo10;
  if ParName = 'Campo11' then
    ParValue := FCampo11;
  if ParName = 'Campo_Topo' then
    ParValue := FCampo_Topo;
  if ParName = 'Campo_Proc' then
    ParValue := FCampo_Proc;
  if ParName = 'FSetorChefe' then
    ParValue := FSetorChefe;
  if ParName = 'FChefe' then
    ParValue := FChefe;
  if ParName = 'FCargoChefe' then
    ParValue := FCargoChefe;
  if ParName = 'FSetorResponsavel' then
    ParValue := FSetorResponsavel;
  if ParName = 'FResponsavel' then
    ParValue := FResponsavel;
  if ParName = 'FCargoResponsavel' then
    ParValue := FCargoResponsavel;
end;

procedure TFrm_Bas_Impressao.FormCreate(Sender: TObject);
begin
  Frm_Bas_Impressao.frReport1.ModalPreview := false;
  Frm_Bas_Impressao.frReport1.Preview := Frm_Bas_Preview.frPreview1;
end;

procedure TFrm_Bas_Impressao.frReport1EnterRect(Memo: TStringList;
  View: TfrView);
begin
  if View.Name = 'IMAGEM_IMASF' then
    (View as TfrPictureView).Picture.LoadFromFile('C:\Sistemas\reports\LOGO_IMASF.bmp');
end;

end.
