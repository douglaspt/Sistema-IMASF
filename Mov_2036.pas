unit Mov_2036;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Bas_TelaPadrao, ComCtrls, PDJButton, ExtCtrls, StdCtrls, DCChoice, DB,
  Grids, DBGrids, Buttons, Mask, DBCtrls, jpeg, BEdit, BComboBox, ImgList;

type
  TFrm_Mov_2036 = class(TFrm_Bas_TelaPadrao)
    Panel7: TPanel;
    edt_inscricao_ben: TDCChoiceEdit;
    Panel1: TPanel;
    lsv_beneficiarios: TListView;
    ImageList1: TImageList;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt_minimo: TEdit;
    edt_tlbasico: TEdit;
    edt_tlintermed: TEdit;
    edt_tlespecial: TEdit;
    PDJButton3: TPDJButton;
    procedure edt_inscricao_benButtonClick(Sender: TObject);
    procedure edt_inscricao_benKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton3Click(Sender: TObject);
  private
    { Private declarations }
    FMesAtual : boolean;
    FPesquisaSQLDefalt, gp, codben : string;
    ListItem: TListItem;
    vlbase, vb, vi, ve, vb2, vi2, ve2, vlbase2 : double;
  public
    { Public declarations }
    FPeriodoInicial, FPeriodoFinal, FMesReferencia, FAnoReferencia, FEmpresaFolha,
    wInscricao : String ;
  end;

var
  Frm_Mov_2036: TFrm_Mov_2036;

implementation
uses Imp_Med_StatusConta, dtm_principal, Fun_Medico, Fun_ConsCadastro, Constantes,
dtm_principal5, Fun_Str, Dlg_Mensagem, Fun_Obj, Fun_Data, Fun_Db, Fun_Beneficiario,
Rel_3034, Bas_Impressao, dtm_principal6;

{$R *.DFM}



