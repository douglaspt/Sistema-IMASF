unit Mov_2048;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit;

type
  TFrm_Mov_2048 = class(TFrm_Bas_TelaPadrao)
    Panel1: TPanel;
    edt_matriculaorigem: TDCEdit;
    Panel4: TPanel;
    edt_matriculadestino: TDCEdit;
    cbx_cod_empresafolha: TDCComboBox;
    edt_nomeorigem: TDCEdit;
    cb2_cod_empresafolha: TDCComboBox;
    edt_nomedestino: TDCEdit;
    edt_digitoorigem: TBEdit;
    edt_digitodestino: TBEdit;
    btn_atualizar: TSpeedButton;
    DataSource1: TDataSource;
    PDJButton3: TPDJButton;
    dbg_odonto: TDBGrid;
    edt_cod_beneficiario: TBEdit;
    dbg_uti: TDBGrid;
    DataSource2: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure cbx_cod_empresafolhaExit(Sender: TObject);
    procedure cb2_cod_empresafolhaExit(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure dbg_odontoDblClick(Sender: TObject);
  private
    { Private declarations }
  FPesquisaSQLDefalt : string;
  function CriticaParametros : Boolean ;
  public
    { Public declarations }
    CodRequerimento, DtProtocolo : string;
  end;

var
  Frm_Mov_2048: TFrm_Mov_2048;
  FCod_Afiliado: String;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
     Fun_obj, Fun_ConsCadastro, dtm_principal4, Imp_4107, Fun_Data, Imp_4114,
     Bas_Impressao, dtm_principal6, dtm_principal5 ;

{$R *.DFM}

function TFrm_Mov_2048.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_matriculaorigem.name, 'A Matrícula de Origem deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'A Empresa de Origem deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_matriculadestino.name, 'A Matrícula de Destino deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cb2_cod_empresafolha.name, 'A Empresa de Destino deve ser Preenchida !', VLD_Preenchido )) ;
end;

procedure TFrm_Mov_2048.FormShow(Sender: TObject);
begin
  inherited;
  fdt_principal6.spc_cons_adm_afiliadoodonto.Close;
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
end;

procedure TFrm_Mov_2048.cbx_cod_empresafolhaExit(Sender: TObject);
begin
  inherited;
  if (edt_matriculaorigem.Text <> '') and (cbx_cod_empresafolha.Text <> '') then
  begin
    DB_OpenSQL('select nome_fpm, digito_mte, cod_beneficiario from tbl_fpm where matricula_mte = '+edt_matriculaorigem.Text+
    ' and cod_empresafolha = '+cbx_cod_empresafolha.valueItem);
    edt_nomeorigem.Text := Tab.FieldByName('nome_fpm').AsString;
    edt_digitoorigem.Text := Tab.FieldByName('digito_mte').AsString;
    edt_cod_beneficiario.Text:= Tab.FieldByName('cod_beneficiario').AsString;
  end;
end;

procedure TFrm_Mov_2048.cb2_cod_empresafolhaExit(Sender: TObject);
begin
  inherited;
  if (edt_matriculadestino.Text <> '') and (cb2_cod_empresafolha.Text <> '') then
  begin
    DB_OpenSQL('select nome_fpm, digito_mte from tbl_fpm where matricula_mte = '+edt_matriculadestino.Text+
    ' and cod_empresafolha = '+cb2_cod_empresafolha.valueItem);
    edt_nomedestino.Text := Tab.FieldByName('nome_fpm').AsString;
    edt_digitodestino.Text := Tab.FieldByName('digito_mte').AsString;
  end;
end;

procedure TFrm_Mov_2048.btn_atualizarClick(Sender: TObject);
begin
  inherited;
  with Fdt_principal6.spc_cons_adm_afiliadoodonto do begin
    close;
    parambyname('@matricula_mte').AsString := edt_matriculaorigem.text ;
    parambyname('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    parambyname('@cod_tipocoberturaodonto').AsString := '';
    parambyname('@carencia').AsString := '';
    open;
  end;
end;

procedure TFrm_Mov_2048.PDJButton3Click(Sender: TObject);
var
  executado : boolean;
begin
  inherited;
  if CriticaParametros then
    exit;
// Consulto "TODOS" da matrícula/empresa
  with Fdt_principal6.spc_cons_adm_afiliadoodonto do begin
    close;
    parambyname('@matricula_mte').AsString := edt_matriculaorigem.text ;
    parambyname('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    parambyname('@cod_tipocoberturaodonto').AsString := '';
    parambyname('@carencia').AsString := '';
    open;
  end;
  executado := false;
  DB_BeginTrans;
  fdt_principal6.spc_cons_adm_afiliadoodonto.Prior;
  while not fdt_principal6.spc_cons_adm_afiliadoodonto.Eof do
  begin
    executado := {DB_ExecSQL('insert into tbl_histafiliadoodonto values('+
    fdt_principal6.spc_cons_adm_afiliadoodonto.fieldByName('cod_afiliadoOdonto').AsString+
    ','+edt_matriculaorigem.Text+','+cbx_cod_empresafolha.valueitem+','+edt_matriculadestino.Text+
    ','+cb2_cod_empresafolha.valueitem+', getdate(),'+IntToStr(FCod_Usuario)+')');
    fdt_principal6.spc_cons_adm_afiliadoodonto.Next; }

//    DB_ExecSQL('insert into tbl_histplanoOdonto values('+ edt_cod_beneficiario.Text + ', ' +
    DB_ExecSQL('insert into tbl_histplanoOdonto values(0, ' +
               fdt_principal6.spc_cons_adm_afiliadoodonto.fieldByName('cod_tipocoberturaodonto').AsString +
               ', Null, Null, getdate(),' + fdt_principal6.spc_cons_adm_afiliadoodonto.fieldByName('cod_afiliadoOdonto').AsString
               + ', ' + IntToStr(FCod_usuario) + ', ' + cb2_cod_empresafolha.valueitem + ', ' +
               edt_matriculadestino.Text + ')');
    fdt_principal6.spc_cons_adm_afiliadoodonto.Next;
  end;
  if executado then
    executado := DB_ExecSQL('update tbl_afiliadoodonto set matricula_mte = '+edt_matriculadestino.Text+
    ', cod_empresafolha = '+cb2_cod_empresafolha.valueitem+' where cod_empresafolha = '+
    cbx_cod_empresafolha.valueitem + ' and matricula_mte = '+edt_matriculaorigem.Text);
  if executado then
  begin
    DB_Commit;
    Dlg_Ok('Transferência Efetuada com Sucesso!',self);
    btn_atualizarClick(self);
    BAS_LimparTela;
    FormShow(self);
  end
  else
    DB_RollBack;
end;

procedure TFrm_Mov_2048.dbg_odontoDblClick(Sender: TObject);
begin
  inherited;
//  FCod_Afiliado:= Tab.FieldByName('cod_afiliadoOdonto').Text;
  FCod_Afiliado:= '4982';
  with fdt_principal5.spc_cons_adm_histplanoOdonto do
    begin
    Close;
    ParamByName('@cod_beneficiario').AsString := FCod_Afiliado;
    Open;
    end;

end;

end.



