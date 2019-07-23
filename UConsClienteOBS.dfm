object frmConsClienteOBS: TfrmConsClienteOBS
  Left = 215
  Top = 17
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsClienteOBS'
  ClientHeight = 634
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NxPanel1: TNxPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 45
    Align = alTop
    UseDockManager = False
    ParentBackground = False
    TabOrder = 0
    object NxLabel1: TNxLabel
      Left = 13
      Top = 10
      Width = 51
      Height = 16
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel2: TNxLabel
      Left = 156
      Top = 9
      Width = 36
      Height = 16
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object Label3: TLabel
      Left = 66
      Top = 29
      Width = 113
      Height = 13
      Caption = 'Pressione ESC para sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 68
      Top = 6
      Width = 85
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = CurrencyEdit1Change
      OnKeyDown = CurrencyEdit1KeyDown
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 45
    Width = 920
    Height = 48
    Align = alTop
    Color = 16759413
    TabOrder = 1
    object Label1: TLabel
      Left = 58
      Top = 8
      Width = 85
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tabela Pre'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 146
      Top = 9
      Width = 390
      Height = 15
      DataField = 'NOME_TABPRECO'
      DataSource = DMConsClienteOBS.dsConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 146
      Top = 28
      Width = 390
      Height = 15
      DataField = 'NOME_CONDPGTO'
      DataSource = DMConsClienteOBS.dsConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 25
      Top = 27
      Width = 118
      Height = 14
      Alignment = taRightJustify
      Caption = 'Cond. Pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object btnConfirmar: TNxButton
      Left = 771
      Top = 23
      Width = 75
      Caption = 'Confirmar'
      Enabled = False
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnAlterar: TNxButton
      Left = 698
      Top = 23
      Width = 75
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 93
    Width = 920
    Height = 89
    Align = alTop
    Color = 12320767
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 0
    Top = 182
    Width = 920
    Height = 452
    Align = alClient
    Color = 12320767
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object UCControls1: TUCControls
    GroupName = 'Consulta Obs Cliente (Or'#231')'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 560
    Top = 230
  end
end
