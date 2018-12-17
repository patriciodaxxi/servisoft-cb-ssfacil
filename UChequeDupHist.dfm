object frmChequeDupHist: TfrmChequeDupHist
  Left = 299
  Top = 172
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cheques da Duplicata'
  ClientHeight = 425
  ClientWidth = 912
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
    Width = 912
    Height = 41
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 41
    Width = 912
    Height = 384
    Align = alClient
    Ctl3D = False
    DataSource = dsCheque
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
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
    ColCount = 12
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTBOM_PARA'
        Title.Alignment = taCenter
        Title.Caption = 'Bom Para'
        Title.Color = 12124017
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_EMITIDO_POR'
        Title.Alignment = taCenter
        Title.Caption = 'Emitido Por'
        Title.Color = 12124017
        Width = 74
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_CHEQUE'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Cheque'
        Title.Color = 12124017
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Color = 12124017
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_BANCO'
        Title.Alignment = taCenter
        Title.Caption = 'Banco'
        Title.Color = 12124017
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITULAR'
        Title.Alignment = taCenter
        Title.Caption = 'Titular'
        Title.Color = 12124017
        Width = 167
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONE_CONTATO'
        Title.Alignment = taCenter
        Title.Caption = 'Fone Contato'
        Title.Color = 12124017
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Emiss'#227'o'
        Title.Color = 12124017
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Recebido de'
        Title.Color = 12124017
        Width = 167
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'AGENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Ag'#234'ncia'
        Title.Color = 12124017
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CONTA'
        Title.Alignment = taCenter
        Title.Caption = 'Conta'
        Title.Color = 12124017
        Visible = True
      end>
  end
  object sdsCheque: TSQLDataSet
    CommandText = 
      'SELECT T.id, T.item, C.num_cheque, C.titular, CLI.NOME NOME_CLIE' +
      'NTE,'#13#10'C.agencia, C.conta, C.dtemissao, C.fone_contato, C.valor, ' +
      'C.dtbom_para,'#13#10'C.ID_BANCO, B.NOME NOME_BANCO, t.devolvido, '#13#10'CAS' +
      'E'#13#10'  WHEN C.EMITIDO_POR = '#39'1'#39' THEN '#39'MIM'#39#13#10'  WHEN C.EMITIDO_POR =' +
      ' '#39'2'#39' THEN '#39'CLIENTE'#39#13#10'  WHEN C.EMITIDO_POR = '#39'3'#39' THEN '#39'TERCEIRO'#39#13 +
      #10'  END NOME_EMITIDO_POR'#13#10'FROM cheque_tit T'#13#10'INNER JOIN CHEQUE C'#13 +
      #10'ON T.ID = C.ID'#13#10'LEFT JOIN PESSOA CLI'#13#10'ON C.recebido_de = CLI.CO' +
      'DIGO'#13#10'LEFT JOIN BANCO B'#13#10'ON C.ID_BANCO = B.ID'#13#10'where T.ID_DUPLIC' +
      'ATA = :ID_DUPLICATA'#13#10'  AND T.ITEM_HIST = :ITEM_HIST'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_DUPLICATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_HIST'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 184
    Top = 80
  end
  object dspCheque: TDataSetProvider
    DataSet = sdsCheque
    Left = 216
    Top = 80
  end
  object cdsCheque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCheque'
    Left = 248
    Top = 80
    object cdsChequeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsChequeITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsChequeNUM_CHEQUE: TStringField
      FieldName = 'NUM_CHEQUE'
      Size = 10
    end
    object cdsChequeTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 40
    end
    object cdsChequeNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsChequeAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object cdsChequeCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object cdsChequeDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsChequeFONE_CONTATO: TStringField
      FieldName = 'FONE_CONTATO'
      Size = 15
    end
    object cdsChequeVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object cdsChequeDTBOM_PARA: TDateField
      FieldName = 'DTBOM_PARA'
    end
    object cdsChequeID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsChequeNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 60
    end
    object cdsChequeNOME_EMITIDO_POR: TStringField
      FieldName = 'NOME_EMITIDO_POR'
      FixedChar = True
      Size = 8
    end
    object cdsChequeDEVOLVIDO: TStringField
      FieldName = 'DEVOLVIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCheque: TDataSource
    DataSet = cdsCheque
    Left = 280
    Top = 80
  end
end
