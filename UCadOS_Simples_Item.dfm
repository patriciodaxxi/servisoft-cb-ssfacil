object frmCadOS_Simples_Item: TfrmCadOS_Simples_Item
  Left = 415
  Top = 252
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadOS_Simples_Item'
  ClientHeight = 149
  ClientWidth = 660
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
    Top = 113
    Width = 660
    Height = 36
    Align = alBottom
    Color = 8404992
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 228
      Top = 6
      Width = 102
      Height = 25
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333377FF333333333000033334224333333333333
        337777FF333333330000333422224333333333333777777FF333333300003342
        2222243333333333777777777F333333000034222A22224333333337777F7777
        7F33333300003222A3A222433333333777F3F7777FF3333300003A2A333A2224
        333333377F333F7777FF3333000033A33333A22243333333F33333F7777FF333
        0000333333333A22243333333333333F7777FF3300003333333333A222433333
        33333333F7777F33000033333333333A22243333333333333F7777F300003333
        33333333A22243333333333333F7777F00003333333333333A22433333333333
        333F7773000033333333333333A22333333333333333F7730000333333333333
        333A33333333333333333F330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 331
      Top = 6
      Width = 102
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033337733333333333333333F333333333333
        0000333911733333973333333377F333333F3333000033391117333911733333
        37F37F333F77F33300003339111173911117333337F337F3F7337F3300003333
        911117111117333337F3337F733337F3000033333911111111733333337F3337
        3333F7330000333333911111173333333337F333333F73330000333333311111
        7333333333337F3333373333000033333339111173333333333337F333733333
        00003333339111117333333333333733337F3333000033333911171117333333
        33337333337F333300003333911173911173333333373337F337F33300003333
        9117333911173333337F33737F337F33000033333913333391113333337FF733
        37F337F300003333333333333919333333377333337FFF730000333333333333
        3333333333333333333777330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 660
    Height = 113
    Align = alClient
    TabOrder = 1
    object Label4: TLabel
      Left = 42
      Top = 57
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
    end
    object Label1: TLabel
      Left = 61
      Top = 21
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Servi'#231'o:'
    end
    object Label2: TLabel
      Left = 43
      Top = 75
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Unit'#225'rio:'
    end
    object Label3: TLabel
      Left = 55
      Top = 93
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Total:'
    end
    object Label5: TLabel
      Left = 49
      Top = 39
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o:'
    end
    object Label10: TLabel
      Left = 483
      Top = 17
      Width = 117
      Height = 13
      Caption = 'F5 para atualizar Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit4: TDBEdit
      Left = 104
      Top = 51
      Width = 100
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'QTD'
      DataSource = DMCadOrdemServico.dsOrdemServico_Simples
      ParentCtl3D = False
      TabOrder = 2
      OnExit = DBEdit4Exit
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 104
      Top = 13
      Width = 374
      Height = 21
      DropDownCount = 15
      DropDownWidth = 500
      Ctl3D = False
      DataField = 'ID_SERVICO'
      DataSource = DMCadOrdemServico.dsOrdemServico_Simples
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadOrdemServico.dsServico_Int
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = RxDBLookupCombo1Enter
      OnExit = RxDBLookupCombo1Exit
      OnKeyDown = RxDBLookupCombo1KeyDown
    end
    object DBEdit1: TDBEdit
      Left = 104
      Top = 69
      Width = 100
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'VLR_UNITARIO'
      DataSource = DMCadOrdemServico.dsOrdemServico_Simples
      ParentCtl3D = False
      TabOrder = 3
      OnExit = DBEdit4Exit
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 87
      Width = 100
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'VLR_TOTAL'
      DataSource = DMCadOrdemServico.dsOrdemServico_Simples
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 104
      Top = 33
      Width = 545
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'DESCRICAO'
      DataSource = DMCadOrdemServico.dsOrdemServico_Simples
      ParentCtl3D = False
      TabOrder = 1
    end
  end
end
