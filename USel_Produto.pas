unit USel_Produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, RxLookup, UDMSel_Produto, Mask, DBCtrls, RzPanel, NxCollection;

type
  TfrmSel_Produto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsProduto: TSQLDataSet;
    cdsProduto: TClientDataSet;
    dspProduto: TDataSetProvider;
    dsProduto: TDataSource;
    StaticText1: TStaticText;
    qFilial: TSQLQuery;
    qFilialFILIAL: TIntegerField;
    cdsProdutoID: TIntegerField;
    cdsProdutoNOME: TStringField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoQTD: TFMTBCDField;
    cdsProdutoQTDGERAL: TFMTBCDField;
    ComboBox1: TComboBox;
    Label2: TLabel;
    qParametros: TSQLQuery;
    qParametrosEMPRESA_VEICULO: TStringField;
    cdsProdutoPLACA: TStringField;
    Label3: TLabel;
    Edit2: TEdit;
    cdsProdutoCOD_BARRA: TStringField;
    Label4: TLabel;
    Edit3: TEdit;
    qParametrosUSA_COD_BARRAS: TStringField;
    qParametrosUSA_PRODUTO_CLIENTE: TStringField;
    Label5: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    BitBtn2: TBitBtn;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoUSA_COR: TStringField;
    cdsProdutoUSA_PRECO_COR: TStringField;
    Label6: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    qParametrosUSA_PRODUTO_FILIAL: TStringField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinUSA_TABPRECO_PROM: TStringField;
    qPromocao: TSQLQuery;
    qPromocaoCONTADOR: TIntegerField;
    cdsProdutoPRECO_PROMOCAO: TFloatField;
    cdsProdutoVLR_VENDA1: TFloatField;
    cdsProdutoVLR_VENDA2: TFloatField;
    cdsProdutoVLR_VENDA3: TFloatField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralEMPRESA_VAREJO: TStringField;
    gbxPedido: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    Panel2: TPanel;
    btnConfirmar: TNxButton;
    btnExcluir: TNxButton;
    sdsProdAux: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdCONS_PROD_USA_PERC: TStringField;
    qParametrosUSA_TABELA_PRECO: TStringField;
    NxPanel1: TNxPanel;
    qParametros_FinID_TABPRECO1: TIntegerField;
    qParametros_FinID_TABPRECO2: TIntegerField;
    qParametros_FinID_TABPRECO3: TIntegerField;
    qParametros_ProdUSA_LOTE_PROD: TStringField;
    qParametros_ProdUSA_REF2: TStringField;
    qParametros_ProdMOSTRA_PROD_TPRECO: TStringField;
    cdsProdutoOBS: TMemoField;
    sdsProdutoID: TIntegerField;
    sdsProdutoNOME: TStringField;
    sdsProdutoREFERENCIA: TStringField;
    sdsProdutoPRECO_VENDA: TFloatField;
    sdsProdutoUNIDADE: TStringField;
    sdsProdutoPRECO_CUSTO: TFloatField;
    sdsProdutoPLACA: TStringField;
    sdsProdutoCOD_BARRA: TStringField;
    sdsProdutoVLR_VENDA1: TFloatField;
    sdsProdutoVLR_VENDA2: TFloatField;
    sdsProdutoVLR_VENDA3: TFloatField;
    sdsProdutoUSA_COR: TStringField;
    sdsProdutoOBS: TMemoField;
    sdsProdutoUSA_PRECO_COR: TStringField;
    sdsProdutoQTD: TFMTBCDField;
    sdsProdutoQTDGERAL: TFMTBCDField;
    sdsProdutoPRECO_PROMOCAO: TFloatField;
    sdsProdAuxOBS: TMemoField;
    DBMemo1: TDBMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fdmcad(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    ctProdutoLocal: String;
    ctProdAux: String;
    procedure prc_Consultar;
    procedure prc_Monta_mPreco;
    procedure prc_Monta_Lote;
    procedure prc_Gravar_mCarrinho;
  public
    { Public declarations }
    fDMSel_Produto: TDMSel_Produto;
    vTipo_Prod: String; //P=Produto  M=Material  'Vázio'=Ambos
    vVenda: Boolean;
    vID_TabPreco : Integer;
  end;

var
  frmSel_Produto: TfrmSel_Produto;

implementation

uses DmdDatabase, uUtilPadrao, StrUtils, USel_Produto_Preco, rsDBUtils, USel_Produto_Lote;

{$R *.dfm}

procedure TfrmSel_Produto.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_Produto.prc_Consultar;
var
  vComando: String;
  vComando2: String;
  i: Integer;
  vctAux: String;
begin
  cdsProduto.Close;
  if qParametros_FinUSA_TABPRECO_PROM.AsString = 'S' then
  begin
    if qParametros_GeralEMPRESA_VAREJO.AsString = 'S' then
      vctAux := ctProdutoLocal
    else
      vctAux := ctProdAux;
    sdsProduto.CommandText := vctAux;
    //i := posex('cast',ctProdutoLocal);
    i := posex('/**/ cast',vctAux);
    if i > 0 then
    begin
      vComando  := copy(vctAux,1,i-1);
      vComando2 := copy(vctAux,i,Length(vctAux)-i+1);
      i := posex('FROM',vComando2);
      delete(vComando2,1,i-1);
      sdsProduto.CommandText := vComando + '(SELECT I.VLR_VENDA PRECO_PROMOCAO FROM TAB_PRECO T '
                                         + ' INNER JOIN TAB_PRECO_ITENS I ON T.ID = I.ID AND I.ID_PRODUTO = PRO.ID '
                                         + ' WHERE T.tabpromocional = ' + QuotedStr('S')
                                         //+ '   AND T.ID = 4 '
                                         + ' AND T.dtinicial >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date))
                                         + ' AND T.DTFINAL >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + ') ' + vComando2
      //sdsProduto.ParamByName('DTINICIAL').AsDate := Date;
      //sdsProduto.ParamByName('DTFINAL').AsDate   := Date;
    end;
  end
  else
  begin
    if qParametros_GeralEMPRESA_VAREJO.AsString = 'S' then
      sdsProduto.CommandText := ctProdutoLocal
    else
      sdsProduto.CommandText := ctProdAux;
  end;
  if (qParametros_ProdMOSTRA_PROD_TPRECO.AsString = 'S') and (vID_TabPreco > 0) then
  begin
    sdsProduto.CommandText := sdsProduto.CommandText + ' LEFT JOIN tab_preco_itens I ON PRO.ID = I.ID_PRODUTO '
                           + ' WHERE I.ID = ' + IntToStr(vID_TabPreco) + '   AND PRO.INATIVO = ' + QuotedStr('N');
  end
  else
    sdsProduto.CommandText := sdsProduto.CommandText + ' WHERE PRO.INATIVO = ' + QuotedStr('N');

  case ComboBox1.ItemIndex of
    0: sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.TIPO_REG = ' + QuotedStr('P');
    1: sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.TIPO_REG = ' + QuotedStr('M');
    2: sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.TIPO_REG = ' + QuotedStr('C');
    3: sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.TIPO_REG = ' + QuotedStr('S');
  end;

  if trim(Edit1.Text) <> '' then
  begin
    if qParametros_ProdCONS_PROD_USA_PERC.AsString = 'S' then
      sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.NOME LIKE ' + QuotedStr(Edit1.Text+'%')
    else
    sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  end;
  if (qParametros_ProdUSA_REF2.AsString = 'S') and (trim(Edit2.Text) <> '') then
    sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.REF2 LIKE ' + QuotedStr(Edit2.Text+'%')
  else
  if (qParametrosEMPRESA_VEICULO.AsString = 'S') and (trim(Edit2.Text) <> '') then
    sdsProduto.CommandText := sdsProduto.CommandText + ' AND PV.PLACA LIKE ' + QuotedStr('%'+Edit2.Text+'%')
  else
  if (qParametrosEMPRESA_VEICULO.AsString <> 'S') and (trim(Edit2.Text) <> '') then
    sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.REFERENCIA LIKE ' + QuotedStr('%'+Edit2.Text+'%');
  if trim(Edit3.Text) <> '' then
  begin
    if copy(Edit3.Text,1,1) = '0' then
      sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.ID = ' + IntToStr(StrToInt(Edit3.Text))
    else
      sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.COD_BARRA LIKE ' + QuotedStr('%'+Edit3.Text+'%');
  end;
  if (RxDBLookupCombo1.KeyValue > 0) then
    sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if qParametrosUSA_PRODUTO_FILIAL.AsString = 'S' then
    sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.FILIAL = :FILIAL ';
  sdsProduto.ParamByName('FILIAL').AsInteger := vFilial;
  cdsProduto.Open;
