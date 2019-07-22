object frmConsMotivoNaoAprov: TfrmConsMotivoNaoAprov
  Left = 273
  Top = 145
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsMotivoNaoAprov'
  ClientHeight = 449
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 0
    Width = 920
    Height = 360
    Align = alClient
    Ctl3D = False
    DataSource = dsMotivo
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
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 11
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'DESC_APROVADO'
        Title.Color = 12189695
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM'
        Title.Color = 12189695
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM_APROV'
        Title.Color = 12189695
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Color = 12189695
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Color = 12189695
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Color = 12189695
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Color = 12189695
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOTIVO_NAO_APROV'
        Title.Color = 12189695
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_FUNCIONARIO'
        Title.Color = 12189695
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        Title.Color = 12189695
        Visible = True
      end>
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 360
    Width = 920
    Height = 89
    Align = alBottom
    DataField = 'MOTIVO_NAO_APROV'
    DataSource = dsMotivo
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object sdsMotivo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.*, F.NOME NOME_FUNCIONARIO, I.referencia, I.id_produto,' +
      ' I.nomeproduto,'#13#10'CASE'#13#10'  WHEN A.aprovado = '#39'1'#39' THEN '#39'1'#186' Aprova'#231#227 +
      'o'#39#13#10'  WHEN A.aprovado = '#39'S'#39' THEN '#39'Aprovado'#39#13#10'  WHEN A.aprovado =' +
      ' '#39'N'#39' THEN '#39'N'#227'o Aprovado'#39#13#10'  WHEN A.aprovado = '#39'P'#39' THEN '#39'Pendente' +
      #39#13#10'  else '#39#39#13#10'  end DESC_APROVADO'#13#10#13#10'FROM pedido_item_aprov A'#13#10'I' +
      'NNER JOIN PEDIDO_ITEM I'#13#10'ON A.ID = I.ID'#13#10'AND A.ITEM = I.ITEM'#13#10'LE' +
      'FT JOIN FUNCIONARIO F'#13#10'ON A.id_funcionario = F.CODIGO'#13#10'WHERE A.I' +
      'D = :ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 100
    Top = 68
  end
  object dspMotivo: TDataSetProvider
    DataSet = sdsMotivo
    Left = 138
    Top = 68
  end
  object cdsMotivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMotivo'
    Left = 168
    Top = 68
    object cdsMotivoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMotivoITEM: TIntegerField
      DisplayLabel = 'Item. OC'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsMotivoITEM_APROV: TIntegerField
      DisplayLabel = 'Item Aprov.'
      FieldName = 'ITEM_APROV'
      Required = True
    end
    object cdsMotivoUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsMotivoDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object cdsMotivoDTUSUARIO: TDateField
      DisplayLabel = 'Dt. Sistema'
      FieldName = 'DTUSUARIO'
    end
    object cdsMotivoHRUSUARIO: TTimeField
      DisplayLabel = 'Hr. Sistema'
      FieldName = 'HRUSUARIO'
    end
    object cdsMotivoID_FUNCIONARIO: TIntegerField
      DisplayLabel = 'ID Funcion'#225'rio'
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsMotivoAPROVADO: TStringField
      DisplayLabel = 'Tipo Aprova'#231#227'o'
      FieldName = 'APROVADO'
      Size = 1
    end
    object cdsMotivoMOTIVO_NAO_APROV: TStringField
      DisplayLabel = 'Motivo N'#227'o Aprovado'
      FieldName = 'MOTIVO_NAO_APROV'
      Size = 250
    end
    object cdsMotivoNOME_FUNCIONARIO: TStringField
      DisplayLabel = 'Nome Funcion'#225'rio'
      FieldName = 'NOME_FUNCIONARIO'
      Size = 50
    end
    object cdsMotivoREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsMotivoID_PRODUTO: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsMotivoNOMEPRODUTO: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsMotivoDESC_APROVADO: TStringField
      DisplayLabel = 'Tipo Aprova'#231#227'o'
      FieldName = 'DESC_APROVADO'
      Required = True
      FixedChar = True
      Size = 12
    end
  end
  object dsMotivo: TDataSource
    DataSet = cdsMotivo
    Left = 204
    Top = 69
  end
end
