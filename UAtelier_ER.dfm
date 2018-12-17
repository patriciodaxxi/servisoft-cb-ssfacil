object frmAtelier_ER: TfrmAtelier_ER
  Left = 174
  Top = 195
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Consulta Movimento Atelier'
  ClientHeight = 210
  ClientWidth = 602
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 70
    Width = 602
    Height = 99
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label5: TLabel
      Left = 71
      Top = 31
      Width = 79
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Envio Atelier:'
    end
    object Label9: TLabel
      Left = 118
      Top = 9
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Atelier:'
    end
    object Label7: TLabel
      Left = 60
      Top = 51
      Width = 90
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Retorno Atelier:'
    end
    object Label1: TLabel
      Left = 61
      Top = 77
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Unit'#225'rio Atelier:'
    end
    object DateEdit1: TDateEdit
      Left = 151
      Top = 23
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 1
    end
    object DateEdit3: TDateEdit
      Left = 151
      Top = 45
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 2
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 151
      Top = 1
      Width = 377
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMCadAtelier_Mov.dsAtelier
      TabOrder = 0
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 151
      Top = 67
      Width = 100
      Height = 21
      AutoSize = False
      DisplayFormat = '0.00'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 169
    Width = 602
    Height = 41
    Align = alBottom
    Color = clMoneyGreen
    TabOrder = 1
    object btnConfBaixa: TBitBtn
      Left = 110
      Top = 7
      Width = 185
      Height = 25
      Caption = 'Confirmar Envio/Retorno (Atelier)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfBaixaClick
    end
    object BitBtn1: TBitBtn
      Left = 295
      Top = 7
      Width = 185
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 602
    Height = 70
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 2
    object Label2: TLabel
      Left = 12
      Top = 8
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pedido:'
    end
    object DBText1: TDBText
      Left = 51
      Top = 8
      Width = 198
      Height = 12
      DataField = 'PEDIDO_CLIENTE'
      DataSource = DMCadAtelier_Mov.dsConsulta
    end
    object Label3: TLabel
      Left = 297
      Top = 8
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Item:'
    end
    object DBText2: TDBText
      Left = 323
      Top = 8
      Width = 62
      Height = 12
      DataField = 'ITEM'
      DataSource = DMCadAtelier_Mov.dsConsulta
    end
    object DBText3: TDBText
      Left = 459
      Top = 8
      Width = 62
      Height = 12
      DataField = 'QTD'
      DataSource = DMCadAtelier_Mov.dsConsulta
    end
    object Label4: TLabel
      Left = 436
      Top = 8
      Width = 20
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd:'
    end
    object Label6: TLabel
      Left = 8
      Top = 23
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto:'
    end
    object DBText4: TDBText
      Left = 51
      Top = 23
      Width = 510
      Height = 12
      DataField = 'NOMEPRODUTO'
      DataSource = DMCadAtelier_Mov.dsConsulta
    end
    object Label8: TLabel
      Left = 13
      Top = 37
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object DBText5: TDBText
      Left = 51
      Top = 37
      Width = 510
      Height = 12
      DataField = 'NOME_CLIENTE'
      DataSource = DMCadAtelier_Mov.dsConsulta
    end
    object Label10: TLabel
      Left = 16
      Top = 51
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Atelier:'
    end
    object DBText6: TDBText
      Left = 51
      Top = 51
      Width = 510
      Height = 12
      DataField = 'NOME_ATELIER'
      DataSource = DMCadAtelier_Mov.dsConsulta
    end
  end
end
