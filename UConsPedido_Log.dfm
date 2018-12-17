object frmConsPedido_Log: TfrmConsPedido_Log
  Left = 212
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsPedido_Log'
  ClientHeight = 491
  ClientWidth = 948
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 41
    Width = 609
    Height = 450
    Align = alClient
    Ctl3D = False
    DataSource = dsLogs
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = True
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_TABELA'
        Width = 143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_OPERACAO'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_OPERACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA_OPERACAO'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 948
    Height = 41
    Align = alTop
    Color = clSilver
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 752
      Top = 8
      Width = 121
      Height = 28
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object DBMemo1: TDBMemo
    Left = 609
    Top = 41
    Width = 339
    Height = 450
    Align = alRight
    Color = 10944511
    Ctl3D = True
    DataField = 'LOG'
    DataSource = dsLogs
    ParentCtl3D = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object scoLog: TSQLConnection
    ConnectionName = 'Logs'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    KeepConnection = False
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=d:\Fontes\$Servisoft\Bases\SSFacil\Logs.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet=WIN1252'
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 96
    Top = 128
  end
  object sdsLogs: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.*,'#13#10'  CASE'#13#10'  WHEN L.operacao = 0 THEN '#39'Inclus'#227'o'#39#13#10'  WH' +
      'EN L.operacao = 1 THEN '#39'Altera'#231#227'o'#39#13#10'  WHEN L.operacao = 2 THEN '#39 +
      'Exclus'#227'o'#39#13#10'  end DESC_OPERACAO'#13#10'FROM LOG_SISTEMA L'#13#10'WHERE L.data' +
      '_operacao = :DATA'#13#10'and L.nome_tabela = :Tabela'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tabela'
        ParamType = ptInput
      end>
    SQLConnection = scoLog
    Left = 312
    Top = 208
  end
  object dspLogs: TDataSetProvider
    DataSet = sdsLogs
    Left = 352
    Top = 208
  end
  object cdsLogs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogs'
    Left = 392
    Top = 208
    object cdsLogsID_LOG: TIntegerField
      DisplayLabel = 'ID Log'
      FieldName = 'ID_LOG'
      Required = True
    end
    object cdsLogsNOME_TABELA: TStringField
      DisplayLabel = 'Nome Tabela'
      FieldName = 'NOME_TABELA'
      Required = True
      Size = 80
    end
    object cdsLogsOPERACAO: TIntegerField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'OPERACAO'
      Required = True
    end
    object cdsLogsUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Required = True
      Size = 30
    end
    object cdsLogsDATA_OPERACAO: TDateField
      DisplayLabel = 'Data Opera'#231#227'o'
      FieldName = 'DATA_OPERACAO'
      Required = True
    end
    object cdsLogsHORA_OPERACAO: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA_OPERACAO'
      Required = True
    end
    object cdsLogsLOG: TMemoField
      DisplayLabel = 'Log'
      FieldName = 'LOG'
      Required = True
      BlobType = ftMemo
      Size = 1
    end
    object cdsLogsDESC_OPERACAO: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'DESC_OPERACAO'
      FixedChar = True
      Size = 9
    end
  end
  object dsLogs: TDataSource
    DataSet = cdsLogs
    Left = 432
    Top = 208
  end
  object Decoder64: TIdDecoderMIME
    FillChar = '='
    Left = 216
    Top = 296
  end
end
