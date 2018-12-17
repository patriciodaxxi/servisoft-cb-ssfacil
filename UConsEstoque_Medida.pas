unit UConsEstoque_Medida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  SMDBGrid, DB, UDMConsEstoque, RxLookup, Mask, NxCollection, StrUtils, DBGrids, ToolEdit,
  RzPanel, RzTabs, ComObj;

type
  TfrmConsEstoque_Medida = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    RadioGroup2: TRadioGroup;
    Label5: TLabel;
    Edit1: TEdit;
    RzPageControl1: TRzPageControl;
    TS_Medida: TRzTabSheet;
    TS_Produto: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    btnExcel: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsEstoque: TDMConsEstoque;
    ColunaOrdenada: String;
    vComando: String;

    procedure prc_Consultar;
    procedure prc_Le_Estoque_Med;
    procedure prc_Gravar_mEstoque_Med(Tipo : String);
    procedure prc_Gravar_mEstoque_Med_Prod(Tipo, Tipo_Prod : String);
    procedure prc_Gravar_Semi;

    procedure prc_Condicao;
    procedure prc_Monta_Cab;

    procedure prc_Imprimir_Produto_Det;
    
  public
    { Public declarations }
  end;

var
  frmConsEstoque_Medida: TfrmConsEstoque_Medida;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, USel_Produto, Math;

{$R *.dfm}

procedure TfrmConsEstoque_Medida.prc_Consultar;
var
  vComandoAux, vComandoAux2: String;
  i: Integer;
  vFilialAux : Integer;
begin
  fDMConsEstoque.cdsEstoque_Med.Close;
  fDMConsEstoque.cdsEstoque_Med.IndexFieldNames := 'NUM_LOTE_CONTROLE;REFERENCIA';
  i := PosEx('GROUP',fDMConsEstoque.ctEstoque_Med,0);
  vComandoAux  := copy(fDMConsEstoque.ctEstoque_Med,i,Length(fDMConsEstoque.ctEstoque_Med) - i + 1);
  vComandoAux2 := copy(fDMConsEstoque.ctEstoque_Med,1,i-1);
  fDMConsEstoque.sdsEstoque_Med.CommandText := vComandoAux2 + vComando + vComandoAux;
  fDMConsEstoque.cdsEstoque_Med.Open;
end;

procedure TfrmConsEstoque_Medida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMConsEstoque.cdsProduto.Filtered := False;
  Action := Cafree;
end;

procedure TfrmConsEstoque_Medida.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsEstoque);
  fDMConsEstoque.cdsFilial.First;
  if (fDMConsEstoque.cdsFilial.RecordCount < 2) and (fDMConsEstoque.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsEstoque.cdsFilialID.AsInteger;
  TS_Medida.TabVisible := False;
end;

procedure TfrmConsEstoque_Medida.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMConsEstoque.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmConsEstoque_Medida.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMConsEstoque.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmConsEstoque_Medida.RxDBLookupCombo2Change(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    RxDBLookupCombo3.KeyValue := RxDBLookupCombo2.KeyValue
  else
    RxDBLookupCombo3.ClearValue;
end;

procedure TfrmConsEstoque_Medida.RxDBLookupCombo3Change(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    RxDBLookupCombo2.KeyValue := RxDBLookupCombo3.KeyValue;
end;

procedure TfrmConsEstoque_Medida.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo2.Text <> '' then
      vCodProduto_Pos := RxDBLookupCombo2.KeyValue
    else
    if RxDBLookupCombo3.Text <> '' then
      vCodProduto_Pos := RxDBLookupCombo3.KeyValue;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
    begin
      RxDBLookupCombo2.KeyValue := vCodProduto_Pos;
      RxDBLookupCombo3.KeyValue := vCodProduto_Pos;
      RxDBLookupCombo2.SetFocus;
    end;
  end;
end;

procedure TfrmConsEstoque_Medida.btnConsultarClick(Sender: TObject);
begin
  prc_Condicao;
  prc_Consultar;
  prc_Le_Estoque_Med;
end;

procedure TfrmConsEstoque_Medida.prc_Condicao;
begin
  vComando := '';
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND EM.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if RxDBLookupCombo1.Text <> '' then
  vComando := vComando + ' AND EM.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if (DateEdit1.Date > 10) then
    vComando := vComando + ' AND EM.DTMOVIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
  else
  if (DateEdit2.Date > 10) then
    vComando := vComando + ' AND EM.DTMOVIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND EM.NUM_LOTE_CONTROLE = ' + QuotedStr(Edit1.Text);
  case RadioGroup2.ItemIndex of
    0: vComando := vComando + ' AND PROD.TIPO_REG = ' + QuotedStr('P');
    1: vComando := vComando + ' AND PROD.TIPO_REG = ' + QuotedStr('M');
    2: vComando := vComando + ' AND PROD.TIPO_REG = ' + QuotedStr('C');
    3: vComando := vComando + ' AND PROD.TIPO_REG = ' + QuotedStr('S');
  end;
end;

procedure TfrmConsEstoque_Medida.prc_Monta_Cab;
begin
  fDMConsEstoque.vDescOpcao_Rel := '';
  if RxDBLookupCombo1.Text <> '' then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Filial: ' + RxDBLookupCombo1.Text + ')';
  if RxDBLookupCombo3.Text <> '' then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Prod: ' + RxDBLookupCombo3.Text + ')';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Período: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')'
  else
  if (DateEdit1.Date > 10) then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Dt.Inicial: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Dt.Final: ' + DateEdit2.Text + ')';
