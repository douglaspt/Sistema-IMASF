unit Mov_2025;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BComboBox;

type
  TFrm_Mov_2025 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    edt_cod_Requerimento: TDCChoiceEdit;
    btn_requerimento: TPDJButton;
    edt_dtprotocolo_rem: TDCDateEdit;
    edt_cod_Requerimento2: TDCEdit;
    pnl_favorecido: TPanel;
    cbx_cod_beneficiario: TBComboBox;
    edt_cod_beneficiario: TEdit;
    procedure edt_cod_RequerimentoButtonClick(Sender: TObject);
    procedure edt_cod_RequerimentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_requerimentoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_incluiccClick(Sender: TObject);
    procedure cbx_cod_beneficiarioChange(Sender: TObject);
  private
    { Private declarations }
  FPesquisaSQLDefalt : string;
  function CriticaParametros : Boolean ;
  public
    { Public declarations }
    CodRequerimento, DtProtocolo, FInscricao, CodBeneficiario, CodFavorecido : string;
  end;

var
  Frm_Mov_2025: TFrm_Mov_2025;
  WFlagVolta, WCPFTIT: String;
  TitReq, TitFav, Idade : Integer;

implementation

uses dtm_principal, dtm_principal4, Fun_obj, Fun_ConsCadastro, Constantes, Fun_Data,
  DLG_Mensagem, Imp_4107, Fun_DB, Fun_Acesso, Mov_2070;

{$R *.DFM}

procedure TFrm_Mov_2025.edt_cod_RequerimentoButtonClick(Sender: TObject);
begin
  inherited;
  FTitPesquisa  := 'Localizar Requerimentos' ;
  FPesquisaTit := 'Cod. Requerimento, Dt. Protocolo, Carteirinha, Nome do Beneficiário';
  if edt_cod_Requerimento.Text = '' then
    FPesquisaSQL := 'select r.cod_Requerimento, r.dtprotocolo_rem, carteirainform_ctm, nomebenefi_ctm from tbl_reembolsomedico r, tbl_contamedica c '+
    ' where r.cod_conveniado = c.cod_conveniado and r.dtreferencia_cta = c.dtreferencia_cta '+
    ' and r.sequencia_cta = c.sequencia_cta and r.sequenciaconta_ctm = c.sequenciaconta_ctm and r.cod_Requerimento is not null '
  else
    FPesquisaSQL := 'select r.cod_Requerimento, r.dtprotocolo_rem, carteirainform_ctm, nomebenefi_ctm from tbl_reembolsomedico r, tbl_contamedica c '+
    ' where r.cod_conveniado = c.cod_conveniado and r.dtreferencia_cta = c.dtreferencia_cta '+
    ' and r.sequencia_cta = c.sequencia_cta and r.sequenciaconta_ctm = c.sequenciaconta_ctm and r.cod_Requerimento is not null and cod_Requerimento = '+edt_cod_Requerimento.Text+
    ' group by r.cod_Requerimento, r.dtprotocolo_rem, carteirainform_ctm, nomebenefi_ctm ';
  Obj_SetFormObjValueByName(Self, 'edt_cod_Requerimento',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('',8,length('')), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true));
end;

function TFrm_Mov_2025.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_Requerimento2.name, 'O Código do Requerimento deve ser Preenchido !', VLD_Preenchido )) or
            (not BAS_ValidarCampo(cbx_cod_beneficiario.name, 'O Favorecido deve ser Preenchido!', VLD_Preenchido ));
end;

procedure TFrm_Mov_2025.edt_cod_RequerimentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_cod_RequerimentoButtonClick(self);
end;

