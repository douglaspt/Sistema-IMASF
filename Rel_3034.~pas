unit Rel_3034;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEditButton;

type
  TFrm_Rel_3034 = class(TFrm_Bas_TelaPadrao)
    PDJButton4: TPDJButton;
    Panel4: TPanel;
    edt_cod_cid: TDCChoiceEdit;
    Btn_LimpaCampos: TPDJButton;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    Panel1: TPanel;
    rdb_crescente: TRadioButton;
    rdb_decrescente: TRadioButton;
    edt_cid: TDCEdit;
    PDJButton1: TPDJButton;
    Button2: TButton;
    dlg_leitura: TOpenDialog;
    Label1: TLabel;
    Label2: TLabel;
    Panel7: TPanel;
    cbx_cod_plano: TDCComboBox;
    Panel8: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel6: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_nome: TDCEdit;
    Panel9: TPanel;
    edt_idadeIni: TDCEdit;
    edt_idadeFin: TDCEdit;
    PDJButton2: TPDJButton;
    procedure PDJButton4Click(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure edt_cod_cidButtonClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton2Click(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt, FTit : String ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_3034: TFrm_Rel_3034;

implementation
uses Fun_Medico, Fun_ConsCadastro, Constantes, Fun_DB, Dlg_Mensagem, Fun_beneficiario,
Fun_Str, Fun_Obj, dtm_principal6, Bas_Impressao, dtm_principal ;

{$R *.DFM}

procedure TFrm_Rel_3034.PDJButton4Click(Sender: TObject);
var
 FPlanoIdade : String;
begin
  inherited;
  if (not BAS_ValidarCampo(edt_dtinicial.name, 'O Período Inicial deve ser Preenchido!', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtfinal.name, 'O Período Final deve ser Preenchido!', VLD_DataPreenchida )) then
    Exit;
  with fdt_principal6.spc_cons_med_incidenciacid do
  begin
    close;
    ParamByName('@dtinicial').AsString := FormatDateTime('mm/dd/yyyy',edt_dtinicial.date);
    ParamByName('@dtfinal').AsString := FormatDateTime('mm/dd/yyyy',edt_dtfinal.Date);
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.Text,'-');
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem;
    ParamByName('@idadeIni').AsString := edt_idadeIni.Text;
    ParamByName('@idadeFin').AsString := edt_idadeFin.Text;
    if rdb_crescente.Checked then
      ParamByName('@order').AsInteger := 0;
    if rdb_decrescente.Checked then
      ParamByName('@order').AsInteger := 1;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  FPlanoIdade := '';
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_incidenciacid;
  Frm_Bas_Impressao.FMesReferencia := 'Período de   '+edt_dtinicial.Text+'   até   '+edt_dtfinal.Text;
  if edt_cod_conveniado.Text <> '' then
    Frm_Bas_Impressao.FCampo1 := 'Conveniado   '+edt_cod_conveniado.Text+'   '+edt_razao_con.Text
  else
    Frm_Bas_Impressao.FCampo1 := '';
  if edt_inscricao_ben.Text <> '' then
    Frm_Bas_Impressao.FCampo2 := 'Beneficiário   '+edt_inscricao_ben.Text+'   '+edt_nome.Text
  else
    Frm_Bas_Impressao.FCampo2 := '';
  if cbx_cod_plano.Text <> '' then
    FPlanoIdade := 'Plano   '+cbx_cod_plano.Text+'        ';
  if edt_idadeIni.Text <> '' then
    FPlanoIdade := FPlanoIdade + 'Idade Inicial   '+edt_idadeIni.Text+'        ';
  if edt_idadeFin.Text <> '' then
    FPlanoIdade := FPlanoIdade +'Idade Final   '+edt_idadeFin.Text;
  Frm_Bas_Impressao.FCampo3 := FPlanoIdade;
  Frm_Bas_Impressao.showReport(4141);
  fdt_principal6.spc_cons_med_incidenciacid.close;
end;

procedure TFrm_Rel_3034.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;


function AjustaCampoSTR(campo : string): String ;
var
  letra, Nletras : string;
  I : integer;
begin
  Nletras := '''';
  for I := 1  to Length(campo) do
  begin
    letra := Copy(campo,I,1);
    if letra = ',' then
      Nletras := Nletras+ ''','''
    else
      Nletras := Nletras + letra;
  end;
  Result := Nletras+'''';
end;

procedure TFrm_Rel_3034.edt_cod_cidButtonClick(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_cid',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_cid',8,length('edt_cod_cid')),
  'cod_cid, nome_cid', 'Cod.Cid, CID',
  'Localizar CID', '', true));
  if edt_cid.Text <> '' then
    edt_cid.Text := edt_cid.text +','+edt_cod_cid.Text
  else
    edt_cid.Text := edt_cod_cid.text;
end;

procedure TFrm_Rel_3034.PDJButton1Click(Sender: TObject);
var
  FPlanoIdade : String;
