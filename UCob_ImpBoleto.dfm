object frmCob_ImpBoleto: TfrmCob_ImpBoleto
  Left = 180
  Top = 192
  Width = 928
  Height = 480
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'frmCob_ImpBoleto'
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
    Top = 41
    Width = 912
    Height = 31
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label3: TLabel
      Left = 655
      Top = 11
      Width = 72
      Height = 13
      Caption = 'Tipo do Boleto:'
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 3
      Width = 105
      Height = 26
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object ComboBox1: TComboBox
      Left = 728
      Top = 3
      Width = 161
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Padr'#227'o (Folha A4)'
      Visible = False
      Items.Strings = (
        'Padr'#227'o (Folha A4)'
        'Tipo Carne')
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 72
    Width = 912
    Height = 370
    Align = alClient
    Ctl3D = False
    DataSource = DMCob_Eletronica.dsDuplicata
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 14
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NOSSONUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'Nosso N'#250'mero'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CONTA'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTVENCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SERIE'
        Title.Alignment = taCenter
        Title.Caption = 'S'#233'rie'
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMDUPLICATA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Width = 259
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_RESTANTE'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 82
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_PESSOA'
        Title.Alignment = taCenter
        Title.Caption = 'ID Pessoa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CONTA_BOLETO'
        Title.Alignment = taCenter
        Title.Caption = 'ID Conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_COB_ELETRONICA'
        Title.Alignment = taCenter
        Title.Caption = 'ID Cobran'#231'a'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOLETO_IMP'
        Title.Alignment = taCenter
        Title.Caption = 'Boleto Impresso'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    Color = clSilver
    TabOrder = 2
    object Label1: TLabel
      Left = 13
      Top = 16
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Banco:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 51
      Top = 8
      Width = 334
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCob_Eletronica.dsContas
      ParentCtl3D = False
      TabOrder = 0
      OnChange = RxDBLookupCombo1Change
    end
  end
  object ACBrBoleto1: TACBrBoleto
    Banco.Numero = 1
    Banco.TamanhoMaximoNossoNum = 0
    Banco.TipoCobranca = cobBancoDoBrasil
    Cedente.TipoInscricao = pJuridica
    NumeroArquivo = 0
    LayoutRemessa = c240
    ACBrBoletoFC = ACBrBoletoFCFortes1
    Left = 480
    Top = 16
  end
  object ACBrBoletoFCFortes1: TACBrBoletoFCFortes
    ACBrBoleto = ACBrBoleto1
    SoftwareHouse = 'ServiSoft Info.'
    Left = 512
    Top = 16
  end
end
