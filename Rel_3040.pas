unit Rel_3040;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg;

type
  TFrm_Rel_3040 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton3: TPDJButton;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    PDJButton4: TPDJButton;
    PDJButton5: TPDJButton;
    Panel5: TPanel;
    cbx_cod_empresafolha: TDCComboBox;
    PDJButton6: TPDJButton;
    PDJButton7: TPDJButton;
    PDJButton8: TPDJButton;
    PDJButton9: TPDJButton;
    btn_Descontosegurado: TPDJButton;
    PDJButton10: TPDJButton;
    PDJButton11: TPDJButton;
    PDJButton12: TPDJButton;
    PDJButton13: TPDJButton;
    PDJButton14: TPDJButton;
    edt_dtenvio_flh: TDCDateEdit;
    ed2_dtenvio_flh: TDCDateEdit;
    PDJButton15: TPDJButton;
    PDJButton16: TPDJButton;
    PDJButton17: TPDJButton;
    cbx_cod_sitdesconto: TDCComboBox;
    procedure FormShow(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
    procedure PDJButton8Click(Sender: TObject);
    procedure PDJButton9Click(Sender: TObject);
    procedure btn_DescontoseguradoClick(Sender: TObject);
    procedure PDJButton10Click(Sender: TObject);
    procedure PDJButton11Click(Sender: TObject);
    procedure PDJButton12Click(Sender: TObject);
    procedure PDJButton13Click(Sender: TObject);
    procedure PDJButton14Click(Sender: TObject);
    procedure PDJButton15Click(Sender: TObject);
    procedure PDJButton16Click(Sender: TObject);
    procedure PDJButton17Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
    function CriticaParametrosEmpresa : Boolean ;
    function CriticaParametrosSitDesconto : Boolean ;
  public
    { Public declarations }
     MesReferencia1, MesReferencia2, Empresa, FMesReferencia, FAnoReferencia, FEmpresaFolha : String ;

  end;

var
  Frm_Rel_3040: TFrm_Rel_3040;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
     dtm_principal2, Imp_4055, dtm_principal3, Imp_4066, Imp_4067, Imp_4079, Imp_4080,
     Imp_4081, Dlg_Mensagem, Imp_4082, Imp_4083, Imp_4084, Imp_4085, Imp_4075, Fun_Data,
     dtm_principal4, Imp_4095, Imp_4096, Imp_4116, Imp_4051, dtm_principal5, Fun_Obj,
     Bas_Impressao, Fun_DB, dtm_principal6 ;

{$R *.DFM}

procedure TFrm_Rel_3040.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha', 'nome_emp');
  if FAnoReferencia <> '' then
    edt_ano.text := FAnoReferencia ;
  if FMesReferencia <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_mes.name, FMesReferencia);
  if FEmpresaFolha <> '' then
    Obj_SetFormObjValueByName(self, cbx_cod_empresafolha.name, FEmpresaFolha);
  cbx_cod_sitdesconto.Clear;
  cbx_cod_sitdesconto.Items.Add('Ambos');
  cbx_cod_sitdesconto.Items.Add('em Aberto');
  cbx_cod_sitdesconto.Items.Add('Em negociação');
  cbx_cod_sitdesconto.ValItems.Add('0');
  cbx_cod_sitdesconto.ValItems.Add('1');
  cbx_cod_sitdesconto.ValItems.Add('2');
end;

function TFrm_Rel_3040.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) ;
end;

function TFrm_Rel_3040.CriticaParametrosEmpresa : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_empresafolha.name, 'Empresa deve ser Preenchida !', VLD_Preenchido )) ;
end;

function TFrm_Rel_3040.CriticaParametrosSitDesconto : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_sitdesconto.name, 'Sit.Desconto deve ser Preenchida !', VLD_Preenchido )) ;
end;

