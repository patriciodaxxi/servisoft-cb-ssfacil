object frmCadPedidoLoja_Difal: TfrmCadPedidoLoja_Difal
  Left = 346
  Top = 93
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadPedidoLoja_Difal'
  ClientHeight = 353
  ClientWidth = 310
  Color = 16769476
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
  object Label28: TLabel
    Left = 50
    Top = 30
    Width = 60
    Height = 13
    Alignment = taRightJustify
    Caption = '% Desconto:'
  end
  object Label27: TLabel
    Left = 43
    Top = 48
    Width = 67
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vlr. Desconto:'
  end
  object btnFechar: TNxButton
    Left = 193
    Top = 317
    Width = 101
    Height = 28
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    GlyphSpacing = 5
    ParentFont = False
    TabOrder = 0
    Transparent = True
    OnClick = btnFecharClick
  end
  object gbxIcms: TGroupBox
    Left = 56
    Top = 80
    Width = 235
    Height = 59
    Caption = ' ICMS Geral '
    Enabled = False
    TabOrder = 1
    object Label29: TLabel
      Left = 92
      Top = 18
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Base:'
    end
    object Label40: TLabel
      Left = 44
      Top = 36
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor:'
    end
    object DBEdit13: TDBEdit
      Left = 121
      Top = 12
      Width = 98
      Height = 19
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'BASE_ICMS'
      DataSource = DMCadPedido.dsPedido
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit15: TDBEdit
      Left = 121
      Top = 30
      Width = 98
      Height = 19
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'VLR_ICMS'
      DataSource = DMCadPedido.dsPedido
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object gbxSubstituicao: TGroupBox
    Left = 56
    Top = 147
    Width = 235
    Height = 55
    Caption = ' ICMS Subst. '
    Enabled = False
    TabOrder = 2
    object Label46: TLabel
      Left = 93
      Top = 20
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Base:'
    end
    object Label53: TLabel
      Left = 93
      Top = 36
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor:'
    end
    object DBEdit18: TDBEdit
      Left = 122
      Top = 12
      Width = 98
      Height = 19
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'BASE_ICMSSUBST'
      DataSource = DMCadPedido.dsPedido
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit33: TDBEdit
      Left = 122
      Top = 30
      Width = 98
      Height = 19
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'VLR_ICMSSUBST'
      DataSource = DMCadPedido.dsPedido
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object DBEdit10: TDBEdit
    Left = 114
    Top = 22
    Width = 150
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'PERC_DESCONTO'
    DataSource = DMCadPedido.dsPedido
    MaxLength = 18
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit9: TDBEdit
    Left = 114
    Top = 40
    Width = 150
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'VLR_DESCONTO'
    DataSource = DMCadPedido.dsPedido
    MaxLength = 18
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 56
    Top = 206
    Width = 235
    Height = 97
    Caption = ' Vlr. ICMS UF Destino '
    Enabled = False
    TabOrder = 5
    object Label96: TLabel
      Left = 20
      Top = 28
      Width = 105
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fundo Comb.Pobreza:'
    end
    object Label97: TLabel
      Left = 36
      Top = 46
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. ICMS UF Dest:'
    end
    object Label98: TLabel
      Left = 27
      Top = 64
      Width = 98
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. ICMS UF Remet:'
    end
    object DBEdit56: TDBEdit
      Left = 128
      Top = 22
      Width = 91
      Height = 19
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'VLR_ICMS_FCP'
      DataSource = DMCadPedido.dsPedido
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit57: TDBEdit
      Left = 128
      Top = 40
      Width = 91
      Height = 19
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'VLR_ICMS_UF_DEST'
      DataSource = DMCadPedido.dsPedido
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit58: TDBEdit
      Left = 128
      Top = 58
      Width = 91
      Height = 19
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'VLR_ICMS_UF_REMET'
      DataSource = DMCadPedido.dsPedido
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
  end
end
