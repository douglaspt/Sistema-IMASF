unit Cad_ItemCusto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, PDJButton, ExtCtrls, StdCtrls, DB, Grids, Buttons,
  DBCtrls, BEdit, jpeg, BEditButton, ComCtrls, DCChoice, Fun_Obj;

type
  TFrm_Cad_ItemCusto = class(TFrm_Bas_TelaPadrao)
    btn_excluir: TPDJButton;
    btn_cancelar: TPDJButton;
    btn_salvar: TPDJButton;
    btn_alterar: TPDJButton;
    btn_novo: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel38: TPanel;
    edt_dtalteracao_ics: TDCDateEdit;
    edt_nome_usu: TDCEdit;
    Panel4: TPanel;
    edt_cod_itemservico: TEditButton;
    Panel14: TPanel;
    edt_valor1custos: TBEdit;
    edt_prtan1custos: TBEdit;
    edt_auxil1custos: TBEdit;
    Panel15: TPanel;
    edt_areafilme1_ics: TBEdit;
    edt_fatmu1custos: TBEdit;
    stg_audi: TStringGrid;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_itemservicoButtonClick(Sender: TObject);
    procedure edt_cod_itemservicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
    procedure BotoesOnOff(b:boolean);
    procedure Visible_OnOff(b:boolean);
  public
    { Public declarations }
  end;

var
  Frm_Cad_ItemCusto: TFrm_Cad_ItemCusto;
  ChaveExp: Integer;

implementation

uses Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes,  dtm_principal6, Bas_Impressao, Dlg_Mensagem, Mov_2037;

{$R *.DFM}

procedure TFrm_Cad_ItemCusto.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := not b ;
  btn_alterar.Enabled := not b ;
  btn_salvar.Enabled := b ;
  btn_cancelar.Enabled := b ;
  btn_excluir.Enabled := b ;
  Btn_Fechar.Enabled := not b ;
  btn_minim.Enabled := not b ;
  btn_close.Enabled := not b ;
  Visible_OnOff(b);
end;

procedure TFrm_Cad_ItemCusto.Visible_OnOff(b:boolean);
begin
  Obj_VisibleOnOff(Self,b);
end;

procedure TFrm_Cad_ItemCusto.btn_novoClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Novo ;
  BotoesOnOff(true);
  edt_cod_itemservico.SetFocus;
  btn_excluir.Enabled := false ;
  EscreveLog(btn_novo.name);
end;

