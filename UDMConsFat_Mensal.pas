unit UDMConsFat_Mensal;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMConsFat_Mensal = class(TDataModule)
    sdsConsulta_Fat: TSQLDataSet;
    dspConsulta_Fat: TDataSetProvider;
    cdsConsulta_Fat: TClientDataSet;
    dsConsulta_Fat: TDataSource;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteFANTASIA: TStringField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsClienteCNPJ_CPF: TStringField;
    cdsClientePESSOA: TStringField;
    cdsConsulta_FatID_CLIENTE: TIntegerField;
    cdsConsulta_FatNUMNOTA: TIntegerField;
    cdsConsulta_FatFILIAL: TIntegerField;
    cdsConsulta_FatVLR_TOTAL: TFloatField;
    cdsConsulta_FatDTEMISSAO_CAD: TDateField;
    cdsConsulta_FatNOME_CLIENTE: TStringField;
    cdsConsulta_FatCNPJ_CPF: TStringField;
    cdsConsulta_FatNUMRPS: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctConsulta_Fat : String;

  end;

var
  DMConsFat_Mensal: TDMConsFat_Mensal;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsFat_Mensal.DataModuleCreate(Sender: TObject);
begin
  ctConsulta_Fat := sdsConsulta_Fat.CommandText;
  cdsCliente.Open;
  cdsFilial.Open;
end;

end.
