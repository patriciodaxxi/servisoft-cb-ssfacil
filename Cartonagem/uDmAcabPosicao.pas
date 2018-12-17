unit uDmAcabPosicao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmAcabPosicao = class(TDataModule)
    sdsAcabPosicao: TSQLDataSet;
    dspAcabPosicao: TDataSetProvider;
    cdsAcabPosicao: TClientDataSet;
    dsAcabPosicao: TDataSource;
    sdsAcabPosicaoID: TStringField;
    sdsAcabPosicaoDESCRICAO: TStringField;
    cdsAcabPosicaoID: TStringField;
    cdsAcabPosicaoDESCRICAO: TStringField;
    sdsAcabPosicaoTIPO: TStringField;
    cdsAcabPosicaoTIPO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAcabPosicao: TdmAcabPosicao;

implementation

uses uDmDatabase;

{$R *.dfm}

end.
