unit Mov_2058;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_2058 = class(TFrm_Bas_TelaPadrao)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    PDJButton1: TPDJButton;
    cbx_cod_TipoSegurado: TDCComboBox;
    cbx_cod_empresa: TDCComboBox;
    cbx_cod_plano: TDCComboBox;
    edt_dtinscricao_ben: TDCDateEdit;
    edt_dtsituacao_ben: TDCDateEdit;
    edt_dtplano_ben: TDCDateEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    edt_nomepai_ben: TDCEdit;
    edt_nomemae_ben: TDCEdit;
    cbx_cod_tipocoberturaunimed: TDCComboBox;
    cbx_cod_tipocoberturaodonto: TDCComboBox;
    edt_endereco_ben: TDCEdit;
    edt_bairro_ben: TDCEdit;
    cbx_cod_uf: TDCComboBox;
    cbx_cod_cidadeCep: TDCComboBox;
    edt_cep_ben: TMaskEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    edt_rg_ben: TDCEdit;
    edt_cpf_ben: TMaskEdit;
    cbx_cod_empresafolha: TDCComboBox;
    cbx_cod_setoremp: TDCComboBox;
    edt_funcaoemp_seg: TDCEdit;
    edt_fonecome_seg: TDCEdit;
    edt_dtadmiss_seg: TDCDateEdit;
    cbx_cod_situacempr: TDCComboBox;
    edt_dtsituempr_seg: TDCDateEdit;
    cbx_cod_formaadm: TDCComboBox;
    edt_dtlimite_seg: TDCDateEdit;
    Panel11: TPanel;
    cbx_cod_sitbeneficiario: TDCComboBox;
    cbx_cod_tipodependente: TDCComboBox;
    cbx_cod_estfisico: TDCComboBox;
    Panel14: TPanel;
    cbx_cod_ocorrenciaEdital: TDCComboBox;
    procedure FormShow(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
  private
    { Private declarations }
  FPesquisaSQLDefalt : string;
  function CriticaParametros : Boolean ;
  public
    { Public declarations }
    CodRequerimento, DtProtocolo : string;
  end;

var
  Frm_Mov_2058: TFrm_Mov_2058;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
Fun_obj, Fun_ConsCadastro, dtm_principal4, Imp_4107, Fun_Data, Imp_4114,
  Bas_Impressao ;

{$R *.DFM}

function TFrm_Mov_2058.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_empresa.name, 'A Empresa de Origem deve ser Preenchida !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_plano.name, 'O Plano deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O Local de Desconto deve ser Preenchido !', VLD_Preenchido ));
end;

procedure TFrm_Mov_2058.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_TipoSegurado', 'nome_tse');
  BAS_CarregarCombo('cbx_cod_empresa', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_tipocoberturaunimed','descricao_tcu');
  BAS_CarregarCombo('cbx_cod_tipocoberturaodonto','descricao_tco');
  BAS_CarregarCombo('cbx_cod_uf', 'sigla_uf');
  Obj_LoadCombo(Self,'cbx_cod_cidadeCep', 'cidade_cep', 'cod_cidadeCep', 'tbl_cidadeCep'+' order by cidade_cep');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cbx_cod_setoremp', 'nome_ste');
  BAS_CarregarCombo('cbx_cod_situacempr', 'nome_sie');
  BAS_CarregarCombo('cbx_cod_formaadm', 'nome_fad');
  Obj_LoadCombo(Self, 'cbx_cod_ocorrenciaEdital', 'descricao_oce', 'cod_ocorrenciaEdital', 'tbl_ocorrenciaEdital where tipo_oce = ''I'' or tipo_oce = ''M''');
  BAS_CarregarCombo('cbx_cod_sitbeneficiario', 'nome_sit');
  Obj_LoadCombo(Self, 'cbx_cod_tipodependente', 'nome_tdp', 'cod_tipodependente', 'tbl_tipodependente where cod_tipodependente > 0');
  BAS_CarregarCombo('cbx_cod_estfisico', 'nome_efi');

  if DB_OpenSQL('select * from tbl_parametroCadRapido') > 0 then
  begin
    Obj_SetFormObjValueByName(self, cbx_cod_TipoSegurado.Name, Tab.fieldByName('cod_tiposegurado').AsInteger);
    Obj_SetFormObjValueByName(self, cbx_cod_empresa.Name, Tab.fieldByName('cod_empresa').AsInteger);
    Obj_SetFormObjValueByName(self, cbx_cod_plano.Name, Tab.fieldByName('cod_plano').AsInteger);
    edt_dtplano_ben.Date := Tab.fieldByName('dtplano_pcr').AsDateTime;
    edt_dtinscricao_ben.Date := Tab.fieldByName('dtinscricao_pcr').AsDateTime;
    edt_dtsituacao_ben.Date := Tab.fieldByName('dtsituacao_pcr').AsDateTime;
    edt_nomepai_ben.Text := Tab.fieldByName('nomepai_pcr').AsString;
    edt_nomemae_ben.Text := Tab.fieldByName('nomemae_pcr').AsString;
    Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaunimed.Name, Tab.fieldByName('cod_tipocoberturaunimed').AsInteger);
    Obj_SetFormObjValueByName(self, cbx_cod_tipocoberturaodonto.Name, Tab.fieldByName('cod_tipocoberturaodonto').AsInteger);
    edt_endereco_ben.Text := Tab.fieldByName('endereco_pcr').AsString;
    edt_bairro_ben.Text := Tab.fieldByName('bairro_pcr').AsString;
    Obj_SetFormObjValueByName(self, cbx_cod_uf.Name, Tab.fieldByName('cod_uf').AsInteger);
    Obj_SetFormObjValueByName(self, cbx_cod_cidadeCep.Name, Tab.fieldByName('cod_cidadeCep').AsInteger);
    edt_cep_ben.Text := Tab.fieldByName('cep_pcr').AsString;
    edt_rg_ben.Text := Tab.fieldByName('rg_pcr').AsString;
    edt_cpf_ben.Text := Tab.fieldByName('cpf_pcr').AsString;
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.Name, Tab.fieldByName('cod_empresafolha').AsInteger);
    Obj_SetFormObjValueByName(self, cbx_cod_setoremp.Name, Tab.fieldByName('cod_setoremp').AsInteger);
    edt_funcaoemp_seg.Text := Tab.fieldByName('funcaoemp_pcr').AsString;
    edt_fonecome_seg.Text := Tab.fieldByName('fonecome_pcr').AsString;
    Obj_SetFormObjValueByName(self, cbx_cod_situacempr.Name, Tab.fieldByName('cod_situacempr').AsInteger);
    Obj_SetFormObjValueByName(self, cbx_cod_formaadm.Name, Tab.fieldByName('cod_formaadm').AsInteger);
    edt_dtlimite_seg.Date := Tab.fieldByName('dtlimite_pcr').AsDateTime;
    edt_dtadmiss_seg.Date := Tab.fieldByName('dtadmiss_pcr').AsDateTime;
    edt_dtsituempr_seg.Date := Date;
    Obj_SetFormObjValueByName(self, cbx_cod_ocorrenciaEdital.Name, Tab.fieldByName('cod_ocorrenciaEdital').AsInteger);
    Obj_SetFormObjValueByName(self, cbx_cod_sitbeneficiario.Name, Tab.fieldByName('cod_sitbeneficiario').AsString);
    Obj_SetFormObjValueByName(self, cbx_cod_estfisico.Name, Tab.fieldByName('cod_estfisico').AsInteger);
    Obj_SetFormObjValueByName(self, cbx_cod_tipodependente.Name, Tab.fieldByName('cod_tipodependente').AsInteger);
  end;
