unit Rel_ExtratoItemRelaciona001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_ExtratoItemRelaciona001 = class(TFrm_Bas_TelaPadrao)
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
    edt_cod_itemservicoInicial: TDCChoiceEdit;
    edt_descricao_itc: TDCEdit;
    Panel8: TPanel;
    edt_cod_itemservicofinal: TDCChoiceEdit;
    edt_descricao_itcFinal: TDCEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure edt_cod_itemservicoInicialExit(Sender: TObject);
    procedure edt_cod_itemservicoInicialButtonClick(Sender: TObject);
    procedure edt_cod_itemservicofinalButtonClick(Sender: TObject);
    procedure edt_cod_itemservicofinalExit(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_ExtratoItemRelaciona001: TFrm_Rel_ExtratoItemRelaciona001;

implementation
uses Imp_Med_ExtratoItem001, Imp_Med_ExtratoConven002, Fun_Medico, Imp_Med_ExtratoItemRelaciona001, 
Fun_ConsCadastro, Constantes, Fun_Data, Imp_Med_ExtratoConven003, Fun_Obj, DLG_mensagem,
  dtm_principal2 ;

{$R *.DFM}

procedure TFrm_Rel_ExtratoItemRelaciona001.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Extrato de Conveniados por Item de Serviço' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

procedure TFrm_Rel_ExtratoItemRelaciona001.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Rel_ExtratoItemRelaciona001.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
end;

procedure TFrm_Rel_ExtratoItemRelaciona001.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Rel_ExtratoItemRelaciona001.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_itemservicoInicial.name, 'Código do Item de Serviço deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_itemservicoFinal.name, 'Código do Item de Serviço Relacionado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_cod_conveniado.name, 'Código do Conveniado deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_mes.name, 'Mes de Referência Final deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano2.name, 'Ano de Referencia Final deve ser Preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_ExtratoItemRelaciona001.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal2.spc_cons_med_extratoitemrelaciona001 do
  begin
    close;
    if edt_cod_conveniado.text = '' then
      ParamByName('@cod_conveniado').AsString := ''
    else
      ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    ParamByName('@cod_itemservicoInicial').AsString := edt_cod_itemservicoInicial.text ;
    ParamByName('@cod_itemservicoFinal').AsString := edt_cod_itemservicofinal.text ;
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
  Frm_Imp_Med_ExtratoItemRelaciona001 := TFrm_Imp_Med_ExtratoItemRelaciona001.Create(Self);
  Frm_Imp_Med_ExtratoItemRelaciona001.FPeriodoInicial := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_Med_ExtratoItemRelaciona001.FPeriodoFinal := cb2_cod_mes.text+'/'+edt_ano2.text;
//  Frm_Imp_Med_ExtratoItemRelaciona001.FDataInicial := edt_dtinicial.text;
//  Frm_Imp_Med_ExtratoItemRelaciona001.FDataFinal := edt_dtfinal.text;
  Frm_Imp_Med_ExtratoItemRelaciona001.QuickRep1.Preview;
  Frm_Imp_Med_ExtratoItemRelaciona001.Release;
  Fdt_principal2.spc_cons_med_extratoitemrelaciona001.close;
end;

procedure TFrm_Rel_ExtratoItemRelaciona001.edt_cod_itemservicoInicialExit(Sender: TObject);
begin
  inherited;
  edt_descricao_itc.text := Get_DescricaoServico(edt_cod_itemservicoInicial.text);
end;

procedure TFrm_Rel_ExtratoItemRelaciona001.edt_cod_itemservicoInicialButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservicoInicial',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservicoInicial')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento',
  'Localizar Itens de Serviços', '', true));
  edt_cod_itemservicoInicialExit(self);
end;

procedure TFrm_Rel_ExtratoItemRelaciona001.edt_cod_itemservicofinalButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservicofinal',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservicofinal')),
  'cod_itemservico, cod_padrao, nome_its', 'Cod. ItemServiço, Cod. Padrao, Descrição do Item de Serviço/Procedimento',
  'Localizar Itens de Serviços', '', true));
  edt_cod_itemservicofinalExit(self);
end;

procedure TFrm_Rel_ExtratoItemRelaciona001.edt_cod_itemservicofinalExit(
  Sender: TObject);
begin
  inherited;
  edt_descricao_itcFinal.text := Get_DescricaoServico(edt_cod_itemservicoFinal.text);
end;

end.

