object frmSel_PessoaPet: TfrmSel_PessoaPet
  Left = 187
  Top = 152
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_PessoaPet'
  ClientHeight = 449
  ClientWidth = 945
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 945
    Height = 51
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 58
      Top = 13
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Animal:'
    end
    object Label2: TLabel
      Left = 94
      Top = 35
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ra'#231'a:'
    end
    object Label3: TLabel
      Left = 403
      Top = 13
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Rem'#233'dio:'
    end
    object Label4: TLabel
      Left = 413
      Top = 35
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ra'#231#227'o:'
    end
    object Edit1: TEdit
      Left = 126
      Top = 4
      Width = 264
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object Edit2: TEdit
      Left = 126
      Top = 26
      Width = 264
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyDown = Edit2KeyDown
    end
    object Edit3: TEdit
      Left = 451
      Top = 4
      Width = 264
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyDown = Edit3KeyDown
    end
    object Edit4: TEdit
      Left = 451
      Top = 26
      Width = 264
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyDown = Edit4KeyDown
    end
    object btnConsultar: TNxButton
      Left = 721
      Top = 19
      Width = 156
      Height = 28
      Caption = 'Efetuar Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnConsultarClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 51
    Width = 945
    Height = 398
    Align = alClient
    Ctl3D = False
    DataSource = dsConsulta
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnKeyDown = SMDBGrid1KeyDown
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 7
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cliente'
        Title.Color = 8454016
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PESSOA'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Title.Color = 8454016
        Width = 214
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_RACA'
        Title.Alignment = taCenter
        Title.Caption = 'Ra'#231'a'
        Title.Color = 8454016
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_ANIMAL'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Animal'
        Title.Color = 8454016
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_REMEDIO'
        Title.Alignment = taCenter
        Title.Caption = 'Rem'#233'dio'
        Title.Color = 8454016
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_RACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Ra'#231#227'o'
        Title.Color = 8454016
        Width = 163
        Visible = True
      end>
  end
  object sdsConsulta: TSQLDataSet
    CommandText = 
      'SELECT P.CODIGO, P.NOME NOME_PESSOA, PA.NOME NOME_ANIMAL, REM.NO' +
      'ME NOME_REMEDIO, RAC.NOME NOME_RACAO,'#13#10'R.NOME NOME_RACA'#13#10'FROM PE' +
      'SSOA P'#13#10'INNER JOIN PESSOA_ANIMAL PA'#13#10'ON P.CODIGO = PA.CODIGO'#13#10'LE' +
      'FT JOIN PRODUTO REM'#13#10'ON PA.id_remedio_pulga = REM.ID'#13#10'LEFT JOIN ' +
      'PRODUTO RAC'#13#10'ON PA.id_racao = RAC.ID'#13#10'LEFT JOIN RACA R'#13#10'ON PA.id' +
      '_raca = R.ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 212
    Top = 152
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 252
    Top = 153
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 291
    Top = 155
    object cdsConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsultaNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsConsultaNOME_ANIMAL: TStringField
      FieldName = 'NOME_ANIMAL'
      Size = 60
    end
    object cdsConsultaNOME_REMEDIO: TStringField
      FieldName = 'NOME_REMEDIO'
      Size = 100
    end
    object cdsConsultaNOME_RACAO: TStringField
      FieldName = 'NOME_RACAO'
      Size = 100
    end
    object cdsConsultaNOME_RACA: TStringField
      FieldName = 'NOME_RACA'
      Size = 60
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 326
    Top = 157
  end
end