end;

procedure TFrm_Mov_2058.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  if DB_ExecSQL('update tbl_parametroCadRapido set cod_tiposegurado = '+cbx_cod_TipoSegurado.valueItem+
  ', cod_empresa = '+cbx_cod_empresa.valueItem+', cod_plano = '+cbx_cod_plano.valueItem+
  ', dtplano_pcr = '+DB_FormatDataSQL(edt_dtplano_ben.date, ftDate)+
  ', dtinscricao_pcr = '+DB_FormatDataSQL(edt_dtinscricao_ben.Date, ftDate)+
  ', dtsituacao_pcr = '+DB_FormatDataSQL(edt_dtsituacao_ben.Date, ftDate)+
  ', nomepai_pcr = '+DB_FormatDataSQL(edt_nomepai_ben.text, ftString)+
  ', nomemae_pcr = '+DB_FormatDataSQL(edt_nomemae_ben.Text, ftString)+
  ', cod_tipocoberturaunimed = '+cbx_cod_tipocoberturaunimed.valueItem+
  ', cod_tipocoberturaodonto = '+cbx_cod_tipocoberturaodonto.valueItem+
  ', endereco_pcr = '+DB_FormatDataSQL(edt_endereco_ben.text, ftString)+
  ', bairro_pcr = '+DB_FormatDataSQL(edt_bairro_ben.text, ftString)+
  ', cod_uf = '+cbx_cod_uf.valueitem+
  ', cod_cidadeCep = '+cbx_cod_cidadeCep.valueItem+
  ', cep_pcr = '+DB_FormatDataSQL(edt_cep_ben.Text, ftString)+
  ', rg_pcr = '+DB_FormatDataSQL(edt_rg_ben.text, ftString)+
  ', cpf_pcr = '+DB_FormatDataSQL(edt_cpf_ben.text, ftString)+
  ', cod_empresafolha = '+cbx_cod_empresafolha.valueItem+
  ', cod_setoremp = '+cbx_cod_setoremp.valueItem+
  ', funcaoemp_pcr = '+DB_FormatDataSQL(edt_funcaoemp_seg.text, ftString)+
  ', fonecome_pcr = '+DB_FormatDataSQL(edt_fonecome_seg.text, ftString)+
  ', cod_situacempr = '+cbx_cod_situacempr.valueItem+
  ', cod_formaadm = '+cbx_cod_formaadm.valueItem+
  ', dtlimite_pcr = '+DB_FormatDataSQL(edt_dtlimite_seg.Date, ftDate)+
  ', dtadmiss_pcr = '+DB_FormatDataSQL(edt_dtadmiss_seg.Date, ftDate)+
  ', dtsituempr_pcr = '+DB_FormatDataSQL(edt_dtsituempr_seg.Date, ftDate)+
  ', cod_ocorrenciaEdital = '+cbx_cod_ocorrenciaEdital.ValueItem+
  ', cod_tipodependente = '+cbx_cod_tipodependente.ValueItem+
  ', cod_estfisico = '+cbx_cod_estfisico.ValueItem+
  ', cod_sitbeneficiario = '+cbx_cod_sitbeneficiario.ValueItem) then
    Dlg_Ok('Parâmetros Atualizados com Sucesso!',self)
  else
    Dlg_Alerta('Erro ao Atualizar Parâmetros',self);
end;

end.



