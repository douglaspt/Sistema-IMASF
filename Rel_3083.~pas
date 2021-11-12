unit Rel_3083;

interface

uses
  Windows, Messages, Bas_TelaPadrao, DCChoice, StdCtrls, ExtCtrls, ComCtrls,
  PDJButton, jpeg, Controls, Classes, Dialogs, SysUtils, Graphics, Forms,
  DB, Grids, DBGrids, Buttons, Mask, DBCtrls, QRExport, ShellApi, ComObj;

type
  TFrm_Rel_3083 = class(TFrm_Bas_TelaPadrao)
    btn_relacao01: TPDJButton;
    SaveDialog: TSaveDialog;
    pgb_registros: TProgressBar;
    btn_relacao02: TPDJButton;
    Panel7: TPanel;
    cbx_cod_mes: TDCComboBox;
    edt_ano: TDCEdit;
    PDJButton1: TPDJButton;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure edt_cod_beneficiarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_relacao01Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_relacao02Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
  private
    { Private declarations }
    FCamposAux,
    FTabelaAux,
    FPesquisaSQLDefalt : String ;

  public
    { Public declarations }
    FMesReferencia, FAnoReferencia, FEmpresaFolha : String ;
    WConta, WContb: Integer;
    WNomeSituacao: String;
  end;

var
  Frm_Rel_3083: TFrm_Rel_3083;
  str_arquiventrad, s, Algo: String;
  byt_nameofthfile : TextFile;

implementation

uses Fun_ConsCadastro, Constantes, Fun_DB, Dlg_Mensagem, Fun_obj,
     dtm_principal3, Bas_Impressao, dtm_principal2, dtm_principal;

{$R *.DFM}

procedure TFrm_Rel_3083.FormCreate(Sender: TObject);
begin
  WConta:= 0;
  WContb:= 0;
  FTitulo       := 'Contribuição do Plano PFGB no Período' ;
  FEditChave    := 'edt_cod_beneficiario' ;
  FEditAlteracao:= 'edt_nome_ben' ;
  FUltFoco      := 'mem_obs_ben' ;
  FTitPesquisa  := 'Localizar Beneficiários' ;
  FPesquisaSQL  := FSQL_Beneficiario ;
  FPesquisaTit  := FTit_Benefeciario ;
  inherited;
end;

procedure TFrm_Rel_3083.edt_cod_beneficiarioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
  function Get_Cod_beneficiario(inscricao:string): string;
  begin
    if inscricao = '' then begin
      result := '' ;
      exit;
    end;
    DB_OpenSQL('select cod_beneficiario from tbl_beneficiario where inscricao_ben = '+
    inscricao);
    result := Tab.Fields[0].AsString;
    if result = '' then
      Dlg_Alerta('Inscrição não encontrada !', self);
  end;
  var
    insc : string ;
begin


end;

procedure TFrm_Rel_3083.btn_relacao01Click(Sender: TObject);
Var
  byt_nameofthfile: TextFile;
  str_arquiventrad, S, Algo: String;
begin
  inherited;
  with Fdt_principal2.spc_cons_adm_benefiPFGBmaior16 do
  begin
  Close;
  Open;
  Last;
  pgb_registros.Max:= RecordCount;
  if RecordCount = 0 then
     begin
     Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
     Close;
     Exit;
     end;
  end;

  Fdt_principal2.spc_cons_adm_benefiPFGBmaior16.First;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  if SaveDialog.Execute then
     begin
     str_arquiventrad:= SaveDialog.filename;
     AssignFile(byt_nameofthfile, str_arquiventrad);
     Rewrite (byt_nameofthfile);
     S:= 'Inscrição;Nome;Idade;CPF;Tipo Segurado;Plano;Sistuação';
     Writeln(byt_nameofthfile,S);
     S:= '';
     pgb_registros.Visible:= True;
     pgb_registros.Min:= 0;
     with Fdt_principal2.spc_cons_adm_benefiPFGBmaior16 do
        while not EOF do
        begin
        pgb_registros.Position:= pgb_registros.Position + 1;
        S:= FieldByName('inscricao_ben').AsString + ';' +
            FieldByName('nome_ben').AsString + ';' +
            FieldByName('idade_ben').AsString + ';' +
            FieldByName('cpf_ben').AsString + ';' +
            FieldByName('nome_tdp').AsString + ';' +
            FieldByName('nome_pla').AsString + ';' +
            FieldByName('nome_sit').AsString;
        Writeln(byt_nameofthfile, S);
        Next;
        end;
    Closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
    end;
  pgb_registros.Visible:= False;
  Fdt_principal2.spc_cons_adm_benefiPFGBmaior16.Close;
  if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self)
     then Exit ;
  Algo:= SaveDialog.InitialDir + str_arquiventrad;
  ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);


