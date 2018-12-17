unit UDMSel_Produto;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TDMSel_Produto = class(TDataModule)
    mCarrinho: TClientDataSet;
    dsmCarrinho: TDataSource;
    mCarrinhoItem: TIntegerField;
    mCarrinhoID_Produto: TIntegerField;
    mCarrinhoUnidade: TStringField;
    mCarrinhoQtd: TFloatField;
    mCarrinhoVlr_Unitario: TFloatField;
    mCarrinhoVlr_Total: TFloatField;
    mCarrinhoReferencia: TStringField;
    mCarrinhoNome_Produto: TStringField;
    procedure mCarrinhoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vGravar_Carrinho : String;
  end;

var
  DMSel_Produto: TDMSel_Produto;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMSel_Produto.mCarrinhoBeforePost(DataSet: TDataSet);
begin
  mCarrinhoVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',mCarrinhoQtd.AsFloat * mCarrinhoVlr_Unitario.AsFloat));
end;

end.
