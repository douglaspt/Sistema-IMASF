unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Db, DBCtrls, Grids,
  DBGrids, DBTables, Mask, registry, bde, Buttons, jpeg, SoapHTTPClient,
  InvokeRegistry, Rio, ValidadoresIntf;

type
  TFrm_Principal = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Btn_Fechar: TSpeedButton;
    StB_Principal: TStatusBar;
    PDJButton1: TSpeedButton;
    PDJButton3: TSpeedButton;
    Notebook1: TNotebook;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel4: TPanel;                                  
    tbl_consulta: TTable;
    DataSource: TDataSource;
    tbl_consultaCod: TAutoIncField;
    tbl_consultaPreNatal: TStringField;
    tbl_consultaRetorno: TStringField;
    tbl_consultaCarteira: TStringField;
    tbl_consultaNome: TStringField;
    tbl_consultaRg: TStringField;
    DBGrid: TDBGrid;
    pnl_conveniado: TPanel;
    Label2: TLabel;
    edt_dtatendimento: TDBEdit;
    Label1: TLabel;
    edt_p: TDBEdit;
    Label3: TLabel;
    edt_CRM: TDBEdit;
    Label4: TLabel;
    edt_cid: TDBEdit;
    Label5: TLabel;
    edt_R: TDBEdit;
    Label6: TLabel;
    edt_carteira: TDBEdit;
    Label7: TLabel;
    edt_nome: TDBEdit;
    Label8: TLabel;
    edt_rg: TDBEdit;
    Label9: TLabel;
    edt_especialidade: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    btn_novo: TSpeedButton;
    btn_remover: TSpeedButton;
    btn_calcelar: TSpeedButton;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    tbl_sadt: TTable;
    DataSource1: TDataSource;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Label11: TLabel;
    edt_dtemissaorg: TDBEdit;
    Panel5: TPanel;
    Label12: TLabel;
    edt_dtatendimentosadt: TDBEdit;
    Label14: TLabel;
    edt_CRMsadt: TDBEdit;
    Label15: TLabel;
    edt_cidsadt: TDBEdit;
    Label17: TLabel;
    edt_carteirasadt: TDBEdit;
    Label18: TLabel;
    edt_nomesadt: TDBEdit;
    Label20: TLabel;
    edt_rgsadt: TDBEdit;
    Label21: TLabel;
    edt_especialidadesadt: TDBEdit;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    edt_dtemissaorgsadt: TDBEdit;
    pnl_itemSADT: TPanel;
    Panel7: TPanel;
    btn_novoItem: TSpeedButton;
    btn_registrar: TSpeedButton;
    btn_encSADT: TSpeedButton;
    Panel8: TPanel;
    PDJButton4: TSpeedButton;
    Panel11: TPanel;
    DBGrid2: TDBGrid;
    PDJButton6: TSpeedButton;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    Label25: TLabel;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    DBEdit25: TDBEdit;
    Label28: TLabel;
    DBEdit26: TDBEdit;
    Label29: TLabel;
    DBEdit27: TDBEdit;
    Label30: TLabel;
    DBEdit28: TDBEdit;
    Label26: TLabel;
    btn_novoSADT: TSpeedButton;
    tbl_itens: TTable;
    DataSource2: TDataSource;
    tbl_itensCod_ItemAutorizacao: TAutoIncField;
    tbl_itensNumero: TIntegerField;
    tbl_itensDescricao: TStringField;
    tbl_itensEmeregencia: TStringField;
    tbl_itensDhe: TStringField;
    tbl_itensDtRealizacao: TDateField;
    tbl_itensQtde: TIntegerField;
    tbl_itensPercentual: TFloatField;
    Label31: TLabel;
    edt_NumItem: TDBEdit;
    Label32: TLabel;
    edt_descriItem: TDBEdit;
    Label33: TLabel;
    edt_EmerItem: TDBEdit;
    Label34: TLabel;
    edt_DHEItem: TDBEdit;
    Label35: TLabel;
    edt_realizacao: TDBEdit;
    Label36: TLabel;
    edt_Pitem: TDBEdit;
    Label37: TLabel;
    edt_codigo: TDBEdit;
    Label38: TLabel;
    edt_qtde: TDBEdit;
    Label39: TLabel;
    edt_valor: TDBEdit;
    Label40: TLabel;
    edt_percentual: TDBEdit;
    tbl_consultaCRM: TIntegerField;
    tbl_consultaEspecialidade: TIntegerField;
    tbl_consultaCodAutorizacao: TIntegerField;
    tbl_consultaDtemissaorg: TDateField;
    tbl_consultaDtatendimento: TDateField;
    tbl_sadtDtatendimento: TDateField;
    tbl_sadtCRM: TIntegerField;
    tbl_sadtCarteira: TStringField;
    tbl_sadtNome: TStringField;
    tbl_sadtRg: TStringField;
    tbl_sadtDtemissaorg: TDateField;
    tbl_sadtEspecialidade: TIntegerField;
    tbl_sadtCodAutorizacao: TIntegerField;
    tbl_consultaCID: TStringField;
    tbl_sadtCod_Sadt: TAutoIncField;
    tbl_itensCod_Sadt: TIntegerField;
    tbl_itensPosicao: TIntegerField;
    tbl_sadtCID: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    PageControl3: TPageControl;
    TabSheet8: TTabSheet;
    btn_novaint: TSpeedButton;
    Panel6: TPanel;
    pnl_itemInt: TPanel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Panel10: TPanel;
    btn_novoItemInt: TSpeedButton;
    btn_encInt: TSpeedButton;
    edt_NumItemInt: TDBEdit;
    edt_descriItemInt: TDBEdit;
    edt_EmerItemInt: TDBEdit;
    edt_DHEItemInt: TDBEdit;
    edt_realizacaoInt: TDBEdit;
    edt_PItemInt: TDBEdit;
    edt_codigoInt: TDBEdit;
    edt_qtdeInt: TDBEdit;
    edt_valorInt: TDBEdit;
    edt_percentualInt: TDBEdit;
    btn_registrarint: TSpeedButton;
    TabSheet9: TTabSheet;
    Panel12: TPanel;
    Label68: TLabel;
    btn_removeInt: TSpeedButton;
    Panel13: TPanel;
    DBGrid1: TDBGrid;
    PDJButton10: TSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    tbl_internacao: TTable;
    DataSource3: TDataSource;
    tbl_internacaoCarteira: TStringField;
    tbl_internacaoNome: TStringField;
    tbl_internacaoNomeSegurado: TStringField;
    tbl_internacaoCodAutorizacao: TIntegerField;
    tbl_internacaoDtInternacao: TDateField;
    tbl_internacaoHrInternacao: TTimeField;
    tbl_internacaoRg: TStringField;
    tbl_internacaoDtemissaoRG: TDateField;
    tbl_internacaoCodEspecialidade: TIntegerField;
    tbl_internacaoCrm: TIntegerField;
    tbl_internacaoCid: TStringField;
    tbl_internacaoDtAlta: TDateField;
    tbl_internacaoHrAlta: TTimeField;
    tbl_itensCodigo: TIntegerField;
    Label41: TLabel;
    edt_carteiraint: TDBEdit;
    Label42: TLabel;
    edt_nomeint: TDBEdit;
    Label43: TLabel;
    Label45: TLabel;
    edt_codautorizacaoint: TDBEdit;
    Label46: TLabel;
    Label47: TLabel;
    edt_dtinternacao: TDBEdit;
    Label48: TLabel;
    edt_hrinternacao: TDBEdit;
    Label49: TLabel;
    edt_rgint: TDBEdit;
    Label69: TLabel;
    edt_emissaorgint: TDBEdit;
    Label70: TLabel;
    edt_especialidadeint: TDBEdit;
    Label71: TLabel;
    edt_crmint: TDBEdit;
    Label72: TLabel;
    edt_cidint: TDBEdit;
    Label73: TLabel;
    edt_dtalta: TDBEdit;
    Label74: TLabel;
    edt_hralta: TDBEdit;
    cbx_acomodacao: TDBComboBox;
    cbx_atendimento: TDBComboBox;
    Label60: TLabel;
    DBEdit1: TDBEdit;
    Label61: TLabel;
    DBEdit2: TDBEdit;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit3: TDBEdit;
    Label64: TLabel;
    DBEdit5: TDBEdit;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit6: TDBEdit;
    Label67: TLabel;
    DBEdit7: TDBEdit;
    Label75: TLabel;
    DBEdit8: TDBEdit;
    Label76: TLabel;
    DBEdit9: TDBEdit;
    Label77: TLabel;
    DBEdit12: TDBEdit;
    Label78: TLabel;
    DBEdit18: TDBEdit;
    Label79: TLabel;
    DBEdit21: TDBEdit;
    Label80: TLabel;
    DBEdit32: TDBEdit;
    Label81: TLabel;
    DBEdit34: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    tbl_itensInt: TTable;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    FloatField2: TFloatField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    DataSource4: TDataSource;
    tbl_itensIntCod_Internacao: TIntegerField;
    tbl_internacaoCod_Internacao: TAutoIncField;
    tbl_internacaoCodAcomodacao: TStringField;
    tbl_internacaoCodAtendimento: TStringField;
    Label82: TLabel;
    DBEdit4: TDBEdit;
    tbl_conveniado: TTable;
    DataSource5: TDataSource;
    tbl_conveniadoCod_digitacao: TAutoIncField;
    tbl_conveniadoCod_Conveniado: TStringField;
    tbl_conveniadoNome: TStringField;
    tbl_conveniadoDtinicio: TDateField;
    tbl_conveniadoDtEncerramento: TDateField;
    edt_codconveniado: TDBEdit;
    edt_nomeconveniado: TDBEdit;
    PDJButton2: TSpeedButton;
    SaveDialog: TSaveDialog;
    Panel9: TPanel;
    DBComboBox3: TDBComboBox;
    tbl_conveniadoMesReferencia: TStringField;
    Lbl_totalCons: TLabel;
    tbl_itensValor: TStringField;
    tbl_itensIntValor: TStringField;
    tbl_consultaValor: TStringField;
    PDJButton5: TSpeedButton;
    PDJButton7: TSpeedButton;
    dbconven: TDatabase;
    Image1: TImage;
    Image2: TImage;
    HTTPRIO: THTTPRIO;
    edt_nomeseg: TDBEdit;
    ChB_HabilitaWEB: TCheckBox;
    Label44: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_removerClick(Sender: TObject);
    procedure btn_calcelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btn_registrarClick(Sender: TObject);
    procedure btn_encSADTClick(Sender: TObject);
    procedure btn_novoSADTClick(Sender: TObject);
    procedure edt_pExit(Sender: TObject);
    procedure edt_carteiraKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_dtemissaorgKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_dtatendimentosadtKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_carteirasadtKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_dtemissaorgsadtKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_RExit(Sender: TObject);
    procedure edt_CRMKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cidKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_pKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_RKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_especialidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_novoItemClick(Sender: TObject);
    procedure edt_CRMsadtKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cidsadtKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_especialidadesadtKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_EmerItemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_DHEItemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_realizacaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_EmerItemExit(Sender: TObject);
    procedure edt_DHEItemExit(Sender: TObject);
    procedure edt_PitemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton6Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure edt_cidKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cidsadtKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_percentualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_carteiraintKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codautorizacaointKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_dtinternacaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_hrinternacaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_emissaorgintKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_dtaltaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_hraltaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_especialidadeintKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_crmintKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cidintKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cidintKeyPress(Sender: TObject; var Key: Char);
    procedure btn_novaintClick(Sender: TObject);
    procedure btn_registrarintClick(Sender: TObject);
    procedure btn_novoItemIntClick(Sender: TObject);
    procedure btn_encIntClick(Sender: TObject);
    procedure PDJButton10Click(Sender: TObject);
    procedure edt_nomeintKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_EmerItemIntKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_EmerItemIntExit(Sender: TObject);
    procedure edt_DHEItemIntKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_DHEItemIntExit(Sender: TObject);
    procedure edt_realizacaoIntKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_PItemIntKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codigoIntKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_removeIntClick(Sender: TObject);
    procedure edt_codconveniadoChange(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure edt_codconveniadoExit(Sender: TObject);
    procedure edt_hraltaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_percentualIntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codconveniadoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_dtatendimentoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PDJButton3Click(Sender: TObject);
    procedure edt_carteiraExit(Sender: TObject);
    procedure edt_carteirasadtExit(Sender: TObject);
    procedure edt_carteiraintExit(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure tbl_consultaAfterOpen(DataSet: TDataSet);
    procedure tbl_consultaAfterPost(DataSet: TDataSet);
    procedure tbl_consultaAfterDelete(DataSet: TDataSet);
    procedure edt_PitemExit(Sender: TObject);
    procedure edt_PItemIntExit(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure edt_valorKeyPress(Sender: TObject; var Key: Char);
    procedure edt_valorIntKeyPress(Sender: TObject; var Key: Char);
    procedure PageControl2Change(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure edt_valorExit(Sender: TObject);
    procedure edt_valorIntExit(Sender: TObject);
    procedure edt_codigoExit(Sender: TObject);
    procedure edt_codigoIntExit(Sender: TObject);
    procedure tbl_sadtAfterDelete(DataSet: TDataSet);
    procedure tbl_sadtAfterPost(DataSet: TDataSet);
    procedure tbl_itensIntAfterPost(DataSet: TDataSet);
    procedure tbl_itensIntAfterDelete(DataSet: TDataSet);
    procedure tbl_internacaoAfterDelete(DataSet: TDataSet);
    procedure tbl_internacaoAfterPost(DataSet: TDataSet);
    procedure tbl_conveniadoAfterDelete(DataSet: TDataSet);
    procedure tbl_conveniadoAfterPost(DataSet: TDataSet);
    procedure tbl_itensAfterPost(DataSet: TDataSet);
    procedure tbl_itensAfterDelete(DataSet: TDataSet);
    procedure Image1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ChB_HabilitaWEBClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    Service : IValidadores;
    function STR_SubstChar(S:String;O,D : Char): String ;
    function STR_RemoveChar(S:String;K : Char): String ;
    function ValidarDigitoCarteira(c:string): boolean;
    function STR_GeraDigito11(V:String): String ;
    function STR_AddZeros(V:String;T:Integer): String ;
    function STR_AddSpaces(V:String;T:Integer): String ;
    procedure ShowHint(Sender: TObject);
    function GetNomeItem(codigo:string): String;
    function GetNomeBeneficiario(carteira:string): String;
  public
    { Public declarations }
    redeInternaAtiva, webServiceAtivo : boolean ;
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

uses Imp_Resumo, Dlg_NovaDigitacao, Dlg_Sobre;

{$R *.DFM}

function TFrm_Principal.STR_SubstChar(S:String;O,D : Char): String ;
var
  i : integer ;
begin
  result := '' ;
  For i := 1 to Length(S) do
    if (s[i] in [O]) then
      result := result + d
    else
      result := result + s[i] ;
end;

function TFrm_Principal.STR_RemoveChar(S:String;K : Char): String ;
var
  i : integer ;
begin
  result := '' ;
  For i := 1 to Length(S) do
    if not (s[i] in [k]) then
      result := result + s[i];
end;

procedure TFrm_Principal.ShowHint(Sender: TObject);
begin
  StB_Principal.SimpleText := Application.Hint;
end;

procedure TFrm_Principal.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint ;
  tbl_consulta.IndexName := 'idx_DtAtendimento' ;
  tbl_consulta.Open;
  tbl_sadt.open;
  tbl_itens.open;
  tbl_internacao.open;
  tbl_itensInt.Open;
  tbl_conveniado.OPen;
end;

function TFrm_Principal.GetNomeBeneficiario(carteira:string): String;
begin
  result := '' ;
  if Trim(carteira) = '' then
    exit ;
  try
    result :=  Service.getNomeBeneficiarioByInscricao(StrToInt(copy(carteira,3,5)),
    strtoint(copy(carteira,8,2)));
  except;
    result := '';
  end;
end;

function TFrm_Principal.STR_AddSpaces(V:String;T:integer): String ;
begin
  try
    V := Trim(V) ;
    V := Copy(V,1,T);
    while length(V) <= T do
      V := V + ' ';
    result := V ;
  except
    Result := 'Err'
  end;          
end;

function TFrm_Principal.STR_AddZeros(V:String;T:integer): String ;
begin
  try
    V := Copy(Trim(V),1,T) ;
    while length(V) < T do
      V := '0' + V ;
    result := V ;
  except
    Result := 'Err'
  end;
end;

function TFrm_Principal.STR_GeraDigito11(V:String): String ;
var
  i , m, tam : integer ;
  r : longint ;
const
  MIni = 20 ;
begin
  Tam := Length(V) ;
  //Em caso de erro retorna "Err"
  if (Tam > 30) or (Tam = 0) then Result := 'Err' else begin
    M := MIni ;
    R := 0 ;
    //Calculo digito verificador, módulo 11
    for i := 0 to Tam-1 do begin
      Inc(r, (StrToInt(Copy(V,(Tam-i),1))) * M);
      if M < 90 then Inc(M,10) else M := MIni ;
    end;
    M := R mod 11 ;
    if M > 9 then Result := '0' else Result := IntToStr(M) ;
  end;
end;

function TFrm_Principal.ValidarDigitoCarteira(c:string): boolean;
begin
  result := STR_GeraDigito11(copy(c,1,9)) = copy(c,10,1);
end;


procedure TFrm_Principal.Btn_FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Principal.btn_novoClick(Sender: TObject);
begin
  if DataSource.State in [dsEdit, dsInsert] then begin
    if (edt_dtatendimento.Text = '') or (edt_dtatendimento.Text = '  /  /    ') then begin
      ShowMessage('Data de Atendimento deve ser preenchida !');
      edt_dtatendimento.setfocus;
      Exit;
    end;
    try
      StrToDate(edt_dtatendimento.Text);
    except
      ShowMessage('Data de Atendimento inválida !');
      edt_dtatendimento.setfocus;
      Exit;
    end;
    if StrToDate(edt_dtatendimento.Text) > date then begin
      ShowMessage('Data de Atendimento deve ser menor ou igual ao dia de hoje !');
      edt_dtatendimento.setfocus;
      Exit;
    end;
    if (edt_CRM.Text = '') or (edt_CRM.Text = '0') or (edt_CRM.Text = '000000') then begin
      ShowMessage('CRM deve ser preenchido !');
      edt_CRM.setfocus;
      exit;
    end;
    if (edt_cid.Text = '') then begin
      ShowMessage('CID deve ser preenchido !');
      edt_cid.setfocus;
      exit;
    end;
    if (Trim(edt_carteira.Text) = '') then begin
      ShowMessage('Carteira deve ser preenchida !');
      edt_carteira.setfocus;
      exit;
    end;
    if not ValidarDigitoCarteira(edt_carteira.Text) then begin
      ShowMessage('Carteira de Beneficiário Inválida, digito verificador não confere !');
//      edt_carteira.setfocus;
//      exit;
    end;
    if not redeInternaAtiva then
    if (edt_rg.Text = '') then begin
      ShowMessage('RG deve ser preenchido !');
      edt_rg.setfocus;
      exit;
    end;
   { if not redeInternaAtiva then
    if (edt_dtemissaorg.Text = '') or (edt_dtemissaorg.Text = '  /  /    ') then begin
      ShowMessage('Data de Emissão do RG deve ser preenchida !');
      edt_dtemissaorg.setfocus;
      Exit;
    end; }
    if (edt_especialidade.Text = '') then begin
      ShowMessage('Especialidade Médica deve ser preenchida!');
      edt_especialidade.setfocus;
      exit;
    end;
    if (edt_nome.Text = '') then begin
      ShowMessage('Nome do Beneficiário deve ser preenchido !');
      edt_nome.setfocus;
      exit;
    end;
    tbl_consulta.Post;
  end;
  tbl_consulta.Append;
  tbl_consulta.Append;
  edt_dtatendimento.setfocus;
end;

procedure TFrm_Principal.btn_removerClick(Sender: TObject);
begin
  try
    tbl_consulta.delete;
  except;

  end;
end;

procedure TFrm_Principal.btn_calcelarClick(Sender: TObject);
begin
if DataSource.State in [dsEdit, dsInsert] then
  tbl_consulta.cancel;
end;

procedure TFrm_Principal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
    #13 : begin
      SelectNext(ActiveControl,True,True);
      Key := #0 ;
    end;
  end;
end;

procedure TFrm_Principal.FormCreate(Sender: TObject);
  function Acs_GetComputerName : String ;
  var
    lpBuffer : PChar;
    nSize : DWord;
  const Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
  begin
    nSize := Buff_Size;
    lpBuffer := StrAlloc(Buff_Size);
    GetComputerName(lpBuffer,nSize);
    Result := String(lpBuffer);
    StrDispose(lpBuffer);
  end;

  function VerIPWebService: String;
    function STR_RemoveZero(V:String): String ;
    var
      i : double ;
    begin
      try
        i := StrToFloat(v);
        Result := FloatToStr(i) ;
      except
        Result := V
      end;
    end;
  var
    F: Textfile;
    FileName, S : String;
  begin

    FileName := ExtractFilePath(Application.ExeName)+'iws.txt';

    if  FileExists(FileName) then begin
      {$I-}
      AssignFile(F, FileName);
      Reset(F);
      Readln(F, S);
      CloseFile(F);
      {$I+}
    end else begin
      S := '8230258082801896357200';
      AssignFile(F, FileName);
      Rewrite(F);
      Writeln(F, S);
      CloseFile(F);
    end;

    s := STR_RemoveZero(copy(s, 20,3))+'.'+STR_RemoveZero(copy(s, 13,3))+
    '.'+STR_RemoveZero(copy(s, 8,3))+'.'+STR_RemoveZero(copy(s, 2,3));

    Result := S;

  end;

  function Acs_GetUserName : String;
  // Retorna o usuário que está logado na rede
  var
  lpBuffer : Array[0..20] of Char;
  nSize    : dWord;
  Achou    : boolean;
  erro     : dWord;
  begin
  nSize      := 120;
  Achou      := GetUserName(lpBuffer,nSize);
  if (Achou) then
     begin
     result   := lpBuffer;
     end
  else
     begin
     Erro   :=GetLastError();
     result :=IntToStr(Erro);
     end;
  end;

begin
  KeyPreview := True;
  redeInternaAtiva := FileExists('P:\stConven.exe');
 if not redeInternaAtiva then begin
    HTTPRIO.URL := 'http://'+VerIPWebService+'/siadweb/SIADWebServer.exe/soap/Ivalidadores';
    dbconven.Params.Clear;
    dbconven.Params.Add('path='+ExtractFilePath(Application.ExeName));
  end else begin
    HTTPRIO.WSDLLocation := 'http://sistema01/siadweb/SIADWebServer.exe/wsdl/IValidadores';
    dbconven.Params.Clear;
    dbconven.Params.Add('path=W:\Digitacao\'+Acs_GetUserName);
  end;
  {
  try
//    showmessage(HTTPRIO.URL);
    Service := HTTPRIO as IValidadores;
    webServiceAtivo := Service.testConnection;
    ChB_HabilitaWEB.Checked := webServiceAtivo;
  except
    webServiceAtivo := false ;
  end;
  }
//  dbconven.Params.Clear;
//  dbconven.Params.Add('path=C:\conveniado');
  try
    dbconven.open;
  except
     ShowMessage('Não foi possivel conectar ao servidor.');
  end;
end;

procedure TFrm_Principal.btn_registrarClick(Sender: TObject);
begin
  if DataSource1.State in [dsEdit, dsInsert] then begin
    if (edt_dtatendimentosadt.Text = '') or (edt_dtatendimentosadt.Text = '  /  /    ') then begin
      ShowMessage('Data de Atendimento deve ser preenchida !');
      edt_dtatendimentosadt.setfocus;
      Exit;
    end;
    try
      StrToDate(edt_dtatendimentosadt.Text);
    except
      ShowMessage('Data de Atendimento inválida !');
      edt_dtatendimentosadt.setfocus;
      Exit;
    end;
    if StrToDate(edt_dtatendimentosadt.Text) > date then begin
      ShowMessage('Data de Atendimento deve ser menor ou igual ao dia de hoje !');
      edt_dtatendimentosadt.setfocus;
      Exit;
    end;
    if (edt_CRMsadt.Text = '') then begin
      ShowMessage('CRM deve ser preenchido !');
      edt_CRMsadt.setfocus;
      exit;
    end;
    if (edt_cidsadt.Text = '') then begin
      ShowMessage('CID deve ser preenchido !');
      edt_cidsadt.setfocus;
      exit;
    end;
    if (Trim(edt_carteirasadt.Text) = '') then begin
      ShowMessage('Carteira deve ser preenchida !');
      edt_carteirasadt.setfocus;
      exit;
    end;
    if not ValidarDigitoCarteira(edt_carteirasadt.Text) then begin
      ShowMessage('Carteira de Beneficiário Inválida, digito verificador não confere !');
//      edt_carteirasadt.setfocus;
//      exit;
    end;
    if not redeInternaAtiva then
    if (edt_rgsadt.Text = '') then begin
      ShowMessage('RG deve ser preenchido !');
      edt_rgsadt.setfocus;
      exit;
    end;
  {  if not redeInternaAtiva then
    if (edt_dtemissaorgsadt.Text = '') or (edt_dtemissaorgsadt.Text = '  /  /    ') then begin
      ShowMessage('Data de Emissão do RG deve ser preenchida !');
      edt_dtemissaorgsadt.setfocus;
      Exit;
    end;
    if (edt_especialidadesadt.Text = '') then begin
      ShowMessage('Especialidade Médica deve ser preenchida !');
      edt_especialidadesadt.setfocus;
      exit;
    end;   }
  //  if (edt_nomesadt.Text = '') then begin
  //    ShowMessage('Nome do Beneficiário deve ser preenchido !');
  //    edt_nomesadt.setfocus;
 //     exit;
 //   end;
    tbl_sadt.post;
  end;
  pnl_itemSADT.visible := true ;
  btn_registrar.enabled := false ;
  btn_novoItemClick(Self);
end;

procedure TFrm_Principal.btn_encSADTClick(Sender: TObject);
begin
  if DataSource2.State in [dsEdit, dsInsert] then begin
    if edt_descriItem.text <> '' then
      btn_novoItemClick(self);
    tbl_itens.cancel;
  end;
  pnl_itemSADT.visible := false ;
end;

procedure TFrm_Principal.btn_novoSADTClick(Sender: TObject);
begin
  btn_registrar.enabled := true ;
  tbl_sadt.append;
  edt_dtatendimentosadt.setfocus;
end;

procedure TFrm_Principal.edt_pExit(Sender: TObject);
begin
  if edt_P.text = '' then edt_P.text := 'N';
end;

procedure TFrm_Principal.edt_carteiraKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource.State in [dsEdit, dsInsert] then
  if length(trim(edt_carteira.text)) = 10 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_dtemissaorgKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (DataSource.State in [dsEdit, dsInsert]) and (key<>13) then
  if length(trim(edt_dtemissaorg.text)) = 10 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_dtatendimentosadtKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (DataSource1.State in [dsEdit, dsInsert]) and (key<>13) then
  if length(trim(edt_dtatendimentosadt.text)) = 10 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_carteirasadtKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource1.State in [dsEdit, dsInsert] then
  if length(trim(edt_carteirasadt.text)) = 10 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_dtemissaorgsadtKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (DataSource1.State in [dsEdit, dsInsert]) and (key<>13) then
  if length(trim(edt_dtemissaorgsadt.text)) = 10 then
    SelectNext(ActiveControl,True,True)
end;
 
procedure TFrm_Principal.edt_RExit(Sender: TObject);
begin
  if edt_R.text = '' then edt_R.text := 'N';
end;

procedure TFrm_Principal.edt_CRMKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource.State in [dsEdit, dsInsert] then
  if length(trim(edt_CRM.text)) = 6 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_cidKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource.State in [dsEdit, dsInsert] then
  if length(trim(edt_cid.text)) = 6 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_pKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if not (key in [78,83]) then edt_P.text := '';
if DataSource.State in [dsEdit, dsInsert] then
  if length(trim(edt_p.text)) = 1 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_RKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if not (key in [78,83]) then edt_r.text := '';
if DataSource.State in [dsEdit, dsInsert] then
  if length(trim(edt_r.text)) = 6 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_especialidadeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource.State in [dsEdit, dsInsert] then
  if length(trim(edt_especialidade.text)) = 4 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.btn_novoItemClick(Sender: TObject);
  function TrazerUltimoNum : String;
  begin
    with tbl_itens do begin
      last;
      result := IntToStr(FieldByName('Numero').AsInteger+1);
    end;
  end;
  var
    num : string ;
begin
  if DataSource2.State in [dsEdit, dsInsert] then begin
    if (edt_descriItem.Text = '') then begin
      ShowMessage('Descrição deve ser preenchida !');
      edt_descriItem.setfocus;
      exit;
    end;
    if (edt_realizacao.Text = '') or (edt_realizacao.Text = '  /  /    ') then begin
      ShowMessage('Data de Realização deve ser preenchida !');
      edt_realizacao.setfocus;
      Exit;
    end;
    try
      StrToDate(edt_realizacao.Text);
    except
      ShowMessage('Data de Realização inválida !');
      edt_realizacao.setfocus;
      Exit;
    end;
    if StrToDate(edt_realizacao.Text) > date then begin
      ShowMessage('Data de Realização deve ser menor ou igual ao dia de hoje !');
      edt_realizacao.setfocus;
      Exit;
    end;
    if (edt_codigo.Text = '') then begin
      ShowMessage('Codigo do Serv. / Proc. deve ser preenchido !');
      edt_codigo.setfocus;
      exit;
    end;
    if (edt_qtde.Text = '') then begin
      ShowMessage('Quantidade deve ser preenchida !');
      edt_qtde.setfocus;
      exit;
    end;
    if (edt_valor.Text = '') then begin
      ShowMessage('Valor deve ser preenchido !');
      edt_valor.setfocus;
      exit;
    end;
    if (edt_percentual.Text = '') then begin
      ShowMessage('Percentual deve ser preenchido !');
      edt_percentual.setfocus;
      exit;
    end;
    if (edt_descriItem.Text = '') then begin
      ShowMessage('Descrição deve ser preenchida !');
      edt_descriItem.setfocus;
      exit;
    end;
    if (edt_descriItem.Text = '') then begin
      ShowMessage('Descrição deve ser preenchida !');
      edt_descriItem.setfocus;
      exit;
    end;
    tbl_itens.Post;
  end;
  num := TrazerUltimoNum ;
  tbl_itens.append;
  edt_NumItem.text := num ;
  edt_realizacao.text := edt_nomeint.text ;
  tbl_itens.FieldByName('dtrealizacao').AsString := edt_dtatendimentosadt.text ;
  tbl_itens.FieldByName('Posicao').AsString := '0';
//  edt_percentual.text := '100' ;
//  tbl_sadt.FieldByName('percentual').AsString := '100' ;
  edt_codigo.setfocus;
end;

procedure TFrm_Principal.edt_CRMsadtKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource1.State in [dsEdit, dsInsert] then
  if length(trim(edt_CRMsadt.text)) = 6 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_CidsadtKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource1.State in [dsEdit, dsInsert] then
  if length(trim(edt_Cidsadt.text)) = 6 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_especialidadesadtKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource1.State in [dsEdit, dsInsert] then
  if length(trim(edt_especialidadesadt.text)) = 8 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_EmerItemKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if not (key in [78,83]) then edt_EmerItem.text := '';
if DataSource2.State in [dsEdit, dsInsert] then
  if length(trim(edt_EmerItem.text)) = 1 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_DHEItemKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if not (key in [78,83]) then edt_DHEItem.text := '';
if DataSource2.State in [dsEdit, dsInsert] then
  if length(trim(edt_DHEItem.text)) = 1 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_realizacaoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (DataSource2.State in [dsEdit, dsInsert]) and (key<>13) then
  if length(trim(edt_realizacao.text)) = 10 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_codigoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource2.State in [dsEdit, dsInsert] then
  if length(trim(edt_codigo.text)) = 8 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_EmerItemExit(Sender: TObject);
begin
  if edt_EmerItem.text = '' then edt_EmerItem.text := 'N';
end;

procedure TFrm_Principal.edt_DHEItemExit(Sender: TObject);
begin
  if edt_DHEItem.text = '' then edt_DHEItem.text := 'N';
end;

procedure TFrm_Principal.edt_PitemKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if DataSource2.State in [dsEdit, dsInsert] then
//  if length(trim(edt_Pitem.text)) = 1 then
//    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.PDJButton6Click(Sender: TObject);
begin
  tbl_itens.delete;
end;

procedure TFrm_Principal.PDJButton1Click(Sender: TObject);
begin
  if MessageDlg('Tem Certeza que deseja Fazer uma nova Digitação de Conta ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if tbl_conveniado.FieldByName('DtEncerramento').AsString = '' then
//  if MessageDlg('Atenção ! Não foi gerado o disquete para esta Conta, os dados atuais serão perdidos ! Tem Certeza que deseja digitar uma nova conta ?',
//    mtWarning, [mbYes, mbNo], 0) = mrNo then
  if not Dlg_ImprimeEtiquetaYesNo(self) then
    Exit;
  tbl_consulta.close;
  tbl_sadt.close;
  tbl_itens.close;
  tbl_internacao.close;
  tbl_itensInt.close;
  tbl_conveniado.close;
  tbl_consulta.EmptyTable;
  tbl_sadt.EmptyTable;
  tbl_itens.EmptyTable;
  tbl_internacao.EmptyTable;
  tbl_itensInt.EmptyTable;
  tbl_conveniado.EmptyTable;
  tbl_consulta.Open;
  tbl_sadt.open;
  tbl_itens.open;
  tbl_internacao.open;
  tbl_itensInt.Open;
  tbl_conveniado.OPen;
  tbl_conveniado.Edit;
  tbl_conveniado.FieldByName('DtInicio').AsDateTime := Date;
  ShowMessage('Nova Digitação de Conta Iniciada ! Digite os Dados do Conveniado !');
  PageControl.ActivePageIndex := 0 ;
  edt_codconveniado.SetFocus;
end;

procedure TFrm_Principal.edt_cidKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.', ',', '-', '+', '-'] then key := #0;
end;

procedure TFrm_Principal.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then begin
    btn_novoClick(self);
    SelectNext(ActiveControl,False,True);
  end;
end;

procedure TFrm_Principal.edt_cidsadtKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key in ['.', ',', '-', '+', '-'] then key := #0;
end;

procedure TFrm_Principal.DBEdit20KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then begin
    btn_registrarClick(self);
    SelectNext(ActiveControl,False,True);
  end;
end;

procedure TFrm_Principal.edt_percentualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then begin
    btn_novoitemClick(self);
    SelectNext(ActiveControl,False,True);
  end;
end;

procedure TFrm_Principal.edt_carteiraintKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if DataSource3.State in [dsEdit, dsInsert] then
  if length(trim(edt_carteiraint.text)) = 10 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_codautorizacaointKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource3.State in [dsEdit, dsInsert] then
  if length(trim(edt_codautorizacaoint.text)) = 9 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_dtinternacaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (DataSource3.State in [dsEdit, dsInsert]) and (key<>13) then
  if length(trim(edt_dtinternacao.text)) = 10 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_hrinternacaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (DataSource3.State in [dsEdit, dsInsert]) and (key<>13) then
  if length(trim(edt_hrinternacao.text)) = 5 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_emissaorgintKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (DataSource3.State in [dsEdit, dsInsert]) and (key<>13) then
  if length(trim(edt_emissaorgint.text)) = 10 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_dtaltaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (DataSource3.State in [dsEdit, dsInsert]) and (key<>13) then
  if length(trim(edt_dtalta.text)) = 10 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_hraltaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if (DataSource3.State in [dsEdit, dsInsert]) and (key<>13) then
//  if length(trim(edt_hralta.text)) = 5 then
//    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_especialidadeintKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if DataSource3.State in [dsEdit, dsInsert] then
  if length(trim(edt_especialidadeint.text)) = 8 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_crmintKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource3.State in [dsEdit, dsInsert] then
  if length(trim(edt_CRMint.text)) = 6 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_cidintKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource3.State in [dsEdit, dsInsert] then
  if length(trim(edt_cidint.text)) = 6 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_cidintKeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['.', ',', '-', '+', '-'] then key := #0;
end;

procedure TFrm_Principal.btn_novaintClick(Sender: TObject);
begin
  btn_registrarint.enabled := true ;
  tbl_internacao.append;
  edt_carteiraint.setfocus;
end;

procedure TFrm_Principal.btn_registrarintClick(Sender: TObject);
begin
  if DataSource3.State in [dsEdit, dsInsert] then begin
    if (Trim(edt_carteiraint.Text) = '') then begin
      ShowMessage('Carteira deve ser preenchida !');
      edt_carteiraint.setfocus;
      exit;
    end;
    if not ValidarDigitoCarteira(edt_carteiraint.Text) then begin
      ShowMessage('Carteira de Beneficiário Inválida, digito verificador não confere !');
 //     edt_carteiraint.setfocus;
//      exit;
    end;
    if (edt_nomeint.Text = '') then begin
      ShowMessage('Nome do Beneficiário deve ser preenchido !');
      edt_nomeint.setfocus;
      exit;
    end;
    if (cbx_acomodacao.Text = '') then begin
      ShowMessage('Tipo de Acomodação deve ser preenchido !');
      cbx_acomodacao.setfocus;
      exit;
    end;
    if (edt_nomeseg.Text = '') then begin
      ShowMessage('Nome do Segurado deve ser preenchido !');
      edt_nomeseg.setfocus;
      exit;
    end;
    if (cbx_atendimento.Text = '') then begin
      ShowMessage('Tipo de Atendimento deve ser preenchido !');
      cbx_atendimento.setfocus;
      exit;
    end;
    if (edt_dtinternacao.Text = '') or (edt_dtinternacao.Text = '  /  /    ') then begin
      ShowMessage('Data de Internação deve ser preenchida !');
      edt_dtinternacao.setfocus;
      Exit;
    end;
    try
      StrToDate(edt_dtinternacao.Text);
    except
      ShowMessage('Data de Internação inválida !');
      edt_dtinternacao.setfocus;
      Exit;
    end;
    if StrToDate(edt_dtinternacao.Text) > date then begin
      ShowMessage('Data de Internação deve ser menor ou igual ao dia de hoje !');
      edt_dtinternacao.setfocus;
      Exit;
    end;
    if (edt_hrinternacao.Text = '') then begin
      ShowMessage('Hora do Atendimento deve ser preenchida !');
      edt_hrinternacao.setfocus;
      exit;
    end;
    if not redeInternaAtiva then
    if (edt_rgint.Text = '') then begin
      ShowMessage('RG deve ser preenchido !');
      edt_rgint.setfocus;
      exit;
    end;
   { if not redeInternaAtiva then
    if (edt_emissaorgint.Text = '') or (edt_emissaorgint.Text = '  /  /    ') then begin
      ShowMessage('Data de Emissão do RG deve ser preenchida !');
      edt_emissaorgint.setfocus;
      Exit;
    end; }
   { if (edt_especialidadeint.Text = '') then begin
      ShowMessage('Especialidade Médica deve ser preenchida !');
      edt_especialidadeint.setfocus;
      exit;
    end;  }
    if (edt_CRMint.Text = '') then begin
      ShowMessage('CRM deve ser preenchido !');
      edt_CRMint.setfocus;
      exit;
    end;
    if (edt_cidInt.Text = '') then begin
      ShowMessage('CID deve ser preenchido !');
      edt_cidInt.setfocus;
      exit;
    end;
    if (edt_dtalta.Text = '') or (edt_dtalta.Text = '  /  /    ') then begin
      ShowMessage('Data de Alta deve ser preenchida !');
      edt_dtalta.setfocus;
      Exit;
    end;
    try
      StrToDate(edt_dtalta.Text);
    except
      ShowMessage('Data de Alta inválida !');
      edt_dtinternacao.setfocus;
      Exit;
    end;
    if StrToDate(edt_dtalta.Text) > date then begin
      ShowMessage('Data da Alta deve ser menor ou igual ao dia de hoje !');
      edt_dtalta.setfocus;
      Exit;
    end;
    if StrToDate(edt_dtalta.Text) < StrToDate(edt_dtinternacao.Text) then begin
      ShowMessage('Data da Alta deve ser maior ou igual a Data de Internação !');
      edt_dtalta.setfocus;
      Exit;
    end;
    if (edt_hralta.Text = '') then begin
      ShowMessage('Hora da Alta deve ser preenchida !');
      edt_hralta.setfocus;
      exit;
    end;
    tbl_internacao.post;
  end;
  pnl_itemInt.visible := true ;
  btn_registrarInt.enabled := false ;
  btn_novoItemIntClick(Self);

end;

procedure TFrm_Principal.btn_novoItemIntClick(Sender: TObject);
  function TrazerUltimoNum : String;
  begin
    with tbl_itensInt do begin
      last;
      result := IntToStr(FieldByName('Numero').AsInteger+1);
    end;
  end;
  var
    num : string ;
begin
  if DataSource4.State in [dsEdit, dsInsert] then begin
    if (edt_descriItemInt.Text = '') then begin
      ShowMessage('Descrição deve ser preenchida !');
      edt_descriItemInt.setfocus;
      exit;
    end;
    if (edt_realizacaoInt.Text = '') or (edt_realizacaoInt.Text = '  /  /    ') then begin
      ShowMessage('Data de Realização deve ser preenchida !');
      edt_realizacaoInt.setfocus;
      Exit;
    end;
    try
      StrToDate(edt_realizacaoInt.Text);
    except
      ShowMessage('Data de Realização inválida !');
      edt_realizacaoInt.setfocus;
      Exit;
    end;
    if StrToDate(edt_realizacaoInt.Text) > date then begin
      ShowMessage('Data de Realização deve ser menor ou igual ao dia de hoje !');
      edt_realizacaoInt.setfocus;
      Exit;
    end;
    if StrToDate(edt_realizacaoInt.Text) < StrToDate(edt_dtinternacao.Text) then begin
      ShowMessage('Data de Realização deve ser maior ou igual ao dia de Internação !');
      edt_realizacaoInt.setfocus;
      Exit;
    end;
    if StrToDate(edt_realizacaoInt.Text) > StrToDate(edt_dtalta.Text) then begin
      ShowMessage('Data de Realização deve ser menor ou igual ao dia de Alta !');
      edt_realizacaoInt.setfocus;
      Exit;
    end;
    if (edt_PItemInt.Text = '') then begin
      ShowMessage('POS deve ser preenchida !');
      edt_PItemInt.setfocus;
      exit;
    end;
    if (edt_codigoInt.Text = '') then begin
      ShowMessage('Codigo do Serv. / Proc. deve ser preenchido !');
      edt_codigoInt.setfocus;
      exit;
    end;
    if (edt_qtdeInt.Text = '') then begin
      ShowMessage('Quantidade deve ser preenchida !');
      edt_qtdeInt.setfocus;
      exit;
    end;
    if (edt_valorInt.Text = '') then begin
      ShowMessage('Valor deve ser preenchido !');
      edt_valorInt.setfocus;
      exit;
    end;
    if (edt_percentualInt.Text = '') then begin
      ShowMessage('Percentual deve ser preenchido !');
      edt_percentualInt.setfocus;
      exit;
    end;
    tbl_itensInt.Post;
  end;
  num := TrazerUltimoNum ;
  tbl_itensInt.append;
  edt_NumItemInt.text := num ;
  edt_realizacaoInt.text := edt_nomeint.text ;
  tbl_itensInt.FieldByName('dtrealizacao').AsString := edt_dtInternacao.text ;
  edt_codigoInt.setfocus;
end;

procedure TFrm_Principal.btn_encIntClick(Sender: TObject);
begin
  if DataSource4.State in [dsEdit, dsInsert] then begin
    if edt_descriItemInt.text <> '' then
      btn_novoItemIntClick(self);
    tbl_itensInt.cancel;
  end;
  pnl_itemInt.visible := false ;
end;

procedure TFrm_Principal.PDJButton10Click(Sender: TObject);
begin
  tbl_itensInt.delete;
end;

procedure TFrm_Principal.edt_nomeintKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  edt_nomeseg.text := edt_nomeint.text ;
  tbl_internacao.FieldByName('nomesegurado').AsString := edt_nomeint.text ;
end;

procedure TFrm_Principal.edt_EmerItemIntKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if not (key in [78,83]) then edt_EmerItemInt.text := '';
if DataSource4.State in [dsEdit, dsInsert] then
  if length(trim(edt_EmerItemInt.text)) = 1 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_EmerItemIntExit(Sender: TObject);
begin
  if edt_EmerItemInt.text = '' then edt_EmerItemInt.text := 'N';
end;

procedure TFrm_Principal.edt_DHEItemIntKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if not (key in [78,83]) then edt_DHEItemInt.text := '';
if DataSource4.State in [dsEdit, dsInsert] then
  if length(trim(edt_DHEItemInt.text)) = 1 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_DHEItemIntExit(Sender: TObject);
begin
  if edt_DHEItemInt.text = '' then edt_DHEItemInt.text := 'N';
end;

procedure TFrm_Principal.edt_realizacaoIntKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (DataSource4.State in [dsEdit, dsInsert]) and (key<>13) then
  if length(trim(edt_realizacaoInt.text)) = 10 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_PItemIntKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource4.State in [dsEdit, dsInsert] then
  if length(trim(edt_PitemInt.text)) = 1 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.edt_codigoIntKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DataSource4.State in [dsEdit, dsInsert] then
  if length(trim(edt_codigoInt.text)) = 8 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.btn_removeIntClick(Sender: TObject);
begin
  try
    tbl_internacao.delete;
  except

  end;  
end;

procedure TFrm_Principal.edt_codconveniadoChange(Sender: TObject);
begin
  pnl_conveniado.Caption := edt_codconveniado.text + ' - ' + edt_nomeconveniado.text ;
end;

procedure TFrm_Principal.PDJButton2Click(Sender: TObject);
begin
  Frm_Imp_Resumo := TFrm_Imp_Resumo.Create(Self);
  Frm_Imp_Resumo.QuickRep1.Preview;
  Frm_Imp_Resumo.Release;
end;

procedure TFrm_Principal.edt_codconveniadoExit(Sender: TObject);
  function Get_NomeConveniado(C:String): String;
  begin
    try
      result :=  Service.getNomeConveniadoByCodConveniado(StrToInt(c));
    except;
      result := '';
    end;
  end;

begin
  if (webServiceAtivo) then begin
    tbl_conveniado.edit;
    tbl_conveniado.FieldByName('nome').AsString := Get_NomeConveniado(STR_RemoveChar(edt_codconveniado.text, '-')) ;
    edt_nomeconveniado.text := tbl_conveniado.FieldByName('nome').AsString;
  end;
  if Pos('-', edt_codconveniado.text) > 0 then
    edt_codconveniado.text := STR_AddZeros(edt_codconveniado.text, 7)
  else
     edt_codconveniado.text := STR_AddZeros(
    Copy(edt_codconveniado.text, 1, Length(edt_codconveniado.text)-1)+'-'+
    Copy(edt_codconveniado.text, Length(edt_codconveniado.text), 1),7);
end;

procedure TFrm_Principal.edt_hraltaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then begin
    btn_registrarIntClick(self);
    SelectNext(ActiveControl,False,True);
  end;
end;

procedure TFrm_Principal.edt_percentualIntKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then begin
    btn_novoitemIntClick(self);
    SelectNext(ActiveControl,False,True);
  end;
end;

procedure TFrm_Principal.edt_codconveniadoKeyPress(Sender: TObject;
  var Key: Char);
begin
//if Pos('-', edt_codconveniado.text) > 0 then begin
  if key in ['.', ',', '+', '-'] then key := #0
//end else
//  if key in ['.', ',', '+'] then key := #0
end;

procedure TFrm_Principal.edt_dtatendimentoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (DataSource.State in [dsEdit, dsInsert]) and (key<>13) then
  if length(trim(edt_dtatendimento.text)) = 10 then
    SelectNext(ActiveControl,True,True);
end;

procedure TFrm_Principal.PDJButton3Click(Sender: TObject);
var
  F : TextFile ;
  nomearquivo, registro : string ;
  seg, itm, cts, itc : integer ;
  tlc, vl : single ;
begin
  nomearquivo := STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5)+
  copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,7,1)+
  FormatDateTime('ddmmyy', date)+
  '.txt';
  SaveDialog.FileName := nomearquivo ;
  if SaveDialog.execute then begin
    nomearquivo := SaveDialog.FileName ;
    tbl_conveniado.Edit;
    tbl_conveniado.FieldByName('DtEncerramento').AsDateTime := Date;
    tbl_conveniado.Post;
    seg := 1 ;
    itm := 0 ;
    cts := 0 ;
    DeleteFile(nomearquivo);
    AssignFile(F, nomearquivo );
    Rewrite(F);
    //*** REGISTRO HEADER
    registro := 'CSMH0';
    registro := registro + STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5);
    registro := registro + '00000000';
    registro := registro + '00000000';
    registro := registro + '00';
    registro := registro + STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5);
    registro := registro + STR_AddSpaces(trim(tbl_conveniado.FieldByName('nome').AsString),29);
    registro := registro + 'J';
    registro := registro + '00000000000000';
    registro := registro + STR_AddSpaces(tbl_conveniado.FieldByName('nome').AsString,39);
    registro := registro + FormatDateTime('ddmmyy', tbl_conveniado.FieldByName('DtEncerramento').AsDateTime);
    registro := registro + '0001';
    registro := registro + ' ';
    registro := registro + STR_AddSpaces('',14);
    registro := registro + STR_AddZeros(IntToStr(seg),6);
    Writeln (F, registro);
    //**** CONSULTAS
    tbl_consulta.first;
    while not tbl_consulta.eof do begin
      //** CABEÇALHO DA CONTA
      while trim(tbl_consulta.FieldByName('carteira').AsString) = '' do
        tbl_consulta.delete;
      INC(CTS);
      INC(SEG);
      registro := 'CSMH1';
      registro := registro + STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5);
      registro := registro + '00000000';
      registro := registro + '00000000';
      registro := registro + '00';
      registro := registro + '000';
      registro := registro + STR_AddZeros(tbl_consulta.FieldByName('carteira').AsString,18);
      registro := registro + STR_AddZeros(tbl_consulta.FieldByName('CodAutorizacao').AsString,10);
      registro := registro + '5';
      registro := registro + FormatDateTime('ddmmyy', tbl_consulta.FieldByName('dtAtendimento').AsDateTime);
      registro := registro + '0000';
      registro := registro + FormatDateTime('ddmmyy', tbl_consulta.FieldByName('dtAtendimento').AsDateTime);
      registro := registro + '0000';
      registro := registro + FormatDateTime('ddmmyy', tbl_consulta.FieldByName('dtAtendimento').AsDateTime);
      registro := registro + FormatDateTime('ddmmyy', tbl_consulta.FieldByName('dtAtendimento').AsDateTime);
      registro := registro + '6';
      registro := registro + STR_AddSpaces(tbl_consulta.FieldByName('CID').AsString,5);
      registro := registro + STR_AddSpaces(tbl_consulta.FieldByName('Especialidade').AsString,7);
//      registro := registro + '50000000';
      registro := registro + STR_AddSpaces(tbl_consulta.FieldByName('CRM').AsString,6);
      registro := registro + 'XX';
      registro := registro + STR_AddSpaces('',13);
      registro := registro + STR_AddSpaces('',14);
      registro := registro + STR_AddZeros(IntToStr(seg),6);
      Writeln (F, registro);
      //**REGISTRO DE ITEM DA CONTA
      INC(SEG);
      INC(ITM);
      registro := 'CSMH2';
      registro := registro + STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5);
      registro := registro + '00000000';
      registro := registro + '00000000';
      registro := registro + '00';
      registro := registro + '001';
      registro := registro + '00010014';
      registro := registro + STR_AddSpaces('CONSULTA CLINICA EM HORARIO NORMAL',49);
      registro := registro + 'N';
      registro := registro + 'N';
      registro := registro + FormatDateTime('ddmmyy', tbl_consulta.FieldByName('dtAtendimento').AsDateTime);
      registro := registro + '0';///MUDAR POS
      registro := registro + '00001';
      try
        vl :=  StrToFloat(STR_RemoveChar(STR_RemoveChar(tbl_consulta.FieldByName('Valor').AsString,'.'),',')) ;
      except
        vl := 0;
      end;
      registro := registro + STR_AddZeros(FloatToStr(Int(vl)),15) ;
      registro := registro + '100';
      registro := registro + STR_AddSpaces('',7);
      registro := registro + STR_AddSpaces('',14);
      registro := registro + STR_AddZeros(IntToStr(seg),6);
      Writeln (F, registro);
      //**REGISTRO DE TOTAL DA CONTA
      INC(SEG);
      registro := 'CSMH3';
      registro := registro + STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5);
      registro := registro + '00000000';
      registro := registro + '00000000';
      registro := registro + '00';
      registro := registro + '001';
      try
        vl := StrToFloat(STR_RemoveChar(STR_RemoveChar(tbl_consulta.FieldByName('Valor').AsString,'.'),',')) ;
      except
        vl := 0;
      end;
      registro := registro + STR_AddZeros(FloatToStr(Int(vl)),15) ;
      registro := registro + STR_AddSpaces(tbl_consulta.FieldByName('Nome').AsString,39);
      registro := registro + STR_AddSpaces('',42);
      registro := registro + STR_AddSpaces('',14);
      registro := registro + STR_AddZeros(IntToStr(seg),6);
      Writeln (F, registro);
      tbl_consulta.next;
    end;
    //**** SADT
    tbl_sadt.first;
    while not tbl_sadt.eof do begin
      //** CABEÇALHO DA CONTA
      while trim(tbl_sadt.FieldByName('carteira').AsString) = '' do
        tbl_sadt.delete;
      INC(CTS);
      INC(SEG);
      registro := 'CSMH1';
      registro := registro + STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5);
      registro := registro + '00000000';
      registro := registro + '00000000';
      registro := registro + '00';
      registro := registro + '000';
      registro := registro + STR_AddZeros(tbl_sadt.FieldByName('carteira').AsString,18);
      registro := registro + STR_AddZeros(tbl_sadt.FieldByName('CodAutorizacao').AsString,10);
      registro := registro + '5';
      registro := registro + FormatDateTime('ddmmyy', tbl_sadt.FieldByName('dtAtendimento').AsDateTime);
      registro := registro + '0000';
      registro := registro + FormatDateTime('ddmmyy', tbl_sadt.FieldByName('dtAtendimento').AsDateTime);
      registro := registro + '0000';
      registro := registro + FormatDateTime('ddmmyy', tbl_sadt.FieldByName('dtAtendimento').AsDateTime);
      registro := registro + FormatDateTime('ddmmyy', tbl_sadt.FieldByName('dtAtendimento').AsDateTime);
      registro := registro + '6';
      registro := registro + STR_AddSpaces(tbl_sadt.FieldByName('CID').AsString,5);
      registro := registro + STR_AddSpaces(tbl_sadt.FieldByName('Especialidade').AsString,7);
      registro := registro + STR_AddSpaces(tbl_sadt.FieldByName('CRM').AsString,6);
      registro := registro + 'XX';
      registro := registro + STR_AddSpaces('',13);
      registro := registro + STR_AddSpaces('',14);
      registro := registro + STR_AddZeros(IntToStr(seg),6);
      Writeln (F, registro);
      //**REGISTRO DE ITEM DA CONTA
      itc := 0 ;
      tlc := 0 ;
      tbl_itens.First;
      while not tbl_itens.eof do begin
        while trim(tbl_itens.FieldByName('Codigo').AsString) = '' do
          tbl_itens.Delete;
        INC(SEG);
        INC(ITM);
        INC(ITC);
        tlc := tlc + StrToFloat(STR_RemoveChar(STR_RemoveChar(tbl_itens.FieldByName('Valor').AsString,'.'),',')) ;
        registro := 'CSMH2';
        registro := registro + STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5);
        registro := registro + '00000000';
        registro := registro + '00000000';
        registro := registro + '00';
        registro := registro + STR_AddZeros(tbl_itens.FieldByName('Numero').AsString,3);
        registro := registro + STR_AddZeros(tbl_itens.FieldByName('Codigo').AsString,8);
        registro := registro + STR_AddSpaces(tbl_itens.FieldByName('Descricao').AsString,49);
        if trim(tbl_itens.FieldByName('Emeregencia').AsString) = 'S' then
          registro := registro + 'S'
        else
          registro := registro + 'N';
        if tbl_itens.FieldByName('DHE').AsString = 'S' then
          registro := registro + 'S'
        else
          registro := registro + 'N';
        registro := registro + FormatDateTime('ddmmyy', tbl_itens.FieldByName('dtrealizacao').AsDateTime);
        if trim(tbl_itens.FieldByName('Posicao').AsString) <> '' then
          registro := registro + tbl_itens.FieldByName('Posicao').AsString
        else
          registro := registro + '0';
        registro := registro + STR_AddZeros(tbl_itens.FieldByName('Qtde').AsString,5);
        vl := StrToFloat(STR_RemoveChar(STR_RemoveChar(tbl_itens.FieldByName('Valor').AsString,'.'),',')) ;
        registro := registro + STR_AddZeros(FloatToStr(Int(vl)),15) ;
        registro := registro + STR_AddZeros(tbl_itens.FieldByName('Percentual').AsString,3);
        registro := registro + STR_AddSpaces('',7);
        registro := registro + STR_AddSpaces('',14);
        registro := registro + STR_AddZeros(IntToStr(seg),6);
        Writeln (F, registro);
        tbl_itens.next;
      end;
      //**REGISTRO DE TOTAL DA CONTA
      INC(SEG);
      registro := 'CSMH3';
      registro := registro + STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5);
      registro := registro + '00000000';
      registro := registro + '00000000';
      registro := registro + '00';
      registro := registro + STR_AddZeros(IntToStr(itc),3);
