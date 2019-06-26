object frmConsClienteOBS: TfrmConsClienteOBS
  Left = 215
  Top = 17
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsClienteOBS'
  ClientHeight = 634
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NxPanel1: TNxPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 45
    Align = alTop
    UseDockManager = False
    ParentBackground = False
    TabOrder = 0
    object NxLabel1: TNxLabel
      Left = 13
      Top = 10
      Width = 51
      Height = 16
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel2: TNxLabel
      Left = 156
      Top = 9
      Width = 36
      Height = 16
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object Label3: TLabel
      Left = 66
      Top = 29
      Width = 113
      Height = 13
      Caption = 'Pressione ESC para sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 65
      Top = 6
      Width = 85
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = CurrencyEdit1Change
      OnKeyDown = CurrencyEdit1KeyDown
    end
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 173
    Width = 920
    Height = 461
    Align = alClient
    Color = 12320767
    DataField = 'OBS'
    DataSource = dsConsulta
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object DBMemo2: TDBMemo
    Left = 0
    Top = 93
    Width = 920
    Height = 80
    Align = alTop
    Color = 12320767
    DataField = 'OBS_AVISO'
    DataSource = dsConsulta
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 45
    Width = 920
    Height = 48
    Align = alTop
    Color = 16759413
    TabOrder = 3
    object Label1: TLabel
      Left = 58
      Top = 8
      Width = 85
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tabela Pre'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 146
      Top = 9
      Width = 390
      Height = 15
      DataField = 'NOME_TABPRECO'
      DataSource = dsConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 146
      Top = 28
      Width = 390
      Height = 15
      DataField = 'NOME_CONDPGTO'
      DataSource = dsConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 25
      Top = 27
      Width = 118
      Height = 14
      Alignment = taRightJustify
      Caption = 'Cond. Pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
  end
  object sdsConsulta: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.obs, P.obs_aviso, P.id_condpgto, P.NOME NOME_' +
      'CLIENTE,'#13#10' COND.NOME NOME_CONDPGTO, P.id_tab_preco, T.NOME NOME_' +
      'TABPRECO,'#13#10' P.vlr_ult_faturamento, P.dtnota, P.dtpedido'#13#10'FROM PE' +
      'SSOA P'#13#10'LEFT JOIN condpgto COND'#13#10'ON P.id_condpgto = COND.ID'#13#10'LEF' +
      'T JOIN tab_preco T'#13#10'ON P.id_tab_preco = T.ID'#13#10'where p.codigo = :' +
      'CODIGO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 131
    Top = 114
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 168
    Top = 114
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 211
    Top = 114
    object cdsConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsultaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaOBS_AVISO: TStringField
      FieldName = 'OBS_AVISO'
      Size = 150
    end
    object cdsConsultaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsultaNOME_CONDPGTO: TStringField
      FieldName = 'NOME_CONDPGTO'
      Size = 40
    end
    object cdsConsultaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsConsultaNOME_TABPRECO: TStringField
      FieldName = 'NOME_TABPRECO'
      Size = 70
    end
    object cdsConsultaVLR_ULT_FATURAMENTO: TFloatField
      FieldName = 'VLR_ULT_FATURAMENTO'
    end
    object cdsConsultaDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object cdsConsultaDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 245
    Top = 114
  end
end