end;

procedure TfrmConsEstoque_Medida.btnImprimirClick(Sender: TObject);
begin
  vTipo_Config_Email := 4;
  prc_Monta_Cab;
  prc_Imprimir_Produto_Det;
end;

procedure TfrmConsEstoque_Medida.prc_Imprimir_Produto_Det;
var
  vArq : String;
begin
  if fDMConsEstoque.mEstoque_Med_Prod.IsEmpty then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  fDMConsEstoque.mEstoque_Med_Prod.Filtered := False;
  try
    fDMConsEstoque.mEstoque_Med_Prod.Filter   := 'Tipo = ' + QuotedStr('R');
    fDMConsEstoque.mEstoque_Med_Prod.Filtered := True;
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Estoque_Medida.fr3';
    if FileExists(vArq) then
    begin
      fDMConsEstoque.frxReport1.Report.LoadFromFile(vArq);
      fDMConsEstoque.frxReport1.variables['ImpOpcao'] := QuotedStr(fDMConsEstoque.vDescOpcao_Rel);
      fDMConsEstoque.frxReport1.ShowReport;
    end
    else
      ShowMessage('Relatorio não localizado! ' + vArq);
  finally
    fDMConsEstoque.mEstoque_Med_Prod.Filtered := False;
  end;
end;

procedure TfrmConsEstoque_Medida.prc_Le_Estoque_Med;
var
  vNumLoteAux : String;
begin
  vNumLoteAux := '';
  SMDBGrid1.DisableScroll;
  fDMConsEstoque.mEstoque_Med.EmptyDataSet;
  fDMConsEstoque.mEstoque_Med.IndexFieldNames := 'Num_Lote_Controle;Tipo;Medida';
  fDMConsEstoque.mEstoque_Med_Prod.EmptyDataSet;
  fDMConsEstoque.mEstoque_Med_Prod.IndexFieldNames := 'Num_Lote_Controle;ID_Produto';
  fDMConsEstoque.cdsEstoque_Med.First;
  while not fDMConsEstoque.cdsEstoque_Med.Eof do
  begin
    if RzPageControl1.ActivePage = TS_Medida then
    begin
      prc_Gravar_mEstoque_Med('R');
      prc_Gravar_mEstoque_Med('T');
    end
    else
    begin
      if vNumLoteAux <> fDMConsEstoque.cdsEstoque_MedNUM_LOTE_CONTROLE.AsString then
        prc_Gravar_Semi;
      prc_Gravar_mEstoque_Med_Prod('R',fDMConsEstoque.cdsEstoque_MedTIPO_REG.AsString);
      prc_Gravar_mEstoque_Med_Prod('T',fDMConsEstoque.cdsEstoque_MedTIPO_REG.AsString);
    end;
    vNumLoteAux := fDMConsEstoque.cdsEstoque_MedNUM_LOTE_CONTROLE.AsString;
    fDMConsEstoque.cdsEstoque_Med.Next;
  end;
  fDMConsEstoque.mEstoque_Med_Prod.IndexFieldNames := 'Num_Lote_Controle;Tipo;Tipo_Prod';
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsEstoque_Medida.prc_Gravar_mEstoque_Med(Tipo: String);
var
  vLoteAux, vMedidaAux : String;