end;

procedure TFrm_Rel_3083.FormShow(Sender: TObject);
begin
  inherited;
  BAS_CarregarCombo('cbx_cod_mes', 'nome_mes');
  edt_ano.Text := FormatDateTime('yyyy',Date);
end;

procedure TFrm_Rel_3083.btn_relacao02Click(Sender: TObject);
begin
  inherited;
  str_arquiventrad := '';
  if (not BAS_ValidarCampo(cbx_cod_mes.name, 'Mês de Referência deve ser Preenchido !', VLD_Preenchido )) or
  (not BAS_ValidarCampo(edt_ano.name, 'Ano de Referência deve ser Preenchido !', VLD_Preenchido )) then
    Exit;
  with Fdt_principal2.spc_adm_geraBenefiGreenline do
  begin
  Close;
  ParamByName('@dtreferencia').AsString := cbx_cod_mes.valueitem+'/01/'+edt_ano.Text;
  Open;
  Last;
  pgb_registros.Max:= RecordCount;
  if RecordCount = 0 then
     begin
     Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
     Close;
     Exit;
     end;
  end;

  Fdt_principal2.spc_adm_geraBenefiGreenline.First;
  SaveDialog.DefaultExt:= 'CSV';
  SaveDialog.Filter:= 'CSV';
  //SaveDialog.InitialDir := 'C:\';
  SaveDialog.FileName := 'beneficiarios_PFGB_'+FormatDateTime('ddmmyyyy', Date);
  if SaveDialog.Execute then
  begin
    str_arquiventrad:= SaveDialog.filename;
    AssignFile(byt_nameofthfile, str_arquiventrad);
    Rewrite (byt_nameofthfile);
    S:= 'CARTEIRINHA; CODBENEFICIARIO; PLANO; SITUACAO; INSCRICAO; NOME; DESC_SITUACAO;'+
    ' NASCIMENTO; SEXO; NOME_PAI; NOME_MAE; ENDERECO; BAIRRO; CIDADE; CEP; UF;	ESTADO_CIVIL;'+
    ' TELEFONE; RG; CPF; EMAIL; TIPO_DEPENDENCIA; DATA_CADASTRO; DATA_ALTERACAO; EMPRESA; MATRICULA;CLASSIFICACAO';
    Writeln(byt_nameofthfile,S);
    S:= '';
    pgb_registros.Visible:= True;
    pgb_registros.Min:= 0;
    with Fdt_principal2.spc_adm_geraBenefiGreenline do
    begin
      while not EOF do
      begin
        pgb_registros.Position:= pgb_registros.Position + 1;
        S:= FieldByName('carteira_ben').AsString + ';' +
        FieldByName('cod_beneficiario').AsString + ';' +
        FieldByName('nome_pla').AsString + ';' +
        FieldByName('cod_sitbeneficiario').AsString + ';' +
        FieldByName('inscricao_ben').AsString + ';' +
        FieldByName('nome_ben').AsString + ';' +
        FieldByName('nome_sit').AsString + ';' +
        FieldByName('dtnascim_ben').AsString + ';' +
        FieldByName('sexo_ben').AsString + ';' +
        FieldByName('nomepai_ben').AsString + ';' +
        FieldByName('nomemae_ben').AsString + ';' +
        FieldByName('endereco_ben').AsString + ';' +
        FieldByName('bairro_ben').AsString + ';' +
        FieldByName('cidade_cep').AsString + ';' +
        FieldByName('cep_ben').AsString + ';' +
        FieldByName('sigla_uf').AsString + ';' +
        FieldByName('nome_civ').AsString + ';' +
        FieldByName('foneresi_ben').AsString + ';' +
        FieldByName('rg_ben').AsString + ';' +
        FieldByName('cpf_ben').AsString + ';' +
        FieldByName('email_ben').AsString + ';' +
        FieldByName('nome_tdp').AsString + ';' +
        FieldByName('dtcadastro_ben').AsString + ';' +
        FieldByName('dtsituacao_ben').AsString + ';' +
        FieldByName('nome_emp').AsString + ';' +
        FieldByName('matriculadebito_seg').AsString + ';' +
        FieldByName('classificacao').AsString;
        Writeln(byt_nameofthfile, S);
        Next;
      end;
    end;  
    Closefile (byt_nameofthfile);
    Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
  end;
  pgb_registros.Visible:= False;
  Fdt_principal2.spc_adm_geraBenefiGreenline.Close;
  if str_arquiventrad <> '' then
  begin
    if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self)
       then Exit ;
    Algo:= SaveDialog.InitialDir + str_arquiventrad;
    ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TFrm_Rel_3083.Button1Click(Sender: TObject);
