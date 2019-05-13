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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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

uses DB;

{$R *.dfm}

procedure TfrmConsProduto_Compras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmConsProduto_Compras.FormShow(Sender: TObject);
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);

  fDMConsEstoque.cdsCompras.Close;
  fDMConsEstoque.sdsCompras.ParamByName('IDP').AsInteger := vIdProd;
  fDMConsEstoque.cdsCompras.Open;

  fDMConsEstoque.qAltPreco.Close;
  fDMConsEstoque.qAltPreco.ParamByName('IDP').AsInteger := vIdProd;
  fDMConsEstoque.qAltPreco.Open;
  lblUltPreco.Caption := fDMConsEstoque.qAltPrecoALT_CUSTO.AsString;
  fDMConsEstoque.qAltPreco.Close;
end;

end.
