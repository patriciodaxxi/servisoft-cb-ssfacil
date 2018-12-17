object frmCadNotaFiscal_Ref: TfrmCadNotaFiscal_Ref
  Left = 262
  Top = 169
  Width = 696
  Height = 445
  Caption = 'frmCadNotaFiscal_Ref'
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
    Width = 680
    Height = 34
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 83
      Top = 14
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo:'
    end
    object RxDBComboBox2: TRxDBComboBox
      Left = 110
      Top = 6
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'TIPO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'NFe'
        'Nota Fiscal'
        'Nota Fiscal Produtor Rural'
        'Cupom Fiscal'
        'CTe')
      TabOrder = 0
      Values.Strings = (
        '13'
        '14'
        '20a'
        '20j'
        'CTe')
      OnClick = RxDBComboBox2Click
    end
  end
  object pnlNFe: TPanel
    Left = 0
    Top = 34
    Width = 680
    Height = 36
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 1
    Visible = False
    object Label4: TLabel
      Left = 22
      Top = 16
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Chave Acesso:'
    end
    object DBEdit2: TDBEdit
      Left = 110
      Top = 8
      Width = 411
      Height = 21
      DataField = 'NFECHAVEACESSO_REF'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      TabOrder = 0
    end
  end
  object pnlNotaFiscal: TPanel
    Left = 0
    Top = 70
    Width = 680
    Height = 117
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 2
    Visible = False
    object Label2: TLabel
      Left = 68
      Top = 36
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Nota:'
    end
    object Label10: TLabel
      Left = 82
      Top = 15
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie:'
    end
    object Label3: TLabel
      Left = 231
      Top = 36
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Modelo:'
    end
    object Label5: TLabel
      Left = 34
      Top = 57
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = 'UF do emitente:'
    end
    object Label6: TLabel
      Left = 79
      Top = 78
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'CNPJ:'
    end
    object Label7: TLabel
      Left = 20
      Top = 99
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'M'#234's/Ano Emiss'#227'o:'
    end
    object Label8: TLabel
      Left = 283
      Top = 78
      Width = 90
      Height = 13
      Alignment = taRightJustify
      Caption = 'Inscri'#231#227'o Estadual:'
    end
    object DBEdit1: TDBEdit
      Left = 110
      Top = 28
      Width = 115
      Height = 21
      DataField = 'NUMNOTA_REF'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      TabOrder = 1
    end
    object DBEdit9: TDBEdit
      Left = 110
      Top = 7
      Width = 59
      Height = 21
      DataField = 'SERIE_REF'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      TabOrder = 0
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 110
      Top = 49
      Width = 73
      Height = 21
      DropDownCount = 8
      DataField = 'UF_REF'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      LookupField = 'UF'
      LookupDisplay = 'UF'
      LookupSource = DMCadNotaFiscal.dsUF
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 110
      Top = 70
      Width = 163
      Height = 21
      DataField = 'CNPJ_REF'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 110
      Top = 91
      Width = 40
      Height = 21
      DataField = 'MES_REF'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      MaxLength = 2
      TabOrder = 6
    end
    object DBEdit6: TDBEdit
      Left = 153
      Top = 91
      Width = 40
      Height = 21
      DataField = 'ANO_REF'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      MaxLength = 2
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 374
      Top = 70
      Width = 163
      Height = 21
      DataField = 'INSCESTADUAL_REF'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      TabOrder = 5
    end
    object RxDBComboBox3: TRxDBComboBox
      Left = 272
      Top = 26
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'MODELO_REF'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      DropDownCount = 5
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        '04 - NF de Produtor'
        '01 - NF avulsa '
        '02 - Modelo 02')
      TabOrder = 2
      Values.Strings = (
        '04'
        '01'
        '02')
    end
  end
  object pnlCupom: TPanel
    Left = 0
    Top = 222
    Width = 680
    Height = 150
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 3
    Visible = False
    object Label9: TLabel
      Left = 45
      Top = 16
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#250'mero ECF:'
    end
    object Label11: TLabel
      Left = 42
      Top = 47
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#250'mero COO:'
    end
    object Label12: TLabel
      Left = 70
      Top = 74
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Modelo:'
    end
    object Label13: TLabel
      Left = 224
      Top = 7
      Width = 277
      Height = 26
      Caption = 
        'N'#186' de ordem sequencial do ECF que emitiu o Cupom Fiscal'#13#10'vincula' +
        'do '#224' NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 224
      Top = 45
      Width = 300
      Height = 13
      Caption = 'N'#186' do Contador de Ordem de Opera'#231#227'o - COO vinculado '#224' NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 224
      Top = 67
      Width = 390
      Height = 39
      Caption = 
        '2B = Quando se tratar de Cupom Fiscal emitido por m'#225'quina regist' +
        'radora (n'#227'o ECF)'#13#10'2C = Quando se tratar de Cupom Fiscal PDV'#13#10'2D ' +
        '= Quando se tratar de Cupom Fiscal emitido por ECF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit8: TDBEdit
      Left = 110
      Top = 8
      Width = 107
      Height = 21
      DataField = 'CUPOM_NUMECF'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 110
      Top = 39
      Width = 107
      Height = 21
      DataField = 'CUPOM_NUMCOO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      TabOrder = 1
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 110
      Top = 66
      Width = 107
      Height = 21
      DataField = 'CUPOM_MODELO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      EnableValues = False
      ItemHeight = 13
      Items.Strings = (
        ''
        '2B'
        '2C'
        '2D')
      TabOrder = 2
      Values.Strings = (
        ''
        '2B'
        '2C'
        '2D')
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 372
    Width = 680
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 4
    object BitBtn1: TBitBtn
      Left = 264
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn4: TBitBtn
      Left = 340
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
  end
  object pnlCTe: TPanel
    Left = 0
    Top = 187
    Width = 680
    Height = 35
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 5
    Visible = False
    object Label17: TLabel
      Left = 14
      Top = 15
      Width = 95
      Height = 13
      Alignment = taRightJustify
      Caption = 'Chave Acesso CTe:'
    end
    object DBEdit12: TDBEdit
      Left = 110
      Top = 7
      Width = 419
      Height = 21
      DataField = 'CTECHAVEACESSO_REF'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Ref
      TabOrder = 0
    end
  end
end