end;

procedure TfrmSel_Produto.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vCodProduto_Pos    := cdsProdutoID.AsInteger;
    vReferencia_Pos    := cdsProdutoREFERENCIA.AsString;
    vUnidade_Pos       := cdsProdutoUNIDADE.AsString;
    vUsa_Cor_Pos       := cdsProdutoUSA_COR.AsString;
    vUsa_Preco_Cor_Pos := cdsProdutoUSA_PRECO_COR.AsString;
    vPreco_Venda_Rec_XML_Pos := StrToFloat(FormatFloat('0.0000',cdsProdutoPRECO_VENDA.AsFloat));
    if qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
    begin
      if vVenda then
        prc_Monta_Lote;
    end
    else
      prc_Monta_mPreco;
    if Tag = 1 then
      prc_Gravar_mCarrinho
    else
      Close;
  end;
end;

procedure TfrmSel_Produto.SMDBGrid1DblClick(Sender: TObject);
begin
  vCodProduto_Pos    := cdsProdutoID.AsInteger;
  vReferencia_Pos    := cdsProdutoREFERENCIA.AsString;
  vUnidade_Pos       := cdsProdutoUNIDADE.AsString;
  vUsa_Cor_Pos       := cdsProdutoUSA_COR.AsString;
  vUsa_Preco_Cor_Pos := cdsProdutoUSA_PRECO_COR.AsString;
  vPreco_Venda_Rec_XML_Pos := StrToFloat(FormatFloat('0.0000',cdsProdutoPRECO_VENDA.AsFloat));
  if qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
  begin
    if vVenda then
      prc_Monta_Lote;
  end
  else
    prc_Monta_mPreco;
  if Tag = 1 then
    prc_Gravar_mCarrinho
  else
    Close;
