object frmCadNotaFiscal_OutrasDesp: TfrmCadNotaFiscal_OutrasDesp
  Left = 315
  Top = 136
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informar outras despesas'
  ClientHeight = 390
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 356
    Width = 618
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 270
      Top = 4
      Width = 78
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
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 618
    Height = 356
    ActivePage = TS_NotaFiscal
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TS_NotaFiscal: TRzTabSheet
      Caption = 'Nota Fiscal'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 614
        Height = 333
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        DesignSize = (
          614
          333)
        object Label1: TLabel
          Left = 82
          Top = 16
          Width = 44
          Height = 13
          Caption = 'Valor Pis:'
        end
        object Label2: TLabel
          Left = 67
          Top = 40
          Width = 59
          Height = 13
          Caption = 'Valor Cofins:'
        end
        object Label3: TLabel
          Left = 24
          Top = 88
          Width = 102
          Height = 13
          Caption = 'Valor Taxa Siscomex:'
        end
        object Label4: TLabel
          Left = 54
          Top = 183
          Width = 72
          Height = 13
          Caption = 'Outros Valores:'
        end
        object Label5: TLabel
          Left = 275
          Top = 136
          Width = 40
          Height = 13
          Caption = '% ICMS:'
        end
        object Bevel1: TBevel
          Left = -1
          Top = 208
          Width = 619
          Height = 4
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
        end
        object Label21: TLabel
          Left = 40
          Top = 229
          Width = 69
          Height = 13
          Caption = 'Valor do Frete:'
        end
        object Label6: TLabel
          Left = 275
          Top = 224
          Width = 40
          Height = 13
          Caption = '% ICMS:'
        end
        object Bevel2: TBevel
          Left = -2
          Top = 269
          Width = 619
          Height = 4
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
        end
        object Label22: TLabel
          Left = 24
          Top = 292
          Width = 79
          Height = 13
          Caption = 'Valor do Seguro:'
        end
        object Label7: TLabel
          Left = 12
          Top = 112
          Width = 114
          Height = 13
          Caption = 'Vlr. Imposto Importa'#231#227'o:'
        end
        object Bevel4: TBevel
          Left = -4
          Top = 64
          Width = 619
          Height = 4
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
        end
        object Label8: TLabel
          Left = 275
          Top = 11
          Width = 40
          Height = 13
          Caption = '% ICMS:'
        end
        object Label9: TLabel
          Left = 44
          Top = 136
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desp. Aduaneira:'
        end
        object Label10: TLabel
          Left = 66
          Top = 159
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. AFRMM:'
        end
        object Bevel6: TBevel
          Left = -3
          Top = 312
          Width = 619
          Height = 4
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
        end
        object DBEdit1: TDBEdit
          Left = 128
          Top = 8
          Width = 121
          Height = 21
          DataField = 'VLR_PIS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 128
          Top = 32
          Width = 121
          Height = 21
          DataField = 'VLR_COFINS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 128
          Top = 80
          Width = 121
          Height = 21
          DataField = 'VLR_TAXACISCOMEX'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 4
        end
        object DBEdit4: TDBEdit
          Left = 128
          Top = 175
          Width = 121
          Height = 21
          DataField = 'VLR_OUTROS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 7
        end
        object DBEdit16: TDBEdit
          Left = 113
          Top = 221
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VLR_FRETE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 10
          OnExit = DBEdit16Exit
        end
        object DBEdit17: TDBEdit
          Left = 112
          Top = 284
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VLR_SEGURO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 13
        end
        object DBEdit5: TDBEdit
          Left = 128
          Top = 104
          Width = 121
          Height = 21
          DataField = 'VLR_IMPORTACAO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 5
        end
        object CheckBox5: TCheckBox
          Left = 320
          Top = 35
          Width = 160
          Height = 17
          Caption = 'Somar em Outras Despesas'
          TabOrder = 3
        end
        object DBCheckBox2: TDBCheckBox
          Left = 320
          Top = 179
          Width = 113
          Height = 17
          Caption = 'Somar Duplicatas'
          DataField = 'GERARDUPL_OUTROSVALORES'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 9
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 112
          Top = 246
          Width = 153
          Height = 17
          Caption = 'Frete cobrado do cliente'
          DataField = 'GERARDUPL_FRETE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 12
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 320
          Top = 286
          Width = 113
          Height = 17
          Caption = 'Somar Duplicatas'
          DataField = 'GERARDUPL_SEGURO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 14
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit6: TDBEdit
          Left = 320
          Top = 4
          Width = 81
          Height = 21
          DataField = 'PERC_ICMS_PISCOFINS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 2
        end
        object DBEdit7: TDBEdit
          Left = 320
          Top = 128
          Width = 81
          Height = 21
          DataField = 'PERC_ICMS_OUTROSVALORES'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 8
        end
        object DBEdit8: TDBEdit
          Left = 320
          Top = 220
          Width = 81
          Height = 21
          DataField = 'PERC_ICMS_FRETE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 11
        end
        object DBEdit9: TDBEdit
          Left = 128
          Top = 128
          Width = 121
          Height = 21
          DataField = 'VLR_ADUANEIRA'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 6
        end
        object DBEdit10: TDBEdit
          Left = 128
          Top = 151
          Width = 121
          Height = 21
          DataField = 'VLR_AFRMM'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 15
        end
      end
    end
    object TS_NotaEntrada: TRzTabSheet
      Caption = 'Nota Entrada'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 614
        Height = 333
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        DesignSize = (
          614
          333)
        object Label13: TLabel
          Left = 38
          Top = 72
          Width = 72
          Height = 13
          Caption = 'Outros Valores:'
        end
        object Bevel3: TBevel
          Left = -1
          Top = 96
          Width = 619
          Height = 4
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
        end
        object Label15: TLabel
          Left = 40
          Top = 117
          Width = 69
          Height = 13
          Caption = 'Valor do Frete:'
        end
        object Label16: TLabel
          Left = 275
          Top = 112
          Width = 40
          Height = 13
          Caption = '% ICMS:'
        end
        object Bevel5: TBevel
          Left = -2
          Top = 157
          Width = 619
          Height = 4
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
        end
        object Label17: TLabel
          Left = 24
          Top = 180
          Width = 79
          Height = 13
          Caption = 'Valor do Seguro:'
        end
        object DBEdit13: TDBEdit
          Left = 112
          Top = 64
          Width = 121
          Height = 21
          DataField = 'VLR_OUTROS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 0
        end
        object DBEdit14: TDBEdit
          Left = 113
          Top = 109
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VLR_FRETE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 112
          Top = 172
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VLR_SEGURO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 5
        end
        object DBCheckBox1: TDBCheckBox
          Left = 320
          Top = 68
          Width = 113
          Height = 17
          Caption = 'Somar Duplicatas'
          DataField = 'GERARDUPL_OUTROSVALORES'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 320
          Top = 134
          Width = 113
          Height = 17
          Caption = 'Somar Duplicatas'
          DataField = 'GERARDUPL_FRETE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 320
          Top = 174
          Width = 113
          Height = 17
          Caption = 'Somar Duplicatas'
          DataField = 'GERARDUPL_SEGURO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit21: TDBEdit
          Left = 320
          Top = 108
          Width = 81
          Height = 21
          DataField = 'PERC_ICMS_FRETE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 3
        end
      end
    end
  end
end
