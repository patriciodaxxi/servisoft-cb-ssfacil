object fRelTalao_Rot2: TfRelTalao_Rot2
  Left = 250
  Top = 66
  Width = 985
  Height = 551
  Caption = 'fRelTalao_Rot2'
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
  object RLReport1: TRLReport
    Left = 200
    Top = 32
    Width = 382
    Height = 325
    DataSource = DMCadLote.dsmLote
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 1.300000000000000000
    Margins.TopMargin = 0.000000000000000000
    Margins.RightMargin = 0.000000000000000000
    Margins.BottomMargin = 0.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 101.000000000000000000
    PageSetup.PaperHeight = 86.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 5
      Top = 0
      Width = 377
      Height = 320
      DataSource = DMCadLote.dsmLote
      Margins.TopMargin = 2.000000000000000000
      object RLBand1: TRLBand
        Left = 0
        Top = 8
        Width = 377
        Height = 310
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLBand1BeforePrint
        object RLDraw7: TRLDraw
          Left = 21
          Top = 117
          Width = 105
          Height = 21
        end
        object RLDraw6: TRLDraw
          Left = 220
          Top = 73
          Width = 59
          Height = 21
        end
        object RLLabel6: TRLLabel
          Left = 227
          Top = 77
          Width = 34
          Height = 15
          Caption = 'Tal'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 21
          Top = 17
          Width = 105
          Height = 21
        end
        object RLDBText1: TRLDBText
          Left = 25
          Top = 1
          Width = 340
          Height = 16
          AutoSize = False
          DataField = 'Nome_Filial'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 26
          Top = 21
          Width = 42
          Height = 15
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 21
          Top = 37
          Width = 105
          Height = 21
        end
        object RLLabel2: TRLLabel
          Left = 26
          Top = 41
          Width = 75
          Height = 15
          Caption = 'Data Entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 21
          Top = 57
          Width = 105
          Height = 21
        end
        object RLLabel3: TRLLabel
          Left = 26
          Top = 61
          Width = 46
          Height = 15
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 21
          Top = 77
          Width = 105
          Height = 21
        end
        object RLLabel4: TRLLabel
          Left = 26
          Top = 81
          Width = 63
          Height = 15
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw5: TRLDraw
          Left = 21
          Top = 97
          Width = 105
          Height = 21
        end
        object RLLabel5: TRLLabel
          Left = 26
          Top = 101
          Width = 27
          Height = 15
          Caption = 'Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 26
          Top = 120
          Width = 24
          Height = 15
          Caption = 'O.C'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw8: TRLDraw
          Left = 21
          Top = 137
          Width = 105
          Height = 21
        end
        object RLLabel8: TRLLabel
          Left = 26
          Top = 141
          Width = 78
          Height = 15
          Caption = 'OS/Remessa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw9: TRLDraw
          Left = 21
          Top = 177
          Width = 105
          Height = 21
        end
        object RLLabel9: TRLLabel
          Left = 26
          Top = 181
          Width = 67
          Height = 15
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw10: TRLDraw
          Left = 21
          Top = 157
          Width = 105
          Height = 21
        end
        object RLLabel10: TRLLabel
          Left = 26
          Top = 161
          Width = 56
          Height = 15
          Caption = 'Tamanho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw11: TRLDraw
          Left = 125
          Top = 17
          Width = 250
          Height = 21
        end
        object RLLabel11: TRLLabel
          Left = 129
          Top = 21
          Width = 242
          Height = 14
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw12: TRLDraw
          Left = 125
          Top = 37
          Width = 250
          Height = 21
        end
        object RLDBText2: TRLDBText
          Left = 129
          Top = 41
          Width = 58
          Height = 15
          DataField = 'DtEntrega'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw13: TRLDraw
          Left = 125
          Top = 57
          Width = 250
          Height = 21
        end
        object RLDBText3: TRLDBText
          Left = 129
          Top = 61
          Width = 87
          Height = 15
          DataField = 'Nome_Produto'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw14: TRLDraw
          Left = 125
          Top = 77
          Width = 250
          Height = 21
        end
        object RLDBText4: TRLDBText
          Left = 129
          Top = 81
          Width = 63
          Height = 15
          DataField = 'Referencia'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw15: TRLDraw
          Left = 125
          Top = 97
          Width = 94
          Height = 21
        end
        object RLDBText5: TRLDBText
          Left = 129
          Top = 100
          Width = 61
          Height = 15
          DataField = 'Num_Lote'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw16: TRLDraw
          Left = 268
          Top = 97
          Width = 107
          Height = 21
        end
        object RLDBText6: TRLDBText
          Left = 272
          Top = 100
          Width = 38
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Num_Talao'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 315
          Top = 99
          Width = 6
          Height = 15
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 325
          Top = 99
          Width = 46
          Height = 14
          AutoSize = False
          DataField = 'Qtd_Taloes'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw17: TRLDraw
          Left = 125
          Top = 117
          Width = 250
          Height = 21
        end
        object RLDraw18: TRLDraw
          Left = 125
          Top = 137
          Width = 250
          Height = 21
        end
        object RLDraw19: TRLDraw
          Left = 125
          Top = 157
          Width = 250
          Height = 21
        end
        object RLDraw20: TRLDraw
          Left = 125
          Top = 177
          Width = 250
          Height = 21
        end
        object RLLabel13: TRLLabel
          Left = 129
          Top = 141
          Width = 78
          Height = 15
          Caption = 'OS/Remessa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 129
          Top = 121
          Width = 241
          Height = 14
          AutoSize = False
          Caption = 'O.C'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 129
          Top = 160
          Width = 56
          Height = 15
          DataField = 'Tamanho'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 129
          Top = 180
          Width = 22
          Height = 15
          DataField = 'Qtd'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw21: TRLDraw
          Left = 21
          Top = 256
          Width = 105
          Height = 20
        end
        object RLDraw22: TRLDraw
          Left = 125
          Top = 256
          Width = 250
          Height = 20
        end
        object RLLabel15: TRLLabel
          Left = 129
          Top = 260
          Width = 241
          Height = 14
          AutoSize = False
          Caption = 'O.C'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 27
          Top = 260
          Width = 79
          Height = 15
          Caption = 'Atelier Pintura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw23: TRLDraw
          Left = 21
          Top = 217
          Width = 105
          Height = 21
        end
        object RLLabel17: TRLLabel
          Left = 26
          Top = 221
          Width = 72
          Height = 15
          Caption = 'Acabamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw24: TRLDraw
          Left = 125
          Top = 217
          Width = 250
          Height = 21
        end
        object RLDBText10: TRLDBText
          Left = 129
          Top = 221
          Width = 72
          Height = 15
          DataField = 'Acabamento'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw25: TRLDraw
          Left = 21
          Top = 237
          Width = 105
          Height = 20
        end
        object RLLabel18: TRLLabel
          Left = 26
          Top = 241
          Width = 95
          Height = 15
          Caption = 'Cor Acabamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw26: TRLDraw
          Left = 125
          Top = 237
          Width = 250
          Height = 20
        end
        object RLDBText11: TRLDBText
          Left = 129
          Top = 241
          Width = 99
          Height = 15
          DataField = 'Cor_Acabamento'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw27: TRLDraw
          Left = 21
          Top = 197
          Width = 105
          Height = 21
        end
        object RLLabel19: TRLLabel
          Left = 26
          Top = 201
          Width = 46
          Height = 15
          Caption = 'Material'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw28: TRLDraw
          Left = 125
          Top = 197
          Width = 250
          Height = 21
        end
        object RLLabel20: TRLLabel
          Left = 129
          Top = 201
          Width = 241
          Height = 14
          AutoSize = False
          Caption = 'Material'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw29: TRLDraw
          Left = 21
          Top = 275
          Width = 105
          Height = 21
        end
        object RLLabel21: TRLLabel
          Left = 26
          Top = 280
          Width = 61
          Height = 15
          Caption = 'Tipo Matriz'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw30: TRLDraw
          Left = 125
          Top = 275
          Width = 250
          Height = 21
        end
        object RLDBText12: TRLDBText
          Left = 129
          Top = 278
          Width = 99
          Height = 15
          DataField = 'Nome_TipoMatriz'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw31: TRLDraw
          Left = 218
          Top = 97
          Width = 51
          Height = 21
        end
        object RLLabel22: TRLLabel
          Left = 224
          Top = 100
          Width = 34
          Height = 15
          Caption = 'Tal'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
end
