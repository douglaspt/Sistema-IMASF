program agendamentos;

uses
  Forms,
  Mov_2029 in 'Mov_2029.pas' {Frm_Mov_2029},
  dtm_principal in 'dtm_principal.pas' {Fdt_principal: TDataModule};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_Mov_2029, Frm_Mov_2029);
  Application.CreateForm(TFdt_principal, Fdt_principal);
  Application.Run;
end.
