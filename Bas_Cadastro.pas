unit Bas_Cadastro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, PDJButton, ExtCtrls, Bas_TelaPadrao, StdCtrls, DCChoice, Fun_Obj,
  Dlg_Mensagem, Constantes, Fun_DB, jpeg;

type
  TFrm_Bas_Cadastro = class (TFrm_Bas_TelaPadrao)
    btn_alterar: TPDJButton;
    btn_cancelar: TPDJButton;
    btn_excluir: TPDJButton;
    btn_novo: TPDJButton;
    btn_salvar: TPDJButton;
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    procedure Visible_OnOff(b:boolean);
  public
    procedure BAS_Alterar(Frm:Tform); virtual;
    procedure BAS_Cancelar(Frm:TForm); virtual;
    procedure BAS_ExecuteCancelar(Frm:TForm); virtual;
    procedure BAS_Excluir(Frm:Tform); virtual;
    procedure BAS_Localizar; virtual;
    procedure BAS_Novo(Frm:Tform); virtual;
    procedure BAS_Salvar(Frm:TForm); virtual;
    function BAS_SalvarInsert(Frm:TForm): Boolean; virtual;
    function BAS_SalvarUpdate(Frm:TForm): Boolean; virtual;
    function BAS_ValidarCadastro: Boolean; virtual;
    function BAS_VerChave: Boolean; virtual;
    procedure BotoesOnOff(b:boolean); virtual;
    procedure PesquisarChavePrimaria(valor:String);
  end;
  
var
  Frm_Bas_Cadastro: TFrm_Bas_Cadastro;

implementation
uses Fun_ConsCadastro, Men_Principal, Fun_Acesso, Fun_Str;
{$R *.DFM}

{
****************************** TFrm_Bas_Cadastro *******************************
}
procedure TFrm_Bas_Cadastro.BAS_Alterar(Frm:Tform);
begin
  if not DB_OpenTable(Self) then
    Exit ;
  FStatus := FST_Alteracao ;
  BotoesOnOff(true);
  Obj_SetCompsEnable(Self,-2,false);
  Obj_SetCompsEnable(Self,-3,false);
  Bas_SetFocus(FEditAlteracao);
  if FTransacao then
    DB_BeginTrans;
end;

procedure TFrm_Bas_Cadastro.BAS_ExecuteCancelar(Frm:TForm);
begin
  inherited;
  FStatus := FST_Normal;
  BotoesOnOff(false);
  BAS_LimparTela;
  if FTransacao then
    DB_RollBack;
end;

procedure TFrm_Bas_Cadastro.BAS_Cancelar(Frm:TForm);
begin
  if not Dlg_YesNo(MSG_DB_CON_Cancela, Self) then Exit ;
  inherited;
  BAS_ExecuteCancelar(Frm);
end;

procedure TFrm_Bas_Cadastro.BAS_Excluir(Frm:Tform);
begin
  if not Dlg_YesNo(MSG_DB_CON_Exclui, Self) then Exit ;
  if not DB_Delete(Self) then
    Exit ;
  inherited;
  if FTransacao then
    DB_Commit;
  BotoesOnOff(false);
  BAS_LimparTela;
  Dlg_Ok('Registro Exclu�do com Sucesso !', self);
  FStatus := FST_Normal;
end;

procedure TFrm_Bas_Cadastro.BAS_Localizar;
begin
  Obj_SetFormObjValueByName(Self, FEditChave,
  Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, not FOcultaIndice));
end;

procedure TFrm_Bas_Cadastro.BAS_Novo(Frm:Tform);
begin
  FStatus := FST_Novo ;
  BotoesOnOff(true);
  btn_excluir.Enabled := false ;
  if FTransacao then
    DB_BeginTrans;
  Bas_SetFocus(FEditChave);
end;

procedure TFrm_Bas_Cadastro.BAS_Salvar(Frm:TForm);
begin
  if BAS_ValidarCadastro then Exit ;
  if not Dlg_YesNo(MSG_DB_CON_Salva, Self) then Exit ;
  if FStatus = FST_Novo then begin
    if not BAS_SalvarInsert(Self) then
      Exit ;
  end else begin
    if not BAS_SalvarUpdate(Self) then begin
      Dlg_Erro('ATEN��O ! Ocorreu algum erro ao tentar salvar ! N�o foi poss�vel salvar', self);
      Exit ;
    end;
  end;
  inherited;
  if FTransacao then
    DB_Commit;
  BotoesOnOff(false);
  BAS_LimparTela;
  FStatus := FST_Normal;
