unit UDMConsLimite_Credito;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Provider, SqlExpr, DBClient;

type
  TDMConsLimite_Credito = class(TDataModule)
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliete: TClientDataSet;
    cdsClieteCODIGO: TIntegerField;
    cdsClieteNOME: TStringField;
    cdsClieteFANTASIA: TStringField;
    cdsClieteVLR_LIMITE_CREDITO: TFloatField;
    dsCliente: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConsLimite_Credito: TDMConsLimite_Credito;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsLimite_Credito.DataModuleCreate(Sender: TObject);
begin
  cdsCliete.Open;
end;

end.
