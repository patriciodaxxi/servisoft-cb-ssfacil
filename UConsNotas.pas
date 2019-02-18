unit UConsNotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsNotas, RxLookup, UCBase, Mask, ToolEdit, RzPanel,
  RzTabs, CurrEdit, NxEdit, NxCollection, ComObj, Menus;

type
  TfrmConsNotas = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    RzPageControl1: TRzPageControl;
    Panel3: TPanel;
    TS_DTEmissao: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    TS_Produto_Det: TRzTabSheet;
    ceVlrVendas: TCurrencyEdit;
    Label8: TLabel;
    Label9: TLabel;
    ceVlrServico: TCurrencyEdit;
    TS_Nota: TRzTabSheet;
    SMDBGrid6: TSMDBGrid;
    NxComboBox2: TNxComboBox;
    Panel5: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    ceVlrIcmsSubst: TCurrencyEdit;
    ceVlrFaturamento_ST: TCurrencyEdit;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    Label5: TLabel;
    ceValorIPI: TCurrencyEdit;
    ceValorFrete: TCurrencyEdit;
    Label11: TLabel;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Excel1: TMenuItem;
    TS_ReciboNF: TRzTabSheet;
    SMDBGrid17: TSMDBGrid;
    TS_NotaServico: TRzTabSheet;
    SMDBGrid19: TSMDBGrid;
    Label7: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label10: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label13: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label1: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Label12: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Label14: TLabel;
    Label17: TLabel;
    ComboBox2: TComboBox;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure SMDBGrid4TitleClick(Column: TColumn);
    procedure SMDBGrid6TitleClick(Column: TColumn);
    procedure Imprimir1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
    fDMConsNotas: TDMConsNotas;
    ColunaOrdenada: String;
    vComando: String;
    vOpcaoImp: String;

    procedure prc_Consultar_Faturamento;
    procedure prc_Monta_Condicao;
    procedure prc_Consultar_Produto_Det;
    procedure prc_Consultar_Nota;
    procedure prc_Consultar_ReciboNF;
    procedure prc_Monta_Cab;

    procedure prc_Imprimir_Produto_Det;
    procedure prc_Imprimir_Nota;
    procedure prc_Imprimir_ReciboNF;

    procedure prc_CriaExcel(vDados: TDataSource);

    procedure prc_Ajustar_Grids(Grid: TSMDBGrid);
  public
    { Public declarations }
  end;

var
  frmConsNotas: TfrmConsNotas;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, StrUtils,
  URelFat_Produto_Det, URelFat_Nota, URelFat_ReciboNF;

{$R *.dfm}

procedure TfrmConsNotas.btnConsultarClick(Sender: TObject);
begin
  if (DateEdit1.Date < 10) or (DateEdit2.Date < 10) then
  begin
    MessageDlg('*** É obrigatório informar a data inicial e final!', mtError, [mbOk], 0);
    exit;
  end;
  prc_Consultar_Faturamento;
  prc_Monta_Condicao;
  if RzPageControl1.ActivePage = TS_Produto_Det then
    prc_Consultar_Produto_Det
  else
  if RzPageControl1.ActivePage = TS_Nota then
    prc_Consultar_Nota
  else
  if RzPageControl1.ActivePage = TS_ReciboNF then
    prc_Consultar_ReciboNF;
end;

procedure TfrmConsNotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsNotas.FormShow(Sender: TObject);
var
  vTexto1, vTexto2: String;
