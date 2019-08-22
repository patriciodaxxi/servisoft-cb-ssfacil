object frmRecebeXML_CFOP: TfrmRecebeXML_CFOP
  Left = 435
  Top = 172
  Width = 488
  Height = 246
  BorderIcons = []
  Caption = 'Rateio Itens - frmRateio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 215
    Align = alClient
    TabOrder = 0
    object Label121: TLabel
      Left = 83
      Top = 13
      Width = 115
      Height = 13
      Alignment = taRightJustify
      Caption = 'CFOP Atual No Produto:'
    end
    object Label1: TLabel
      Left = 96
      Top = 31
      Width = 102
      Height = 13
      Alignment = taRightJustify
      Caption = 'CFOP Atual No NCM:'
    end
    object Label2: TLabel
      Left = 23
      Top = 73
      Width = 175
      Height = 13
      Alignment = taRightJustify
      Caption = 'CFOP Para Gravar no Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 67
      Top = 119
      Width = 130
      Height = 13
      Alignment = taRightJustify
      Caption = 'Gravar o CFOP no Produto:'
    end
    object RxDBLookupCombo8: TRxDBLookupCombo
      Left = 201
      Top = 7
      Width = 82
      Height = 19
      DropDownCount = 8
      DropDownWidth = 500
      Color = clSilver
      Ctl3D = False
      DataField = 'ID_CFOPAtual'
      DataSource = DMRecebeXML.dsmItensNota
      LookupField = 'ID'
      LookupDisplay = 'CODCFOP;NOME'
      LookupSource = DMRecebeXML.dsCFOP
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
      TabStop = False
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 201
      Top = 25
      Width = 82
      Height = 19
      DropDownCount = 8
      DropDownWidth = 500
      Color = clSilver
      Ctl3D = False
      DataField = 'ID_CFOPNCM'
      DataSource = DMRecebeXML.dsmItensNota
      LookupField = 'ID'
      LookupDisplay = 'CODCFOP;NOME'
      LookupSource = DMRecebeXML.dsCFOP
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      TabStop = False
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 201
      Top = 67
      Width = 82
      Height = 19
      DropDownCount = 8
      DropDownWidth = 500
      Color = clSilver
      Ctl3D = False
      DataField = 'ID_CFOP_NFCe'
      DataSource = DMRecebeXML.dsmItensNota
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      LookupField = 'ID'
      LookupDisplay = 'CODCFOP;NOME'
      LookupSource = DMRecebeXML.dsCFOP
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      TabStop = False
    end
    object NxButton1: TNxButton
      Left = 205
      Top = 173
      Width = 105
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = NxButton1Click
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 201
      Top = 112
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'Copiar_CFOP_Prod'
      DataSource = DMRecebeXML.dsmItensNota
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Pendente'
        'Gravar a CFOP no Produto'
        'N'#227'o Gravar')
      TabOrder = 0
      Values.Strings = (
        ' '
        'S'
        'N')
    end
  end
end
