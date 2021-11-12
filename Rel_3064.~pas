unit Rel_3064;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3064 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    edt_cod_pedidoCompraFarmacia: TDCEdit;
    PDJButton3: TPDJButton;
    procedure PDJButton3Click(Sender: TObject);
  private
    { Private declarations }
  FPesquisaSQLDefalt : string;
  function CriticaParametros : Boolean ;
  public
    { Public declarations }
    CodRequerimento, DtProtocolo, FInscricao : string;
  end;

var
  Frm_Rel_3064: TFrm_Rel_3064;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
Fun_obj, Fun_ConsCadastro, dtm_principal4, Imp_4107, Fun_Data, Imp_4114,
Bas_Impressao, dtm_principal6 ;

{$R *.DFM}

function TFrm_Rel_3064.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_pedidoCompraFarmacia.name, 'O Código do Pedido de Compra deve ser Preenchido !', VLD_Preenchido ));
end;

procedure TFrm_Rel_3064.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
  Exit;
  with fdt_principal6.spc_cons_farm_pedidoCompraFarmacia02 do
  begin
    close;
    ParamByName('@cod_pedidoCompraFarmacia').AsString := edt_cod_pedidoCompraFarmacia.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_farm_pedidoCompraFarmacia02;
  Frm_Bas_Impressao.showReport(4150);
  fdt_principal6.spc_cons_farm_pedidoCompraFarmacia02.close;
end;

end.



