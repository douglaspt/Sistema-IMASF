unit Mov_GeraDescontoFolha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_GeraDescontoFolha = class(TFrm_Bas_TelaPadrao)
    ProgressBar1: TProgressBar;
    lbl_linha: TLabel;
    btn_fechamento: TPDJButton;
    rdb_prefeitura: TRadioButton;
    rdb_tesouraria: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_fechamentoClick(Sender: TObject);
  private
    { Private declarations }
  function CriticaDesconto(dtrefer, emp : string) : Boolean ;
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia, FEmpresaFolha : String ;
  end;

var
  Frm_Mov_GeraDescontoFolha: TFrm_Mov_GeraDescontoFolha;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario,
Fun_Obj, Fun_Acesso ;

{$R *.DFM}

procedure TFrm_Mov_GeraDescontoFolha.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Gerar Descontos de Contribuição de Beneficiários' ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

function TFrm_Mov_GeraDescontoFolha.CriticaDesconto(dtrefer, emp : string) : Boolean ;
begin
  DB_OpenSQL('select count(*) from tbl_descontofolha where dtreferencia_flh = '+dtrefer+
  ' and cod_empresafolha =  '+emp+' and ((cod_tarifa = 595) or (cod_tarifa = 518)) and dtrefatraso_flh = dtreferencia_flh');
  if Tab.Fields[0].AsInteger > 0 then begin
    Dlg_Alerta('Os Descontos para este Mês de Referência, ja foram gerados, não podem ser gerados novamente !', self);
    DB_ClearSQL;
    result := true;
  end else
    result := false;
end;


procedure TFrm_Mov_GeraDescontoFolha.btn_fechamentoClick(Sender: TObject);
begin
  inherited;

  if rdb_tesouraria.Checked then
  begin
    if CriticaDesconto(FormatDateTime('mm',date)+'/01/'+FormatDateTime('yyyy', date),'99') then
      Exit;
    if DB_ExecSQL('EXEC spc_adm_geradescontostesouraria ') then
      Dlg_ok('Descontos Gerados com Sucesso !', self)
    else
      Dlg_Erro('Não foi possível Gerar os Descontos para este Mês', self  );
  end;
  if rdb_prefeitura.Checked then
  begin
    if CriticaDesconto(FormatDateTime('mm',date)+'/01/'+FormatDateTime('yyyy', date),'5') then
      Exit;
    if DB_ExecSQL('EXEC spc_adm_geradescontosfolha ') then
      Dlg_ok('Descontos Gerados com Sucesso !', self)
    else
      Dlg_Erro('Não foi possível Gerar os Descontos para este Mês', self  );
  end;
  EscreveLog(btn_fechamento.name);
end;

end.



