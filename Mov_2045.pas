unit Mov_2045;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList;

type
  TFrm_Mov_2045 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_nome_ben: TDCEdit;
    edt_inscricao: TDCEdit;
    btn_alterar: TPDJButton;
    edt_carteirinha: TDCEdit;
    Panel1: TPanel;
    edt_plano: TDCEdit;
    PDJButton3: TPDJButton;
    PDJButton1: TPDJButton;
    Panel5: TPanel;
    ScrollBox1: TScrollBox;
    LsB_Carencia: TListBox;
    pnl_alerta: TPanel;
    PDJButton2: TPDJButton;
    pnl_alerta2: TPanel;
    PDJButton4: TPDJButton;
    cbx_cod_emissaocarteira: TDCComboBox;
    lbl_motivo: TLabel;
    btn_salvarProc: TPDJButton;
    PDJButton5: TPDJButton;
    procedure btn_alterarClick(Sender: TObject);
    procedure edt_nossonumero_flhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure edt_inscricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_salvarProcClick(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
  private
    { Private declarations }
    wCod_Beneficiario, wInscricao, WCarencia: String;
  public
    { Public declarations }

  end;

var
  Frm_Mov_2045: TFrm_Mov_2045;

implementation

uses Fun_Obj, Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes, Fun_str,
  dtm_principal6, Bas_Impressao, Dlg_Mensagem, Fun_Beneficiario, Mov_2023;
{$R *.DFM}

procedure TFrm_Mov_2045.btn_alterarClick(Sender: TObject);
begin
  inherited;
  if not Dlg_YesNo('Tem certeza que Deseja Confirmar o Recebimento?',self) then begin
    Obj_EmptyEditTag(self,0);
    LsB_Carencia.Clear;
    pnl_alerta.Visible := false;
    edt_nome_ben.SetFocus;
    edt_carteirinha.SetFocus;
    exit;
  end;
  if wCod_Beneficiario <> '' then
  begin
    if DB_ExecSQL('update tbl_histcarteira set cod_statuscarteira = 10, dtconfirmacao_hct = getdate() '+
    ' where cod_beneficiario = '+wCod_Beneficiario+' and dtemissao_hct = '+
    ' (select max(dtemissao_hct) from tbl_histcarteira where cod_beneficiario = '+
    wCod_Beneficiario+')')  then
    begin
      Dlg_Ok('Confirmado o recebimento da carteirinha '+edt_inscricao.Text,self);
      Obj_EmptyEditTag(self,0);
      LsB_Carencia.Clear;
    end else
      Dlg_Alerta('N�o foi encontrado o pedido desta carteirinha!',self);
  end;
  pnl_alerta.Visible := false;
  edt_nome_ben.SetFocus;
  edt_carteirinha.SetFocus;
end;

procedure TFrm_Mov_2045.edt_nossonumero_flhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  Fplano : String;
begin
  inherited;
  WCarencia:= '';
    if Key = 13 then begin
    if edt_carteirinha.Text <> '' then
    begin
      if length(edt_carteirinha.text) = 33 then
      begin
        wCod_Beneficiario := copy(edt_carteirinha.text, 2, 6) ;
        edt_inscricao.Text := FormatarCarteirinha(copy(edt_carteirinha.text, 8, 10));
        Fplano := copy(edt_carteirinha.text, 9, 1);
      end
      else begin
        wCod_Beneficiario := copy(edt_carteirinha.text, 2, 5) ;
        edt_inscricao.Text := FormatarCarteirinha(copy(edt_carteirinha.text, 7, 10));
        Fplano := copy(edt_carteirinha.text, 8, 1);
      end;
      DB_OpenSQL('SELECT b.nome_ben, p.descricao_pla, b.dtnascim_ben, cod_sitbeneficiario, b.cod_plano FROM tbl_beneficiario b INNER JOIN tbl_plano p ON b.cod_plano = p.cod_plano '+
      ' WHERE b.cod_beneficiario = '+wCod_Beneficiario);
      edt_nome_ben.Text := tab.fieldbyname('nome_ben').AsString;
      edt_plano.Text := tab.fieldByName('descricao_pla').AsString;
      if   StrToInt(Fplano) <> Tab.FieldByName('cod_plano').AsInteger then
        pnl_alerta2.Visible := true
      else
        pnl_alerta2.Visible := false;
      if Tab.FieldByName('cod_sitbeneficiario').AsString <> '' then begin
        DB_OpenSql('select nome_sit, tipo_sit from tbl_sitbeneficiario where cod_sitbeneficiario = '+Tab.FieldByName('cod_sitbeneficiario').AsString);
        pnl_alerta.Caption := '***  Situa��o : '+Tab.FieldByName('nome_sit').AsString+'  ***';
        case Tab.FieldByName('tipo_sit').AsInteger of
          1 : pnl_alerta.color := clYellow;
          2 : pnl_alerta.color := clRed;
        end;
        pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
        DB_ClearSQL;
      end;
      DB_OpenSQL('select c.cod_nivelcar, c.dtlimite_car, c.informacao_car, n.nome_niv '+
      'from tbl_carencia c, tbl_nivelcar n where c.cod_nivelcar = n.cod_nivelcar and '+
      'cod_beneficiario = '+wCod_Beneficiario+' order by c.cod_nivelcar');
      LsB_Carencia.Items.Clear;
      while not Tab.Eof do
      begin
        LsB_Carencia.Items.Add(STR_AddSpaces(Tab.FieldByName('cod_nivelcar').AsString, 2)+
        STR_AddSpaces(Tab.FieldByName('nome_niv').AsString, 10)+
        STR_AddSpaces(Tab.FieldByName('dtlimite_car').AsString, 10)+
        Tab.FieldByName('informacao_car').AsString);
        if (Tab.FieldByName('cod_nivelcar').Text = '8') and (Tab.FieldByName('dtlimite_car').AsDateTime > Date) then
           WCarencia:= 'Inscri��o em Car�ncia ' + Tab.FieldByName('nome_niv').AsString + ' at� ' + Tab.FieldByName('dtlimite_car').Text;
        Tab.Next;
      end;
    end;
  end;
end;

procedure TFrm_Mov_2045.PDJButton3Click(Sender: TObject);
begin
  inherited;
    Hide;
    Frm_Mov_2023 := TFrm_Mov_2023.Create(Self);
    Frm_Mov_2023.wInscricao := copy(edt_inscricao.Text,5,5);
    Frm_Mov_2023.ShowModal;
    Frm_Mov_2023.Release;
    Show;
end;

procedure TFrm_Mov_2045.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if WCarencia <> '' then
     Dlg_Alerta(WCarencia + ' !',self);
  if not Dlg_YesNo('Confirmar a Entrega da Carteirinha?',self) then begin
    Obj_EmptyEditTag(self,0);
    LsB_Carencia.Clear;
    pnl_alerta.Visible := false;
    edt_nome_ben.SetFocus;
    edt_carteirinha.SetFocus;
    exit;
  end;
  if wCod_Beneficiario <> '' then
  begin
    if DB_ExecSQL('update tbl_histcarteira set cod_statuscarteira = 11, dtentrega_hct = getdate()'+
    ' where cod_beneficiario = '+wCod_Beneficiario+' and dtemissao_hct = '+
    ' (select max(dtemissao_hct) from tbl_histcarteira where cod_beneficiario = '+
    wCod_Beneficiario+')')  then
    begin
      Dlg_Ok('Confirmada a Entrega da Carteirinha '+edt_inscricao.Text,self);
      Obj_EmptyEditTag(self,0);
      LsB_Carencia.Clear;
    end else
      Dlg_Alerta('N�o foi encontrado o pedido desta carteirinha!',self);
  end;
  pnl_alerta.Visible := false;
  edt_nome_ben.SetFocus;
  edt_carteirinha.SetFocus;
end;

procedure TFrm_Mov_2045.edt_inscricaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  WCarencia:= '';
  if key = 13 then
  begin
    if (edt_inscricao.Text <> '') and (Length(edt_inscricao.text) >= 14) then
    begin
      DB_OpenSQL('SELECT b.cod_beneficiario, b.nome_ben, p.descricao_pla, b.dtnascim_ben, cod_sitbeneficiario FROM tbl_beneficiario b INNER JOIN tbl_plano p ON b.cod_plano = p.cod_plano '+
      ' WHERE b.inscricao_ben = '+copy(edt_inscricao.text,5,5)+' and titulacartei_ben = '+copy(edt_inscricao.text,11,2));
      wCod_Beneficiario := tab.fieldbyname('cod_beneficiario').AsString;
      edt_nome_ben.Text := tab.fieldbyname('nome_ben').AsString;
      edt_plano.Text := tab.fieldByName('descricao_pla').AsString;
      if Tab.FieldByName('cod_sitbeneficiario').AsString <> '' then begin
        DB_OpenSql('select nome_sit, tipo_sit from tbl_sitbeneficiario where cod_sitbeneficiario = '+Tab.FieldByName('cod_sitbeneficiario').AsString);
        pnl_alerta.Caption := '***  Situa��o : '+Tab.FieldByName('nome_sit').AsString+'  ***';
        case Tab.FieldByName('tipo_sit').AsInteger of
          1 : pnl_alerta.color := clYellow;
          2 : pnl_alerta.color := clRed;
        end;
        pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
        DB_ClearSQL;
      end;
      DB_OpenSQL('select c.cod_nivelcar, c.dtlimite_car, c.informacao_car, n.nome_niv '+
      'from tbl_carencia c, tbl_nivelcar n where c.cod_nivelcar = n.cod_nivelcar and '+
      'cod_beneficiario = '+wCod_Beneficiario+' order by c.cod_nivelcar');
      LsB_Carencia.Items.Clear;
      while not Tab.Eof do
      begin
        LsB_Carencia.Items.Add(STR_AddSpaces(Tab.FieldByName('cod_nivelcar').AsString, 2)+
        STR_AddSpaces(Tab.FieldByName('nome_niv').AsString, 10)+
        STR_AddSpaces(Tab.FieldByName('dtlimite_car').AsString, 10)+
        Tab.FieldByName('informacao_car').AsString);
        if (Tab.FieldByName('cod_nivelcar').Text = '8') and (Tab.FieldByName('dtlimite_car').AsDateTime > Date) then
           WCarencia:= 'Inscri��o em Car�ncia ' + Tab.FieldByName('nome_niv').AsString + ' at� ' + Tab.FieldByName('dtlimite_car').Text;
        Tab.Next;
      end;
    end;
  end;
end;

procedure TFrm_Mov_2045.PDJButton2Click(Sender: TObject);
begin
  inherited;
  Obj_EmptyEditTag(self,0);
  LsB_Carencia.Clear;
  pnl_alerta.Visible := false;
  edt_carteirinha.SetFocus;
end;

procedure TFrm_Mov_2045.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if not Dlg_YesNo('Confirmar o recolhimento da carteirinha?',self) then begin
    Obj_EmptyEditTag(self,0);
    LsB_Carencia.Clear;
    pnl_alerta.Visible := false;
    edt_nome_ben.SetFocus;
    edt_carteirinha.SetFocus;
    exit;
  end;
  if wCod_Beneficiario <> '' then
    begin
    lbl_motivo.Visible:= True;
    cbx_cod_emissaocarteira.Visible:= True;
    btn_salvarProc.Visible:= True;
    Obj_LoadCombo(Self, 'cbx_cod_emissaocarteira','descricao_emc','cod_emissaocarteira', 'tbl_emissaocarteira where cod_emissaocarteira between 2 and 8');
    Obj_SetFormObjValueByName(self, cbx_cod_emissaocarteira.Name, 5);
    end;
end;

procedure TFrm_Mov_2045.FormShow(Sender: TObject);
begin
  inherited;
  lbl_motivo.Visible:= False;
  cbx_cod_emissaocarteira.Visible:= False;
  btn_salvarProc.Visible:= False;
end;

procedure TFrm_Mov_2045.btn_salvarProcClick(Sender: TObject);
begin
  inherited;
  if DB_ExecSQL('update tbl_histcarteira set cod_statuscarteira = 997, cod_emissaocarteira = '+ cbx_cod_emissaocarteira.valueitem +
    ', dtstatusfinal_hct = getdate() where cod_beneficiario = '+wCod_Beneficiario+' and dtemissao_hct = '+
    ' (select max(dtemissao_hct) from tbl_histcarteira where cod_beneficiario = '+
    wCod_Beneficiario+')')  then
    begin
      Dlg_Ok('Confirmado recolhimento da carteirinha '+edt_inscricao.Text,self);
      Obj_EmptyEditTag(self,0);
      LsB_Carencia.Clear;
    end else
      Dlg_Alerta('N�o foi encontrado o pedido desta carteirinha!',self);
  lbl_motivo.Visible:= False;
  cbx_cod_emissaocarteira.Visible:= False;
  btn_salvarProc.Visible:= False;
  pnl_alerta.Visible := false;
  edt_nome_ben.SetFocus;
  edt_carteirinha.SetFocus;
end;

procedure TFrm_Mov_2045.PDJButton5Click(Sender: TObject);
begin
  inherited;
  if not Dlg_YesNo('Confirmar expirado prazo de entrega da carteirinha?',self) then begin
    Obj_EmptyEditTag(self,0);
    LsB_Carencia.Clear;
    pnl_alerta.Visible := false;
    edt_nome_ben.SetFocus;
    edt_carteirinha.SetFocus;
    exit;
  end;
  if wCod_Beneficiario <> '' then
  begin
    if DB_ExecSQL('update tbl_histcarteira set cod_statuscarteira = 998, dtstatusfinal_hct = getdate() '+
    ' where cod_beneficiario = '+wCod_Beneficiario+' and dtemissao_hct = '+
    ' (select max(dtemissao_hct) from tbl_histcarteira where cod_beneficiario = '+
    wCod_Beneficiario+')')  then
    begin
      Dlg_Ok('Confirmada expirado prazo de entrega da carteirinha '+edt_inscricao.Text,self);
      Obj_EmptyEditTag(self,0);
      LsB_Carencia.Clear;
    end else
      Dlg_Alerta('N�o foi encontrado o pedido desta carteirinha!',self);
  end;
  pnl_alerta.Visible := false;
  edt_nome_ben.SetFocus;
  edt_carteirinha.SetFocus;
end;

end.



