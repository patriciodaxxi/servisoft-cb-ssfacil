unit UDMConsFrete;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, frxRich,
  frxExportMail, frxClass, frxExportPDF, frxDBSet;

type
  TDMConsFrete = class(TDataModule)
    sdsFrete: TSQLDataSet;
    dspFrete: TDataSetProvider;
    cdsFrete: TClientDataSet;
    dsFrete: TDataSource;
    cdsFreteVLR_FRETE: TFloatField;
    cdsFreteVLR_FRETE_CUSTO: TFloatField;
    cdsFreteID: TIntegerField;
    cdsFreteNUMNOTA: TIntegerField;
    cdsFreteDTEMISSAO: TDateField;
    cdsFreteID_CLIENTE: TIntegerField;
    cdsFreteVLR_ITENS: TFloatField;
    cdsFreteVLR_NOTA: TFloatField;
    cdsFreteID_OPERACAO_NOTA: TIntegerField;
    cdsFreteNOME_CLIENTE: TStringField;
    cdsFreteCNPJ_CPF: TStringField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    dsFilial: TDataSource;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteFANTASIA: TStringField;
    dsCliente: TDataSource;
    cdsFreteSERIE: TStringField;
    frxReport1: TfrxReport;
    frxFrete: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    cdsFreteTIPO_FRETE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctFrete : String;
    vDescOpcao_Rel : String;
    vCabecalho : String;

  end;

var
  DMConsFrete: TDMConsFrete;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsFrete.DataModuleCreate(Sender: TObject);
begin
  ctFrete := sdsFrete.CommandText;
  cdsCliente.Open;
  cdsFilial.Open;
end;

end.