begin
  {vLoteAux   := '';
  vMedidaAux := '';
  if trim(fDMConsEstoque.cdsEstoque_MedNUM_LOTE_CONTROLE.AsString) <> '' then
    vLoteAux   := fDMConsEstoque.cdsEstoque_MedNUM_LOTE_CONTROLE.AsString;
  if (trim(fDMConsEstoque.cdsEstoque_MedMEDIDA.AsString) <> '') and (Tipo <> 'T') then
    vMedidaAux := fDMConsEstoque.cdsEstoque_MedMEDIDA.AsString
  else
  if Tipo = 'T' then
    vMedidaAux := '...Total...';
  if fDMConsEstoque.mEstoque_Med.FindKey([vLoteAux,Tipo,vMedidaAux]) then
    fDMConsEstoque.mEstoque_Med.Edit
  else
  begin
    fDMConsEstoque.mEstoque_Med.Insert;
    fDMConsEstoque.mEstoque_MedNum_Lote_Controle.AsString := vLoteAux;
    fDMConsEstoque.mEstoque_MedMedida.AsString            := vMedidaAux;
    fDMConsEstoque.mEstoque_MedTipo.AsString              := Tipo;
    fDMConsEstoque.mEstoque_MedQtd_Estoque.AsFloat        := StrToFloat(FormatFloat('0',0));
    fDMConsEstoque.mEstoque_MedQtd_Producao.AsFloat       := StrToFloat(FormatFloat('0',0));
    fDMConsEstoque.mEstoque_MedQtd_Total.AsFloat          := StrToFloat(FormatFloat('0',0));
    if Tipo = 'T' then
      fDMConsEstoque.mEstoque_MedDesc_Num_Lote_Controle.AsString := ''
    else
      fDMConsEstoque.mEstoque_MedDesc_Num_Lote_Controle.AsString := vLoteAux;
  end;
  if fDMConsEstoque.cdsEstoque_MedPRINCIPAL.AsString = 'S' then
    fDMConsEstoque.mEstoque_MedQtd_Estoque.AsFloat := fDMConsEstoque.mEstoque_MedQtd_Estoque.AsFloat + fDMConsEstoque.cdsEstoque_MedQTD.AsFloat
  else
    fDMConsEstoque.mEstoque_MedQtd_Producao.AsFloat := fDMConsEstoque.mEstoque_MedQtd_Producao.AsFloat + fDMConsEstoque.cdsEstoque_MedQTD.AsFloat;
  fDMConsEstoque.mEstoque_MedQtd_Total.AsFloat := fDMConsEstoque.mEstoque_MedQtd_Total.AsFloat + fDMConsEstoque.cdsEstoque_MedQTD.AsFloat;
  fDMConsEstoque.mEstoque_Med.Post;}
end;

procedure TfrmConsEstoque_Medida.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMConsEstoque.mEstoque_MedTipo.AsString = 'T' then
  begin
    Background := clSilver;
    if (Field = fDMConsEstoque.mEstoque_Med.FieldByName('Num_Lote_Controle')) then
      AFont.Color := clSilver;
//         (Field = DM1.tTabPrecoProd.FieldByName('PrecoDolar'+DM1.tTabPrecoProdPrecoAmostra.AsString)) or
//        (Field = DM1.tTabPrecoProd.FieldByName('PrecoEuro'+DM1.tTabPrecoProdPrecoAmostra.AsString)) then
//        Background := clAqua
//      else
//        Background := clWindow;
    //end;


  end;
end;

procedure TfrmConsEstoque_Medida.prc_Gravar_mEstoque_Med_Prod(Tipo,
  Tipo_Prod: String);
var
  vLoteAux, vRefAux : String;
  vID_Aux : Integer;
  vNomeAux : String;
