unit UDMCob_Eletronica;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, dbXPress, RLBoleto, LogTypes, frxClass, frxDBSet, frxRich,
  frxExportMail, frxExportPDF;

type
  TDMCob_Eletronica = class(TDataModule)
    sdsDuplicata: TSQLDataSet;
    sdsDuplicataID: TIntegerField;
    sdsDuplicataTIPO_ES: TStringField;
    sdsDuplicataFILIAL: TIntegerField;
    sdsDuplicataID_NOTA: TIntegerField;
    sdsDuplicataPARCELA: TIntegerField;
    sdsDuplicataNUMDUPLICATA: TStringField;
    sdsDuplicataNUMNOTA: TIntegerField;
    sdsDuplicataSERIE: TStringField;
    sdsDuplicataDTVENCIMENTO: TDateField;
    sdsDuplicataVLR_PARCELA: TFloatField;
    sdsDuplicataVLR_RESTANTE: TFloatField;
    sdsDuplicataVLR_PAGO: TFloatField;
    sdsDuplicataVLR_DEVOLUCAO: TFloatField;
    sdsDuplicataVLR_DESPESAS: TFloatField;
    sdsDuplicataVLR_DESCONTO: TFloatField;
    sdsDuplicataVLR_JUROSPAGOS: TFloatField;
    sdsDuplicataVLR_COMISSAO: TFloatField;
    sdsDuplicataPERC_COMISSAO: TFloatField;
    sdsDuplicataDTULTPAGAMENTO: TDateField;
    sdsDuplicataID_PESSOA: TIntegerField;
    sdsDuplicataID_CONTA: TIntegerField;
    sdsDuplicataID_TIPOCOBRANCA: TIntegerField;
    sdsDuplicataID_VENDEDOR: TIntegerField;
    sdsDuplicataID_CONTA_BOLETO: TIntegerField;
    sdsDuplicataID_COMISSAO: TIntegerField;
    sdsDuplicataQTD_DIASATRASO: TIntegerField;
    sdsDuplicataDTRECEBIMENTO_TITULO: TDateField;
    sdsDuplicataDTEMISSAO: TDateField;
    sdsDuplicataPAGO_CARTORIO: TStringField;
    sdsDuplicataPROTESTADO: TStringField;
    sdsDuplicataTIPO_LANCAMENTO: TStringField;
    sdsDuplicataARQUIVO_GERADO: TStringField;
    sdsDuplicataTRANSFERENCIA_ICMS: TStringField;
    sdsDuplicataNOSSONUMERO: TStringField;
    sdsDuplicataDTFINANCEIRO: TDateField;
    sdsDuplicataNUMCHEQUE: TIntegerField;
    sdsDuplicataACEITE: TStringField;
    sdsDuplicataID_COB_ELETRONICA: TIntegerField;
    sdsDuplicataBOLETO_IMP: TStringField;
    sdsDuplicataNOME_CLIENTE: TStringField;
    dspDuplicata: TDataSetProvider;
    cdsDuplicata: TClientDataSet;
    cdsDuplicataID: TIntegerField;
    cdsDuplicataTIPO_ES: TStringField;
    cdsDuplicataFILIAL: TIntegerField;
    cdsDuplicataID_NOTA: TIntegerField;
    cdsDuplicataPARCELA: TIntegerField;
    cdsDuplicataNUMDUPLICATA: TStringField;
    cdsDuplicataNUMNOTA: TIntegerField;
    cdsDuplicataSERIE: TStringField;
    cdsDuplicataDTVENCIMENTO: TDateField;
    cdsDuplicataVLR_PARCELA: TFloatField;
    cdsDuplicataVLR_RESTANTE: TFloatField;
    cdsDuplicataVLR_PAGO: TFloatField;
    cdsDuplicataVLR_DEVOLUCAO: TFloatField;
    cdsDuplicataVLR_DESPESAS: TFloatField;
    cdsDuplicataVLR_DESCONTO: TFloatField;
    cdsDuplicataVLR_JUROSPAGOS: TFloatField;
    cdsDuplicataVLR_COMISSAO: TFloatField;
    cdsDuplicataPERC_COMISSAO: TFloatField;
    cdsDuplicataDTULTPAGAMENTO: TDateField;
    cdsDuplicataID_PESSOA: TIntegerField;
    cdsDuplicataID_CONTA: TIntegerField;
    cdsDuplicataID_TIPOCOBRANCA: TIntegerField;
    cdsDuplicataID_VENDEDOR: TIntegerField;
    cdsDuplicataID_CONTA_BOLETO: TIntegerField;
    cdsDuplicataID_COMISSAO: TIntegerField;
    cdsDuplicataQTD_DIASATRASO: TIntegerField;
    cdsDuplicataDTRECEBIMENTO_TITULO: TDateField;
    cdsDuplicataDTEMISSAO: TDateField;
    cdsDuplicataPAGO_CARTORIO: TStringField;
    cdsDuplicataPROTESTADO: TStringField;
    cdsDuplicataTIPO_LANCAMENTO: TStringField;
    cdsDuplicataARQUIVO_GERADO: TStringField;
    cdsDuplicataTRANSFERENCIA_ICMS: TStringField;
    cdsDuplicataNOSSONUMERO: TStringField;
    cdsDuplicataDTFINANCEIRO: TDateField;
    cdsDuplicataNUMCHEQUE: TIntegerField;
    cdsDuplicataACEITE: TStringField;
    cdsDuplicataID_COB_ELETRONICA: TIntegerField;
    cdsDuplicataBOLETO_IMP: TStringField;
    cdsDuplicataNOME_CLIENTE: TStringField;
    dsDuplicata: TDataSource;
    sdsDuplicataID_CARTEIRA: TIntegerField;
    sdsDuplicataID_BANCO: TIntegerField;
    cdsDuplicataID_CARTEIRA: TIntegerField;
    cdsDuplicataID_BANCO: TIntegerField;
    sdsDuplicataNOME_CONTA: TStringField;
    cdsDuplicataNOME_CONTA: TStringField;
    sdsContas_Calculo: TSQLDataSet;
    dspContas_calculo: TDataSetProvider;
    cdsContas_calculo: TClientDataSet;
    dsContas_calculo: TDataSource;
    sdsContas_CalculoID: TIntegerField;
    sdsContas_CalculoANO: TIntegerField;
    sdsContas_CalculoITEM: TIntegerField;
    cdsContas_calculoID: TIntegerField;
    cdsContas_calculoANO: TIntegerField;
    cdsContas_calculoITEM: TIntegerField;
    sdsContas: TSQLDataSet;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    dsContas: TDataSource;
    cdsContasID: TIntegerField;
    cdsContasNOME: TStringField;
    cdsContasAGENCIA: TStringField;
    cdsContasFILIAL: TIntegerField;
    cdsContasNUMCONTA: TStringField;
    cdsContasCNAB: TStringField;
    cdsContasDTENCERRAMENTO: TDateField;
    cdsContasID_TIPOCOBRANCA: TIntegerField;
    cdsContasDESCRICAO_NOTA: TStringField;
    cdsContasTIPO_CONTA: TStringField;
    cdsContasID_BANCO: TIntegerField;
    cdsContasDIG_CONTA: TStringField;
    cdsContasCOD_CEDENTE: TStringField;
    cdsContasACEITE: TStringField;
    cdsContasID_OCORRENCIA: TIntegerField;
    cdsContasDIAS_PROTESTO: TIntegerField;
    cdsContasID_ESPECIE: TIntegerField;
    cdsContasID_CARTEIRA: TIntegerField;
    cdsContasID_INSTRUCAO1: TIntegerField;
    cdsContasID_INSTRUCAO2: TIntegerField;
    cdsContasID_TIPO_COBRANCA: TIntegerField;
    cdsContasMOEDA: TStringField;
    cdsContasVARIACAO_CARTEIRA: TStringField;
    cdsContasTIPO_DOCUMENTO: TStringField;
    cdsContasCOD_TRANSMISSAO: TStringField;
    cdsContasMENSAGEM_FIXA: TStringField;
    cdsContasPERC_DESCONTO: TFloatField;
    cdsContasPERC_JUROS: TFloatField;
    cdsContasVLR_IOF: TFloatField;
    cdsContasVLR_TAXA: TFloatField;
    cdsContasLOCAL_PAGAMENTO: TStringField;
    cdsContasEND_ARQUIVO_REM: TStringField;
    cdsContasNOME_ARQ_REM: TStringField;
    cdsContasEXTENSAO_ARQ_REM: TStringField;
    cdsContasDT_LIMITE_DESCONTO: TDateField;
    cdsContasCOMISSAO_PERMANENCIA: TStringField;
    cdsContasNUM_CONVENIO_LIDER: TStringField;
    cdsContasCOD_BANCO: TStringField;
    sdsDuplicataNOME_CARTEIRA: TStringField;
    cdsDuplicataNOME_CARTEIRA: TStringField;
    cdsContasCOD_CARTEIRA: TStringField;
    cdsContasCOD_CARTEIRA_IMP: TStringField;
    cdsContasNOME_CARTEIRA: TStringField;
    sdsDuplicataGERAR_NOSSONUMERO: TStringField;
    cdsDuplicataGERAR_NOSSONUMERO: TStringField;
    cdsContasGERAR_NOSSONUMERO: TStringField;
    cdsContasDIG_AGENCIA: TStringField;
    qFilial: TSQLQuery;
    qFilialID: TIntegerField;
    qFilialNOME: TStringField;
    qFilialNOME_INTERNO: TStringField;
    qFilialENDERECO: TStringField;
    qFilialCOMPLEMENTO_END: TStringField;
    qFilialNUM_END: TStringField;
    qFilialBAIRRO: TStringField;
    qFilialCEP: TStringField;
    qFilialID_CIDADE: TIntegerField;
    qFilialCIDADE: TStringField;
    qFilialUF: TStringField;
    qFilialDDD1: TIntegerField;
    qFilialFONE1: TStringField;
    qFilialDDD2: TIntegerField;
    qFilialFONE: TStringField;
    qFilialDDDFAX: TIntegerField;
    qFilialFAX: TStringField;
    qFilialPESSOA: TStringField;
    qFilialCNPJ_CPF: TStringField;
    qFilialINSCR_EST: TStringField;
    qFilialSIMPLES: TStringField;
    qFilialENDLOGO: TStringField;
    qFilialCALCULAR_IPI: TStringField;
    qFilialINATIVO: TStringField;
    qFilialINSCMUNICIPAL: TStringField;
    qFilialCNAE: TStringField;
    qFilialHOMEPAGE: TStringField;
    qFilialID_REGIME_TRIB: TIntegerField;
    qFilialID_PIS: TIntegerField;
    qFilialID_COFINS: TIntegerField;
    qFilialTIPO_PIS: TStringField;
    qFilialTIPO_COFINS: TStringField;
    qFilialPERC_PIS: TFloatField;
    qFilialPERC_COFINS: TFloatField;
    qFilialID_CSTICMS: TIntegerField;
    qFilialID_CSTIPI: TIntegerField;
    qFilialEMAIL_NFE: TStringField;
    qFilialDTESTOQUE: TDateField;
    qFilialPRINCIPAL: TStringField;
    qFilialLIBERADO_ATE: TStringField;
    qFilialULTIMO_ACESSO: TStringField;
    qFilialUSARICMSSIMPLES: TStringField;
    qFilialSERIENORMAL: TStringField;
    sdsDuplicataPESSOA: TStringField;
    sdsDuplicataCNPJ_CPF: TStringField;
    sdsDuplicataENDERECO: TStringField;
    sdsDuplicataNUM_END: TStringField;
    sdsDuplicataCEP: TStringField;
    sdsDuplicataBAIRRO: TStringField;
    sdsDuplicataCIDADE: TStringField;
    sdsDuplicataUF: TStringField;
    sdsDuplicataPESSOA_PGTO: TStringField;
    sdsDuplicataENDERECO_PGTO: TStringField;
    sdsDuplicataNUM_END_PGTO: TStringField;
    sdsDuplicataCEP_PGTO: TStringField;
    sdsDuplicataBAIRRO_PGTO: TStringField;
    sdsDuplicataCIDADE_PGTO: TStringField;
    sdsDuplicataUF_PGTO: TStringField;
    cdsDuplicataPESSOA: TStringField;
    cdsDuplicataCNPJ_CPF: TStringField;
    cdsDuplicataENDERECO: TStringField;
    cdsDuplicataNUM_END: TStringField;
    cdsDuplicataCEP: TStringField;
    cdsDuplicataBAIRRO: TStringField;
    cdsDuplicataCIDADE: TStringField;
    cdsDuplicataUF: TStringField;
    cdsDuplicataPESSOA_PGTO: TStringField;
    cdsDuplicataENDERECO_PGTO: TStringField;
    cdsDuplicataNUM_END_PGTO: TStringField;
    cdsDuplicataCEP_PGTO: TStringField;
    cdsDuplicataBAIRRO_PGTO: TStringField;
    cdsDuplicataCIDADE_PGTO: TStringField;
    cdsDuplicataUF_PGTO: TStringField;
    sdsDuplicataCNPJ_CPG_PGTO: TStringField;
    cdsDuplicataCNPJ_CPG_PGTO: TStringField;
    sdsCob_Tipo_Cadastro: TSQLDataSet;
    dspCob_Tipo_Cadastro: TDataSetProvider;
    cdsCob_Tipo_Cadastro: TClientDataSet;
    dsCob_Tipo_Cadastro: TDataSource;
    sdsCob_Tipo_CadastroID: TIntegerField;
    sdsCob_Tipo_CadastroCODIGO: TStringField;
    sdsCob_Tipo_CadastroNOME: TStringField;
    sdsCob_Tipo_CadastroTIPO_REG: TStringField;
    sdsCob_Tipo_CadastroID_BANCO: TIntegerField;
    sdsCob_Tipo_CadastroCOD_REDUZIDO: TStringField;
    sdsCob_Tipo_CadastroTIPO_INST: TStringField;
    cdsCob_Tipo_CadastroID: TIntegerField;
    cdsCob_Tipo_CadastroCODIGO: TStringField;
    cdsCob_Tipo_CadastroNOME: TStringField;
    cdsCob_Tipo_CadastroTIPO_REG: TStringField;
    cdsCob_Tipo_CadastroID_BANCO: TIntegerField;
    cdsCob_Tipo_CadastroCOD_REDUZIDO: TStringField;
    cdsCob_Tipo_CadastroTIPO_INST: TStringField;
    sdsCob_Tipo_CadastroTIPO_PROTESTO: TStringField;
    sdsCob_Tipo_CadastroENVIAR_DIAS_PROTESTO: TStringField;
    cdsCob_Tipo_CadastroTIPO_PROTESTO: TStringField;
    cdsCob_Tipo_CadastroENVIAR_DIAS_PROTESTO: TStringField;
    cdsContasDIAS_DEVOLUCAO: TIntegerField;
    qParametros: TSQLQuery;
    qParametrosID_BANCO_REMESSA: TIntegerField;
    sdsDuplicataIMP_BOLETO: TStringField;
    cdsDuplicataIMP_BOLETO: TStringField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsContasNUM_ARQ_REMESSA: TIntegerField;
    cdsContasCOD_INSTRUCAO1: TStringField;
    cdsContasCOD_RED_INSTRUCAO1: TStringField;
    cdsContasTIPO_INSTRUCAO1: TStringField;
    cdsContasCOD_INSTRUCAO2: TStringField;
    cdsContasCOD_RED_INSTRUCAO2: TStringField;
    cdsContasTIPO_INSTRUCAO2: TStringField;
    cdsContasCOD_ESPECIE: TStringField;
    cdsContasCOD_RED_ESPECIE: TStringField;
    cdsContasCOD_OCORRENCIA: TStringField;
    cdsContasCOD_RED_OCORRENCIA: TStringField;
    sdsDuplicataNUM_REMESSA: TIntegerField;
    cdsDuplicataNUM_REMESSA: TIntegerField;
    sdsDuplicataEMAIL_PGTO: TStringField;
    cdsDuplicataEMAIL_PGTO: TStringField;
    mRetorno: TClientDataSet;
    mRetornoCodCarteira: TStringField;
    mRetornoCodOcorrenciaRet: TStringField;
    mRetornoNomeOcorrenciaRet: TStringField;
    mRetornoDtOcorrencia: TStringField;
    mRetornoNumNota: TStringField;
    mRetornoDtVenc: TStringField;
    mRetornoVlrTitulo: TFloatField;
    mRetornoEspecieDoc: TStringField;
    mRetornoVlrDespesaCobranca: TFloatField;
    mRetornoVlrIOF: TFloatField;
    mRetornoVlrAbatimento: TFloatField;
    mRetornoVlrDesconto: TFloatField;
    mRetornoVlrPago: TFloatField;
    mRetornoVlrJurosPagos: TFloatField;
    mRetornoDtLiquidacao: TStringField;
    mRetornoInstrCancelada: TStringField;
    mRetornoNomeCliente: TStringField;
    mRetornoErros: TStringField;
    mRetornoCodLiquidacao: TStringField;
    mRetornoDescLiquidacao: TStringField;
    mRetornoAtualizado: TStringField;
    mRetornoCodCliente: TIntegerField;
    mRetornoParcela: TStringField;
    mRetornoDescErro1: TStringField;
    mRetornoDescErro2: TStringField;
    mRetornoDescErro3: TStringField;
    mRetornoDescErro4: TStringField;
    mRetornoDescErro5: TStringField;
    mRetornoDescErro6: TStringField;
    mRetornoCodInstrCancelada: TStringField;
    mRetornoConfNossoNumero: TStringField;
    dsmRetorno: TDataSource;
    cdsContasPOS_NUMCONTA_RETORNO: TIntegerField;
    cdsContasPOS_CODBANCO_RETORNO: TIntegerField;
    mRetornoNossoNumero: TStringField;
    mRetornoSeuNumero: TStringField;
    mRetornoID_Duplicata: TStringField;
    mRetornoTitulo_OK: TBooleanField;
    qContas_Retorno: TSQLQuery;
    qContas_RetornoID: TIntegerField;
    qContas_RetornoPOS_NUM_NOTA: TIntegerField;
    qContas_RetornoQTD_NUM_NOTA: TIntegerField;
    qContas_RetornoPOS_NOSSO_NUMERO: TIntegerField;
    qContas_RetornoQTD_NOSSO_NUMERO: TIntegerField;
    qContas_RetornoPOS_ID_DUPLICATA: TIntegerField;
    qContas_RetornoQTD_ID_DUPLICATA: TIntegerField;
    qContas_RetornoPOS_OCORRENCIA: TIntegerField;
    qContas_RetornoPOS_DT_OCORRENCIA: TIntegerField;
    qContas_RetornoPOS_CONF_NOSSO_NUMERO: TIntegerField;
    qContas_RetornoQTD_CONF_NOSSO_NUMERO: TIntegerField;
    qContas_RetornoPOS_DT_VENCIMENTO: TIntegerField;
    qContas_RetornoPOS_VLR_TITULO: TIntegerField;
    qContas_RetornoQTD_VLR_TITULO: TIntegerField;
    qContas_RetornoPOS_ESPECIE: TIntegerField;
    qContas_RetornoPOS_VLR_DESPESA_COB: TIntegerField;
    qContas_RetornoQTD_VLR_DESPESA_COB: TIntegerField;
    qContas_RetornoPOS_VLR_IOF: TIntegerField;
    qContas_RetornoQTD_VLR_IOF: TIntegerField;
    qContas_RetornoPOS_VLR_ABATIMENTO: TIntegerField;
    qContas_RetornoQTD_VLR_ABATIMENTO: TIntegerField;
    qContas_RetornoPOS_VLR_DESCONTO: TIntegerField;
    qContas_RetornoQTD_VLR_DESCONTO: TIntegerField;
    qContas_RetornoPOS_VLR_PAGO: TIntegerField;
    qContas_RetornoQTD_VLR_PAGO: TIntegerField;
    qContas_RetornoPOS_VLR_JUROS_PAGO: TIntegerField;
    qContas_RetornoQTD_VLR_JUROS_PAGO: TIntegerField;
    qContas_RetornoPOS_DT_LIQUIDACAO: TIntegerField;
    qContas_RetornoPOS_INST_CANCELADA: TIntegerField;
    qContas_RetornoPOS_ERRO: TIntegerField;
    qContas_RetornoQTD_ERRO: TIntegerField;
    qContas_RetornoPOS_COD_LIQUIDACAO: TIntegerField;
    qContas_RetornoQTD_COD_LIQUIDACAO: TIntegerField;
    sdsRet_Cadastro: TSQLDataSet;
    dspRet_Cadastro: TDataSetProvider;
    cdsRet_Cadastro: TClientDataSet;
    dsRet_Cadastro: TDataSource;
    sdsRet_CadastroID: TIntegerField;
    sdsRet_CadastroCODIGO: TStringField;
    sdsRet_CadastroNOME: TStringField;
    sdsRet_CadastroTIPO_REG: TStringField;
    sdsRet_CadastroID_BANCO: TIntegerField;
    cdsRet_CadastroID: TIntegerField;
    cdsRet_CadastroCODIGO: TStringField;
    cdsRet_CadastroNOME: TStringField;
    cdsRet_CadastroTIPO_REG: TStringField;
    cdsRet_CadastroID_BANCO: TIntegerField;
    qContas_RetornoPOS_CARTEIRA: TIntegerField;
    qRet_Erro: TSQLQuery;
    qRet_ErroID: TIntegerField;
    qRet_ErroCODIGO: TStringField;
    qRet_ErroNOME: TStringField;
    qRet_ErroTIPO_REG: TStringField;
    qRet_ErroID_BANCO: TIntegerField;
    qRet_ErroTABELA_REJ: TStringField;
    qRet_Tabela: TSQLQuery;
    qRet_TabelaID: TIntegerField;
    qRet_TabelaCODIGO: TStringField;
    qRet_TabelaNOME: TStringField;
    qDuplicata: TSQLQuery;
    qContas_RetornoPOS_NOME_CLIENTE: TIntegerField;
    qContas_RetornoQTD_NOME_CLIENTE: TIntegerField;
    qDuplicataID: TIntegerField;
    qDuplicataID_PESSOA: TIntegerField;
    qDuplicataNUMDUPLICATA: TStringField;
    qDuplicataNUMNOTA: TIntegerField;
    qDuplicataPARCELA: TIntegerField;
    qContas_RetornoPOS_NUMCONTA_RETORNO: TIntegerField;
    qContas_RetornoPOS_CODBANCO_RETORNO: TIntegerField;
    qContas_RetornoNUMCONTA_CEDENTE: TStringField;
    mRetornoUsa_NumConta_Cedente: TStringField;
    qContas_RetornoQTD_ERRO_CADASTRO: TIntegerField;
    qContas_RetornoQTD_CARTEIRA: TIntegerField;
    qDuplicataNOME_CLIENTE: TStringField;
    mBoleto: TClientDataSet;
    mBoletoNossoNumero: TStringField;
    mBoletoNumNota: TStringField;
    mBoletoCodCarteira: TStringField;
    mBoletoDtVencimento: TDateField;
    mBoletoVlrParcela: TFloatField;
    mBoletoNomeCliente: TStringField;
    mBoletoEndereco: TStringField;
    mBoletoNumEnd: TStringField;
    mBoletoBairro: TStringField;
    mBoletoCidade: TStringField;
    mBoletoUF: TStringField;
    mBoletoCep: TStringField;
    mBoletoCNPJ_CPF: TStringField;
    mBoletoEspecie: TStringField;
    mBoletoDtEmissao: TDateField;
    mBoletoAceite: TStringField;
    mBoletoDtBoleto: TDateField;
    mBoletoNomeFilial: TStringField;
    mBoletoCNPJ_CPF_Filial: TStringField;
    mBoletoPessoaCli: TStringField;
    mBoletoPessoaFilial: TStringField;
    mBoletoAgencia: TStringField;
    mBoletoCodCedente: TStringField;
    mBoletoLocalDePagamento: TStringField;
    dsmBoleto: TDataSource;
    mBoletoParcela: TIntegerField;
    sdsDuplicataCOMPLEMENTO_END: TStringField;
    sdsDuplicataCOMPLEMENTO_END_PGTO: TStringField;
    cdsDuplicataCOMPLEMENTO_END: TStringField;
    cdsDuplicataCOMPLEMENTO_END_PGTO: TStringField;
    mBoletoComplemento_End: TStringField;
    cdsContasOPCAO_GERAR_NOSSNUMERO: TStringField;
    cdsContasGERAR_NOSSONUMERO_ESP: TStringField;
    sdsDuplicata_Hist: TSQLDataSet;
    dspDuplicata_Hist: TDataSetProvider;
    cdsDuplicata_Hist: TClientDataSet;
    dsDuplicata_Hist: TDataSource;
    sdsDuplicata_HistID: TIntegerField;
    sdsDuplicata_HistITEM: TIntegerField;
    sdsDuplicata_HistTIPO_HISTORICO: TStringField;
    sdsDuplicata_HistID_HISTORICO: TIntegerField;
    sdsDuplicata_HistCOMPLEMENTO: TStringField;
    sdsDuplicata_HistVLR_PAGAMENTO: TFloatField;
    sdsDuplicata_HistVLR_JUROSPAGOS: TFloatField;
    sdsDuplicata_HistVLR_DESCONTOS: TFloatField;
    sdsDuplicata_HistVLR_DESPESAS: TFloatField;
    sdsDuplicata_HistVLR_DEVOLUCAO: TFloatField;
    sdsDuplicata_HistVLR_JUROSCALCULADO: TFloatField;
    sdsDuplicata_HistNUMCHEQUE: TIntegerField;
    sdsDuplicata_HistDTPREVISAO_CHEQUE: TDateField;
    sdsDuplicata_HistID_CONTA: TIntegerField;
    sdsDuplicata_HistID_COMISSAO: TIntegerField;
    sdsDuplicata_HistTIPO_ES: TStringField;
    sdsDuplicata_HistDTHISTORICO: TDateField;
    sdsDuplicata_HistDTLANCAMENTO: TDateField;
    sdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    sdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    sdsDuplicata_HistEND_ARQUIVO_REM: TStringField;
    sdsDuplicata_HistNUM_REMESSA: TIntegerField;
    sdsDuplicata_HistID_CARTEIRA: TIntegerField;
    sdsDuplicata_HistID_OCORRENCIA: TIntegerField;
    sdsDuplicataGERAR_REMESSA: TStringField;
    cdsDuplicataGERAR_REMESSA: TStringField;
    cdsContasGERAR_REMESSA: TStringField;
    sdsDuplicataCOD_CARTEIRA: TStringField;
    sdsDuplicataCOD_CARTEIRA_IMP: TStringField;
    cdsDuplicata_HistID: TIntegerField;
    cdsDuplicata_HistITEM: TIntegerField;
    cdsDuplicata_HistTIPO_HISTORICO: TStringField;
    cdsDuplicata_HistID_HISTORICO: TIntegerField;
    cdsDuplicata_HistCOMPLEMENTO: TStringField;
    cdsDuplicata_HistVLR_PAGAMENTO: TFloatField;
    cdsDuplicata_HistVLR_JUROSPAGOS: TFloatField;
    cdsDuplicata_HistVLR_DESCONTOS: TFloatField;
    cdsDuplicata_HistVLR_DESPESAS: TFloatField;
    cdsDuplicata_HistVLR_DEVOLUCAO: TFloatField;
    cdsDuplicata_HistVLR_JUROSCALCULADO: TFloatField;
    cdsDuplicata_HistNUMCHEQUE: TIntegerField;
    cdsDuplicata_HistDTPREVISAO_CHEQUE: TDateField;
    cdsDuplicata_HistID_CONTA: TIntegerField;
    cdsDuplicata_HistID_COMISSAO: TIntegerField;
    cdsDuplicata_HistTIPO_ES: TStringField;
    cdsDuplicata_HistDTHISTORICO: TDateField;
    cdsDuplicata_HistDTLANCAMENTO: TDateField;
    cdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    cdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    cdsDuplicata_HistEND_ARQUIVO_REM: TStringField;
    cdsDuplicata_HistNUM_REMESSA: TIntegerField;
    cdsDuplicata_HistID_CARTEIRA: TIntegerField;
    cdsDuplicata_HistID_OCORRENCIA: TIntegerField;
    cdsDuplicataCOD_CARTEIRA: TStringField;
    cdsDuplicataCOD_CARTEIRA_IMP: TStringField;
    cdsContasPERC_MULTA: TFloatField;
    cdsContasDIAS_MULTA: TIntegerField;
    sdsRet_CadastroTIPO_RET: TStringField;
    cdsRet_CadastroTIPO_RET: TStringField;
    mRetornoTipo_Ret: TStringField;
    qRet_ErroTIPO_RET: TStringField;
    mRetornoFilial: TIntegerField;
    qDuplicataFILIAL: TIntegerField;
    qDuplicataVLR_RESTANTE: TFloatField;
    qDuplicataVLR_PAGO: TFloatField;
    mRetornoAtualizar: TStringField;
    sdsRet_CadastroTIPO_LIQ: TStringField;
    cdsRet_CadastroTIPO_LIQ: TStringField;
    qDuplicataDTVENCIMENTO: TDateField;
    qDuplicataPAGO_CARTORIO: TStringField;
    qDuplicataPROTESTADO: TStringField;
    cdsFilialUF: TStringField;
    cdsFilialENDERECO: TStringField;
    cdsFilialCOMPLEMENTO_END: TStringField;
    cdsFilialNUM_END: TStringField;
    cdsFilialBAIRRO: TStringField;
    cdsFilialCEP: TStringField;
    cdsFilialCIDADE: TStringField;
    cdsFilialDDD1: TIntegerField;
    cdsFilialFONE1: TStringField;
    cdsContasACBR_TIPOCOBRANCA: TStringField;
    cdsContasACBR_LAYOUTREMESSA: TStringField;
    cdsContasNOSSONUMERO_POR_ANO: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    cdsContasNOME_BANCO: TStringField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorPERC_COMISSAO: TFloatField;
    cdsVendedorTIPO_COMISSAO: TStringField;
    dsVendedor: TDataSource;
    cdsContasBANCO_LOGO: TStringField;
    sdsCobCarteira: TSQLDataSet;
    dspCobCarteira: TDataSetProvider;
    cdsCobCarteira: TClientDataSet;
    dsCobCarteira: TDataSource;
    cdsCobCarteiraID: TIntegerField;
    cdsCobCarteiraCODIGO: TStringField;
    cdsCobCarteiraCODIGO_IMP: TStringField;
    cdsCobCarteiraNOME: TStringField;
    cdsCobCarteiraGERAR_NOSSONUMERO: TStringField;
    cdsCobCarteiraGERAR_REMESSA: TStringField;
    cdsCobCarteiraID_BANCO: TIntegerField;
    sdsEspecie: TSQLDataSet;
    dspEspecie: TDataSetProvider;
    cdsEspecie: TClientDataSet;
    dsEspecie: TDataSource;
    cdsEspecieID: TIntegerField;
    cdsEspecieCODIGO: TStringField;
    cdsEspecieNOME: TStringField;
    cdsEspecieTIPO_REG: TStringField;
    cdsEspecieID_BANCO: TIntegerField;
    cdsEspecieCOD_REDUZIDO: TStringField;
    cdsEspecieTIPO_INST: TStringField;
    sdsContas_CalculoSEQ_NOSSONUMERO: TFMTBCDField;
    cdsContas_calculoSEQ_NOSSONUMERO: TFMTBCDField;
    sdsDuplicataNOSSONUMERO_SEQ: TFMTBCDField;
    cdsDuplicataNOSSONUMERO_SEQ: TFMTBCDField;
    sdsDuplicataNOSSONUMERO_GERADO: TStringField;
    cdsDuplicataNOSSONUMERO_GERADO: TStringField;
    cdsContasACBR_USAR_MONTAR_NOSSONUMERO: TStringField;
    cdsContasINICIAL_NOME_ARQ_REMESSA: TStringField;
    cdsContasDT_REMESSA: TDateField;
    cdsContasSEQ_REMESSA_DIA: TIntegerField;
    qFilial_Email: TSQLQuery;
    qFilial_EmailID_FILIAL: TIntegerField;
    qFilial_EmailID_CONFIG_EMAIL: TIntegerField;
    qFilial_EmailNOME_CONFIG: TStringField;
    qFilial_EmailREMETENTE_NOME: TStringField;
    qFilial_EmailREMETENTE_EMAIL: TStringField;
    qFilial_EmailSMTP_CLIENTE: TStringField;
    qFilial_EmailSMTP_PORTA: TIntegerField;
    qFilial_EmailSMTP_REQUER_SSL: TStringField;
    qFilial_EmailSMTP_USUARIO: TStringField;
    qFilial_EmailSMTP_SENHA: TStringField;
    qFilial_EmailSOLICITAR_CONFIRMACAO: TStringField;
    qFilial_EmailBASE: TSmallintField;
    qParametrosLOCALSERVIDORNFE: TStringField;
    qFilial_EmailCNPJ_CPF_FILIAL: TStringField;
    cdsContasTIPO_IMPRESSAO: TStringField;
    cdsContasTIPO_DOCUMENTO_SANTANDER: TStringField;
    cdsContasTIPO_CARTEIRA: TStringField;
    sdsContasID: TIntegerField;
    sdsContasNOME: TStringField;
    sdsContasAGENCIA: TStringField;
    sdsContasFILIAL: TIntegerField;
    sdsContasNUMCONTA: TStringField;
    sdsContasCNAB: TStringField;
    sdsContasDTENCERRAMENTO: TDateField;
    sdsContasID_TIPOCOBRANCA: TIntegerField;
    sdsContasDESCRICAO_NOTA: TStringField;
    sdsContasTIPO_CONTA: TStringField;
    sdsContasID_BANCO: TIntegerField;
    sdsContasDIG_CONTA: TStringField;
    sdsContasCOD_CEDENTE: TStringField;
    sdsContasACEITE: TStringField;
    sdsContasID_OCORRENCIA: TIntegerField;
    sdsContasDIAS_PROTESTO: TIntegerField;
    sdsContasID_ESPECIE: TIntegerField;
    sdsContasID_CARTEIRA: TIntegerField;
    sdsContasID_INSTRUCAO1: TIntegerField;
    sdsContasID_INSTRUCAO2: TIntegerField;
    sdsContasID_TIPO_COBRANCA: TIntegerField;
    sdsContasMOEDA: TStringField;
    sdsContasVARIACAO_CARTEIRA: TStringField;
    sdsContasTIPO_DOCUMENTO: TStringField;
    sdsContasCOD_TRANSMISSAO: TStringField;
    sdsContasMENSAGEM_FIXA: TStringField;
    sdsContasPERC_DESCONTO: TFloatField;
    sdsContasPERC_JUROS: TFloatField;
    sdsContasVLR_IOF: TFloatField;
    sdsContasVLR_TAXA: TFloatField;
    sdsContasLOCAL_PAGAMENTO: TStringField;
    sdsContasEND_ARQUIVO_REM: TStringField;
    sdsContasNOME_ARQ_REM: TStringField;
    sdsContasEXTENSAO_ARQ_REM: TStringField;
    sdsContasDT_LIMITE_DESCONTO: TDateField;
    sdsContasCOMISSAO_PERMANENCIA: TStringField;
    sdsContasNUM_CONVENIO_LIDER: TStringField;
    sdsContasDIG_AGENCIA: TStringField;
    sdsContasDIAS_DEVOLUCAO: TIntegerField;
    sdsContasNUM_ARQ_REMESSA: TIntegerField;
    sdsContasPOS_NUMCONTA_RETORNO: TIntegerField;
    sdsContasPOS_CODBANCO_RETORNO: TIntegerField;
    sdsContasPERC_MULTA: TFloatField;
    sdsContasDIAS_MULTA: TIntegerField;
    sdsContasACBR_TIPOCOBRANCA: TStringField;
    sdsContasNOSSONUMERO_POR_ANO: TStringField;
    sdsContasACBR_LAYOUTREMESSA: TStringField;
    sdsContasBANCO_LOGO: TStringField;
    sdsContasDT_REMESSA: TDateField;
    sdsContasSEQ_REMESSA_DIA: TIntegerField;
    sdsContasTIPO_IMPRESSAO: TStringField;
    sdsContasTIPO_DOCUMENTO_SANTANDER: TStringField;
    sdsContasTIPO_CARTEIRA: TStringField;
    sdsContasCOD_BANCO: TStringField;
    sdsContasNOME_BANCO: TStringField;
    sdsContasCOD_CARTEIRA: TStringField;
    sdsContasCOD_CARTEIRA_IMP: TStringField;
    sdsContasNOME_CARTEIRA: TStringField;
    sdsContasGERAR_NOSSONUMERO: TStringField;
    sdsContasCOD_INSTRUCAO1: TStringField;
    sdsContasCOD_RED_INSTRUCAO1: TStringField;
    sdsContasTIPO_INSTRUCAO1: TStringField;
    sdsContasCOD_INSTRUCAO2: TStringField;
    sdsContasCOD_RED_INSTRUCAO2: TStringField;
    sdsContasTIPO_INSTRUCAO2: TStringField;
    sdsContasCOD_ESPECIE: TStringField;
    sdsContasCOD_RED_ESPECIE: TStringField;
    sdsContasCOD_OCORRENCIA: TStringField;
    sdsContasCOD_RED_OCORRENCIA: TStringField;
    sdsContasOPCAO_GERAR_NOSSNUMERO: TStringField;
    sdsContasGERAR_NOSSONUMERO_ESP: TStringField;
    sdsContasGERAR_REMESSA: TStringField;
    sdsContasACBR_USAR_MONTAR_NOSSONUMERO: TStringField;
    sdsContasINICIAL_NOME_ARQ_REMESSA: TStringField;
    mRetornoID_Duplicata_Ant: TIntegerField;
    sdsDuplicataEMISSAO_BOLETO: TStringField;
    cdsDuplicataEMISSAO_BOLETO: TStringField;
    sdsContasCONTROLA_EMISSAO_BOLETO: TStringField;
    cdsContasCONTROLA_EMISSAO_BOLETO: TStringField;
    mEmail: TClientDataSet;
    mEmailID_Cliente: TIntegerField;
    mEmailNome: TStringField;
    mEmailCNPJ_CPF: TStringField;
    mEmailEmail: TStringField;
    dsmEmail: TDataSource;
    sdsTitulos_atr: TSQLDataSet;
    dspTitulos_atr: TDataSetProvider;
    cdsTitulos_atr: TClientDataSet;
    cdsTitulos_atrID: TIntegerField;
    cdsTitulos_atrNUMDUPLICATA: TStringField;
    cdsTitulos_atrNUMNOTA: TIntegerField;
    cdsTitulos_atrPARCELA: TIntegerField;
    cdsTitulos_atrDTVENCIMENTO: TDateField;
    cdsTitulos_atrVLR_PARCELA: TFloatField;
    cdsTitulos_atrID_PESSOA: TIntegerField;
    cdsTitulos_atrNOME_CLIENTE: TStringField;
    cdsTitulos_atrEMAIL_PGTO: TStringField;
    cdsTitulos_atrCNPJ_CPF_CLIENTE: TStringField;
    cdsTitulos_atrNOME_FILIAL: TStringField;
    cdsTitulos_atrCNPJ_CPF_FILIAL: TStringField;
    mEmailNome_Filial: TStringField;
    mEmailCNPJ_CPF_Filial: TStringField;
    mEmailQtd_Titulos: TIntegerField;
    cdsTitulos_atrNOSSONUMERO: TStringField;
    mEmailObs: TMemoField;
    mEmailEmailEnviado: TStringField;
    mEmailTitulos: TStringField;
    mEmailTituloVencido: TBooleanField;
    mEmailTituloNoDia: TBooleanField;
    mEmailFilial: TIntegerField;
    cdsTitulos_atrFILIAL: TIntegerField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxDBDataset1: TfrxDBDataset;
    cdsTitulos_atrID_VENDEDOR: TIntegerField;
    cdsTitulos_atrNOME_VENDEDOR: TStringField;
    cdsTitulos_atrEMAIL_VENDEDOR: TStringField;
    mEmailID_Vendedor: TIntegerField;
    mEmailNome_Vendedor: TStringField;
    mEmailEmail_Vendedor: TStringField;
    mEmailDtVencimento: TDateField;
    mEmailEmail_Filial: TStringField;
    cdsTitulos_atrEMAIL_FILIAL: TStringField;
    mEmail_AVencer: TClientDataSet;
    mEmail_AVencerID_Cliente: TIntegerField;
    mEmail_AVencerNome: TStringField;
    mEmail_AVencerCNPJ_CPF: TStringField;
    mEmail_AVencerEmail: TStringField;
    mEmail_AVencerNome_Filial: TStringField;
    mEmail_AVencerCNPJ_CPF_Filial: TStringField;
    mEmail_AVencerEmailEnviado: TStringField;
    mEmail_AVencerFilial: TIntegerField;
    mEmail_AVencerID_Vendedor: TIntegerField;
    mEmail_AVencerNome_Vendedor: TStringField;
    mEmail_AVencerEmail_Vendedor: TStringField;
    mEmail_AVencerDtVencimento: TDateField;
    mEmail_AVencerEmail_Filial: TStringField;
    dsmEmail_AVencer: TDataSource;
    sdsParametros_Fin: TSQLDataSet;
    dspParametros_Fin: TDataSetProvider;
    cdsParametros_Fin: TClientDataSet;
    dsParametros_Fin: TDataSource;
    sdsParametros_FinID: TIntegerField;
    sdsParametros_FinDTENVIO_EMAIL_TITULOS: TDateField;
    cdsParametros_FinID: TIntegerField;
    cdsParametros_FinDTENVIO_EMAIL_TITULOS: TDateField;
    sdsParametros_FinENVIAR_EMAIL_TITULOS_ATR: TStringField;
    cdsParametros_FinENVIAR_EMAIL_TITULOS_ATR: TStringField;
    qFilialEMAIL_FINANCEIRO: TStringField;
    mEmail_AVencerID_Conta: TIntegerField;
    mEmail_AVencerID_Duplicata: TIntegerField;
    mEmail_AVencerNum_Duplicata: TStringField;
    mEmail_AVencerParcela: TStringField;
    cdsTitulos_atrID_CONTA_BOLETO: TIntegerField;
    mEmail_AVencerValor: TFloatField;
    mEmail_AVencerNossoNumero: TStringField;
    mRetornoVlrJurosdeMora: TFloatField;
    mRetornoCodMotivo: TStringField;
    mRetornoDescMotivo: TWideStringField;
    sdsParametros_FinSEPARADOR_NUM_DA_PARC: TStringField;
    cdsParametros_FinSEPARADOR_NUM_DA_PARC: TStringField;
    sdsDuplicataNUM_CONTRATO: TIntegerField;
    sdsDuplicataID_CONTRATO: TIntegerField;
    cdsDuplicataNUM_CONTRATO: TIntegerField;
    cdsDuplicataID_CONTRATO: TIntegerField;
    qContratoParcela: TSQLQuery;
    qContratoParcelaQTD_PARCELA: TIntegerField;
    sdsDuplicataID_GRUPO: TIntegerField;
    cdsDuplicataID_GRUPO: TIntegerField;
    sdsGrupo_Pessoa: TSQLDataSet;
    dspGrupo_Pessoa: TDataSetProvider;
    cdsGrupo_Pessoa: TClientDataSet;
    dsGrupo_Pessoa: TDataSource;
    cdsGrupo_PessoaID: TIntegerField;
    cdsGrupo_PessoaNOME: TStringField;
    qParametros_Ser: TSQLQuery;
    qParametros_SerGERAR_DUPLICATA_CONTRATO: TStringField;
    sdsDuplicataNOME_GRUPO: TStringField;
    cdsDuplicataNOME_GRUPO: TStringField;
    qQtdParcelas: TSQLQuery;
    qQtdParcelasCONTADOR: TIntegerField;
    qFilialLOCALSERVIDORNFE: TStringField;
    qFilial_EmailLOCALSERVIDORNFE: TStringField;
    mVendedor: TClientDataSet;
    dsmVendedor: TDataSource;
    mVendedorID: TIntegerField;
    mVendedorNome: TStringField;
    mVendedorEmail: TStringField;
    mVendedorObs: TMemoField;
    cdsFilialEMAIL_FINANCEIRO: TStringField;
    mVendedor_Tit: TClientDataSet;
    dsmVendedor_Tit: TDataSource;
    mVendedor_TitID_Vendedor: TIntegerField;
    mVendedorFilial: TIntegerField;
    mVendedor_TitNum_Titulo: TStringField;
    mVendedor_TitVlr_Titulo: TFloatField;
    mVendedor_TitDtVencimento: TDateField;
    mVendedor_TitID_Cliente: TIntegerField;
    mVendedor_TitNome_Cliente: TStringField;
    mVendedor_TitNossoNumero: TStringField;
    mVendedor_TitFilial: TIntegerField;
    mVendedorVlr_Total: TFloatField;
    mVendedorQtd_Titulos: TIntegerField;
    mVendedorEmail_Filial: TStringField;
    mVendedorEnviado: TStringField;
    mRetornoBuscou_Titulos: TStringField;
    sdsContasCODMORA: TSmallintField;
    cdsContasCODMORA: TSmallintField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinID: TIntegerField;
    qParametros_FinTIPO_GERACAO_REM: TStringField;
    sdsContasREMESSA_TESTE: TStringField;
    cdsContasREMESSA_TESTE: TStringField;
    qParametros_FinREMESSA_FILIAL_DIF: TStringField;
    qContas_Sacado: TSQLQuery;
    qContas_SacadoID: TIntegerField;
    qContas_SacadoFILIAL: TIntegerField;
    qContas_SacadoCOD_SACADO: TStringField;
    qContas_SacadoNOME: TStringField;
    qContas_SacadoENDERECO: TStringField;
    qContas_SacadoCNPJ_CPF: TStringField;
    qContas_SacadoPESSOA: TStringField;
    qContas_SacadoINSCR_EST: TStringField;
    qContas_SacadoCEP: TStringField;
    qContas_SacadoCIDADE: TStringField;
    qContas_SacadoBAIRRO: TStringField;
    qContas_SacadoNUM_END: TStringField;
    qContas_SacadoUF: TStringField;
    qContas_SacadoCOMPLEMENTO_END: TStringField;
    sdsDuplicataID_CARTEIRA_CLIENTE: TIntegerField;
    cdsDuplicataID_CARTEIRA_CLIENTE: TIntegerField;
    sdsDuplicataINSTRUCAO_PROTESTO: TStringField;
    cdsDuplicataINSTRUCAO_PROTESTO: TStringField;
    sdsContasEND_ARQUIVO_RET: TStringField;
    cdsContasEND_ARQUIVO_RET: TStringField;
    sdsDuplicataTAXA_BANCO: TStringField;
    cdsDuplicataTAXA_BANCO: TStringField;
    cdsDuplicataVLR_TAXA_BANCARIA: TFloatField;
    sdsDuplicata_HistVLR_TAXA_BANCARIA: TFloatField;
    cdsDuplicata_HistVLR_TAXA_BANCARIA: TFloatField;
    sdsDuplicataVLR_TAXA_BANCARIA: TFloatField;
    sdsDuplicataTIPO_REG: TStringField;
    sdsDuplicataNFECHAVEACESSO: TStringField;
    sdsDuplicataCOD_AUTENCIDADE_RET: TStringField;
    cdsDuplicataTIPO_REG: TStringField;
    cdsDuplicataNFECHAVEACESSO: TStringField;
    cdsDuplicataCOD_AUTENCIDADE_RET: TStringField;
    qConsultaNaoEnviado: TSQLQuery;
    qConsultaNaoEnviadoNAO_ENVIADO: TIntegerField;
    sdsDuplicataID_NOTA_SERVICO: TIntegerField;
    cdsDuplicataID_NOTA_SERVICO: TIntegerField;
    frxDuplicata: TfrxDBDataset;
    qParametros_FinMANTER_DUP_CANC: TStringField;
    sdsDuplicataCANCELADA: TStringField;
    cdsDuplicataCANCELADA: TStringField;
    sdsDuplicataID_OCORRENCIA_COB: TIntegerField;
    cdsDuplicataID_OCORRENCIA_COB: TIntegerField;
    sdsCob_Tipo_CadastroTIPO_OCO: TStringField;
    cdsCob_Tipo_CadastroTIPO_OCO: TStringField;
    sdsDuplicata_Cob: TSQLDataSet;
    sdsDuplicata_CobID: TIntegerField;
    sdsDuplicata_CobITEM: TIntegerField;
    sdsDuplicata_CobID_OCORRENCIA: TIntegerField;
    sdsDuplicata_CobDATA: TDateField;
    sdsDuplicata_CobDT_VENCIMENTO: TDateField;
    sdsDuplicata_CobUSUARIO: TStringField;
    sdsDuplicata_CobDTUSUARIO: TDateField;
    sdsDuplicata_CobHRUSUARIO: TTimeField;
    sdsDuplicata_CobDTREMESSA: TDateField;
    sdsDuplicata_CobID_DUPLICATA_HIST: TIntegerField;
    sdsDuplicata_CobID_CONTA: TIntegerField;
    dspDuplicata_Cob: TDataSetProvider;
    cdsDuplicata_Cob: TClientDataSet;
    cdsDuplicata_CobID: TIntegerField;
    cdsDuplicata_CobITEM: TIntegerField;
    cdsDuplicata_CobID_OCORRENCIA: TIntegerField;
    cdsDuplicata_CobDATA: TDateField;
    cdsDuplicata_CobDT_VENCIMENTO: TDateField;
    cdsDuplicata_CobUSUARIO: TStringField;
    cdsDuplicata_CobDTUSUARIO: TDateField;
    cdsDuplicata_CobHRUSUARIO: TTimeField;
    cdsDuplicata_CobDTREMESSA: TDateField;
    cdsDuplicata_CobID_DUPLICATA_HIST: TIntegerField;
    cdsDuplicata_CobID_CONTA: TIntegerField;
    dsDuplicata_Cob: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure mRetornoNewRecord(DataSet: TDataSet);
    procedure RLPreviewSetup1Send(Sender: TObject);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    ctDuplicata, ctqDuplicata: string;
    ctCobTpCadastro: string;
    ctContas: string;
    ctTitulos_Atr: string;
    vMemo: TStrings;
    vNumTeste: Integer;
    vMsgErro: string;
    vMsgCarteira : String;
    //xNossoNum: Integer;
    xNossoNum: Int64;
    vGera_NossoNumero: string; //S= Sim   N= Não
    vID_Carteira: Integer;
    vNome_Carteira: string;
    vIntrucao_Protesto: string;
    vValor_Com_Juros : Real;
    vValor_Multa_Juros : Real;
    vCod_Carteira, vCod_Carteira_Red: string;
    vNossoNumero: string;
    vNossoNumero_Montado: string;
    vGeraRemessa: string;
    vNum_Remessa: Integer;
    vEnd_Arq_Remessa: string;
    vAceite: string;
    vSeq_Remessa_Dia: Integer;
    vGravou_Hist: Boolean;
    vSeparadorParc: string;
    vID_Duplicata: Integer;
    vData2Via: TDateTime;
    btnDesabilita: Integer;
    procedure prc_Duplicata(ID_Nota, ID_Duplicata, NumNota, Filial, ID_Nota_Servico: Integer; Serie: string; NossoNumero: string; ID_Duplicata_Ant: Integer; Parcela: Integer);
    procedure prc_Protesto_Devol(ID_Instrucao: Integer);
    procedure prc_Mensagem_Cobranca;
    procedure prc_Verificar_Carteira;
    procedure prc_Nosso_Numero;
    procedure prc_Gravar_Duplicata(Tipo: string); //I= Impressão Boleto   R= Remessa
    procedure prc_Gravar_mBoleto;
    procedure buscaNossoNumero;
    procedure prc_Gravar_Historico(Tipo: string; Historico: string = '');
    procedure prc_Abrir_Contas(Inativo: Boolean);
    procedure prc_Abrir_Carteira(Id_Banco: Integer);
    function fnc_Seq_NossoNumero(ID_Conta, Ano, Item: Integer): Integer;
    function fnc_busca_tipo_instrucao(Id_Banco, Id_Instrucao, Id_Instrucao2: Integer): string;
    function fnc_Calcula_NossoNumeroCaixa(ID_CONTA: Integer; NumCarteira: string): string;
    function fnc_Calcula_NossoNumeroItau(ID_CONTA: Integer; NumCarteira: string): string;
    function fnc_Calcula_NossoNumeroBrasil(ID_CONTA: Integer; NumCarteira: string): string;
    function fnc_Calcula_NossoNumeroBrasil_6(ID_CONTA: Integer; NumCarteira: string): string;
    function fnc_Calcula_NossoNumeroBanrisul(ID_CONTA: Integer; NumCarteira: string; Numero: Integer = 0): string;
    function fnc_Calcula_NossoNumeroHSBC(ID_CONTA: Integer; NumCarteira: string): string;
    function MontaBoletoBanrisul(tipo, nDoc, Carteira, DigNossoNum, Produto: string; data: TDateTime; valor: Currency): string;
    function fnc_Abrir_Tipo_Cobranca(ID_Tipo: Integer): Boolean;
    function Monta_NomeArq(Caminho: string; Filial: Integer): string;
    function Monta_NomeSicredi(vCaminho, vCedente: string): string;
    function fnc_Busca_Num_Arquivo_Rem: Integer;
    //procedure AfterConstruction; override;
  end;

