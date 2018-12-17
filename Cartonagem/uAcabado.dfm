object fAcabado: TfAcabado
  Left = 450
  Top = 325
  Width = 537
  Height = 332
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fAcabado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 29
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 74
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 77
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 153
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 29
    Width = 521
    Height = 265
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados da Caixa'
      object Label1: TLabel
        Left = 82
        Top = 16
        Width = 14
        Height = 13
        Alignment = taRightJustify
        Caption = 'ID:'
      end
      object Label2: TLabel
        Left = 69
        Top = 104
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Faca:'
      end
      object Label3: TLabel
        Left = 25
        Top = 128
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ficha T'#233'cnica:'
      end
      object Label4: TLabel
        Left = 45
        Top = 64
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Descri'#231#227'o:'
      end
      object Label5: TLabel
        Left = 66
        Top = 152
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pasta:'
      end
      object Label6: TLabel
        Left = 41
        Top = 40
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Refer'#234'ncia:'
      end
      object Label14: TLabel
        Left = 104
        Top = 78
        Width = 191
        Height = 13
        Caption = 'Pressione F2 nos campos para consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 36
        Top = 176
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Localiza'#231#227'o:'
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 8
        Width = 121
        Height = 21
        TabStop = False
        DataField = 'ID'
        DataSource = dmAcabado.dsProduto
        ReadOnly = True
        TabOrder = 0
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 104
        Top = 96
        Width = 121
        Height = 21
        DropDownCount = 15
        DataField = 'FACA_ID'
        DataSource = dmAcabado.dsAcabado
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = dmAcabado.dsFaca
        TabOrder = 3
        OnEnter = RxDBLookupCombo1Enter
        OnKeyDown = RxDBLookupCombo1KeyDown
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 104
        Top = 120
        Width = 121
        Height = 21
        DropDownCount = 15
        DataField = 'FICHA_TEC_ID'
        DataSource = dmAcabado.dsAcabado
        LookupField = 'ID'
        LookupDisplay = 'ID'
        LookupSource = dmAcabado.dsFichaTecnica
        TabOrder = 4
        OnEnter = RxDBLookupCombo2Enter
        OnKeyDown = RxDBLookupCombo2KeyDown
      end
      object DBEdit2: TDBEdit
        Left = 104
        Top = 56
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = dmAcabado.dsProduto
        TabOrder = 2
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 104
        Top = 144
        Width = 121
        Height = 21
        DropDownCount = 15
        DataField = 'PASTA_ID'
        DataSource = dmAcabado.dsAcabado
        LookupField = 'ID'
        LookupDisplay = 'ID'
        LookupSource = dmAcabado.dsPasta
        TabOrder = 5
        OnEnter = RxDBLookupCombo3Enter
        OnKeyDown = RxDBLookupCombo3KeyDown
      end
      object DBCheckBox1: TDBCheckBox
        Left = 288
        Top = 10
        Width = 97
        Height = 17
        Caption = 'Inativo'
        DataField = 'INATIVO'
        DataSource = dmAcabado.dsProduto
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit3: TDBEdit
        Left = 104
        Top = 32
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        DataField = 'REFERENCIA'
        DataSource = dmAcabado.dsProduto
        TabOrder = 1
        OnExit = DBEdit3Exit
      end
      object DBEdit6: TDBEdit
        Left = 104
        Top = 168
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        DataField = 'LOCALIZACAO'
        DataSource = dmAcabado.dsProduto
        TabOrder = 7
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados do Produto'
      ImageIndex = 1
      object Label7: TLabel
        Left = 69
        Top = 64
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'NCM:'
      end
      object Label8: TLabel
        Left = 31
        Top = 16
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pre'#231'o Venda:'
      end
      object Label9: TLabel
        Left = 69
        Top = 40
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = '% IPI:'
      end
      object Label10: TLabel
        Left = 53
        Top = 88
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = 'Unidade:'
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 104
        Top = 56
        Width = 121
        Height = 21
        DropDownCount = 8
        DataField = 'ID_NCM'
        DataSource = dmAcabado.dsProduto
        LookupField = 'ID'
        LookupDisplay = 'NCM'
        LookupSource = dmAcabado.dsNCM
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 104
        Top = 8
        Width = 121
        Height = 21
        DataField = 'PRECO_VENDA'
        DataSource = dmAcabado.dsProduto
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 104
        Top = 32
        Width = 121
        Height = 21
        DataField = 'PERC_IPI'
        DataSource = dmAcabado.dsProduto
        TabOrder = 1
      end
      object RxDBLookupCombo5: TRxDBLookupCombo
        Left = 104
        Top = 80
        Width = 121
        Height = 21
        DropDownCount = 8
        DataField = 'UNIDADE'
        DataSource = dmAcabado.dsProduto
        LookupField = 'UNIDADE'
        LookupDisplay = 'UNIDADE'
        LookupSource = dmAcabado.dsUnidade
        TabOrder = 3
        OnEnter = RxDBLookupCombo5Enter
      end
    end
  end
end
