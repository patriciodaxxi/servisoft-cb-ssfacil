unit uDmAcabado;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXpress;

type
  TdmAcabado = class(TDataModule)
    sdsAcabado: TSQLDataSet;
    cdsAcabado: TClientDataSet;
    dsAcabado: TDataSource;
    sdsAcabadoCons: TSQLDataSet;
    dspAcabadoCons: TDataSetProvider;
    cdsAcabadoCons: TClientDataSet;
    dsAcabadoCons: TDataSource;
    sdsFaca: TSQLDataSet;
    dspFaca: TDataSetProvider;
    cdsFaca: TClientDataSet;
    dsFaca: TDataSource;
    sdsFichaTecnica: TSQLDataSet;
    dspFichaTecnica: TDataSetProvider;
    cdsFichaTecnica: TClientDataSet;
    dsFichaTecnica: TDataSource;
    sdsPasta: TSQLDataSet;
    dspPasta: TDataSetProvider;
    cdsPasta: TClientDataSet;
    dsPasta: TDataSource;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsProdutoID: TIntegerField;
    sdsProdutoREFERENCIA: TStringField;
    sdsProdutoNOME: TStringField;
    sdsProdutoINATIVO: TStringField;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoINATIVO: TStringField;
    dsmProduto: TDataSource;
    cdsProdutosdsAcabado: TDataSetField;
    sdsFacaID: TIntegerField;
    sdsFacaNOME: TStringField;
    cdsPastaID: TIntegerField;
    cdsPastaDESCRICAO: TStringField;
    sdsPastaID: TIntegerField;
    sdsPastaDESCRICAO: TStringField;
    cdsFacaID: TIntegerField;
    cdsFacaNOME: TStringField;
    cdsFichaTecnicaID: TIntegerField;
    cdsFichaTecnicaNOME: TStringField;
    sdsAcabadoID: TIntegerField;
    sdsAcabadoFACA_ID: TIntegerField;
    sdsAcabadoFICHA_TEC_ID: TIntegerField;
    sdsAcabadoPASTA_ID: TIntegerField;
    cdsAcabadoID: TIntegerField;
    cdsAcabadoFACA_ID: TIntegerField;
    cdsAcabadoFICHA_TEC_ID: TIntegerField;
    cdsAcabadoPASTA_ID: TIntegerField;
    sdsFichaTecnicaID: TIntegerField;
    sdsFichaTecnicaNOME: TStringField;
    sdsAcabadoConsID: TIntegerField;
    sdsAcabadoConsREFERENCIA: TStringField;
    sdsAcabadoConsNOME: TStringField;
    sdsAcabadoConsFACA_ID: TIntegerField;
    sdsAcabadoConsFICHA_TEC_ID: TIntegerField;
    sdsAcabadoConsPASTA_ID: TIntegerField;
    sdsAcabadoConsFICHATECNICA: TStringField;
    sdsAcabadoConsFACA: TStringField;
    sdsAcabadoConsPASTA: TStringField;
    cdsAcabadoConsID: TIntegerField;
    cdsAcabadoConsREFERENCIA: TStringField;
    cdsAcabadoConsNOME: TStringField;
    cdsAcabadoConsFACA_ID: TIntegerField;
    cdsAcabadoConsFICHA_TEC_ID: TIntegerField;
    cdsAcabadoConsPASTA_ID: TIntegerField;
    cdsAcabadoConsFICHATECNICA: TStringField;
    cdsAcabadoConsFACA: TStringField;
    cdsAcabadoConsPASTA: TStringField;
    sdsAcabadoProcesso: TSQLDataSet;
    cdsAcabadoProcesso: TClientDataSet;
    dsAcabadoProcesso: TDataSource;
    cdsProdutosdsAcabadoProcesso: TDataSetField;
    sdsAcabadoProcessoID: TIntegerField;
    sdsAcabadoProcessoPOSICAO: TStringField;
    sdsAcabadoProcessoITEM: TIntegerField;
    sdsAcabadoProcessoDESCRICAO: TStringField;
    cdsAcabadoProcessoID: TIntegerField;
    cdsAcabadoProcessoPOSICAO: TStringField;
    cdsAcabadoProcessoITEM: TIntegerField;
    cdsAcabadoProcessoDESCRICAO: TStringField;
    sdsFacaFECHAMENTO_FD: TStringField;
    sdsFacaFECHAMENTO_TP: TStringField;
    sdsFacaFECHAMENTO_SP: TStringField;
    cdsFacaFECHAMENTO_FD: TStringField;
    cdsFacaFECHAMENTO_TP: TStringField;
    cdsFacaFECHAMENTO_SP: TStringField;
    sdsFacaFECHAMENTO_CT: TStringField;
    cdsFacaFECHAMENTO_CT: TStringField;
    sdsProdutoORIGEM_PROD: TStringField;
    sdsProdutoTIPO_REG: TStringField;
    sdsProdutoPOSSE_MATERIAL: TStringField;
    sdsProdutoMATERIAL_OUTROS: TStringField;
    sdsProdutoESTOQUE: TStringField;
    sdsProdutoID_NCM: TIntegerField;
    sdsProdutoPERC_IPI: TFloatField;
    cdsProdutoORIGEM_PROD: TStringField;
    cdsProdutoTIPO_REG: TStringField;
    cdsProdutoPOSSE_MATERIAL: TStringField;
    cdsProdutoMATERIAL_OUTROS: TStringField;
    cdsProdutoESTOQUE: TStringField;
    cdsProdutoID_NCM: TIntegerField;
    cdsProdutoPERC_IPI: TFloatField;
    sdsProdutoPERC_REDUCAOICMSSUBST: TFloatField;
    cdsProdutoPERC_REDUCAOICMSSUBST: TFloatField;
    sdsNCM: TSQLDataSet;
    dspNCM: TDataSetProvider;
    cdsNCM: TClientDataSet;
    dsNCM: TDataSource;
    sdsNCMID: TIntegerField;
    sdsNCMNCM: TStringField;
    cdsNCMID: TIntegerField;
    cdsNCMNCM: TStringField;
    sdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoPRECO_VENDA: TFloatField;
    sdsParametros: TSQLDataSet;
    dspParametros: TDataSetProvider;
    cdsParametros: TClientDataSet;
    dsParametros: TDataSource;
    sdsParametrosID_NCM_PADRAO: TIntegerField;
    sdsParametrosPERC_IPI_PADRAO: TFloatField;
    sdsProdutoUNIDADE: TStringField;
    cdsProdutoUNIDADE: TStringField;
    sdsUnidade: TSQLDataSet;
    dspUnidade: TDataSetProvider;
    cdsUnidade: TClientDataSet;
    dsUnidade: TDataSource;
    sdsUnidadeUNIDADE: TStringField;
    cdsUnidadeUNIDADE: TStringField;
    sdsProdutoLOCALIZACAO: TStringField;
    sdsAcabadoConsLOCALIZACAO: TStringField;
    cdsAcabadoConsLOCALIZACAO: TStringField;
    cdsProdutoLOCALIZACAO: TStringField;
    procedure dspAcabadoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsProdutoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    ctProduto: String;
  public
    { Public declarations }
    procedure prc_Gravar;
    procedure prc_Localizar(ID: Integer);
  end;

