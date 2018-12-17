unit USel_TabPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, SMDBGSet;

type
  TfrmSel_TabPreco = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    StaticText1: TStaticText;
    Image1: TImage;
    sdsTabPreco: TSQLDataSet;
    sdsTabPrecoREFERENCIA: TStringField;
    sdsTabPrecoVLR_VENDA: TFloatField;
    sdsTabPrecoFLAG: TIntegerField;
    dspTabPreco: TDataSetProvider;
    cdsTabPreco: TClientDataSet;
    cdsTabPrecoREFERENCIA: TStringField;
    cdsTabPrecoVLR_VENDA: TFloatField;
    cdsTabPrecoFLAG: TIntegerField;
    dsTabPreco: TDataSource;
    sdsTabPrecoID: TIntegerField;
    sdsTabPrecoNOME_TABELA: TStringField;
    sdsTabPrecoNOME_PRODUTO: TStringField;
    cdsTabPrecoID: TIntegerField;
    cdsTabPrecoNOME_TABELA: TStringField;
    cdsTabPrecoNOME_PRODUTO: TStringField;
    CheckBox1: TCheckBox;
    SMDBGrid1: TSMDBGrid;
    sdsTabPrecoPRECO_CUSTO: TFloatField;
    cdsTabPrecoPRECO_CUSTO: TFloatField;
    qProduto: TSQLQuery;
    qProdutoID: TIntegerField;
    qProdutoNOME: TStringField;
    qProdutoREFERENCIA: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DrawGroupingCell(Sender: TObject; ACanvas: TCanvas;
      CellRect: TRect; Group: TSMGrouping; Text: String;
      var DefaultDrawing: Boolean);
    procedure SMDBGrid1Expression(Sender: TObject; Expression: String;
      var Text: String; var Value: Boolean);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ctProdutoLocal : String;
    procedure prc_Consultar;

  public
    { Public declarations }
    vTipo_Prod : String; //P=Produto  M=Material  'Vázio'=Ambos
    vPreco_Custo : Boolean; //Verifica se mostra o preço de custo

  end;

var
  frmSel_TabPreco: TfrmSel_TabPreco;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_TabPreco.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_TabPreco.prc_Consultar;
begin
  cdsTabPreco.Close;
  sdsTabPreco.CommandText := 'select PRO.ID, PRO.REFERENCIA, IT.VLR_VENDA, TAB.NOME NOME_TABELA, PRO.NOME NOME_PRODUTO, NULL as PRECO_CUSTO,  2 as Flag ' //aqui era 2
                           + 'from PRODUTO PRO '
                           + 'inner join TAB_PRECO_ITENS IT '
                           + 'on PRO.ID = IT.ID_PRODUTO '
                           + 'inner join TAB_PRECO TAB '
                           + 'on IT.ID = TAB.ID '
                           + 'where PRO.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%')
                           + ' union all '
                           + 'select distinct PRO2.ID, PRO2.REFERENCIA, PRO2.PRECO_VENDA VLR_VENDA,' + QuotedStr('') + ', PRO2.NOME NOME_PRODUTO, PRO2.PRECO_CUSTO, 1 as Flag '
                           + 'from PRODUTO PRO2 ';
  if CheckBox1.Checked then
    sdsTabPreco.CommandText := sdsTabPreco.CommandText
                             + ' INNER JOIN TAB_PRECO_ITENS IT '
                             + ' ON PRO2.ID = IT.ID_PRODUTO ';
  sdsTabPreco.CommandText := sdsTabPreco.CommandText
                           + 'where PRO2.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%')
                           + 'AND PRO2.TIPO_REG = ' + QuotedStr('P');
  cdsTabPreco.Open;
end;

procedure TfrmSel_TabPreco.SMDBGrid1DblClick(Sender: TObject);
begin
  vCodProduto_Pos := cdsTabPrecoID.AsInteger;
  vReferencia_Pos := cdsTabPrecoREFERENCIA.AsString;
  vPreco_Pos      := StrToFloat(FormatFloat('0.00000',cdsTabPrecoVLR_VENDA.AsFloat));
  Close;
end;

procedure TfrmSel_TabPreco.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsTabPreco.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_TabPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vTipo_Prod := '';
  Action := Cafree;
end;

procedure TfrmSel_TabPreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmSel_TabPreco.FormShow(Sender: TObject);
var
  i : Integer;
begin
  //ctProdutoLocal := sdsProduto.CommandText;
  if vCodProduto_Pos > 0 then
  begin
    qProduto.Close;
    qProduto.ParamByName('ID').AsInteger := vCodProduto_Pos;
    qProduto.Open;
    Edit1.Text := qProdutoNOME.AsString;
  end;
  vTipo_Prod := 'P';

end;

procedure TfrmSel_TabPreco.SMDBGrid1DrawGroupingCell(Sender: TObject;
  ACanvas: TCanvas; CellRect: TRect; Group: TSMGrouping; Text: String;
  var DefaultDrawing: Boolean);
begin
  DefaultDrawing := False;

  ACanvas.Brush.Color := Group.Color;
  ACanvas.Font.Assign(Group.Font);
  ACanvas.FillRect(CellRect);

  ACanvas.Draw(CellRect.Left + 2, CellRect.Top + 2, Image1.Picture.Graphic);
  CellRect.Left := CellRect.Left + Image1.Width + 5;
  CellRect.Top := CellRect.Top + 2;
  DrawText(ACanvas.Handle, PChar(Text), Length(Text), CellRect, DT_LEFT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX or DT_VCENTER)
end;

procedure TfrmSel_TabPreco.SMDBGrid1Expression(Sender: TObject;
  Expression: String; var Text: String; var Value: Boolean);
begin
  if (cdsTabPreco.FieldByName(Expression).AsInteger = 1) then
  begin
    Value := True;
    if vPreco_Custo then
      Text  := 'Produto: ' + cdsTabPreco.FieldByName('REFERENCIA').AsString + '  ' + cdsTabPreco.FieldByName('NOME_PRODUTO').AsString + ' *** P.Custo R$ ' + FormatFloat('0.000##',cdsTabPreco.FieldByName('PRECO_CUSTO').AsFloat)
    else
      Text  := 'Produto: ' + cdsTabPreco.FieldByName('REFERENCIA').AsString + '  ' + cdsTabPreco.FieldByName('NOME_PRODUTO').AsString;
  end;
end;

procedure TfrmSel_TabPreco.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vCodProduto_Pos := cdsTabPrecoID.AsInteger;
    vReferencia_Pos := cdsTabPrecoREFERENCIA.AsString;
    vPreco_Pos      := StrToFloat(FormatFloat('0.00000',cdsTabPrecoVLR_VENDA.AsFloat));
    Close;
  end;
end;

end.
