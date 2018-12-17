unit UDMCopiaTabPreco;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMCopiaTabPreco = class(TDataModule)
    sdsTab_Preco: TSQLDataSet;
    dspTab_Preco: TDataSetProvider;
    cdsTab_Preco: TClientDataSet;
    dsTab_Preco: TDataSource;
    sdsTab_PrecoID: TIntegerField;
    sdsTab_PrecoNOME: TStringField;
    sdsTab_PrecoDTCADASTRO: TDateField;
    sdsTab_PrecoOBS: TMemoField;
    sdsTab_PrecoDTINICIAL: TDateField;
    sdsTab_PrecoDTFINAL: TDateField;
    sdsTab_PrecoTABPROMOCIONAL: TStringField;
    dsMestre: TDataSource;
    sdsTab_Preco_Itens: TSQLDataSet;
    cdsTab_Preco_Itens: TClientDataSet;
    dsTab_Preco_Itens: TDataSource;
    sdsTab_Preco_ItensID: TIntegerField;
    sdsTab_Preco_ItensITEM: TIntegerField;
    sdsTab_Preco_ItensID_PRODUTO: TIntegerField;
    sdsTab_Preco_ItensVLR_VENDA: TFloatField;
    sdsTab_Preco_ItensID_COR: TIntegerField;
    cdsTab_PrecoID: TIntegerField;
    cdsTab_PrecoNOME: TStringField;
    cdsTab_PrecoDTCADASTRO: TDateField;
    cdsTab_PrecoOBS: TMemoField;
    cdsTab_PrecoDTINICIAL: TDateField;
    cdsTab_PrecoDTFINAL: TDateField;
    cdsTab_PrecoTABPROMOCIONAL: TStringField;
    cdsTab_Preco_ItensID: TIntegerField;
    cdsTab_Preco_ItensITEM: TIntegerField;
    cdsTab_Preco_ItensID_PRODUTO: TIntegerField;
    cdsTab_Preco_ItensVLR_VENDA: TFloatField;
    cdsTab_Preco_ItensID_COR: TIntegerField;
    cdsTab_PrecosdsTab_Preco_Itens: TDataSetField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCopiaTabPreco: TDMCopiaTabPreco;

implementation

uses DmdDatabase;

{$R *.dfm}

end.
