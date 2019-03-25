object DMCadPedWeb: TDMCadPedWeb
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 672
  Top = 153
  Height = 377
  Width = 492
  object sdsPedWeb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PEDWEB'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 32
    object sdsPedWebID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedWebID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object sdsPedWebID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsPedWebHORA_EMISSAO: TStringField
      FieldName = 'HORA_EMISSAO'
      Size = 10
    end
    object sdsPedWebPRAZO_PEDIDO: TIntegerField
      FieldName = 'PRAZO_PEDIDO'
    end
    object sdsPedWebID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object sdsPedWebVLR_DESCONTO: TFMTBCDField
      FieldName = 'VLR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sdsPedWebTIPO_OPERACAO: TIntegerField
      FieldName = 'TIPO_OPERACAO'
    end
    object sdsPedWebCOND_PAGAMENTO: TIntegerField
      FieldName = 'COND_PAGAMENTO'
    end
    object sdsPedWebGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedWebVLR_TOTAL: TFMTBCDField
      FieldName = 'VLR_TOTAL'
      Precision = 15
      Size = 2
    end
    object sdsPedWebOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
    object sdsPedWebDATA_APROVADO: TDateField
      FieldName = 'DATA_APROVADO'
    end
    object sdsPedWebDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
  end
  object dspPedWeb: TDataSetProvider
    DataSet = sdsPedWeb
    Left = 58
    Top = 32
  end
  object cdsPedWeb: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedWeb'
    Left = 86
    Top = 32
    object cdsPedWebID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedWebID_USUARIO: TIntegerField
      DisplayLabel = 'Cod Usu'#225'rio'
      FieldName = 'ID_USUARIO'
    end
    object cdsPedWebID_PESSOA: TIntegerField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'ID_PESSOA'
    end
    object cdsPedWebHORA_EMISSAO: TStringField
      DisplayLabel = 'Hora_Emissao'
      FieldName = 'HORA_EMISSAO'
      Size = 10
    end
    object cdsPedWebPRAZO_PEDIDO: TIntegerField
      DisplayLabel = 'Prazo'
      FieldName = 'PRAZO_PEDIDO'
    end
    object cdsPedWebID_FORMA_PAGAMENTO: TIntegerField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsPedWebVLR_DESCONTO: TFMTBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '##.#00'
      Precision = 15
      Size = 2
    end
    object cdsPedWebTIPO_OPERACAO: TIntegerField
      DisplayLabel = 'Tipo Opera'#231#227'o'
      FieldName = 'TIPO_OPERACAO'
    end
    object cdsPedWebCOND_PAGAMENTO: TIntegerField
      DisplayLabel = 'Condi'#231#227'o pagamento'
      FieldName = 'COND_PAGAMENTO'
    end
    object cdsPedWebGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedWebVLR_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '##.#00'
      Precision = 15
      Size = 2
    end
    object cdsPedWebOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
    object cdsPedWebsdsPedWeb_Item: TDataSetField
      FieldName = 'sdsPedWeb_Item'
    end
    object cdsPedWebDATA_APROVADO: TDateField
      FieldName = 'DATA_APROVADO'
    end
    object cdsPedWebDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
  end
  object dsPedWeb: TDataSource
    DataSet = cdsPedWeb
    Left = 116
    Top = 32
  end
  object sdsConsultaPedWeb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select PWEB.*, P.NOME NOME_CLIENTE, P1.NOME NOME_USUARIO'#13#10'from P' +
      'EDWEB PWEB'#13#10'left join PESSOA P on P.CODIGO = PWEB.ID_PESSOA'#13#10'lef' +
      't join PESSOA P1 on P1.CODIGO = PWEB.ID_USUARIO  '#13#10'where COALESC' +
      'E(PWEB.GERADO,'#39'N'#39') <> '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 216
    Top = 32
    object sdsConsultaPedWebID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsultaPedWebID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object sdsConsultaPedWebID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsConsultaPedWebHORA_EMISSAO: TStringField
      FieldName = 'HORA_EMISSAO'
      Size = 10
    end
    object sdsConsultaPedWebPRAZO_PEDIDO: TIntegerField
      FieldName = 'PRAZO_PEDIDO'
    end
    object sdsConsultaPedWebID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object sdsConsultaPedWebVLR_DESCONTO: TFMTBCDField
      FieldName = 'VLR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sdsConsultaPedWebVLR_TOTAL: TFMTBCDField
      FieldName = 'VLR_TOTAL'
      Precision = 15
      Size = 2
    end
    object sdsConsultaPedWebTIPO_OPERACAO: TIntegerField
      FieldName = 'TIPO_OPERACAO'
    end
    object sdsConsultaPedWebCOND_PAGAMENTO: TIntegerField
      FieldName = 'COND_PAGAMENTO'
    end
    object sdsConsultaPedWebGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsConsultaPedWebNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object sdsConsultaPedWebNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      Size = 60
    end
    object sdsConsultaPedWebOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
    object sdsConsultaPedWebDATA_APROVADO: TDateField
      FieldName = 'DATA_APROVADO'
    end
    object sdsConsultaPedWebDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
  end
  object dspConsultaPedWeb: TDataSetProvider
    DataSet = sdsConsultaPedWeb
    Left = 242
    Top = 32
  end
  object cdsConsultaPedWeb: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspConsultaPedWeb'
    Left = 270
    Top = 32
    object cdsConsultaPedWebID: TIntegerField
      DisplayLabel = 'ID PedWeb'
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaPedWebID_USUARIO: TIntegerField
      DisplayLabel = 'Cod.Usu'#225'rio'
      FieldName = 'ID_USUARIO'
    end
    object cdsConsultaPedWebID_PESSOA: TIntegerField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'ID_PESSOA'
    end
    object cdsConsultaPedWebHORA_EMISSAO: TStringField
      DisplayLabel = 'Hora Emiss'#227'o'
      FieldName = 'HORA_EMISSAO'
      Size = 10
    end
    object cdsConsultaPedWebPRAZO_PEDIDO: TIntegerField
      DisplayLabel = 'Prazo'
      FieldName = 'PRAZO_PEDIDO'
    end
    object cdsConsultaPedWebID_FORMA_PAGAMENTO: TIntegerField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsConsultaPedWebVLR_DESCONTO: TFMTBCDField
      DisplayLabel = 'Vlr.Desconto'
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '##.#00'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPedWebVLR_TOTAL: TFMTBCDField
      DisplayLabel = 'Vlr.Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '##.#00'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPedWebTIPO_OPERACAO: TIntegerField
      DisplayLabel = 'Tipo Opera'#231#227'o'
      FieldName = 'TIPO_OPERACAO'
    end
    object cdsConsultaPedWebCOND_PAGAMENTO: TIntegerField
      DisplayLabel = 'Cond.Pagamento'
      FieldName = 'COND_PAGAMENTO'
    end
    object cdsConsultaPedWebGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaPedWebNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsultaPedWebNOME_USUARIO: TStringField
      DisplayLabel = 'Nome Usu'#225'rio'
      FieldName = 'NOME_USUARIO'
      Size = 60
    end
    object cdsConsultaPedWebOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
    object cdsConsultaPedWebDATA_APROVADO: TDateField
      FieldName = 'DATA_APROVADO'
    end
    object cdsConsultaPedWebDATA_EMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DATA_EMISSAO'
    end
    object cdsConsultaPedWebValorTotalDesconto: TAggregateField
      FieldName = 'ValorTotalDesconto'
      Active = True
      DisplayFormat = '0.00'
      Expression = 'SUM(VLR_DESCONTO)'
    end
    object cdsConsultaPedWebValorTotal: TAggregateField
      FieldName = 'ValorTotal'
      Active = True
      DisplayFormat = '0.00'
      Expression = 'SUM(VLR_TOTAL)'
    end
  end
  object dsConsultaPedWeb: TDataSource
    DataSet = cdsConsultaPedWeb
    Left = 300
    Top = 32
  end
  object dsMestre: TDataSource
    DataSet = sdsPedWeb
    Left = 32
    Top = 80
  end
  object sdsPedWeb_Item: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from PEDWEB_ITEM'#13#10'where ID_PEDIDO = :ID'
    DataSource = dsMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 136
    object sdsPedWeb_ItemID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object sdsPedWeb_ItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object sdsPedWeb_ItemQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object sdsPedWeb_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsPedWeb_ItemVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsPedWeb_ItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsPedWeb_ItemOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
  end
  object cdsPedWeb_Item: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedWebsdsPedWeb_Item
    Params = <>
    Left = 72
    Top = 136
    object cdsPedWeb_ItemID_PEDIDO: TIntegerField
      DisplayLabel = 'ID Pedido'
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsPedWeb_ItemID_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsPedWeb_ItemQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
    end
    object cdsPedWeb_ItemVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '##.#00'
    end
    object cdsPedWeb_ItemVLR_DESCONTO: TFloatField
      DisplayLabel = 'Vlr Desconto'
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '##.#00'
    end
    object cdsPedWeb_ItemVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '##.#00'
    end
    object cdsPedWeb_ItemOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
  end
  object dsPedWeb_Item: TDataSource
    DataSet = cdsPedWeb_Item
    Left = 104
    Top = 136
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT FILIAL_PADRAO_PEDWEB FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 304
    Top = 128
    object qParametros_GeralFILIAL_PADRAO_PEDWEB: TIntegerField
      FieldName = 'FILIAL_PADRAO_PEDWEB'
    end
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select P.CODIGO, P.NOME, PV.COD_VENDEDOR'#13#10'from PESSOA P'#13#10'inner j' +
      'oin PESSOA_VEND PV on P.CODIGO = PV.CODIGO'#13#10'where TP_VENDEDOR = ' +
      #39'S'#39' and'#13#10'      coalesce(INATIVO, '#39'N'#39') = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 216
    Top = 80
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 242
    Top = 80
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 270
    Top = 80
    object cdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsVendedorCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 300
    Top = 80
  end
end
