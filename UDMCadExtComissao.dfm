object DMCadExtComissao: TDMCadExtComissao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 92
  Top = 49
  Height = 626
  Width = 1170
  object sdsExtComissao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM EXTCOMISSAO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 24
    object sdsExtComissaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsExtComissaoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsExtComissaoDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsExtComissaoDTBASE: TDateField
      FieldName = 'DTBASE'
    end
    object sdsExtComissaoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsExtComissaoID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsExtComissaoID_DUPLICATA: TIntegerField
      FieldName = 'ID_DUPLICATA'
    end
    object sdsExtComissaoITEM_DUPLICATA_HIST: TIntegerField
      FieldName = 'ITEM_DUPLICATA_HIST'
    end
    object sdsExtComissaoBASE_COMISSAO: TFloatField
      FieldName = 'BASE_COMISSAO'
    end
    object sdsExtComissaoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsExtComissaoVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
    end
    object sdsExtComissaoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsExtComissaoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sdsExtComissaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsExtComissaoPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sdsExtComissaoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsExtComissaoOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object sdsExtComissaoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsExtComissaoID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object sdsExtComissaoID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object sdsExtComissaoID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object sdsExtComissaoNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object sdsExtComissaoID_RECIBO: TIntegerField
      FieldName = 'ID_RECIBO'
    end
    object sdsExtComissaoID_DESCONTADA: TIntegerField
      FieldName = 'ID_DESCONTADA'
    end
    object sdsExtComissaoID_CONTA_ORC: TIntegerField
      FieldName = 'ID_CONTA_ORC'
    end
  end
  object dspExtComissao: TDataSetProvider
    DataSet = sdsExtComissao
    Left = 168
    Top = 24
  end
  object cdsExtComissao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspExtComissao'
    OnNewRecord = cdsExtComissaoNewRecord
    OnReconcileError = cdsExtComissaoReconcileError
    Left = 232
    Top = 24
    object cdsExtComissaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsExtComissaoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsExtComissaoDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsExtComissaoDTBASE: TDateField
      FieldName = 'DTBASE'
    end
    object cdsExtComissaoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsExtComissaoID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsExtComissaoID_DUPLICATA: TIntegerField
      FieldName = 'ID_DUPLICATA'
    end
    object cdsExtComissaoITEM_DUPLICATA_HIST: TIntegerField
      FieldName = 'ITEM_DUPLICATA_HIST'
    end
    object cdsExtComissaoBASE_COMISSAO: TFloatField
      FieldName = 'BASE_COMISSAO'
    end
    object cdsExtComissaoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsExtComissaoVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
      DisplayFormat = '#.##0.00'
    end
    object cdsExtComissaoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsExtComissaoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsExtComissaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsExtComissaoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsExtComissaoPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsExtComissaoOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object cdsExtComissaoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsExtComissaoID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsExtComissaoID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object cdsExtComissaoID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsExtComissaoNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object cdsExtComissaoID_RECIBO: TIntegerField
      FieldName = 'ID_RECIBO'
    end
    object cdsExtComissaoID_DESCONTADA: TIntegerField
      FieldName = 'ID_DESCONTADA'
    end
    object cdsExtComissaoID_CONTA_ORC: TIntegerField
      FieldName = 'ID_CONTA_ORC'
    end
  end
  object dsExtComissao: TDataSource
    DataSet = cdsExtComissao
    Left = 304
    Top = 24
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EXT.*, VEND.NOME NOMEVENDEDOR, CLI.NOME NOMECLIENTE'#13#10'FROM' +
      ' EXTCOMISSAO EXT'#13#10'INNER JOIN PESSOA VEND'#13#10'ON EXT.ID_VENDEDOR = V' +
      'END.CODIGO'#13#10'LEFT JOIN PESSOA CLI'#13#10'ON EXT.ID_CLIENTE = CLI.CODIGO' +
      #13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 56
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 584
    Top = 56
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 648
    Top = 56
    object cdsConsultaID: TIntegerField
      DisplayLabel = 'N'#186' Lan'#231'amento'
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaTIPO_REG: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo Reg'
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsConsultaDTCADASTRO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DTCADASTRO'
    end
    object cdsConsultaDTBASE: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Base'
      FieldName = 'DTBASE'
    end
    object cdsConsultaID_VENDEDOR: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Vendedor'
      FieldName = 'ID_VENDEDOR'
    end
    object cdsConsultaID_NOTA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Nota'
      FieldName = 'ID_NOTA'
    end
    object cdsConsultaID_DUPLICATA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Duplicata'
      FieldName = 'ID_DUPLICATA'
    end
    object cdsConsultaITEM_DUPLICATA_HIST: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item Hist'#243'rico Dupl.'
      FieldName = 'ITEM_DUPLICATA_HIST'
    end
    object cdsConsultaBASE_COMISSAO: TFloatField
      DisplayLabel = 'Base Comiss'#227'o'
      FieldName = 'BASE_COMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsConsultaPERC_COMISSAO: TFloatField
      DisplayLabel = '% Comiss'#227'o'
      FieldName = 'PERC_COMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsConsultaVLR_COMISSAO: TFloatField
      DisplayLabel = 'Vlr. Comiss'#227'o'
      FieldName = 'VLR_COMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsConsultaSERIE: TStringField
      Alignment = taCenter
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsConsultaNUM_NOTA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Nota'
      FieldName = 'NUM_NOTA'
    end
    object cdsConsultaFILIAL: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsConsultaID_CLIENTE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsultaNOMEVENDEDOR: TStringField
      DisplayLabel = 'Nome Vendedor'
      FieldName = 'NOMEVENDEDOR'
      Size = 60
    end
    object cdsConsultaNOMECLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsConsultaPARCELA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
    end
    object cdsConsultaOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      Size = 250
    end
    object cdsConsultaID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsConsultaID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsConsultaID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object cdsConsultaID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsConsultaNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object cdsConsultaOBS_PEDIDO: TStringField
      FieldName = 'OBS_PEDIDO'
      Size = 250
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 696
    Top = 56
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 560
    Top = 176
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, PERC_COMISSAO, TIPO_COMISSAO'#13#10'FROM PESSOA'#13#10 +
      'WHERE INATIVO = '#39'N'#39#13#10'      AND TP_VENDEDOR = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 176
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 600
    Top = 176
    object cdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsVendedorPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsVendedorTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 640
    Top = 176
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, PERC_COMISSAO'#13#10'FROM PESSOA'#13#10'WHERE INATIVO =' +
      ' '#39'N'#39#13#10'      AND TP_CLIENTE = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 128
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 560
    Top = 128
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 600
    Top = 128
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClientePERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 640
    Top = 128
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 265
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 560
    Top = 265
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 600
    Top = 265
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 640
    Top = 265
  end
  object mExtComissao_Red: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Vendedor'
        DataType = ftInteger
      end
      item
        Name = 'NomeVendedor'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Base_Comissao'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Comissao'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Entrada'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Pagamento'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Adiantamento'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Devolucao'
        DataType = ftFloat
      end
      item
        Name = 'Base_Previsao_Dup'
        DataType = ftFloat
      end
      item
        Name = 'Base_Previsao_Ped'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Previsao_Ped'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Previsao_Dup'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Meta_Vendas'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Vendas'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mExtComissao_RedNewRecord
    Left = 224
    Top = 136
    Data = {
      640100009619E0BD01000000180000000E00000000000300000064010B49445F
      56656E6465646F7204000100000000000C4E6F6D6556656E6465646F72010049
      0000000100055749445448020002003C000D426173655F436F6D697373616F08
      000400000000000C566C725F436F6D697373616F08000400000000000B566C72
      5F456E747261646108000400000000000D566C725F506167616D656E746F0800
      04000000000010566C725F416469616E74616D656E746F08000400000000000D
      566C725F4465766F6C7563616F080004000000000011426173655F5072657669
      73616F5F447570080004000000000011426173655F507265766973616F5F5065
      64080004000000000010566C725F507265766973616F5F506564080004000000
      000010566C725F507265766973616F5F44757008000400000000000F566C725F
      4D6574615F56656E64617308000400000000000A566C725F56656E6461730800
      0400000000000000}
    object mExtComissao_RedID_Vendedor: TIntegerField
      FieldName = 'ID_Vendedor'
    end
    object mExtComissao_RedNomeVendedor: TStringField
      FieldName = 'NomeVendedor'
      Size = 60
    end
    object mExtComissao_RedBase_Comissao: TFloatField
      FieldName = 'Base_Comissao'
      DisplayFormat = '0.00'
    end
    object mExtComissao_RedVlr_Comissao: TFloatField
      FieldName = 'Vlr_Comissao'
      DisplayFormat = '0.00'
    end
    object mExtComissao_RedVlr_Entrada: TFloatField
      FieldName = 'Vlr_Entrada'
      DisplayFormat = '0.00'
    end
    object mExtComissao_RedVlr_Pagamento: TFloatField
      FieldName = 'Vlr_Pagamento'
      DisplayFormat = '0.00'
    end
    object mExtComissao_RedVlr_Adiantamento: TFloatField
      FieldName = 'Vlr_Adiantamento'
      DisplayFormat = '0.00'
    end
    object mExtComissao_RedVlr_Devolucao: TFloatField
      FieldName = 'Vlr_Devolucao'
      DisplayFormat = '0.00'
    end
    object mExtComissao_RedBase_Previsao_Dup: TFloatField
      FieldName = 'Base_Previsao_Dup'
      DisplayFormat = '0.00'
    end
    object mExtComissao_RedBase_Previsao_Ped: TFloatField
      FieldName = 'Base_Previsao_Ped'
      DisplayFormat = '0.00'
    end
    object mExtComissao_RedVlr_Previsao_Ped: TFloatField
      FieldName = 'Vlr_Previsao_Ped'
      DisplayFormat = '0.00'
    end
    object mExtComissao_RedVlr_Previsao_Dup: TFloatField
      FieldName = 'Vlr_Previsao_Dup'
      DisplayFormat = '0.00'
    end
    object mExtComissao_RedVlr_Meta_Vendas: TFloatField
      FieldName = 'Vlr_Meta_Vendas'
      DisplayFormat = '0.00'
    end
    object mExtComissao_RedVlr_Vendas: TFloatField
      FieldName = 'Vlr_Vendas'
      DisplayFormat = '0.00'
    end
  end
  object dsmExtComissao_Red: TDataSource
    DataSet = mExtComissao_Red
    Left = 304
    Top = 136
  end
  object mImp_Reduzido: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Vendedor'
        DataType = ftInteger
      end
      item
        Name = 'NomeVendedor'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Base_Comissao'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Comissao'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Entrada'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Pagamento'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Adiantamento'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Devolucao'
        DataType = ftFloat
      end
      item
        Name = 'Base_Previsao_Dup'
        DataType = ftFloat
      end
      item
        Name = 'Base_Previsao_Ped'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Previsao_Dup'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Previsao_Ped'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Meta_Vendas'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Vendas'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 224
    Top = 216
    Data = {
      640100009619E0BD01000000180000000E00000000000300000064010B49445F
      56656E6465646F7204000100000000000C4E6F6D6556656E6465646F72010049
      0000000100055749445448020002003C000D426173655F436F6D697373616F08
      000400000000000C566C725F436F6D697373616F08000400000000000B566C72
      5F456E747261646108000400000000000D566C725F506167616D656E746F0800
      04000000000010566C725F416469616E74616D656E746F08000400000000000D
      566C725F4465766F6C7563616F080004000000000011426173655F5072657669
      73616F5F447570080004000000000011426173655F507265766973616F5F5065
      64080004000000000010566C725F507265766973616F5F447570080004000000
      000010566C725F507265766973616F5F50656408000400000000000F566C725F
      4D6574615F56656E64617308000400000000000A566C725F56656E6461730800
      0400000000000000}
    object mImp_ReduzidoID_Vendedor: TIntegerField
      FieldName = 'ID_Vendedor'
    end
    object mImp_ReduzidoNomeVendedor: TStringField
      FieldName = 'NomeVendedor'
      Size = 60
    end
    object mImp_ReduzidoBase_Comissao: TFloatField
      FieldName = 'Base_Comissao'
      DisplayFormat = '###,###,##0.00'
    end
    object mImp_ReduzidoVlr_Comissao: TFloatField
      FieldName = 'Vlr_Comissao'
      DisplayFormat = '###,###,##0.00'
    end
    object mImp_ReduzidoVlr_Entrada: TFloatField
      FieldName = 'Vlr_Entrada'
      DisplayFormat = '###,###,##0.00'
    end
    object mImp_ReduzidoVlr_Pagamento: TFloatField
      FieldName = 'Vlr_Pagamento'
      DisplayFormat = '###,###,##0.00'
    end
    object mImp_ReduzidoVlr_Adiantamento: TFloatField
      FieldName = 'Vlr_Adiantamento'
      DisplayFormat = '###,###,##0.00'
    end
    object mImp_ReduzidoVlr_Devolucao: TFloatField
      FieldName = 'Vlr_Devolucao'
      DisplayFormat = '###,###,##0.00'
    end
    object mImp_ReduzidoBase_Previsao_Dup: TFloatField
      FieldName = 'Base_Previsao_Dup'
      DisplayFormat = '###,###,##0.00'
    end
    object mImp_ReduzidoBase_Previsao_Ped: TFloatField
      FieldName = 'Base_Previsao_Ped'
      DisplayFormat = '###,###,##0.00'
    end
    object mImp_ReduzidoVlr_Previsao_Dup: TFloatField
      FieldName = 'Vlr_Previsao_Dup'
      DisplayFormat = '###,###,##0.00'
    end
    object mImp_ReduzidoVlr_Previsao_Ped: TFloatField
      FieldName = 'Vlr_Previsao_Ped'
      DisplayFormat = '###,###,##0.00'
    end
    object mImp_ReduzidoVlr_Meta_Vendas: TFloatField
      FieldName = 'Vlr_Meta_Vendas'
    end
    object mImp_ReduzidoVlr_Vendas: TFloatField
      FieldName = 'Vlr_Vendas'
    end
  end
  object dsmImp_Reduzido: TDataSource
    DataSet = mImp_Reduzido
    Left = 304
    Top = 216
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, FILIAL'#13#10'FROM CONTAS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 329
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 560
    Top = 329
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContas'
    Left = 600
    Top = 329
    object cdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsContasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 640
    Top = 329
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM TIPOCOBRANCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 536
    Top = 392
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    Left = 568
    Top = 392
  end
  object cdsTipoCobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 600
    Top = 392
    object cdsTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsTipoCobranca: TDataSource
    DataSet = cdsTipoCobranca
    Left = 632
    Top = 392
  end
  object sdsPrevisao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DUP.ID, DUP.FILIAL, DUP.ID_NOTA, DUP.PARCELA, DUP.NUMDUPL' +
      'ICATA, DUP.NUMNOTA, DUP.SERIE, DUP.DTVENCIMENTO,'#13#10' DUP.VLR_RESTA' +
      'NTE, DUP.ID_PESSOA, DUP.ID_VENDEDOR, VEND.NOME NOME_VENDEDOR, CL' +
      'I.NOME NOME_CLIENTE'#13#10', DUP.PERC_COMISSAO, DUP.PERC_BASE_COMISSAO' +
      ','#13#10'((DUP.VLR_RESTANTE * DUP.PERC_BASE_COMISSAO) / 100) VLR_BASE_' +
      'COMISSAO'#13#10'FROM DUPLICATA DUP'#13#10'INNER JOIN PESSOA VEND'#13#10'ON DUP.ID_' +
      'VENDEDOR = VEND.CODIGO'#13#10'INNER JOIN PESSOA CLI'#13#10'ON DUP.ID_PESSOA ' +
      '= CLI.CODIGO'#13#10'WHERE VEND.TIPO_COMISSAO = '#39'D'#39#13#10'  AND DUP.VLR_REST' +
      'ANTE > 0'#13#10'  AND DUP.TIPO_ES = '#39'E'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 832
    Top = 128
  end
  object dspPrevisao: TDataSetProvider
    DataSet = sdsPrevisao
    Left = 888
    Top = 128
  end
  object cdsPrevisao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrevisao'
    OnCalcFields = cdsPrevisaoCalcFields
    Left = 952
    Top = 128
    object cdsPrevisaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPrevisaoFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsPrevisaoID_NOTA: TIntegerField
      DisplayLabel = 'ID Nota'
      FieldName = 'ID_NOTA'
    end
    object cdsPrevisaoPARCELA: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
    end
    object cdsPrevisaoNUMDUPLICATA: TStringField
      DisplayLabel = 'N'#186' Duplicata'
      FieldName = 'NUMDUPLICATA'
    end
    object cdsPrevisaoNUMNOTA: TIntegerField
      DisplayLabel = 'N'#186' Nota'
      FieldName = 'NUMNOTA'
    end
    object cdsPrevisaoSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsPrevisaoDTVENCIMENTO: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DTVENCIMENTO'
    end
    object cdsPrevisaoVLR_RESTANTE: TFloatField
      DisplayLabel = 'Vlr. Pendente'
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '0.00'
    end
    object cdsPrevisaoID_PESSOA: TIntegerField
      DisplayLabel = 'Id Pessoa'
      FieldName = 'ID_PESSOA'
    end
    object cdsPrevisaoID_VENDEDOR: TIntegerField
      DisplayLabel = 'Id Vendedor'
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPrevisaoNOME_VENDEDOR: TStringField
      DisplayLabel = 'Nome Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsPrevisaoNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPrevisaoPERC_COMISSAO: TFloatField
      DisplayLabel = '% Comiss'#227'o'
      FieldName = 'PERC_COMISSAO'
    end
    object cdsPrevisaoVlr_Comissao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vlr_Comissao'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object cdsPrevisaoPERC_BASE_COMISSAO: TFloatField
      FieldName = 'PERC_BASE_COMISSAO'
    end
    object cdsPrevisaoVLR_BASE_COMISSAO: TFloatField
      FieldName = 'VLR_BASE_COMISSAO'
      DisplayFormat = '0.00'
    end
  end
  object dsPrevisao: TDataSource
    DataSet = cdsPrevisao
    Left = 1000
    Top = 128
  end
  object sdsPrevisao_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.ID, PED.ID_VENDEDOR, PED.PERC_COMISSAO, PED.ID_CLIENT' +
      'E, PI.VLR_UNITARIO,'#13#10'PI.VLR_DESCONTO, PI.QTD_RESTANTE, ((PI.VLR_' +
      'UNITARIO - PI.VLR_DESCONTO) * PI.QTD_RESTANTE) VLR_CALCULADO,'#13#10'(' +
      '((PI.VLR_UNITARIO - PI.VLR_DESCONTO) * PI.perc_ipi / 100)   * PI' +
      '.QTD_RESTANTE) VLR_IPI_CALCULADO,'#13#10'((PI.vlr_frete / PI.qtd) * PI' +
      '.QTD_RESTANTE) VLR_FRETE_CALCULADO,'#13#10'((PI.vlr_icmssubst / PI.qtd' +
      ') * PI.QTD_RESTANTE) VLR_ICMSSUBST_CALCULADO,'#13#10'PED.NUM_PEDIDO, P' +
      'I.DTENTREGA, CLI.NOME NOME_CLIENTE, PED.FILIAL, PED.pedido_clien' +
      'te'#13#10'FROM PEDIDO_ITEM PI'#13#10'INNER JOIN PEDIDO PED'#13#10'ON PI.ID = PED.I' +
      'D'#13#10#13#10'INNER JOIN PESSOA VEND'#13#10'ON PED.ID_VENDEDOR = VEND.CODIGO'#13#10'I' +
      'NNER JOIN PESSOA CLI'#13#10'ON PED.ID_CLIENTE = CLI.CODIGO'#13#10'WHERE PED.' +
      'PERC_COMISSAO > 0'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 832
    Top = 200
  end
  object dspPrevisao_Ped: TDataSetProvider
    DataSet = sdsPrevisao_Ped
    Left = 888
    Top = 200
  end
  object cdsPrevisao_Ped: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_VENDEDOR'
    Params = <>
    ProviderName = 'dspPrevisao_Ped'
    OnCalcFields = cdsPrevisao_PedCalcFields
    Left = 952
    Top = 200
    object cdsPrevisao_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPrevisao_PedID_VENDEDOR: TIntegerField
      DisplayLabel = 'Id Vendedor'
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPrevisao_PedPERC_COMISSAO: TFloatField
      DisplayLabel = '% Comiss'#227'o'
      FieldName = 'PERC_COMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsPrevisao_PedID_CLIENTE: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsPrevisao_PedVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.000#'
    end
    object cdsPrevisao_PedVLR_DESCONTO: TFloatField
      DisplayLabel = 'Vlr. Desconto'
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.000#'
    end
    object cdsPrevisao_PedQTD_RESTANTE: TFloatField
      DisplayLabel = 'Qtd. Pendente'
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPrevisao_PedVLR_CALCULADO: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_CALCULADO'
      DisplayFormat = '0.00'
    end
    object cdsPrevisao_PedNUM_PEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Pedido'
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPrevisao_PedDTENTREGA: TDateField
      DisplayLabel = 'Data Entrega'
      FieldName = 'DTENTREGA'
    end
    object cdsPrevisao_PedNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPrevisao_PedFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsPrevisao_PedVlr_Comissao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vlr_Comissao'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object cdsPrevisao_PedVLR_IPI_CALCULADO: TFloatField
      FieldName = 'VLR_IPI_CALCULADO'
    end
    object cdsPrevisao_PedVLR_FRETE_CALCULADO: TFloatField
      FieldName = 'VLR_FRETE_CALCULADO'
    end
    object cdsPrevisao_PedVLR_ICMSSUBST_CALCULADO: TFloatField
      FieldName = 'VLR_ICMSSUBST_CALCULADO'
    end
    object cdsPrevisao_PedPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
  end
  object dsPrevisao_Ped: TDataSource
    DataSet = cdsPrevisao_Ped
    Left = 1000
    Top = 200
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 320
    Top = 316
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosID_CONTA_ORC_COMISSAO: TIntegerField
      FieldName = 'ID_CONTA_ORC_COMISSAO'
    end
    object qParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object mExtPedido: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Vendedor'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Vendedor'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Vlr_Base'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Comissao'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Frete'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Mao_Obra'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mExtPedidoNewRecord
    Left = 856
    Top = 256
    Data = {
      9D0000009619E0BD0100000018000000060000000000030000009D000B49445F
      56656E6465646F7204000100000000000D4E6F6D655F56656E6465646F720100
      490000000100055749445448020002003C0008566C725F426173650800040000
      0000000C566C725F436F6D697373616F080004000000000009566C725F467265
      746508000400000000000C566C725F4D616F5F4F627261080004000000000000
      00}
    object mExtPedidoID_Vendedor: TIntegerField
      FieldName = 'ID_Vendedor'
    end
    object mExtPedidoNome_Vendedor: TStringField
      FieldName = 'Nome_Vendedor'
      Size = 60
    end
    object mExtPedidoVlr_Base: TFloatField
      FieldName = 'Vlr_Base'
      DisplayFormat = '0.00'
    end
    object mExtPedidoVlr_Comissao: TFloatField
      FieldName = 'Vlr_Comissao'
      DisplayFormat = '0.00'
    end
    object mExtPedidoVlr_Frete: TFloatField
      FieldName = 'Vlr_Frete'
      DisplayFormat = '##0.00'
    end
    object mExtPedidoVlr_Mao_Obra: TFloatField
      FieldName = 'Vlr_Mao_Obra'
      DisplayFormat = '##0.00'
    end
  end
  object dsmExtPedido: TDataSource
    DataSet = mExtPedido
    Left = 920
    Top = 256
  end
  object sdsPedido_Vend: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select PED.ID_VENDEDOR, PED.PERC_COMISSAO,'#13#10'       case COM.COMI' +
      'SSAO_DESCONTAR'#13#10'         when '#39'S'#39' then PED.VLR_TOTAL - coalesce(' +
      'PED.VLR_FRETE, 0) - coalesce(PED.VLR_MAO_OBRA, 0)'#13#10'         else' +
      ' PED.VLR_TOTAL'#13#10'       end VLR_TOTAL,'#13#10'       PED.FILIAL, PED.DT' +
      'EMISSAO, PED.ID_CLIENTE, CLI.NOME NOME_CLIENTE, PED.NUM_PEDIDO, ' +
      'PED.PEDIDO_CLIENTE,'#13#10'       PED.VLR_FRETE, COM.COMISSAO_DESCONTA' +
      'R, PED.VLR_MAO_OBRA'#13#10'from PEDIDO PED'#13#10'inner join PESSOA CLI on P' +
      'ED.ID_CLIENTE = CLI.CODIGO'#13#10'left join PARAMETROS_COM COM on 0 = ' +
      '0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 832
    Top = 328
  end
  object dspPedido_Vend: TDataSetProvider
    DataSet = sdsPedido_Vend
    Left = 888
    Top = 328
  end
  object cdsPedido_Vend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Vend'
    OnCalcFields = cdsPedido_VendCalcFields
    Left = 952
    Top = 328
    object cdsPedido_VendID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedido_VendPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsPedido_VendVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsPedido_VendFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPedido_VendDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_VendID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_VendNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_VendNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_VendPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_VendclVlr_Comissao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlr_Comissao'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object cdsPedido_VendVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '##0.00'
    end
    object cdsPedido_VendCOMISSAO_DESCONTAR: TStringField
      FieldName = 'COMISSAO_DESCONTAR'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_VendVLR_MAO_OBRA: TFloatField
      FieldName = 'VLR_MAO_OBRA'
      DisplayFormat = '##0.00'
    end
  end
  object dsPedido_Vend: TDataSource
    DataSet = cdsPedido_Vend
    Left = 1000
    Top = 328
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USA_METAS_VENDEDOR'
      'FROM PARAMETROS_FIN'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 320
    Top = 372
    object qParametros_FinUSA_METAS_VENDEDOR: TStringField
      FieldName = 'USA_METAS_VENDEDOR'
      FixedChar = True
      Size = 1
    end
  end
  object mPrevPedido: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'ID_Vendedor'
        DataType = ftInteger
      end
      item
        Name = 'ID_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Num_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Pedido_Cliente'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Nome_Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Vlr_Base_Comissao'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Comissao'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 848
    Top = 392
    Data = {
      D50000009619E0BD010000001800000008000000000003000000D5000646696C
      69616C04000100000000000B49445F56656E6465646F72040001000000000009
      49445F50656469646F04000100000000000A4E756D5F50656469646F04000100
      000000000E50656469646F5F436C69656E746501004900000001000557494454
      48020002001E000C4E6F6D655F436C69656E7465010049000000010005574944
      5448020002003C0011566C725F426173655F436F6D697373616F080004000000
      00000C566C725F436F6D697373616F08000400000000000000}
    object mPrevPedidoFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mPrevPedidoID_Vendedor: TIntegerField
      FieldName = 'ID_Vendedor'
    end
    object mPrevPedidoID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mPrevPedidoNum_Pedido: TIntegerField
      FieldName = 'Num_Pedido'
    end
    object mPrevPedidoPedido_Cliente: TStringField
      FieldName = 'Pedido_Cliente'
      Size = 30
    end
    object mPrevPedidoNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 60
    end
    object mPrevPedidoVlr_Base_Comissao: TFloatField
      FieldName = 'Vlr_Base_Comissao'
      DisplayFormat = '0.00'
    end
    object mPrevPedidoVlr_Comissao: TFloatField
      FieldName = 'Vlr_Comissao'
      DisplayFormat = '0.00'
    end
  end
  object dsmPrevPedido: TDataSource
    DataSet = mPrevPedido
    Left = 904
    Top = 392
  end
  object qParametros_Com: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_COM'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 320
    Top = 420
    object qParametros_ComCOMISSAO_DESCONTAR: TStringField
      FieldName = 'COMISSAO_DESCONTAR'
      FixedChar = True
      Size = 1
    end
    object qParametros_ComMOSTRAR_PED: TStringField
      FieldName = 'MOSTRAR_PED'
      FixedChar = True
      Size = 1
    end
  end
  object qDupAux: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT D.id, D.perc_comissao, D.perc_base_comissao, d.vlr_parcel' +
        'a'
      'FROM duplicata D'
      'WHERE D.id = :ID'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 424
    Top = 304
    object qDupAuxID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qDupAuxPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object qDupAuxPERC_BASE_COMISSAO: TFloatField
      FieldName = 'PERC_BASE_COMISSAO'
    end
    object qDupAuxVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
    end
  end
  object sdsDupAux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select d.*'#13#10'from duplicata d'#13#10'where d.vlr_restante <= 0'#13#10'  and d' +
      '.ID_NOTA = :ID_NOTA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_NOTA'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 536
    Top = 520
  end
  object dspDupAux: TDataSetProvider
    DataSet = sdsDupAux
    Left = 592
    Top = 520
  end
  object cdsDupAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDupAux'
    OnCalcFields = cdsPrevisaoCalcFields
    Left = 656
    Top = 520
    object cdsDupAuxID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDupAuxTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsDupAuxFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsDupAuxID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsDupAuxPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsDupAuxNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object cdsDupAuxNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsDupAuxSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsDupAuxDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsDupAuxVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
    end
    object cdsDupAuxVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsDupAuxVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
    end
    object cdsDupAuxVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object cdsDupAuxVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
    end
    object cdsDupAuxVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsDupAuxVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
    end
    object cdsDupAuxVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
    end
    object cdsDupAuxPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsDupAuxDTULTPAGAMENTO: TDateField
      FieldName = 'DTULTPAGAMENTO'
    end
    object cdsDupAuxID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDupAuxID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsDupAuxID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsDupAuxID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsDupAuxID_CONTA_BOLETO: TIntegerField
      FieldName = 'ID_CONTA_BOLETO'
    end
    object cdsDupAuxID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object cdsDupAuxQTD_DIASATRASO: TIntegerField
      FieldName = 'QTD_DIASATRASO'
    end
    object cdsDupAuxDTRECEBIMENTO_TITULO: TDateField
      FieldName = 'DTRECEBIMENTO_TITULO'
    end
    object cdsDupAuxDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsDupAuxPAGO_CARTORIO: TStringField
      FieldName = 'PAGO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object cdsDupAuxPROTESTADO: TStringField
      FieldName = 'PROTESTADO'
      FixedChar = True
      Size = 1
    end
    object cdsDupAuxTIPO_LANCAMENTO: TStringField
      FieldName = 'TIPO_LANCAMENTO'
      Size = 3
    end
    object cdsDupAuxARQUIVO_GERADO: TStringField
      FieldName = 'ARQUIVO_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsDupAuxTRANSFERENCIA_ICMS: TStringField
      FieldName = 'TRANSFERENCIA_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsDupAuxNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
    end
    object cdsDupAuxDTFINANCEIRO: TDateField
      FieldName = 'DTFINANCEIRO'
    end
    object cdsDupAuxNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object cdsDupAuxACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object cdsDupAuxID_COB_ELETRONICA: TIntegerField
      FieldName = 'ID_COB_ELETRONICA'
    end
    object cdsDupAuxBOLETO_IMP: TStringField
      FieldName = 'BOLETO_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsDupAuxID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object cdsDupAuxID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsDupAuxIMP_BOLETO: TStringField
      FieldName = 'IMP_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsDupAuxNUM_REMESSA: TIntegerField
      FieldName = 'NUM_REMESSA'
    end
    object cdsDupAuxID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object cdsDupAuxDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsDupAuxNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object cdsDupAuxANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsDupAuxMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object cdsDupAuxNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsDupAuxID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsDupAuxID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsDupAuxVLR_TAXA_BANCARIA: TFloatField
      FieldName = 'VLR_TAXA_BANCARIA'
    end
    object cdsDupAuxCOBRAR_TAXA: TStringField
      FieldName = 'COBRAR_TAXA'
      Size = 1
    end
    object cdsDupAuxID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
    object cdsDupAuxID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object cdsDupAuxTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      FixedChar = True
      Size = 1
    end
    object cdsDupAuxNOSSONUMERO_SEQ: TFMTBCDField
      FieldName = 'NOSSONUMERO_SEQ'
      Precision = 15
      Size = 0
    end
    object cdsDupAuxNOSSONUMERO_GERADO: TStringField
      FieldName = 'NOSSONUMERO_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsDupAuxNUMDUPLICATA_SEQ: TIntegerField
      FieldName = 'NUMDUPLICATA_SEQ'
    end
    object cdsDupAuxID_RECIBO: TIntegerField
      FieldName = 'ID_RECIBO'
    end
    object cdsDupAuxID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsDupAuxPERC_COMISSAO_PAGAR_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGAR_NOTA'
    end
    object cdsDupAuxUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsDupAuxTITULO_CARTORIO: TStringField
      FieldName = 'TITULO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object cdsDupAuxID_DESCONTADA: TIntegerField
      FieldName = 'ID_DESCONTADA'
    end
    object cdsDupAuxCONFIRMA_PGTO: TStringField
      FieldName = 'CONFIRMA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsDupAuxCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object cdsDupAuxPERC_BASE_COMISSAO: TFloatField
      FieldName = 'PERC_BASE_COMISSAO'
    end
    object cdsDupAuxEMISSAO_BOLETO: TStringField
      FieldName = 'EMISSAO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsDupAuxDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Size = 100
    end
    object cdsDupAuxID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cdsDupAuxVLR_MULTA: TFloatField
      FieldName = 'VLR_MULTA'
    end
    object cdsDupAuxID_CONTABIL_OPE_LACTO: TIntegerField
      FieldName = 'ID_CONTABIL_OPE_LACTO'
    end
    object cdsDupAuxID_CONTABIL_OPE_BAIXA: TIntegerField
      FieldName = 'ID_CONTABIL_OPE_BAIXA'
    end
    object cdsDupAuxREGIME_CAIXA: TStringField
      FieldName = 'REGIME_CAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsDupAuxPERDIDO: TStringField
      FieldName = 'PERDIDO'
      Size = 1
    end
  end
  object qConta_Orcamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTA_ORCAMENTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 456
    object qConta_OrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qConta_OrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qConta_OrcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object qConta_OrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object qParametros_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PEDIDO_LOJA FROM PARAMETROS_PED WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 320
    Top = 488
    object qParametros_PedPEDIDO_LOJA: TStringField
      FieldName = 'PEDIDO_LOJA'
      FixedChar = True
      Size = 1
    end
  end
  object sdsPrc_Atualiza_Comissao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'PRC_ATUALIZA_COMISSAO'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COMISSAO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 832
    Top = 526
  end
end
