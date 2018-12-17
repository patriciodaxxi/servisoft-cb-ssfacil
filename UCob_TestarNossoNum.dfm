object frmCob_TestarNossoNum: TfrmCob_TestarNossoNum
  Left = 241
  Top = 188
  Width = 790
  Height = 176
  Caption = 'frmCob_TestarNossoNum'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 774
    Height = 97
    Align = alClient
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 10
      Top = 16
      Width = 134
      Height = 13
      Caption = 'Pasta para gravar o arquivo:'
    end
    object Label3: TLabel
      Left = 44
      Top = 38
      Width = 100
      Height = 13
      Caption = 'Nosso n'#250'mero inicial:'
    end
    object Label4: TLabel
      Left = 451
      Top = 39
      Width = 147
      Height = 13
      Caption = 'Qtd. Nosso N'#250'mero para gerar:'
    end
    object BitBtn1: TBitBtn
      Left = 149
      Top = 58
      Width = 185
      Height = 26
      Caption = 'Gerar Nosso N'#250'mero para teste'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object DirectoryEdit2: TDirectoryEdit
      Left = 146
      Top = 8
      Width = 574
      Height = 21
      InitialDir = 'C:\'
      MultipleDirs = True
      NumGlyphs = 1
      TabOrder = 0
      Text = 'C:\'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 147
      Top = 30
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 1
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 600
      Top = 31
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 41
    Align = alTop
    Color = clSilver
    TabOrder = 1
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
    end
  end
end
