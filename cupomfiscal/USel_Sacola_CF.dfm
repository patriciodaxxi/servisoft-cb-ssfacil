object frmSel_Sacola_CF: TfrmSel_Sacola_CF
  Left = 222
  Top = 21
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_Sacola_CF'
  ClientHeight = 599
  ClientWidth = 931
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
    Width = 931
    Height = 57
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 17
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Sacola:'
    end
    object Label3: TLabel
      Left = 20
      Top = 38
      Width = 59
      Height = 13
      Caption = 'Qtd. Sacola:'
    end
    object Label4: TLabel
      Left = 334
      Top = 38
      Width = 54
      Height = 13
      Caption = 'Vlr. Sacola:'
    end
    object Label6: TLabel
      Left = 518
      Top = 38
      Width = 45
      Height = 13
      Caption = 'Vlr. Total:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 83
      Top = 10
      Width = 430
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dsProduto
      ParentCtl3D = False
      TabOrder = 0
      OnExit = RxDBLookupCombo1Exit
      OnKeyDown = RxDBLookupCombo1KeyDown
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 83
      Top = 30
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 1
      Value = 1.000000000000000000
      OnExit = CurrencyEdit1Exit
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 392
      Top = 30
      Width = 121
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 568
      Top = 30
      Width = 121
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 96
    Width = 931
    Height = 486
    Align = alClient
    Ctl3D = False
    DataSource = dsmConsumo
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnTitleClick = SMDBGrid1TitleClick
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
    ColCount = 9
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_Material'
        ReadOnly = True
        Title.Caption = 'ID Produto'
        Title.Color = 16777153
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Referencia'
        ReadOnly = True
        Title.Caption = 'Refer'#234'ncia'
        Title.Color = 16777153
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        ReadOnly = True
        Title.Color = 16777153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtd'
        Title.Caption = 'Qtd. Por Sacola'
        Title.Color = 16777153
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vlr_Unitario'
        ReadOnly = True
        Title.Color = 16777153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vlr_Unitario_Nota'
        Title.Caption = 'Vlr. Unit'#225'rio para gravar na nota'
        Title.Color = 16777153
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtd_Nota'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd para gravar na nota'
        Title.Color = 16777153
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vlr_Total'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total'
        Title.Color = 16777153
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 582
    Width = 931
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = ' Duplo Clique  para alterar o produto da Sacola'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 931
    Height = 39
    Align = alTop
    Color = clSilver
    TabOrder = 1
    object Label5: TLabel
      Left = 560
      Top = 16
      Width = 21
      Height = 13
      Caption = '0,00'
      Visible = False
    end
    object btnCopiar: TNxButton
      Left = 11
      Top = 5
      Width = 254
      Height = 30
      Caption = 'Copiar Produtos para a Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF3F9F4C6CEC7799D7C4D7B4D235C241C561C225E
        224B7B507B9C7CC6CEC7F4F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95A996456A443E663E29682B306B30
        3871373B713A386C3731643129642B3D663D456C4494AA97FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFEFFFFFFFFFFFFFF4E794D2A602A4F844F0F
        5E0F055A08005001015004014E03004B01004700054C050E4C0E4D774F2B622A
        4C7A4EFFFFFFFFFFFFFEFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4868483F6E
        402F7B30005400045C07075A0B06590906550907550A075309064F08034C0601
        4B03003D002E64303F6C4349694DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        4D7A4E3E6B3F207723005B0208610E075F0B065B0900560105570907550A0854
        0B085109054F07064C07034C080042001E5B1D3D6B414D7B4FFFFFFFFFFFFF00
        0000FFFFFF97AA992A6028308833006400076809076508056308005600397739
        04550500550505560707540B065309065008044D06034D050042002F65312860
        2898AA99FFFFFF000000F5F9F64266464F9051006100066B0C07690A07670A00
        54004B854CFFFFFFA6C1A6004D0000550306550908530A075209065007044C05
        044B09003E004E7850456D46F6F9F6000000C6CEC63F6640107C12056D09066C
        0A056A0A0059003C7F3BFFFFFFFFFFFFFFFFFFABC6AD004D0203550605550908
        550B065209054F07044C06014C040D4C0F3B643CC6CFC600000079997A37823A
        2183260F761407720E005E00559256FFFFFFFFFFFFFEFEFEFEFFFEFFFFFFBED2
        C0004A0002540506560806540907530A064F08034D05054C062A632B7DA08000
        00004A7B4D4C954F29892F218426006500639E66FFFFFFFFFFFFFEFEFFFFFFFF
        FFFFFFFFFEFFFFFFFFA6C1A8004B0002550506550907540A085209054F080047
        002E6330517E52000000245E2767AE6D39964028872D79B37DFFFFFFF7F9F9F9
        FCFAFFFFFFD2DFD1FCFEFDFFFFFFFFFFFFFFFFFFBED2C0014E02005503055608
        07540A075309004C01376C3427612A0000001F562078BA80479F4D449948DFEF
        DFF6FBF8F0F4EDFFFFFFB4CFB5004F00639663FFFFFFFFFFFFFEFEFFFFFFFFAD
        C6B0014D0200550207540A07540A014E033970371B561C000000275E2782BF87
        5DAA604DA0533D9141F1FAF0FFFFFFBAD4B8005B00006A04005A00689967FFFF
        FFFFFFFFFEFFFFFFFFFFA9C4AC004B00015605065509014F0436723529602900
        000048764A7DB18171B87565B16957A55A519E56A2CCA4248729177A20016D06
        056E0A005400568C55FFFFFFFFFFFFFFFFFEFFFFFFC0D6C30048000055040052
        022E6C2E517D530000007494746B9F6F89C88B75B7776BB26F5BA85F45994C4E
        9C51429748258227006604006E090056006E9C6DFFFFFFFFFFFFFEFEFFFFFFFF
        B3C9B4145F150157062A682D7B9F80000000C4CCC4476C46A0D3A382C3887EBC
        8072B67569AE6B5DA76153A2554E9D52358F3A0B7110006C030055005B8E59FF
        FFFFFFFFFFFFFFFFAEC9B00053000D600F3E653EC6CFC6000000F6FBF72E572F
        B5CFB495CC9B8FC69183BF8779B97C6EB17263AA675AA45D519E5446984E2885
        2D0C7413005100639261FFFFFFB6D0B50044000051004D8452456A45F6FBF700
        0000FFFFFF9BAA9A1F571FDBF9DD99CC9C92C79789C28A7DB98271B37868AD6B
        5CA661549F5B4C9A503F8F422F89350D6D143A8537006208005900338035295C
        299BAE9AFFFFFF000000FEFFFFFFFFFF45744B507850D2F0D2A1D0A798CC9D91
        C79384C0887CBA8070B27466AD685CA460519C5546954B3F8F432B83321E7922
        36873B3E6C3E4E7C51FFFFFFFFFEFF000000FFFFFFFFFFFFFFFFFF4160404F77
        4FE9FFEAAAD7AE9FCEA093C7988AC28D81BA8376B5786CAD6F60A664569D5A49
        984D32893961A8653B6C3C476848FFFFFFFFFFFFFFFFFF000000FFFFFFFFFEFF
        FFFFFFFFFFFF45744A20561EC3D8C3C0E5C3B1DDB69ED0A493C69587BF8A7EBA
        7F71B37570B37564AB6B81AE822259234F7A4FFFFFFFFFFFFFFFFFFEFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BAB9B29552C466B4985AA849EC5A0
        B2D5B5B0D8B5A0CCA482B2856295644169433B5D3C99AE9BFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCF6C3
        CBC3719270447545255F24225624245E28457649739575C5CDC5F6FBF7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = btnCopiarClick
    end
    object BitBtn1: TBitBtn
      Left = 464
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Recalcular'
      TabOrder = 1
      Visible = False
      OnClick = BitBtn1Click
    end
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PRO.ID, PRO.NOME, PRO.REFERENCIA, PRO.PRECO_VENDA, PRO.UN' +
      'IDADE,'#13#10'PRO.PRECO_CUSTO'#13#10'FROM PRODUTO PRO'#13#10'WHERE PRO.INATIVO = '#39 +
      'N'#39#13#10'  AND PRO.tipo_reg = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 200
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME;ID'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 304
    Top = 200
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 256
    Top = 200
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 344
    Top = 200
  end
  object sdsProduto_Consumo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.id, c.item, c.id_material, c.qtd_consumo, c.unidade, MA' +
      'T.nome NOME_MAT, MAT.REFERENCIA REFERENCIA_MAT,'#13#10'MAT.preco_venda' +
      ', c.qtd_consumo * mat.preco_venda Preco_Calculado'#13#10'FROM PRODUTO_' +
      'CONSUMO C'#13#10'INNER JOIN PRODUTO MAT'#13#10'ON C.id_material = MAT.id'#13#10'WH' +
      'ERE C.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 240
  end
  object dspProduto_Consumo: TDataSetProvider
    DataSet = sdsProduto_Consumo
    Left = 256
    Top = 240
  end
  object cdsProduto_Consumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Consumo'
    Left = 304
    Top = 240
    object cdsProduto_ConsumoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_ConsumoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_ConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsProduto_ConsumoQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsProduto_ConsumoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_ConsumoNOME_MAT: TStringField
      FieldName = 'NOME_MAT'
      Size = 100
    end
    object cdsProduto_ConsumoREFERENCIA_MAT: TStringField
      FieldName = 'REFERENCIA_MAT'
    end
    object cdsProduto_ConsumoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProduto_ConsumoPRECO_CALCULADO: TFloatField
      FieldName = 'PRECO_CALCULADO'
    end
  end
  object dsProduto_Consumo: TDataSource
    DataSet = cdsProduto_Consumo
    Left = 344
    Top = 240
  end
  object mConsumo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Material'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Unitario'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Unitario_Nota'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Nota'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 488
    Top = 272
    Data = {
      C40000009619E0BD010000001800000008000000000003000000C4000B49445F
      4D6174657269616C04000100000000000A5265666572656E6369610100490000
      000100055749445448020002001400044E6F6D65010049000000010005574944
      5448020002003C000351746408000400000000000C566C725F556E6974617269
      6F080004000000000009566C725F546F74616C080004000000000011566C725F
      556E69746172696F5F4E6F74610800040000000000085174645F4E6F74610800
      0400000000000000}
    object mConsumoID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mConsumoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mConsumoNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object mConsumoQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mConsumoVlr_Unitario: TFloatField
      FieldName = 'Vlr_Unitario'
    end
    object mConsumoVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
    end
    object mConsumoVlr_Unitario_Nota: TFloatField
      FieldName = 'Vlr_Unitario_Nota'
    end
    object mConsumoQtd_Nota: TFloatField
      FieldName = 'Qtd_Nota'
    end
  end
  object dsmConsumo: TDataSource
    DataSet = mConsumo
    Left = 520
    Top = 272
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 656
    Top = 224
  end
  object qMaterial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, PRECO_VENDA, REFERENCIA, NOME'
      'FROM PRODUTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 672
    Top = 352
    object qMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qMaterialPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
end
