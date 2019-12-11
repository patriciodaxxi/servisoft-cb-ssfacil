object frmSel_CBenef: TfrmSel_CBenef
  Left = 244
  Top = 155
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_CBenef'
  ClientHeight = 449
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 41
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 15
      Width = 53
      Height = 13
      Caption = 'CST ICMS:'
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'select distinct t.cod_cst'#13#10'from tab_csticms t'#13#10'where t.tipo = '#39'N' +
      #39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 251
    Top = 118
  end
end
