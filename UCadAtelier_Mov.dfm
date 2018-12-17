object frmCadAtelier_Mov: TfrmCadAtelier_Mov
  Left = 225
  Top = 56
  Width = 871
  Height = 623
  Caption = 'Pagamento Atelier'
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
    Width = 863
    Height = 592
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
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 108
        Width = 859
        Height = 444
        Align = alClient
        Ctl3D = True
        DataSource = DMCadAtelier_Mov.dsAtelier_Mov
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 11
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_MOV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_REFERENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_MOV'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_ATELIER'
            Width = 236
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CONTA'
            Width = 176
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FILIAL'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_FINANCEIRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CONTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_ATELIER'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 76
        Width = 859
        Height = 32
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object btnInserir: TBitBtn
          Left = 4
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Inserir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnInserirClick
        end
        object btnExcluir: TBitBtn
          Left = 79
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = False
          OnClick = btnExcluirClick
        end
      end
      object StaticText1: TStaticText
        Left = 0
        Top = 552
        Width = 859
        Height = 17
        Align = alBottom
        BorderStyle = sbsSunken
        Caption = 'Duplo clique para consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16384
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 859
        Height = 76
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 88
          Top = 16
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = 'Atelier:'
        end
        object Label3: TLabel
          Left = 14
          Top = 38
          Width = 106
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt.Lan'#231'amento Inicial:'
        end
        object Label16: TLabel
          Left = 231
          Top = 38
          Width = 25
          Height = 13
          Caption = 'Final:'
        end
        object Label19: TLabel
          Left = 21
          Top = 60
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt.Refer'#234'ncia Inicial:'
        end
        object Label23: TLabel
          Left = 231
          Top = 60
          Width = 25
          Height = 13
          Caption = 'Final:'
        end
        object btnConsultar: TBitBtn
          Left = 360
          Top = 46
          Width = 75
          Height = 25
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnConsultarClick
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 122
          Top = 8
          Width = 361
          Height = 21
          DropDownCount = 8
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME'
          LookupSource = DMCadAtelier_Mov.dsAtelier
          TabOrder = 1
        end
        object DateEdit1: TDateEdit
          Left = 122
          Top = 30
          Width = 100
          Height = 21
          NumGlyphs = 2
          StartOfWeek = Sun
          TabOrder = 2
        end
        object DateEdit2: TDateEdit
          Left = 259
          Top = 30
          Width = 100
          Height = 21
          NumGlyphs = 2
          StartOfWeek = Sun
          TabOrder = 3
        end
        object DateEdit3: TDateEdit
          Left = 122
          Top = 52
          Width = 100
          Height = 21
          NumGlyphs = 2
          StartOfWeek = Sun
          TabOrder = 4
        end
        object DateEdit4: TDateEdit
          Left = 259
          Top = 52
          Width = 100
          Height = 21
          NumGlyphs = 2
          StartOfWeek = Sun
          TabOrder = 5
        end
      end
    end
    object TS_Cadastro: TRzTabSheet
      Caption = 'Cadastro'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 859
        Height = 35
        Align = alTop
        Color = 8404992
        TabOrder = 1
        object btnConfirmar: TBitBtn
          Left = 80
          Top = 5
          Width = 75
          Height = 25
          Caption = '&Confirmar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnConfirmarClick
        end
        object btnCancelar: TBitBtn
          Left = 155
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Ca&ncelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnCancelarClick
        end
        object btnAlterar: TBitBtn
          Left = 5
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Alterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnAlterarClick
        end
      end
      object pnlCadastro: TPanel
        Left = 0
        Top = 35
        Width = 859
        Height = 534
        Align = alClient
        Enabled = False
        TabOrder = 0
        object Label8: TLabel
          Left = 616
          Top = 11
          Width = 14
          Height = 13
          Alignment = taRightJustify
          Caption = 'ID:'
        end
        object Label31: TLabel
          Left = 83
          Top = 11
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = 'Atelier:'
        end
        object Label32: TLabel
          Left = 89
          Top = 75
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor:'
        end
        object Label1: TLabel
          Left = 27
          Top = 32
          Width = 88
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Lan'#231'amento:'
        end
        object Label2: TLabel
          Left = 34
          Top = 53
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Refer'#234'ncia:'
        end
        object Label4: TLabel
          Left = 84
          Top = 99
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta:'
        end
        object Label5: TLabel
          Left = 93
          Top = 147
          Width = 22
          Height = 13
          Alignment = taRightJustify
          Caption = 'Obs:'
        end
        object Label7: TLabel
          Left = 92
          Top = 122
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Filial:'
        end
        object DBEdit4: TDBEdit
          Left = 632
          Top = 3
          Width = 113
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'ID'
          DataSource = DMCadAtelier_Mov.dsAtelier_Mov
          ReadOnly = True
          TabOrder = 7
        end
        object RxDBLookupCombo5: TRxDBLookupCombo
          Left = 117
          Top = 2
          Width = 324
          Height = 21
          DropDownCount = 8
          DropDownWidth = 500
          DataField = 'ID_ATELIER'
          DataSource = DMCadAtelier_Mov.dsAtelier_Mov
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME'
          LookupSource = DMCadAtelier_Mov.dsAtelier
          TabOrder = 0
        end
        object DBEdit20: TDBEdit
          Left = 116
          Top = 67
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VLR_MOV'
          DataSource = DMCadAtelier_Mov.dsAtelier_Mov
          TabOrder = 3
        end
        object DBDateEdit1: TDBDateEdit
          Left = 117
          Top = 24
          Width = 121
          Height = 21
          DataField = 'DT_MOV'
          DataSource = DMCadAtelier_Mov.dsAtelier_Mov
          NumGlyphs = 2
          TabOrder = 1
        end
        object DBDateEdit2: TDBDateEdit
          Left = 117
          Top = 45
          Width = 121
          Height = 21
          DataField = 'DT_REFERENCIA'
          DataSource = DMCadAtelier_Mov.dsAtelier_Mov
          NumGlyphs = 2
          TabOrder = 2
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 117
          Top = 90
          Width = 324
          Height = 21
          DropDownCount = 8
          DropDownWidth = 500
          DataField = 'ID_CONTA'
          DataSource = DMCadAtelier_Mov.dsAtelier_Mov
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMCadAtelier_Mov.dsContas
          TabOrder = 4
        end
        object DBMemo1: TDBMemo
          Left = 117
          Top = 148
          Width = 625
          Height = 265
          DataField = 'OBS'
          DataSource = DMCadAtelier_Mov.dsAtelier_Mov
          ScrollBars = ssVertical
          TabOrder = 6
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 117
          Top = 113
          Width = 324
          Height = 21
          DropDownCount = 8
          DropDownWidth = 500
          DataField = 'FILIAL'
          DataSource = DMCadAtelier_Mov.dsAtelier_Mov
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMCadAtelier_Mov.dsFilial
          TabOrder = 5
        end
      end
    end
  end
end
