object frmCadProduto_Imp: TfrmCadProduto_Imp
  Left = 337
  Top = 182
  Width = 625
  Height = 341
  BorderIcons = [biSystemMenu]
  Caption = 'Produtos Impostos'
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
    Width = 617
    Height = 34
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object btnAlterar: TNxButton
      Left = 8
      Top = 4
      Width = 85
      Height = 25
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnAlterarClick
    end
    object btnConfirmar: TNxButton
      Left = 92
      Top = 4
      Width = 85
      Height = 25
      Caption = 'Confirmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnConfirmarClick
    end
    object btnExcluir: TNxButton
      Left = 178
      Top = 2
      Width = 85
      Height = 25
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnExcluirClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 34
    Width = 617
    Height = 276
    Align = alClient
    Enabled = False
    TabOrder = 1
    object Label5: TLabel
      Left = 29
      Top = 56
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
    end
    object Label9: TLabel
      Left = 8
      Top = 77
      Width = 47
      Height = 13
      Caption = 'Tipo Reg:'
    end
    object NxPanel1: TNxPanel
      Left = 1
      Top = 1
      Width = 615
      Height = 37
      Align = alTop
      UseDockManager = False
      ParentBackground = False
      TabOrder = 4
      object DBText1: TDBText
        Left = 133
        Top = 7
        Width = 149
        Height = 13
        DataField = 'REFERENCIA'
        DataSource = dmCadProduto.dsProduto
        Transparent = True
      end
      object Label1: TLabel
        Left = 72
        Top = 5
        Width = 55
        Height = 13
        Caption = 'Refer'#234'ncia:'
        Transparent = True
      end
      object Label10: TLabel
        Left = 72
        Top = 21
        Width = 56
        Height = 13
        Caption = 'ID/Produto:'
        Transparent = True
      end
      object DBText2: TDBText
        Left = 133
        Top = 22
        Width = 68
        Height = 13
        DataField = 'ID'
        DataSource = dmCadProduto.dsProduto
        Transparent = True
      end
      object DBText3: TDBText
        Left = 181
        Top = 22
        Width = 426
        Height = 13
        DataField = 'NOME'
        DataSource = dmCadProduto.dsProduto
        Transparent = True
      end
    end
    object DBDateEdit1: TDBDateEdit
      Left = 61
      Top = 50
      Width = 112
      Height = 19
      DataSource = dmCadProduto.dsProduto_Imp
      Ctl3D = True
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
    end
    object gbxVendedor: TRzGroupBox
      Left = 14
      Top = 99
      Width = 241
      Height = 158
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Base De Entrada na Nota '
      Ctl3D = True
      FlatColor = clNavy
      FlatColorAdjustment = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      VisualStyle = vsGradient
      object Label6: TLabel
        Left = 36
        Top = 76
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtd. Nota:'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 31
        Top = 94
        Width = 54
        Height = 13
        Caption = 'Unid. Nota:'
        FocusControl = DBEdit8
      end
      object Label11: TLabel
        Left = 15
        Top = 24
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Base ST Nota:'
        FocusControl = DBEdit1
      end
      object Label12: TLabel
        Left = 24
        Top = 42
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr. ST Nota:'
        FocusControl = DBEdit5
      end
      object Label4: TLabel
        Left = 55
        Top = 58
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = '% ST:'
        FocusControl = DBEdit4
      end
      object Label7: TLabel
        Left = 11
        Top = 123
        Width = 74
        Height = 13
        Caption = 'Qtd. Conversor:'
        FocusControl = DBEdit7
      end
      object DBEdit6: TDBEdit
        Left = 88
        Top = 70
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'QTD_ORIGINAL'
        DataSource = dmCadProduto.dsProduto_Imp
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 88
        Top = 88
        Width = 82
        Height = 19
        Ctl3D = False
        DataField = 'UNIDADE_ORIG'
        DataSource = dmCadProduto.dsProduto_Imp
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 16
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'BASE_ST_ORIG'
        DataSource = dmCadProduto.dsProduto_Imp
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 88
        Top = 34
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'VLR_ST_ORIG'
        DataSource = dmCadProduto.dsProduto_Imp
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 87
        Top = 52
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'PERC_ST'
        DataSource = dmCadProduto.dsProduto_Imp
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 87
        Top = 117
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'QTD_PACOTE'
        DataSource = dmCadProduto.dsProduto_Imp
        ParentCtl3D = False
        TabOrder = 5
      end
    end
    object RzGroupBox1: TRzGroupBox
      Left = 270
      Top = 176
      Width = 241
      Height = 79
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Base de Sa'#237'da Por Unidade Estoque '
      Ctl3D = True
      FlatColor = clNavy
      FlatColorAdjustment = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      VisualStyle = vsGradient
      object Label2: TLabel
        Left = 39
        Top = 33
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Base ST:'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 48
        Top = 49
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr. ST:'
        FocusControl = DBEdit3
      end
      object DBEdit2: TDBEdit
        Left = 87
        Top = 25
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'BASE_ST'
        DataSource = dmCadProduto.dsProduto_Imp
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 87
        Top = 43
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'VLR_ST'
        DataSource = dmCadProduto.dsProduto_Imp
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 61
      Top = 69
      Width = 356
      Height = 21
      Style = csDropDownList
      DataField = 'TIPO_REG'
      DataSource = dmCadProduto.dsProduto_Imp
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'R=Retida Anteriormente'
        'C=Entrou destacando a ST')
      TabOrder = 1
      Values.Strings = (
        'R'
        'C')
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Produtos Impostos'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 497
    Top = 4
  end
end
