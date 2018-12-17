object DMConsNotas_ES: TDMConsNotas_ES
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 316
  Top = 66
  Height = 628
  Width = 1019
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT F.id, F.nome, F.endereco, F.complemento_end, F.num_end, F' +
      '.bairro, F.id_cidade, F.uf, F.cep, F.CNPJ_CPF, CID.NOME NOME_CID' +
      'ADE, F.NOME_INTERNO, F.EMAIL'#13#10'FROM FILIAL F'#13#10'LEFT JOIN CIDADE CI' +
      'D'#13#10'ON F.ID_CIDADE = CID.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 248
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 152
    Top = 248
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 192
    Top = 248
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 40
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsFilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 232
    Top = 248
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NI.ID, NI.id_cfop, NT.numnota, NT.dtemissao, nt.dtsaidaen' +
      'trada, NT.TIPO_NOTA,'#13#10'  CLI.NOME NOME_CLIENTE, CFOP.CODCFOP, NT.' +
      'CANCELADA, NT.NFEDENEGADA,'#13#10'  NT.motivo_cancelada,NT.motivo_cont' +
      'ingencia, NT.motivo_denegada, NT.FILIAL,'#13#10'  FIL.NOME NOME_FILIAL' +
      ', NT.SERIE, FIL.NOME_INTERNO, NT.ID_VENDEDOR,'#13#10'  VEND.nome NOME_' +
      'VENDEDOR, NT.id_transportadora,'#13#10#13#10'SUM(NI.vlr_total) VLR_TOTAL,'#13 +
      #10'  SUM(NI.base_icms) BASE_ICMS, SUM(NI.base_icmssimples) BASE_IC' +
      'MSSIMPLES,'#13#10'  SUM(NI.VLR_ICMS) VLR_ICMS, SUM(NI.vlr_icmssimples)' +
      ' VLR_ICMSSIMPLES, SUM(NI.vlr_frete) VLR_FRETE,'#13#10'  SUM(NI.VLR_IPI' +
      ') VLR_IPI, SUM(NI.QTD) QTD, SUM(NI.vlr_duplicata) VLR_DUPLICATA,' +
      #13#10'  SUM(coalesce(NI.vlr_desconto,0) + coalesce(NI.vlr_descontora' +
      'teio,0)) VLR_DESCONTO'#13#10'FROM NOTAFISCAL_ITENS NI'#13#10'INNER JOIN NOTA' +
      'FISCAL NT ON (NI.ID = NT.ID)'#13#10'INNER JOIN PESSOA CLI ON (NT.ID_CL' +
      'IENTE = CLI.CODIGO)'#13#10'INNER JOIN TAB_CFOP CFOP ON (NI.ID_CFOP = C' +
      'FOP.ID)'#13#10'INNER JOIN FILIAL FIL ON (NT.FILIAL = FIL.ID)'#13#10'LEFT JOI' +
      'N PESSOA VEND ON (NT.id_vendedor = VEND.codigo)'#13#10#13#10#13#10'GROUP BY NI' +
      '.ID, NI.id_cfop, NT.numnota, NT.dtemissao, nt.dtsaidaentrada, CL' +
      'I.NOME,'#13#10'CFOP.CODCFOP, NT.CANCELADA, NT.NFEDENEGADA, NT.motivo_c' +
      'ancelada,NT.motivo_contingencia,'#13#10'NT.motivo_denegada, NT.FILIAL,' +
      ' FIL.NOME, NT.TIPO_NOTA, NT.SERIE, FIL.NOME_INTERNO,'#13#10'NT.ID_VEND' +
      'EDOR, VEND.NOME, NT.id_transportadora'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 32
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 152
    Top = 32
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'FILIAL;TIPO_NOTA;DTSAIDAENTRADA;DTEMISSAO;SERIE;NUMNOTA'
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 192
    Top = 32
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsConsultaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsConsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsultaDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object cdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsultaCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsConsultaCANCELADA: TStringField
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaMOTIVO_CANCELADA: TStringField
      FieldName = 'MOTIVO_CANCELADA'
      Size = 100
    end
    object cdsConsultaMOTIVO_CONTINGENCIA: TStringField
      FieldName = 'MOTIVO_CONTINGENCIA'
      Size = 250
    end
    object cdsConsultaMOTIVO_DENEGADA: TStringField
      FieldName = 'MOTIVO_DENEGADA'
      Size = 250
    end
    object cdsConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsultaNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsConsultaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsConsultaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsConsultaBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsConsultaVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsConsultaVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsConsultaVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsConsultaVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsConsultaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsConsultaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsConsultaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsConsultaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsConsultaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsultaVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsConsultaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsConsultaVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 232
    Top = 32
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE (TP_CLIENTE = '#39'S'#39')'#13#10'     OR (TP_FOR' +
      'NECEDOR = '#39'S'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 312
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 144
    Top = 312
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 184
    Top = 312
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 224
    Top = 312
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CODIGO, NOME'#13#10'FROM PESSOA'#13#10'WHERE (TP_VENDEDOR = '#39'S'#39')'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 360
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 144
    Top = 360
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 184
    Top = 360
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 224
    Top = 360
  end
  object sdsNotaFiscal_Rot: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select N.ID, N.NUMNOTA, N.SERIE, N.QTDVOLUME, N.LOCALENTREGA, N.' +
      'FILIAL, N.ID_CLIENTE, N.DTEMISSAO,'#13#10'       CLI.NOME NOME_CLIENTE' +
      ', CLI.ENDERECO, CLI.ENDERECO_ENT, CLI.NUM_END, CLI.NUM_END_ENT, ' +
      'CLI.BAIRRO, CLI.BAIRRO_ENT,'#13#10'       CLI.ID_CIDADE, CLI.ID_CIDADE' +
      '_ENT, CLI.CEP, CLI.CEP_ENT, CLI.UF, CLI.UF_ENT, CLI.COMPLEMENTO_' +
      'END,'#13#10'       CLI.COMPLEMENTO_END_ENT, CLI.CNPJ_CPF, CLI.CNPJ_CPF' +
      '_ENT, CLI.PESSOA, CLI.PESSOA_ENT, N.TIPO_NOTA,'#13#10'       TRANSP.NO' +
      'ME NOME_TRANSP'#13#10'from NOTAFISCAL N'#13#10'inner join PESSOA CLI on N.ID' +
      '_CLIENTE = CLI.CODIGO  '#13#10'LEFT JOIN PESSOA TRANSP ON N.id_transpo' +
      'rtadora = TRANSP.CODIGO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 144
  end
  object dspNotaFiscal_Rot: TDataSetProvider
    DataSet = sdsNotaFiscal_Rot
    Left = 480
    Top = 144
  end
  object cdsNotaFiscal_Rot: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_Rot'
    OnCalcFields = cdsNotaFiscal_RotCalcFields
    Left = 520
    Top = 144
    object cdsNotaFiscal_RotID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_RotNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaFiscal_RotSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaFiscal_RotQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object cdsNotaFiscal_RotLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      Size = 1
    end
    object cdsNotaFiscal_RotNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsNotaFiscal_RotENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsNotaFiscal_RotENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsNotaFiscal_RotNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsNotaFiscal_RotNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsNotaFiscal_RotBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsNotaFiscal_RotBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsNotaFiscal_RotID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsNotaFiscal_RotID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsNotaFiscal_RotCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsNotaFiscal_RotCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsNotaFiscal_RotUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsNotaFiscal_RotUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsNotaFiscal_RotCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsNotaFiscal_RotCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsNotaFiscal_RotCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsNotaFiscal_RotCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object cdsNotaFiscal_RotPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_RotPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_RotFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaFiscal_RotID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaFiscal_RotclLocalEntrega: TStringField
      FieldKind = fkCalculated
      FieldName = 'clLocalEntrega'
      Size = 30
      Calculated = True
    end
    object cdsNotaFiscal_RotDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaFiscal_RotTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_RotNOME_TRANSP: TStringField
      FieldName = 'NOME_TRANSP'
      Size = 60
    end
  end
  object dsNotaFiscal_Rot: TDataSource
    DataSet = cdsNotaFiscal_Rot
    Left = 560
    Top = 144
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT SERIENORMAL'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 440
    Top = 312
    object qParametrosSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 440
    Top = 232
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 480
    Top = 232
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 520
    Top = 232
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsClienteCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsClienteNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsClienteID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsClienteENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsClienteCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsClienteNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsClienteBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsClienteID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsClienteCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsClienteUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsClientePESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 568
    Top = 232
  end
  object mEtiq_Rotulo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Nome_Filial'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CNPJ_CPF_Filial'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'End_Filial'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Bairro_Filial'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Cep_Filial'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Cidade_Filial'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UF_Filial'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Complemento_Filial'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Nome_Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CNPJ_CPF_Cliente'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'End_Cliente'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Bairro_Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Cep_Cliente'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Cidade_Cliente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UF_Cliente'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Complemento_Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Numero'
        DataType = ftInteger
      end
      item
        Name = 'Numero_Total'
        DataType = ftInteger
      end
      item
        Name = 'Local_Endereco'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'NumPedido'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Data'
        DataType = ftDate
      end
      item
        Name = 'Email_Filial'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Nome_Transp'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Nome_Filial;NumNota;Nome_Cliente'
    Params = <>
    StoreDefs = True
    Left = 520
    Top = 344
    Data = {
      110300009619E0BD01000000180000001800000000000300000011030B4E6F6D
      655F46696C69616C0100490000000100055749445448020002003C000F434E50
      4A5F4350465F46696C69616C0100490000000100055749445448020002001200
      0A456E645F46696C69616C01004900000001000557494454480200020050000D
      42616972726F5F46696C69616C01004900000001000557494454480200020028
      000A4365705F46696C69616C0100490000000100055749445448020002000900
      0D4369646164655F46696C69616C010049000000010005574944544802000200
      28000955465F46696C69616C0100490000000100055749445448020002000200
      12436F6D706C656D656E746F5F46696C69616C01004900000001000557494454
      48020002003C000C4E6F6D655F436C69656E7465010049000000010005574944
      5448020002003C0010434E504A5F4350465F436C69656E746501004900000001
      000557494454480200020012000B456E645F436C69656E746501004900000001
      000557494454480200020050000E42616972726F5F436C69656E746501004900
      00000100055749445448020002003C000B4365705F436C69656E746501004900
      000001000557494454480200020009000E4369646164655F436C69656E746501
      004900000001000557494454480200020028000A55465F436C69656E74650100
      49000000010005574944544802000200020013436F6D706C656D656E746F5F43
      6C69656E74650100490000000100055749445448020002003C00064E756D6572
      6F04000100000000000C4E756D65726F5F546F74616C04000100000000000E4C
      6F63616C5F456E64657265636F01004900000001000557494454480200020014
      00074E756D4E6F74610400010000000000094E756D50656469646F0100490000
      000100055749445448020002001400044461746104000600000000000C456D61
      696C5F46696C69616C010049000000010005574944544802000200C8000B4E6F
      6D655F5472616E73700100490000000100055749445448020002003C0001000D
      44454641554C545F4F524445520200820000000000}
    object mEtiq_RotuloNome_Filial: TStringField
      FieldName = 'Nome_Filial'
      Size = 60
    end
    object mEtiq_RotuloCNPJ_CPF_Filial: TStringField
      FieldName = 'CNPJ_CPF_Filial'
      Size = 18
    end
    object mEtiq_RotuloEnd_Filial: TStringField
      FieldName = 'End_Filial'
      Size = 80
    end
    object mEtiq_RotuloBairro_Filial: TStringField
      FieldName = 'Bairro_Filial'
      Size = 40
    end
    object mEtiq_RotuloCep_Filial: TStringField
      FieldName = 'Cep_Filial'
      Size = 9
    end
    object mEtiq_RotuloCidade_Filial: TStringField
      FieldName = 'Cidade_Filial'
      Size = 40
    end
    object mEtiq_RotuloUF_Filial: TStringField
      FieldName = 'UF_Filial'
      Size = 2
    end
    object mEtiq_RotuloComplemento_Filial: TStringField
      FieldName = 'Complemento_Filial'
      Size = 60
    end
    object mEtiq_RotuloNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 60
    end
    object mEtiq_RotuloCNPJ_CPF_Cliente: TStringField
      FieldName = 'CNPJ_CPF_Cliente'
      Size = 18
    end
    object mEtiq_RotuloEnd_Cliente: TStringField
      FieldName = 'End_Cliente'
      Size = 80
    end
    object mEtiq_RotuloBairro_Cliente: TStringField
      FieldName = 'Bairro_Cliente'
      Size = 60
    end
    object mEtiq_RotuloCep_Cliente: TStringField
      FieldName = 'Cep_Cliente'
      Size = 9
    end
    object mEtiq_RotuloCidade_Cliente: TStringField
      FieldName = 'Cidade_Cliente'
      Size = 40
    end
    object mEtiq_RotuloUF_Cliente: TStringField
      FieldName = 'UF_Cliente'
      Size = 2
    end
    object mEtiq_RotuloComplemento_Cliente: TStringField
      FieldName = 'Complemento_Cliente'
      Size = 60
    end
    object mEtiq_RotuloNumero: TIntegerField
      FieldName = 'Numero'
    end
    object mEtiq_RotuloNumero_Total: TIntegerField
      FieldName = 'Numero_Total'
    end
    object mEtiq_RotuloLocal_Endereco: TStringField
      FieldName = 'Local_Endereco'
    end
    object mEtiq_RotuloNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mEtiq_RotuloNumPedido: TStringField
      FieldName = 'NumPedido'
    end
    object mEtiq_RotuloData: TDateField
      FieldName = 'Data'
    end
    object mEtiq_RotuloEmail_Filial: TStringField
      FieldName = 'Email_Filial'
      Size = 200
    end
    object mEtiq_RotuloNome_Transp: TStringField
      FieldName = 'Nome_Transp'
      Size = 60
    end
  end
  object dsmEtiq_Rotulo: TDataSource
    DataSet = mEtiq_Rotulo
    Left = 568
    Top = 344
  end
  object qCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CIDADE'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 312
    Top = 400
    object qCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object qCidadeID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object qCidadeLINKNFSE: TStringField
      FieldName = 'LINKNFSE'
      Size = 200
    end
    object qCidadeFONE_PREFEITURA: TStringField
      FieldName = 'FONE_PREFEITURA'
      Size = 15
    end
    object qCidadeSITE_PREFEITURA: TStringField
      FieldName = 'SITE_PREFEITURA'
      Size = 200
    end
    object qCidadeEND_LOGO_PREFEITURA: TStringField
      FieldName = 'END_LOGO_PREFEITURA'
      Size = 250
    end
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.6.8'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41928.578144409700000000
    ReportOptions.LastChange = 43412.594282847230000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 480
    Top = 408
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Nome_Filial=Nome_Filial'
      'CNPJ_CPF_Filial=CNPJ_CPF_Filial'
      'End_Filial=End_Filial'
      'Bairro_Filial=Bairro_Filial'
      'Cep_Filial=Cep_Filial'
      'Cidade_Filial=Cidade_Filial'
      'UF_Filial=UF_Filial'
      'Complemento_Filial=Complemento_Filial'
      'Nome_Cliente=Nome_Cliente'
      'CNPJ_CPF_Cliente=CNPJ_CPF_Cliente'
      'End_Cliente=End_Cliente'
      'Bairro_Cliente=Bairro_Cliente'
      'Cep_Cliente=Cep_Cliente'
      'Cidade_Cliente=Cidade_Cliente'
      'UF_Cliente=UF_Cliente'
      'Complemento_Cliente=Complemento_Cliente'
      'Numero=Numero'
      'Numero_Total=Numero_Total'
      'Local_Endereco=Local_Endereco'
      'NumNota=NumNota'
      'NumPedido=NumPedido'
      'Data=Data'
      'Email_Filial=Email_Filial'
      'Nome_Transp=Nome_Transp')
    DataSource = dsmEtiq_Rotulo
    BCDToCurrency = False
    Left = 520
    Top = 408
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 552
    Top = 408
  end
  object sdsMinuta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.ID, N.ID_CLIENTE, N.id_transportadora, N.qtdvolume, N.q' +
      'tdtotal_itens, N.SERIE, N.NUMNOTA, '#13#10'N.vlr_nota, n.tipo_frete, n' +
      '.pesoliquido, n.pesobruto, CLI.nome NOME_CLIENTE,'#13#10'TRANSP.NOME N' +
      'OME_TRANSPORTADORA, CLI.UF, CLI.cidade, case'#13#10'   WHEN N.TIPO_FRE' +
      'TE = '#39'1'#39' THEN '#39'Emitente'#39#13#10'   WHEN N.TIPO_FRETE = '#39'2'#39' THEN '#39'Desti' +
      'natario'#39#13#10'   WHEN N.TIPO_FRETE = '#39'3'#39' THEN '#39'Terceiros'#39#13#10'   WHEN N' +
      '.TIPO_FRETE = '#39'9'#39' THEN '#39'Sem Frete'#39#13#10'   ELSE '#39#39#13#10'   END AS TIPO_F' +
      'RETE_DESC, N.SELECIONADO'#13#10'FROM NOTAFISCAL N'#13#10'INNER JOIN PESSOA C' +
      'LI ON (N.id_cliente = CLI.codigo)'#13#10'LEFT JOIN PESSOA TRANSP ON (N' +
      '.id_transportadora = TRANSP.CODIGO)'#13#10'WHERE N.TIPO_REG = '#39'NTS'#39' AN' +
      'D CANCELADA = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 64
  end
  object dspMinuta: TDataSetProvider
    DataSet = sdsMinuta
    Left = 480
    Top = 64
  end
  object cdsMinuta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMinuta'
    OnCalcFields = cdsNotaFiscal_RotCalcFields
    Left = 520
    Top = 64
    object cdsMinutaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMinutaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsMinutaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsMinutaQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object cdsMinutaQTDTOTAL_ITENS: TIntegerField
      FieldName = 'QTDTOTAL_ITENS'
    end
    object cdsMinutaVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object cdsMinutaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsMinutaPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsMinutaPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsMinutaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsMinutaNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      Size = 60
    end
    object cdsMinutaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsMinutaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsMinutaTIPO_FRETE_DESC: TStringField
      FieldName = 'TIPO_FRETE_DESC'
      Required = True
      FixedChar = True
      Size = 12
    end
    object cdsMinutaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsMinutaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsMinutaSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsMinuta: TDataSource
    DataSet = cdsMinuta
    Left = 560
    Top = 64
  end
  object mNotaSel: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 720
    Top = 208
    Data = {
      2A0000009619E0BD0100000018000000010000000000030000002A00074E756D
      4E6F746104000100000000000000}
    object mNotaSelNumNota: TIntegerField
      FieldName = 'NumNota'
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxMinuta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_CLIENTE=ID_CLIENTE'
      'ID_TRANSPORTADORA=ID_TRANSPORTADORA'
      'QTDVOLUME=QTDVOLUME'
      'QTDTOTAL_ITENS=QTDTOTAL_ITENS'
      'VLR_NOTA=VLR_NOTA'
      'TIPO_FRETE=TIPO_FRETE'
      'PESOLIQUIDO=PESOLIQUIDO'
      'PESOBRUTO=PESOBRUTO'
      'NOME_CLIENTE=NOME_CLIENTE'
      'NOME_TRANSPORTADORA=NOME_TRANSPORTADORA'
      'UF=UF'
      'CIDADE=CIDADE'
      'TIPO_FRETE_DESC=TIPO_FRETE_DESC'
      'SERIE=SERIE'
      'NUMNOTA=NUMNOTA')
    DataSource = dsMinuta
    BCDToCurrency = False
    Left = 592
    Top = 408
  end
  object dsmNotaSel: TDataSource
    DataSet = mNotaSel
    Left = 752
    Top = 208
  end
  object sdsNotaFiscal_Cli_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.id, P.item, P.dtvencimento, P.vlr_vencimento'#13#10'FROM NOTA' +
      'FISCAL_PARC P'#13#10'WHERE P.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 144
  end
  object dspNotaFiscal_Cli_Parc: TDataSetProvider
    DataSet = sdsNotaFiscal_Cli_Parc
    Left = 152
    Top = 144
  end
  object cdsNotaFiscal_Cli_Parc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ITEM'
    Params = <>
    ProviderName = 'dspNotaFiscal_Cli_Parc'
    Left = 192
    Top = 144
    object cdsNotaFiscal_Cli_ParcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_Cli_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_Cli_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsNotaFiscal_Cli_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
      DisplayFormat = '0.00'
    end
  end
  object dsNotaFiscal_Cli_Parc: TDataSource
    DataSet = cdsNotaFiscal_Cli_Parc
    Left = 232
    Top = 144
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxNotaFiscal_Cli'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUMNOTA=NUMNOTA'
      'ID_CLIENTE=ID_CLIENTE'
      'ID_VENDEDOR=ID_VENDEDOR'
      'ID_TRANSPORTADORA=ID_TRANSPORTADORA'
      'SERIE=SERIE'
      'DTEMISSAO=DTEMISSAO'
      'QTD=QTD'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'VLR_TOTAL=VLR_TOTAL'
      'ID_CFOP=ID_CFOP'
      'CODCFOP=CODCFOP'
      'NOME_CLIENTE=NOME_CLIENTE')
    BCDToCurrency = False
    Left = 640
    Top = 408
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxNotaFiscal_Cli_Parc'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'DTVENCIMENTO=DTVENCIMENTO'
      'VLR_VENCIMENTO=VLR_VENCIMENTO')
    DataSource = dsNotaFiscal_Cli_Parc
    BCDToCurrency = False
    Left = 688
    Top = 408
  end
  object mCliente_Sel: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 736
    Top = 280
    Data = {
      3E0000009619E0BD0100000018000000020000000000030000003E0002494404
      00010000000000044E6F6D650100490000000100055749445448020002003C00
      0000}
    object mCliente_SelID: TIntegerField
      FieldName = 'ID'
    end
    object mCliente_SelNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
  end
  object dsmCliente_Sel: TDataSource
    DataSet = mCliente_Sel
    Left = 768
    Top = 280
  end
  object qFilial_Rel: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'POSICAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL_RELATORIOS'
      'WHERE ID = :ID'
      '      AND TIPO = :TIPO'
      '      AND POSICAO = :POSICAO')
    SQLConnection = dmDatabase.scoDados
    Left = 712
    Top = 72
    object qFilial_RelID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilial_RelITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qFilial_RelTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object qFilial_RelCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
    object qFilial_RelPOSICAO: TSmallintField
      FieldName = 'POSICAO'
    end
  end
end
