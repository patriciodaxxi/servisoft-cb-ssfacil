object frmCadContaOrc_Itens: TfrmCadContaOrc_Itens
  Left = 492
  Top = 227
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Valores'
  ClientHeight = 101
  ClientWidth = 237
  Color = 16765606
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
    Left = 64
    Top = 22
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ano:'
  end
  object Label2: TLabel
    Left = 59
    Top = 40
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor:'
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 16
    Width = 73
    Height = 19
    Ctl3D = False
    DataField = 'ANO'
    DataSource = dmCadContaOrc.dsContaOrc_Itens
    ParentCtl3D = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 34
    Width = 73
    Height = 19
    Ctl3D = False
    DataField = 'VALOR'
    DataSource = dmCadContaOrc.dsContaOrc_Itens
    ParentCtl3D = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 73
    Width = 237
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 2
    object btnConfirmar: TNxButton
      Left = 58
      Top = 3
      Width = 75
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TNxButton
      Left = 132
      Top = 3
      Width = 75
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
end
