object frmCadOC_Reserva: TfrmCadOC_Reserva
  Left = 257
  Top = 183
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadOC_Reserva'
  ClientHeight = 339
  ClientWidth = 871
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 0
    Width = 871
    Height = 339
    Align = alClient
    Ctl3D = False
    DataSource = dsReserva
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
    ColCount = 9
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ITEM_OC'
        Title.Alignment = taCenter
        Title.Caption = 'Item OC'
        Title.Color = 14215640
        Width = 42
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_ORDEM'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Ordem'
        Title.Color = 14215640
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_RESERVADA'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd Reservada Para a OP'
        Title.Color = 14215640
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Material'
        Title.Color = 14215640
        Width = 258
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'ID Produto'
        Title.Color = 14215640
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_OC'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. da OC'
        Title.Color = 14215640
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_SOBRA'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Sobra Total'
        Title.Color = 14215640
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_SALDO'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Saldo'
        Title.Color = 14215640
        Width = 88
        Visible = True
      end>
  end
  object sdsReserva: TSQLDataSet
    CommandText = 
      'select l.num_ordem, l.qtd qtd_reservada, it.item item_oc, it.ref' +
      'erencia,'#13#10'it.id_produto, it.nomeproduto, it.qtd qtd_oc, oc.qtd_s' +
      'obra,'#13#10'case'#13#10'   when (oc.qtd_sobra - oc.qtd_usada - COALESCE(OC.' +
      'qtd_cancelada,0)) >= it.qtd_restante then it.qtd_restante'#13#10'   wh' +
      'en (oc.qtd_sobra - oc.qtd_usada - COALESCE(OC.qtd_cancelada,0)) ' +
      '< it.qtd_restante then oc.qtd_sobra - oc.qtd_usada'#13#10'   end QTD_S' +
      'ALDO'#13#10'from lote_mat_oc l'#13#10'inner join pedido_item it'#13#10'  on l.id_o' +
      'c = it.id'#13#10' and l.item_oc = it.item'#13#10'inner join pedido_sobra_oc ' +
      'oc'#13#10'  on l.id_oc = oc.id'#13#10' and l.item_oc = oc.item'#13#10'where l.id_o' +
      'c = :id_oc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_oc'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 272
    Top = 120
  end
  object dspReserva: TDataSetProvider
    DataSet = sdsReserva
    Left = 312
    Top = 120
  end
  object cdsReserva: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ITEM_OC;NUM_ORDEM'
    Params = <>
    ProviderName = 'dspReserva'
    Left = 352
    Top = 120
    object cdsReservaNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      Required = True
    end
    object cdsReservaQTD_RESERVADA: TFloatField
      FieldName = 'QTD_RESERVADA'
    end
    object cdsReservaITEM_OC: TIntegerField
      FieldName = 'ITEM_OC'
      Required = True
    end
    object cdsReservaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsReservaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsReservaNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsReservaQTD_OC: TFloatField
      FieldName = 'QTD_OC'
    end
    object cdsReservaQTD_SOBRA: TFloatField
      FieldName = 'QTD_SOBRA'
    end
    object cdsReservaQTD_SALDO: TFloatField
      FieldName = 'QTD_SALDO'
    end
  end
  object dsReserva: TDataSource
    DataSet = cdsReserva
    Left = 392
    Top = 120
  end
end
