unit Cad_ItemHonoraEspecial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, Fun_Obj, Fun_Str;

type
  TFrm_Cad_ItemHonoraEspecial = class(TFrm_Bas_TelaPadrao)
    btn_novo: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    edt_FatorMult_ihe: TDCEdit;
    edt_dtvalidade_ihe: TDCDateEdit;
    Panel1: TPanel;
    edt_NumAuxiliares_ihe: TDCEdit;
    edt_vlFilme_ihe: TDCEdit;
    Panel32: TPanel;
    edt_vlHonorario_ihe: TDCEdit;
    cbx_cod_plano: TDCComboBox;
    edt_PorteAnestesico_ihe: TDCEdit;
    Panel5: TPanel;
    edt_cod_itemservico: TDCChoiceEdit;
    edt_descricao_itc: TDCEdit;
    Panel9: TPanel;
    edt_nome_con: TDCEdit;
    edt_cod_conveniado: TDCChoiceEdit;
    TabSheet2: TTabSheet;
    Panel38: TPanel;
    edt_dtalteracao_ihe: TDCDateEdit;
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
  Frm_Cad_ItemHonoraEspecial: TFrm_Cad_ItemHonoraEspecial;
  ChaveExp: Integer;
  WvlHonorario_ihe, WPorteAnestesico_ihe, WNumAuxiliares_ihe, WvlFilme_ihe, WFatorMult_ihe: String;

implementation

uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
     Imp_4050, Dlg_Mensagem, Fun_DB, Fun_Acesso;

{$R *.DFM}

