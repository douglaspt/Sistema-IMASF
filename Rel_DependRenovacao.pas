unit Rel_DependRenovacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, QRExport;

type
  TFrm_Rel_DependRenovacao = class(TFrm_Bas_TelaPadrao)
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Panel6: TPanel;
    PDJButton4: TPDJButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    PDJButton1: TPDJButton;
    RdB_TodasCartas: TRadioButton;
    RadioButton6: TRadioButton;
    PDJButton2: TPDJButton;
    edt_carta: TEdit;
    lbl_total: TLabel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    RdB_Inscricao: TRadioButton;
    RdB_Nome: TRadioButton;
    RdB_Data: TRadioButton;
    btn_localizar: TPDJButton;
    rdb_plano: TRadioButton;
    Panel5: TPanel;
    edt_dtinicial: TDCDateEdit;
    edt_dtfinal: TDCDateEdit;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Panel1: TPanel;
    RdB_DtRenovacao: TRadioButton;
    rdb_dtLimite: TRadioButton;
    rdb_dtnasc: TRadioButton;
    TabSheet2: TTabSheet;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton3: TPDJButton;
    PDJButton5: TPDJButton;
    stg_audi: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure PDJButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_dtfinalEnter(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure stg_audiDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
    function CriticaParametros : Boolean ;
    function AbrirDependRenovacao : boolean;
//    function AbrirDependRenovacaoCarta(Plano:String) : integer;
    function AbrirDependRenovacaoCarta(Plano:String; GrauParent: integer; EstFisico: integer) : integer;
  public
    { Public declarations }
  end;

var
  Frm_Rel_DependRenovacao: TFrm_Rel_DependRenovacao;
  ChaveExp: Integer;

implementation

uses Imp_Adm_DependRenovacao, dtm_principal, Fun_Medico, Imp_Adm_CartaDependRenov,
     Fun_ConsCadastro, Constantes, Fun_Data, Fun_Obj, DLG_mensagem, Imp_Adm_Etiqueta001,
     Dlg_ImprimeCarta, Imp_4045, Fun_DB, Fun_Acesso, Bas_Impressao, Fun_Str;

{$R *.DFM}

procedure TFrm_Rel_DependRenovacao.FormCreate(Sender: TObject);
begin
  FTitulo       := 'Relação de Dependentes por Data de Renovação / Situação' ;
  FEditChave    := 'edt_cod_conveniado' ;
  FTitPesquisa  := 'Localizar Conveniados' ;
  FPesquisa     := 'cod_conveniado, nome_con, razao_con' ;
  FPesquisaTit  := 'Código, Nome do Conveniado, Razão Social' ;
  inherited;
end;

function TFrm_Rel_DependRenovacao.CriticaParametros : Boolean ;
begin
  result := (not BAS_ValidarCampo(edt_dtinicial.name, 'Data inicial deve ser preenchida !', VLD_DataPreenchida )) or
  (not BAS_ValidarCampo(edt_dtfinal.name, 'Data final deve ser preenchida !', VLD_DataPreenchida ));
end;

function TFrm_Rel_DependRenovacao.AbrirDependRenovacao : boolean;
begin
  if CriticaParametros then begin
    result := false ;
    Exit;
  end;
  with Fdt_principal.spc_cons_adm_dependrenovacao do
  begin
    close;
    if RdB_DtRenovacao.checked then begin
      ParamByName('@dtrenovacaoIni').AsString := FormatDateTime('mm/dd/yyyy', edt_dtinicial.date) ;
      ParamByName('@dtrenovacaoFin').AsString := FormatDateTime('mm/dd/yyyy', edt_dtfinal.date) ;
      ParamByName('@dtlimiteIni').AsString := '' ;
      ParamByName('@dtlimiteFin').AsString := '' ;
      ParamByName('@dtnascimIni').AsString := '' ;
      ParamByName('@dtnascimFim').AsString := '' ;
    end else
      if rdb_dtLimite.Checked then begin
        ParamByName('@dtlimiteIni').AsString := FormatDateTime('mm/dd/yyyy', edt_dtinicial.date) ;
        ParamByName('@dtlimiteFin').AsString := FormatDateTime('mm/dd/yyyy', edt_dtfinal.date) ;
        ParamByName('@dtrenovacaoIni').AsString := '' ;
        ParamByName('@dtrenovacaoFin').AsString := '' ;
        ParamByName('@dtnascimIni').AsString := '' ;
        ParamByName('@dtnascimFim').AsString := '' ;
      end else
      if rdb_dtnasc.Checked then begin
        ParamByName('@dtnascimIni').AsString := FormatDateTime('mm/dd/yyyy', edt_dtinicial.date) ;
        ParamByName('@dtnascimFim').AsString := FormatDateTime('mm/dd/yyyy', edt_dtfinal.date) ;
        ParamByName('@dtlimiteIni').AsString := '' ;
        ParamByName('@dtlimiteFin').AsString := '' ;
        ParamByName('@dtrenovacaoIni').AsString := '' ;
        ParamByName('@dtrenovacaoFin').AsString := '' ;
      end;
    if rdb_plano.checked then
      ParamByName('@order').AsInteger := 0 ;
    if RdB_Data.checked then
      ParamByName('@order').AsInteger := 1 ;
    if RdB_Inscricao.checked then
      ParamByName('@order').AsInteger := 2 ;
    if RdB_Nome.checked then
      ParamByName('@order').AsInteger := 3 ;
    open;
    if recordcount < 1 then
       begin
       Dlg_Ok('Nenhum Dependente encontrado !', self);
       close;
       result := false ;
       exit;
       end
    else
      result := true ;
  end;
end;

procedure TFrm_Rel_DependRenovacao.PDJButton3Click(Sender: TObject);
begin
  inherited;
  if not AbrirDependRenovacao then exit ;
  Frm_Imp_Adm_DependRenovacao := TFrm_Imp_Adm_DependRenovacao.Create(Self);
  if RdB_DtRenovacao.checked then
    Frm_Imp_Adm_DependRenovacao.FData := '==> DATA DE RENOVAÇÃO'
  else
    Frm_Imp_Adm_DependRenovacao.FData := '==> DATA LIMITE';
  Frm_Imp_Adm_DependRenovacao.FPeriodo := 'De '+edt_dtinicial.text+' até '+edt_dtfinal.text;
  Frm_Imp_Adm_DependRenovacao.QuickRep1.Preview;
  Frm_Imp_Adm_DependRenovacao.Release;
//  Fdt_principal.spc_cons_adm_dependrenovacao.close;
end;

procedure TFrm_Rel_DependRenovacao.RadioButton4Click(Sender: TObject);
begin
  inherited;
  edt_dtinicial.Date := date ;
  edt_dtfinal.Date := date ;
  edt_dtinicial.Enabled := false ;
  edt_dtfinal.Enabled := false ;
end;

procedure TFrm_Rel_DependRenovacao.RadioButton5Click(Sender: TObject);
begin
  inherited;
  edt_dtinicial.Date := Data_BOM(date+30) ;
  edt_dtfinal.Date := Data_EOM(date+30) ;
  edt_dtinicial.Enabled := false ;
  edt_dtfinal.Enabled := false ;
end;

procedure TFrm_Rel_DependRenovacao.RadioButton3Click(Sender: TObject);
begin
  inherited;
  edt_dtinicial.Enabled := true ;
  edt_dtfinal.Enabled := true ;
end;

//function TFrm_Rel_DependRenovacao.AbrirDependRenovacaoCarta(Plano:String) : integer;
function TFrm_Rel_DependRenovacao.AbrirDependRenovacaoCarta(Plano:String; GrauParent: integer; EstFisico: integer) : integer;
var
  s : string ;
  i : integer ;
begin
  s := '' ;
  if not RdB_TodasCartas.Checked then begin
    if Frm_Rel_DependRenovacao.DBGrid1.SelectedRows.Count>0 then
    for i:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(pointer(Frm_Rel_DependRenovacao.DBGrid1.SelectedRows.Items[i]));
      if Fdt_principal.spc_cons_adm_dependrenovacao.FieldByName('cod_novoplano').AsString = plano then
//      if Fdt_principal.spc_cons_adm_dependrenovacao.FieldByName('cod_planotitular').AsString = plano then
        s := s + DBGrid1.DataSource.DataSet.FieldByName('cod_beneficiario').AsString + ', ';
    end;
  end else
    begin
    with Fdt_principal.spc_cons_adm_dependrenovacao do
      begin
      first;
      while not EOF do
        begin
        if (plano <> '') and (GrauParent = 0) and (EstFisico = 0) then
           begin
//        if FieldByName('cod_planotitular').AsString = plano then
            if (FieldByName('cod_grauparent').Value <> 10) and (FieldByName('cod_estfisico').Value = 1) then
               if FieldByName('cod_novoplano').AsString = plano then
                  s := s + FieldByName('cod_beneficiario').AsString + ', '
           end
        else
           if plano = '' then
              if GrauParent = 0 then
                 if EstFisico = 0 then
                    s := s + FieldByName('cod_beneficiario').AsString + ', '
                 else
                    if EstFisico = 2 then
                       if FieldByName('cod_estfisico').Value = 2 then
                          s := s + FieldByName('cod_beneficiario').AsString + ', '
                       else
                    else
              else
                 if (GrauParent = 10) and (EstFisico = 0) then
                     if FieldByName('cod_grauparent').Value = 10 then
                        s := s + FieldByName('cod_beneficiario').AsString + ', ';
        next ;
        end;
      end;
    end;
  if trim(s) <> '' then
    with Fdt_principal.spc_cons_adm_dependrenovacaocarta do
    begin
      close;
      ParamByName('@cod_beneficiario').AsMemo := copy(s, 1, length(s)-2);
      open;
      result := recordcount ;
    end
  else result := 0 ;
end;

procedure TFrm_Rel_DependRenovacao.PDJButton1Click(Sender: TObject);
Var
  WValor: Real;
begin
  if DBGrid1.FieldCount < 1 then
    Exit;
  if AbrirDependRenovacaoCarta('1',0,0) > 0 then begin
    Frm_Imp_4045 := TFrm_Imp_4045.Create(Self);
    Frm_Imp_4045.FNumero := edt_carta.text ;
    DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 1');
    if (Tab.FieldByName('flag_sti').AsInteger =  0) then
    begin
      //Frm_Bas_Impressao.FSetorChefe := Tab.FieldByName('nome_sti').AsString;
      Frm_Imp_4045.Fnomesuper := AnsiUpperCase(Tab.FieldByName('chefe').AsString);
      Frm_Imp_4045.FCargosuper := Tab.FieldByName('cargoChefe').AsString;
    end
    else
    begin
     // Frm_Bas_Impressao.FSetorChefe := 'Resp. pelo(a) '+Tab.FieldByName('nome_sti').AsString;
      Frm_Imp_4045.Fnomesuper := AnsiUpperCase(Tab.FieldByName('responsavel').AsString);
      Frm_Imp_4045.FCargosuper := Tab.FieldByName('cargoResponsavel').AsString;
    end;
    DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 2');
    if (Tab.FieldByName('flag_sti').AsInteger =  0) then
    begin
      Frm_Imp_4045.FCargoADM := 'Chefe da ' + Tab.FieldByName('nome_sti').AsString;
      Frm_Imp_4045.FChefiaADM := AnsiUpperCase(Tab.FieldByName('chefe').AsString);
     // Frm_Imp_4045.FCargoADM := Tab.FieldByName('cargoChefe').AsString;
    end
    else
    begin
      Frm_Imp_4045.FCargoADM := 'Chefe da ' + Tab.FieldByName('nome_sti').AsString;
      Frm_Imp_4045.FChefiaADM := AnsiUpperCase(Tab.FieldByName('responsavel').AsString);
      //Frm_Imp_4045.FCargoADM := Tab.FieldByName('cargoResponsavel').AsString;
    end;
    Frm_Imp_4045.QuickRep1.Preview;
    Frm_Imp_4045.Release;
    Fdt_principal.spc_cons_adm_dependrenovacaocarta.close;
  end;
  if AbrirDependRenovacaoCarta('6',0,0) > 0 then begin
    Frm_Imp_4045 := TFrm_Imp_4045.Create(Self);
    Frm_Imp_4045.FNumero := edt_carta.text;
    DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 1');
    if (Tab.FieldByName('flag_sti').AsInteger =  0) then
    begin
      //Frm_Bas_Impressao.FSetorChefe := Tab.FieldByName('nome_sti').AsString;
      Frm_Imp_4045.Fnomesuper := AnsiUpperCase(Tab.FieldByName('chefe').AsString);
      Frm_Imp_4045.FCargosuper := Tab.FieldByName('cargoChefe').AsString;
    end
    else
    begin
     // Frm_Bas_Impressao.FSetorChefe := 'Resp. pelo(a) '+Tab.FieldByName('nome_sti').AsString;
      Frm_Imp_4045.Fnomesuper := AnsiUpperCase(Tab.FieldByName('responsavel').AsString);
      Frm_Imp_4045.FCargosuper := Tab.FieldByName('cargoResponsavel').AsString;
    end;
    DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 2');
    if (Tab.FieldByName('flag_sti').AsInteger =  0) then
    begin
      Frm_Imp_4045.FCargoADM := 'Chefe da ' + Tab.FieldByName('nome_sti').AsString;
      Frm_Imp_4045.FChefiaADM := AnsiUpperCase(Tab.FieldByName('chefe').AsString);
     // Frm_Imp_4045.FCargoADM := Tab.FieldByName('cargoChefe').AsString;
    end
    else
    begin
      Frm_Imp_4045.FCargoADM := 'Chefe da ' + Tab.FieldByName('nome_sti').AsString;
      Frm_Imp_4045.FChefiaADM := AnsiUpperCase(Tab.FieldByName('responsavel').AsString);
      //Frm_Imp_4045.FCargoADM := Tab.FieldByName('cargoResponsavel').AsString;
    end;
    Frm_Imp_4045.QuickRep1.Preview;
    Frm_Imp_4045.Release;
    Fdt_principal.spc_cons_adm_dependrenovacaocarta.close;
  end;
//  if AbrirDependRenovacaoCarta('2') > 0 then begin
    if AbrirDependRenovacaoCarta('52',0,0) > 0 then begin
{     if (Fdt_principal.spc_cons_adm_dependrenovacao.FieldByName('cod_planotitular').AsInteger = 1) or
        (Fdt_principal.spc_cons_adm_dependrenovacao.FieldByName('cod_planotitular').AsInteger = 6) then}
     if (Fdt_principal.spc_cons_adm_dependrenovacao.FieldByName('cod_plano').AsInteger = 1) or
        (Fdt_principal.spc_cons_adm_dependrenovacao.FieldByName('cod_plano').AsInteger = 6) then
        begin
        Frm_Imp_4045 := TFrm_Imp_4045.Create(Self);
        Frm_Imp_4045.FNumero := edt_carta.text ;
        DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 1');
        Frm_Imp_4045.Fnomesuper:= UpperCase(Str_AnsiToAscii(Tab.FieldByName('Chefe').AsString));
        Frm_Imp_4045.FCargosuper:= Tab.FieldByName('cargoChefe').AsString;
        DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 2');
        Frm_Imp_4045.FChefiaADM := UpperCase(Str_AnsiToAscii(Tab.FieldByName('Chefe').AsString));
        Frm_Imp_4045.FCargoADM := 'Chefe da ' + Tab.FieldByName('nome_sti').AsString;
        Frm_Imp_4045.QuickRep1.Preview;
        Frm_Imp_4045.Release;
        Fdt_principal.spc_cons_adm_dependrenovacaocarta.close;
        end
    else
        begin
        with Fdt_principal.spc_cons_adm_dependrenovacaocarta do
          begin
          close;
          open;
          if recordcount = 0 then begin
             Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
             close;
             exit;
             end;
          end;
        Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_adm_dependrenovacaocarta;
        Frm_Bas_Impressao.FCampo1:= edt_carta.text ;
        DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 1');
        Frm_Bas_Impressao.FCampo5:= UpperCase(Str_AnsiToAscii(Tab.FieldByName('Chefe').AsString));
        Frm_Bas_Impressao.FCampo6:= Tab.FieldByName('cargoChefe').AsString;
        DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 2');
        Frm_Bas_Impressao.FCampo3:= UpperCase(Str_AnsiToAscii(Tab.FieldByName('Chefe').AsString));
        Frm_Bas_Impressao.FCampo4:= 'Chefe da ' + Tab.FieldByName('nome_sti').AsString;
        Frm_Bas_Impressao.showReport(4224);
        Fdt_principal.spc_cons_adm_dependrenovacaocarta.close;
        {Frm_Imp_Adm_CartaDependRenov := TFrm_Imp_Adm_CartaDependRenov.Create(Self);
        Frm_Imp_Adm_CartaDependRenov.FNumero := edt_carta.text ;
        Frm_Imp_Adm_CartaDependRenov.FChefiaADM := PAR_ChefiaADM;
        Frm_Imp_Adm_CartaDependRenov.FCargoADM := PAR_CargoADM;
        Frm_Imp_Adm_CartaDependRenov.QuickRep1.Preview;
        Frm_Imp_Adm_CartaDependRenov.Release;
        Fdt_principal.spc_cons_adm_dependrenovacaocarta.close;}
        end;
    end;
//  if AbrirDependRenovacaoCarta('3') > 0 then begin
  if AbrirDependRenovacaoCarta('53',0,0) > 0 then begin
     if (Fdt_principal.spc_cons_adm_dependrenovacao.FieldByName('cod_plano').AsInteger = 1) or
        (Fdt_principal.spc_cons_adm_dependrenovacao.FieldByName('cod_plano').AsInteger = 6) then
{     if (Fdt_principal.spc_cons_adm_dependrenovacao.FieldByName('cod_planotitular').AsInteger = 1) or
        (Fdt_principal.spc_cons_adm_dependrenovacao.FieldByName('cod_planotitular').AsInteger = 6) then}
        begin
        Frm_Imp_4045 := TFrm_Imp_4045.Create(Self);
        Frm_Imp_4045.FNumero := edt_carta.text ;
        DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 1');
        Frm_Imp_4045.Fnomesuper:= UpperCase(Str_AnsiToAscii(Tab.FieldByName('Chefe').AsString));
        Frm_Imp_4045.FCargosuper:= Tab.FieldByName('cargoChefe').AsString;
        DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 2');
        Frm_Imp_4045.FChefiaADM := UpperCase(Str_AnsiToAscii(Tab.FieldByName('Chefe').AsString));
        Frm_Imp_4045.FCargoADM := 'Chefe da ' + Tab.FieldByName('nome_sti').AsString;
        Frm_Imp_4045.QuickRep1.Preview;
        Frm_Imp_4045.Release;
        Fdt_principal.spc_cons_adm_dependrenovacaocarta.close;
        end
    else
        begin
        with Fdt_principal.spc_cons_adm_dependrenovacaocarta do
          begin
          close;
          open;
          if recordcount = 0 then begin
             Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
             close;
             exit;
             end;
          end;
        Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_adm_dependrenovacaocarta;
        Frm_Bas_Impressao.FCampo1:= edt_carta.text ;
        DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 1');
        Frm_Bas_Impressao.FCampo5:= UpperCase(Str_AnsiToAscii(Tab.FieldByName('Chefe').AsString));
        Frm_Bas_Impressao.FCampo6:= Tab.FieldByName('cargoChefe').AsString;
        DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 2');
        Frm_Bas_Impressao.FCampo3:= UpperCase(Str_AnsiToAscii(Tab.FieldByName('Chefe').AsString));
        Frm_Bas_Impressao.FCampo4:= 'Chefe da ' + Tab.FieldByName('nome_sti').AsString;
        Frm_Bas_Impressao.showReport(4224);
        Fdt_principal.spc_cons_adm_dependrenovacaocarta.close;
        {Frm_Imp_Adm_CartaDependRenov := TFrm_Imp_Adm_CartaDependRenov.Create(Self);
        Frm_Imp_Adm_CartaDependRenov.FNumero := edt_carta.text ;
        Frm_Imp_Adm_CartaDependRenov.FChefiaADM := PAR_ChefiaADM;
        Frm_Imp_Adm_CartaDependRenov.FCargoADM := PAR_CargoADM;
        Frm_Imp_Adm_CartaDependRenov.QuickRep1.Preview;
        Frm_Imp_Adm_CartaDependRenov.Release;
        Fdt_principal.spc_cons_adm_dependrenovacaocarta.close;}
        end;
  end;

// Somente Lista Menor sob Guarda, invalido ou não
    if AbrirDependRenovacaoCarta('',10,0) > 0 then begin
       begin
       with Fdt_principal.spc_cons_adm_dependrenovacaocarta do
         begin
         close;
         open;
         if recordcount = 0 then begin
            Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
            close;
            exit;
            end;
         end;
         Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_adm_dependrenovacaocarta;
         Frm_Bas_Impressao.FCampo1:= edt_carta.Text;
         Frm_Bas_Impressao.FCampo2:= 'Termo de Guarda e Responsabilidade';
         DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 1');
         Frm_Bas_Impressao.FCampo5:= UpperCase(Str_AnsiToAscii(Tab.FieldByName('Chefe').AsString));
         Frm_Bas_Impressao.FCampo6:= Tab.FieldByName('cargoChefe').AsString;
         DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 2');
         Frm_Bas_Impressao.FCampo3:= UpperCase(Str_AnsiToAscii(Tab.FieldByName('Chefe').AsString));
         Frm_Bas_Impressao.FCampo4:= 'Chefe da ' + Tab.FieldByName('nome_sti').AsString;
         Frm_Bas_Impressao.showReport(4227);
         Fdt_principal.spc_cons_adm_dependrenovacaocarta.close;
         end;
    end;

// Somente Lista Invalido
    if AbrirDependRenovacaoCarta('',0,2) > 0 then begin
       begin
       with Fdt_principal.spc_cons_adm_dependrenovacaocarta do
         begin
         close;
         open;
         if recordcount = 0 then begin
            Dlg_Alerta ('Nenhum Registro foi encontrado.', Self);
            close;
            exit;
            end;
         end;
         Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_adm_dependrenovacaocarta;
         Frm_Bas_Impressao.FCampo1:= edt_carta.Text;
         Frm_Bas_Impressao.FCampo2:= 'Atestado de Invalidez';
         DB_OpenSQL('exec spc_cons_med_nomecheferesponsavel 2');
         Frm_Bas_Impressao.FCampo3:= UpperCase(Str_AnsiToAscii(Tab.FieldByName('Chefe').AsString));
         Frm_Bas_Impressao.FCampo4:= 'Chefe da ' + Tab.FieldByName('nome_sti').AsString;
         Frm_Bas_Impressao.showReport(4227);
         Fdt_principal.spc_cons_adm_dependrenovacaocarta.close;
         end;
    end;
//  Frm_Bas_Impressao.FCampo4 := 'SBCampo, '+Data_Format('dd',Date)+' de '+Data_GetMonthName(StrToInt(Data_Format('mm',Date)))+' de '+Data_Format('yyyy',Date);
end;

procedure TFrm_Rel_DependRenovacao.btn_localizarClick(Sender: TObject);
begin
  inherited;
  AbrirDependRenovacao;
  lbl_total.Caption := 'Total de Dependentes => '+IntToStr(DB_RollCount);
  Obj_SetFormObjValueByName(self,'cbx_cod_mes', Data_Month(Data_Soma1mes(edt_dtinicial.Date)));
//  Obj_SetFormObjValueByName(self,'cbx_cod_mes', Data_Month(Data_Soma1mes(Date)));
//  edt_ano.Text := IntToStr(Data_Year(Data_Soma1mes(Date)));
  edt_ano.Text := IntToStr(Data_Year(Data_Soma1mes(edt_dtinicial.Date)));
end;

procedure TFrm_Rel_DependRenovacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Fdt_principal.spc_cons_adm_dependrenovacao.close;
//  Fdt_principal.spc_cons_adm_dependrenovacaocarta.close;
end;

procedure TFrm_Rel_DependRenovacao.PDJButton2Click(Sender: TObject);
begin
  inherited;
  if DBGrid1.FieldCount < 1 then
    Exit;
  if Dlg_ImprimeEtiquetaYesNo(self) then begin
    AbrirDependRenovacaoCarta('',0,0);
    Frm_Imp_Adm_Etiqueta001 := TFrm_Imp_Adm_Etiqueta001.Create(Self);
    Frm_Imp_Adm_Etiqueta001.QuickRep1.preview;
    Frm_Imp_Adm_Etiqueta001.Release;
    Fdt_principal.spc_cons_adm_dependrenovacaocarta.close;
  end;
end;

procedure TFrm_Rel_DependRenovacao.PDJButton4Click(Sender: TObject);
var
  Executado : Boolean;
  FplanoPgto : String;
  i: integer;
begin
  inherited;
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'O Mês do agendamento deve ser preenchido !', VLD_Preenchido )) or
     (not BAS_ValidarCampo(edt_ano.name, 'O Ano do agendamento deve ser preenchido !', VLD_Preenchido )) then
     begin
     Panel6.SetFocus;
     Exit;
     end;
  if StrToDate('01/' + IntToStr(cbx_cod_mes.ValueItem) + '/' + edt_ano.Text) < Date then
     begin
     Dlg_Alerta('O Mês/Ano do Agendamento tem que ser maior que o Mês/Ano Atual!', self);
     Panel6.SetFocus;
     Exit;
     end;
  if Fdt_principal.spc_cons_adm_dependrenovacao.RecordCount > 0 then
  begin
    i:= 0;
    DB_BeginTrans;
    Executado := true;
    with Fdt_principal.spc_cons_adm_dependrenovacao do begin
      first;
      while not Fdt_principal.spc_cons_adm_dependrenovacao.EOF do begin
        if (FieldByName('nome_efi').AsString = 'Normal') then
        begin
          if (FieldByName('cod_plano').AsInteger = 1) or (FieldByName('cod_plano').AsInteger = 6) then
          begin
            if DB_OpenSQL('select cod_beneficiario from tbl_AgendamentoBeneficiario where cod_sitBeneficiario = 3'+
            ' and status_age = 0 ' +
            ' and cod_beneficiario = '+FieldByName('cod_beneficiario').AsString +
            ' and dtAgendamento_age >= '+ DB_FormatDataSQL(Data_BOM(StrToDate('01/'+ cbx_cod_mes.valueItem + '/'+ edt_ano.text)), ftDate) +
            ' and dtAgendamento_age <= '+ DB_FormatDataSQL(Data_EOM(StrToDate('01/'+ cbx_cod_mes.valueItem + '/'+ edt_ano.text)), ftDate)) < 1 then
            begin
              if Executado then
              begin
                Executado := DB_ExecSQL('insert into tbl_AgendamentoBeneficiario values('+FieldByName('cod_beneficiario').AsString+
                ','''+ IntToStr(cbx_cod_mes.ValueItem) + '/01/'+ edt_ano.Text +''', '''+ IntToStr(cbx_cod_mes.ValueItem) + '/01/'+ edt_ano.Text +''', 3, null, null, getdate(),'+
                IntToStr(FCod_Usuario)+', 0, 9006, null)');
                Inc(i);
              end;
            end;
          end;
//          if (FieldByName('cod_plano').AsInteger= 2) or (FieldByName('cod_plano').AsInteger = 3) then
          if (FieldByName('cod_novoplano').AsInteger= 52) or (FieldByName('cod_novoplano').AsInteger = 53) then
          begin
            if DB_OpenSQL('select cod_beneficiario from tbl_AgendamentoBeneficiario where cod_tipodependente = 2'+
            ' and status_age = 0 ' +
            ' and cod_beneficiario = '+ FieldByName('cod_beneficiario').AsString +
            ' and dtAgendamento_age >= '+ DB_FormatDataSQL(Data_BOM(StrToDate('01/'+ cbx_cod_mes.valueItem + '/'+ edt_ano.text)), ftDate) +
            ' and dtAgendamento_age <= '+ DB_FormatDataSQL(Data_EOM(StrToDate('01/'+ cbx_cod_mes.valueItem + '/'+ edt_ano.text)), ftDate)) < 1 then
            begin
              if Executado then
                 begin
                 // Atualizar separado tipo de dependente
                 Executado := DB_ExecSQL('insert into tbl_AgendamentoBeneficiario values('+FieldByName('cod_beneficiario').AsString+
                 ','''+ IntToStr(cbx_cod_mes.ValueItem) + '/01/'+ edt_ano.Text +''','''+ IntToStr(cbx_cod_mes.ValueItem) + '/01/'+ edt_ano.Text+''', null, '+
                 'null, 2, getdate(),'+ IntToStr(FCod_Usuario)+', 0, 3004, null)');
                 Inc(i);

                 // Atualizar separado código do plano do titular nos assistidos
//                 if (FieldByName('cod_plano').AsInteger) <> (FieldByName('cod_planotitular').AsInteger) then
                    Executado := DB_ExecSQL('insert into tbl_AgendamentoBeneficiario values('+FieldByName('cod_beneficiario').AsString+
                    ','''+ IntToStr(cbx_cod_mes.ValueItem) + '/01/'+ edt_ano.Text +''','''+ IntToStr(cbx_cod_mes.ValueItem) + '/01/'+ edt_ano.Text+''', null, '+
//                    FieldByName('cod_planotitular').AsString + ', null, getdate(),'+ IntToStr(FCod_Usuario)+', 0, 3004, null)');
                    'null, null, getdate(),'+ IntToStr(FCod_Usuario)+', 0, 3004, ' + FieldByName('cod_novoplano').AsString+')');
                    Inc(i);
                    end
            end;
//            if (FieldByName('cod_plano').AsInteger = 2) then
//              FplanoPgto := '512';
//            if (FieldByName('cod_plano').AsInteger = 3) then
//              FplanoPgto := '531';

//            if DB_OpenSQL('select cod_beneficiario from tbl_AgendamentoBeneficiario where cod_planoPagto = '+FplanoPgto+
//            ' and cod_beneficiario = '+FieldByName('cod_beneficiario').AsString+
//            ' and dtAgendamento_age >= '+DB_FormatDataSQL(Data_BOM(edt_dtAgendamento.Date), ftDate)+
//            ' and dtAgendamento_age <= '+DB_FormatDataSQL(Data_EOM(edt_dtAgendamento.Date), ftDate)) < 1 then
//            begin
//              if Executado then
//                Executado := DB_ExecSQL('insert into tbl_AgendamentoBeneficiario values('+FieldByName('cod_beneficiario').AsString+
//                ','+DB_FormatDataSQL(edt_dtAgendamento.Date, ftDate)+','+DB_FormatDataSQL(edt_dtAgendamento.Date, ftDate)+', null, null, null, getdate(),'+
//                IntToStr(FCod_Usuario)+', 0, 3004, '+FplanoPgto+')');
//            end;
          end;
        end;
        next ;
      end;
    end;
    if Executado then
    begin
     DB_Commit;
     if i > 0 then
        begin
        GeraAuditoria(0,'0','Gerado ' + IntToStr(i) + ' agendamentos para 01/' + cbx_cod_mes.Text + '/' + edt_ano.Text, '',0);
        Dlg_Ok(IntToStr(i) + ' agendamentos Gerados com Sucesso!', self);
        end
     else
        Dlg_Alerta('Nenhum agendamento pendente, rotina já execultada!', self);
    end
    else begin
      DB_RollBack;
      Dlg_Alerta('Erro ao Gerar os Agendamentos!', self);
    end;
  end;
end;

procedure TFrm_Rel_DependRenovacao.PDJButton5Click(Sender: TObject);
begin
  inherited;
  if not AbrirDependRenovacao then exit ;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := Fdt_principal.spc_cons_adm_dependrenovacao;
  if RdB_DtRenovacao.checked then
    Frm_Bas_Impressao.FCampo1 := '==> DATA DE RENOVAÇÃO'
  else
    Frm_Bas_Impressao.FCampo1 := '==> DATA LIMITE';
  Frm_Bas_Impressao.FCampo2 := 'De '+edt_dtinicial.text+' até '+edt_dtfinal.text;
  Frm_Bas_Impressao.showReport(4210);
end;

procedure TFrm_Rel_DependRenovacao.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  PageControl1.ActivePageIndex:= 0;
end;

procedure TFrm_Rel_DependRenovacao.edt_dtfinalEnter(Sender: TObject);
begin
  inherited;
  edt_dtfinal.Date:= edt_dtinicial.Date;
end;

procedure TFrm_Rel_DependRenovacao.TabSheet2Show(Sender: TObject);
begin
  inherited;
  ChaveExp:= 999999999;
  GetInfoAuditoria1ou2(self, stg_audi.name, ChaveExp, 0);
end;

procedure TFrm_Rel_DependRenovacao.stg_audiDrawCell(Sender: TObject; ACol,
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


