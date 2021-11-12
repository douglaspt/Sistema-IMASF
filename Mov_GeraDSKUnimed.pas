unit Mov_GeraDSKUnimed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_GeraDSKUnimed = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    ProgressBar1: TProgressBar;
    lbl_linha: TLabel;
    btn_geradisquetebenefi: TPDJButton;
    SaveDialog: TSaveDialog;
    Panel8: TPanel;
    cbx_cod_plano: TDCComboBox;
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    DCComboBox1: TDCComboBox;
    DCEdit1: TDCEdit;
    ProgressBar2: TProgressBar;
    PDJButton1: TPDJButton;
    Panel5: TPanel;
    DCComboBox2: TDCComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_geradisquetebenefiClick(Sender: TObject);
  private
    { Private declarations }
    wtdp : integer ;
    insc : string ;
  public
    { Public declarations }
  end;

var
  Frm_Mov_GeraDSKUnimed: TFrm_Mov_GeraDSKUnimed;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario,
  dtm_principal2, Fun_Acesso ;

{$R *.DFM}

procedure TFrm_Mov_GeraDSKUnimed.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Carregar Arquivo Magnético ( Disquete ) de Atualização de Beneficiários' ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

procedure TFrm_Mov_GeraDSKUnimed.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
end;

procedure TFrm_Mov_GeraDSKUnimed.btn_geradisquetebenefiClick(Sender: TObject);
var
  byt_nameofthfile : TextFile;
  str_arquiventrad,
  s : string ;
  wtl, int_tl : integer ;
  function verTabelaDependencia: string;
  begin
    with Fdt_principal2.spc_cons_adm_beneficiario002 do begin
      if FieldbyName('inscricao_ben').AsString <> insc then
        wtdp := 60 ;
      insc := FieldbyName('inscricao_ben').AsString ;
      if FieldbyName('titulacartei_ben').AsInteger = 0 then
        result := '00'
      else
        if (FieldbyName('nome_gra').AsString = 'Cônjuge') and (FieldbyName('sexo_ben').AsString = 'F') then
          result := '01'
        else
          if (FieldbyName('nome_gra').AsString = 'Cônjuge') and (FieldbyName('sexo_ben').AsString = 'M') then
            result := '09'
          else
            if FieldbyName('nome_gra').AsString = 'Companheiro (a)' then
              result := '02'
            else
              if FieldbyName('titulacartei_ben').AsInteger < 50 then begin
                result := STR_IntToStr(wtdp);
                wtdp := wtdp + 1 ;
              end else begin
                if wtdp < 90 then
                  wtdp := 90 ;
                result := STR_IntToStr(wtdp);
                wtdp := wtdp + 1 ;
              end;
    end;

{
              if FieldbyName('nome_gra').AsString = 'Pai (s)' then
                result := '50'
              else
                if FieldbyName('nome_gra').AsString = 'Filho (a)' then
                  result := '10'
              else
                  result := '60';
}
  end;

begin
  SaveDialog.filename := 'U'+FormatDateTime('ddmmyyyy', date)+cbx_cod_plano.ValueItem+'.txt';
  if SaveDialog.execute then
  begin
    ProgressBar1.visible := true ;
    lbl_linha.visible := true ;
  end;
  wtl := 1 ;
  lbl_linha.caption := 'Preparando para gerar o arquivo TXT';
  Application.ProcessMessages;
  str_arquiventrad := SaveDialog.filename ;
  AssignFile(byt_nameofthfile, str_arquiventrad);
  Rewrite (byt_nameofthfile);
  s := '00000001';
  s := s + FormatDateTime('ddmmyyyy', date);
  s := s + STR_AddSpaces('', 202);
  Writeln (byt_nameofthfile, S);
  with Fdt_principal2.spc_cons_adm_beneficiario002 do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := '0';
    ParamByName('@titulacartei_ben').AsString := '';
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueitem ;
    ParamByName('@tipo_sit').AsString := '1';
    open;
    ProgressBar1.Max := RecordCount ;
    first;
    while not eof do begin
      with ProgressBar1 do
        position := position + 1 ;
      lbl_linha.caption := 'Gravando lançamento ' + inttostr(wtl) + ' de ' + IntToStr (int_tl);
      Application.ProcessMessages;
      inc(wtl) ;
      s := STR_AddZeros(str_inttostr(wtl), 8);
      s := s + '0110083';
      s := s + STR_AddZeros(FieldbyName('inscricao_ben').AsString, 6);//Cod da Familia
      s := s + verTabelaDependencia;
      s := s + STR_GeraDigito11(copy(s, 9, 16)) ;
      s := s + STR_AddSpaces(FieldbyName('nomecarteira_ben').AsString, 29);
      s := s + FieldbyName('sexo_ben').AsString;
      s := s + FormatDateTime('ddmmyyyy', FieldbyName('dtnascim_ben').AsDateTime);
      if FieldbyName('cod_estadociv').AsString <> '6' then// Isso porque o unico codigo que é diferente na tabela unimed é o cod. 6
        s := s + FieldbyName('cod_estadociv').AsString
      else
        s := s + '7';
      s := s + STR_AddSpaces(STR_RemoveChars(FieldbyName('cep_ben').AsString), 8);
      s := s + STR_AddSpaces(FieldbyName('endereco_ben').AsString, 29);
      s := s + STR_AddSpaces('', 6);//Numero
      s := s + STR_AddSpaces(FieldbyName('bairro_ben').AsString, 14);
      s := s + STR_AddSpaces(FieldbyName('cidade_ben').AsString, 21);
      s := s + FieldbyName('sigla_uf').AsString;
      s := s + STR_AddSpaces(FieldbyName('foneresi_ben').AsString, 10);
      s := s + STR_AddSpaces('', 5);//cod lotação
      s := s + STR_AddSpaces('', 24);//nome lotação
      s := s + STR_AddSpaces(STR_RemoveChars(FieldbyName('rg_ben').AsString), 15);
      s := s + STR_AddSpaces(STR_RemoveChars(FieldbyName('cpf_ben').AsString), 11);
//      s := s + STR_AddSpaces(FieldbyName('cpf_ben').AsString, 10);
      Writeln (byt_nameofthfile, S);
      next;
    end;
  end;
  inc(wtl) ;
  s := STR_AddZeros(str_inttostr(wtl), 8);
  s := s + STR_AddSpaces('', 210);
  Writeln (byt_nameofthfile, S);
  closefile (byt_nameofthfile);
  showmessage ('Processo de gravação efetuado com sucesso '+str_arquiventrad);
  ProgressBar1.visible := false ;
  close;
  EscreveLog(btn_geradisquetebenefi.name);
 inherited ;

end;

end.



