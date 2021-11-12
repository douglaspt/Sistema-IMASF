unit Cad_UnidadeOrcam;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, Grids, DBGrids,
  Db, Mask, DBCtrls, BComboBox, BEdit, BEditButton;

type
  TFrm_Cad_UnidadeOrcam = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel6: TPanel;
    dbg_dotacao: TDBGrid;
    btn_adicionar_dtc: TPDJButton;
    btn_alterar_dtc: TPDJButton;
    btn_remover_dtc: TPDJButton;
    btn_salvar_dtc: TPDJButton;
    btn_cancelar_dtc: TPDJButton;
    DataSource1: TDataSource;
    Panel7: TPanel;
    Panel8: TPanel;
    lbl_tlcontas: TLabel;
    edt_cod_unidadeOrcam: TEditButton;
    edt_exercicio_uno: TBEdit;
    cbx_cod_dotacaoBase: TBComboBox;
    edt_descUnidade_uno: TBEdit;
    edt_valor_dtc: TBEdit;
    edt_vlTotal: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_adicionar_dtcClick(Sender: TObject);
    procedure btn_alterar_dtcClick(Sender: TObject);
    procedure btn_salvar_dtcClick(Sender: TObject);
    procedure btn_cancelar_dtcClick(Sender: TObject);
    procedure btn_remover_dtcClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure edt_cod_unidadeOrcamButtonClick(Sender: TObject);
  private
    { Private declarations }
    vlT : double;
    FStatus2 : Integer ;
  public
    { Public declarations }
    procedure BAS_Alterar(Frm:Tform);                   override ;
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_UnidadeOrcam: TFrm_Cad_UnidadeOrcam;

implementation

uses Constantes, dtm_principal4, Fun_DB, Dlg_Mensagem, Bas_TelaPadrao, Fun_Obj, Fun_Acesso;

{$R *.DFM}

procedure TFrm_Cad_UnidadeOrcam.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Unidade Or�ament�ria' ;
  FEditChave    := 'edt_cod_unidadeOrcam' ;
  FEditAlteracao:= 'edt_descUnidade_uno' ;
  FUltFoco      := 'edt_exercicio_uno' ;
  FTitPesquisa  := 'Localizar Unidade Or�ament�ria' ;
  FPesquisa     := 'cod_unidadeOrcam, descUnidade_uno, exercicio_uno ' ;
  FPesquisaTit  := 'Cod. Unidade, Descri��o, Ano Exerc�cio' ;
  inherited;
end;

procedure TFrm_Cad_UnidadeOrcam.BAS_Alterar(Frm:Tform);
begin
 inherited ;
 with fdt_principal4.spc_cons_adm_dotacao do
   begin
     Close;
     parambyname('@cod_unidadeOrcam').asstring := edt_cod_unidadeOrcam.text ;
     Open;
     vlT := 0;
     while not eof do
       begin
         vlT := vlT + fdt_principal4.spc_cons_adm_dotacao.fieldbyname('valor_dtc').AsFloat;
         Next;
         edt_vlTotal.text := FormatFloat('###,###,##0.00', vlT);
       end;
   end;
end;

function TFrm_Cad_UnidadeOrcam.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_unidadeOrcam.name, 'O C�digo Unidade deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descUnidade_uno.name, 'O campo Descri��o deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_exercicio_uno.name, 'O Ano Exerc�cio deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_UnidadeOrcam.btn_adicionar_dtcClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Novo;
  btn_adicionar_dtc.Enabled := false ;
  btn_alterar_dtc.Enabled := false ;
  btn_remover_dtc.Enabled := false ;
  btn_salvar_dtc.Enabled := true ;
  btn_cancelar_dtc.Enabled := true;
  dbg_dotacao.visible := false ;
  edt_vlTotal.Text := '';
  cbx_cod_dotacaoBase.Clear;
  cbx_cod_dotacaoBase.Items.AddObject('', TObject(0));
  cbx_cod_dotacaoBase.Refresh;
  edt_valor_dtc.text := '';
  EscreveLog(btn_adicionar_dtc.name);
    Obj_LoadCombo
    (Self, 'cbx_cod_dotacaoBase', 'cod_DtcCategEconomica+''-''+cast(cod_DtcFuncao as varchar(2))+''-''+cast(cod_DtcSubFuncao as varchar(3))'+
    '+''-''+imasf.dbo.fun_AddZeros(cast(cod_DtcPrograma as varchar(4)),4)+''-''+cast(cod_DtcProjAtividade as varchar(3)) as ''dotacao''',
    'cod_dotacaobase', 'tbl_dotacaoBase order by cod_DtcCategEconomica, cod_DtcFuncao, cod_DtcSubFuncao, cod_DtcPrograma, cod_DtcProjAtividade');
end;

