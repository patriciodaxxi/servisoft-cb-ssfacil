object frmCadOrdemServico_Param: TfrmCadOrdemServico_Param
  Left = 434
  Top = 149
  Width = 560
  Height = 416
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'frmCadOrdemServico_Param'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 544
    Height = 35
    Align = alTop
    Color = 8404992
    TabOrder = 0
    object btnConfirmar: TBitBtn
      Left = 80
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TBitBtn
      Left = 155
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnAlterar: TBitBtn
      Left = 5
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnAlterarClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 35
    Width = 544
    Height = 343
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados Gerais'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 536
        Height = 315
        Align = alClient
        Enabled = False
        TabOrder = 0
        object Label22: TLabel
          Left = 74
          Top = 46
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Layout:'
        end
        object Label15: TLabel
          Left = 31
          Top = 24
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tamanho Papel:'
        end
        object Label1: TLabel
          Left = 8
          Top = 101
          Width = 109
          Height = 13
          Alignment = taRightJustify
          Caption = 'Informa'#231#245'es Adicionais'
        end
        object Label2: TLabel
          Left = 48
          Top = 68
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Imprimir Vias:'
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 113
          Top = 16
          Width = 240
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          DataField = 'TAMANHO_PAPEL'
          DataSource = DMCadOrdemServico.dsOSParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Folha inteira (A4)'
            'Meia folha (A5)')
          ParentCtl3D = False
          TabOrder = 0
          Values.Strings = (
            'fpA4'
            'fpA5')
        end
        object RxDBComboBox2: TRxDBComboBox
          Left = 113
          Top = 38
          Width = 240
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          DataField = 'LAYOUT_IMPRESSAO'
          DataSource = DMCadOrdemServico.dsOSParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Express'
            'Pioneira')
          ParentCtl3D = False
          TabOrder = 1
          Values.Strings = (
            '1'
            '2')
        end
        object DBMemo1: TDBMemo
          Left = 1
          Top = 120
          Width = 534
          Height = 194
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataField = 'INFO_ADICIONAIS'
          DataSource = DMCadOrdemServico.dsOSParametros
          TabOrder = 3
        end
        object DBEdit1: TDBEdit
          Left = 113
          Top = 60
          Width = 121
          Height = 21
          DataField = 'IMPRIMIR_VIAS'
          DataSource = DMCadOrdemServico.dsOSParametros
          TabOrder = 2
        end
      end
    end
  end
end
