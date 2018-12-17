object frmCadExtComissao_Pag: TfrmCadExtComissao_Pag
  Left = 378
  Top = 148
  BorderStyle = bsSingle
  Caption = 'Pagamento da Comiss'#227'o'
  ClientHeight = 262
  ClientWidth = 585
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 90
    Top = 133
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor:'
  end
  object Label4: TLabel
    Left = 46
    Top = 155
    Width = 71
    Height = 13
    Alignment = taRightJustify
    Caption = 'Dt.Pagamento:'
  end
  object Label5: TLabel
    Left = 76
    Top = 177
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Dt.Base:'
  end
  object Label6: TLabel
    Left = 86
    Top = 66
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Conta:'
  end
  object Label7: TLabel
    Left = 13
    Top = 88
    Width = 104
    Height = 13
    Alignment = taRightJustify
    Caption = 'Forma de Pagamento:'
  end
  object Label8: TLabel
    Left = 95
    Top = 199
    Width = 22
    Height = 13
    Caption = 'Obs:'
  end
  object lblContaOrcamento: TLabel
    Left = 31
    Top = 111
    Width = 86
    Height = 13
    Caption = 'Conta Or'#231'amento:'
    Visible = False
  end
  object lblPesquisa: TLabel
    Left = 506
    Top = 124
    Width = 64
    Height = 13
    Caption = 'F2 - Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 44
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 416
      Top = 8
      Width = 58
      Height = 13
      Caption = 'Vlr. '#224' Pagar:'
      Color = clWhite
      ParentColor = False
    end
    object DBText1: TDBText
      Left = 478
      Top = 8
      Width = 91
      Height = 13
      Color = clWhite
      DataField = 'Vlr_Comissao'
      DataSource = DMCadExtComissao.dsmExtComissao_Red
      ParentColor = False
    end
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
      Color = clWhite
      ParentColor = False
    end
    object DBText2: TDBText
      Left = 62
      Top = 8
      Width = 350
      Height = 13
      Color = clWhite
      DataField = 'NomeVendedor'
      DataSource = DMCadExtComissao.dsmExtComissao_Red
      ParentColor = False
    end
    object Label9: TLabel
      Left = 34
      Top = 25
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
      Color = clWhite
      ParentColor = False
    end
    object Label10: TLabel
      Left = 62
      Top = 25
      Width = 350
      Height = 13
      AutoSize = False
      Color = clWhite
      ParentColor = False
    end
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 121
    Top = 125
    Width = 90
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 4
  end
  object DateEdit1: TDateEdit
    Left = 121
    Top = 147
    Width = 90
    Height = 21
    NumGlyphs = 2
    TabOrder = 5
  end
  object DateEdit2: TDateEdit
    Left = 121
    Top = 169
    Width = 90
    Height = 21
    NumGlyphs = 2
    TabOrder = 6
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 121
    Top = 58
    Width = 449
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DMCadExtComissao.dsContas
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 229
    Width = 585
    Height = 33
    Align = alBottom
    TabOrder = 8
    TabStop = True
    object BitBtn1: TBitBtn
      Left = 208
      Top = 4
      Width = 81
      Height = 25
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 289
      Top = 4
      Width = 81
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 121
    Top = 80
    Width = 449
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DMCadExtComissao.dsTipoCobranca
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 121
    Top = 191
    Width = 449
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 250
    TabOrder = 7
  end
  object dbedtContaOrc: TDBEdit
    Left = 121
    Top = 103
    Width = 88
    Height = 21
    DataField = 'ID_CONTA_ORC'
    DataSource = DMCadExtComissao.dsExtComissao
    TabOrder = 3
    Visible = False
    OnEnter = dbedtContaOrcEnter
    OnExit = dbedtContaOrcExit
    OnKeyDown = dbedtContaOrcKeyDown
  end
  object edtNome: TEdit
    Left = 210
    Top = 103
    Width = 360
    Height = 21
    TabStop = False
    Color = clSilver
    TabOrder = 9
    Visible = False
  end
end
