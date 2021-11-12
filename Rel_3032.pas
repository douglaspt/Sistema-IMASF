unit Rel_3032;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3032 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel5: TPanel;
    edt_cod_fornecedorFarmacia: TDCChoiceEdit;
    Panel1: TPanel;
    Panel4: TPanel;
    cbx_cod_sitFornecedorFarmacia: TDCComboBox;
    rdb_sequencia: TRadioButton;
    rdb_apelido: TRadioButton;
    rdb_razaosocial: TRadioButton;
    Btn_LimpaCampos: TPDJButton;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_cod_fornecedorFarmaciaButtonClick(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3032: TFrm_Rel_3032;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
Fun_Data, dtm_principal3, Dlg_Mensagem, dtm_principal5, Bas_Impressao, Fun_Obj;

{$R *.DFM}

procedure TFrm_Rel_3032.FormCreate(Sender: TObject);
begin
  inherited;
  FTitulo       := 'Cadastro de Fornecedores da Farmácia do IMASF' ;
  FEditChave    := 'edt_cod_fornecedorFarmacia' ;
  FEditAlteracao:= 'edt_cod_fornecedorSIAF' ;
  FUltFoco      := 'edt_cod_sitFornecedorFarmacia' ;
  FTitPesquisa  := 'Localizar Acomodação' ;
  FPesquisa     := 'cod_fornecedorFarmacia, cod_fornecedorSIAF, razaoSocial_ffa, cod_sitFornecedorFarmacia' ;
  FPesquisaTit  := 'Código, Cod. Forn. SIAF, Razão Social, Situação' ;
end;

function TFrm_Rel_3032.CriticaParametros : Boolean ;
begin

end;


procedure TFrm_Rel_3032.PDJButton3Click(Sender: TObject);
begin
  inherited;
  with fdt_principal5.spc_cons_med_fornecedorFarmacia do
  begin
    close;
    ParamByName('@cod_fornecedor').AsString := edt_cod_fornecedorFarmacia.Text;
    ParamByName('@cod_situacao').AsString := cbx_cod_sitFornecedorFarmacia.valueitem;
    if rdb_sequencia.Checked then
      ParamByName('@order').AsInteger := 0;
    if rdb_apelido.Checked then
      ParamByName('@order').AsInteger := 1;
    if rdb_razaosocial.Checked then
      ParamByName('@order').AsInteger := 2;
    Open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_med_fornecedorFarmacia;
  Frm_Bas_Impressao.showReport(4138);
//  fdt_principal5.spc_cons_adm_Ocorrenciaedital.close;
end;
procedure TFrm_Rel_3032.FormShow(Sender: TObject);
begin
  inherited;
  cbx_cod_sitFornecedorFarmacia.Items.add('Ativo');
  cbx_cod_sitFornecedorFarmacia.ValItems.Add('1');
  cbx_cod_sitFornecedorFarmacia.Items.add('Inativo');
  cbx_cod_sitFornecedorFarmacia.ValItems.Add('3');
end;

procedure TFrm_Rel_3032.edt_cod_fornecedorFarmaciaButtonClick(
  Sender: TObject);
begin
  inherited;
  edt_cod_fornecedorFarmacia.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, true);
end;

procedure TFrm_Rel_3032.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;

end.

