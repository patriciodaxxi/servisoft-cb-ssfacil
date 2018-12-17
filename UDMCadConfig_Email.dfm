object DMCadConfig_Email: TDMCadConfig_Email
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 523
  Top = 147
  Height = 296
  Width = 473
  object sdsConfig_Email: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONFIG_EMAIL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsConfig_EmailID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConfig_EmailNOME_CONFIG: TStringField
      FieldName = 'NOME_CONFIG'
      Required = True
      Size = 40
    end
    object sdsConfig_EmailREMETENTE_NOME: TStringField
      FieldName = 'REMETENTE_NOME'
      Size = 100
    end
    object sdsConfig_EmailREMETENTE_EMAIL: TStringField
      FieldName = 'REMETENTE_EMAIL'
      Size = 150
    end
    object sdsConfig_EmailSMTP_CLIENTE: TStringField
      FieldName = 'SMTP_CLIENTE'
      Size = 100
    end
    object sdsConfig_EmailSMTP_PORTA: TIntegerField
      FieldName = 'SMTP_PORTA'
    end
    object sdsConfig_EmailSMTP_REQUER_SSL: TStringField
      FieldName = 'SMTP_REQUER_SSL'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_EmailSMTP_USUARIO: TStringField
      FieldName = 'SMTP_USUARIO'
      Size = 100
    end
    object sdsConfig_EmailSMTP_SENHA: TStringField
      FieldName = 'SMTP_SENHA'
      Size = 100
    end
    object sdsConfig_EmailSOLICITAR_CONFIRMACAO: TStringField
      FieldName = 'SOLICITAR_CONFIRMACAO'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_EmailBASE: TSmallintField
      FieldName = 'BASE'
    end
  end
  object dspConfig_Email: TDataSetProvider
    DataSet = sdsConfig_Email
    OnUpdateError = dspConfig_EmailUpdateError
    Left = 128
    Top = 32
  end
  object cdsConfig_Email: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspConfig_Email'
    OnNewRecord = cdsConfig_EmailNewRecord
    Left = 192
    Top = 32
    object cdsConfig_EmailID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConfig_EmailNOME_CONFIG: TStringField
      FieldName = 'NOME_CONFIG'
      Required = True
      Size = 40
    end
    object cdsConfig_EmailREMETENTE_NOME: TStringField
      FieldName = 'REMETENTE_NOME'
      Size = 100
    end
    object cdsConfig_EmailREMETENTE_EMAIL: TStringField
      FieldName = 'REMETENTE_EMAIL'
      Size = 150
    end
    object cdsConfig_EmailSMTP_CLIENTE: TStringField
      FieldName = 'SMTP_CLIENTE'
      Size = 100
    end
    object cdsConfig_EmailSMTP_PORTA: TIntegerField
      FieldName = 'SMTP_PORTA'
    end
    object cdsConfig_EmailSMTP_REQUER_SSL: TStringField
      FieldName = 'SMTP_REQUER_SSL'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_EmailSMTP_USUARIO: TStringField
      FieldName = 'SMTP_USUARIO'
      Size = 100
    end
    object cdsConfig_EmailSMTP_SENHA: TStringField
      FieldName = 'SMTP_SENHA'
      OnGetText = cdsConfig_EmailSMTP_SENHAGetText
      OnSetText = cdsConfig_EmailSMTP_SENHASetText
      Size = 100
    end
    object cdsConfig_EmailSOLICITAR_CONFIRMACAO: TStringField
      FieldName = 'SOLICITAR_CONFIRMACAO'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_EmailBASE: TSmallintField
      FieldName = 'BASE'
    end
  end
  object dsConfig_Email: TDataSource
    DataSet = cdsConfig_Email
    Left = 264
    Top = 32
  end
end