//      vl := tlc*100 ;
      registro := registro + STR_AddZeros(FloatToStr(Int(tlc)),15) ;
      registro := registro + STR_AddSpaces(tbl_sadt.FieldByName('Nome').AsString,39);
      registro := registro + STR_AddSpaces('',42);
      registro := registro + STR_AddSpaces('',14);
      registro := registro + STR_AddZeros(IntToStr(seg),6);
      Writeln (F, registro);
      tbl_sadt.next;
    end;
    //**** INTERNAÇÃO
    tbl_internacao.first;
    while not tbl_internacao.eof do begin
      //** CABEÇALHO DA CONTA
      while trim(tbl_internacao.FieldByName('carteira').AsString) = '' do
        tbl_internacao.delete;
      INC(CTS);
      INC(SEG);
      registro := 'CSMH1';
      registro := registro + STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5);
      registro := registro + '00000000';
      registro := registro + '00000000';
      registro := registro + '00';
      registro := registro + '000';
      registro := registro + STR_AddZeros(tbl_internacao.FieldByName('carteira').AsString,18);
      registro := registro + STR_AddZeros(tbl_internacao.FieldByName('CodAutorizacao').AsString,10);
      registro := registro + copy(tbl_internacao.FieldByName('CodAcomodacao').AsString,1,1);
      registro := registro + FormatDateTime('ddmmyy', tbl_internacao.FieldByName('DtInternacao').AsDateTime);
      registro := registro + FormatDateTime('hhnn', tbl_internacao.FieldByName('HrInternacao').AsDateTime);
      registro := registro + FormatDateTime('ddmmyy', tbl_internacao.FieldByName('dtAlta').AsDateTime);
      registro := registro + FormatDateTime('hhnn', tbl_internacao.FieldByName('HrAlta').AsDateTime);
      registro := registro + FormatDateTime('ddmmyy', tbl_internacao.FieldByName('DtInternacao').AsDateTime);
      registro := registro + FormatDateTime('ddmmyy', tbl_internacao.FieldByName('dtAlta').AsDateTime);
      registro := registro + copy(tbl_internacao.FieldByName('CodAtendimento').AsString,1,1);
      registro := registro + STR_AddSpaces(tbl_internacao.FieldByName('CID').AsString,5);
      registro := registro + STR_AddSpaces(tbl_internacao.FieldByName('CodEspecialidade').AsString,7);
      registro := registro + STR_AddSpaces(tbl_internacao.FieldByName('CRM').AsString,6);
      registro := registro + 'XX';
      registro := registro + STR_AddSpaces('',13);
      registro := registro + STR_AddSpaces('',14);
      registro := registro + STR_AddZeros(IntToStr(seg),6);
      Writeln (F, registro);
      //**REGISTRO DE ITEM DA CONTA
      itc := 0 ;
      tlc := 0 ;
      tbl_itensInt.First;
      while not tbl_itensInt.eof do begin
        while trim(tbl_itensInt.FieldByName('Codigo').AsString) = '' do
          tbl_itensInt.Delete;
        INC(SEG);
        INC(ITM);
        INC(ITC);
        tlc := tlc + StrToFloat(STR_RemoveChar(tbl_itensInt.FieldByName('Valor').AsString,'.')) ;
        registro := 'CSMH2';
        registro := registro + STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5);
        registro := registro + '00000000';
        registro := registro + '00000000';
        registro := registro + '00';
        registro := registro + STR_AddZeros(tbl_itensInt.FieldByName('Numero').AsString,3);
        registro := registro + STR_AddZeros(tbl_itensInt.FieldByName('Codigo').AsString,8);
        registro := registro + STR_AddSpaces(tbl_itensInt.FieldByName('Descricao').AsString,49);
        registro := registro + tbl_itensInt.FieldByName('Emeregencia').AsString;
        registro := registro + tbl_itensInt.FieldByName('DHE').AsString;
        registro := registro + FormatDateTime('ddmmyy', tbl_itensInt.FieldByName('dtrealizacao').AsDateTime);
        registro := registro + STR_AddZeros(tbl_itensInt.FieldByName('Posicao').AsString,1);
        registro := registro + STR_AddZeros(tbl_itensInt.FieldByName('Qtde').AsString,5);
        try
          vl := StrToFloat(STR_RemoveChar(STR_RemoveChar(tbl_itensInt.FieldByName('Valor').AsString,'.'),',')) ;
        except
          vl:=0;
        end;
        registro := registro + STR_AddZeros(FloatToStr(Int(vl)),15) ;
        registro := registro + STR_AddZeros(tbl_itensInt.FieldByName('Percentual').AsString,3);
        registro := registro + STR_AddSpaces('',7);
        registro := registro + STR_AddSpaces('',14);
        registro := registro + STR_AddZeros(IntToStr(seg),6);
        Writeln (F, registro);
        tbl_itensInt.next;
      end;
      //**REGISTRO DE TOTAL DA CONTA
      INC(SEG);
      registro := 'CSMH3';
      registro := registro + STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5);
      registro := registro + '00000000';
      registro := registro + '00000000';
      registro := registro + '00';
      registro := registro + STR_AddZeros(IntToStr(itc),3);
      vl := tlc*100 ;
      registro := registro + STR_AddZeros(FloatToStr(Int(vl)),15) ;
      registro := registro + STR_AddSpaces(tbl_internacao.FieldByName('Nome').AsString,39);
      registro := registro + STR_AddSpaces('',42);
      registro := registro + STR_AddSpaces('',14);
      registro := registro + STR_AddZeros(IntToStr(seg),6);
      Writeln (F, registro);
      tbl_internacao.next;
    end;
    //**** REGISTRO DE FIM DE LOTE
    INC(SEG);
    registro := 'CSMH4';
    registro := registro + STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5);
    registro := registro + '00000000';
    registro := registro + '99999999';
    registro := registro + '99';
    registro := registro + '0000000000';
    registro := registro + STR_AddZeros(IntToStr(itm),3);
    registro := registro + '000000000000000';
    registro := registro + STR_AddSpaces('',72);
    registro := registro + STR_AddSpaces('',14);
    registro := registro + STR_AddZeros(IntToStr(seg),6);
    Writeln (F, registro);
    //**** REGISTRO TRAILLER DE REMESSA
    INC(SEG);
    registro := 'CSMH9';
    registro := registro + STR_AddZeros(copy(tbl_conveniado.FieldByName('Cod_Conveniado').AsString,1,5),5);
    registro := registro + '99999999';
    registro := registro + '99999999';
    registro := registro + '99';
    registro := registro + STR_AddZeros(IntToStr(cts),5);
    registro := registro + '0000000000000';
    registro := registro + STR_AddSpaces('',81);
    registro := registro + STR_AddSpaces('',15);
    registro := registro + STR_AddZeros(IntToStr(seg),6);
    Writeln (F, registro);
    closefile (F);
    ShowMessage('ARQUIVO "'+SaveDialog.FileName+'" GERADO COM SUCESSO ! Se o arquivo gerado foi salvo em disquete, encaminhe o mesmo ao IMASF juntamente com as planilhas do Faturamento. Se o arquivoi foi salvo no disco, deve-se grava-lo em disquete ou encaminha-lo ao IMASF por e-mail. ');
  end;