begin
  inherited;
  if (not BAS_ValidarCampo(edt_cid.name, 'O Código de CID deve ser Preenchido!', VLD_Preenchido )) then
    Exit;
  with fdt_principal6.spc_cons_med_incidenciacidBen do
  begin
    close;
    ParamByName('@cod_cid').AsString := edt_cid.Text;
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.Text,'-');
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem;
    ParamByName('@idadeIni').AsString := edt_idadeIni.Text;
    ParamByName('@idadeFin').AsString := edt_idadeFin.Text;
    if rdb_crescente.Checked then
      ParamByName('@order').AsInteger := 0;
    if rdb_decrescente.Checked then
      ParamByName('@order').AsInteger := 1; 
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  FPlanoIdade := '';
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_incidenciacidBen;
  Frm_Bas_Impressao.FCampo1 := 'Códigos de CID Selecionados     :  '+edt_cid.Text;
  if edt_cod_conveniado.Text <> '' then
    Frm_Bas_Impressao.FCampo2 := 'Conveniado   '+edt_cod_conveniado.Text+'   '+edt_razao_con.Text
  else
    Frm_Bas_Impressao.FCampo2 := '';
  if edt_inscricao_ben.Text <> '' then
    Frm_Bas_Impressao.FCampo3 := 'Beneficiário   '+edt_inscricao_ben.Text+'   '+edt_nome.Text
  else
    Frm_Bas_Impressao.FCampo3 := '';
  if cbx_cod_plano.Text <> '' then
    FPlanoIdade := 'Plano   '+cbx_cod_plano.Text+'        ';
  if edt_idadeIni.Text <> '' then
    FPlanoIdade := FPlanoIdade + 'Idade Inicial   '+edt_idadeIni.Text+'        ';
  if edt_idadeFin.Text <> '' then
    FPlanoIdade := FPlanoIdade +'Idade Final   '+edt_idadeFin.Text;
  Frm_Bas_Impressao.FCampo4 := FPlanoIdade;
  Frm_Bas_Impressao.showReport(4142);
  fdt_principal6.spc_cons_med_incidenciacidBen.close;
end;

procedure TFrm_Rel_3034.Button2Click(Sender: TObject);
var
  F, Insert, Delete: TextFile;
  S, P, dtref, seqconta, codBen, D: string;
  Cont, Cont2, cont3, cont4 : integer;
begin
  inherited;
  if dlg_leitura.Execute then          { Display Open dialog box }
  begin
    AssignFile(F, dlg_leitura.FileName);   { File selected in dialog box }
    Reset(F);
    AssignFile(Insert,'U:\SPD\douglas\Reembolso2\insert'+copy(dlg_leitura.FileName,26,Length(dlg_leitura.FileName) - 25));
    Rewrite(Insert);
    AssignFile(Delete,'U:\SPD\douglas\Reembolso2\delete'+copy(dlg_leitura.FileName,26,Length(dlg_leitura.FileName) - 25));
    Rewrite(Delete);
    while not EOF(F) do begin
      Readln(F, S);
      Cont3 := cont3 + 1;
      Application.ProcessMessages;
      Label2.Caption := IntToStr(cont3);
      if Pos('insert into tbl_contamedica',S) > 0 then
      begin
        dtref := '';
        seqconta := '';
        codBen := '';
        P := copy(S,24,Length(S));
        if Pos('9997',S) > 0 then
        begin
          cont := Pos('9997',S) + 6;
          while copy(S,cont,1) <> ',' do
          begin
            dtref := dtref +copy(S,cont,1);
            cont := cont + 1;
          end;
          cont2 := 0;
          while cont2 < 2 do
          begin
            D := copy(S,cont,1);
            if D = ',' then
              cont2 := cont2 +1;
            Cont := Cont + 1;
          end;
          while copy(S,cont,1) <> ',' do
          begin
            seqconta := seqconta +copy(S,cont,1);
            cont := cont + 1;
          end;
          cont2 := 0;
          while cont2 < 3 do
          begin
            D := copy(S,cont,1);
            if D = ',' then
              cont2 := cont2 +1;
            Cont := Cont + 1;
          end;
          while copy(S,cont,1) <> ',' do
          begin
            codBen := codBen +copy(S,cont,1);
            cont := cont + 1;
          end;
          if length(dtref) > 10 then
            if DB_OpenSQL('select * from tbl_contamedica where cod_conveniado = 9997 and dtreferencia_cta = '+dtref+
            ' and sequencia_cta = 1 and sequenciaconta_ctm = '+seqconta+' and cod_beneficiario = '+codBen) < 1 then
              Writeln(Insert, P);
              cont4 := cont4 + 1;
              Label1.Caption := IntToStr(cont4);
        end;
      end;
      if Pos('insert into tbl_reembolsomedico',S) > 0 then
      begin
        dtref := '';
        seqconta := '';
        P := copy(S,24,Length(S));
        cont := 219;
        while copy(S,cont,1) <> ',' do
        begin
          dtref := dtref +copy(S,cont,1);
          cont := cont + 1;
        end;
        cont2 := 0;
        while cont2 < 2 do
        begin
          D := copy(S,cont,1);
          if D = ',' then
            cont2 := cont2 +1;
          Cont := Cont + 1;
        end;
        while copy(S,cont,1) <> ',' do
        begin
          seqconta := seqconta +copy(S,cont,1);
          cont := cont + 1;
        end;
        if length(dtref) > 10 then
          if DB_OpenSQL('select * from tbl_reembolsomedico where cod_conveniado = 9997 and dtreferencia_cta = '+dtref+
          ' and sequencia_cta = 1 and sequenciaconta_ctm = '+seqconta) < 1 then
            Writeln(Insert, P);
          Label1.Caption := IntToStr(cont4 + cont4 +1);
      end;
      if Pos('delete from tbl_itemconta',S) > 0 then
      begin
        dtref := '';
        seqconta := '';
        P := copy(S,24,Length(S));
        if Pos('9997',S) > 0 then
        begin
          cont := Pos('9997',S) + 28;
          while copy(S,cont,1) <> ' ' do
          begin
            dtref := dtref +copy(S,cont,1);
            cont := cont + 1;
          end;
          if Pos('sequenciaconta_ctm = ',S) > 0 then
          begin
            cont := Pos('sequenciaconta_ctm = ',S) + 21;
            while copy(S,cont,1) <> ' ' do
            begin
              seqconta := seqconta +copy(S,cont,1);
              cont := cont + 1;
            end;
          end;
          if DB_OpenSQL('select * from tbl_itemconta where cod_conveniado = 9997 and dtreferencia_cta = '+dtref+
          ' and sequencia_cta = 1 and sequenciaconta_ctm = '+seqconta) < 1 then
          begin
            Writeln(Delete, 'delete from tbl_contamedica where cod_conveniado = 9997 and dtreferencia_cta = '+dtref+
            ' and sequencia_cta = 1 and sequenciaconta_ctm = '+seqconta);
            Writeln(Delete, 'delete from tbl_reembolsomedico where cod_conveniado = 9997 and dtreferencia_cta = '+dtref+
            ' and sequencia_cta = 1 and sequenciaconta_ctm = '+seqconta);
          end;
        end;
      end;
    end;
    CloseFile(Insert);
    CloseFile(Delete);
    CloseFile(F);
  end;