var
  DMCob_Eletronica: TDMCob_Eletronica;

implementation

uses
  DmdDatabase, uUtilPadrao, SyncObjs, LogProvider, SendMailOptions;


{$R *.dfm}

{ TDMCob_Eletronica }

procedure TDMCob_Eletronica.prc_Duplicata(ID_Nota, ID_Duplicata, NumNota, Filial, ID_Nota_Servico: Integer; Serie: string; NossoNumero: string; ID_Duplicata_Ant: Integer; Parcela: Integer);
begin
  cdsDuplicata.Close;
  sdsDuplicata.CommandText := ctDuplicata + ' WHERE DUP.TIPO_ES = ''E''';
  if ID_Duplicata_Ant > 0 then
  begin
    sdsDuplicata.CommandText := sdsDuplicata.CommandText + ' AND DUP.COD_ANT = ' + IntToStr(ID_Duplicata_Ant);
    if Filial > 0 then
      sdsDuplicata.CommandText := sdsDuplicata.CommandText + ' AND DUP.FILIAL = ' + IntToStr(Filial);
  end
  else if trim(NossoNumero) <> '' then
  begin
    sdsDuplicata.CommandText := sdsDuplicata.CommandText + ' AND NOSSONUMERO = ' + QuotedStr(NossoNumero);
    if Filial > 0 then
      sdsDuplicata.CommandText := sdsDuplicata.CommandText + ' AND DUP.FILIAL = ' + IntToStr(Filial);
  end
  else if ID_Nota_Servico > 0 then
    sdsDuplicata.CommandText := sdsDuplicata.CommandText + ' AND ID_NOTA_SERVICO = ' + IntToStr(ID_Nota_Servico)
  else if ID_Nota > 0 then
    sdsDuplicata.CommandText := sdsDuplicata.CommandText + ' AND (NF.ID_NOTA = ' + IntToStr(ID_Nota) + ' OR NS.ID_NOTA = ' + IntToStr(ID_Nota) + ')'
  else if ID_Duplicata > 0 then
    sdsDuplicata.CommandText := sdsDuplicata.CommandText + ' AND DUP.ID = ' + IntToStr(ID_Duplicata)
  else
  begin
    if NumNota > 0 then
      sdsDuplicata.CommandText := sdsDuplicata.CommandText + ' AND (NF.NUMNOTA = ' + IntToStr(NumNota) + ' OR NS.NUMNOTA = ' + IntToStr(NumNota) + ')';
    if Filial > 0 then
      sdsDuplicata.CommandText := sdsDuplicata.CommandText + ' AND DUP.FILIAL = ' + IntToStr(Filial);
    if trim(Serie) <> '' then
      sdsDuplicata.CommandText := sdsDuplicata.CommandText + ' AND SERIE = ' + QuotedStr(Serie);
    if Parcela > 0 then
      sdsDuplicata.CommandText := sdsDuplicata.CommandText + ' AND PARCELA = ' + IntToStr(Parcela);
  end;
  sdsDuplicata.ParamByName('DCOB1').AsDate := 0;
  sdsDuplicata.ParamByName('DCOB2').AsDate := 0;
  sdsDuplicata.ParamByName('ID_OCORRENCIA').AsInteger := 0;

  cdsDuplicata.Open;
