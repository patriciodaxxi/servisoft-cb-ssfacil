unit uDmAcabamento;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmAcabamento = class(TDataModule)
    sdsAcabamento: TSQLDataSet;
    dspAcabamento: TDataSetProvider;
    cdsAcabamento: TClientDataSet;
    dsAcabamento: TDataSource;
    sdsAcabamentoID: TIntegerField;
    cdsAcabamentoID: TIntegerField;
    sdsAcabamentoDESCRICAO: TStringField;
    cdsAcabamentoDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAcabamento: TdmAcabamento;

implementation

uses uDmDatabase, rsDBUtils;

{$R *.dfm}

end.
