unit Rel_3035;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls;

type
  TFrm_Rel_3035 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3035: TFrm_Rel_3035;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Imp_4056, Fun_Data, dtm_principal3, Imp_4061, Dlg_Mensagem ;

{$R *.DFM}

procedure TFrm_Rel_3035.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Relatório de Status das Contas' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

function TFrm_Rel_3035.CriticaParametros : Boolean ;
begin
  result :=(not BAS_ValidarCampo(edt_dtinicial.name, 'Data de Referencia Inicial deve ser Preenchido !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtfinal.name, 'Data de Referência Final deve ser Preenchido !', VLD_DataPreenchida ));

end;


procedure TFrm_Rel_3035.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_txt_carencias_erros do
  begin
  close;
  ParamByName('@dtreferenciainicial_cta').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
  ParamByName('@dtreferenciafinal_cta').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
  open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4061 := TFrm_Imp_4061.Create(Self);
  Frm_Imp_4061.FPeriodoInicial := edt_dtinicial.text;
  Frm_Imp_4061.FPeriodoFinal := edt_dtfinal.text;
  Frm_Imp_4061.QuickRep1.Preview;
  Frm_Imp_4061.Release;
  fdt_principal3.spc_cons_txt_carencias_erros.close;
end;

end.

