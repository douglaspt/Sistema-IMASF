unit Rel_3043;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3043 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;
    edt_cod_conveniado: TDCChoiceEdit;
    edt_razao_con: TDCEdit;
    PDJButton4: TPDJButton;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_conveniadoButtonClick(Sender: TObject);
    procedure edt_cod_conveniadoExit(Sender: TObject);
    procedure PDJButton4Clic(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure edt_cod_conveniadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    dtrefe, conven : string ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations}

  end;

var
  Frm_Rel_3043: TFrm_Rel_3043;

implementation
uses Imp_Med_ResumoConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Med_ContaGlosa, Imp_Med_Repasse_Autoriz, dtm_principal3, Imp_4071, Imp_4072,
Imp_4073, Dlg_Mensagem   ;

{$R *.DFM}

procedure TFrm_Rel_3043.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Relat�rio de Conveniados' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'C�digo, Nome do Conveniado, Raz�o Social' ;
  inherited;
end;

procedure TFrm_Rel_3043.edt_cod_conveniadoButtonClick(Sender: TObject);
begin
  inherited;
  edt_cod_conveniado.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;


procedure TFrm_Rel_3043.edt_cod_conveniadoExit(Sender: TObject);
begin
  inherited;
  if edt_cod_conveniado.text <> '' then
    edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));
end;

function TFrm_Rel_3043.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_cod_conveniado.name, 'C�digo do Conveiado deve ser Preenchido !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_3043.PDJButton4Clic(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal3.spc_cons_adm_conveniado do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    open;
  end;
  Frm_Imp_4071 := TFrm_Imp_4071.Create(Self);
  Frm_Imp_4071.QuickRep1.Preview;
  Frm_Imp_4071.Release;
  Fdt_principal3.spc_cons_adm_conveniado.close;
end;

procedure TFrm_Rel_3043.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with Fdt_principal3.spc_cons_med_especialidadesplanos do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    open;
  end;
  with Fdt_principal3.spc_cons_med_conveniadoplano do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    open;
  end;
  Frm_Imp_4072 := TFrm_Imp_4072.Create(Self);
  Frm_Imp_4072.QuickRep1.Preview;
  Frm_Imp_4072.Release;
  Fdt_principal3.spc_cons_med_especialidadesplanos.close;
  Fdt_principal3.spc_cons_med_conveniadoplano.close;
end;

procedure TFrm_Rel_3043.PDJButton2Click(Sender: TObject);
begin
  inherited;
    if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_adm_corpoclinico do
  begin
    close;
    ParamByName('@cod_conveniado').AsString := IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1)));
    open;
  end;
  Frm_Imp_4073 := TFrm_Imp_4073.Create(Self);
  Frm_Imp_4073.QuickRep1.Preview;
  Frm_Imp_4073.Release;
  fdt_principal3.spc_cons_adm_corpoclinico.close;

end;

procedure TFrm_Rel_3043.edt_cod_conveniadoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then 
    if edt_cod_conveniado.text <> '' then
      edt_razao_con.text := Get_NomeConveniado(IntToStr(StrToInt(copy(edt_cod_conveniado.text,1,5)+copy(edt_cod_conveniado.text,7,1))));

end;

end.



