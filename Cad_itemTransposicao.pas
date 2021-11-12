unit Cad_itemTransposicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DB, Grids, DBGrids,
  Buttons, Mask, DBCtrls, jpeg, BEditButton, BEdit, Fun_Obj;

type
  TFrm_Cad_itemTransposicao = class(TFrm_Bas_TelaPadrao)
    DataSource1: TDataSource;
    Image2: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    edt_cod_conveniado: TEditButton;
    edt_razao_con: TBEdit;
    Panel9: TPanel;
    edt_cod_origem: TBEdit;
    edt_cod_itemservico: TEditButton;
    dbg_agenda: TDBGrid;
    btn_novo: TPDJButton;
    btn_alterar: TPDJButton;
    btn_salvar: TPDJButton;
    btn_cancelar: TPDJButton;
    btn_excluir: TPDJButton;
    MemoAuditoria: TMemo;
    dbe_cod_origem: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure edt_cod_itemservicoButtonClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure dbe_cod_origemChange(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt, FTit : String ;
    FStatus : integer;
    procedure Atualizar;
    procedure BotoesONOFF(b: boolean);
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    DadosEntrada, DadosSaida: TResultArray;
    WMudancas : String ;
  end;

var
  Frm_Cad_itemTransposicao: TFrm_Cad_itemTransposicao;
  ChaveExp: Integer;

implementation

uses Fun_Acesso, dtm_principal2, dtm_principal3, Fun_Medico, Fun_ConsCadastro, Constantes,
     Imp_Adm_FichaBenefi001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str,
     Imp_Adm_FichaBenefi002, Imp_Adm_Requerimento001, Imp_4063, dtm_principal,
     dtm_principal6, Bas_Impressao;

{$R *.DFM}

procedure TFrm_Cad_itemTransposicao.FormCreate(Sender: TObject);
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

function TFrm_Cad_itemTransposicao.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_conveniado.name, 'O Código do Conveniado deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_origem.name, 'O Código de Origem deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_itemservico.name, 'O Código do Item de Serviço deve ser Preenchida!', VLD_Preenchido ));
end;

procedure TFrm_Cad_itemTransposicao.Atualizar;
begin
  with fdt_principal6.spc_cons_med_itemtransposicao do
  begin
    Close;
    ParamByName('@cod_conveniado').AsString := edt_cod_conveniado.Text;
    Open;
  end;
end;

procedure TFrm_Cad_itemTransposicao.BotoesONOFF(b: boolean);
begin
  btn_novo.Enabled := b ;
  btn_alterar.Enabled := b ;
  btn_salvar.Enabled := not b ;
  btn_cancelar.Enabled := not b;
  btn_excluir.Enabled := b ;
end;

procedure TFrm_Cad_itemTransposicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal6.spc_cons_med_itemtransposicao.Close;
end;

procedure TFrm_Cad_itemTransposicao.edt_cod_conveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_sitconveniado = 1';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl_conveniado', FPesquisa,
  'Cod.Conv, Nome do Conveniado, Razão Social', 'Localizar Conveniados', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Cad_itemTransposicao.edt_cod_conveniadoExit(
  Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniadoAtivo(STR_RemoveChar(edt_cod_conveniado.Text,'-'));
  Atualizar;
end;

procedure TFrm_Cad_itemTransposicao.edt_cod_itemservicoButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservico',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. Item de Serviço, Cod. Padrão, Descrição',
  'Localizar Item de Serviço', '', true));
end;

procedure TFrm_Cad_itemTransposicao.btn_novoClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Novo;
  BotoesONOFF(false);
  edt_cod_origem.Clear;
  edt_cod_itemservico.Text:= '';
//  edt_cod_itemservico.Clear;
  EscreveLog(btn_novo.name);
end;

procedure TFrm_Cad_itemTransposicao.btn_alterarClick(Sender: TObject);
begin
  inherited;
  FStatus := FST_Alteracao;
  BotoesONOFF(false);
  edt_cod_origem.Text := fdt_principal6.spc_cons_med_itemtransposicao.fieldbyName('cod_origem').AsString;
  edt_cod_itemservico.Text := fdt_principal6.spc_cons_med_itemtransposicao.fieldbyName('cod_itemservico').AsString;
  DadosEntrada := LerDadosTela(Self);
  EscreveLog(btn_alterar.name);
end;

