unit Rel_3055;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3055 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    PDJButton1: TPDJButton;
    Panel1: TPanel;
    edt_edital: TDCEdit;
    Panel5: TPanel;
    edt_cargo1: TDCEdit;
    edt_nomeass1: TDCEdit;
    Panel6: TPanel;
    edt_cargo2: TDCEdit;
    edt_nomeass2: TDCEdit;
    Panel7: TPanel;
    edt_cargo3: TDCEdit;
    edt_nomeass3: TDCEdit;
    PDJButton2: TPDJButton;
    PDJButton3: TPDJButton;
    Button1: TButton;
    PDJButton4: TPDJButton;
    PDJButton5: TPDJButton;
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
  public
    wInscricao, wCod_Beneficiario, FPlano, FDtincricao, NPlano, Dtsituacao : String;
    DtNascimento : TDatetime;
    { Public declarations }
  end;                                                                          

var
  Frm_Rel_3055: TFrm_Rel_3055;

implementation
uses Fun_Medico, Fun_ConsCadastro, Constantes, Fun_DB, Dlg_Mensagem, Fun_beneficiario,
Fun_Str, Imp_4109, Imp_4110, Imp_4111, Imp_4112, Imp_4113;

{$R *.DFM}

function TFrm_Rel_3055.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_inscricao_ben.name, 'Incrição do Beneficiário deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_edital.name, 'O numero do Edital deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cargo1.name, 'O Cargo da Assinatura 1 deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomeass1.name, 'O Nome da Assinatura 1 deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cargo2.name, 'O Cargo da Assinatura 2 deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomeass2.name, 'O Nome da Assinatura 2 deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cargo3.name, 'O Cargo da Assinatura 3 deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomeass3.name, 'O Nome da Assinatura 3 deve ser Preenchida !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_3055.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Rel_3055.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if wCod_Beneficiario <> '' then begin
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.cod_beneficiario = '+wCod_Beneficiario;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end
  else begin
    if edt_inscricao_ben.text = '' then
      FPesquisaSQL  := FPesquisaSQLDefalt
    else
      FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end;
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben,'+
    ' digito_ben, dtinscricao_ben, dtsituacao_ben, dtnascim_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    FPlano := Tab.FieldByNAme('cod_plano').AsString;
    FDtincricao := Tab.FieldByNAme('dtinscricao_ben').AsString;
    Dtsituacao := Tab.FieldByNAme('dtsituacao_ben').AsString;
    DtNascimento := Tab.FieldByNAme('dtnascim_ben').AsDateTime;
    DB_OpenSQL('select nome_pla from tbl_plano where cod_plano = '+FPlano);
    NPlano := Tab.FieldByNAme('nome_pla').AsString;
  end;
end;

procedure TFrm_Rel_3055.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
  Exit;
  Frm_Imp_4109 := TFrm_Imp_4109.Create(Self);
  Frm_Imp_4109.FInscricao := edt_inscricao_ben.text;
  Frm_Imp_4109.FNome := edt_nome.text;
  Frm_Imp_4109.FEdital := edt_edital.text;
  Frm_Imp_4109.FCargo1 := edt_cargo1.text;
  Frm_Imp_4109.FNomeAss1 := edt_nomeass1.text;
  Frm_Imp_4109.FCargo2 := edt_cargo2.text;
  Frm_Imp_4109.FNomeAss2 := edt_nomeass2.text;
  Frm_Imp_4109.FCargo3 := edt_cargo3.text;
  Frm_Imp_4109.FNomeAss3 := edt_nomeass3.text;
  Frm_Imp_4109.FDtinscricao := FDtincricao;
  Frm_Imp_4109.NPlano := NPlano;
  Frm_Imp_4109.QuickRep1.Preview;
  Frm_Imp_4109.Release;
end;

