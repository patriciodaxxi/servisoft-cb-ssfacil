object frmCadProduto_UF: TfrmCadProduto_UF
  Left = 279
  Top = 258
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro da UF'
  ClientHeight = 197
  ClientWidth = 766
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 163
    Width = 766
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 393
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
      Left = 294
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 163
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label4: TLabel
      Left = 69
      Top = 73
      Width = 80
      Height = 13
      Alignment = taRightJustify
      Caption = '% ICMS (Venda):'
    end
    object Label10: TLabel
      Left = 132
      Top = 29
      Width = 17
      Height = 13
      Alignment = taRightJustify
      Caption = 'UF:'
    end
    object Label1: TLabel
      Left = 50
      Top = 95
      Width = 99
      Height = 13
      Alignment = taRightJustify
      Caption = '% ICMS Interno (ST):'
    end
    object Label2: TLabel
      Left = 296
      Top = 94
      Width = 322
      Height = 13
      Caption = '==> '#201' usado para calcular o ICMS Pr'#243'prio quando o produto tem ST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 74
      Top = 117
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = '% Redu'#231#227'o ST:'
    end
    object Label5: TLabel
      Left = 296
      Top = 116
      Width = 368
      Height = 13
      Caption = 
        '==> Quando o produto possuir Redu'#231#227'o na base do ICMS para c'#225'lcul' +
        'o da ST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 296
      Top = 70
      Width = 409
      Height = 13
      Caption = 
        '==> '#201' usado nas vendas para calcular o Valor do ICMS que vai ser' +
        ' destacado na nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 297
      Top = 25
      Width = 141
      Height = 13
      Caption = '==> UF de destino do produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 35
      Top = 140
      Width = 114
      Height = 13
      Alignment = taRightJustify
      Caption = '% Redu'#231#227'o Base ICMS:'
    end
    object Label9: TLabel
      Left = 296
      Top = 139
      Width = 276
      Height = 13
      Caption = '==> Quando o produto possuir Redu'#231#227'o na Base do ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 96
      Top = 51
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'CST ICMS:'
    end
    object DBEdit2: TDBEdit
      Left = 150
      Top = 65
      Width = 138
      Height = 21
      DataField = 'PERC_ICMS'
      DataSource = dmCadProduto.dsProduto_UF
      TabOrder = 2
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 150
      Top = 21
      Width = 139
      Height = 21
      DropDownCount = 8
      DataField = 'UF'
      DataSource = dmCadProduto.dsProduto_UF
      LookupField = 'UF'
      LookupDisplay = 'UF'
      LookupSource = dmCadProduto.dsUF
      TabOrder = 0
      OnExit = RxDBLookupCombo1Exit
    end
    object DBEdit1: TDBEdit
      Left = 150
      Top = 87
      Width = 138
      Height = 21
      DataField = 'PERC_ICMS_INTERNO'
      DataSource = dmCadProduto.dsProduto_UF
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 150
      Top = 109
      Width = 138
      Height = 21
      DataField = 'PERC_REDUCAO_ST'
      DataSource = dmCadProduto.dsProduto_UF
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 150
      Top = 132
      Width = 138
      Height = 21
      DataField = 'PERC_REDUCAO_ICMS'
      DataSource = dmCadProduto.dsProduto_UF
      TabOrder = 5
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 150
      Top = 43
      Width = 139
      Height = 21
      DropDownCount = 8
      DataField = 'ID_CST_ICMS'
      DataSource = dmCadProduto.dsProduto_UF
      LookupField = 'ID'
      LookupDisplay = 'COD_CST'
      LookupSource = dmCadProduto.dsCSTICMS
      TabOrder = 1
      OnExit = RxDBLookupCombo1Exit
    end
  end
end
