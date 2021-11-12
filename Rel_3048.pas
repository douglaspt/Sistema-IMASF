unit Rel_3048;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BDateEdit;

type
  TFrm_Rel_3048 = class(TFrm_Bas_TelaPadrao)
    Panel4: TPanel;                                     
    edt_inscricao_ben: TDCEdit;
    Panel1: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    edt_matricula_mte: TDCEdit;
    edt_cod_beneficiario: TDCEdit;
    edt_nome_ben: TDCEdit;
    Panel7: TPanel;
    dbg_consultabenefi: TDBGrid;
    DataSource1: TDataSource;
    btn_localizar: TSpeedButton;
    btn_beneficiario: TPDJButton;
    Panel8: TPanel;
    Panel9: TPanel;
    rdb_matricula: TRadioButton;
    Label10: TLabel;
    rdb_inscricao: TRadioButton;
    rdb_nome: TRadioButton;
    lbl_totalreg: TLabel;
    Label1: TLabel;
    edt_dtnascim_ben: TBDateEdit;
    edt_cpf: TDCEdit;
    edt_rg: TDCEdit;
    btn_descontos: TPDJButton;
    PDJButton1: TPDJButton;
    procedure FormShow(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure dbg_consultabenefiDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_beneficiarioClick(Sender: TObject);
    procedure dbg_consultabenefiDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_nome_benKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_descontosClick(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    wCod_Beneficiario : String ;
    FPeriodoInicial, FPeriodoFinal : String ;
  end;

var
  Frm_Rel_3048: TFrm_Rel_3048;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
  dtm_principal2, Imp_4069, Dlg_Mensagem, dtm_principal3, dtm_principal4, Imp_4094, Fun_Data,
  Cad_fpm, Cad_Segurado, Cad_Dependente, Fun_obj, Fun_DB, Mov_2044, Cad_Agendamento ;

{$R *.DFM}

procedure TFrm_Rel_3048.FormShow(Sender: TObject);
begin
  inherited;
  if wCod_Beneficiario <> '' then
     begin
     edt_cod_beneficiario.text := wCod_Beneficiario ;
     btn_localizarClick(Self);
     end;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cb2_cod_mes', 'nome_mes');
  BAS_CarregarCombo('cbx_cod_empresafolha','nome_emp');
  btn_beneficiario.Visible := not Obj_LocalizarFormAtivo(Frm_Cad_Segurado);
  btn_beneficiario.Visible := not Obj_LocalizarFormAtivo(Frm_Cad_Dependente);
  btn_beneficiario.Visible := not Obj_LocalizarFormAtivo(Frm_Cad_fpm);
  Obj_EmptyEdit(self);
end;

procedure TFrm_Rel_3048.btn_localizarClick(Sender: TObject);
begin
  inherited;
  if (edt_inscricao_ben.text = '') and (edt_matricula_mte.text = '') and
  (edt_cod_beneficiario.text = '') and (edt_nome_ben.Text = '') and
  (edt_rg.Text = '') and (edt_cpf.Text = '') and (edt_dtnascim_ben.Text = '') then
    begin
      ShowMessage('Um dos Campos devem ser Preenchidos!');
      exit;
    end;
  with fdt_principal4.spc_cons_adm_consultaGeralBen do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.text;
    ParamByName('@matricula_mte').AsString := edt_matricula_mte.text;
    ParamByName('@cod_beneficiario').AsString := edt_cod_beneficiario.Text;
    ParamByName('@nome_ben').AsString := edt_nome_ben.Text;
    ParamByName('@rg_ben').AsString := edt_rg.Text;
    ParamByName('@cpf_ben').AsString := edt_cpf.Text;
    ParamByName('@dtnascim_ben').AsString := Data_Format('mm/dd/yyyy',edt_dtnascim_ben.date);
    if rdb_inscricao.Checked = True then
    ParamByName('@ordem').AsInteger := 0;
    if rdb_matricula.Checked = True then
    ParamByName('@ordem').AsInteger := 1;
    if rdb_nome.Checked = true then
    ParamByName('@ordem').AsInteger := 2;
    open;
      if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
      end;
      lbl_totalreg.Caption := 'Total de Registros = '+inttostr(recordcount);
  end;
end;

procedure TFrm_Rel_3048.dbg_consultabenefiDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If not (gdFocused in State) then
  begin
    if Column.Field.Dataset.FieldbyName('nome_tdp').AsString =  'N�o Benefici�rio' then
    (Sender as TDBGrid).Canvas.Font.Color := clblue ;
  end;
  dbg_consultabenefi.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFrm_Rel_3048.btn_beneficiarioClick(Sender: TObject);
begin
  inherited;
  Hide;
  with fdt_principal4.spc_cons_adm_consultaGeralBen do
  begin
    if (FieldByName('nome_tdp').AsString = 'N�o Benefici�rio')  then
    begin
      Frm_Cad_fpm := TFrm_Cad_fpm.Create(Self);
      Frm_Cad_fpm.wCod_Beneficiario := FieldByName('cod_beneficiario').AsString ;
      Frm_Cad_fpm.ShowModal;
      Frm_Cad_fpm.Release;
    end;
    if (FieldByName('titulacartei_ben').AsInteger = 0) and (FieldByName('nome_tdp').AsString <> 'N�o Benefici�rio')  then
    begin
      Frm_Cad_Segurado := TFrm_Cad_Segurado.Create(Self);
      Frm_Cad_Segurado.wCod_Beneficiario := FieldByName('cod_beneficiario').AsString ;
      Frm_Cad_Segurado.ShowModal;
      Frm_Cad_Segurado.Release;
    end;
    if FieldByName('titulacartei_ben').AsInteger > 0 then
    begin
      Frm_Cad_Dependente := TFrm_Cad_Dependente.Create(Self);
      Frm_Cad_Dependente.wCod_Beneficiario := FieldByName('cod_beneficiario').AsString ;
      Frm_Cad_Dependente.ShowModal;
      Frm_Cad_Dependente.Release;
    end;
  end;
  Show;
end;

procedure TFrm_Rel_3048.dbg_consultabenefiDblClick(Sender: TObject);
begin
  inherited;
   btn_beneficiarioClick(self);
end;

procedure TFrm_Rel_3048.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fdt_principal4.spc_cons_adm_consultaGeralBen.Close;
end;

procedure TFrm_Rel_3048.edt_nome_benKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    btn_localizar.click;
end;

procedure TFrm_Rel_3048.btn_descontosClick(Sender: TObject);
begin
  inherited;
{  Hide;
  Frm_Mov_DescontoManual := TFrm_Mov_DescontoManual.Create(Self);
  Frm_Mov_DescontoManual.PDJButton1Click(self);
  Frm_Mov_DescontoManual.edt_inscricao_ben.Text := fdt_principal4.spc_cons_adm_consultaGeralBen.fieldbyName('inscricao_ben').AsString;
  Frm_Mov_DescontoManual.FEmpresaFolha := fdt_principal4.spc_cons_adm_consultaGeralBen.fieldbyName('cod_empresafolha').AsString;
 // Frm_Mov_DescontoManual.btn_localizarClick(self);
  Frm_Mov_DescontoManual.ShowModal;
  Frm_Mov_DescontoManual.Release;
  Show;}
  Hide;
  Frm_Mov_2044:= TFrm_Mov_2044.Create(Self);
  Frm_Mov_2044.ShowModal;
  Frm_Mov_2044.Release;
  Show;
end;

procedure TFrm_Rel_3048.PDJButton1Click(Sender: TObject);
begin
  inherited;
  with fdt_principal4.spc_cons_adm_consultaGeralBen do
  begin
    if (FieldByName('nome_tdp').AsString = 'N�o Benefici�rio')  then
    begin
      Dlg_Alerta('Acesso somente para Benefici�rios',self);
      edt_inscricao_ben.SetFocus;                                                                                             
      Exit;
    end;
    Hide;
    Frm_Cad_Agendamento := TFrm_Cad_Agendamento.Create(Self);
    Frm_Cad_Agendamento.wCod_Beneficiario := FieldByName('cod_beneficiario').AsString ;
    Frm_Cad_Agendamento.ShowModal;
    Frm_Cad_Agendamento.Release;
  end;
  Show;
end;

end.

