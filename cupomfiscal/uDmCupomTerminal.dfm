object dmCupomTerminal: TdmCupomTerminal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 402
  Top = 124
  Height = 316
  Width = 528
  object sdsCupomTerminal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CUPOMFISCAL_TERMINAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 40
    object sdsCupomTerminalID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object sdsCupomTerminalNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dspCupomTerminal: TDataSetProvider
    DataSet = sdsCupomTerminal
    Left = 104
    Top = 40
  end
  object cdsCupomTerminal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCupomTerminal'
    Left = 160
    Top = 40
    object cdsCupomTerminalID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object cdsCupomTerminalNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dsCupomTerminal: TDataSource
    DataSet = cdsCupomTerminal
    Left = 216
    Top = 40
  end
end
