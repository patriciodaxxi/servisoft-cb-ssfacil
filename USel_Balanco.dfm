object frmSel_Balanco: TfrmSel_Balanco
  Left = 313
  Top = 113
  Width = 548
  Height = 418
  Caption = 'frmSel_Balanco'
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
  object RzCheckList1: TRzCheckList
    Left = 41
    Top = 30
    Width = 248
    Height = 267
    Items.Strings = (
      '//Tipo SPED'
      '00 - Mercadoria para Revenda'
      '01- Mat'#233'ria-Prima'
      '02- Embalagem'
      '03 - Produto em Processo'
      '04 - Produto Acabado'
      '05 - SubProduto'
      '06 - Produto Intermedi'#225'rio'
      '07 - Material de Uso e Consumo'
      '08 - Ativo Imobilizado'
      '10 - Outros Insumos'
      '99 - Outras')
    Items.ItemEnabled = (
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True)
    Items.ItemState = (
      0
      0
      0
      0
      0
      0
      0
      0
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
    MultiSelect = True
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object RzCheckList2: TRzCheckList
    Left = 297
    Top = 30
    Width = 208
    Height = 131
    Items.Strings = (
      '//Tipo Cadastro'
      'Produto'
      'Material'
      'Material Consumo'
      'Semi Acabado'
      'Imobilizado')
    Items.ItemEnabled = (
      True
      True
      True
      True
      True
      True)
    Items.ItemState = (
      0
      0
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
    MultiSelect = True
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object NxButton1: TNxButton
    Left = 64
    Top = 336
    Width = 177
    Height = 28
    Caption = 'Confirma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 244
    Top = 336
    Width = 177
    Height = 28
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = NxButton2Click
  end
end
