unit UGerar_Necessidade_Compras_MProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadNecessidade_Compras, Grids, DBGrids, SMDBGrid, ExtCtrls,
  DBCtrls, StdCtrls;

type
  TfrmGerar_Necessidade_Compras_MProd = class(TForm)
    SMDBGrid4: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    StaticText1: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid4DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadNecessidade_Compras : TDMCadNecessidade_Compras;
    vNum_Ordem : Integer;
  end;

var
  frmGerar_Necessidade_Compras_MProd: TfrmGerar_Necessidade_Compras_MProd;

implementation

uses rsDBUtils, UCadProduto;

{$R *.dfm}

procedure TfrmGerar_Necessidade_Compras_MProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmGerar_Necessidade_Compras_MProd.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNecessidade_Compras);
  fDMCadNecessidade_Compras.cdsMProduto.Close;
  fDMCadNecessidade_Compras.sdsMProduto.ParamByName('ID_Material').AsInteger := fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger;
  fDMCadNecessidade_Compras.sdsMProduto.ParamByName('Num_Ordem').AsInteger   := vNum_Ordem;
  fDMCadNecessidade_Compras.cdsMProduto.Open;
end;

procedure TfrmGerar_Necessidade_Compras_MProd.SMDBGrid4DblClick(
  Sender: TObject);
var
  ffrmCadProduto: TfrmCadProduto;
begin
  if fDMCadNecessidade_Compras.cdsMProdutoID_PRODUTO.AsInteger <= 0 then
    exit;

  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.vID_Produto_Local := fDMCadNecessidade_Compras.cdsMProdutoID_PRODUTO.AsInteger;
  ffrmCadProduto.ShowModal;
  FreeAndNil(ffrmCadProduto);
end;

end.