end;

function TFrm_Principal.GetNomeItem(codigo:string): String;
begin
  result := '' ;
  if Trim(codigo) = '' then
    exit ;
  try
    result :=  Service.getNomeItemServicoByCodPadrao(StrToInt(codigo));
  except;
    result := '';
  end;
end;


procedure TFrm_Principal.edt_carteiraExit(Sender: TObject);
begin
  if (DataSource.State in [dsEdit, dsInsert]) and (webServiceAtivo) then begin
    edt_nome.text := GetNomeBeneficiario(edt_carteira.text);
    tbl_consulta.FieldByName('nome').AsString := edt_nome.text ;
  end;
end;

procedure TFrm_Principal.edt_carteirasadtExit(Sender: TObject);
begin
  if (DataSource1.State in [dsEdit, dsInsert]) and (webServiceAtivo) then begin
    edt_nomesadt.text := GetNomeBeneficiario(edt_carteirasadt.text);
    tbl_sadt.FieldByName('nome').AsString := edt_nomesadt.text ;
  end;
end;

procedure TFrm_Principal.edt_carteiraintExit(Sender: TObject);
begin
  if (DataSource3.State in [dsEdit, dsInsert]) and (webServiceAtivo) then begin
    edt_nomeInt.text := GetNomeBeneficiario(edt_carteiraInt.text);
    tbl_internacao.FieldByName('nome').AsString := edt_nomeInt.text ;
    edt_nomeseg.text := edt_nomeint.text ;
    tbl_internacao.FieldByName('nomesegurado').AsString := edt_nomeint.text ;
  end;
