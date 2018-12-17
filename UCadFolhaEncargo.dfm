object frmCadFolhaEncargo: TfrmCadFolhaEncargo
  Left = 164
  Top = 160
  Width = 751
  Height = 228
  BorderIcons = [biSystemMenu]
  Caption = 'frmCadFolhaEncargo'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 66
    Top = 29
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome:'
  end
  object Label4: TLabel
    Left = 70
    Top = 52
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor:'
  end
  object Label7: TLabel
    Left = 29
    Top = 76
    Width = 68
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo Empresa:'
  end
  object Label1: TLabel
    Left = 38
    Top = 100
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo Sal'#225'rio:'
  end
  object Label2: TLabel
    Left = 257
    Top = 52
    Width = 8
    Height = 13
    Caption = '%'
  end
  object Panel3: TPanel
    Left = 0
    Top = 156
    Width = 735
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 4
    object BitBtn4: TBitBtn
      Left = 350
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F10) Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 251
      Top = 5
      Width = 98
      Height = 25
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 20
    Width = 581
    Height = 21
    DataField = 'NOME'
    DataSource = DMCadParametros.dsFolhaEncargos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 44
    Width = 145
    Height = 21
    DataField = 'VALOR_PERC'
    DataSource = DMCadParametros.dsFolhaEncargos
    TabOrder = 1
  end
  object RxDBComboBox1: TRxDBComboBox
    Left = 104
    Top = 68
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'SIMPLES'
    DataSource = DMCadParametros.dsFolhaEncargos
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'SIMPLES'
      'GERAL')
    TabOrder = 2
    Values.Strings = (
      'S'
      'G')
  end
  object RxDBComboBox2: TRxDBComboBox
    Left = 104
    Top = 92
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'HORISTA'
    DataSource = DMCadParametros.dsFolhaEncargos
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'HORISTA'
      'MESNALISTA')
    TabOrder = 3
    Values.Strings = (
      'S'
      'G')
  end
end
