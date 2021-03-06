unit UDMConsClienteOBS;

interface

uses
  SysUtils, Classes, LogTypes, FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  TDMConsClienteOBS = class(TDataModule)
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    sdsPessoaOBS: TMemoField;
    sdsPessoaOBS_AVISO: TStringField;
    cdsPessoa: TClientDataSet;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaOBS: TMemoField;
    cdsPessoaOBS_AVISO: TStringField;
    dsPessoa: TDataSource;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaOBS: TMemoField;
    cdsConsultaOBS_AVISO: TStringField;
    cdsConsultaID_CONDPGTO: TIntegerField;
    cdsConsultaNOME_CLIENTE: TStringField;
    cdsConsultaNOME_CONDPGTO: TStringField;
    cdsConsultaID_TAB_PRECO: TIntegerField;
    cdsConsultaNOME_TABPRECO: TStringField;
    cdsConsultaVLR_ULT_FATURAMENTO: TFloatField;
    cdsConsultaDTNOTA: TDateField;
    cdsConsultaDTPEDIDO: TDateField;
    dsConsulta: TDataSource;
    sdsPessoaFANTASIA: TStringField;
    sdsPessoaENDERECO: TStringField;
    sdsPessoaCOMPLEMENTO_END: TStringField;
    sdsPessoaNUM_END: TStringField;
    sdsPessoaBAIRRO: TStringField;
    sdsPessoaID_CIDADE: TIntegerField;
    sdsPessoaCIDADE: TStringField;
    sdsPessoaUF: TStringField;
    sdsPessoaCEP: TStringField;
    sdsPessoaDDDFONE1: TIntegerField;
    sdsPessoaTELEFONE1: TStringField;
    sdsPessoaDDDFONE2: TIntegerField;
    sdsPessoaTELEFONE2: TStringField;
    sdsPessoaDDDFAX: TIntegerField;
    sdsPessoaFAX: TStringField;
    sdsPessoaPESSOA: TStringField;
    sdsPessoaCNPJ_CPF: TStringField;
    sdsPessoaINSCR_EST: TStringField;
    sdsPessoaENDERECO_ENT: TStringField;
    sdsPessoaCOMPLEMENTO_END_ENT: TStringField;
    sdsPessoaNUM_END_ENT: TStringField;
    sdsPessoaBAIRRO_ENT: TStringField;
    sdsPessoaID_CIDADE_ENT: TIntegerField;
    sdsPessoaCIDADE_ENT: TStringField;
    sdsPessoaCEP_ENT: TStringField;
    sdsPessoaUF_ENT: TStringField;
    sdsPessoaPESSOA_ENT: TStringField;
    sdsPessoaCNPJ_CPF_ENT: TStringField;
    sdsPessoaINSC_EST_ENT: TStringField;
    sdsPessoaENDERECO_PGTO: TStringField;
    sdsPessoaCOMPLEMENTO_END_PGTO: TStringField;
    sdsPessoaNUM_END_PGTO: TStringField;
    sdsPessoaBAIRRO_PGTO: TStringField;
    sdsPessoaID_CIDADE_PGTO: TIntegerField;
    sdsPessoaCIDADE_PGTO: TStringField;
    sdsPessoaCEP_PGTO: TStringField;
    sdsPessoaUF_PGTO: TStringField;
    sdsPessoaUSUARIO: TStringField;
    sdsPessoaDTCADASTRO: TDateField;
    sdsPessoaHRCADASTRO: TTimeField;
    sdsPessoaCAIXAPOSTAL: TStringField;
    sdsPessoaRG: TStringField;
    sdsPessoaID_VENDEDOR: TIntegerField;
    sdsPessoaID_CONDPGTO: TIntegerField;
    sdsPessoaID_CONTABOLETO: TIntegerField;
    sdsPessoaID_TRANSPORTADORA: TIntegerField;
    sdsPessoaID_TIPOCOBRANCA: TIntegerField;
    sdsPessoaID_REDESPACHO: TIntegerField;
    sdsPessoaID_PAIS: TIntegerField;
    sdsPessoaID_REGIME_TRIB: TIntegerField;
    sdsPessoaPERC_COMISSAO: TFloatField;
    sdsPessoaDDD_ENT: TIntegerField;
    sdsPessoaFONE_ENT: TStringField;
    sdsPessoaDDD_PGTO: TIntegerField;
    sdsPessoaFONE_PGTO: TStringField;
    sdsPessoaINATIVO: TStringField;
    sdsPessoaHOMEPAGE: TStringField;
    sdsPessoaTIPO_FRETE: TStringField;
    sdsPessoaNOME_ENTREGA: TStringField;
    sdsPessoaEMAIL_NFE: TStringField;
    sdsPessoaEMAIL_PGTO: TStringField;
    sdsPessoaEMAIL_NFE2: TStringField;
    sdsPessoaPESSOA_PGTO: TStringField;
    sdsPessoaCNPJ_CPG_PGTO: TStringField;
    sdsPessoaINSC_EST_PGTO: TStringField;
    sdsPessoaUF_PLACA: TStringField;
    sdsPessoaPLACA: TStringField;
    sdsPessoaTP_CLIENTE: TStringField;
    sdsPessoaTP_FORNECEDOR: TStringField;
    sdsPessoaTP_TRANSPORTADORA: TStringField;
    sdsPessoaTP_VENDEDOR: TStringField;
    sdsPessoaTIPO_ICMS: TStringField;
    sdsPessoaID_TAB_PRECO: TIntegerField;
    sdsPessoaTP_ATELIER: TStringField;
    sdsPessoaTIPO_COMISSAO: TStringField;
    sdsPessoaPERC_COMISSAO_VEND: TFloatField;
    sdsPessoaNOME_CONTATO: TStringField;
    sdsPessoaINSC_MUNICIPAL: TStringField;
    sdsPessoaDT_CONTRATO_INI: TDateField;
    sdsPessoaDT_CONTRATO_FIN: TDateField;
    sdsPessoaID_SERVICO: TIntegerField;
    sdsPessoaID_SERVICO_INT: TIntegerField;
    sdsPessoaVLR_SERVICO: TFloatField;
    sdsPessoaCLIENTE_CONTA_ID: TIntegerField;
    sdsPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    sdsPessoaVENDEDOR_CONTA_ID: TIntegerField;
    sdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField;
    sdsPessoaATELIER_CONTA_ID: TIntegerField;
    sdsPessoaRETEM_ISS: TStringField;
    sdsPessoaRETEM_CSLL: TStringField;
    sdsPessoaRETEM_PISCOFINS: TStringField;
    sdsPessoaRETEM_INSS: TStringField;
    sdsPessoaEMAIL_COMPRAS: TStringField;
    sdsPessoaCONTATO_COMPRAS: TStringField;
    sdsPessoaORGAO_PUBLICO: TStringField;
    sdsPessoaID_NATUREZA: TIntegerField;
    sdsPessoaDIMINUIR_RETENCAO: TStringField;
    sdsPessoaPERC_REDUCAO_INSS: TFloatField;
    sdsPessoaUSA_TRANSFICMS: TStringField;
    sdsPessoaCLIENTE_ESTOQUE: TStringField;
    sdsPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField;
    sdsPessoaCOD_ANT: TIntegerField;
    sdsPessoaID_EDI: TIntegerField;
    sdsPessoaPAI_NOME: TStringField;
    sdsPessoaMAE_NOME: TStringField;
    sdsPessoaTP_ALUNO: TStringField;
    sdsPessoaCOBRAR_TAXA_BANCO: TStringField;
    sdsPessoaVLR_LIMITE_CREDITO: TFloatField;
    sdsPessoaINSC_EST_ST: TStringField;
    sdsPessoaUF_ST: TStringField;
    sdsPessoaTIPO_CONSUMIDOR: TSmallintField;
    sdsPessoaTIPO_CONTRIBUINTE: TSmallintField;
    sdsPessoaINSC_SUFRAMA: TStringField;
    sdsPessoaCOD_ALFA: TStringField;
    sdsPessoaTP_PREPOSTO: TStringField;
    sdsPessoaTP_EXPORTACAO: TStringField;
    sdsPessoaCARIMBO: TStringField;
    sdsPessoaDTPEDIDO: TDateField;
    sdsPessoaDTNOTA: TDateField;
    sdsPessoaPERC_DESC_SUFRAMA: TFloatField;
    sdsPessoaVLR_LIMITE_COMPRA: TFloatField;
    sdsPessoaID_GRUPO: TIntegerField;
    sdsPessoaTP_FUNCIONARIO: TStringField;
    sdsPessoaIMP_COD_PRODUTO_CLI: TStringField;
    sdsPessoaFILIAL: TIntegerField;
    sdsPessoaVLR_ULT_FATURAMENTO: TFloatField;
    sdsPessoaQTD_ULT_FATURAMENTO: TFloatField;
    sdsPessoaCOD_CONTABIL_CLIENTE: TIntegerField;
    sdsPessoaCOD_CONTABIL_FORNECEDOR: TIntegerField;
    sdsPessoaID_REGIAO_VENDA: TIntegerField;
    sdsPessoaTIPO_CREDITO: TStringField;
    sdsPessoaUSUARIO_LOG: TStringField;
    sdsPessoaPROTESTAR: TStringField;
    sdsPessoaID_CARTEIRA: TIntegerField;
    sdsPessoaCELULAR: TStringField;
    sdsPessoaDDDCELULAR: TIntegerField;
    sdsPessoaCONT_CUSTO_LIQ: TStringField;
    sdsPessoaUSA_OC_XML: TStringField;
    sdsPessoaIMP_COR_CLIENTE: TStringField;
    sdsPessoaMOSTRAR_AVISO: TStringField;
    sdsPessoaID_ROTA: TIntegerField;
    sdsPessoaMDIA1: TIntegerField;
    sdsPessoaMDIA2: TIntegerField;
    sdsPessoaASSOCIAR_PROD: TStringField;
    sdsPessoaFUNCIONARIO_CONTA_ID: TIntegerField;
    sdsPessoaBAIXAR_ETIQ_PREFAT: TStringField;
    sdsPessoaCAIXINHA: TStringField;
    sdsPessoaIPI_PAGO_FILIAL: TStringField;
    sdsPessoaIMP_NOMEPROD_CLIENTE: TStringField;
    sdsPessoaSENHA_PEDIDO: TStringField;
    sdsPessoaDESC_MAXIMO: TFloatField;
    sdsPessoaIMP_ETIQUETA_ROT: TStringField;
    sdsPessoaGERAR_PROTESTO: TStringField;
    sdsPessoaID_VENDEDOR_INT: TIntegerField;
    cdsPessoaFANTASIA: TStringField;
    cdsPessoaENDERECO: TStringField;
    cdsPessoaCOMPLEMENTO_END: TStringField;
    cdsPessoaNUM_END: TStringField;
    cdsPessoaBAIRRO: TStringField;
    cdsPessoaID_CIDADE: TIntegerField;
    cdsPessoaCIDADE: TStringField;
    cdsPessoaUF: TStringField;
    cdsPessoaCEP: TStringField;
    cdsPessoaDDDFONE1: TIntegerField;
    cdsPessoaTELEFONE1: TStringField;
    cdsPessoaDDDFONE2: TIntegerField;
    cdsPessoaTELEFONE2: TStringField;
    cdsPessoaDDDFAX: TIntegerField;
    cdsPessoaFAX: TStringField;
    cdsPessoaPESSOA: TStringField;
    cdsPessoaCNPJ_CPF: TStringField;
    cdsPessoaINSCR_EST: TStringField;
    cdsPessoaENDERECO_ENT: TStringField;
    cdsPessoaCOMPLEMENTO_END_ENT: TStringField;
    cdsPessoaNUM_END_ENT: TStringField;
    cdsPessoaBAIRRO_ENT: TStringField;
    cdsPessoaID_CIDADE_ENT: TIntegerField;
    cdsPessoaCIDADE_ENT: TStringField;
    cdsPessoaCEP_ENT: TStringField;
    cdsPessoaUF_ENT: TStringField;
    cdsPessoaPESSOA_ENT: TStringField;
    cdsPessoaCNPJ_CPF_ENT: TStringField;
    cdsPessoaINSC_EST_ENT: TStringField;
    cdsPessoaENDERECO_PGTO: TStringField;
    cdsPessoaCOMPLEMENTO_END_PGTO: TStringField;
    cdsPessoaNUM_END_PGTO: TStringField;
    cdsPessoaBAIRRO_PGTO: TStringField;
    cdsPessoaID_CIDADE_PGTO: TIntegerField;
    cdsPessoaCIDADE_PGTO: TStringField;
    cdsPessoaCEP_PGTO: TStringField;
    cdsPessoaUF_PGTO: TStringField;
    cdsPessoaUSUARIO: TStringField;
    cdsPessoaDTCADASTRO: TDateField;
    cdsPessoaHRCADASTRO: TTimeField;
    cdsPessoaCAIXAPOSTAL: TStringField;
    cdsPessoaRG: TStringField;
    cdsPessoaID_VENDEDOR: TIntegerField;
    cdsPessoaID_CONDPGTO: TIntegerField;
    cdsPessoaID_CONTABOLETO: TIntegerField;
    cdsPessoaID_TRANSPORTADORA: TIntegerField;
    cdsPessoaID_TIPOCOBRANCA: TIntegerField;
    cdsPessoaID_REDESPACHO: TIntegerField;
    cdsPessoaID_PAIS: TIntegerField;
    cdsPessoaID_REGIME_TRIB: TIntegerField;
    cdsPessoaPERC_COMISSAO: TFloatField;
    cdsPessoaDDD_ENT: TIntegerField;
    cdsPessoaFONE_ENT: TStringField;
    cdsPessoaDDD_PGTO: TIntegerField;
    cdsPessoaFONE_PGTO: TStringField;
    cdsPessoaINATIVO: TStringField;
    cdsPessoaHOMEPAGE: TStringField;
    cdsPessoaTIPO_FRETE: TStringField;
    cdsPessoaNOME_ENTREGA: TStringField;
    cdsPessoaEMAIL_NFE: TStringField;
    cdsPessoaEMAIL_PGTO: TStringField;
    cdsPessoaEMAIL_NFE2: TStringField;
    cdsPessoaPESSOA_PGTO: TStringField;
    cdsPessoaCNPJ_CPG_PGTO: TStringField;
    cdsPessoaINSC_EST_PGTO: TStringField;
    cdsPessoaUF_PLACA: TStringField;
    cdsPessoaPLACA: TStringField;
    cdsPessoaTP_CLIENTE: TStringField;
    cdsPessoaTP_FORNECEDOR: TStringField;
    cdsPessoaTP_TRANSPORTADORA: TStringField;
    cdsPessoaTP_VENDEDOR: TStringField;
    cdsPessoaTIPO_ICMS: TStringField;
    cdsPessoaID_TAB_PRECO: TIntegerField;
    cdsPessoaTP_ATELIER: TStringField;
    cdsPessoaTIPO_COMISSAO: TStringField;
    cdsPessoaPERC_COMISSAO_VEND: TFloatField;
    cdsPessoaNOME_CONTATO: TStringField;
    cdsPessoaINSC_MUNICIPAL: TStringField;
    cdsPessoaDT_CONTRATO_INI: TDateField;
    cdsPessoaDT_CONTRATO_FIN: TDateField;
    cdsPessoaID_SERVICO: TIntegerField;
    cdsPessoaID_SERVICO_INT: TIntegerField;
    cdsPessoaVLR_SERVICO: TFloatField;
    cdsPessoaCLIENTE_CONTA_ID: TIntegerField;
    cdsPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    cdsPessoaVENDEDOR_CONTA_ID: TIntegerField;
    cdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField;
    cdsPessoaATELIER_CONTA_ID: TIntegerField;
    cdsPessoaRETEM_ISS: TStringField;
    cdsPessoaRETEM_CSLL: TStringField;
    cdsPessoaRETEM_PISCOFINS: TStringField;
    cdsPessoaRETEM_INSS: TStringField;
    cdsPessoaEMAIL_COMPRAS: TStringField;
    cdsPessoaCONTATO_COMPRAS: TStringField;
    cdsPessoaORGAO_PUBLICO: TStringField;
    cdsPessoaID_NATUREZA: TIntegerField;
    cdsPessoaDIMINUIR_RETENCAO: TStringField;
    cdsPessoaPERC_REDUCAO_INSS: TFloatField;
    cdsPessoaUSA_TRANSFICMS: TStringField;
    cdsPessoaCLIENTE_ESTOQUE: TStringField;
    cdsPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField;
    cdsPessoaCOD_ANT: TIntegerField;
    cdsPessoaID_EDI: TIntegerField;
    cdsPessoaPAI_NOME: TStringField;
    cdsPessoaMAE_NOME: TStringField;
    cdsPessoaTP_ALUNO: TStringField;
    cdsPessoaCOBRAR_TAXA_BANCO: TStringField;
    cdsPessoaVLR_LIMITE_CREDITO: TFloatField;
    cdsPessoaINSC_EST_ST: TStringField;
    cdsPessoaUF_ST: TStringField;
    cdsPessoaTIPO_CONSUMIDOR: TSmallintField;
    cdsPessoaTIPO_CONTRIBUINTE: TSmallintField;
    cdsPessoaINSC_SUFRAMA: TStringField;
    cdsPessoaCOD_ALFA: TStringField;
    cdsPessoaTP_PREPOSTO: TStringField;
    cdsPessoaTP_EXPORTACAO: TStringField;
    cdsPessoaCARIMBO: TStringField;
    cdsPessoaDTPEDIDO: TDateField;
    cdsPessoaDTNOTA: TDateField;
    cdsPessoaPERC_DESC_SUFRAMA: TFloatField;
    cdsPessoaVLR_LIMITE_COMPRA: TFloatField;
    cdsPessoaID_GRUPO: TIntegerField;
    cdsPessoaTP_FUNCIONARIO: TStringField;
    cdsPessoaIMP_COD_PRODUTO_CLI: TStringField;
    cdsPessoaFILIAL: TIntegerField;
    cdsPessoaVLR_ULT_FATURAMENTO: TFloatField;
    cdsPessoaQTD_ULT_FATURAMENTO: TFloatField;
    cdsPessoaCOD_CONTABIL_CLIENTE: TIntegerField;
    cdsPessoaCOD_CONTABIL_FORNECEDOR: TIntegerField;
    cdsPessoaID_REGIAO_VENDA: TIntegerField;
    cdsPessoaTIPO_CREDITO: TStringField;
    cdsPessoaUSUARIO_LOG: TStringField;
    cdsPessoaPROTESTAR: TStringField;
    cdsPessoaID_CARTEIRA: TIntegerField;
    cdsPessoaCELULAR: TStringField;
    cdsPessoaDDDCELULAR: TIntegerField;
    cdsPessoaCONT_CUSTO_LIQ: TStringField;
    cdsPessoaUSA_OC_XML: TStringField;
    cdsPessoaIMP_COR_CLIENTE: TStringField;
    cdsPessoaMOSTRAR_AVISO: TStringField;
    cdsPessoaID_ROTA: TIntegerField;
    cdsPessoaMDIA1: TIntegerField;
    cdsPessoaMDIA2: TIntegerField;
    cdsPessoaASSOCIAR_PROD: TStringField;
    cdsPessoaFUNCIONARIO_CONTA_ID: TIntegerField;
    cdsPessoaBAIXAR_ETIQ_PREFAT: TStringField;
    cdsPessoaCAIXINHA: TStringField;
    cdsPessoaIPI_PAGO_FILIAL: TStringField;
    cdsPessoaIMP_NOMEPROD_CLIENTE: TStringField;
    cdsPessoaSENHA_PEDIDO: TStringField;
    cdsPessoaDESC_MAXIMO: TFloatField;
    cdsPessoaIMP_ETIQUETA_ROT: TStringField;
    cdsPessoaGERAR_PROTESTO: TStringField;
    cdsPessoaID_VENDEDOR_INT: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspPessoaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
  end;

var
  DMConsClienteOBS: TDMConsClienteOBS;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMConsClienteOBS }

procedure TDMConsClienteOBS.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMConsClienteOBS.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
end;

procedure TDMConsClienteOBS.dspPessoaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'PESSOA';
end;

end.
