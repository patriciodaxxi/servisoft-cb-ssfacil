object DMConsCancelada: TDMConsCancelada
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 293
  Top = 165
  Height = 530
  Width = 675
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 144
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 192
    Top = 144
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 256
    Top = 144
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
    Left = 328
    Top = 144
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT  NT.CANCELADA, NT.NFEDENEGADA, NT.FILIAL, NT.NUMNOTA, NT.' +
      'SERIE, NT.DTEMISSAO, NT.ID_CLIENTE, NT.VLR_NOTA, NT.TIPO_NOTA, N' +
      'T.MOTIVO_CANCELADA, NT.MOTIVO_DENEGADA,'#13#10' CLI.NOME NOMECLIENTE, ' +
      'CFOP.CODCFOP, CLI.FANTASIA'#13#10'FROM NOTAFISCAL NT'#13#10'INNER JOIN PESSO' +
      'A CLI'#13#10'  ON NT.ID_CLIENTE = CLI.CODIGO'#13#10'LEFT JOIN TAB_CFOP CFOP'#13 +
      #10'  ON NT.ID_CFOP = CFOP.ID'#13#10'WHERE TIPO_REG = '#39'NTS'#39#13#10#13#10#13#10#13#10
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
    IndexFieldNames = 'FILIAL;SERIE;NUMNOTA'
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 192
    Top = 32
    object cdsConsultaCANCELADA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaNFEDENEGADA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Denegada'
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsConsultaNUMNOTA: TIntegerField
      DisplayLabel = 'N'#186' Nota'
      FieldName = 'NUMNOTA'
    end
    object cdsConsultaSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsConsultaDTEMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsConsultaID_CLIENTE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsultaVLR_NOTA: TFloatField
      DisplayLabel = 'Vlr. Nota'
      FieldName = 'VLR_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsConsultaNOMECLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsConsultaCODCFOP: TStringField
      Alignment = taCenter
      DisplayLabel = 'CFOP'
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsConsultaFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsConsultaTIPO_NOTA: TStringField
      DisplayLabel = 'Entrada / Sa'#237'da'
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaMOTIVO_CANCELADA: TStringField
      DisplayLabel = 'Motivo Cancelada'
      FieldName = 'MOTIVO_CANCELADA'
      Size = 100
    end
    object cdsConsultaMOTIVO_DENEGADA: TStringField
      DisplayLabel = 'Motivo Denegada'
      FieldName = 'MOTIVO_DENEGADA'
      Size = 250
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 232
    Top = 32
  end
end