end;

procedure TDMCob_Eletronica.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctDuplicata := sdsDuplicata.CommandText;
  ctqDuplicata := qDuplicata.SQL.Text;
  ctCobTpCadastro := sdsCob_Tipo_Cadastro.CommandText;
  ctContas := sdsContas.CommandText;
  ctTitulos_Atr := sdsTitulos_atr.CommandText;
  cdsContas.Open;
  cdsContas_calculo.Open;
  cdsCob_Tipo_Cadastro.Open;
  qParametros.Close;
  qParametros.Open;
  cdsFilial.Close;
  cdsFilial.Open;
  cdsCobCarteira.Open;
  cdsParametros_Fin.Close;
  cdsParametros_Fin.Open;
  cdsGrupo_Pessoa.Close;
  cdsGrupo_Pessoa.Open;
  qParametros_Ser.Close;
  qParametros_Ser.Open;
  qParametros_Fin.Close;
  qParametros_Fin.Open;
  //*** Logs Implantado na versão .353
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
  //***********************
  cdsContas_calculo.IndexFieldNames := 'ANO;ITEM';
  vNossoNumero_Montado := '';
  if (trim(cdsParametros_FinSEPARADOR_NUM_DA_PARC.AsString) = '') or (cdsParametros_FinSEPARADOR_NUM_DA_PARC.IsNull) then
    vSeparadorParc := '/'
  else
    vSeparadorParc := cdsParametros_FinSEPARADOR_NUM_DA_PARC.AsString;
