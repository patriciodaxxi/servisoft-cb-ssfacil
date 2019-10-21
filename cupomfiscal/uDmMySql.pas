unit uDmMySql;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDmMySql = class(TDataModule)
    ZConnection1: TZConnection;
    qAtualizaEstoque: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMySql: TDmMySql;

implementation

{$R *.dfm}

end.
