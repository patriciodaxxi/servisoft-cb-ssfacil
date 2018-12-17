object frmCadFilialRelatorios: TfrmCadFilialRelatorios
  Left = 386
  Top = 224
  Width = 608
  Height = 194
  Caption = 'frmCadFilialRelatorios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 77
    Top = 15
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'Filial:'
  end
  object Label1: TLabel
    Left = 76
    Top = 37
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo:'
  end
  object Label3: TLabel
    Left = 56
    Top = 59
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Caminho:'
  end
  object Label4: TLabel
    Left = 59
    Top = 81
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Posi'#231#227'o:'
  end
  object Label5: TLabel
    Left = 49
    Top = 103
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'Descri'#231#227'o:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 120
    Width = 592
    Height = 36
    Align = alBottom
    Color = 8404992
    TabOrder = 5
    object BitBtn1: TBitBtn
      Left = 194
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
      Left = 297
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
  object RxDBComboBox1: TRxDBComboBox
    Left = 104
    Top = 29
    Width = 225
    Height = 21
    Style = csDropDownList
    Ctl3D = True
    DataField = 'TIPO'
    DataSource = DMCadFilial.dsFilialRelatorios
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'ORCAMENTO'
      'PEDIDO'
      'ORDEM COMPRA'
      'ORDEM SERVICO'
      'CONTRATO'
      'ETIQUETA INDIVIDUAL'
      'R'#211'TULO'
      'NOTA DE SERVI'#199'O'
      'RECIBO'
      'R'#211'TULO POR GRADE'
      'R'#211'TULO NA NOTA (CORRUGADO)'
      'CONSULTA PEDIDO'
      'RECIBO NF')
    ParentCtl3D = False
    TabOrder = 1
    Values.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13')
  end
  object FilenameEdit1: TFilenameEdit
    Left = 104
    Top = 51
    Width = 369
    Height = 21
    Filter = 'Relat'#243'rios|*.fr3|All files (*.*)|*.*'
    NumGlyphs = 1
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 7
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    Ctl3D = True
    DataField = 'ID'
    DataSource = DMCadFilial.dsFilialRelatorios
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object RxDBComboBox2: TRxDBComboBox
    Left = 104
    Top = 73
    Width = 225
    Height = 21
    Style = csDropDownList
    Ctl3D = True
    DataField = 'POSICAO'
    DataSource = DMCadFilial.dsFilialRelatorios
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      '1'
      '2'
      '3')
    ParentCtl3D = False
    TabOrder = 3
    Values.Strings = (
      '1'
      '2'
      '3')
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 95
    Width = 366
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = DMCadFilial.dsFilialRelatorios
    TabOrder = 4
  end
end