end;

function TDMCob_Eletronica.fnc_Seq_NossoNumero(ID_Conta, Ano, Item: Integer): Integer;
var
  vNumAux: Integer;
begin
  cdsContas_calculo.Close;
  sdsContas_Calculo.ParamByName('ID').AsInteger := ID_Conta;
  sdsContas_Calculo.ParamByName('ANO').AsInteger := Ano;
  sdsContas_Calculo.ParamByName('ITEM').AsInteger := Item;
  cdsContas_calculo.Open;
  if cdsContas_calculo.IsEmpty then
  begin
    cdsContas_calculo.Insert;
    cdsContas_calculoID.AsInteger := ID_Conta;
    cdsContas_calculoANO.AsInteger := Ano;
    cdsContas_calculoITEM.AsInteger := Item;
    vNumAux := 1;
  end
  else
  begin
    cdsContas_calculo.Last;
    vNumAux := cdsContas_calculoSEQ_NOSSONUMERO.AsInteger + 1;
    cdsContas_calculo.Edit;
  end;
  cdsContas_calculoSEQ_NOSSONUMERO.AsInteger := vNumAux;
  cdsContas_calculo.Post;
  cdsContas_calculo.ApplyUpdates(0);

  Result := vNumAux;
end;

function TDMCob_Eletronica.fnc_Calcula_NossoNumeroCaixa(ID_CONTA: Integer; NumCarteira: string): string;
var
  vNumero, i, vSoma, vAux, vAux2, vSomaAux: Integer;
  texto1: string;
