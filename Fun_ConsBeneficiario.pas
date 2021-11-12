unit Fun_ConsBeneficiario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, PDJButton, Grids, DCGrids, DCDBGrids, Db, DBTables, StdCtrls,
  DCChoice;

type
  TFrm_Fun_ConsBeneficiario = class(TForm)
    pnl_Titulo: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    btn_ok: TPDJButton;
    btn_cancelar: TPDJButton;
    DBG_Localiza: TDCDBGrid;
    lbl_indice: TLabel;
    btn_localizar: TPDJButton;
    lbl_totalreg: TLabel;
    Timer1: TTimer;
    Query1: TQuery;
    DataSource1: TDataSource;
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure DBG_LocalizaCellDblClick(Column: TColumn);
    procedure edt_localizaKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_LocalizaKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBG_LocalizaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
    FTabela,
    FCampos,
    FTitCampos,
    FIndice ,
    FIndiceAnt,
    FChave,
    FFiltro,
    FResult : String ;
    FVerIndice : boolean ;
  public
    { Public declarations }
  FQualQuery: Integer;
  FEmpresaFolha, FMatricula, FDigito, FInscricao1, FCPF, FTipoDependente, FNomeBen,
  FTela, FTitulaCartei, FCodBeneficiario, FTipo_sit: String;
  end;

var
  Frm_Fun_ConsBeneficiario: TFrm_Fun_ConsBeneficiario;

implementation

uses Constantes, Dtm_Principal, Fun_Str, Fun_DB, Dlg_Mensagem, Fun_ConsCadastro, dtm_principal4,
     dtm_principal6, dtm_principal2;

{$R *.DFM}

procedure TFrm_Fun_ConsBeneficiario.btn_cancelarClick(Sender: TObject);
begin
//ok
  FResult := '' ;
  Close;
end;

procedure TFrm_Fun_ConsBeneficiario.btn_localizarClick(Sender: TObject);
begin
//ok
//  AbrirPesquisa(edt_localiza.text, Rdg_Filtro.ItemIndex);
  if FQualQuery = 1 then
  begin
    DataSource1.DataSet:= fdt_principal6.spc_cons_adm_BenefMatricDesc;
    pnl_Titulo.Caption := '    Localizar Beneficiários';
    with fdt_principal6.spc_cons_adm_BenefMatricDesc do
    begin
      Close;
      ParamByName('@cod_empresafolha').AsString := FEmpresaFolha;
      ParamByName('@cod_tipodependente').AsString := '0';
      ParamByName('@matriculadebito_seg').AsString := FMatricula;
      ParamByName('@tipo_sit').AsString := '';
      ParamByName('@nome_ben').AsString := FNomeBen;
      ParamByName('@inscricao_ben').AsString := FInscricao1;
      Open;
    end;
    DBG_Localiza.SetFocus
  end
  else
    if FQualQuery = 2 then
    begin
      DataSource1.DataSet:= fdt_principal4.spc_cons_adm_consultaGeralBen;
      with fdt_principal4.spc_cons_adm_consultaGeralBen do
      begin
        close;
        ParamByName('@inscricao_ben').AsString := FInscricao1;
        ParamByName('@matricula_mte').AsString := FMatricula;
        ParamByName('@cpf_ben').AsString := FCPF;
        ParamByName('@cod_beneficiario').AsString := '';
        ParamByName('@nome_ben').AsString := '';
        ParamByName('@rg_ben').AsString := '';
        ParamByName('@dtnascim_ben').AsString := '';
        ParamByName('@ordem').AsInteger := 0;
        open;
      end;
      DBG_Localiza.SetFocus

    end
    else
      if FQualQuery = 3 then
      begin
        DataSource1.DataSet:= Query1;
        pnl_Titulo.Caption := '    Localizar Beneficiários';
        Query1.Close;
        with Query1 do
        begin
          Close;
          SQL.Add('select b.cod_beneficiario, b.inscricao_ben, b.nome_ben, p.nome_pla, b.processo_ben, s.nome_sit, '+
          'd.nome_tdp, m.matriculaprinc_seg from tbl_beneficiario b, tbl_sitbeneficiario s, tbl_beneficiario a, '+
          'tbl_segurado m, tbl_plano p, tbl_tipodependente d where b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
          'and a.cod_beneficiario = m.cod_beneficiario and b.inscricao_ben = a.inscricao_ben and b.cod_plano = p.cod_plano '+
          'and b.cod_tipodependente = d.cod_tipodependente and b.inscricao_ben = ' + FInscricao1);
          Open;
          if RecordCount > 0 then
          begin
            DBG_Localiza.Columns[0].Title.Caption:= '';
            DBG_Localiza.Columns[0].Width:= 1;
            DBG_Localiza.Columns[1].Title.Caption:= 'Inscrição';
            DBG_Localiza.Columns[1].Width:= 60;
            DBG_Localiza.Columns[2].Title.Caption:= 'Nome';
            DBG_Localiza.Columns[2].Width:= 300;
            DBG_Localiza.Columns[3].Title.Caption:= 'Plano';
            DBG_Localiza.Columns[3].Width:= 70;
            DBG_Localiza.Columns[4].Title.Caption:= 'Processo';
            DBG_Localiza.Columns[4].Width:= 70;
            DBG_Localiza.Columns[5].Title.Caption:= 'Situação';
            DBG_Localiza.Columns[5].Width:= 70;
            DBG_Localiza.Columns[6].Title.Caption:= 'Tip.Depend.';
            DBG_Localiza.Columns[6].Width:= 90;
            DBG_Localiza.Columns[7].Title.Caption:= '';
            DBG_Localiza.Columns[7].Width:= 1;
            DBG_Localiza.SetFocus;
          end;
        end;
      end;
