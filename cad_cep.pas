unit Cad_Cep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, StdCtrls, jpeg, Mask, BEdit,
  BComboBox, BEditButton;

type
  TFrm_Cad_Cep = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel8: TPanel;
    Panel7: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    edt_uf_cep: TBEdit;
    edt_cidade_cep: TBEdit;
    edt_tipoLogradouro_cep: TBEdit;
    edt_cod_cep: TEditButton;
    cbx_cod_uf: TBComboBox;
    edt_endereco_cep: TBEdit;
    cbx_cod_cidadeCEP: TBComboBox;
    cbx_cod_tipologradouro: TBComboBox;
    edt_bairro_cep: TBEdit;
    edt_complemento_cep: TBEdit;
    edt_enderecoCompleto_cep: TBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure edt_cod_afiliadoOdontoButtonClick(Sender: TObject);
    procedure edt_cod_afiliadoOdontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cod_afiliadoOdontoKeyPress(Sender: TObject;
      var Key: Char);
    procedure btn_salvarClick(Sender: TObject);
    procedure edt_cod_cepButtonClick(Sender: TObject);
    procedure edt_cod_cepExit(Sender: TObject);
    procedure cbx_cod_ufExit(Sender: TObject);
    procedure edt_endereco_cepExit(Sender: TObject);
    procedure edt_complemento_cepExit(Sender: TObject);
  private
    { Private declarations }
    seq, FPesquisaSQLDefalt : String;
    procedure CarregarCombos;
  public
    { Public declarations }
    wCod_afiliado, WCOD_CEP: String;
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BAS_Salvar(Frm:Tform);                   override ;
  end;

var
  Frm_Cad_Cep: TFrm_Cad_Cep;

implementation

uses Constantes, Fun_Db, Fun_Acesso, Dlg_Mensagem, Fun_Obj, Fun_Str;

{$R *.DFM}

procedure TFrm_Cad_Cep.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Cep';
  FEditChave    := 'edt_cod_cep' ;
  FEditAlteracao:= 'cbx_cod_uf' ;
  FUltFoco      := 'edt_enderecoCompleto_cep' ;
  FTitPesquisa  := 'Localizar Cep' ;
  FPesquisaTit  := 'Cep, UF, Cidade, Bairro, Endereço Completo' ;
//  FPesquisa     := 'cod_cep, uf_cep, cidade_cep, bairro_cep, enderecoCompleto_cep' ;
  FPesquisa     := 'cod_cep, uf_cep, cidade_cep, bairro_cep, enderecoCompleto_cep' ;
//  PesquisaSQLDefalt := 'select cod_cep, uf_cep, cidade_cep, bairro_cep, enderecoCompleto_cep from tbl_cep';
//  FPesquisaSQL := FPesquisaSQLDefalt ;
  FOcultaIndice := true ;
  inherited;
end;

procedure TFrm_Cad_Cep.CarregarCombos;
begin
  inherited ;
  BAS_CarregarCombo('cbx_cod_cidadeCEP', 'cidade_cep');
  BAS_CarregarCombo('cbx_cod_tipologradouro', 'tipologradouro_cep');
  BAS_CarregarCombo('cbx_cod_uf', 'sigla_uf');
end;

