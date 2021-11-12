unit Cad_afiliadoOdonto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_Cadastro, ComCtrls, PDJButton, ExtCtrls, DCChoice, StdCtrls, jpeg,
  Mask, BEdit;

type
  TFrm_Cad_afiliadoOdonto = class(TFrm_Bas_Cadastro)
    Panel4: TPanel;
    Panel6: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    Panel5: TPanel;
    edt_digito_mte: TBEdit;
    edt_nome_fpm: TDCEdit;
    Panel1: TPanel;
    edt_nome_afo: TBEdit;
    Panel8: TPanel;
    edt_cpf_afo: TMaskEdit;
    edt_rg_afo: TDCEdit;
    edt_dtnascim_afo: TDCDateEdit;
    Panel7: TPanel;
    cbx_cod_tipocoberturaodonto: TDCComboBox;
    edt_dtadesaoodonto_afo: TDCDateEdit;
    Panel9: TPanel;
    edt_obs_afo: TBEdit;
    edt_cod_afiliadoOdonto: TDCChoiceEdit;
    edt_matricula_mte: TDCChoiceEdit;
    Panel39: TPanel;
    edt_dtsistema_afo: TDCDateEdit;
    cbx_cod_usuario: TDCComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure edt_cod_afiliadoOdontoButtonClick(Sender: TObject);
    procedure edt_cod_afiliadoOdontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbx_cod_empresafolhaExit(Sender: TObject);
    procedure edt_cod_afiliadoOdontoKeyPress(Sender: TObject;
      var Key: Char);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure edt_matricula_mteExit(Sender: TObject);
  private
    { Private declarations }
    seq, FPesquisaSQLDefalt : String;
    procedure CarregarCombos;
  public
    { Public declarations }
    wCod_afiliado : String;
    function BAS_ValidarCadastro: boolean ;             override ;
    procedure BAS_Alterar(Frm:Tform);                   override ;
    procedure BAS_Salvar(Frm:Tform);                   override ;
  end;

var
  Frm_Cad_afiliadoOdonto: TFrm_Cad_afiliadoOdonto;

implementation

uses Constantes, Fun_Db, Fun_Acesso, Dlg_Mensagem, Fun_Obj, dtm_principal4, Fun_ConsBeneficiario ;

{$R *.DFM}

procedure TFrm_Cad_afiliadoOdonto.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Cadastro de Afiliados do Odontológico' ;
  FEditChave    := 'edt_cod_afiliadoOdonto' ;
  FEditAlteracao:= 'cbx_cod_empresafolha' ;
  FUltFoco      := 'edt_obs_afo' ;
  FTitPesquisa  := 'Localizar Afiliados' ;
 // FPesquisa     := 'cod_afiliadoOdonto, matricula_mte, digito_mte, nome_afo' ;
  FPesquisaTit  := 'Cód.Afil.Odonto, Empresa, Matrícula, Cód.Beneficiário, Inscrição, Nome, Tipo Cobert.Odonto, Dt.Situação Odonto' ;
  FPesquisaSQLDefalt := 'select cod_afiliadoOdonto, nome_emp, a.matricula_mte, a.cod_beneficiario, b.inscricao_ben, nome_afo, '+
                        ' descricao_tco, dtadesaoodonto_afo from tbl_afiliadoodonto a inner join tbl_empresafolha e '+
                        'on a.cod_empresafolha = e.cod_empresafolha inner join tbl_tipocoberturaodonto tc on tc.cod_tipocoberturaodonto = '+
                        'a.cod_tipocoberturaodonto left join tbl_beneficiario b on b.cod_beneficiario = a.cod_beneficiario where cod_afiliadoOdonto > 0';
  FPesquisaSQL := FPesquisaSQLDefalt ;
  FOcultaIndice := true ;
  inherited;
end;

procedure TFrm_Cad_afiliadoOdonto.CarregarCombos;
begin
  inherited ;
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_tipocoberturaodonto','descricao_tco');
  BAS_CarregarCombo('cbx_cod_usuario', 'descricao_usu');
end;