begin
  Result := '';
  vNumero := fnc_Seq_NossoNumero(ID_Conta, 9999, 99);
  if (NumCarteira = '11') or (NumCarteira = '12') then
    texto1 := '9' + FormatFloat('000000000', vNumero)
  else if (NumCarteira = '14') then
    texto1 := '82' + FormatFloat('00000000', vNumero);
  vSoma := 0;
  vAux := 2;
  for i := length(texto1) downto 1 do
  begin
    vSomaAux := StrToInt(Copy(texto1, i, 1)) * vAux;
    vSoma := vSoma + vSomaAux;
    vAux := vAux + 1;
    if vAux > 9 then
      vAux := 2;
  end;
  vAux := vSoma div 11;
  vAux2 := vAux * 11;
  vAux := vSoma - vAux2;
  if vAux > 0 then
    vAux := 11 - vAux;
  if vAux > 9 then
    vAux := 0;
  Result := texto1 + FormatFloat('0', vAux);
end;

function TDMCob_Eletronica.fnc_Calcula_NossoNumeroItau(ID_CONTA: Integer; NumCarteira: string): string;
var
  vNumero, i, vSoma, vAux, vAux2, vSomaAux: Integer;
  texto1, texto2: string;
begin
  //Itáu e Banrisul usam o mesmo
  Result := '';
  vNumero := fnc_Seq_NossoNumero(ID_Conta, 9999, 99);
  //****
  texto1 := copy(cdsContasAGENCIA.AsString, 1, 4) + copy(cdsContasNUMCONTA.AsString, 1, 5) + NumCarteira + FormatFloat('00000000', vNumero);
  vSoma := 0;
  vAux := 1;
  for i := length(texto1) downto 1 do
  begin
    inc(vAux);
    if vAux > 2 then
      vAux := 1;
    vSomaAux := StrToInt(Copy(texto1, i, 1)) * vAux;
    if vSomaAux < 10 then
      vSoma := vSoma + vSomaAux
    else
    begin
      texto2 := formatfloat('00', vSomaAux);
      vSoma := vSoma + (StrToInt(Copy(texto2, 1, 1))) + (StrToInt(Copy(texto2, 2, 1)));
    end;
  end;

  vAux := vSoma div 10;
  vAux2 := vAux * 10;
  vAux := vSoma - vAux2;
  if vAux > 0 then
    vAux := 10 - vAux;
  texto1 := texto1 + FormatFloat('0', vAux);

  Result := FormatFloat('00000000', vNumero) + FormatFloat('0', vAux);
end;

procedure TDMCob_Eletronica.prc_Mensagem_Cobranca;
var
  vTexto1: string;
  vValor: Real;
  vDiaAux: Integer;
begin
  vTexto1 := '';
  if trim(cdsContasMENSAGEM_FIXA.AsString) <> '' then
    vMemo.Add(cdsContasMENSAGEM_FIXA.AsString);

  vValor := 0;
  if cdsContasPERC_JUROS.AsFloat > 0 then
    vValor := StrToFloat(FormatFloat('0.00', ((cdsDuplicataVLR_PARCELA.AsFloat * cdsContasPERC_JUROS.AsFloat) / 100) / 30));
  if StrToFloat(FormatFloat('0.00', vValor)) > 0 then
    vMemo.Add('Valor de juros por dia de atraso R$ ' + FormatFloat('###,###,##0.00', vValor));

  if cdsContasID_INSTRUCAO1.AsInteger > 0 then
    prc_Protesto_Devol(cdsContasID_INSTRUCAO1.AsInteger);
  if cdsContasID_INSTRUCAO2.AsInteger > 0 then
    prc_Protesto_Devol(cdsContasID_INSTRUCAO2.AsInteger);

  if StrToFloat(FormatFloat('0.00', cdsContasPERC_MULTA.AsFloat)) > 0 then
  begin
    vDiaAux := cdsContasDIAS_MULTA.AsInteger;
    if cdsContasDIAS_MULTA.AsInteger <= 0 then
      vDiaAux := 1;
    vMemo.Add('Após ' + IntToStr(vDiaAux) + ' dias do vencimento, cobrar multa de ' + FormatFloat('0.00', cdsContasPERC_MULTA.AsFloat) + '%');
  end;
  //aqui 29/01/2014
  //if StrToFloat(FormatFloat('0.00',cdsContasVLR_TAXA.AsFloat)) > 0 then
  //  vMemo.Add('Valor Taxa R$ ' + FormatFloat('###,###,##0.00',cdsContasVLR_TAXA.AsFloat));
end;

procedure TDMCob_Eletronica.prc_Protesto_Devol(ID_Instrucao: Integer);
var
  vDataAux: TDateTime;
  vTexto1: string;
begin
  if not (cdsCob_Tipo_Cadastro.Locate('ID', ID_Instrucao, [loCaseInsensitive])) then
    exit;
  if (cdsCob_Tipo_CadastroTIPO_INST.AsString <> 'PRO') and (cdsCob_Tipo_CadastroTIPO_INST.AsString <> 'DEV') then
    exit;
  if (cdsCob_Tipo_CadastroTIPO_INST.AsString = 'PRO') then
  begin
    if cdsCob_Tipo_CadastroTIPO_PROTESTO.AsString = 'C' then
      vTexto1 := 'dia corrido'
    else
      vTexto1 := 'dia útil';
    vMemo.Add('Protestar no ' + cdsContasDIAS_PROTESTO.AsString + 'º ' + vTexto1 + ' após o vencimento');
  end
  else if (cdsCob_Tipo_CadastroTIPO_INST.AsString = 'DEV') and (cdsContasDIAS_DEVOLUCAO.AsInteger > 0) then
  begin
    vDataAux := cdsDuplicataDTVENCIMENTO.AsDateTime + cdsContasDIAS_DEVOLUCAO.AsInteger;
    vMemo.Add('Devolver após  ' + FormatDateTime('DD/MM/YY', vDataAux));
  end;
end;

