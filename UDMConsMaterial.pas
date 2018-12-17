unit UDMConsMaterial;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TDMConsMaterial = class(TDataModule)
    sdsConsMatPrima: TSQLDataSet;
    dspConsMatPrima: TDataSetProvider;
    cdsConsMatPrima: TClientDataSet;
    dsConsMatPrima: TDataSource;
    cdsConsMatPrimaID: TIntegerField;
    cdsConsMatPrimaNOME: TStringField;
    cdsConsMatPrimaTIPO_REG: TStringField;
    cdsConsMatPrimaREFERENCIA: TStringField;
    cdsConsMatPrimaQTD_CONSUMO: TFloatField;
    qEstoque: TSQLQuery;
    qEstoqueQTD: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConsMaterial: TDMConsMaterial;

implementation

uses DmdDatabase;

{$R *.dfm}

end.