end;

procedure TFrm_Principal.PageControlChange(Sender: TObject);
begin
if DataSource.State in [dsEdit, dsInsert] then
  tbl_consulta.cancel;
if DataSource2.State in [dsEdit, dsInsert] then
  tbl_itens.cancel;
if DataSource4.State in [dsEdit, dsInsert] then
  tbl_itensInt.cancel;
end;

procedure TFrm_Principal.tbl_consultaAfterOpen(DataSet: TDataSet);
begin
  Lbl_totalCons.Caption := 'Total de Consultas : '+IntToStr(tbl_consulta.recordcount);
end;

procedure TFrm_Principal.tbl_consultaAfterPost(DataSet: TDataSet);
begin
  Lbl_totalCons.Caption := 'Total de Consultas : '+IntToStr(tbl_consulta.recordcount);
  dbiSaveChanges(tbl_consulta.handle);
end;

procedure TFrm_Principal.tbl_consultaAfterDelete(DataSet: TDataSet);
begin
  Lbl_totalCons.Caption := 'Total de Consultas : '+IntToStr(tbl_consulta.recordcount);
  dbiSaveChanges(tbl_consulta.handle);
end;

procedure TFrm_Principal.edt_PitemExit(Sender: TObject);
begin
  if (DataSource2.State in [dsEdit, dsInsert]) and (edt_Pitem.text <> '') and
  (edt_percentual.text = '') then begin
  edt_percentual.text := '000';
  tbl_itens.FieldByName('Percentual').AsString := '000';
  end;
{  case strtoint(edt_Pitem.text) of
    0,5,6,7 : begin
      edt_percentual.text := '100';
      tbl_itens.FieldByName('Percentual').AsString := '100';
    end;
    1 : begin
      edt_percentual.text := '30';
      tbl_itens.FieldByName('Percentual').AsString := '30';
    end;
    2,3 : begin
      edt_percentual.text := '20';
      tbl_itens.FieldByName('Percentual').AsString := '20';
    end;
    4 : begin
      edt_percentual.text := '10';
      tbl_itens.FieldByName('Percentual').AsString := '10';
    end;
   else begin
      edt_percentual.text := '100';
      tbl_itens.FieldByName('Percentual').AsString := '100';
    end;
  end;}
