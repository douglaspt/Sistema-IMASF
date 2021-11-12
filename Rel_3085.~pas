unit Rel_3085;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3085 = class(TFrm_Bas_TelaPadrao)
    PDJButton4: TPDJButton;
    Panel4: TPanel;
    edt_cod_beneficiario: TDCChoiceEdit;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel24: TPanel;
    edt_nome: TDCEdit;
    edt_carteira: TDCEdit;
    Panel1: TPanel;
    edt_tabela: TDCEdit;
    edt_nome_pla: TDCEdit;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton1: TPDJButton;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt, Str_titularidade : String ;
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_Rel_3085: TFrm_Rel_3085;

implementation
uses Imp_Med_ResumoConta, dtm_principal2, dtm_principal3, Fun_Medico, Fun_ConsCadastro, Constantes,
Imp_Adm_FichaBenefi001, Fun_DB, Dlg_Mensagem, Fun_beneficiario, Fun_Str, Fun_Obj,
Imp_Adm_FichaBenefi002, Imp_Adm_Requerimento001, Imp_4063, dtm_principal, Fun_Acesso,
  Bas_Impressao ;

{$R *.DFM}

procedure TFrm_Rel_3085.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Resumo dos Atendimentos Realizados pelo Beneficiário' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL := FSQL_Beneficiario ;
  FPesquisaTit := FTit_Benefeciario ;
  inherited;
end;

function TFrm_Rel_3085.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_inscricao_ben.name, 'A Inscrição deve ser Preenchida!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'O mês deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O ano deve ser Preenchido!', VLD_Preenchido ));

end;

procedure TFrm_Rel_3085.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_adm_extratoCopartBenefi do
  begin
    close;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
    ParamByName('@dtCoparticipacao').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.Text;

    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal3.spc_cons_adm_extratoCopartBenefi;
  Frm_Bas_Impressao.FCampo1:= 'Beneficiário:  '+edt_carteira.text+'  -  '+edt_nome.Text;
  Frm_Bas_Impressao.FCampo2 := 'Mês/Ano do Desconto:  '+cbx_cod_mes.text+'/'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo3 := FNome_Usu;
  Frm_Bas_Impressao.showReport(4246);
  fdt_principal3.spc_cons_adm_extratoCopartBenefi.close;
end;

procedure TFrm_Rel_3085.edt_cod_beneficiarioKeyDown(
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

procedure TFrm_Rel_3085.edt_inscricao_benButtonClick(
  Sender: TObject);
begin
  inherited;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
//  'select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, b.processo_ben, s.nome_sit '+
//  'from tbl_beneficiario b, tbl_sitbeneficiario s '+
//  'where b.cod_sitbeneficiario = s.cod_sitbeneficiario ';
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.inscricao_ben = '+edt_inscricao_ben.text;
  edt_cod_beneficiario.text := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_cod_beneficiario.text = '' then begin
    edt_carteira.text := '' ;
    edt_nome.text := '' ;
  end else begin
    DB_OpenSQL('select nome_ben, cod_empresa, b.cod_plano, inscricao_ben, titulacartei_ben, '+
    ' digito_ben, nome_pla, bn.cod_planoPagto, nome_plp'+
    ' from tbl_beneficiario b inner join tbl_plano p on b.cod_plano = p.cod_plano'+
    ' left join tbl_beneficiarioPlanoPagtoEspecial bn on b.cod_beneficiario = bn.cod_beneficiario'+
    ' left join tbl_planoPagto pp on bn.cod_planoPagto = pp.cod_planoPagto'+
    ' where b.cod_beneficiario = '+edt_cod_beneficiario.text);
    edt_inscricao_ben.text := Tab.FieldByName('inscricao_ben').AsString;
    edt_carteira.text := FormatarCarteirinha(
    TAb.FieldByName('cod_empresa').AsString+Tab.FieldByName('cod_plano').AsString+
    STR_RightAlign(Tab.FieldByName('inscricao_ben').AsString,#48,5)+
    STR_RightAlign(Tab.FieldByName('titulacartei_ben').AsString,#48,2)+
    Tab.FieldByName('digito_ben').AsString) ;
    edt_nome.text := Tab.FieldByNAme('nome_ben').AsString;
    edt_nome_pla.Text := Tab.FieldByNAme('nome_pla').AsString;
    edt_tabela.Text := Tab.FieldByNAme('nome_plp').AsString;
    Str_titularidade := Tab.FieldByName('titulacartei_ben').AsString;
  end;
end;
procedure TFrm_Rel_3085.FormShow(Sender: TObject);
begin
  inherited;
  edt_inscricao_ben.SetFocus;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FormatDateTime('m',date));
  edt_ano.Text := FormatDateTime('yyyy',Date);
end;

procedure TFrm_Rel_3085.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Rel_3085.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;

  if Str_titularidade <> '0' then
  begin
    Dlg_Alerta('Titular deve ser selecionado!', self);
    Exit;
  end;
  with fdt_principal3.spc_cons_adm_extratoCopartTitular do
  begin
    close;
    ParamByName('@inscricao').AsString := edt_inscricao_ben.Text;
    ParamByName('@dtCoparticipacao').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.Text;

    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal3.spc_cons_adm_extratoCopartTitular;
  Frm_Bas_Impressao.FCampo1:= 'Titular: '+edt_carteira.text+'  -  '+edt_nome.Text;
  Frm_Bas_Impressao.FCampo2 := 'Mês/Ano do Desconto: '+cbx_cod_mes.text+'/'+edt_ano.Text;
  Frm_Bas_Impressao.FCampo3 := FNome_Usu;
  Frm_Bas_Impressao.showReport(4247);
  fdt_principal3.spc_cons_adm_extratoCopartTitular.close;
end;

procedure TFrm_Rel_3085.Button1Click(Sender: TObject);
Var
  mes : integer;
  vlTotalCod : double;
  vlArredFinal : double;

begin
  inherited;
  vlTotalCod := 0;
  vlArredFinal := 0;
  DB_OpenSQL('select COD, descricao, valor, valorMes, ValorArred from tmp_LOA2020 where valorMes > 0 order by cod');
  while not Tab.Eof do
  begin
    mes := 1;
    while (mes <= 12) do
    begin
      vlTotalCod := vlTotalCod + Tab.fieldbyName('ValorArred').AsFloat;
      vlArredFinal := Tab.fieldbyName('ValorArred').AsFloat;
      if ( (mes = 12) and (vlTotalCod <> Tab.fieldbyName('valor').AsFloat) ) then
      begin
        //ShowMessage(Tab.fieldbyName('COD').AsString);
        vlArredFinal := Tab.fieldbyName('ValorArred').AsFloat + (Tab.fieldbyName('valor').AsFloat - vlTotalCod);
      end;
      DB_ExecADOSQL('insert into tmp_LOA2020Mensal values ('+Tab.fieldbyName('COD').AsString+','''+ Tab.fieldbyName('descricao').AsString+
      ''', '+IntToStr(mes)+', 2020,'+DB_FormatDataSQL(Tab.fieldbyName('valorMes').AsFloat, ftFloat)+
      ', '+DB_FormatDataSQL(vlArredFinal, ftFloat)+', ''01/01/2020'')');

      mes := mes + 1;
    end;
    vlTotalCod := 0;
    Tab.Next;
  end;
end;

end.



