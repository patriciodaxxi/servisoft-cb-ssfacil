object frmConsHist_Chapa: TfrmConsHist_Chapa
  Left = 140
  Top = 70
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsHist_Chapa'
  ClientHeight = 546
  ClientWidth = 1108
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
    Width = 1108
    Height = 51
    Align = alTop
    Color = 16777134
    TabOrder = 0
    object Label1: TLabel
      Left = 136
      Top = 12
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome:'
    end
    object Label2: TLabel
      Left = 132
      Top = 34
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Edit1: TEdit
      Left = 169
      Top = 4
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object btnConsultar: TBitBtn
      Left = 565
      Top = 23
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnConsultarClick
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 169
      Top = 26
      Width = 393
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dsCliente
      TabOrder = 1
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 51
    Width = 1108
    Height = 437
    Align = alClient
    Ctl3D = False
    DataSource = dsChapa
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
    ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 15
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Width = 78
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_PEDIDO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Pedido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPLEMENTO_NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 292
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_KG'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o KG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPRIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Comprimento (mm)'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LARGURA'
        Title.Alignment = taCenter
        Title.Caption = 'Largura (mm)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALTURA'
        Title.Alignment = taCenter
        Title.Caption = 'Espessura (mm)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESO'
        Title.Alignment = taCenter
        Title.Caption = 'Peso P'#199
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. P'#231
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_DOBRA'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Dobra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'ID Cliente'
        Width = 46
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 529
    Width = 1108
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = 'ESC= Fechar tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 488
    Width = 1108
    Height = 41
    Align = alBottom
    Color = 16777134
    TabOrder = 3
    object btnCopiar: TBitBtn
      Left = 6
      Top = 7
      Width = 300
      Height = 28
      Caption = 'Copiar os itens selecionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnCopiarClick
    end
  end
  object sdsChapa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT TP.vlr_kg, TP.comprimento, TP.largura, TP.altura,'#13#10'TP.qtd' +
      ', TP.vlr_unitario, TP.vlr_total, TP.vlr_dobra, TP.complemento_no' +
      'me,'#13#10'TP.peso, PED.dtemissao, PED.id_cliente, CLI.NOME NOME_CLIEN' +
      'TE, PED.num_pedido,'#13#10'PED.tipo_reg, tp.id id_pedido, tp.item item' +
      '_pedido'#13#10'FROM pedido_item_tipo tp'#13#10'LEFT JOIN PEDIDO PED'#13#10'ON TP.I' +
      'D = PED.ID'#13#10'INNER JOIN PESSOA CLI'#13#10'ON PED.ID_CLIENTE = CLI.codig' +
      'o'#13#10'WHERE TP.tipo_orcamento = '#39'C'#39#13#10'  AND PED.tipo_reg = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 168
  end
  object cdsChapa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COMPLEMENTO_NOME;DTEMISSAO'
    Params = <>
    ProviderName = 'dspChapa'
    Left = 304
    Top = 168
    object cdsChapaVLR_KG: TFloatField
      FieldName = 'VLR_KG'
    end
    object cdsChapaCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsChapaLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsChapaALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsChapaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsChapaVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsChapaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsChapaVLR_DOBRA: TFloatField
      FieldName = 'VLR_DOBRA'
    end
    object cdsChapaCOMPLEMENTO_NOME: TStringField
      FieldName = 'COMPLEMENTO_NOME'
      Size = 50
    end
    object cdsChapaPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsChapaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsChapaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsChapaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsChapaNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsChapaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsChapaID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsChapaITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
  end
  object dspChapa: TDataSetProvider
    DataSet = sdsChapa
    Left = 256
    Top = 168
  end
  object dsChapa: TDataSource
    DataSet = cdsChapa
    Left = 360
    Top = 168
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.codigo, P.nome, P.cnpj_cpf'#13#10'FROM PESSOA P'#13#10'WHERE P.tp_c' +
      'liente = '#39'S'#39#13#10'  AND P.inativo = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 208
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 256
    Top = 208
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 304
    Top = 208
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 360
    Top = 208
  end
end
