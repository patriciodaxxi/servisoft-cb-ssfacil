object frmConsPreco: TfrmConsPreco
  Left = 385
  Top = 230
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsPreco'
  ClientHeight = 130
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
    Height = 130
    Align = alClient
    Color = clGray
    TabOrder = 0
    object Label4: TLabel
      Left = 28
      Top = 18
      Width = 53
      Height = 13
      Caption = 'C'#243'd. Barra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 12
      Top = 42
      Width = 517
      Height = 24
      AutoSize = False
      Color = clBlack
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
      Top = 69
      Width = 517
      Height = 24
      AutoSize = False
      Caption = 'Pre'#231'o: 0'
      Color = clBlack
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
      Top = 96
      Width = 517
      Height = 24
      AutoSize = False
      Caption = 'Estoque: 0'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Edit3: TEdit
      Left = 84
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
