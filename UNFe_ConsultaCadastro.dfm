object fNFe_ConsultaCadastro: TfNFe_ConsultaCadastro
  Left = 213
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Cadastro'
  ClientHeight = 462
  ClientWidth = 1008
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    1008
    462)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 35
    Top = 120
    Width = 67
    Height = 13
    Caption = 'Insc. Estadual'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 75
    Top = 136
    Width = 27
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 292
    Top = 134
    Width = 20
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 581
    Top = 388
    Width = 14
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 84
    Top = 154
    Width = 18
    Height = 13
    Caption = 'cSit'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 46
    Top = 172
    Width = 56
    Height = 13
    Caption = 'indCredNFe'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 46
    Top = 190
    Width = 56
    Height = 13
    Caption = 'indCredCTe'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 74
    Top = 208
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 55
    Top = 226
    Width = 47
    Height = 13
    Caption = 'xRegApur'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 73
    Top = 244
    Width = 29
    Height = 13
    Caption = 'CNAE'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 14
    Top = 262
    Width = 88
    Height = 13
    Caption = 'Dt.In'#237'cio Atividade'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 355
    Top = 262
    Width = 91
    Height = 13
    Caption = 'Dt. '#218'ltima Situa'#231#227'o'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 64
    Top = 280
    Width = 38
    Height = 13
    Caption = 'IEUnica'
    FocusControl = DBEdit13
  end
  object Label14: TLabel
    Left = 412
    Top = 280
    Width = 34
    Height = 13
    Caption = 'IEAtual'
    FocusControl = DBEdit14
  end
  object Label15: TLabel
    Left = 56
    Top = 298
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit15
  end
  object Label16: TLabel
    Left = 68
    Top = 316
    Width = 34
    Height = 13
    Caption = 'N'#186' End'
    FocusControl = DBEdit16
  end
  object Label17: TLabel
    Left = 38
    Top = 334
    Width = 64
    Height = 13
    Caption = 'Complemento'
    FocusControl = DBEdit17
  end
  object Label18: TLabel
    Left = 75
    Top = 352
    Width = 27
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit18
  end
  object Label19: TLabel
    Left = 32
    Top = 370
    Width = 70
    Height = 13
    Caption = 'C'#243'd. Municipio'
    FocusControl = DBEdit19
  end
  object Label20: TLabel
    Left = 26
    Top = 388
    Width = 76
    Height = 13
    Caption = 'Nome Municipio'
    FocusControl = DBEdit20
  end
  object Label21: TLabel
    Left = 81
    Top = 406
    Width = 21
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit21
  end
  object Label22: TLabel
    Left = 248
    Top = 152
    Width = 190
    Height = 13
    Caption = '0= N'#227'o Habilitado   1= Habilitado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label23: TLabel
    Left = 488
    Top = 120
    Width = 417
    Height = 70
    Caption = 'N'#227'o Habilitada'
    Color = 15000804
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -60
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 105
    Top = 112
    Width = 186
    Height = 19
    Ctl3D = False
    DataField = 'IE'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 105
    Top = 130
    Width = 186
    Height = 19
    Ctl3D = False
    DataField = 'CNPJ'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 315
    Top = 128
    Width = 147
    Height = 19
    Ctl3D = False
    DataField = 'CPF'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 598
    Top = 382
    Width = 30
    Height = 19
    Ctl3D = False
    DataField = 'UF'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 105
    Top = 148
    Width = 134
    Height = 19
    Ctl3D = False
    DataField = 'cSit'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
    OnChange = DBEdit5Change
  end
  object DBEdit6: TDBEdit
    Left = 105
    Top = 166
    Width = 134
    Height = 19
    Ctl3D = False
    DataField = 'indCredNFe'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 105
    Top = 184
    Width = 134
    Height = 19
    Ctl3D = False
    DataField = 'indCredCTe'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 105
    Top = 202
    Width = 784
    Height = 19
    Ctl3D = False
    DataField = 'xNome'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 105
    Top = 220
    Width = 784
    Height = 19
    Ctl3D = False
    DataField = 'xRegApur'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 105
    Top = 238
    Width = 95
    Height = 19
    Ctl3D = False
    DataField = 'CNAE'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 105
    Top = 256
    Width = 238
    Height = 19
    Ctl3D = False
    DataField = 'dIniAtiv'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 449
    Top = 256
    Width = 238
    Height = 19
    Ctl3D = False
    DataField = 'dUltSit'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 11
  end
  object DBEdit13: TDBEdit
    Left = 105
    Top = 274
    Width = 186
    Height = 19
    Ctl3D = False
    DataField = 'IEUnica'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 12
  end
  object DBEdit14: TDBEdit
    Left = 449
    Top = 274
    Width = 186
    Height = 19
    Ctl3D = False
    DataField = 'IEAtual'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 13
  end
  object DBEdit15: TDBEdit
    Left = 105
    Top = 292
    Width = 900
    Height = 19
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    DataField = 'xLgr'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 14
  end
  object DBEdit16: TDBEdit
    Left = 105
    Top = 310
    Width = 784
    Height = 19
    Ctl3D = False
    DataField = 'nro'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 15
  end
  object DBEdit17: TDBEdit
    Left = 105
    Top = 328
    Width = 784
    Height = 19
    Ctl3D = False
    DataField = 'xCpl'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 16
  end
  object DBEdit18: TDBEdit
    Left = 105
    Top = 346
    Width = 784
    Height = 19
    Ctl3D = False
    DataField = 'xBairro'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 17
  end
  object DBEdit19: TDBEdit
    Left = 105
    Top = 364
    Width = 95
    Height = 19
    Ctl3D = False
    DataField = 'cMun'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 18
  end
  object DBEdit20: TDBEdit
    Left = 105
    Top = 382
    Width = 472
    Height = 19
    Ctl3D = False
    DataField = 'xMun'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 19
  end
  object DBEdit21: TDBEdit
    Left = 105
    Top = 400
    Width = 108
    Height = 19
    Ctl3D = False
    DataField = 'CEP'
    DataSource = DMCadPessoa.dsConsultaCadastro
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 20
  end
  object Panel1: TPanel
    Left = 0
    Top = 421
    Width = 1008
    Height = 41
    Align = alBottom
    Color = clMoneyGreen
    TabOrder = 21
    object BitBtn2: TBitBtn
      Left = 198
      Top = 7
      Width = 105
      Height = 28
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 93
      Top = 7
      Width = 105
      Height = 28
      Caption = 'Copiar Endere'#231'o'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 0
    Width = 1008
    Height = 97
    Align = alTop
    DataSource = DMCadPessoa.dsConsultaCadastro
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 22
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
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 2
    RowCount = 2
  end
end