procedure TDMCob_Eletronica.prc_Verificar_Carteira;
begin
//aqui
  vMsgCarteira := '';
  vGera_NossoNumero := '';
  vID_Carteira := 0;
  vCod_Carteira := '';
  vGeraRemessa := '';
  //alterado dia 27/03/2017
  //if (cdsDuplicataID_CARTEIRA.AsInteger > 0) and ((trim(cdsDuplicataNOSSONUMERO.AsString) <> '') and not (cdsDuplicataNOSSONUMERO.IsNull)) then
  if (cdsDuplicataID_CARTEIRA.AsInteger > 0) then
    vID_Carteira := cdsDuplicataID_CARTEIRA.AsInteger
  else if (cdsDuplicataID_CARTEIRA_CLIENTE.AsInteger > 0) then
    vID_Carteira := cdsDuplicataID_CARTEIRA_CLIENTE.AsInteger
  else if cdsContasID_CARTEIRA.AsInteger > 0 then
    vID_Carteira := cdsContasID_CARTEIRA.AsInteger;
  cdsCobCarteira.IndexFieldNames := 'ID';
  if not cdsCobCarteira.FindKey([vID_Carteira]) then
  begin
    vMsgCarteira := '*** Carteira não encontrada!';
    exit
  end;
  vGera_NossoNumero := cdsCobCarteiraGERAR_NOSSONUMERO.AsString;
  vGeraRemessa := cdsCobCarteiraGERAR_REMESSA.AsString;
  vCod_Carteira := cdsCobCarteiraCODIGO.AsString;
  vCod_Carteira_Red := vCod_Carteira;
  if trim(cdsCobCarteiraCODIGO_IMP.AsString) <> '' then
    vCod_Carteira_Red := cdsCobCarteiraCODIGO_IMP.AsString;

  {if (cdsDuplicataID_CARTEIRA.AsInteger > 0) then
  begin
    cdsCobCarteira.IndexFieldNames := 'ID';
    if cdsCobCarteira.FindKey([cdsDuplicataID_CARTEIRA.AsInteger]) then
    begin
      if cdsCobCarteiraID_BANCO.AsInteger = cdsContasID_BANCO.AsInteger then
      begin
        vID_Carteira := cdsDuplicataID_CARTEIRA.AsInteger;
        vCod_Carteira := cdsDuplicataCOD_CARTEIRA.AsString;
        if cdsDuplicataGERAR_NOSSONUMERO.AsString <> '' then
        begin
          vGera_NossoNumero := cdsDuplicataGERAR_NOSSONUMERO.AsString;
          vGeraRemessa := cdsDuplicataGERAR_REMESSA.AsString;
        end
        else
        begin
          vGera_NossoNumero := cdsContasGERAR_NOSSONUMERO.AsString;
          vGeraRemessa := cdsContasGERAR_REMESSA.AsString;
        end;
      end;
    end
  end;
  if vID_Carteira <= 0 then
  begin
    if cdsDuplicataID_CARTEIRA_CLIENTE.AsInteger > 0 then
      vID_Carteira := cdsDuplicataID_CARTEIRA_CLIENTE.AsInteger;

    vGera_NossoNumero := cdsContasGERAR_NOSSONUMERO.AsString;
    vCod_Carteira := cdsContasCOD_CARTEIRA.AsString;
    vGeraRemessa := cdsContasGERAR_REMESSA.AsString;
  end;
  if vID_Carteira <= 0 then
  begin
    if cdsContasID_CARTEIRA.AsInteger > 0 then
    begin
      vGera_NossoNumero := cdsContasGERAR_NOSSONUMERO.AsString;
      vID_Carteira := cdsContasID_CARTEIRA.AsInteger;
      vCod_Carteira := cdsContasCOD_CARTEIRA.AsString;
      vGeraRemessa := cdsContasGERAR_REMESSA.AsString;
    end;
  end;}

  if cdsContasOPCAO_GERAR_NOSSNUMERO.AsString = 'E' then
    vGera_NossoNumero := cdsContasGERAR_NOSSONUMERO_ESP.AsString;

  {vGera_NossoNumero := '';
  if cdsDuplicataID_CARTEIRA.AsInteger > 0 then
  begin
    vGera_NossoNumero := cdsDuplicataGERAR_NOSSONUMERO.AsString;
    vID_Carteira      := cdsDuplicataID_CARTEIRA.AsInteger;
    vCod_Carteira     := cdsDuplicataCOD_CARTEIRA.AsString;
    vGeraRemessa      := cdsDuplicataGERAR_REMESSA.AsString;
  end
  else
  if cdsContasID_CARTEIRA.AsInteger > 0 then
  begin
    vGera_NossoNumero := cdsContasGERAR_NOSSONUMERO.AsString;
    vID_Carteira      := cdsContasID_CARTEIRA.AsInteger;
    vCod_Carteira     := cdsContasCOD_CARTEIRA.AsString;
    vGeraRemessa      := cdsContasGERAR_REMESSA.AsString;
  end;
  if cdsContasOPCAO_GERAR_NOSSNUMERO.AsString = 'E' then
    vGera_NossoNumero := cdsContasGERAR_NOSSONUMERO_ESP.AsString;
  vCod_Carteira_Red := vCod_Carteira;
  if vID_Carteira > 0 then
  begin
    cdsCobCarteira.IndexFieldNames := 'ID';
    if cdsCobCarteira.FindKey([cdsContasID_CARTEIRA.AsInteger]) then
    begin
      if trim(cdsCobCarteiraCODIGO_IMP.AsString) <> '' then
        vCod_Carteira_Red := cdsCobCarteiraCODIGO_IMP.AsString;
    end;
  end;}

end;

function TDMCob_Eletronica.fnc_Abrir_Tipo_Cobranca(ID_Tipo: Integer): Boolean;
begin
  Result := False;
  if not (cdsCob_Tipo_Cadastro.Locate('ID', ID_Tipo, [loCaseInsensitive])) then
    exit;
  Result := True;
end;

function TDMCob_Eletronica.Monta_NomeArq(Caminho: string; Filial: Integer): string;
var
  Texto1, texto2: string;
  vAux: Integer;
  Flag: Boolean;
  ano, mes, dia: Word;
begin
  DecodeDate(Date, ano, mes, dia);
  texto2 := FormatFloat('00', Filial);
  Texto1 := '';
  vAux := 0;
  flag := True;
  while Flag do
  begin
    inc(vAux);
    if copy(Caminho, Length(Caminho), 1) = '\' then
      //Texto1 := Caminho + 'REMESSA\' + texto2 + FormatFloat('00',Mes) + FormatFloat('00',Dia) + IntToStr(vAux) + '.REM'
      Texto1 := Caminho + texto2 + FormatFloat('00', Mes) + FormatFloat('00', Dia) + IntToStr(vAux) + '.REM'
    else
      //Texto1 := Caminho + '\REMESSA\' + texto2 + FormatFloat('00',Mes) + FormatFloat('00',Dia) + IntToStr(vAux) + '.REM';
      Texto1 := Caminho + '\' + texto2 + FormatFloat('00', Mes) + FormatFloat('00', Dia) + IntToStr(vAux) + '.REM';
    if not (FileExists(texto1)) then
      flag := False;
  end;
  Result := Texto1;
end;

function TDMCob_Eletronica.fnc_Busca_Num_Arquivo_Rem: Integer;
var
  sds: TSQLDataSet;
  i: Integer;
  vData: TDateTime;
begin
  i := cdsContasNUM_ARQ_REMESSA.AsInteger + 1;
  Result := I;

  vSeq_Remessa_Dia := 0;
  if cdsContasDT_REMESSA.AsDateTime = Date then
    vSeq_Remessa_Dia := cdsContasSEQ_REMESSA_DIA.AsInteger;

  vSeq_Remessa_Dia := vSeq_Remessa_Dia + 1;

  {try
    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE CONTAS SET NUM_ARQ_REMESSA = ' + IntToStr(i)
                       + ' , DT_REMESSA = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date))
                       + ' , SEQ_REMESSA_DIA = ' + IntToStr(vSeq_Remessa_Dia)
                       + ' WHERE ID = ' + cdsContasID.AsString;
    sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;}
end;

procedure TDMCob_Eletronica.prc_Nosso_Numero;
begin
  if cdsContasCNAB.AsString = 'CAIXA400' then
    vNossoNumero := fnc_Calcula_NossoNumeroCaixa(cdsContasID.AsInteger, vCod_Carteira)
  else if cdsContasCNAB.AsString = 'ITAU400' then
    vNossoNumero := fnc_Calcula_NossoNumeroItau(cdsContasID.AsInteger, vCod_Carteira)
  else if cdsContasCNAB.AsString = 'BRASIL400-6' then
    vNossoNumero := fnc_Calcula_NossoNumeroBrasil_6(cdsContasID.AsInteger, vCod_Carteira)
  else if cdsContasCNAB.AsString = 'BRASIL400' then
    vNossoNumero := fnc_Calcula_NossoNumeroBrasil(cdsContasID.AsInteger, vCod_Carteira)
  else if cdsContasCNAB.AsString = 'BANRISUL400' then
    vNossoNumero := fnc_Calcula_NossoNumeroBanrisul(cdsContasID.AsInteger, vCod_Carteira, vNumTeste)
  else if cdsContasCNAB.AsString = 'HSBC400' then
    vNossoNumero := fnc_Calcula_NossoNumeroHSBC(cdsContasID.AsInteger, vCod_Carteira);
  vNumTeste := 0;
end;

procedure TDMCob_Eletronica.prc_Gravar_Duplicata(Tipo: string);
var
  vItemAux: Integer;
  ID: TTransactionDesc;
  sds: TSQLDataSet;
begin
  vGravou_Hist := False;
  if (Tipo <> 'R') and (Tipo <> 'LIQ') and (Tipo <> 'LCA') and (Tipo <> 'PRO') then
  begin
    if (trim(cdsDuplicataNOSSONUMERO.AsString) <> '') and (cdsDuplicataID_CONTA_BOLETO.AsInteger = cdsContasID.AsInteger) and (cdsDuplicataID_CARTEIRA.AsInteger = vID_Carteira) then
    begin
      exit;
    end;
  end;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID := 11;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.CommandText := 'UPDATE TABELALOC SET FLAG = 1 ' + 'WHERE TABELA = ' + QuotedStr('DUPLICATA');
    sds.ExecSQL();

    cdsDuplicata.Edit;
    if (trim(cdsDuplicataNOSSONUMERO.AsString) = '') or (cdsDuplicataNOSSONUMERO.IsNull) and (trim(vNossoNumero) <> '') then
    begin
      cdsDuplicataNOSSONUMERO_SEQ.AsVariant := xNossoNum;
      if (trim(vNossoNumero_Montado) = '') and (trim(vNossoNumero) <> '') then
        vNossoNumero_Montado := vNossoNumero;
      cdsDuplicataNOSSONUMERO.AsString := vNossoNumero_Montado;
      if (Tipo = 'R') or (Tipo = 'I') or (Tipo = 'E') then
        cdsDuplicataNOSSONUMERO_GERADO.AsString := 'S'
      else
        cdsDuplicataNOSSONUMERO_GERADO.AsString := 'B';
      //Cleomar 11/05/2016
      if ((Tipo = 'R') or (Tipo = 'I') or (Tipo = 'E')) and (xNossoNum > 0) then
      begin
        cdsContas_calculo.Edit;
        cdsContas_calculoSEQ_NOSSONUMERO.AsString := IntToStr(xNossoNum);
        cdsContas_calculo.Post;
        cdsContas_calculo.ApplyUpdates(0);
      end;
      //*************
    end;
    if (Tipo <> 'LIQ') and (Tipo <> 'LCA') and (Tipo <> 'PRO') and (Tipo <> 'NNU') then
    begin
      cdsDuplicataID_CARTEIRA.AsInteger := vID_Carteira;
      cdsDuplicataCOD_CARTEIRA.AsString := vCod_Carteira;
      cdsDuplicataID_CONTA_BOLETO.AsInteger := cdsContasID.AsInteger;
      cdsDuplicataID_CONTA.AsInteger := cdsContasID.AsInteger;
      cdsDuplicataID_BANCO.AsInteger := cdsContasID_BANCO.AsInteger;
    end;
    if Tipo = 'R' then
    begin
      cdsDuplicataNUM_REMESSA.AsInteger   := vNum_Remessa;
      cdsDuplicataARQUIVO_GERADO.AsString := 'S';
      cdsDuplicataGERAR_NOSSONUMERO.AsString := vGera_NossoNumero;
      cdsDuplicataGERAR_REMESSA.AsString := vGeraRemessa;
      if (cdsDuplicataTAXA_BANCO.AsString = 'S') and (cdsDuplicataVLR_TAXA_BANCARIA.AsFloat <= 0) then
        cdsDuplicataVLR_TAXA_BANCARIA.AsFloat := StrToFloat(FormatFloat('0.00', cdsContasVLR_TAXA.AsFloat));
      //30/05/2018
      if qParametros_FinMANTER_DUP_CANC.AsString = 'S' then
      begin
        cdsDuplicata_Cob.Close;
        sdsDuplicata_Cob.ParamByName('ID').AsInteger := cdsDuplicataID.AsInteger;
        cdsDuplicata_Cob.Open;
        cdsDuplicata_Cob.Last;
        if not cdsDuplicata_Cob.IsEmpty then
        begin
          cdsDuplicata_Cob.Edit;
          cdsDuplicata_CobDTREMESSA.AsDateTime := Date;
          cdsDuplicata_Cob.Post;
          cdsDuplicata_Cob.ApplyUpdates(0);
        end;
      end;
      //************************
    end
    else if (Tipo = 'I') or (Tipo = 'E') then
    begin
      cdsDuplicataIMP_BOLETO.AsString := 'S';
      cdsDuplicataBOLETO_IMP.AsString := 'S';
      cdsDuplicataGERAR_NOSSONUMERO.AsString := vGera_NossoNumero;
      cdsDuplicataGERAR_REMESSA.AsString := vGeraRemessa;
      if (cdsDuplicataTAXA_BANCO.AsString = 'S') and (cdsDuplicataVLR_TAXA_BANCARIA.AsFloat <= 0) then
        cdsDuplicataVLR_TAXA_BANCARIA.AsFloat := StrToFloat(FormatFloat('0.00', cdsContasVLR_TAXA.AsFloat));
    end
    else if Tipo = 'PRO' then
      cdsDuplicataPROTESTADO.AsString := 'S';
    if trim(vAceite) <> '' then
      cdsDuplicataACEITE.AsString := vAceite;
    cdsDuplicata.Post;
    cdsDuplicata.ApplyUpdates(0);

    prc_Gravar_Historico(Tipo);

    dmDatabase.scoDados.Commit(ID);

    vGravou_Hist := True;
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
end;