function TFrm_Cad_afiliadoOdonto.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
   if (not BAS_ValidarCampo(edt_matricula_mte.name, 'A Matrícula deve ser preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_digito_mte.name, 'O Digito deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_nome_afo.name, 'O Nome deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O Local de Desconto deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_tipocoberturaodonto.name, 'O Tipo de Cobertura Odontológico deve ser preenchido !', VLD_Preenchido )) then
    Exit;
  result := false ;
end;

procedure TFrm_Cad_afiliadoOdonto.BAS_Alterar(Frm:Tform);
begin
  CarregarCombos;
  inherited ;
  cbx_cod_empresafolhaExit(self);
end;

procedure TFrm_Cad_afiliadoOdonto.BAS_Salvar(Frm:Tform);
begin
  inherited ;
end;

procedure TFrm_Cad_afiliadoOdonto.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  if wCod_afiliado <> '' then
  begin
    edt_cod_afiliadoOdonto.Text := wCod_afiliado;
    Frm_Cad_afiliadoOdonto.BAS_Alterar(Frm_Cad_afiliadoOdonto);
  end;
end;

procedure TFrm_Cad_afiliadoOdonto.btn_novoClick(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  edt_matricula_mte.SetFocus;
  FStatus := FST_Novo ;
end;

procedure TFrm_Cad_afiliadoOdonto.edt_cod_afiliadoOdontoButtonClick(
  Sender: TObject);
begin
  inherited;
  btn_alterarClick(self);
end;

procedure TFrm_Cad_afiliadoOdonto.edt_cod_afiliadoOdontoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin
    btn_alterarClick(self);
  end;
end;

procedure TFrm_Cad_afiliadoOdonto.cbx_cod_empresafolhaExit(
  Sender: TObject);
begin
  inherited;
  if (edt_matricula_mte.Text <> '') and (cbx_cod_empresafolha.Text <> '') then
  begin
    DB_OpenSQL('select nome_fpm, digito_mte from tbl_fpm where matricula_mte = '+edt_matricula_mte.Text+
    ' and cod_empresafolha = '+cbx_cod_empresafolha.valueItem);
    edt_nome_fpm.Text := Tab.FieldByName('nome_fpm').AsString;
    edt_digito_mte.Text := Tab.FieldByName('digito_mte').AsString;
  end;
end;

procedure TFrm_Cad_afiliadoOdonto.edt_cod_afiliadoOdontoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
     if edt_cod_afiliadoOdonto.text = '' then
       FPesquisaSQL  := FPesquisaSQLDefalt
     else
       FPesquisaSQL  := FPesquisaSQLDefalt+' and matricula_mte = '+edt_cod_afiliadoOdonto.text;
end;

procedure TFrm_Cad_afiliadoOdonto.btn_alterarClick(Sender: TObject);
  function Get_Cod_afiliado(matricula:string): string;
  begin
    if matricula = '' then begin
      result := '' ;
      exit;
    end;
    if wCod_afiliado = '' then
    begin
      DB_OpenSQL('select cod_afiliadoOdonto from tbl_afiliadoodonto where matricula_mte = '+matricula);
      result := Tab.Fields[0].AsString;
      if result = '' then
        Dlg_Alerta('Matricula não encontrada !', self);
    end;
  end;
  var
    mat : string ;
begin
  if wCod_afiliado = '' then
    mat := Get_Cod_afiliado(edt_cod_afiliadoOdonto.text)
  else
    mat := wCod_afiliado;
  if mat = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt;
  edt_cod_afiliadoOdonto.text := mat ;
  edt_cod_afiliadoOdonto.text := '' ;
  inherited;
end;

procedure TFrm_Cad_afiliadoOdonto.btn_salvarClick(Sender: TObject);
begin
// Testar se pessoa duplicada na matrícula
  if DB_OpenSQL('select nome_afo, cod_tipocoberturaodonto from tbl_afiliadoodonto where '+
                'cod_empresafolha = ' + cbx_cod_empresafolha.valueItem + ' and matricula_mte = ' +
                edt_matricula_mte.Text + ' and SUBSTRING(nome_afo,1,8) = ''' + Copy(edt_nome_afo.Text,1,8) + '''') > 0 then
     begin
     if not Dlg_YesNo('Já existe afiliado nessa matrícula com o nome de ' + Tab.FieldByName('nome_afo').AsString +
                  ', Essa é outra pessoa ?', Self) then
                  Exit;
     end;
  edt_dtsistema_afo.Date := Date;
  Obj_SetFormObjValueByName(self, cbx_cod_usuario.name, FCod_usuario);
  inherited;
end;

procedure TFrm_Cad_afiliadoOdonto.edt_matricula_mteExit(Sender: TObject);
begin
  inherited;
  Frm_Fun_ConsBeneficiario:= TFrm_Fun_ConsBeneficiario.Create(Self);
  Frm_Fun_ConsBeneficiario.FMatricula:= edt_matricula_mte.text;
  Frm_Fun_ConsBeneficiario.FInscricao1:= '';
  Frm_Fun_ConsBeneficiario.FCPF:= '';
  Frm_Fun_ConsBeneficiario.ShowModal;
  Frm_Fun_ConsBeneficiario.Release;
  Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, Frm_Fun_ConsBeneficiario.FEmpresaFolha);
  cbx_cod_empresafolhaExit(Self);
end;

end.
