unit Fun_ConsCadastro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, PDJButton, Grids, DCGrids, DCDBGrids, Db, DBTables, StdCtrls,
  DCChoice;

function Cons_ConsultaCadastro(Frm : Tform; Tabela, Campos, TitCampos, Titulo, FSql : String; VerIndice : boolean): variant;
type
  TFrm_Fun_ConsCadastro = class(TForm)
    pnl_Titulo: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    btn_ok: TPDJButton;
    btn_cancelar: TPDJButton;
    DBG_Localiza: TDCDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    lbl_indice: TLabel;
    edt_localiza: TDCEdit;
    Label1: TLabel;
    btn_localizar: TPDJButton;
    Rdg_Filtro: TRadioGroup;
    lbl_totalreg: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    rdb_decrescente: TRadioButton;
    RadioButton3: TRadioButton;
    procedure btn_cancelarClick(Sender: TObject);
    procedure DBG_LocalizaTitleClick(Column: TColumn);
    procedure btn_localizarClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure DBG_LocalizaCellDblClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_localizaKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_LocalizaKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
    FVerIndice, FClicarOK : boolean ;
    function AbrirPesquisa(Filtro : String;TipFiltro : Integer = 0; ColumnIndex : integer = 0): boolean;
  public
    { Public declarations }
  end;

var
  Frm_Fun_ConsCadastro: TFrm_Fun_ConsCadastro;

implementation
uses Constantes, Dtm_Principal, Fun_Str, Fun_DB, Dlg_Mensagem;
{$R *.DFM}


function TFrm_Fun_ConsCadastro.AbrirPesquisa(Filtro : String; TipFiltro : Integer = 0; ColumnIndex : integer = 0): boolean;
  function SQLPesquisaOpen(Filtro : String; TipFiltro : Integer = 0): String;
    function CopiaCampoTabela(campos, campo : string): string;
    var
      i, n : integer;
    begin
      if (Pos('.', campo) > 0) or (Pos('.', campos) = 0) then begin
        result := campo ;
        exit;
      end;
      for i := 1 to length(campos) do
      begin
        if copy(campos,i,length(campo)) = campo then begin
          n := i+1;
          while (campos[n] <> ' ') and (n > 0) do begin
            if n > 0 then
              result := copy(campos,n,length(campo)+(i-n))
            else
              result := copy(campos,n,length(campo)+n);
            n:=n-1;
          end;
          exit;
        end;
      end;
    end;
  var
    SR : String ;
  begin
    SR := 'select '+FCampos+' from '+FTabela ;
    if Filtro <> '' then begin
      case TipFiltro of
        BD_Find_Equal  : SR := SR + ' where ' + FIndice + ' =  ''' + Filtro + '''' ;
        BD_Find_Larger : SR := SR + ' where ' + FIndice + ' >= ''' + Filtro + '''' ;
        BD_Find_Small  : SR := SR + ' where ' + FIndice + ' <= ''' + Filtro + '''' ;
        BD_Find_Like   : SR := SR + ' where ' + FIndice + ' like ''%' + Filtro + '%''' ;
      end;
    end;
    if FFiltro <> '' then
      if Pos('where', SR) > 0 then
        SR := SR + ' and ' + FFiltro
      else
        SR := SR + ' where ' + FFiltro ;
    if FIndice = '' then
      FIndice := FChave ;
    FIndice := CopiaCampoTabela(FCampos, FIndice);
    SR := SR + ' order by ' + FIndice ;
    if rdb_decrescente.Checked then
      SR := SR + ' desc';
    Result := SR ;
  end;
  procedure FormatEdt_Localizar(FT : TFieldType);
  begin
    case FT of                                                          
      ftString : edt_localiza.EditMask := '' ;
      ftSmallint, ftInteger, ftAutoInc : edt_localiza.EditMask := '9999999999' ;
    end;
  end;
var
  i : integer ;
  S : String ;
begin
  try
    with Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add(SQLPesquisaOpen(Filtro, TipFiltro));
      Open;
      lbl_totalreg.Caption := 'Total de Registros : '+Str_IntToStr(recordcount);
      for i := 0 to Fieldcount-1 do begin
        Fields[i].DisplayLabel := GetFieldArray(FTitCampos,i);
        if DBG_Localiza.Columns[i].Width > 300 then
          DBG_Localiza.Columns[i].Width := 300 ;
        DBG_Localiza.Columns[i].Color := clWindow;
      end;
      s := FIndice ;
      if Pos('.', s) > 0 then
        s := copy(s, 3, length(s)-2);
      if FIndiceAnt <> s then begin
        FormatEdt_Localizar(FieldByName(s).DataType);
        lbl_indice.Caption := 'Índice Ativo : ' + FieldByName(s).DisplayLabel ;
      end;
      if not FVerIndice then
        DBG_Localiza.Columns[0].Width := 1 ;
    end;
    DBG_Localiza.Columns[ColumnIndex].Color := clMenu;
    result := true ;
    FIndiceAnt := FIndice ;
  except
    result := false ;
  end;