function TDMCob_Eletronica.fnc_Calcula_NossoNumeroBrasil(ID_CONTA: Integer; NumCarteira: string): string;
var
  vNumero: Integer;
  texto1: string;
begin
  Result := '';
  vNumero := fnc_Seq_NossoNumero(ID_Conta, 9999, 99);
  texto1 := FormatFloat('0000000000', vNumero);
  Result := texto1;
end;

function TDMCob_Eletronica.fnc_Calcula_NossoNumeroBrasil_6(ID_CONTA: Integer; NumCarteira: string): string;
var
  vNumero: Integer;
  texto1: string;
begin
  Result := '';
  vNumero := fnc_Seq_NossoNumero(ID_Conta, 9999, 99);
  texto1 := cdsContasCOD_TRANSMISSAO.AsString + FormatFloat('0000000000', vNumero);
  Result := texto1;
end;

function TDMCob_Eletronica.fnc_Calcula_NossoNumeroBanrisul(ID_CONTA: Integer; NumCarteira: string; Numero: Integer): string;
var
  vNumero, vSoma, vAux, vAux2, vSomaAux: Integer;
  texto1, texto2: string;
  vDigMod10, vDigMod11: Integer;
  vFlag: Boolean;
  //Função para calcular o digito verificador no módulo 10
  function CalculaDigMod10(Campo: string): Integer;
  var
    i: Integer;
  begin
    vSoma := 0;
    vAux := 1;
    for i := length(campo) downto 1 do
    begin
      inc(vAux);
      if vAux > 2 then
        vAux := 1;
      vSomaAux := StrToInt(Copy(campo, i, 1)) * vAux;
      if vSomaAux > 9 then
        vSomaAux := vSomaAux - 9;
      vSoma := vSoma + vSomaAux;
    end;
    if vSoma < 10 then
      Result := vSoma
    else
    begin
      Result := StrToInt(FormatFloat('0', 10 - (vSoma - ((vSoma div 10) * 10))));
      if Result > 9 then
        Result := 0;
    end;
  end;

  //Função para calcular o digito verificador no módulo 11
  function CalculaDigMod11(Campo: string): Integer;
  var
    i: Integer;
  begin
    vSoma := 0;
    vAux := 1;
    for i := length(Campo) downto 1 do
    begin
      inc(vAux);
      if vAux > 7 then
        vAux := 2;
      vSomaAux := StrToInt(Copy(Campo, i, 1)) * vAux;
      vSoma := vSoma + vSomaAux;
    end;
    if vSoma < 11 then
      Result := vSoma
    else
      Result := (vSoma - ((vSoma div 11) * 11));
  end;

begin
  Result := '';
  if Numero > 0 then
    vNumero := Numero
  else
    vNumero := fnc_Seq_NossoNumero(ID_Conta, 9999, 99);
  //****
  texto1 := FormatFloat('00000000', vNumero);
  vDigMod10 := CalculaDigMod10(texto1);

  vFlag := False;
  while not vFlag do
  begin
    vAux := CalculaDigMod11(texto1 + IntToStr(vDigMod10));
    vFlag := (vAux <> 1);
    if vAux = 1 then
    begin
      vDigMod10 := vDigMod10 + 1;
      if vDigMod10 = 10 then
        vDigMod10 := 0;
    end;
    if vAux > 0 then
      vAux := 11 - vAux;
    vDigMod11 := vAux;
  end;
  Result := texto1 + IntToStr(vDigMod10) + IntToStr(vDigMod11);

  //****
end;       

{********************************************************************************}
{*** Função para montar o código de barras e a linha digitável do boleto Banrisul}
{********************************************************************************}
function TDMCob_Eletronica.MontaBoletoBanrisul(tipo, nDoc, Carteira, DigNossoNum, Produto: string; data: TDateTime; valor: Currency): string;
var
  fatVcto, vlr, vCodBarra, vLinha, dv: string;
  i: Byte;
  vAux, vAux2, vSoma: Integer;
  vCampo1, vCampo2, vCampo3, vCampo4, vCampo5: string;
//Função para calcular o digito verificador no módulo 11
  function CalculaDigMod11(Campo: string): string;
  var
    i: Byte;
  begin
    vSoma := 0;
    vAux := 1;
    for i := length(campo) downto 1 do
    begin
      inc(vAux);
      if vAux > 9 then
        vAux := 2;
      vSoma := vSoma + (StrToInt(Copy(vCodBarra, i, 1)) * vAux);
    end;
    vAux := vSoma div 11;
    vAux2 := vAux * 11;
    vAux := vSoma - vAux2;
    if (vAux = 0) or (vAux = 1) or (vAux = 10) then
      vAux := 1
    else
      vAux := 11 - vAux;
    CalculaDigMod11 := IntToStr(vAux);
  end;
//Função para calcular o digito verificador no módulo 10
  function CalculaDigMod10(Campo: string): string;
  var
    i: Byte;
    v: string;
  begin
    v := '2';
    vSoma := 0;
    for i := length(campo) downto 1 do
    begin
      dv := IntToStr(StrToInt(Copy(campo, i, 1)) * StrToInt(v));
      if StrToInt(dv) >= 10 then
        dv := IntToStr(StrToInt(copy(dv, 1, 1)) + StrToInt(copy(dv, 2, 1)));
      vSoma := vSoma + StrToInt(dv);
      if v = '2' then
        v := '1'
      else
        v := '2';
    end;
  //dv := IntToStr(vSoma + 9);
  //dv := IntToStr(StrToInt(dv) div 10);
    dv := IntToStr(vSoma div 10);
    dv := IntToStr(StrToInt(dv) * 10);
    vSoma := vSoma - StrToInt(dv);
    if vSoma = 10 then
      vSoma := 0
    else
      vSoma := 10 - vSoma;
    CalculaDigMod10 := IntToStr(vSoma);
  end;

