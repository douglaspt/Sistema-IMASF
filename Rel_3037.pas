unit Rel_3037;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3037 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    edt_codini: TDCEdit;
    PDJButton3: TPDJButton;
    edt_codfinal: TDCEdit;
    procedure FormCreate(Sender: TObject);      
    procedure PDJButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodInicial, CodFinal : String ;
  end;

var
  Frm_Rel_3037: TFrm_Rel_3037;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Imp_4050, Dlg_Mensagem ;

{$R *.DFM}

procedure TFrm_Rel_3037.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Relatório de Status das Contas' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Rel_3037.PDJButton3Click(Sender: TObject);
begin
  inherited;

  with fdt_principal2.spc_cons_med_cid do
  begin
    close;
    ParamByName('@cod_cidinicial').AsString := edt_codini.Text;
    ParamByName('@cod_cidfinal').AsString := edt_codfinal.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4050 := TFrm_Imp_4050.Create(Self);
  Frm_Imp_4050.CodInicial := edt_codini.Text;
  Frm_Imp_4050.CodFinal := edt_codfinal.Text;
  Frm_Imp_4050.QuickRep1.Preview;
  Frm_Imp_4050.Release;
  fdt_principal2.spc_cons_med_cid.close;
end;

end.

