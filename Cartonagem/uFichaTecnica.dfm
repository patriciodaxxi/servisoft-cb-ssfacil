object fFichaTecnica: TfFichaTecnica
  Left = 165
  Top = 43
  Width = 948
  Height = 700
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fFichaTecnica'
  Color = clBtnFace
  Constraints.MinHeight = 700
  Constraints.MinWidth = 948
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 932
    Height = 30
    Align = alTop
    Color = clTeal
    TabOrder = 1
    object DBText2: TDBText
      Left = 862
      Top = 7
      Width = 65
      Height = 17
      Alignment = taRightJustify
      Color = clTeal
      DataField = 'ID'
      DataSource = dmFichaTecnica.dsCartoFT
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 3
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 78
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 153
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn10: TBitBtn
      Left = 536
      Top = 3
      Width = 75
      Height = 25
      Hint = 'Cadastro de locais de acabamento'
      Caption = 'Local'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn10Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 30
    Width = 932
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label12: TLabel
      Left = 36
      Top = 12
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome:'
    end
    object Label79: TLabel
      Left = 521
      Top = 12
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo:'
    end
    object Label2: TLabel
      Left = 243
      Top = 12
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Situa'#231#227'o:'
    end
    object DBEdit10: TDBEdit
      Left = 72
      Top = 4
      Width = 161
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Nome'
      DataSource = dmFichaTecnica.dsCartoFT
      TabOrder = 0
    end
    object DBCheckBox38: TDBCheckBox
      Left = 864
      Top = 5
      Width = 55
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Inativo'
      DataField = 'Inativo'
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object RxDBComboBox5: TRxDBComboBox
      Left = 552
      Top = 4
      Width = 281
      Height = 21
      Style = csDropDownList
      DataField = 'TIPO'
      DataSource = dmFichaTecnica.dsCartoFT
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'CAIXA NORMAL'
        'TAMPA ACOPLADA'
        'CARTUCHO'
        'SACOLA'
        'DISPLAY')
      TabOrder = 2
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
      OnChange = RxDBComboBox5Change
    end
    object RxDBComboBox4: TRxDBComboBox
      Left = 296
      Top = 4
      Width = 133
      Height = 21
      Style = csDropDownList
      DataField = 'SITUACAO'
      DataSource = dmFichaTecnica.dsCartoFT
      DropDownCount = 3
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Or'#231'amento'
        'Produ'#231#227'o')
      TabOrder = 1
      Values.Strings = (
        'O'
        'P')
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 59
    Width = 932
    Height = 605
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Fundo / Cartucho / Sacola'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 924
        Height = 201
        Align = alTop
        Color = 13743257
        TabOrder = 0
        object Label10: TLabel
          Left = 47
          Top = 28
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 1:'
        end
        object Label33: TLabel
          Left = 47
          Top = 50
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 2:'
        end
        object Label34: TLabel
          Left = 47
          Top = 72
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 3:'
        end
        object Label44: TLabel
          Left = 63
          Top = 141
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frente:'
        end
        object Label45: TLabel
          Left = 66
          Top = 163
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Verso:'
        end
        object Label11: TLabel
          Left = 90
          Top = 117
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Revestimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label81: TLabel
          Left = 103
          Top = 6
          Width = 29
          Height = 13
          Caption = 'Grupo'
        end
        object Label3: TLabel
          Left = 35
          Top = 185
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Observa'#231#227'o:'
        end
        object Label1: TLabel
          Left = 378
          Top = 6
          Width = 37
          Height = 13
          Caption = 'Material'
        end
        object Label9: TLabel
          Left = 270
          Top = 6
          Width = 35
          Height = 13
          Caption = 'M'#237'nimo'
        end
        object Label13: TLabel
          Left = 324
          Top = 6
          Width = 36
          Height = 13
          Caption = 'M'#225'ximo'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 672
          Top = 137
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_FT_ATRITO'
          DataSource = dmFichaTecnica.dsCartoFTFD
          TabOrder = 16
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 792
          Top = 137
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_FT_LUZ'
          DataSource = dmFichaTecnica.dsCartoFTFD
          TabOrder = 17
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox14: TRxDBComboBox
          Left = 104
          Top = 133
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT'
          DataSource = dmFichaTecnica.dsCartoFTFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 13
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox14Change
        end
        object RxDBLookupCombo11: TRxDBLookupCombo
          Left = 274
          Top = 133
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_FT_MAT'
          DataSource = dmFichaTecnica.dsCartoFTFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterial
          TabOrder = 14
        end
        object DBCheckBox10: TDBCheckBox
          Left = 672
          Top = 159
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_VS_ATRITO'
          DataSource = dmFichaTecnica.dsCartoFTFD
          TabOrder = 21
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox11: TDBCheckBox
          Left = 792
          Top = 159
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_VS_LUZ'
          DataSource = dmFichaTecnica.dsCartoFTFD
          TabOrder = 22
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox15: TRxDBComboBox
          Left = 104
          Top = 155
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS'
          DataSource = dmFichaTecnica.dsCartoFTFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 18
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox15Change
        end
        object RxDBLookupCombo12: TRxDBLookupCombo
          Left = 274
          Top = 155
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_VS_MAT'
          DataSource = dmFichaTecnica.dsCartoFTFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterial
          TabOrder = 19
        end
        object RxDBComboBox18: TRxDBComboBox
          Left = 556
          Top = 133
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT_BRIL'
          DataSource = dmFichaTecnica.dsCartoFTFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 15
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBComboBox19: TRxDBComboBox
          Left = 556
          Top = 155
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS_BRIL'
          DataSource = dmFichaTecnica.dsCartoFTFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 20
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBLookupCombo24: TRxDBLookupCombo
          Left = 103
          Top = 20
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO1'
          DataSource = dmFichaTecnica.dsCartoFTFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsGrupoItemFD1
          TabOrder = 0
        end
        object RxDBLookupCombo26: TRxDBLookupCombo
          Left = 103
          Top = 42
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO2'
          DataSource = dmFichaTecnica.dsCartoFTFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsGrupoItemFD2
          TabOrder = 4
        end
        object RxDBLookupCombo28: TRxDBLookupCombo
          Left = 103
          Top = 64
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO3'
          DataSource = dmFichaTecnica.dsCartoFTFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsGrupoItemFD3
          TabOrder = 8
        end
        object DBEdit1: TDBEdit
          Left = 104
          Top = 177
          Width = 557
          Height = 21
          DataField = 'OBS'
          DataSource = dmFichaTecnica.dsCartoFTFD
          TabOrder = 23
        end
        object DBCheckBox4: TDBCheckBox
          Left = 25
          Top = 91
          Width = 91
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Caixa Impressa'
          DataField = 'BRANCO'
          DataSource = dmFichaTecnica.dsCartoFTFD
          TabOrder = 12
          ValueChecked = 'N'
          ValueUnchecked = 'S'
          OnClick = DBCheckBox4Click
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 378
          Top = 20
          Width = 283
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL1'
          DataSource = dmFichaTecnica.dsCartoFTFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterialFD1
          TabOrder = 3
          OnEnter = RxDBLookupCombo2Enter
        end
        object RxDBLookupCombo5: TRxDBLookupCombo
          Left = 378
          Top = 42
          Width = 283
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL2'
          DataSource = dmFichaTecnica.dsCartoFTFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterialFD2
          TabOrder = 7
          OnEnter = RxDBLookupCombo5Enter
        end
        object RxDBLookupCombo6: TRxDBLookupCombo
          Left = 378
          Top = 64
          Width = 283
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL3'
          DataSource = dmFichaTecnica.dsCartoFTFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterialFD3
          TabOrder = 11
          OnEnter = RxDBLookupCombo6Enter
        end
        object DBEdit4: TDBEdit
          Left = 270
          Top = 20
          Width = 53
          Height = 21
          DataField = 'GRAM1_MIN'
          DataSource = dmFichaTecnica.dsCartoFTFD
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 270
          Top = 42
          Width = 53
          Height = 21
          DataField = 'GRAM2_MIN'
          DataSource = dmFichaTecnica.dsCartoFTFD
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 270
          Top = 64
          Width = 53
          Height = 21
          DataField = 'GRAM3_MIN'
          DataSource = dmFichaTecnica.dsCartoFTFD
          TabOrder = 9
        end
        object DBEdit7: TDBEdit
          Left = 324
          Top = 20
          Width = 53
          Height = 21
          DataField = 'GRAM1_MAX'
          DataSource = dmFichaTecnica.dsCartoFTFD
          TabOrder = 2
        end
        object DBEdit8: TDBEdit
          Left = 324
          Top = 42
          Width = 53
          Height = 21
          DataField = 'GRAM2_MAX'
          DataSource = dmFichaTecnica.dsCartoFTFD
          TabOrder = 6
        end
        object DBEdit9: TDBEdit
          Left = 324
          Top = 64
          Width = 53
          Height = 21
          DataField = 'GRAM3_MAX'
          DataSource = dmFichaTecnica.dsCartoFTFD
          TabOrder = 10
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 414
        Width = 924
        Height = 32
        Align = alBottom
        Color = clTeal
        TabOrder = 1
        object Label19: TLabel
          Left = 158
          Top = 5
          Width = 69
          Height = 22
          Caption = 'CORES'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object BitBtn4: TBitBtn
          Left = 3
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn4Click
        end
        object BitBtn5: TBitBtn
          Left = 78
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
        end
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 446
        Width = 924
        Height = 131
        Align = alBottom
        DataSource = dmFichaTecnica.dsCorFD
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid1DblClick
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'AREA_PERCENT'
            Title.Caption = '% DA '#193'REA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CORNOME'
            Title.Caption = 'COR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PANTONE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRENTEVERSO'
            Title.Caption = 'FRENTE/VERSO'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM'
            Visible = True
          end>
      end
      object Panel9: TPanel
        Left = 0
        Top = 201
        Width = 924
        Height = 32
        Align = alTop
        Color = clTeal
        TabOrder = 3
        object Label6: TLabel
          Left = 158
          Top = 5
          Width = 147
          Height = 22
          Caption = 'ACABAMENTOS'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object BitBtn11: TBitBtn
          Left = 3
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn11Click
        end
        object BitBtn12: TBitBtn
          Left = 78
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn12Click
        end
      end
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 233
        Width = 924
        Height = 181
        Align = alClient
        DataSource = dmFichaTecnica.dsAcabamentoFD
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid4DblClick
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ACAB_POSICAO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ACABAMENTO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALINHAMENTO'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPRIMENTO'
            Title.Caption = 'COMPR.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LARGURA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tampa'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 924
        Height = 350
        Align = alTop
        Color = clMoneyGreen
        TabOrder = 0
        object Label15: TLabel
          Left = 47
          Top = 28
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 1:'
        end
        object Label40: TLabel
          Left = 47
          Top = 50
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 2:'
        end
        object Label41: TLabel
          Left = 47
          Top = 72
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 3:'
        end
        object Label20: TLabel
          Left = 63
          Top = 141
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frente:'
        end
        object Label46: TLabel
          Left = 66
          Top = 163
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Verso:'
        end
        object Label47: TLabel
          Left = 90
          Top = 117
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Revestimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 243
          Top = 193
          Width = 33
          Height = 13
          Alignment = taCenter
          Caption = 'Compr.'
        end
        object Label54: TLabel
          Left = 299
          Top = 193
          Width = 36
          Height = 13
          Alignment = taCenter
          Caption = 'Largura'
        end
        object Label55: TLabel
          Left = 410
          Top = 193
          Width = 26
          Height = 13
          Alignment = taCenter
          Caption = 'Local'
        end
        object Label68: TLabel
          Left = 704
          Top = 193
          Width = 26
          Height = 13
          Alignment = taCenter
          Caption = 'Local'
        end
        object Label69: TLabel
          Left = 834
          Top = 193
          Width = 21
          Height = 13
          Alignment = taCenter
          Caption = 'Tipo'
        end
        object Label70: TLabel
          Left = 92
          Top = 193
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Acabamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 104
          Top = 6
          Width = 32
          Height = 13
          Caption = 'Grupo:'
        end
        object Label4: TLabel
          Left = 35
          Top = 332
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Observa'#231#227'o:'
        end
        object Label7: TLabel
          Left = 378
          Top = 6
          Width = 37
          Height = 13
          Caption = 'Material'
        end
        object Label14: TLabel
          Left = 270
          Top = 6
          Width = 35
          Height = 13
          Caption = 'M'#237'nimo'
        end
        object Label17: TLabel
          Left = 324
          Top = 6
          Width = 36
          Height = 13
          Caption = 'M'#225'ximo'
        end
        object DBCheckBox8: TDBCheckBox
          Left = 672
          Top = 133
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_FT_ATRITO'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 16
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox9: TDBCheckBox
          Left = 792
          Top = 133
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_FT_LUZ'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 17
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox6: TRxDBComboBox
          Left = 104
          Top = 133
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT'
          DataSource = dmFichaTecnica.dsCartoFTTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 13
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox6Change
        end
        object RxDBLookupCombo13: TRxDBLookupCombo
          Left = 274
          Top = 133
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_FT_MAT'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterial
          TabOrder = 14
        end
        object DBCheckBox13: TDBCheckBox
          Left = 672
          Top = 155
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_VS_ATRITO'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 21
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox14: TDBCheckBox
          Left = 792
          Top = 155
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_VS_LUZ'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 22
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox16: TRxDBComboBox
          Left = 104
          Top = 155
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS'
          DataSource = dmFichaTecnica.dsCartoFTTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 18
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox16Change
        end
        object RxDBLookupCombo14: TRxDBLookupCombo
          Left = 274
          Top = 155
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_VS_MAT'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterial
          TabOrder = 19
        end
        object RxDBComboBox17: TRxDBComboBox
          Left = 556
          Top = 133
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT_BRIL'
          DataSource = dmFichaTecnica.dsCartoFTTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 15
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBComboBox29: TRxDBComboBox
          Left = 556
          Top = 155
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS_BRIL'
          DataSource = dmFichaTecnica.dsCartoFTTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 20
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object DBCheckBox15: TDBCheckBox
          Left = 104
          Top = 211
          Width = 97
          Height = 17
          Caption = 'Alto relevo'
          DataField = 'AR'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 23
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox15Click
        end
        object DBCheckBox16: TDBCheckBox
          Left = 104
          Top = 233
          Width = 97
          Height = 17
          Caption = 'Baixo relevo'
          DataField = 'BR'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 27
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox16Click
        end
        object DBCheckBox17: TDBCheckBox
          Left = 104
          Top = 255
          Width = 97
          Height = 17
          Caption = 'Hot stamping'
          DataField = 'HS'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 31
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox17Click
        end
        object DBCheckBox18: TDBCheckBox
          Left = 104
          Top = 277
          Width = 97
          Height = 17
          Caption = 'Visor'
          DataField = 'VISOR'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 35
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox18Click
        end
        object DBCheckBox39: TDBCheckBox
          Left = 563
          Top = 275
          Width = 69
          Height = 17
          Caption = 'Ilh'#243's'
          DataField = 'ILHOS'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 51
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox39Click
        end
        object DBCheckBox40: TDBCheckBox
          Left = 563
          Top = 209
          Width = 69
          Height = 17
          Caption = 'Picote'
          DataField = 'PICOTE'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 43
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox40Click
        end
        object DBCheckBox41: TDBCheckBox
          Left = 563
          Top = 231
          Width = 69
          Height = 17
          Caption = 'Passa fita'
          DataField = 'PASSAFITA'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 46
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox41Click
        end
        object DBCheckBox42: TDBCheckBox
          Left = 563
          Top = 253
          Width = 69
          Height = 17
          Caption = 'Al'#231'a'
          DataField = 'ALCA'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 49
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox42Click
        end
        object DBCheckBox43: TDBCheckBox
          Left = 104
          Top = 299
          Width = 124
          Height = 17
          Caption = 'Verniz UV localizado'
          DataField = 'VERNIZUV'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 39
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox43Click
        end
        object DBCheckBox44: TDBCheckBox
          Left = 563
          Top = 297
          Width = 109
          Height = 17
          Caption = 'Verniz UV total'
          DataField = 'VERNIZUV_TOTAL'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 53
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit35: TDBEdit
          Left = 232
          Top = 209
          Width = 55
          Height = 21
          DataField = 'AR_COMPR'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 24
        end
        object DBEdit36: TDBEdit
          Left = 289
          Top = 209
          Width = 57
          Height = 21
          DataField = 'AR_LARG'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 25
        end
        object DBEdit37: TDBEdit
          Left = 232
          Top = 231
          Width = 55
          Height = 21
          DataField = 'BR_COMPR'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 28
        end
        object DBEdit38: TDBEdit
          Left = 289
          Top = 231
          Width = 57
          Height = 21
          DataField = 'BR_LARG'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 29
        end
        object DBEdit39: TDBEdit
          Left = 232
          Top = 253
          Width = 55
          Height = 21
          DataField = 'HS_COMPR'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 32
        end
        object DBEdit40: TDBEdit
          Left = 289
          Top = 253
          Width = 57
          Height = 21
          DataField = 'HS_LARG'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 33
        end
        object DBEdit41: TDBEdit
          Left = 232
          Top = 275
          Width = 55
          Height = 21
          DataField = 'VISOR_COMPR'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 36
        end
        object DBEdit42: TDBEdit
          Left = 289
          Top = 275
          Width = 57
          Height = 21
          DataField = 'VISOR_LARG'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 37
        end
        object DBEdit43: TDBEdit
          Left = 232
          Top = 297
          Width = 55
          Height = 21
          DataField = 'VERNIZUV_COMPR'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 40
        end
        object DBEdit46: TDBEdit
          Left = 289
          Top = 297
          Width = 57
          Height = 21
          DataField = 'VERNIZUV_LARG'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 41
        end
        object RxDBComboBox39: TRxDBComboBox
          Left = 805
          Top = 231
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'PASSAFITA_TIPO'
          DataSource = dmFichaTecnica.dsCartoFTTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'REDONDO'
            'OVAL'
            'RETANGULAR')
          TabOrder = 48
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox40: TRxDBComboBox
          Left = 805
          Top = 209
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'PICOTE_TIPO'
          DataSource = dmFichaTecnica.dsCartoFTTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'MICRO SERRILHA'
            '0.5 POR 0.5')
          TabOrder = 45
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBLookupCombo18: TRxDBLookupCombo
          Left = 103
          Top = 20
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO1'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsGrupoItemTP1
          TabOrder = 0
        end
        object RxDBLookupCombo20: TRxDBLookupCombo
          Left = 103
          Top = 42
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO2'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsGrupoItemTP2
          TabOrder = 4
        end
        object RxDBLookupCombo22: TRxDBLookupCombo
          Left = 103
          Top = 64
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO3'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsGrupoItemTP3
          TabOrder = 8
        end
        object DBEdit2: TDBEdit
          Left = 104
          Top = 324
          Width = 793
          Height = 21
          DataField = 'OBS'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 54
        end
        object RxDBLookupCombo43: TRxDBLookupCombo
          Left = 348
          Top = 209
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'AR_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 26
        end
        object RxDBLookupCombo44: TRxDBLookupCombo
          Left = 348
          Top = 231
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'BR_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 30
        end
        object RxDBLookupCombo45: TRxDBLookupCombo
          Left = 348
          Top = 253
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'HS_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 34
        end
        object RxDBLookupCombo46: TRxDBLookupCombo
          Left = 348
          Top = 275
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'VISOR_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 38
        end
        object RxDBLookupCombo47: TRxDBLookupCombo
          Left = 348
          Top = 297
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'VERNIZUV_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 42
        end
        object RxDBLookupCombo48: TRxDBLookupCombo
          Left = 638
          Top = 275
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'ILHOS_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 52
        end
        object RxDBLookupCombo49: TRxDBLookupCombo
          Left = 638
          Top = 253
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'ALCA_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 50
        end
        object RxDBLookupCombo50: TRxDBLookupCombo
          Left = 638
          Top = 231
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'PASSAFITA_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 47
        end
        object RxDBLookupCombo51: TRxDBLookupCombo
          Left = 638
          Top = 209
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'PICOTE_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 44
        end
        object DBCheckBox5: TDBCheckBox
          Left = 334
          Top = 88
          Width = 103
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tampa Impressa'
          DataField = 'BRANCO'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 12
          ValueChecked = 'N'
          ValueUnchecked = 'S'
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 378
          Top = 20
          Width = 283
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL1'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterialTP1
          TabOrder = 3
          OnEnter = RxDBLookupCombo3Enter
        end
        object RxDBLookupCombo7: TRxDBLookupCombo
          Left = 378
          Top = 42
          Width = 283
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL2'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterialTP2
          TabOrder = 7
          OnEnter = RxDBLookupCombo7Enter
        end
        object RxDBLookupCombo8: TRxDBLookupCombo
          Left = 378
          Top = 64
          Width = 283
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL3'
          DataSource = dmFichaTecnica.dsCartoFTTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterialTP3
          TabOrder = 11
          OnEnter = RxDBLookupCombo8Enter
        end
        object DBEdit11: TDBEdit
          Left = 270
          Top = 20
          Width = 53
          Height = 21
          DataField = 'GRAM1_MIN'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 1
        end
        object DBEdit12: TDBEdit
          Left = 270
          Top = 42
          Width = 53
          Height = 21
          DataField = 'GRAM2_MIN'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 5
        end
        object DBEdit13: TDBEdit
          Left = 270
          Top = 64
          Width = 53
          Height = 21
          DataField = 'GRAM3_MIN'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 9
        end
        object DBEdit14: TDBEdit
          Left = 324
          Top = 20
          Width = 53
          Height = 21
          DataField = 'GRAM1_MAX'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 324
          Top = 42
          Width = 53
          Height = 21
          DataField = 'GRAM2_MAX'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 6
        end
        object DBEdit16: TDBEdit
          Left = 324
          Top = 64
          Width = 53
          Height = 21
          DataField = 'GRAM3_MAX'
          DataSource = dmFichaTecnica.dsCartoFTTP
          TabOrder = 10
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 350
        Width = 924
        Height = 32
        Align = alTop
        TabOrder = 1
        object BitBtn6: TBitBtn
          Left = 0
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn6Click
        end
        object BitBtn7: TBitBtn
          Left = 75
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
        end
      end
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 382
        Width = 924
        Height = 195
        Align = alClient
        DataSource = dmFichaTecnica.dsCorTP
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid2DblClick
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'AREA_PERCENT'
            Title.Caption = '% DA '#193'REA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CORNOME'
            Title.Caption = 'COR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRENTEVERSO'
            Title.Caption = 'FRENTE/VERSO'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM'
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Suporte'
      ImageIndex = 3
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 924
        Height = 350
        Align = alTop
        Color = 8963327
        TabOrder = 0
        object Label22: TLabel
          Left = 47
          Top = 28
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 1:'
        end
        object Label23: TLabel
          Left = 47
          Top = 50
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 2:'
        end
        object Label24: TLabel
          Left = 47
          Top = 72
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 3:'
        end
        object Label43: TLabel
          Left = 63
          Top = 141
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frente:'
        end
        object Label71: TLabel
          Left = 66
          Top = 163
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Verso:'
        end
        object Label72: TLabel
          Left = 90
          Top = 117
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Revestimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label73: TLabel
          Left = 243
          Top = 193
          Width = 33
          Height = 13
          Alignment = taCenter
          Caption = 'Compr.'
        end
        object Label74: TLabel
          Left = 299
          Top = 193
          Width = 36
          Height = 13
          Alignment = taCenter
          Caption = 'Largura'
        end
        object Label75: TLabel
          Left = 410
          Top = 193
          Width = 26
          Height = 13
          Alignment = taCenter
          Caption = 'Local'
        end
        object Label76: TLabel
          Left = 704
          Top = 193
          Width = 26
          Height = 13
          Alignment = taCenter
          Caption = 'Local'
        end
        object Label77: TLabel
          Left = 834
          Top = 193
          Width = 21
          Height = 13
          Alignment = taCenter
          Caption = 'Tipo'
        end
        object Label78: TLabel
          Left = 92
          Top = 193
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Acabamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label82: TLabel
          Left = 104
          Top = 6
          Width = 32
          Height = 13
          Caption = 'Grupo:'
        end
        object Label5: TLabel
          Left = 35
          Top = 332
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Observa'#231#227'o:'
        end
        object Label8: TLabel
          Left = 378
          Top = 6
          Width = 37
          Height = 13
          Caption = 'Material'
        end
        object Label18: TLabel
          Left = 270
          Top = 6
          Width = 35
          Height = 13
          Caption = 'M'#237'nimo'
        end
        object Label21: TLabel
          Left = 324
          Top = 6
          Width = 36
          Height = 13
          Caption = 'M'#225'ximo'
        end
        object DBCheckBox22: TDBCheckBox
          Left = 672
          Top = 133
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_FT_ATRITO'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 16
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox23: TDBCheckBox
          Left = 792
          Top = 133
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_FT_LUZ'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 17
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox12: TRxDBComboBox
          Left = 104
          Top = 133
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT'
          DataSource = dmFichaTecnica.dsCartoFTSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 13
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox6Change
        end
        object RxDBLookupCombo15: TRxDBLookupCombo
          Left = 274
          Top = 133
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_FT_MAT'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterial
          TabOrder = 14
        end
        object DBCheckBox24: TDBCheckBox
          Left = 672
          Top = 155
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_VS_ATRITO'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 21
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox25: TDBCheckBox
          Left = 792
          Top = 155
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_VS_LUZ'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 22
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox41: TRxDBComboBox
          Left = 104
          Top = 155
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS'
          DataSource = dmFichaTecnica.dsCartoFTSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 18
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox16Change
        end
        object RxDBLookupCombo16: TRxDBLookupCombo
          Left = 274
          Top = 155
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_VS_MAT'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterial
          TabOrder = 19
        end
        object RxDBComboBox42: TRxDBComboBox
          Left = 556
          Top = 133
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT_BRIL'
          DataSource = dmFichaTecnica.dsCartoFTSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 15
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBComboBox43: TRxDBComboBox
          Left = 556
          Top = 155
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS_BRIL'
          DataSource = dmFichaTecnica.dsCartoFTSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 20
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object DBCheckBox26: TDBCheckBox
          Left = 104
          Top = 211
          Width = 90
          Height = 17
          Caption = 'Alto relevo'
          DataField = 'AR'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 23
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox15Click
        end
        object DBCheckBox27: TDBCheckBox
          Left = 104
          Top = 233
          Width = 90
          Height = 17
          Caption = 'Baixo relevo'
          DataField = 'BR'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 27
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox16Click
        end
        object DBCheckBox45: TDBCheckBox
          Left = 104
          Top = 255
          Width = 90
          Height = 17
          Caption = 'Hot stamping'
          DataField = 'HS'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 31
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox17Click
        end
        object DBCheckBox46: TDBCheckBox
          Left = 104
          Top = 277
          Width = 90
          Height = 17
          Caption = 'Visor'
          DataField = 'VISOR'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 35
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox18Click
        end
        object DBCheckBox47: TDBCheckBox
          Left = 563
          Top = 275
          Width = 72
          Height = 17
          Caption = 'Ilh'#243's'
          DataField = 'ILHOS'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 51
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox39Click
        end
        object DBCheckBox48: TDBCheckBox
          Left = 563
          Top = 209
          Width = 72
          Height = 17
          Caption = 'Picote'
          DataField = 'PICOTE'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 43
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox40Click
        end
        object DBCheckBox49: TDBCheckBox
          Left = 563
          Top = 231
          Width = 72
          Height = 17
          Caption = 'Passa fita'
          DataField = 'PASSAFITA'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 46
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox41Click
        end
        object DBCheckBox50: TDBCheckBox
          Left = 563
          Top = 253
          Width = 72
          Height = 17
          Caption = 'Al'#231'a'
          DataField = 'ALCA'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 49
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox42Click
        end
        object DBCheckBox51: TDBCheckBox
          Left = 104
          Top = 299
          Width = 130
          Height = 17
          Caption = 'Verniz UV localizado'
          DataField = 'VERNIZUV'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 39
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox43Click
        end
        object DBCheckBox52: TDBCheckBox
          Left = 563
          Top = 297
          Width = 112
          Height = 17
          Caption = 'Verniz UV total'
          DataField = 'VERNIZUV_TOTAL'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 53
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit47: TDBEdit
          Left = 232
          Top = 209
          Width = 55
          Height = 21
          DataField = 'AR_COMPR'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 24
        end
        object DBEdit48: TDBEdit
          Left = 289
          Top = 209
          Width = 57
          Height = 21
          DataField = 'AR_LARG'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 25
        end
        object DBEdit49: TDBEdit
          Left = 232
          Top = 231
          Width = 55
          Height = 21
          DataField = 'BR_COMPR'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 28
        end
        object DBEdit50: TDBEdit
          Left = 289
          Top = 231
          Width = 57
          Height = 21
          DataField = 'BR_LARG'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 29
        end
        object DBEdit51: TDBEdit
          Left = 232
          Top = 253
          Width = 55
          Height = 21
          DataField = 'HS_COMPR'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 32
        end
        object DBEdit52: TDBEdit
          Left = 289
          Top = 253
          Width = 57
          Height = 21
          DataField = 'HS_LARG'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 33
        end
        object DBEdit53: TDBEdit
          Left = 232
          Top = 275
          Width = 55
          Height = 21
          DataField = 'VISOR_COMPR'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 36
        end
        object DBEdit54: TDBEdit
          Left = 289
          Top = 275
          Width = 57
          Height = 21
          DataField = 'VISOR_LARG'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 37
        end
        object DBEdit55: TDBEdit
          Left = 232
          Top = 297
          Width = 55
          Height = 21
          DataField = 'VERNIZUV_COMPR'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 40
        end
        object DBEdit56: TDBEdit
          Left = 289
          Top = 297
          Width = 57
          Height = 21
          DataField = 'VERNIZUV_LARG'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 41
        end
        object RxDBComboBox53: TRxDBComboBox
          Left = 805
          Top = 231
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'PASSAFITA_TIPO'
          DataSource = dmFichaTecnica.dsCartoFTSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'REDONDO'
            'OVAL'
            'RETANGULAR')
          TabOrder = 48
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox54: TRxDBComboBox
          Left = 805
          Top = 209
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'PICOTE_TIPO'
          DataSource = dmFichaTecnica.dsCartoFTSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'MICRO SERRILHA'
            '0.5 POR 0.5')
          TabOrder = 45
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBLookupCombo30: TRxDBLookupCombo
          Left = 103
          Top = 20
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO1'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsGrupoItemSP1
          TabOrder = 0
        end
        object RxDBLookupCombo32: TRxDBLookupCombo
          Left = 103
          Top = 42
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO2'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsGrupoItemSP2
          TabOrder = 4
        end
        object RxDBLookupCombo34: TRxDBLookupCombo
          Left = 103
          Top = 64
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO3'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsGrupoItemSP3
          TabOrder = 8
        end
        object DBEdit3: TDBEdit
          Left = 104
          Top = 324
          Width = 793
          Height = 21
          DataField = 'OBS'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 54
        end
        object RxDBLookupCombo52: TRxDBLookupCombo
          Left = 348
          Top = 209
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'AR_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 26
        end
        object RxDBLookupCombo53: TRxDBLookupCombo
          Left = 348
          Top = 231
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'BR_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 30
        end
        object RxDBLookupCombo54: TRxDBLookupCombo
          Left = 348
          Top = 253
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'HS_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 34
        end
        object RxDBLookupCombo55: TRxDBLookupCombo
          Left = 348
          Top = 275
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'VISOR_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 38
        end
        object RxDBLookupCombo56: TRxDBLookupCombo
          Left = 348
          Top = 297
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'VERNIZUV_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 42
        end
        object RxDBLookupCombo57: TRxDBLookupCombo
          Left = 638
          Top = 209
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'PICOTE_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 44
        end
        object RxDBLookupCombo58: TRxDBLookupCombo
          Left = 638
          Top = 275
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'ILHOS_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 52
        end
        object RxDBLookupCombo59: TRxDBLookupCombo
          Left = 638
          Top = 253
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'ALCA_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 50
        end
        object RxDBLookupCombo60: TRxDBLookupCombo
          Left = 638
          Top = 231
          Width = 166
          Height = 21
          DropDownCount = 8
          DropDownWidth = 250
          DataField = 'PASSAFITA_LOCAL'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmFichaTecnica.dsAcabPosicao
          TabOrder = 47
        end
        object DBCheckBox20: TDBCheckBox
          Left = 334
          Top = 88
          Width = 103
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Suporte Impresso'
          DataField = 'BRANCO'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 12
          ValueChecked = 'N'
          ValueUnchecked = 'S'
        end
        object RxDBLookupCombo4: TRxDBLookupCombo
          Left = 378
          Top = 20
          Width = 283
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL1'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterialSP1
          TabOrder = 3
          OnEnter = RxDBLookupCombo4Enter
        end
        object RxDBLookupCombo9: TRxDBLookupCombo
          Left = 378
          Top = 42
          Width = 283
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL2'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterialSP2
          TabOrder = 7
          OnEnter = RxDBLookupCombo9Enter
        end
        object RxDBLookupCombo10: TRxDBLookupCombo
          Left = 378
          Top = 64
          Width = 283
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL3'
          DataSource = dmFichaTecnica.dsCartoFTSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmFichaTecnica.dsqMaterialSP3
          TabOrder = 11
          OnEnter = RxDBLookupCombo10Enter
        end
        object DBEdit17: TDBEdit
          Left = 270
          Top = 20
          Width = 53
          Height = 21
          DataField = 'GRAM1_MIN'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 1
        end
        object DBEdit18: TDBEdit
          Left = 270
          Top = 42
          Width = 53
          Height = 21
          DataField = 'GRAM2_MIN'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 5
        end
        object DBEdit19: TDBEdit
          Left = 270
          Top = 64
          Width = 53
          Height = 21
          DataField = 'GRAM3_MIN'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 9
        end
        object DBEdit20: TDBEdit
          Left = 324
          Top = 20
          Width = 53
          Height = 21
          DataField = 'GRAM1_MAX'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 2
        end
        object DBEdit30: TDBEdit
          Left = 324
          Top = 42
          Width = 53
          Height = 21
          DataField = 'GRAM2_MAX'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 6
        end
        object DBEdit32: TDBEdit
          Left = 324
          Top = 64
          Width = 53
          Height = 21
          DataField = 'GRAM3_MAX'
          DataSource = dmFichaTecnica.dsCartoFTSP
          TabOrder = 10
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 350
        Width = 924
        Height = 32
        Align = alTop
        TabOrder = 1
        object BitBtn8: TBitBtn
          Left = 0
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn8Click
        end
        object BitBtn9: TBitBtn
          Left = 75
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
        end
      end
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 382
        Width = 924
        Height = 195
        Align = alClient
        DataSource = dmFichaTecnica.dsCorSP
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid3DblClick
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'AREA_PERCENT'
            Title.Caption = '% DA '#193'REA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CORNOME'
            Title.Caption = 'COR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRENTEVERSO'
            Title.Caption = 'FRENTE/VERSO'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM'
            Visible = True
          end>
      end
    end
  end
end
