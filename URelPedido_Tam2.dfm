object fRelPedido_Tam2: TfRelPedido_Tam2
  Left = 234
  Top = 41
  Width = 928
  Height = 667
  Caption = 'Pedido'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 32
    Top = 32
    Width = 794
    Height = 529
    DataSource = DMCadPedido.dsPedidoImp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 140.000000000000000000
    RecordRange = rrCurrentOnly
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 26
      Width = 742
      Height = 475
      DataSource = DMCadPedido.dsPedidoImp
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 182
        BandType = btHeader
        BeforePrint = RLBand1BeforePrint
        object RLLabel4: TRLLabel
          Left = 521
          Top = 3
          Width = 93
          Height = 16
          Alignment = taRightJustify
          Caption = 'Pedido Interno:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 539
          Top = 37
          Width = 75
          Height = 16
          Caption = 'Dt.Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 490
          Top = 21
          Width = 124
          Height = 16
          Alignment = taRightJustify
          Caption = 'Pedido Cliente (OC):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 615
          Top = 37
          Width = 82
          Height = 16
          DataField = 'DTEMISSAO'
          DataSource = DMCadPedido.dsPedidoImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 615
          Top = 21
          Width = 111
          Height = 16
          AutoSize = False
          DataField = 'PEDIDO_CLIENTE'
          DataSource = DMCadPedido.dsPedidoImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 29
          Top = 62
          Width = 47
          Height = 16
          Alignment = taRightJustify
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 11
          Top = 78
          Width = 65
          Height = 16
          Alignment = taRightJustify
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 34
          Top = 94
          Width = 42
          Height = 16
          Alignment = taRightJustify
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 26
          Top = 111
          Width = 50
          Height = 16
          Alignment = taRightJustify
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 79
          Top = 62
          Width = 78
          Height = 16
          DataField = 'NOME_CLI'
          DataSource = DMCadPedido.dsPedidoImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 79
          Top = 94
          Width = 117
          Height = 16
          DataField = 'BAIRRO_CLIENTE'
          DataSource = DMCadPedido.dsPedidoImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 503
          Top = 62
          Width = 63
          Height = 16
          Caption = 'Telefone :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 347
          Top = 94
          Width = 31
          Height = 16
          Caption = 'Cep:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 517
          Top = 112
          Width = 49
          Height = 16
          Caption = 'Estado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 504
          Top = 94
          Width = 62
          Height = 16
          Caption = 'Inscr. Est.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 525
          Top = 78
          Width = 41
          Height = 16
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 387
          Top = 94
          Width = 93
          Height = 16
          DataField = 'CEP_CLIENTE'
          DataSource = DMCadPedido.dsPedidoImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 568
          Top = 112
          Width = 21
          Height = 16
          DataField = 'UF'
          DataSource = DMCadPedido.dsPedidoImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 568
          Top = 78
          Width = 134
          Height = 16
          DataField = 'CNPJ_CPF_CLIENTE'
          DataSource = DMCadPedido.dsPedidoImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 568
          Top = 94
          Width = 141
          Height = 16
          DataField = 'INSCR_EST_CLIENTE'
          DataSource = DMCadPedido.dsPedidoImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 109
          Top = 162
          Width = 50
          Height = 16
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 4
          Top = 162
          Width = 69
          Height = 16
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 694
          Top = 162
          Width = 46
          Height = 16
          Alignment = taRightJustify
          Caption = 'V.Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel35: TRLLabel
          Left = 621
          Top = 162
          Width = 42
          Height = 16
          Alignment = taCenter
          Caption = 'V.Unit.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 548
          Top = 162
          Width = 36
          Height = 16
          Alignment = taCenter
          Caption = 'Qtde.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 615
          Top = 3
          Width = 62
          Height = 18
          AutoSize = False
          DataField = 'NUM_PEDIDO'
          DataSource = DMCadPedido.dsPedidoImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object rlEndereco: TRLLabel
          Left = 79
          Top = 78
          Width = 378
          Height = 16
          AutoSize = False
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText31: TRLDBText
          Left = 2
          Top = 1
          Width = 439
          Height = 21
          AutoSize = False
          DataField = 'NOME_FILIAL'
          DataSource = DMCadPedido.dsPedidoImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText37: TRLDBText
          Left = 79
          Top = 111
          Width = 116
          Height = 16
          DataField = 'CIDADE_CLIENTE'
          DataSource = DMCadPedido.dsPedidoImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel28: TRLLabel
          Left = 501
          Top = 162
          Width = 26
          Height = 16
          Alignment = taCenter
          Caption = 'Uni.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 7
          Top = 129
          Width = 69
          Height = 16
          Caption = 'Cond.Pag.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 79
          Top = 129
          Width = 513
          Height = 16
          AutoSize = False
          DataField = 'NOME_CONDPGTO'
          DataSource = DMCadPedido.dsPedidoImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object rlFone_Filial: TRLLabel
          Left = 3
          Top = 26
          Width = 76
          Height = 20
          Caption = 'Fone Filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 2
          Top = 153
          Width = 738
          Height = 10
          AutoSize = False
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '-----------------------------------------------------'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 4
          Top = 53
          Width = 738
          Height = 10
          AutoSize = False
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '-----------------------------------------------------'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 568
          Top = 62
          Width = 68
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 182
        Width = 742
        Height = 221
        DataSource = DMCadPedido.dsmItensImp
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 26
          BeforePrint = RLBand2BeforePrint
          object RLDBText22: TRLDBText
            Left = 560
            Top = 8
            Width = 24
            Height = 16
            Alignment = taRightJustify
            DataField = 'Qtd'
            DataSource = DMCadPedido.dsmItensImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText29: TRLDBText
            Left = 2
            Top = 8
            Width = 101
            Height = 16
            AutoSize = False
            DataField = 'REFERENCIA'
            DataSource = DMCadPedido.dsmItensImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object rlPreco: TRLLabel
            Left = 595
            Top = 8
            Width = 69
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pre'#231'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object rlVlrTotal: TRLLabel
            Left = 671
            Top = 8
            Width = 69
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vlr.Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText49: TRLDBText
            Left = 492
            Top = 8
            Width = 38
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'Unidade'
            DataSource = DMCadPedido.dsmItensImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLMemo2: TRLMemo
            Left = 107
            Top = 8
            Width = 371
            Height = 16
            Behavior = [beSiteExpander]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 2
            Top = -3
            Width = 738
            Height = 9
            AutoSize = False
            Caption = 
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '-----------------------------------------------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 179
          Width = 742
          Height = 20
          BandType = btSummary
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand4BeforePrint
          object RLLabel45: TRLLabel
            Left = 438
            Top = 1
            Width = 145
            Height = 16
            Caption = 'Valor Total de Pedidos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText34: TRLDBText
            Left = 660
            Top = 1
            Width = 80
            Height = 16
            Alignment = taRightJustify
            DataField = 'VLR_TOTAL'
            DataSource = DMCadPedido.dsPedidoImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 4
            Top = -6
            Width = 738
            Height = 9
            AutoSize = False
            Caption = 
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '-----------------------------------------------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 6
            Top = 4
            Width = 63
            Height = 13
            Caption = 'Vlr.Produtos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 71
            Top = 4
            Width = 68
            Height = 13
            DataField = 'VLR_ITENS2'
            DataSource = DMCadPedido.dsPedidoImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 198
            Top = 4
            Width = 67
            Height = 13
            Caption = 'Vlr.Desconto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 267
            Top = 4
            Width = 90
            Height = 13
            DataField = 'VLR_DESCONTO'
            DataSource = DMCadPedido.dsPedidoImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDetail3: TRLSubDetail
          Left = 0
          Top = 26
          Width = 742
          Height = 64
          DataSource = DMCadPedido.dsmItensImp_Tam
          object RLDetailGrid1: TRLDetailGrid
            Left = 0
            Top = 0
            Width = 742
            Height = 33
            ColCount = 10
            AfterPrint = RLDetailGrid1AfterPrint
            object RLLabel14: TRLLabel
              Left = 4
              Top = 1
              Width = 13
              Height = 13
              Caption = 'T:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel16: TRLLabel
              Left = 2
              Top = 16
              Width = 14
              Height = 13
              Caption = 'Q:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw1: TRLDraw
              Left = 19
              Top = 1
              Width = 55
              Height = 15
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Pen.Style = psDot
            end
            object RLDBText16: TRLDBText
              Left = 23
              Top = 2
              Width = 46
              Height = 13
              Alignment = taCenter
              AutoSize = False
              DataField = 'Tamanho'
              DataSource = DMCadPedido.dsmItensImp_Tam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw4: TRLDraw
              Left = 19
              Top = 15
              Width = 55
              Height = 15
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Pen.Style = psDot
            end
            object RLDBText18: TRLDBText
              Left = 23
              Top = 16
              Width = 46
              Height = 13
              Alignment = taCenter
              AutoSize = False
              DataField = 'Qtd'
              DataSource = DMCadPedido.dsmItensImp_Tam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLSubDetail4: TRLSubDetail
          Left = 0
          Top = 90
          Width = 742
          Height = 89
          DataSource = DMCadPedido.dsmItensImp_Mat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand6: TRLBand
            Left = 0
            Top = 0
            Width = 742
            Height = 24
            BandType = btHeader
            BeforePrint = RLBand6BeforePrint
            object RLLabel26: TRLLabel
              Left = 40
              Top = 1
              Width = 47
              Height = 16
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel27: TRLLabel
              Left = 91
              Top = 1
              Width = 51
              Height = 16
              Caption = 'Material'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel31: TRLLabel
              Left = 621
              Top = 1
              Width = 41
              Height = 16
              Caption = 'V.Unit.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel33: TRLLabel
              Left = 692
              Top = 1
              Width = 46
              Height = 16
              Caption = 'V.Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel38: TRLLabel
              Left = 463
              Top = 1
              Width = 42
              Height = 16
              Caption = 'Pe'#231'as'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel39: TRLLabel
              Left = 515
              Top = 1
              Width = 71
              Height = 16
              Caption = 'Cons. Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel3: TRLLabel
              Left = 41
              Top = 15
              Width = 738
              Height = 9
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '-----------------------------------------'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand8: TRLBand
            Left = 0
            Top = 24
            Width = 742
            Height = 20
            BeforePrint = RLBand8BeforePrint
            object RLDBText19: TRLDBText
              Left = 41
              Top = 2
              Width = 48
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'ID_Material'
              DataSource = DMCadPedido.dsmItensImp_Mat
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText21: TRLDBText
              Left = 92
              Top = 2
              Width = 361
              Height = 16
              AutoSize = False
              DataField = 'Nome_Material'
              DataSource = DMCadPedido.dsmItensImp_Mat
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText24: TRLDBText
              Left = 602
              Top = 2
              Width = 66
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'Vlr_Unitario'
              DataSource = DMCadPedido.dsmItensImp_Mat
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText25: TRLDBText
              Left = 673
              Top = 2
              Width = 67
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'Vlr_Total'
              DataSource = DMCadPedido.dsmItensImp_Mat
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText26: TRLDBText
              Left = 463
              Top = 1
              Width = 42
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'Qtd_Peca'
              DataSource = DMCadPedido.dsmItensImp_Mat
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText27: TRLDBText
              Left = 509
              Top = 1
              Width = 88
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'Qtd_Consumo_Total'
              DataSource = DMCadPedido.dsmItensImp_Mat
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand9: TRLBand
            Left = 0
            Top = 44
            Width = 742
            Height = 24
            BandType = btFooter
            BeforePrint = RLBand9BeforePrint
            object RLLabel36: TRLLabel
              Left = 44
              Top = 4
              Width = 34
              Height = 16
              Caption = 'OBS:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLMemo3: TRLMemo
              Left = 86
              Top = 4
              Width = 636
              Height = 16
              Behavior = [beSiteExpander]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel6: TRLLabel
              Left = 42
              Top = -6
              Width = 736
              Height = 9
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '---------------------------------------'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 403
        Width = 742
        Height = 23
        BandType = btSummary
        IntegralHeight = False
        BeforePrint = RLBand7BeforePrint
        object RLLabel46: TRLLabel
          Left = 7
          Top = 4
          Width = 88
          Height = 16
          Caption = 'Observa'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLMemo1: TRLMemo
          Left = 106
          Top = 4
          Width = 622
          Height = 16
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          IntegralHeight = True
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 4
          Top = -6
          Width = 738
          Height = 9
          AutoSize = False
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '-----------------------------------------------------'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 426
        Width = 742
        Height = 36
        BandType = btSummary
      end
    end
  end
end
