object frmConsReal_Projetado_Det: TfrmConsReal_Projetado_Det
  Left = 295
  Top = 126
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsReal_Projetado_Det'
  ClientHeight = 524
  ClientWidth = 920
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 47
    Width = 920
    Height = 400
    Align = alClient
    Ctl3D = False
    DataSource = DMConsReal.dsConDetForn
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnEnter = SMDBGrid1Enter
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Alignment = taCenter
        Title.Caption = 'ID Fornecedor'
        Title.Color = 16777147
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_FORNECEDOR'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Fornecedor'
        Title.Color = 16777147
        Width = 407
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total'
        Title.Color = 16777147
        Width = 108
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Title.Color = 16777147
        Width = 97
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 47
    Align = alTop
    Color = 13487565
    TabOrder = 1
    OnEnter = Panel1Enter
    object Label1: TLabel
      Left = 12
      Top = 10
      Width = 38
      Height = 13
      Caption = 'Conta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 575
      Top = 28
      Width = 313
      Height = 13
      Caption = 'Duplo Clique Para Alterar a Conta de Or'#231'amento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NxButton1: TNxButton
      Left = 432
      Top = 14
      Width = 129
      Height = 25
      Caption = 'Fechar'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      OnClick = NxButton1Click
    end
    object DBEdit1: TDBEdit
      Left = 52
      Top = 5
      Width = 363
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      DataField = 'Cod_Conta'
      DataSource = DMConsReal.dsmConsAux
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 52
      Top = 23
      Width = 363
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      DataField = 'Nome_Conta'
      DataSource = DMConsReal.dsmConsAux
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object pnlCadastro: TPanel
    Left = 0
    Top = 447
    Width = 920
    Height = 77
    Align = alBottom
    TabOrder = 2
    OnExit = pnlCadastroExit
    object Label2: TLabel
      Left = 72
      Top = 16
      Width = 71
      Height = 13
      Caption = 'ID Fornecedor:'
    end
    object Label65: TLabel
      Left = 45
      Top = 35
      Width = 101
      Height = 13
      Alignment = taRightJustify
      Caption = 'Conta de Or'#231'amento:'
    end
    object Label3: TLabel
      Left = 472
      Top = 33
      Width = 76
      Height = 14
      Caption = 'F2 Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit3: TDBEdit
      Left = 149
      Top = 9
      Width = 64
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      DataField = 'CODIGO'
      DataSource = DMConsReal.dsPessoa
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 212
      Top = 9
      Width = 557
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      DataField = 'NOME'
      DataSource = DMConsReal.dsPessoa
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object RxDBLookupCombo19: TRxDBLookupCombo
      Left = 149
      Top = 27
      Width = 316
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'FORNECEDOR_CONTA_ID'
      DataSource = DMConsReal.dsPessoa
      LookupField = 'ID'
      LookupDisplay = 'DESCRICAO'
      LookupSource = DMConsReal.dsContaOrcamento
      ParentCtl3D = False
      TabOrder = 2
      OnKeyDown = RxDBLookupCombo19KeyDown
    end
    object NxButton2: TNxButton
      Left = 149
      Top = 50
      Width = 75
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = NxButton2Click
    end
  end
end