var
  objExcel,Sheet,Chart,s : Variant;
  cTitulo : string;
  i : integer;
begin
  inherited;
//OBS: Voce deve usar a Clausula ComObj no USES para usar o EXCEL
// Utilize também a Clausula Clipbrd pois neste exemplo faremos uso da memória

// Cria uma instancia para utilizar o Excel
cTitulo := 'Planilha de Teste Douglas';
objExcel := CreateOleObject('Excel.Application');
objExcel.Visible := True;
objExcel.Caption := cTitulo;

// Caso queria abrir uma planilha ao invéz de gera-la use os comandos abaixo
//objExcel.Workbooks.Open('c:teste.xls');
//Sheet := objExcel.Workbooks[1].WorkSheets[cTitulo];
// Daqui em diante os comandos na Planilha são os mesmos do resto do Exemplo
//Sheet.Range['A1','Z70'].Replace('Nome','Alterado');

// Adiciona planilha(sheet)
objExcel.Workbooks.Add;
objExcel.Workbooks[1].Sheets.Add;

objExcel.Workbooks[1].WorkSheets[1].Name := cTitulo;
Sheet := objExcel.Workbooks[1].WorkSheets[cTitulo];

// É possivel copiar um valor da memória diretamente para a planilha
// mas como não se tem controle de onde ele será colado, este processo pode
// ser meio inconveniente
//Clipboard.AsText := 'Linha Copiada para Memória';
//Sheet.paste;

// Nota:
// Pode-se preencher as linhas usando o comando abaixo, desta forma vc usaria
// a planilha como se ela fosse uma Array, em alguns casos pode ser interessante
// mas no geral considero bem mais trabalhoso, abaixo demonstro outra forma de trabalho
// usando o RANGE que torna o trabalho bem mais simples
//Sheet.Cells[1,1] := 'Coluna[1,1]';

// Preenchendo as Colunas
// Usando o RANGE vc pode preencher várias colunas ao mesmo tempo usando ['A1','A10']
// Ou preencher apenas uma usando ['A1'], isso torna o processo ágil e simples
Sheet.Range['A1'] := 'Código';
Sheet.Range['B1'] := 'Nome';
Sheet.Range['C1'] := 'Fone';
Sheet.Range['D1'] := 'Salário';

// por aqui tu limparias a planilha


// No caso do FOR se torna interessante usar o SHEET.CELLS (veja como)
// Atente que usei o FOR a partir do numero 2 desta forma pularemos a
// primeira linha que ja contem um cabeçalho preenchido acima
for i := 2 to 10 do begin
Sheet.Cells[i,1] := i;
Sheet.Cells[i,2] := 'Nome Cliente '+inttostr(i);
Sheet.Cells[i,3] := 'Fone Cliente '+inttostr(i);
// Formata o Numero para se tornar MOEDA
Sheet.Cells[i,4].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
Sheet.Cells[i,4] := 1000*i;
end;

// Formatando o Cabeçalho
Sheet.Range['A1','D1'].font.name := 'Verdana'; // Fonte
Sheet.Range['A1','D1'].font.size := 12; // Tamanho da Fonte
Sheet.Range['A1','D1'].font.bold := true; // Negrito
Sheet.Range['A1','D1'].font.italic := true; // Italico
Sheet.Range['A1','D1'].font.color := clYellow; // Cor da Fonte
Sheet.Range['A1','D1'].Interior.Color := $00ffcf9c; // Cor da Célula
// Define o tamanho das Colunas (basta fazer em uma delas e as demais serão alteradas)
Sheet.Range['B1','C1' ].ColumnWidth := 27;
Sheet.Range['B1','C1' ].RowHeight := 25;
Sheet.Range['D1'] .ColumnWidth := 16;

// Outras formas de Formatar
Sheet.Range['E1'] := 'Subscrito';
Sheet.Range['E2'] := 'Superescrito';
Sheet.Range['E3'] := 'Sublinhado';
Sheet.Range['E4'] := 'Strike';
Sheet.Range['E1'].font.Subscript := true; // Subscrito
Sheet.Range['E2'].font.Superscript := true; // Superescrito
Sheet.Range['E3'].font.Underline := true; // Sublinhado
Sheet.Range['E4'].font.Strikethrough := true; // Strike

