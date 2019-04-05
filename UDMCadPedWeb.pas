unit UDMCadPedWeb;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TDMCadPedWeb = class(TDataModule)
    sdsPedWeb: TSQLDataSet;
    sdsPedWebID: TIntegerField;
    sdsPedWebID_USUARIO: TIntegerField;
    sdsPedWebID_PESSOA: TIntegerField;
    sdsPedWebHORA_EMISSAO: TStringField;
    sdsPedWebID_FORMA_PAGAMENTO: TIntegerField;
    sdsPedWebVLR_DESCONTO: TFMTBCDField;
    sdsPedWebTIPO_OPERACAO: TIntegerField;
    sdsPedWebCOND_PAGAMENTO: TIntegerField;
    sdsPedWebGERADO: TStringField;
    dspPedWeb: TDataSetProvider;
    cdsPedWeb: TClientDataSet;
    dsPedWeb: TDataSource;
    cdsPedWebID: TIntegerField;
    cdsPedWebID_USUARIO: TIntegerField;
    cdsPedWebID_PESSOA: TIntegerField;
    cdsPedWebHORA_EMISSAO: TStringField;
    cdsPedWebID_FORMA_PAGAMENTO: TIntegerField;
    cdsPedWebVLR_DESCONTO: TFMTBCDField;
    cdsPedWebTIPO_OPERACAO: TIntegerField;
    cdsPedWebCOND_PAGAMENTO: TIntegerField;
    cdsPedWebGERADO: TStringField;
    sdsPedWebVLR_TOTAL: TFMTBCDField;
    cdsPedWebVLR_TOTAL: TFMTBCDField;
    sdsConsultaPedWeb: TSQLDataSet;
    dspConsultaPedWeb: TDataSetProvider;
    cdsConsultaPedWeb: TClientDataSet;
    dsConsultaPedWeb: TDataSource;
    sdsConsultaPedWebID: TIntegerField;
    sdsConsultaPedWebID_USUARIO: TIntegerField;
    sdsConsultaPedWebID_PESSOA: TIntegerField;
    sdsConsultaPedWebHORA_EMISSAO: TStringField;
    sdsConsultaPedWebID_FORMA_PAGAMENTO: TIntegerField;
    sdsConsultaPedWebVLR_DESCONTO: TFMTBCDField;
    sdsConsultaPedWebVLR_TOTAL: TFMTBCDField;
    sdsConsultaPedWebTIPO_OPERACAO: TIntegerField;
    sdsConsultaPedWebCOND_PAGAMENTO: TIntegerField;
    sdsConsultaPedWebGERADO: TStringField;
    sdsConsultaPedWebNOME_CLIENTE: TStringField;
    sdsConsultaPedWebNOME_USUARIO: TStringField;
    cdsConsultaPedWebID: TIntegerField;
    cdsConsultaPedWebID_USUARIO: TIntegerField;
    cdsConsultaPedWebID_PESSOA: TIntegerField;
    cdsConsultaPedWebHORA_EMISSAO: TStringField;
    cdsConsultaPedWebID_FORMA_PAGAMENTO: TIntegerField;
    cdsConsultaPedWebVLR_DESCONTO: TFMTBCDField;
    cdsConsultaPedWebVLR_TOTAL: TFMTBCDField;
    cdsConsultaPedWebTIPO_OPERACAO: TIntegerField;
    cdsConsultaPedWebCOND_PAGAMENTO: TIntegerField;
    cdsConsultaPedWebGERADO: TStringField;
    cdsConsultaPedWebNOME_CLIENTE: TStringField;
    cdsConsultaPedWebNOME_USUARIO: TStringField;
    dsMestre: TDataSource;
    sdsPedWeb_Item: TSQLDataSet;
    cdsPedWeb_Item: TClientDataSet;
    dsPedWeb_Item: TDataSource;
    cdsPedWeb_ItemID_PEDIDO: TIntegerField;
    cdsPedWeb_ItemID_PRODUTO: TIntegerField;
    cdsPedWeb_ItemQUANTIDADE: TIntegerField;
    cdsPedWeb_ItemVLR_UNITARIO: TFloatField;
    cdsPedWeb_ItemVLR_DESCONTO: TFloatField;
    cdsPedWeb_ItemVLR_TOTAL: TFloatField;
    sdsPedWeb_ItemID_PEDIDO: TIntegerField;
    sdsPedWeb_ItemID_PRODUTO: TIntegerField;
    sdsPedWeb_ItemQUANTIDADE: TIntegerField;
    sdsPedWeb_ItemVLR_UNITARIO: TFloatField;
    sdsPedWeb_ItemVLR_DESCONTO: TFloatField;
    sdsPedWeb_ItemVLR_TOTAL: TFloatField;
    sdsPedWeb_ItemOBS: TStringField;
    sdsPedWebOBS: TStringField;
    cdsPedWebOBS: TStringField;
    cdsPedWebsdsPedWeb_Item: TDataSetField;
    cdsPedWeb_ItemOBS: TStringField;
    sdsConsultaPedWebOBS: TStringField;
    cdsConsultaPedWebOBS: TStringField;
    cdsConsultaPedWebValorTotalDesconto: TAggregateField;
    cdsConsultaPedWebValorTotal: TAggregateField;
    sdsPedWebDATA_APROVADO: TDateField;
    cdsPedWebDATA_APROVADO: TDateField;
    sdsConsultaPedWebDATA_APROVADO: TDateField;
    cdsConsultaPedWebDATA_APROVADO: TDateField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralFILIAL_PADRAO_PEDWEB: TIntegerField;
    sdsPedWebDATA_EMISSAO: TDateField;
    cdsPedWebDATA_EMISSAO: TDateField;
    sdsConsultaPedWebDATA_EMISSAO: TDateField;
    cdsConsultaPedWebDATA_EMISSAO: TDateField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    dsVendedor: TDataSource;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorCOD_VENDEDOR: TIntegerField;
    sdsPedWebPRAZO_PEDIDO: TStringField;
    cdsPedWebPRAZO_PEDIDO: TStringField;
    sdsConsultaPedWebPRAZO_PEDIDO: TStringField;
    cdsConsultaPedWebPRAZO_PEDIDO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    ctCommand : String;    
  public
    { Public declarations }
    procedure prc_Localizar(ID: Integer);

  end;

var
  DMCadPedWeb: TDMCadPedWeb;

implementation

uses
  DmdDatabase;

{$R *.dfm}

{ TDMCadPedWeb }

procedure TDMCadPedWeb.prc_Localizar(ID: Integer);
begin
  cdsPedWeb.Close;
  sdsPedWeb.CommandText := ctCommand;
  if ID <> 0 then
  begin
    sdsPedWeb.CommandText := sdsPedWeb.CommandText + ' WHERE ID = :ID ';
    sdsPedWeb.ParamByName('ID').AsInteger := ID;
  end;
  cdsPedWeb.Open;
  cdsPedWeb_Item.Close;
  cdsPedWeb_Item.Open;
end;

procedure TDMCadPedWeb.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsPedWeb.CommandText;
end;

end.
