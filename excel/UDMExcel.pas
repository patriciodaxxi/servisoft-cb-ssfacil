unit UDMExcel;

interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, DB, Provider, DBClient;

type
  TDMExcel = class(TDataModule)
    mAuxiliar: TClientDataSet;
    mAuxiliarCodigo: TStringField;
    mAuxiliarNome: TStringField;
    mAuxiliarEmbalagem: TFloatField;
    mAuxiliarQtd: TFloatField;
    mAuxiliarVlr_Unitario: TFloatField;
    mAuxiliarVlr_Total: TFloatField;
    mAuxiliarDespacho_Minimo: TFloatField;
    dsmAuxiliar: TDataSource;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoNOME: TStringField;
    cdsProdutoEMBALAGEM: TIntegerField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoQUANTIDADE: TIntegerField;
    cdsProdutoVLR_TOTAL: TIntegerField;
    cdsProdutoDESPACHO_MIN: TIntegerField;
    cdsProdutoCOD_GRUPO: TStringField;
    cdsProdutoNOME_GRUPO: TStringField;
    dsProduto: TDataSource;
    sdsProduto: TSQLDataSet;
    sdsProdutoNOME: TStringField;
    sdsProdutoEMBALAGEM: TIntegerField;
    sdsProdutoPRECO_VENDA: TFloatField;
    sdsProdutoQUANTIDADE: TIntegerField;
    sdsProdutoVLR_TOTAL: TIntegerField;
    sdsProdutoDESPACHO_MIN: TIntegerField;
    sdsProdutoCOD_GRUPO: TStringField;
    sdsProdutoNOME_GRUPO: TStringField;
    qCliente: TSQLQuery;
    qClienteCODIGO: TIntegerField;
    qClienteNOME: TStringField;
    qClientePESSOA: TStringField;
    qClienteCNPJ_CPF: TStringField;
    qParametros: TSQLQuery;
    qParametrosOBS_EXPORTACAO_EXCEL: TMemoField;
    qParametrosEND_SALVAR_EXCEL_EXP: TStringField;
    sdsCFOP: TSQLDataSet;
    sdsCFOPID: TIntegerField;
    sdsCFOPCODCFOP: TStringField;
    sdsCFOPNOME: TStringField;
    sdsCFOPENTRADASAIDA: TStringField;
    sdsCFOPGERAR_IPI: TStringField;
    sdsCFOPGERAR_ICMS: TStringField;
    sdsCFOPGERAR_DUPLICATA: TStringField;
    sdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    sdsCFOPNOME_INTERNO: TStringField;
    sdsCFOPID_CSTICMS: TIntegerField;
    sdsCFOPID_CSTIPI: TIntegerField;
    sdsCFOPCOPIARNOTATRIANGULAR: TStringField;
    sdsCFOPID_PIS: TIntegerField;
    sdsCFOPID_COFINS: TIntegerField;
    sdsCFOPTIPO_PIS: TStringField;
    sdsCFOPTIPO_COFINS: TStringField;
    sdsCFOPGERAR_ICMS_SIMPLES: TStringField;
    sdsCFOPTIPO_EMPRESA: TStringField;
    sdsCFOPSUBSTITUICAO_TRIB: TStringField;
    sdsCFOPMVA: TStringField;
    sdsCFOPPERC_COFINS: TFloatField;
    sdsCFOPPERC_PIS: TFloatField;
    sdsCFOPMAOOBRA: TStringField;
    sdsCFOPLEI: TMemoField;
    dspCFOP: TDataSetProvider;
    cdsCFOP: TClientDataSet;
    cdsCFOPID: TIntegerField;
    cdsCFOPCODCFOP: TStringField;
    cdsCFOPNOME: TStringField;
    cdsCFOPENTRADASAIDA: TStringField;
    cdsCFOPGERAR_IPI: TStringField;
    cdsCFOPGERAR_ICMS: TStringField;
    cdsCFOPGERAR_DUPLICATA: TStringField;
    cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    cdsCFOPNOME_INTERNO: TStringField;
    cdsCFOPID_CSTICMS: TIntegerField;
    cdsCFOPID_CSTIPI: TIntegerField;
    cdsCFOPCOPIARNOTATRIANGULAR: TStringField;
    cdsCFOPID_PIS: TIntegerField;
    cdsCFOPID_COFINS: TIntegerField;
    cdsCFOPTIPO_PIS: TStringField;
    cdsCFOPTIPO_COFINS: TStringField;
    cdsCFOPGERAR_ICMS_SIMPLES: TStringField;
    cdsCFOPTIPO_EMPRESA: TStringField;
    cdsCFOPSUBSTITUICAO_TRIB: TStringField;
    cdsCFOPMVA: TStringField;
    cdsCFOPPERC_COFINS: TFloatField;
    cdsCFOPPERC_PIS: TFloatField;
    cdsCFOPsdsCFOP_Variacao: TDataSetField;
    cdsCFOPMAOOBRA: TStringField;
    cdsCFOPLEI: TMemoField;
    dsCFOP: TDataSource;
    sdsCFOP_Variacao: TSQLDataSet;
    sdsCFOP_VariacaoID: TIntegerField;
    sdsCFOP_VariacaoITEM: TIntegerField;
    sdsCFOP_VariacaoID_CSTICMS: TIntegerField;
    sdsCFOP_VariacaoID_CSTIPI: TIntegerField;
    sdsCFOP_VariacaoID_PIS: TIntegerField;
    sdsCFOP_VariacaoID_COFINS: TIntegerField;
    sdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField;
    sdsCFOP_VariacaoTIPO_EMPRESA: TStringField;
    sdsCFOP_VariacaoTIPO_CLIENTE: TStringField;
    sdsCFOP_VariacaoUF_CLIENTE: TStringField;
    sdsCFOP_VariacaoFINALIDADE: TStringField;
    sdsCFOP_VariacaoCONTROLAR_ICMS: TStringField;
    sdsCFOP_VariacaoCONTROLAR_REDUCAO: TStringField;
    sdsCFOP_VariacaoCONTROLAR_IPI: TStringField;
    sdsCFOP_VariacaoCONTROLAR_SUBSTICMS: TStringField;
    sdsCFOP_VariacaoCONTROLAR_DIFERIMENTO: TStringField;
    sdsCFOP_VariacaoNOME: TStringField;
    cdsCFOP_Variacao: TClientDataSet;
    cdsCFOP_VariacaoID: TIntegerField;
    cdsCFOP_VariacaoITEM: TIntegerField;
    cdsCFOP_VariacaoID_CSTICMS: TIntegerField;
    cdsCFOP_VariacaoID_CSTIPI: TIntegerField;
    cdsCFOP_VariacaoID_PIS: TIntegerField;
    cdsCFOP_VariacaoID_COFINS: TIntegerField;
    cdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField;
    cdsCFOP_VariacaoTIPO_EMPRESA: TStringField;
    cdsCFOP_VariacaoTIPO_CLIENTE: TStringField;
    cdsCFOP_VariacaoUF_CLIENTE: TStringField;
    cdsCFOP_VariacaoFINALIDADE: TStringField;
    cdsCFOP_VariacaoCONTROLAR_ICMS: TStringField;
    cdsCFOP_VariacaoCONTROLAR_REDUCAO: TStringField;
    cdsCFOP_VariacaoCONTROLAR_IPI: TStringField;
    cdsCFOP_VariacaoCONTROLAR_SUBSTICMS: TStringField;
    cdsCFOP_VariacaoCONTROLAR_DIFERIMENTO: TStringField;
    cdsCFOP_VariacaoNOME: TStringField;
    dsCFOP_Variacao: TDataSource;
    dsCFOP_Mestre: TDataSource;
    sdsVendedor: TSQLDataSet;
    sdsVendedorCODIGO: TIntegerField;
    sdsVendedorNOME: TStringField;
    sdsVendedorPERC_COMISSAO: TFloatField;
    sdsVendedorPERC_COMISSAO_VEND: TFloatField;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorPERC_COMISSAO: TFloatField;
    cdsVendedorPERC_COMISSAO_VEND: TFloatField;
    dsVendedor: TDataSource;
    qTab_Preco: TSQLQuery;
    qTab_PrecoID: TIntegerField;
    qTab_PrecoITEM: TIntegerField;
    qTab_PrecoID_PRODUTO: TIntegerField;
    qTab_PrecoVLR_VENDA: TFloatField;
    sdsProdutoREFERENCIA: TStringField;
    cdsProdutoREFERENCIA: TStringField;
    mAuxiliarReferencia: TStringField;
    qProduto: TSQLQuery;
    qProdutoID: TIntegerField;
    qProdutoREFERENCIA: TStringField;
    mAuxiliarExiste_Produto: TBooleanField;
    sdsOperacao_Nota: TSQLDataSet;
    dspOperacao_Nota: TDataSetProvider;
    cdsOperacao_Nota: TClientDataSet;
    cdsOperacao_NotaID: TIntegerField;
    cdsOperacao_NotaNOME: TStringField;
    cdsOperacao_NotaPEDIR_FINALIDADE: TStringField;
    cdsOperacao_NotaNATUREZA_NOTA: TStringField;
    cdsOperacao_NotaSERIE_NFE: TStringField;
    cdsOperacao_NotaMOSTRAR_CLI_TRIANG2: TStringField;
    dsOperacao_Nota: TDataSource;
    qProdutoNCM: TStringField;
    qProdutoID_NCM: TIntegerField;
    mAuxiliarID_NCM: TIntegerField;
    mAuxiliarID_CFOP: TIntegerField;
    qProdutoGERAR_ST: TStringField;
    mAuxiliarCalc_ST: TStringField;
    mAuxiliarlkCFOP: TStringField;
    sdsNCM: TSQLDataSet;
    dspNCM: TDataSetProvider;
    cdsNCM: TClientDataSet;
    dsNCM: TDataSource;
    cdsNCMID: TIntegerField;
    cdsNCMNCM: TStringField;
    cdsNCMGERAR_ST: TStringField;
    mAuxiliarlkNCM: TStringField;
    mAuxiliarOrigem_Prod: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMExcel: TDMExcel;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMExcel.DataModuleCreate(Sender: TObject);
begin
  cdsCFOP.Close;
  cdsCFOP.Open;
  cdsVendedor.Close;
  cdsVendedor.Open;
  cdsOperacao_Nota.Open;
  cdsNCM.Open;
end;

end.
