unit Rel_3054;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3054 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    PDJButton3: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    wInscricao : String;
  end;

var
  Frm_Rel_3054: TFrm_Rel_3054;

implementation
uses Imp_Med_ResumoConta, dtm_principal4, Fun_Medico, Fun_ConsCadastro, Constantes,
Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str, Imp_4108 ;

{$R *.DFM}

procedure TFrm_Rel_3054.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Extrato do Beneficiário Analítico' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL  := FSQL_Beneficiario ;
  FPesquisaTit  := FTit_Benefeciario ;
  inherited;
end;

function TFrm_Rel_3054.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_inscricao_ben.name, 'Código do Beneficiário deve ser Preenchido !', VLD_Preenchido ));
end;

procedure TFrm_Rel_3054.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Rel_3054.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  end;
end;

procedure TFrm_Rel_3054.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal4.spc_cons_adm_autorizacaomedica do
  begin
    close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
    open;
      if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;
  end;
  Frm_Imp_4108 := TFrm_Imp_4108.Create(Self);
  Frm_Imp_4108.QuickRep1.Preview;
  Frm_Imp_4108.Release;
  fdt_principal4.spc_cons_adm_autorizacaomedica.close;
end;

procedure TFrm_Rel_3054.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;                                                                                                                                                                                                                              

procedure TFrm_Rel_3054.FormShow(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.SetFocus;
  if wInscricao <> '' then begin
    edt_inscricao_ben.Text :=  wInscricao;
    edt_inscricao_benButtonClick(self);
  end;  
end;

end.