end;

procedure TFrm_Fun_ConsBeneficiario.btn_okClick(Sender: TObject);
begin
//ok
//  FResult := Query1.Fields[0].AsString;
  inherited;
  Hide;
  if FQualQuery = 1 then
     begin
     with fdt_principal6.spc_cons_adm_BenefMatricDesc do
       begin
       FMatricula:= FieldByName('matriculadebito_seg').AsString;
       FDigito:= FieldByName('digitomatdeb_seg').AsString;
       FEmpresaFolha:= FieldByName('cod_empresafolha').AsString;
       FInscricao1:= FieldByName('inscricao_ben').AsString;
       FNomeBen:= FieldByName('nome_ben').AsString;
       FTitulaCartei:= FieldByName('titulacartei_ben').AsString;
       FCodBeneficiario:= FieldByName('cod_beneficiario').AsString;
       FCPF:= FieldByName('cpf_ben').AsString;
       FTipo_sit := FieldByName('tipo_sit').AsString;
 //      FTipoDependente:= FieldByName('nome_tdp').AsString;
       end;
     end
  else
     if FQualQuery = 2 then
        begin
        with fdt_principal4.spc_cons_adm_consultaGeralBen do
          begin
          FMatricula:= FieldByName('matricula_mte').AsString;
          FEmpresaFolha:= FieldByName('cod_empresafolha').AsString;
          FTipoDependente:= FieldByName('nome_tdp').AsString;
          end;
        end
     else
        if FQualQuery = 3 then
           begin
           with Query1 do
             begin
             FCodBeneficiario:= FieldByName('cod_beneficiario').AsString;
             end;
           end;
  Close;
end;

procedure TFrm_Fun_ConsBeneficiario.DBG_LocalizaCellDblClick(Column: TColumn);
begin
  btn_okclick(self);
end;

procedure TFrm_Fun_ConsBeneficiario.edt_localizaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    btn_localizarClick(self);
end;

procedure TFrm_Fun_ConsBeneficiario.DBG_LocalizaKeyPress(Sender: TObject;
  var Key: Char);
begin
//ok
  if key = #13 then
    btn_okClick(Self);
end;

procedure TFrm_Fun_ConsBeneficiario.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false ;
  case fdt_principal4.spc_cons_adm_consultaGeralBen.RecordCount of
    0 : begin
      Dlg_Alerta('Nenhum Registro foi encontrado para Pesquisa !', self);
      btn_cancelarClick(Self);
    end;
    1 : begin
      btn_okClick(Self);
    end;
  end;
end;

procedure TFrm_Fun_ConsBeneficiario.FormShow(Sender: TObject);
begin
//ok
  btn_localizarClick(self);
end;

procedure TFrm_Fun_ConsBeneficiario.DBG_LocalizaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if FQualQuery = 1 then
     begin
     if not (gdFocused in State) then
       begin
       if Column.Field.Dataset.FieldbyName('tipo_sit').AsInteger =  2 then
         (Sender as TDCDBGrid).Canvas.Font.Color := clRed ;
       end;
     DBG_Localiza.DefaultDrawColumnCell(rect,DataCol,Column,State);
     end;
end;

end.
