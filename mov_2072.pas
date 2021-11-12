unit mov_2072;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BComboBox, BDateEdit, BEdit;

type
  TFrm_Mov_2072 = class(TFrm_Bas_TelaPadrao)
    DataSource1: TDataSource;
    Image2: TImage;
    Panel6: TPanel;
    btn_novo: TPDJButton;
    btn_Remover: TPDJButton;
    btn_Salvar: TPDJButton;
    Panel1: TPanel;
    lbl_total: TLabel;
    Panel4: TPanel;
    dbg_docingresso: TDBGrid;
    cbx_cod_tipodependente: TDCComboBox;
    ckb_pensionista: TCheckBox;
    cbx_cod_grauparent: TDCComboBox;
    btn_atualizar: TSpeedButton;
    cbx_cod_docingresso: TDCComboBox;
    btn_alterar: TPDJButton;
    btn_limpar: TPDJButton;
    dbe_cod_docingresso: TDBEdit;
    btn_cancelar: TPDJButton;
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_RemoverClick(Sender: TObject);
    procedure dbg_docingressoDblClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure cbx_cod_tipodependenteExit(Sender: TObject);
  private
    { Private declarations }
    procedure BotoesOnOff(b:boolean);
  public
    WPensionista, Wgrauparent: Integer;
    { Public declarations }
  end;

var
  Frm_Mov_2072: TFrm_Mov_2072;
  ChaveExp: Integer;
  cc : integer = 14;
  cr : integer = 0;
  cx : integer = 0;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
     dtm_principal4, Fun_Obj, dtm_principal6, Fun_ConsCadastro, Fun_Data, Fun_Medico,
     Bas_Impressao;

{$R *.DFM}

type
TMyDBGrid = class(TDBGrid)
end;

//published
//property DefaultRowHeight;
//end;

procedure TFrm_Mov_2072.FormShow(Sender: TObject);
begin
  inherited;
  Fdt_principal4.spc_cons_adm_verdocingresso.Close;
  dbg_docingresso.SetFocus;
  ChaveExp:= 999999999;
  Obj_LoadCombo(Self,'cbx_cod_grauparent', 'nome_gra', 'cod_grauparent', 'tbl_grauparent where cod_statusAtivo = 1');
  BAS_CarregarCombo('cbx_cod_tipodependente','nome_tdp');
  BAS_CarregarCombo('cbx_cod_docingresso','nome_din');
  cbx_cod_tipodependente.ItemIndex:= -1;
  cbx_cod_grauparent.ItemIndex:= -1;
  cbx_cod_tipodependente.SetFocus;
end;

procedure TFrm_Mov_2072.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := b ;
  btn_Salvar.Enabled := not b ;
  btn_cancelar.Enabled := b ;
  btn_Remover.Enabled := b ;
  dbg_docingresso.visible := b ;
end;

procedure TFrm_Mov_2072.btn_novoClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Novo;
  BotoesOnOff(false);
  cbx_cod_docingresso.Enabled := true;
  cbx_cod_docingresso.SetFocus;
  cbx_cod_docingresso.ItemIndex:= -1;
  EscreveLog(btn_novo.name);
  lbl_total.Visible:= False;
end;

procedure TFrm_Mov_2072.btn_SalvarClick(Sender: TObject);
begin
  inherited;
  if not BAS_ValidarCampo(cbx_cod_docingresso.name, 'É necessário preencher o Documento de Ingresso!', VLD_Preenchido) then
     Exit;
  if ckb_pensionista.Checked = True then
     WPensionista:= 1
  else
     WPensionista:= 0;
  if DB_OpenSQL('select * from tbl_doctipobeneficiario where cod_tipodependente = ' + cbx_cod_tipodependente.valueItem  +
                ' and cod_pensionista = ' + IntToStr(WPensionista) + ' and cod_grauparent = ' + IntToStr(Wgrauparent) +
                ' and cod_docingresso = ' + cbx_cod_docingresso.valueItem) > 0 then
     begin
     Dlg_Alerta('Documento de Ingresso já Cadastrado!', Self);
     dbe_cod_docingresso.SetFocus;
     cbx_cod_docingresso.SetFocus;
     btn_cancelar.Enabled:= True;
     Exit;
     end;
  if not Dlg_YesNo('Tem Certeza que Deseja Salvar?', Self) then
     Exit;
  if FStatus = FST_Novo then
     DB_ExecSQL('insert into tbl_doctipobeneficiario (cod_tipodependente, cod_pensionista, cod_grauparent, cod_docingresso) values ('+
                cbx_cod_tipodependente.valueItem + ', ' + IntToStr(WPensionista) + ', ' +
                IntToStr(Wgrauparent) + ', ' + cbx_cod_docingresso.valueItem + ')');
  BotoesOnOff(true);
  dbg_docingresso.SetFocus;
  EscreveLog(btn_Salvar.name);
  lbl_total.Visible:= True;
  btn_atualizarClick(Self);
end;

procedure TFrm_Mov_2072.btn_RemoverClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja Remover o Registro ?', Self) then
     begin
     DB_ExecSQL('delete from tbl_doctipobeneficiario where cod_docingresso = '+ dbe_cod_docingresso.Text);
     btn_atualizarClick(Self);
     end;
  dbe_cod_docingresso.SetFocus;
  dbg_docingresso.SetFocus;
  EscreveLog(btn_Remover.name);
end;

procedure TFrm_Mov_2072.dbg_docingressoDblClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(Sender);
end;

