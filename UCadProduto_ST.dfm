object frmCadProduto_ST: TfrmCadProduto_ST
  Left = 450
  Top = 228
  Width = 448
  Height = 288
  BorderIcons = [biSystemMenu]
  Caption = 'Produto ST'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 440
    Height = 257
    Align = alClient
    Color = 12976010
    Enabled = False
    TabOrder = 0
    object Label5: TLabel
      Left = 29
      Top = 56
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
    end
    object DBDateEdit1: TDBDateEdit
      Left = 61
      Top = 50
      Width = 112
      Height = 19
      DataField = 'DTEMISSAO'
      DataSource = dsProdST
      Ctl3D = True
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
    end
    object gbxVendedor: TRzGroupBox
      Left = 30
      Top = 91
      Width = 241
      Height = 118
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
      TabOrder = 1
      VisualStyle = vsGradient
      object Label6: TLabel
        Left = 41
        Top = 76
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Base ST:'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 50
        Top = 94
        Width = 35
        Height = 13
        Caption = 'Vlr. ST:'
        FocusControl = DBEdit8
      end
      object Label11: TLabel
        Left = 21
        Top = 24
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Base ST Ret:'
        FocusControl = DBEdit1
      end
      object Label12: TLabel
        Left = 30
        Top = 42
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr. ST Ret:'
        FocusControl = DBEdit5
      end
      object DBEdit6: TDBEdit
        Left = 88
        Top = 70
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'BASE_ST'
        DataSource = dsProdST
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 88
        Top = 88
        Width = 82
        Height = 19
        Ctl3D = False
        DataField = 'VLR_ST'
        DataSource = dsProdST
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 16
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'BASE_ST_RET'
        DataSource = dsProdST
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 88
        Top = 34
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'VLR_ST_RET'
        DataSource = dsProdST
        ParentCtl3D = False
        TabOrder = 1
      end
    end
  end
  object sdsProdST: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select first 1 m.*'#13#10'from vmovprodst m'#13#10'where m.id_produto = :id_' +
      'produto'#13#10'order by m.dtemissao desc'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_produto'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 32
  end
  object dspProdST: TDataSetProvider
    DataSet = sdsProdST
    Left = 320
    Top = 32
  end
  object cdsProdST: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdST'
    Left = 352
    Top = 32
    object cdsProdSTDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsProdSTID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsProdSTBASE_ST: TFloatField
      FieldName = 'BASE_ST'
    end
    object cdsProdSTBASE_ST_RET: TFloatField
      FieldName = 'BASE_ST_RET'
    end
    object cdsProdSTVLR_ST: TFloatField
      FieldName = 'VLR_ST'
    end
    object cdsProdSTVLR_ST_RET: TFloatField
      FieldName = 'VLR_ST_RET'
    end
  end
  object dsProdST: TDataSource
    DataSet = cdsProdST
    Left = 384
    Top = 32
  end
end
