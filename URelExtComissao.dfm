object fRelExtComissao: TfRelExtComissao
  Left = 14
  Top = 67
  Width = 1304
  Height = 641
  Caption = 'fRelExtComissao'
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
    Left = 216
    Top = 32
    Width = 794
    Height = 1123
    DataSource = DMCadExtComissao.dsmImp_Reduzido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 30
      Top = 30
      Width = 734
      Height = 66
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw9: TRLDraw
        Left = 665
        Top = 38
        Width = 68
        Height = 29
      end
      object RLDraw8: TRLDraw
        Left = 598
        Top = 38
        Width = 68
        Height = 29
      end
      object RLDraw7: TRLDraw
        Left = 524
        Top = 38
        Width = 75
        Height = 29
      end
      object RLDraw6: TRLDraw
        Left = 457
        Top = 38
        Width = 68
        Height = 29
      end
      object RLDraw5: TRLDraw
        Left = 378
        Top = 38
        Width = 80
        Height = 29
      end
      object RLDraw4: TRLDraw
        Left = 299
        Top = 38
        Width = 80
        Height = 29
      end
      object RLLabel21: TRLLabel
        Left = 645
        Top = 2
        Width = 22
        Height = 12
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 668
        Top = 3
        Width = 44
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 625
        Top = 15
        Width = 42
        Height = 12
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 668
        Top = 15
        Width = 64
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 64
        Top = 22
        Width = 530
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'Relat'#243'rio de Comiss'#227'o de Vendedores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 6
        Top = 4
        Width = 42
        Height = 12
      end
      object RLLabel3: TRLLabel
        Left = 4
        Top = 51
        Width = 42
        Height = 12
        Caption = 'Vendedor'
      end
      object RLLabel4: TRLLabel
        Left = 381
        Top = 51
        Width = 69
        Height = 12
        Caption = 'Base Comiss'#227'o'
      end
      object RLMemo1: TRLMemo
        Left = 304
        Top = 39
        Width = 73
        Height = 24
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          'Valor Comiss'#227'o'
          'a Pagar')
      end
      object RLLabel5: TRLLabel
        Left = 467
        Top = 51
        Width = 49
        Height = 12
        Caption = 'Vlr.Entrada'
      end
      object RLLabel6: TRLLabel
        Left = 546
        Top = 51
        Width = 51
        Height = 12
        Caption = 'Vlr.J'#225' Pago'
      end
      object RLLabel7: TRLLabel
        Left = 617
        Top = 51
        Width = 46
        Height = 12
        Caption = 'Vlr.Adiant.'
      end
      object RLLabel8: TRLLabel
        Left = 686
        Top = 51
        Width = 45
        Height = 12
        Caption = 'Vlr.Devol.'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 96
      Width = 734
      Height = 363
      DataSource = DMCadExtComissao.dsmImp_Reduzido
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 16
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 2
          Top = 2
          Width = 289
          Height = 12
          AutoSize = False
          DataField = 'NomeVendedor'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText2: TRLDBText
          Left = 303
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Vlr_Comissao'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText3: TRLDBText
          Left = 377
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Base_Comissao'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText4: TRLDBText
          Left = 451
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Vlr_Entrada'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText5: TRLDBText
          Left = 525
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Vlr_Pagamento'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText6: TRLDBText
          Left = 599
          Top = 2
          Width = 66
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Vlr_Adiantamento'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText7: TRLDBText
          Left = 666
          Top = 2
          Width = 66
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Vlr_Devolucao'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 2
          Align = faTop
          DrawKind = dkLine
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 16
        Width = 734
        Height = 241
        DataSource = DMCadExtComissao.dsConsulta
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 19
          BandType = btHeader
          BeforePrint = RLBand3BeforePrint
          object RLDraw2: TRLDraw
            Left = 32
            Top = 1
            Width = 701
            Height = 17
          end
          object RLLabel9: TRLLabel
            Left = 36
            Top = 4
            Width = 13
            Height = 12
            Caption = 'Fil'
          end
          object RLLabel10: TRLLabel
            Left = 58
            Top = 4
            Width = 24
            Height = 12
            Caption = 'S'#233'rie'
          end
          object RLLabel11: TRLLabel
            Left = 86
            Top = 4
            Width = 36
            Height = 12
            Caption = 'N'#186' Nota'
          end
          object RLLabel12: TRLLabel
            Left = 126
            Top = 4
            Width = 25
            Height = 12
            Caption = 'Parc.'
          end
          object RLLabel13: TRLLabel
            Left = 160
            Top = 4
            Width = 40
            Height = 12
            Caption = 'Dt. Base'
          end
          object RLLabel14: TRLLabel
            Left = 216
            Top = 4
            Width = 20
            Height = 12
            Caption = 'Tipo'
          end
          object RLLabel15: TRLLabel
            Left = 245
            Top = 4
            Width = 69
            Height = 12
            Caption = 'Base Comiss'#227'o'
          end
          object RLLabel16: TRLLabel
            Left = 319
            Top = 4
            Width = 37
            Height = 12
            Caption = '% Com.'
          end
          object RLLabel17: TRLLabel
            Left = 361
            Top = 4
            Width = 59
            Height = 12
            Caption = 'Vlr.Comiss'#227'o'
          end
          object RLLabel18: TRLLabel
            Left = 423
            Top = 4
            Width = 32
            Height = 12
            Caption = 'Cliente'
          end
          object RLLabel20: TRLLabel
            Left = 644
            Top = 3
            Width = 31
            Height = 12
            Caption = 'Pedido'
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 19
          Width = 734
          Height = 15
          BeforePrint = RLBand4BeforePrint
          object RLDBText8: TRLDBText
            Left = 33
            Top = 2
            Width = 16
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'FILIAL'
            DataSource = DMCadExtComissao.dsConsulta
          end
          object RLDBText9: TRLDBText
            Left = 50
            Top = 2
            Width = 22
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'SERIE'
            DataSource = DMCadExtComissao.dsConsulta
          end
          object RLDBText10: TRLDBText
            Left = 73
            Top = 2
            Width = 46
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'NUM_NOTA'
            DataSource = DMCadExtComissao.dsConsulta
          end
          object RLDBText11: TRLDBText
            Left = 120
            Top = 2
            Width = 30
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'PARCELA'
            DataSource = DMCadExtComissao.dsConsulta
          end
          object RLDBText12: TRLDBText
            Left = 151
            Top = 2
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'DTBASE'
            DataSource = DMCadExtComissao.dsConsulta
          end
          object RLDBText13: TRLDBText
            Left = 206
            Top = 2
            Width = 36
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'TIPO_REG'
            DataSource = DMCadExtComissao.dsConsulta
          end
          object RLDBText14: TRLDBText
            Left = 243
            Top = 2
            Width = 74
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'BASE_COMISSAO'
            DataSource = DMCadExtComissao.dsConsulta
          end
          object RLDBText15: TRLDBText
            Left = 319
            Top = 2
            Width = 38
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PERC_COMISSAO'
            DataSource = DMCadExtComissao.dsConsulta
          end
          object RLDBText16: TRLDBText
            Left = 360
            Top = 2
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_COMISSAO'
            DataSource = DMCadExtComissao.dsConsulta
          end
          object RLDraw3: TRLDraw
            Left = 34
            Top = 0
            Width = 697
            Height = 2
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText17: TRLDBText
            Left = 422
            Top = 2
            Width = 217
            Height = 12
            AutoSize = False
            DataField = 'NOMECLIENTE'
            DataSource = DMCadExtComissao.dsConsulta
          end
          object RLDBMemo1: TRLDBMemo
            Left = 640
            Top = 2
            Width = 90
            Height = 12
            Behavior = [beSiteExpander]
            DataField = 'OBS_PEDIDO'
            DataSource = DMCadExtComissao.dsConsulta
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 50
          Width = 734
          Height = 10
          BandType = btFooter
          BeforePrint = RLBand5BeforePrint
          object RLPanel1: TRLPanel
            Left = 0
            Top = 0
            Width = 734
            Height = 9
            Align = faTop
            Color = clSilver
            ParentColor = False
            Transparent = False
          end
        end
        object RLBand6: TRLBand
          Left = 0
          Top = 34
          Width = 734
          Height = 16
          BeforePrint = RLBand6BeforePrint
          object RLLabel19: TRLLabel
            Left = 67
            Top = 2
            Width = 23
            Height = 12
            Caption = 'Obs:'
          end
          object RLDBMemo2: TRLDBMemo
            Left = 91
            Top = 3
            Width = 606
            Height = 10
            Behavior = [beSiteExpander]
            DataField = 'OBS'
            DataSource = DMCadExtComissao.dsConsulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
end