procedure TFrm_Mov_2072.btn_atualizarClick(Sender: TObject);
begin
  inherited;
  lbl_total.Visible:= True;
  lbl_total.Caption:= '';
  Fdt_principal4.spc_cons_adm_verdocingresso.Close;
  cbx_cod_tipodependenteExit(Self);
  if cbx_cod_TipoDependente.ItemIndex < 0 then
     begin
     Dlg_Alerta('É necessário selecionar um tipo de beneficiário!', Self);
     dbe_cod_docingresso.SetFocus;
     cbx_cod_TipoDependente.SetFocus;
     Exit;
     end;
  if cbx_cod_TipoDependente.ItemIndex = 0 then
     cbx_cod_grauparent.ItemIndex:= -1;
  if (cbx_cod_TipoDependente.ItemIndex > 0) and (cbx_cod_grauparent.ItemIndex = -1) then
     begin
     Dlg_Alerta('Selecione o grau de parentesco!', Self);
     cbx_cod_grauparent.SetFocus;
     Exit;
     end;
  if cbx_cod_grauparent.ItemIndex > -1 then
     ckb_pensionista.Checked:= False;
  Wgrauparent:= 99;
  if cbx_cod_TipoDependente.ValueItem = 1 then
     if (cbx_cod_grauparent.ValueItem <> 1) and (cbx_cod_grauparent.ValueItem <> 2) and
        (cbx_cod_grauparent.ValueItem <> 3) and (cbx_cod_grauparent.ValueItem <> 4) and
        (cbx_cod_grauparent.ValueItem <> 5) and (cbx_cod_grauparent.ValueItem <> 6) and
        (cbx_cod_grauparent.ValueItem <> 10) and (cbx_cod_grauparent.ValueItem <> 25) then
        begin
        Dlg_Alerta('Esse grau de parentesco não se enquadra com o tipo de beneficiário!', Self);
        cbx_cod_tipodependente.SetFocus;
        Exit;
        end
     else
        Wgrauparent:= cbx_cod_grauparent.ValueItem;
  if cbx_cod_TipoDependente.ValueItem > 1 then
     if (cbx_cod_grauparent.ValueItem <> 2) and (cbx_cod_grauparent.ValueItem <> 3) and
        (cbx_cod_grauparent.ValueItem <> 4) and (cbx_cod_grauparent.ValueItem <> 5) and
        (cbx_cod_grauparent.ValueItem <> 6) and (cbx_cod_grauparent.ValueItem <> 10) and
        (cbx_cod_grauparent.ValueItem <> 25) then
        begin
        Dlg_Alerta('Esse grau de parentesco não se enquadra com o tipo de beneficiário!', Self);
        cbx_cod_tipodependente.SetFocus;
        Exit;
        end
     else
        Wgrauparent:= cbx_cod_grauparent.ValueItem;
  with Fdt_principal4.spc_cons_adm_verdocingresso do
     begin
     close;
     ParamByName('@cod_tipodependente').AsString := IntToStr(cbx_cod_tipodependente.ValueItem);
     ParamByName('@cod_grauparent').AsString := IntToStr(Wgrauparent);
     ParamByName('@cod_pensionista').AsString := '0';
     if ckb_pensionista.Checked = True then
        ParamByName('@cod_pensionista').AsString := '1';
     Fdt_principal4.spc_cons_adm_verdocingresso.Open;
     lbl_total.Caption:= IntToStr(Fdt_principal4.spc_cons_adm_verdocingresso.RecordCount) + ' Registro(s)';
     end;
  BotoesOnOff(true);
end;

procedure TFrm_Mov_2072.btn_alterarClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Alteracao;
  BotoesOnOff(false);
  btn_cancelar.Enabled:= True;
  cbx_cod_docingresso.Enabled := true;
  cbx_cod_docingresso.SetFocus;
  EscreveLog(btn_novo.name);
  lbl_total.Visible:= False;
end;

procedure TFrm_Mov_2072.btn_limparClick(Sender: TObject);
begin
  inherited;
  cbx_cod_tipodependente.ItemIndex:= -1;
  cbx_cod_tipodependente.Refresh;
  cbx_cod_grauparent.ItemIndex:= -1;
  cbx_cod_grauparent.Refresh;
  BotoesOnOff(false);
  dbg_docingresso.visible:= True;
  lbl_total.caption:= '';
  dbe_cod_docingresso.SetFocus;
  cbx_cod_tipodependente.SetFocus;
  btn_salvar.Enabled:= False;
  ckb_pensionista.Visible:= False;
  ckb_pensionista.Checked:= False;
  cbx_cod_grauparent.Visible:= False;
  Fdt_principal4.spc_cons_adm_verdocingresso.Close;
  Panel1.Caption:= '    Tipo de Beneficiário';
end;

procedure TFrm_Mov_2072.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  BotoesOnOff(true);
  EscreveLog(btn_cancelar.name);
  btn_atualizarClick(Self);
end;

procedure TFrm_Mov_2072.cbx_cod_tipodependenteExit(Sender: TObject);
begin
  inherited;
  ckb_pensionista.Visible:= False;
  cbx_cod_grauparent.Visible:= False;
  if cbx_cod_tipodependente.ItemIndex = 0 then
     begin
     ckb_pensionista.Visible:= True;
     Panel1.Caption:= '    Tipo de Beneficiário';
     end
  else
     begin
     cbx_cod_grauparent.Visible:= True;
     Panel1.Caption:= '    Tipo de Beneficiário                                                                                           Grau Parentesco';
     end;
end;

end.

