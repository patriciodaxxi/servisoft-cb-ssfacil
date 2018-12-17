object DmDatabase: TDmDatabase
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 509
  Top = 199
  Height = 232
  Width = 331
  object scoDados: TSQLConnection
    ConnectionName = 'SSFacil'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    KeepConnection = False
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=localhost:C:\Delphi7\SSFacil\Phd.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
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
end
