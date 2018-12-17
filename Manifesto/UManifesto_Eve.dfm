object frmManifesto_Eve: TfrmManifesto_Eve
  Left = 396
  Top = 140
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmManifesto_Eve'
  ClientHeight = 442
  ClientWidth = 708
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 41
    Width = 708
    Height = 231
    Align = alClient
    Ctl3D = False
    DataSource = DMManifesto.dsmEventoAux
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 16766421
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 191
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtEvento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Title.Color = 16766421
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Obs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 16766421
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 131
        Visible = True
      end>
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 272
    Width = 708
    Height = 170
    Align = alBottom
    Color = 16771022
    Ctl3D = False
    DataField = 'Obs'
    DataSource = DMManifesto.dsmEventoAux
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 9
      Top = 16
      Width = 72
      Height = 13
      Caption = 'Chave Acesso:'
    end
    object Edit1: TEdit
      Left = 83
      Top = 10
      Width = 561
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object btnFazenda: TNxButton
      Left = 646
      Top = 1
      Width = 47
      Height = 32
      Down = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000018000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFEFFFEFFFFFFFFFFFCFFFFF7ECDAF38E
        66F1A88AFAFFFFFBFFFFFFFEFCFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFCFCFFFFFFFFFFFFFFFFFFFFFF
        FFEBE0FBAF79F9A975E65C42F4A78DFAFFFDFAFEFEFCFFFEFDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFFFE0
        D1BAB69F82BDAC9ABE8A80FF6F5DFCA373F7AE7CF3734AFAEAE0FAFFFFFCFFFF
        FBFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFF
        FFFBFDFC8A9561758F762DA79A648B736B9170689082E76165FF8A72E9714EEC
        AFA0FFFFFFFEFFFFFBFFFFFFFFFFFEFFFEFEFFFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFDFEFFFEFFFFFFFFBBCCA5A19E7B76FFFFADFFFFFAFFFFD0C1BC5673588073
        4EAB3935EE5D5FD35241EA8B6DF6C1A2F8DDCCFFFFFFFAFEFFFCFEFDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFCFFFFFDFFFFFF767E4FD0FFEC5FEDE9FFFAF1F0EAEE
        EAE9ECEFF2F6EBFBF1628058562E27E04F4FFB9472F48D5DF36747F5C2AFFEFF
        FFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFFFFEFDFEFC707749BFFFFC76
        E4D5FFFBEBF8FFFFFFFFFFFFD8C1FFE5D4FFFFFF81AD897B4637FF6F66FBA680
        FBA570ED785CFAF2EBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFFFDFFFFFF
        FF84825CC3FEE96ADDD4FFFBEFF6FAFE9F665DDD7548DF7B4CE2A592EBB8A47B
        7A42D87F5CFF6261FEB37AF37B55F6CBB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFCFFFFFCFFFFFFFFA9B291A9C1A664F1F3FFFFFAFAFCFDCDB9BCD1AEB4CCB1
        B7CFA7ACD4A2A8BD99A3606836D9765DFF7466F48C62F5B693FFFFFFFEFFFFFF
        FFFEFFFFFFFFFFFFFAFEFFF4FEFEFFFFFFE0E1D47C835856F1FFE9FFFFFBFEF9
        F1EBEDFFFFFFFFFFFCFFFDFDFFFFFFEDF3FAB76D56869054FA685FEC735FD987
        72FFFFFFFCFEFFF7FCFBFFFFFFFFFFFFFCFDFAFEFEFEFEFFFFFEFFFFADB1896E
        8B7BB5CFD6FFFFFFAF9698B34631FE985BFAB27FFFFFFFE2DEE7DA7962D7B178
        847D49FF6666B93524E39482FCFFFFF8FEFFFEFFFEFFFFFFFBFFFFFAFBEFF0C6
        ACFED8C8C6D2B1915D30FF7178FFFFFFF0F6F78E6A6D954E4AE2C3B9FDFFFFDD
        BCBCE1875AFFB6879B9A5DC36A55FF8B77BC5034EFB098FAFFFFFCFFFAFAFFFF
        FEEBD6EA8E5FFAA277EA563EF19B7C899C5BF15849EF9893FFFFFFF8FFFFE1E8
        EFF8FFFFF8FFFDF3A484FFAC7AFFAA7DF1AD7B958155F7605BF9A584E26D45FA
        EBE1FEFFFFF4E8DFF39F6FFFAC7CFEAD7FFFB688FFAF7CF3AF78788B51F85349
        EF6A5FF7D0B1FAD3BBF4C8A8F49C72F9A672FDA87AFFA87CFFAF80A59764C55C
        4BFF9066F9AE7FF9F0ECFDFFFFF2E8DFF29D6BFFB988FFAE7EFFAF7AFFBA87FF
        B583CCB97D8E8451FF615BFD8365F7AA70FBA16EFEA97BF9A776FEAA7DFCAB7C
        FFAC80D0A672B56D50CF7363EAD1B0FCFEFCFCFEFCF9FEFFFCE5CCA14C3AEF9E
        72F09F7FA54C3FE69B79A9473EC0A367917E56FF605EFF7E6AFFB280F9A678F7
        A278FBAB79FBA574FFA271EDA572AA793F76DDE6B1F8E6FFFDFAFAFDFCFEFCFF
        FFFFFFB399A3D27954FFFFF4BF97A3F3D6CC936E7EE98C60C9B86F938550F864
        5EFF7062FA9C74FFB07BFAA172F7B48EF9D8C3FAE0D39B8B5EA1FEFB95EDDEFF
        FBFAFCFDFEFAFEFBFFFFFFCEBDC1BD7873FFFFFFA38F92BE8C79E0D7DE9A3E39
        D66E659B6A49878F58A85D52C74F56F88471FEC5A5FFFFFAFFFFFFE4E9E6BA9C
        6A5CFEF7BCF4EBFFFCFEFFFFFFFFFFFEFFFFFFF0EAEBC0B2B8BAA0A4E5DBE09C
        5B4DFFFFFFE0D7DBECF2F4E6967FFFAA728A89524054373A858A7F9799B19791
        BF95887B8B5574C2A353FFFFFFFDFCFDFDFDFFFFFFFFFFFFFCFEFEFFFFFFE7E3
        E5E1D8DBF2F4F691423CF1EBEC532F338D7E73A26758EFC6B0FFBC94E7D5AD8F
        A0857A8F816D816A4D85622FCFBE59FFFFF2FEFFFFFCFFFCFDFCFFFFFFFFFFFF
        FCFFFFFDFFFFF9F7F7FDFFFFFFFFFFDDB9BAF5EEE1F1F1F3F6F6F8C6CCCED1DC
        DFFBF4EEFAFFFFFFFFFFFFFFFFFAFBF9F9FFFFF7FFFFFFFFFDFFFDFEFCFDFFFD
        FEFDFFFFFFFFFFFFFFFFFFFFFFFFFDFEFEFFFEFFFEFDFFFFFFFFF8FAF6F9F8F7
        FFFFFFFFFFFFFFFFFFFEFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF8FEFFFFFDFFFC
        FEFDFEFDFFFEFEFFFCFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 1
      OnClick = btnFazendaClick
    end
  end
end
