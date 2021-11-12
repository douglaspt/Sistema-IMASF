unit Rel_3063;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3063 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    edt_dtprotocolo_rem: TDCDateEdit;
    edt_cod_Requerimento2: TDCEdit;
    PDJButton3: TPDJButton;
    Panel5: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_nome: TDCEdit;
    Panel6: TPanel;
    edt_dtprotocoloIni: TDCDateEdit;
    edt_dtprotocoloFin: TDCDateEdit;
    PDJButton1: TPDJButton;
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  FPesquisaSQLDefalt : string;
  function CriticaParametros : Boolean ;
  public
    { Public declarations }
    CodRequerimento, DtProtocolo, FInscricao, wCod_Beneficiario : string;
  end;

var
  Frm_Rel_3063: TFrm_Rel_3063;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
Fun_obj, Fun_ConsCadastro, dtm_principal4, Imp_4107, Fun_Data, Imp_4114,
Bas_Impressao ;

{$R *.DFM}

function TFrm_Rel_3063.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_Requerimento2.name, 'O Código do Requerimento deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtprotocolo_rem.Name, 'A Data do Protocolo deve ser Preenchida !', VLD_DataPreenchida ));
end;

procedure TFrm_Rel_3063.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
  Exit;
  with fdt_principal4.spc_cons_adm_extratoreembolso do
  begin
    close;
    ParamByName('@cod_Requerimento').AsString := edt_cod_Requerimento2.Text ;
    ParamByName('@dtprotocolo_rem').AsString := Data_Format('mm/dd/yyyy',edt_dtprotocolo_rem.Date);
    ParamByName('@inscricao_ben').AsString := '';
    ParamByName('@dtentradaIni').AsString := '';
    ParamByName('@dtentradaFin').AsString := '';
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4114 := TFrm_Imp_4114.Create(Self);
  //Frm_Imp_4114.Carteira := edt_carteira.text;

  Frm_Imp_4114.QuickRep1.Preview;
  Frm_Imp_4114.Release;
  fdt_principal4.spc_cons_adm_extratoreembolso.close;
end;

procedure TFrm_Rel_3063.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A Inscrição deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_dtprotocoloIni.name, 'O Periodo Inicial deve ser Preenchido !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtprotocoloFin.name, 'O Periodo Final deve ser Preenchido !', VLD_DataPreenchida )) then
    exit;
  with fdt_principal4.spc_cons_adm_extratoreembolso do
  begin
    close;
    ParamByName('@cod_Requerimento').AsString := '0' ;
    ParamByName('@dtprotocolo_rem').AsString := '';
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.Text;
    ParamByName('@dtentradaIni').AsString := Data_Format('mm/dd/yyyy',edt_dtprotocoloIni.Date);
    ParamByName('@dtentradaFin').AsString := Data_Format('mm/dd/yyyy',edt_dtprotocoloFin.Date);
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;                                  
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_extratoreembolso;
  Frm_Bas_Impressao.FCampo1 := edt_dtprotocoloIni.Text;
  Frm_Bas_Impressao.FCampo2 := edt_dtprotocoloFin.text;
  Frm_Bas_Impressao.showReport(4149);
  fdt_principal4.spc_cons_adm_extratoreembolso.close;
end;

procedure TFrm_Rel_3063.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if wCod_Beneficiario <> '' then begin
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.cod_beneficiario = '+wCod_Beneficiario;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end
  else begin
    if edt_inscricao_ben.text = '' then
      FPesquisaSQL  := FPesquisaSQLDefalt
    else
      FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
    edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  end;
  if edt_cod_beneficiario.text = '' then begin
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  end;
end;

procedure TFrm_Rel_3063.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3063.FormShow(Sender: TObject);
begin
  inherited;
  if CodRequerimento <> '' then begin
    edt_cod_Requerimento2.Text := CodRequerimento;
  end;
  if DtProtocolo <> '' then
    edt_dtprotocolo_rem.text := DtProtocolo;
  if FInscricao <> '' then begin
    edt_inscricao_ben.Text := FInscricao;
    edt_inscricao_benButtonClick(self);
  end;
end;

end.



