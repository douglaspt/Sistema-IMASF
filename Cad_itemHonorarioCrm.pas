unit Cad_itemHonorarioCrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, Fun_Obj;

type
  TFrm_Cad_itemHonorarioCrm = class(TFrm_Bas_TelaPadrao)
    btn_novo: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel32: TPanel;
    edt_vlHonorario_ihc: TDCEdit;
    edt_cod_crm: TDCEdit;
    edt_dtvalidade_ihc: TDCDateEdit;
    Panel5: TPanel;
    edt_cod_itemservico: TDCChoiceEdit;
    edt_descricao_itc: TDCEdit;
    Panel9: TPanel;
    edt_nome_con: TDCEdit;
    edt_cod_conveniado: TDCChoiceEdit;
    Panel38: TPanel;
    edt_dtalteracao_ihc: TDCDateEdit;
    cbx_cod_usuario: TDCComboBox;
    stg_audi: TStringGrid;
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_itemservicoButtonClick(Sender: TObject);
    procedure edt_cod_itemservicoExit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
    FPesquisaItemSevico : String;
    function CriticaParametros: boolean ;
  public
    { Public declarations }
    FCod_Conv : String ;
  end;

var
  Frm_Cad_itemHonorarioCrm: TFrm_Cad_itemHonorarioCrm;
  WvlHonorario_ihc: String;
  ChaveExp: Integer;

implementation

uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
     Imp_4050, Dlg_Mensagem, Fun_DB, Fun_Acesso, FUN_STR;

{$R *.DFM}

