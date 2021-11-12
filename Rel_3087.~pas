unit Rel_3087;

interface

uses
  Windows, Messages, Bas_TelaPadrao, DCChoice, StdCtrls, ExtCtrls, ComCtrls,
  PDJButton, jpeg, Controls, Classes, Dialogs, SysUtils, Graphics, Forms,
  DB, Grids, DBGrids, Buttons, Mask, DBCtrls, QRExport, ShellApi, ComObj;

type
  TFrm_Rel_3087 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    btn_inscritos: TPDJButton;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Btn_LimpaCampos: TPDJButton;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    Button1: TButton;
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btn_inscritosClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;

  public
    { Public declarations }

  end;

var
  Frm_Rel_3087: TFrm_Rel_3087;
  str_arquiventrad, s, Algo: String;
  byt_nameofthfile : TextFile;

implementation

uses Fun_ConsCadastro, Constantes, Fun_DB, Dlg_Mensagem, Fun_obj,
     dtm_principal3, Bas_Impressao, dtm_principal2, dtm_principal,
  dtm_principal4, Fun_Data, Fun_Beneficiario, Fun_Str;

{$R *.DFM}

procedure TFrm_Rel_3087.edt_cod_beneficiarioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
  function Get_Cod_beneficiario(inscricao:string): string;
  begin
    if inscricao = '' then begin
      result := '' ;
      exit;
    end;
    DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+
    inscricao);
    result := Tab.Fields[0].AsString;
    if result = '' then
      Dlg_Alerta('Inscrição não encontrada !', self);
  end;
  var
    insc : string ;
begin


end;

procedure TFrm_Rel_3087.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
end;

procedure TFrm_Rel_3087.btn_inscritosClick(Sender: TObject);
begin
  inherited;
//cbx_cod_empresafolha.ItemIndex:= -1;
 // if (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O Local de Desconto deve ser Preenchido!', VLD_Preenchido )) then
 //   Exit;

  with fdt_principal4.spc_cons_adm_termoOpcao do
  begin
    close;
    if cbx_cod_empresafolha.Text = '' then
      ParamByName('@cod_empresafolha').AsString:= '0'
    else
      ParamByName('@cod_empresafolha').AsString:= cbx_cod_empresafolha.ValueItem;
    ParamByName('@inscricao_ben').AsString:= edt_inscricao_ben.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal4.spc_cons_adm_termoOpcao;
  if (cbx_cod_empresafolha.ValueItem <> 99) then
    Frm_Bas_Impressao.showReport(4260)
  else
    Frm_Bas_Impressao.showReport(4261);
  fdt_principal4.spc_cons_adm_termoOpcao.close;
end;


procedure TFrm_Rel_3087.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
//  'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
//  'from tbl_beneficiario b, tbl_sitbeneficiario s '+
//  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario ';
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, b.cod_plano, inscricao_ben, titulacartei_ben, '+
    ' digito_ben, nome_pla, bn.cod_planoPagto, nome_plp'+
    ' from tbl_beneficiario b inner join tbl_plano p on b.cod_plano = p.cod_plano'+
    ' left join tbl_beneficiarioPlanoPagtoEspecial bn on b.cod_beneficiario = bn.cod_beneficiario'+
    ' left join tbl_planoPagto pp on bn.cod_planoPagto = pp.cod_planoPagto'+
    ' where b.cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
  end;
end;

procedure TFrm_Rel_3087.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3087.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;

procedure TFrm_Rel_3087.PDJButton1Click(Sender: TObject);
begin
  inherited;
  Frm_Bas_Impressao.showReport(4262);
end;

procedure TFrm_Rel_3087.PDJButton2Click(Sender: TObject);
begin
  inherited;
  Frm_Bas_Impressao.showReport(4263);
end;

procedure TFrm_Rel_3087.Button1Click(Sender: TObject);
var
 Inscricao, idOld : integer;
begin
  inherited;
  Inscricao := 48810;
  DB_OpenSQL('select id, NOMECOMPLETO, CATEGORIA, inscricaoNew'+
  ' from tmp_termoFinal t where tipoMov = ''INCLUIDO'''+
  ' and inscricaoImasf = 0 and id <> 191 order by id, CATEGORIA desc');
  idOld := Tab.fieldByName('id').AsInteger;
  while not Tab.EOF do
  begin
    if idOld <> Tab.fieldByName('id').AsInteger then
      Inscricao := Inscricao + 1;
    DB_ExecADOSQL('update tmp_termoFinal set inscricaoNew = '+inttostr(Inscricao)+
    ' where id = '+Tab.fieldByName('id').AsString);
    idOld := Tab.fieldByName('id').AsInteger;
    Tab.Next;
  end;

end;

end.



