object DMImportarXML_NFSe: TDMImportarXML_NFSe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 61
  Top = 35
  Height = 691
  Width = 957
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 96
    object sdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 168
    Top = 96
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidade'
    Left = 232
    Top = 96
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 304
    Top = 96
  end
  object sdsFornecedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 208
    object sdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsFornecedorCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsFornecedorNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object sdsFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsFornecedorID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsFornecedorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsFornecedorDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object sdsFornecedorTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object sdsFornecedorDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object sdsFornecedorTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sdsFornecedorDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsFornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsFornecedorPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsFornecedorINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsFornecedorENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object sdsFornecedorCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object sdsFornecedorNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object sdsFornecedorBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object sdsFornecedorID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object sdsFornecedorCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object sdsFornecedorCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object sdsFornecedorUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object sdsFornecedorPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object sdsFornecedorINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object sdsFornecedorENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object sdsFornecedorCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object sdsFornecedorNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object sdsFornecedorBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object sdsFornecedorID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object sdsFornecedorCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object sdsFornecedorCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object sdsFornecedorUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object sdsFornecedorUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsFornecedorDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsFornecedorHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsFornecedorOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsFornecedorCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object sdsFornecedorRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsFornecedorID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsFornecedorID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsFornecedorID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object sdsFornecedorID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsFornecedorID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsFornecedorID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsFornecedorID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object sdsFornecedorID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object sdsFornecedorPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsFornecedorDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object sdsFornecedorFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object sdsFornecedorDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object sdsFornecedorFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object sdsFornecedorINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object sdsFornecedorTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object sdsFornecedorEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object sdsFornecedorEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object sdsFornecedorEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object sdsFornecedorPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object sdsFornecedorINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object sdsFornecedorUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object sdsFornecedorPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object sdsFornecedorTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object sdsFornecedorTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object sdsFornecedorTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object sdsFornecedorTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object sdsFornecedorINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 168
    Top = 208
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 232
    Top = 208
    object cdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFornecedorCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsFornecedorNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFornecedorID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFornecedorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsFornecedorDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsFornecedorTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsFornecedorDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object cdsFornecedorTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsFornecedorDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsFornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsFornecedorPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFornecedorINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsFornecedorENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsFornecedorCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsFornecedorNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsFornecedorBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsFornecedorID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsFornecedorCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object cdsFornecedorCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsFornecedorUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsFornecedorPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object cdsFornecedorINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object cdsFornecedorENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object cdsFornecedorCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object cdsFornecedorNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object cdsFornecedorBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object cdsFornecedorID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object cdsFornecedorCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object cdsFornecedorCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object cdsFornecedorUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object cdsFornecedorUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsFornecedorDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsFornecedorHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsFornecedorOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFornecedorCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsFornecedorRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsFornecedorID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsFornecedorID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsFornecedorID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object cdsFornecedorID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsFornecedorID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsFornecedorID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsFornecedorID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsFornecedorID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsFornecedorPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsFornecedorDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object cdsFornecedorFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object cdsFornecedorDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object cdsFornecedorFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object cdsFornecedorINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object cdsFornecedorTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object cdsFornecedorEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsFornecedorEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsFornecedorEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object cdsFornecedorPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object cdsFornecedorINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object cdsFornecedorUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object cdsFornecedorPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdsFornecedorTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object cdsFornecedorTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object cdsFornecedorTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object cdsFornecedorTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object cdsFornecedorINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 304
    Top = 208
  end
  object cdsNFSe: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Numero'
        DataType = ftInteger
      end
      item
        Name = 'CodigoVerificacao'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'DataEmissao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IdentificacaoRps'
        ChildDefs = <
          item
            Name = 'Numero1'
            DataType = ftInteger
          end
          item
            Name = 'Serie'
            DataType = ftString
            Size = 5
          end
          item
            Name = 'Tipo'
            DataType = ftInteger
          end>
        DataType = ftADT
        Size = 3
      end
      item
        Name = 'DataEmissaoRps'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NaturezaOperacao'
        DataType = ftInteger
      end
      item
        Name = 'RegimeEspecialTributacao'
        DataType = ftInteger
      end
      item
        Name = 'OptanteSimplesNacional'
        DataType = ftInteger
      end
      item
        Name = 'IncentivadorCultural'
        DataType = ftInteger
      end
      item
        Name = 'Competencia'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'OutrasInformacoes'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Servico'
        ChildDefs = <
          item
            Name = 'Valores'
            ChildDefs = <
              item
                Name = 'ValorServicos'
                DataType = ftFloat
              end
              item
                Name = 'ValorDeducoes'
                DataType = ftFloat
              end
              item
                Name = 'ValorPis'
                DataType = ftFloat
              end
              item
                Name = 'ValorCofins'
                DataType = ftFloat
              end
              item
                Name = 'ValorInss'
                DataType = ftFloat
              end
              item
                Name = 'ValorIr'
                DataType = ftFloat
              end
              item
                Name = 'ValorCsll'
                DataType = ftFloat
              end
              item
                Name = 'IssRetido'
                DataType = ftInteger
              end
              item
                Name = 'ValorIss'
                DataType = ftFloat
              end
              item
                Name = 'OutrasRetencoes'
                DataType = ftFloat
              end
              item
                Name = 'BaseCalculo'
                DataType = ftFloat
              end
              item
                Name = 'Aliquota'
                DataType = ftFloat
              end
              item
                Name = 'ValorLiquidoNfse'
                DataType = ftFloat
              end
              item
                Name = 'ValorIssRetido'
                DataType = ftFloat
              end
              item
                Name = 'DescontoCondicionado'
                DataType = ftFloat
              end
              item
                Name = 'DescontoIncondicionado'
                DataType = ftFloat
              end>
            DataType = ftADT
            Size = 16
          end
          item
            Name = 'ItemListaServico'
            DataType = ftString
            Size = 5
          end
          item
            Name = 'CodigoCnae'
            DataType = ftInteger
          end
          item
            Name = 'CodigoTributacaoMunicipio'
            DataType = ftString
            Size = 20
          end
          item
            Name = 'Discriminacao'
            DataType = ftString
            Size = 2000
          end
          item
            Name = 'MunicipioPrestacaoServico'
            DataType = ftInteger
          end>
        DataType = ftADT
        Size = 6
      end
      item
        Name = 'NfseSubstituida'
        DataType = ftInteger
      end
      item
        Name = 'ValorCredito'
        DataType = ftFloat
      end
      item
        Name = 'PrestadorServico'
        ChildDefs = <
          item
            Name = 'IdentificacaoPrestador'
            ChildDefs = <
              item
                Name = 'CpfCnpj'
                ChildDefs = <
                  item
                    Name = 'Cpf'
                    DataType = ftString
                    Size = 11
                  end
                  item
                    Name = 'Cnpj'
                    DataType = ftString
                    Size = 14
                  end>
                DataType = ftADT
                Size = 2
              end
              item
                Name = 'InscricaoMunicipal'
                DataType = ftString
                Size = 15
              end>
            DataType = ftADT
            Size = 2
          end
          item
            Name = 'RazaoSocial'
            DataType = ftString
            Size = 115
          end
          item
            Name = 'NomeFantasia'
            DataType = ftString
            Size = 60
          end
          item
            Name = 'Endereco'
            ChildDefs = <
              item
                Name = 'Endereco'
                DataType = ftString
                Size = 125
              end
              item
                Name = 'Numero2'
                DataType = ftString
                Size = 10
              end
              item
                Name = 'Complemento'
                DataType = ftString
                Size = 60
              end
              item
                Name = 'Bairro'
                DataType = ftString
                Size = 60
              end
              item
                Name = 'Cidade'
                DataType = ftInteger
              end
              item
                Name = 'Estado'
                DataType = ftString
                Size = 2
              end
              item
                Name = 'Cep'
                DataType = ftInteger
              end>
            DataType = ftADT
            Size = 7
          end
          item
            Name = 'Contato'
            ChildDefs = <
              item
                Name = 'Telefone'
                DataType = ftString
                Size = 11
              end
              item
                Name = 'Email'
                DataType = ftString
                Size = 80
              end>
            DataType = ftADT
            Size = 2
          end>
        DataType = ftADT
        Size = 5
      end
      item
        Name = 'TomadorServico'
        ChildDefs = <
          item
            Name = 'IdentificacaoTomador'
            ChildDefs = <
              item
                Name = 'CpfCnpj'
                ChildDefs = <
                  item
                    Name = 'Cpf'
                    DataType = ftString
                    Size = 11
                  end
                  item
                    Name = 'Cnpj'
                    DataType = ftString
                    Size = 14
                  end>
                DataType = ftADT
                Size = 2
              end
              item
                Name = 'InscricaoMunicipal'
                DataType = ftString
                Size = 15
              end>
            DataType = ftADT
            Size = 2
          end
          item
            Name = 'RazaoSocial'
            DataType = ftString
            Size = 115
          end
          item
            Name = 'Endereco'
            ChildDefs = <
              item
                Name = 'Endereco'
                DataType = ftString
                Size = 125
              end
              item
                Name = 'Numero2'
                DataType = ftString
                Size = 10
              end
              item
                Name = 'Complemento'
                DataType = ftString
                Size = 60
              end
              item
                Name = 'Bairro'
                DataType = ftString
                Size = 60
              end
              item
                Name = 'Cidade'
                DataType = ftInteger
              end
              item
                Name = 'Estado1'
                DataType = ftString
                Size = 2
              end
              item
                Name = 'Cep'
                DataType = ftInteger
              end>
            DataType = ftADT
            Size = 7
          end
          item
            Name = 'Contato'
            ChildDefs = <
              item
                Name = 'Telefone'
                DataType = ftString
                Size = 11
              end
              item
                Name = 'Email'
                DataType = ftString
                Size = 80
              end>
            DataType = ftADT
            Size = 2
          end>
        DataType = ftADT
        Size = 4
      end
      item
        Name = 'IntermediarioServico'
        ChildDefs = <
          item
            Name = 'RazaoSocial'
            DataType = ftString
            Size = 115
          end
          item
            Name = 'CpfCnpj'
            ChildDefs = <
              item
                Name = 'Cpf'
                DataType = ftString
                Size = 11
              end
              item
                Name = 'Cnpj'
                DataType = ftString
                Size = 14
              end>
            DataType = ftADT
            Size = 2
          end
          item
            Name = 'InscricaoMunicipal'
            DataType = ftString
            Size = 15
          end>
        DataType = ftADT
        Size = 3
      end
      item
        Name = 'OrgaoGerador'
        ChildDefs = <
          item
            Name = 'CodigoMunicipio'
            DataType = ftInteger
          end
          item
            Name = 'Uf'
            DataType = ftString
            Size = 2
          end>
        DataType = ftADT
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 112
    Top = 440
    Data = {
      710800009619E0BD0200000018000000550000000000030000007108064E756D
      65726F040001000000000011436F6469676F566572696669636163616F010049
      00000001000557494454480200020009000B44617461456D697373616F010049
      0000000100055749445448020002001400104964656E74696669636163616F52
      707303000C0100000000074E756D65726F310400010000000000055365726965
      0100490000000100055749445448020002000500045469706F04000100000000
      000E44617461456D697373616F52707301004900000001000557494454480200
      02001400104E61747572657A614F7065726163616F0400010000000000185265
      67696D65457370656369616C5472696275746163616F0400010000000000164F
      7074616E746553696D706C65734E6163696F6E616C040001000000000014496E
      63656E74697661646F7243756C747572616C04000100000000000B436F6D7065
      74656E6369610100490000000100055749445448020002000800114F75747261
      73496E666F726D61636F6573020049000000010005574944544802000200FF00
      075365727669636F06000C01000000000756616C6F72657310000C0100000000
      0D56616C6F725365727669636F7308000400000000000D56616C6F7244656475
      636F657308000400000000000856616C6F7250697308000400000000000B5661
      6C6F72436F66696E7308000400000000000956616C6F72496E73730800040000
      0000000756616C6F72497208000400000000000956616C6F7243736C6C080004
      00000000000949737352657469646F04000100000000000856616C6F72497373
      08000400000000000F4F7574726173526574656E636F65730800040000000000
      0B4261736543616C63756C6F080004000000000008416C6971756F7461080004
      00000000001056616C6F724C69717569646F4E66736508000400000000000E56
      616C6F7249737352657469646F080004000000000014446573636F6E746F436F
      6E646963696F6E61646F080004000000000016446573636F6E746F496E636F6E
      646963696F6E61646F0800040000000000104974656D4C697374615365727669
      636F01004900000001000557494454480200020005000A436F6469676F436E61
      65040001000000000019436F6469676F5472696275746163616F4D756E696369
      70696F01004900000001000557494454480200020014000D4469736372696D69
      6E6163616F020049000000010005574944544802000200D007194D756E696369
      70696F50726573746163616F5365727669636F04000100000000000F4E667365
      537562737469747569646104000100000000000C56616C6F724372656469746F
      080004000000000010507265737461646F725365727669636F05000C01000000
      00164964656E74696669636163616F507265737461646F7202000C0100000000
      07437066436E706A02000C010000000003437066010049000000010005574944
      5448020002000B0004436E706A0100490000000100055749445448020002000E
      0012496E7363726963616F4D756E69636970616C010049000000010005574944
      5448020002000F000B52617A616F536F6369616C010049000000010005574944
      54480200020073000C4E6F6D6546616E74617369610100490000000100055749
      445448020002003C0008456E64657265636F07000C010000000008456E646572
      65636F0100490000000100055749445448020002007D00074E756D65726F3201
      00490000000100055749445448020002000A000B436F6D706C656D656E746F01
      00490000000100055749445448020002003C000642616972726F010049000000
      0100055749445448020002003C00064369646164650400010000000000064573
      7461646F01004900000001000557494454480200020002000343657004000100
      0000000007436F6E7461746F02000C01000000000854656C65666F6E65010049
      0000000100055749445448020002000B0005456D61696C010049000000010005
      57494454480200020050000E546F6D61646F725365727669636F04000C010000
      0000144964656E74696669636163616F546F6D61646F7202000C010000000007
      437066436E706A02000C01000000000343706601004900000001000557494454
      48020002000B0004436E706A0100490000000100055749445448020002000E00
      12496E7363726963616F4D756E69636970616C01004900000001000557494454
      48020002000F000B52617A616F536F6369616C01004900000001000557494454
      4802000200730008456E64657265636F07000C010000000008456E6465726563
      6F0100490000000100055749445448020002007D00074E756D65726F32010049
      0000000100055749445448020002000A000B436F6D706C656D656E746F010049
      0000000100055749445448020002003C000642616972726F0100490000000100
      055749445448020002003C000643696461646504000100000000000745737461
      646F310100490000000100055749445448020002000200034365700400010000
      00000007436F6E7461746F02000C01000000000854656C65666F6E6501004900
      00000100055749445448020002000B0005456D61696C01004900000001000557
      4944544802000200500014496E7465726D6564696172696F5365727669636F03
      000C01000000000B52617A616F536F6369616C01004900000001000557494454
      4802000200730007437066436E706A02000C0100000000034370660100490000
      000100055749445448020002000B0004436E706A010049000000010005574944
      5448020002000E0012496E7363726963616F4D756E69636970616C0100490000
      000100055749445448020002000F000C4F7267616F47657261646F7202000C01
      000000000F436F6469676F4D756E69636970696F040001000000000002556601
      004900000001000557494454480200020002000000}
    object cdsNFSeNumero: TIntegerField
      FieldName = 'Numero'
    end
    object cdsNFSeCodigoVerificacao: TStringField
      FieldName = 'CodigoVerificacao'
      Size = 9
    end
    object cdsNFSeDataEmissao: TStringField
      FieldName = 'DataEmissao'
    end
    object cdsNFSeIdentificacaoRps: TADTField
      FieldName = 'IdentificacaoRps'
      object cdsNFSeIdentificacaoRpsNumero1: TIntegerField
        FieldName = 'Numero1'
      end
      object cdsNFSeIdentificacaoRpsSerie: TStringField
        FieldName = 'Serie'
        Size = 5
      end
      object cdsNFSeIdentificacaoRpsTipo: TIntegerField
        FieldName = 'Tipo'
      end
    end
    object cdsNFSeDataEmissaoRps: TStringField
      FieldName = 'DataEmissaoRps'
    end
    object cdsNFSeNaturezaOperacao: TIntegerField
      FieldName = 'NaturezaOperacao'
    end
    object cdsNFSeRegimeEspecialTributacao: TIntegerField
      FieldName = 'RegimeEspecialTributacao'
    end
    object cdsNFSeOptanteSimplesNacional: TIntegerField
      FieldName = 'OptanteSimplesNacional'
    end
    object cdsNFSeIncentivadorCultural: TIntegerField
      FieldName = 'IncentivadorCultural'
    end
    object cdsNFSeCompetencia: TStringField
      FieldName = 'Competencia'
      Size = 8
    end
    object cdsNFSeOutrasInformacoes: TStringField
      FieldName = 'OutrasInformacoes'
      Size = 255
    end
    object cdsNFSeServico: TADTField
      FieldName = 'Servico'
      object cdsNFSeServicoValores: TADTField
        FieldName = 'Valores'
        object cdsNFSeServicoValoresValorServicos: TFloatField
          FieldName = 'ValorServicos'
        end
        object cdsNFSeServicoValoresValorDeducoes: TFloatField
          FieldName = 'ValorDeducoes'
        end
        object cdsNFSeServicoValoresValorPis: TFloatField
          FieldName = 'ValorPis'
        end
        object cdsNFSeServicoValoresValorCofins: TFloatField
          FieldName = 'ValorCofins'
        end
        object cdsNFSeServicoValoresValorInss: TFloatField
          FieldName = 'ValorInss'
        end
        object cdsNFSeServicoValoresValorIr: TFloatField
          FieldName = 'ValorIr'
        end
        object cdsNFSeServicoValoresValorCsll: TFloatField
          FieldName = 'ValorCsll'
        end
        object cdsNFSeServicoValoresIssRetido: TIntegerField
          FieldName = 'IssRetido'
        end
        object cdsNFSeServicoValoresValorIss: TFloatField
          FieldName = 'ValorIss'
        end
        object cdsNFSeServicoValoresOutrasRetencoes: TFloatField
          FieldName = 'OutrasRetencoes'
        end
        object cdsNFSeServicoValoresBaseCalculo: TFloatField
          FieldName = 'BaseCalculo'
        end
        object cdsNFSeServicoValoresAliquota: TFloatField
          FieldName = 'Aliquota'
        end
        object cdsNFSeServicoValoresValorLiquidoNfse: TFloatField
          FieldName = 'ValorLiquidoNfse'
        end
        object cdsNFSeServicoValoresValorIssRetido: TFloatField
          FieldName = 'ValorIssRetido'
        end
        object cdsNFSeServicoValoresDescontoCondicionado: TFloatField
          FieldName = 'DescontoCondicionado'
        end
        object cdsNFSeServicoValoresDescontoIncondicionado: TFloatField
          FieldName = 'DescontoIncondicionado'
        end
      end
      object cdsNFSeServicoItemListaServico: TStringField
        FieldName = 'ItemListaServico'
        Size = 5
      end
      object cdsNFSeServicoCodigoCnae: TIntegerField
        FieldName = 'CodigoCnae'
      end
      object cdsNFSeServicoCodigoTributacaoMunicipio: TStringField
        FieldName = 'CodigoTributacaoMunicipio'
      end
      object cdsNFSeServicoDiscriminacao: TStringField
        FieldName = 'Discriminacao'
        Size = 2000
      end
      object cdsNFSeServicoMunicipioPrestacaoServico: TIntegerField
        FieldName = 'MunicipioPrestacaoServico'
      end
    end
    object cdsNFSeNfseSubstituida: TIntegerField
      FieldName = 'NfseSubstituida'
    end
    object cdsNFSeValorCredito: TFloatField
      FieldName = 'ValorCredito'
    end
    object cdsNFSePrestadorServico: TADTField
      FieldName = 'PrestadorServico'
      object cdsNFSePrestadorServicoIdentificacaoPrestador: TADTField
        FieldName = 'IdentificacaoPrestador'
        object cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpj: TADTField
          FieldName = 'CpfCnpj'
          object cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpjCpf: TStringField
            FieldName = 'Cpf'
            Size = 11
          end
          object cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpjCnpj: TStringField
            FieldName = 'Cnpj'
            Size = 14
          end
        end
        object cdsNFSePrestadorServicoIdentificacaoPrestadorInscricaoMunicipal: TStringField
          FieldName = 'InscricaoMunicipal'
          Size = 15
        end
      end
      object cdsNFSePrestadorServicoRazaoSocial: TStringField
        FieldName = 'RazaoSocial'
        Size = 115
      end
      object cdsNFSePrestadorServicoNomeFantasia: TStringField
        FieldName = 'NomeFantasia'
        Size = 60
      end
      object cdsNFSePrestadorServicoEndereco: TADTField
        FieldName = 'Endereco'
        object cdsNFSePrestadorServicoEnderecoEndereco: TStringField
          FieldName = 'Endereco'
          Size = 125
        end
        object cdsNFSePrestadorServicoEnderecoNumero2: TStringField
          FieldName = 'Numero2'
          Size = 10
        end
        object cdsNFSePrestadorServicoEnderecoComplemento: TStringField
          FieldName = 'Complemento'
          Size = 60
        end
        object cdsNFSePrestadorServicoEnderecoBairro: TStringField
          FieldName = 'Bairro'
          Size = 60
        end
        object cdsNFSePrestadorServicoEnderecoCidade: TIntegerField
          FieldName = 'Cidade'
        end
        object cdsNFSePrestadorServicoEnderecoEstado: TStringField
          FieldName = 'Estado'
          Size = 2
        end
        object cdsNFSePrestadorServicoEnderecoCep: TIntegerField
          FieldName = 'Cep'
        end
      end
      object cdsNFSePrestadorServicoContato: TADTField
        FieldName = 'Contato'
        object cdsNFSePrestadorServicoContatoTelefone: TStringField
          FieldName = 'Telefone'
          Size = 11
        end
        object cdsNFSePrestadorServicoContatoEmail: TStringField
          FieldName = 'Email'
          Size = 80
        end
      end
    end
    object cdsNFSeTomadorServico: TADTField
      FieldName = 'TomadorServico'
      object cdsNFSeTomadorServicoIdentificacaoTomador: TADTField
        FieldName = 'IdentificacaoTomador'
        object cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpj: TADTField
          FieldName = 'CpfCnpj'
          object cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCpf: TStringField
            FieldName = 'Cpf'
            Size = 11
          end
          object cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCnpj: TStringField
            FieldName = 'Cnpj'
            Size = 14
          end
        end
        object cdsNFSeTomadorServicoIdentificacaoTomadorInscricaoMunicipal: TStringField
          FieldName = 'InscricaoMunicipal'
          Size = 15
        end
      end
      object cdsNFSeTomadorServicoRazaoSocial: TStringField
        FieldName = 'RazaoSocial'
        Size = 115
      end
      object cdsNFSeTomadorServicoEndereco: TADTField
        FieldName = 'Endereco'
        object cdsNFSeTomadorServicoEnderecoEndereco: TStringField
          FieldName = 'Endereco'
          Size = 125
        end
        object cdsNFSeTomadorServicoEnderecoNumero2: TStringField
          FieldName = 'Numero2'
          Size = 10
        end
        object cdsNFSeTomadorServicoEnderecoComplemento: TStringField
          FieldName = 'Complemento'
          Size = 60
        end
        object cdsNFSeTomadorServicoEnderecoBairro: TStringField
          FieldName = 'Bairro'
          Size = 60
        end
        object cdsNFSeTomadorServicoEnderecoCidade: TIntegerField
          FieldName = 'Cidade'
        end
        object cdsNFSeTomadorServicoEnderecoEstado1: TStringField
          FieldName = 'Estado1'
          Size = 2
        end
        object cdsNFSeTomadorServicoEnderecoCep: TIntegerField
          FieldName = 'Cep'
        end
      end
      object cdsNFSeTomadorServicoContato: TADTField
        FieldName = 'Contato'
        object cdsNFSeTomadorServicoContatoTelefone: TStringField
          FieldName = 'Telefone'
          Size = 11
        end
        object cdsNFSeTomadorServicoContatoEmail: TStringField
          FieldName = 'Email'
          Size = 80
        end
      end
    end
    object cdsNFSeIntermediarioServico: TADTField
      FieldName = 'IntermediarioServico'
      object cdsNFSeIntermediarioServicoRazaoSocial: TStringField
        FieldName = 'RazaoSocial'
        Size = 115
      end
      object cdsNFSeIntermediarioServicoCpfCnpj: TADTField
        FieldName = 'CpfCnpj'
        object cdsNFSeIntermediarioServicoCpfCnpjCpf: TStringField
          FieldName = 'Cpf'
          Size = 11
        end
        object cdsNFSeIntermediarioServicoCpfCnpjCnpj: TStringField
          FieldName = 'Cnpj'
          Size = 14
        end
      end
      object cdsNFSeIntermediarioServicoInscricaoMunicipal: TStringField
        FieldName = 'InscricaoMunicipal'
        Size = 15
      end
    end
    object cdsNFSeOrgaoGerador: TADTField
      FieldName = 'OrgaoGerador'
      object cdsNFSeOrgaoGeradorCodigoMunicipio: TIntegerField
        FieldName = 'CodigoMunicipio'
      end
      object cdsNFSeOrgaoGeradorUf: TStringField
        FieldName = 'Uf'
        Size = 2
      end
    end
  end
  object dsNFSe: TDataSource
    DataSet = cdsNFSe
    Left = 168
    Top = 440
  end
  object cdsCampoBom: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProvider1'
    Left = 168
    Top = 336
    object cdsCampoBomversao: TStringField
      FieldName = 'versao'
      Size = 4
    end
    object cdsCampoBomcNFSe: TStringField
      FieldName = 'cNFS-e'
      Size = 9
    end
    object cdsCampoBomnatOp: TStringField
      FieldName = 'natOp'
      Size = 21
    end
    object cdsCampoBommod: TStringField
      FieldName = 'mod'
      Size = 2
    end
    object cdsCampoBomserie: TStringField
      FieldName = 'serie'
      Size = 3
    end
    object cdsCampoBomnNFSe: TStringField
      FieldName = 'nNFS-e'
      Size = 9
    end
    object cdsCampoBomdEmi: TStringField
      FieldName = 'dEmi'
      Size = 10
    end
    object cdsCampoBomdSaiEnt: TStringField
      FieldName = 'dSaiEnt'
      Size = 32
    end
    object cdsCampoBomcMunFG: TStringField
      FieldName = 'cMunFG'
      Size = 1
    end
    object cdsCampoBomrefNF: TStringField
      FieldName = 'refNF'
      Size = 39
    end
    object cdsCampoBomanulada: TStringField
      FieldName = 'anulada'
      Size = 1
    end
    object cdsCampoBomnotadebito: TStringField
      FieldName = 'notadebito'
      Size = 1
    end
    object cdsCampoBomdescDesconto: TStringField
      FieldName = 'descDesconto'
      Size = 32
    end
    object cdsCampoBomdescCondEsp: TStringField
      FieldName = 'descCondEsp'
      Size = 32
    end
    object cdsCampoBomnumeroArt: TStringField
      FieldName = 'numeroArt'
      Size = 32
    end
    object cdsCampoBomnumeroCei: TStringField
      FieldName = 'numeroCei'
      Size = 32
    end
    object cdsCampoBomemit_CNPJ: TStringField
      FieldName = 'emit_CNPJ'
      Size = 14
    end
    object cdsCampoBomemit_xNome: TStringField
      FieldName = 'emit_xNome'
      Size = 26
    end
    object cdsCampoBomxFant: TStringField
      FieldName = 'xFant'
      Size = 32
    end
    object cdsCampoBomend_xLgr: TStringField
      FieldName = 'end_xLgr'
      Size = 26
    end
    object cdsCampoBomend_nro: TStringField
      FieldName = 'end_nro'
      Size = 3
    end
    object cdsCampoBomend_xCpl: TStringField
      FieldName = 'end_xCpl'
      Size = 7
    end
    object cdsCampoBomend_xBairro: TStringField
      FieldName = 'end_xBairro'
      Size = 32
    end
    object cdsCampoBomend_cMun: TStringField
      FieldName = 'end_cMun'
      Size = 4
    end
    object cdsCampoBomend_xMun: TStringField
      FieldName = 'end_xMun'
    end
    object cdsCampoBomend_UF: TStringField
      FieldName = 'end_UF'
      Size = 2
    end
    object cdsCampoBomend_CEP: TStringField
      FieldName = 'end_CEP'
      Size = 8
    end
    object cdsCampoBomend_cPais: TStringField
      FieldName = 'end_cPais'
      Size = 2
    end
    object cdsCampoBomend_xPais: TStringField
      FieldName = 'end_xPais'
      Size = 6
    end
    object cdsCampoBomfone: TStringField
      FieldName = 'fone'
      Size = 9
    end
    object cdsCampoBomemit_IE: TStringField
      FieldName = 'emit_IE'
      Size = 32
    end
    object cdsCampoBomIEST: TStringField
      FieldName = 'IEST'
      Size = 32
    end
    object cdsCampoBomemit_IM: TStringField
      FieldName = 'emit_IM'
      Size = 5
    end
    object cdsCampoBomTomS_CNPJ: TStringField
      FieldName = 'TomS_CNPJ'
      Size = 14
    end
    object cdsCampoBomTomS_xNome: TStringField
      FieldName = 'TomS_xNome'
      Size = 26
    end
    object cdsCampoBomender_xLgr: TStringField
      FieldName = 'ender_xLgr'
      Size = 26
    end
    object cdsCampoBomender_nro: TStringField
      FieldName = 'ender_nro'
      Size = 3
    end
    object cdsCampoBomender_xCpl: TStringField
      FieldName = 'ender_xCpl'
      Size = 7
    end
    object cdsCampoBomender_xBairro: TStringField
      FieldName = 'ender_xBairro'
      Size = 32
    end
    object cdsCampoBomender_cMun: TStringField
      FieldName = 'ender_cMun'
      Size = 4
    end
    object cdsCampoBomender_xMun: TStringField
      FieldName = 'ender_xMun'
      Size = 9
    end
    object cdsCampoBomender_UF: TStringField
      FieldName = 'ender_UF'
      Size = 2
    end
    object cdsCampoBomender_CEP: TStringField
      FieldName = 'ender_CEP'
      Size = 8
    end
    object cdsCampoBomender_cPais: TStringField
      FieldName = 'ender_cPais'
      Size = 2
    end
    object cdsCampoBomender_xPais: TStringField
      FieldName = 'ender_xPais'
      Size = 6
    end
    object cdsCampoBomTomS_IE: TStringField
      FieldName = 'TomS_IE'
      Size = 32
    end
    object cdsCampoBomTomS_IM: TStringField
      FieldName = 'TomS_IM'
      Size = 5
    end
    object cdsCampoBomIMSTS: TStringField
      FieldName = 'IMSTS'
      Size = 32
    end
    object cdsCampoBomPraca: TStringField
      FieldName = 'Praca'
      Size = 12
    end
    object cdsCampoBomvReemb: TStringField
      FieldName = 'vReemb'
      Size = 4
    end
    object cdsCampoBomvBCISS: TStringField
      FieldName = 'vBCISS'
      Size = 6
    end
    object cdsCampoBomvISS: TStringField
      FieldName = 'vISS'
      Size = 4
    end
    object cdsCampoBomvBCSTISS: TStringField
      FieldName = 'vBCSTISS'
      Size = 4
    end
    object cdsCampoBomvSTISS: TStringField
      FieldName = 'vSTISS'
      Size = 4
    end
    object cdsCampoBomvServ: TStringField
      FieldName = 'vServ'
      Size = 6
    end
    object cdsCampoBomvDesc1: TStringField
      FieldName = 'vDesc1'
      Size = 4
    end
    object cdsCampoBomvOutro: TStringField
      FieldName = 'vOutro'
      Size = 4
    end
    object cdsCampoBomvtNF: TStringField
      FieldName = 'vtNF'
      Size = 6
    end
    object cdsCampoBomvtLiq: TStringField
      FieldName = 'vtLiq'
      Size = 6
    end
    object cdsCampoBomnFat: TStringField
      FieldName = 'nFat'
      Size = 32
    end
    object cdsCampoBomvOrig: TStringField
      FieldName = 'vOrig'
      Size = 6
    end
    object cdsCampoBomvDesc2: TStringField
      FieldName = 'vDesc2'
      Size = 4
    end
    object cdsCampoBomvLiq: TStringField
      FieldName = 'vLiq'
      Size = 6
    end
    object cdsCampoBomnDup: TStringField
      FieldName = 'nDup'
      Size = 3
    end
    object cdsCampoBomdVenc: TStringField
      FieldName = 'dVenc'
      Size = 10
    end
    object cdsCampoBomvDup: TStringField
      FieldName = 'vDup'
      Size = 6
    end
    object cdsCampoBomxinf: TMemoField
      FieldName = 'xinf'
      BlobType = ftMemo
    end
    object cdsCampoBomdet: TDataSetField
      FieldName = 'det'
      UnNamed = True
    end
    object cdsCampoBomTomS_CPF: TStringField
      FieldName = 'TomS_CPF'
      Size = 11
    end
  end
  object dsCampoBom: TDataSource
    DataSet = cdsCampoBom
    Left = 200
    Top = 336
  end
  object dsCBomDet: TDataSource
    DataSet = cdsCBomDet
    Left = 203
    Top = 368
  end
  object cdsCBomDet: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCampoBomdet
    Params = <>
    Left = 168
    Top = 368
  end
  object XMLTransformProvider1: TXMLTransformProvider
    TransformRead.TransformationFile = 'Z:\$Servisoft\ImportaNotas\novo_hamburgo.xtr'
    XMLDataFile = 
      'D:\Documentos Servisoft\XMLNFe\2013-03\NF00093121270001105500T00' +
      '0000473931346412.xml'
    CacheData = True
    Left = 168
    Top = 304
  end
end
