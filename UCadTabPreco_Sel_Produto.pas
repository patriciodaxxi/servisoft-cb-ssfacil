unit UCadTabPreco_Sel_Produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMCadTab_Preco,  Mask, ToolEdit, CurrEdit;

type
  TfrmCadTabPreco_Sel_Produto = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label68: TLabel;
    ComboBox2: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vItem_Local : Integer;    
    procedure prc_Gravar_Itens(ID_Cor : Integer);
  public
    { Public declarations }
    fDMCadTab_Preco: TDMCadTab_Preco;
  end;                          
var
  frmCadTabPreco_Sel_Produto: TfrmCadTabPreco_Sel_Produto;

implementation

uses uUtilPadrao, rsDBUtils;

{$R *.dfm}

procedure TfrmCadTabPreco_Sel_Produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadTabPreco_Sel_Produto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmCadTabPreco_Sel_Produto.FormShow(Sender: TObject);
var
  i: Integer;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadTab_Preco);
end;

procedure TfrmCadTabPreco_Sel_Produto.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadTab_Preco.cdsProduto.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadTabPreco_Sel_Produto.BitBtn1Click(Sender: TObject);
begin
  if CurrencyEdit1.Value <= 0 then
    if MessageDlg('Não foi informado % de preço de custo' +#13 +
                  'Confirmar a transferência de produtos zerados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;

  if CurrencyEdit1.Value > 0 then
    if MessageDlg('Confirmar a transferência de produtos?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;

  fDMCadTab_Preco.cdsTab_Preco_Itens.Last;
  vItem_Local := fDMCadTab_Preco.cdsTab_Preco_ItensITEM.AsInteger;
  fDMCadTab_Preco.cdsProduto.First;
  while not fDMCadTab_Preco.cdsProduto.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and not(fDMCadTab_Preco.cdsTab_Preco_Itens.Locate('ID_PRODUTO', fDMCadTab_Preco.cdsProdutoID.AsInteger,[loCaseInsensitive])) then
    begin
      if (fDMCadTab_Preco.qParametros_ProdPRODUTO_PRECO_COR.AsString = 'S') and (fDMCadTab_Preco.cdsProdutoUSA_PRECO_COR.AsString = 'S') then
      begin
        fDMCadTab_Preco.cdsCombinacao.Close;
        fDMCadTab_Preco.sdsCombinacao.ParamByName('ID').AsInteger := fDMCadTab_Preco.cdsProdutoID.AsInteger;
        fDMCadTab_Preco.cdsCombinacao.Open;
        fDMCadTab_Preco.cdsCombinacao.First;
        while not fDMCadTab_Preco.cdsCombinacao.Eof do
        begin
          prc_Gravar_Itens(fDMCadTab_Preco.cdsCombinacaoID_COR_COMBINACAO.AsInteger);
          fDMCadTab_Preco.cdsCombinacao.Next;
        end;
      end
      else
        prc_Gravar_Itens(0);
    end;
    fDMCadTab_Preco.cdsProduto.Next;
  end;
  Close;
end;

procedure TfrmCadTabPreco_Sel_Produto.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    case ComboBox2.ItemIndex of
      0 : fDMCadTab_Preco.prc_Consultar_Produto(Edit1.Text,'P');
      1 : fDMCadTab_Preco.prc_Consultar_Produto(Edit1.Text,'M');
      2 : fDMCadTab_Preco.prc_Consultar_Produto(Edit1.Text,'S');
    end;
  end;
end;

procedure TfrmCadTabPreco_Sel_Produto.prc_Gravar_Itens(ID_Cor : Integer);
var
  vAux: Real;
  vPreco_Origem: Real;
begin
  vPreco_Origem := 0;
  vItem_Local := vItem_Local + 1;
  fDMCadTab_Preco.cdsTab_Preco_Itens.Insert;
  fDMCadTab_Preco.cdsTab_Preco_ItensID.AsInteger         := fDMCadTab_Preco.cdsTab_PrecoID.AsInteger;
  fDMCadTab_Preco.cdsTab_Preco_ItensITEM.AsInteger       := vItem_Local;
  fDMCadTab_Preco.cdsTab_Preco_ItensID_PRODUTO.AsInteger := fDMCadTab_Preco.cdsProdutoID.AsInteger;
  if ID_Cor > 0 then
  begin
    case ComboBox1.ItemIndex of
      0: vPreco_Origem := fDMCadTab_Preco.cdsCombinacaoPRECO_CUSTO.AsFloat;
      1: vPreco_Origem := fDMCadTab_Preco.cdsCombinacaoPRECO_VENDA.AsFloat;
    end;
    fDMCadTab_Preco.cdsTab_Preco_ItensNOME_COR.AsString := fDMCadTab_Preco.cdsCombinacaoNOME.AsString;
  end;

  if (ID_Cor <= 0) or (StrToFloat(FormatFloat('0.000000',vPreco_Origem)) <= 0) then
  begin
    case ComboBox1.ItemIndex of
      0: vPreco_Origem := fDMCadTab_Preco.cdsProdutoPRECO_CUSTO.AsFloat;
      1: vPreco_Origem := fDMCadTab_Preco.cdsProdutoPRECO_VENDA.AsFloat;
    end;
  end;
  vAux := 0;
  if (StrToFloat(FormatFloat('0.00',CurrencyEdit1.Value)) > 0) and (StrToFloat(FormatFloat('0.00',vPreco_Origem)) > 0) then
    vAux := StrToFloat(FormatFloat('0.00',vPreco_Origem * CurrencyEdit1.Value / 100));
  fDMCadTab_Preco.cdsTab_Preco_ItensVLR_VENDA.AsFloat    := StrToFloat(FormatFloat('0.00',vPreco_Origem + vAux));
  fDMCadTab_Preco.cdsTab_Preco_ItensNOMEPRODUTO.AsString := fDMCadTab_Preco.cdsProdutoNOME.AsString;
  fDMCadTab_Preco.cdsTab_Preco_ItensREFERENCIA.AsString  := fDMCadTab_Preco.cdsProdutoREFERENCIA.AsString;
  fDMCadTab_Preco.cdsTab_Preco_ItensPRECO_CUSTO.AsFloat  := fDMCadTab_Preco.cdsProdutoPRECO_CUSTO.AsFloat;
  fDMCadTab_Preco.cdsTab_Preco_ItensID_COR.AsInteger     := ID_Cor;
  fDMCadTab_Preco.cdsTab_Preco_Itens.Post;
end;

end.
