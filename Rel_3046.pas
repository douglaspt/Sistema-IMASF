unit Rel_3046;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, Menus, jpeg, dbtables;

type
  TFrm_Rel_3046 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton3: TPDJButton;
    Panel1: TPanel;
    cbx_cod_plano: TDCComboBox;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    PDJButton4: TPDJButton;
    PDJButton5: TPDJButton;
    PDJButton6: TPDJButton;
    PDJButton7: TPDJButton;
    PDJButton8: TPDJButton;
    Button1: TButton;
    Button2: TButton;
    Panel4: TPanel;
    procedure FormShow(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure PDJButton7Click(Sender: TObject);
    procedure PDJButton8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
  public
    { Public declarations }
 Mes, Plano, Titulo : String ;
  end;

var
  Frm_Rel_3046: TFrm_Rel_3046;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
dtm_principal2, Imp_4055, dtm_principal3, Imp_4087, Imp_4067, Imp_4086, Imp_4088, Imp_4089,
Imp_4092, Dlg_Mensagem, dtm_principal4, Imp_4093, Fun_DB ;

{$R *.DFM}



procedure TFrm_Rel_3046.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_plano', 'nome_pla');
  BAS_CarregarCombo('cbx_cod_tipodependente', 'nome_tdp');
end;

function TFrm_Rel_3046.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mes de Referência Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referencia Inicial deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(cbx_cod_plano.name, 'O Plano deve ser Preenchido !', VLD_Preenchido )) ;
  end;


procedure TFrm_Rel_3046.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_adm_benefiporfaixa do
  begin
    close;
    ParamByName('@dtreferencia_dr1').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem ;
    ParamByName('@cod_tipodependente').AsInteger := 0 ;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4086 := TFrm_Imp_4086.Create(Self);
  Frm_Imp_4086.Mes := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4086.Plano := cbx_cod_plano.text;
  Frm_Imp_4086.QuickRep1.Preview;
  Frm_Imp_4086.Release;
  fdt_principal3.spc_cons_adm_benefiporfaixa.close;
end;

procedure TFrm_Rel_3046.PDJButton1Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_adm_benefiporfaixa do
  begin
    close;
    ParamByName('@dtreferencia_dr1').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem ;
    ParamByName('@cod_tipodependente').AsInteger := 0 ;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4087 := TFrm_Imp_4087.Create(Self);
  Frm_Imp_4087.Mes := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4087.Plano := cbx_cod_plano.text;
  Frm_Imp_4087.QuickRep1.Preview;
  Frm_Imp_4087.Release;
  fdt_principal3.spc_cons_adm_benefiporfaixa.close;
end;

procedure TFrm_Rel_3046.PDJButton2Click(Sender: TObject);
begin
  inherited;
    if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_adm_benefiporfaixa do
  begin
    close;
    ParamByName('@dtreferencia_dr1').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem ;
    ParamByName('@cod_tipodependente').AsInteger := 0 ;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4088 := TFrm_Imp_4088.Create(Self);
  Frm_Imp_4088.Mes := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4088.Plano := cbx_cod_plano.text;
  Frm_Imp_4088.QuickRep1.Preview;
  Frm_Imp_4088.Release;
  fdt_principal3.spc_cons_adm_benefiporfaixa.close;

end;

procedure TFrm_Rel_3046.PDJButton4Click(Sender: TObject);
begin
  inherited;
    if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_adm_benefiporfaixa do
  begin
    close;
    ParamByName('@dtreferencia_dr1').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem ;
    ParamByName('@cod_tipodependente').AsInteger := 0 ;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4089 := TFrm_Imp_4089.Create(Self);
  Frm_Imp_4089.Titulo := 'Contribuição de Segurados por Plano';
  Frm_Imp_4089.Mes := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4089.Plano := cbx_cod_plano.text;
  Frm_Imp_4089.QuickRep1.Preview;
  Frm_Imp_4089.Release;
  fdt_principal3.spc_cons_adm_benefiporfaixa.close;