function TFrm_Cad_Cep.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
   if (not BAS_ValidarCampo(edt_cod_cep.name, 'O Cep deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_tipologradouro.name, 'O Tipo de logradouro deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_endereco_cep.name, 'O Endereço deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_bairro_cep.name, 'O Bairro deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_uf.name, 'Uma UF deve ser selecionada !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_cidadeCEP.name, 'A Cidade deve ser preenchida !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_Cep.BAS_Alterar(Frm:Tform);
begin
  CarregarCombos;
  inherited ;
  if DB_OpenSQL('select * from tbl_tipoLogradouro where tipologradouro_cep = ''' + edt_tipoLogradouro_cep.Text + '''') > 0 then
     Obj_SetFormObjValueByName(self,cbx_cod_tipologradouro.Name,Tab.FieldByName('cod_tipologradouro').Value);
end;

procedure TFrm_Cad_Cep.BAS_Salvar(Frm:Tform);
begin
//  edt_cod_usuario.Text := inttostr(FCod_Usuario);
  inherited ;
end;

procedure TFrm_Cad_Cep.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  if WCOD_CEP <> '' then
     begin
     btn_novoClick(Self);
     edt_cod_cep.Text:= STR_RemoveSimbolos(WCOD_CEP);
     edt_cod_cep.SetFocus;
     end;
{  if wCod_afiliado <> '' then
  begin
    edt_cod_afiliadoOdonto.Text := wCod_afiliado;
    Frm_Cad_afiliadoOdonto.BAS_Alterar(Frm_Cad_afiliadoOdonto);
  end;}
end;

procedure TFrm_Cad_Cep.btn_novoClick(Sender: TObject);
begin
  inherited;
  FStatus:= FST_Novo;
  CarregarCombos;
  edt_cod_cep.SetFocus;
end;

procedure TFrm_Cad_Cep.edt_cod_afiliadoOdontoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_Cep.edt_cod_afiliadoOdontoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin
    btn_alterarClick(self);
  end;
end;

procedure TFrm_Cad_Cep.edt_cod_afiliadoOdontoKeyPress(
  Sender: TObject; var Key: Char);
begin
{  inherited;
  if edt_cod_afiliadoOdonto.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and matricula_mte = '+edt_cod_afiliadoOdonto.text;}
end;

procedure TFrm_Cad_Cep.btn_salvarClick(Sender: TObject);
begin
  if DB_OpenSQL('select cc.cod_cidadeCEP, cc.cidade_cep, cc.cod_uf, u.sigla_uf from tbl_cidadeCEP as cc '+
                'inner join tbl_uf as u on u.cod_uf = cc.cod_uf where cc.cidade_cep = ''' +
                cbx_cod_cidadeCEP.Text + ''' and u.sigla_uf = ''' + cbx_cod_uf.Text + '''') = 0 then
     begin
     Dlg_Alerta('Cidade não existe nesse Estado!', self);
     Panel8.SetFocus;
     edt_uf_cep.SetFocus;
     Exit;
     end;
  {
  DB_OpenSQL('select top 1 * from tbl_cidadeCEp where cod_cidadeCEP > ' + IntToStr(cbx_cod_cidadeCEP.getItemValue) + ' order by cod_cidadeCEP');
  if (StrToInt(edt_cod_cep.Text) < cbx_cod_cidadeCEP.getItemValue) or (StrToInt(edt_cod_cep.Text) > Tab.FieldByName('cod_cidadeCEP').Value) then
     begin
     Dlg_Alerta('Cidade difere da faixa do Cep!' , Self);
     Panel8.SetFocus;
     edt_cod_cep.SetFocus;
     Exit;
     end;  }
  edt_complemento_cepExit(Sender);
  inherited;
end;

procedure TFrm_Cad_Cep.edt_cod_cepButtonClick(Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_Cep.edt_cod_cepExit(Sender: TObject);
begin
  inherited;
  if Length(edt_cod_cep.text) < 8 then
     begin
     Dlg_Alerta('ATENÇÃO ! Quantidade mínima do campo é de 8 dígitos', self);
     edt_cod_cep.SetFocus;
     end;
  if FStatus = FST_Novo then
     if DB_OpenSQL('select * from tbl_cep where cod_cep = '+edt_cod_cep.Text) > 0 then
        begin
        Dlg_Alerta('CEP já cadastrado, '+ #13 + 'Logradouro: ' + Tab.FieldByName('enderecoCompleto_cep').Text + #13 +'Bairro: ' +
        Tab.FieldByName('bairro_cep').Text + #13+ 'Cidade: ' + Tab.FieldByName('cidade_cep').Text + ' - ' +
        Tab.FieldByName('uf_cep').Text, Self);
        Panel4.SetFocus;
        edt_cod_cep.SetFocus;
        end;
end;

procedure TFrm_Cad_Cep.cbx_cod_ufExit(Sender: TObject);
begin
  inherited;
  if FStatus = FST_Novo then
     if cbx_cod_uf.Text <> '' then
        Obj_LoadCombo(Self,'cbx_cod_cidadeCEP', 'cidade_cep', 'cod_cidadeCEP', 'tbl_cidadeCEP where cod_uf = '+cbx_cod_uf.getStrItemValue+' order by cidade_cep');
end;

procedure TFrm_Cad_Cep.edt_endereco_cepExit(Sender: TObject);
begin
  inherited;
  edt_complemento_cepExit(Sender);
end;

procedure TFrm_Cad_Cep.edt_complemento_cepExit(Sender: TObject);
begin
  inherited;
  edt_enderecoCompleto_cep.Text:= cbx_cod_tipologradouro.Text + ' ' + edt_endereco_cep.Text + ' ' + edt_complemento_cep.Text;
  edt_uf_cep.Text:= cbx_cod_uf.Text;
  edt_cidade_cep.Text:= cbx_cod_cidadeCEP.Text;
  edt_tipoLogradouro_cep.Text:= cbx_cod_tipologradouro.Text;
end;

end.
