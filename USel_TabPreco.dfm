object frmSel_TabPreco: TfrmSel_TabPreco
  Left = 179
  Top = 127
  BorderStyle = bsSingle
  Caption = 'Tabela de Pre'#231'o'
  ClientHeight = 446
  ClientWidth = 1093
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1093
    Height = 28
    Align = alTop
    Color = 16767152
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 71
      Height = 13
      Caption = 'Nome Produto:'
    end
    object Image1: TImage
      Left = 864
      Top = 5
      Width = 19
      Height = 14
      AutoSize = True
      Picture.Data = {
        07544269746D61707E030000424D7E0300000000000036000000280000001300
        00000E000000010018000000000048030000C40E0000C40E0000000000000000
        0000F6FBFEFCFEFDF8FBF9F7FDFDF8FDFEF8F8FAF8FCFAF5FDF9F9FAFDF8FDFE
        F3FCF3F7FCF3EFFEFBEDFFFFB9E2E5B3DFDFEEFFFFF8FCFAFBFCF9000000E1FC
        FAE3F8F9E7FCFEE2FCFEE0F8F7EDFBF8F1FBF8EFFFFBE8FCFEE0FAFDEAFEFEF5
        FEFEEEFFFFDDFAFEA2DBE195D5D8DAFFFFF1FFFFF9F9FE000000B1E3E56FB0BE
        6ABED568BCCF7AB3BEDCF1F4F3FDFFDBF8FD8EC5D475B3C19ACCD4DCFCFFA7D1
        D984B4C375C0CF6BC1CA7DC1C8B7E0EAE5FDFF000000D3FBFD83D0E544B7D94D
        BBD6AAE8F3E6FDFEE4FDFF99D4DF5EB8C76EC2CFABE8EEA6DADE73B0B3B3EAF0
        A1E4EE97DDE6A6E6E974B1B8B3EEF2000000F0FDFFB9F0FF54BEDA69CBE0D1FC
        FFEBFFFFB7ECEE6CC8D254B4C5AFF2F9DCFFFFA4D1D199D0D0DEFFFFB1E1E2AB
        DDDED6FFFF82C4C888DDE5000000F3FBFFBEECF75DC3D36CC8D8D6FDFFE6FFFF
        7DCBD84DB6CA8BD5E6E0FFFFF2FEFFD6E6E9CBE3E6EEFFFFB8E3E4A6E5E4B2F5
        F874C0D27DD9E9000000E2FDF7B8EFF859C3D86ED8E5E1FFFFADE3E277D3DE4A
        A9BFC1F5F8EDFDFFF9F7FFFAFEFFF1FDFFFBFFFFC2EDF36FB8CB81DFF554B1CB
        7ED3E6000000FEFEFEC1E9FA58C6E82CA8C34097A65BB3BB2FA6BD6DD0E5D3FF
        FFF5FFFDFFF8FAFCFBFDD6F0F374BDCA49A9C76CD2F445A4BF6EB8CCC8FEFF00
        0000FAFCFDC3EDFB55BFDA57C8DBB4F1F6BFF0F184DFE853B4C78ED0D7E5FFFB
        F7FFFADFF3F491C9D659BCCE4ABAD45ABAD49AD9E6D6FDFFE3FFFD000000F4FD
        FEBEECF85CC0D767CBDDD4FFFFEDFFFCCCFFFF79D5E55DB3C4C4EFF5ECFFFEC0
        EEF474C2D270C8D589DDEE98DDE8DDFFFFD3EBEDE8FDFA000000ECFFFDB7F0FC
        5CBFD96FC7DED6FFFFF3FEFCCBF9FD75D5E65CB2C8C0EAF2F0FFFFC4F0F357AB
        B5BDFFFFADE7EFA2DBE2CDFFFF9EC6CAD6F2F3000000DBFFFE94E1EC48BAD45E
        BDD8C1F9FFD5FCFD92D7E453B5C975BACEDEF7FCF7FCFFE9FFFF83C3C98ECCD0
        9CDCE991D8E490CFD783B3BBD1F0F30000009DC9D765B2C154BDCF5FB8CF7BBF
        D277BBC564B0BC7EC4D5CBF2FCF3FEFFFBFAF9F5FDFDDEFCFDA9DADD7CC1CC76
        BEC8A0D4DCCEEBF1EBFEFD000000D5F3FACDF8FBC7FBFDCEF9FDD0F6FABFF1F3
        CFF9F9E0FCFEEAFEFEEFFDFCF4FAFAF3FAF9F9FCFFEDFFFFAFE2E6A6DEE0E5FF
        FFF7FCFEF5FBFA000000}
      Transparent = True
      Visible = False
    end
    object Edit1: TEdit
      Left = 88
      Top = 4
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object BitBtn1: TBitBtn
      Left = 482
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object CheckBox1: TCheckBox
      Left = 608
      Top = 8
      Width = 257
      Height = 17
      Caption = 'Mostrar somente produto com tabela de pre'#231'o'
      TabOrder = 2
    end
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 429
    Width = 1093
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = 
      'Duplo Clique  ou   Enter para selecionar o produto       ESC= Fe' +
      'char tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 28
    Width = 1093
    Height = 401
    Align = alClient
    Ctl3D = False
    DataSource = dsTabPreco
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
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
    Groupings = <
      item
        Expression = 'FLAG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Color = 16771538
      end>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    OnExpression = SMDBGrid1Expression
    OnDrawGroupingCell = SMDBGrid1DrawGroupingCell
    WidthOfIndicator = 11
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_TABELA'
        Title.Alignment = taCenter
        Title.Caption = 'Tabela'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Courier New'
        Title.Font.Style = [fsBold]
        Width = 585
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_CUSTO'
        Title.Alignment = taCenter
        Title.Caption = '.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Courier New'
        Title.Font.Style = [fsBold]
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_VENDA'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Venda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Courier New'
        Title.Font.Style = [fsBold]
        Width = 130
        Visible = True
      end>
  end
  object sdsTabPreco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select PRO.ID, PRO.REFERENCIA, IT.VLR_VENDA, TAB.NOME NOME_TABEL' +
      'A, PRO.NOME NOME_PRODUTO, NULL as PRECO_CUSTO , 2 as Flag'#13#10'from ' +
      'PRODUTO PRO'#13#10'inner join TAB_PRECO_ITENS IT'#13#10'on PRO.ID = IT.ID_PR' +
      'ODUTO'#13#10'inner join TAB_PRECO TAB'#13#10'on IT.ID = TAB.ID'#13#10'where PRO.NO' +
      'ME  like '#39'%TES%'#39#13#10#13#10'union all'#13#10'select distinct PRO.ID, PRO.REFER' +
      'ENCIA, PRO.PRECO_VENDA,'#39#39' , PRO.NOME NOME_PRODUTO, PRO.PRECO_CUS' +
      'TO, 1 as Flag'#13#10'from PRODUTO PRO'#13#10'where PRO.NOME  like '#39'%TES%'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 656
    Top = 144
    object sdsTabPrecoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsTabPrecoVLR_VENDA: TFloatField
      FieldName = 'VLR_VENDA'
    end
    object sdsTabPrecoFLAG: TIntegerField
      FieldName = 'FLAG'
      Required = True
    end
    object sdsTabPrecoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTabPrecoNOME_TABELA: TStringField
      FieldName = 'NOME_TABELA'
      Size = 70
    end
    object sdsTabPrecoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsTabPrecoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
  end
  object dspTabPreco: TDataSetProvider
    DataSet = sdsTabPreco
    Left = 688
    Top = 144
  end
  object cdsTabPreco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'REFERENCIA;ID;FLAG;NOME_TABELA'
    Params = <>
    ProviderName = 'dspTabPreco'
    Left = 720
    Top = 144
    object cdsTabPrecoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsTabPrecoVLR_VENDA: TFloatField
      FieldName = 'VLR_VENDA'
      DisplayFormat = '0.00###'
    end
    object cdsTabPrecoFLAG: TIntegerField
      FieldName = 'FLAG'
      Required = True
    end
    object cdsTabPrecoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTabPrecoNOME_TABELA: TStringField
      FieldName = 'NOME_TABELA'
      Size = 70
    end
    object cdsTabPrecoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsTabPrecoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
  end
  object dsTabPreco: TDataSource
    DataSet = cdsTabPreco
    Left = 752
    Top = 144
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
      'SELECT ID, NOME, REFERENCIA'
      'FROM PRODUTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 664
    Top = 208
    object qProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
end
