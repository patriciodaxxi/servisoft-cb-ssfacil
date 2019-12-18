unit UDMConsNCM_CFOP;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, frxClass,
  frxDBSet, frxExportXML, frxExportPDF;

type
  TDMConsNCM_CFOP = class(TDataModule)
    sdsFaturamentoNCM: TSQLDataSet;
    dspFaturamentoNCM: TDataSetProvider;
    cdsFaturamentoNCM: TClientDataSet;
    cdsFaturamentoNCMNCM: TStringField;
    cdsFaturamentoNCMVLR_TOTAL: TFloatField;
    sdsFaturamentoCFOP: TSQLDataSet;
    dspFaturamentoCFOP: TDataSetProvider;
    cdsFaturamentoCFOP: TClientDataSet;
    cdsFaturamentoCFOPCODCFOP: TStringField;
    cdsFaturamentoCFOPVLR_TOTAL: TFloatField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    dsFilial: TDataSource;
    cdsFilialNOME_INTERNO: TStringField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxXMLExport1: TfrxXMLExport;
    frxNCM: TfrxDBDataset;
    frxCFOP: TfrxDBDataset;
    cdsFaturamentoCFOPNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    vComandNCM : String;
    vComandCFOP : String;
  public
    { Public declarations }
  end;

var
  DMConsNCM_CFOP: TDMConsNCM_CFOP;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsNCM_CFOP.DataModuleCreate(Sender: TObject);
begin
  vComandNCM := sdsFaturamentoNCM.CommandText;
  vComandCFOP := sdsFaturamentoCFOP.CommandText;
  cdsFilial.Open;
end;

end.