end;

function Cons_ConsultaCadastro(Frm : Tform; Tabela, Campos, TitCampos, Titulo, FSql : String; VerIndice : boolean): variant;
  function MontarParametros(FSql : String) : String ;
  var
    i : integer ;
  begin
    //Separa os campos do comando select
    i := pos(' from ', FSql);
    Campos := Copy(FSql, 8, i-8);
    FSql := Copy(FSql, i+6, length(FSql)-(i-2));
    i := pos(' where ', FSql);
    Tabela := Copy(FSql, 1, i-1);
    FSql := Copy(Fsql, i+7, length(FSql)-(i-2));
    result := FSql;
  end;
  function OcultarRegistros(FTabela:String): boolean;
  begin
    DB_OpenSql('select count(*) from '+STR_PrimeiroStr(FTabela));
    result:= Tab.fields[0].asinteger > 500 ;
    DB_ClearSQL;
  end;

begin
  with Frm_Fun_ConsCadastro do begin
    pnl_Titulo.Caption := '     '+Titulo;
    if FSql <> '' then
      FFiltro := MontarParametros(FSql);
    FTabela := Tabela ;
    FCampos := Campos ;
    FChave  := GetFieldArray(FCampos, 0);
    FIndice := FChave ;
    FTitCampos := TitCampos ;
    FVerIndice := VerIndice ;
    DB_ExecSQL('set rowcount 500');
//    if OcultarRegistros(Ftabela) then
//      AbrirPesquisa('-9999999', 0)
//    else begin
      AbrirPesquisa('', 0) ;
      if not FVerIndice then
        DBG_LocalizaTitleClick(DBG_Localiza.Columns[1]);
//    end;
    if DBG_Localiza.Columns.Count > 5 then begin
      Frm_Fun_ConsCadastro.Width := 726 ;
      DBG_Localiza.width := 700 ;
      Rdg_Filtro.width := 700 ;
    end else begin
      Frm_Fun_ConsCadastro.Width := 627 ;
      DBG_Localiza.width := 600 ;
      Rdg_Filtro.width := 600 ;
    end;
    showModal ;
    Query1.Close;
    Result := FResult ;
  end;
end;

procedure TFrm_Fun_ConsCadastro.btn_cancelarClick(Sender: TObject);
begin
  FResult := '' ;
  Close;
end;

procedure TFrm_Fun_ConsCadastro.DBG_LocalizaTitleClick(Column: TColumn);
begin
  FIndice := Column.FieldName ;
  AbrirPesquisa('',0, Column.Index );
end;

procedure TFrm_Fun_ConsCadastro.btn_localizarClick(Sender: TObject);
begin
  AbrirPesquisa(edt_localiza.text, Rdg_Filtro.ItemIndex);
end;

procedure TFrm_Fun_ConsCadastro.btn_okClick(Sender: TObject);
begin
  FResult := Query1.Fields[0].AsString;
  Close;
end;

procedure TFrm_Fun_ConsCadastro.DBG_LocalizaCellDblClick(Column: TColumn);
begin
  btn_okclick(self);
end;

procedure TFrm_Fun_ConsCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FFiltro := '' ;
  DB_ExecSQL('set rowcount 999999999');
end;

procedure TFrm_Fun_ConsCadastro.edt_localizaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    btn_localizarClick(self);
end;

procedure TFrm_Fun_ConsCadastro.DBG_LocalizaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    btn_okClick(Self);
end;

procedure TFrm_Fun_ConsCadastro.RadioButton1Click(Sender: TObject);
begin
  DB_ExecSQL('set rowcount 500');
end;

procedure TFrm_Fun_ConsCadastro.RadioButton2Click(Sender: TObject);
begin
  DB_ExecSQL('set rowcount 999999999');
end;

procedure TFrm_Fun_ConsCadastro.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false ;
  case Query1.RecordCount of
    0 : begin
      Dlg_Alerta('Nenhum Registro foi encontrado para Pesquisa !', self);
      btn_cancelarClick(Self);
    end;
    1 : begin
      btn_okClick(Self);
    end;
  end;
end;

procedure TFrm_Fun_ConsCadastro.FormShow(Sender: TObject);
begin
  case Query1.RecordCount of
    0, 1 : Timer1.Enabled := true ;
  end;  
end;

end.
