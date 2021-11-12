unit Cad_ItemServico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BComboBox, BEdit,
  BEditButton, DCChoice, Fun_Obj, Grids;

type
  TFrm_Cad_ItemServico = class(TFrm_Bas_Cadastro)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    edt_cod_itemservico: TEditButton;
    Panel5: TPanel;
    edt_cod_subgrupo: TBEdit;
    edt_cod_padrao: TBEdit;
    Panel6: TPanel;
    edt_nomeextrato_its: TBEdit;
    Panel9: TPanel;
    edt_nome_its: TBEdit;
    Panel7: TPanel;
    edt_apelido_its: TBEdit;
    Panel1: TPanel;
    cbx_cod_tipoAutorizacao: TBComboBox;
    Panel12: TPanel;
    cbx_cod_classificacaoSADT: TBComboBox;
    Panel10: TPanel;
    edt_idadeInicial_its: TBEdit;
    edt_idadeFinal_its: TBEdit;
    edt_sexo_its: TBEdit;
    Panel11: TPanel;
    ckb_itemInternacao: TCheckBox;
    edt_reutilizacao_its: TBEdit;
    edt_qtdeReutilizacao_its: TBEdit;
    Panel8: TPanel;
    edt_qtdeVida_its: TBEdit;
    edt_qtdeAtendimento_its: TBEdit;
    edt_materialmed_its: TBEdit;
    Panel38: TPanel;
    edt_dtalteracao_its: TDCDateEdit;
    cbx_cod_usuario: TDCComboBox;
    stg_audi: TStringGrid;
    Panel13: TPanel;
    ckb_emergencia_its: TCheckBox;
    ckb_dhe_its: TCheckBox;
    ckb_dobraApto_its: TCheckBox;
    edt_rol_its: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_itemservicoButtonClick(Sender: TObject);
    procedure edt_cod_itemservicoExit(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
    procedure CarregarCombos;
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
  end;

var
  Frm_Cad_ItemServico: TFrm_Cad_ItemServico;
  ChaveExp: Integer;

implementation

uses Constantes, Fun_DB, Dlg_Mensagem, Fun_Str, Fun_Acesso;

{$R *.DFM}

procedure TFrm_Cad_ItemServico.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Itens de Servi�o' ;
  FEditChave    := 'edt_cod_itemservico' ;
  FEditAlteracao:= 'edt_cod_subgrupo' ;
  FUltFoco      := 'edt_materialmed_its' ;
  FTitPesquisa  := 'Localizar Itens de Servi�o' ;
  FPesquisa     := 'cod_itemservico, cod_padrao, nome_its' ;
  FPesquisaTit  := 'C�digo, Cod. Padr�o, Nome Completo' ;
  inherited;
end;

procedure TFrm_Cad_ItemServico.CarregarCombos;
begin
  BAS_CarregarCombo('cbx_cod_tipoAutorizacao', 'descricao_tau');
  Obj_LoadCombo(Self, 'cbx_cod_classificacaoSADT', 'RTRIM(descricaoGrupo_csa)+'' - ''+descricaoSubGrupo_csa', 'cod_classificacaoSADT', 'tbl_classificacaoSadt');
  BAS_CarregarCombo('cbx_cod_usuario','nome_usu');
end;

function TFrm_Cad_ItemServico.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_itemservico.name, 'O Cod. Item Servi�o deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_subgrupo.name, 'O Cod. Sub Grupo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_padrao.name, 'O Cod. Padr�o deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nomeextrato_its.name, 'O Nome Extrato deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_its.name, 'O Nome Completo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_tipoAutorizacao.name, 'O Cod. Tipo Autoriza��o deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_classificacaoSADT.name, 'O Cod. Classifica��o SADT deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_idadeInicial_its.name, 'A Idade Inicial deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_idadeFinal_its.name, 'A Idade Final deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sexo_its.name, 'O Sexo deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_reutilizacao_its.name, 'A Reutiliza��o ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_qtdeReutilizacao_its.name, 'A Qtde. de Reutiliza��o deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_qtdeVida_its.name, 'A Qtde. de Vida deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_qtdeAtendimento_its.name, 'A Qtde. de Atendimento deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_materialmed_its.name, 'O Material / Medic. deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  if Db_OpenSql('select cod_subgrupo from tbl_subgrupo where cod_subgrupo = '+edt_cod_subgrupo.Text) < 1 then
  begin
    Dlg_Alerta('C�digo Sub Grupo Inv�lido!',self);
    Exit;
  end;
  result := false ;
end;

procedure TFrm_Cad_ItemServico.BAS_Alterar(Frm:Tform);
begin
  CarregarCombos;
  inherited;
end;

procedure TFrm_Cad_ItemServico.btn_novoClick(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  edt_idadeInicial_its.Text := '0';
  edt_idadeFinal_its.Text := '999';
  edt_sexo_its.Text := 'A';
  edt_reutilizacao_its.Text := '999';
  edt_qtdeReutilizacao_its.Text := '999';
  edt_qtdeVida_its.Text := '999';
  edt_qtdeAtendimento_its.Text := '0';
  edt_materialmed_its.Text := '0';
end;

procedure TFrm_Cad_ItemServico.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
end;

procedure TFrm_Cad_ItemServico.edt_cod_itemservicoButtonClick(
  Sender: TObject);
begin
  inherited;
  cbx_cod_usuario.ItemIndex:= -1;
  btn_alterarClick(Self);
end;

procedure TFrm_Cad_ItemServico.edt_cod_itemservicoExit(Sender: TObject);
begin
  inherited;
  if (FStatus = FST_Novo) and (edt_cod_itemservico.Text <> '') then
  begin
    edt_cod_subgrupo.Text := copy(edt_cod_itemservico.Text,1,5);
    edt_cod_padrao.Text := copy(edt_cod_itemservico.text,2,7)+STR_GeraDigito11(copy(edt_cod_itemservico.text,2,7));
  end;
end;

procedure TFrm_Cad_ItemServico.btn_alterarClick(Sender: TObject);
begin
  inherited;
  DadosEntrada := LerDadosTela(Self);
end;

procedure TFrm_Cad_ItemServico.btn_salvarClick(Sender: TObject);
var
  x: integer;
begin
  if FStatus <> FST_Novo then
     begin
     DadosSaida:= LerDadosTela(Self);
     WMudancas:= '';
     For x:= 1 to High(DadosSaida) do
       if DadosEntrada[x] <> DadosSaida[x] then
         WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';
     if WMudancas <> '' then
        begin
        GeraAuditoria(StrToInt(edt_cod_itemservico.text), '0', 'Situa��o Anterior ', WMudancas, 0);
        edt_dtalteracao_its.Date:= Now;
        Obj_SetFormObjValueByName(self,'cbx_cod_usuario',FCod_Usuario);
        end;
     end
  else
     begin
     edt_dtalteracao_its.Date:= Now;
     Obj_SetFormObjValueByName(self,'cbx_cod_usuario',FCod_Usuario);
     end;
  inherited;
end;

procedure TFrm_Cad_ItemServico.TabSheet2Show(Sender: TObject);
begin
  inherited;
//*** Alterado em 16/04/15_Memo GDS***
  ChaveExp:= 999999999;
//  if edt_cod_itemservico.Text = '' then
//     Exit;
  if edt_cod_itemservico.Text <> '' then
     ChaveExp:= StrToInt(edt_cod_itemservico.Text);
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

procedure TFrm_Cad_ItemServico.stg_audiDrawCell(Sender: TObject; ACol,
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
