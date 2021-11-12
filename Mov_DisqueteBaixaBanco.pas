unit Mov_DisqueteBaixaBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox;

type
  TFrm_Mov_DisqueteBaixaBanco = class(TFrm_Bas_TelaPadrao)
    dlg_leitura: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    btn_carregarArquivo: TPDJButton;
    btn_atualizaCadastro: TPDJButton;
    ProgressBar1: TProgressBar;
    lbl_linha: TLabel;
    Panel7: TPanel;
    cbx_cod_mes: TBComboBox;
    edt_ano: TBEdit;
    stg_audi: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_carregarArquivoClick(Sender: TObject);
    procedure btn_atualizaCadastroClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia: String ;
  end;

var
  Frm_Mov_DisqueteBaixaBanco: TFrm_Mov_DisqueteBaixaBanco;
  ChaveExp: Integer;
  nomearquivo: String;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Obj, Fun_Acesso;

{$R *.DFM}

procedure TFrm_Mov_DisqueteBaixaBanco.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Carregar Arquivo Magnético ( Disquete ) de Baixas de Boletos Bancários' ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

function Arredondar(Valor: Double; Dec: Integer): Double;
var valor1, Numero1, Numero2, Numero3: Double;
begin
  Valor1:=Exp(Ln(10) * (Dec + 1));
  Numero1:=Int(Valor * Valor1);
  Numero2:=(Numero1 / 10);
  Numero3:=Round(Numero2);
  Result:=(Numero3 / (Exp(Ln(10) * Dec)));
end;

function tbFileSize(const FileName: string): integer;
var
  SR: TSearchRec;
  I: integer;
begin
  I := FindFirst(FileName, faArchive, SR);
  try
    if I = 0 then
      Result := SR.Size
    else
      Result := -1;
  finally
    FindClose(SR);
  end;
end;

procedure TFrm_Mov_DisqueteBaixaBanco.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
  lbl_linha.Caption:= 'Total';
  ProgressBar1.Visible := False;
  ProgressBar1.Position:= 0;
end;

procedure TFrm_Mov_DisqueteBaixaBanco.btn_carregarArquivoClick(Sender: TObject);
procedure CarregarArquivo;
var
  registro, TamArquivo: string ;
  Arq : TextFile;
  TamArq: Real;
  Seq, TlItem, TlLinha, SeqItm, WConta: Integer ;
  WValor: Real;
  s, nossonum, dtreferencia_abx, inscricao_ben, titulacartei_ben, dtpagto_abx, dtbaixa_abx, vldesconto_abx, cod_tarifa, vlpago_abx, vljuros : string ;
begin
    if dlg_leitura.execute then begin
      nomearquivo := dlg_leitura.filename;
      AssignFile(Arq, nomearquivo);
      Reset (Arq);
      //Verifica o Tamanho do Arquivo se é Válido
      if FileSize(Arq) < 1 then begin
        Dlg_Erro('Não foi possível Carregar a Baixa ! O arquivo está vazio.',self);
        closefile (Arq);
        Exit;
      end;
      Read(Arq, registro);
      if copy(registro,35,7) <> '2276147' then begin
        Dlg_Erro('Arquivo com Layout Inválido.',self);
        closefile (Arq);
        Exit;
      end;
      DB_BeginTrans;
      ProgressBar1.position := 0 ;
      WConta:= 0;
      WValor:= 0;
      ProgressBar1.Visible := true ;
      lbl_linha.visible := true ;
      TamArq:= tbFileSize(nomearquivo) / 240;
      TamArquivo:= FloatToStr(Arredondar(TamArq,0));
      ProgressBar1.max:= StrToInt(TamArquivo);
      dtreferencia_abx := ''''+cbx_cod_mes.getStrItemValue + '/01/'+edt_ano.text+'''';
      if length(registro) <= 250 then begin
//      Readln (Arq, registro);
        while not EOF(Arq) do begin
          with ProgressBar1 do begin
            position := position + 1
          end;
          Readln (Arq, registro);
          lbl_linha.Caption := 'Total de Registros Lidos/Carregadas : '+IntToStr(ProgressBar1.Position);
          Application.ProcessMessages;
          Decimalseparator := '.' ;
          if copy(registro,14,1) = 'T' then begin
            nossonum := copy(registro,38,20);
            s := trim(copy(registro,59,15));
            titulacartei_ben := copy(s,length(s)-1, 2);
            titulacartei_ben := STR_RemoveChars(titulacartei_ben);
//            s := STR_RemoveChars(s);
            inscricao_ben := copy(s,1,length(s)-2);
            inscricao_ben := STR_RemoveChars(inscricao_ben);
            if (titulacartei_ben = '') or (trim(titulacartei_ben) = '-') then
              titulacartei_ben := copy(registro,67,02);
            cod_tarifa := STR_AddZeros(copy(registro,118,03),3);
            vldesconto_abx := FloatToStr(StrToFloat(copy(registro,82,15))/100);
          end;