procedure TFrm_Cad_ItemCusto.btn_alterarClick(Sender: TObject);
begin
  inherited;
  if edt_cod_itemservico.Text = '' then begin
    FPesquisaSQL := 'select cod_itemservico,valor1custos, prtan1custos, auxil1custos,'+
    ' areafilme1_ics, fatmu1custos from tbl_itemcusto where cod_itemservico > 0';
    if edt_cod_itemservico.Text <> '' then
      FPesquisaSQL  := FPesquisaSQL+' and cod_itemservico = '+edt_cod_itemservico.text;
    edt_cod_itemservico.text := Cons_ConsultaCadastro(self, 'tbl_itemcusto', FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
  end;
  if edt_cod_itemservico.text <> '' then
    begin
    if DB_OpenSQL('select i.valor1custos, i.prtan1custos, i.auxil1custos, i.areafilme1_ics, i.fatmu1custos, '+
                  'i.dtalteracao_ics, u.nome_usu from tbl_itemcusto i '+
                  'left join tbl_usuario u on u.cod_usuario = i.cod_usuario '+
                  'where cod_itemservico = ' +edt_cod_itemservico.Text) < 1 then
       begin
       Dlg_Erro(MSG_DB_ERR_RecNotFound, self);
       exit;
       end;
    edt_valor1custos.text := Tab.FieldByName('valor1custos').AsString ;
    edt_prtan1custos.text := Tab.FieldByName('prtan1custos').AsString ;
    edt_auxil1custos.text := Tab.FieldByName('auxil1custos').AsString ;
    edt_areafilme1_ics.text := Tab.FieldByName('areafilme1_ics').AsString ;
    edt_fatmu1custos.text := Tab.FieldByName('fatmu1custos').AsString ;
    edt_dtalteracao_ics.Text:= Tab.FieldByName('dtalteracao_ics').AsString;
    edt_nome_usu.Text:= Tab.FieldByName('nome_usu').AsString;
    FStatus := FST_Alteracao;
    BotoesOnOff(true);
    edt_cod_itemservico.Enabled := false;
    edt_valor1custos.SetFocus;
    EscreveLog(btn_alterar.name);
    DadosEntrada := LerDadosTela(Self);
    end;
end;

procedure TFrm_Cad_ItemCusto.btn_salvarClick(Sender: TObject);
Var
  x: integer;
begin
  inherited;
  if not BAS_ValidarCampo(edt_cod_itemservico.name, '� necess�rio preencher o C�digo do Item de Servi�o!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_valor1custos.name, '� necess�rio preencher o Valor!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_prtan1custos.Name, '� necess�rio preencher o Porte Anest�sico!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_auxil1custos.Name, '� necess�rio preencher o No.de Auxliares!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_areafilme1_ics.Name, '� necess�rio preencher o Valor do Filme!', VLD_Preenchido) or
   not BAS_ValidarCampo(edt_fatmu1custos.Name, '� necess�rio preencher o Fator Multiplicador!', VLD_Preenchido) then
     exit ;
  if not Dlg_YesNo('Tem Certeza que Deseja Salvar o Item ?', Self)
     then Exit;

//*** Alterado em 16/04/15_Memo GDS***
  if FStatus = FST_Novo then
     begin
     edt_dtalteracao_ics.Date:= Now;
     DB_OpenSQL('select nome_usu from tbl_usuario where cod_usuario = '+ IntToStr(FCod_Usuario));
     edt_nome_usu.Text := Tab.Fields[0].AsString;
     DB_ExecSQL('insert into tbl_itemcusto ('+
     ' cod_itemservico, valor1custos, prtan1custos, auxil1custos, areafilme1_ics, fatmu1custos, cstop1custos,'+
     ' valor2custos, prtan2custos, auxil2custos, areafilme2_ics, cstop2custos, fatmu2custos,'+
     ' valor3custos, prtan3custos, auxil3custos, areafilme3_ics, cstop3custos, fatmu3custos,'+
     ' valor4custos, prtan4custos, auxil4custos, areafilme4_ics, cstop4custos, fatmu4custos,'+
     ' valor5custos, prtan5custos, auxil5custos, areafilme5_ics, cstop5custos, fatmu5custos,'+
     ' valor6custos, prtan6custos, auxil6custos, areafilme6_ics, cstop6custos, fatmu6custos, dtalteracao_ics, cod_usuario) values ('+
     edt_cod_itemservico.text+','+DB_FormatDataSQL(edt_valor1custos.Text, ftFloat)+','+
     DB_FormatDataSQL(edt_prtan1custos.Text, ftFloat)+','+DB_FormatDataSQL(edt_auxil1custos.Text,ftFloat)+
     ', '+DB_FormatDataSQL(edt_areafilme1_ics.Text, ftFloat)+', '+DB_FormatDataSQL(edt_fatmu1custos.Text, ftFloat)+', 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'+
     '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,getdate(),' + IntToStr(FCod_Usuario) + ')');
     end;
  if FStatus = FST_Alteracao then
     begin
     DadosSaida:= LerDadosTela(Self);
     WMudancas:= '';
     For x:= 1 to High(DadosSaida) do
       if DadosEntrada[x] <> DadosSaida[x] then
          WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';
     if WMudancas <> '' then
        begin
        DB_ExecSQL('update tbl_itemcusto set '+
        ' valor1custos = '+DB_FormatDataSQL(edt_valor1custos.Text, ftFloat)+', '+
        ' prtan1custos = '+DB_FormatDataSQL(edt_prtan1custos.text, ftFloat)+','+
        ' auxil1custos = '+DB_FormatDataSQL(edt_auxil1custos.text, ftfloat)+', '+
        ' areafilme1_ics = '+DB_FormatDataSQL(edt_areafilme1_ics.text,ftFloat)+','+
        ' fatmu1custos = '+DB_FormatDataSQL(edt_fatmu1custos.text, ftFloat)+ ','+
        ' dtalteracao_ics = Getdate(), cod_usuario = ' + IntToStr(FCod_Usuario) +
        ' where cod_itemservico = '+edt_cod_itemservico.text);
        GeraAuditoria(StrToInt(edt_cod_itemservico.text), '0', 'Situa��o Anterior', WMudancas, 0);
        edt_dtalteracao_ics.Date:= Now;
        DB_OpenSQL('select nome_usu from tbl_usuario where cod_usuario = '+ IntToStr(FCod_Usuario));
        edt_nome_usu.Text := Tab.Fields[0].AsString ;
        end;
     end;
  FStatus := FST_Normal;
  edt_cod_itemservico.Enabled := true;
  BotoesOnOff(false);
  BAS_LimparTela;
  EscreveLog(btn_salvar.name);
end;

procedure TFrm_Cad_ItemCusto.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Normal;
  BotoesOnOff(false);
  BAS_LimparTela;
  edt_cod_itemservico.Enabled := true;
  EscreveLog(btn_cancelar.name);
end;

procedure TFrm_Cad_ItemCusto.btn_excluirClick(Sender: TObject);
begin
  inherited;
  if Dlg_YesNo('Tem Certeza que deseja Remover o Item ?', Self) then begin
    DB_ExecSQL('delete from tbl_itemcusto where cod_itemservico = '+
    edt_cod_itemservico.text);
  end;
  FStatus := FST_Normal;
  BotoesOnOff(false);
  BAS_LimparTela;
  EscreveLog(btn_excluir.name);
end;

procedure TFrm_Cad_ItemCusto.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Valor Base para Itens de Servi�o' ;
  FEditChave    := 'edt_cod_itemservico' ;
//  FEditAlteracao:= 'edt_descricao_ccv' ;
  FUltFoco      := 'edt_valor1custos' ;
  FTitPesquisa  := 'Localizar Valor Base para Itens de Servi�o' ;
  FPesquisaTit  := 'C�digo, Valor, Porte Anest., No.Aux., Vl.Filme, Fator Multip.' ;
  inherited;
  Visible_OnOff(false);
end;

procedure TFrm_Cad_ItemCusto.edt_cod_itemservicoButtonClick(Sender: TObject);
begin
  inherited;
  if FStatus <> FST_Novo then
     btn_alterarClick(Self);
end;

procedure TFrm_Cad_ItemCusto.edt_cod_itemservicoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if FStatus <> FST_Novo then
    if Key = 13 then
      edt_cod_itemservicoButtonClick(Self);
end;

procedure TFrm_Cad_ItemCusto.TabSheet2Show(Sender: TObject);
begin
  inherited;
//*** Alterado em 16/04/15_Memo GDS***
  ChaveExp:= 999999999;
  if edt_cod_itemservico.Text <> '' then
     ChaveExp:= StrToInt(edt_cod_itemservico.Text);
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

procedure TFrm_Cad_ItemCusto.stg_audiDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S: String;
  drawrect :trect;
begin
  inherited;
  stg_audi.Brush.Style := (bsSolid);
  TStringGrid(stg_audi).ColWidths[2]:= 60;
  if Arow = 0 then
     begin
     stg_audi.Canvas.Font.Style:= [fsbold]; // negrito
     stg_audi.Canvas.Brush.Color:= clBtnFace;
     end
  else
     stg_audi.Canvas.Font.Style:=[];
  S:= (Sender as TStringgrid).Cells[ACol, ARow];
  if Length(S) > 0 then
    begin
    drawrect := rect;
    DrawText((Sender As TStringgrid).canvas.handle, Pchar(S), Length(S), drawrect, dt_calcrect or dt_wordbreak or dt_left );
    if (drawrect.bottom - drawrect.top) > (Sender As TStringgrid).RowHeights[Arow] then
       (Sender As TStringgrid).RowHeights[Arow]:= (drawrect.bottom - drawrect.top)  // changing the row height fires the event again!
    else
      begin
      drawrect.Right := rect.right;
      (Sender As TStringgrid).canvas.fillrect(drawrect);
      DrawText((Sender As TStringgrid).canvas.handle, Pchar(S), Length(S), drawrect, dt_wordbreak or dt_left);
      end;
    end;
end;

end.



