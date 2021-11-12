unit Rel_ExtratoItem001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_ExtratoItem001 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton3: TPDJButton;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    edt_ano2: TDCEdit;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    Panel6: TPanel;
    edt_cod_itemservico: TDCChoiceEdit;
    edt_descricao_itc: TDCEdit;
    PDJButton1: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure edt_cod_itemservicoExit(Sender: TObject);
    procedure edt_cod_itemservicoButtonClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_ExtratoItem001: TFrm_Rel_ExtratoItem001;

implementation
uses Imp_Med_ExtratoItem001, Imp_Med_ExtratoConven002, dtm_principal, Fun_Medico,
Fun_ConsCadastro, Constantes, Fun_Data, Imp_Med_ExtratoConven003, Fun_Obj, DLG_mensagem,
Imp_Med_ExtratoItem002 ;

{$R *.DFM}

procedure TFrm_Rel_ExtratoItem001.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Extrato de Conveniados por Item de Serviço' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Rel_ExtratoItem001.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_ExtratoItem001.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
end;

procedure TFrm_Rel_ExtratoItem001.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Rel_ExtratoItem001.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_itemservico.name, 'Código do Item de Serviço deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mes de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'Ano de Referencia Final deve ser Preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_ExtratoItem001.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratoitem001 do
  begin
    close;
    if edt_cod_conveniado.text = '' then
      ParamByName('@cod_conveniado').AsString := ''
    else
      ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@cod_itemServico').AsString := edt_cod_itemservico.text ;
//    ParamByName('@cod_itemServicoFin').AsString := edt_cod_itemservico.text ;
    ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaInicial_cta').AsString := '01' ;
    ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@sequenciaFinal_cta').AsString := '100' ;
//    ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
    if recordcount < 1 then begin
      Dlg_Ok('Nenhum Item encontrado !', self);
      close;
      exit;
    end;
  end;
  Frm_Imp_Med_ExtratoItem001 := TFrm_Imp_Med_ExtratoItem001.Create(Self);
  Frm_Imp_Med_ExtratoItem001.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_ExtratoItem001.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_Med_ExtratoItem001.FDataInicial := edt_dtinicial.text;
  Frm_Imp_Med_ExtratoItem001.FDataFinal := edt_dtfinal.text;
  Frm_Imp_Med_ExtratoItem001.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoItem001.Release;
  Fdt_principal.spc_cons_med_extratoitem001.close;
end;

procedure TFrm_Rel_ExtratoItem001.edt_cod_itemservicoExit(Sender: TObject);
begin
  inherited;
  edt_descricao_itc.text := Get_DescricaoServico(edt_cod_itemservico.text);
end;

procedure TFrm_Rel_ExtratoItem001.edt_cod_itemservicoButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservico',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento',
  'Localizar Itens de Serviços', '', true));
end;

procedure TFrm_Rel_ExtratoItem001.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.Text = '' then begin
    Dlg_Alerta('O Código do Conveniado deve ser Preenchido',self);
    Exit;
  end;
  if CriticaParametros then
    Exit;
  with Fdt_principal.spc_cons_med_extratoitem002 do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@cod_itemservico').AsString := edt_cod_itemservico.text ;
//    ParamByName('@cod_itemservicoFin').AsString := '0' ;
    if (edt_dtinicial.text <> '') and (edt_dtfinal.text <> '') then begin
      ParamByName('@dtrealizacaoInicial_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
      ParamByName('@dtrealizacaoFinal_itc').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
    end else begin
      ParamByName('@dtrealizacaoInicial_itc').AsString := '' ;
      ParamByName('@dtrealizacaoFinal_itc').AsString := '' ;
    end;
    ParamByName('@dtreferenciaInicial_cta').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@sequenciaInicial_cta').AsString := '1' ;
    ParamByName('@dtreferenciaFinal_cta').AsString := cb2_cod_mes.valueItem + '/01/'+edt_ano2.text;
    ParamByName('@sequenciaFinal_cta').AsString := '100' ;
//    ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
  end;
  Frm_Imp_Med_ExtratoItem002 := TFrm_Imp_Med_ExtratoItem002.Create(Self);
  Frm_Imp_Med_ExtratoItem002.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_ExtratoItem002.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
  Frm_Imp_Med_ExtratoItem002.FDataInicial := edt_dtinicial.text;
  Frm_Imp_Med_ExtratoItem002.FDataFinal := edt_dtfinal.text;
  Frm_Imp_Med_ExtratoItem002.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoItem002.Release;
  Fdt_principal.spc_cons_med_extratoitem002.close;
end;

end.