procedure TFrm_Mov_2025.btn_requerimentoClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  CodFavorecido:= cbx_cod_beneficiario.getStrItemValue;
  btn_incluiccClick(Self);
  if WFlagVolta = '1' then
     Exit;
  with fdt_principal4.spc_cons_adm_requerimento do
  begin
    close;
    ParamByName('@cod_Requerimento').AsString := edt_cod_Requerimento2.Text ;
    ParamByName('@dtprotocolo_rem').AsString := Data_Format('mm/dd/yyyy',edt_dtprotocolo_rem.Date);
    if CodBeneficiario <> '' then
       ParamByName('@cod_beneficiario').AsString := CodFavorecido //cbx_cod_beneficiario.getStrItemValue
    else
       ParamByName('@cod_beneficiario').AsString := '0';
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
    {if FieldByName('vlpagar_itc').AsFloat > FieldByName('vlinformado_itc').AsFloat then
    begin
      Dlg_Alerta('O Valor a Pagar é maior que o Valor Informado!',self);
      Exit;
    end;}
  end;
  Frm_Imp_4107 := TFrm_Imp_4107.Create(Self);
  DB_OpenSQL('select resolucaoReembolso from tbl_parametro');
  Frm_Imp_4107.FResolucao := Tab.fieldByName('resolucaoReembolso').AsString;
  Frm_Imp_4107.FDotacao := '29.292.3390.93.00.10.302.0036.2051.04';
  Frm_Imp_4107.FNomeusuario := FNome_Usu;
  Frm_Imp_4107.FCargoUsuario := FCargoUsuario;
  Frm_Imp_4107.QuickRep1.Preview;
  Frm_Imp_4107.Release;
  fdt_principal4.spc_cons_adm_requerimento.close;
  cbx_cod_beneficiario.ItemIndex:= -1;
end;

procedure TFrm_Mov_2025.FormShow(Sender: TObject);
begin
  inherited;
  if CodRequerimento <> '' then begin
    edt_cod_Requerimento2.Text := CodRequerimento;
    //edt_cod_RequerimentoButtonClick(self);
  end;
  if DtProtocolo <> '' then
    edt_dtprotocolo_rem.text := DtProtocolo;
  if FInscricao <> '' then
  begin
    Obj_LoadCombo(Self, 'cbx_cod_beneficiario', 'nome_ben + '' - CPF '' + cpf_ben', 'cod_beneficiario', 'tbl_beneficiario'+
    ' where inscricao_ben = ' + FInscricao + ' order by titulacartei_ben');
    DB_OpenSQL('select cpf_ben from tbl_beneficiario where titulacartei_ben = 0 and inscricao_ben = ' + FInscricao);
    WCPFTIT:= Tab.FieldByName('cpf_ben').AsString;
  end;
  cbx_cod_beneficiario.ItemIndex := 0;
{  pnl_favorecido.Visible:= True;
  if CodFavorecido <> '' then
     begin
     pnl_favorecido.Visible:= False;
     Obj_SetFormObjValueByName(self, cbx_cod_beneficiario.Name, CodFavorecido);
     Exit;
     end;}
  cbx_cod_beneficiario.SetFocus;
end;

procedure TFrm_Mov_2025.btn_incluiccClick(Sender: TObject);
begin
  inherited;
  Hide;
  WFlagVolta:= '';
  Frm_Mov_2070:= TFrm_Mov_2070.Create(Self);
  Frm_Mov_2070.wCod_Beneficiario:= CodBeneficiario;
  Frm_Mov_2070.wCod_Favorecido:= CodFavorecido;
  Frm_Mov_2070.WProcesso:= StrToInt(edt_cod_Requerimento2.Text);
  Frm_Mov_2070.WDtProtocolo:= StrToDate(edt_dtprotocolo_rem.Text);
  Frm_Mov_2070.WtitReq:= TitReq;
  Frm_Mov_2070.WIdade:= Idade;
  Frm_Mov_2070.WCPFTIT:= WCPFTIT;
  Frm_Mov_2070.ShowModal;
  Frm_Mov_2070.Release;
  WFlagVolta:= Frm_Mov_2070.WFlagVolta;
  if Frm_Mov_2070.wCod_Beneficiario = '' then
     WFlagVolta:= '1';
  Show;
end;

procedure TFrm_Mov_2025.cbx_cod_beneficiarioChange(Sender: TObject);
begin
  inherited;
  wCod_Beneficiario:= cbx_cod_beneficiario.getStrItemValue;
end;

end.



