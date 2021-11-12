unit Mov_GeraDSKDesconto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_GeraDSKDesconto = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    ProgressBar1: TProgressBar;
    lbl_linha: TLabel;
    btn_geraDisqueteDescFolha: TPDJButton;
    SaveDialog: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_geraDisqueteDescFolhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia : String ;
  end;

var
  Frm_Mov_GeraDSKDesconto: TFrm_Mov_GeraDSKDesconto;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Obj,
Fun_Acesso ;

{$R *.DFM}

procedure TFrm_Mov_GeraDSKDesconto.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Carregar Arquivo Magn�tico ( Disquete ) de Atualiza��o de Benefici�rios' ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

procedure TFrm_Mov_GeraDSKDesconto.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);  
end;

procedure TFrm_Mov_GeraDSKDesconto.btn_geraDisqueteDescFolhaClick(Sender: TObject);
var
  byt_nameofthfile : TextFile;
  str_arquiventrad,
  s : string ;
  wtl, int_tl : integer ;
begin
          if SaveDialog.execute then
  begin
    ProgressBar1.visible := true ;
  end;
  wtl := 0 ;
  lbl_linha.caption := 'Preparando para gerar o arquivo TXT';
  Application.ProcessMessages;
  str_arquiventrad := SaveDialog.filename ;
  AssignFile(byt_nameofthfile, str_arquiventrad);
  Rewrite (byt_nameofthfile);
{  DB_OpenSQL('select codigousuari, dtrefelancam, codigolancam, matricmatsai, '+
  'codigotarifa, tipdeslancam, dtprevlancam, sum(vldesclancam) as ''vldesclancam'''+
  'from tblancam '+
  'where codigousuari = '''+dtm_datamodule.qry_tabelaempflh.fieldbyname('codigoempflh').asstring+
  ''' and dtrefelancam = ''' + STR_DateNoMask(EDT_DataRefe.Text) + ''' ' +
  'group by codigousuari, dtrefelancam, codigolancam, '+
  'matricmatsai, codigotarifa, tipdeslancam, dtprevlancam '+
  'order by cast(matricmatsai as int) ');

  with dtm_datamodule.qryaux do begin     }
  with Fdt_principal.spc_cons_adm_descontofolha01 do begin
    close;
//    parambyname('@inscricao_ben').AsString := edt_inscricao_ben.text ;
    lbl_linha.visible := true ;
    lbl_linha.Caption := 'Abrindo Tabelas para Gera��o do Arquivo Magn�tico';
    Application.ProcessMessages;
    open;
    int_tl := recordcount ;
    ProgressBar1.Max := int_tl ;
    while not eof do begin
      S := STR_AddZeros(FieldByName('cod_empresafolha').AsString,2) ;
      S := S + FormatDateTime('yyyy',FieldByName('dtreferencia_flh').AsDateTime) ;
      S := S + FormatDateTime('mm',FieldByName('dtreferencia_flh').AsDateTime) ;
      S := S + STR_AddZeros(FieldByName('cod_tarifa').AsString,1) ;
      S := S + STR_AddZeros(FieldByName('matriculadebito_seg').AsString+FieldByName('digitomatdeb_seg').AsString,6) ;
      S := S + STR_AddZeros(FieldByName('cod_tarifa').AsString,4) ;
      S := S + '1';//STR_AddZeros(FieldByName('tipdeslancam').AsString,1) ;
      S := S + '0000' ;
      S := S + '0000' ;
      S := S + STR_AddZeros(FloatToStr(Int(FieldByName('vldesconto_adf').AsFloat*100)),12) ;
//      S := S + STR_AddZeros(FieldByName('sinalvlancam').AsFloat,1) ;
      Writeln (byt_nameofthfile, S);
      with ProgressBar1 do
        position := position + 1 ;
      lbl_linha.caption := 'Gravando lan�amento ' + inttostr(wtl) + ' de ' + IntToStr (int_tl);
      Application.ProcessMessages;
      inc(wtl) ;
      next ;
    end;
  end;
  closefile (byt_nameofthfile);
  showmessage ('Processo de grava��o efetuado com sucesso '+str_arquiventrad);
  ProgressBar1.visible := false ;
  close;
  EscreveLog(btn_geraDisqueteDescFolha.name);


{


//     while not EOF(byt_nameofthfile) do begin
     with ProgressBar1 do begin
     if position = 100 then
       position := 0
     else
       position := position + 1
     end;
     writeln(byt_nameofthfile, S ) ;
     str_codigoempres := copy(S,1,2);
     str_matricmatent := STR_RemoveZero(copy(S,3,6));
     str_inscribenefi := STR_RemoveZero(copy(S,9,5));
     str_codigotarifa := copy(S,15,3);//14,4
     str_valdesmovnto := STR_RemoveZero(STR_SubstChar(copy(S,18,13),'.',','));
{       str_valdesmovnto := copy(S,18,13);
StrToFloat(STR_SubstChar(FieldByName('valdeshistor').AsString,'.',','));
     GeraDivergencia(str_codigoempres, str_matricmatent, str_inscribenefi, str_codigotarifa, str_valdesmovnto);
     inc(wtl)
//   end;
{   closefile (byt_nameofthfile);
   frm_salvo := true ;
   showmessage ('Processo de leitura efetuado com sucesso');
   pan_barradeprogr.visible := false ;
   close;}
 inherited ;

end;

end.



