unit USel_Produto_Cor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, RxLookup, UDMSel_Produto, Mask, DBCtrls, RzPanel, NxCollection;

type
  TfrmSel_Produto_Cor = class(TForm)
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
    ComboBox1: TComboBox;
    Label2: TLabel;
    cdsProdutoID: TIntegerField;
    cdsProdutoNOME: TStringField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoCOD_BARRA: TStringField;
    cdsProdutoUSA_COR: TStringField;
    cdsProdutoUSA_PRECO_COR: TStringField;
    cdsProdutoID_COR_COMBINACAO: TIntegerField;
    cdsProdutoNOME_COMBINACAO: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ctProdutoLocal: String;
    ctProdAux: String;
    procedure prc_Consultar;

  public
    { Public declarations }
    fDMSel_Produto: TDMSel_Produto;
    vTipo_Prod: String; //P=Produto  M=Material  'Vazio'=Ambos
  end;

var
  frmSel_Produto_Cor: TfrmSel_Produto_Cor;

implementation

uses DmdDatabase, uUtilPadrao, StrUtils, USel_Produto_Preco, rsDBUtils;

{$R *.dfm}

procedure TfrmSel_Produto_Cor.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_Produto_Cor.prc_Consultar;
var
  vComando: String;
  vComando2: String;
  i: Integer;
  vctAux: String;
begin
  cdsProduto.Close;
  sdsProduto.CommandText := ctProdutoLocal;
  case ComboBox1.ItemIndex of
    0: sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.TIPO_REG = ' + QuotedStr('P');
    1: sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.TIPO_REG = ' + QuotedStr('M');
    2: sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.TIPO_REG = ' + QuotedStr('C');
    3: sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.TIPO_REG = ' + QuotedStr('S');
  end;
  if trim(Edit1.Text) <> '' then
    sdsProduto.CommandText := sdsProduto.CommandText + ' AND PRO.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  cdsProduto.Open;
end;

procedure TfrmSel_Produto_Cor.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vCodProduto_Pos    := cdsProdutoID.AsInteger;
    vCodCombinacao_Pos := cdsProdutoID_COR_COMBINACAO.AsInteger;
    vReferencia_Pos    := cdsProdutoREFERENCIA.AsString;
    vUnidade_Pos       := cdsProdutoUNIDADE.AsString;
    vUsa_Cor_Pos       := cdsProdutoUSA_COR.AsString;
    Close;
  end;
end;

procedure TfrmSel_Produto_Cor.SMDBGrid1DblClick(Sender: TObject);
begin
  vCodProduto_Pos    := cdsProdutoID.AsInteger;
  vCodCombinacao_Pos := cdsProdutoID_COR_COMBINACAO.AsInteger;
  vReferencia_Pos    := cdsProdutoREFERENCIA.AsString;
  vUnidade_Pos       := cdsProdutoUNIDADE.AsString;
  vUsa_Cor_Pos       := cdsProdutoUSA_COR.AsString;
  vUsa_Preco_Cor_Pos := cdsProdutoUSA_PRECO_COR.AsString;
  Close;
end;

procedure TfrmSel_Produto_Cor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vTipo_Prod     := '';
  vCodPessoa_Pos := 0;
  Tag            := 0;
  Action         := Cafree;
end;

procedure TfrmSel_Produto_Cor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmSel_Produto_Cor.FormShow(Sender: TObject);
var
  i: Integer;
  vMostra_Prom: String;
begin
  if Tag = 1 then
    oDBUtils.SetDataSourceProperties(Self, fDMSel_Produto);
  ctProdutoLocal := sdsProduto.CommandText;
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
end;

procedure TfrmSel_Produto_Cor.SMDBGrid1TitleClick(Column: TColumn);
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

procedure TfrmSel_Produto_Cor.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    Edit1.SetFocus;
  end;
end;

end.
