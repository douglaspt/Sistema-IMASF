unit Mov_2055;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BComboBox, ShellApi;

type
  TFrm_Mov_2055 = class(TFrm_Bas_TelaPadrao)
    DataSource1: TDataSource;
    Image2: TImage;
    Panel6: TPanel;
    dbg_conveniado: TDBGrid;
    Panel4: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    SpeedButton6: TSpeedButton;
    GroupBox1: TGroupBox;
    Panel13: TPanel;
    edt_dtdesconto_flh: TDCDateEdit;
    Panel1: TPanel;
    cb2_cod_mes: TDCComboBox;
    ed2_ano: TDCEdit;
    btn_gerardesconto: TPDJButton;
    GroupBox2: TGroupBox;
    Panel5: TPanel;
    ed2_dtdesconto_flh: TDCDateEdit;
    Panel7: TPanel;
    cb3_cod_mes: TDCComboBox;
    ed3_ano: TDCEdit;
    lbl_total: TLabel;
    PDJButton8: TPDJButton;
    SaveDialog: TSaveDialog;
    pgb_registros: TProgressBar;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btn_gerardescontoClick(Sender: TObject);
    procedure PDJButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbx_cod_mesEnter(Sender: TObject);
  private
    { Private declarations }
    FPesquisaSQLDefalt : String ;
    FStatus2 : Integer ;
  public
    { Public declarations }
  end;

var
  Frm_Mov_2055: TFrm_Mov_2055;
  str_arquiventrad, s: String;
  byt_nameofthfile : TextFile;

implementation

uses dtm_principal, DLG_Mensagem, Fun_DB, FUN_STR, Constantes, Fun_beneficiario, Fun_Acesso,
  dtm_principal4, Fun_Obj, dtm_principal6, Fun_ConsCadastro, Fun_Data, Fun_Medico, Fun_Desconto, Fun_Contabil;

{$R *.DFM}

procedure TFrm_Mov_2055.FormShow(Sender: TObject);
begin
  inherited;
  fdt_principal4.spc_cons_med_contaBenefNaoEstaTratamento.Close;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb3_cod_mes', 'nome_mes');
  //busca data de fechamento da empresa prefeitura -- demais empresas tem a mesma data da prefeitura
  DB_OpenSQL('select max(dtenvio_flh) from tbl_lotefolhadescontos where cod_empresafolha = 5');
  Obj_SetFormObjValueByName(self,'cb2_cod_mes', Data_Month(Data_Soma1mes(tab.fields[0].AsDateTime)));
  ed2_ano.Text := IntToStr(Data_Year(Data_Soma1mes(tab.fields[0].AsDateTime)));
  //busca data de fechamento da empresa Tesouraria
  DB_OpenSQL('select max(dtenvio_flh) from tbl_lotefolhadescontos where cod_empresafolha = 99');
  Obj_SetFormObjValueByName(self,'cb3_cod_mes', Data_Month(Data_Soma1mes(Data_Soma1mes(tab.fields[0].AsDateTime))));
  ed3_ano.Text := IntToStr(Data_Year(Data_Soma1mes(Data_Soma1mes(tab.fields[0].AsDateTime))));
  edt_dtdesconto_flh.Date := Date;
  ed2_dtdesconto_flh.Date := date;
end;

procedure TFrm_Mov_2055.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if ( not BAS_ValidarCampo(cbx_cod_mes.name,'O Mês de Referência deve ser Preenchido!',VLD_Preenchido)) or
  ( not BAS_ValidarCampo(edt_ano.name,'O Ano de Referência deve ser Preenchido!',VLD_Preenchido)) then
    Exit;
  with fdt_principal4.spc_cons_med_contaBenefNaoEstaTratamento do
  begin
    close;
    ParamByName('@dtreferencia_cta').AsString := cbx_cod_mes.valueItem+'/01/'+edt_ano.Text;
    open;
    lbl_total.Caption := 'Total de Descontos => '+IntToStr(DB_RollCount);
  end;
  PDJButton8.Enabled:= True;
end;

