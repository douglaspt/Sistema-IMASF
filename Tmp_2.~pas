unit Tmp_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGrids, ExtCtrls;

type
  TFrm_Tmp2 = class(TForm)
    Button1: TButton;
    edt_carteirinha: TEdit;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    Query2: TQuery;
    DataSource2: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    pnl_alerta: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure edt_carteirinhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    wCod_Beneficiario, wInscricao : string ;
  public
    { Public declarations }
  end;

var
  Frm_Tmp2: TFrm_Tmp2;

implementation
uses Fun_DB;

{$R *.DFM}

procedure TFrm_Tmp2.Button1Click(Sender: TObject);
begin
  edt_carteirinha.SetFocus;
end;

procedure TFrm_Tmp2.edt_carteirinhaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    Query1.close;
    Query2.close;
    wCod_Beneficiario := copy(edt_carteirinha.text, 2, 5) ;
    wInscricao := copy(edt_carteirinha.text, 9, 5) ;
    DB_OpenSQL('SELECT b.nome_ben, p.descricao_pla, b.dtnascim_ben, cod_sitbeneficiario FROM tbl_beneficiario b INNER JOIN tbl_plano p ON b.cod_plano = p.cod_plano '+
    ' WHERE b.cod_beneficiario = '+wCod_Beneficiario);
    Label4.Caption := tab.fieldbyname('nome_ben').AsString + ' - ' + tab.fieldbyname('descricao_pla').AsString + ' - Nascimento: ' + tab.fieldbyname('dtnascim_ben').AsString;
    Label5.Caption := Label4.Caption;
    if Tab.FieldByName('cod_sitbeneficiario').AsString <> '' then begin
      DB_OpenSql('select nome_sit, tipo_sit from tbl_sitbeneficiario where cod_sitbeneficiario = '+Tab.FieldByName('cod_sitbeneficiario').AsString);
      pnl_alerta.Caption := '***  Situação : '+Tab.FieldByName('nome_sit').AsString+'  ***';
      case Tab.FieldByName('tipo_sit').AsInteger of
        1 : pnl_alerta.color := clYellow;
        2 : pnl_alerta.color := clRed;
      end;
      pnl_alerta.visible := Tab.FieldByName('tipo_sit').AsInteger > 0 ;
      DB_ClearSQL;
    end;
    if not DB_ExecSQL('insert into tmp_testeCarteiras (cod_beneficiario, carteira, inscricao, status, caixaA, caixaB) values ('+
    wCod_Beneficiario+','+copy(edt_carteirinha.text, 7, 10)+','+copy(edt_carteirinha.text, 9, 5)+',1, '+Edit2.text+','+edit3.Text+')') then begin
      showmessage('Esta Carteirinha ja foi Lida ou Apresenta Erros');
//      Exit;
    end;
    edt_carteirinha.text := '';
    label1.Caption := 'Beneficiários para Inscrição : '+wInscricao;
    Query1.sql.Clear;
    Query1.sql.Add('SELECT b.inscricao_ben, titulacartei_ben, b.nome_ben, b.dtnascim_ben, s.nome_sit FROM tbl_beneficiario b INNER JOIN '+
    ' tbl_sitbeneficiario s ON b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
    ' WHERE b.inscricao_ben = '+wInscricao+' order by titulacartei_ben');
    Query1.open;
    Query2.sql.Clear;
    Query2.sql.Add('select * from tmp_testeCarteiras where inscricao = '+wInscricao);
    Query2.open;
   // edt_carteirinha.text := '';
    if Query2.RecordCount < Query1.RecordCount then
      Label3.Caption := 'FALTAM '+inttostr(Query1.RecordCount - Query2.RecordCount)+' CARTEIRINHAS PARA SEREM LIDAS'
    ELSE
      if Query2.RecordCount = Query1.RecordCount then
        Label3.Caption := 'TODAS AS CARTEIRINHAS DESTE BENEFICIÁRIO JA FORAM LIDAS'
      ELSE
        Label3.Caption := '--- ATENÇÃO ! ESTE BENEFICIÁRIO POSSUI MAIS DE UMA CARTEIRINHA ! ---';
  end;
end;

procedure TFrm_Tmp2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Query1.close;
  Query2.close;
end;

procedure TFrm_Tmp2.FormShow(Sender: TObject);
begin
  pnl_alerta.Visible := false;
end;

end.
