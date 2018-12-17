object DMCadAtelier_Fic: TDMCadAtelier_Fic
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 304
  Top = 204
  Height = 331
  Width = 715
  object sdsAtelier_Fic: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ATELIER_FIC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsAtelier_FicID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAtelier_FicID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object sdsAtelier_FicADEFINIR: TStringField
      FieldName = 'ADEFINIR'
      Size = 1
    end
  end
  object dspAtelier_Fic: TDataSetProvider
    DataSet = sdsAtelier_Fic
    OnUpdateError = dspAtelier_FicUpdateError
    Left = 128
    Top = 32
  end
  object cdsAtelier_Fic: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspAtelier_Fic'
    OnCalcFields = cdsAtelier_FicCalcFields
    OnNewRecord = cdsAtelier_FicNewRecord
    Left = 192
    Top = 32
    object cdsAtelier_FicID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAtelier_FicID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsAtelier_FicADEFINIR: TStringField
      FieldName = 'ADEFINIR'
      Size = 1
    end
    object cdsAtelier_FicclNome_Atelier: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Atelier'
      Size = 60
      Calculated = True
    end
  end
  object dsAtelier_Fic: TDataSource
    DataSet = cdsAtelier_Fic
    Left = 264
    Top = 32
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ATE.CODIGO, ATE.NOME, ATE.CNPJ_CPF, ATE.CIDADE'#13#10'FROM PESS' +
      'OA ATE'#13#10'WHERE ATE.TP_ATELIER = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 152
    Top = 152
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    OnUpdateError = dspAtelier_FicUpdateError
    Left = 224
    Top = 152
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPessoa'
    OnNewRecord = cdsAtelier_FicNewRecord
    Left = 288
    Top = 152
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 360
    Top = 152
  end
  object qVer: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ATELIER'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR'
      'FROM ATELIER_FIC'
      'WHERE ID_ATELIER <> :ID_ATELIER')
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 96
    object qVerCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
end
