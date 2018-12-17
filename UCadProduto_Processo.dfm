object frmCadProduto_Processo: TfrmCadProduto_Processo
  Left = 384
  Top = 258
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadProduto_Processo'
  ClientHeight = 246
  ClientWidth = 599
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
  object Panel3: TPanel
    Left = 0
    Top = 212
    Width = 599
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 300
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F10) Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 201
      Top = 5
      Width = 98
      Height = 25
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 212
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label10: TLabel
      Left = 28
      Top = 29
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Processo:'
    end
    object SpeedButton1: TSpeedButton
      Left = 560
      Top = 20
      Width = 23
      Height = 22
      Hint = 'Abre a tela de Processos'
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Label8: TLabel
      Left = 47
      Top = 52
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Setor:'
    end
    object SpeedButton2: TSpeedButton
      Left = 560
      Top = 44
      Width = 23
      Height = 22
      Hint = 'Abre a tela de Setores'
      Caption = '...'
      OnClick = SpeedButton2Click
    end
    object Label6: TLabel
      Left = 34
      Top = 74
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Posi'#231#227'o:'
    end
    object SpeedButton4: TSpeedButton
      Left = 560
      Top = 66
      Width = 23
      Height = 22
      Hint = 'Abre a tela de Setores'
      Caption = '...'
      OnClick = SpeedButton4Click
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 78
      Top = 21
      Width = 480
      Height = 21
      DropDownCount = 15
      DataField = 'ID_PROCESSO'
      DataSource = dmCadProduto.dsProdutoProcesso
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmCadProduto.dsProcesso
      TabOrder = 0
      OnEnter = RxDBLookupCombo2Enter
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 78
      Top = 44
      Width = 480
      Height = 21
      DropDownCount = 15
      DataField = 'ID_SETOR'
      DataSource = dmCadProduto.dsProdutoProcesso
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmCadProduto.dsSetor
      TabOrder = 1
      OnEnter = RxDBLookupCombo1Enter
    end
    object Panel1: TPanel
      Left = 1
      Top = 91
      Width = 597
      Height = 120
      Align = alBottom
      BevelOuter = bvNone
      Color = clMoneyGreen
      TabOrder = 3
      object Label4: TLabel
        Left = 16
        Top = 7
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Quantidade:'
      end
      object Label1: TLabel
        Left = 31
        Top = 31
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = 'Unidade:'
      end
      object Label2: TLabel
        Left = 22
        Top = 53
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor Unit.:'
      end
      object Label3: TLabel
        Left = 20
        Top = 76
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor Total:'
      end
      object Label5: TLabel
        Left = 13
        Top = 99
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Observa'#231#227'o:'
      end
      object SpeedButton3: TSpeedButton
        Left = 183
        Top = 21
        Width = 23
        Height = 22
        Hint = 'Abre a tela de Unidades'
        Caption = '...'
        OnClick = SpeedButton3Click
      end
      object DBEdit2: TDBEdit
        Left = 77
        Top = -1
        Width = 102
        Height = 21
        DataField = 'QTD'
        DataSource = dmCadProduto.dsProdutoProcesso
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 77
        Top = 45
        Width = 105
        Height = 21
        DataField = 'VLR_UNIT'
        DataSource = dmCadProduto.dsProdutoProcesso
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 77
        Top = 68
        Width = 105
        Height = 21
        DataField = 'VLR_TOTAL'
        DataSource = dmCadProduto.dsProdutoProcesso
        TabOrder = 3
        OnEnter = DBEdit3Enter
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 77
        Top = 22
        Width = 104
        Height = 21
        DropDownCount = 8
        DataField = 'UN'
        DataSource = dmCadProduto.dsProdutoProcesso
        LookupField = 'UNIDADE'
        LookupDisplay = 'UNIDADE'
        LookupSource = dmCadProduto.dsUnidade
        TabOrder = 1
        OnEnter = RxDBLookupCombo2Enter
      end
      object DBEdit4: TDBEdit
        Left = 77
        Top = 91
        Width = 480
        Height = 21
        DataField = 'OBS'
        DataSource = dmCadProduto.dsProdutoProcesso
        TabOrder = 4
      end
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 78
      Top = 66
      Width = 480
      Height = 21
      DropDownCount = 15
      DataField = 'ID_POSICAO'
      DataSource = dmCadProduto.dsProdutoProcesso
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmCadProduto.dsPosicao
      TabOrder = 2
      OnEnter = RxDBLookupCombo4Enter
    end
  end
end
