unit Imp_Basico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TFrm_Imp_Basico = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRL_codigo: TQRLabel;
    QRSysData1: TQRSysData;
    procedure QRL_codigoPrint(sender: TObject; var Value: String);
    procedure QuickRep1AfterPrint(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    FCod_Relatorio : String ;
    function SetCod_Relatorio(): String;
  public
    { Public declarations }
  end;

var
  Frm_Imp_Basico: TFrm_Imp_Basico;

implementation
Uses dtm_principal2, fun_db, dlg_mensagem, Fun_Acesso, constantes;
{$R *.DFM}

function TFrm_Imp_Basico.SetCod_Relatorio(): String;
begin
  DB_OpenSQL('select cod_telasistema from tbl_telasistema where nomefrm_tls = '''+
  copy(Name,5,length(Name)-4)+''' or nomefrm_tls = '''+copy(Name,5,length(Name)-6)+'''');
  FCod_Relatorio := 'Cod. Relatório : '+Tab.FieldByName('cod_telasistema').AsString ;
  result := FCod_Relatorio;
  DB_ClearSql;
end;


procedure TFrm_Imp_Basico.QRL_codigoPrint(sender: TObject;
  var Value: String);
begin
  value := SetCod_Relatorio + '.' + IntToStr(FCod_TelaSistema);
end;

procedure TFrm_Imp_Basico.QuickRep1AfterPrint(Sender: TObject);
begin
  EscreveLog(LOG_IMPRESSAOQR, 'Impresso Relatório "'+Name+'" '+FCod_Relatorio);
end;

procedure TFrm_Imp_Basico.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
i : Integer;
begin
  for i := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[i].ClassName = 'TQRStandardPreview' then
    Screen.Forms[i].BorderIcons:= Screen.Forms[i].BorderIcons-[biMinimize];
  end;
end;

end.