end;

procedure TFrm_Principal.edt_PItemIntExit(Sender: TObject);
begin
  if (DataSource4.State in [dsEdit, dsInsert]) and (edt_PitemInt.text <> '') and
  (edt_percentualInt.text = '') then begin
  edt_percentualInt.text := '000';
  tbl_itensInt.FieldByName('Percentual').AsString := '000';
  end;
{  case strtoint(edt_PitemInt.text) of
    0,5,6,7 : begin
      edt_percentualInt.text := '100';
      tbl_itensInt.FieldByName('Percentual').AsString := '100';
    end;
    1 : begin
      edt_percentualInt.text := '30';
      tbl_itensInt.FieldByName('Percentual').AsString := '30';
    end;
    2,3 : begin
      edt_percentualInt.text := '20';
      tbl_itensInt.FieldByName('Percentual').AsString := '20';
    end;
    4 : begin
      edt_percentualInt.text := '10';
      tbl_itensInt.FieldByName('Percentual').AsString := '10';
    end;
   else begin
      edt_percentualInt.text := '100';
      tbl_itensInt.FieldByName('Percentual').AsString := '100';
    end;
  end;}
end;

procedure TFrm_Principal.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = '.' then key := ',';
end;

procedure TFrm_Principal.edt_valorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = '.' then key := ',';
end;

