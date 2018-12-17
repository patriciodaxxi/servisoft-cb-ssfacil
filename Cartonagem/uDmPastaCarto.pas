unit uDmPastaCarto;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmPasta = class(TDataModule)
    sdsPasta: TSQLDataSet;
    dspPasta: TDataSetProvider;
    cdsPasta: TClientDataSet;
    dsPasta: TDataSource;
    sdsPastaID: TIntegerField;
    cdsPastaID: TIntegerField;
    sdsPastaDESCRICAO: TStringField;
    cdsPastaDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPasta: TdmPasta;

implementation

uses uDmDatabase, rsDBUtils;

{$R *.dfm}

end.
