object frmConsPreco: TfrmConsPreco
  Left = 385
  Top = 230
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsPreco'
  ClientHeight = 156
  ClientWidth = 541
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 156
    Align = alClient
    Color = 7300393
    TabOrder = 0
    object Label4: TLabel
      Left = 28
      Top = 18
      Width = 72
      Height = 13
      Caption = 'C'#243'd. Barra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 12
      Top = 66
      Width = 517
      Height = 24
      AutoSize = False
      Color = 3683329
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 93
      Width = 517
      Height = 24
      AutoSize = False
      Caption = 'Pre'#231'o: 0'
      Color = 3683329
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 120
      Width = 517
      Height = 24
      AutoSize = False
      Caption = 'Estoque: 0'
      Color = 3683329
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 32
      Top = 40
      Width = 334
      Height = 13
      Caption = 'Digite 0 antes do c'#243'digo para pesquisar por ID. (Ex.: 089)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Edit3: TEdit
      Left = 106
      Top = 10
      Width = 197
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyDown = Edit3KeyDown
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.usa_cod_barras,'
      '  (SELECT MAX(P2.usa_cod_ref)'
      '     FROM cupomfiscal_parametros P2) USA_COD_REF'
      ''
      'FROM PARAMETROS P')
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 56
    object qParametrosUSA_COD_BARRAS: TStringField
      FieldName = 'USA_COD_BARRAS'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_COD_REF: TStringField
      FieldName = 'USA_COD_REF'
      FixedChar = True
      Size = 1
    end
  end
end
