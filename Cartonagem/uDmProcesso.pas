unit uDmProcesso;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXpress;

type
  TdmProcesso = class(TDataModule)
    sdsProcesso: TSQLDataSet;
    sdsProcessoItem: TSQLDataSet;
    dspProcesso: TDataSetProvider;
    cdsProcesso: TClientDataSet;
    dsProcesso: TDataSource;
    dsmProcesso: TDataSource;
    cdsProcessoItem: TClientDataSet;
    dsProcessoItem: TDataSource;
    cdsProcessoID: TIntegerField;
    cdsProcessoFACA_ID: TIntegerField;
    cdsProcessoFICHA_TEC_ID: TIntegerField;
    cdsProcessosdsProcessoItem: TDataSetField;
    sdsProcessoItemID: TIntegerField;
    sdsProcessoItemITEM: TIntegerField;
    sdsProcessoItemNOME: TStringField;
    sdsProcessoItemQTD: TIntegerField;
    cdsProcessoItemID: TIntegerField;
    cdsProcessoItemITEM: TIntegerField;
    cdsProcessoItemNOME: TStringField;
    cdsProcessoItemQTD: TIntegerField;
    sdsFaca: TSQLDataSet;
    dspFaca: TDataSetProvider;
    cdsFaca: TClientDataSet;
    dsFaca: TDataSource;
    sdsFichaTecnica: TSQLDataSet;
    dspFichaTecnica: TDataSetProvider;
    cdsFichaTecnica: TClientDataSet;
    dsFichaTecnica: TDataSource;
    sdsFichaTecnicaID: TIntegerField;
    sdsFichaTecnicaREFERENCIA: TStringField;
    sdsFichaTecnicaNOME: TStringField;
    cdsFichaTecnicaID: TIntegerField;
    cdsFichaTecnicaREFERENCIA: TStringField;
    cdsFichaTecnicaNOME: TStringField;
    sdsFacaID: TIntegerField;
    sdsFacaREFERENCIA: TStringField;
    cdsFacaID: TIntegerField;
    cdsFacaREFERENCIA: TStringField;
    sdsProdutoCartoFD: TSQLDataSet;
    sdsProdutoCartoFDID: TIntegerField;
    sdsProdutoCartoFDMATERIAL1: TIntegerField;
    sdsProdutoCartoFDMATERIAL2: TIntegerField;
    sdsProdutoCartoFDMATERIAL3: TIntegerField;
    sdsProdutoCartoFDFECHAMENTO: TStringField;
    sdsProdutoCartoFDFECHAMENTO_CT: TStringField;
    cdsProdutoCartoFD: TClientDataSet;
    cdsProdutoCartoFDID: TIntegerField;
    cdsProdutoCartoFDMATERIAL1: TIntegerField;
    cdsProdutoCartoFDMATERIAL2: TIntegerField;
    cdsProdutoCartoFDMATERIAL3: TIntegerField;
    cdsProdutoCartoFDFECHAMENTO: TStringField;
    cdsProdutoCartoFDFECHAMENTO_CT: TStringField;
    dsProdutoCartoFD: TDataSource;
    sdsProdutoCartoTP: TSQLDataSet;
    sdsProdutoCartoTPID: TIntegerField;
    sdsProdutoCartoTPMATERIAL1: TIntegerField;
    sdsProdutoCartoTPMATERIAL2: TIntegerField;
    sdsProdutoCartoTPMATERIAL3: TIntegerField;
    sdsProdutoCartoTPFECHAMENTO: TStringField;
    cdsProdutoCartoTP: TClientDataSet;
    cdsProdutoCartoTPID: TIntegerField;
    cdsProdutoCartoTPMATERIAL1: TIntegerField;
    cdsProdutoCartoTPMATERIAL2: TIntegerField;
    cdsProdutoCartoTPMATERIAL3: TIntegerField;
    cdsProdutoCartoTPFECHAMENTO: TStringField;
    dsProdutoCartoTP: TDataSource;
    sdsProdutoCartoSP: TSQLDataSet;
    sdsProdutoCartoSPID: TIntegerField;
    sdsProdutoCartoSPMATERIAL1: TIntegerField;
    sdsProdutoCartoSPMATERIAL2: TIntegerField;
    sdsProdutoCartoSPMATERIAL3: TIntegerField;
    sdsProdutoCartoSPFECHAMENTO: TStringField;
    cdsProdutoCartoSP: TClientDataSet;
    cdsProdutoCartoSPID: TIntegerField;
    cdsProdutoCartoSPMATERIAL1: TIntegerField;
    cdsProdutoCartoSPMATERIAL2: TIntegerField;
    cdsProdutoCartoSPMATERIAL3: TIntegerField;
    cdsProdutoCartoSPFECHAMENTO: TStringField;
    dsProdutoCartoSP: TDataSource;
    dsmFaca: TDataSource;
    cdsFacasdsProdutoCartoFD: TDataSetField;
    cdsFacasdsProdutoCartoTP: TDataSetField;
    cdsFacasdsProdutoCartoSP: TDataSetField;
    sdsProcessoItemPOSICAO: TStringField;
    cdsProcessoItemPOSICAO: TStringField;
    sdsProcessoID: TIntegerField;
    sdsProcessoFACA_ID: TIntegerField;
    sdsProcessoFICHA_TEC_ID: TIntegerField;
    sdsProcessoCons: TSQLDataSet;
    dspProcessoCons: TDataSetProvider;
    cdsProcessoCons: TClientDataSet;
    dsProcessoCons: TDataSource;
    sdsProcessoConsID: TIntegerField;
    sdsProcessoConsFACA_ID: TIntegerField;
    sdsProcessoConsFICHA_TEC_ID: TIntegerField;
    sdsProcessoConsFACA: TStringField;
    sdsProcessoConsFICHA_TEC: TStringField;
    cdsProcessoConsID: TIntegerField;
    cdsProcessoConsFACA_ID: TIntegerField;
    cdsProcessoConsFICHA_TEC_ID: TIntegerField;
    cdsProcessoConsFACA: TStringField;
    cdsProcessoConsFICHA_TEC: TStringField;
    procedure dspProcessoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    ctProcesso: String;
  public
    { Public declarations }
    procedure prc_Gravar;
    procedure prc_Localizar(ID: Integer);
  end;

var
  dmProcesso: TdmProcesso;

implementation

uses uDmDatabase;

{$R *.dfm}

procedure TdmProcesso.dspProcessoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TdmProcesso.prc_Gravar;
var
  ID: TTransactionDesc;
begin
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsProcesso.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
end;

procedure TdmProcesso.prc_Localizar(ID: Integer);
begin
  cdsProcesso.Close;
  sdsProcesso.CommandText := ctProcesso;
  if ID <> 0 then
    sdsProcesso.CommandText := sdsProcesso.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsProcesso.Open;
end;

procedure TdmProcesso.DataModuleCreate(Sender: TObject);
begin
  ctProcesso := sdsProcesso.CommandText;  
end;

end.
