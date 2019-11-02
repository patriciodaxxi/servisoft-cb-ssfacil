object frmCadOrcamento_NaoAprovado: TfrmCadOrcamento_NaoAprovado
  Left = 260
  Top = 72
  Width = 1031
  Height = 596
  Caption = 'frmCadOrcamento_NaoAprovado'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1023
    Height = 33
    Align = alTop
    Color = clSilver
    TabOrder = 0
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 89
    Width = 1023
    Height = 368
    Align = alClient
    Ctl3D = False
    DataSource = DMCadPedido.dsmOrcamento_Itens
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = True
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
    ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 10
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_Orcamento'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'ID Orcamento'
        Width = 78
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_Produto'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'ID Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_Produto'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Width = 204
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtd'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vlr_Unitario'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vlr_Total'
        ReadOnly = True
        Title.Caption = 'Vlr. Total'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_Nao_Aprov'
        Title.Alignment = taCenter
        Title.Caption = 'Dt Reprovado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Motivo_Nao_Aprov'
        Title.Alignment = taCenter
        Title.Caption = 'Motivo'
        Width = 327
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 1023
    Height = 56
    Align = alTop
    Color = clSilver
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object DBText1: TDBText
      Left = 54
      Top = 8
      Width = 387
      Height = 13
      DataField = 'NOME_CLIENTE'
      DataSource = DMCadPedido.dsOrcamento
    end
    object Label2: TLabel
      Left = 66
      Top = 23
      Width = 139
      Height = 25
      Caption = 'Sem Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnFechar: TNxButton
      Left = 596
      Top = 20
      Width = 153
      Height = 30
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = btnFecharClick
    end
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 457
    Width = 1023
    Height = 108
    TabStop = False
    Align = alBottom
    Color = clSilver
    DataField = 'Motivo_Nao_Aprovado_Memo'
    DataSource = DMCadPedido.dsmOrcamento_Itens
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
  end
end
