unit Rel_3056;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3056 = class(TFrm_Bas_TelaPadrao)
    PDJButton3: TPDJButton;
    Panel4: TPanel;
    rdb_visualizar: TRadioButton;
    rdb_imprimir: TRadioButton;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    PDJButton4: TPDJButton;
    PDJButton5: TPDJButton;
    PDJButton6: TPDJButton;
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt, operacao : String ;
    procedure ModoOperacao;
  public
    { Public declarations }
  end;

var
  Frm_Rel_3056: TFrm_Rel_3056;

implementation
uses Constantes, ShellAPI ;

{$R *.DFM}


procedure TFrm_Rel_3056.ModoOperacao;
begin
  if rdb_visualizar.Checked then
  operacao := 'open';
  if rdb_imprimir.Checked then
  operacao := 'print';
end;

procedure TFrm_Rel_3056.PDJButton3Click(Sender: TObject);
begin
  inherited;
  ModoOperacao;
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Dependente - Filho Inválido - INFORMATIVO.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Dependente - Filho Inválido - INFORMATIVO.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Adesão - Dependente.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Dependente - Filho Inválido - DECL.ECONÔMICA.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Assistido - ENCAM PERÍCIA MÉDICA.doc'), nil, nil, SW_SHOW);
end;

procedure TFrm_Rel_3056.PDJButton2Click(Sender: TObject);
begin
  inherited;
  ModoOperacao;
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Dependente - Menor sob Guarda - INFORMATIVO.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Adesão - Dependente.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Dependente - Menor Sob Guarda - DECL.ECONÔMICA.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Dependente - Menor sob Guarda - QUEST..doc'), nil, nil, SW_SHOW);
end;

procedure TFrm_Rel_3056.PDJButton1Click(Sender: TObject);
begin
  inherited;
  ModoOperacao;
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Assistido - INFORMATIVO.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Assistido - INFORMATIVO.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Adesão - Assistido.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Assistido - CARÊNCIAS.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Assistido - CARÊNCIAS.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Assistido - ENCAM PERÍCIA MÉDICA.doc'), nil, nil, SW_SHOW);
end;

procedure TFrm_Rel_3056.PDJButton4Click(Sender: TObject);
begin
  inherited;
  ModoOperacao;
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Dependente - Enteado filho de Companheiro - INFORMATIVO.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Dependente - Enteado filho de Companheiro - INFORMATIVO.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Assistido - CARÊNCIAS.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Assistido - CARÊNCIAS.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Dependente - Enteado Filho Companheiro - DECL.ECONÔMICA.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Dependente - Enteado Filho Companheiro - QUEST..doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Assistido - ENCAM PERÍCIA MÉDICA.doc'), nil, nil, SW_SHOW);

end;

procedure TFrm_Rel_3056.PDJButton5Click(Sender: TObject);
begin
  inherited;
  ModoOperacao;
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Dependente - Pais - INFORMATIVO.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Dependente - Pais - INFORMATIVO.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Adesão - Dependente.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Dependente - Pais - DECL. ECONOMICA.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Assistido - ENCAM PERÍCIA MÉDICA.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Assistido - CARÊNCIAS.doc'), nil, nil, SW_SHOW);
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Assistido - CARÊNCIAS.doc'), nil, nil, SW_SHOW);
end;

procedure TFrm_Rel_3056.PDJButton6Click(Sender: TObject);
begin
  inherited;
  ModoOperacao;
  ShellExecute(Handle, PChar(operacao), PChar(DOC_AdmDeclaracoes+'Plano - Transferencia do Menor para Maior.doc'), nil, nil, SW_SHOW);
end;

end.

