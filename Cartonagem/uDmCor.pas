unit uDmCor;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmCor = class(TDataModule)
    sdsCor: TSQLDataSet;
    dspCor: TDataSetProvider;
    cdsCor: TClientDataSet;
    dsCor: TDataSource;
    sdsCorID: TIntegerField;
    sdsCorNOME: TStringField;
    sdsCorPANTONE: TStringField;
    cdsCorID: TIntegerField;
    cdsCorNOME: TStringField;
    cdsCorPANTONE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCor: TdmCor;

implementation

uses uDmDatabase, rsDBUtils;

{$R *.dfm}

end.