// Colocando a Borda em um unico lado da Célula
Sheet.Range['E5'].Font.size := 7;
Sheet.Range['E5'].ColumnWidth := 20;
Sheet.Range['E5'] := 'Só um lado da Celula com Borda';
Sheet.Range['E5'].Borders.Item[$00000009].Weight := $FFFFEFD6;
Sheet.Range['E5'].Borders.Item[$00000009].Color := clRed;
//-- Espessura da Linha
//========================
{xlHairline = $00000001;
xlMedium = $FFFFEFD6;
xlThick = $00000004;
xlThin = $00000002;}
//-- Posição da Celula que se deseja colocar a Borda
//=====================================================
{xlInsideHorizontal = $0000000C;
xlInsideVertical = $0000000B;
xlDiagonalDown = $00000005;
xlDiagonalUp = $00000006;
xlEdgeBottom = $00000009;
xlEdgeLeft = $00000007;
xlEdgeRight = $0000000A;
xlEdgeTop = $00000008;}

// Incluindo Formulas (a formula deve ser incluida com seu nome original em Inglês
// caso contrário podera ocorrer problemas)
Sheet.Cells[i,3] := 'Total R$';
// Na linha abaixo inclui uma soma e converti para Moeda atravez do NUMBERFORMAT
Sheet.Cells[i,4].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
//Sheet.Cells[i,4].formula := '=SUM(D210)';
Sheet.Cells[i,4].formula := '=SOMA(D2:D10)';

// Alinhando as Células
Sheet.Range['A1'].VerticalAlignment := 1; // 1=Top - 2=Center - 3=Bottom
Sheet.Range['B1'].VerticalAlignment := 2;
Sheet.Range['C1'].VerticalAlignment := 3;

Sheet.Range['B1'].HorizontalAlignment := 3; // 3=Center - 4=Right
Sheet.Range['C1'].HorizontalAlignment := 3;
Sheet.Range['D1'].HorizontalAlignment := 4;

// Adiciona Grade nas Colunas
Sheet.Range['A1','D11'].Borders.LineStyle := 1;
Sheet.Range['A1','D11'].Borders.Weight := 2;
Sheet.Range['A1','D11'].Borders.ColorIndex := 1;

// Excecuta um Replace na Celula localizada
// Lembre-se que ele alterara todas as celulas localizadas dentro
// do RANGE escolhido, ou seja, se ouverem 10 Colunas com o texto
// desejado este comando alterara as 10
Sheet.Range['A1','Z70'].Replace('Fone Cliente 10','Repassou o Texto');

// Cria Grafico
Sheet.ChartObjects.Add(10,160,450,130); // Coordenadas (Left,Top,Width,Height)
Chart := Sheet.ChartObjects[1]; // Cria o Grafico
Chart.Chart.ChartType := $FFFFEFFA; // Tipo do Grafico (veja tabela abaixo)
Chart.Chart.SeriesCollection.Add(Sheet.Range['D210']);

// Pode-se dar um PrintPreview apenas no Gráfico, use o comando abaixo
//Chart.Chart.PrintPreview;

