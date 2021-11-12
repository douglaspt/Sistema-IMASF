unit Mov_2047;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_2047 = class(TFrm_Bas_TelaPadrao)
    btn_requerimento: TPDJButton;
    Panel1: TPanel;
    edt_chefeSM: TDCEdit;
    Panel4: TPanel;
    edt_chefeDA: TDCEdit;
    Panel5: TPanel;
    edt_revcontas: TDCEdit;
    procedure btn_requerimentoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  FPesquisaSQLDefalt : string;
  function CriticaParametros : Boolean ;
  public
    { Public declarations }
    CodRequerimento, DtProtocolo : string;
  end;

var
  Frm_Mov_2047: TFrm_Mov_2047;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
Fun_obj, Fun_ConsCadastro, dtm_principal4, Imp_4107, Fun_Data, Imp_4114,
  Bas_Impressao ;

{$R *.DFM}

function TFrm_Mov_2047.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_chefeSM.name, 'O Nome do Chefe da Seção Médica deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_chefeDA.name, 'O Nome do Chefe da Seção Administrativa deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_revcontas.name, 'O Nome do Chefe da Revisão de Contas deve ser Preenchido !', VLD_Preenchido ));
end;

procedure TFrm_Mov_2047.btn_requerimentoClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
    if DB_ExecSQL('update tbl_parametro set nomeChefeSecaoMedica_par = '''+edt_chefeSM.Text+''','+
    ' nomeChefeSecaoAdministrativa_par = '''+edt_chefeDA.Text+''','+
    ' nomeChefeRevContasMed_par = '''+edt_revcontas.Text+
    ''' where nomeChefeSecaoMedica_par = '''+PAR_ChefiaMedico+'''') then
      Dlg_Ok('Alteração salva com sucesso!',self);
end;

procedure TFrm_Mov_2047.FormShow(Sender: TObject);
begin
  inherited;
  edt_chefeSM.Text := PAR_ChefiaMedico;
  edt_chefeDA.Text := PAR_ChefiaADM;
  edt_revcontas.Text := PAR_ChefiaRevContas;
end;

end.