end;

procedure TFrm_Rel_3046.PDJButton5Click(Sender: TObject);
begin
  inherited;
    if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_adm_benefiporfaixa do
  begin
    close;
    ParamByName('@dtreferencia_dr1').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem ;
    ParamByName('@cod_tipodependente').AsInteger := 1 ;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4089 := TFrm_Imp_4089.Create(Self);
  Frm_Imp_4089.Titulo := 'Contribuição de Dependente por Plano';
  Frm_Imp_4089.Mes := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4089.Plano := cbx_cod_plano.text;
  Frm_Imp_4089.QuickRep1.Preview;
  Frm_Imp_4089.Release;
  fdt_principal3.spc_cons_adm_benefiporfaixa.close;
end;

procedure TFrm_Rel_3046.PDJButton6Click(Sender: TObject);
begin
  inherited;
    if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_adm_benefiporfaixa do
  begin
    close;
    ParamByName('@dtreferencia_dr1').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem ;
    ParamByName('@cod_tipodependente').AsInteger := 2 ;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4089 := TFrm_Imp_4089.Create(Self);
  Frm_Imp_4089.Titulo := 'Contribuição de Assistido por Plano';
  Frm_Imp_4089.Mes := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4089.Plano := cbx_cod_plano.text;
  Frm_Imp_4089.QuickRep1.Preview;
  Frm_Imp_4089.Release;
  fdt_principal3.spc_cons_adm_benefiporfaixa.close;
end;

procedure TFrm_Rel_3046.PDJButton7Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal3.spc_cons_adm_benefiporfaixa do
  begin
    close;
    ParamByName('@dtreferencia_dr1').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem ;
    ParamByName('@cod_tipodependente').AsInteger := 0 ;
    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4092 := TFrm_Imp_4092.Create(Self);
  Frm_Imp_4092.Mes := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4092.Plano := cbx_cod_plano.text;
  Frm_Imp_4092.QuickRep1.Preview;
  Frm_Imp_4092.Release;
  fdt_principal3.spc_cons_adm_benefiporfaixa.close;
end;

procedure TFrm_Rel_3046.PDJButton8Click(Sender: TObject);
begin
  inherited;
  if CriticaParametros then
    Exit;
  with fdt_principal4.spc_cons_adm_Tlbenefiporfaixa do
  begin
    close;
    ParamByName('@dtreferencia_dr1').AsString := cbx_cod_mes.valueItem + '/01/'+edt_ano.text;
    ParamByName('@cod_plano').AsString := cbx_cod_plano.valueItem ;

    open;
       if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Imp_4093 := TFrm_Imp_4093.Create(Self);
  Frm_Imp_4093.Mes := cbx_cod_mes.text+'/'+edt_ano.text;
  Frm_Imp_4093.Plano := cbx_cod_plano.text;
  Frm_Imp_4093.QuickRep1.Preview;
  Frm_Imp_4093.Release;
  fdt_principal4.spc_cons_adm_Tlbenefiporfaixa.close;
end;

procedure TFrm_Rel_3046.Button1Click(Sender: TObject);
var
  tb : tquery;
  ex0a500s_dr1, ex500a750s_dr1, ex750a1000s_dr1, ex1000a1250s_dr1, ex1250a1500s_dr1,
  ex1500a1750s_dr1, ex1750a2000s_dr1, ex2000eacimas_dr1, exTotal : integer;
  vl : double;