function TFrm_Cad_ItemHonoraEspecial.CriticaParametros: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_conveniado.name, 'O Código do Conveniado deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_itemservico.name, 'O Cod. Item Serviço deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_plano.name, 'O Cod. Plano deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_vlHonorario_ihe.name, 'O Vl. Honorário deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_PorteAnestesico_ihe.name, 'O Porte Anestésico deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_NumAuxiliares_ihe.name, 'O Nº de Auxiliares deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_vlFilme_ihe.name, 'O Valor do Filme deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_FatorMult_ihe.name, 'O Fator Multiplicador deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtvalidade_ihe.name, 'A Data de Validade deve ser preenchida !', VLD_DataPreenchida )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_ItemHonoraEspecial.edt_cod_conveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
    FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_sitconveniado = 1';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl_conveniado', FPesquisa,
  'Cod.Conv, Nome do Conveniado, Razão Social', 'Localizar Conveniados', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Cad_ItemHonoraEspecial.edt_cod_conveniadoExit(
  Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_nome_con.text := Get_NomeConveniadoAtivo(edt_cod_conveniado.text);
end;

procedure TFrm_Cad_ItemHonoraEspecial.btn_novoClick(Sender: TObject);
Var
  x: integer;
begin
  inherited;
// Uso variáveis de memória para guardar valores digitados e que serão gravados
  WvlHonorario_ihe:= edt_vlHonorario_ihe.Text;
  WPorteAnestesico_ihe:= edt_PorteAnestesico_ihe.Text;
  WNumAuxiliares_ihe:= edt_NumAuxiliares_ihe.Text;
  WvlFilme_ihe:= edt_vlFilme_ihe.Text;
  WFatorMult_ihe:= edt_FatorMult_ihe.Text;
  DadosEntrada:= LerDadosTela(Self);
  DadosSaida:= LerDadosTela(Self);
  if CriticaParametros then
    Exit;
  try
    if not(DB_OpenSQL('select cod_itemservico from tbl_itemhonorario where cod_conveniado = '+
           edt_cod_conveniado.Text+' and cod_itemservico = '+edt_cod_itemservico.Text) > 0) then
       begin
       Dlg_Alerta('ATENÇÃO ! Não é possível cadastrar Honorários Especiais para Itens não cadastrados para o Conveniado!',self);
       Exit;
       end;
    if DB_OpenSQL('select * from tbl_itemhonoraespecial where cod_conveniado = '+edt_cod_conveniado.Text+
       ' and cod_itemservico = '+edt_cod_itemservico.Text+' and cod_plano = '+cbx_cod_plano.valueItem+
       ' and dtvalidade_ihe = '+DB_FormatDataSQL(edt_dtvalidade_ihe.Text, ftDate)) > 0 then
       begin
       if not Dlg_YesNo('ATENÇÃO ! Ocorreu um erro ao tentar alterar o Item de Honorário ! '+
                        'Possívelmente existem honorários para a mesma data de Validade Selecionada. '+
                        'Deseja Sobrescrever os Valores de Honorários para a Mesma Data de Validade ?', self) then Exit;
// mover campos da consulta acima para obter os valores antes da alteração e assim saber qual campo foi alterado
       edt_vlHonorario_ihe.Text:= Tab.FieldByName('vlHonorario_ihe').AsString;
       edt_PorteAnestesico_ihe.Text:= Tab.FieldByName('PorteAnestesico_ihe').AsString;
       edt_NumAuxiliares_ihe.Text:= Tab.FieldByName('NumAuxiliares_ihe').AsString;
       edt_vlFilme_ihe.Text:= Tab.FieldByName('vlFilme_ihe').AsString;
       edt_FatorMult_ihe.Text:= Tab.FieldByName('FatorMult_ihe').AsString;
       DadosEntrada:= LerDadosTela(Self);

// Volto os valores da memória para a tela p/gravar na tabela
       edt_vlHonorario_ihe.Text:= WvlHonorario_ihe;
       edt_PorteAnestesico_ihe.Text:= WPorteAnestesico_ihe;
       edt_NumAuxiliares_ihe.Text:= WNumAuxiliares_ihe;
       edt_vlFilme_ihe.Text:= WvlFilme_ihe;
       edt_FatorMult_ihe.Text:= WFatorMult_ihe;

       if not DB_ExecSQL('delete from tbl_itemhonoraespecial where cod_conveniado = '+edt_cod_conveniado.Text+
         ' and cod_itemservico = '+edt_cod_itemservico.Text+' and cod_plano = '+cbx_cod_plano.valueItem+
         ' and dtvalidade_ihe = '+DB_FormatDataSQL(edt_dtvalidade_ihe.Text, ftDate)) then
           raise Exception.Create(EXP_SQLInvalido);
       end;
    //*** Alterado em 16/04/15_Memo GDS***
    WMudancas:= '';
    For x:= 1 to High(DadosSaida) do
       if DadosEntrada[x] <> DadosSaida[x] then
          WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';
    if WMudancas <> '' then
       GeraAuditoria(StrToInt(edt_cod_conveniado.Text), '0', 'Item de serviço ' + edt_cod_itemservico.text +
       ', data Validade ' + edt_dtvalidade_ihe.Text + ', plano ' + cbx_cod_plano.Text + ', Situação Anterior', WMudancas, 0)
    else
       GeraAuditoria(StrToInt(edt_cod_conveniado.Text), '0', 'Inclusão item de serviço ' + edt_cod_itemservico.text +
                     ', data Validade ' + edt_dtvalidade_ihe.Text + ', plano ' + cbx_cod_plano.Text, '', 0);
    edt_dtalteracao_ihe.Date:= Now;
    Obj_SetFormObjValueByName(self,'cbx_cod_usuario', FCod_Usuario);
    if not DB_ExecSQL('insert into tbl_itemhonoraespecial (cod_conveniado, cod_itemservico, '+
                      'cod_plano, vlHonorario_ihe, PorteAnestesico_ihe, NumAuxiliares_ihe, vlFilme_ihe, '+
                      'FatorMult_ihe, dtvalidade_ihe, dtalteracao_ihe, cod_usuario) values ('+
                      edt_cod_conveniado.Text+', '+edt_cod_itemservico.Text+', '+cbx_cod_plano.ValueItem+', '+
                      DB_FormatDataSQL(edt_vlHonorario_ihe.Text,ftFloat)+', '+edt_PorteAnestesico_ihe.Text+', '+
                      edt_NumAuxiliares_ihe.Text+', '+DB_FormatDataSQL(edt_vlFilme_ihe.Text, ftFloat)+', '+
                      DB_FormatDataSQL(edt_FatorMult_ihe.Text, ftFloat)+ ', '+DB_FormatDataSQL(edt_dtvalidade_ihe.Text, ftDate)+', '+
                      DB_FormatDataSQL(edt_dtalteracao_ihe.Text, ftDate)+', '+cbx_cod_usuario.ValueItem+')') then
        raise Exception.Create(EXP_SQLInvalido);
    Dlg_Ok('Operação concluída com Sucesso !',self);
    Obj_EmptyEditTag(self,0);
    BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  except
    Dlg_Erro('Ocorreu um erro ao tentar Incluir/Alterar o Item de Honorário. NÃO FOI POSSÍVEL SALVAR', self);
    DB_RollBack;
  end;
  TabSheet1Show(Self);
end;

procedure TFrm_Cad_ItemHonoraEspecial.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_usuario','nome_usu');
  if FCod_Conv <> '' then begin
    edt_cod_conveniado.Text := FCod_Conv;
    edt_cod_conveniadoExit(self);
  end;
end;

procedure TFrm_Cad_ItemHonoraEspecial.edt_cod_itemservicoButtonClick(
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

procedure TFrm_Cad_ItemHonoraEspecial.edt_cod_itemservicoExit(
  Sender: TObject);
begin
  inherited;
  if edt_cod_itemservico.text <> '' then
  edt_descricao_itc.text := Get_DescricaoServico(edt_cod_itemservico.text);
end;

procedure TFrm_Cad_ItemHonoraEspecial.TabSheet2Show(Sender: TObject);
begin
  inherited;
//*** Alterado em 16/04/15_Memo GDS***
  ChaveExp:= 999999999;
  if edt_cod_conveniado.Text <> '' then
     ChaveExp:= StrToInt(STR_RemoveChar(edt_cod_conveniado.text,'-'));
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 2);
end;

procedure TFrm_Cad_ItemHonoraEspecial.TabSheet1Show(Sender: TObject);
begin
  inherited;
  edt_dtalteracao_ihe.Text:= '';
  cbx_cod_usuario.ItemIndex:= -1;
  edt_cod_itemservico.Text:= '';
  cbx_cod_plano.ItemIndex:= -1;
  cbx_cod_plano.Refresh;
  edt_cod_conveniado.SetFocus;
end;

procedure TFrm_Cad_ItemHonoraEspecial.stg_audiDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
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

