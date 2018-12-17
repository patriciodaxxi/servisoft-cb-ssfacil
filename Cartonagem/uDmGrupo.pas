unit uDmGrupo;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmGrupo = class(TDataModule)
    sdsGrupo: TSQLDataSet;
    dspGrupo: TDataSetProvider;
    cdsGrupo: TClientDataSet;
    dsGrupo: TDataSource;
    sdsGrupoID: TIntegerField;
    sdsGrupoNOME: TStringField;
    cdsGrupoID: TIntegerField;
    cdsGrupoNOME: TStringField;
    sdsGrupoCARTO_PRECO: TFloatField;
    cdsGrupoCARTO_PRECO: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmGrupo: TdmGrupo;

implementation

uses uDmDatabase, rsDBUtils;

{$R *.dfm}

end.
