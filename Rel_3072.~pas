unit Rel_3072;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3072 = class(TFrm_Bas_TelaPadrao)
    PDJButton4: TPDJButton;
    Panel1: TPanel;
    edt_cod_autorizacao: TDCEdit;
    procedure PDJButton4Click(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;                                                                          

var
  Frm_Rel_3072: TFrm_Rel_3072;

implementation
uses Imp_Med_ResumoConta, dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,
Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str, dtm_principal3, Dlg_ImprimeCarta,
Imp_4127, Fun_Obj, dtm_principal6, Bas_Impressao ;

{$R *.DFM}

function TFrm_Rel_3072.CriticaParametros : Boolean ;
begin

end;

procedure TFrm_Rel_3072.PDJButton4Click(Sender: TObject);
begin
  inherited;
  with Fdt_principal6.spc_cons_med_itemAutorizacao do
  begin
    close;
    ParamByName('@cod_autorizacao').AsString := edt_cod_autorizacao.text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal6.spc_cons_med_itemAutorizacao;
  Frm_Bas_Impressao.showReport(4169);
  Fdt_principal6.spc_cons_med_itemAutorizacao.close;
end;

end.



