unit dtm_OLAP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  Tfdt_OLAP = class(TDataModule)
    OLAP_imasf: TADOConnection;
    spc_cons_med_pacienteinternado: TADOStoredProc;
    spc_cons_med_pacienteinternadocod_autorizainternacao: TIntegerField;
    spc_cons_med_pacienteinternadocod_conveniado: TIntegerField;
    spc_cons_med_pacienteinternadonomereduzido_con: TStringField;
    spc_cons_med_pacienteinternadocod_plano: TIntegerField;
    spc_cons_med_pacienteinternadoinscricao_ben: TIntegerField;
    spc_cons_med_pacienteinternadocod_empresa: TIntegerField;
    spc_cons_med_pacienteinternadodigito_ben: TSmallintField;
    spc_cons_med_pacienteinternadotitulacartei_ben: TIntegerField;
    spc_cons_med_pacienteinternadonome_ben: TStringField;
    spc_cons_med_pacienteinternadoidade_ben: TIntegerField;
    spc_cons_med_pacienteinternadonome_pla: TStringField;
    spc_cons_med_pacienteinternadoDiariasUTI: TIntegerField;
    spc_cons_med_pacienteinternadoDiariasQTO: TIntegerField;
    spc_cons_med_pacienteinternadoDiferenca: TIntegerField;
    spc_cons_med_pacienteinternadonome_cid: TStringField;
    spc_cons_med_pacienteinternadonome_aco: TStringField;
    spc_cons_med_pacienteinternadosigla_int: TStringField;
    spc_cons_med_pacienteinternadonome_tdp: TStringField;
    spc_cons_med_pacienteinternadodtalta_alt: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdt_OLAP: Tfdt_OLAP;

implementation

{$R *.DFM}

end.
