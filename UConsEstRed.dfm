object frmConsEstRed: TfrmConsEstRed
  Left = 236
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Estoque'
  ClientHeight = 525
  ClientWidth = 978
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 978
    Height = 82
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 138
      Top = 15
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID Produto:'
    end
    object Label2: TLabel
      Left = 137
      Top = 38
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia:'
    end
    object Label3: TLabel
      Left = 346
      Top = 38
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cor:'
    end
    object RadioGroup2: TRadioGroup
      Left = 1
      Top = 1
      Width = 120
      Height = 80
      Align = alLeft
      Caption = ' Tipo '
      Color = clSilver
      ItemIndex = 3
      Items.Strings = (
        'Produto'
        'Material'
        'Material Consumo'
        'Semi Acabado')
      ParentColor = False
      TabOrder = 5
    end
    object btnConsultar: TNxButton
      Left = 194
      Top = 55
      Width = 97
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnConsultarClick
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 193
      Top = 8
      Width = 81
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
      OnExit = CurrencyEdit1Exit
      OnKeyDown = CurrencyEdit1KeyDown
    end
    object Edit1: TEdit
      Left = 273
      Top = 8
      Width = 334
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyDown = Edit1KeyDown
    end
    object Edit2: TEdit
      Left = 193
      Top = 30
      Width = 128
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyDown = Edit2KeyDown
    end
    object Edit3: TEdit
      Left = 366
      Top = 30
      Width = 241
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyDown = Edit3KeyDown
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 82
    Width = 978
    Height = 443
    Align = alClient
    Ctl3D = False
    DataSource = dsConsEst
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 10
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'ID Produto'
        Title.Color = 10813256
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 81
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Color = 10813256
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Title.Color = 10813256
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 276
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_COMBINACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Cor'
        Title.Color = 10813256
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 172
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Title.Color = 10813256
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_RESERVA'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Reserva'
        Title.Color = 10813256
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clSaldo'
        Title.Alignment = taCenter
        Title.Caption = 'Saldo'
        Title.Color = 10813256
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAMANHO'
        Title.Alignment = taCenter
        Title.Caption = 'Tam.'
        Title.Color = 10813256
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_TIPO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Title.Color = 10813256
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 101
        Visible = True
      end>
  end
  object sdsConsEst: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT E.id_produto, E.id_cor, E.tamanho, '#13#10'cast(sum(E.QTD) AS F' +
      'loat) QTD, P.NOME NOME_PRODUTO, P.REFERENCIA,'#13#10'C.NOME NOME_COMBI' +
      'NACAO, SUM(coalesce(R.qtd,0)) QTD_RESERVA,'#13#10'case'#13#10'  when p.tipo_' +
      'reg = '#39'P'#39' then '#39'Produto'#39#13#10'  when p.tipo_reg = '#39'M'#39' then '#39'Material' +
      #39#13#10'  when p.tipo_reg = '#39'C'#39' then '#39'Mat.Consumo'#39#13#10'  when p.tipo_reg' +
      ' = '#39'S'#39' then '#39'Semi Acabado'#39#13#10'  when p.tipo_reg = '#39'I'#39' then '#39'Imobil' +
      'izado'#39#13#10'  else '#39#39#13#10'  end DESC_TIPO'#13#10'FROM ESTOQUE_ATUAL E'#13#10'INNER ' +
      'JOIN PRODUTO P'#13#10'ON E.ID_PRODUTO = P.id'#13#10'LEFT JOIN COMBINACAO C'#13#10 +
      'ON E.ID_COR = C.ID'#13#10'LEFT JOIN ESTOQUE_RES R'#13#10'ON E.FILIAL = R.fil' +
      'ial'#13#10'AND E.id_produto = R.ID_PRODUTO'#13#10'AND E.id_cor = R.ID_COR'#13#10'A' +
      'ND E.tamanho = R.TAMANHO'#13#10'GROUP BY E.id_produto, E.id_cor, E.tam' +
      'anho, E.num_lote_controle, P.NOME ,'#13#10'P.REFERENCIA, C.NOME, P.TIP' +
      'O_REG'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 195
    Top = 164
  end
  object dspConsEst: TDataSetProvider
    DataSet = sdsConsEst
    Left = 230
    Top = 163
  end
  object cdsConsEst: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsEst'
    OnCalcFields = cdsConsEstCalcFields
    Left = 269
    Top = 162
    object cdsConsEstID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsConsEstID_COR: TIntegerField
      FieldName = 'ID_COR'
      Required = True
    end
    object cdsConsEstTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object cdsConsEstNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsEstREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsEstNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsConsEstQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000##'
    end
    object cdsConsEstDESC_TIPO: TStringField
      FieldName = 'DESC_TIPO'
      Required = True
      FixedChar = True
      Size = 12
    end
    object cdsConsEstQTD_RESERVA: TFloatField
      FieldName = 'QTD_RESERVA'
      DisplayFormat = '0.000##'
    end
    object cdsConsEstclSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clSaldo'
      DisplayFormat = '0.000##'
      Calculated = True
    end
  end
  object dsConsEst: TDataSource
    DataSet = cdsConsEst
    Left = 309
    Top = 159
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select P.ID, P.REFERENCIA, P.NOME'
      'from produto p'
      'WHERE P.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 534
    Top = 209
    object qProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
end