procedure TFrm_Principal.edt_valorIntKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = '.' then key := ',';
end;

procedure TFrm_Principal.PageControl2Change(Sender: TObject);
begin
if DataSource2.State in [dsEdit, dsInsert] then
  tbl_itens.cancel;
end;

procedure TFrm_Principal.PageControl3Change(Sender: TObject);
begin
if DataSource4.State in [dsEdit, dsInsert] then
  tbl_itensInt.cancel;
end;

procedure TFrm_Principal.PDJButton4Click(Sender: TObject);
begin
  try
    tbl_sadt.delete;
  except

  end;  
end;

procedure TFrm_Principal.DBEdit4Exit(Sender: TObject);
begin
  try
    DecimalSeparator := ',';
    DBEdit4.text :=
    FormatFloat('###,###,##0.00', StrToFloat(DBEdit4.text));
  except
    DBEdit4.text := '0' ;
  end;
end;

procedure TFrm_Principal.edt_valorExit(Sender: TObject);
begin
  try
    DecimalSeparator := ',';
    //edt_valor.text :=
    FormatFloat('###,###,##0.00', StrToFloat(edt_valor.text));
  except
    edt_valor.text := '0' ;
  end;
end;

procedure TFrm_Principal.edt_valorIntExit(Sender: TObject);
begin
  try
    DecimalSeparator := ',';
    //edt_valorInt.text :=
    FormatFloat('###,###,##0.00', StrToFloat(edt_valorInt.text));
  except
    edt_valorInt.text := '0' ;
  end;
