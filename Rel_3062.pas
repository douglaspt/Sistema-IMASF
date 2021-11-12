unit Rel_3062;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3062 = class(TFrm_Bas_TelaPadrao)
    PDJButton4: TPDJButton;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel6: TPanel;
    edt_cod_conveniado: TDCEdit;
    Panel8: TPanel;
    cbx_cod_classificacaoConveniado: TDCComboBox;
    edt_cod_conveniadoIni: TDCEdit;
    edt_cod_conveniadoFin: TDCEdit;
    Btn_LimpaCampos: TPDJButton;
    procedure FormShow(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
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
  Frm_Rel_3062: TFrm_Rel_3062;

implementation
uses Imp_Med_ResumoConta, dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,
Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str, dtm_principal3, Dlg_ImprimeCarta,
Imp_4127, Fun_Obj ;

{$R *.DFM}

function TFrm_Rel_3062.CriticaParametros : Boolean ;
begin

end;

procedure TFrm_Rel_3062.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_classificacaoConveniado', 'descricao_ccv');
end;

procedure TFrm_Rel_3062.PDJButton4Click(Sender: TObject);
begin
  inherited;
  with Fdt_principal3.spc_cons_adm_conveniado do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := edt_cod_conveniado.text;
    ParamByName('@cod_conveniadoIni').AsString := edt_cod_conveniadoIni.text;
    ParamByName('@cod_conveniadoFin').AsString := edt_cod_conveniadoFin.text;
    ParamByName('@cod_classificacaoConveniado').AsString := cbx_cod_classificacaoConveniado.valueItem;
    ParamByName('@cod_sitconveniado').AsString := '1';
    open;
  end;
  
  if Dlg_ImprimeEtiquetaYesNo(self) then begin
    Frm_Imp_4127 := TFrm_Imp_4127.Create(Self);
    Frm_Imp_4127.QuickRep1.Preview;
    Frm_Imp_4127.Release;
  end;
  Fdt_principal3.spc_cons_adm_conveniado.close;
end;

procedure TFrm_Rel_3062.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;

end.



