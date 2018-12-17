object frmLeExcel: TfrmLeExcel
  Left = 167
  Top = 30
  Width = 1150
  Height = 680
  Caption = 'frmLeExcel'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 45
    Width = 1142
    Height = 64
    Align = alTop
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 67
      Top = 15
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Arquivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object FilenameEdit1: TFilenameEdit
      Left = 112
      Top = 7
      Width = 561
      Height = 21
      Ctl3D = False
      NumGlyphs = 1
      ParentCtl3D = False
      TabOrder = 0
    end
    object btnImp_Exp: TNxButton
      Left = 112
      Top = 30
      Width = 153
      Height = 30
      Caption = 'Importar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      Transparent = True
      OnClick = btnImp_ExpClick
    end
    object btnConfirmar: TNxButton
      Left = 265
      Top = 30
      Width = 153
      Height = 30
      Caption = 'Gravar Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 2
      Transparent = True
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TNxButton
      Left = 418
      Top = 30
      Width = 153
      Height = 30
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 3
      Transparent = True
      OnClick = btnCancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 109
    Width = 1142
    Height = 540
    Align = alClient
    TabOrder = 1
    Visible = False
    object gbxCliente: TRzGroupBox
      Left = 1
      Top = 1
      Width = 1140
      Height = 149
      Align = alTop
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Cliente / CFOP '
      Ctl3D = True
      FlatColor = clNavy
      FlatColorAdjustment = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      VisualStyle = vsGradient
      object Label2: TLabel
        Left = 10
        Top = 18
        Width = 38
        Height = 16
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 35
        Width = 40
        Height = 16
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 51
        Top = 53
        Width = 512
        Height = 25
        Cursor = crHandPoint
        Caption = 'Cliente n'#227'o Encontrado na base, clique aqui para cadastrar'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Visible = False
        OnClick = Label4Click
      end
      object Label5: TLabel
        Left = 51
        Top = 18
        Width = 700
        Height = 13
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label6: TLabel
        Left = 51
        Top = 35
        Width = 700
        Height = 13
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 8
        Top = 130
        Width = 170
        Height = 16
        Alignment = taRightJustify
        Caption = 'CFOP para gravar o Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 494
        Top = 130
        Width = 58
        Height = 16
        Alignment = taRightJustify
        Caption = 'Varia'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 115
        Top = 90
        Width = 63
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 618
        Top = 64
        Width = 143
        Height = 20
        Alignment = taRightJustify
        Caption = 'Itens Importados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 765
        Top = 64
        Width = 11
        Height = 20
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 114
        Top = 110
        Width = 64
        Height = 16
        Alignment = taRightJustify
        Caption = 'Opera'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblFinalidade: TLabel
        Left = 616
        Top = 111
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Finalidade:'
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 182
        Top = 125
        Width = 179
        Height = 21
        DropDownCount = 8
        Ctl3D = False
        LookupField = 'ID'
        LookupDisplay = 'CODCFOP'
        LookupSource = DMExcel.dsCFOP
        ParentCtl3D = False
        TabOrder = 3
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 556
        Top = 125
        Width = 267
        Height = 21
        DropDownCount = 8
        Ctl3D = False
        LookupField = 'ITEM'
        LookupDisplay = 'NOME'
        LookupSource = DMExcel.dsCFOP_Variacao
        ParentCtl3D = False
        TabOrder = 4
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 182
        Top = 85
        Width = 371
        Height = 21
        DropDownCount = 8
        Ctl3D = False
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DMExcel.dsVendedor
        ParentCtl3D = False
        TabOrder = 0
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 182
        Top = 105
        Width = 371
        Height = 21
        DropDownCount = 8
        Ctl3D = False
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DMExcel.dsOperacao_Nota
        ParentCtl3D = False
        TabOrder = 1
      end
      object NxComboBox1: TNxComboBox
        Left = 669
        Top = 104
        Width = 154
        Height = 21
        Cursor = crArrow
        TabOrder = 2
        Text = 'R=Revenda'
        ReadOnly = True
        HideFocus = False
        Style = dsDropDownList
        AutoCompleteDelay = 0
        ItemIndex = 1
        Items.Strings = (
          'C=Consumo'
          'R=Revenda'
          'I=Industrializa'#231#227'o'
          'O=Outros')
      end
    end
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 150
      Width = 1140
      Height = 362
      Align = alClient
      Ctl3D = False
      DataSource = DMExcel.dsmAuxiliar
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
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
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      OnGetCellParams = SMDBGrid1GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 15
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Color = 16763799
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Referencia'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Color = 16763799
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Color = 16763799
          Width = 384
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_CFOP'
          Title.Alignment = taCenter
          Title.Caption = 'ID CFOP'
          Title.Color = 16763799
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkCFOP'
          Title.Alignment = taCenter
          Title.Caption = 'CFOP'
          Title.Color = 16763799
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Origem_Prod'
          Title.Alignment = taCenter
          Title.Caption = 'Origem'
          Title.Color = 16763799
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_NCM'
          Title.Alignment = taCenter
          Title.Caption = 'ID NCM'
          Title.Color = 16763799
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNCM'
          Title.Alignment = taCenter
          Title.Caption = 'NCM'
          Title.Color = 16763799
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Calc_ST'
          Title.Alignment = taCenter
          Title.Caption = 'ST'
          Title.Color = 16763799
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Title.Color = 16763799
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vlr_Unitario'
          Title.Color = 16763799
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vlr_Total'
          Title.Color = 16763799
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Embalagem'
          Title.Color = 16763799
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Despacho_Minimo'
          Title.Color = 16763799
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 1
      Top = 512
      Width = 1140
      Height = 27
      Align = alBottom
      TabOrder = 2
      object Shape1: TShape
        Left = 353
        Top = 4
        Width = 39
        Height = 20
        Brush.Color = clRed
      end
      object Label13: TLabel
        Left = 400
        Top = 7
        Width = 213
        Height = 13
        Caption = 'Produtos n'#227'o encontrados na base de dados'
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1142
    Height = 45
    Align = alTop
    TabOrder = 2
    DesignSize = (
      1142
      45)
    object Label10: TLabel
      Left = 918
      Top = 8
      Width = 155
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'Exportar somente os Produtos'#13#10'cadastrados na Tabela de Pre'#231'o'
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 814
      Height = 43
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = ' Op'#231#227'o '
      Columns = 2
      Items.Strings = (
        'Importar'
        'Exportar')
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object CheckBox1: TCheckBox
      Left = 900
      Top = 16
      Width = 17
      Height = 17
      Anchors = [akTop, akRight]
      TabOrder = 1
    end
  end
end