procedure TFrm_Rel_3040.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  with fdt_principal3.spc_cons_adm_contribuicaonaogerada do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4066 := TFrm_Imp_4066.Create(Self);
  Frm_Imp_4066.MesReferencia1 := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4066.Empresa := cbx_cod_empresafolha.text;
  Frm_Imp_4066.QuickRep1.Preview;
  Frm_Imp_4066.Release;
  fdt_principal3.spc_cons_adm_contribuicaonaogerada.close;
end;

procedure TFrm_Rel_3040.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  with fdt_principal3.spc_cons_adm_descontozerado do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4067 := TFrm_Imp_4067.Create(Self);
  Frm_Imp_4067.MesReferencia2 := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4067.Empresa := cbx_cod_empresafolha.text;
  Frm_Imp_4067.QuickRep1.Preview;
  Frm_Imp_4067.Release;
  fdt_principal3.spc_cons_adm_descontozerado.close;
end;



procedure TFrm_Rel_3040.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  with fdt_principal3.spc_cons_adm_descontovlgrande do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@valor').AsInteger := 1000;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;

    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4079 := TFrm_Imp_4079.Create(Self);
  Frm_Imp_4079.MesReferencia2 := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4079.Empresa := cbx_cod_empresafolha.text;
  Frm_Imp_4079.QuickRep1.Preview;
  Frm_Imp_4079.Release;
  fdt_principal3.spc_cons_adm_descontovlgrande.close;
end;

procedure TFrm_Rel_3040.PDJButton4Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  with fdt_principal3.spc_cons_adm_divergenciavalores do
  begin
    close;
    ParamByName('@dtreferencia').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4080 := TFrm_Imp_4080.Create(Self);
  Frm_Imp_4080.MesReferencia2 := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4080.Empresa := cbx_cod_empresafolha.text;
  Frm_Imp_4080.QuickRep1.Preview;
  Frm_Imp_4080.Release;
  fdt_principal3.spc_cons_adm_divergenciavalores.close;
end;

procedure TFrm_Rel_3040.PDJButton5Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  with fdt_principal3.spc_cons_adm_descEmpFolhaDif do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4081 := TFrm_Imp_4081.Create(Self);
  Frm_Imp_4081.MesReferencia2 := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4081.Empresa := cbx_cod_empresafolha.text;
  Frm_Imp_4081.QuickRep1.Preview;
  Frm_Imp_4081.Release;
  fdt_principal3.spc_cons_adm_divergenciavalores.close;
end;

procedure TFrm_Rel_3040.PDJButton6Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  with fdt_principal3.spc_cons_adm_BenCanceladoFalecido do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4082 := TFrm_Imp_4082.Create(Self);
  Frm_Imp_4082.MesReferencia2 := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4082.Empresa := cbx_cod_empresafolha.text;
  Frm_Imp_4082.QuickRep1.Preview;
  Frm_Imp_4082.Release;
  fdt_principal3.spc_cons_adm_BenCanceladoFalecido.close;
end;

procedure TFrm_Rel_3040.PDJButton7Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  with fdt_principal3.spc_cons_adm_inscritos do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4083 := TFrm_Imp_4083.Create(Self);
  Frm_Imp_4083.MesReferencia2 := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4083.Empresa := cbx_cod_empresafolha.text;
  Frm_Imp_4083.QuickRep1.Preview;
  Frm_Imp_4083.Release;
  fdt_principal3.spc_cons_adm_inscritos.close;
end;

procedure TFrm_Rel_3040.PDJButton8Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  with fdt_principal3.spc_cons_adm_mudarplano do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4084 := TFrm_Imp_4084.Create(Self);
  Frm_Imp_4084.MesReferencia2 := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4084.Empresa := cbx_cod_empresafolha.text;
  Frm_Imp_4084.QuickRep1.Preview;
  Frm_Imp_4084.Release;
  fdt_principal3.spc_cons_adm_mudarplano.close;
end;

