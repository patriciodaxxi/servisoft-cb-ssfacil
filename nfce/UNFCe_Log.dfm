object frmNFCe_Log: TfrmNFCe_Log
  Left = 180
  Top = 153
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmNFCe_Log'
  ClientHeight = 442
  ClientWidth = 1087
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1087
    Height = 65
    Align = alTop
    Color = 12058551
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 9
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = 'Chave Acesso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 64
      Top = 27
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 50
      Top = 45
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Nota:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 350
      Top = 27
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Recibo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 800
      Top = 16
      Width = 261
      Height = 26
      Caption = 
        'Para Atualizar o Recibo, posicionar no registro que esta'#13#10'o Reci' +
        'bo correto e clicar no bot'#227'o "Atualizar Recibo"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 102
      Top = 4
      Width = 531
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      DataField = 'CHAVE_ACESSO'
      DataSource = DMNFCe.dsNota_Eletronica
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 102
      Top = 22
      Width = 115
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      DataField = 'SERIE'
      DataSource = DMNFCe.dsNota_Eletronica
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 102
      Top = 40
      Width = 115
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      DataField = 'NRO_NOTA_FISCAL'
      DataSource = DMNFCe.dsNota_Eletronica
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 414
      Top = 22
      Width = 219
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      DataField = 'NRO_RECIBO'
      DataSource = DMNFCe.dsNota_Eletronica
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object btnAtualizaRec: TNxButton
      Left = 633
      Top = 18
      Width = 132
      Height = 25
      Cursor = crHandPoint
      Caption = 'Atualizar Recibo'
      Down = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 4
      Transparent = True
      OnClick = btnAtualizaRecClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 65
    Width = 1087
    Height = 377
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = DMNFCe.dsmNFe_Log
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 12
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Color = 16767411
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_NFE'
        Title.Alignment = taCenter
        Title.Caption = 'ID NFe'
        Title.Color = 16767411
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataRecebimento'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Recebimento'
        Title.Color = 16767411
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Protocolo'
        Title.Alignment = taCenter
        Title.Color = 16767411
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRecibo'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Recibo Por Log'
        Title.Color = 16767411
        Width = 166
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRecibo_Orig'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Recibo Original'
        Title.Color = 16767411
        Width = 143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Title.Alignment = taCenter
        Title.Color = 16767411
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Motivo'
        Title.Alignment = taCenter
        Title.Color = 16767411
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MSGDados'
        Title.Alignment = taCenter
        Title.Color = 16767411
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MSGRETWS'
        Title.Alignment = taCenter
        Title.Color = 16767411
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MSGRESULTADO'
        Title.Alignment = taCenter
        Title.Color = 16767411
        Visible = True
      end>
  end
end