end;

procedure TFrm_Principal.edt_codigoExit(Sender: TObject);
begin
  if edt_descriItem.text = '' then
  if (DataSource2.State in [dsEdit, dsInsert]) and (webServiceAtivo) then begin
    edt_descriItem.text := GetNomeItem(edt_codigo.text);
    tbl_itens.FieldByName('Descricao').AsString := edt_descriItem.text ;
  end;
end;

procedure TFrm_Principal.edt_codigoIntExit(Sender: TObject);
begin
  if edt_descriItemInt.text = '' then
  if (DataSource4.State in [dsEdit, dsInsert]) and (webServiceAtivo) then begin
    edt_descriItemInt.text := GetNomeItem(edt_codigoInt.text);
    tbl_itensInt.FieldByName('Descricao').AsString := edt_descriItemInt.text ;
  end
end;

procedure TFrm_Principal.tbl_sadtAfterDelete(DataSet: TDataSet);
begin
  dbiSaveChanges(tbl_sadt.handle);
end;

procedure TFrm_Principal.tbl_sadtAfterPost(DataSet: TDataSet);
begin
dbiSaveChanges(tbl_sadt.handle);
end;

procedure TFrm_Principal.tbl_itensIntAfterPost(DataSet: TDataSet);
begin
dbiSaveChanges(tbl_itensInt.handle);
end;