procedure TFrm_Mov_2055.btn_gerardescontoClick(Sender: TObject);
begin
  inherited;
 { if (STR_StrToInt(FormatDateTime('yyyymm', edt_dtnovodesconto.date))) <=
  (STR_StrToInt(FormatDateTime('yyyymm', Ctb_DtUltimoEnvioGerado(cbx_cod_empresafolha.valueitem)))) then
  begin
    Dlg_OK('A folha do mês de "'+Data_GetMonthName(StrToInt(FormatDateTime('mm',edt_dtnovodesconto.date)))+
    '" já foi gerada, assim não se pode mais efetuar lançamentos para este mês',self);
    Exit;
  end;  }
  if (STR_StrToInt(ed2_ano.Text+STR_AddZeros(cb2_cod_mes.ValueItem,2)) <=
     STR_StrToInt(FormatDateTime('yyyymm', Ctb_DtUltimoEnvioGerado('5')))) then
     begin
     Dlg_OK('A folha do mês de '+ cb2_cod_mes.Text + '/' + ed2_ano.Text +
            ' já foi gerada, assim não se pode mais efetuar lançamentos para este mês.',self);
     Exit;
     end;

  if ( not BAS_ValidarCampo(cb2_cod_mes.name,'O Mês de Referência deve ser Preenchido!',VLD_Preenchido)) or
  ( not BAS_ValidarCampo(ed2_ano.name,'O Ano de Referência deve ser Preenchido!',VLD_Preenchido)) or
  ( not BAS_ValidarCampo(edt_dtdesconto_flh.name,'A data do Desconto deve ser Preenchida!',VLD_DataPreenchida)) then
    Exit;

  if dbg_conveniado.FieldCount > 0 then
  begin
    if Dlg_YesNo('Confere os Dados ? Confirma Salvar ?', self) then
    begin
      try
        DB_BeginTrans;
        with fdt_principal4.spc_cons_med_contaBenefNaoEstaTratamento do
        begin
          First;
          while not Eof do
          begin
            if FieldByName('cod_empresafolha').AsInteger = 99 then
            begin
              if not Set_IncluirDesconto(FieldByName('cod_beneficiario').AsString, FieldByName('matriculadebito_seg').AsString,
              FieldByName('digitomatdeb_seg').AsString, FieldByName('vlParticipacao_ihp').AsString ,'0', '632', FieldByName('cod_empresafolha').AsString,
//              FieldByName('digitomatdeb_seg').AsString, '15,00','0', '632', FieldByName('cod_empresafolha').AsString,
              cb3_cod_mes.valueItem, ed3_ano.text, ed2_dtdesconto_flh.Date,
              FieldByName('cod_conveniado').AsString+' - '+FormatDateTime('mm/yyyy', FieldByName('dtreferencia_cta').AsDateTime)+' - '+
              FieldByName('sequencia_cta').AsString+' - '+FieldByName('sequenciaconta_ctm').AsString+' - '+
              FormatDateTime('dd/mm/yyyy',FieldByName('dtentrada_ctm').AsDateTime), FCod_Usuario, FCod_TelaSistema) then
              begin
                DB_RollBack;
                Dlg_Erro( 'Atenção, Erro ao tentar Gerar os Descontos', self);
                Application.Terminate;
              end;
            end
            else
            begin
              if not Set_IncluirDesconto(FieldByName('cod_beneficiario').AsString, FieldByName('matriculadebito_seg').AsString,
//              FieldByName('digitomatdeb_seg').AsString, '15,00','0', '632', FieldByName('cod_empresafolha').AsString,
              FieldByName('digitomatdeb_seg').AsString, FieldByName('vlParticipacao_ihp').AsString,'0', '632', FieldByName('cod_empresafolha').AsString,
              cb2_cod_mes.valueItem, ed2_ano.text, edt_dtdesconto_flh.Date,
              FieldByName('cod_conveniado').AsString+' - '+FormatDateTime('mm/yyyy', FieldByName('dtreferencia_cta').AsDateTime)+' - '+
              FieldByName('sequencia_cta').AsString+' - '+FieldByName('sequenciaconta_ctm').AsString+' - '+
              FormatDateTime('dd/mm/yyyy',FieldByName('dtentrada_ctm').AsDateTime), FCod_Usuario, FCod_TelaSistema) then
              begin
                DB_RollBack;
                Dlg_Erro( 'Atenção, Erro ao tentar Gerar os Descontos', self);
                Application.Terminate;
              end;
            end;
            Next;
          end;
        end;
        DB_Commit;
        Dlg_Ok('Descontos Gerados com Sucesso',self);
        lbl_total.Caption := 'Total de Descontos => '+IntToStr(DB_RollCount);
        fdt_principal4.spc_cons_med_contaBenefNaoEstaTratamento.close;
      except
        DB_RollBack;
        Dlg_Erro( 'Atenção, Erro ao tentar Gerar os Descontos', self);
      end;
    end;
  end;
end;

procedure TFrm_Mov_2055.PDJButton8Click(Sender: TObject);
Var
  Algo: String;
begin
  inherited;
  if dbg_conveniado.DataSource.DataSet.RecordCount < 1 then
     Exit;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.execute then
     begin
       str_arquiventrad:= SaveDialog.filename;
       AssignFile(byt_nameofthfile, str_arquiventrad);
       Rewrite (byt_nameofthfile);
       S:= 'Mês/Ano;Referência ' + cbx_cod_mes.Text + '/' + edt_ano.Text;
       Writeln(byt_nameofthfile,S);
       S:= '';
       Writeln(byt_nameofthfile,S);
       S:= 'Cod.Convêniado;Convêniado;Seq;Carteirinha;Nome;Dt.Entrada;Vl.Participação';
       Writeln(byt_nameofthfile,S);
       pgb_registros.Visible:= True;
       pgb_registros.Min := 0;
       pgb_registros.Max := fdt_principal4.spc_cons_med_contaBenefNaoEstaTratamento.RecordCount;
       fdt_principal4.spc_cons_med_contaBenefNaoEstaTratamento.First;
       with fdt_principal4.spc_cons_med_contaBenefNaoEstaTratamento do
         begin
          while not Eof do
            begin
            S:= FieldByName('cod_conveniado').AsString + ';' +
                FieldByName('nome_con').AsString + ';' +
                FieldByName('sequencia_cta').AsString + ';' +
                FieldByName('carteirainform_ctm').AsString + ';' +
                FieldByName('nomebenefi_ctm').AsString + ';' +
                FieldByName('dtentrada_ctm').AsString + ';' +
                FieldByName('vlParticipacao_ihp').AsString;
            pgb_registros.Position:= pgb_registros.Position + 1;
            Writeln(byt_nameofthfile,S);
            Next ;
            end;
        end;
    CloseFile(byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
    Algo:= SaveDialog.InitialDir + str_arquiventrad;
    ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);
    end;
  pgb_registros.Visible:= False;
end;

procedure TFrm_Mov_2055.FormCreate(Sender: TObject);
begin
  inherited;
  PDJButton8.Enabled:= False;
end;

procedure TFrm_Mov_2055.cbx_cod_mesEnter(Sender: TObject);
begin
  inherited;
  PDJButton8.Enabled:= False;
end;

end.



