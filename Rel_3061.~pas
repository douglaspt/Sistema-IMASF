unit Rel_3061;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3061 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel5: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FReferencia, FMesReferencia, FAnoReferencia  : String ;
  end;

var
  Frm_Rel_3061: TFrm_Rel_3061;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_4056, Fun_Data, Imp_4125, Dlg_Mensagem, Fun_Obj ;

{$R *.DFM}

procedure TFrm_Rel_3061.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Relatório de Status das Contas' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

function TFrm_Rel_3061.CriticaParametros : Boolean ;
begin
  result :=(not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano Referência deve ser Preenchido !', VLD_Preenchido ));
end;


procedure TFrm_Rel_3061.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_adm_descontofolha02 do
  begin
    close;
    ParamByName('@inscricao_ben').AsInteger := 0 ;
    ParamByName('@dtreferenciaInicial_flh').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.Text;
    ParamByName('@dtreferenciaFinal_flh').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.Text ;
    ParamByName('@cod_tarifa').AsInteger := 615;
    ParamByName('@cod_empresafolha').AsInteger := 0 ;
    ParamByName('@cod_sitdesconto').AsInteger := 0 ;
    ParamByName('@dtpagto_flh').AsString := '';
    ParamByName('@dtdesconto_flh').AsString := '';
    ParamByName('@parcelas').AsInteger := 0 ;
    ParamByName('@cod_order').AsInteger := 6 ;
    ParamByName('@nossonumero_flh').AsInteger := 0 ;
    ParamByName('@titulacartei_ben').AsInteger := 0 ;
    ParamByName('@matriculadebito_seg').AsInteger := 0 ;
    ParamByName('@cod_usuario').AsInteger := 0 ;
    ParamByName('@dtsistema_flh').AsString := ''; 
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4125 := TFrm_Imp_4125.Create(Self);
  Frm_Imp_4125.FReferencia := cbx_cod_mes.Text+'/'+edt_ano.Text;
  Frm_Imp_4125.QuickRep1.Preview;
  Frm_Imp_4125.Release;
  Fdt_principal.spc_cons_adm_descontofolha02.close;


end;
procedure TFrm_Rel_3061.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
end;

end.

