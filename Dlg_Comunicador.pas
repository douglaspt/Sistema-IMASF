unit Dlg_Comunicador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DCStdCtrls, StdCtrls, PDJButton;

function Dlg_ComunicadorMSG(FormAtivo:Tform) : boolean ;

type
  TFrm_Dlg_Comunicador = class(TForm)
    DCHeaderPanel1: TDCHeaderPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lbl_remetente: TLabel;
    lbl_destino: TLabel;
    lbl_mensagem: TLabel;
    Bevel1: TBevel;
    btn_ok: TPDJButton;
    PDJButton1: TPDJButton;
    procedure btn_okClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
  private
    { Private declarations }
    FCod_UsuarioOrigem : String ;
  public
    { Public declarations }
  end;

var
  Frm_Dlg_Comunicador: TFrm_Dlg_Comunicador;

implementation
uses dtm_principal2, Fun_Acesso, fun_db, dlg_enviamensagem;

{$R *.DFM}

function Dlg_ComunicadorMSG(FormAtivo:Tform) : boolean ;
begin
  if Frm_Dlg_Comunicador.Visible then exit ;
  with Fdt_principal2.spc_cons_mensagem do
  begin
    Params[0].AsInteger := FCod_Usuario ;
    Open;
    if recordcount < 1 then begin
      close;
      exit;
    end;
    beep;
    Frm_Dlg_Comunicador.lbl_remetente.Caption := FieldByName('descricao_usu').AsString ;
    Frm_Dlg_Comunicador.lbl_destino.Caption := FieldByName('descricao_usu_1').AsString ;
    Frm_Dlg_Comunicador.lbl_mensagem.Caption := '( ' + FieldByName('data_msg').AsString +
    ' ) : ' + FieldByName('mensagem_msg').AsString ;
    Frm_Dlg_Comunicador.FCod_UsuarioOrigem := FieldByName('cod_usuarioOrigem').AsString ;
    close;
  end;
  if FormAtivo = nil then
    FormAtivo := Screen.ActiveForm ;
  FormAtivo.Enabled := false ;
  with Frm_Dlg_Comunicador do begin
    beep;
    Application.Restore;
    ShowModal;
    result := true ;//FRetorno ;
  end;
  FormAtivo.Enabled := true ;
end;

procedure TFrm_Dlg_Comunicador.btn_okClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_Dlg_Comunicador.PDJButton1Click(Sender: TObject);
begin
  Dlg_EnviaMSG(self, Frm_Dlg_Comunicador.FCod_UsuarioOrigem);
  close;
end;

end.