begin
  fDMConsNotas := TDMConsNotas.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsNotas);
  fDMConsNotas.cdsFilial.First;
  if (fDMConsNotas.cdsFilial.RecordCount < 2) and (fDMConsNotas.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsNotas.cdsFilialID.AsInteger;
  if fMenu.vTipo_Reg_Cons_Fat = 'NTS' then
  begin
    NxComboBox2.Items.Clear;
    NxComboBox2.Items.Add('Dt. Emissão');
    NxComboBox2.ItemIndex := 0;
    Caption := 'Consulta Faturamento';
    vTexto1 := 'Faturamento';
    vTexto2 := 'Cliente';
    fDMConsNotas.vTipo_Nota := 'S';
    Label16.Caption               := 'Fat.Líq.:';
  end
  else
  if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
  begin
    Caption := 'Consulta Notas Entradas';
    vTexto1 := 'Compras';
    vTexto2 := 'Fornecedor';
    Label16.Caption := 'Vlr.Compras:';
    fDMConsNotas.vTipo_Nota := 'E';
    fDMConsNotas.cdsFornecedor.Open;
    RxDBLookupCombo2.LookupSource := fDMConsNotas.dsFornecedor;
  end;
  Label1.Caption     := 'Vlr. Total ' + vTexto1 + ':';
  Label3.Caption     := vTexto2 + ':';

  fDMConsNotas.vTipo_Reg := fMenu.vTipo_Reg_Cons_Fat;
  {Label8.Visible := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');
  Label9.Visible := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');
  ceVlrServico.Visible   := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');
  ceVlrVendas.Visible    := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');
  TS_ReciboNF.TabVisible := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');}

  TS_DTEmissao.TabVisible   := False;
  TS_Nota.TabVisible        := False;
  TS_NotaServico.TabVisible := False;
  TS_ReciboNF.TabVisible    := False;

  prc_Ajustar_Grids(SMDBGrid4);
  prc_Ajustar_Grids(SMDBGrid6);
  prc_Ajustar_Grids(SMDBGrid17);
end;

procedure TfrmConsNotas.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmConsNotas.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMConsNotas.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmConsNotas.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMConsNotas.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmConsNotas.RxDBLookupCombo2Enter(Sender: TObject);
begin
  if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
    fDMConsNotas.cdsFornecedor.IndexFieldNames := 'NOME'
  else
    fDMConsNotas.cdsCliente.IndexFieldNames := 'NOME';
end;

procedure TfrmConsNotas.RxDBLookupCombo4Change(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    RxDBLookupCombo3.KeyValue := RxDBLookupCombo4.KeyValue;
end;

procedure TfrmConsNotas.RxDBLookupCombo3Change(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    RxDBLookupCombo4.KeyValue := RxDBLookupCombo3.KeyValue;
end;

procedure TfrmConsNotas.prc_Consultar_Faturamento;
var
  vComandoAux: String;
  vDescData: String;
begin
  vComandoAux := '';
  if NxComboBox2.ItemIndex = 0 then
    vDescData := 'DTEMISSAO'
  else
    vDescData := 'DTENTRADASAIDA';
  {if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
    vDescData := 'DTENTRADASAIDA'
  else
    vDescData := 'DTEMISSAO';}
  fDMConsNotas.qFaturamento.Close;
  fDMConsNotas.qFaturamento.SQL.Text := fDMConsNotas.ctFaturamento
                                              + ' AND TIPO_ES = ' + QuotedStr(fDMConsNotas.vTipo_Nota);
  if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
    vComandoAux := vComandoAux + ' AND TIPO_REG = ' + QuotedStr(fMenu.vTipo_Reg_Cons_Fat);

  if RxDBLookupCombo1.Text <> '' then
    fDMConsNotas.qFaturamento.SQL.Add(' AND FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue));
  vComandoAux := vComandoAux + ' AND ' + vDescData + ' BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                             + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMConsNotas.qFaturamento.SQL.Add(vComandoAux);
  fDMConsNotas.qFaturamento.Open;
  //ceVlrFaturamento.Value := StrToFloat(FormatFloat('0.00',fDMConsNotas.qFaturamentoVLR_TOTAL.AsFloat));
  //if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
    //ceVlrFaturamento.Value := StrToFloat(FormatFloat('0.00',ceVlrFaturamento.Value + fDMConsNotas.qFaturamentoVLR_IPI.AsFloat));
  ceVlrVendas.Value      := StrToFloat(FormatFloat('0.00',fDMConsNotas.qFaturamentoVLR_VENDAS.AsFloat));
  ceVlrServico.Value     := StrToFloat(FormatFloat('0.00',fDMConsNotas.qFaturamentoVLR_LIQUIDO_NFSE.AsFloat));
  ceVlrIcmsSubst.Value   := StrToFloat(FormatFloat('0.00',fDMConsNotas.qFaturamentoVLR_ICMSSUBST.AsFloat));

  fDMConsNotas.vVlrFaturamento := fDMConsNotas.qFaturamentoVLR_TOTAL.AsFloat;
  if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
    fDMConsNotas.vVlrFaturamento := StrToFloat(FormatFloat('0.00',fDMConsNotas.vVlrFaturamento + fDMConsNotas.qFaturamentoVLR_IPI.AsFloat));

  if fDMConsNotas.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S' then
  begin
    fDMConsNotas.vVlrFrete := fDMConsNotas.qFaturamentoVLR_FRETE.AsFloat;
    ceValorFrete.Value           := fDMConsNotas.vVlrFrete;
  end
  else
  begin
    fDMConsNotas.vVlrFrete := 0;
    ceValorFrete.Clear;
  end;
  if fDMConsNotas.qParametros_NFeMOSTRAR_VLR_DEVOL_CONS.AsString = 'S' then
  begin
    fDMConsNotas.qDevolucoes.Active := False;
    fDMConsNotas.qDevolucoes.ParamByName('D1').AsDate := DateEdit1.date;
    fDMConsNotas.qDevolucoes.ParamByName('D2').AsDate := DateEdit2.date;
    fDMConsNotas.qDevolucoes.Active := True;
    fDMConsNotas.vVlrDevol := fDMConsNotas.qDevolucoesVLR_NOTA.AsCurrency;
    //ceDevolucoes.Value           := fDMConsNotas.vVlrDevol;
  end
  else
  begin
    fDMConsNotas.vVlrDevol := 0;
    //ceDevolucoes.Clear;
  end;
  fDMConsNotas.vVlrIPI := fDMConsNotas.qFaturamentoVLR_IPI.AsCurrency;
  ceValorIPI.Value           := fDMConsNotas.vVlrIPI;

  //fDMConsNotas.vVlrLiq := StrToFloat(FormatFloat('0.00',fDMConsNotas.qFaturamentoVLR_DUPLICATA_ST.AsFloat -
    //                                                          ceDevolucoes.Value - ceValorFrete.Value - ceValorIPI.Value));
  ceVlrFaturamento_ST.Value  := fDMConsNotas.vVlrLiq;
end;

procedure TfrmConsNotas.prc_Monta_Condicao;
var
  vDescData: String;
begin
  if NxComboBox2.ItemIndex = 0 then
    vDescData := 'DTEMISSAO'
  else
    vDescData := 'DTENTRADASAIDA';
  vComando := '';
  if (RzPageControl1.ActivePage = TS_Nota) or (RzPageControl1.ActivePage = TS_ReciboNF) then
  begin
    if NxComboBox2.ItemIndex = 0 then
      vDescData := 'DTEMISSAO'
    else
      vDescData := 'DTSAIDAENTRADA';
    if RxDBLookupCombo1.Text <> '' then
      vComando := vComando + ' AND NT.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if RxDBLookupCombo2.Text <> '' then
      vComando := vComando + ' AND NT.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    if (RxDBLookupCombo3.Text <> '') and (RzPageControl1.ActivePage <> TS_Nota) then
      vComando := vComando + ' AND IT.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo3.KeyValue);
    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND ' + vDescData + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND ' + vDescData + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  end
  else
  begin
    vComando := '';
    //if RzPageControl1.ActivePage = TS_Produto_Det then
    //  vComando := ', COMB.NOME NOME_COR ';
    //vComando := vComando + 'FROM VCONSNOTAS V';
    //if (RzPageControl1.ActivePage = TS_Produto_Det) then
   //   vComando := vComando + ' LEFT JOIN COMBINACAO COMB ON (V.ID_COR = COMB.ID) ';
    vComando := vComando + ' WHERE V.TIPO_ES = ' + QuotedStr(fDMConsNotas.vTipo_Nota);
    if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
      vComando := vComando + '  AND V.TIPO_REG = ' + QuotedStr(fMenu.vTipo_Reg_Cons_Fat)
    else
    begin
      if fMenu.vTipo_Reg_Cons_Fat = 'NTS' then
        vComando := vComando + ' AND (V.TIPO_REG = ' + QuotedStr(fMenu.vTipo_Reg_Cons_Fat) + ' OR V.TIPO_REG = '
                  + QuotedStr('CFI') + ' OR V.TIPO_REG = ' + QuotedStr('RNF')
                  + '  or V.TIPO_REG = ' + QuotedStr('NSE') + ' OR V.TIPO_REG = ' + QuotedStr('REC') + ')';
    end;
    if RxDBLookupCombo1.Text <> '' then
      vComando := vComando + ' AND V.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if RxDBLookupCombo2.Text <> '' then
      vComando := vComando + ' AND V.ID_PESSOA = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    if (RxDBLookupCombo3.Text <> '') then
      vComando := vComando + ' AND V.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo3.KeyValue);

    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND V.' + vDescData + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND V.' + vDescData + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  end;
end;

procedure TfrmConsNotas.SMDBGrid4TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if Column.FieldName = 'clPerc_SobreFat' then
    exit;
  ColunaOrdenada := Column.FieldName;
  fDMConsNotas.cdsNotaFiscal_DT.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid4.Columns.Count - 1 do
    if not (SMDBGrid4.Columns.Items[I] = Column) then
      SMDBGrid4.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsNotas.prc_Monta_Cab;
begin
  vTipo_Config_Email := 3;
  fDMConsNotas.vDescOpcao_Rel := '';
  if RxDBLookupCombo1.Text <> '' then
    fDMConsNotas.vDescOpcao_Rel := fDMConsNotas.vDescOpcao_Rel + '(Filial: ' + RxDBLookupCombo1.Text + ')';
  if RxDBLookupCombo2.Text <> '' then
    fDMConsNotas.vDescOpcao_Rel := fDMConsNotas.vDescOpcao_Rel + '(Cli: ' + RxDBLookupCombo2.Text + ')';
  if RxDBLookupCombo3.Text <> '' then
    fDMConsNotas.vDescOpcao_Rel := fDMConsNotas.vDescOpcao_Rel + '(Prod: ' + RxDBLookupCombo3.Text + ')';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fDMConsNotas.vDescOpcao_Rel := fDMConsNotas.vDescOpcao_Rel + '(Dt.Emissão: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')';
end;

procedure TfrmConsNotas.prc_Imprimir_Produto_Det;
var
  vArq: String;
  vArq2 : String;
begin
  if not(fDMConsNotas.cdsProduto_Det.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  case ComboBox1.ItemIndex of
    0 : vArq2 := '';
    1 : vArq2 := '2';
  end;
  case ComboBox2.ItemIndex of
    0 : vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\ConsNotasProduto_Det'+vArq2+'.fr3';
    1 : vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\ConsNotasProduto_Det_CFOP'+vArq2+'.fr3';
    2 : vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\ConsNotasProduto_Det_Nota'+vArq2+'.fr3';
    3 : vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\ConsNotasProduto_Det_Cli'+vArq2+'.fr3';
  end;
  if FileExists(vArq) then
    fDMConsNotas.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;

  SMDBGrid19.DisableScroll;
  case ComboBox2.ItemIndex of
    0 : fDMConsNotas.cdsProduto_Det.IndexFieldNames := 'NOME_PRODUTO_SERV;NUM_NOTA;SERIE';
    1 : fDMConsNotas.cdsProduto_Det.IndexFieldNames := 'CODCFOP;NUM_NOTA;SERIE;NOME_PRODUTO_SERV';
    2 : fDMConsNotas.cdsProduto_Det.IndexFieldNames := 'NUM_NOTA;SERIE;NOME_PRODUTO_SERV';
    3 : fDMConsNotas.cdsProduto_Det.IndexFieldNames := 'NOME_CLIENTE;NUM_NOTA;SERIE;NOME_PRODUTO_SERV';
  end;

  fDMConsNotas.frxReport1.variables['ImpOpcao'] := QuotedStr(fDMConsNotas.vDescOpcao_Rel);
  fDMConsNotas.frxReport1.ShowReport;
  SMDBGrid19.EnableScroll;
end;

procedure TfrmConsNotas.prc_Consultar_Produto_Det;
begin
  fDMConsNotas.cdsProduto_Det.Close;
  fDMConsNotas.cdsProduto_Det.IndexFieldNames := '';
  fDMConsNotas.sdsProduto_Det.CommandText     := fDMConsNotas.ctProduto_Det + vComando;
  fDMConsNotas.cdsProduto_Det.Open;
end;

procedure TfrmConsNotas.prc_Consultar_Nota;
var
  vDesc: String;
begin
  fDMConsNotas.cdsNotaFiscal.Close;
  fDMConsNotas.sdsNotaFiscal.CommandText := 'SELECT NT.filial, NT.DTEMISSAO, NT.NUMNOTA, NT.SERIE, NT.ID_CLIENTE, CLI.NOME NOME_CLIENTE, '
                                                + 'NT.BASE_ICMS, NT.VLR_ICMS, (' + vDesc + ') VLR_DUPLICATA, NT.VLR_NOTA, NT.VLR_IPI, '
                                                + 'NT.VLR_ITENS, NT.VLR_IPI, NT.DTSAIDAENTRADA, NT.VLR_ICMSSUBST, VEN.NOME NOME_VENDEDOR, '
                                                + '(SELECT SUM(I.VLR_TOTAL) FROM NOTAFISCAL_ITENS I INNER JOIN TAB_CFOP CFOP ON I.ID_CFOP = CFOP.ID '
                                                + 'WHERE I.ID = NT.ID AND CFOP.FATURAMENTO = '+QuotedStr('S') +') VLR_FATURAMENTO '
                                                + 'FROM NOTAFISCAL NT '
                                                + 'INNER JOIN PESSOA CLI ON (NT.ID_CLIENTE = CLI.CODIGO) '
                                                + 'LEFT JOIN PESSOA VEN ON (NT.ID_VENDEDOR = VEN.CODIGO) '
                                                + 'WHERE NT.CANCELADA = ' + QuotedStr('N') + ' AND NT.nfedenegada = ' + QuotedStr('N')
                                                + ' AND (SELECT SUM(I.VLR_TOTAL) FROM NOTAFISCAL_ITENS I INNER JOIN '
                                                + 'TAB_CFOP CFOP ON I.ID_CFOP = CFOP.ID WHERE I.ID = NT.ID AND CFOP.FATURAMENTO = '
                                                + QuotedStr('S') + ') > 0 '
                                                + ' AND NT.TIPO_NOTA = ' + QuotedStr(fDMConsNotas.vTipo_Nota)
                                                + ' AND NT.TIPO_REG = ' + QuotedStr(fMenu.vTipo_Reg_Cons_Fat)
                                                + vComando
                                                + ' ORDER BY FILIAL, NUMNOTA ';
  fDMConsNotas.cdsNotaFiscal.Open;
end;

procedure TfrmConsNotas.prc_Imprimir_Nota;
var
  vTexto: String;
begin
  if not(fDMConsNotas.cdsNotaFiscal.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  fRelFat_Nota                      := TfRelFat_Nota.Create(Self);
  fRelFat_Nota.RLDBText11.DataField := vTexto;
  //fRelFat_Nota.fDMConsNotas   := fDMConsNotas;
  fRelFat_Nota.RLReport1.PreviewModal;
  fRelFat_Nota.RLReport1.Free;
  FreeAndNil(fRelFat_Nota);
end;

procedure TfrmConsNotas.SMDBGrid6TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsNotas.cdsNotaFiscal.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid6.Columns.Count - 1 do
    if not (SMDBGrid6.Columns.Items[I] = Column) then
      SMDBGrid6.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsNotas.prc_CriaExcel(vDados: TDataSource);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := true;

  prc_Preencher_Excel(planilha, vDados);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  vTexto := vTexto + Name + '_' + RzPageControl1.ActivePage.Caption;

  Planilha.ActiveWorkBook.SaveAs(vTexto);
  Screen.Cursor := crDefault;
end;

procedure TfrmConsNotas.Imprimir1Click(Sender: TObject);
begin
  prc_Monta_Cab;
  if RzPageControl1.ActivePage = TS_Produto_Det then
    prc_Imprimir_Produto_Det
  else
  if RzPageControl1.ActivePage = TS_Nota then
    prc_Imprimir_Nota
  else
  if RzPageControl1.ActivePage = TS_ReciboNF then
    prc_Imprimir_ReciboNF;
end;

procedure TfrmConsNotas.Excel1Click(Sender: TObject);
begin
  {case RzPageControl1.ActivePageIndex of
    0: case RzPageControl3.ActivePageIndex of
         0: prc_CriaExcel(SMDBGrid1.DataSource);
         1: prc_CriaExcel(SMDBGrid12.DataSource);
         2: prc_CriaExcel(SMDBGrid13.DataSource);
       end;
    1: prc_CriaExcel(SMDBGrid2.DataSource);
    2: prc_CriaExcel(SMDBGrid3.DataSource);
    3: prc_CriaExcel(SMDBGrid4.DataSource);
    4: case RzPageControl4.ActivePageIndex of
         0: prc_CriaExcel(SMDBGrid7.DataSource);
         1: prc_CriaExcel(SMDBGrid14.DataSource);
         2: prc_CriaExcel(SMDBGrid15.DataSource);
       end;
    5: prc_CriaExcel(SMDBGrid5.DataSource);
    6: prc_CriaExcel(SMDBGrid6.DataSource);
    7: prc_CriaExcel(SMDBGrid8.DataSource);
    8: prc_CriaExcel(SMDBGrid17.DataSource);
    9: case RzPageControl2.ActivePageIndex of
         0: prc_CriaExcel(SMDBGrid10.DataSource);
         1: prc_CriaExcel(SMDBGrid9.DataSource);
         2: prc_CriaExcel(SMDBGrid11.DataSource);
         3: prc_CriaExcel(SMDBGrid16.DataSource);
       end;
  end;}
end;

procedure TfrmConsNotas.prc_Consultar_ReciboNF;
var
  vDesc: String;
begin
  fDMConsNotas.cdsReciboNF.Close;
  fDMConsNotas.sdsReciboNF.CommandText := 'SELECT NT.FILIAL, NT.DTEMISSAO, NT.NUMNOTA, NT.SERIE, NT.ID_CLIENTE, CLI.NOME NOME_CLIENTE,'
                                                + ' NT.VLR_NOTA, NT.VLR_ITENS, NT.DTSAIDAENTRADA, VEN.NOME NOME_VENDEDOR, NT.VLR_NOTA VLR_FATURAMENTO'
                                                + ' FROM NOTAFISCAL NT'
                                                + ' INNER JOIN PESSOA CLI on (NT.ID_CLIENTE = CLI.CODIGO)'
                                                + ' LEFT JOIN PESSOA VEN on (NT.ID_VENDEDOR = VEN.CODIGO)'
                                                + ' WHERE NT.CANCELADA = ' + QuotedStr('N')
                                                + ' AND NT.NFEDENEGADA = ' + QuotedStr('N')
                                                + ' AND NT.TIPO_REG = ' + QuotedStr('RNF')
                                                + vComando
                                                + ' ORDER BY FILIAL, NUMNOTA ';
  fDMConsNotas.cdsReciboNF.Open;
end;

procedure TfrmConsNotas.prc_Imprimir_ReciboNF;
var
  vTexto: String;
begin
  if not(fDMConsNotas.cdsReciboNF.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  SMDBGrid17.DisableScroll;
  fRelFat_ReciboNF                      := TfRelFat_ReciboNF.Create(Self);
  //fRelFat_ReciboNF.fDMConsNotas   := fDMConsNotas;
  fRelFat_ReciboNF.RLReport1.PreviewModal;
  fRelFat_ReciboNF.RLReport1.Free;
  FreeAndNil(fRelFat_ReciboNF);
  SMDBGrid17.EnableScroll;
end;

procedure TfrmConsNotas.prc_Ajustar_Grids(Grid: TSMDBGrid);
var
  i : Integer;
begin
  for i := 0 to Grid.ColCount - 2 do
  begin
    if (Grid.Columns[i].FieldName = 'VLR_LIQUIDO_NFSE') or (Grid.Columns[i].FieldName = 'NOME_VENDEDOR') then
      Grid.Columns[i].Visible := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');
    if (Grid.Columns[i].FieldName = 'clPerc_SobreFat') then
    begin
      if (fMenu.vTipo_Reg_Cons_Fat = 'NTE') then
        Grid.Columns[i].Title.Caption := '% Sobre Compras'
      else
        Grid.Columns[i].Title.Caption := '% Sobre Faturamento';
    end;
    if (Grid.Columns[i].FieldName = 'VLR_VENDAS') then
    begin
      if (fMenu.vTipo_Reg_Cons_Fat = 'NTE') then
        Grid.Columns[i].Title.Caption := 'Vlr. Compras'
      else
        Grid.Columns[i].Title.Caption := 'Vlr. Vendas';
    end;
    if (Grid.Columns[i].FieldName = 'VLR_FATURAMENTO') then
    begin
      if (fMenu.vTipo_Reg_Cons_Fat = 'NTE') then
        Grid.Columns[i].Title.Caption := 'Vlr. Compras'
      else
        Grid.Columns[i].Title.Caption := 'Vlr. Faturamento';
    end;
  end;
end;

end.