procedure TFrm_Principal.tbl_itensIntAfterDelete(DataSet: TDataSet);
begin
dbiSaveChanges(tbl_itensInt.handle);
end;

procedure TFrm_Principal.tbl_internacaoAfterDelete(DataSet: TDataSet);
begin
dbiSaveChanges(tbl_internacao.handle);
end;

procedure TFrm_Principal.tbl_internacaoAfterPost(DataSet: TDataSet);
begin
dbiSaveChanges(tbl_internacao.handle);
end;

procedure TFrm_Principal.tbl_conveniadoAfterDelete(DataSet: TDataSet);
begin
dbiSaveChanges(tbl_conveniado.handle);
end;

procedure TFrm_Principal.tbl_conveniadoAfterPost(DataSet: TDataSet);
begin
dbiSaveChanges(tbl_conveniado.handle);
end;

procedure TFrm_Principal.tbl_itensAfterPost(DataSet: TDataSet);
begin
dbiSaveChanges(tbl_itens.handle);
end;

procedure TFrm_Principal.tbl_itensAfterDelete(DataSet: TDataSet);
begin
dbiSaveChanges(tbl_itens.handle);
end;

procedure TFrm_Principal.Image1Click(Sender: TObject);
begin
  Frm_Dlg_Sobre.ShowModal;
end;

procedure TFrm_Principal.FormDestroy(Sender: TObject);
begin
  with tbl_conveniado do
  begin
{    edit;
    fieldbyname('Cod_Conveniado').Asstring := edt_codconveniado.text;
    fieldbyname('Nome').Asstring := edt_nomeconveniado.text;
    if fieldbyname('DtInicio').Asstring = '' then
      fieldbyname('DtInicio').AsDateTime := date ;}
    if DataSource5.State in [dsEdit, dsInsert] then
      post;
    close;
  end;
  PageControlChange(Self);  
  tbl_consulta.close;
  tbl_sadt.close;
  tbl_itens.close;
  tbl_internacao.close;
  tbl_itensInt.close;
  tbl_conveniado.close;
  if Service <> nil then
    Service._Release;
end;

procedure TFrm_Principal.ChB_HabilitaWEBClick(Sender: TObject);
begin
  if MessageDlg('Confirma Habilitar Comunicação Através da Internet? Esta opção só deve ser acionada em computadores que estejam conectados a internet através de banda larga. Não é recomendável quando a internet é feita através de linha discada.',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
    ChB_HabilitaWEB.Checked := false;
    Exit;
  end;
  if ChB_HabilitaWEB.Checked then begin
    try
      Service := HTTPRIO as IValidadores;
      webServiceAtivo := Service.testConnection;
      ChB_HabilitaWEB.Checked := webServiceAtivo;
    except
      webServiceAtivo := false ;
    end;
    webServiceAtivo := webServiceAtivo;
  end else
    webServiceAtivo := false ;
end;

procedure TFrm_Principal.SpeedButton1Click(Sender: TObject);
begin
  pnl_itemInt.Visible := True;
  PageControl3.ActivePageIndex := 0;
  edt_codigoInt.SetFocus;
end;

procedure TFrm_Principal.SpeedButton2Click(Sender: TObject);
begin
 pnl_itemSADT.Visible := True;
 PageControl2.ActivePageIndex := 0;
 edt_codigo.SetFocus;
end;

end.
