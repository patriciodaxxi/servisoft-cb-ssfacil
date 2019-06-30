object frmConsHist_Chapa: TfrmConsHist_Chapa
  Left = 145
  Top = 61
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsHist_Chapa'
  ClientHeight = 546
  ClientWidth = 1108
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1108
    Height = 51
    Align = alTop
    Color = 16777134
    TabOrder = 0
    object Label1: TLabel
      Left = 136
      Top = 12
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome:'
    end
    object Label2: TLabel
      Left = 132
      Top = 34
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 616
      Top = 12
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = '% Reajuste:'
    end
    object Label4: TLabel
      Left = 583
      Top = 34
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fator Multiplicador:'
    end
    object Edit1: TEdit
      Left = 169
      Top = 4
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object btnConsultar: TBitBtn
      Left = 781
      Top = 4
      Width = 132
      Height = 43
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnConsultarClick
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2F0F5F2F0FCFDFDFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B778D2D52869876
        72B0A3A1FCFDFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7780
        0055B812A5FA5E90BDBBA29FFAF5F4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5C6377004EAD29BEFFA9ECFFA3F7FF3A89BFF6F5F6000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF75737F0051AC17B1FFA4E7FDD5FFFF12A6E45E90B5FFFCFC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFD6C6C7D0057BB25BAFFA5E7FEC7FFFF099DDF6A8A
        A8FFFFFDFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54657D0057B120B5FFA1E5FECFFFFF
        109CDD4D7EA5FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFEFEDADDDDDAD9D9CFCFCFEDEFEFFFFFFFFFFFFFFFFFFF00024A21BCFFA5
        EAFFCAFFFF11A7E86587A9FFFFFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFDDE0E0958E8D7A63657D60628467678065658D77799C9393D3D1D1ADAA
        A749343776B3E0B4FFFF19A4DF5A84A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD2D8D84C3334846269967570A39388A99E9AAB9E99AE9890
        B69DA4A28E8F867070E7D0CC806B6E005499467EA7FFFFFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFC2C2C2533638A27B799D80649A9A7C94988895
        97979498949198849E9478C4AFA8C8B5B7AFA1A1B6B3B1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FBFBFB816D6E8A66679C6F4A987D
        5A978F7499978499998D99998C989783948769987854C9B1A9C1B4B6DED8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E0DCDB74575C
        98634797653998765499876899927799977F99967F99907799826295704B9B64
        3AD4CFD8A39C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000887F83865B54984D1A945C319969439A77559A7F5F998365998364997F5F
        99735095673F81400DC9A391B2ACB0ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000BDAFB38C57459140079352258D562D875732885D3A8D
        6744946E4B92694587532D91572CBB753CCA906BADAAB0CECDCDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C6B7BB8F56428528008B3D08A766
        34CA9765D0A272BC8D5F9E6940A06B3ECB9867EFB984FFCB8ACD8A5FBBB8C0DD
        DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B8AEB1906152
        AD5529ECB177FFD29AFED7A5FCDEAEFEE7B6FFEABBFFE8B8FDDCABF7D09CFCCB
        90CF9675AEAAB2CBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00009B96988F6B68EAA769FFD19BF4CD9BF4D8AAF4E0B4F4E4BBF4E5BDF4E4BB
        F4DDB1F6DBABF8C98AC6A399A8A6A9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000D2D0D07E6B73B47F67FED295F6DBADF4E4BAF5E5C2F5
        E7C8F5E9CAF4E7C8F5E8C3F9E9B9D29E73DDDEE8A6A2A1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFE9B8F91B6A0A5CD9972FDE8
        B2F6EDC7F5E9CCF4EDD4F5EED9F5EED6F9EFCDE4C299F3E4DD867F80D7D8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFD4D6D6
        574849C3AEB2CDA88FF0D9B4F6ECD0F6F3E3F6F1E5F4E8D3E2C2ABE1D0CF9E95
        96C6C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD3D5D59F969797888CC0A6A1D1B6ACD5BEB2D7C0B7D5BDB8
        C1B4B8ADA7AAC0BFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFCFDFDD2D0D0A3A0A2CEC5C7E1
        D7D8DCD3D4A09C9EE7E5E5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 169
      Top = 26
      Width = 393
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dsCliente
      TabOrder = 1
    end
    object edtReajuste: TEdit
      Left = 674
      Top = 4
      Width = 96
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyDown = Edit1KeyDown
    end
    object edtMultiplicador: TEdit
      Left = 674
      Top = 26
      Width = 96
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyDown = Edit1KeyDown
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 51
    Width = 1108
    Height = 437
    Align = alClient
    Ctl3D = False
    DataSource = dsChapa
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnKeyDown = SMDBGrid1KeyDown
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
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 15
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Width = 78
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_PEDIDO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Pedido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPLEMENTO_NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 292
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_KG'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o KG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPRIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Comprimento (mm)'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LARGURA'
        Title.Alignment = taCenter
        Title.Caption = 'Largura (mm)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESPESSURA'
        Title.Alignment = taCenter
        Title.Caption = 'Espessura (mm)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESO'
        Title.Alignment = taCenter
        Title.Caption = 'Peso P'#199
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. P'#231
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_DOBRA'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Dobra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'ID Cliente'
        Width = 46
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 529
    Width = 1108
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = 'ESC= Fechar tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 488
    Width = 1108
    Height = 41
    Align = alBottom
    Color = 16777134
    TabOrder = 3
    object btnCopiar: TBitBtn
      Left = 6
      Top = 7
      Width = 300
      Height = 28
      Caption = 'Copiar os itens selecionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnCopiarClick
    end
  end
  object sdsChapa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select TP.VLR_KG, TP.COMPRIMENTO, TP.LARGURA, TP.ALTURA, TP.ESPE' +
      'SSURA, TP.QTD,'#13#10'       case'#13#10'         when TP.VLR_UNITARIO is nu' +
      'll then PEDI.VLR_UNITARIO'#13#10'         else TP.VLR_UNITARIO'#13#10'      ' +
      ' end VLR_UNITARIO,'#13#10'       case'#13#10'         when TP.VLR_TOTAL is n' +
      'ull then PEDI.VLR_TOTAL'#13#10'         else TP.VLR_TOTAL'#13#10'       end ' +
      'VLR_TOTAL,'#13#10'       TP.VLR_DOBRA,'#13#10'       case'#13#10'         when TP.' +
      'COMPLEMENTO_NOME is null then PEDI.NOMEPRODUTO'#13#10'         else TP' +
      '.COMPLEMENTO_NOME'#13#10'       end COMPLEMENTO_NOME,'#13#10'       TP.PESO,' +
      ' PED.DTEMISSAO, PED.ID_CLIENTE, CLI.NOME NOME_CLIENTE, PED.NUM_P' +
      'EDIDO, PED.TIPO_REG, PED.ID ID_PEDIDO,'#13#10'       PEDI.ITEM ITEM_PE' +
      'DIDO, PEDI.QTD QTDE_ITEM, PEDI.VLR_UNITARIO VLR_UNITARIO_ITEM, P' +
      'EDI.VLR_TOTAL VLR_TOTAL_ITEM,'#13#10'       PEDI.NOMEPRODUTO'#13#10'from PED' +
      'IDO PED'#13#10'inner join PEDIDO_ITEM PEDI on PEDI.ID = PED.ID'#13#10'left j' +
      'oin PEDIDO_ITEM_TIPO TP on TP.ID = PEDI.ID and TP.ITEM = PEDI.IT' +
      'EM'#13#10'left join PESSOA CLI on PED.ID_CLIENTE = CLI.CODIGO'#13#10'where (' +
      'TP.TIPO_ORCAMENTO = '#39'C'#39' or TP.TIPO_ORCAMENTO is null) and'#13#10'     ' +
      ' PED.TIPO_REG = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 168
  end
  object cdsChapa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COMPLEMENTO_NOME;DTEMISSAO'
    Params = <>
    ProviderName = 'dspChapa'
    Left = 304
    Top = 168
    object cdsChapaVLR_KG: TFloatField
      FieldName = 'VLR_KG'
    end
    object cdsChapaCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsChapaLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsChapaALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsChapaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsChapaVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsChapaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsChapaVLR_DOBRA: TFloatField
      FieldName = 'VLR_DOBRA'
    end
    object cdsChapaCOMPLEMENTO_NOME: TStringField
      FieldName = 'COMPLEMENTO_NOME'
      Size = 50
    end
    object cdsChapaPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsChapaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsChapaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsChapaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsChapaNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsChapaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsChapaID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsChapaITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
    object cdsChapaQTDE_ITEM: TFloatField
      FieldName = 'QTDE_ITEM'
    end
    object cdsChapaVLR_UNITARIO_ITEM: TFloatField
      FieldName = 'VLR_UNITARIO_ITEM'
    end
    object cdsChapaVLR_TOTAL_ITEM: TFloatField
      FieldName = 'VLR_TOTAL_ITEM'
    end
    object cdsChapaNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsChapaESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
  end
  object dspChapa: TDataSetProvider
    DataSet = sdsChapa
    Left = 256
    Top = 168
  end
  object dsChapa: TDataSource
    DataSet = cdsChapa
    Left = 360
    Top = 168
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.codigo, P.nome, P.cnpj_cpf'#13#10'FROM PESSOA P'#13#10'WHERE P.tp_c' +
      'liente = '#39'S'#39#13#10'  AND P.inativo = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 208
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 256
    Top = 208
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 304
    Top = 208
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 360
    Top = 208
  end
end