end;

procedure TFrm_Rel_3034.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
end;

procedure TFrm_Rel_3034.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_conveniado',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_conveniado',8,length('edt_cod_conveniado')),
  'cod_conveniado, nome_con, razao_con', 'Cod.Conv, Nome do Conveniado, Razão Social',
  'Localizar Conveniados', '', true));
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Rel_3034.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

procedure TFrm_Rel_3034.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  end;
end;

procedure TFrm_Rel_3034.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3034.PDJButton2Click(Sender: TObject);
var
  FPlanoIdade : String;
begin
  inherited;
  if (not BAS_ValidarCampo(edt_dtinicial.name, 'O Período Inicial deve ser Preenchido!', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtfinal.name, 'O Período Final deve ser Preenchido!', VLD_DataPreenchida )) then
    Exit;
  with fdt_principal6.spc_cons_med_incidenciaCrm do
  begin
    close;
    ParamByName('@dtinicial').AsString := FormatDateTime('mm/dd/yyyy',edt_dtinicial.date);
    ParamByName('@dtfinal').AsString := FormatDateTime('mm/dd/yyyy',edt_dtfinal.Date);
    ParamByName('@cod_conveniado').AsString := STR_RemoveChar(edt_cod_conveniado.Text,'-');
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem;
    ParamByName('@idadeIni').AsString := edt_idadeIni.Text;
    ParamByName('@idadeFin').AsString := edt_idadeFin.Text;
    if rdb_crescente.Checked then
      ParamByName('@order').AsInteger := 0;
    if rdb_decrescente.Checked then
      ParamByName('@order').AsInteger := 1;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  FPlanoIdade := '';
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_med_incidenciaCrm;
  Frm_Bas_Impressao.FMesReferencia := 'Período de   '+edt_dtinicial.Text+'   até   '+edt_dtfinal.Text;
  if edt_cod_conveniado.Text <> '' then
    Frm_Bas_Impressao.FCampo1 := 'Conveniado   '+edt_cod_conveniado.Text+'   '+edt_razao_con.Text
  else
    Frm_Bas_Impressao.FCampo1 := '';
  if edt_inscricao_ben.Text <> '' then
    Frm_Bas_Impressao.FCampo2 := 'Beneficiário   '+edt_inscricao_ben.Text+'   '+edt_nome.Text
  else
    Frm_Bas_Impressao.FCampo2 := '';
  if cbx_cod_plano.Text <> '' then
    FPlanoIdade := 'Plano   '+cbx_cod_plano.Text+'        ';
  if edt_idadeIni.Text <> '' then
    FPlanoIdade := FPlanoIdade + 'Idade Inicial   '+edt_idadeIni.Text+'        ';
  if edt_idadeFin.Text <> '' then
    FPlanoIdade := FPlanoIdade +'Idade Final   '+edt_idadeFin.Text;
  Frm_Bas_Impressao.FCampo3 := FPlanoIdade;
  Frm_Bas_Impressao.showReport(4180);
  fdt_principal6.spc_cons_med_incidenciaCrm.close;

end;

end.



