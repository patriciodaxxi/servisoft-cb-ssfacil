unit UDMConsFat;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr, frxClass, frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDMConsFat = class(TDataModule)
    sdsFatAcum: TSQLDataSet;
    dspFatAcum: TDataSetProvider;
    cdsFatAcum: TClientDataSet;
    dsFatAcum: TDataSource;
    cdsFatAcumTIPO_MOV: TStringField;
    cdsFatAcumVLR_DUPLICATA: TFloatField;
    cdsFatAcumVLR_LIQUIDO_NFSE: TFloatField;
    cdsFatAcumVLR_TOTAL: TFloatField;
    cdsFatAcumVLR_ICMSSUBST: TFloatField;
    cdsFatAcumVLR_IPI: TFloatField;
    cdsFatAcumID_PESSOA: TIntegerField;
    cdsFatAcumNOME_CLIFORN: TStringField;
    cdsFatAcumNUM_NOTA: TIntegerField;
    cdsFatAcumDTEMISSAO: TDateField;
    cdsFatAcumDTENTRADASAIDA: TDateField;
    cdsFatAcumTIPO_REG: TStringField;
    cdsFatAcumFILIAL: TIntegerField;
    cdsFatAcumUF_CLI: TStringField;
    cdsFatAcumID_CFOP: TIntegerField;
    cdsFatAcumVLR_DESCONTO: TFloatField;
    cdsFatAcumVLR_PIS: TFloatField;
    cdsFatAcumVLR_COFINS: TFloatField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    dsFilial: TDataSource;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    cdsFatAcumVLR_ICMS: TFloatField;
    cdsFatAcumVLR_TOTAL_LIQ: TFloatField;
    cdsFatAcumCODCFOP: TStringField;
    cdsFatAcumVLR_TOTAL_BRU: TFloatField;
    cdsFatAcumVLR_FRETE: TFloatField;
    cdsFatAcumDEVOLUCAO: TStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    cdsFatAcumVLR_ICMS_UF_REMET: TFloatField;
    cdsFatAcumVLR_ICMS_UF_DEST: TFloatField;
    cdsFilialPERC_IR: TFloatField;
    cdsFilialPERC_CSLL: TFloatField;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    cdsFatAcumVLR_CUSTO: TFloatField;
    cdsFatAcumVLR_IR_VENDA: TFloatField;
    cdsFatAcumVLR_CSLL_VENDA: TFloatField;
    sdsCupomTerminal: TSQLDataSet;
    dspCupomTerminal: TDataSetProvider;
    cdsCupomTerminal: TClientDataSet;
    dsCupomTerminar: TDataSource;
    cdsCupomTerminalID: TSmallintField;
    cdsCupomTerminalNOME: TStringField;
    sdsComprasServicos: TSQLDataSet;
    dspComprasServicos: TDataSetProvider;
    cdsComprasServicos: TClientDataSet;
    dsComprasServico: TDataSource;
    sdsConsComprasServico: TSQLDataSet;
    dspConsComprasServico: TDataSetProvider;
    cdsConsComprasServico: TClientDataSet;
    dsConsComprasServico: TDataSource;
    cdsConsComprasServicoID: TIntegerField;
    cdsConsComprasServicoCONTA_ORCAMENTO: TStringField;
    frxComprasServicos: TfrxDBDataset;
    cdsComprasServicosCONTA: TStringField;
    cdsComprasServicosNOME_CONTA: TStringField;
    cdsComprasServicosDTEMISSAO: TDateField;
    cdsComprasServicosCODIGO: TIntegerField;
    cdsComprasServicosNOME_CLI: TStringField;
    cdsComprasServicosSERIE: TStringField;
    cdsComprasServicosNUMNOTA: TIntegerField;
    cdsComprasServicosCODCFOP: TStringField;
    cdsComprasServicosESPECIE: TStringField;
    cdsComprasServicosVALOR_LIQUIDO: TFloatField;
    cdsComprasServicosVLR_ICMS: TFloatField;
    cdsComprasServicosVLR_IPI: TFloatField;
    cdsComprasServicosVLR_PIS: TFloatField;
    cdsComprasServicosVLR_COFINS: TFloatField;
    cdsComprasServicosVLR_NOTA: TFloatField;
    cdsComprasServicosID_CONTA_ORCAMENTO: TIntegerField;
    cdsComprasServicosMEDIA_DIAS: TFMTBCDField;
    cdsComprasServicosCTA_CONTA: TStringField;
    sdsConsCliente: TSQLDataSet;
    dspConsCliente: TDataSetProvider;
    cdsConsCliente: TClientDataSet;
    dsConsCliente: TDataSource;
    cdsConsClienteID_PESSOA: TIntegerField;
    cdsConsClienteNOME_CLIFORN: TStringField;
    cdsConsClienteVLR_DUPLICATA: TFloatField;
    cdsConsClienteVLR_ICMS: TFloatField;
    cdsConsClienteVLR_TOTAL: TFloatField;
    cdsConsClienteVLR_ICMSSUBST: TFloatField;
    cdsConsClienteVLR_IPI: TFloatField;
    cdsConsClienteVLR_FRETE: TFloatField;
    cdsConsClienteVLR_ICMS_UF_REMET: TFloatField;
    cdsConsClienteVLR_ICMS_UF_DEST: TFloatField;
    cdsConsClienteVLR_DESCONTO: TFloatField;
    cdsConsClienteVLR_COFINS: TFloatField;
    cdsConsClienteVLR_PIS: TFloatField;
    cdsConsClienteVLR_CUSTO: TFloatField;
    cdsConsClienteVLR_IR_VENDA: TFloatField;
    cdsConsClienteVLR_CSLL_VENDA: TFloatField;
    cdsConsClienteVLR_TOTAL_BRU: TFloatField;
    cdsConsClienteVLR_TOTAL_LIQ: TFloatField;
    frxConsCliente: TfrxDBDataset;
    sdsConsData: TSQLDataSet;
    dspConsData: TDataSetProvider;
    cdsConsData: TClientDataSet;
    dsConsData: TDataSource;
    cdsConsDataDTEMISSAO: TDateField;
    cdsConsDataVLR_DUPLICATA: TFloatField;
    cdsConsDataVLR_ICMS: TFloatField;
    cdsConsDataVLR_TOTAL: TFloatField;
    cdsConsDataVLR_ICMSSUBST: TFloatField;
    cdsConsDataVLR_IPI: TFloatField;
    cdsConsDataVLR_FRETE: TFloatField;
    cdsConsDataVLR_ICMS_UF_REMET: TFloatField;
    cdsConsDataVLR_ICMS_UF_DEST: TFloatField;
    cdsConsDataVLR_DESCONTO: TFloatField;
    cdsConsDataVLR_COFINS: TFloatField;
    cdsConsDataVLR_PIS: TFloatField;
    cdsConsDataVLR_CUSTO: TFloatField;
    cdsConsDataVLR_IR_VENDA: TFloatField;
    cdsConsDataVLR_CSLL_VENDA: TFloatField;
    cdsConsDataVLR_TOTAL_BRU: TFloatField;
    frxConsData: TfrxDBDataset;
    cdsConsDataVLR_TOTAL_LIQ: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure cdsComprasServicosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    ctFatAcum, ctComprasServico, ctConsCliente: String;
    vDataIni, vDataFim: String;
  end;

var
  DMConsFat: TDMConsFat;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsFat.DataModuleCreate(Sender: TObject);
begin
  ctFatAcum := sdsFatAcum.CommandText;
  ctComprasServico := sdsComprasServicos.CommandText;
  ctConsCliente := sdsConsCliente.CommandText;
  cdsFilial.Open;
  cdsCupomTerminal.Open;
end;

procedure TDMConsFat.frxReport1BeforePrint(Sender: TfrxReportComponent);
begin
  TfrxMemoView(frxReport1.FindComponent('Memo2')).Text := 'Período de ' + vDataIni + ' até ' + vDataFim;
end;

procedure TDMConsFat.cdsComprasServicosCalcFields(DataSet: TDataSet);
begin
  if (cdsComprasServicosCONTA.AsString <> '') and (cdsComprasServicosNOME_CONTA.AsString <> '') then
    cdsComprasServicosCTA_CONTA.AsString := cdsComprasServicosCONTA.AsString + ' - ' + cdsComprasServicosNOME_CONTA.AsString;
end;

end.
