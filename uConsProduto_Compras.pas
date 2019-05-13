unit uConsProduto_Compras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMConsEstoque, StdCtrls, Grids, DBGrids,
  SMDBGrid, ExtCtrls;

type
  TfrmConsProduto_Compras = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    lblUltPreco: TLabel;
    Label2: TLabel;
    lblID: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMConsEstoque: TDMConsEstoque;
    vIdProd: Integer;
  end;

var
  frmConsProduto_Compras: TfrmConsProduto_Compras;

implementation

uses DB, rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsProduto_Compras.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Word;
begin
  Action := caFree;
  SMDBGrid1.ClearFilter;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
  try
    fDMConsEstoque.qParametros_Geral.Close;
    fDMConsEstoque.qParametros_Geral.Open;
    prc_Grava_Grid(SMDBGrid1,Name,fDMConsEstoque.qParametros_GeralENDGRIDS.AsString);
  finally
    Action := Cafree;
  end;
end;

procedure TfrmConsProduto_Compras.FormShow(Sender: TObject);
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDMConsEstoque);

  fDMConsEstoque.cdsCompras.Close;
  fDMConsEstoque.sdsCompras.ParamByName('IDP').AsInteger := vIdProd;
  fDMConsEstoque.cdsCompras.Open;

  fDMConsEstoque.qAltPreco.Close;
  fDMConsEstoque.qAltPreco.ParamByName('IDP').AsInteger := vIdProd;
  fDMConsEstoque.qAltPreco.Open;
  lblUltPreco.Caption := fDMConsEstoque.qAltPrecoALT_CUSTO.AsString;
  lblID.Caption       := IntToStr(vIdProd);
  fDMConsEstoque.qAltPreco.Close;
end;

procedure TfrmConsProduto_Compras.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsEstoque.cdsCompras.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I].Title = Column.Title) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
