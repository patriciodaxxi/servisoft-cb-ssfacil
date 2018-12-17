object fRelEtiqueta: TfRelEtiqueta
  Left = 168
  Top = 103
  Width = 1068
  Height = 474
  Caption = 'fRelEtiqueta'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 96
    Top = 16
    Width = 794
    Height = 1123
    DataSource = DMCadPedido.dsmEtiqueta_Nav
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 259
      DataSource = DMCadPedido.dsmEtiqueta_Nav
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 0
        Width = 718
        Height = 130
        ColCount = 2
        object RLDraw3: TRLDraw
          Left = 4
          Top = 60
          Width = 350
          Height = 37
        end
        object RLDraw2: TRLDraw
          Left = 4
          Top = 44
          Width = 350
          Height = 18
        end
        object RLDraw1: TRLDraw
          Left = 4
          Top = 27
          Width = 350
          Height = 18
        end
        object RLDBText1: TRLDBText
          Left = 24
          Top = 11
          Width = 78
          Height = 14
          DataField = 'Nome_Empresa'
          DataSource = DMCadPedido.dsmEtiqueta_Nav
        end
        object RLDBText2: TRLDBText
          Left = 68
          Top = 29
          Width = 281
          Height = 14
          AutoSize = False
          DataField = 'Nome_Cliente'
          DataSource = DMCadPedido.dsmEtiqueta_Nav
        end
        object RLLabel1: TRLLabel
          Left = 29
          Top = 29
          Width = 38
          Height = 14
          Caption = 'Cliente:'
        end
        object RLLabel2: TRLLabel
          Left = 8
          Top = 46
          Width = 59
          Height = 14
          Caption = 'Refer'#234'ncia:'
        end
        object RLDBText3: TRLDBText
          Left = 68
          Top = 46
          Width = 69
          Height = 14
          AutoSize = False
          DataField = 'Referencia'
          DataSource = DMCadPedido.dsmEtiqueta_Nav
        end
        object RLLabel3: TRLLabel
          Left = 24
          Top = 63
          Width = 43
          Height = 14
          Caption = 'Produto:'
        end
        object RLDBMemo1: TRLDBMemo
          Left = 68
          Top = 64
          Width = 273
          Height = 29
          AutoSize = False
          Behavior = [beSiteExpander]
          DataField = 'Nome_Produto'
          DataSource = DMCadPedido.dsmEtiqueta_Nav
        end
        object RLDraw4: TRLDraw
          Left = 4
          Top = 96
          Width = 172
          Height = 21
        end
        object RLLabel4: TRLLabel
          Left = 41
          Top = 101
          Width = 26
          Height = 14
          Caption = 'Qtd.:'
        end
        object RLDBText4: TRLDBText
          Left = 68
          Top = 101
          Width = 20
          Height = 14
          DataField = 'Qtd'
          DataSource = DMCadPedido.dsmEtiqueta_Nav
        end
        object RLDraw5: TRLDraw
          Left = 175
          Top = 96
          Width = 179
          Height = 21
        end
        object RLLabel5: TRLLabel
          Left = 185
          Top = 101
          Width = 24
          Height = 14
          Caption = 'O.C:'
        end
        object RLDBText5: TRLDBText
          Left = 212
          Top = 101
          Width = 73
          Height = 14
          DataField = 'Pedido_Cliente'
          DataSource = DMCadPedido.dsmEtiqueta_Nav
        end
        object RLDraw6: TRLDraw
          Left = 8
          Top = 6
          Width = 347
          Height = 3
          Pen.Style = psDot
        end
      end
    end
  end
end
