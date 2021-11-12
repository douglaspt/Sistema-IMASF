unit Mov_ReembolsoMedico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_ReembolsoMedico = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    pnl_situacao: TPanel;
    edt_inscricao_ben: TDCChoiceEdit;
    DCChoiceEdit1: TDCChoiceEdit;
    RdG_SitBeneficiario: TRadioGroup;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid5: TDBGrid;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    btn_novo: TPDJButton;
    btn_alterar: TPDJButton;
    btn_salvar: TPDJButton;
    btn_cancelar: TPDJButton;
    btn_excluir: TPDJButton;
    btn_localizar: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
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
  Frm_Mov_ReembolsoMedico: TFrm_Mov_ReembolsoMedico;

implementation
uses Imp_Med_ResumoConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Med_ExtratoBenefi001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str ;

{$R *.DFM}

procedure TFrm_Mov_ReembolsoMedico.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Resumo dos Atendimentos Realizados pelo Beneficiário' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
  'from tbl_beneficiario b, tbl_sitbeneficiario s '+
  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
  'and s.tipo_sit = 0';
  FPesquisaSQL := FPesquisaSQLDefalt ;
  FPesquisaTit  := 'Código, Inscrição, Nome, Processo, Tip. Depend., Situação' ;
  inherited;
end;

function TFrm_Mov_ReembolsoMedico.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_inscricao_ben.name, 'Código do Beneficiário deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtinicial.name, 'Data Inicial de Atendimento deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtfinal.name, 'Data Final de Atendimento deve ser Preenchida !', VLD_DataPreenchida )) ;
end;

procedure TFrm_Mov_ReembolsoMedico.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Mov_ReembolsoMedico.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  
  case RdG_SitBeneficiario.ItemIndex of
    0 : FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
        'from tbl_beneficiario b, tbl_sitbeneficiario s '+
        'where b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
        'and s.tipo_sit = 0';
    1 : FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
        'from tbl_beneficiario b, tbl_sitbeneficiario s '+
        'where b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
        'and s.tipo_sit = 1';
    2 : FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
        'from tbl_beneficiario b, tbl_sitbeneficiario s '+
        'where b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
        'and s.tipo_sit = 2';
    3 : FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
        'from tbl_beneficiario b, tbl_sitbeneficiario s '+
        'where b.cod_sitbeneficiario = s.cod_sitbeneficiario ';
  end;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  end;
end;

procedure TFrm_Mov_ReembolsoMedico.FormShow(Sender: TObject);
begin
  inherited;
  edt_dtinicial.Text := '01/01/2001' ;
  edt_dtfinal.Text := '01/01/2002' ;
end;

procedure TFrm_Mov_ReembolsoMedico.btn_novoClick(Sender: TObject);
begin
  inherited;
  EscreveLog(btn_novo.Name);
end;

procedure TFrm_Mov_ReembolsoMedico.btn_alterarClick(Sender: TObject);
begin
  inherited;
  EscreveLog(btn_alterar.Name);
end;

procedure TFrm_Mov_ReembolsoMedico.btn_salvarClick(Sender: TObject);
begin
  inherited;
  EscreveLog(btn_salvar.Name);
end;

procedure TFrm_Mov_ReembolsoMedico.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  EscreveLog(btn_cancelar.Name);
end;

procedure TFrm_Mov_ReembolsoMedico.btn_excluirClick(Sender: TObject);
begin
  inherited;
  EscreveLog(btn_excluir.Name);
end;

end.



