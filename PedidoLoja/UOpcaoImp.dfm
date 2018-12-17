object frmOpcaoImp: TfrmOpcaoImp
  Left = 488
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Op'#231#227'o do relat'#243'rio'
  ClientHeight = 198
  ClientWidth = 227
  Color = 16763594
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzCheckList1: TRzCheckList
    Left = 28
    Top = 37
    Width = 169
    Height = 118
    Items.Strings = (
      '//Imprimir  Vias'
      'Cliente'
      'Controle / Dep'#243'sito'
      'Controle / Loja'
      'Vendedor'
      'Escrit'#243'rio')
    Items.ItemEnabled = (
      True
      True
      True
      True
      True
      True)
    Items.ItemState = (
      0
      1
      0
      0
      0
      0)
    Color = clSilver
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    GroupColor = clSilver
    GroupFont.Charset = DEFAULT_CHARSET
    GroupFont.Color = clBlue
    GroupFont.Height = -11
    GroupFont.Name = 'MS Sans Serif'
    GroupFont.Style = [fsBold]
    ItemHeight = 18
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object ckImp_Cabecalho: TNxCheckBox
    Left = 28
    Top = 8
    Width = 169
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'ckImp_Cabecalho'
    Caption = 'Imprimir o Cabe'#231'alho'
    Checked = True
  end
  object btnAlterar_Itens: TNxButton
    Left = 29
    Top = 163
    Width = 86
    Height = 24
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    GlyphSpacing = 5
    ParentFont = False
    TabOrder = 2
    Transparent = True
    OnClick = btnAlterar_ItensClick
  end
  object btnConfirmar_Itens: TNxButton
    Left = 110
    Top = 163
    Width = 86
    Height = 24
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    GlyphSpacing = 5
    ParentFont = False
    TabOrder = 3
    Transparent = True
    OnClick = btnConfirmar_ItensClick
  end
end
