unit Mov_2037;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList;

type
  TFrm_Mov_2037 = class(TFrm_Bas_TelaPadrao)
    ImageList1: TImageList;
    Panel4: TPanel;
    lsv_sugestaoCompra: TListView;
    Panel1: TPanel;
    edt_cod_fornecedorFarmacia: TDCChoiceEdit;
    Panel5: TPanel;
    edt_razaoSocial_ffa: TDCEdit;
    edt_cod_fornecedorSIAF: TDCEdit;
    edt_apelido_ffa: TDCEdit;
    PDJButton1: TPDJButton;
    edt_qtde: TDCEdit;
    Label1: TLabel;
    btn_solicitar: TPDJButton;
    cbx_tipo: TComboBox;
    Label2: TLabel;
    PDJButton2: TPDJButton;
    edt_cod_pedidoCompraFarmacia: TBEdit;
    Label3: TLabel;
    procedure edt_cod_fornecedorFarmaciaButtonClick(Sender: TObject);
    procedure btn_solicitarClick(Sender: TObject);
    procedure edt_qtdeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    ListItem: TListItem;
  public
    { Public declarations }
    FCodPedidoCompraFarmacia : string;
  end;

var
  Frm_Mov_2037: TFrm_Mov_2037;

implementation

uses Fun_Obj, Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes,
  dtm_principal6, Bas_Impressao, Dlg_Mensagem;
{$R *.DFM}



