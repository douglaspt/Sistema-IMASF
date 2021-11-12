unit Mov_2053;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BComboBox;

type
  TFrm_Mov_2053 = class(TFrm_Bas_TelaPadrao)
    DataSource1: TDataSource;
    Image2: TImage;
    Panel6: TPanel;
    Panel7: TPanel;
    edt_descricaoAutorizacao_ihp: TDCEdit;
    btn_novo: TPDJButton;
    btn_alterar: TPDJButton;
    btn_Remover: TPDJButton;
    btn_Salvar: TPDJButton;
    btn_cancelar: TPDJButton;
    dbg_conveniado: TDBGrid;
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_nome_con: TDCEdit;
    edt_vlParticipacao_ihp: TDCEdit;
    Panel11: TPanel;
    edt_descricao: TDCEdit;
    edt_cod_itemservico: TDCChoiceEdit;
    Panel1: TPanel;
    edt_obs_ihp: TDCEdit;
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_RemoverClick(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure edt_cod_itemservicoButtonClick(Sender: TObject);
    procedure edt_cod_itemservicoExit(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    FStatus2 : Integer ;
    procedure BotoesOnOff(b:boolean);
  public
    { Public declarations }
  end;

var
  Frm_Mov_2053: TFrm_Mov_2053;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
  dtm_principal4, Fun_Obj, dtm_principal6, Fun_ConsCadastro, Fun_Data, Fun_Medico ;

{$R *.DFM}

procedure TFrm_Mov_2053.FormShow(Sender: TObject);
begin
  inherited;
  dbg_conveniado.SetFocus;
  with fdt_principal4.spc_cons_med_itemhonorarioParticipacao do begin
    Close;
    Open;
  end;
end;

procedure TFrm_Mov_2053.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := b ;
  btn_alterar.Enabled := b ;
  btn_Salvar.Enabled := not b ;
  btn_cancelar.Enabled := not b;
  btn_Remover.Enabled := b ;
  dbg_conveniado.visible := b ;
end;

procedure TFrm_Mov_2053.btn_novoClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Novo;
  BotoesOnOff(false);
  edt_cod_conveniado.Enabled := true;
  edt_cod_itemservico.Enabled := true;
  edt_cod_conveniado.SetFocus;
  Obj_EmptyEdit(self);
  EscreveLog(btn_novo.name);
end;

procedure TFrm_Mov_2053.btn_alterarClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Alteracao;
  with fdt_principal4.spc_cons_med_itemhonorarioParticipacao do begin
    BotoesOnOff(false);
    edt_cod_conveniado.text := FieldByName('cod_conveniado').AsString ;
    edt_cod_itemservico.Text := FieldByName('cod_itemServico').AsString ;
    edt_vlParticipacao_ihp.text := FieldByName('vlParticipacao_ihp').AsString ;
    edt_descricaoAutorizacao_ihp.Text := FieldByName('descricaoAutorizacao_ihp').AsString ;
    edt_obs_ihp.Text := FieldByName('obs_ihp').AsString ;
  end;
    edt_cod_conveniadoExit(self);
    edt_cod_itemservicoExit(self);
    edt_cod_conveniado.enabled := false;
    edt_cod_itemservico.Enabled := false;
    edt_vlParticipacao_ihp.SetFocus;
    EscreveLog(btn_alterar.name);
end;

procedure TFrm_Mov_2053.btn_SalvarClick(Sender: TObject);
begin
  inherited;
 if not BAS_ValidarCampo(edt_cod_conveniado.name, 'É necessário preencher o Código do Conveniado!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_cod_itemservico.name, 'É necessário preencher o Item de Serviço!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_vlParticipacao_ihp.name, 'É necessário preencher o Valor!', VLD_Preenchido) then
     exit ;
  if not Dlg_YesNo('Tem Certeza que Deseja Salvar?', Self) then Exit;
  if FStatus = FST_Novo then
  DB_ExecSQL('insert into tbl_itemhonorarioParticipacao ('+
  'cod_conveniado, cod_itemServico, vlParticipacao_ihp, descricaoAutorizacao_ihp, dtsistema_ihp, obs_ihp) values ('+
  STR_RemoveChar(edt_cod_conveniado.text,'-')+','+edt_cod_itemservico.text+','+DB_FormatDataSQL(edt_vlParticipacao_ihp.Text, ftFloat)+
  ', '''+edt_descricaoAutorizacao_ihp.Text+''', getdate(), '''+edt_obs_ihp.Text+''')')
  else
      DB_ExecSQL('update tbl_itemhonorarioParticipacao set '+
    ' vlParticipacao_ihp = '+DB_FormatDataSQL(edt_vlParticipacao_ihp.text, ftFloat)+','+
    ' descricaoAutorizacao_ihp = '''+edt_descricaoAutorizacao_ihp.text+''', '+
    ' dtsistema_ihp = getdate(),'+
    ' obs_ihp = '''+edt_obs_ihp.text+
    ''' where cod_conveniado = '+STR_RemoveChar(edt_cod_conveniado.text,'-')+
    ' and cod_itemServico = '+edt_cod_itemservico.Text);
  with fdt_principal4.spc_cons_med_itemhonorarioParticipacao do begin
    Close;
    Open;
  end;
  BotoesOnOff(true);
  dbg_conveniado.SetFocus;
  EscreveLog(btn_Salvar.name);
end;

procedure TFrm_Mov_2053.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  BotoesOnOff(true);
  dbg_conveniado.SetFocus;
  EscreveLog(btn_cancelar.name);
end;

procedure TFrm_Mov_2053.btn_RemoverClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja Remover o Registro ?', Self) then begin
    DB_ExecSQL('delete from tbl_itemhonorarioParticipacao where cod_conveniado = '+
    fdt_principal4.spc_cons_med_itemhonorarioParticipacao.fieldByName('cod_conveniado').AsString+
    ' and cod_itemServico = '+fdt_principal4.spc_cons_med_itemhonorarioParticipacao.fieldByName('cod_itemServico').AsString);
    fdt_principal4.spc_cons_med_itemhonorarioParticipacao.close;
    fdt_principal4.spc_cons_med_itemhonorarioParticipacao.open;
  end;
  dbg_conveniado.SetFocus;
  EscreveLog(btn_Remover.name);
end;

procedure TFrm_Mov_2053.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_sitconveniado = 1';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl_conveniado', FPesquisa,
  'Cod.Conv, Nome do Conveniado, Razão Social', 'Localizar Conveniados', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Mov_2053.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_nome_con.text := Get_NomeConveniadoAtivo(STR_RemoveChar(edt_cod_conveniado.text,'-'));
end;

procedure TFrm_Mov_2053.edt_cod_itemservicoButtonClick(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservico',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento',
  'Localizar Itens de Serviços', '', True));
  edt_cod_itemservicoExit(self);
end;

procedure TFrm_Mov_2053.edt_cod_itemservicoExit(Sender: TObject);
begin
  inherited;
  edt_descricao.text := Get_DescricaoServico(edt_cod_itemservico.text);
end;

end.



