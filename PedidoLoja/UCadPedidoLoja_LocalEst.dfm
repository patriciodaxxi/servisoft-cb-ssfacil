object frmCadPedidoLoja_LocalEst: TfrmCadPedidoLoja_LocalEst
  Left = 348
  Top = 181
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadPedidoLoja_LocalEst'
  ClientHeight = 65
  ClientWidth = 607
  Color = 13828006
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
  object Label94: TLabel
    Left = 10
    Top = 10
    Width = 71
    Height = 13
    Alignment = taRightJustify
    Caption = 'Local Estoque:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnFechar: TNxButton
    Left = 497
    Top = 29
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
  object RxDBLookupCombo9: TRxDBLookupCombo
    Left = 85
    Top = 2
    Width = 516
    Height = 21
    DropDownCount = 8
    DataField = 'ID_LOCAL_ESTOQUE'
    DataSource = DMCadPedido.dsPedido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    LookupField = 'ID'
    LookupDisplay = 'NOME;COD_LOCAL'
    LookupSource = DMCadPedido.dsLocal_Estoque
    ParentFont = False
    TabOrder = 1
  end
end
