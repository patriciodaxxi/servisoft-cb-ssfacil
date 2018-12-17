object DMCadMetas_Vendedor: TDMCadMetas_Vendedor
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 269
  Top = 203
  Height = 336
  Width = 805
  object sdsMetas_Vendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT M.*'#13#10'FROM METAS_VENDEDOR M'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsMetas_VendedorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMetas_VendedorANO: TIntegerField
      FieldName = 'ANO'
    end
    object sdsMetas_VendedorMES: TIntegerField
      FieldName = 'MES'
    end
    object sdsMetas_VendedorVLR_META: TFloatField
      FieldName = 'VLR_META'
    end
    object sdsMetas_VendedorID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsMetas_VendedorANO_MES: TStringField
      FieldName = 'ANO_MES'
      Size = 6
    end
  end
  object dspMetas_Vendedor: TDataSetProvider
    DataSet = sdsMetas_Vendedor
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspMetas_VendedorUpdateError
    Left = 128
    Top = 32
  end
  object cdsMetas_Vendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspMetas_Vendedor'
    Left = 192
    Top = 32
    object cdsMetas_VendedorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMetas_VendedorANO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
    end
    object cdsMetas_VendedorMES: TIntegerField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
    end
    object cdsMetas_VendedorVLR_META: TFloatField
      DisplayLabel = 'Vlr. Meta'
      FieldName = 'VLR_META'
      DisplayFormat = '0.00'
    end
    object cdsMetas_VendedorID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsMetas_VendedorANO_MES: TStringField
      FieldName = 'ANO_MES'
      Size = 6
    end
  end
  object dsMetas_Vendedor: TDataSource
    DataSet = cdsMetas_Vendedor
    Left = 264
    Top = 32
  end
  object qVerifica: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_VENDEDOR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, VLR_META'
      'FROM METAS_VENDEDOR'
      'WHERE ANO = :ANO'
      '    AND MES = :MES'
      '   AND ID_VENDEDOR = :ID_VENDEDOR')
    SQLConnection = dmDatabase.scoDados
    Left = 152
    Top = 104
    object qVerificaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerificaVLR_META: TFloatField
      FieldName = 'VLR_META'
    end
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.NOME, P.UF, P.CIDADE'#13#10'FROM PESSOA P'#13#10'WHERE P.' +
      'TP_VENDEDOR = '#39'S'#39#13#10'   AND P.INATIVO = '#39'N'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 256
    Top = 144
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspMetas_VendedorUpdateError
    Left = 328
    Top = 144
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 392
    Top = 144
    object cdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsVendedorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsVendedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 464
    Top = 144
  end
  object qRegiao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select vend.codigo, vend.nome, vend.uf'
      'from pessoa vend'
      'WHERE VEND.tp_vendedor = '#39'S'#39
      'AND VEND.INATIVO = '#39'N'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 152
    Top = 160
    object qRegiaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qRegiaoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qRegiaoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*, CASE'#13#10' when MES = 01 THEN '#39'Janeiro'#39#13#10' when MES = 02 ' +
      'THEN '#39'Fevereiro'#39#13#10' when MES = 03 THEN '#39'Mar'#231'o'#39#13#10' when MES = 04 TH' +
      'EN '#39'Abril'#39#13#10' when MES = 05 THEN '#39'Maio'#39#13#10' when MES = 06 THEN '#39'Jun' +
      'ho'#39#13#10' when MES = 07 THEN '#39'Julho'#39#13#10' when MES = 08 THEN '#39'Agosto'#39#13#10 +
      ' when MES = 09 THEN '#39'Setembro'#39#13#10' when MES = 10 THEN '#39'Outubro'#39#13#10' ' +
      'when MES = 11 THEN '#39'Novembro'#39#13#10' when MES = 12 THEN '#39'Dezembro'#39#13#10' ' +
      'when MES = 99 THEN '#39'99'#39#13#10' else '#39#39#13#10' end NOME_MES, VEND.NOME NOME' +
      '_VENDEDOR, VEND.UF, CASE'#13#10' when (UF in ('#39'RS'#39', '#39'SC'#39', '#39'PR'#39')) then ' +
      #39'Sul'#39#13#10' when (UF in ('#39'SP'#39','#39'RJ'#39', '#39'ES'#39', '#39'MG'#39')) then '#39'Sudeste'#39#13#10' wh' +
      'en (UF in ('#39'MT'#39','#39'MS'#39','#39'GO'#39','#39'DF'#39')) then '#39'Centro-Oeste'#39#13#10' when (UF ' +
      'in ('#39'AC'#39','#39'RO'#39','#39'AM'#39','#39'RR'#39','#39'AP'#39','#39'PA'#39','#39'TO'#39')) then '#39'Norte'#39#13#10' when (UF' +
      ' in ('#39'MA'#39','#39'PI'#39','#39'CE'#39','#39'RN'#39','#39'PB'#39','#39'PE'#39','#39'AL'#39', '#39'SE'#39','#39'BA'#39')) then '#39'Norde' +
      'ste'#39#13#10' else '#39#39#13#10' end REGIAO'#13#10#13#10#13#10'FROM METAS_VENDEDOR M'#13#10'LEFT JOI' +
      'N PESSOA VEND'#13#10'ON M.id_vendedor = VEND.codigo'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 40
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspMetas_VendedorUpdateError
    Left = 520
    Top = 40
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 584
    Top = 40
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaANO: TIntegerField
      FieldName = 'ANO'
    end
    object cdsConsultaMES: TIntegerField
      FieldName = 'MES'
    end
    object cdsConsultaVLR_META: TFloatField
      FieldName = 'VLR_META'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsConsultaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsConsultaNOME_MES: TStringField
      FieldName = 'NOME_MES'
      Required = True
      FixedChar = True
      Size = 9
    end
    object cdsConsultaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsConsultaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsConsultaREGIAO: TStringField
      FieldName = 'REGIAO'
      Required = True
      FixedChar = True
      Size = 12
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 656
    Top = 40
  end
end
