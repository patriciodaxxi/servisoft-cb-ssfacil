unit UCadInventario_Prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadInventario, Grids, DBGrids,
  SMDBGrid, ExtCtrls, NxCollection, ComCtrls, StdCtrls;

type
  TfrmCadInventario_Prod = class(TForm)
    PageControl1: TPageControl;
    TS_Produto: TTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    ProgressBar1: TProgressBar;
    Panel2: TPanel;
    NxButton3: TNxButton;
    RadioGroup1: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    vVazio : Boolean;
    vItem_Inventario : Integer;

    procedure prc_Gravar_Itens;

  public
    { Public declarations }
    fDMCadInventario: TDMCadInventario;
  end;

var
  frmCadInventario_Prod: TfrmCadInventario_Prod;

implementation

uses DB, rsDBUtils;

{$R *.dfm}

procedure TfrmCadInventario_Prod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMCadInventario.cdsProduto.Filtered := False;
  Action := Cafree;
end;

procedure TfrmCadInventario_Prod.btnConfirmarClick(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  vVazio := False;
  fDMCadInventario.cdsInventario_Itens.Last;
  vItem_Inventario := fDMCadInventario.cdsInventario_ItensITEM.AsInteger;
  if fDMCadInventario.cdsInventario_Itens.RecordCount <= 0 then
    vVazio := True;
  ProgressBar1.Visible  := True;
  ProgressBar1.Max      := fDMCadInventario.cdsProduto.RecordCount;
  ProgressBar1.Position := 0;
  fDMCadInventario.cdsInventario_Itens.IndexFieldNames := 'ID;ITEM';
  fDMCadInventario.cdsProduto.First;
  while not fDMCadInventario.cdsProduto.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1; 
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
      prc_Gravar_Itens;
    fDMCadInventario.cdsProduto.Next;
  end;
  SMDBGrid1.EnableScroll;
  Close;
end;

procedure TfrmCadInventario_Prod.prc_Gravar_Itens;
var
  //vItem: Integer;
  vTam: String;
begin
  if (trim(fDMCadInventario.cdsProdutoTAMANHO.AsString) = '') or (fDMCadInventario.cdsProdutoTAMANHO.IsNull) then
    vTam := ''
  else
    vTam := fDMCadInventario.cdsProdutoTAMANHO.AsString;
  if not vVazio then
  begin
    if fDMCadInventario.cdsProdutoID_COR_COMBINACAO.AsInteger > 0 then
    begin
      if fDMCadInventario.cdsInventario_Itens.Locate('ID_PRODUTO;TAMANHO;ID_COR',VarArrayOf([fDMCadInventario.cdsProdutoID.AsInteger,vTam,fDMCadInventario.cdsProdutoID_COR_COMBINACAO.AsInteger]),[locaseinsensitive]) then
        exit;
    end
    else
    begin
      if fDMCadInventario.cdsInventario_Itens.Locate('ID_PRODUTO;TAMANHO',VarArrayOf([fDMCadInventario.cdsProdutoID.AsInteger,vTam]),[locaseinsensitive]) then
        exit;
    end;
  end;

  //fDMCadInventario.cdsInventario_Itens.Last;
  //vItem := fDMCadInventario.cdsInventario_ItensITEM.AsInteger + 1;

  vItem_Inventario := vItem_Inventario + 1;
  fDMCadInventario.cdsInventario_Itens.Insert;
  fDMCadInventario.cdsInventario_ItensID.AsInteger            := fDMCadInventario.cdsInventarioID.AsInteger;
  //fDMCadInventario.cdsInventario_ItensITEM.AsInteger          := vItem;
  fDMCadInventario.cdsInventario_ItensITEM.AsInteger          := vItem_Inventario;
  fDMCadInventario.cdsInventario_ItensID_PRODUTO.AsInteger    := fDMCadInventario.cdsProdutoID.AsInteger;
  fDMCadInventario.cdsInventario_ItensTAMANHO.AsString        := fDMCadInventario.cdsProdutoTAMANHO.AsString;
  fDMCadInventario.cdsInventario_ItensQTD_ESTOQUE.AsFloat     := StrToFloat(FormatFloat('0.000000',fDMCadInventario.cdsProdutoclQtd.AsFloat));
  if fDMCadInventario.qParametrosINV_TRAZER_QTD_ZERADA.AsString = 'S' then
    fDMCadInventario.cdsInventario_ItensQTD_INVENTARIO.AsFloat  := StrToFloat(FormatFloat('0.000000',0))
  else
    fDMCadInventario.cdsInventario_ItensQTD_INVENTARIO.AsFloat  := StrToFloat(FormatFloat('0.000000',fDMCadInventario.cdsProdutoclQtd.AsFloat));
  fDMCadInventario.cdsInventario_ItensQTD_AJUSTE.AsFloat      := 0;
  fDMCadInventario.cdsInventario_ItensTIPO_AJUSTE.AsString    := 'N';
  fDMCadInventario.cdsInventario_ItensVLR_UNITARIO.AsFloat    := StrToFloat(FormatFloat('0.00000',fDMCadInventario.cdsProdutoPRECO_CUSTO.AsFloat));
  fDMCadInventario.cdsInventario_ItensPERC_IPI.AsFloat        := StrToFloat(FormatFloat('0.00000',fDMCadInventario.cdsProdutoPERC_IPI.AsFloat));
  fDMCadInventario.cdsInventario_ItensPERC_ICMS.AsFloat       := StrToFloat(FormatFloat('0.00000',0));
  fDMCadInventario.cdsInventario_ItensREFERENCIA.AsString     := fDMCadInventario.cdsProdutoREFERENCIA.AsString;
  fDMCadInventario.cdsInventario_ItensNOME.AsString           := fDMCadInventario.cdsProdutoNOME.AsString;
  fDMCadInventario.cdsInventario_ItensUNIDADE.AsString        := fDMCadInventario.cdsProdutoUNIDADE.AsString;
  if fDMCadInventario.cdsProdutoID_COR_COMBINACAO.AsInteger > 0 then
    fDMCadInventario.cdsInventario_ItensID_COR.AsInteger        := fDMCadInventario.cdsProdutoID_COR_COMBINACAO.AsInteger;
  fDMCadInventario.cdsInventario_ItensNOME_COR_COMBINACAO.AsString := fDMCadInventario.cdsProdutoNOME_COR.AsString;
  fDMCadInventario.cdsInventario_Itens.Post;
end;

procedure TfrmCadInventario_Prod.FormShow(Sender: TObject);
var
  i: Integer;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadInventario);
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'NOME_COR') then
      SMDBGrid1.Columns[i].Visible := ((fDMCadInventario.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadInventario.qParametrosINFORMAR_COR_PROD.AsString = 'C'))
    else
    if (SMDBGrid1.Columns[i].FieldName = 'clQtd_Geral') then
      SMDBGrid1.Columns[i].Visible := (fDMCadInventario.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  end;
  Panel2.Visible := (fDMCadInventario.qParametros_EstINVENTARIO_ESTMOV.AsString = 'S');
end;

procedure TfrmCadInventario_Prod.NxButton3Click(Sender: TObject);
begin
  fDMCadInventario.cdsProduto.Filtered := False;
  if RadioGroup1.ItemIndex > 0 then
  begin
    if RadioGroup1.ItemIndex = 1 then
      fDMCadInventario.cdsProduto.Filter   := 'QTD > 0'
    else
    if RadioGroup1.ItemIndex = 2 then
      fDMCadInventario.cdsProduto.Filter   := 'QTD < 0';
    fDMCadInventario.cdsProduto.Filtered := True;
  end;
end;

procedure TfrmCadInventario_Prod.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadInventario.cdsProduto.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