procedure TFrm_Rel_3055.FormShow(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.SetFocus;
  if wInscricao <> '' then begin
    edt_inscricao_ben.Text := wInscricao;
    edt_inscricao_benButtonClick(self);
  end;
end;

procedure TFrm_Rel_3055.edt_inscricao_benKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3055.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
  Exit;
  Frm_Imp_4110 := TFrm_Imp_4110.Create(Self);
  Frm_Imp_4110.FInscricao := edt_inscricao_ben.text;
  Frm_Imp_4110.FNome := edt_nome.text;
  Frm_Imp_4110.FEdital := edt_edital.text;
  Frm_Imp_4110.FCargo1 := edt_cargo1.text;
  Frm_Imp_4110.FNomeAss1 := edt_nomeass1.text;
  Frm_Imp_4110.FCargo2 := edt_cargo2.text;
  Frm_Imp_4110.FNomeAss2 := edt_nomeass2.text;
  Frm_Imp_4110.FCargo3 := edt_cargo3.text;
  Frm_Imp_4110.FNomeAss3 := edt_nomeass3.text;
  Frm_Imp_4110.FDtinscricao := FDtincricao;
  Frm_Imp_4110.NPlano := NPlano;
  Frm_Imp_4110.QuickRep1.Preview;
  Frm_Imp_4110.Release;
end;

procedure TFrm_Rel_3055.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
  Exit;
  Frm_Imp_4111 := TFrm_Imp_4111.Create(Self);
  Frm_Imp_4111.FInscricao := edt_inscricao_ben.text;
  Frm_Imp_4111.FNome := edt_nome.text;
  Frm_Imp_4111.FEdital := edt_edital.text;
  Frm_Imp_4111.FCargo1 := edt_cargo1.text;
  Frm_Imp_4111.FNomeAss1 := edt_nomeass1.text;
  Frm_Imp_4111.FCargo2 := edt_cargo2.text;
  Frm_Imp_4111.FNomeAss2 := edt_nomeass2.text;
  Frm_Imp_4111.FCarteira := edt_carteira.text;
  Frm_Imp_4111.FDtinscricao := FDtincricao;
  Frm_Imp_4111.Dtsituacao :=  Dtsituacao;
  Frm_Imp_4111.NPlano := NPlano;
  Frm_Imp_4111.QuickRep1.Preview;
  Frm_Imp_4111.Release;
end;

procedure TFrm_Rel_3055.Button1Click(Sender: TObject);
begin
  inherited;
  //edt_inscricao_ben.text := '9066';
  //edt_inscricao_benButtonClick(self);
  edt_edital.text := '01/2004';
  edt_cargo1.text := 'Chefe da Seção de Administração';
  edt_nomeass1.Text := 'MARILENE MATHEUZ';
  edt_cargo2.text := 'Enc. Serv. Protocolo e Arquivo';
  edt_nomeass2.Text := 'MARIA AP. PEDROSO AMARO DA SILVA';
  edt_cargo3.text := 'Recepcionista II';
  edt_nomeass3.Text := 'FATIMA ALBINA GIUSTI';
end;

procedure TFrm_Rel_3055.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
  Exit;
  Frm_Imp_4112 := TFrm_Imp_4112.Create(Self);
  Frm_Imp_4112.FInscricao := edt_inscricao_ben.text;
  Frm_Imp_4112.FNome := edt_nome.text;
  Frm_Imp_4112.FEdital := edt_edital.text;
  Frm_Imp_4112.FCargo1 := edt_cargo1.text;
  Frm_Imp_4112.FNomeAss1 := edt_nomeass1.text;
  Frm_Imp_4112.FCargo2 := edt_cargo2.text;
  Frm_Imp_4112.FNomeAss2 := edt_nomeass2.text;
  Frm_Imp_4112.FCargo3 := edt_cargo3.text;
  Frm_Imp_4112.FNomeAss3 := edt_nomeass3.text;
  Frm_Imp_4112.FDtinscricao := FDtincricao;
  Frm_Imp_4112.DtNascimento := DtNascimento;
  Frm_Imp_4112.NPlano := NPlano;
  Frm_Imp_4112.QuickRep1.Preview;
  Frm_Imp_4112.Release;
end;

procedure TFrm_Rel_3055.PDJButton5Click(Sender: TObject);
begin
  inherited;
  DB_OpenSQL('select  nome_ben  from tbl_beneficiario where inscricao_ben = '+edt_inscricao_ben.Text+' and titulacartei_ben = 0');
  if CriticaParametros then
  Exit;
  Frm_Imp_4113 := TFrm_Imp_4113.Create(Self);
  Frm_Imp_4113.FInscricao := edt_inscricao_ben.text;
  Frm_Imp_4113.FNome := edt_nome.text;
  Frm_Imp_4113.FEdital := edt_edital.text;
  Frm_Imp_4113.FCargo1 := edt_cargo1.text;
  Frm_Imp_4113.FNomeAss1 := edt_nomeass1.text;
  Frm_Imp_4113.FCargo2 := edt_cargo2.text;
  Frm_Imp_4113.FNomeAss2 := edt_nomeass2.text;
  Frm_Imp_4113.FCargo3 := edt_cargo3.text;
  Frm_Imp_4113.FNomeAss3 := edt_nomeass3.text;
  Frm_Imp_4113.FDtinscricao := FDtincricao;
  Frm_Imp_4113.Conjugue := tab.fieldbyname('nome_ben').AsString;
  Frm_Imp_4113.NPlano := NPlano;
  Frm_Imp_4113.QuickRep1.Preview;
  Frm_Imp_4113.Release;
end;

end.



