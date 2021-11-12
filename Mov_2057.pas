unit Mov_2057;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList;

type
  TFrm_Mov_2057 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_inscricao: TDCEdit;
    edt_carteirinha: TDCEdit;
    PDJButton3: TPDJButton;
    Panel6: TPanel;
    btn_limpar: TPDJButton;
    dbg_conveniado: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    lbl_total: TLabel;
    ckb_confirmarTodos: TCheckBox;
    edt_cod_beneficiario: TDBEdit;
    Label9: TLabel;
    pnl_alerta: TPanel;
    btn_alterar: TPDJButton;
    PDJButton1: TPDJButton;
    PDJButton4: TPDJButton;
    PDJButton5: TPDJButton;
    lbl_motivo: TLabel;
    cbx_cod_emissaocarteira: TDCComboBox;
    btn_salvarProc: TPDJButton;
    procedure btn_alterarClick(Sender: TObject);
    procedure edt_nossonumero_flhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure edt_cod_beneficiarioChange(Sender: TObject);
    procedure edt_inscricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Btn_FecharClick(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure btn_salvarProcClick(Sender: TObject);
  private
    { Private declarations }
    wCod_Beneficiario, wInscricao : String;
    procedure AtualizaBeneficiarios;
  public
    { Public declarations }

  end;

var
  Frm_Mov_2057: TFrm_Mov_2057;

implementation

uses Fun_Obj, Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes, Fun_str,
  dtm_principal6, Bas_Impressao, Dlg_Mensagem, Fun_Beneficiario, Mov_2056,
  dtm_principal2;
{$R *.DFM}



procedure TFrm_Mov_2057.btn_alterarClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem certeza que deseja confirmar o recebimento?',self) then
  begin
    if edt_cod_beneficiario.Text <> '' then
    begin
      if ckb_confirmarTodos.Checked then
      begin
        with Fdt_principal2.spc_cons_adm_emissaocarteiraUnimed02 do
        begin
          Prior;
          while not Eof do
          begin
            DB_ExecSQL('update tbl_histcarteiraUnimed set cod_statuscarteira = 10, dtconfirmacao_hcu = getdate() '+
            ' where cod_beneficiario = '+edt_cod_beneficiario.Text+' and dtemissao_hcu = '+
            ' (select max(dtemissao_hcu) from tbl_histcarteiraUnimed where cod_beneficiario = '+
            edt_cod_beneficiario.Text+')');
            Next;
          end;
        end;
      end
      else begin
        DB_ExecSQL('update tbl_histcarteiraUnimed set cod_statuscarteira = 10, dtconfirmacao_hcu = getdate() '+
        ' where cod_beneficiario = '+edt_cod_beneficiario.Text+' and dtemissao_hcu = '+
        ' (select max(dtemissao_hcu) from tbl_histcarteiraUnimed where cod_beneficiario = '+
         edt_cod_beneficiario.Text+')');
      end;
   //   btn_limparClick(self);
    Dlg_Ok('Recebimento confirmado com sucesso!',self);
    end;
  end;
end;

procedure TFrm_Mov_2057.edt_nossonumero_flhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  Fplano : String;
begin
  inherited;
  if Key = 13 then begin
    if edt_carteirinha.Text <> '' then begin
      edt_inscricao.Text := copy(edt_carteirinha.text, 10, 6);
      AtualizaBeneficiarios;
    end;
  end;
end;

procedure TFrm_Mov_2057.PDJButton3Click(Sender: TObject);
begin
  inherited;
    Hide;
    Frm_Mov_2056 := TFrm_Mov_2056.Create(Self);
    Frm_Mov_2056.wInscricao := edt_inscricao.Text;
    Frm_Mov_2056.ShowModal;
    Frm_Mov_2056.Release;
    Show;
end;

procedure TFrm_Mov_2057.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Confirmar a entrega da carteirinha?',self) then
  begin
    if edt_cod_beneficiario.Text <> '' then
    begin
      if ckb_confirmarTodos.Checked then
      begin
        with Fdt_principal2.spc_cons_adm_emissaocarteiraUnimed02 do
        begin
          Prior;
          while not Eof do
          begin
            DB_ExecSQL('update tbl_histcarteiraUnimed set cod_statuscarteira = 11, dtentrega_hcu = getdate()'+
            ' where cod_beneficiario = '+edt_cod_beneficiario.Text+' and dtemissao_hcu = '+
            ' (select max(dtemissao_hcu) from tbl_histcarteiraUnimed where cod_beneficiario = '+
            edt_cod_beneficiario.Text+')');
            Next;
          end;
        end;
      end
      else begin
        DB_ExecSQL('update tbl_histcarteiraUnimed set cod_statuscarteira = 11, dtentrega_hcu = getdate()'+
        ' where cod_beneficiario = '+edt_cod_beneficiario.Text+' and dtemissao_hcu = '+
        ' (select max(dtemissao_hcu) from tbl_histcarteiraUnimed where cod_beneficiario = '+
        edt_cod_beneficiario.Text+')');
      end;
    //  btn_limparClick(self);
    Dlg_Ok('Entrega confirmada com sucesso!',self);
    end;
  end;
end;

procedure TFrm_Mov_2057.btn_limparClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEditTag(self,0);
  pnl_alerta.Visible := false;
  ckb_confirmarTodos.Checked := false;
  Fdt_principal2.spc_cons_adm_emissaocarteiraUnimed02.close;
  edt_carteirinha.SetFocus;
end;

procedure TFrm_Mov_2057.edt_cod_beneficiarioChange(Sender: TObject);
begin
  inherited;
  if edt_cod_beneficiario.Text <> '' then
  begin
    if Fdt_principal2.spc_cons_adm_emissaocarteiraUnimed02.FieldByName('cod_sitbeneficiario').AsString <> '' then begin
      DB_OpenSql('select nome_sit, tipo_sit from tbl_sitbeneficiario where cod_sitbeneficiario = '+
      Fdt_principal2.spc_cons_adm_emissaocarteiraUnimed02.FieldByName('cod_sitbeneficiario').AsString);
      pnl_alerta.Caption := '***  Situação : '+Tab.FieldByName('nome_sit').AsString+'  ***';
      case Tab.FieldByName('tipo_sit').AsInteger of
        1 : pnl_alerta.color := clYellow;
        2 : pnl_alerta.color := clRed;
      end;
      pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
      DB_ClearSQL;
    end;
  end;
end;

procedure TFrm_Mov_2057.AtualizaBeneficiarios;
begin
  with Fdt_principal2.spc_cons_adm_emissaocarteiraUnimed02 do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao.text;
    open;
    lbl_total.Caption := IntToStr(RecordCount);
    if RecordCount < 1 then
      Dlg_Alerta('Inscrição não Encontrada ou Beneficiario pode estar Cancelado!',self);
  end;
end;

procedure TFrm_Mov_2057.edt_inscricaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 13 then
    if edt_inscricao.Text <> '' then
      AtualizaBeneficiarios;
end;

procedure TFrm_Mov_2057.Btn_FecharClick(Sender: TObject);
begin
  inherited;
  Fdt_principal2.spc_cons_adm_emissaocarteiraUnimed02.close;
end;

procedure TFrm_Mov_2057.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if not Dlg_YesNo('Confirmar o recolhimento da carteirinha?',self) then begin
    Obj_EmptyEditTag(self,0);
    pnl_alerta.Visible := false;
    exit;
  end;
  if edt_cod_beneficiario.Text <> '' then
    begin
    lbl_motivo.Visible:= True;
    cbx_cod_emissaocarteira.Visible:= True;
    btn_salvarProc.Visible:= True;
    Obj_LoadCombo(Self, 'cbx_cod_emissaocarteira','descricao_emc','cod_emissaocarteira', 'tbl_emissaocarteira where cod_emissaocarteira between 2 and 8');
    cbx_cod_emissaocarteira.ValueItem:= 2;
    end;
end;

procedure TFrm_Mov_2057.PDJButton5Click(Sender: TObject);
begin
  inherited;
  if not Dlg_YesNo('Confirmar expirado prazo de entrega da carteirinha?',self) then begin
    Obj_EmptyEditTag(self,0);
    pnl_alerta.Visible := false;
    edt_carteirinha.SetFocus;
    exit;
  end;
  if edt_cod_beneficiario.Text <> '' then
  begin
    if DB_ExecSQL('update tbl_histcarteiraUnimed set cod_statuscarteira = 998, dtstatusfinal_hcu = getdate() '+
    ' where cod_beneficiario = '+edt_cod_beneficiario.Text+' and dtemissao_hcu = '+
    ' (select max(dtemissao_hcu) from tbl_histcarteiraUnimed where cod_beneficiario = '+
    edt_cod_beneficiario.Text+')')  then
    begin
      Dlg_Ok('Confirmada expirado prazo de entrega da carteirinha '+edt_inscricao.Text,self);
      Obj_EmptyEditTag(self,0);
    end else
      Dlg_Alerta('Não foi encontrado o pedido desta carteirinha!',self);
  end;
  pnl_alerta.Visible := false;
end;

procedure TFrm_Mov_2057.btn_salvarProcClick(Sender: TObject);
begin
  inherited;
  if DB_ExecSQL('update tbl_histcarteiraUnimed set cod_statuscarteira = 997, cod_emissaocarteira = '+ cbx_cod_emissaocarteira.valueitem +
    ', dtstatusfinal_hcu = getdate() where cod_beneficiario = '+edt_cod_beneficiario.Text+' and dtemissao_hcu = '+
    ' (select max(dtemissao_hcu) from tbl_histcarteiraUnimed where cod_beneficiario = '+
    edt_cod_beneficiario.Text+')')  then
    begin
      Dlg_Ok('Confirmado recolhimento da carteirinha '+edt_inscricao.Text,self);
      Obj_EmptyEditTag(self,0);
    end else
      Dlg_Alerta('Não foi encontrado o pedido desta carteirinha!',self);
  lbl_motivo.Visible:= False;
  cbx_cod_emissaocarteira.Visible:= False;
  btn_salvarProc.Visible:= False;
  pnl_alerta.Visible := False;
  edt_carteirinha.SetFocus;
end;

end.



