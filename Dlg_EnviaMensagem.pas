unit Dlg_EnviaMensagem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DCStdCtrls, StdCtrls, PDJButton, DCChoice;

function Dlg_EnviaMSGbyNetSend (nomeDestinos, menssagem :string): Boolean;
function Dlg_EnviaMSG(FormAtivo:Tform; cod_usuariodestino:string) : boolean ;

type
  TFrm_Dlg_EnviaMensagem = class(TForm)
    DCHeaderPanel1: TDCHeaderPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Bevel1: TBevel;
    btn_ok: TPDJButton;
    cbx_cod_usuario: TDCComboBox;
    edt_mensagem: TEdit;
    Label3: TLabel;
    PDJButton1: TPDJButton;
    lbl_tamanho: TLabel;
    Label1: TLabel;
    procedure btn_okClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure edt_mensagemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Dlg_EnviaMensagem: TFrm_Dlg_EnviaMensagem;

implementation
uses dtm_principal2, Fun_Acesso, fun_db, fun_obj, fun_str;

{$R *.DFM}

function Dlg_EnviaMSGbyNetSend (nomeDestinos, menssagem :string): Boolean;
var i : integer ;
b : boolean;
begin
  try
    result := true;
    i := 0 ;
    while (GetFieldArray(nomeDestinos, i) <> '') do begin
      WinExec(PChar('net send '+GetFieldArray(nomeDestinos, i)+' "'+menssagem+'"'), SW_HIDE);
      inc(i);
    end;  
  except
    result := false ;
  end;
end;


function Dlg_EnviaMSG(FormAtivo:Tform; cod_usuariodestino:string) : boolean ;
begin
  Obj_LoadCombo(Frm_Dlg_EnviaMensagem, 'cbx_cod_usuario', 'descricao_usu', Copy('cbx_cod_usuario', 5, length('cbx_cod_usuario')), 'tbl_usuario order by descricao_usu');
  if cod_usuariodestino <> '' then
    Obj_setFormObjValueByName(Frm_Dlg_EnviaMensagem, 'cbx_cod_usuario', cod_usuariodestino);
  if FormAtivo = nil then
    FormAtivo := Screen.ActiveForm ;
  FormAtivo.Enabled := false ;
  with Frm_Dlg_EnviaMensagem do begin
    ShowModal;
    result := true ;//FRetorno ;
  end;
  FormAtivo.Enabled := true ;
end;

procedure TFrm_Dlg_EnviaMensagem.btn_okClick(Sender: TObject);
begin
  DB_ExecSQL('insert into tbl_mensagem (cod_usuarioOrigem, cod_usuarioDestino, mensagem_msg, data_msg, lido_msg ) values ('+
  STR_IntToStr(FCod_Usuario)+', '+cbx_cod_usuario.valueitem+', '''+edt_mensagem.text+''', getdate(), 0)' );
  close;
end;

procedure TFrm_Dlg_EnviaMensagem.PDJButton1Click(Sender: TObject);
begin
  close;
end;

procedure TFrm_Dlg_EnviaMensagem.edt_mensagemKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   lbl_tamanho.Caption := 'Tamanho da mensagem : '+STR_IntToStr(length(edt_mensagem.text));
end;

end.
