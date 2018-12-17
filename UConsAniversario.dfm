object frmConsAniversario: TfrmConsAniversario
  Left = 348
  Top = 169
  Width = 928
  Height = 480
  Caption = 'frmConsAniversario'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 442
    Align = alClient
    TabOrder = 0
    object NxPanel1: TNxPanel
      Left = 1
      Top = 1
      Width = 910
      Height = 88
      Align = alTop
      Color = 16776176
      UseDockManager = False
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object RzCheckList1: TRzCheckList
        Left = 0
        Top = 0
        Width = 278
        Height = 88
        Items.Strings = (
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
        Items.ItemEnabled = (
          True
          True
          True
          True
          True
          True
          True
          True
          True
          True
          True
          True)
        Items.ItemState = (
          0
          0
          0
          0
          0
          0
          0
          0
          0
          0
          0
          0)
        Align = alLeft
        BiDiMode = bdLeftToRight
        Color = 15722978
        Columns = 3
        ItemHeight = 17
        ParentBiDiMode = False
        TabOrder = 0
      end
      object btnConsultar: TNxButton
        Left = 400
        Top = 32
        Width = 106
        Height = 29
        Caption = 'Consulta'
        TabOrder = 1
        OnClick = btnConsultarClick
      end
      object btnImprimir: TNxButton
        Left = 536
        Top = 32
        Width = 106
        Height = 29
        Caption = 'Imprimir'
        TabOrder = 2
        OnClick = btnImprimirClick
      end
    end
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 89
      Width = 910
      Height = 352
      Align = alClient
      DataSource = DMCadPessoa.dsAniversario
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Flat = False
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'MS Sans Serif'
      BandsFont.Style = []
      Groupings = <>
      GridStyle.Style = gsCustom
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 8
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'Dia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fantasia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Mes'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fone'
          Visible = True
        end>
    end
  end
end