var
  dmAcabado: TdmAcabado;

implementation

uses uDmDatabase;

{$R *.dfm}

procedure TdmAcabado.dspAcabadoUpdateError(Sender: TObject; DataSet: TCustomClientDataSet;
  E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TdmAcabado.prc_Gravar;
var
  ID: TTransactionDesc;
begin
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsAcabado.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
end;

procedure TdmAcabado.prc_Localizar(ID: Integer);
begin
  cdsProduto.Close;
  sdsProduto.CommandText := ctProduto;
  if ID <> 0 then
    sdsProduto.CommandText := sdsProduto.CommandText + ' AND ID = ' + IntToStr(ID);
  cdsProduto.Open;
end;

procedure TdmAcabado.DataModuleCreate(Sender: TObject);
begin
  ctProduto := sdsProduto.CommandText;
end;

procedure TdmAcabado.cdsProdutoNewRecord(DataSet: TDataSet);
begin
  if not cdsProduto.Active then
    prc_Localizar(-1);

  cdsProdutoID.AsInteger := dmDatabase.ProximaSequencia('PRODUTO',0);
  cdsProdutoINATIVO.AsString              := 'N';
  cdsProdutoORIGEM_PROD.AsString          := '0';
  cdsProdutoESTOQUE.AsString              := 'S';
  cdsProdutoTIPO_REG.AsString             := 'P';
  cdsProdutoPOSSE_MATERIAL.AsString       := 'E';
  cdsProdutoMATERIAL_OUTROS.AsString      := 'P';
  cdsProdutoPERC_REDUCAOICMSSUBST.AsFloat := 0;
//  cdsProdutoUNIDADE.AsString              := 'UN';
  cdsParametros.Close;
  cdsParametros.Open;
  cdsProdutoPERC_IPI.AsFloat              := cdsParametros.FieldByName('PERC_IPI_PADRAO').AsFloat;
  cdsProdutoID_NCM.AsFloat                := cdsParametros.FieldByName('ID_NCM_PADRAO').AsFloat;
  cdsParametros.Close;
end;

end.
