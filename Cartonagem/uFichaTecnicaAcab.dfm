object fFichaTecnicaAcab: TfFichaTecnicaAcab
  Left = 395
  Top = 404
  Width = 601
  Height = 303
  Caption = 'fFichaTecnicaAcab'
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
  object Label1: TLabel
    Left = 96
    Top = 84
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'Item:'
  end
  object Label2: TLabel
    Left = 105
    Top = 60
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'ID:'
  end
  object Label3: TLabel
    Left = 78
    Top = 108
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Posi'#231#227'o:'
  end
  object Label4: TLabel
    Left = 56
    Top = 132
    Width = 63
    Height = 13
    Alignment = taRightJustify
    Caption = 'Acabamento:'
  end
  object Label5: TLabel
    Left = 78
    Top = 156
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Posi'#231#227'o:'
  end
  object Label6: TLabel
    Left = 55
    Top = 205
    Width = 64
    Height = 13
    Alignment = taRightJustify
    Caption = 'Comprimento:'
  end
  object Label7: TLabel
    Left = 80
    Top = 229
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Largura:'
  end
  object Label8: TLabel
    Left = 61
    Top = 180
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Alinhamento'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 30
    Align = alTop
    Color = clTeal
    TabOrder = 8
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
  end
  object DBEdit8: TDBEdit
    Left = 128
    Top = 52
    Width = 113
    Height = 21
    TabStop = False
    DataField = 'ID'
    DataSource = dmFichaTecnica.dsAcabamentoFD
    TabOrder = 0
  end
  object RxDBComboBox8: TRxDBComboBox
    Left = 128
    Top = 100
    Width = 225
    Height = 21
    Style = csDropDownList
    DataField = 'POSICAO'
    DataSource = dmFichaTecnica.dsAcabamentoFD
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'Fundo'
      'Tampa'
      'Suporte')
    TabOrder = 2
    TabStop = False
    Values.Strings = (
      'FD'
      'TP'
      'SP')
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 76
    Width = 113
    Height = 21
    TabStop = False
    DataField = 'ITEM'
    DataSource = dmFichaTecnica.dsAcabamentoFD
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 128
    Top = 221
    Width = 113
    Height = 21
    DataField = 'LARGURA'
    DataSource = dmFichaTecnica.dsAcabamentoFD
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 128
    Top = 197
    Width = 113
    Height = 21
    DataField = 'COMPRIMENTO'
    DataSource = dmFichaTecnica.dsAcabamentoFD
    TabOrder = 6
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 128
    Top = 125
    Width = 321
    Height = 21
    DropDownCount = 15
    DataField = 'ACAB_ID'
    DataSource = dmFichaTecnica.dsAcabamentoFD
    LookupField = 'ID'
    LookupDisplay = 'DESCRICAO'
    LookupSource = dmFichaTecnica.dsCartoAcabamento
    TabOrder = 3
    OnEnter = RxDBLookupCombo1Enter
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 128
    Top = 149
    Width = 321
    Height = 21
    DropDownCount = 15
    DataField = 'ACAB_POSICAO_ID'
    DataSource = dmFichaTecnica.dsAcabamentoFD
    LookupField = 'ID'
    LookupDisplay = 'DESCRICAO'
    LookupSource = dmFichaTecnica.dsAcabPosicao
    TabOrder = 4
    OnEnter = RxDBLookupCombo2Enter
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 128
    Top = 173
    Width = 321
    Height = 21
    DropDownCount = 15
    DataField = 'ALINHAMENTO_ID'
    DataSource = dmFichaTecnica.dsAcabamentoFD
    LookupField = 'ID'
    LookupDisplay = 'DESCRICAO'
    LookupSource = dmFichaTecnica.dsAlinhamento
    TabOrder = 5
    OnEnter = RxDBLookupCombo2Enter
  end
end