//          Readln (Arq, registro);
          if copy(registro,14,1) = 'U' then begin
            dtpagto_abx := copy(registro,140,02)+'/'+copy(registro,138,02)+'/'+copy(registro,142,04);
            if copy(registro,148,02) = '00' then
              dtbaixa_abx := dtpagto_abx
            else
              dtbaixa_abx := copy(registro,148,02)+'/'+copy(registro,146,02)+'/'+copy(registro,150,04);
            vlpago_abx := FloatToStr(StrToFloat(copy(registro,78,15))/100);
            vljuros := FloatToStr(StrToFloat(copy(registro,25,08))/100);
            Inc(WConta);
            WValor:= WValor + StrToFloat(vlpago_abx);
            if (trim(vldesconto_abx) <> '') and (trim(vldesconto_abx) <> '0') then
                if DB_ExecSQL('insert into tbl_arqbaixabanco (dtreferencia_abx, inscricao_ben, '+
                 'titulacartei_ben, dtpagto_abx, dtbaixa_abx, vldesconto_abx, cod_tarifa, vlpago_abx, '+
                 'nossonumero_abx, vljurosmulta_abx) values ('+dtreferencia_abx+', '+
                 inscricao_ben+', '+titulacartei_ben+', '''+dtpagto_abx+''', '''+dtbaixa_abx+
                 ''', '''+vldesconto_abx+''', '+cod_tarifa+', '''+vlpago_abx+''', '''+nossonum+''', '''+
                 vljuros+''')') = False then
                 begin
                 DB_RollBack;
                 GeraAuditoria(0, '0', 'Erro, carga já efetuada do arquivo '+ nomearquivo, cbx_cod_mes.Text + '/' + edt_ano.Text, 0);
                 Frm_Mov_DisqueteBaixaBanco.FormShow(Self);
                 Exit;
                 end;
          end;
        end;
      end;
      DB_Commit;
      GeraAuditoria(0, '0', 'Carregado ' + nomearquivo +', '+IntToStr(WConta) +
                    ' Títulos, R$ ' + FormatFloat('###,###,##0.00', WValor), cbx_cod_mes.Text + '/' + edt_ano.Text, 0);
      Dlg_Ok('Arquivo carregado com Sucesso, ' +IntToStr(WConta) + ' Títulos, R$ ' + FormatFloat('###,###,##0.00', WValor), self);
    end;
    Decimalseparator := ',' ;
    ProgressBar1.Visible := false ;
    lbl_linha.visible := false ;
  end;
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência da Conta deve ser Preenchida !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referência da Conta deve ser Preenchida !', VLD_Preenchido ))
  then exit ;
  CarregarArquivo;
  EscreveLog(btn_carregarArquivo.name);
end;

procedure TFrm_Mov_DisqueteBaixaBanco.btn_atualizaCadastroClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de referência da conta deve ser preenchida !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(edt_ano.name, 'Ano de referência da conta deve ser preenchida !', VLD_Preenchido ))
  then exit ;
  DB_ExecSQL('EXEC spc_cont_baixardescontosbanco  '''+cbx_cod_mes.getStrItemValue + '/01/'+edt_ano.text+'''');
  EscreveLog(btn_atualizaCadastro.name);
  GeraAuditoria(0,'0', 'Atualizado Cadastro ' + nomearquivo, cbx_cod_mes.Text + '/' + edt_ano.Text, 0);
end;

procedure TFrm_Mov_DisqueteBaixaBanco.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 999999999;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

procedure TFrm_Mov_DisqueteBaixaBanco.stg_audiDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S: String;
  drawrect :trect;
begin
  inherited;
  stg_audi.Brush.Style := (bsSolid);
  if Arow = 0 then
     begin
     stg_audi.Canvas.Font.Style:= [fsbold]; // negrito
     stg_audi.Canvas.Brush.Color:= clBtnFace;
     end
  else
     stg_audi.Canvas.Font.Style:=[];

  S:= (Sender as TStringgrid).Cells[ACol, ARow];
  if Length(S) > 0 then
    begin
    drawrect := rect;
    DrawText((Sender As TStringgrid).canvas.handle, Pchar(S), Length(S), drawrect, dt_calcrect or dt_wordbreak or dt_left );
    if (drawrect.bottom - drawrect.top) > (Sender As TStringgrid).RowHeights[Arow] then
       (Sender As TStringgrid).RowHeights[Arow]:= (drawrect.bottom - drawrect.top)  // changing the row height fires the event again!
    else
      begin
      drawrect.Right := rect.right;
      (Sender As TStringgrid).canvas.fillrect(drawrect);
      DrawText((Sender As TStringgrid).canvas.handle, Pchar(S), Length(S), drawrect, dt_wordbreak or dt_left);
      end;
    end;
end;

end.