procedure TFrm_Mov_2037.edt_cod_fornecedorFarmaciaButtonClick(
  Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(Self, 'edt_cod_fornecedorFarmacia',
  Cons_ConsultaCadastro(self, 'tbl'+Copy('edt_cod_fornecedorFarmacia',8,length('edt_cod_fornecedorFarmacia')),
  'cod_fornecedorFarmacia, cod_fornecedorSIAF, razaoSocial_ffa, apelido_ffa', 'Código, Cod. Fornecedor, Razão Social, Apelido',
  'Localizar Fornecedor', '', true));
  if edt_cod_fornecedorFarmacia.Text <> '' then
    DB_OpenSQL('select cod_fornecedorSIAF, razaoSocial_ffa, apelido_ffa from'+
    ' tbl_fornecedorFarmacia where cod_fornecedorFarmacia = '+edt_cod_fornecedorFarmacia.Text);
    edt_cod_fornecedorSIAF.Text := Tab.FieldByName('cod_fornecedorSIAF').AsString;
    edt_razaoSocial_ffa.Text := Tab.FieldByName('razaoSocial_ffa').AsString;
    edt_apelido_ffa.Text := Tab.FieldByName('apelido_ffa').AsString;  
//  edt_cod_fornecedorFarmaciaExit(self);
end;

procedure TFrm_Mov_2037.btn_solicitarClick(Sender: TObject);
begin
  inherited;
  lsv_sugestaoCompra.Items[lsv_sugestaoCompra.Selected.Index].SubItems.Strings[1] := edt_qtde.Text;
  lsv_sugestaoCompra.Items[lsv_sugestaoCompra.Selected.Index].ImageIndex := 1;
  edt_apelido_ffa.SetFocus;
  edt_qtde.Text := '';
end;

procedure TFrm_Mov_2037.edt_qtdeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 13 then
  begin
    btn_solicitarClick(self);
  end;
end;

procedure TFrm_Mov_2037.PDJButton1Click(Sender: TObject);
var
  FCod_pedido : string;
  cont : integer;
begin
  inherited;
  if lsv_sugestaoCompra.Items.Count = 0 then
    exit;
  if not BAS_ValidarCampo(edt_cod_fornecedorFarmacia.Name,'O Código deve ser preenchido !',VLD_Preenchido) then
    exit;
  FCod_pedido := edt_cod_pedidoCompraFarmacia.text;  //DB_GetPrimaryKey();
  DB_ExecSQL('delete tbl_pedidoCompraFarmacia where cod_pedidoCompraFarmacia = '+edt_cod_pedidoCompraFarmacia.text+
  ' and cod_fornecedorFarmacia = '+edt_cod_fornecedorFarmacia.Text);
  DB_ExecSQL('DELETE tbl_itemPedidoCompraFarmacia FROM tbl_estoqueFarmacia e, tbl_fornecedorFarmacia f '+
  ' where tbl_itemPedidoCompraFarmacia.cod_medicamento = e.cod_medicamento and e.cod_fornecedorSIAF = f.cod_fornecedorSIAF '+
  ' and cod_pedidoCompraFarmacia = '+edt_cod_pedidoCompraFarmacia.text+' and cod_fornecedorFarmacia = '+edt_cod_fornecedorFarmacia.Text);
  DB_ExecSQL('insert into tbl_pedidoCompraFarmacia (cod_fornecedorFarmacia, cod_pedidoCompraFarmacia, dtpedido_pcf, cod_usuario)'+
  ' values ('+edt_cod_fornecedorFarmacia.Text+','+FCod_pedido+', getdate(), '+IntToStr(FCod_Usuario)+')');
  cont := 0;
  while lsv_sugestaoCompra.Items.Count > cont do
  begin
    if lsv_sugestaoCompra.Items[cont].SubItems.Strings[1] <> '' then
      DB_ExecSQL('insert into tbl_itempedidoCompraFarmacia (cod_pedidoCompraFarmacia, cod_medicamento, qtde_ipf)'+
      ' values ('+FCod_pedido+','+lsv_sugestaoCompra.Items[cont].SubItems.Strings[0]+','+
      lsv_sugestaoCompra.Items[cont].SubItems.Strings[1]+')');
    cont := cont + 1;
  end;
  if Dlg_YesNo('Deseja Imprimir o Pedido de Compra da Farmácia ?',self) then begin
    with fdt_principal6.spc_cons_farm_pedidoCompraFarmacia do
    begin
      close;
      ParamByName('@cod_pedidoCompraFarmacia').AsString := edt_cod_pedidoCompraFarmacia.Text;
      ParamByName('@cod_fornecedorFarmacia').AsString := edt_cod_fornecedorFarmacia.Text;
      open;
      if recordcount = 0 then begin
        Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
        close;
        exit;
      end;
    end;
    Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_farm_pedidoCompraFarmacia;
    Frm_Bas_Impressao.showReport(4147);
    fdt_principal6.spc_cons_farm_pedidoCompraFarmacia.close;
  end;
  lsv_sugestaoCompra.Items.Clear;
  Obj_EmptyEdit(self);
  edt_cod_fornecedorFarmacia.SetFocus;
end;

procedure TFrm_Mov_2037.PDJButton2Click(Sender: TObject);
begin
  inherited;
  DB_OpenSQL('SELECT ASCF.cod_medicamento, ASCF.descricao_med, ASCF.TP1, ASCF.TP2, ASCF.FORN, ASCF.PC, ASCF.PUV, ASCF.E1, ASCF.E2, ASCF.QUANTAB, '+
  ' ASCF.ORDCOMP, ASCF.UE, ASCF.ESMI2, ASCF.ESMA1, ASCF.SUGESTAO, ASCF.QTE, ASCF.PR_SUG, ASCF.ATU, ASCF.A1, ASCF.A2, ASCF.A3, '+
  ' ASCF.APAGA AS REGISTRO, ip.qtde_ipf, ip.cod_pedidoCompraFarmacia FROM aux_sugestaoCompra ASCF left JOIN '+
  ' tbl_itemPedidoCompraFarmacia ip ON ASCF.cod_medicamento = ip.cod_medicamento  AND (ip.cod_pedidoCompraFarmacia = '+edt_cod_pedidoCompraFarmacia.text+') '+
  'WHERE FORN = '''+edt_cod_fornecedorSIAF.Text+''' and TP1 = '''+copy(cbx_tipo.text,1,3)+''' ORDER BY ASCF.descricao_med');
  lsv_sugestaoCompra.Items.Clear;
  while not Tab.Eof do
  begin
    ListItem := lsv_sugestaoCompra.Items.Add;
    ListItem.Caption := Tab.fieldbyName('descricao_med').AsString;
    ListItem.SubItems.Add(Tab.fieldbyName('cod_medicamento').AsString);
    ListItem.SubItems.Add(Tab.fieldbyName('qtde_ipf').AsString);
    ListItem.SubItems.Add(Tab.fieldbyName('SUGESTAO').AsString);
    ListItem.SubItems.Add(Tab.fieldbyName('PC').AsString);
    ListItem.SubItems.Add(Tab.fieldbyName('PUV').AsString);
    ListItem.SubItems.Add(Tab.fieldbyName('E1').AsString);
    ListItem.SubItems.Add(Tab.fieldbyName('PC').AsString);
    ListItem.SubItems.Add(Tab.fieldbyName('UE').AsString);
    ListItem.SubItems.Add(FormatFloat('####0',  (Tab.fieldbyName('A1').AsFloat + Tab.fieldbyName('A2').AsFloat + Tab.fieldbyName('A3').AsFloat + 0.001)/3));
    ListItem.SubItems.Add(Tab.fieldbyName('ATU').AsString);
    ListItem.SubItems.Add(Tab.fieldbyName('A1').AsString);
    ListItem.SubItems.Add(Tab.fieldbyName('A2').AsString);
    ListItem.SubItems.Add(Tab.fieldbyName('A3').AsString);
    ListItem.ImageIndex := 0;
    Tab.Next;
  end;
end;

procedure TFrm_Mov_2037.FormShow(Sender: TObject);
begin
  inherited;
  if FCodPedidoCompraFarmacia <> '' then
  edt_cod_pedidoCompraFarmacia.Text := FCodPedidoCompraFarmacia;
end;

end.



