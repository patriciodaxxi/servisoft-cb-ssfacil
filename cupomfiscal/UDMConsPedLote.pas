unit UDMConsPedLote;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMConsPedLote = class(TDataModule)
    sdsLote: TSQLDataSet;
    dspLote: TDataSetProvider;
    cdsLote: TClientDataSet;
    dsLote: TDataSource;
    cdsLoteNUM_ORDEM: TIntegerField;
    cdsLoteNUM_LOTE: TIntegerField;
    cdsLoteID_PEDIDO: TIntegerField;
    cdsLoteID_PRODUTO: TIntegerField;
    cdsLoteREFERENCIA: TStringField;
    cdsLoteNUM_PEDIDO: TIntegerField;
    cdsLotePEDIDO_CLIENTE: TStringField;
    cdsLoteNOME_CLIENTE: TStringField;
    cdsLoteFANTASIA: TStringField;
    cdsLoteQTD: TFloatField;
    cdsLoteQTD_TALOES: TIntegerField;
    sdsOrdem: TSQLDataSet;
    dspOrdem: TDataSetProvider;
    cdsOrdem: TClientDataSet;
    dsOrdem: TDataSource;
    cdsOrdemNUM_ORDEM: TIntegerField;
    cdsOrdemID_PEDIDO: TIntegerField;
    cdsOrdemNUM_PEDIDO: TIntegerField;
    cdsOrdemPEDIDO_CLIENTE: TStringField;
    cdsOrdemNOME_CLIENTE: TStringField;
    cdsOrdemFANTASIA: TStringField;
    cdsOrdemQTD: TFloatField;
    cdsOrdemQTD_TALAO: TFMTBCDField;
    cdsOrdemQTD_TALAO_PED: TIntegerField;
    sdsTalao: TSQLDataSet;
    dspTalao: TDataSetProvider;
    cdsTalao: TClientDataSet;
    dsTalao: TDataSource;
    cdsTalaoNUM_ORDEM: TIntegerField;
    cdsTalaoNUM_LOTE: TIntegerField;
    cdsTalaoNUM_TALAO: TIntegerField;
    cdsTalaoQTD: TFloatField;
    cdsTalaoID_PRODUTO: TIntegerField;
    cdsTalaoREFERENCIA: TStringField;
    cdsTalaoID_PEDIDO: TIntegerField;
    cdsTalaoNUM_PEDIDO: TIntegerField;
    cdsTalaoPEDIDO_CLIENTE: TStringField;
    cdsTalaoITEM_PEDIDO: TIntegerField;
    cdsTalaoFANTASIA: TStringField;
    cdsTalaoQTD_PEDIDO: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctLote : String;
    ctOrdem : String;
    ctTalao : String;

  end;

var
  DMConsPedLote: TDMConsPedLote;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsPedLote.DataModuleCreate(Sender: TObject);
begin
  ctLote  := sdsLote.CommandText;
  ctOrdem := sdsOrdem.CommandText;
  ctTalao := sdsTalao.CommandText;
end;

end.