procedure TFrm_Cad_UnidadeOrcam.btn_alterar_dtcClick(Sender: TObject);
begin
  inherited;
  FStatus2 := FST_Alteracao;
  with fdt_principal4.spc_cons_adm_dotacao do begin
    btn_adicionar_dtc.Enabled := false ;
    btn_alterar_dtc.Enabled := false ;
    btn_remover_dtc.Enabled := false ;
    btn_salvar_dtc.Enabled := true ;
    btn_cancelar_dtc.Enabled := true ;
    dbg_dotacao.visible := false ;
    Obj_SetFormObjValueByName(self, cbx_cod_dotacaoBase.name, FieldByName('cod_dotacaobase').AsString);
    edt_valor_dtc.text := FieldByName('valor_dtc').AsString ;
    vlT := 0;
     while not eof do
       begin
         vlT := vlT + fdt_principal4.spc_cons_adm_dotacao.fieldbyname('valor_dtc').AsFloat;
         Next;
         edt_vlTotal.text := FormatFloat('###,###,##0.00', vlT);
       end;
    end;
    Obj_LoadCombo
    (Self, 'cbx_cod_dotacaoBase', 'cod_DtcCategEconomica+''-''+cast(cod_DtcFuncao as varchar(2))+''-''+cast(cod_DtcSubFuncao as varchar(3))'+
    '+''-''+cast(cod_DtcPrograma as varchar(4))+''-''+cast(cod_DtcProjAtividade as varchar(3)) as ''dotacao''', 'cod_dotacaoBase', 'tbl_dotacaoBase');
    EscreveLog(btn_alterar_dtc.name);
end;

procedure TFrm_Cad_UnidadeOrcam.btn_salvar_dtcClick(Sender: TObject);
begin
  inherited;
  if not BAS_ValidarCampo(cbx_cod_dotacaoBase.name, '� necess�rio preencher a Dota��o', VLD_Preenchido) then
    exit ;
  if not BAS_ValidarCampo(edt_valor_dtc.Name, '� necess�rio preencher o Valor', VLD_Preenchido) then
    exit ;
      if Dlg_YesNo('Tem Certeza que Salvar a Dota��o ?', Self) then
    begin
    end;
 if FStatus2 = FST_Novo then
  DB_ExecSQL('insert into tbl_dotacao ('+
  ' cod_unidadeOrcam, cod_dotacaoBase, valor_dtc) values ('
  +edt_cod_unidadeOrcam.Text+','+cbx_cod_dotacaoBase.getStrItemValue+','''+edt_valor_dtc.text+''')')
  else
      DB_ExecSQL('update tbl_dotacao set '+
    'cod_dotacaoBase = '+cbx_cod_dotacaoBase.getStrItemValue+', '+
    'valor_dtc = '''+edt_valor_dtc.text+''''+
    ' where '+
    'cod_unidadeOrcam = '+edt_cod_unidadeOrcam.text+' and '+
    'cod_dotacao = '+fdt_principal4.spc_cons_adm_dotacao.fieldbyname('cod_dotacao').AsString);
  with fdt_principal4.spc_cons_adm_dotacao do begin
    Close;
    parambyname('@cod_unidadeOrcam').asstring := edt_cod_unidadeOrcam.text ;
    Open;
    vlT := 0;
     while not eof do
       begin
         vlT := vlT + fdt_principal4.spc_cons_adm_dotacao.fieldbyname('valor_dtc').AsFloat;
         Next;
         edt_vlTotal.text := FormatFloat('###,###,##0.00', vlT);
       end;
  end;
  btn_adicionar_dtc.Enabled := true ;
  btn_alterar_dtc.Enabled := true ;
  btn_remover_dtc.Enabled := true ;
  dbg_dotacao.visible := true ;
  btn_salvar_dtc.Enabled := false ;
  btn_cancelar_dtc.Enabled := false ;
  EscreveLog(btn_salvar_dtc.name);
end;

procedure TFrm_Cad_UnidadeOrcam.btn_cancelar_dtcClick(Sender: TObject);
begin
  inherited;
  btn_adicionar_dtc.Enabled := true ;
  btn_alterar_dtc.Enabled := true ;
  btn_remover_dtc.Enabled := true ;
  btn_cancelar_dtc.Enabled := false;
  btn_salvar_dtc.Enabled := false;
  dbg_dotacao.visible := true ;
  EscreveLog(btn_cancelar_dtc.name);
end;

procedure TFrm_Cad_UnidadeOrcam.btn_remover_dtcClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja excluir a Dota��o ?', Self) then begin
    DB_ExecSQL('delete from tbl_dotacao where cod_unidadeOrcam = '+
    edt_cod_unidadeOrcam.text+' and cod_dotacaobase = '+fdt_principal4.spc_cons_adm_dotacao.FieldByName('cod_dotacaobase').asstring);
  with fdt_principal4.spc_cons_adm_dotacao do begin
    Close;
    parambyname('@cod_unidadeOrcam').asstring := edt_cod_unidadeOrcam.text ;
    Open;
    vlT := 0;
     while not eof do
       begin
         vlT := vlT + fdt_principal4.spc_cons_adm_dotacao.fieldbyname('valor_dtc').AsFloat;
         Next;
         edt_vlTotal.text := FormatFloat('###,###,##0.00', vlT);
       end;
  end;
  end;
  EscreveLog(btn_remover_dtc.name);
end;

procedure TFrm_Cad_UnidadeOrcam.btn_novoClick(Sender: TObject);
begin
  inherited;
  fdt_principal4.spc_cons_adm_dotacao.Close;
  edt_vlTotal.text := '';
end;

procedure TFrm_Cad_UnidadeOrcam.edt_cod_unidadeOrcamButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

end.
