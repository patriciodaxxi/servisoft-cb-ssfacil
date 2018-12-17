object frmRecebeXML_AlteraItem: TfrmRecebeXML_AlteraItem
  Left = 282
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Alterar Item'
  ClientHeight = 432
  ClientWidth = 537
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
  object Label2: TLabel
    Left = 104
    Top = 365
    Width = 296
    Height = 16
    Alignment = taRightJustify
    Caption = 'Informe a qtde. da unid.medida do estoque (PCT):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 17
    Top = 266
    Width = 351
    Height = 13
    Alignment = taRightJustify
    Caption = 'Unidade digitada na nota '#233' diferente do cadastro de produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 14
    Top = 300
    Width = 290
    Height = 52
    Caption = 
      'Lembrando que o sistema sempre vai multiplicar o valor '#13#10'que for' +
      ' informado no campo abaixo, '#13#10'    vai multiplicar o campo inform' +
      'ado a abaixo pela quantidade'#13#10'    que foi informada no item da n' +
      'ota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 46
    Top = 104
    Width = 40
    Height = 13
    Caption = '% ICMS:'
  end
  object Label7: TLabel
    Left = 199
    Top = 104
    Width = 47
    Height = 13
    Caption = 'Vlr. ICMS:'
  end
  object Label8: TLabel
    Left = 34
    Top = 128
    Width = 52
    Height = 13
    Caption = 'Base Icms:'
  end
  object Label9: TLabel
    Left = 24
    Top = 152
    Width = 62
    Height = 13
    Caption = 'Sit.Tribut'#225'ria:'
  end
  object Label10: TLabel
    Left = 55
    Top = 22
    Width = 31
    Height = 13
    Caption = 'CFOP:'
  end
  object Label11: TLabel
    Left = 58
    Top = 176
    Width = 27
    Height = 13
    Caption = '% IPI:'
  end
  object Label12: TLabel
    Left = 53
    Top = 200
    Width = 32
    Height = 13
    Caption = 'Vlr. Ipi:'
  end
  object Label13: TLabel
    Left = 352
    Top = 296
    Width = 64
    Height = 13
    Caption = 'Unid. Interna:'
  end
  object DBText1: TDBText
    Left = 420
    Top = 296
    Width = 65
    Height = 12
    DataField = 'UnidadeInterno'
    DataSource = DMRecebeXML.dsmItensNota
  end
  object Label14: TLabel
    Left = 362
    Top = 320
    Width = 54
    Height = 13
    Caption = 'Unid. Nota:'
  end
  object DBText2: TDBText
    Left = 420
    Top = 320
    Width = 65
    Height = 12
    DataField = 'Unidade'
    DataSource = DMRecebeXML.dsmItensNota
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 402
    Top = 362
    Width = 121
    Height = 21
    AutoSize = False
    DecimalPlaces = 5
    DisplayFormat = '0.00000'
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 0
    Top = 398
    Width = 537
    Height = 34
    Align = alBottom
    TabOrder = 6
    object BitBtn1: TBitBtn
      Left = 208
      Top = 6
      Width = 75
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
      Left = 282
      Top = 6
      Width = 75
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
  object CurrencyEdit2: TCurrencyEdit
    Left = 88
    Top = 96
    Width = 100
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 1
  end
  object CurrencyEdit3: TCurrencyEdit
    Left = 248
    Top = 96
    Width = 100
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '0.000#'
    TabOrder = 2
  end
  object CurrencyEdit4: TCurrencyEdit
    Left = 88
    Top = 120
    Width = 100
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '0.000#'
    TabOrder = 3
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 88
    Top = 144
    Width = 102
    Height = 21
    DropDownCount = 8
    DropDownWidth = 300
    ListStyle = lsDelimited
    LookupField = 'ID'
    LookupDisplay = 'COD_CST;PERCENTUAL'
    LookupSource = DMRecebeXML.dsTab_CSTICMS
    TabOrder = 4
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 88
    Top = 16
    Width = 100
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    LookupField = 'ID'
    LookupDisplay = 'CODCFOP;NOME'
    LookupSource = DMRecebeXML.dsCFOP
    TabOrder = 0
  end
  object CurrencyEdit5: TCurrencyEdit
    Left = 88
    Top = 168
    Width = 100
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '0.000#'
    TabOrder = 7
  end
  object CurrencyEdit6: TCurrencyEdit
    Left = 88
    Top = 192
    Width = 100
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '0.000#'
    TabOrder = 8
  end
end
