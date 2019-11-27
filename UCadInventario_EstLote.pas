unit UCadInventario_EstLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadInventario, Grids, DBGrids,
  SMDBGrid, ExtCtrls, NxCollection, ComCtrls, StdCtrls;

type
  TfrmCadInventario_EstLote = class(TForm)
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
  private
    { Private declarations }
    procedure prc_Gravar_Itens;    
  public
    { Public declarations }
    fDMCadInventario: TDMCadInventario;
  end;

var
  frmCadInventario_EstLote: TfrmCadInventario_EstLote;

implementation

uses DB, rsDBUtils;

{$R *.dfm}

procedure TfrmCadInventario_EstLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadInventario_EstLote.btnConfirmarClick(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  ProgressBar1.Visible  := True;
  ProgressBar1.Max      := fDMCadInventario.cdsEstoque_Lote.RecordCount;
  ProgressBar1.Position := 0;
  fDMCadInventario.cdsInventario_Itens.IndexFieldNames := 'ID;ITEM';
  fDMCadInventario.cdsEstoque_Lote.First;
  while not fDMCadInventario.cdsEstoque_Lote.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1; 
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
      prc_Gravar_Itens;
    fDMCadInventario.cdsEstoque_Lote.Next;
  end;
  SMDBGrid1.EnableScroll;
  Close;
end;

procedure TfrmCadInventario_EstLote.prc_Gravar_Itens;
var
  vItem: Integer;
  vTam: String;
begin
  vTam := '';
  if fDMCadInventario.cdsInventario_Itens.Locate('ID_PRODUTO;NUM_LOTE_CONTROLE',
                                         VarArrayOf([fDMCadInventario.cdsEstoque_LoteID_PRODUTO.AsInteger,
                                         fDMCadInventario.cdsEstoque_LoteNUM_LOTE_CONTROLE.AsString]),[locaseinsensitive]) then
    exit;

  fDMCadInventario.cdsInventario_Itens.Last;
  vItem := fDMCadInventario.cdsInventario_ItensITEM.AsInteger + 1;

  fDMCadInventario.cdsInventario_Itens.Insert;
  fDMCadInventario.cdsInventario_ItensID.AsInteger            := fDMCadInventario.cdsInventarioID.AsInteger;
  fDMCadInventario.cdsInventario_ItensITEM.AsInteger          := vItem;
  fDMCadInventario.cdsInventario_ItensID_PRODUTO.AsInteger    := fDMCadInventario.cdsEstoque_LoteID_PRODUTO.AsInteger;
  fDMCadInventario.cdsInventario_ItensTAMANHO.AsString        := vTam;
  fDMCadInventario.cdsInventario_ItensQTD_ESTOQUE.AsFloat     := StrToFloat(FormatFloat('0.000000',fDMCadInventario.cdsEstoque_LoteQTD.AsFloat));
  if fDMCadInventario.qParametrosINV_TRAZER_QTD_ZERADA.AsString = 'S' then
    fDMCadInventario.cdsInventario_ItensQTD_INVENTARIO.AsFloat  := StrToFloat(FormatFloat('0.000000',0))
  else
    fDMCadInventario.cdsInventario_ItensQTD_INVENTARIO.AsFloat  := StrToFloat(FormatFloat('0.000000',fDMCadInventario.cdsEstoque_LoteQTD.AsFloat));
  fDMCadInventario.cdsInventario_ItensQTD_AJUSTE.AsFloat      := 0;
  fDMCadInventario.cdsInventario_ItensTIPO_AJUSTE.AsString    := 'N';
  fDMCadInventario.cdsInventario_ItensVLR_UNITARIO.AsFloat    := StrToFloat(FormatFloat('0.00000',fDMCadInventario.cdsEstoque_LotePRECO_CUSTO.AsFloat));
  fDMCadInventario.cdsInventario_ItensPERC_IPI.AsFloat        := StrToFloat(FormatFloat('0.00000',fDMCadInventario.cdsEstoque_LotePERC_IPI.AsFloat));
  fDMCadInventario.cdsInventario_ItensPERC_ICMS.AsFloat       := StrToFloat(FormatFloat('0.00000',0));
  fDMCadInventario.cdsInventario_ItensREFERENCIA.AsString     := fDMCadInventario.cdsEstoque_LoteREFERENCIA.AsString;
  fDMCadInventario.cdsInventario_ItensNOME.AsString           := fDMCadInventario.cdsEstoque_LoteNOME_PRODUTO.AsString;
  fDMCadInventario.cdsInventario_ItensUNIDADE.AsString        := fDMCadInventario.cdsEstoque_LoteUNIDADE.AsString;
  fDMCadInventario.cdsInventario_ItensID_COR.AsInteger        := 0;
  fDMCadInventario.cdsInventario_ItensNOME_COR_COMBINACAO.AsString := '';
  fDMCadInventario.cdsInventario_ItensNUM_LOTE_CONTROLE.AsString   := fDMCadInventario.cdsEstoque_LoteNUM_LOTE_CONTROLE.AsString;
  fDMCadInventario.cdsInventario_Itens.Post;
end;

procedure TfrmCadInventario_EstLote.FormShow(Sender: TObject);
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
end;

procedure TfrmCadInventario_EstLote.NxButton3Click(Sender: TObject);
var
  vComando : String;
begin
  vComando := 'WHERE E.FILIAL = ' + IntToStr(fDMCadInventario.cdsInventarioFILIAL.AsInteger);
  case RadioGroup1.ItemIndex of
    1 : vComando := vComando + ' AND E.QTD > 0 ';
    2 : vComando := vComando + ' AND E.QTD < 0 ';
  end;
  vComando := vComando + ' AND P.TIPO_REG = ' + QuotedStr(fDMCadInventario.cdsInventarioTIPO_REG.AsString);
  fDMCadInventario.cdsEstoque_Lote.Close;
  fDMCadInventario.sdsEstoque_Lote.CommandText := fDMCadInventario.ctEstoque_Lote + vComando;
  fDMCadInventario.cdsEstoque_Lote.Open;
end;

end.
