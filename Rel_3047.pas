unit Rel_3047;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3047 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel4: TPanel;
    edt_inscricao_ben: TDCEdit;
    edt_matricula_mte: TDCEdit;
    Panel5: TPanel;
    edt_dtreferencia_abeIni: TDCDateEdit;
    edt_dtreferencia_abeFin: TDCDateEdit;
    cbx_cod_empresafolha: TDCComboBox;
    procedure FormShow(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3047: TFrm_Rel_3047;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Imp_4069, Dlg_Mensagem, dtm_principal3, dtm_principal4, Imp_4094, Fun_Data ;

{$R *.DFM}


procedure TFrm_Rel_3047.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha','nome_emp');
end;




procedure TFrm_Rel_3047.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if (edt_inscricao_ben.text = '') and (edt_matricula_mte.text = '') then
    begin
      ShowMessage('O Campo Inscri��o ou Matr�cula devem ser Preenchidos!');
      exit;
    end;
      if cbx_cod_empresafolha.Text = '' then
        begin
          if (edt_matricula_mte.text <> '') then
          begin
            ShowMessage('A Empresa deve ser Preenchida!');
            Exit;
          end;
        end;
  with fdt_principal4.spc_cons_adm_histsalarios do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
    ParamByName('@matricula_mte').AsString := edt_matricula_mte.text;
    ParamByName('@cod_empresa').AsString := cbx_cod_empresafolha.valueItem;
    ParamByName('@dtreferencia_abeIni').AsString := Data_Format('mm/dd/yyyy',edt_dtreferencia_abeIni.Date);
    ParamByName('@dtreferencia_abeFin').AsString := Data_Format('mm/dd/yyyy',edt_dtreferencia_abeFin.Date);
    open;
      if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;

  end;
  Frm_Imp_4094 := TFrm_Imp_4094.Create(Self);
  Frm_Imp_4094.FPeriodoInicial := edt_dtreferencia_abeIni.Text;
  Frm_Imp_4094.FPeriodoFinal := edt_dtreferencia_abeFin.text;
  Frm_Imp_4094.QuickRep1.Preview;
  Frm_Imp_4094.Release;
  fdt_principal4.spc_cons_adm_histsalarios.close;
end;

end.

