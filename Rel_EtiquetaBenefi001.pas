unit Rel_EtiquetaBenefi001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, Qrctrls, QuickRpt;

type
  TFrm_Rel_EtiquetaBenefi001 = class(TFrm_Bas_TelaPadrao)
    PDJButton4: TPDJButton;
    Panel1: TPanel;
    Panel5: TPanel;
    rdb_titulares: TRadioButton;
    rdb_todos: TRadioButton;
    Panel6: TPanel;
    edt_inscricao: TDCEdit;
    rdG_Etiqueta: TRadioGroup;
    edt_copia: TEdit;
    RdG_Impressora: TRadioGroup;
    rdb_normais: TRadioButton;
    rdb_assitidos: TRadioButton;
    Panel7: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    cbx_cod_empresa: TDCComboBox;
    rdb_assistidoend: TRadioButton;
    Panel4: TPanel;
    cbx_cod_plano: TDCComboBox;
    edt_idadeIni: TDCEdit;
    edt_idadeFin: TDCEdit;
    Btn_LimpaCampos: TPDJButton;
    rdb_segsemass: TRadioButton;
    rdb_segcomass: TRadioButton;
    Panel8: TPanel;
    ckb_normal: TCheckBox;
    ckb_suspenso: TCheckBox;
    ckb_cancelado: TCheckBox;
    Panel9: TPanel;
    PDJButton1: TPDJButton;
    Label1: TLabel;
    rdb_inscricao: TRadioButton;
    rdb_sequencia: TRadioButton;
    Panel10: TPanel;
    edt_inscricaoInicial: TDCEdit;
    edt_inscricaoFinal: TDCEdit;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    edt_nome: TDCEdit;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_inscricaofinalButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt, Fsituacao : String ;
    function CriticaParametros : Boolean ;
    procedure PesquisaBeneficiarios;
  public
    { Public declarations }
  end;

var
  Frm_Rel_EtiquetaBenefi001: TFrm_Rel_EtiquetaBenefi001;


implementation
uses Imp_Med_ResumoConta, dtm_principal2, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Adm_Etiqueta002, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str, Imp_Adm_Etiqueta003,
Imp_Adm_Etiqueta004, Imp_Adm_Etiqueta005, Imp_Adm_Etiqueta006, Imp_Adm_Etiqueta007,
Imp_4048, Dlg_ImprimeCarta, Fun_Obj, Imp_4142, Fun_Acesso ;

{$R *.DFM}

procedure TFrm_Rel_EtiquetaBenefi001.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Resumo dos Atendimentos Realizados pelo Beneficiário' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQLDefalt := 'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
  'from tbl_beneficiario b, tbl_sitbeneficiario s '+
  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
  'and s.tipo_sit = 0';
  FPesquisaSQL := FPesquisaSQLDefalt ;
  FPesquisaTit  := 'Código, Inscrição, Nome, Processo, Tip. Depend., Situação' ;
  inherited;
end;