end;

function TFrm_Bas_Cadastro.BAS_SalvarInsert(Frm:TForm): Boolean;
begin
  result := DB_Insert(Frm) ;
end;

function TFrm_Bas_Cadastro.BAS_SalvarUpdate(Frm:TForm): Boolean;
begin
  result := DB_Update(Frm) ;
end;

function TFrm_Bas_Cadastro.BAS_ValidarCadastro: Boolean;
begin
  result := false ;
end;

function TFrm_Bas_Cadastro.BAS_VerChave: Boolean;
begin
  result := Obj_GetFormObjValueByName(Self, FEditChave) <> '' ;
end;

procedure TFrm_Bas_Cadastro.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := (not b) and FIncluir ;
  btn_alterar.Enabled := not b ;
  btn_salvar.Enabled := b and FAlterar ;
  btn_cancelar.Enabled := b ;
  btn_excluir.Enabled := b and FExcluir;
  Btn_Fechar.Enabled := not b ;
  btn_minim.Enabled := not b ;
  btn_close.Enabled := not b ;
  Visible_OnOff(b);
  Obj_SetCompsEnable(Self,-2,true);
  Obj_SetCompsEnable(Self,-3,true);
end;

procedure TFrm_Bas_Cadastro.btn_alterarClick(Sender: TObject);
begin
  if not FConsultar then begin
    Dlg_Alerta('Usu�rio n�o autorizado a Consultar Registro !', self);
    exit;
  end;
  inherited;
  EscreveLog(btn_alterar.name);
  if not BAS_VerChave then
    BAS_Localizar;
  if BAS_VerChave then
    Bas_Alterar(Self);
end;

procedure TFrm_Bas_Cadastro.btn_cancelarClick(Sender: TObject);
begin
  EscreveLog(btn_cancelar.name);
  BAS_Cancelar(Self) ;
end;

procedure TFrm_Bas_Cadastro.btn_excluirClick(Sender: TObject);
begin
  if not FExcluir then begin
    Dlg_Alerta('Usu�rio n�o autorizado a Excluir !', self);
    exit;
  end;
  EscreveLog(btn_excluir.name);
  BAS_Excluir(Self);
end;

procedure TFrm_Bas_Cadastro.btn_novoClick(Sender: TObject);
begin
  if not FIncluir then begin
    Dlg_Alerta('Usu�rio n�o autorizado a Incluir Novo Registro !', self);
    exit;
  end;
  inherited;
  EscreveLog(btn_novo.name);
  Bas_Novo(Self);
end;

procedure TFrm_Bas_Cadastro.btn_salvarClick(Sender: TObject);
begin
  if not FAlterar then begin
    Dlg_Alerta('Usu�rio n�o autorizado a Alterar Registro !', self);
    exit;
  end;
  EscreveLog(btn_salvar.name);
  Bas_Salvar(Self);
end;
                        
procedure TFrm_Bas_Cadastro.FormCreate(Sender: TObject);
begin
  inherited;
  Visible_OnOff(false);
end;

procedure TFrm_Bas_Cadastro.FormKeyDown(Sender: TObject; var Key: Word; Shift: 
        TShiftState);
begin
  inherited;
  //  showmessage(floattostr(key));
end;

procedure TFrm_Bas_Cadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    #13: begin
      if (Screen.ActiveControl.Name = FEditChave) and (FStatus = FST_Normal)then begin
        key := #0 ;
        btn_alterarClick(Self);
      end;
      if (Screen.ActiveControl.Name = FUltFoco) then begin
        key := #0 ;
        btn_salvarclick(self);
      end;
    end;
    #27 : begin
      if (FStatus = FST_Novo) or (FStatus = FST_Alteracao) then
        btn_cancelarClick(self)
      else
        Btn_FecharClick(self);
    end;
  {    #113 : begin
        if FStatus = FST_Normal then
          btn_alterarclick(self);
      end;}
  end;
  inherited;
  
end;

procedure TFrm_Bas_Cadastro.Visible_OnOff(b:boolean);
begin
  Obj_VisibleOnOff(Self,b);
end;

procedure TFrm_Bas_Cadastro.PesquisarChavePrimaria(valor:String);
begin
  Obj_SetFormObjValueByName(self, FEditChave, valor);
//  ShowModal;
end;

procedure TFrm_Bas_Cadastro.FormShow(Sender: TObject);
begin
  inherited;
  if BAS_VerChave then begin
    Bas_Alterar(Self);
  end;
end;

end.



