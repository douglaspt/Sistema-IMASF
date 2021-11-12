unit Mov_ExcluiDescontoAutom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox;

type
  TFrm_Mov_ExcluiDescontoAutom = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TBComboBox;
    edt_ano: TBEdit;
    ProgressBar1: TProgressBar;
    lbl_linha: TLabel;
    btn_excluiDesconto: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_excluiDescontoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Mov_ExcluiDescontoAutom: TFrm_Mov_ExcluiDescontoAutom;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso ;

{$R *.DFM}

procedure TFrm_Mov_ExcluiDescontoAutom.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Excluir Descontos Gerados Automáticos' ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

procedure TFrm_Mov_ExcluiDescontoAutom.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
end;

procedure TFrm_Mov_ExcluiDescontoAutom.btn_excluiDescontoClick(Sender: TObject);
VAR
  dtrefe : STRING ;
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência da Conta deve ser Preenchida !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia da Conta deve ser Preenchida !', VLD_Preenchido ))
  then exit ;
  dtrefe := ''''+cbx_cod_mes.valueItem + '/01/'+edt_ano.text+'''';
  DB_OpenSQL('select count(*) from tbl_descontofolha where dtreferencia_flh = '+dtrefe+' and ((cod_tarifa = 595) or (cod_tarifa = 518))');
  if Tab.Fields[0].AsInteger <= 0 then begin
    Dlg_Alerta('Não Existem Descontos para este Mês de Referência !', self);
    DB_ClearSQL;
    Exit;
  end;
  if Dlg_YesNo('Confirma Excluir Descontos ?', Self) then
    DB_ExecSQL('EXEC spc_adm_excluidescontoautom '+dtrefe);
    EscreveLog(btn_excluiDesconto.name);
end;

end.



