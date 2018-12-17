unit UDMPreFat;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TDMPreFat = class(TDataModule)
    sdsConsPreFat: TSQLDataSet;
    dspConsPreFat: TDataSetProvider;
    cdsConsPreFat: TClientDataSet;
    cdsConsPreFatID: TIntegerField;
    cdsConsPreFatID_FUNCIONARIO: TIntegerField;
    cdsConsPreFatQTD_VOLUME: TIntegerField;
    cdsConsPreFatFATURADO: TStringField;
    cdsConsPreFatFILIAL: TIntegerField;
    cdsConsPreFatID_CLIENTE: TIntegerField;
    cdsConsPreFatDATA: TDateField;
    cdsConsPreFatID_NOTA: TIntegerField;
    cdsConsPreFatNOME: TStringField;
    dsConsPreFat: TDataSource;
    sdsPreFat: TSQLDataSet;
    dspPreFat: TDataSetProvider;
    cdsPreFat: TClientDataSet;
    dsPreFat: TDataSource;
    sdsPreFatID: TIntegerField;
    sdsPreFatID_FUNCIONARIO: TIntegerField;
    sdsPreFatQTD_VOLUME: TIntegerField;
    sdsPreFatFATURADO: TStringField;
    sdsPreFatFILIAL: TIntegerField;
    sdsPreFatID_CLIENTE: TIntegerField;
    sdsPreFatDATA: TDateField;
    sdsPreFatID_NOTA: TIntegerField;
    cdsPreFatID: TIntegerField;
    cdsPreFatID_FUNCIONARIO: TIntegerField;
    cdsPreFatQTD_VOLUME: TIntegerField;
    cdsPreFatFATURADO: TStringField;
    cdsPreFatFILIAL: TIntegerField;
    cdsPreFatID_CLIENTE: TIntegerField;
    cdsPreFatDATA: TDateField;
    cdsPreFatID_NOTA: TIntegerField;
    dsPreFat_Mestre: TDataSource;
    sdsPreFat_Itens: TSQLDataSet;
    cdsPreFat_Itens: TClientDataSet;
    dsPreFat_Itens: TDataSource;
    sdsPreFat_ItensID: TIntegerField;
    sdsPreFat_ItensITEM: TIntegerField;
    sdsPreFat_ItensID_PEDIDO: TIntegerField;
    sdsPreFat_ItensITEM_PEDIDO: TIntegerField;
    sdsPreFat_ItensQTD: TFloatField;
    sdsPreFat_ItensID_CLIENTE: TIntegerField;
    cdsPreFatsdsPreFat_Itens: TDataSetField;
    cdsPreFat_ItensID: TIntegerField;
    cdsPreFat_ItensITEM: TIntegerField;
    cdsPreFat_ItensID_PEDIDO: TIntegerField;
    cdsPreFat_ItensITEM_PEDIDO: TIntegerField;
    cdsPreFat_ItensQTD: TFloatField;
    cdsPreFat_ItensID_CLIENTE: TIntegerField;
    sdsCFOP: TSQLDataSet;
    dspCFOP: TDataSetProvider;
    cdsCFOP: TClientDataSet;
    dsCFOP: TDataSource;
    cdsCFOPID: TIntegerField;
    cdsCFOPCODCFOP: TStringField;
    cdsCFOPNOME: TStringField;
    cdsConsPreFatID_TRANSPORTADORA: TIntegerField;
    cdsConsPreFatNOME_TRANSP: TStringField;
    sdsPreFatID_TRANSPORTADORA: TIntegerField;
    cdsPreFatID_TRANSPORTADORA: TIntegerField;
    sdsConsPreFat_Itens: TSQLDataSet;
    dspConsPreFat_Itens: TDataSetProvider;
    cdsConsPreFat_Itens: TClientDataSet;
    dsConsPreFat_Itens: TDataSource;
    cdsConsPreFat_ItensID: TIntegerField;
    cdsConsPreFat_ItensITEM: TIntegerField;
    cdsConsPreFat_ItensID_PEDIDO: TIntegerField;
    cdsConsPreFat_ItensITEM_PEDIDO: TIntegerField;
    cdsConsPreFat_ItensQTD: TFloatField;
    cdsConsPreFat_ItensID_CLIENTE: TIntegerField;
    cdsConsPreFat_ItensEXISTE_VOL_ETIQ: TStringField;
    cdsConsPreFat_ItensID_PRODUTO: TIntegerField;
    cdsConsPreFat_ItensREFERENCIA: TStringField;
    cdsConsPreFat_ItensNOME_PRODUTO: TStringField;
    cdsConsPreFat_ItensNOME_COMBINACAO: TStringField;
    cdsConsPreFat_ItensNUM_PEDIDO: TIntegerField;
    cdsConsPreFat_ItensPEDIDO_CLIENTE: TStringField;
    cdsConsPreFatCNPJ_CPF_CLIENTE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    vID_PreFat : Integer;
    vID_CFOP_PreFat : Integer;

  end;

var
  DMPreFat: TDMPreFat;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMPreFat.DataModuleCreate(Sender: TObject);
begin
  cdsCFOP.Close;
  cdsCFOP.Open;
end;

end.