procedure TFrm_Rel_3040.PDJButton9Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  with fdt_principal3.spc_cons_adm_Ben18anos do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4085 := TFrm_Imp_4085.Create(Self);
  Frm_Imp_4085.MesReferencia2 := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4085.Empresa := cbx_cod_empresafolha.text;
  Frm_Imp_4085.QuickRep1.Preview;
  Frm_Imp_4085.Release;
  fdt_principal3.spc_cons_adm_Ben18anos.close;
end;

procedure TFrm_Rel_3040.btn_DescontoseguradoClick(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  with Fdt_principal.spc_cons_adm_descontofolha02 do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := '0';
    ParamByName('@titulacartei_ben').AsString := '0';
    ParamByName('@dtreferenciaInicial_flh').AsString := FormatDateTime('mm/dd/yyyy',(Data_Subtrai1mes(StrToDate('01/'+cbx_cod_mes.valueItem+ '/'+edt_ano.text)))) ;
    ParamByName('@dtreferenciaFinal_flh').AsString := FormatDateTime('mm/dd/yyyy',(Data_Subtrai1mes (StrToDate('01/'+cbx_cod_mes.valueItem +'/'+edt_ano.text)))) ;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@cod_tarifa').AsString := '';
    ParamByName('@cod_sitdesconto').AsString := '1';
    ParamByName('@dtpagto_flh').AsString := '';
    ParamByName('@dtdesconto_flh').AsString := '';
    ParamByName('@cod_usuario').AsString := '' ;
    ParamByName('@cod_order').AsInteger := 0 ;
    open;
    if FieldByName('inscricao_ben').AsString = '' then begin
      Dlg_Alerta('Nenhum registro encontrado.', self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4075 := TFrm_Imp_4075.Create(Self);
  Frm_Imp_4075.FEmpresaFolha := cbx_cod_empresafolha.text ;
  Frm_Imp_4075.QuickRep1.Preview;
  Frm_Imp_4075.Release;
end;

procedure TFrm_Rel_3040.PDJButton10Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  with fdt_principal4.spc_cons_adm_BenefiForaDoMesAnterior do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4095 := TFrm_Imp_4095.Create(Self);
  Frm_Imp_4095.MesReferencia2 := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4095.Empresa := cbx_cod_empresafolha.text;
  Frm_Imp_4095.QuickRep1.Preview;
  Frm_Imp_4095.Release;
  fdt_principal4.spc_cons_adm_BenefiForaDoMesAnterior.close;
end;

procedure TFrm_Rel_3040.PDJButton11Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  with fdt_principal4.spc_cons_adm_descontosMatricuraErrada do
  begin
    close;
    ParamByName('@dtreferencia').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4096 := TFrm_Imp_4096.Create(Self);
  Frm_Imp_4096.MesReferencia1 := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4096.Empresa := cbx_cod_empresafolha.text;
  Frm_Imp_4096.QuickRep1.Preview;
  Frm_Imp_4096.Release;
  fdt_principal4.spc_cons_adm_descontosMatricuraErrada.close;
end;

procedure TFrm_Rel_3040.PDJButton12Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
 if cbx_cod_empresafolha.Text = '' then begin
   Dlg_Alerta('A Empresa precisa ser Preenchida!',self);
   Exit;
 end;
  with fdt_principal4.spc_cons_adm_descontosduplicados do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4116 := TFrm_Imp_4116.Create(Self);
  Frm_Imp_4116.MesReferencia1 := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4116.Empresa := cbx_cod_empresafolha.text;
  Frm_Imp_4116.QuickRep1.Preview;
  Frm_Imp_4116.Release;
  fdt_principal4.spc_cons_adm_descontosduplicados.close;
end;

procedure TFrm_Rel_3040.PDJButton13Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
 if cbx_cod_empresafolha.Text = '' then begin
   Dlg_Alerta('A Empresa precisa ser Preenchida!',self);
   Exit;
 end;
  with fdt_principal5.spc_cons_adm_descontosduplicadosMesAnterior do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4051 := TFrm_Imp_4051.Create(Self);
  Frm_Imp_4051.MesReferencia1 := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4051.Empresa := cbx_cod_empresafolha.text;
  Frm_Imp_4051.QuickRep1.Preview;
  Frm_Imp_4051.Release;
  fdt_principal5.spc_cons_adm_descontosduplicadosMesAnterior.close;
end;

procedure TFrm_Rel_3040.PDJButton14Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
     begin
     Panel7.SetFocus;
     Exit;
     end;
  if CriticaParametrosEmpresa then
     begin
     Panel7.SetFocus;
     Exit;
     end;

  if cbx_cod_empresafolha.ValueItem <> 5 then
     begin
     Dlg_Alerta ('Nessa Empresa não se verifica o dígito.', Self);
     Exit;
     end;
// Verifica se o mês na Empresa já foi fechado
  DB_OpenSQL('select max(dtenvio_flh) from tbl_lotefolhadescontos where cod_empresafolha = ' + IntToStr(cbx_cod_empresafolha.ValueItem));
  edt_dtenvio_flh.Date:= StrToDate('01/' + IntToStr(Data_Month(tab.fields[0].AsDateTime)) + '/' + IntToStr(Data_Year(tab.fields[0].AsDateTime)));
  ed2_dtenvio_flh.Date:= StrToDate('01/' + IntToStr(cbx_cod_mes.ValueItem) + '/' + edt_ano.Text);
  with fdt_principal2.spc_cons_adm_digerrodesconto do
  begin
    close;
    ParamByName('@dtreferencia_flh').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_empresafolha').AsString := cbx_cod_empresafolha.valueitem;
    ParamByName('@cod_sitdesconto').AsString := '1';
    if ed2_dtenvio_flh.Date < edt_dtenvio_flh.Date then
       ParamByName('@cod_sitdesconto').AsString := '0';
    open;
      if recordcount = 0 then
        begin
        Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
        Close;
        Panel5.SetFocus;
        Exit;
        end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal2.spc_cons_adm_digerrodesconto;
  Frm_Bas_Impressao.FCampo1 := cbx_cod_empresafolha.Text;
  Frm_Bas_Impressao.FCampo2 := cbx_cod_mes.Text+'/'+edt_ano.text;
  Frm_Bas_Impressao.showReport(4221);
  fdt_principal2.spc_cons_adm_digerrodesconto.Close;
end;

procedure TFrm_Rel_3040.PDJButton15Click(Sender: TObject);
begin
  inherited;
  with fdt_principal6.spc_cons_adm_dependentesparaverificacaodetabela do
  begin
    close;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_adm_dependentesparaverificacaodetabela;
  Frm_Bas_Impressao.showReport(4223);
  fdt_principal6.spc_cons_adm_dependentesparaverificacaodetabela.close;
end;

procedure TFrm_Rel_3040.PDJButton16Click(Sender: TObject);
begin
  inherited;
  Obj_EmptyEditTag(self,-1);
  cbx_cod_mes.ItemIndex:= -1;
  cbx_cod_empresafolha.ItemIndex:= -1;
  cbx_cod_sitdesconto.ItemIndex:= -1;
end;

procedure TFrm_Rel_3040.PDJButton17Click(Sender: TObject);
begin
  if CriticaParametrosSitDesconto then
     begin
     Panel5.SetFocus;
     Exit;
     end;
  with fdt_principal5.spc_cons_adm_descontosMatriculaAntiga do
  begin
    close;
    ParamByName('@cod_sitdesconto').AsString := cbx_cod_sitdesconto.valueitem;
    open;
    if recordcount = 0 then
       begin
       Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
       Close;
       Panel5.SetFocus;
       Exit;
       end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal5.spc_cons_adm_descontosMatriculaAntiga;
  Frm_Bas_Impressao.FCampo1 := cbx_cod_sitdesconto.Text;
  Frm_Bas_Impressao.showReport(4225);
  fdt_principal5.spc_cons_adm_descontosMatriculaAntiga.Close;
end;

end.

