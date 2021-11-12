unit Mov_2041;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList;

type
  TFrm_Mov_2041 = class(TFrm_Bas_TelaPadrao)
    Panel1: TPanel;
    PDJButton1: TPDJButton;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    cbx_cod_tipocoberturaodonto: TDCComboBox;
    edt_dtadesaoodonto_ben: TDCDateEdit;
    pnl_alerta: TPanel;
    Panel5: TPanel;
    dbg_uti: TDBGrid;
    Panel6: TPanel;
    cb2_cod_tipocoberturaodonto: TDCComboBox;
    ed2_dtadesaoodonto_ben: TDCDateEdit;
    DataSource1: TDataSource;
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    wInscricao, wCod_Beneficiario, FTit : String;
  end;

var
  Frm_Mov_2041: TFrm_Mov_2041;

Const
  FPesquisaSQLDefalt = 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, p.nome_pla, tco.descricao_tco, b.processo_ben, s.nome_sit, d.nome_tdp, m.matriculaprinc_seg '+
  ' from tbl_beneficiario b, tbl_sitbeneficiario s, tbl_beneficiario a, tbl_segurado m, tbl_plano p, tbl_tipodependente d, tbl_tipocoberturaodonto tco '+
  ' where b.cod_sitbeneficiario = s.cod_sitbeneficiario and a.cod_beneficiario = m.cod_beneficiario '+
  ' and b.inscricao_ben = a.inscricao_ben and b.cod_plano = p.cod_plano and b.cod_tipodependente = d.cod_tipodependente'+
  ' and b.cod_tipocoberturaodonto = tco.cod_tipocoberturaodonto ';

implementation

uses Fun_Obj, Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes, Fun_Str,
  dtm_principal6, Bas_Impressao, Dlg_Mensagem, Mov_2037, Fun_Beneficiario, Fun_Data, Dtm_principal5;
{$R *.DFM}



procedure TFrm_Mov_2041.edt_inscricao_benButtonClick(Sender: TObject);
var
  sit : string;
begin
  inherited;
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
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben, '+
    'cod_tipocoberturaodonto, dtadesaoodonto_ben, cod_sitbeneficiario from tbl_beneficiario where cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    Obj_SetFormObjValueByName(self,'cbx_cod_tipocoberturaodonto',Tab.FieldByNAme('cod_tipocoberturaodonto').AsInteger);
    edt_dtadesaoodonto_ben.Text := Tab.FieldByNAme('dtadesaoodonto_ben').AsString;
    sit := Tab.FieldByName('cod_sitbeneficiario').AsString;
    FTit := Tab.FieldByName('titulacartei_ben').AsString;
    with fdt_principal5.spc_cons_adm_histplanoOdonto do
    begin
      close;
      ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
      Open;
    end;
  end;
  if sit <> '' then begin
    DB_OpenSql('select nome_sit, tipo_sit from tbl_sitbeneficiario where cod_sitbeneficiario = '+sit);
    pnl_alerta.Caption := '*** Situação : '+Tab.FieldByName('nome_sit').AsString+'  ***';
    case Tab.FieldByName('tipo_sit').AsInteger of
      1 : pnl_alerta.color := clYellow;
      2 : pnl_alerta.color := clRed;
    end;
    pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
    DB_ClearSQL;
  end;
  cb2_cod_tipocoberturaodonto.SetFocus;
end;

procedure TFrm_Mov_2041.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2041.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_tipocoberturaodonto','descricao_tco');
  BAS_CarregarCombo('cb2_cod_tipocoberturaodonto','descricao_tco');
end;

procedure TFrm_Mov_2041.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A Inscrição deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome.name, 'É necessário preencher um segurado Valido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_tipocoberturaodonto.name, 'O Tipo de Cobertura Odontologico deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(ed2_dtadesaoodonto_ben.name, 'A data de Adesão Odontologico deve ser preenchido !', VLD_DataPreenchida )) then
    Exit;
  if DB_ExecSQL('update tbl_beneficiario set cod_tipocoberturaodonto = '+cb2_cod_tipocoberturaodonto.valueItem+
  ' ,  dtadesaoodonto_ben = '''+Data_Format('mm/dd/yyyy',ed2_dtadesaoodonto_ben.date)+''' where cod_beneficiario = '+
  edt_cod_beneficiario.Text) then
  begin
    DB_ExecSQL('insert into tbl_histplanoOdonto values('+edt_cod_beneficiario.Text+','+cbx_cod_tipocoberturaodonto.valueItem+
    ', '''+Data_Format('mm/dd/yyyy',edt_dtadesaoodonto_ben.date)+''','''+Data_Format('mm/dd/yyyy',ed2_dtadesaoodonto_ben.date)+''', getdate())');
    Ben_GeraHistorico(IntToStr(FCod_Usuario), IntToStr(Fcod_TelaSistema), '', '1' , edt_cod_beneficiario.text);
    Dlg_Ok('Dados Atualizados com Sucesso',self);
    Obj_EmptyEdit(self);
    FormShow(self);
    fdt_principal5.spc_cons_adm_histplanoOdonto.Close;
    edt_inscricao_ben.SetFocus;
  end
  else begin
    Dlg_Alerta('Não foi Possível Atualizar os Dados!',self);
  end;
end;

procedure TFrm_Mov_2041.FormDestroy(Sender: TObject);
begin
  inherited;
  fdt_principal5.spc_cons_adm_histplanoOdonto.Close;
end;

end.



