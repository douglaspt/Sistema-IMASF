unit Mov_2034;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Mov_2034 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    edt_cod_conveniado: TDCEdit;
    btn_excluir: TPDJButton;
    Panel4: TPanel;
    edt_sequenciaconta_ctm: TDCEdit;
    Panel5: TPanel;
    edt_sequenciaitem_itc: TDCEdit;
    Btn_LimpaCampos: TPDJButton;
    edt_nome_ben: TDCEdit;
    edt_itemservico: TDCEdit;
    SpeedButton6: TSpeedButton;
    Panel1: TPanel;
    edt_ano: TDCEdit;
    edt_sequencia_cta: TDCEdit;
    cbx_cod_mes: TDCComboBox;
    Label1: TLabel;
    procedure btn_excluirClick(Sender: TObject);
    procedure Btn_LimpaCamposClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
    function BAS_ValidarCadastro: boolean ;
    procedure CarregarCombos;
  public
    { Public declarations }
    FCod_Conveniado, FMes, FAno, FSeq, FSeqconta, FSeqItem  : String ;
  end;

var
  Frm_Mov_2034: TFrm_Mov_2034;

implementation
uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
  dtm_principal4, Fun_Obj ;

{$R *.DFM}

function TFrm_Mov_2034.BAS_ValidarCadastro: boolean ;
begin
  result := true ;
  if (not BAS_ValidarCampo(edt_cod_conveniado.name, 'O Cod. Conveniado deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_mes.name, 'O mês de Referência deve sser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser Preenchido!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequencia_cta.name, 'A Sequencia deve ser Preenchida!', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_sequenciaconta_ctm.name, 'A Sequencia da Conta deve ser Preenchida!', VLD_Preenchido )) then
  Exit;
  result := false ;
end;

procedure TFrm_Mov_2034.CarregarCombos;
begin
  Obj_LoadCombo(self,'cbx_cod_mes','nome_mes','cod_mes', 'tbl_mes');
end;

procedure TFrm_Mov_2034.btn_excluirClick(Sender: TObject);
begin
  inherited;
  if BAS_ValidarCadastro then Exit ;
  DB_OpenSQL('select dtrepasse_cta from tbl_lotecontamedica where cod_conveniado = '+
  edt_cod_conveniado.Text+' and dtreferencia_cta = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.text+
  ''' and sequencia_cta = '+edt_sequencia_cta.text);
  if Tab.fieldbyname('dtrepasse_cta').AsString <> '' then begin
    Dlg_Alerta('Não é possível Excluir porque a conta ja foi Repassada !', self);
    exit;
  end;


  if edt_sequenciaitem_itc.Text = '' then
  begin
    if Dlg_YesNo('Tem Certeza que deseja Excluir a Conta!',self) then begin
      DB_ExecSQL('delete from tbl_itemconta where cod_conveniado = '+edt_cod_conveniado.text+
      ' and dtreferencia_cta = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+
      ''' and sequencia_cta = '+edt_sequencia_cta.Text+' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text);
      if DB_ExecSQL('delete from tbl_contamedica where cod_conveniado = '+edt_cod_conveniado.text+
      ' and dtreferencia_cta = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+
      ''' and sequencia_cta = '+edt_sequencia_cta.Text+' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text) then
      begin
        Obj_EmptyEditTag(self,1);
      end;
    end;
  end
  else begin
    if Dlg_YesNo('Tem Certeza que deseja Excluir o Item da Conta!',self) then begin
      if DB_ExecSQL('delete from tbl_itemconta where cod_conveniado = '+edt_cod_conveniado.text+
      ' and dtreferencia_cta = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+
      ''' and sequencia_cta = '+edt_sequencia_cta.Text+' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text+
      ' and sequenciaitem_itc = '+edt_sequenciaitem_itc.Text) then
      begin
        Obj_EmptyEditTag(self,1);
      end;
    end;
  end;
end;

procedure TFrm_Mov_2034.Btn_LimpaCamposClick(Sender: TObject);
begin
  inherited;
  Obj_EmptyEditTag(self,0);
  Obj_EmptyEditTag(self,1);
  cbx_cod_mes.Refresh;
  CarregarCombos;
end;

procedure TFrm_Mov_2034.FormShow(Sender: TObject);
begin
  inherited;
  CarregarCombos;
  if FCod_Conveniado <> '' then begin
    edt_cod_conveniado.Text := FCod_Conveniado;
    Obj_SetFormObjValueByName(self,'cbx_cod_mes',FMes);
    edt_ano.Text := Fano;
    edt_sequencia_cta.Text := Fseq;
    edt_sequenciaconta_ctm.Text := FSeqconta;
    edt_sequenciaitem_itc.Text := FSeqItem;
  end;
end;

procedure TFrm_Mov_2034.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if BAS_ValidarCadastro then Exit ;
  DB_OpenSQL('select cod_beneficiario, nomebenefi_ctm from tbl_contamedica'+
  ' where cod_conveniado = '+edt_cod_conveniado.Text+' and dtreferencia_cta = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+
  ''' and sequencia_cta = '+edt_sequencia_cta.Text+' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text);
  edt_nome_ben.Text := Tab.fieldByName('cod_beneficiario').AsString+' - '+Tab.fieldByName('nomebenefi_ctm').AsString;
  if edt_sequenciaitem_itc.Text <> '' then begin
    DB_OpenSQL('select cod_itemservico, descricao_itc from tbl_itemconta'+
    ' where cod_conveniado = '+edt_cod_conveniado.Text+' and dtreferencia_cta = '''+cbx_cod_mes.valueItem+'/01/'+edt_ano.Text+
    ''' and sequencia_cta = '+edt_sequencia_cta.Text+' and sequenciaconta_ctm = '+edt_sequenciaconta_ctm.Text+
    ' and sequenciaitem_itc = '+edt_sequenciaitem_itc.Text);
    edt_itemservico.Text := Tab.fieldByName('cod_itemservico').AsString+' - '+Tab.fieldByName('descricao_itc').AsString;
  end;
end;

end.