begin
  vLoteAux := '';
  if trim(fDMConsEstoque.cdsEstoque_MedNUM_LOTE_CONTROLE.AsString) <> '' then
    vLoteAux   := fDMConsEstoque.cdsEstoque_MedNUM_LOTE_CONTROLE.AsString;
  if (Tipo <> 'T') then
  begin
    vRefAux  := fDMConsEstoque.cdsEstoque_MedREFERENCIA.AsString;
    vID_Aux  := fDMConsEstoque.cdsEstoque_MedID_PRODUTO.AsInteger;
    vNomeAux := fDMConsEstoque.cdsEstoque_MedNOME_PRODUTO.AsString;
  end
  else
  if Tipo = 'T' then
  begin
    vRefAux  := '...Total...';
    vID_Aux  := 0;
    vNomeAux := '';
  end;
  if fDMConsEstoque.mEstoque_Med_Prod.FindKey([vLoteAux,vID_Aux]) then
    fDMConsEstoque.mEstoque_Med_Prod.Edit
  else
  begin
    fDMConsEstoque.mEstoque_Med_Prod.Insert;
    fDMConsEstoque.mEstoque_Med_ProdNum_Lote_Controle.AsString := vLoteAux;
    fDMConsEstoque.mEstoque_Med_ProdID_Produto.AsInteger       := vID_Aux;
    fDMConsEstoque.mEstoque_Med_ProdReferencia.AsString        := vRefAux;
    fDMConsEstoque.mEstoque_Med_ProdTipo.AsString              := Tipo;
    fDMConsEstoque.mEstoque_Med_ProdNome_Produto.AsString      := vNomeAux;
    fDMConsEstoque.mEstoque_Med_ProdTipo_Prod.AsString         := '2'; 
    fDMConsEstoque.mEstoque_Med_ProdQtd_Estoque.AsFloat        := StrToFloat(FormatFloat('0',0));
    fDMConsEstoque.mEstoque_Med_ProdQtd_Producao.AsFloat       := StrToFloat(FormatFloat('0',0));
    fDMConsEstoque.mEstoque_Med_ProdQtd_Total.AsFloat          := StrToFloat(FormatFloat('0',0));
  end;
  if Tipo_Prod = 'P' then
  begin
    if fDMConsEstoque.cdsEstoque_MedPRINCIPAL.AsString = 'S' then
      fDMConsEstoque.mEstoque_Med_ProdQtd_Estoque.AsFloat := fDMConsEstoque.mEstoque_Med_ProdQtd_Estoque.AsFloat + fDMConsEstoque.cdsEstoque_MedQTD.AsFloat
    else
      fDMConsEstoque.mEstoque_Med_ProdQtd_Producao.AsFloat := fDMConsEstoque.mEstoque_Med_ProdQtd_Producao.AsFloat + fDMConsEstoque.cdsEstoque_MedQTD.AsFloat;
    fDMConsEstoque.mEstoque_Med_ProdQtd_Total.AsFloat := fDMConsEstoque.mEstoque_MedQtd_Total.AsFloat + fDMConsEstoque.cdsEstoque_MedQTD.AsFloat;
  end
  else
    fDMConsEstoque.mEstoque_Med_ProdQtd_Material.AsFloat := fDMConsEstoque.mEstoque_Med_ProdQtd_Material.AsFloat + fDMConsEstoque.cdsEstoque_MedQTD.AsFloat;
  fDMConsEstoque.mEstoque_Med_Prod.Post;
end;

procedure TfrmConsEstoque_Medida.prc_Gravar_Semi;
begin
  fDMConsEstoque.cdsEstoque_Med_Semi.Close;
  fDMConsEstoque.sdsEstoque_Med_Semi.ParamByName('NUM_LOTE_CONTROLE').AsString := fDMConsEstoque.cdsEstoque_MedNUM_LOTE_CONTROLE.AsString;
  fDMConsEstoque.cdsEstoque_Med_Semi.Open;
  if fDMConsEstoque.cdsEstoque_Med_Semi.IsEmpty then
    exit;

  fDMConsEstoque.cdsEstoque_Med_Semi.First;
  while not fDMConsEstoque.cdsEstoque_Med_Semi.Eof do
  begin
    fDMConsEstoque.mEstoque_Med_Prod.Insert;
    fDMConsEstoque.mEstoque_Med_ProdNum_Lote_Controle.AsString := fDMConsEstoque.cdsEstoque_Med_SemiNUM_LOTE_CONTROLE.AsString;
    fDMConsEstoque.mEstoque_Med_ProdID_Produto.AsInteger       := fDMConsEstoque.cdsEstoque_Med_SemiID_PRODUTO.AsInteger;
    fDMConsEstoque.mEstoque_Med_ProdReferencia.AsString        := fDMConsEstoque.cdsEstoque_Med_SemiREFERENCIA.AsString;
    fDMConsEstoque.mEstoque_Med_ProdTipo.AsString              := 'R';
    fDMConsEstoque.mEstoque_Med_ProdNome_Produto.AsString      := fDMConsEstoque.cdsEstoque_Med_SemiNOME_PRODUTO.AsString;
    fDMConsEstoque.mEstoque_Med_ProdTipo_Prod.AsString         := '1';
    fDMConsEstoque.mEstoque_Med_ProdQtd_Estoque.AsFloat        := StrToFloat(FormatFloat('0.000',0 ));
    fDMConsEstoque.mEstoque_Med_ProdQtd_Producao.AsFloat       := StrToFloat(FormatFloat('0.000',0));
    fDMConsEstoque.mEstoque_Med_ProdQtd_Total.AsFloat          := StrToFloat(FormatFloat('0.000',0));
    fDMConsEstoque.mEstoque_Med_ProdQtd_Material.AsFloat       := StrToFloat(FormatFloat('0.000',fDMConsEstoque.cdsEstoque_Med_SemiQTD.AsFloat));
    fDMConsEstoque.mEstoque_Med_Prod.Post;

    fDMConsEstoque.cdsEstoque_Med_Semi.Next;
  end;
