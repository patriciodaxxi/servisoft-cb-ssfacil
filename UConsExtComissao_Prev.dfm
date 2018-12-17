object frmConsExtComissao_Prev: TfrmConsExtComissao_Prev
  Left = 169
  Top = 6
  Width = 1046
  Height = 718
  Caption = 'Consulta Previs'#227'o Comiss'#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 1030
    Height = 680
    ActivePage = TS_Consulta
    ActivePageDefault = TS_Consulta
    Align = alClient
    BackgroundColor = clSilver
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TS_Consulta: TRzTabSheet
      Caption = 'Consulta'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1026
        Height = 77
        Align = alTop
        TabOrder = 0
        object Label15: TLabel
          Left = 70
          Top = 11
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Filial:'
        end
        object Label18: TLabel
          Left = 37
          Top = 57
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Inicial:'
        end
        object Label26: TLabel
          Left = 201
          Top = 57
          Width = 25
          Height = 13
          Caption = 'Final:'
        end
        object Label3: TLabel
          Left = 44
          Top = 33
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vendedor:'
        end
        object btnConsultar: TBitBtn
          Left = 329
          Top = 43
          Width = 75
          Height = 25
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btnConsultarClick
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 95
          Top = 5
          Width = 234
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME_INTERNO'
          LookupSource = DMCadExtComissao.dsFilial
          TabOrder = 0
          OnChange = RxDBLookupCombo1Change
        end
        object DateEdit1: TDateEdit
          Left = 95
          Top = 49
          Width = 100
          Height = 21
          NumGlyphs = 2
          StartOfWeek = Sun
          TabOrder = 2
        end
        object DateEdit2: TDateEdit
          Left = 229
          Top = 49
          Width = 100
          Height = 21
          NumGlyphs = 2
          StartOfWeek = Sun
          TabOrder = 3
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 95
          Top = 27
          Width = 234
          Height = 21
          DropDownCount = 8
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME'
          LookupSource = DMCadExtComissao.dsVendedor
          TabOrder = 1
        end
        object RzGroupBox1: TRzGroupBox
          Left = 608
          Top = 3
          Width = 217
          Height = 70
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' Valores Totais  do Per'#237'odo '
          Color = clSilver
          Ctl3D = True
          FlatColor = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          VisualStyle = vsGradient
          object Label14: TLabel
            Left = 39
            Top = 52
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'Saldo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblSaldo: TLabel
            Left = 85
            Top = 52
            Width = 97
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 17
            Top = 17
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = 'Duplicata:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblDuplicata: TLabel
            Left = 85
            Top = 17
            Width = 97
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 32
            Top = 33
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Pedido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPedido: TLabel
            Left = 85
            Top = 33
            Width = 97
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RzPageControl2: TRzPageControl
        Left = 0
        Top = 77
        Width = 1026
        Height = 580
        ActivePage = TS_Resumido
        ActivePageDefault = TS_Resumido
        Align = alClient
        TabIndex = 0
        TabOrder = 1
        OnChange = RzPageControl2Change
        FixedDimension = 19
        object TS_Resumido: TRzTabSheet
          Caption = 'Resumido'
          object SMDBGrid1: TSMDBGrid
            Left = 0
            Top = 32
            Width = 1022
            Height = 508
            Align = alClient
            Ctl3D = True
            DataSource = DMCadExtComissao.dsmExtComissao_Red
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
            OnTitleClick = SMDBGrid1TitleClick
            Flat = False
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
            ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
            OnGetCellParams = SMDBGrid1GetCellParams
            RegistryKey = 'Software\Scalabium'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 27
            DefaultRowHeight = 17
            ScrollBars = ssHorizontal
            ColCount = 8
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'NomeVendedor'
                Title.Caption = 'Nome Vendedor'
                Width = 335
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Base_Comissao'
                Title.Caption = 'Base Previs'#227'o Comiss'#227'o'
                Width = 87
                Visible = True
              end
              item
                Color = clMoneyGreen
                Expanded = False
                FieldName = 'Vlr_Comissao'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Previs'#227'o Comiss'#227'o'
                Title.Color = clMoneyGreen
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Base_Previsao_Dup'
                Title.Alignment = taCenter
                Title.Caption = 'Base Previs'#227'o Duplicata'
                Width = 109
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Vlr_Previsao_Dup'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Previs'#227'o Comiss'#227'o (Duplicatas)'
                Width = 127
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Base_Previsao_Ped'
                Title.Alignment = taCenter
                Title.Caption = 'Base Previs'#227'o Pedidos'
                Width = 104
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Vlr_Previsao_Ped'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Previs'#227'o Comiss'#227'o (Pedidos)'
                Width = 122
                Visible = True
              end>
          end
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 1022
            Height = 32
            Align = alTop
            Color = clSilver
            TabOrder = 1
            object BitBtn2: TBitBtn
              Left = 11
              Top = 5
              Width = 91
              Height = 25
              Caption = 'Imprimir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = BitBtn2Click
            end
            object CheckBox1: TCheckBox
              Left = 104
              Top = 8
              Width = 217
              Height = 17
              Caption = 'Imprimir as notas/pedidos'
              TabOrder = 1
              OnClick = CheckBox1Click
            end
            object CheckBox2: TCheckBox
              Left = 336
              Top = 7
              Width = 185
              Height = 17
              Caption = 'Separar Vendedor por p'#225'gina'
              TabOrder = 2
              Visible = False
            end
          end
          object StaticText1: TStaticText
            Left = 0
            Top = 540
            Width = 1022
            Height = 17
            Align = alBottom
            BorderStyle = sbsSunken
            Caption = 'Duplo clique para consultar detalhado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16384
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
        object TS_Detalhado: TRzTabSheet
          Caption = 'Detalhado'
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 1022
            Height = 29
            Align = alTop
            Color = clSilver
            TabOrder = 0
            object Label1: TLabel
              Left = 16
              Top = 8
              Width = 49
              Height = 13
              Caption = 'Vendedor:'
            end
            object DBText1: TDBText
              Left = 70
              Top = 6
              Width = 419
              Height = 15
              DataField = 'NomeVendedor'
              DataSource = DMCadExtComissao.dsmExtComissao_Red
            end
          end
          object gbxDuplicatas: TRzGroupBox
            Left = 0
            Top = 321
            Width = 1022
            Height = 236
            Align = alClient
            BorderColor = 8453888
            BorderInner = fsButtonUp
            BorderOuter = fsBump
            Caption = ' Pedidos '
            Ctl3D = True
            FlatColor = 10485760
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            VisualStyle = vsGradient
            object SMDBGrid2: TSMDBGrid
              Left = 5
              Top = 18
              Width = 1012
              Height = 213
              Align = alClient
              Ctl3D = False
              DataSource = DMCadExtComissao.dsmPrevPedido
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 10485760
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = 10485760
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
              GridStyle.Style = gsSoftYellowGreen
              GridStyle.OddColor = 15138815
              GridStyle.EvenColor = 14477784
              TitleHeight.PixelCount = 24
              FooterColor = clBtnFace
              ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
              RegistryKey = 'Software\Scalabium'
              RegistrySection = 'SMDBGrid'
              WidthOfIndicator = 11
              DefaultRowHeight = 16
              ScrollBars = ssHorizontal
              ColCount = 6
              RowCount = 2
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Filial'
                  Width = 46
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Num_Pedido'
                  Title.Alignment = taCenter
                  Title.Caption = 'N'#186' Pedido'
                  Width = 89
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Nome_Cliente'
                  Width = 287
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Vlr_Base_Comissao'
                  Title.Caption = 'Vlr. Base Comiss'#227'o'
                  Width = 121
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Vlr_Comissao'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr. Comiss'#227'o'
                  Width = 112
                  Visible = True
                end>
            end
          end
          object RzGroupBox2: TRzGroupBox
            Left = 0
            Top = 29
            Width = 1022
            Height = 292
            Align = alTop
            BorderColor = clNavy
            BorderInner = fsButtonUp
            BorderOuter = fsBump
            Caption = ' Duplicatas '
            Ctl3D = True
            FlatColor = clNavy
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            VisualStyle = vsGradient
            object SMDBGrid3: TSMDBGrid
              Left = 5
              Top = 18
              Width = 1012
              Height = 269
              Align = alClient
              Ctl3D = False
              DataSource = DMCadExtComissao.dsPrevisao
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clNavy
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
              GridStyle.OddColor = 16774361
              GridStyle.EvenColor = 16768959
              TitleHeight.PixelCount = 24
              FooterColor = clBtnFace
              ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
              RegistryKey = 'Software\Scalabium'
              RegistrySection = 'SMDBGrid'
              WidthOfIndicator = 11
              DefaultRowHeight = 16
              ScrollBars = ssHorizontal
              ColCount = 12
              RowCount = 2
              Columns = <
                item
                  Expanded = False
                  FieldName = 'FILIAL'
                  Width = 38
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SERIE'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NUMDUPLICATA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PARCELA'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DTVENCIMENTO'
                  Width = 88
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLR_RESTANTE'
                  Title.Caption = 'Vlr. Duplicata'
                  Width = 88
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PERC_BASE_COMISSAO'
                  Title.Alignment = taCenter
                  Title.Caption = '% Base Comiss'#227'o'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLR_BASE_COMISSAO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr. Base Comiss'#227'o'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PERC_COMISSAO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Vlr_Comissao'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr. Comiss'#227'o'
                  Width = 82
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME_CLIENTE'
                  Width = 64
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
end
