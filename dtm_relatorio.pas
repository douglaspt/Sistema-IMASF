unit dtm_relatorio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  Tfdt_relatorio = class(TDataModule)
    spc_cons_adm_beneficiario001: TStoredProc;
    bd_imasfrelatorio: TDatabase;
    spc_cons_adm_beneficiario001nome_ben: TStringField;
    spc_cons_adm_beneficiario001endereco_ben: TStringField;
    spc_cons_adm_beneficiario001bairro_ben: TStringField;
    spc_cons_adm_beneficiario001cidade_ben: TStringField;
    spc_cons_adm_beneficiario001cep_ben: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdt_relatorio: Tfdt_relatorio;

implementation

{$R *.DFM}

end.
