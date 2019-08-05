object frmAprovacao_Ped_Item: TfrmAprovacao_Ped_Item
  Left = 191
  Top = 58
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmAprovacao_Ped_Item'
  ClientHeight = 412
  ClientWidth = 1039
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
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 38
    Width = 1039
    Height = 247
    Align = alTop
    BorderColor = clBlack
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Itens do Pedidos '
    Ctl3D = True
    FlatColor = clBlack
    FlatColorAdjustment = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    GradientColorStop = clSilver
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    VisualStyle = vsGradient
    object SMDBGrid2: TSMDBGrid
      Left = 5
      Top = 18
      Width = 1029
      Height = 224
      Align = alClient
      Ctl3D = False
      DataSource = DMAprovacao_Ped.dsPedido_Item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = SMDBGrid2DblClick
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
      ExOptions = [eoBooleanAsCheckBox, eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      OnGetCellParams = SMDBGrid2GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 13
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 9
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ITEM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Title.Color = 16763025
          Width = 31
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'ID Produto'
          Title.Color = 16763025
          Width = 52
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'REFERENCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Color = 16763025
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nome Produto'
          Title.Color = 16763025
          Width = 409
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde.'
          Title.Color = 16763025
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'APROVADO_ITEM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Aprovado'
          Title.Color = 16763025
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_UNITARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Unit'#225'rio'
          Title.Color = 16763025
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Total'
          Title.Color = 16763025
          Width = 72
          Visible = True
        end>
    end
  end
  object RzGroupBox2: TRzGroupBox
    Left = 0
    Top = 285
    Width = 1039
    Height = 127
    Align = alTop
    BorderColor = clBlack
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Ctl3D = True
    FlatColor = clBtnFace
    FlatColorAdjustment = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    GradientColorStop = clSilver
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    VisualStyle = vsGradient
    object SMDBGrid1: TSMDBGrid
      Left = 5
      Top = 31
      Width = 1029
      Height = 91
      Align = alBottom
      Ctl3D = False
      DataSource = DMAprovacao_Ped.dsPedido_Item_Aprov
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
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
      ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 13
      DefaultRowHeight = 16
      ScrollBars = ssHorizontal
      ColCount = 8
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ITEM_APROV'
          Title.Alignment = taCenter
          Title.Caption = 'Item AProv.'
          Title.Color = 9240575
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Color = 9240575
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Usu'#225'rio'
          Title.Color = 9240575
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_FUNCIONARIO'
          Title.Alignment = taCenter
          Title.Caption = 'ID Funcion'#225'rio'
          Title.Color = 9240575
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FUNCIONARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Funcion'#225'rio'
          Title.Color = 9240575
          Width = 384
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DTUSUARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Color = 9240575
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'HRUSUARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Hora'
          Title.Color = 9240575
          Width = 85
          Visible = True
        end>
    end
    object NxButton1: TNxButton
      Left = 4
      Top = 6
      Width = 188
      Caption = 'Excluir Aprovado/Reprovado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = NxButton1Click
    end
    object btnAprovarTodos: TNxButton
      Left = 204
      Top = 6
      Width = 188
      Caption = 'Aprovar Selecionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnAprovarTodosClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1039
    Height = 38
    Align = alTop
    Color = clSilver
    TabOrder = 2
    object Shape5: TShape
      Left = 546
      Top = 14
      Width = 28
      Height = 15
      Brush.Color = 16777128
    end
    object Label1: TLabel
      Left = 581
      Top = 15
      Width = 55
      Height = 13
      Caption = 'Aprovado 1'
    end
    object Shape1: TShape
      Left = 686
      Top = 14
      Width = 28
      Height = 15
      Brush.Color = clMoneyGreen
    end
    object Label2: TLabel
      Left = 721
      Top = 15
      Width = 55
      Height = 13
      Caption = 'Aprovado 2'
    end
    object Shape7: TShape
      Left = 797
      Top = 13
      Width = 30
      Height = 16
      Brush.Color = 11184895
    end
    object Label32: TLabel
      Left = 829
      Top = 16
      Width = 69
      Height = 13
      Caption = 'N'#227'o Aprovado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape2: TShape
      Left = 909
      Top = 13
      Width = 30
      Height = 16
      Brush.Color = clRed
    end
    object Label3: TLabel
      Left = 941
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Cancelado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 7
      Top = 14
      Width = 234
      Height = 16
      Caption = 'Duplo Clique para Aprovar/Reprovar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
  end
end
