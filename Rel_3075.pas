unit Rel_3075;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3075 = class(TFrm_Bas_TelaPadrao)
    Btn_LimpaCampos: TPDJButton;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;                                                                                                              
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel7: TPanel;
    Panel1: TPanel;
    rdb_oficio1: TRadioButton;
    rdb_oficio2: TRadioButton;
    rdb_oficio3: TRadioButton;
    dbg_itemservico: TDBGrid;
    DataSource2: TDataSource;
    PDJButton3: TPDJButton;
    btn_localizar: TSpeedButton;
    edt_dtoficioIni: TDCDateEdit;
    edt_dtoficioFin: TDCDateEdit;
    rdb_todos: TRadioButton;
    procedure PDJButton3Click(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure rdb_oficio3Click(Sender: TObject);
    procedure rdb_oficio2Click(Sender: TObject);
    procedure rdb_oficio1Click(Sender: TObject);
    procedure rdb_todosClick(Sender: TObject);
  private
    { Private declarations }
  FPesquisaSQLDefalt, Fdescricao_pla, FEndereco, FBairro, FCep : string;
  FOficio : integer;
  function CriticaParametros : Boolean ;
  public
    { Public declarations }
    CodRequerimento, DtProtocolo, FInscricao : string;
  end;

var
  Frm_Rel_3075: TFrm_Rel_3075;

implementation
uses DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_obj, Fun_Data, Imp_4137,
Bas_Impressao, dtm_principal6, Fun_ConsCadastro, Fun_Beneficiario;

{$R *.DFM}

function TFrm_Rel_3075.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_dtoficioIni.name, 'A Data do Ofício Inicial deve ser preenchida!', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtoficioFin.name, ' A Data do Ofício Final deve ser Preenchida!', VLD_DataPreenchida));
end;

procedure TFrm_Rel_3075.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if edt_inscricao_ben.Text = '' then
  begin
    Dlg_Alerta('A Inscrição deve ser Preenchida!',self);
    Exit;
  end;
  with fdt_principal6.spc_cons_adm_histOficioDesconto do
  begin
  Frm_Bas_Impressao.FCampo1 := Tab.fieldByName('nome_ben').AsString;
  Frm_Bas_Impressao.FCampo2 := Tab.fieldByName('endereco_ben').AsString;
  Frm_Bas_Impressao.FCampo3 := FBairro+'        CEP: '+FCep;
  Frm_Bas_Impressao.FCampo4 := 'São Bernardo do Campo, '+Data_Format('dd',Date)+' de '+Data_GetMonthName(StrToInt(Data_Format('mm',Date)))+' de '+Data_Format('yyyy',Date);
  Frm_Bas_Impressao.FCampo5 := 'MARILENE MATHEUZ';
  end;
  if rdb_oficio1.Checked then
    Frm_Bas_Impressao.showReport(4173);
  if rdb_oficio2.Checked then
    Frm_Bas_Impressao.showReport(4174);
  if rdb_oficio3.Checked then
    Frm_Bas_Impressao.showReport(4175);
end;

procedure TFrm_Rel_3075.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  Fdescricao_pla := '';
  FormShow(self);
end;

procedure TFrm_Rel_3075.edt_inscricao_benButtonClick(Sender: TObject);
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
    DB_OpenSQL('select nome_ben, cod_empresa, b.cod_plano, inscricao_ben, titulacartei_ben,'+
    ' digito_ben, descricao_pla, endereco_ben, bairro_ben, cep_ben'+
    ' from tbl_beneficiario b, tbl_plano p where b.cod_plano = p.cod_plano and b.cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    Fdescricao_pla := Tab.FieldByNAme('descricao_pla').AsString;
    FEndereco := Tab.FieldByName('endereco_ben').AsString;
    FBairro := Tab.FieldByname('bairro_ben').AsString;
    FCep := Tab.FieldByName('cep_ben').AsString;
  end;
end;

procedure TFrm_Rel_3075.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3075.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_planopagto','nome_plp');
  fdt_principal6.spc_cons_adm_histOficioDesconto.close;
end;

procedure TFrm_Rel_3075.btn_localizarClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    exit;
  with fdt_principal6.spc_cons_adm_histOficioDesconto do
  begin
    close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
        if rdb_todos.Checked then
      FOficio := 0;
    if rdb_oficio1.Checked then
      FOficio := 1;
    if rdb_oficio2.Checked then
      FOficio := 2;
          if rdb_oficio3.Checked then
      FOficio := 3;
    ParamByName('@oficio').AsInteger:= FOficio;
    ParamByName('@dtoficioIni').AsString := Data_Format('mm/dd/yyyy',edt_dtoficioIni.date);
    ParamByName('@dtoficioFin').AsString := Data_Format('mm/dd/yyyy',edt_dtoficioFin.date);
    ParamByName('@order').AsInteger:= 0;
    open;
  end;
end;

procedure TFrm_Rel_3075.rdb_oficio3Click(Sender: TObject);
begin
  inherited;
  FOficio := 3;
end;

procedure TFrm_Rel_3075.rdb_oficio2Click(Sender: TObject);
begin
  inherited;
  FOficio := 2;
end;

procedure TFrm_Rel_3075.rdb_oficio1Click(Sender: TObject);
begin
  inherited;
  FOficio := 1;
end;

procedure TFrm_Rel_3075.rdb_todosClick(Sender: TObject);
begin
  inherited;
  FOficio := 0;
end;

end.



