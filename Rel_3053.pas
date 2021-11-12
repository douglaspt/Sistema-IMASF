unit Rel_3053;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3053 = class(TFrm_Bas_TelaPadrao)
    PDJButton4: TPDJButton;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Panel5: TPanel;
    Panel1: TPanel;
    edt_dtAgendamentoIni: TDCDateEdit;
    edt_dtAgendamentoFin: TDCDateEdit;
    rdb_executado: TRadioButton;
    rdb_naoexecutado: TRadioButton;
    rdb_todos: TRadioButton;
    Btn_LimpaCampos: TPDJButton;
    Panel6: TPanel;
    edt_dtsistemaIni: TDCDateEdit;
    edt_dtsistemaFin: TDCDateEdit;
    Panel7: TPanel;
    cbx_cod_usuario: TDCComboBox;
    rdb_excluidos: TRadioButton;
    Panel8: TPanel;
    rdb_numagendamento: TRadioButton;
    rdb_situacaoagendamento: TRadioButton;
    rdb_inscricao: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_dtAgendamentoFinEnter(Sender: TObject);
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
  Frm_Rel_3053: TFrm_Rel_3053;

implementation
uses Imp_Med_ResumoConta, dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Adm_FichaBenefi001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str,
dtm_principal4, Imp_4106, Fun_Obj, Fun_Data;

{$R *.DFM}

procedure TFrm_Rel_3053.FormCreate(Sender: TObject);
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

function TFrm_Rel_3053.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_dtAgendamentoIni.name, 'A Data de Agendamento Inicial deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtAgendamentoFin.name, 'A Data de Agendamento Final deve ser selecionada !', VLD_DataPreenchida ));
end;

procedure TFrm_Rel_3053.PDJButton4Click(Sender: TObject);
begin
  inherited;
//  if CriticaParametros then
  //  Exit;
  if (edt_inscricao_ben.Text = '') and (edt_dtAgendamentoIni.Text = '') and (edt_dtAgendamentoFin.Text = '')
  and (edt_dtsistemaIni.Text = '') and (edt_dtsistemaFin.Text = '') and (cbx_cod_usuario.Text = '') then
  begin
    Dlg_Alerta('É necessario preeencher um dos campos',self);
    Exit;
  end;
  with fdt_principal4.spc_cons_adm_agendamentos do
  begin
    close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.text;
    ParamByName('@dtAgendamentoIni').AsString :=  Data_Format('mm/dd/yyyy',edt_dtAgendamentoIni.Date);
    ParamByName('@dtAgendamentoFin').AsString :=  Data_Format('mm/dd/yyyy',edt_dtAgendamentoFin.Date);
    ParamByName('@dtSistemaIni').AsString :=  Data_Format('mm/dd/yyyy',edt_dtsistemaIni.Date);
    ParamByName('@dtSistemaFin').AsString :=  Data_Format('mm/dd/yyyy',edt_dtsistemaFin.Date);
    ParamByName('@cod_usuario').AsString := cbx_cod_usuario.valueItem;

    if rdb_executado.Checked then
       ParamByName('@status_age').AsInteger := 1;
    if rdb_naoexecutado.Checked then
       ParamByName('@status_age').AsInteger := 0;
    if rdb_excluidos.Checked then
       ParamByName('@status_age').AsInteger := 9;
    if rdb_todos.Checked then
       ParamByName('@status_age').AsInteger := 3;

    if rdb_numagendamento.Checked then
       ParamByName('@indice').AsInteger := 0;
    if rdb_inscricao.Checked then
       ParamByName('@indice').AsInteger := 1;
    if rdb_situacaoagendamento.Checked then
       ParamByName('@indice').AsInteger := 2;

    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4106 := TFrm_Imp_4106.Create(Self);
  Frm_Imp_4106.FDtAgendamentoIni := edt_dtAgendamentoIni.Text;
  Frm_Imp_4106.FDtAgendamentoFin := edt_dtAgendamentoFin.Text;
  Frm_Imp_4106.FDtSistemaIni := edt_dtsistemaIni.Text;
  Frm_Imp_4106.FDtSistemaFin := edt_dtsistemaFin.Text;
  Frm_Imp_4106.Fusuario := cbx_cod_usuario.Text;

  if rdb_executado.Checked then
     Frm_Imp_4106.FSituacao:= rdb_executado.Caption;
  if rdb_naoexecutado.Checked then
     Frm_Imp_4106.FSituacao:= rdb_naoexecutado.Caption;
  if rdb_excluidos.Checked then
     Frm_Imp_4106.FSituacao:= rdb_excluidos.Caption;
  if rdb_todos.Checked then
     Frm_Imp_4106.FSituacao:= rdb_todos.Caption;

  if rdb_numagendamento.Checked then
     Frm_Imp_4106.FOrdem:= rdb_numagendamento.Caption;
  if rdb_inscricao.Checked then
     Frm_Imp_4106.FOrdem:= rdb_inscricao.Caption;
  if rdb_situacaoagendamento.Checked then
     Frm_Imp_4106.FOrdem:= rdb_situacaoagendamento.Caption;

  Frm_Imp_4106.QuickRep1.Preview;
  Frm_Imp_4106.Release;
  fdt_principal4.spc_cons_adm_agendamentos.close;
end;

procedure TFrm_Rel_3053.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Rel_3053.edt_inscricao_benButtonClick(
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

procedure TFrm_Rel_3053.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3053.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  Obj_LoadCombo(self,'cbx_cod_usuario','descricao_usu','cod_usuario','tbl_usuario where status_usu = 1 order by descricao_usu');
end;

procedure TFrm_Rel_3053.FormShow(Sender: TObject);
begin
  inherited;
  Obj_LoadCombo(self,'cbx_cod_usuario','descricao_usu','cod_usuario','tbl_usuario where status_usu = 1 order by descricao_usu');
end;

procedure TFrm_Rel_3053.edt_dtAgendamentoFinEnter(Sender: TObject);
begin
  inherited;
  edt_dtAgendamentoFin.Date:= edt_dtAgendamentoIni.Date;
end;

end.



