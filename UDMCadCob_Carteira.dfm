object DMCadCob_Carteira: TDMCadCob_Carteira
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 222
  Height = 296
  Width = 482
  object sdsCob_Carteira: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CAD.*, B.NOME NOME_BANCO'#13#10'FROM COB_CARTEIRA CAD'#13#10'INNER JO' +
      'IN BANCO B'#13#10'ON CAD.ID_BANCO = B.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsCob_CarteiraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCob_CarteiraCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object sdsCob_CarteiraNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsCob_CarteiraGERAR_NOSSONUMERO: TStringField
      FieldName = 'GERAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object sdsCob_CarteiraGERAR_REMESSA: TStringField
      FieldName = 'GERAR_REMESSA'
      FixedChar = True
      Size = 1
    end
    object sdsCob_CarteiraID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsCob_CarteiraNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      ProviderFlags = []
      Size = 60
    end
    object sdsCob_CarteiraCODIGO_IMP: TStringField
      FieldName = 'CODIGO_IMP'
      Size = 7
    end
  end
  object dspCob_Carteira: TDataSetProvider
    DataSet = sdsCob_Carteira
    OnUpdateError = dspCob_CarteiraUpdateError
    Left = 128
    Top = 32
  end
  object cdsCob_Carteira: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspCob_Carteira'
    Left = 192
    Top = 32
    object cdsCob_CarteiraID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsCob_CarteiraCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsCob_CarteiraNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsCob_CarteiraGERAR_NOSSONUMERO: TStringField
      DisplayLabel = 'Gerar Nosso N'#250'mero'
      FieldName = 'GERAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object cdsCob_CarteiraGERAR_REMESSA: TStringField
      DisplayLabel = 'Gerar Remessa'
      FieldName = 'GERAR_REMESSA'
      FixedChar = True
      Size = 1
    end
    object cdsCob_CarteiraID_BANCO: TIntegerField
      DisplayLabel = 'ID Banco'
      FieldName = 'ID_BANCO'
    end
    object cdsCob_CarteiraNOME_BANCO: TStringField
      DisplayLabel = 'Nome Banco'
      FieldName = 'NOME_BANCO'
      ProviderFlags = []
      Size = 60
    end
    object cdsCob_CarteiraCODIGO_IMP: TStringField
      FieldName = 'CODIGO_IMP'
      Size = 7
    end
  end
  object dsCob_Carteira: TDataSource
    DataSet = cdsCob_Carteira
    Left = 264
    Top = 32
  end
  object sdsBanco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 88
    object sdsBancoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsBancoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object sdsBancoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspBanco: TDataSetProvider
    DataSet = sdsBanco
    Left = 128
    Top = 88
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBanco'
    Left = 192
    Top = 88
    object cdsBancoID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsBancoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo Banco'
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsBancoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsBanco: TDataSource
    DataSet = cdsBanco
    Left = 264
    Top = 88
  end
end
