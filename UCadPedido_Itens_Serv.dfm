object frmCadPedido_Itens_Serv: TfrmCadPedido_Itens_Serv
  Left = 337
  Top = 202
  Width = 695
  Height = 213
  BorderIcons = [biSystemMenu]
  Caption = 'frmCadPedido_Itens_Serv'
  Color = 16777156
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
    Left = 24
    Top = 16
    Width = 74
    Height = 13
    Alignment = taRightJustify
    Caption = 'Descri'#231#227'o Item:'
  end
  object Label38: TLabel
    Left = 11
    Top = 35
    Width = 87
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#186' OS Servi'#231'o Int:'
  end
  object Label37: TLabel
    Left = 23
    Top = 104
    Width = 75
    Height = 13
    Alignment = taRightJustify
    Caption = 'Servi'#231'o Interno:'
  end
  object Label2: TLabel
    Left = 22
    Top = 84
    Width = 76
    Height = 13
    Alignment = taRightJustify
    Caption = 'Servi'#231'o Padr'#227'o:'
  end
  object Label44: TLabel
    Left = 57
    Top = 52
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#186' Nota:'
  end
  object Label45: TLabel
    Left = 218
    Top = 52
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'S'#233'rie:'
  end
  object DBEdit16: TDBEdit
    Left = 101
    Top = 10
    Width = 558
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'NOMEPRODUTO'
    DataSource = DMCadPedido.dsPedido_Itens
    ParentCtl3D = False
    TabOrder = 0
    OnEnter = DBEdit16Enter
  end
  object DBEdit17: TDBEdit
    Left = 101
    Top = 28
    Width = 116
    Height = 19
    AutoSize = False
    Ctl3D = False
    DataField = 'NUM_OS_SERV'
    DataSource = DMCadPedido.dsPedido_Itens
    ParentCtl3D = False
    TabOrder = 1
  end
  object RxDBLookupCombo10: TRxDBLookupCombo
    Left = 101
    Top = 97
    Width = 558
    Height = 21
    DropDownCount = 15
    Ctl3D = False
    DataField = 'ID_SERVICO_INT'
    DataSource = DMCadPedido.dsPedido_Itens
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DMCadPedido.dsServico_Int
    ParentCtl3D = False
    TabOrder = 7
    OnEnter = RxDBLookupCombo10Enter
    OnExit = RxDBLookupCombo10Exit
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 101
    Top = 77
    Width = 558
    Height = 21
    DropDownCount = 15
    Ctl3D = False
    DataField = 'ID_SERVICO'
    DataSource = DMCadPedido.dsPedido_Itens
    LookupField = 'ID'
    LookupDisplay = 'NOME_SERVICO'
    LookupSource = DMCadPedido.dsServico
    ParentCtl3D = False
    TabOrder = 6
  end
  object Panel3: TPanel
    Left = 0
    Top = 148
    Width = 687
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 9
    object BitBtn1: TBitBtn
      Left = 306
      Top = 4
      Width = 98
      Height = 25
      Caption = 'Confirmar'
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
  object DBEdit1: TDBEdit
    Left = 477
    Top = 28
    Width = 182
    Height = 19
    AutoSize = False
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'NUMOS'
    DataSource = DMCadPedido.dsPedido_Itens
    ParentCtl3D = False
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 101
    Top = 117
    Width = 558
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'NOME_SERVICO_INT'
    DataSource = DMCadPedido.dsPedido_Itens
    ParentCtl3D = False
    TabOrder = 8
    OnEnter = DBEdit2Enter
  end
  object DBEdit19: TDBEdit
    Left = 101
    Top = 46
    Width = 116
    Height = 19
    Ctl3D = False
    DataField = 'NUM_NOTA_ENT'
    DataSource = DMCadPedido.dsPedido_Itens
    ParentCtl3D = False
    TabOrder = 4
  end
  object DBEdit20: TDBEdit
    Left = 248
    Top = 46
    Width = 49
    Height = 19
    Ctl3D = False
    DataField = 'SERIE_NOTA_ENT'
    DataSource = DMCadPedido.dsPedido_Itens
    ParentCtl3D = False
    TabOrder = 5
  end
  object RxDBComboBox1: TRxDBComboBox
    Left = 329
    Top = 28
    Width = 148
    Height = 21
    Style = csDropDownList
    DataField = 'TIPO_OS'
    DataSource = DMCadPedido.dsPedido_Itens
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#186' OC/OP/Rem:'
      'N'#186' OC:'
      'N'#186' OP:'
      'N'#186' Rem:')
    TabOrder = 2
    Values.Strings = (
      'GE'
      'OC'
      'OP'
      'RE')
  end
end