procedure TFrm_Cad_itemTransposicao.btn_salvarClick(Sender: TObject);
var
  x: integer;
begin
  inherited;
  x:= 0;
  if CriticaParametros then exit;
  if not Dlg_YesNo('Tem Certeza que Deseja Salvar o Item ?', Self) then Exit;
  if FStatus = FST_Novo then
     begin
     DB_ExecSQL('insert into tbl_itemtransposicao (cod_conveniado, cod_origem, cod_itemservico) values (' +
                edt_cod_conveniado.text+','+edt_cod_origem.text+','+edt_cod_itemservico.text+')');
     GeraAuditoria(StrToInt(edt_cod_conveniado.Text), '0', 'Inclusão do Cod.Origem ' + edt_cod_origem.Text +
                   ', Cod.Item Serviço ' + edt_cod_itemservico.Text, '', 0);
     end
  else
     begin
     DadosSaida:= LerDadosTela(Self);
     WMudancas:= '';
     For x:= 1 to High(DadosSaida) do
        if DadosEntrada[x] <> DadosSaida[x] then
           WMudancas:= WMudancas + (UpperCase(DadosEntrada[x-1] + '=' + DadosEntrada[x])) + ', ';
     DB_ExecSQL('update tbl_itemtransposicao set '+
     'cod_origem = '+edt_cod_origem.Text+', '+
     'cod_itemservico = '+edt_cod_itemservico.text+
     ' where '+
     'cod_conveniado = '+edt_cod_conveniado.text+ ' and '+
     'cod_origem = '+fdt_principal6.spc_cons_med_itemtransposicao.fieldbyName('cod_origem').AsString);
     if WMudancas <> '' then
        GeraAuditoria(StrToInt(edt_cod_conveniado.text), '0', 'Situação Anterior', WMudancas + ' do cod.origem ' +
        edt_cod_origem.Text + ', cod.Item Serviço ' + edt_cod_itemservico.Text, 0);
     end;
  Atualizar;
  edt_cod_origem.Clear;
  edt_cod_itemservico.Text:= '';
//  edt_cod_itemservico.Clear;
  edt_cod_origem.SetFocus;
  BotoesONOFF(true);
  EscreveLog(btn_salvar.name);
end;

procedure TFrm_Cad_itemTransposicao.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  BotoesONOFF(true);
  edt_cod_origem.Clear;
  edt_cod_itemservico.Text:= '';
//  edt_cod_itemservico.Clear;
  EscreveLog(btn_cancelar.name);
end;

procedure TFrm_Cad_itemTransposicao.btn_excluirClick(Sender: TObject);
begin
  inherited;
   if Dlg_YesNo('Tem Certeza que deseja Excluir o Item?', Self) then
      begin
      GeraAuditoria(StrToInt(edt_cod_conveniado.Text), '0', 'Exclusão do Cod.Origem ' + edt_cod_origem.Text +
                   ', Cod.Item Serviço ' + edt_cod_itemservico.Text, '', 0);
      DB_ExecSQL('delete from tbl_itemtransposicao where cod_conveniado = '+
      edt_cod_conveniado.text+' and cod_origem = '+fdt_principal6.spc_cons_med_itemtransposicao.fieldbyName('cod_origem').AsString);
      Atualizar;
      edt_cod_origem.SetFocus;
      end;
  EscreveLog(btn_excluir.name);
end;

procedure TFrm_Cad_itemTransposicao.TabSheet2Show(Sender: TObject);
begin
//*** Alterado em 16/04/15_Memo GDS***
  MemoAuditoria.Clear;
  if edt_cod_conveniado.Text = '' then
     Exit;
  ChaveExp:= StrToInt(edt_cod_conveniado.Text);
  GetInfoAuditoria(self, MemoAuditoria.name, ChaveExp);
  MemoAuditoria.SetFocus;
  // Para subir a primeira linha
  { Preciona e Mantém pressionada a tecla CTRL }
  keybd_event(VK_CONTROL, 0, KEYEVENTF_EXTENDEDKEY or 0, 0);
  { Somente Pressiona a Tecla HOME }
  keybd_event(VK_HOME, 0, 0, 0);
  { Libera a tecla CTRL }
  keybd_event(VK_CONTROL, $45, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
end;

procedure TFrm_Cad_itemTransposicao.dbe_cod_origemChange(Sender: TObject);
begin
  inherited;
  btn_excluir.Enabled:= True;
end;

end.
