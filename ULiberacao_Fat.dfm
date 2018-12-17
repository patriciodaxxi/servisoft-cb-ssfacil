object frmLiberacao_Fat: TfrmLiberacao_Fat
  Left = 189
  Top = 81
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Confer'#234'ncia e Libera'#231#227'o do Pedido para Faturamento'
  ClientHeight = 564
  ClientWidth = 1049
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
  object gbxVendedor: TRzGroupBox
    Left = 0
    Top = 0
    Width = 1049
    Height = 200
    Align = alTop
    BorderColor = clNavy
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Itens do Pedido Selecionado '
    Ctl3D = True
    FlatColor = clNavy
    FlatColorAdjustment = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    VisualStyle = vsGradient
    object SMDBGrid2: TSMDBGrid
      Left = 5
      Top = 54
      Width = 1039
      Height = 141
      Align = alClient
      Color = clBtnFace
      Ctl3D = False
      DataSource = DMConferencia.dsPedido_Item
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = SMDBGrid2DblClick
      OnEnter = SMDBGrid2Enter
      OnKeyDown = SMDBGrid2KeyDown
      Flat = True
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'MS Sans Serif'
      BandsFont.Style = []
      Groupings = <>
      GridStyle.Style = gsCustom
      GridStyle.OddColor = clBtnFace
      GridStyle.EvenColor = clBtnFace
      GridStyle.Bands.StartColor = clBtnFace
      GridStyle.Footer.StartColor = clBtnFace
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoTitleWordWrap]
      OnGetCellParams = SMDBGrid2GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 16
      ScrollBars = ssHorizontal
      ColCount = 10
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ITEM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'ID Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nome Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 269
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Qtde.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD_FATURADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Qtde. Fat.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD_RESTANTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Pend.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD_LIBERADA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Qtd. J'#225' Liberada'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD_CONFERIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Conferida'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 76
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 5
      Top = 18
      Width = 1039
      Height = 36
      Align = alTop
      Color = clSilver
      TabOrder = 1
      object Label13: TLabel
        Left = 288
        Top = 16
        Width = 62
        Height = 13
        Caption = 'N'#186' Pedido:'
      end
      object Label14: TLabel
        Left = 350
        Top = 16
        Width = 8
        Height = 13
        Caption = '0'
      end
      object NxButton1: TNxButton
        Left = 4
        Top = 3
        Width = 180
        Height = 30
        Caption = 'F4  Cons. Pedido'
        Down = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 0
        Transparent = True
        OnClick = NxButton1Click
      end
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 200
    Width = 1049
    Height = 364
    ActivePage = TabSheet2
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 1
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Anterior'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1045
        Height = 96
        Align = alTop
        Color = 13565902
        TabOrder = 0
        OnExit = Panel3Exit
        object Label5: TLabel
          Left = 208
          Top = 40
          Width = 50
          Height = 13
          Caption = 'C'#243'd.Barra:'
          Enabled = False
        end
        object edtCBarra: TEdit
          Left = 261
          Top = 34
          Width = 150
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = edtCBarraKeyDown
        end
        object btnConfBaixa: TNxButton
          Left = 876
          Top = 29
          Width = 165
          Height = 30
          Caption = 'Conf. Embalagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 1
          Transparent = True
          OnClick = btnConfBaixaClick
        end
        object Panel4: TPanel
          Left = 544
          Top = 4
          Width = 185
          Height = 87
          Color = clSilver
          TabOrder = 2
          object Label3: TLabel
            Left = 48
            Top = 2
            Width = 90
            Height = 19
            Caption = 'Embalagem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 45
            Top = 28
            Width = 30
            Height = 18
            Alignment = taRightJustify
            Caption = 'Qtd:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 9
            Top = 48
            Width = 66
            Height = 18
            Alignment = taRightJustify
            Caption = 'Peso Liq:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 5
            Top = 68
            Width = 70
            Height = 18
            Alignment = taRightJustify
            Caption = 'Peso Bru:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 80
            Top = 28
            Width = 95
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Caption = '0'
            Color = 14737632
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label11: TLabel
            Left = 80
            Top = 48
            Width = 95
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0'
            Color = 14737632
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label12: TLabel
            Left = 80
            Top = 68
            Width = 95
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0'
            Color = 14737632
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object btnEtiqueta: TNxButton
          Left = 876
          Top = 59
          Width = 165
          Height = 30
          Caption = 'Etiqueta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 3
          Transparent = True
          OnClick = btnEtiquetaClick
        end
      end
      object RzGroupBox1: TRzGroupBox
        Left = 0
        Top = 96
        Width = 1045
        Height = 245
        Align = alClient
        BorderColor = clRed
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' Confer'#234'ncia '
        Ctl3D = True
        FlatColor = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        VisualStyle = vsGradient
        object Splitter1: TSplitter
          Left = 449
          Top = 18
          Width = 17
          Height = 181
          Color = clGray
          ParentColor = False
        end
        object SMDBGrid1: TSMDBGrid
          Left = 466
          Top = 18
          Width = 574
          Height = 181
          Align = alClient
          Color = clBtnFace
          Ctl3D = False
          DataSource = DMConferencia.dsConferencia_Ped
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clRed
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
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
          ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 20
          ScrollBars = ssHorizontal
          ColCount = 9
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEM_REG'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Item'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 35
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'clNum_Pedido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Pedido'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ITEM_PEDIDO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'It. Ped'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'clReferencia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clCodBarra'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. Barra'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Qtd.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESO_LIQ'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Peso L'#237'q.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESO_BRU'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Peso Bru'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 5
          Top = 199
          Width = 1035
          Height = 41
          Align = alBottom
          Color = clSilver
          TabOrder = 1
          object Label1: TLabel
            Left = 64
            Top = 6
            Width = 14
            Height = 13
            Alignment = taRightJustify
            Caption = 'ID:'
          end
          object DBText1: TDBText
            Left = 83
            Top = 5
            Width = 78
            Height = 14
            Alignment = taCenter
            Color = 15329769
            DataField = 'ID'
            DataSource = DMConferencia.dsConferencia
            ParentColor = False
          end
          object Label2: TLabel
            Left = 15
            Top = 21
            Width = 63
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt/Hr. In'#237'cio:'
          end
          object DBText2: TDBText
            Left = 83
            Top = 20
            Width = 78
            Height = 14
            Alignment = taCenter
            Color = 15329769
            DataField = 'DTINICIO'
            DataSource = DMConferencia.dsConferencia
            ParentColor = False
          end
          object DBText3: TDBText
            Left = 163
            Top = 20
            Width = 71
            Height = 14
            Alignment = taCenter
            Color = 15329769
            DataField = 'HRINICIO'
            DataSource = DMConferencia.dsConferencia
            ParentColor = False
          end
          object Label8: TLabel
            Left = 239
            Top = 6
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Peso Liq:'
          end
          object DBText7: TDBText
            Left = 286
            Top = 5
            Width = 86
            Height = 14
            Alignment = taRightJustify
            Color = 14671839
            DataField = 'PESO_LIQ'
            DataSource = DMConferencia.dsConferencia
            ParentColor = False
          end
          object Label9: TLabel
            Left = 237
            Top = 21
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Peso Bru:'
          end
          object DBText8: TDBText
            Left = 286
            Top = 20
            Width = 86
            Height = 14
            Alignment = taRightJustify
            Color = 14671839
            DataField = 'PESO_BRU'
            DataSource = DMConferencia.dsConferencia_Ped
            ParentColor = False
          end
          object Label15: TLabel
            Left = 378
            Top = 6
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Encerrado:'
          end
          object DBText4: TDBText
            Left = 435
            Top = 5
            Width = 30
            Height = 14
            Alignment = taCenter
            Color = 15329769
            DataField = 'ENCERRADO'
            DataSource = DMConferencia.dsConferencia
            ParentColor = False
          end
          object NxButton2: TNxButton
            Left = 532
            Top = 3
            Width = 165
            Height = 30
            Caption = 'Conf. Confer'#234'ncia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            GlyphSpacing = 5
            ParentFont = False
            TabOrder = 0
            Transparent = True
            OnClick = NxButton2Click
          end
          object NxButton3: TNxButton
            Left = 698
            Top = 3
            Width = 165
            Height = 30
            Caption = 'Consulta Confer.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            GlyphSpacing = 5
            ParentFont = False
            TabOrder = 1
            Transparent = True
            OnClick = NxButton3Click
          end
        end
        object SMDBGrid3: TSMDBGrid
          Left = 5
          Top = 18
          Width = 444
          Height = 181
          Align = alLeft
          Color = clBtnFace
          Ctl3D = False
          DataSource = DMConferencia.dsConferencia_Itens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clRed
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
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
          WidthOfIndicator = 12
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 7
          RowCount = 2
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ITEM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Item'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Qtd.'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESO_LIQ'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Peso L'#237'q.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESO_BRU'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Peso Bru'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENCERRADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Encerrado'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ETIQUETA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Etiq.'
              Width = 51
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Novo'
    end
  end
end
