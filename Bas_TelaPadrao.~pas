unit Bas_TelaPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons,
  ExtCtrls, StdCtrls, ComCtrls, PDJButton, Fun_Obj, jpeg, shellapi, DB;

type
  TFrm_Bas_TelaPadrao = class(TForm)
    Pnl_Titulo2: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    StB_Principal: TStatusBar;
    btn_close: TPDJButton;
    btn_minim: TPDJButton;
    Btn_Fechar: TPDJButton;
    Image1: TImage;
    Image3: TImage;
    Tmr_Close: TTimer;
    Pnl_Titulo: TLabel;
    btn_ajuda: TPDJButton;
    lbl_codTela: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject); 
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_minimClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure Tmr_CloseTimer(Sender: TObject);
    procedure btn_ajudaClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowHint(Sender: TObject);
  public
    { Public declarations }
    FStatus : integer ;                 //Status do Formulálio (em alteração, em inserção, etc)
    FTitulo,                            //Título da Tela
    FEditChave,                         //Primeiro campo de ediçaõ para SetFocus, Campo Chave
    FEditAlteracao,                     //Segundo campo de edição para SetFocus, Foco para alteração
    FUltFoco,                           //Ultimo Campo a Receber o foco
    FTitPesquisa,                       //Título da Tela de Pesquisa
    FPesquisa,                          //Campos da Tabela para Pesquisa
    FPesquisaTit,                       //Título dos campos da tabela para pesquisa
    FPesquisaSQL                        //
    : String ;
    FTransacao,                         //Se True os procedimentos e funções que acessam Banco de Dados herdadas das Classes Pai terão controle de transação automático. Esta variável sempre começará com True nesta classe.
    FOcultaIndice : boolean  ;
    procedure BAS_LimparTela; virtual ;
    procedure BAS_SetFocus(CompName:String);
    procedure BAS_CarregarCombo(Combo, Campo : String);
    function  BAS_ValidarCampo(CompName, MSG : String;TipoVal : Integer): boolean ;
  end;

var
  Frm_Bas_TelaPadrao: TFrm_Bas_TelaPadrao;

implementation
uses Fun_Test, Constantes, Dlg_Mensagem, Fun_Acesso, Fun_DB;
{$R *.DFM}

function TFrm_Bas_TelaPadrao.BAS_ValidarCampo(CompName, MSG : String;TipoVal : Integer): boolean ;
var
  b : boolean ;
begin
  case TipoVal of
    VLD_Preenchido : b := Test_Preenchido(Obj_GetFormObjValueByName(Self, CompName)) ;
    VLD_NumMaiorZero : b := Test_NumMaiorZero(Obj_GetFormObjValueByName(Self, CompName)) ;
    VLD_DataPreenchida : b := Test_PreenchidoData(Obj_GetFormObjStringValueByName(Self, CompName)) ;
    VLD_DataValida : b := Test_DataValida(Obj_GetFormObjStringValueByName(Self, CompName)) ;
    VLD_DataNascimento : b := Test_DataNascimento(Obj_GetFormObjStringValueByName(Self, CompName)) ;
    VLD_CPF : b := Test_CPF(Obj_GetFormObjValueByName(Self, CompName)) ;

  end;
  if not b then begin
    Dlg_Alerta(MSG, self);
    Application.ProcessMessages;
    Obj_SetFocus(Self, CompName);
  end;
  result := b ;
end;

procedure TFrm_Bas_TelaPadrao.BAS_SetFocus(CompName:String);
begin
   Obj_SetFocus(Self, CompName);
end;

procedure TFrm_Bas_TelaPadrao.BAS_LimparTela;
begin
  Obj_EmptyEdit(Self);
  Bas_SetFocus(FEditChave);                                     
end;

procedure TFrm_Bas_TelaPadrao.BAS_CarregarCombo(Combo, Campo : String);
begin
  Obj_LoadCombo(Self, combo, campo, Copy(combo, 5, length(combo)), 'tbl_'+Copy(combo, 9, length(combo)));
end;

procedure TFrm_Bas_TelaPadrao.ShowHint(Sender: TObject);
begin
  StB_Principal.Panels[0].text := Application.Hint;
end;

procedure TFrm_Bas_TelaPadrao.FormShow(Sender: TObject);  
begin
  Application.OnHint := ShowHint ;
  if not (Acs_AcessoSistema(copy(Name,5,length(Name)))) and (name <> 'Frm_Bas_Preview') then begin
    Dlg_Alerta('Usuário não autorizado a Acessar esta Tela !!!', self) ;
    Tmr_Close.Enabled := true ;
  end;
  if (FCod_Usuario <> 1) and (FCod_Usuario <> 72) then
    DB_ExecSQLParams('insert into tbl_historicoAcesso (cod_telaSistema, cod_usuario, dtsistema_hac) values ('+
    inttostr(FCod_TelaSistema)+', '+inttostr(FCod_Usuario)+', getdate())', false);
  FTitulo := FNomeTelaSistema ;
  Pnl_Titulo.Caption := '    ' + FTitulo ;
  if Length(Pnl_Titulo.Caption) > 30 then
    Pnl_Titulo.Font.Size := 12
  else
    Pnl_Titulo.Font.Size := 14;
  StB_Principal.Panels[0].text := FTitulo ;
  StB_Principal.Panels[1].text := DateToStr(Date);
  StB_Principal.Panels[2].text := 'Cód. Tela : '+IntToStr(FCod_TelaSistema);
  lbl_codTela.Caption := StB_Principal.Panels[2].text;
end;

procedure TFrm_Bas_TelaPadrao.Btn_FecharClick(Sender: TObject);
begin
  Close;
  DB_Commit;
  EscreveLog(btn_fechar.name);
end;

procedure TFrm_Bas_TelaPadrao.FormCreate(Sender: TObject);
begin
  BAS_LimparTela;
  KeyPreview := True;
  FTransacao := True;
end;

procedure TFrm_Bas_TelaPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  procedure PriorTab;
  begin
    SelectNext(ActiveControl,False,True);
    Key := 0 ;
  end;
begin
  case Key of
    38 : if shift = [ssCtrl] then PriorTab ;
    116 : showmessage('TRANSACTIONS = '+INTTOSTR(DB_TranCount));
  end;
//  showmessage(floattostr(key));
end;

procedure TFrm_Bas_TelaPadrao.btn_minimClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFrm_Bas_TelaPadrao.FormKeyPress(Sender: TObject; var Key: Char);
  procedure NextTab;
  begin
    try
      SelectNext(ActiveControl,True,True);
      while (ActiveControl is TPanel) or (ActiveControl is TPageControl) or (ActiveControl is TTabSheet) do
        SelectNext(ActiveControl,True,True);
      Key := #0 ;
    except;
      ;
    end;
  end;
begin
  case Key of
    #13 : NextTab ;
  end;
end;

procedure TFrm_Bas_TelaPadrao.FormDestroy(Sender: TObject);
begin
  FPesquisaSQL := '' ;
end;

procedure TFrm_Bas_TelaPadrao.Tmr_CloseTimer(Sender: TObject);
begin
  close;
end;

procedure TFrm_Bas_TelaPadrao.btn_ajudaClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', Pchar(FSiteAjuda), nil, nil, SW_SHOWNORMAL);
end;

end.