end;

procedure TfrmConsEstoque_Medida.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not fDMConsEstoque.mEstoque_Med_Prod.IsEmpty then
  begin
    if fDMConsEstoque.mEstoque_Med_ProdTipo_Prod.AsString = '1' then
    begin
      //AFont.Color := clBlue;
      AFont.Style := [fsBold];
    end
    else
    if fDMConsEstoque.mEstoque_Med_ProdTipo.AsString = 'T' then
      Background := $00E9E9E9;
  end;
end;

procedure TfrmConsEstoque_Medida.btnExcelClick(Sender: TObject);
  var linha, coluna : integer;
   planilha : variant;
   valorcampo : string;
  vTexto : String;
  ColunaP : Integer;
begin
  Screen.Cursor := crHourGlass;
  fDMConsEstoque.mEstoque_Med_Prod.First;

  planilha:= CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do dbGrid para o Excel';
  planilha.visible := true;

  linha   := 2;
  ColunaP := 0;
  for coluna := 0 to SMDBGrid2.FieldCount - 1 do
  begin
    ColunaP    := ColunaP + 1;
    valorcampo := SMDBGrid2.Columns[coluna].FieldName;
    planilha.cells[Linha,colunaP] := valorcampo;
    planilha.cells[Linha,colunaP].font.bold := true; // Negrito
    planilha.cells[Linha,colunaP].Interior.Color := clRed;
    planilha.cells[Linha,colunaP].font.size := 11; // Tamanho da Fonte
    planilha.cells[Linha,colunaP].font.Color := clWhite;
  end;

  fDMConsEstoque.mEstoque_Med_Prod.First;
  while not fDMConsEstoque.mEstoque_Med_Prod.Eof do
  begin
    linha   := Linha + 1;
    ColunaP := 0;
    for coluna := 0 to SMDBGrid2.FieldCount - 1 do
    begin
      begin
        ColunaP    := ColunaP + 1;
        vTexto     := fDMConsEstoque.mEstoque_Med_Prod.FieldByName(SMDBGrid2.Columns[coluna].FieldName).AsString;
        if trim(vTexto) <> '' then
          valorcampo := fDMConsEstoque.mEstoque_Med_Prod.FieldByName(SMDBGrid2.Columns[coluna].FieldName).Value
        else
          valorcampo := '';
        vTexto     := SMDBGrid2.Columns[coluna].FieldName;
        if (copy(vTexto,1,4) = 'VLR_') then
        begin
          if trim(valorcampo) = '' then valorcampo := '0';
            planilha.Cells[linha,colunaP].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,000##)';
          planilha.cells[linha,colunaP] := StrToFloat(valorCampo);
        end
        else
        begin
          vTexto     := fDMConsEstoque.mEstoque_Med_Prod.FieldByName(SMDBGrid2.Columns[coluna].FieldName).AsString;
          if trim(vTexto) <> '' then
            planilha.cells[linha,colunaP] := fDMConsEstoque.mEstoque_Med_Prod.FieldByName(SMDBGrid2.Columns[coluna].FieldName).Value
          else
            planilha.cells[linha,colunaP] := '';
        end;
        planilha.cells[linha,colunaP].font.size := 11; // Tamanho da Fonte
      end;
    end;
    fDMConsEstoque.mEstoque_Med_Prod.Next;
  end;
  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  Planilha.ActiveWorkBook.SaveAs(vTexto+ 'Estoque_Med.XLS' );
  Screen.Cursor := crDefault;
end;

end.
