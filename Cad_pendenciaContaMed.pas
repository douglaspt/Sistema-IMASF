unit Cad_pendenciaContaMed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, BEditButton, BEdit,
  BComboBox;

type
  TFrm_Cad_pendenciaContaMed = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel6: TPanel;
    edt_cod_pendenciaContaMed: TEditButton;
    edt_cod_conveniado: TEditButton;
    edt_nome_con: TBEdit;
    edt_ano: TBEdit;
    edt_descricao_ctm: TBEdit;
    edt_dtreferencia_ctm: TDateTimePicker;
    cbx_cod_mes: TBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure edt_cod_pendenciaContaMedButtonClick(Sender: TObject);
    procedure edt_cod_pendenciaContaMedKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure edt_anoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function BAS_ValidarCadastro: boolean ;             override ;
  end;

var
  Frm_Cad_pendenciaContaMed: TFrm_Cad_pendenciaContaMed;

implementation

uses Constantes, Fun_Obj, Fun_ConsCadastro, Fun_Medico;

{$R *.DFM}

procedure TFrm_Cad_pendenciaContaMed.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Pendencias para Conta M�dica' ;
  FEditChave    := 'edt_cod_pendenciaContaMed' ;
  FEditAlteracao:= 'edt_cod_aconveniado' ;
  FUltFoco      := 'edt_descricao_ctm' ;
  FTitPesquisa  := 'Localizar Pendencias para Conta M�dica' ;
  FPesquisa     := 'cod_pendenciaContaMed, cod_conveniado, dtreferencia_ctm' ;
  FPesquisaTit  := 'C�digo, Cod. Conveniado, Dt. Refer�ncia' ;
  inherited;
end;

function TFrm_Cad_pendenciaContaMed.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_conveniado.name, 'O C�digo do Conveniado deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'O M�s de Refere�ncia deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Refere�ncia deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_descricao_ctm.name, 'A Descri��o deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_pendenciaContaMed.btn_novoClick(Sender: TObject);
begin
  BAS_CarregarCombo('cbx_cod_mes','nome_mes');
  inherited;
  edt_cod_pendenciaContaMed.Enabled := false;
end;

procedure TFrm_Cad_pendenciaContaMed.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes','nome_mes');
end;

procedure TFrm_Cad_pendenciaContaMed.btn_alterarClick(Sender: TObject);
begin
  BAS_CarregarCombo('cbx_cod_mes','nome_mes');
  inherited;
  Obj_SetFormObjValueByName(self,'cbx_cod_mes',FormatDateTime('m',edt_dtreferencia_ctm.Date));
  Obj_SetFormObjValueByName(self,'edt_ano',FormatDateTime('yyyy',edt_dtreferencia_ctm.Date));
end;

procedure TFrm_Cad_pendenciaContaMed.edt_cod_pendenciaContaMedButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(Self);
end;

procedure TFrm_Cad_pendenciaContaMed.edt_cod_pendenciaContaMedKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    btn_alterarClick(self);
end;

procedure TFrm_Cad_pendenciaContaMed.edt_cod_conveniadoButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQL := 'select cod_conveniado, nome_con, razao_con from tbl_conveniado where cod_sitconveniado = 1';
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl_conveniado', FPesquisa,
  'Cod.Conv, Nome do Conveniado, Raz�o Social', 'Localizar Conveniados', FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Cad_pendenciaContaMed.edt_cod_conveniadoExit(
  Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_nome_con.text := Get_NomeConveniadoAtivo(edt_cod_conveniado.text);
end;

procedure TFrm_Cad_pendenciaContaMed.edt_anoExit(Sender: TObject);
begin
  inherited;
  if cbx_cod_mes.Text <> '' then
//    edt_dtreferencia_ctm.Text := '01/'+cbx_cod_mes.valueitem+'/'+edt_ano.Text;
    edt_dtreferencia_ctm.Date := StrToDate('01/'+IntToStr(cbx_cod_mes.getItemValue)+'/'+edt_ano.Text);
end;

end.