begin
  //fatVcto := FormatFloat('0', data - StrToDate('03/07/2000'));
  fatVcto := FormatFloat('0', data - StrToDate('07/10/1997'));
  vlr := FormatFloat('0', valor * 100);
  for i := 1 to 10 - Length(vlr) do
    vlr := '0' + vlr;

  //vCalc := '7489' + ;

  vCodBarra := '041'; //01 a 03 Identificação do banco
  vCodBarra := vCodBarra + '9'; //04 a 04 Código da moeda
  vCodBarra := vCodBarra + fatVcto; //06 a 09
  vCodBarra := vCodBarra + vlr; //10 a 19
  vCodBarra := vCodBarra + Produto; //20 a 20
  vCodBarra := vCodBarra + '1'; //21 a 21
  vCodBarra := vCodBarra + Copy(cdsContasAGENCIA.AsString, 1, 4); //22 a 25 Agência sem o número de controle
  vCodBarra := vCodBarra + Copy(cdsContasCOD_CEDENTE.AsString, 1, 7); //26 a 32 Código Cedente sem o número de controle
  vCodBarra := vCodBarra + nDoc; //33 a 40 Nosso número sem o número de controle
  vCodBarra := vCodBarra + '40'; //41 a 42
  //vCodBarra := vCodBarra + '000'; //43 a 44 Zero
  vAux := StrToInt(CalculaDigMod10(copy(vCodBarra, 19, 23)));
  vCodBarra := vCodBarra + IntToStr(vAux);
  vAux := StrToInt(CalculaDigMod11(copy(vCodBarra, 19, 23)));
  vCodBarra := vCodBarra + IntToStr(vAux);

  {//Cálcula o digito verificar do campo livre calculado (posição 44 do código de barras)
  //Calculo este digito verificar pegando as 42 posições do código de barras até o momento
  vAux := StrToInt(CalculaDigMod11(vCodBarra));
  if (vAux > 9) or (vAux = 1) then
    vAux := 0;
  vCodBarra := vCodBarra + IntToStr(vAux); //44 a 44 DV do campo livre calculado por módulo 11}

  //Cálcula o digito verificador geral (posição 5 do código de barras)
  vAux := StrToInt(CalculaDigMod11(vCodBarra));
  vCodBarra := copy(vCodBarra, 1, 4) + IntToStr(vAux) + copy(vCodBarra, 5, 39);

  //Código de barras
  if tipo = 'B' then //B = código Barra
    result := vCodBarra
  else
  //Linha digitável
 if tipo = 'L' then //L = Linha digitável
  begin
    vCampo1 := '0419' + copy(vCodBarra, 20, 1);
    vCampo1 := vCampo1 + copy(vCodBarra, 21, 1);
    vCampo1 := vCampo1 + copy(vCodBarra, 22, 3);
    vCampo1 := vCampo1 + CalculaDigMod10(vCampo1);

    vCampo2 := copy(vCodBarra, 25, 1);
    vCampo2 := vCampo2 + copy(vCodBarra, 26, 7);
    vCampo2 := vCampo2 + copy(vCodBarra, 33, 2);
    vCampo2 := vCampo2 + CalculaDigMod10(vCampo2);

    vCampo3 := copy(vCodBarra, 35, 6) + copy(vCodBarra, 41, 2) + copy(vCodBarra, 43, 1) + copy(vCodBarra, 44, 1);
    vCampo3 := vCampo3 + CalculaDigMod10(vCampo3);

    vCampo4 := copy(vCodBarra, 5, 1);
    vCampo5 := FormatFloat('0000', StrToFloat(fatVcto)) + vlr;

    vLinha := copy(vCampo1, 1, 5) + '.' + copy(vCampo1, 6, 5) + '  ';
    vLinha := vLinha + copy(vCampo2, 1, 6) + '.' + copy(vCampo2, 7, 5) + '  ';
    vLinha := vLinha + copy(vCampo3, 1, 5) + '.' + copy(vCampo3, 6, 6) + '  ' + vCampo4 + '  ' + vCampo5;

    result := vLinha;
  end;
end;

procedure TDMCob_Eletronica.prc_Gravar_mBoleto;
begin
  mBoleto.Insert;
  mBoletoNossoNumero.AsString := cdsDuplicataNOSSONUMERO.AsString;
  mBoletoNumNota.AsString := cdsDuplicataNUMDUPLICATA.AsString;
  mBoletoParcela.AsInteger := cdsDuplicataPARCELA.AsInteger;
  if trim(cdsDuplicataCOD_CARTEIRA_IMP.AsString) <> '' then
    mBoletoCodCarteira.AsString := cdsDuplicataCOD_CARTEIRA_IMP.AsString
  else
    mBoletoCodCarteira.AsString := cdsDuplicataCOD_CARTEIRA.AsString;
  mBoletoDtVencimento.AsDateTime := cdsDuplicataDTVENCIMENTO.AsDateTime;
  mBoletoVlrParcela.AsFloat := cdsDuplicataVLR_PARCELA.AsFloat;
  mBoletoNomeCliente.AsString := cdsDuplicataNOME_CLIENTE.AsString;
  if trim(cdsDuplicataENDERECO_PGTO.AsString) <> '' then
  begin
    mBoletoEndereco.AsString := cdsDuplicataENDERECO_PGTO.AsString;
    mBoletoNumEnd.AsString := cdsDuplicataNUM_END_PGTO.AsString;
    mBoletoBairro.AsString := cdsDuplicataBAIRRO_PGTO.AsString;
    mBoletoCidade.AsString := cdsDuplicataCIDADE_PGTO.AsString;
    mBoletoUF.AsString := cdsDuplicataUF_PGTO.AsString;
    mBoletoCep.AsString := cdsDuplicataCEP_PGTO.AsString;
    mBoletoCNPJ_CPF.AsString := cdsDuplicataCNPJ_CPG_PGTO.AsString;
    mBoletoPessoaCli.AsString := cdsDuplicataPESSOA_PGTO.AsString;
    if trim(cdsDuplicataCOMPLEMENTO_END_PGTO.AsString) <> '' then
      mBoletoComplemento_End.AsString := cdsDuplicataCOMPLEMENTO_END_PGTO.AsString;
  end
  else
  begin
    mBoletoEndereco.AsString := cdsDuplicataENDERECO.AsString;
    mBoletoNumEnd.AsString := cdsDuplicataNUM_END.AsString;
    mBoletoBairro.AsString := cdsDuplicataBAIRRO.AsString;
    mBoletoCidade.AsString := cdsDuplicataCIDADE.AsString;
    mBoletoUF.AsString := cdsDuplicataUF.AsString;
    mBoletoCep.AsString := cdsDuplicataCEP.AsString;
    mBoletoCNPJ_CPF.AsString := cdsDuplicataCNPJ_CPF.AsString;
    mBoletoPessoaCli.AsString := cdsDuplicataPESSOA.AsString;
    if trim(cdsDuplicataCOMPLEMENTO_END.AsString) <> '' then
      mBoletoComplemento_End.AsString := cdsDuplicataCOMPLEMENTO_END.AsString;
  end;
  mBoletoEspecie.AsString := '';
  if cdsDuplicataCOD_CARTEIRA_IMP.AsString <> '' then
    mBoletoEspecie.AsString := cdsDuplicataCOD_CARTEIRA_IMP.AsString;
  if cdsContasCOD_RED_ESPECIE.AsString <> '' then
    mBoletoEspecie.AsString := cdsDuplicataCOD_CARTEIRA_IMP.AsString + '/' + cdsContasCOD_RED_ESPECIE.AsString;
  if trim(mBoletoEspecie.AsString) = '' then
    mBoletoEspecie.AsString := cdsContasCOD_ESPECIE.AsString;
  mBoletoDtEmissao.AsDateTime := cdsDuplicataDTEMISSAO.AsDateTime;
  mBoletoAceite.AsString := cdsDuplicataACEITE.AsString;
  if trim(mBoletoAceite.AsString) = '' then
    mBoletoAceite.AsString := 'N';
  mBoletoDtBoleto.AsDateTime := Date;
  mBoletoNomeFilial.AsString := qFilialNOME.AsString;
  mBoletoCNPJ_CPF_Filial.AsString := qFilialCNPJ_CPF.AsString;
  mBoletoPessoaFilial.AsString := qFilialPESSOA.AsString;
  mBoletoAgencia.AsString := cdsContasAGENCIA.AsString;
  mBoletoCodCedente.AsString := cdsContasCOD_CEDENTE.AsString;
  mBoletoLocalDePagamento.AsString := cdsContasLOCAL_PAGAMENTO.AsString;
  mBoleto.Post;
end;

function TDMCob_Eletronica.fnc_Calcula_NossoNumeroHSBC(ID_CONTA: Integer; NumCarteira: string): string;
var
  vNumero, i, vSoma, vAux, vAux2, vSomaAux: Integer;
  texto1: string;
begin
  //Busca o número sequencial do nosso número
  Result := '';
  vNumero := fnc_Seq_NossoNumero(ID_Conta, 9999, 99);
  xNossoNum := vNumero;
  //****
  //aqui - Foi alterado dia 02/05/2013
//  texto1  := copy(cdsContasNUMCONTA.AsString,1,4) + cdsContasDIG_CONTA.AsString;
  //texto1  := copy(cdsContasNUMCONTA.AsString,1,5);
  texto1 := copy(cdsContasCOD_TRANSMISSAO.AsString, 1, 5);
  texto1 := Monta_Numero(texto1, 5);
  texto1 := texto1 + FormatFloat('00000', vNumero);
  vSoma := 0;
  vAux := 1;
  for i := length(texto1) downto 1 do
  begin
    inc(vAux);
    if vAux > 7 then
      vAux := 2;
    vSomaAux := StrToInt(Copy(texto1, i, 1)) * vAux;
    vSoma := vSoma + vSomaAux
  end;

  vAux := vSoma div 11;
  vAux2 := vAux * 11;
  vAux := vSoma - vAux2;
  if vAux < 2 then
    vAux := 0
  else
    vAux := 11 - vAux;
  texto1 := texto1 + FormatFloat('0', vAux);
  vNossoNumero_Montado := texto1;
  Result := texto1;
end;

procedure TDMCob_Eletronica.mRetornoNewRecord(DataSet: TDataSet);
begin
  mRetornoFilial.AsInteger := 0;
  mRetornoAtualizar.AsString := 'N';
  mRetornoAtualizado.AsString := 'N';
  mRetornoBuscou_Titulos.AsString := 'N';
end;

procedure TDMCob_Eletronica.RLPreviewSetup1Send(Sender: TObject);
begin
  //TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TDMCob_Eletronica.DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCob_Eletronica.buscaNossoNumero;
begin
  cdsContas_calculo.Close;
  sdsContas_Calculo.ParamByName('ID').AsInteger := cdsContasID.AsInteger;
  if cdsContasNOSSONUMERO_POR_ANO.AsString = 'S' then
    sdsContas_Calculo.ParamByName('ANO').AsInteger := StrToInt(FormatDateTime('YYYY', Date))
  else
    sdsContas_Calculo.ParamByName('ANO').AsInteger := 9999;
  sdsContas_Calculo.ParamByName('ITEM').AsInteger := 99;
  cdsContas_calculo.Open;

  if cdsContas_calculo.IsEmpty then
  begin
    cdsContas_calculo.Insert;
    cdsContas_calculoID.AsInteger := cdsContasID.AsInteger;
    if cdsContasNOSSONUMERO_POR_ANO.AsString = 'S' then
      cdsContas_calculoANO.AsInteger := StrToInt(FormatDateTime('YYYY', Date))
    else
      cdsContas_calculoANO.AsInteger := 9999;
    cdsContas_calculoITEM.AsInteger := 99;
    cdsContas_calculoSEQ_NOSSONUMERO.AsInteger := 0;
    cdsContas_calculo.Post;
    cdsContas_calculo.ApplyUpdates(0);

    cdsContas_calculo.Close;
    sdsContas_Calculo.ParamByName('ID').AsInteger := cdsContasID.AsInteger;
    if cdsContasNOSSONUMERO_POR_ANO.AsString = 'S' then
      sdsContas_Calculo.ParamByName('ANO').AsInteger := StrToInt(FormatDateTime('YYYY', Date))
    else
      sdsContas_Calculo.ParamByName('ANO').AsInteger := 9999;
    sdsContas_Calculo.ParamByName('ITEM').AsInteger := 99;
    cdsContas_calculo.Open;
  end;
  //xNossoNum := StrToInt(cdsContas_calculoSEQ_NOSSONUMERO.AsString);
  xNossoNum := StrToInt64(FormatFloat('0', cdsContas_calculoSEQ_NOSSONUMERO.AsFloat));
end;

procedure TDMCob_Eletronica.prc_Gravar_Historico(Tipo: string; Historico: string = '');
var
  vItemAux: Integer;
  msgTaxaBancaria: string;
begin
  cdsDuplicata_Hist.Close;
  sdsDuplicata_Hist.ParamByName('ID').AsInteger := cdsDuplicataID.AsInteger;
  cdsDuplicata_Hist.Open;
  cdsDuplicata_Hist.Last;
  vItemAux := cdsDuplicata_HistITEM.AsInteger + 1;
  vItemAux := vItemAux;
  msgTaxaBancaria := '';

  cdsDuplicata_Hist.Insert;
  cdsDuplicata_HistID.AsInteger := cdsDuplicataID.AsInteger;
  cdsDuplicata_HistITEM.AsInteger := vItemAux;
  cdsDuplicata_HistTIPO_HISTORICO.AsString := 'OUT';
  cdsDuplicata_HistID_HISTORICO.AsInteger := 0;
  if cdsDuplicataVLR_TAXA_BANCARIA.AsFloat > 0 then
    msgTaxaBancaria := ' - COBRANÇA DE TAXA BANCÁRIA ';
  if Tipo = 'R' then
    cdsDuplicata_HistCOMPLEMENTO.AsString := 'REMESSA ' + cdsContasNOME.AsString + ' - Nosso Nº ' + vNossoNumero + msgTaxaBancaria
  else if Tipo = 'PRO' then
    cdsDuplicata_HistCOMPLEMENTO.AsString := 'TITULO PROTESTADO'
  else if Tipo = 'E' then
    cdsDuplicata_HistCOMPLEMENTO.AsString := 'BOLETO ENVIADO POR EMAIL ' + cdsContasNOME.AsString + ' - Nosso Nº ' + vNossoNumero + msgTaxaBancaria
  else if Tipo = 'OUT' then
    cdsDuplicata_HistCOMPLEMENTO.AsString := Historico
  else if Tipo = 'NNU' then
    cdsDuplicata_HistCOMPLEMENTO.AsString := 'GRAVADO O NOSSO NÚMERO CONFORME RETORNO DO BANCO - Nosso Nº ' + vNossoNumero
  else
    cdsDuplicata_HistCOMPLEMENTO.AsString := 'BOLETO IMPRESSO ' + cdsContasNOME.AsString + ' - Nosso Nº ' + vNossoNumero + msgTaxaBancaria;
  cdsDuplicata_HistDTHISTORICO.AsDateTime := Date;
  cdsDuplicata_HistDTLANCAMENTO.AsDateTime := Date;
  cdsDuplicata_HistVLR_PAGAMENTO.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  cdsDuplicata_HistVLR_JUROSPAGOS.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  cdsDuplicata_HistVLR_DESCONTOS.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  cdsDuplicata_HistVLR_DESPESAS.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  cdsDuplicata_HistVLR_DEVOLUCAO.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  cdsDuplicata_HistVLR_JUROSCALCULADO.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  cdsDuplicata_HistVLR_TAXA_BANCARIA.AsFloat := cdsDuplicataVLR_TAXA_BANCARIA.AsFloat;
  cdsDuplicata_HistNUMCHEQUE.AsInteger := 0;
  cdsDuplicata_HistDTPREVISAO_CHEQUE.Clear;
  cdsDuplicata_HistID_CONTA.AsInteger := cdsDuplicataID_CONTA_BOLETO.AsInteger;
  cdsDuplicata_HistID_COMISSAO.AsInteger := 0;
  cdsDuplicata_HistTIPO_ES.AsString := cdsDuplicataTIPO_ES.AsString;
  cdsDuplicata_HistVLR_LANCAMENTO.AsFloat := 0;
  if Tipo = 'R' then
    cdsDuplicata_HistEND_ARQUIVO_REM.AsString := vEnd_Arq_Remessa;

  if Tipo <> 'OUT' then
  begin
    cdsDuplicata_HistNUM_REMESSA.AsInteger := vNum_Remessa;
    cdsDuplicata_HistID_CARTEIRA.AsInteger := vID_Carteira;
    cdsDuplicata_HistID_OCORRENCIA.AsInteger := cdsContasID_OCORRENCIA.AsInteger;
  end;
  cdsDuplicata_Hist.Post;
  cdsDuplicata_Hist.ApplyUpdates(0);
end;

function TDMCob_Eletronica.Monta_NomeSicredi(vCaminho, vCedente: string): string;
var
  Texto1: string;
  vAux: Integer;
  Flag: Boolean;
  ano, mes, dia: Word;
  vMes: string;
begin
  Texto1 := vCedente;
  flag := True;
  vAux := 1;

  DecodeDate(Date, ano, mes, dia);
  case mes of
    1:
      vMes := '1';
    2:
      vMes := '2';
    3:
      vMes := '3';
    4:
      vMes := '4';
    5:
      vMes := '5';
    6:
      vMes := '6';
    7:
      vMes := '7';
    8:
      vMes := '8';
    9:
      vMes := '9';
    10:
      vMes := 'O';
    11:
      vMes := 'N';
    12:
      vMes := 'D';
  end;

  //if copy(vCaminho,Length(vCaminho),1) = '\' then
  //  Texto1 := vCaminho + texto1 + vMes + FormatFloat('00',Dia) + '.CRM'
  //else
  //  Texto1 := vCaminho + '\' + texto1 + vMes + FormatFloat('00',Dia) + '.CRM';

  if copy(vCaminho, Length(vCaminho), 1) = '\' then
    Texto1 := vCaminho + texto1 + vMes + FormatFloat('00', Dia)
  else
    Texto1 := vCaminho + '\' + texto1 + vMes + FormatFloat('00', Dia);

  while Flag do
  begin
    if (FileExists(texto1)) then
    begin
      inc(vAux);
      Delete(Texto1, Length(texto1) - 2, 3);
      Texto1 := Texto1 + 'RM' + IntToStr(vAux);
      Flag := True;
    end
    else
      Flag := False;
  end;
  Result := Texto1;
end;

procedure TDMCob_Eletronica.prc_Abrir_Contas(Inativo: Boolean);
begin
  cdsContas.Close;
  sdsContas.CommandText := ctContas;
  if not Inativo then
  begin
    sdsContas.CommandText := sdsContas.CommandText + ' AND INATIVO = ' + QuotedStr('N')
                           + ' and ct.acbr_layoutremessa is not null ';
  end;
  cdsContas.Open;
end;

procedure TDMCob_Eletronica.prc_Abrir_Carteira(Id_Banco: Integer);
begin
  cdsCobCarteira.Close;
  sdsCobCarteira.ParamByName('ID_BANCO').AsInteger := Id_Banco;
  cdsCobCarteira.Open;
end;

function TDMCob_Eletronica.fnc_busca_tipo_instrucao(Id_Banco, Id_Instrucao, Id_Instrucao2: Integer): string;
var
  x: string;
begin
  cdsCob_Tipo_Cadastro.Close;
  x := 'select * from cob_tipo_cadastro where id in (' + IntToStr(Id_Instrucao) + ', ' + IntToStr(Id_Instrucao2) + ')';
  x := x + ' AND TIPO_REG = ' + QuotedStr('INS');
  x := x + ' AND TIPO_INST = ' + QuotedStr('PRO');
  sdsCob_Tipo_Cadastro.CommandText := x;
  cdsCob_Tipo_Cadastro.Open;
  Result := cdsCob_Tipo_CadastroTIPO_PROTESTO.AsString;
end;

end.

