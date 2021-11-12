unit Rel_3084;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3084 = class(TFrm_Bas_TelaPadrao)
    PDJButton4: TPDJButton;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Panel1: TPanel;
    edt_tabela: TDCEdit;
    edt_nome_pla: TDCEdit;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_3084: TFrm_Rel_3084;

implementation
uses Imp_Med_ResumoConta, dtm_principal2, dtm_principal3, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Adm_FichaBenefi001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str,
Imp_Adm_FichaBenefi002, Imp_Adm_Requerimento001, Imp_4063, dtm_principal,
  Bas_Impressao ;

{$R *.DFM}

procedure TFrm_Rel_3084.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Resumo dos Atendimentos Realizados pelo Beneficiário' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  inherited;
end;

function TFrm_Rel_3084.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A Inscrição deve ser Preenchida!', VLD_Preenchido ));
  
end;

procedure TFrm_Rel_3084.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_adm_simulaContrib02 do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal3.spc_cons_adm_simulaContrib02;
  Frm_Bas_Impressao.FCampo1:= 'Beneficiário: '+edt_carteira.text+'  -  '+edt_nome.Text;
    Frm_Bas_Impressao.FCampo2 := 'Plano: '+edt_nome_pla.Text+'    Tabela: '+edt_tabela.Text;
  Frm_Bas_Impressao.showReport(4245);
  fdt_principal3.spc_cons_adm_simulaContrib02.close;
end;

procedure TFrm_Rel_3084.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Rel_3084.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
//  'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
//  'from tbl_beneficiario b, tbl_sitbeneficiario s '+
//  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario ';
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, b.cod_plano, inscricao_ben, titulacartei_ben, '+
    ' digito_ben, nome_pla, bn.cod_planoPagto, nome_plp'+
    ' from tbl_beneficiario b inner join tbl_plano p on b.cod_plano = p.cod_plano'+
    ' left join tbl_beneficiarioPlanoPagtoEspecial bn on b.cod_beneficiario = bn.cod_beneficiario'+
    ' left join tbl_planoPagto pp on bn.cod_planoPagto = pp.cod_planoPagto'+
    ' where b.cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    edt_nome_pla.Text := Tab.FieldByNAme('nome_pla').AsString;
    edt_tabela.Text := Tab.FieldByNAme('nome_plp').AsString;
  end;
end;
procedure TFrm_Rel_3084.FormShow(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Rel_3084.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

end.



