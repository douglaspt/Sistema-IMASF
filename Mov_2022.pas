unit Mov_2022;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, dbtables, ADODB;

type
  TFriendDS = class(TCustomADODataSet);

type
  TFrm_Mov_2022 = class(TFrm_Bas_TelaPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    cb1_cod_mes: TDCComboBox;
    ed1_ano: TDCEdit;
    Panel7: TPanel;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    Panel1: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    Panel10: TPanel;
    cbx_cod_indice: TDCComboBox;
    Panel6: TPanel;
    edt_multa: TDCEdit;
    Panel8: TPanel;
    edt_juros: TDCEdit;
    Panel5: TPanel;
    edt_btnProxima: TDCDateEdit;
    edt_btnAtual: TDCDateEdit;
    btn_InicioTran: TPDJButton;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    btn_efetuartranferencia: TPDJButton;
    pnl_transacao: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    lbl_linha: TLabel;
    TabSheet2: TTabSheet;
    edt_ver: TEdit;
    edt_aleatorio: TEdit;
    PDJButton3: TPDJButton;
    SpeedButton1: TSpeedButton;
    Mm_mensag: TMemo;
    ckb_todos: TCheckBox;
    btn_cont: TPDJButton;
    stg_audi: TStringGrid;
    TabSheet3: TTabSheet;
    Panel9: TPanel;
    cb3_cod_mes: TDCComboBox;
    ed3_ano: TDCEdit;
    Panel11: TPanel;
    cb2_cod_empresafolha: TDCComboBox;
    btn_suspender: TPDJButton;
    TabSheet4: TTabSheet;
    Panel12: TPanel;
    cb4_cod_mes: TDCComboBox;
    ed4_ano: TDCEdit;
    ado_odonto: TADOConnection;
    Qry_Odonto: TADOQuery;
    Qry_OpenOdonto: TADOQuery;
    GroupBox1: TGroupBox;
    btn_tranfereGestorOdonto: TPDJButton;
    GroupBox2: TGroupBox;
    btn_TransfDescOdonto: TPDJButton;
    TabSheet5: TTabSheet;
    Panel13: TPanel;
    cb5_cod_mes: TDCComboBox;
    ed5_ano: TDCEdit;
    GroupBox3: TGroupBox;
    btn_farmacia: TPDJButton;
    ado_farmacia: TADOConnection;
    Qry_Farmacia: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    ADODataSet1: TADODataSet;
    Panel14: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_efetuartranferenciaClick(Sender: TObject);
    procedure ed1_anoExit(Sender: TObject);
    procedure ed2_anoExit(Sender: TObject);
    procedure btn_InicioTranClick(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_contClick(Sender: TObject);
    procedure ckb_todosClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btn_suspenderClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure btn_tranfereGestorOdontoClick(Sender: TObject);
    procedure btn_TransfDescOdontoClick(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure btn_farmaciaClick(Sender: TObject);
  private
    { Private declarations }
    BTNA, BTNP : double;
    dtrefe, dtTransferencia, dtvencimento : STRING;
    W100: STRING[100];
    tb : tquery;
    i:integer;
    TabADOOdonto : TADOQuery;
    function DB_ExecSQLOdonto(wSQL : String): Boolean ;
    function DB_OpenSQLOdonto(wSQL : String): Integer ;
    function DB_ExecSQLFarmacia(wSQL : String): Boolean ;
    procedure ResolveTimeOut(xForm:TForm); 
  public
    { Public declarations }
    FMesReferencia, FAnoReferencia, FEmpresaFolha : String ;
  end;

var
  Frm_Mov_2022: TFrm_Mov_2022;
  ChaveExp: Integer;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario,
     Fun_Obj, Fun_Acesso, Fun_Data ;

{$R *.DFM}

procedure TFrm_Mov_2022.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Gerar Descontos de Contribui��o de Benefici�rios' ;
//  FEditChave    := 'edt_cod_conveniado' ;
  inherited;
end;

procedure TFrm_Mov_2022.FormShow(Sender: TObject);
begin
  inherited;
  ResolveTimeOut(self);
  BAS_CarregarCombo('cb1_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb3_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb4_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb5_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_indice', 'nome_ind');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
  if FAnoReferencia <> '' then
    ed1_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cb1_cod_mes.name, FMesReferencia);
  if FEmpresaFolha <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
  pnl_transacao.Visible := DB_TranCount > 0;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFrm_Mov_2022.btn_efetuartranferenciaClick(Sender: TObject);
var
  i: Integer;
const
  str='1Aa2Bc3Cc4Dd5Ee6Ff7Gg8Hh9Ii0JjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
begin
  inherited;
  Mm_mensag.Clear;
  {
  if BTNP < BTNA then
    if not Dlg_YesNo('Aten��o a pr�xima BTN � menor que a BTN Atual tem Certeza que deseja continuar!',Self) then
      exit;
  if BTNP = BTNA then
    if Dlg_YesNo('Aten��o: A pr�xima BTN � igual a BTN Atual, tem certeza que deseja continuar?',Self) then
    begin
      SpeedButton1.Visible:= True;
      edt_aleatorio.Visible:= True;
      edt_ver.Visible:= True;
      edt_aleatorio.Text:= '';
      edt_ver.Text:= '';
      Randomize;
      for i:=1 to 4 do
        edt_aleatorio.Text:=edt_aleatorio.Text+str[random(length(str))+1];
      edt_ver.SetFocus;
      Exit;
    end
    else
       exit
  else
  }
   btn_contClick(Sender);
end;

procedure TFrm_Mov_2022.ed1_anoExit(Sender: TObject);
begin
  inherited;
  if (cb1_cod_mes.Text <> '') and (ed1_ano.Text <> '') then begin
    try
      DB_OpenSQL('select vlcota_cti from tbl_cotacaoindice where dtcota_cti = '''+cb1_cod_mes.valueItem + '/01/'+ed1_ano.text+'''');
      BTNA := Tab.Fields[0].AsFloat;
      edt_btnAtual.text := FormatFloat('###,##0.0000',BTNA);
    except
      edt_btnAtual.text := '' ;
    end;
    Obj_SetFormObjValueByName(self, cb2_cod_mes.name, strtoint(Data_Format('mm', Data_Soma1mes(strtodate('01/'+cb1_cod_mes.valueItem+'/'+ed1_ano.text)))));
    ed2_ano.Text := Data_Format('yyyy', Data_Soma1mes(strtodate('01/'+cb1_cod_mes.valueItem+'/'+ed1_ano.text)));
    ed2_anoExit(self);
  end;
end;

procedure TFrm_Mov_2022.ed2_anoExit(Sender: TObject);
begin
  inherited;
  if (cb2_cod_mes.Text <> '') and (ed2_ano.Text <> '') then begin
    try
      DB_OpenSQL('select vlcota_cti from tbl_cotacaoindice where dtcota_cti = '''+cb2_cod_mes.valueItem + '/01/'+ed2_ano.text+'''');
      BTNP := Tab.Fields[0].AsFloat;
      edt_btnProxima.text := FormatFloat('###,##0.0000',BTNP);
    except
      edt_btnProxima.text := '' ;
    end;
  end;
end;

procedure TFrm_Mov_2022.btn_InicioTranClick(Sender: TObject);
begin
  inherited;
  DB_BeginTrans;
  pnl_transacao.Visible := true ;
end;

procedure TFrm_Mov_2022.PDJButton2Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  DB_Commit ;
  if ckb_todos.Checked = False then
     GeraAuditoria(0,'0',cb1_cod_mes.Text + '/'+ ed1_ano.Text +
                   ' transferido p/' + cb2_cod_mes.Text+ '/'+ ed2_ano.Text + ', ' +
                   cbx_cod_empresafolha.Text + ', �ndice ' + cbx_cod_indice.Text +
                   ', Multa ' + edt_multa.Text + '%, Juros ' + edt_juros.Text + '%','', 0)
  else
     begin
     for i := 0 to Mm_mensag.Lines.Count -1 do
         begin
         if Copy(Mm_mensag.Lines[i],1,9) = 'Descontos' then
            GeraAuditoria(0,'0',cb1_cod_mes.Text + '/'+ ed1_ano.Text +
                          ' TODOS transf.p/' + cb2_cod_mes.Text+ '/'+ ed2_ano.Text + ', ' +
                          Copy(Mm_mensag.Lines[i],42,20) + ', �ndice ' + cbx_cod_indice.Text +
                          ', Multa ' + edt_multa.Text + '%, Juros ' + edt_juros.Text + '%','', 0);
         end;
     end;
  pnl_transacao.Visible := false ;
end;

procedure TFrm_Mov_2022.PDJButton1Click(Sender: TObject);
begin
  inherited;
  DB_RollBack ;
  pnl_transacao.Visible := false ;
end;

procedure TFrm_Mov_2022.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if strtodate('01/'+cb1_cod_mes.valueItem + '/'+ed1_ano.text ) >= strtodate('01/'+cb2_cod_mes.valueItem + '/'+ed2_ano.text) then
     begin
     Dlg_Ok('A Data de Refer�ncia n�o pode ser maior do que a Data de Transfer�ncia',self);
     exit;
     end;
  DB_OpenSQL('select count(*) from tbl_descontofolha where dtreferencia_flh = '+dtrefe+
             ' and cod_empresafolha = '+ IntToStr(cbx_cod_empresafolha.valueitem) +' and cod_sitdesconto = 1 ');
  if Tab.Fields[0].AsInteger <= 0 then
     begin
     DB_OpenSQL('select count(*) from tbl_parcelamento p, tbl_descontofolha d where dtvencimento_par = '+dtrefe+
                ' and cod_empresafolha = '+ IntToStr(cbx_cod_empresafolha.valueitem) +' and p.cod_sitdesconto = 1 '+
                'and p.cod_descontofolha = d.cod_descontofolha');
     if Tab.Fields[0].AsInteger <= 0 then
        begin
        if ckb_todos.Checked = False then
           Dlg_Alerta('N�o h� descontos em aberto para o m�s de refer�ncia selecionado.', self)
        else
           Mm_mensag.Lines.Add('N�o h� descontos em aberto para o m�s de refer�ncia selecionado do(a) ' + cbx_cod_empresafolha.Text);
        DB_ClearSQL;
        Exit;
        end
      end;
//  DB_BeginTrans;
  if DB_TranCount <= 0 then
    btn_InicioTranclick(self);
  //Suspende beneficiarios por falta de pagamento
  //DB_ExecSQL('EXEC spc_cont_suspendeFaltaPagto '+ IntToStr(cbx_cod_empresafolha.valueitem) +','+dtrefe);
  //Atualiza historico da data de transferencia por empresa
  DB_ExecSQL('update tbl_loteFolhaDescontos set dtTransferencia_flh = getdate() '+
  ' where cod_empresafolha = '+IntToStr(cbx_cod_empresafolha.valueitem)+' and dtreferencia_flh = '+DB_FormatDataSQL('01/'+
  cb1_cod_mes.valueItem+'/'+ed1_ano.text,ftdate));
  
  //Primeiramente tenta efetuar a transferencia dos parcelamentos atraves da stored procedure
  DB_ExecSQL('EXEC spc_cont_reajusteatrasoParcelamento '+ IntToStr(cbx_cod_empresafolha.valueitem) +', '+
  dtrefe+', '+dtvencimento+','+edt_multa.text+', '+edt_juros.text+', '+cbx_cod_indice.valueitem+', '+str_inttostr(FCod_Usuario));

  //Faz a transferencia de parcelamentos atraves do delphi caso n�o tenha conseguido atraves da SP
  Tb := TQuery.Create(nil);
  with Tb do begin
    DatabaseName := BD_Alias_DataBase ;
    SQL.Add('select cod_descontofolha, nparcela_par, parcelan_par from tbl_parcelamento p where p.cod_sitdesconto = 998  AND dtvencimento_par = '+dtrefe);
    Open;
    while not Eof do
    begin
      DB_ExecSQL('EXEC spc_cont_reagendarParcelamento '+Tb.fieldbyName('cod_descontofolha').AsString+', '+
      Tb.fieldbyName('parcelan_par').AsString);
      next;
    end;

   end;
   DB_ExecSQL('update tbl_parcelamento set cod_sitdesconto = 1 WHERE cod_sitdesconto = 998  AND dtvencimento_par >= '+dtvencimento);

  //Faz a transferencia de descontos (N�o Parcelamentos)
  if (DB_ExecSQL('EXEC spc_cont_reajusteatraso '+ IntToStr(cbx_cod_empresafolha.valueitem) +', '+
      dtrefe+', '+dtvencimento+','+edt_multa.text+', '+edt_juros.text+', '+cbx_cod_indice.valueitem+
      ', '+str_inttostr(FCod_Usuario))) then
      begin
//    DB_Commit ;
     if ckb_todos.Checked = False then
        Dlg_ok('Descontos Transferidos com Sucesso.', self)
     else
        Mm_mensag.Lines.Add('Descontos Transferidos com Sucesso do(a) ' + cbx_cod_empresafolha.Text);
     end
  else
     begin
     DB_RollBack ;
     if ckb_todos.Checked = False then
        Dlg_Erro('N�o foi poss�vel Transferir os Descontos deste M�s.', self)
     else
        Mm_mensag.Lines.Add('N�o foi poss�vel Transferir os Descontos deste M�s do(a) ' + cbx_cod_empresafolha.Text);
     end;
 // DB_ExecSQL('EXEC spc_geraPendenciaFarmaciaConsignum '+dtTransferencia);   -- comentado em 07/10/2020
  EscreveLog(btn_efetuartranferencia.name);
//  end;
end;

procedure TFrm_Mov_2022.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  SpeedButton1.Visible:= False;
  edt_aleatorio.Visible:= False;
  edt_ver.Visible:= False;
  if edt_ver.Text <> edt_aleatorio.Text then
     if Dlg_YesNo('Senha incorreta, tem certeza que deseja continuar!',Self) then
        btn_efetuartranferenciaClick(Sender)
     else
        exit
  else
     btn_contClick(Sender);
end;

procedure TFrm_Mov_2022.btn_contClick(Sender: TObject);
begin
  inherited;
  if (not BAS_ValidarCampo(cb1_cod_mes.name, 'M�s de Refer�ncia da Conta deve ser Preenchida !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(ed1_ano.name, 'Ano de Refer�ncia da Conta deve ser Preenchida !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(cb2_cod_mes.name, 'M�s para transfer�ncia deve ser Preenchido !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(ed1_ano.name, 'Ano para transfer�ncia deve ser Preenchido !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(cbx_cod_indice.name, 'O �ndice de Reajuste deve ser Preenchido !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(edt_multa.name, 'O Percentual de Multa deve ser Preenchido !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(edt_juros.name, 'O Percentual de Juros deve ser Preenchido !', VLD_Preenchido ))
  then exit ;

  if ckb_todos.Checked = False then
     if (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'A Empresa para Desconto deve ser Preenchida !', VLD_Preenchido ))
        then exit ;

  dtrefe := ''''+STR_AddZeros(cb1_cod_mes.valueItem, 2) + '/01/'+ed1_ano.text+'''';
  dtTransferencia := ''''+STR_AddZeros(cb2_cod_mes.valueItem, 2) + '/01/'+ed2_ano.text+'''';
  dtvencimento := ''''+STR_AddZeros(cb2_cod_mes.valueItem, 2) + '/01/'+ed2_ano.text+'''';

  if ckb_todos.Checked = True then
     begin
     DB_OpenADOSQL('select * from tbl_empresafolha where cod_empresafolha <> 99');
     while not tabADO.Eof do
       begin
       cbx_cod_empresafolha.valueitem:= TabADO.Fields[0].Value;
       cbx_cod_empresafolha.Text:= TabADO.Fields[1].Value;
       PDJButton3Click(Sender);
       TabADO.Next;
       end;
     ShowMessage(Mm_mensag.Text);
     end
  else
    PDJButton3Click(Sender);
end;

procedure TFrm_Mov_2022.ckb_todosClick(Sender: TObject);
begin
  inherited;
  cbx_cod_empresafolha.Width:= 233;
  ckb_todos.Left:= 380;
  if ckb_todos.Checked = True then
     begin
     ckb_todos.Left:= 140;
     cbx_cod_empresafolha.Width:= 0;
     end;
end;

procedure TFrm_Mov_2022.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 0;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

procedure TFrm_Mov_2022.stg_audiDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S: String;
  drawrect :trect;
begin
  inherited;
  stg_audi.Brush.Style := (bsSolid);
  if Arow = 0 then
     begin
     stg_audi.Canvas.Font.Style:= [fsbold]; // negrito
     stg_audi.Canvas.Brush.Color:= clBtnFace;
     end
  else
     stg_audi.Canvas.Font.Style:=[];

  S:= (Sender as TStringgrid).Cells[ACol, ARow];
  if Length(S) > 0 then
    begin
    drawrect := rect;
    DrawText((Sender As TStringgrid).canvas.handle, Pchar(S), Length(S), drawrect, dt_calcrect or dt_wordbreak or dt_left );
    if (drawrect.bottom - drawrect.top) > (Sender As TStringgrid).RowHeights[Arow] then
       (Sender As TStringgrid).RowHeights[Arow]:= (drawrect.bottom - drawrect.top)  // changing the row height fires the event again!
    else
      begin
      drawrect.Right := rect.right;
      (Sender As TStringgrid).canvas.fillrect(drawrect);
      DrawText((Sender As TStringgrid).canvas.handle, Pchar(S), Length(S), drawrect, dt_wordbreak or dt_left);
      end;
    end;
end;

procedure TFrm_Mov_2022.btn_suspenderClick(Sender: TObject);
var
  dtrefeBloqueio : String;
begin
  inherited;
  if (not BAS_ValidarCampo(cb3_cod_mes.name, 'M�s de Refer�ncia deve ser Preenchida !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(ed3_ano.name, 'Ano de Refer�ncia deve ser Preenchida !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(cb2_cod_empresafolha.name, 'Empresa para Desconto deve ser Preenchido !', VLD_Preenchido )) then
    Exit;
  dtrefeBloqueio := ''''+STR_AddZeros(cb3_cod_mes.valueItem, 2) + '/01/'+ed3_ano.text+'''';
  if DB_OpenSQL('select * from vw_descontos where cod_empresafolha = '+cb2_cod_empresafolha.valueItem+
  ' and dtreferencia_flh = '+dtrefeBloqueio+' and cod_sitdesconto = 1') > 0 then
  begin
    //Suspende beneficiarios por falta de pagamento
    DB_ExecSQL('EXEC spc_cont_suspendeFaltaPagto '+ IntToStr(cb2_cod_empresafolha.valueitem) +','+dtrefeBloqueio);
    Dlg_OK('Benefici�rios Suspensos com Sucesso!',self);
    GeraAuditoria(0,'0',cb3_cod_mes.Text + '/'+ ed3_ano.Text +', Empresa: '+cb2_cod_empresafolha.Text+
    ' Benefici�rios Suspensos' ,'Bloqueios', 0);
    EscreveLog(btn_suspender.name);
  end
  else
    Dlg_Alerta('N�o h� Descontos em Aberto para este m�s de Refer�ncia!',self);
  cb2_cod_empresafolha.SetFocus;

end;

procedure TFrm_Mov_2022.TabSheet3Show(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(self, cb3_cod_mes.name, FormatDateTime('m',date));
  ed3_ano.Text := FormatDateTime('yyyy',date);
end;

procedure TFrm_Mov_2022.TabSheet4Show(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(self, cb4_cod_mes.name, FormatDateTime('m',date));
  ed4_ano.Text := FormatDateTime('yyyy',date);
  btn_tranfereGestorOdonto.Enabled := Acs_AcessoEspecial('202201');
  btn_TransfDescOdonto.Enabled := Acs_AcessoEspecial('202201');
end;


function TFrm_Mov_2022.DB_ExecSQLOdonto(wSQL : String): Boolean ;
begin
  try
    with Qry_Odonto do begin
      SQL.Clear;
      SQL.Add(wSQL);
      ExecSQL;
      Close;
      SQL.Clear;
      Result := true ;
    end;
  except
    Result := False ;
    MSG_Erro := '' ;
    if pos('Key violation', MSG_Erro) > 0 then
      MSG_Erro := MSG_BD_ERR_KeyViolation
    else
      MSG_Erro := 'Erro ao executar instru��o para Banco de Dados "'+MSG_Erro+'"' ;
    Dlg_Erro(MSG_Erro, Application.MainForm);
  end;
end;

function TFrm_Mov_2022.DB_OpenSQLOdonto(wSQL : String): Integer ;
begin
  try
    with Qry_OpenOdonto do begin
      Close;
      SQL.Clear;
      SQL.Add(wSQL);
      Open;
      if recordcount <> -1 then
        Result := recordcount
      else
        Result := 1 ;
    end;
  except
    Result := -1 ;
//    tabADO.Free;
  end;
end;

function TFrm_Mov_2022.DB_ExecSQLFarmacia(wSQL : String): Boolean ;
begin
  try
    with Qry_Farmacia do begin
      SQL.Clear;
      SQL.Add(wSQL);
      ExecSQL;
      Close;
      SQL.Clear;
      Result := true ;
    end;
  except
    Result := False ;
    MSG_Erro := '' ;
    if pos('Key violation', MSG_Erro) > 0 then
      MSG_Erro := MSG_BD_ERR_KeyViolation
    else
      MSG_Erro := 'Erro ao executar instru��o para Banco de Dados "'+MSG_Erro+'"' ;
    Dlg_Erro(MSG_Erro, Application.MainForm);
  end;
end;

procedure TFrm_Mov_2022.btn_tranfereGestorOdontoClick(Sender: TObject);
var
  dtrefeTranf : String;
  resultado : boolean;
begin
  inherited;
  resultado := true;
  if (not BAS_ValidarCampo(cb4_cod_mes.name, 'M�s de Refer�ncia deve ser Preenchida !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(ed4_ano.name, 'Ano de Refer�ncia deve ser Preenchida !', VLD_Preenchido )) then
    Exit;
  dtrefeTranf := ''''+STR_AddZeros(cb4_cod_mes.valueItem, 2) + '/01/'+ed4_ano.text+'''';
  DB_OpenSQL('select dtTranfOdonto_flh from tbl_lotefolhadescontos'+
  ' where dtreferencia_flh = '+dtrefeTranf);
  if Tab.FieldByName('dtTranfOdonto_flh').AsString <> '' then
  begin
    Dlg_Alerta('M�s/Ano de refer�ncia j� esta fechado! N�o foi possivel Transferir.',self);
    Exit;
  end;
  ado_odonto.Connected := false;
  ado_odonto.Connected := true;
  resultado := DB_ExecSQLOdonto('begin tran');
  if resultado then
    resultado := DB_ExecSQLOdonto('exec spc_baixaDescontos '+dtrefeTranf);
  if resultado then
    resultado := DB_ExecSQLOdonto('commit')
  else
    DB_ExecSQLOdonto('rollback');
  if resultado then
    resultado := DB_ExecSQLOdonto('exec spc_repassaParaHistorico '+dtrefeTranf);
  Application.ProcessMessages;
  if resultado then
  begin
    Dlg_Ok('Transfer�ncia efetuada com sucesso!',self);
    GeraAuditoria(0,'0',cb4_cod_mes.Text + '/'+ ed4_ano.Text +', Transfer�ncia Odonto' ,'Tranferido para o Gestor', 0);
  end
  else
    Dlg_Alerta('Erro ao Tranferir! Efetuar Procedimento novamente.',self);
 // end;
  ado_odonto.Connected := false;
end;

procedure TFrm_Mov_2022.btn_TransfDescOdontoClick(Sender: TObject);
var
  dtrefeTranf : String;
  resultado : boolean;
begin
  inherited;
  ado_odonto.Connected := false;
  resultado := true;
  if (not BAS_ValidarCampo(cb4_cod_mes.name, 'M�s de Refer�ncia deve ser Preenchida !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(ed4_ano.name, 'Ano de Refer�ncia deve ser Preenchida !', VLD_Preenchido )) then
    Exit;
  dtrefeTranf := ''''+STR_AddZeros(cb4_cod_mes.valueItem, 2) + '/01/'+ed4_ano.text+'''';
  DB_OpenSQL('select dtDebOdonto_flh from tbl_lotefolhadescontos'+
  ' where dtreferencia_flh = '+dtrefeTranf);
  if Tab.FieldByName('dtDebOdonto_flh').AsString <> '' then
  begin
    Dlg_Alerta('M�s/Ano de refer�ncia j� esta fechado! N�o foi possivel Transferir.',self);
    Exit;
  end;
  try
    ado_odonto.Connected := true;
  except
    Dlg_Alerta('Falha na Conex�o com o Banco de Dados! Efetuar Procedimento novamente.',self);
    Exit;
  end;
  if ado_odonto.Connected then
  begin
    if DB_OpenSQLOdonto('select * from desconto where referencia = '+dtrefeTranf) > 0 then
    begin
      resultado := DB_ExecSQLOdonto('begin tran');
      if resultado then
        resultado := DB_ExecSQLOdonto('exec spc_enviaDescontosFolha');
      if resultado then
        resultado := DB_ExecSQLOdonto('commit')
      else
        DB_ExecSQLOdonto('rollback');
      Application.ProcessMessages;
      if resultado then
      begin
        Dlg_Ok('Transfer�ncia efetuada com sucesso!',self);
        GeraAuditoria(0,'0',cb4_cod_mes.Text + '/'+ ed4_ano.Text +', Transfer�ncia Odonto' ,'Tranferido para o Sistema IMASF', 0);
      end
      else
        Dlg_Alerta('Erro ao Tranferir! Efetuar Procedimento novamente.',self);
    end
    else
      Dlg_Alerta('N�o h� Descontos lan�ados no Portal Odonto para esse M�s/Ano de referencia!',self);
  end;
end;

procedure TFrm_Mov_2022.TabSheet5Show(Sender: TObject);
begin
  inherited;
  Obj_SetFormObjValueByName(self, cb5_cod_mes.name, FormatDateTime('m',date));
  ed5_ano.Text := FormatDateTime('yyyy',date);
  DB_OpenSQL('select max(dtenvio_flh) as dtenvio_flh from imasf.dbo.tbl_loteFolhaDescontos where cod_empresafolha = 5');
  edt_dtinicial.Date := Tab.FieldByName('dtenvio_flh').AsDateTime+1;
  edt_dtfinal.Date := StrToDate(FormatDateTime('05/mm/yyyy',Date));
  btn_farmacia.Enabled := Acs_AcessoEspecial('202201');

end;

procedure TFrm_Mov_2022.ResolveTimeOut(xForm:TForm); 
var I: integer;
begin
  with xForm do
  begin
    for I := 0 to ComponentCount - 1 do
      if (Components[I] is TADOStoredProc) or (Components[I] is TADOQuery) then
        TFriendDS(Components[I]).CommandTimeout := 999999;
  end;
end;



procedure TFrm_Mov_2022.btn_farmaciaClick(Sender: TObject);
var
  dtrefeTranf : String;
  resultado : boolean;
begin
  inherited;
 // Components[I]).CommandTimeout := 999999;

  ado_farmacia.CommandTimeOut := 0;
 // Qry_Farmacia.CommandTimeout := 9999999;
  ado_farmacia.Connected := false;
  ado_farmacia.Connected := true;
  resultado := true;
  if (not BAS_ValidarCampo(cb5_cod_mes.name, 'M�s de Refer�ncia deve ser Preenchida !', VLD_Preenchido ))
  or (not BAS_ValidarCampo(ed5_ano.name, 'Ano de Refer�ncia deve ser Preenchida !', VLD_Preenchido )) then
    Exit;
  dtrefeTranf := ''''+STR_AddZeros(cb5_cod_mes.valueItem, 2) + '/01/'+ed5_ano.text+'''';

  resultado := DB_ExecSQLFarmacia('begin tran');
  if resultado then
    resultado := DB_ExecSQLFarmacia('spc_proc_enviaDescontosFolhaConsignum 5,'+dtrefeTranf+',''O'','''+FormatDateTime('mm/dd/yyyy', edt_dtfinal.Date)+'''');
  if resultado then
    resultado := DB_ExecSQLFarmacia('commit')
  else
    DB_ExecSQLFarmacia('rollback');
  Application.ProcessMessages;
  if resultado then
  begin
    Dlg_Ok('Transfer�ncia efetuada com sucesso!',self);
    GeraAuditoria(0,'0',cb5_cod_mes.Text + '/'+ ed5_ano.Text +', Transfer�ncia Farm�cia' ,'Tranferido para o Sistema IMASF', 0);
  end
  else
    Dlg_Alerta('Erro ao Tranferir! Efetuar Procedimento novamente.',self);
 // end;
  ado_farmacia.Connected := false;
end;

end.



