unit Tmp_3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGrids;

type
  TFrm_Tmp3 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    edt_inscricao: TEdit;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    wCod_Beneficiario, wInscricao : string ;
  public
    { Public declarations }
  end;

var
  Frm_Tmp3: TFrm_Tmp3;

implementation
uses Fun_DB;

{$R *.DFM}

procedure TFrm_Tmp3.Button1Click(Sender: TObject);
begin
  if edt_inscricao.Text <> '' then
  begin
    Query1.Close;
    Query1.sql.Clear;
    Query1.sql.Add('select t.carteira, t.inscricao, b.nome_ben, t.caixaA, t.caixaB'+
    ' from tmp_testeCarteiras t, tbl_beneficiario b where t.cod_beneficiario = b.cod_beneficiario'+
    ' and inscricao = '+edt_inscricao.Text);
    Query1.open;
  end;
end;

procedure TFrm_Tmp3.FormShow(Sender: TObject);
begin
  edt_inscricao.SetFocus;
end;

end.
