object frmSel_ContaOrc2: TfrmSel_ContaOrc2
  Left = 290
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_ContaOrc2'
  ClientHeight = 446
  ClientWidth = 760
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
    Width = 760
    Height = 28
    Align = alTop
    Color = 13361867
    TabOrder = 0
    object Label1: TLabel
      Left = 160
      Top = 11
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Edit1: TEdit
      Left = 192
      Top = 4
      Width = 390
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object btnConsultar: TBitBtn
      Left = 583
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnConsultarClick
    end
    object ComboBox2: TComboBox
      Left = 10
      Top = 4
      Width = 129
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 2
      ParentCtl3D = False
      TabOrder = 2
      Text = 'Ambos'
      Items.Strings = (
        'Receita'
        'Despesa'
        'Ambos')
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 28
    Width = 760
    Height = 381
    Align = alClient
    Ctl3D = False
    DataSource = dsContaOrc
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = SMDBGrid1TitleClick
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
    ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo '
        Title.Color = 16777151
        Width = 188
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_AUX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Title.Color = 16777151
        Width = 476
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Title.Color = 16777151
        Width = 34
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 409
    Width = 760
    Height = 37
    Align = alBottom
    Color = 8404992
    TabOrder = 2
    object btnCopiar: TNxButton
      Left = 4
      Top = 4
      Width = 214
      Height = 30
      Caption = 'Copiar Selecionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F4F0DCCFBAB697669E712A97681C9767
        1C9F7029B99664DCCEB9F7F4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE1D5B7996C9D7334B08B4FD7C7A6
        E6DBC5E5D5BAE1D4B9E1D9C6D4C6A8AF8A4F9D7233B8986CE8E0D2FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBF9CEBA97A07C41C5AC85D3
        B783BE923C9A5B008F4B008F50008C4C00844600895100AC863AC8AE82C3AA84
        A47B3FCDB791FCFBF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBF9C0A577A783
        48E2CFA8B9821BA46400A56600A87104A77205A47104A26F02A16E019C6A0091
        5A008B53009D6F1ADAC8AAA78548C0A274FCFAF7FFFFFFFFFFFFFFFFFFFFFFFF
        D1B998A58047EBDDBDAA5C00AF7100B17709AE7609AA7307A87006A56F06A26D
        03A06C039F6A029D6A029A6701945D00814100DDD3B9A88348CFB891FFFFFFFF
        FFFFFFFFFFE9E1D5A07B42E6D3A7B06200BA7E09B87B0DB3780AB07707AE7509
        AC7307A97205A67006A26D03A16D039F6B029D69019B6901996700814100D8C7
        ABA37C3EE8DFD1FFFFFFFFFFFFB5976CC8AE84CC901DBA7700BB7F0FB77B0AB6
        7A0AB2780BB07708AE7508AC7307A97107A66E05A36E03A16C039D69019C6800
        996800945E009D701BC5A985B6966AFFFFFFF7F5F1986F32E6C484BD7600C081
        0FBD7E0BB87700B87A06B67909B2780BB07709AE7608AB7407A87105A56E05A3
        6C029E68019A62009A67009A68008C5300CBB0839B7032F8F3EFDCCFBAB18C53
        E2B055C17C03C0810EBD7807D0A657C6953DB16E00B67A0BB3780BB07707AD75
        08AC7406A871039D6100B08436BA96549760029A6700915A00AD863DAE8B52DC
        CDB4B39564E5D4AFD28F1ACC8F24C78513D9B47AFEFFFFECDDBFC08A2CB47200
        B67A0BB2790BB07609AD7406A46700AF7D29E4D6BBFFFFFFC8AE889A63089B67
        008A5200D6C5A5B59560996D28FFF8DECF8E1AD39B39CF9126EDDBBAFDFCFAFE
        FCF6EDDFC3C28C31B37000B77B0AB27708A96800B4822CE8DBC1FFFFFFFFFFFF
        EAE2C89D65139F6A00864700E4D9C69C6E27936116FFFFE7D49A31DAA44CD49A
        39CF9633E8CFA2F9F1E8FDFBF6EADBBBC18C2EB27000AF6C00B88327E6D7BAFF
        FFFFFFFFFFE3D1B1AB771C9F6800A36F038B4E00E5D7BC966316926114FFFFF1
        DAA244DEAD5BDAA64FD29936D39C3EE7CCA0F9F3E9FBF5ECE7D5B0C18A31BE86
        2BE6D2AFFCFAF9FFFFFFE2D0AAB07D1FA36800A66D04A371048E4F00E7D8BB96
        6517996A23FFFFF6E2AC53E2B56ADEAF5EDAA751D49E3DD39F43E7CDA0FBF5F2
        F7EDE0EAD6B3E8D6B3F7F2E4FFFFFFE2D0ABB4801EA96D00AB7205A97105A772
        058F4C00E8DDC59B7028B49460E9DDC3F0C57BE6BD77E2B86EDFB263DCAD59D5
        A145D19E41E6CA9CF9F2EDF8EDE0F8EFE3FDFFFFE2CAA4B77D16AF7000B07608
        AE7507AB7407AA70039B5C00D9CAA7B59562DBCEB7B1905AFFF0C7E8BF7CE7C1
        7FE3BB73E1B56ADEB060D5A248D3A147E7CFA4F8EFE6F9F3EDE4CCA0BD7F15B2
        7000B77C0CB4790BB07607AE7608A46700C0943DAE8A4FDBCEB7F7F3F0986C2A
        FFF6DEEFCC8FEAC88DE7C382E4BD79E3B76FDEB367D8A650D8A855EBD4ACE8CF
        A2C48A20B97200BA7A09B97D0CB87B0DB5780AB17608A46500D6BA849B6F32F7
        F5F1FFFFFFB49364CDB796FFEEC8EDCC96EBCA91E8C688E7BF7EE4BB76DFB46A
        D9AA59DCAD5ED5A652CA932FC48A20BF8112BA7A08B87806B57807AE6E00B984
        1BC5AC85B7956BFFFFFFFFFFFFEBE4D89B7130F7EDE0F8DDAAEECF9DECCD95EA
        C78CE7C282E3BD78DFB66DDDAF61D8A857D5A452D09F45CA9737C68F2CC18821
        BC8115AA6300E3D1ACA1783DEAE2D5FFFFFFFFFFFFFFFFFFD0BE9E9B712CFEFC
        F8FBE1B4EED2A1EDCE9DECCB95E8C789E5C17FE2BB77DEB46DDAB063D6A958D3
        A34FCF9D44C7912FBA7901F3E7CEA27D41CFBA98FFFFFFFFFFFFFFFFFFFFFFFF
        FEFDFCC2A77D987029F6EEE1FFF7DAF4DAACEDCD9AE9CC97E8C990E6C488E3BE
        7EE0B975DAB065D2A24CD39F46DDB060ECDEBFA17A3CBFA77BFCFBFAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFDFCFCD1BD9E9A6E2CCAB693FFFCECFFFFECF8DEB2
        ECC98EE7C17FE4B975E1B569E6BE75F5DAA8F2DDB5C8AF899E7434D0BB99FDFC
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBE5D9B4926497
        6925AE8950E6D9C3FFFFFFFFFFFFFFFFFFFFFFF5E2D3B7AE884E976B2AB49466
        EBE4D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF8F6F3DBD1BAB394619B6B249360119361119A6E24B49562DC
        CFBBF7F5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = btnCopiarClick
    end
  end
  object sdsContaOrc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.ID, C.DESCRICAO, C.TIPO, C.CODIGO, C.SUPERIOR, TIPO_RD,' +
      ' CASE'#13#10'   WHEN NIVEL = 1 THEN DESCRICAO'#13#10'   WHEN NIVEL = 2 THEN ' +
      'LPAD('#39' '#39', NIVEL, '#39' '#39')||C.DESCRICAO'#13#10'   WHEN NIVEL > 2 THEN LPAD(' +
      #39' '#39', (NIVEL+2-4+NIVEL), '#39' '#39')||C.DESCRICAO'#13#10'   END AS NOME_AUX'#13#10'F' +
      'ROM CONTA_ORCAMENTO C'#13#10'WHERE 1 = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 168
    object sdsContaOrcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsContaOrcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sdsContaOrcTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsContaOrcCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object sdsContaOrcNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 60
    end
    object sdsContaOrcSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object sdsContaOrcTIPO_RD: TStringField
      FieldName = 'TIPO_RD'
      FixedChar = True
      Size = 1
    end
  end
  object cdsContaOrc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspContaOrc'
    Left = 304
    Top = 168
    object cdsContaOrcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContaOrcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsContaOrcTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsContaOrcNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 60
    end
    object cdsContaOrcSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsContaOrcTIPO_RD: TStringField
      FieldName = 'TIPO_RD'
      FixedChar = True
      Size = 1
    end
  end
  object dspContaOrc: TDataSetProvider
    DataSet = sdsContaOrc
    Left = 256
    Top = 168
  end
  object dsContaOrc: TDataSource
    DataSet = cdsContaOrc
    Left = 360
    Top = 168
  end
  object sdsPesquisa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT C.ID, C.DESCRICAO'#13#10'FROM CONTA_ORCAMENTO C '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 216
  end
  object dspPesquisa: TDataSetProvider
    DataSet = sdsPesquisa
    Left = 256
    Top = 216
  end
  object cdsPesquisa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspPesquisa'
    Left = 304
    Top = 216
    object cdsPesquisaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPesquisaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
end
