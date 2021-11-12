{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
unit Mov_2061;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList, FileCtrl,
  Psock, NMsmtp;

type
  TFrm_Mov_2061 = class(TFrm_Bas_TelaPadrao)
    pnl_referencia: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    cbx_cod_empresafolha: TDCComboBox;
    Panel1: TPanel;
    btn_localizar: TPDJButton;
    DataSource3: TDataSource;
    lbl_total: TLabel;
    btn_excluir: TPDJButton;
    btn_exportacsv: TPDJButton;
    SaveDialog: TSaveDialog;
    NMSMTP1: TNMSMTP;
    btn_novo: TPDJButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    pgb_registros: TProgressBar;
    stg_audi: TStringGrid;
    procedure btn_localizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_exportacsvClick(Sender: TObject);
    procedure edt_anoExit(Sender: TObject);
    procedure cbx_cod_empresafolhaEnter(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure Tmr_CloseTimer(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    procedure BotoesOnOff(b:boolean);
  public
    { Public declarations }
    wCod_Beneficiario : String;
  end;

var
  Frm_Mov_2061: TFrm_Mov_2061;
  WMES: String[02];
  WANO: String[04];
  WGERAL: Real;
  WAA: String[4];
  Mesant, AnoAnt, AnoDir: Integer;
  TRegT, TRegD, GTRegT, GTRegD: Double;

implementation

uses Fun_Obj, Fun_ConsCadastro, Fun_DB, Fun_Acesso, Constantes,
     dtm_principal6, Bas_Impressao, Dlg_Mensagem, Mov_2037, Fun_data,
     dtm_principal, dtm_principal4, fun_str, Cad_Cep;

{$R *.DFM}

procedure TFrm_Mov_2061.BotoesOnOff(b:boolean);
begin
  btn_novo.Enabled := b ;
  btn_excluir.Enabled := b ;
end;

procedure TFrm_Mov_2061.btn_localizarClick(Sender: TObject);
begin
  inherited;
  FStatus:= 0;
  lbl_total.Visible:= False;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês de Referência deve ser preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'O Ano de Referência deve ser prrenchido !', VLD_Preenchido )) then
//  (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'O Local de Desconto deve ser preenchido !', VLD_Preenchido )) then
    begin
    pnl_referencia.SetFocus;
    FStatus:= 1;
    Exit;
    end;
end;

procedure TFrm_Mov_2061.FormShow(Sender: TObject);
begin
  inherited;
  Memo1.Visible:= False;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_usuario', 'nome_usu');
  BAS_CarregarCombo('cbx_cod_sitcontribPFGB', 'nome_scp');
  BAS_CarregarCombo('cb2_cod_sitcontribPFGB', 'nome_scp');
  BAS_CarregarCombo('cbx_cod_tipodependente', 'nome_tdp');
  BAS_CarregarCombo('cbx_cod_grauparent', 'nome_gra');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  BAS_CarregarCombo('cb2_cod_empresafolha', 'nome_emp');
end;

procedure TFrm_Mov_2061.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal6.spc_cons_adm_contribPFGB.Close;
end;

procedure TFrm_Mov_2061.btn_exportacsvClick(Sender: TObject);
var
  byt_nameofthfile : TextFile;
  str_arquiventrad,
  S, ArqBenef, ArqResumo: String;
  Mesant, AnoAnt, i: Integer;
  Anexo: TStringList;
  Nomearquivo: String;
begin
  btn_localizarClick(Sender);
  if FStatus = 1 then
     Exit;
  DB_OpenSQL('exec spc_adm_geratxtBEM ''' + STR_AddZeros(cbx_cod_mes.valueItem,2) + '/01/' +edt_ano.text+ '''');
  if Tab.RecordCount > 0 then
     pgb_registros.Max := Tab.RecordCount;
  SaveDialog.filename := 'imasf.txt';
  if not SaveDialog.execute then
    exit ;
  btn_localizarClick(Sender);
  if FStatus = 1 then
     Exit;
  pgb_registros.Visible:= True;
  pgb_registros.Position:= 0;
  str_arquiventrad:= 'imasf.txt';
  AssignFile(byt_nameofthfile, str_arquiventrad);
  Rewrite (byt_nameofthfile);
  while not Tab.eof do
     begin
     pgb_registros.Position:= pgb_registros.Position + 1;
     S:= Tab.FieldByName('Campo1').Text +STR_AddSpaces2(Tab.FieldByName('Campo2').Text,173) + STR_AddSpaces2(Tab.FieldByName('Campo3').Text,136);
     Writeln(byt_nameofthfile,S);
     Tab.Next;
     end;
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Adicionado ' + IntToStr(pgb_registros.Position) + ' beneficiários');
  lbl_total.Refresh;
  closefile (byt_nameofthfile);
  pgb_registros.Visible:= False;
  Dlg_Ok('Gerado arquivo ' + str_arquiventrad,self);
  GeraAuditoria(0, '0', 'Gerado txt BEM no mês de ' + cbx_cod_mes.Text+ '/'+ edt_ano.Text +
                ', ' + IntToStr(pgb_registros.Position) + ' beneficiários', '', 0);
end;

procedure TFrm_Mov_2061.edt_anoExit(Sender: TObject);
begin
  inherited;
  if edt_ano.Text <> '' then
  begin
    WAA:= edt_ano.Text;
    AnoDir:= StrToInt(edt_ano.Text);
    if AnoDir < 100 then
       WAA:= '20' + edt_ano.Text;
  end;
end;

procedure TFrm_Mov_2061.cbx_cod_empresafolhaEnter(Sender: TObject);
begin
  inherited;
  Memo1.Clear;
end;

procedure TFrm_Mov_2061.btn_novoClick(Sender: TObject);
begin
  btn_localizarClick(Sender);
  if FStatus = 1 then
     Exit;

  if strtodate('01/'+cbx_cod_mes.valueItem + '/'+edt_ano.text ) > Data_BOM(date+30) then
      begin
      Dlg_Ok('Mês/Ano de Referência não pode ser maior do que a Data do Sistema!',self);
      Exit;
      end;

// Não gera desconto BEM quando titular muda de plano 2 e 3
  if DB_OpenSQL('select a.cod_beneficiario, dtAdesaoBEM_adb, dtFinalBEM_adb, b.inscricao_ben, '+
                'b.nome_ben, b.cod_plano, b2.cod_plano from tbl_adesaoBEM a, tbl_beneficiario b, '+
                'tbl_beneficiario b2, tbl_sitbeneficiario st where a.cod_beneficiario = b.cod_beneficiario and '+
                'b.inscricao_ben = b2.inscricao_ben and b2.titulacartei_ben = 0 and b2.cod_plano in (1,6) '+
                'and dtFinalBEM_adb is null and st.cod_sitbeneficiario = b.cod_sitbeneficiario and '+
                'st.cod_sitbeneficiario = 2 order by b.inscricao_ben') > 0 then
                begin
                Memo1.Visible:= True;
                while not Tab.EOF do
                   begin
                   Memo1.Lines.Add('No.Inscrição ' + Tab.Fields[3].AsString + ', ' + Tab.Fields[4].AsString);
                   Tab.Next;
                   end;
                Dlg_Alerta('Mudança de plano dos Titulares não dá mais direito ao BEM destes beneficiários, favor verificar!', Self);
                Exit;
                end;

// Quando no mês, já foi processado a geração descontos do BEM
  DB_OpenSQL('select count(*) from tbl_descontofolha where dtreferencia_flh = ''' +
              Data_Format('mm-dd-yyyy', Data_BOM(StrToDate('01/'+ cbx_cod_mes.valueItem +
              '/'+edt_ano.text))) + ''' and obs_flh = ''BEM - Mensalidade Dep/Assist''');
  if Tab.Fields[0].AsInteger > 100 then
     begin
     Dlg_Alerta('Geração do Desconto da BEM de ' +
     Data_Format('mmmm/yyyy', Data_BOM(StrToDate('01/'+ cbx_cod_mes.valueItem + '/'+edt_ano.text))) + ' já realizada.', Self);
     Exit;
     end;
  if DB_ExecSQL('exec spc_adm_descontoBEM '+ '2.90' +', ' + '632' + ', ''' +
     Data_Format('mm-dd-yyyy', Data_BOM(StrToDate('01/'+ cbx_cod_mes.valueItem +
     '/'+edt_ano.text))) + ''',' + InttoStr(FCod_Usuario)) then
     begin
     DB_Commit;
     // Para saber quantos registros foram gerados, faço pesquisa dos lançamentos gerados até 10 minutos antes, da mesmo cód.tarifa
     DB_OpenSQL('select cod_descontofolha, DATEDIFF(mi, GetDate(), dtsistema_flh) as dif_horas from tbl_descontofolha '+
                'where dtreferencia_flh = ''' + Data_Format('mm-dd-yyyy', Data_BOM(StrToDate('01/'+ cbx_cod_mes.valueItem +
                '/'+edt_ano.text))) + ''' and DATEDIFF(mi, dtsistema_flh, GetDate()) < 10');
     pgb_registros.Max := 0;
     if Tab.RecordCount > 0 then
        pgb_registros.Max := Tab.RecordCount;

     Dlg_Ok('Descontos do BEM gerados com sucesso, '+ IntToStr(pgb_registros.Max) + ' beneficiários!',Self);
     GeraAuditoria(0, '0', 'Descontos BEM no mês de ' + cbx_cod_mes.Text+ '/'+ edt_ano.Text +
                   ', realizado com sucesso, ' + IntToStr(pgb_registros.Max) + ' beneficiários', '', 0);
     end
  else
     begin
     DB_RollBack;
     Dlg_Alerta('Erro ao gerar descontos do BEM!', Self);
     end;
end;

procedure TFrm_Mov_2061.Tmr_CloseTimer(Sender: TObject);
begin
  inherited;
  pgb_registros.Position:= pgb_registros.Position + Tmr_Close.Interval;
  pgb_registros.Refresh;
end;

procedure TFrm_Mov_2061.TabSheet2Show(Sender: TObject);
begin
  inherited;
  GetInfoAuditoria1ou2(self, stg_audi.name, 999999999, 0);
end;

procedure TFrm_Mov_2061.stg_audiDrawCell(Sender: TObject; ACol,
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

end.


