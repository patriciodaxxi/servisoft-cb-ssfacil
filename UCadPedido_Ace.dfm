object frmCadPedido_Ace: TfrmCadPedido_Ace
  Left = 334
  Top = 202
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadPedido_Ace'
  ClientHeight = 253
  ClientWidth = 684
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
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 684
    Height = 219
    ActivePage = TS_Trilhos
    Align = alClient
    BackgroundColor = 8404992
    BoldCurrentTab = True
    UseColoredTabs = True
    ParentBackgroundColor = False
    ShowShadow = False
    TabIndex = 0
    TabOrder = 0
    TextColors.DisabledShadow = clActiveCaption
    TextColors.Selected = 8404992
    FixedDimension = 19
    object TS_Trilhos: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Trilhos / Divisores / Puxadores'
      object Label28: TLabel
        Left = 52
        Top = 24
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Descri'#231#227'o:'
      end
      object Label33: TLabel
        Left = 520
        Top = 24
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'Item:'
      end
      object Label34: TLabel
        Left = 39
        Top = 52
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Comprimento:'
      end
      object Label35: TLabel
        Left = 83
        Top = 70
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtd.'
      end
      object Label36: TLabel
        Left = 46
        Top = 97
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr. Unit'#225'rio:'
      end
      object Label37: TLabel
        Left = 58
        Top = 115
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr. Total:'
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 104
        Top = 16
        Width = 361
        Height = 21
        DropDownCount = 8
        Ctl3D = False
        DataField = 'ID_PRODUTO'
        DataSource = DMCadPedido.dsPedido_Ace
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DMCadPedido.dsAcessorios
        ParentCtl3D = False
        TabOrder = 0
        OnExit = RxDBLookupCombo1Exit
      end
      object DBEdit29: TDBEdit
        Left = 545
        Top = 16
        Width = 57
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'ITEM'
        DataSource = DMCadPedido.dsPedido_Ace
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit30: TDBEdit
        Left = 104
        Top = 44
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'COMPRIMENTO_VOLUME'
        DataSource = DMCadPedido.dsPedido_Ace
        ParentCtl3D = False
        TabOrder = 2
        OnExit = DBEdit30Exit
      end
      object DBEdit31: TDBEdit
        Left = 104
        Top = 62
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'QTD'
        DataSource = DMCadPedido.dsPedido_Ace
        ParentCtl3D = False
        TabOrder = 3
        OnExit = DBEdit31Exit
      end
      object DBEdit32: TDBEdit
        Left = 104
        Top = 89
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'VLR_UNITARIO'
        DataSource = DMCadPedido.dsPedido_Ace
        ParentCtl3D = False
        TabOrder = 4
        OnExit = DBEdit32Exit
      end
      object DBEdit33: TDBEdit
        Left = 104
        Top = 107
        Width = 81
        Height = 19
        Color = clSilver
        Ctl3D = False
        DataField = 'VLR_TOTAL'
        DataSource = DMCadPedido.dsPedido_Ace
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
    end
    object TS_Roldanas: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Roldanas / Acess'#243'rios'
      object Label1: TLabel
        Left = 52
        Top = 24
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Descri'#231#227'o:'
      end
      object Label2: TLabel
        Left = 520
        Top = 24
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'Item:'
      end
      object Label3: TLabel
        Left = 65
        Top = 52
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Volume:'
      end
      object Label4: TLabel
        Left = 83
        Top = 70
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtd.'
      end
      object Label5: TLabel
        Left = 46
        Top = 97
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr. Unit'#225'rio:'
      end
      object Label6: TLabel
        Left = 58
        Top = 115
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr. Total:'
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 104
        Top = 16
        Width = 361
        Height = 21
        DropDownCount = 8
        Ctl3D = False
        DataField = 'ID_PRODUTO'
        DataSource = DMCadPedido.dsPedido_Rol
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DMCadPedido.dsAcessorios
        ParentCtl3D = False
        TabOrder = 0
        OnExit = RxDBLookupCombo2Exit
      end
      object DBEdit1: TDBEdit
        Left = 545
        Top = 16
        Width = 57
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'ITEM'
        DataSource = DMCadPedido.dsPedido_Rol
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 104
        Top = 44
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'COMPRIMENTO_VOLUME'
        DataSource = DMCadPedido.dsPedido_Rol
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 104
        Top = 62
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'QTD'
        DataSource = DMCadPedido.dsPedido_Rol
        ParentCtl3D = False
        TabOrder = 3
        OnExit = DBEdit3Exit
      end
      object DBEdit4: TDBEdit
        Left = 104
        Top = 89
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'VLR_UNITARIO'
        DataSource = DMCadPedido.dsPedido_Rol
        ParentCtl3D = False
        TabOrder = 4
        OnExit = DBEdit4Exit
      end
      object DBEdit5: TDBEdit
        Left = 104
        Top = 107
        Width = 81
        Height = 19
        Color = clSilver
        Ctl3D = False
        DataField = 'VLR_TOTAL'
        DataSource = DMCadPedido.dsPedido_Rol
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 219
    Width = 684
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 337
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
      Left = 238
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
end
