object frmProgamacaoPedidos: TfrmProgamacaoPedidos
  Left = 279
  Top = 163
  Width = 1008
  Height = 500
  BorderWidth = 10
  Caption = 'Programa'#231#227'o de Pedidos'
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 1008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pagProgramacao: TRzPageControl
    Left = 0
    Top = 34
    Width = 972
    Height = 407
    ActivePage = tabProgramacao
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object tabProgramacao: TRzTabSheet
      Caption = 'Programa'#231#227'o'
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 968
        Height = 384
        HorzScrollBar.Visible = False
        Align = alClient
        BevelOuter = bvSpace
        BevelKind = bkSoft
        BevelWidth = 3
        BorderStyle = bsNone
        TabOrder = 0
        object pnlProgramacao: TPanel
          Left = 0
          Top = 0
          Width = 956
          Height = 25
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 0
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 956
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Bevel2: TBevel
              Left = 460
              Top = 0
              Width = 10
              Height = 25
              Align = alLeft
              Shape = bsSpacer
            end
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 460
              Height = 25
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object NxPanel10: TNxPanel
                Left = 0
                Top = 0
                Width = 30
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'M'#202'S'
                Color = clWhite
                Ctl3D = True
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
              end
              object NxPanel11: TNxPanel
                Left = 30
                Top = 0
                Width = 30
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'PRS'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 1
              end
              object NxPanel12: TNxPanel
                Left = 60
                Top = 0
                Width = 50
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'SEMANA'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 2
              end
              object NxPanel13: TNxPanel
                Left = 110
                Top = 0
                Width = 70
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'EMBARQUE'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 3
              end
              object NxPanel14: TNxPanel
                Left = 180
                Top = 0
                Width = 70
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'PREVIS'#195'O'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 4
              end
              object NxPanel15: TNxPanel
                Left = 250
                Top = 0
                Width = 70
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'PROJE'#199#195'O'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 5
              end
              object NxPanel16: TNxPanel
                Left = 320
                Top = 0
                Width = 70
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'REALIZADO'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 6
              end
              object NxPanel17: TNxPanel
                Left = 390
                Top = 0
                Width = 70
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'SALDO'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 7
              end
            end
            object Panel4: TPanel
              Left = 470
              Top = 0
              Width = 460
              Height = 25
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object NxPanel2: TNxPanel
                Left = 0
                Top = 0
                Width = 30
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'M'#202'S'
                Color = clWhite
                Ctl3D = True
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
              end
              object NxPanel3: TNxPanel
                Left = 30
                Top = 0
                Width = 30
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'PRS'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 1
              end
              object NxPanel4: TNxPanel
                Left = 60
                Top = 0
                Width = 50
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'SEMANA'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 2
              end
              object NxPanel5: TNxPanel
                Left = 110
                Top = 0
                Width = 70
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'EMBARQUE'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 3
              end
              object NxPanel6: TNxPanel
                Left = 180
                Top = 0
                Width = 70
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'PREVIS'#195'O'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 4
              end
              object NxPanel7: TNxPanel
                Left = 250
                Top = 0
                Width = 70
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'PROJE'#199#195'O'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 5
              end
              object NxPanel8: TNxPanel
                Left = 320
                Top = 0
                Width = 70
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'REALIZADO'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                PanelBorders = [boBottom, boLeft, boTop]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 6
              end
              object NxPanel9: TNxPanel
                Left = 390
                Top = 0
                Width = 70
                Height = 25
                AdaptiveColors = False
                Align = alLeft
                Caption = 'SALDO'
                Color = clWhite
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 7
              end
            end
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 324
          Width = 956
          Height = 48
          Align = alBottom
          Color = 16768443
          TabOrder = 1
          object Label1: TLabel
            Left = 24
            Top = 12
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'M'#233'dia M'#234's:'
          end
          object Label2: TLabel
            Left = 8
            Top = 32
            Width = 71
            Height = 13
            Alignment = taRightJustify
            Caption = 'Total Previs'#227'o:'
          end
          object Label3: TLabel
            Left = 256
            Top = 12
            Width = 145
            Height = 13
            Alignment = taRightJustify
            Caption = 'Total Proje'#231#227'o (Em Produ'#231#227'o):'
          end
          object Label4: TLabel
            Left = 324
            Top = 31
            Width = 77
            Height = 13
            Alignment = taRightJustify
            Caption = 'Total Realizado:'
          end
          object Label5: TLabel
            Left = 579
            Top = 30
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Saldo:'
          end
          object CurrencyEdit1: TCurrencyEdit
            Left = 80
            Top = 4
            Width = 89
            Height = 21
            AutoSize = False
            Ctl3D = False
            DecimalPlaces = 0
            DisplayFormat = '###,###,##0'
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object CurrencyEdit2: TCurrencyEdit
            Left = 80
            Top = 24
            Width = 89
            Height = 21
            AutoSize = False
            Ctl3D = False
            DecimalPlaces = 0
            DisplayFormat = '###,###,##0'
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object CurrencyEdit3: TCurrencyEdit
            Left = 402
            Top = 4
            Width = 89
            Height = 21
            AutoSize = False
            Ctl3D = False
            DecimalPlaces = 0
            DisplayFormat = '###,###,##0'
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object CurrencyEdit4: TCurrencyEdit
            Left = 402
            Top = 23
            Width = 89
            Height = 21
            AutoSize = False
            Ctl3D = False
            DecimalPlaces = 0
            DisplayFormat = '###,###,##0'
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object CurrencyEdit5: TCurrencyEdit
            Left = 610
            Top = 22
            Width = 89
            Height = 21
            AutoSize = False
            Ctl3D = False
            DecimalPlaces = 0
            DisplayFormat = '###,###,##0'
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
        end
      end
    end
    object tabGrafico: TRzTabSheet
      Caption = 'Gr'#225'fico'
      object DBChart1: TDBChart
        Left = 0
        Top = 0
        Width = 968
        Height = 385
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'TDBChart')
        Title.Visible = False
        LeftAxis.ExactDateTime = False
        Legend.Alignment = laBottom
        Legend.ColorWidth = 50
        Legend.HorizMargin = 6
        Legend.ShadowSize = 1
        Legend.TopPos = 0
        ScaleLastPage = False
        View3D = False
        Align = alClient
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object Series1: TBarSeries
          Marks.Arrow.Color = clBlack
          Marks.ArrowLength = 20
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = cdsTotais
          SeriesColor = 12419407
          Title = 'Previsto'
          XLabelsSource = 'Mes_Desc'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'Mes'
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'Previsao'
        end
        object Series3: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          DataSource = cdsTotais
          SeriesColor = clRed
          Title = 'Projetado'
          OffsetPercent = 10
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'Mes'
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'Projetado'
        end
        object Series2: TBarSeries
          Marks.Arrow.Color = clBlack
          Marks.ArrowLength = 20
          Marks.Visible = True
          DataSource = cdsTotais
          SeriesColor = 49407
          Title = 'Realizado'
          OffsetPercent = 20
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'Mes'
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'Realizado'
        end
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 972
    Height = 34
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 1
    object lblAno: TLabel
      Left = 0
      Top = 6
      Width = 22
      Height = 13
      Caption = 'Ano:'
    end
    object edtAno: TRzSpinEdit
      Left = 26
      Top = 2
      Width = 63
      Height = 21
      Max = 9999.000000000000000000
      Value = 2017.000000000000000000
      TabOrder = 0
    end
    object btnCarregar: TButton
      Left = 96
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Carregar'
      TabOrder = 1
      OnClick = btnCarregarClick
    end
    object btnEditarSalvar: TButton
      Left = 176
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 2
      OnClick = btnEditarSalvarClick
    end
  end
  object sdsProjecaoSemana: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'WITH'#13#10'  realizados as ('#13#10'    -- REALIZADO'#13#10'    SELECT --I.id_pro' +
      'duto,'#13#10'           N.dtemissao,'#13#10'           SUM(I.qtd) qtd'#13#10'     ' +
      ' FROM NOTAFISCAL N'#13#10'      INNER JOIN NOTAFISCAL_ITENS I ON N.ID ' +
      '= I.ID'#13#10'      INNER JOIN TAB_CFOP CFOP ON I.id_cfop = CFOP.ID'#13#10' ' +
      '     INNER JOIN PRODUTO PROD ON I.id_produto = PROD.ID'#13#10'      WH' +
      'ERE N.cancelada = '#39'N'#39#13#10'        AND N.nfedenegada = '#39'N'#39#13#10'        ' +
      'AND CFOP.faturamento = '#39'S'#39#13#10'        AND N.tipo_reg = '#39'NTS'#39#13#10'    ' +
      '    AND N.tipo_NOTA = '#39'S'#39#13#10'        AND ((PROD.tipo_reg = '#39'P'#39') or' +
      ' (PROD.tipo_reg = '#39'S'#39'))'#13#10'      GROUP BY --I.id_produto,'#13#10'       ' +
      '        N.dtemissao'#13#10'  ),'#13#10'  retornadas as ('#13#10'    -- RETORNADAS'#13 +
      #10'    SELECT --I.id_produto,'#13#10'           N2.dtemissao,'#13#10'         ' +
      '  SUM(COALESCE(I.qtd,0) * -1) qtd'#13#10'      FROM NOTAFISCAL_REF NRE' +
      'F'#13#10'      INNER JOIN NOTAFISCAL N ON NREF.NFECHAVEACESSO_REF = N.' +
      'NFECHAVEACESSO'#13#10'      INNER JOIN NOTAFISCAL N2 ON NREF.ID = N2.I' +
      'D'#13#10'      INNER JOIN NOTAFISCAL_ITENS I ON N2.ID = I.ID'#13#10'      IN' +
      'NER JOIN PRODUTO PROD ON I.id_produto = PROD.ID'#13#10'      WHERE (N2' +
      '.cancelada = '#39'N'#39' and N.cancelada = '#39'N'#39')'#13#10'        AND (N2.nfedene' +
      'gada = '#39'N'#39' AND N.nfedenegada = '#39'N'#39')'#13#10'        AND (N2.tipo_reg = ' +
      #39'NTS'#39' AND N.tipo_reg = '#39'NTS'#39')'#13#10'        AND (N2.tipo_nota = '#39'E'#39' A' +
      'ND N.tipo_nota = '#39'E'#39')'#13#10'        AND ((PROD.tipo_reg = '#39'P'#39') or (PR' +
      'OD.tipo_reg = '#39'S'#39'))'#13#10'        AND N2.nota_estorno = '#39'S'#39#13#10'        ' +
      '--and 1=2'#13#10'      GROUP BY --I.id_produto,'#13#10'               N2.dte' +
      'missao'#13#10#13#10'  ),'#13#10'  devolucoes as ('#13#10'    -- DEVOLUCOES'#13#10'    SELECT' +
      ' --I.id_produto,'#13#10'           N.dtemissao,'#13#10'           SUM(I.qtd ' +
      '* -1) qtd'#13#10'      FROM NOTAFISCAL N'#13#10'      INNER JOIN NOTAFISCAL_' +
      'ITENS I ON N.ID = I.ID'#13#10'      INNER JOIN PRODUTO PROD ON I.id_pr' +
      'oduto = PROD.ID'#13#10'      INNER JOIN TAB_CFOP CFOP ON I.ID_CFOP = C' +
      'FOP.ID'#13#10'      WHERE N.cancelada = '#39'N'#39#13#10'        AND N.nfedenegada' +
      ' = '#39'N'#39#13#10'        AND N.tipo_nota = '#39'E'#39#13#10'        AND ((PROD.tipo_r' +
      'eg = '#39'P'#39') or (PROD.tipo_reg = '#39'S'#39'))'#13#10'        AND CFOP.devolucao ' +
      '= '#39'S'#39#13#10'      GROUP BY --I.id_produto,'#13#10'               N.dtemissa' +
      'o'#13#10#13#10'  ),'#13#10'  lotes as ('#13#10'    SELECT PJS.id,'#13#10'           SUM(l.qt' +
      'd) qtd'#13#10'    FROM PROJECAO_SEMANA PJS'#13#10'    JOIN LOTE l ON l.dtent' +
      'rega between PJS.data_inicio and PJS.data_fim'#13#10'    GROUP BY PJS.' +
      'id'#13#10'  ),'#13#10'  programacao as ('#13#10'    SELECT * FROM realizados'#13#10'    ' +
      'UNION ALL'#13#10'    SELECT * FROM retornadas'#13#10'    UNION ALL'#13#10'    SELE' +
      'CT * FROM devolucoes'#13#10'  ),'#13#10'  programacao_semana as ('#13#10'    SELEC' +
      'T PJS.id,'#13#10'           sum(PR.qtd) qtd'#13#10'      FROM PROJECAO_SEMAN' +
      'A PJS'#13#10'      LEFT OUTER JOIN programacao PR ON PR.dtemissao betw' +
      'een PJS.data_inicio and PJS.data_fim'#13#10'     GROUP BY PJS.id'#13#10'  )'#13 +
      #10#13#10'SELECT PJS.id,'#13#10'       PJS.ano,'#13#10'       PJS.mes,'#13#10'       PJS.' +
      'semana,'#13#10'       PJS.data_inicio,'#13#10'       PJS.data_fim,'#13#10'       P' +
      'JS.data_embarque,'#13#10'       COALESCE(PJS.previsao, 0) previsao,'#13#10' ' +
      '      COALESCE(SUM(l.qtd), 0) projetado,'#13#10'       COALESCE(SUM(PR' +
      '.QTD), 0) realizado,'#13#10'       COALESCE(SUM(PR.QTD), 0) - COALESCE' +
      '(PJS.previsao, 0) saldo'#13#10'  FROM PROJECAO_SEMANA PJS'#13#10'  LEFT OUTE' +
      'R JOIN programacao_semana PR ON PR.id = PJS.id --PR.dtemissao be' +
      'tween PJS.data_inicio and PJS.data_fim'#13#10'  LEFT OUTER JOIN lotes ' +
      'l ON l.id = PJS.id --l.dtentrega between PJS.data_inicio and PJS' +
      '.data_fim'#13#10'  WHERE PJS.ano = :ANO --and pjs.id = 64'#13#10'  GROUP BY ' +
      'PJS.id,'#13#10'           PJS.ano,'#13#10'           PJS.mes,'#13#10'           PJ' +
      'S.semana,'#13#10'           PJS.data_inicio,'#13#10'           PJS.data_fim,' +
      #13#10'           PJS.data_embarque,'#13#10'           PJS.previsao'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ANO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 824
    Top = 64
    object sdsProjecaoSemanaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProjecaoSemanaANO: TIntegerField
      FieldName = 'ANO'
      Required = True
    end
    object sdsProjecaoSemanaMES: TIntegerField
      FieldName = 'MES'
      Required = True
    end
    object sdsProjecaoSemanaSEMANA: TIntegerField
      FieldName = 'SEMANA'
      Required = True
    end
    object sdsProjecaoSemanaDATA_INICIO: TDateField
      FieldName = 'DATA_INICIO'
      Required = True
    end
    object sdsProjecaoSemanaDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
      Required = True
    end
    object sdsProjecaoSemanaDATA_EMBARQUE: TDateField
      FieldName = 'DATA_EMBARQUE'
      Required = True
    end
    object sdsProjecaoSemanaPREVISAO: TIntegerField
      FieldName = 'PREVISAO'
    end
    object sdsProjecaoSemanaPROJETADO: TFloatField
      FieldName = 'PROJETADO'
    end
    object sdsProjecaoSemanaREALIZADO: TFloatField
      FieldName = 'REALIZADO'
    end
    object sdsProjecaoSemanaSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object cdsProjecaoSemana: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end>
    ProviderName = 'dspProjecaoSemana'
    Left = 824
    Top = 168
    object cdsProjecaoSemanaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProjecaoSemanaANO: TIntegerField
      FieldName = 'ANO'
      Required = True
    end
    object cdsProjecaoSemanaMES: TIntegerField
      FieldName = 'MES'
      Required = True
    end
    object cdsProjecaoSemanaSEMANA: TIntegerField
      FieldName = 'SEMANA'
      Required = True
    end
    object cdsProjecaoSemanaDATA_INICIO: TDateField
      FieldName = 'DATA_INICIO'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsProjecaoSemanaDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsProjecaoSemanaDATA_EMBARQUE: TDateField
      FieldName = 'DATA_EMBARQUE'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsProjecaoSemanaPREVISAO: TIntegerField
      FieldName = 'PREVISAO'
      DisplayFormat = '#,0'
    end
    object cdsProjecaoSemanaPROJETADO: TFloatField
      FieldName = 'PROJETADO'
      DisplayFormat = '#,0'
    end
    object cdsProjecaoSemanaREALIZADO: TFloatField
      FieldName = 'REALIZADO'
      DisplayFormat = '#,0'
    end
    object cdsProjecaoSemanaSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '#,0'
    end
  end
  object dsProjecaoSemana: TDataSource
    DataSet = cdsProjecaoSemana
    Left = 824
    Top = 216
  end
  object dspProjecaoSemana: TDataSetProvider
    DataSet = sdsProjecaoSemana
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    Left = 824
    Top = 112
  end
  object cdsTotais: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 825
    Top = 295
    object cdsTotaisMes: TIntegerField
      DisplayWidth = 12
      FieldName = 'Mes'
    end
    object cdsTotaisMes_Desc: TStringField
      DisplayWidth = 15
      FieldName = 'Mes_Desc'
      Size = 60
    end
    object cdsTotaisPrevisao: TIntegerField
      DisplayWidth = 12
      FieldName = 'Previsao'
    end
    object cdsTotaisProjetado: TIntegerField
      DisplayWidth = 12
      FieldName = 'Projetado'
    end
    object cdsTotaisRealizado: TIntegerField
      DisplayWidth = 12
      FieldName = 'Realizado'
    end
  end
  object dsTotais: TDataSource
    DataSet = cdsTotais
    Left = 825
    Top = 343
  end
  object JvProgressForm1: TJvProgressForm
    Caption = 'Aguarde... Carregando dados'
    ProgressMin = 0
    ProgressMax = 0
    ProgressStep = 1
    ProgressPosition = 0
    OnShow = JvProgressForm1Show
    Left = 889
    Top = 279
  end
  object qTotalPrevisao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT sum(p.previsao) PREVISAO'
      'FROM projecao_semana p'
      'WHERE P.ANO = :ANO')
    SQLConnection = dmDatabase.scoDados
    Left = 688
    Top = 200
    object qTotalPrevisaoPREVISAO: TFMTBCDField
      FieldName = 'PREVISAO'
      Precision = 15
      Size = 0
    end
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT sum(p.previsao) PREVISAO'
      'FROM projecao_semana p'
      'WHERE P.ANO = :ANO')
    SQLConnection = dmDatabase.scoDados
    Left = 688
    Top = 264
    object FMTBCDField1: TFMTBCDField
      FieldName = 'PREVISAO'
      Precision = 15
      Size = 0
    end
  end
end
