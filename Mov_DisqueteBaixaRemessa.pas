unit Mov_DisqueteBaixaRemessa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox;

type
  TFrm_Mov_DisqueteBaixaRemessa = class(TFrm_Bas_TelaPadrao)
    btn_carregarArquivo: TPDJButton;
    Panel7: TPanel;
    cbx_cod_mes: TBComboBox;
    edt_ano: TBEdit;
    dlg_leitura: TOpenDialog;
    ProgressBar1: TProgressBar;
    lbl_linha: TLabel;
    btn_atualizaCadastro: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_carregarArquivoClick(Sender: TObject);
    procedure btn_atualizaCadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia: String ;
  end;

var
  Frm_Mov_DisqueteBaixaRemessa: TFrm_Mov_DisqueteBaixaRemessa;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Obj, Fun_Acesso ;

{$R *.DFM}

procedure TFrm_Mov_DisqueteBaixaRemessa.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Carregar Arquivo Magn�tico ( Disquete ) de Baixas de Boletos Banc�rios' ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

procedure TFrm_Mov_DisqueteBaixaRemessa.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
end;

procedure TFrm_Mov_DisqueteBaixaRemessa.btn_carregarArquivoClick(Sender: TObject);
  procedure CarregarArquivo;
  var
    nomearquivo, registro : string ;
    Arq : TextFile;
    Seq, TlItem, TlLinha, SeqItm : Integer ;
    s, nossonum, dtreferencia_abx, inscricao_ben, titulacartei_ben, dtpagto_abx, dtbaixa_abx, vldesconto_abx, cod_tarifa, vlpago_abx : string ;
  begin
    if dlg_leitura.execute then begin
      nomearquivo := dlg_leitura.filename;
      AssignFile(Arq, nomearquivo);
      Reset (Arq);
      //Verifica o Tamanho do Arquivo se � V�lido
      if FileSize(Arq) < 1 then begin
        Dlg_Erro('N�o foi poss�vel Carregar a Baixa ! O arquivo est� vazio.',self);
        closefile (Arq);
        Exit;
      end;
      DB_BeginTrans;
      ProgressBar1.position := 0 ;
      ProgressBar1.Visible := true ;
      lbl_linha.visible := true ;
      ProgressBar1.max := FileSize (Arq);// - 150 ;
      dtreferencia_abx := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
      if length(registro) <= 150 then begin
      Readln (Arq, registro);
        while not EOF(Arq) do begin
          with ProgressBar1 do begin
            position := position + 1
          end;
          lbl_linha.Caption := 'Total de Registros Lidos/Carregadas : '+IntToStr(ProgressBar1.Position);
          Application.ProcessMessages;
          Decimalseparator := '.' ;         
          if copy(registro,14,1) = 'T' then begin
            nossonum := copy(registro,38,12);
            s := trim(copy(registro,59,08));
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
          Readln (Arq, registro);
          if copy(registro,14,1) = 'U' then begin
            dtpagto_abx := copy(registro,140,02)+'/'+copy(registro,138,02)+'/'+copy(registro,142,04);
            if copy(registro,148,02) = '00' then
              dtbaixa_abx := dtpagto_abx
            else
              dtbaixa_abx := copy(registro,148,02)+'/'+copy(registro,146,02)+'/'+copy(registro,150,04);
            vlpago_abx := FloatToStr(StrToFloat(copy(registro,78,15))/100);
            if (trim(vldesconto_abx) <> '') and (trim(vldesconto_abx) <> '0') then
              DB_ExecSQL('insert into tbl_arqbaixabanco values ('+dtreferencia_abx+', '+
              inscricao_ben+', '+titulacartei_ben+', '''+dtpagto_abx+''', '''+dtbaixa_abx+
              ''', '''+vldesconto_abx+''', '+cod_tarifa+', '''+vlpago_abx+''', '''+nossonum+''')');
          end;
        end;
      end;
      DB_Commit;
    end;
    Decimalseparator := ',' ;
    ProgressBar1.Visible := false ;
    lbl_linha.visible := false ;
  end;
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Refer�ncia da Conta deve ser Preenchida !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia da Conta deve ser Preenchida !', VLD_Preenchido ))
  then exit ;
  CarregarArquivo;
  EscreveLog(btn_carregarArquivo);
end;

procedure TFrm_Mov_DisqueteBaixaRemessa.btn_atualizaCadastroClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Refer�ncia da Conta deve ser Preenchida !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia da Conta deve ser Preenchida !', VLD_Preenchido ))
  then exit ;
  DB_ExecSQL('EXEC spc_adm_baixarretornoremessa  '''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''');
  EscreveLog(btn_atualizaCadastro);
end;

end.



