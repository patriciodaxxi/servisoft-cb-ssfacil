object frmCadPessoa_Servico_Int: TfrmCadPessoa_Servico_Int
  Left = 320
  Top = 204
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadPessoa_Servico_Int'
  ClientHeight = 387
  ClientWidth = 744
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 744
    Height = 122
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 16
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Servi'#231'o:'
    end
    object Label3: TLabel
      Left = 43
      Top = 59
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'No Total:'
    end
    object Label2: TLabel
      Left = 30
      Top = 35
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Servi'#231'o:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 90
      Top = 8
      Width = 340
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadPessoa.dsServico_Int
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 90
      Top = 95
      Width = 166
      Height = 25
      Caption = 'Confirmar Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333377FF333333333000033334224333333333333
        337777FF333333330000333422224333333333333777777FF333333300003342
        2222243333333333777777777F333333000034222A22224333333337777F7777
        7F33333300003222A3A222433333333777F3F7777FF3333300003A2A333A2224
        333333377F333F7777FF3333000033A33333A22243333333F33333F7777FF333
        0000333333333A22243333333333333F7777FF3300003333333333A222433333
        33333333F7777F33000033333333333A22243333333333333F7777F300003333
        33333333A22243333333333333F7777F00003333333333333A22433333333333
        333F7773000033333333333333A22333333333333333F7730000333333333333
        333A33333333333333333F330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 256
      Top = 95
      Width = 166
      Height = 25
      Caption = 'Excluir Servi'#231'o Selecionado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object ComboBox1: TComboBox
      Left = 90
      Top = 52
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Somar'
      Items.Strings = (
        'Somar'
        'Diminuir')
    end
    object CheckBox1: TCheckBox
      Left = 274
      Top = 31
      Width = 150
      Height = 17
      Caption = 'Calcular INSS'
      TabOrder = 3
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 90
      Top = 30
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = '0.00'
      TabOrder = 1
    end
    object CheckBox2: TCheckBox
      Left = 274
      Top = 47
      Width = 150
      Height = 17
      Caption = 'Calcular ISSQN'
      TabOrder = 6
    end
    object CheckBox3: TCheckBox
      Left = 586
      Top = 39
      Width = 150
      Height = 17
      Caption = 'Calcular PIS/COFINS'
      TabOrder = 7
      Visible = False
    end
    object CheckBox4: TCheckBox
      Left = 586
      Top = 23
      Width = 150
      Height = 17
      Caption = 'Calcular CSLL'
      TabOrder = 8
      Visible = False
    end
    object CheckBox5: TCheckBox
      Left = 442
      Top = 47
      Width = 135
      Height = 17
      Caption = 'Calcular IR'
      TabOrder = 9
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 122
    Width = 744
    Height = 265
    Align = alClient
    Ctl3D = False
    DataSource = DMCadPessoa.dsPessoa_Servico_Int
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    ExOptions = [eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEM'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_SERVICO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o Servi'#231'o'
        Width = 355
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_SERVICO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Servi'#231'o'
        Width = 91
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SOMAR_DIMINUIR'
        Title.Alignment = taCenter
        Title.Caption = 'Somar / Diminuir'
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CALCULAR_INSS'
        Title.Alignment = taCenter
        Title.Caption = 'INSS'
        Width = 33
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CALCULAR_ISSQN'
        Title.Alignment = taCenter
        Title.Caption = 'ISSQN'
        Width = 44
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CALCULAR_IR'
        Title.Alignment = taCenter
        Title.Caption = 'IR'
        Width = 25
        Visible = True
      end>
  end
end