function TFrm_Cad_itemHonorarioCrm.CriticaParametros: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_conveniado.name, 'O Código do Conveniado deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_itemservico.name, 'O Cod. Item Serviço deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_crm.name, 'O Cod. Crm deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_vlHonorario_ihc.name, 'O Vl. Honorário deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtvalidade_ihc.name, 'A Data de Validade deve ser preenchida !', VLD_DataPreenchida )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_itemHonorarioCrm.edt_cod_conveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_sitconveniado = 1';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl_conveniado', FPesquisa,
  'Cod.Conv, Nome do Conveniado, Razão Social', 'Localizar Conveniados', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Cad_itemHonorarioCrm.edt_cod_conveniadoExit(
  Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_nome_con.text := Get_NomeConveniadoAtivo(edt_cod_conveniado.text);
end;

procedure TFrm_Cad_itemHonorarioCrm.btn_novoClick(Sender: TObject);
Var
  x: Integer;
begin
  inherited;
// Uso variáveis de memória para guardar valores digitados e que serão gravados
  WvlHonorario_ihc:= edt_vlHonorario_ihc.Text;
  DadosEntrada:= LerDadosTela(Self);
  DadosSaida:= LerDadosTela(Self);
  if CriticaParametros then
    Exit;
  try
    if not(DB_OpenSQL('select cod_itemservico from tbl_itemhonorario where cod_conveniado = '+
           edt_cod_conveniado.Text+' and cod_itemservico = '+edt_cod_itemservico.Text) > 0) then
       begin
       Dlg_Alerta('ATENÇÃO ! Não é possível cadastrar Honorários por CRM para Itens não cadastrados para o Conveniado!',self);
       Exit;
       end;
    if DB_OpenSQL('select * from tbl_itemHonorarioCrm where cod_conveniado = '+edt_cod_conveniado.Text+
       ' and cod_itemservico = '+edt_cod_itemservico.Text+' and cod_crm = '+edt_cod_crm.text+
       ' and dtvalidade_ihc = '+DB_FormatDataSQL(edt_dtvalidade_ihc.Text, ftDate)) > 0 then
       begin
       if not Dlg_YesNo('ATENÇÃO ! Ocorreu um erro ao tentar alterar o Item de Honorário ! '+
                        'Possívelmente existem honorários para a mesma data de Validade Selecionada. '+
                        'Deseja Sobrescrever os Valores de Honorários para a Mesma Data de Validade ?', self) then Exit;
// mover campos da consulta acima para obter os valores antes da alteração e assim saber qual campo foi alterado
       edt_vlHonorario_ihc.Text:= Tab.FieldByName('vlHonorario_ihc').AsString;
       DadosEntrada:= LerDadosTela(Self);

// Volto os valores da memória para a tela p/gravar na tabela
       edt_vlHonorario_ihc.Text:= WvlHonorario_ihc;

       if not DB_ExecSQL('delete from tbl_itemHonorarioCrm where cod_conveniado = '+edt_cod_conveniado.Text+
          ' and cod_itemservico = '+edt_cod_itemservico.Text+' and cod_crm = '+edt_cod_crm.text+
          ' and dtvalidade_ihc = '+DB_FormatDataSQL(edt_dtvalidade_ihc.Text, ftDate)) then
          raise Exception.Create(EXP_SQLInvalido);
       end;
//*** Alterado em 16/04/15_Memo GDS***
    WMudancas:= '';
    For x:= 1 to High(DadosSaida) do
       if DadosEntrada[x] <> DadosSaida[x] then
          WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';
    if WMudancas <> '' then
       GeraAuditoria(StrToInt(edt_cod_conveniado.Text), '0', 'Alterado Item de Serviço ' + edt_cod_itemservico.text +
       ', CRM ' + edt_cod_crm.Text + ', data Validade ' + edt_dtvalidade_ihc.Text + ', Situação Anterior', WMudancas, 0)
    else
       GeraAuditoria(StrToInt(edt_cod_conveniado.Text), '0', 'Inclusão Item de Serviço ' + edt_cod_itemservico.text,
                     'CRM ' + edt_cod_crm.Text + ', data Validade ' + edt_dtvalidade_ihc.Text + ', Vlr.Honorário ' + edt_vlHonorario_ihc.Text, 0);
    edt_dtalteracao_ihc.Date:= Now;
    Obj_SetFormObjValueByName(self,'cbx_cod_usuario', FCod_Usuario);
    if not DB_ExecSQL('insert into tbl_itemHonorarioCrm (cod_conveniado, cod_itemservico, '+
                     'cod_crm, vlHonorario_ihc, dtvalidade_ihc, dtalteracao_ihc, cod_usuario) values ('+
                     edt_cod_conveniado.Text+', '+edt_cod_itemservico.Text+', '+edt_cod_crm.text+', '+
                     DB_FormatDataSQL(edt_vlHonorario_ihc.Text,ftFloat)+', '+DB_FormatDataSQL(edt_dtvalidade_ihc.Text, ftDate) +', '+
                     DB_FormatDataSQL(edt_dtalteracao_ihc.Text, ftDate)+', '+cbx_cod_usuario.ValueItem+')') then
        raise Exception.Create(EXP_SQLInvalido);
    Dlg_Ok('Operação concluída com Sucesso !',self);
    Obj_EmptyEditTag(self,0);
  except
    Dlg_Erro('Ocorreu um erro ao tentar Incluir/Alterar o Item de Honorário. NÃO FOI POSSÍVEL SALVAR', self);
    DB_RollBack;
  end;
  TabSheet1Show(Self);
end;

procedure TFrm_Cad_itemHonorarioCrm.FormShow(Sender: TObject);
begin
  inherited;
//  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_usuario','nome_usu');
  if FCod_Conv <> '' then begin
    edt_cod_conveniado.Text := FCod_Conv;
    edt_cod_conveniadoExit(self);
  end;
end;

procedure TFrm_Cad_itemHonorarioCrm.edt_cod_itemservicoButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaItemSevico := 'select i.cod_itemservico, cod_padrao, nome_its, apelido_its, max(dtvalidade_hit) '+
  ' from tbl_itemservico i inner join tbl_Itemhonorario it on i.cod_itemservico = it.cod_itemservico '+
  ' where i.cod_itemservico > 1';
  FPesquisaTit := 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento, Apelido, Dt. Validade';
  if (edt_cod_conveniado.text = '') or (edt_cod_conveniado.Text = '0') then
    FPesquisaSQL  := FPesquisaItemSevico+' group by i.cod_itemservico, cod_padrao, nome_its, apelido_its'
  else
    FPesquisaSQL  := FPesquisaItemSevico+' and cod_conveniado = '+edt_cod_conveniado.text+' group by i.cod_itemservico, cod_padrao, nome_its, apelido_its';
  edt_cod_itemservico.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
  edt_cod_itemservicoExit(self);
end;

procedure TFrm_Cad_itemHonorarioCrm.edt_cod_itemservicoExit(
  Sender: TObject);
begin
  inherited;
  if edt_cod_itemservico.text <> '' then
  edt_descricao_itc.text := Get_DescricaoServico(edt_cod_itemservico.text);
end;

procedure TFrm_Cad_itemHonorarioCrm.TabSheet2Show(Sender: TObject);
begin
  inherited;
//*** Alterado em 16/04/15_Memo GDS***
  ChaveExp:= 999999999;
//  if edt_cod_conveniado.Text = '' then
//     Exit;
  if edt_cod_conveniado.Text <> '' then
     ChaveExp:= StrToInt(STR_RemoveChar(edt_cod_conveniado.text,'-'));
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 2);
end;

procedure TFrm_Cad_itemHonorarioCrm.TabSheet1Show(Sender: TObject);
begin
  inherited;
  edt_cod_itemservico.Text:= '';
  edt_descricao_itc.Text:= '';
  edt_cod_crm.Text:= '';
  edt_vlHonorario_ihc.Text:= '';
  edt_dtvalidade_ihc.Text:= '';
  edt_dtalteracao_ihc.Text:= '';
  cbx_cod_usuario.ItemIndex:= -1;
  edt_cod_conveniado.SetFocus;
end;

procedure TFrm_Cad_itemHonorarioCrm.stg_audiDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S: String;
  drawrect :trect;
begin
  inherited;
  stg_audi.Brush.Style := (bsSolid);
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

