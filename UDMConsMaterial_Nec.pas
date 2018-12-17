unit UDMConsMaterial_Nec;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, frxClass,
  frxDBSet, frxExportXLS, frxRich, frxExportMail, frxExportPDF, frxBarcode;

type
  TDMConsMaterial_Nec = class(TDataModule)
    sdsMaterial_Nec: TSQLDataSet;
    dspMaterial_Nec: TDataSetProvider;
    cdsMaterial_Nec: TClientDataSet;
    dsMaterial_Nec: TDataSource;
    cdsMaterial_NecQPED: TFloatField;
    cdsMaterial_NecQREM: TFloatField;
    cdsMaterial_NecID_MATERIAL: TIntegerField;
    cdsMaterial_NecID_COR_MAT: TFMTBCDField;
    cdsMaterial_NecQTD_PED: TFloatField;
    cdsMaterial_NecMATERIAL: TStringField;
    cdsMaterial_NecNOME_COR: TStringField;
    cdsMaterial_NecUNIDADE: TStringField;
    cdsMaterial_NecQTD_REM: TFloatField;
    cdsMaterial_NecQTD_ESTOQUE: TFMTBCDField;
    cdsMaterial_NecQTD_OC: TFloatField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    dsFilial: TDataSource;
    cdsMaterial_NecQTD_ESTOQUE_MIN: TFloatField;
    cdsMaterial_NecQTD_SALDO: TFloatField;
    frxReport1: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxXLSExport1: TfrxXLSExport;
    frxMaterial_Nec: TfrxDBDataset;
    qSaldoProd: TSQLQuery;
    qSaldoProdQTD_PEDIDO: TFloatField;
    qSaldoProdQTD_REMESSA: TFloatField;
    sdsMaterial_Nec_CombMat: TSQLDataSet;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdUSA_CONSUMO_COMB: TStringField;
    sdsMaterial_Rem: TSQLDataSet;
    dspMaterial_Rem: TDataSetProvider;
    cdsMaterial_Rem: TClientDataSet;
    dsMaterial_Rem: TDataSource;
    cdsMaterial_RemNUM_REMESSA: TStringField;
    cdsMaterial_RemID_MATERIAL: TIntegerField;
    cdsMaterial_RemID_COR_MAT: TFMTBCDField;
    cdsMaterial_RemID_SETOR: TIntegerField;
    cdsMaterial_RemMATERIAL: TStringField;
    cdsMaterial_RemNOME_COR: TStringField;
    cdsMaterial_RemNOME_SETOR: TStringField;
    cdsMaterial_RemQTD_NECESSIDADE: TFloatField;
    frxMaterial_Rem: TfrxDBDataset;
    qParametros_Lote: TSQLQuery;
    qParametros_LoteUSA_REMESSA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctMaterial_Nec : String;
    ctMaterial_Nec_CombMat : String;
    ctqSaldoProd : String;
  end;

var
  DMConsMaterial_Nec: TDMConsMaterial_Nec;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsMaterial_Nec.DataModuleCreate(Sender: TObject);
begin
  ctMaterial_Nec         := sdsMaterial_Nec.CommandText;
  ctMaterial_Nec_CombMat := sdsMaterial_Nec_CombMat.CommandText;
  ctqSaldoProd           := qSaldoProd.SQL.Text;
  cdsFilial.Open;
  qParametros_Prod.Open;
  qParametros_Lote.Open;
end;

end.
