object frmCadProduto_Comb_AltCor: TfrmCadProduto_Comb_AltCor
  Left = 306
  Top = 199
  Width = 753
  Height = 128
  BorderIcons = [biSystemMenu]
  Caption = 'Alterar Cor'
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
  object Panel3: TPanel
    Left = 0
    Top = 61
    Width = 745
    Height = 36
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 340
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
      Left = 241
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
    Width = 745
    Height = 61
    Align = alClient
    Color = 12713860
    TabOrder = 0
    object Label1: TLabel
      Left = 122
      Top = 40
      Width = 27
      Height = 14
      Alignment = taRightJustify
      Caption = 'Cor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 106
      Top = 7
      Width = 40
      Height = 13
      Caption = 'Material:'
    end
    object DBText1: TDBText
      Left = 150
      Top = 6
      Width = 531
      Height = 15
      DataField = 'clNome_Material'
      DataSource = dmCadProduto.dsProduto_Comb_Mat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 152
      Top = 33
      Width = 361
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'ID_COR'
      DataSource = dmCadProduto.dsProduto_Comb_Mat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      LookupField = 'ID_COR_COMBINACAO'
      LookupDisplay = 'NOME_COR_COMBINACAO'
      LookupSource = dmCadProduto.dsMaterial_Cor
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
  end
end
