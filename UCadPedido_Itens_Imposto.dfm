object frmCadPedido_Itens_Imposto: TfrmCadPedido_Itens_Imposto
  Left = 214
  Top = 248
  Width = 696
  Height = 258
  Caption = 'frmCadPedido_Itens_Imposto'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 193
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label11: TLabel
      Left = 18
      Top = 47
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'CST ICMS:'
    end
    object Label12: TLabel
      Left = 31
      Top = 71
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'CST IPI:'
    end
    object Label13: TLabel
      Left = 11
      Top = 104
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = '% Desconto:'
    end
    object Label14: TLabel
      Left = 7
      Top = 128
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Desconto:'
    end
    object Label33: TLabel
      Left = 350
      Top = 50
      Width = 105
      Height = 13
      Alignment = taRightJustify
      Caption = '% C'#225'lculo Base ICMS:'
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 72
      Top = 39
      Width = 249
      Height = 21
      DropDownCount = 8
      DropDownWidth = 500
      DataField = 'ID_CSTICMS'
      DataSource = DMCadPedido.dsPedido_Itens
      LookupField = 'ID'
      LookupDisplay = 'COD_CST;PERCENTUAL'
      LookupSource = DMCadPedido.dsTab_CSTICMS
      TabOrder = 0
      OnEnter = RxDBLookupCombo4Enter
      OnExit = RxDBLookupCombo4Exit
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 72
      Top = 63
      Width = 249
      Height = 21
      DropDownCount = 8
      DropDownWidth = 500
      DataField = 'ID_CSTIPI'
      DataSource = DMCadPedido.dsPedido_Itens
      LookupField = 'ID'
      LookupDisplay = 'COD_IPI;NOME'
      LookupSource = DMCadPedido.dsTab_CSTIPI
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 72
      Top = 96
      Width = 94
      Height = 21
      DataField = 'PERC_DESCONTO'
      DataSource = DMCadPedido.dsPedido_Itens
      TabOrder = 2
      OnExit = DBEdit5Exit
    end
    object DBEdit6: TDBEdit
      Left = 72
      Top = 120
      Width = 94
      Height = 21
      DataField = 'VLR_DESCONTO'
      DataSource = DMCadPedido.dsPedido_Itens
      TabOrder = 3
      OnEnter = DBEdit6Enter
      OnExit = DBEdit6Exit
    end
    object DBEdit14: TDBEdit
      Left = 458
      Top = 42
      Width = 74
      Height = 21
      TabStop = False
      DataField = 'PERC_TRIBICMS'
      DataSource = DMCadPedido.dsPedido_Itens
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 193
    Width = 688
    Height = 34
    Align = alBottom
    Color = clMoneyGreen
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 280
      Top = 4
      Width = 121
      Height = 25
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
