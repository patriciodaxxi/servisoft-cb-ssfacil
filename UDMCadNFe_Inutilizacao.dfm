object DMCadNFe_Inutilizacao: TDMCadNFe_Inutilizacao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 222
  Height = 381
  Width = 597
  object sdsNFe_Inutilizacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NFE_INUTILIZACAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsNFe_InutilizacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNFe_InutilizacaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsNFe_InutilizacaoNUMPROTOCOLO: TStringField
      FieldName = 'NUMPROTOCOLO'
      Size = 44
    end
    object sdsNFe_InutilizacaoDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsNFe_InutilizacaoHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsNFe_InutilizacaoMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 200
    end
    object sdsNFe_InutilizacaoNUMNOTA_INI: TIntegerField
      FieldName = 'NUMNOTA_INI'
    end
    object sdsNFe_InutilizacaoNUMNOTA_FIN: TIntegerField
      FieldName = 'NUMNOTA_FIN'
    end
    object sdsNFe_InutilizacaoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsNFe_InutilizacaoDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object sdsNFe_InutilizacaoHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object sdsNFe_InutilizacaoMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object sdsNFe_InutilizacaoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsNFe_InutilizacaoANO: TIntegerField
      FieldName = 'ANO'
    end
  end
  object dspNFe_Inutilizacao: TDataSetProvider
    DataSet = sdsNFe_Inutilizacao
    OnUpdateError = dspNFe_InutilizacaoUpdateError
    Left = 128
    Top = 32
  end
  object cdsNFe_Inutilizacao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNFe_Inutilizacao'
    OnNewRecord = cdsNFe_InutilizacaoNewRecord
    Left = 192
    Top = 32
    object cdsNFe_InutilizacaoID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsNFe_InutilizacaoFILIAL: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsNFe_InutilizacaoNUMPROTOCOLO: TStringField
      DisplayLabel = 'N'#186' Protocolo'
      FieldName = 'NUMPROTOCOLO'
      Size = 44
    end
    object cdsNFe_InutilizacaoSERIE: TStringField
      Alignment = taCenter
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNFe_InutilizacaoNUMNOTA_INI: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Nota Inicial'
      FieldName = 'NUMNOTA_INI'
    end
    object cdsNFe_InutilizacaoNUMNOTA_FIN: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Nota Final'
      FieldName = 'NUMNOTA_FIN'
    end
    object cdsNFe_InutilizacaoDATA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object cdsNFe_InutilizacaoHORA: TTimeField
      Alignment = taCenter
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
    end
    object cdsNFe_InutilizacaoMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Size = 200
    end
    object cdsNFe_InutilizacaoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsNFe_InutilizacaoDTUSUARIO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DTUSUARIO'
    end
    object cdsNFe_InutilizacaoHRUSUARIO: TTimeField
      Alignment = taCenter
      DisplayLabel = 'Hr. Cadastro'
      FieldName = 'HRUSUARIO'
    end
    object cdsNFe_InutilizacaoMODELO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsNFe_InutilizacaoANO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
    end
  end
  object dsNFe_Inutilizacao: TDataSource
    DataSet = cdsNFe_Inutilizacao
    Left = 264
    Top = 32
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO, SERIENORMAL'#13#10'FROM FILIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 152
    Top = 104
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 184
    Top = 104
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_INTERNO'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 224
    Top = 104
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
    object cdsFilialSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 264
    Top = 104
  end
  object qNotas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMNOTAINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMNOTAFIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NUMNOTA, FILIAL, SERIE'
      'FROM NOTAFISCAL'
      'WHERE FILIAL = :FILIAL'
      '   AND SERIE = :SERIE'
      '  AND NUMNOTA >= :NUMNOTAINI'
      '  AND NUMNOTA <= :NUMNOTAFIN')
    SQLConnection = dmDatabase.scoDados
    Left = 168
    Top = 176
    object qNotasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNotasNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qNotasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object qNotasSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
  end
  object qUltNota: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(NUMNOTA) NUMNOTA'
      'FROM NOTAFISCAL'
      'WHERE FILIAL = :FILIAL'
      '   AND SERIE = :SERIE')
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 176
    object qUltNotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
  end
  object qCupom: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMCUPOMINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMCUPOMFIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NUMCUPOM, FILIAL, SERIE'
      'FROM CUPOMFISCAL'
      'WHERE FILIAL = :FILIAL'
      '  AND SERIE = :SERIE'
      '  AND NUMCUPOM >= :NUMCUPOMINI'
      '  AND NUMCUPOM <= :NUMCUPOMFIN')
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 176
    object qCupomID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCupomNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object qCupomFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object qCupomSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
  end
  object qUltCupom: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(NUMCUPOM) NUMCUPOM'
      'FROM CUPOMFISCAL'
      'WHERE FILIAL = :FILIAL'
      '   AND SERIE = :SERIE')
    SQLConnection = dmDatabase.scoDados
    Left = 432
    Top = 176
    object qUltCupomNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
  end
  object qUltInutilizacao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select first 1 max(n.id) ID, n.serie, n.modelo'
      'from nfe_inutilizacao n'
      'group by n.serie, n.modelo')
    SQLConnection = dmDatabase.scoDados
    Left = 424
    Top = 48
    object qUltInutilizacaoID: TIntegerField
      FieldName = 'ID'
    end
    object qUltInutilizacaoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qUltInutilizacaoMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
  end
end
