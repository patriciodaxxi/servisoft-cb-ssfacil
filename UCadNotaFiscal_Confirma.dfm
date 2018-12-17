object frmCadNotaFiscal_Confirma: TfrmCadNotaFiscal_Confirma
  Left = 257
  Top = 208
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Tipo de Confirma'#231#227'o'
  ClientHeight = 188
  ClientWidth = 484
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btNormal: TBitBtn
    Left = 28
    Top = 14
    Width = 145
    Height = 35
    Caption = 'Normal'
    TabOrder = 0
    OnClick = btNormalClick
  end
  object btContingencia: TBitBtn
    Left = 173
    Top = 14
    Width = 145
    Height = 35
    Caption = 'Modo Conting'#234'ncia'
    TabOrder = 1
    OnClick = btContingenciaClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 72
    Width = 470
    Height = 65
    Caption = 'Op'#231#245'es de Conting'#234'ncia'
    TabOrder = 2
    object btFS: TBitBtn
      Left = 11
      Top = 21
      Width = 145
      Height = 35
      Caption = 'Formul'#225'rio de Seguran'#231'a FS'
      Enabled = False
      TabOrder = 0
      OnClick = btFSClick
    end
    object btFSDA: TBitBtn
      Left = 156
      Top = 21
      Width = 163
      Height = 35
      Caption = 'Formul'#225'rio de Seguran'#231'a FS-DA'
      Enabled = False
      TabOrder = 2
      OnClick = btFSDAClick
    end
    object btScan: TBitBtn
      Left = 319
      Top = 21
      Width = 145
      Height = 35
      Caption = 'Conting'#234'ncia SCAN'
      Enabled = False
      TabOrder = 1
      OnClick = btScanClick
    end
  end
  object btCancelar: TBitBtn
    Left = 318
    Top = 14
    Width = 145
    Height = 35
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btCancelarClick
  end
end