function TFrm_Rel_EtiquetaBenefi001.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_inscricaoinicial.name, 'Incrição Inicial do Beneficiário deve ser Preenchida !', VLD_Preenchido ))
  and (not BAS_ValidarCampo(edt_inscricaofinal.name, 'Incrição Final do Beneficiário deve ser Preenchida !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_EtiquetaBenefi001.PesquisaBeneficiarios;
begin
  Fsituacao := '';
  with Fdt_principal2.spc_cons_adm_etiquetabenefi001 do
  begin
    close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
    ParamByName('@inscricao_ben').AsString := edt_inscricao.text ;
    ParamByName('@inscricaoInicial').AsString := edt_inscricaoInicial.text;
    ParamByName('@inscricaoFinal').AsString := edt_inscricaoFinal.text;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueitem ;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@cod_empresa').AsString := cbx_cod_empresa.valueitem;
    ParamByName('@idadeIni').AsString := edt_idadeIni.Text;
    ParamByName('@idadeFin').AsString := edt_idadeFin.Text;
    if rdb_titulares.Checked then
      ParamByName('@titularidade').AsString := '0';
    if rdb_normais.Checked then
      ParamByName('@titularidade').AsString := '1';
    if rdb_assitidos.Checked then
      ParamByName('@titularidade').AsString := '2';
    if rdb_assistidoend.Checked then
      ParamByName('@titularidade').AsString := '3';
    if rdb_segcomass.Checked then
      ParamByName('@titularidade').AsString := '4';
    if rdb_segsemass.Checked then
      ParamByName('@titularidade').AsString := '5';
    if rdb_todos.Checked then
      ParamByName('@titularidade').AsString := '100';

    if ckb_normal.Checked then
      Fsituacao := '0';
    if ckb_suspenso.Checked then
      if Fsituacao <> '' then
        Fsituacao := Fsituacao + ',1'
      else
        Fsituacao := '1';
    if ckb_cancelado.Checked then
      if Fsituacao <> '' then
        Fsituacao := Fsituacao + ',2'
      else
        Fsituacao := '2';

    if Fsituacao <> '' then
      ParamByName('@tipo_sit').AsString := Fsituacao;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
end;

procedure TFrm_Rel_EtiquetaBenefi001.PDJButton4Click(Sender: TObject);
begin
  inherited;
//  if CriticaParametros then
//    Exit;
  PesquisaBeneficiarios;
  if rdG_Etiqueta.ItemIndex = 0 then
  if Dlg_ImprimeEtiquetaYesNo(self) then
  begin
    Frm_Imp_Adm_Etiqueta002 := TFrm_Imp_Adm_Etiqueta002.Create(Self);
    Frm_Imp_Adm_Etiqueta002.QuickRep1.Preview;
    Frm_Imp_Adm_Etiqueta002.Release;
  end;
  if rdG_Etiqueta.ItemIndex = 1 then
  if Dlg_ImprimeEtiquetaYesNo(self) then
  begin
    Frm_Imp_Adm_Etiqueta003 := TFrm_Imp_Adm_Etiqueta003.Create(Self);
    Frm_Imp_Adm_Etiqueta003.QuickRep1.Preview;
    Frm_Imp_Adm_Etiqueta003.Release;
  end;
  if rdG_Etiqueta.ItemIndex = 2 then begin
    if RdG_Impressora.ItemIndex = 0 then begin
      Frm_Imp_Adm_Etiqueta006 := TFrm_Imp_Adm_Etiqueta006.Create(Self);
      Frm_Imp_Adm_Etiqueta006.QuickRep1.Preview;
      Frm_Imp_Adm_Etiqueta006.Release;
    end;
    if RdG_Impressora.ItemIndex = 1 then begin
      Frm_Imp_Adm_Etiqueta004 := TFrm_Imp_Adm_Etiqueta004.Create(Self);
      Frm_Imp_Adm_Etiqueta004.QuickRep1.Preview;
      Frm_Imp_Adm_Etiqueta004.Release;
    end;
    if RdG_Impressora.ItemIndex = 2 then begin
      Frm_Imp_4048 := TFrm_Imp_4048.Create(Self);
      Frm_Imp_4048.QuickRep1.Preview;
      Frm_Imp_4048.Release;
    end;
    if RdG_Impressora.ItemIndex = 3 then begin
      Frm_Imp_4142 := TFrm_Imp_4142.Create(Self);
      Frm_Imp_4142.QuickRep1.Preview;
      Frm_Imp_4142.Release;
    end;
  end;
  if rdG_Etiqueta.ItemIndex = 3 then begin
    if RdG_Impressora.ItemIndex = 0 then begin
      Frm_Imp_Adm_Etiqueta007 := TFrm_Imp_Adm_Etiqueta007.Create(Self);
      Frm_Imp_Adm_Etiqueta007.QuickRep.PrinterSettings.Copies := strtoint(edt_copia.text) ;
      Frm_Imp_Adm_Etiqueta007.QuickRep.Preview;
      Frm_Imp_Adm_Etiqueta007.Release;
    end;
    if RdG_Impressora.ItemIndex = 1 then begin
      Frm_Imp_Adm_Etiqueta005 := TFrm_Imp_Adm_Etiqueta005.Create(Self);
      Frm_Imp_Adm_Etiqueta005.QuickRep.PrinterSettings.Copies := strtoint(edt_copia.text) ;
      Frm_Imp_Adm_Etiqueta005.QuickRep.Preview;
      Frm_Imp_Adm_Etiqueta005.Release;
    end;
  end;
  Fdt_principal2.spc_cons_adm_etiquetabenefi001.close;
end;

procedure TFrm_Rel_EtiquetaBenefi001.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Rel_EtiquetaBenefi001.edt_inscricaofinalButtonClick(
  Sender: TObject);
begin
  inherited;
//  if edt_inscricao_ben.text = '' then
//    FPesquisaSQL  := FPesquisaSQLDefalt
//  else
//    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
//  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL);
end;

procedure TFrm_Rel_EtiquetaBenefi001.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_empresafolha','nome_emp');
  BAS_CarregarCombo('cbx_cod_empresa','nome_emp');
end;

procedure TFrm_Rel_EtiquetaBenefi001.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEdit(self);
  FormShow(self);
end;

procedure TFrm_Rel_EtiquetaBenefi001.PDJButton1Click(Sender: TObject);
begin
  inherited;
//  if CriticaParametros then
//    Exit;
  PesquisaBeneficiarios;
  if rdG_Etiqueta.ItemIndex = 0 then
  begin
    Frm_Imp_Adm_Etiqueta002 := TFrm_Imp_Adm_Etiqueta002.Create(Self);
    if rdb_inscricao.Checked then
      Frm_Imp_Adm_Etiqueta002.FtipoImpressao := 0
    else
      Frm_Imp_Adm_Etiqueta002.FtipoImpressao := 1;
    Frm_Imp_Adm_Etiqueta002.QuickRep1.Preview;
    Frm_Imp_Adm_Etiqueta002.Release;
  end;
  if rdG_Etiqueta.ItemIndex = 1 then
  begin
    Frm_Imp_Adm_Etiqueta003 := TFrm_Imp_Adm_Etiqueta003.Create(Self);
    if rdb_inscricao.Checked then
      Frm_Imp_Adm_Etiqueta003.FtipoImpressao := 0
    else
      Frm_Imp_Adm_Etiqueta003.FtipoImpressao := 1;
    Frm_Imp_Adm_Etiqueta003.QuickRep1.Preview;
    Frm_Imp_Adm_Etiqueta003.Release;
  end;
  if rdG_Etiqueta.ItemIndex = 2 then
  begin
    Frm_Imp_4142 := TFrm_Imp_4142.Create(Self);
    Frm_Imp_4142.QuickRep1.Preview;
    Frm_Imp_4142.Release;
  end;
  if rdG_Etiqueta.ItemIndex = 3 then
  begin
    Frm_Imp_Adm_Etiqueta005 := TFrm_Imp_Adm_Etiqueta005.Create(Self);
    Frm_Imp_Adm_Etiqueta005.QuickRep.PrinterSettings.Copies := strtoint(edt_copia.text);
    Frm_Imp_Adm_Etiqueta005.QuickRep.Preview;
    Frm_Imp_Adm_Etiqueta005.Release;
  end;
  Fdt_principal2.spc_cons_adm_etiquetabenefi001.close;
end;


procedure TFrm_Rel_EtiquetaBenefi001.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL:= FPesquisaSQLDefalt
  else
    FPesquisaSQL:= FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text:= Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then
     edt_nome.text:= ''
  else
    begin
    DB_OpenSQL('select nome_ben, cod_empresa, cod_plano, inscricao_ben, titulacartei_ben, digito_ben, cod_empresafolha'+
    ' from tbl_beneficiario where cod_beneficiario = '+ edt_cod_beneficiario.text);
    edt_inscricao_ben.Text := Tab.FieldByNAme('inscricao_ben').AsString;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    end;
end;

procedure TFrm_Rel_EtiquetaBenefi001.edt_inscricao_benKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
     edt_inscricao_benButtonClick(self);
end;

end.