procedure TFrm_Mov_2036.edt_inscricao_benButtonClick(Sender: TObject);
begin
  inherited;
  vb := 0;
  vi := 0;
  ve := 0;
  FPesquisaSQLDefalt := FSQL_Beneficiario ;
  if edt_inscricao_ben.text = '' then
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.titulacartei_ben = 0'
  else
    FPesquisaSQL  := FPesquisaSQLDefalt+' and b.titulacartei_ben = 0 and b.inscricao_ben = '+edt_inscricao_ben.text;
  codben := Cons_ConsultaCadastro(self, 'tbl'+Copy(FEditChave,8,length(FEditChave)), FPesquisa, FPesquisaTit, FTitPesquisa, FPesquisaSQL, false);
  if edt_inscricao_ben.text = '' then begin
    DB_OpenSQL(' SELECT     inscricao_ben FROM tbl_beneficiario where cod_beneficiario = '+codben);
    edt_inscricao_ben.text := Tab.Fields[0].AsString;
  end;

  if edt_inscricao_ben.text <> '' then begin
    DB_OpenSQL(' SELECT     b.inscricao_ben, m.vlbase_mte FROM tbl_matriculaentrada m INNER JOIN '+
               ' tbl_segurado s ON m.cod_beneficiario = s.cod_beneficiario INNER JOIN '+
               ' tbl_beneficiario b ON m.cod_beneficiario = b.cod_beneficiario AND s.cod_beneficiario = b.cod_beneficiario '+
               ' WHERE     b.inscricao_ben = ' + edt_inscricao_ben.text);
    vlbase :=  Tab.fieldbyname('vlbase_mte').asfloat;
    DB_OpenSQL(' SELECT     b.nome_ben, '''' as nome_gra, b.idade_ben, b.dtnascim_ben '+
               ' FROM         tbl_beneficiario b INNER JOIN '+
               ' tbl_segurado d ON b.cod_beneficiario = d.cod_beneficiario INNER JOIN '+
               ' tbl_sitbeneficiario s ON b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
               ' WHERE     (b.inscricao_ben = '+edt_inscricao_ben.text+') AND (s.tipo_sit < 2) and (b.cod_tipodependente < 2) '+
               ' union SELECT     b.nome_ben, g.nome_gra, b.idade_ben, b.dtnascim_ben '+
               ' FROM         tbl_beneficiario b INNER JOIN '+
               ' tbl_dependente d ON b.cod_beneficiario = d.cod_beneficiario INNER JOIN '+
               ' tbl_grauparent g ON d.cod_grauparent = g.cod_grauparent INNER JOIN '+
               ' tbl_sitbeneficiario s ON b.cod_sitbeneficiario = s.cod_sitbeneficiario '+
               ' WHERE     (b.inscricao_ben = '+edt_inscricao_ben.text+') AND (s.tipo_sit < 2) and (b.cod_tipodependente < 2) '+
               ' ORDER BY nome_gra, b.nome_ben');
    lsv_beneficiarios.Items.Clear;
    while not Tab.Eof do begin
      gp := Tab.fieldbyname('nome_gra').asstring;
      ListItem := lsv_beneficiarios.Items.Add;
      ListItem.Caption := Tab.fieldbyname('nome_ben').asstring;
      ListItem.Subitems.Add(gp);
      ListItem.Subitems.Add(Tab.fieldbyname('dtnascim_ben').asstring);
      ListItem.Subitems.Add(Tab.fieldbyname('idade_ben').asstring);
      DB_OpenADOSQL(' select * from tbl_planoitemvalor '+
      ' where '+Tab.fieldbyname('idade_ben').asstring+' >= faixaIni_piv and '+
      Tab.fieldbyname('idade_ben').asstring+' <= faixaFin_piv '+
      ' and cod_planopagto < 50 ORDER BY cod_planopagto');
      if gp = '' then begin
        ListItem.Subitems.Add(FormatFloat('###,##0.00',vlbase*(TabADO.fieldbyname('percentual_piv').asfloat/100)));
        vb := vb + vlbase*(TabADO.fieldbyname('percentual_piv').asfloat/100);
      end else begin
        ListItem.Subitems.Add(FormatFloat('###,##0.00',TabADO.fieldbyname('vldependente_piv').asfloat));
        vb := vb + TabADO.fieldbyname('vldependente_piv').asfloat;
      end;
      TabADO.next;
      ListItem.Subitems.Add(FormatFloat('###,##0.00',TabADO.fieldbyname('vlfixo_piv').AsFloat));
      vi := vi + TabADO.fieldbyname('vlfixo_piv').asfloat;
      TabADO.next;
      ListItem.Subitems.Add(FormatFloat('###,##0.00',TabADO.fieldbyname('vlfixo_piv').AsFloat));
      ve := ve + TabADO.fieldbyname('vlfixo_piv').asfloat;
      if gp = '' then
        ListItem.ImageIndex := 0
      else
        ListItem.ImageIndex := 1;
      Tab.next;
    end;
  end;
  edt_tlbasico.text := FormatFloat('###,##0.00',vb);
  edt_tlintermed.text := FormatFloat('###,##0.00',vi);
  edt_tlespecial.text := FormatFloat('###,##0.00',ve);
  if vb < vi then
    vlbase := vb
  else
    vlbase := vi;
  edt_minimo.text := FormatFloat('###,##0.00',vlbase);
end;

procedure TFrm_Mov_2036.edt_inscricao_benKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    edt_inscricao_benButtonClick(self);
end;

procedure TFrm_Mov_2036.PDJButton3Click(Sender: TObject);
var
  cont : integer;
begin
  inherited;
  if not BAS_ValidarCampo(edt_inscricao_ben.Name,'A Inscri��o deve ser Preenchida!',VLD_Preenchido) then
    exit;
  cont := 0;
  DB_ExecSQL('delete aux_contratoAdesao');
  while lsv_beneficiarios.Items.Count > cont do
  begin
    DB_ExecSQL('insert into aux_contratoAdesao (inscricao_ben, nome_ben, grauparent, dtnascim_ben, '+
    ' idade_ben, vlbasico, vlintermed, vlespecial) values ('+edt_inscricao_ben.Text+','''+
    lsv_beneficiarios.Items[cont].Caption+''','''+lsv_beneficiarios.Items[cont].SubItems.Strings[0]+''','+
    DB_FormatDataSQL(lsv_beneficiarios.Items[cont].SubItems.Strings[1],ftDate)+','+
    lsv_beneficiarios.Items[cont].SubItems.Strings[2]+','+
    DB_FormatDataSQL(lsv_beneficiarios.Items[cont].SubItems.Strings[3],ftFloat)+','+
    DB_FormatDataSQL(lsv_beneficiarios.Items[cont].SubItems.Strings[4],ftFloat)+','+
    DB_FormatDataSQL(lsv_beneficiarios.Items[cont].SubItems.Strings[5],ftFloat)+')');
    cont := cont + 1;
  end;
  with fdt_principal6.spc_cons_adm_contratoAdesao do
  begin
    close;
    ParamByName('@inscricao_ben').AsString := edt_inscricao_ben.Text;
    open;
    if recordcount = 0 then begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      close;
      exit;
    end;
  end;
  Frm_Bas_Impressao.frDBDataSet1.DataSet := fdt_principal6.spc_cons_adm_contratoAdesao;
  DB_OpenSQL('select nome_ben, endereco_ben, bairro_ben, cidade_ben, cep_ben, sigla_uf, foneresi_ben'+
  ' from tbl_beneficiario b, tbl_uf u where b.cod_uf = u.cod_uf and titulacartei_ben = 0'+
  ' and inscricao_ben = '+edt_inscricao_ben.Text);
  Frm_Bas_Impressao.FCampo1 := edt_minimo.Text;
  Frm_Bas_Impressao.FCampo2 := Tab.fieldByName('endereco_ben').AsString;
  Frm_Bas_Impressao.FCampo3 := Tab.fieldByName('bairro_ben').AsString+'           '+
  Tab.fieldByName('cidade_ben').AsString+' - '+Tab.fieldByName('sigla_uf').AsString;
  Frm_Bas_Impressao.FCampo4 := 'Fone '+Tab.fieldByName('foneresi_ben').AsString+'          CEP '+Tab.fieldByName('cep_ben').AsString;
  Frm_Bas_Impressao.FCampo5 := Tab.fieldByName('nome_ben').AsString;
  Frm_Bas_Impressao.showReport(4146);
  fdt_principal6.spc_cons_adm_contratoAdesao.close;
end;

end.



