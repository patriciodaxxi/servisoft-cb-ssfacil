object frmRecebeXML_ConsNota: TfrmRecebeXML_ConsNota
  Left = 183
  Top = 71
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecionar as Notas Para Retorno Em Terceiro'
  ClientHeight = 569
  ClientWidth = 1045
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 46
    Width = 1045
    Height = 498
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = DMRecebeXML.dsNotaEntrada
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    WidthOfIndicator = 23
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 16
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMNOTA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Title.Color = 16769217
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Title.Color = 16769217
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Emiss'#227'o'
        Title.Color = 16769217
        Width = 71
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCFOP'
        Title.Alignment = taCenter
        Title.Caption = 'CFOP'
        Title.Color = 16769217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Id Produto'
        Title.Color = 16769217
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Color = 16769217
        Width = 121
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TAMANHO'
        Title.Alignment = taCenter
        Title.Caption = 'Tam'
        Title.Color = 16769217
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Title.Color = 16769217
        Width = 285
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_COR'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cor'
        Title.Color = 16769217
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. '
        Title.Color = 8454016
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDRESTANTE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pendente'
        Title.Color = 8454016
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit'#225'rio'
        Title.Color = 16769217
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ_CPF'
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ/CPF'
        Title.Color = 16769217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Id Fornecedor'
        Title.Color = 16769217
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Fornecedor'
        Title.Color = 16769217
        Width = 195
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 544
    Width = 1045
    Height = 25
    Align = alBottom
    Color = 16760704
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 11
      Width = 1043
      Height = 13
      Align = alBottom
      Caption = 'Duplo Clique para selecionar a OC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1045
    Height = 46
    Align = alTop
    Color = clSilver
    TabOrder = 2
    Visible = False
    object Label2: TLabel
      Left = 88
      Top = 8
      Width = 293
      Height = 20
      Caption = 'Fornecedor n'#227'o encontrado na base'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 386
      Top = 13
      Width = 262
      Height = 13
      Caption = '(Com isso o sistema n'#227'o vai encontrar a Nota)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
end
