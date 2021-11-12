unit Mov_2033;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_2033 = class(TFrm_Bas_TelaPadrao)
    btn_excluir: TPDJButton;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel1: TPanel;
    dbg_uti: TDBGrid;
    DataSource1: TDataSource;
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_excluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
  public
    { Public declarations }
  end;

var
  Frm_Mov_2033: TFrm_Mov_2033;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
  dtm_principal4, Fun_Obj, dtm_principal5, Fun_ConsCadastro, Fun_Data ;

{$R *.DFM}

procedure TFrm_Mov_2033.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2033.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben'+
    ' from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    with fdt_principal5.spc_cons_adm_histOcorrenciaEdital do
    begin
      close;
      ParamByName('@dtOcorrenciaInicial').AsString := '';
      ParamByName('@dtOcorrenciaFinal').AsString := '';
      ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
      open;
    end;
  end;  
end;

procedure TFrm_Mov_2033.btn_excluirClick(Sender: TObject);
begin
  inherited;
  if edt_cod_beneficiario.Text = '' then Begin
    Dlg_Alerta('� necess�rio selecionar um Benefici�rio!',self);
    Exit;
  end;
  if fdt_principal5.spc_cons_adm_histOcorrenciaEdital.RecordCount = 0 then begin
   Dlg_Alerta('� necess�rio selecionar uma Ocorr�ncia!',self);
   Exit;
  end;
  if Dlg_YesNo('Tem Certeza que deseja Excluir a Ocorr�ncia!',self) then begin
    DB_ExecSQL('delete from tbl_histOcorrenciaEdital where cod_beneficiario = '+
    edt_cod_beneficiario.Text+' and cod_ocorrenciaEdital = '+
    fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldByName('cod_ocorrenciaEdital').AsString+' and dtOcorrencia_hoe = '''+
    Data_Format('mm/dd/yyyy',fdt_principal5.spc_cons_adm_histOcorrenciaEdital.fieldByName('dtOcorrencia_hoe').AsDateTime)+'''');
    fdt_principal5.spc_cons_adm_histOcorrenciaEdital.close;
    fdt_principal5.spc_cons_adm_histOcorrenciaEdital.Open;
  end;
end;

procedure TFrm_Mov_2033.FormShow(Sender: TObject);
begin
  inherited;
  btn_excluir.Enabled:= True;
  DB_OpenSQL('select cod_usuario, cod_telasistema, incluir_acs+alterar_acs+excluir_acs as soma from tbl_acesso where cod_telasistema = '+ Copy(lbl_codTela.Caption,13,4) + ' and cod_usuario = ' + IntToStr(FCod_Usuario));
  if Tab.fieldbyname('soma').AsString = '0' then
     btn_excluir.Enabled:= False;
  edt_inscricao_ben.SetFocus;
end;

procedure TFrm_Mov_2033.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal5.spc_cons_adm_histOcorrenciaEdital.close;
end;

end.



