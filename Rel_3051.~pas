unit Rel_3051;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3051 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel5: TPanel;
    cbx_cod_setorDestino: TDCComboBox;
    Panel1: TPanel;
    Btn_LimpaCampos: TPDJButton;
    edt_cod_usuario: TDCEdit;
    Panel4: TPanel;
    edt_interessado_tmt: TDCEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    edt_inscricao_ben: TDCEdit;
    Panel8: TPanel;
    edt_processo_tmt: TDCEdit;
    edt_ano_tmt: TDCEdit;
    cbx_cod_corprocesso: TDCComboBox;
    Panel9: TPanel;
    Panel10: TPanel;
    edt_assunto_tmt: TDCEdit;
    edt_dtprocessoInicial: TDCDateEdit;
    edt_dtprocessoFinal: TDCDateEdit;
    RdG_OrdemImpressao: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure CarregarCombo;
  private
    { Private declarations }
  public
    { Public declarations }
    FSetor, FUsuario : String ;
  end;

var
  Frm_Rel_3051: TFrm_Rel_3051;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Fun_Data, dtm_principal4, Dlg_Mensagem, Fun_obj, Imp_4090 ;

{$R *.DFM}

procedure TFrm_Rel_3051.FormCreate(Sender: TObject);
begin
{  FTitulo       := 'Relatório de Status das Contas' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ; }
  inherited;
end;


procedure TFrm_Rel_3051.PDJButton3Click(Sender: TObject);
begin
  inherited;
  with fdt_principal4.spc_cons_adm_processoporsetor do
  begin
    close;
    ParamByName('@cod_setorDestino').AsString := cbx_cod_setorDestino.valueitem ;
    ParamByName('@processo_tmt').AsString := edt_processo_tmt.text ;
    ParamByName('@ano_tmt').AsString := edt_ano_tmt.text ;
    ParamByName('@cod_corprocesso').AsString := cbx_cod_corprocesso.valueitem ;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text ;
    ParamByName('@assunto_tmt').AsString := edt_assunto_tmt.text ;
    ParamByName('@interessado_tmt').AsString := edt_interessado_tmt.text ;
    ParamByName('@dtprocessoInicial').AsString := Data_Format('mm/dd/yyyy',edt_dtprocessoInicial.Date);
    ParamByName('@dtprocessoFinal').AsString := Data_Format('mm/dd/yyyy',edt_dtprocessoFinal.Date); 
    ParamByName('@destinatario_tmt').AsString := edt_cod_usuario.text ;
    ParamByName('@order').AsInteger := RdG_OrdemImpressao.ItemIndex ;
    open;
      if recordcount = 0 then begin
        Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
        close;
        exit;
      end;
  end;
  Frm_Imp_4090 := TFrm_Imp_4090.Create(Self);
  Frm_Imp_4090.FSetor := cbx_cod_setorDestino.text;
  Frm_Imp_4090.FProcesso:= edt_processo_tmt.text;
  Frm_Imp_4090.FAno := edt_ano_tmt.text;
  Frm_Imp_4090.FInscricao := edt_inscricao_ben.text;
  Frm_Imp_4090.FCorProc := cbx_cod_corprocesso.text;
  Frm_Imp_4090.FPeriodoIni := edt_dtprocessoInicial.text;
  Frm_Imp_4090.FPeriodoFin := edt_dtprocessoFinal.text;
  Frm_Imp_4090.FUsuario := edt_cod_usuario      .text;
  Frm_Imp_4090.QuickRep1.Preview;
  Frm_Imp_4090.Release;
  fdt_principal4.spc_cons_adm_processoporsetor.close;
  fdt_principal4.spc_cons_adm_processoporsetor.close;
end;

procedure TFrm_Rel_3051.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombo;
end;

procedure TFrm_Rel_3051.CarregarCombo;
begin
  Obj_LoadCombo(Self, 'cbx_cod_setorDestino', 'sigla_sti + '' - '' + nome_sti', 'cod_setorimasf', 'tbl_setorimasf order by indice_sti, nome_sti');
  Obj_LoadCombo(Self, 'cbx_cod_corprocesso', 'nome_cor', 'cod_corprocesso', 'tbl_corprocesso');
end;

procedure TFrm_Rel_3051.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  CarregarCombo;
end;

end.

