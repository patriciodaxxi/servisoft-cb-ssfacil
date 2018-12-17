object frmCadNotaFiscal_Copia: TfrmCadNotaFiscal_Copia
  Left = 207
  Top = 146
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Copiar Nota'
  ClientHeight = 312
  ClientWidth = 605
  Color = clMoneyGreen
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
    Left = 48
    Top = 8
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 8
    Top = 13
    Width = 144
    Height = 13
    Caption = 'N'#186' Nota Origem da C'#243'pa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 265
    Top = 13
    Width = 34
    Height = 13
    Caption = 'S'#233'rie:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 57
    Top = 219
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'CFOP:'
  end
  object Label5: TLabel
    Left = 43
    Top = 241
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Varia'#231#227'o:'
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 153
    Top = 5
    Width = 97
    Height = 21
    TabStop = False
    AutoSize = False
    Color = clSilver
    Ctl3D = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 298
    Top = 7
    Width = 65
    Height = 19
    TabStop = False
    CharCase = ecUpperCase
    Color = clSilver
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object btnCopiar: TBitBtn
    Left = 92
    Top = 270
    Width = 88
    Height = 28
    Caption = 'Copiar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnCopiarClick
  end
  object btnCancelar: TBitBtn
    Left = 180
    Top = 270
    Width = 88
    Height = 28
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnCancelarClick
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 92
    Top = 211
    Width = 340
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    LookupField = 'ID'
    LookupDisplay = 'CODCFOP;NOME'
    LookupSource = DMCadNotaFiscal.dsCFOP
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 32
    Top = 152
    Width = 402
    Height = 51
    BevelOuter = bvNone
    Color = clMoneyGreen
    TabOrder = 0
    OnExit = Panel1Exit
    object lblOperacao: TLabel
      Left = 6
      Top = 11
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = 'Opera'#231#227'o:'
    end
    object Label22: TLabel
      Left = 21
      Top = 33
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object rxdbOperacao: TRxDBLookupCombo
      Left = 60
      Top = 3
      Width = 340
      Height = 21
      DropDownCount = 8
      DropDownWidth = 500
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadNotaFiscal.dsOperacao_Nota
      TabOrder = 0
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 60
      Top = 25
      Width = 340
      Height = 21
      DropDownCount = 15
      DropDownWidth = 500
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME;CNPJ_CPF'
      LookupSource = DMCadNotaFiscal.dsCliente
      TabOrder = 1
      OnEnter = RxDBLookupCombo3Enter
    end
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 92
    Top = 233
    Width = 340
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    LookupField = 'ITEM'
    LookupDisplay = 'NOME'
    LookupSource = DMCadNotaFiscal.dsCFOP_Variacao
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 464
    Top = 160
    Width = 132
    Height = 73
    Caption = ' Excluir '
    TabOrder = 7
    Visible = False
    object ckExcluir_Duplicatas: TCheckBox
      Left = 10
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Duplicatas'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object ckExcluir_Comissao: TCheckBox
      Left = 10
      Top = 48
      Width = 97
      Height = 17
      Caption = 'Comiss'#227'o'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 32
    Top = 48
    Width = 561
    Height = 73
    Caption = ' Op'#231#245'es '
    Columns = 2
    Items.Strings = (
      'Copiar Nota (usando regra da nova nota)'
      'Fazer Nota Entrada (Cancelamento)'
      'Nota Triangular'
      'Copiar Nota Igual (Impostos da nota anterior)')
    TabOrder = 8
    OnClick = RadioGroup1Click
    OnExit = RadioGroup1Exit
  end
end