begin
  inherited;
  try
    DB_BeginTrans;
    Tb := TQuery.Create(nil);
    with Tb do begin
      DatabaseName := BD_Alias_DataBase ;
      SQL.Add('select * from tbl_diretoria01 d, tbl_faixaetaria f '+
      'where d.fxetaria_dr1 = f.cod_faixaetaria and cod_tipodependente < 2');
      Open;
      while not Eof do
      begin
        ex0a500s_dr1 := FieldByName('ex0a500s_dr1').AsInteger;
        ex500a750s_dr1 := FieldByName('ex500a750s_dr1').AsInteger;
        ex750a1000s_dr1 := FieldByName('ex750a1000s_dr1').AsInteger;
        ex1000a1250s_dr1 := FieldByName('ex1000a1250s_dr1').AsInteger;
        ex1250a1500s_dr1 := FieldByName('ex1250a1500s_dr1').AsInteger;
        ex1500a1750s_dr1 := FieldByName('ex1500a1750s_dr1').AsInteger;
        ex1750a2000s_dr1 := FieldByName('ex1750a2000s_dr1').AsInteger;
        ex2000eacimas_dr1 := FieldByName('ex2000eacimas_dr1').AsInteger;
        exTotal := ex0a500s_dr1 + ex500a750s_dr1 + ex750a1000s_dr1 + ex1000a1250s_dr1 +
        ex1250a1500s_dr1 + ex1500a1750s_dr1 + ex1750a2000s_dr1 + ex2000eacimas_dr1;
        if exTotal > 0 then
        begin
          DB_OpenSQL('select vlfixo_piv from tbl_planoitemvalor where cod_planopagto = 5'+FieldByName('cod_plano').AsString);
          vl := Tab.FieldByName('vlfixo_piv').AsFloat * exTotal;
          DB_ExecSQL('update tbl_diretoria01 set qtde_dr1 = qtde_dr1 - '+IntToStr(exTotal)+
          ' , vlcontribuicao_dr1 = vlcontribuicao_dr1 - '+DB_FormatDataSQL(vl, ftfloat)+
          ' , ex0a500s_dr1 = 0, ex500a750s_dr1 = 0, ex750a1000s_dr1 = 0, ex1000a1250s_dr1 = 0, ex1250a1500s_dr1 = 0, '+
          ' ex1500a1750s_dr1 = 0, ex1750a2000s_dr1 = 0, ex2000eacimas_dr1 = 0 '+
          ' where dtreferencia_dr1 = '+DB_FormatDataSQL(FieldByName('dtreferencia_dr1').AsDateTime, ftDate)+
          ' and cod_tipodependente = '+FieldByName('cod_tipodependente').AsString+
          ' and cod_plano = '+FieldByName('cod_plano').AsString+' and fxetaria_dr1 = '+FieldByName('fxetaria_dr1').AsString);
          DB_ExecSQL('update tbl_diretoria01 set qtde_dr1 = qtde_dr1 + '+IntToStr(exTotal)+
          ' , vlcontribuicao_dr1 = vlcontribuicao_dr1 + '+DB_FormatDataSQL(vl, ftfloat)+
          ' , ex0a500s_dr1 = '+inttostr(ex0a500s_dr1)+', ex500a750s_dr1 = '+inttostr(ex0a500s_dr1)+
          ' , ex750a1000s_dr1 = '+inttostr(ex0a500s_dr1)+', ex1000a1250s_dr1 = '+inttostr(ex0a500s_dr1)+
          ' , ex1250a1500s_dr1 = '+inttostr(ex0a500s_dr1)+', '+' ex1500a1750s_dr1 = '+inttostr(ex0a500s_dr1)+
          ' , ex1750a2000s_dr1 = '+inttostr(ex0a500s_dr1)+', ex2000eacimas_dr1 = '+inttostr(ex0a500s_dr1)+
          ' where dtreferencia_dr1 = '+DB_FormatDataSQL(FieldByName('dtreferencia_dr1').AsDateTime, ftDate)+
          ' and cod_tipodependente = 2 and cod_plano = '+FieldByName('cod_plano').AsString+' and fxetaria_dr1 = '+FieldByName('fxetaria_dr1').AsString);
        end;
        next;
      end;


    end;
  except
    DB_RollBack;
  end;
end;

procedure TFrm_Rel_3046.Button2Click(Sender: TObject);
begin
  inherited;
  DB_RollBack;
end;

end.