end;

procedure TfrmSel_Produto.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsProduto.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vTipo_Prod     := '';
  vCodPessoa_Pos := 0;
  Tag            := 0;
  vVenda         := False;
  Action         := Cafree;
end;

procedure TfrmSel_Produto.Fdmcad(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmSel_Produto.FormShow(Sender: TObject);
var
  i: Integer;
  vMostra_Prom: String;
begin
  if Tag = 1 then
    oDBUtils.SetDataSourceProperties(Self, fDMSel_Produto);
  ctProdutoLocal := sdsProduto.CommandText;
  ctProdAux      := sdsProdAux.CommandText;
  qFilial.Close;
  qFilial.Open;
  qParametros.Close;
  qParametros.Open;
  qParametros_Fin.Close;
  qParametros_Fin.Open;
  qParametros_Geral.Close;
  qParametros_Geral.Open;
  qParametros_Prod.Open;
  vMostra_Prom := 'N';
  if qParametros_FinUSA_TABPRECO_PROM.AsString = 'S' then
  begin
    qPromocao.Close;
    qPromocao.ParamByName('DTINICIAL').AsDate := DATE;
    qPromocao.ParamByName('DTFINAL').AsDate   := DATE;
    qPromocao.Open;
    if qPromocaoCONTADOR.AsInteger > 0 then
      vMostra_Prom := 'S';
  end;

  Label6.Visible           := (qParametrosUSA_PRODUTO_FILIAL.AsString = 'S');
  RxDBLookupCombo2.Visible := (qParametrosUSA_PRODUTO_FILIAL.AsString = 'S');
  if (qParametrosUSA_PRODUTO_FILIAL.AsString = 'S') and (RxDBLookupCombo2.Text <> '') then
    RxDBLookupCombo2.KeyValue := vFilial;
  if (qFilialFILIAL.AsInteger < 2) or (qParametrosEMPRESA_VEICULO.AsString <> 'S') then
  begin
    for i := 0 to SMDBGrid1.ColCount - 2 do
    begin
      if qFilialFILIAL.AsInteger < 2 then
      begin
        if SMDBGrid1.Columns[i].FieldName = 'QTDGERAL' then
          SMDBGrid1.Columns[i].Visible := False;
      end;
      if (qParametrosEMPRESA_VEICULO.AsString <> 'S') and (SMDBGrid1.Columns[i].FieldName = 'PLACA') then
        SMDBGrid1.Columns[i].Visible := False;

      if (qParametrosUSA_COD_BARRAS.AsString <> 'S') and (SMDBGrid1.Columns[i].FieldName = 'COD_BARRA') then
        SMDBGrid1.Columns[i].Visible := False;
      if (vMostra_Prom <> 'S') and (SMDBGrid1.Columns[i].FieldName = 'PRECO_PROMOCAO') then
        SMDBGrid1.Columns[i].Visible := False;
      if (qParametros_GeralEMPRESA_VAREJO.AsString <> 'S') and ((SMDBGrid1.Columns[i].FieldName = 'VLR_VENDA1') or (SMDBGrid1.Columns[i].FieldName = 'VLR_VENDA2') or (SMDBGrid1.Columns[i].FieldName = 'VLR_VENDA3')) then
        SMDBGrid1.Columns[i].Visible := False
      else
      begin
        if (SMDBGrid1.Columns[i].FieldName = 'VLR_VENDA1') and (qParametros_FinID_TABPRECO1.AsInteger <= 0) then
          SMDBGrid1.Columns[i].Visible := False;
        if (SMDBGrid1.Columns[i].FieldName = 'VLR_VENDA2') and (qParametros_FinID_TABPRECO2.AsInteger <= 0) then
          SMDBGrid1.Columns[i].Visible := False;
        if (SMDBGrid1.Columns[i].FieldName = 'VLR_VENDA3') and (qParametros_FinID_TABPRECO3.AsInteger <= 0) then
          SMDBGrid1.Columns[i].Visible := False;
      end;
    end;
  end;
  if vTipo_Prod = 'P' then
    ComboBox1.ItemIndex := 0
  else
  if vTipo_Prod = 'M' then
    ComboBox1.ItemIndex := 1
  else
  if vTipo_Prod = 'C' then
    ComboBox1.ItemIndex := 2
  else
  if vTipo_Prod = 'S' then
    ComboBox1.ItemIndex := 3
  else
    ComboBox1.ItemIndex := 4;

  if qParametrosEMPRESA_VEICULO.AsString = 'S' then
    Label3.Caption := 'Placa'
  else
    Label3.Caption := 'Referência:';

  Label4.Visible := (qParametrosUSA_COD_BARRAS.AsString = 'S');
  Edit3.Visible  := (qParametrosUSA_COD_BARRAS.AsString = 'S');
  if qParametrosUSA_PRODUTO_CLIENTE.AsString = 'S' then
  begin
    cdsCliente.Open;
    RxDBLookupCombo1.Visible := True;
    Label5.Visible           := True;
    if vCodPessoa_Pos > 0 then
      RxDBLookupCombo1.KeyValue := vCodPessoa_Pos;
    cdsCliente.Locate('CODIGO',vCodPessoa_Pos,[loCaseInsensitive]);
    BitBtn2.Visible := True;
  end
  else
    RxDBLookupCombo1.ClearValue;
  gbxPedido.Visible := (Tag = 1);
  if trim(Edit2.Text) <> '' then
  begin
    BitBtn1Click(Sender);
    if cdsProduto.RecordCount > 0 then
      SMDBGrid1.SetFocus;
  end;
  if qParametros_ProdUSA_REF2.AsString = 'S' then
  begin
    Edit2.SetFocus;
    if trim(Edit2.Text) <> '' then
      prc_Consultar;
  end;
end;

procedure TfrmSel_Produto.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsProduto.IndexFieldNames := Column.FieldName;
  if (Column.FieldName <> 'PRECO_PROMOCAO') and (Column.FieldName <> 'PRECO_VENDA') then
    Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if (not (SMDBGrid1.Columns.Items[I] = Column)) and
       (SMDBGrid1.Columns[i].FieldName <> 'PRECO_PROMOCAO') and
       (SMDBGrid1.Columns[i].FieldName <> 'PRECO_VENDA') then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmSel_Produto.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsProduto.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Produto.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsProduto.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Produto.BitBtn2Click(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
end;

procedure TfrmSel_Produto.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 27 then
    RxDBLookupCombo1.ClearValue;
end;

procedure TfrmSel_Produto.prc_Monta_mPreco;
var
  vItem: Integer;
begin
  vPreco_Pos := 0;
  if (qParametros_GeralEMPRESA_VAREJO.AsString <> 'S') and (qParametrosUSA_TABELA_PRECO.AsString <> 'S') then
    Exit;
  if (not(cdsProduto.Active)) or (cdsProdutoID.AsInteger <= 0) then
    Exit;
    
  frmSel_Produto_Preco := TfrmSel_Produto_Preco.Create(self);

  vItem := 1;
  frmSel_Produto_Preco.mPreco.Insert;
  frmSel_Produto_Preco.mPrecoItem.AsInteger := vItem;
  frmSel_Produto_Preco.mPrecoNome.AsString  := 'Cadastro';
  frmSel_Produto_Preco.mPrecoPreco.AsFloat  := StrToFloat(FormatFloat('0.00###',cdsProdutoPRECO_VENDA.AsFloat));
  frmSel_Produto_Preco.mPreco.Post;
  vItem := vItem + 1;

  if StrToFloat(FormatFloat('0.00###',cdsProdutoPRECO_PROMOCAO.AsFloat)) > 0 then
  begin
    frmSel_Produto_Preco.mPreco.Insert;
    frmSel_Produto_Preco.mPrecoItem.AsInteger := vItem;
    frmSel_Produto_Preco.mPrecoNome.AsString  := 'Preço Promocional';
    frmSel_Produto_Preco.mPrecoPreco.AsFloat := StrToFloat(FormatFloat('0.00###',cdsProdutoPRECO_PROMOCAO.AsFloat));
    frmSel_Produto_Preco.mPreco.Post;
    vItem := vItem + 1;
  end;

  if StrToFloat(FormatFloat('0.00###',cdsProdutoVLR_VENDA1.AsFloat)) > 0 then
  begin
    frmSel_Produto_Preco.mPreco.Insert;
    frmSel_Produto_Preco.mPrecoItem.AsInteger := vItem;
    frmSel_Produto_Preco.mPrecoNome.AsString  := 'Vlr. Venda 1';
    frmSel_Produto_Preco.mPrecoPreco.AsFloat := StrToFloat(FormatFloat('0.00###',cdsProdutoVLR_VENDA1.AsFloat));
    frmSel_Produto_Preco.mPreco.Post;
    vItem := vItem + 1;
  end;

  if StrToFloat(FormatFloat('0.00###',cdsProdutoVLR_VENDA2.AsFloat)) > 0 then
  begin
    frmSel_Produto_Preco.mPreco.Insert;
    frmSel_Produto_Preco.mPrecoItem.AsInteger := vItem;
    frmSel_Produto_Preco.mPrecoNome.AsString  := 'Vlr. Venda 2';
    frmSel_Produto_Preco.mPrecoPreco.AsFloat := StrToFloat(FormatFloat('0.00###',cdsProdutoVLR_VENDA2.AsFloat));
    frmSel_Produto_Preco.mPreco.Post;
    vItem := vItem + 1;
  end;

  if StrToFloat(FormatFloat('0.00###',cdsProdutoVLR_VENDA3.AsFloat)) > 0 then
  begin
    frmSel_Produto_Preco.mPreco.Insert;
    frmSel_Produto_Preco.mPrecoItem.AsInteger := vItem;
    frmSel_Produto_Preco.mPrecoNome.AsString  := 'Vlr. Venda 3';
    frmSel_Produto_Preco.mPrecoPreco.AsFloat := StrToFloat(FormatFloat('0.00###',cdsProdutoVLR_VENDA3.AsFloat));
    frmSel_Produto_Preco.mPreco.Post;
    vItem := vItem + 1;
  end;
  
  frmSel_Produto_Preco.ShowModal;
  FreeAndNil(frmSel_Produto_Preco);
end;

procedure TfrmSel_Produto.prc_Gravar_mCarrinho;
var
  vAux: String;
  vAux2: String;
begin
  vAux := InputBox('','Informe a Qtde', '1');
  vAux2 := vAux;
  vAux := Monta_Numero(vAux,0);
  if trim(vAux) = '' then
  begin
    vAux := '1';
    vAux2 := '1';
  end;
  fDMSel_Produto.mCarrinho.Insert;
  fDMSel_Produto.mCarrinhoID_Produto.AsInteger  := cdsProdutoID.AsInteger;
  fDMSel_Produto.mCarrinhoUnidade.AsString      := cdsProdutoUNIDADE.AsString;
  fDMSel_Produto.mCarrinhoQtd.AsFloat           := StrToFloat(vAux2);
  fDMSel_Produto.mCarrinhoVlr_Unitario.AsFloat  := StrToFloat(FormatFloat('0.00000',vPreco_Pos));
  fDMSel_Produto.mCarrinhoVlr_Total.AsFloat     := StrToFloat(FormatFloat('0.00',fDMSel_Produto.mCarrinhoQtd.AsFloat *
                                                              fDMSel_Produto.mCarrinhoVlr_Unitario.AsFloat));
  fDMSel_Produto.mCarrinhoReferencia.AsString   := cdsProdutoREFERENCIA.AsString;
  fDMSel_Produto.mCarrinhoNome_Produto.AsString := cdsProdutoNOME.AsString;
  fDMSel_Produto.mCarrinho.Post;
end;

procedure TfrmSel_Produto.btnExcluirClick(Sender: TObject);
begin
  if fDMSel_Produto.mCarrinho.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir a Referência: ' + fDMSel_Produto.mCarrinhoReferencia.AsString + '?', mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  fDMSel_Produto.mCarrinho.Delete;
end;

procedure TfrmSel_Produto.btnConfirmarClick(Sender: TObject);
begin
  if MessageDlg('Deseja gravar os produtos selecionados no pedido?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  fDMSel_Produto.vGravar_Carrinho := 'S';
  Close;
end;

procedure TfrmSel_Produto.prc_Monta_Lote;
begin
  frmSel_Produto_Lote := TfrmSel_Produto_Lote.Create(self);

  frmSel_Produto_Lote.cdsEstoque_Lote.Close;
  frmSel_Produto_Lote.sdsEstoque_Lote.ParamByName('ID_PRODUTO').AsInteger := cdsProdutoID.AsInteger;
  frmSel_Produto_Lote.cdsEstoque_Lote.Open;
  if not frmSel_Produto_Lote.cdsEstoque_Lote.IsEmpty then
  begin
    frmSel_Produto_Lote.Tag := 2;
    frmSel_Produto_Lote.vID_Produto_Loc := cdsProdutoID.AsInteger;
    frmSel_Produto_Lote.ShowModal;
  end;
  FreeAndNil(frmSel_Produto_Lote);
end;

end.
