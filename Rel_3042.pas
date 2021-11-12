unit Rel_3042;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3042 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton3: TPDJButton;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    edt_ano2: TDCEdit;
    Panel4: TPanel;
    cbx_cod_sitdesconto: TDCComboBox;
    procedure FormShow(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3042: TFrm_Rel_3042;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Imp_4069, Dlg_Mensagem, dtm_principal3, Fun_Obj ;

{$R *.DFM}


procedure TFrm_Rel_3042.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  Obj_LoadCombo(Self, 'cbx_cod_sitdesconto', 'nome_sds', 'cod_sitdesconto', 'tbl_sitdesconto where tipoSituacao_sds <> ''sistema''');
end;

function TFrm_Rel_3042.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'M�s de Refer�ncia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'M�s de Refer�ncia Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'Ano de Referencia Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_sitdesconto.name, 'A Situa��o do Desconto deve ser Preenchida!', VLD_Preenchido )) ;
end;


procedure TFrm_Rel_3042.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_adm_descontoplano01 do
  begin
    close;
    ParamByName('@dtreferenciaIni').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@dtreferenciaFin').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueItem;
    open;
      if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;

  end;
  Frm_Imp_4069 := TFrm_Imp_4069.Create(Self);
  Frm_Imp_4069.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4069.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_4069.SitDesc := cbx_cod_sitdesconto.text;
  Frm_Imp_4069.QuickRep1.Preview;
  Frm_Imp_4069.Release;
  fdt_principal3.spc_cons_adm_descontoplano01.close;
end;

end.