//--TIPOS DE GRAFICOS
//======================
{xlColumnClustered = $00000033;
xlColumnStacked = $00000034;
xlColumnStacked100 = $00000035;
xl3DColumnClustered = $00000036;
xl3DColumnStacked = $00000037;
xl3DColumnStacked100 = $00000038;
xlBarClustered = $00000039;
xlBarStacked = $0000003A;
xlBarStacked100 = $0000003B;
xl3DBarClustered = $0000003C;
xl3DBarStacked = $0000003D;
xl3DBarStacked100 = $0000003E;
xlLineStacked = $0000003F;
xlLineStacked100 = $00000040;
xlLineMarkers = $00000041;
xlLineMarkersStacked = $00000042;
xlLineMarkersStacked100 = $00000043;
xlPieOfPie = $00000044;
xlPieExploded = $00000045;
xl3DPieExploded = $00000046;
xlBarOfPie = $00000047;
xlXYScatterSmooth = $00000048;
xlXYScatterSmoothNoMarkers = $00000049;
xlXYScatterLines = $0000004A;
xlXYScatterLinesNoMarkers = $0000004B;
xlAreaStacked = $0000004C;
xlAreaStacked100 = $0000004D;
xl3DAreaStacked = $0000004E;
xl3DAreaStacked100 = $0000004F;
xlDoughnutExploded = $00000050;
xlRadarMarkers = $00000051;
xlRadarFilled = $00000052;
xlSurface = $00000053;
xlSurfaceWireframe = $00000054;
xlSurfaceTopView = $00000055;
xlSurfaceTopViewWireframe = $00000056;
xlBubble = $0000000F;
xlBubble3DEffect = $00000057;
xlStockHLC = $00000058;
xlStockOHLC = $00000059;
xlStockVHLC = $0000005A;
xlStockVOHLC = $0000005B;
xlCylinderColClustered = $0000005C;
xlCylinderColStacked = $0000005D;
xlCylinderColStacked100 = $0000005E;
xlCylinderBarClustered = $0000005F;
xlCylinderBarStacked = $00000060;
xlCylinderBarStacked100 = $00000061;
xlCylinderCol = $00000062;
xlConeColClustered = $00000063;
xlConeColStacked = $00000064;
xlConeColStacked100 = $00000065;
xlConeBarClustered = $00000066;
xlConeBarStacked = $00000067;
xlConeBarStacked100 = $00000068;
xlConeCol = $00000069;
xlPyramidColClustered = $0000006A;
xlPyramidColStacked = $0000006B;
xlPyramidColStacked100 = $0000006C;
xlPyramidBarClustered = $0000006D;
xlPyramidBarStacked = $0000006E;
xlPyramidBarStacked100 = $0000006F;
xlPyramidCol = $00000070;
xl3DColumn = $FFFFEFFC;
xlLine = $00000004;
xl3DLine = $FFFFEFFB;
xl3DPie = $FFFFEFFA;
xlPie = $00000005;
xlXYScatter = $FFFFEFB7;
xl3DArea = $FFFFEFFE;
xlArea = $00000001;
xlDoughnut = $FFFFEFE8;
xlRadar = $FFFFEFC9; }

// O PrintPreview abre a tela de visualização do Excel
// e o PrintOut imprime na impressora padrão do Windows
//Sheet.PrintPreview;
//Sheet.PrintOut;

// o SaveAs permite que vc salve automáticamente o relatório gerado
//Sheet.SaveAs('c:teste.xls');
end;

procedure TFrm_Rel_3083.PDJButton1Click(Sender: TObject);
var
  cTitulo, valorcampo, cabecalho, dados : string;
  i : integer;
  linha, coluna : integer;
begin
  inherited;
  cabecalho := '';
  with Fdt_principal2.spc_adm_geraDemostrativoBenefi do
  begin
    Close;
    Open;
    Last;
    pgb_registros.Max:= RecordCount;
    if RecordCount = 0 then
    begin
      Dlg_Alerta ('Nenhum Registro foi encontrado', Self);
      Close;
      Exit;
    end;

    First;
    SaveDialog.DefaultExt:= 'CSV';
    SaveDialog.Filter:= 'CSV';
    //SaveDialog.InitialDir := 'C:\';
    SaveDialog.FileName := 'beneficiarios_imasf_'+FormatDateTime('ddmmyyyy', Date);

    if SaveDialog.Execute then
    begin
      str_arquiventrad:= SaveDialog.filename;
      AssignFile(byt_nameofthfile, str_arquiventrad);
      Rewrite (byt_nameofthfile);
      //monta cabeçalho
      for coluna := 1 to FieldCount do
      begin
        valorcampo := Fields[coluna - 1].DisplayLabel;
        cabecalho := cabecalho+valorcampo+';';
      end;
      Writeln(byt_nameofthfile,cabecalho);
      pgb_registros.Visible:= True;
      pgb_registros.Min:= 0;
      S:='';
      for linha := 0 to RecordCount - 1 do
      begin
        for coluna := 1 to FieldCount do
        begin
          valorcampo := Fields[coluna - 1].AsString;
          S:= S + valorcampo+';';
          pgb_registros.Position:= pgb_registros.Position + 1;
        end;
        Writeln(byt_nameofthfile, S);
        S:='';
        Next;
      end;
    end;  
  end;
  Closefile (byt_nameofthfile);
  Dlg_Ok('Gerado arquivo em ' + SaveDialog.InitialDir + str_arquiventrad,self);
  pgb_registros.Visible:= False;
  Fdt_principal2.spc_cons_adm_benefiPFGBmaior16.Close;
  if not Dlg_YesNo('Deseja abrir o arquivo agora?', Self)
     then Exit ;
  Algo:= SaveDialog.InitialDir + str_arquiventrad;
  ShellExecute(Handle, nil, PChar(Algo), nil, nil, SW_SHOWNORMAL);

end;

end.



