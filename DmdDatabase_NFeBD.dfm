object dmDatabase_NFeBD: TdmDatabase_NFeBD
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 427
  Top = 189
  Height = 347
  Width = 768
  object scoNFeBD: TSQLConnection
    ConnectionName = 'SSFacil'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    KeepConnection = False
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=D:\Fontes\$Servisoft\NFeConfig\NFEBD.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 40
    Top = 24
  end
  object Decoder64: TIdDecoderMIME
    FillChar = '='
    Left = 104
    Top = 24
  end
  object Encoder64: TIdEncoderMIME
    FillChar = '='
    Left = 120
    Top = 24
  end
  object sqVersaoAtual: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT VERSAO_BANCO_NFE FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 128
    object sqVersaoAtualVERSAO_BANCO_NFE: TIntegerField
      FieldName = 'VERSAO_BANCO_NFE'
    end
  end
  object sdsVersao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, SCRIPT '#13#10'FROM VERSAO'#13#10'WHERE PROGRAMA_ID = 5'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoAtualiza
    Left = 104
    Top = 128
    object sdsVersaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsVersaoSCRIPT: TBlobField
      FieldName = 'SCRIPT'
      Size = 1
    end
  end
  object dspVersao: TDataSetProvider
    DataSet = sdsVersao
    Left = 144
    Top = 128
  end
  object sdsExec: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = scoNFeBD
    Left = 104
    Top = 80
  end
  object cdsVersao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspVersao'
    Left = 184
    Top = 128
    object cdsVersaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsVersaoSCRIPT: TBlobField
      FieldName = 'SCRIPT'
      Size = 1
    end
  end
  object sdsExec2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 64
  end
end
