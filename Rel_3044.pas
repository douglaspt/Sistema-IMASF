unit Rel_3044;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3044 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel14: TPanel;
    rdb_abulatorial: TRadioButton;
    rdb_internacao: TRadioButton;
    rdb_todos: TRadioButton;
    Panel7: TPanel;
    edt_cod_itemservico: TDCChoiceEdit;
    edt_nome_its: TDCEdit;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure edt_cod_itemservicoButtonClick(Sender: TObject);
    procedure edt_cod_itemservicoExit(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  FPeriodoInicial, FPeriodoFinal, CodItemServ, CodConv, NomeConv, NomeITS  : String ;
  end;

var
  Frm_Rel_3044: TFrm_Rel_3044;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Imp_4056, Fun_Data, dtm_principal3, Imp_4059, Dlg_Mensagem, Imp_4076, Fun_Obj,
  Fun_Str ;

{$R *.DFM}

procedure TFrm_Rel_3044.FormCreate(Sender: TObject);
begin
 // FTitulo       := 'Relatório de Total de Materiais por Procedimento Principal' ;
 // FEditChave    := 'edt_cod_itemservico' ;
//  FTitPesquisa  := 'Localizar Total de Materiais por Procedimento Principal' ;
//  FPesquisa     := 'edt_cod_itemservico, cod_conveniado, edt_dtinicial, edt_dtfinal' ;
//  FPesquisaTit  := 'Cod. ItemServ, Cod. Conveniado' ;
  inherited;
end;

function TFrm_Rel_3044.CriticaParametros : Boolean ;
begin
  result :=(not BAS_ValidarCampo(edt_cod_itemservico.name, 'O Código do Item de Serviço deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtinicial.name, 'A Data Inicial deve ser Preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtfinal.name, 'A Data Final deve ser Preenchida !', VLD_DataPreenchida ));

end;


procedure TFrm_Rel_3044.PDJButton3Click(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := STR_RemoveChar(edt_cod_conveniado.text, '-');
  if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_med_tlMaterialProcPrincipal do
  begin
    close;
    ParamByName('@cod_itemservico').AsString := edt_cod_itemservico.text ;
    ParamByName('@cod_conveniado').AsString := edt_cod_conveniado.text ;
    ParamByName('@dtreferenciaInicial_cta').AsString := Data_Format('mm/dd/yyyy',edt_dtinicial.Date) ;
    ParamByName('@dtreferenciaFinal_cta').AsString := Data_Format('mm/dd/yyyy',edt_dtfinal.Date) ;
     if rdb_abulatorial.Checked then
        ParamByName('@cod_acomodacao').AsString := '5' ;
      if rdb_internacao.Checked then
        ParamByName('@cod_acomodacao').AsString := '6' ;
      if rdb_todos.Checked then
        ParamByName('@cod_acomodacao').AsString := '0' ;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4076 := TFrm_Imp_4076.Create(Self);
  Frm_Imp_4076.CodItemServ := edt_cod_itemservico.text;
  Frm_Imp_4076.NomeITS := edt_nome_its.text;
  Frm_Imp_4076.NomeConv := edt_razao_con.text;
  Frm_Imp_4076.CodConv := edt_cod_conveniado.text;
  Frm_Imp_4076.FPeriodoInicial := edt_dtinicial.text;
  Frm_Imp_4076.FPeriodoFinal := edt_dtfinal.text;
  if edt_cod_conveniado.Text = '' then
  Frm_Imp_4076.lbl_cod_conveniado.Enabled := false;
  Frm_Imp_4076.QuickRep1.Preview;
  Frm_Imp_4076.Release;
  fdt_principal3.spc_cons_med_tlMaterialProcPrincipal.close;
end;

procedure TFrm_Rel_3044.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_conveniado',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_conveniado',8,length('edt_cod_conveniado')),
  'cod_conveniado, nome_con, razao_con', 'Cod.Conv, Nome do Conveniado, Razão Social',
  'Localizar Conveniados', '', true));
  edt_cod_conveniadoExit(self);
end;

procedure TFrm_Rel_3044.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

procedure TFrm_Rel_3044.edt_cod_itemservicoButtonClick(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_itemservico',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_itemservico',8,length('edt_cod_itemservico')),
  'cod_itemservico, nome_its', 'Cod.AMB, Descrição',
  'Localizar AMB', '', true));
  edt_cod_itemservicoExit(self);
end;

procedure TFrm_Rel_3044.edt_cod_itemservicoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_itemservico.text <> '' then
     edt_nome_its.text := Get_DescricaoServico(edt_cod_itemservico.text);
end;

end.

