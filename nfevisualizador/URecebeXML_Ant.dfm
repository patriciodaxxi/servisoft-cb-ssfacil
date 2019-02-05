object frmRecebeXML: TfrmRecebeXML
  Left = 178
  Top = 0
  Width = 1053
  Height = 694
  BorderWidth = 5
  Caption = 'Recebe XML NFe'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcDados: TPageControl
    Left = 0
    Top = 146
    Width = 1035
    Height = 507
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cabe'#231'alho/NFe'
      ImageIndex = 3
      object GroupBox1: TGroupBox
        Left = 0
        Top = 93
        Width = 1027
        Height = 193
        Align = alTop
        Caption = 'Dados Da NFe'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Label7: TLabel
          Left = 18
          Top = 29
          Width = 27
          Height = 13
          Caption = 'S'#233'rie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 115
          Top = 29
          Width = 41
          Height = 13
          Caption = 'N'#186' Nota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 295
          Top = 29
          Width = 56
          Height = 13
          Caption = 'Dt.Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 546
          Top = 29
          Width = 46
          Height = 13
          Caption = 'Dt.Sa'#237'da:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 705
          Top = 29
          Width = 88
          Height = 13
          Caption = 'Hr.Sa'#237'da/Entrada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 7
          Top = 70
          Width = 38
          Height = 13
          Caption = 'Modelo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 264
          Top = 67
          Width = 89
          Height = 13
          Caption = 'Forma Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 502
          Top = 67
          Width = 51
          Height = 13
          Caption = 'Finalidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 707
          Top = 67
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Entrada/Sa'#237'da:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 264
          Top = 85
          Width = 89
          Height = 13
          Alignment = taRightJustify
          Caption = 'Forma de Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 7
          Top = 103
          Width = 198
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data e Hora da Entrada em Conting'#234'ncia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 7
          Top = 146
          Width = 195
          Height = 13
          Alignment = taRightJustify
          Caption = 'Justificativa  da Entrada em Conting'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 506
          Top = 85
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Processo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit6: TDBEdit
          Left = 47
          Top = 23
          Width = 54
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'serie'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 159
          Top = 17
          Width = 131
          Height = 25
          TabStop = False
          Ctl3D = False
          DataField = 'nNF'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 354
          Top = 17
          Width = 143
          Height = 25
          TabStop = False
          Ctl3D = False
          DataField = 'ide_dEmi'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit9: TDBEdit
          Left = 596
          Top = 23
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'dSaiEnt'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit10: TDBEdit
          Left = 795
          Top = 23
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'hSaiEnt'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit11: TDBEdit
          Left = 47
          Top = 66
          Width = 54
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'mod'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object edTipoPagamento: TEdit
          Left = 353
          Top = 62
          Width = 129
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object edFinalidade: TEdit
          Left = 554
          Top = 62
          Width = 129
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object edEntradaSaida: TEdit
          Left = 783
          Top = 62
          Width = 94
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object edFormaEmissao: TEdit
          Left = 353
          Top = 80
          Width = 129
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit13: TDBEdit
          Left = 7
          Top = 119
          Width = 224
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'dhCont'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit14: TDBEdit
          Left = 7
          Top = 162
          Width = 834
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'xJust'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object edProcesso: TEdit
          Left = 554
          Top = 80
          Width = 323
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit68: TDBEdit
          Left = 353
          Top = 41
          Width = 144
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'ide_dhemi'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 286
        Width = 1027
        Height = 91
        Align = alTop
        Caption = 'Emitente'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Label25: TLabel
          Left = 32
          Top = 28
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 5
          Top = 45
          Width = 55
          Height = 13
          Caption = 'CNPJ/CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 245
          Top = 45
          Width = 67
          Height = 13
          Caption = 'Insc.Estadual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 624
          Top = 45
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit16: TDBEdit
          Left = 66
          Top = 21
          Width = 631
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'emit_xNome'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edCNPJEmitente: TEdit
          Left = 66
          Top = 39
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edInscEmitente: TEdit
          Left = 314
          Top = 39
          Width = 129
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object edUFEmitente: TEdit
          Left = 645
          Top = 39
          Width = 52
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 377
        Width = 1027
        Height = 102
        Align = alClient
        Caption = 'Destinat'#225'rio'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object Label21: TLabel
          Left = 32
          Top = 28
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 5
          Top = 45
          Width = 55
          Height = 13
          Caption = 'CNPJ/CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 245
          Top = 45
          Width = 67
          Height = 13
          Caption = 'Insc.Estadual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 624
          Top = 45
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit15: TDBEdit
          Left = 66
          Top = 21
          Width = 631
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'dest_xNome'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edCNPJDest: TEdit
          Left = 66
          Top = 39
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edInscDest: TEdit
          Left = 314
          Top = 39
          Width = 129
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object edUFDest: TEdit
          Left = 645
          Top = 39
          Width = 52
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 1027
        Height = 93
        Align = alTop
        Caption = ' Dados de Autoriza'#231#227'o da NFe '
        Color = clMoneyGreen
        ParentColor = False
        TabOrder = 3
        object Label1: TLabel
          Left = 40
          Top = 20
          Width = 34
          Height = 13
          Caption = 'Chave:'
        end
        object Label2: TLabel
          Left = 26
          Top = 38
          Width = 48
          Height = 13
          Caption = 'Protocolo:'
        end
        object Label3: TLabel
          Left = 7
          Top = 56
          Width = 67
          Height = 13
          Caption = 'Dt.Autorizado:'
        end
        object Label5: TLabel
          Left = 427
          Top = 22
          Width = 71
          Height = 13
          Caption = 'Tipo Ambiente:'
        end
        object Label6: TLabel
          Left = 437
          Top = 40
          Width = 61
          Height = 13
          Caption = 'Vers'#227'o XML:'
        end
        object Label16: TLabel
          Left = 415
          Top = 58
          Width = 83
          Height = 13
          Caption = 'Vers'#227'o Processo:'
        end
        object DBEdit1: TDBEdit
          Left = 76
          Top = 14
          Width = 337
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'chNFe'
          DataSource = DMRecebeXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 76
          Top = 32
          Width = 337
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'nProt'
          DataSource = DMRecebeXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 76
          Top = 50
          Width = 337
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'dhRecbto'
          DataSource = DMRecebeXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 500
          Top = 16
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'tpAmb'
          DataSource = DMRecebeXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 500
          Top = 34
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'versao'
          DataSource = DMRecebeXML.dsNFeProtocolo
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit12: TDBEdit
          Left = 500
          Top = 52
          Width = 94
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'verProc'
          DataSource = DMRecebeXML.dsCabecalho
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Emitente'
      ImageIndex = 4
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1027
        Height = 479
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        DesignSize = (
          1027
          479)
        object Label29: TLabel
          Left = 18
          Top = 29
          Width = 66
          Height = 13
          Caption = 'Raz'#227'o Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 41
          Top = 51
          Width = 43
          Height = 13
          Caption = 'Fantasia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 35
          Top = 73
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 650
          Top = 73
          Width = 15
          Height = 13
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 17
          Top = 95
          Width = 67
          Height = 13
          Caption = 'Complemento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 54
          Top = 117
          Width = 30
          Height = 13
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 48
          Top = 139
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 607
          Top = 139
          Width = 58
          Height = 13
          Caption = 'C'#243'd.Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 67
          Top = 161
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 60
          Top = 183
          Width = 25
          Height = 13
          Caption = 'Pa'#237's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 616
          Top = 183
          Width = 50
          Height = 13
          Caption = 'C'#243'd. Pa'#237's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 441
          Top = 161
          Width = 22
          Height = 13
          Caption = 'Cep:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 29
          Top = 261
          Width = 55
          Height = 13
          Caption = 'CNPJ/CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 358
          Top = 261
          Width = 67
          Height = 13
          Caption = 'Insc.Estadual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 328
          Top = 280
          Width = 97
          Height = 13
          Caption = 'IE do Sub.Tribut'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 10
          Top = 280
          Width = 74
          Height = 13
          Caption = 'Insc. Municipal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 52
          Top = 302
          Width = 32
          Height = 13
          Caption = 'CNAE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 400
          Top = 302
          Width = 25
          Height = 13
          Caption = 'CRT:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label79: TLabel
          Left = 57
          Top = 205
          Width = 27
          Height = 13
          Caption = 'Fone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label61: TLabel
          Left = 841
          Top = 389
          Width = 132
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Fornecedor n'#227'o encontrado'
          Visible = False
        end
        object DBEdit17: TDBEdit
          Left = 87
          Top = 23
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'emit_xNome'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit18: TDBEdit
          Left = 87
          Top = 45
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'xFant'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit19: TDBEdit
          Left = 87
          Top = 67
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_xLgr'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit20: TDBEdit
          Left = 667
          Top = 67
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_nro'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit21: TDBEdit
          Left = 87
          Top = 89
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_xCpl'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit22: TDBEdit
          Left = 87
          Top = 111
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_xBairro'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit23: TDBEdit
          Left = 87
          Top = 133
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_xMun'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit24: TDBEdit
          Left = 667
          Top = 132
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_cMun'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit25: TDBEdit
          Left = 87
          Top = 155
          Width = 83
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_UF'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit26: TDBEdit
          Left = 87
          Top = 177
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_xPais'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit27: TDBEdit
          Left = 667
          Top = 177
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_cPais'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit28: TDBEdit
          Left = 470
          Top = 155
          Width = 123
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_CEP'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object edCNPJEmitente2: TEdit
          Left = 87
          Top = 255
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object edInscEmitente2: TEdit
          Left = 429
          Top = 255
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit29: TDBEdit
          Left = 429
          Top = 277
          Width = 164
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'IEST'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit30: TDBEdit
          Left = 87
          Top = 277
          Width = 164
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'IM'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object DBEdit31: TDBEdit
          Left = 87
          Top = 299
          Width = 164
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'CNAE'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object DBEdit32: TDBEdit
          Left = 429
          Top = 299
          Width = 164
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'CRT'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
        object DBEdit45: TDBEdit
          Left = 87
          Top = 199
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderEmit_fone'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
        end
        object BitBtn2: TBitBtn
          Left = 865
          Top = 407
          Width = 123
          Height = 25
          Hint = 'Gravar fornecedor no sistema'
          Anchors = [akTop, akRight]
          Caption = 'Gravar Fornecedor'
          TabOrder = 19
          Visible = False
          OnClick = BitBtn2Click
        end
        object BitBtn4: TBitBtn
          Left = 865
          Top = 433
          Width = 123
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Gravar Produtos'
          TabOrder = 20
          Visible = False
          OnClick = BitBtn4Click
        end
        object BitBtn1: TBitBtn
          Left = 865
          Top = 459
          Width = 123
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Mostrar Dados Originais'
          TabOrder = 21
          Visible = False
          OnClick = BitBtn1Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Destinat'#225'rio'
      ImageIndex = 5
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1027
        Height = 479
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        object Label47: TLabel
          Left = 18
          Top = 29
          Width = 66
          Height = 13
          Caption = 'Raz'#227'o Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label49: TLabel
          Left = 35
          Top = 73
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label50: TLabel
          Left = 650
          Top = 73
          Width = 15
          Height = 13
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label51: TLabel
          Left = 17
          Top = 95
          Width = 67
          Height = 13
          Caption = 'Complemento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label52: TLabel
          Left = 54
          Top = 117
          Width = 30
          Height = 13
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label53: TLabel
          Left = 48
          Top = 139
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label54: TLabel
          Left = 607
          Top = 139
          Width = 58
          Height = 13
          Caption = 'C'#243'd.Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label55: TLabel
          Left = 67
          Top = 161
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label56: TLabel
          Left = 61
          Top = 183
          Width = 25
          Height = 13
          Caption = 'Pa'#237's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label57: TLabel
          Left = 616
          Top = 183
          Width = 50
          Height = 13
          Caption = 'C'#243'd. Pa'#237's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label58: TLabel
          Left = 441
          Top = 161
          Width = 22
          Height = 13
          Caption = 'Cep:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label59: TLabel
          Left = 29
          Top = 221
          Width = 55
          Height = 13
          Caption = 'CNPJ/CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 358
          Top = 221
          Width = 67
          Height = 13
          Caption = 'Insc.Estadual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label65: TLabel
          Left = 56
          Top = 319
          Width = 28
          Height = 13
          Caption = 'Email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit33: TDBEdit
          Left = 87
          Top = 23
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'dest_xNome'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit35: TDBEdit
          Left = 87
          Top = 67
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_xLgr'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit36: TDBEdit
          Left = 667
          Top = 67
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_nro'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit37: TDBEdit
          Left = 87
          Top = 89
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_xCpl'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit38: TDBEdit
          Left = 87
          Top = 111
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_xBairro'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit39: TDBEdit
          Left = 87
          Top = 133
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_xMun'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit40: TDBEdit
          Left = 667
          Top = 132
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_cMun'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit41: TDBEdit
          Left = 87
          Top = 155
          Width = 83
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_UF'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit42: TDBEdit
          Left = 87
          Top = 177
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_xPais'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit43: TDBEdit
          Left = 667
          Top = 177
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_cPais'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit44: TDBEdit
          Left = 470
          Top = 155
          Width = 123
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'enderDest_CEP'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object edCNPJDest2: TEdit
          Left = 87
          Top = 215
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object edInscDest2: TEdit
          Left = 429
          Top = 215
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit49: TDBEdit
          Left = 87
          Top = 313
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'email'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Transportadora'
      ImageIndex = 8
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1027
        Height = 479
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        object Label73: TLabel
          Left = 54
          Top = 29
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label92: TLabel
          Left = 35
          Top = 73
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label96: TLabel
          Left = 48
          Top = 139
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label97: TLabel
          Left = 607
          Top = 139
          Width = 58
          Height = 13
          Caption = 'C'#243'd.Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label98: TLabel
          Left = 67
          Top = 161
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label102: TLabel
          Left = 29
          Top = 221
          Width = 55
          Height = 13
          Caption = 'CNPJ/CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label103: TLabel
          Left = 358
          Top = 221
          Width = 67
          Height = 13
          Caption = 'Insc.Estadual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit58: TDBEdit
          Left = 87
          Top = 23
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'xNome'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit59: TDBEdit
          Left = 87
          Top = 67
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'xEnder'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit63: TDBEdit
          Left = 87
          Top = 133
          Width = 506
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'transporta_xMun'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit64: TDBEdit
          Left = 667
          Top = 132
          Width = 163
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'cMunFG1'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit65: TDBEdit
          Left = 87
          Top = 155
          Width = 83
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'transporta_UF'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object edCNPJTransportadora: TEdit
          Left = 87
          Top = 215
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object edInscTransportadora: TEdit
          Left = 429
          Top = 215
          Width = 164
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Itens (Produto/Servi'#231'o)'
      ImageIndex = 6
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1027
        Height = 479
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        object SMDBGrid1: TSMDBGrid
          Left = 1
          Top = 1
          Width = 1025
          Height = 258
          Align = alTop
          Ctl3D = False
          DataSource = DMRecebeXML.dsmItensNota
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = SMDBGrid1KeyDown
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
          ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          OnGetCellParams = SMDBGrid1GetCellParams
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 35
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'Item'
              ReadOnly = True
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NumPedido'
              ReadOnly = True
              Title.Caption = 'N'#186' OC'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemPedido'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Item OC'
              Width = 50
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'TipoVenda'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Venda'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Unidade'
              ReadOnly = True
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UnidadeInterno'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Unid. Interno'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CFOP'
              ReadOnly = True
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CFOPInterno'
              Width = 52
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CodCFOP_NFCe'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'CFOP NFCe'
              Width = 49
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CFOPOriginal'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodProduto'
              ReadOnly = True
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodProdutoInterno'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Referencia_Int'
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia Interna'
              Width = 88
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID_Cor'
              Title.Alignment = taCenter
              Title.Caption = 'ID Cor'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome_Cor'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Cor'
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VlrUnitario'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vlr_Venda'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Venda Produto'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomeProduto'
              Width = 418
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CodBarra'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Num_Lote_Controle'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Lote Controle'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qtd'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VlrTotal'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VlrIPI'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM'
              ReadOnly = True
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CEST'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VlrIcmsST'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. ICMS ST'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QtdPacote'
              ReadOnly = True
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GravarNovo'
              ReadOnly = True
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NumLote'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Lote'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Obs_Complementar'
              Title.Alignment = taCenter
              Title.Caption = 'Obs. Complementar'
              Width = 168
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfAdicionais'
              Title.Alignment = taCenter
              Title.Caption = 'Informa'#231#245'es Adicionais'
              Width = 207
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomeProduto_Nota'
              Title.Alignment = taCenter
              Title.Caption = 'Nome do produto na nota'
              Width = 649
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome_Grupo'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Grupo (Estrutura)'
              Width = 295
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Gravar_Adic_Prod'
              Title.Alignment = taCenter
              Title.Caption = 'Gravar Inf. Adic. No Nome do Produto'
              Width = 84
              Visible = True
            end>
        end
        object Panel7: TPanel
          Left = 1
          Top = 411
          Width = 1025
          Height = 67
          Align = alBottom
          Color = clSilver
          TabOrder = 1
          DesignSize = (
            1025
            67)
          object Shape1: TShape
            Left = 440
            Top = 17
            Width = 25
            Height = 16
            Anchors = [akTop, akRight]
            Brush.Color = clRed
          end
          object Label67: TLabel
            Left = 468
            Top = 20
            Width = 115
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Produto n'#227'o encontrado'
          end
          object Shape2: TShape
            Left = 267
            Top = 9
            Width = 25
            Height = 16
            Anchors = [akTop, akRight]
            Brush.Color = clYellow
          end
          object Shape3: TShape
            Left = 267
            Top = 39
            Width = 25
            Height = 16
            Anchors = [akTop, akRight]
            Brush.Color = clAqua
          end
          object Label68: TLabel
            Left = 296
            Top = 43
            Width = 86
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Unidade Diferente'
          end
          object Shape4: TShape
            Left = 440
            Top = 32
            Width = 25
            Height = 16
            Anchors = [akTop, akRight]
            Brush.Color = clGray
          end
          object Label90: TLabel
            Left = 468
            Top = 35
            Width = 109
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'CFOP N'#227'o Encontrada'
          end
          object Label76: TLabel
            Left = 295
            Top = 12
            Width = 124
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'N'#227'o possui n'#250'mero na OC'
          end
          object Shape5: TShape
            Left = 267
            Top = 24
            Width = 25
            Height = 16
            Anchors = [akTop, akRight]
            Brush.Color = clMaroon
          end
          object Label118: TLabel
            Left = 295
            Top = 27
            Width = 72
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Produto Inativo'
          end
          object Label48: TLabel
            Left = 10
            Top = 11
            Width = 219
            Height = 48
            Caption = 'F3 - Associar Produto'#13#10'F4 - Associar OC     '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object PageControl1: TPageControl
          Left = 1
          Top = 259
          Width = 584
          Height = 152
          ActivePage = TabSheet9
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MultiLine = True
          ParentFont = False
          TabOrder = 2
          TabPosition = tpLeft
          object TabSheet8: TTabSheet
            Caption = 'Fiscal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            object Label94: TLabel
              Left = 78
              Top = 10
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'CFOP:'
            end
            object Label95: TLabel
              Left = 69
              Top = 44
              Width = 40
              Height = 13
              Alignment = taRightJustify
              Caption = '% ICMS:'
            end
            object Label99: TLabel
              Left = 53
              Top = 26
              Width = 56
              Height = 13
              Alignment = taRightJustify
              Caption = 'Base ICMS:'
            end
            object Label100: TLabel
              Left = 270
              Top = 44
              Width = 47
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vlr. ICMS:'
            end
            object Label101: TLabel
              Left = 47
              Top = 62
              Width = 62
              Height = 13
              Alignment = taRightJustify
              Caption = 'Sit.Tribut'#225'ria:'
            end
            object Label104: TLabel
              Left = 82
              Top = 80
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = '% IPI:'
            end
            object Label105: TLabel
              Left = 283
              Top = 80
              Width = 34
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vlr. IPI:'
            end
            object Label109: TLabel
              Left = 264
              Top = 26
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Caption = 'Sit.Trib.CF:'
            end
            object Label121: TLabel
              Left = 256
              Top = 10
              Width = 61
              Height = 13
              Alignment = taRightJustify
              Caption = 'CFOP NFCe:'
            end
            object Label127: TLabel
              Left = 253
              Top = 98
              Width = 64
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vlr. ICMS ST:'
            end
            object Label128: TLabel
              Left = 72
              Top = 98
              Width = 37
              Height = 13
              Alignment = taRightJustify
              Caption = '% MVA:'
            end
            object Label117: TLabel
              Left = 36
              Top = 118
              Width = 73
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tipo Aquisi'#231#227'o:'
            end
            object RxDBLookupCombo2: TRxDBLookupCombo
              Left = 112
              Top = 2
              Width = 121
              Height = 19
              DropDownCount = 8
              DropDownWidth = 500
              Ctl3D = False
              DataField = 'CFOPInterno'
              DataSource = DMRecebeXML.dsmItensNota
              LookupField = 'ID'
              LookupDisplay = 'CODCFOP;NOME'
              LookupSource = DMRecebeXML.dsCFOP
              ParentCtl3D = False
              TabOrder = 0
              OnChange = RxDBLookupCombo2Change
              OnExit = RxDBLookupCombo2Exit
            end
            object DBEdit60: TDBEdit
              Left = 112
              Top = 38
              Width = 121
              Height = 19
              Ctl3D = False
              DataField = 'AliqIcms'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              TabOrder = 4
            end
            object DBEdit61: TDBEdit
              Left = 112
              Top = 20
              Width = 121
              Height = 19
              Ctl3D = False
              DataField = 'BaseIcms'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBEdit62: TDBEdit
              Left = 320
              Top = 38
              Width = 106
              Height = 19
              Ctl3D = False
              DataField = 'VlrIcms'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              TabOrder = 5
            end
            object RxDBLookupCombo3: TRxDBLookupCombo
              Left = 112
              Top = 56
              Width = 121
              Height = 19
              DropDownCount = 8
              DropDownWidth = 300
              Ctl3D = False
              DataField = 'CodSitTribInterno'
              DataSource = DMRecebeXML.dsmItensNota
              ListStyle = lsDelimited
              LookupField = 'ID'
              LookupDisplay = 'COD_CST;PERCENTUAL'
              LookupSource = DMRecebeXML.dsTab_CSTICMS
              ParentCtl3D = False
              TabOrder = 6
              OnChange = RxDBLookupCombo3Change
            end
            object DBEdit66: TDBEdit
              Left = 112
              Top = 74
              Width = 121
              Height = 19
              Ctl3D = False
              DataField = 'AliqIPI'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              TabOrder = 7
            end
            object DBEdit67: TDBEdit
              Left = 320
              Top = 74
              Width = 106
              Height = 19
              Ctl3D = False
              DataField = 'VlrIPI'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              TabOrder = 8
            end
            object RxDBLookupCombo5: TRxDBLookupCombo
              Left = 320
              Top = 20
              Width = 82
              Height = 19
              DropDownCount = 8
              DropDownWidth = 500
              Ctl3D = False
              DataField = 'ID_SitTrib_CF'
              DataSource = DMRecebeXML.dsmItensNota
              LookupField = 'ID'
              LookupDisplay = 'CODIGO'
              LookupSource = DMRecebeXML.dsSitTrib_CF
              ParentCtl3D = False
              TabOrder = 3
              OnChange = RxDBLookupCombo2Change
            end
            object RxDBLookupCombo8: TRxDBLookupCombo
              Left = 320
              Top = 2
              Width = 82
              Height = 19
              DropDownCount = 8
              DropDownWidth = 500
              Ctl3D = False
              DataField = 'ID_CFOP_NFCe'
              DataSource = DMRecebeXML.dsmItensNota
              LookupField = 'ID'
              LookupDisplay = 'CODCFOP;NOME'
              LookupSource = DMRecebeXML.dsCFOP
              ParentCtl3D = False
              TabOrder = 1
              OnChange = RxDBLookupCombo8Change
            end
            object DBEdit78: TDBEdit
              Left = 320
              Top = 92
              Width = 106
              Height = 19
              Ctl3D = False
              DataField = 'VlrIcmsST'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              TabOrder = 10
            end
            object DBEdit79: TDBEdit
              Left = 112
              Top = 92
              Width = 121
              Height = 19
              Ctl3D = False
              DataField = 'PercMVAST'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 9
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 112
              Top = 110
              Width = 315
              Height = 21
              Style = csDropDownList
              Ctl3D = False
              DataField = 'TipoVenda'
              DataSource = DMRecebeXML.dsmItensNota
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                '[..Nenhuma..]'
                'Consumo'
                'Revenda'
                'Industrializa'#231#227'o')
              ParentCtl3D = False
              TabOrder = 11
              Values.Strings = (
                'G'
                'C'
                'R'
                'I')
              OnClick = RxDBComboBox1Click
            end
          end
          object TabSheet9: TTabSheet
            Caption = 'Integra'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 1
            ParentFont = False
            DesignSize = (
              556
              144)
            object Label106: TLabel
              Left = 56
              Top = 44
              Width = 62
              Height = 13
              Alignment = taRightJustify
              Caption = 'Unid.Padr'#227'o:'
            end
            object Label107: TLabel
              Left = 220
              Top = 44
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Unid.Nota:'
            end
            object Label108: TLabel
              Left = 364
              Top = 44
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Qtd.Conv.:'
            end
            object Label110: TLabel
              Left = 67
              Top = 8
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'N'#186' Pedido:'
            end
            object Label111: TLabel
              Left = 212
              Top = 8
              Width = 59
              Height = 13
              Alignment = taRightJustify
              Caption = 'Item Pedido:'
            end
            object Label112: TLabel
              Left = 365
              Top = 7
              Width = 50
              Height = 13
              Alignment = taRightJustify
              Caption = 'ID Pedido:'
            end
            object Label120: TLabel
              Left = 37
              Top = 62
              Width = 81
              Height = 13
              Alignment = taRightJustify
              Caption = 'N'#186' Lote Controle:'
            end
            object Label115: TLabel
              Left = 99
              Top = 97
              Width = 19
              Height = 13
              Alignment = taRightJustify
              Caption = 'Cor:'
            end
            object Label124: TLabel
              Left = 72
              Top = 115
              Width = 46
              Height = 13
              Alignment = taRightJustify
              Caption = 'ID Grupo:'
            end
            object Label125: TLabel
              Left = 122
              Top = 128
              Width = 100
              Height = 13
              Caption = 'F2 para consultar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label129: TLabel
              Left = 61
              Top = 80
              Width = 57
              Height = 13
              Alignment = taRightJustify
              Caption = 'CEST Nota:'
            end
            object Label130: TLabel
              Left = 307
              Top = 80
              Width = 109
              Height = 13
              Alignment = taRightJustify
              Caption = 'CEST Interno no NCM:'
            end
            object DBEdit69: TDBEdit
              Left = 272
              Top = 38
              Width = 81
              Height = 19
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'Unidade'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 7
            end
            object DBEdit70: TDBEdit
              Left = 416
              Top = 38
              Width = 81
              Height = 19
              Ctl3D = False
              DataField = 'QtdPacote'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              TabOrder = 8
              OnExit = DBEdit70Exit
            end
            object DBEdit71: TDBEdit
              Left = 120
              Top = 1
              Width = 81
              Height = 19
              Ctl3D = False
              DataField = 'NumPedido'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit72: TDBEdit
              Left = 272
              Top = 1
              Width = 81
              Height = 19
              Ctl3D = False
              DataField = 'ItemPedido'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              TabOrder = 1
            end
            object dbedtIDPedido: TDBEdit
              Left = 416
              Top = 1
              Width = 81
              Height = 19
              Color = clSilver
              Ctl3D = False
              DataField = 'ID_Pedido'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBCheckBox1: TDBCheckBox
              Left = 272
              Top = 20
              Width = 145
              Height = 17
              Caption = 'Converter Unid. Medida'
              DataField = 'Converter_Unid_Medida'
              DataSource = DMRecebeXML.dsmItensNota
              TabOrder = 4
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object RxDBLookupCombo4: TRxDBLookupCombo
              Left = 120
              Top = 38
              Width = 82
              Height = 19
              DropDownCount = 8
              DropDownWidth = 300
              Ctl3D = False
              DataField = 'UnidadeInterno'
              DataSource = DMRecebeXML.dsmItensNota
              ListStyle = lsDelimited
              LookupField = 'UNIDADE'
              LookupDisplay = 'UNIDADE'
              LookupSource = DMRecebeXML.dsUnidade2
              ParentCtl3D = False
              TabOrder = 6
              OnEnter = RxDBLookupCombo4Enter
            end
            object DBEdit74: TDBEdit
              Left = 120
              Top = 56
              Width = 233
              Height = 19
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'Num_Lote_Controle'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 10
            end
            object RxDBLookupCombo7: TRxDBLookupCombo
              Left = 120
              Top = 92
              Width = 378
              Height = 19
              DropDownCount = 8
              DropDownWidth = 300
              Ctl3D = False
              DataField = 'ID_Cor'
              DataSource = DMRecebeXML.dsmItensNota
              ListStyle = lsDelimited
              LookupField = 'ID_COMBINACAO_COR'
              LookupDisplay = 'NOME'
              LookupSource = DMRecebeXML.dsCombinacao
              ParentCtl3D = False
              TabOrder = 13
              OnChange = RxDBLookupCombo3Change
            end
            object DBEdit76: TDBEdit
              Left = 120
              Top = 110
              Width = 81
              Height = 19
              Ctl3D = False
              DataField = 'ID_Grupo'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              TabOrder = 14
              OnExit = DBEdit76Exit
              OnKeyDown = DBEdit76KeyDown
            end
            object DBEdit77: TDBEdit
              Left = 200
              Top = 110
              Width = 298
              Height = 19
              TabStop = False
              Color = 13224393
              Ctl3D = False
              DataField = 'Nome_Grupo'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 15
            end
            object ckAtualizaRef: TCheckBox
              Left = 119
              Top = 20
              Width = 125
              Height = 17
              Anchors = [akTop, akRight]
              Caption = 'Ajustar Refer'#234'ncia'
              TabOrder = 3
            end
            object btnConfirmar: TNxButton
              Left = 498
              Top = 33
              Width = 50
              Height = 30
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              Glyph.Data = {
                AE060000424DAE06000000000000360000002800000017000000170000000100
                1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF3F9F4C6CEC7799D7C4D7B4D235C241C561C225E
                224B7B507B9C7CC6CEC7F4F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95A996456A443E663E29682B306B30
                3871373B713A386C3731643129642B3D663D456C4494AA97FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFEFFFFFFFFFFFFFF4E794D2A602A4F844F0F
                5E0F055A08005001015004014E03004B01004700054C050E4C0E4D774F2B622A
                4C7A4EFFFFFFFFFFFFFEFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4868483F6E
                402F7B30005400045C07075A0B06590906550907550A075309064F08034C0601
                4B03003D002E64303F6C4349694DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                4D7A4E3E6B3F207723005B0208610E075F0B065B0900560105570907550A0854
                0B085109054F07064C07034C080042001E5B1D3D6B414D7B4FFFFFFFFFFFFF00
                0000FFFFFF97AA992A6028308833006400076809076508056308005600397739
                04550500550505560707540B065309065008044D06034D050042002F65312860
                2898AA99FFFFFF000000F5F9F64266464F9051006100066B0C07690A07670A00
                54004B854CFFFFFFA6C1A6004D0000550306550908530A075209065007044C05
                044B09003E004E7850456D46F6F9F6000000C6CEC63F6640107C12056D09066C
                0A056A0A0059003C7F3BFFFFFFFFFFFFFFFFFFABC6AD004D0203550605550908
                550B065209054F07044C06014C040D4C0F3B643CC6CFC600000079997A37823A
                2183260F761407720E005E00559256FFFFFFFFFFFFFEFEFEFEFFFEFFFFFFBED2
                C0004A0002540506560806540907530A064F08034D05054C062A632B7DA08000
                00004A7B4D4C954F29892F218426006500639E66FFFFFFFFFFFFFEFEFFFFFFFF
                FFFFFFFFFEFFFFFFFFA6C1A8004B0002550506550907540A085209054F080047
                002E6330517E52000000245E2767AE6D39964028872D79B37DFFFFFFF7F9F9F9
                FCFAFFFFFFD2DFD1FCFEFDFFFFFFFFFFFFFFFFFFBED2C0014E02005503055608
                07540A075309004C01376C3427612A0000001F562078BA80479F4D449948DFEF
                DFF6FBF8F0F4EDFFFFFFB4CFB5004F00639663FFFFFFFFFFFFFEFEFFFFFFFFAD
                C6B0014D0200550207540A07540A014E033970371B561C000000275E2782BF87
                5DAA604DA0533D9141F1FAF0FFFFFFBAD4B8005B00006A04005A00689967FFFF
                FFFFFFFFFEFFFFFFFFFFA9C4AC004B00015605065509014F0436723529602900
                000048764A7DB18171B87565B16957A55A519E56A2CCA4248729177A20016D06
                056E0A005400568C55FFFFFFFFFFFFFFFFFEFFFFFFC0D6C30048000055040052
                022E6C2E517D530000007494746B9F6F89C88B75B7776BB26F5BA85F45994C4E
                9C51429748258227006604006E090056006E9C6DFFFFFFFFFFFFFEFEFFFFFFFF
                B3C9B4145F150157062A682D7B9F80000000C4CCC4476C46A0D3A382C3887EBC
                8072B67569AE6B5DA76153A2554E9D52358F3A0B7110006C030055005B8E59FF
                FFFFFFFFFFFFFFFFAEC9B00053000D600F3E653EC6CFC6000000F6FBF72E572F
                B5CFB495CC9B8FC69183BF8779B97C6EB17263AA675AA45D519E5446984E2885
                2D0C7413005100639261FFFFFFB6D0B50044000051004D8452456A45F6FBF700
                0000FFFFFF9BAA9A1F571FDBF9DD99CC9C92C79789C28A7DB98271B37868AD6B
                5CA661549F5B4C9A503F8F422F89350D6D143A8537006208005900338035295C
                299BAE9AFFFFFF000000FEFFFFFFFFFF45744B507850D2F0D2A1D0A798CC9D91
                C79384C0887CBA8070B27466AD685CA460519C5546954B3F8F432B83321E7922
                36873B3E6C3E4E7C51FFFFFFFFFEFF000000FFFFFFFFFFFFFFFFFF4160404F77
                4FE9FFEAAAD7AE9FCEA093C7988AC28D81BA8376B5786CAD6F60A664569D5A49
                984D32893961A8653B6C3C476848FFFFFFFFFFFFFFFFFF000000FFFFFFFFFEFF
                FFFFFFFFFFFF45744A20561EC3D8C3C0E5C3B1DDB69ED0A493C69587BF8A7EBA
                7F71B37570B37564AB6B81AE822259234F7A4FFFFFFFFFFFFFFFFFFEFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BAB9B29552C466B4985AA849EC5A0
                B2D5B5B0D8B5A0CCA482B2856295644169433B5D3C99AE9BFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCF6C3
                CBC3719270447545255F24225624245E28457649739575C5CDC5F6FBF7FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
              GlyphSpacing = 5
              ParentFont = False
              TabOrder = 9
              Transparent = True
              OnClick = btnConfirmarClick
            end
            object DBEdit80: TDBEdit
              Left = 120
              Top = 74
              Width = 81
              Height = 19
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'CEST'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 11
            end
            object DBEdit81: TDBEdit
              Left = 417
              Top = 74
              Width = 81
              Height = 19
              CharCase = ecUpperCase
              Color = clSilver
              Ctl3D = False
              DataField = 'CEST'
              DataSource = DMRecebeXML.dsmItensNota
              ParentCtl3D = False
              TabOrder = 12
            end
            object DBCheckBox10: TDBCheckBox
              Left = 416
              Top = 20
              Width = 97
              Height = 17
              Caption = 'Gerar Estoque'
              DataField = 'Gerar_Estoque'
              DataSource = DMRecebeXML.dsmItensNota
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
        object Panel9: TPanel
          Left = 585
          Top = 259
          Width = 441
          Height = 152
          Align = alClient
          TabOrder = 3
          object Label123: TLabel
            Left = 10
            Top = 134
            Width = 83
            Height = 13
            Alignment = taRightJustify
            Caption = '% Margem Pre'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label131: TLabel
            Left = 244
            Top = 134
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Caption = 'Custo Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object GroupBox5: TGroupBox
            Left = 8
            Top = 4
            Width = 161
            Height = 69
            Caption = ' Vlr. do Frete da Nota '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label126: TLabel
              Left = 8
              Top = 40
              Width = 132
              Height = 26
              Caption = 'Esse valor n'#227'o vem na nota'#13#10'Precisa ser informado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object ceVlrFrete_Nota: TCurrencyEdit
              Left = 8
              Top = 16
              Width = 121
              Height = 21
              AutoSize = False
              DisplayFormat = '0.00'
              TabOrder = 0
            end
          end
          object DBCheckBox2: TDBCheckBox
            Left = 13
            Top = 83
            Width = 145
            Height = 17
            Caption = 'Atualizar Pre'#231'o Compra'
            DataField = 'AtualizarPreco'
            DataSource = DMRecebeXML.dsmItensNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 13
            Top = 100
            Width = 196
            Height = 17
            Caption = 'Atualizar Custo Total'
            DataField = 'AtualizarCustoTotal'
            DataSource = DMRecebeXML.dsmItensNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox3Click
          end
          object DBEdit75: TDBEdit
            Left = 97
            Top = 128
            Width = 81
            Height = 19
            Ctl3D = False
            DataField = 'Perc_Margem'
            DataSource = DMRecebeXML.dsmItensNota
            ParentCtl3D = False
            TabOrder = 3
          end
          object DBCheckBox4: TDBCheckBox
            Left = 181
            Top = 73
            Width = 196
            Height = 17
            Caption = 'Subtrair o ICMS do Custo do Produto'
            DataField = 'SUB_ICMS_CUSTO'
            DataSource = DMRecebeXML.dsmItensNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 181
            Top = 105
            Width = 236
            Height = 17
            Caption = 'Subtrair o Pis/Cofins do Custo do Produto'
            DataField = 'SUB_PISCOFINS_CUSTO'
            DataSource = DMRecebeXML.dsmItensNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 181
            Top = 11
            Width = 196
            Height = 17
            Caption = 'Somar IPI no custo'
            DataField = 'SOMAR_IPI_NO_CUSTO'
            DataSource = DMRecebeXML.dsmItensNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox7: TDBCheckBox
            Left = 181
            Top = 27
            Width = 196
            Height = 17
            Caption = 'Somar Frete no custo'
            DataField = 'SOMAR_FRETE_NO_CUSTO'
            DataSource = DMRecebeXML.dsmItensNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox8: TDBCheckBox
            Left = 181
            Top = 42
            Width = 196
            Height = 17
            Caption = 'Somar ST no custo'
            DataField = 'SOMAR_ST_NO_CUSTO'
            DataSource = DMRecebeXML.dsmItensNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox9: TDBCheckBox
            Left = 181
            Top = 88
            Width = 236
            Height = 17
            Caption = 'Subtrair o IPI do Custo do Produto'
            DataField = 'SUB_PISCOFINS_CUSTO'
            DataSource = DMRecebeXML.dsmItensNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBEdit73: TDBEdit
            Left = 305
            Top = 128
            Width = 81
            Height = 19
            Ctl3D = False
            DataField = 'Preco_Custo_Total'
            DataSource = DMRecebeXML.dsmItensNota
            ParentCtl3D = False
            TabOrder = 10
          end
          object BitBtn5: TBitBtn
            Left = 344
            Top = 32
            Width = 75
            Height = 25
            Caption = 'Recalcular'
            TabOrder = 11
            OnClick = BitBtn5Click
          end
        end
      end
    end
    object tsDuplicatasDeducoes: TTabSheet
      BorderWidth = 5
      Caption = 'Duplicatas / Dedu'#231#245'es'
      ImageIndex = 3
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1017
        Height = 469
        Align = alClient
        TabOrder = 0
        object Panel11: TPanel
          Left = 1
          Top = 1
          Width = 1015
          Height = 41
          Align = alTop
          TabOrder = 0
          object BitBtn6: TBitBtn
            Left = 45
            Top = 5
            Width = 121
            Height = 33
            Caption = 'Inserir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn6Click
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F8E9DEE096898D695A6040383D4434
              3C6A5B6196898EEADEE0FDF6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E2E38D8383121512001C15005750
              19948D26B5B01DB5B20F968F005751001C131315128E8285E7E2E2FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB4B63837350040321D
              AC963CFFEF3FFFFF46FFFF4DFFFF47FFFF45FFFF43FFFF3EFFF01BAF97003E33
              383636BFB4B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADA3A51919
              19117C6529F3CC36FFDE44F3DA3EEDDA31F1E031F3E639F0E536F1DF3AEFDD3E
              F2DC37FEDF2FF2CC0E7C651C1B1AB0A2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              BDB4B9191A181D8C6E30FCCB2AE5BA2DE4BE2AE8C729EACF22EED81FEFDB23ED
              DA22EFD926EAD22BE6C82FE1C028E5BB28FFCA158F6C1B1917BFB4B7FFFFFFFF
              FFFFFFFFFFE6E2E43936371674502CF6B617D59F25D8AB1BDEB50CE2B759E5CF
              AAF3EEABF1EBABF1EBA9F3ED59E5CE0EE0B81ADEB721DAAD16D7A125F7B31373
              50393635E6E3E4FFFFFFFFFFFF8D838801371B2FD99413D59218D09B19D6A413
              DAAA00DBAB74E0CBFFF5F8FFF4F6FFF4F6FFF4F872E2C900DCAC10D9AA17D6A4
              17D19B18D4932CD99700361D8E8489FFFFFFFCF9FC13171223915428DA8B15CA
              8918D09218D49713D79D00D7A067DDC3FBF5F6F5F4F4F5F4F4FCF4F765DEC500
              D8A318D6A01CD29A16D0951ACA8A25DA8D189358131513FCF8FBE9E2E7000C00
              39D28020C77616C5810EC7810ACA8507CE8A00CB8D60D5B7FBF5F7F6F4F4F6F4
              F4FBF5F760D6B900CD8F05CF8D0AC9850EC88118C67E24C67635D480000B00EA
              E1E5979094003A0F2FDB7F17C06C2DC57F69CEA675D3B16DD4B064D3B2A4DCCD
              F8F4F5F4F4F4F4F4F4F8F3F5A3DBCB60D2B169D5B172D3B063CEA22AC67C1FBD
              6C36DB7B0039109592946B626711692A32D06F1AB86248C783DCECE4FFF8FDFC
              F4F8FCF4F7F8F3F5F5F4F4F3F4F4F3F4F4F5F4F4F8F3F5FBF5F6FBF4F8FFF8FD
              DAECE34BC6841EB66730CE6F11672A656269403D3E1D81392BC96120B75D47C0
              80D6E9E1FFF7FBF5F4F4F5F4F4F5F4F4F4F4F3F3F4F4F3F4F4F4F4F3F5F4F4F5
              F4F4F5F4F4FFF7FCDAE9E04CC27F23B65E36C76424833A463F3E464142227B30
              45C25F31B75653BF79DBEAE0FFF7FCF5F4F5F5F5F5F5F4F4F3F4F4F3F4F3F3F4
              F3F4F4F4F5F4F5F5F5F5F5F4F5FFF7FCDBE8E252C17E2BB85839C35B19812B44
              3D40696364105E1841C55533B9545EC27EDEEAE2FEF9FDFAF5FAFAF6F9F6F5F7
              F5F4F5F3F4F3F3F4F3F5F4F5F6F5F7FAF6F9FAF5F9FEF9FEDCE9E15DC07C39B7
              563FC658106419686269989095002D004DC8534EB95E55B96972B87C76B78474
              B9866BB27EA3C7ADF8F6F7F4F4F4F4F4F4F7F6F7A3C6AB6BB17C72B88376B783
              73B78053B8684FBA5D49C8530031009A949AE9E4E90000004BB64861BE635ABA
              664ABB5A45B95E45BC6138B95984C996FAF6F9F5F4F5F5F4F5FAF6F986C7963C
              B65949BD6044BB5C4CB95D59B9635FBE5E49B649000100E9E3E9FCFAFC111311
              20701963C55A6DC17368BE6E69C0746AC2755FBF6C98CEA1FAF5F8F5F3F5F5F3
              F5F9F5F995CEA05DC06D6CC27766C27069BF6D73C17162C659226F1B121510FC
              F9FCFFFFFF8E868F00220051AD397DCD717FC2787BC17477C5776BC073A8CFAB
              FFFBFFFEFAFFFEFAFFFFFBFFA5D2A96BBF7076C47874C3747BC4797CCB734EAE
              3B0022008E888FFFFFFFFFFFFFE6E3E735353518490671CA5591D2878DC88485
              C88083C77BA6CBA0D0DBD0CFDCCECEDACDD2DAD0A2C8A183C57D88C87C8ECA85
              8FD38571C9561B4B08333634E4E3E6FFFFFFFFFFFFFFFFFFBDB7BE181616265C
              137FD060A4DE98A6D49D9FCD8C99CC8D8FC58C92C98796C68793C78C97C98C9D
              CE90A4D39CA7DE9786CE602E5C13161617BBB8BEFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFAEA8AF17161618460369B246ADE38EC2E6AEB9DEB1B0DCADB5DCA6BDD7
              ACB8DBAABBE0ADBBE6B2A6E2926CB0461E4502151618ACA7B0FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB8BE353532001A002E65147FBE53A8E282
              B9EA9EC0E8ACC5ECA8BCEA9EACE1847CBC57276712001900333532BCB8BFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E5E78E87910D
              130C000000001D00184C002C6B15286B1117480200190000000010160C8B8692
              E5E5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFDFAFDE8E4EC939399636A63403E4048404262666392919AEA
              E4EDFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object BitBtn7: TBitBtn
            Left = 168
            Top = 5
            Width = 121
            Height = 33
            Caption = 'Alterar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn7Click
            Glyph.Data = {
              AE060000424DAE06000000000000360000002800000017000000170000000100
              18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFDDDAD9D4CCC8B9ACA8B0A59FCDC2
              BDD4CECDE9E7E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9A96533E351F1A180C2D3C
              094662104D68093F5212222A2A1E17715E5BD8D6D9FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFEEECEB20120D141D271D
              88B322BFF61EC1FF20C1FF20C0FF1FBFFF22BFF923B4F31757700D06006A615D
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFAEA9A81D12
              0F2D82A42FCFFF1DC3FF20BBFF1FB9FF20B5FF26B9FB37B8F435B8F631B9FA34
              CDFF30B7EE0931403C2B22F6F6F6FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              D7CDCF0300002385A51EC9FF20B8FE1EB7FD1FB7FD20B9FE20B8FC1FB8FF1DB5
              FE1DB6FD21B6FE20B5FD1CBEFF24C8FF123C4E3B271FFFFFFFFFFFFFFFFFFF00
              0000FFFFFFF7F7F60200001D8CB21FCFFF1CB3F822C0FF20BFFF1FBAFF1EB5FF
              1FB9FE1FB9FD1EB7FF1EB7FF1EB8FF1EB7FF1FB8FC1FBBFF24CAFF002E3E645D
              5CFFFFFFFFFFFF000000FFFFFF665E5C0C384A27D3FF20BAFF269AC6122C4028
              A3DD21B1F022CFFF24BBFF21BAFD20B8FE1FB6FE1FB7FF1EB8FD21B8FE1FB9FD
              1FBDFF24B5EE020000D4D2D4FFFFFF000000E4E0E00F000020B7E71EBAFF1CB8
              FF1BB3EF24678D13405912566B1541581AB2ED1EC3FF1DB8FF1AB7FD1AB6FF20
              B9FE1DB7FF20B6FE1FB5FE22CFFF114C646A615EFFFFFF000000B3ABAA002F49
              35C1FF2CB8F82FB7F733C6FF1C546E2EC1EC36DCFF24617334698A2D6C814BD4
              FF3FBAF939BBF42EB9F62AB7F525B5FD1FB7FF1CBAFF22B5F41B0F09E9E7E600
              0000695B5810688329C3FF23B7FA1FB8FA29C1FF398ABA4495BB2C61792C5A74
              439CC415121C32687959E6FF4FBFFA4EC1F93BBCFA1AB5FC1EB8FF1EB9FF24BE
              F7011319D2CECD000000382E2F1286A922C0FF1CB5FF28B7FD59C5FD5DE4FF1A
              303850A7CB1B35411009094CA6C9111319376A7B5EDAFF53C6FE58C6F948C2F9
              19B4FD1EB8FF1DC1FF003249BBB3AE0000002622211A90B91FBFFF1DB6FC57C6
              FD65CBF761CBFD73D2FF0A0B1156A0BF18232D1A1A1857AACC10111C3A6B7B6F
              E4FF5EC8F96ACCF93FBFFA1BB4FF21C3FF01435EA49B99000000251F201388B0
              1ABFFF3DC0FA77CFF870CCF86FCDF871D8FF4E86970100006FB6D81A292C170C
              0C69B4D30D1017477C8983EAFF71CBFB6ACDF724B6FF20C1FF003957A9A08B00
              00005548481C82A31CBFFF6CC9F785D2F581D0F683CEF77ECFF98CE9FF6DA3B7
              06000072A9C42B3C411918167AB5D21415184E727C88DFFF88D1FA3BBFFB1BBD
              FF123547D0C3B4000000BBB2AB4688A62DBCFF82CDF193D1EE8FD0F18FD1F38C
              D4F58CD2F69BECFF62909C15100F85B6CC3839422A2E3086B7CE191C1F5F8B9B
              99E2FF4EC3FA14B8F96D6C6DEAE7D9000000E9E4E267707309BAFC86D2F9A0D9
              F698D8F699D7F59AD7F59AD7F599D6F5A4EDFF7A9FAC0B00018ABACC2F3D4219
              101387B8CF9DD8F4A6DDF542C5FF2F9FD1A18D89FDFAEB000000FEFEFEA89286
              379FCC5ED1FFB9DFF1A8DCF2AADDF4A9DCF2A9DCF2A9DBF2A5DBF2BAF5FF7FA7
              B0140D0C84A0AE4D5A65A5D4E6A9E1FCABDEF223C7FF6D7C85CDC9C5FFFDF400
              0000FFFFFFD6D4D478807E35BFFFB4E5F6B9DFF0B2DEF4B3DEF2B3DFF3B3DFF3
              B4DEF2B3DDF3C8F4FF798E953C474FC2F1FFB6E4FAC3E0EF8CDCFF3D9DCC9488
              83FFFFFFFFFFFD000000FFFFFFFFFFFFC8BBB2658A9B60CAF9D7EBF4CBE3F1C5
              E1F3C5E2F2C6E2F2C6E2F2C6E2F2C5E3F1D0F1FFDEFBFFC4E5F3D2E5F1BAE8FF
              34ABD58D8884F8F6F4FFFFFFFCFFFF000000FFFFFFFDFDFDFCFDFEBAB0AA7098
              A47DD0F8DDEBF3DFE9F3D3E9EFD2E9F0D2E8F0D1E6EECAE1E8CCE3E8CFE1E7E6
              E8EEAFE2FC56B7DE92928FE0D9D6FFFFFFFCFAFAF0F3F3000000FFFFFFFCFCFC
              FDFDFDFFFFFFCFC0C48D9E9C60B1DAACE0F5E1EEF4E4EEF2E7EEF2E8EEF3E6ED
              F2E2EBF3D9EBF47BCDEE6CA4BCA59D9AF5EBEAFFFFFFFFFFFFFFFDFEEBF3F000
              0000FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE8E0E2CBBDB383A3AF77AFCE8DC4DB
              A0CFE4A2D0E596CCE284BDD76EA8BFAAADA8D9CAC5FCFCFBFFFFFFFEFFFFFFFF
              FFFFFFFFFCFEFD000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEF7
              F1EDE2DDD5CBCCCAB5C1C4B4BFC2BFC3C1D6D2CFEEE7E3FAF7F5FFFFFFFFFFFF
              FEFFFFFFFFFFFFFFFFFFFFFFF9FEFE000000}
          end
          object BitBtn8: TBitBtn
            Left = 292
            Top = 5
            Width = 121
            Height = 33
            Caption = 'Excluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BitBtn8Click
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFDF4A5A19F5955581F1C260000070000
              0C1B2021595C59A7A8A3FEFEF5FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC1BEB93E3B4C00000B00004100008D
              010AB20C16BB0710B40002A1000073000033000006414247C9C7BEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4EE827F7B00003300007903
              18BA0717C6040FBB0008B10203AE0202AC0406A50004AD0306A7000096000052
              040325858782F4F6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1EB716F6B0000
              440014B5031CCB0011BB0003B50000BC0000BD0001BB0000BF0101BB0001BA00
              00B80102A702029F000079000023707376F3F4F1FFFFFFFFFFFFFFFFFFFCFBF7
              76757400004A0323D4011BD10007BB0000B90000BC0000BA0100BB0300BE0300
              C00100C10001BA0000BD0201BC0102AC0201A402009500002878797AFCFCFAFF
              FFFFFFFFFFB2ACA900013E0025CA021DD70008BF0000BB0000BF0000BF0000BE
              0100BF0200BF0200C10000C10001BD0000BE0000BD0101C00000B70200A30000
              80000024B3B3AFFFFFFFFFFFFC20213900169F022CE3010CCB0000C10000C500
              00C50000C50000C50000C70000C60000C50000C20102BF0100C40100C70000C7
              0001CA0002AF0202990000631E1F34FFFFFED8DACE0000340834F00420D80000
              C70000CE0000D20000D30000D40000D40000D50000D50000D40000D50000D000
              00D40000D60000D40100D30101C90002A103029C00000FDCDCD685858000028E
              0A36F60312D10000CC0000C90000B50000B10000B10000B10000B10000B10000
              B20000B50000B40000B50000B20000B50000C70000DA0100BA0107A00000488B
              8687403A3A002CDE032FE80006D80000C54947BA9694CF9797D19393CF9494CF
              9494CF9494CF9493CF9195D09594D19792D29696D28F94CF4948B80201CD0201
              C70006A10000873D393B0D0C121444FF0029E80000D53738CFDBDDEBFFFFFFFF
              FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFEFFFEFFFFFEFFFEFEFFFFFEFFFFFF
              DEDCEA3938D70000CF0005A30509B009061300020E0F4EFF002BEA0000D45B5A
              DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
              FFFFFFFFFFFFFFFFFFFFFC5A5EE00000D70007A10711B5000015000209144EFF
              002FEB0005E20806D49496DFFFFFFFF3F1FAF3F2FCF3F2FCF3F2FCF3F2FCF3F2
              FCF2F2FCF2F2FCF2F3FBF3F3FBFFFFFF9D93DA0D06D40000D20007A90B14BE00
              001209070C0C3FFF0537FB071BEE0000E20000DB0000D90706DA0405D80403D8
              0403D80403D80403D80304D80302DE0504D80708D70000D70000DA0000EC0107
              CA000BAF000FB40D0A0D373533001EC90543FF042CF20001E70000EF0000EE00
              00EB0000EA0000EA0000EA0000EA0000EA0000E60000EB0000EA0000E50000E8
              0000F20001EB000DB70015AF0000933C3B3E84838000006B1045FF033AF4061C
              EE0000EC0000F10000F10000F10000F10000F10000F00000F10100F10000F300
              00F00200EF0200F20000F7000BD40014B00417BE000051888588DEDAD300000C
              0B30EB0342FF0434F50413F10000F00000F20000F40000F30000F30000F20000
              F50100F80000F50000F70100F90300F8000ADF0017BA0018BD070FBA000009DC
              DCD4FFFFFE211B270005820A3AFE0341FA0532F70317F20104F30000F60000F8
              0000FB0000F80100F90000F80000F70000FC0003F4000EE0001AC4001DBD0317
              C8000071211D2EFFFFFEFFFFFFB4B3A80000210215B2083FFF0444FB0235F502
              24F10413F50307F80001F80000F80100F90001F70004F6000CED0018D9001FCA
              0023C7041DCE0006A3000024B3B2ABFFFFFFFDFFFFFCFCFA7A767100002D0214
              C10D39FA0743FF003CF50234F1022AEE0324EB031CEF001AEC001EE40222E101
              26D70028D00427D1051CD60007B700002F767670FBFCF9FFFEFFF9FCFFFFFFFF
              F5F4EE73726C00002E0004A80822EE0A39FB013EF7003BF3053BE90135E20037
              DF0231DD002EDB002DDB0225DD0815D40001A200003571716AF3F3ECFFFFFFFE
              FDFDFDFBFFFEFDFCFFFFFFF7F7F284838100002D000072070BCF081DF40428F7
              0429F70529EE0528EE0525EB051DEE0618EA0208C7000073000031848383F7F7
              F1FFFFFFFFFCFFFEFEFBFFFBFAFBFDFEFAFFFDFFFFFFFFFFFDC4C2BA3E3F4D00
              00160000590000B90000FF0D10FF0C0CFF0000FF0000BA00005F000014403E49
              C2C2BBFFFFFEFEFFFFFAFDFDFEFDFDFFFFFCFBFFFBFFFFFEFFFBFFFBFDFCFCFF
              FFFFFFFFFFFFFDF9F9EAA8A59F5C5A5D1C1E250000100000111F1D22585B539F
              A29CF5F6EEFFFFFDFFFFFFFEFFFFFDFEFCFCFBFEFFFEFCFBFFFF}
          end
        end
        object SMDBGrid2: TSMDBGrid
          Left = 1
          Top = 42
          Width = 1015
          Height = 426
          Align = alClient
          Ctl3D = False
          DataSource = DMRecebeXML.dsmParc
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
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
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 8
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'NumDuplicata'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Duplicata'
              Title.Color = 16777130
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DtVencimento'
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Title.Color = 16777130
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VlrVencimento'
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Title.Color = 16777130
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_Conta'
              Title.Alignment = taCenter
              Title.Caption = 'ID Conta'
              Title.Color = 16777130
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lkNomeConta'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Conta'
              Title.Color = 16777130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_TipoCobranca'
              Title.Alignment = taCenter
              Title.Caption = 'ID Tipo Cobran'#231'a'
              Title.Color = 16777130
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lkNomeTipoCobranca'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Tipo Cobran'#231'a'
              Title.Color = 16777130
              Width = 182
              Visible = True
            end>
        end
      end
    end
    object tsNFeRefProtocolo: TTabSheet
      BorderWidth = 5
      Caption = 'NFe Ref. / Nfe Protocolo'
      ImageIndex = 4
      object dgNFeRef: TDBGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 266
        Align = alClient
        DataSource = DMRecebeXML.dsNFeRef
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object dgNFeProtocolo: TDBGrid
        Left = 0
        Top = 266
        Width = 1017
        Height = 203
        Align = alBottom
        DataSource = DMRecebeXML.dsNFeProtocolo
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'versao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Id'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tpAmb'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'verAplic'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chNFe'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dhRecbto'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nProt'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'digVal'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cStat'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'xMotivo'
            Width = 64
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Total'
      ImageIndex = 7
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1027
        Height = 494
        Align = alClient
        Color = clMoneyGreen
        Enabled = False
        TabOrder = 0
        object Label80: TLabel
          Left = 1
          Top = 113
          Width = 110
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Total dos Produtos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label88: TLabel
          Left = 27
          Top = 137
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Tota da Nota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label77: TLabel
          Left = 59
          Top = 41
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base Icms:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label78: TLabel
          Left = 203
          Top = 41
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Icms:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label81: TLabel
          Left = 51
          Top = 65
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. do Frete:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label82: TLabel
          Left = 314
          Top = 65
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. do Seguro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label83: TLabel
          Left = 44
          Top = 89
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Desconto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label84: TLabel
          Left = 347
          Top = 41
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. IPI:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label85: TLabel
          Left = 484
          Top = 41
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. PIS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label86: TLabel
          Left = 619
          Top = 41
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Cofins:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label87: TLabel
          Left = 585
          Top = 65
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'Outras Despesas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit57: TDBEdit
          Left = 113
          Top = 131
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vNF'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit46: TDBEdit
          Left = 113
          Top = 35
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'ICMSTot_vBC'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit47: TDBEdit
          Left = 257
          Top = 35
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vICMS'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit48: TDBEdit
          Left = 113
          Top = 107
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vProd'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit50: TDBEdit
          Left = 113
          Top = 59
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vFrete'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit51: TDBEdit
          Left = 383
          Top = 59
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vSeg'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit52: TDBEdit
          Left = 113
          Top = 83
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'ICMSTot_vDesc'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit53: TDBEdit
          Left = 383
          Top = 35
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vIPI'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit54: TDBEdit
          Left = 525
          Top = 35
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'ICMSTot_vPIS'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit55: TDBEdit
          Left = 671
          Top = 35
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'ICMSTot_vCOFINS'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit56: TDBEdit
          Left = 671
          Top = 59
          Width = 82
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'vOutro'
          DataSource = DMRecebeXML.dsCabecalho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Resumo'
      ImageIndex = 7
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1027
        Height = 494
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        object Label62: TLabel
          Left = 39
          Top = 32
          Width = 80
          Height = 16
          Caption = 'Fornecedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbStatusForn: TLabel
          Left = 125
          Top = 32
          Width = 700
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label63: TLabel
          Left = 69
          Top = 56
          Width = 50
          Height = 16
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbStatusCidade: TLabel
          Left = 125
          Top = 56
          Width = 700
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label66: TLabel
          Left = 87
          Top = 80
          Width = 32
          Height = 16
          Caption = 'Pa'#237's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbStatusPais: TLabel
          Left = 125
          Top = 80
          Width = 700
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbStatusNotaEntrada: TLabel
          Left = 125
          Top = 112
          Width = 700
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label69: TLabel
          Left = 26
          Top = 112
          Width = 93
          Height = 16
          Caption = 'Nota Entrada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label70: TLabel
          Left = 12
          Top = 280
          Width = 132
          Height = 18
          Caption = 'Contas a Pagar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbStatusContasPagar: TLabel
          Left = 157
          Top = 283
          Width = 796
          Height = 18
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label72: TLabel
          Left = 61
          Top = 176
          Width = 58
          Height = 16
          Caption = 'Material:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbStatusMaterial: TLabel
          Left = 125
          Top = 176
          Width = 700
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label74: TLabel
          Left = 60
          Top = 208
          Width = 59
          Height = 16
          Caption = 'Estoque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbStatusEstoque: TLabel
          Left = 125
          Top = 208
          Width = 700
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 146
    Align = alTop
    BevelOuter = bvNone
    Color = clMoneyGreen
    TabOrder = 1
    DesignSize = (
      1035
      146)
    object Label4: TLabel
      Left = 269
      Top = 3
      Width = 524
      Height = 24
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label4'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label64: TLabel
      Left = 556
      Top = 42
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Nota:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label75: TLabel
      Left = 168
      Top = 19
      Width = 54
      Height = 13
      Caption = 'Dt.Entrada:'
    end
    object Label89: TLabel
      Left = 141
      Top = 61
      Width = 96
      Height = 26
      Caption = 'Usar Config. da Nat.'#13#10'Interna para o ICMS'
    end
    object Label71: TLabel
      Left = 295
      Top = 44
      Width = 93
      Height = 13
      Alignment = taRightJustify
      Caption = 'Gravar Itens como: '
    end
    object Label93: TLabel
      Left = 6
      Top = 13
      Width = 58
      Height = 13
      Caption = 'Gerar como:'
    end
    object Label113: TLabel
      Left = 865
      Top = 6
      Width = 65
      Height = 26
      Caption = '% Margem'#13#10'Pre'#231'o Venda:'
      Visible = False
    end
    object Label91: TLabel
      Left = 303
      Top = 88
      Width = 85
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente Triangular:'
      Visible = False
    end
    object SpeedButton1: TSpeedButton
      Left = 706
      Top = 79
      Width = 23
      Height = 22
      Hint = 'Atualiza tabela de cliente'
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
        F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
        F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
        CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
        E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
        B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
        F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
        9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
        FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
        53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
        FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
        F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
        FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
        FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
        BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
        F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
        BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
        92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
        997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
        CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
        FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
        FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
        FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
        FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
        C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
        FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
        BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
        E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
        78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
        C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
        FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
        EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
        F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
        FFFEFEFFFFFFFFFFFFFF}
      Margin = 0
      Visible = False
      OnClick = SpeedButton1Click
    end
    object Label114: TLabel
      Left = 365
      Top = 110
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
      Visible = False
    end
    object Label116: TLabel
      Left = 282
      Top = 66
      Width = 106
      Height = 13
      Caption = 'Finalidade (Aquisi'#231#227'o):'
    end
    object Label119: TLabel
      Left = 713
      Top = 110
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Local Estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label122: TLabel
      Left = 745
      Top = 88
      Width = 117
      Height = 13
      Alignment = taRightJustify
      Caption = 'Gravar o Emitente como:'
    end
    object SpeedButton2: TSpeedButton
      Left = 536
      Top = 57
      Width = 89
      Height = 22
      Caption = 'Copiar para Itens'
      OnClick = SpeedButton2Click
    end
    object Label132: TLabel
      Left = 645
      Top = 63
      Width = 75
      Height = 13
      Caption = 'Ref.Seq. Inicial:'
    end
    object Label133: TLabel
      Left = 324
      Top = 132
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID Opera'#231#227'o:'
    end
    object DBEdit34: TDBEdit
      Left = 610
      Top = 29
      Width = 184
      Height = 25
      TabStop = False
      Ctl3D = False
      DataField = 'nNF'
      DataSource = DMRecebeXML.dsCabecalho
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DateEdit1: TDateEdit
      Left = 152
      Top = 35
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 240
      Top = 64
      Width = 17
      Height = 17
      TabOrder = 2
    end
    object btnAbrirXML: TBitBtn
      Left = 5
      Top = 32
      Width = 120
      Height = 28
      Caption = 'Abrir NFe (XML)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnAbrirXMLClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF40404040404040404040404040404040404040404040
        4040404040404040404040404040404040404040002020FFFFFF40404060DFDF
        60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DF
        DF60DFDF004040FFFFFF40404060DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60
        DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF004040FFFFFF40404060DFDF
        60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DF
        DF60DFDF004040FFFFFF40404060DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60
        DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF004040FFFFFF40404060DFDF
        60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DF
        DF60DFDF004040FFFFFF404040609F9F60DFDF609F9F60DFDF609F9F60DFDF60
        9F9F609F9F306F6F609F9F306F6F609F9F306F6F004040FFFFFF40404060DFDF
        606060609F9F306F6F306F6F306F6F306F6F306F6F60DFDF306F6F306F6F609F
        9F003F3F004040FFFFFF404040609F9F609F9F60606060DFDF306F6F306F6F30
        6F6F306F6F60DFDF306F6F306F6F306F6F306F6F004040FFFFFF404040306F6F
        306F6F306F6F306F6F306F6F306F6F306F6F306F6F306F6F306F6F306F6F306F
        6F306F6F202020FFFFFF707070609F9F90CFCF90CFCF90CFCF90CFCF90CFCFB0
        B0B0404040404040404040404040404040404040FFFFFFFFFFFFFFFFFF404040
        306F6F306F6F306F6F306F6F508F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040404040404040404040202020FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btnGravarNFe: TBitBtn
      Left = 5
      Top = 64
      Width = 120
      Height = 28
      Caption = 'Gravar No Sistema'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnGravarNFeClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF3F3F3F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F
        6F6F6F6F6F6060603F3F3F000000FFFFFFFFFFFFFFFFFFFFFFFF6F6F6FDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF7F7F7FBFBFBF0000
        00FFFFFFFFFFFFFFFFFF6F6F6FDF9F9FDF6060DFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDF6F6F6F6F6F6F000000FFFFFFFFFFFFFFFFFF6F6F6FDFDFDF
        DF9F9FEF6F6FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF0000
        00FFFFFFFFFFFFFFFFFF6F6F6FDFDFDFDFDFDFDF9F9FDF9F9FDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDF000000FFFFFFFFFFFFFFFFFF6F6F6FDFDFDF
        DFDFDFDFDFDFAF6F6FDFDFDFDFDFDFDFDFDFDFDFDFCFCFCFCFCFCFC0C0C00000
        2000005F00003FFFFFFF6F6F6FDFDFDFCFCFCFDFDFDFDFDFDF3F00007F3F3F7F
        3F3F60606060606060606060606060606000007F0000BF00003F606060CFCFCF
        6F6F6F909090DFDFDF9F9F9F3F3F3F7F7F7F7F7F7FEFEFEFDFDFDFDFDFDFFFFF
        FF6F6F6F0000BF00005F3030307F7F7FFFFFFFBFBFBF909090DFDFDF3030307F
        00003F3F3F909090DFDFDFFFFFFFFFFFFF7F7F7F0000BF000020FFFFFF000000
        3F3F3F7F7F7FBFBFBF6060606F6F6F9F9F9F7F00009F9F9FFFFFFFFFFFFF6F6F
        6F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000003F
        3F3FAFAFAF7F00007F7F7F303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000007F0000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000007F0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007F00
        00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF}
    end
    object BitBtn3: TBitBtn
      Left = 5
      Top = 96
      Width = 120
      Height = 28
      Caption = 'Danfe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn3Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFF202020
        404040404040404040404040404040404040404040202020FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000060606060606060606060606060606060606050
        5050202020404040404040404040404040808080202020FFFFFF000000BFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF606060606060B0B0B0C0C0C0C0C0
        C04040408080802020205F5F5F505050B0B0B0909090A0A0A0B0B0B0808080C0
        C0C0CFCFCF4040405050506060606060604040404040408080807F7F7FC0C0C0
        606060606060606060606060606060606060606060606060C0C0C0DFDFDFCFCF
        CF808080202020FFFFFF7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C09090907F7F7FCFCFCF8080808080800000007F7F7FC0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09090CF60609FC0C0
        C08080808080800000003F3F3FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF9F9F9F808080000000FFFFFF303030
        B0B0B02020203F3F3F7F7F7F3F3F3F5F5F5F2020203F3F3F6F6F6F0000003030
        30CFCFCF9F9F9F000000FFFFFFFFFFFF303030505050202020FFFFFFDFDFDF5F
        5F5F000000DFDFDFFFFFFF404040606060606060505050000000FFFFFFFFFFFF
        FFFFFFFFFFFF0000009F9F9FFFFFFF4040405F5F5FFFFFFFFFFFFF9F9F9F0000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020EFEFEFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object ComboBox1: TComboBox
      Left = 391
      Top = 36
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 6
      Text = 'Material'
      OnChange = ComboBox1Change
      Items.Strings = (
        'Produto'
        'Material'
        'Material Consumo')
    end
    object ComboBox2: TComboBox
      Left = 67
      Top = 6
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 8
      Text = 'Entrada'
      Items.Strings = (
        'Sa'#237'da'
        'Entrada')
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 933
      Top = 10
      Width = 73
      Height = 21
      AutoSize = False
      DisplayFormat = '0.00'
      TabOrder = 9
      Visible = False
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 391
      Top = 80
      Width = 313
      Height = 21
      DropDownCount = 8
      DropDownWidth = 700
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME;CNPJ_CPF'
      LookupSource = DMRecebeXML.dsCliente
      TabOrder = 10
      Visible = False
      OnKeyDown = RxDBLookupCombo1KeyDown
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 391
      Top = 102
      Width = 313
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMRecebeXML.dsFilial
      TabOrder = 11
      Visible = False
    end
    object cbFinalidade: TComboBox
      Left = 391
      Top = 58
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 4
      TabOrder = 7
      Text = 'Outros'
      Items.Strings = (
        'Consumo'
        'Revenda'
        'Industrializa'#231#227'o'
        'Usar conforme produto'
        'Outros'
        '')
    end
    object rxdbLocalEstoque: TRxDBLookupCombo
      Left = 788
      Top = 102
      Width = 220
      Height = 21
      DropDownCount = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LookupField = 'ID'
      LookupDisplay = 'NOME;COD_LOCAL'
      LookupSource = DMRecebeXML.dsLocal_Estoque
      ParentFont = False
      TabOrder = 12
      OnExit = rxdbLocalEstoqueExit
    end
    object ComboBox3: TComboBox
      Left = 863
      Top = 80
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 13
      Text = 'Fornecedor'
      Items.Strings = (
        'Fornecedor'
        'Cliente')
    end
    object ckAtualizaPreco2: TCheckBox
      Left = 872
      Top = 38
      Width = 147
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Ajustar Pre'#231'o Compra'
      TabOrder = 14
      Visible = False
    end
    object ckAtualizaCusto2: TCheckBox
      Left = 872
      Top = 54
      Width = 147
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Ajustar Pre'#231'o Custo Total'
      TabOrder = 15
      Visible = False
    end
    object ckUsaNome: TCheckBox
      Left = 152
      Top = 107
      Width = 145
      Height = 17
      Caption = 'Usa Nome da Nota'
      TabOrder = 16
      Visible = False
    end
    object ckAssociar: TCheckBox
      Left = 152
      Top = 91
      Width = 145
      Height = 17
      Caption = 'Associar Produtos'
      TabOrder = 17
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 722
      Top = 55
      Width = 97
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 18
      OnKeyDown = CurrencyEdit2KeyDown
    end
    object NxButton1: TNxButton
      Left = 819
      Top = 47
      Width = 32
      Height = 31
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        18000000000078060000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9BED7B786B5A064A1955795965B
        95AB84AAD5C8D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB571AA801171831376902787
        9B3B9BA451A6AA5DAEA25DA89C68A45B215C8E6B8EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFDEBAD9880C728E177D9B
        3193A54CA4A550A4A44DA2A34BA2A24BA1A448A2A247A1C37CC6AC84B6480E48
        D1C6D2FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFCA90C18602
        719524899E3898A249A1A147A0A0449DA1469FA1469FA1469FA1469FA1459F9E
        409BA747A0CB91CF5D2A61B39CB2FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        D8AED2860072962489983092A1449CA0419A9F4199AA55A59E3D989F419BA041
        99A0419AA0419BA0419B9F3F9A9E3996C57EC65A285FCFC1CFFFFFFFFFFFFF00
        0000FFFFFFFFFFFF8A06779421849127899E3C959D3E949D3D949B3691D8BECF
        9D3D949E3B949D3D949D3D949D3D949D3D949D3D949C3B93972D8DC88ECC480E
        4AFFFFFFFFFFFF000000FFFFFFB15FA790197D8B2782942E899E37919D36919D
        36919C34909A308DFFFFFF9220859D35919D36919D35909D36919D35919F3692
        942C8994338BA97FB48F6A8DFFFFFF000000FFFFFF8D0D7B88277F81277F9A31
        8C9B318D9B318D9A318D9B318D962588C896C2FFFFFF9421859B318D9B318D9B
        318D9B318D9B318D9D318D7D1E79AF69B25C225FFFFFFF000000D8B2D38D187E
        7721787B237B9B2A8A9629889629889629889629889628888F1880FDFFFEA23F
        95922184962988962988962988962988992A8A80237D741B76995F9FD8CBD800
        0000C07AB6821F7B5E195F731C6E991F83941D80941D80941D80941E80931E81
        8E137ABF7BB2F5FDF48F127B941F829621839521839521839821857C1E735C15
        5C8C4292AF89AF000000B35DAB701B6C390D3E74206AA139949F4098A1439BA1
        429A9F3C96972B878E157786046DF1F2ECD8BECF8B087094217D94227D94227D
        982380781C6A3D0C3F7B357D9E659E000000B76CB9701B6F7821739A3F97A751
        A7A44EA4A44EA4A34EA49E419DFFFFFFFFFFFFFEFFFFEFEFE9F4FFF0BD81AA90
        15719621789521779921797618634D134F8828869B5F9C000000C38AC87E227C
        8A257D963A90A54FA5A44DA3A34CA2A44CA29E429EC997C9FFFFFFFEFCFEC693
        C7CA99C9C9A1C89C378D9B368D9E398FA042979B3D958C27808C2182A670A800
        0000D8B4DE8132838F237F95348CA54FA5A34CA2A34CA2A34CA2A34BA29D409C
        FFFFFFFFFFFFB873B69B3B9A9F449EA44EA4A44FA5A44FA4A650A697388F8E26
        7F891D7EBD90BB000000ECDDF3975B9F861D77942A84A755AAA44FA5A44FA5A4
        4FA5A550A59E429FD6B0D6FFFFFFFDFEFD9C3F9DA44EA5A54FA5A54FA5A44FA5
        A654AA942D87912782831277E0CADE000000FFFFFFC899D96D1764962083A855
        ADA95AB1A959B0A959B0A959B1A857AFA859B0FFFFFFFFFFFFD0A5D4A34EAAA9
        59B1A959B0AA5AB1A959B0932080952285831674FFFFFF000000FFFFFFE7D0F6
        8C5B958C1678A03E9CB16EC2AE67BCAE67BCAE67BCAE67BCA658B5E5D1EAFFFF
        FFFFFFFFAC64BCAE65BBAE67BCB16DC2A0429F9622868C147ABC7FB3FFFFFF00
        0000FFFFFFFFFFFFDCBCF16322639A2284B472C9B778CEB576CBB576CBB576CB
        B472CAFFFFFFF9F3FAF8F1F9FFFFFFB26FC9B678CDB575CB962783931F828B12
        78FFFFFFFFFFFF000000FFFFFFFFFFFFF7F0FCD0B0E35E1459A1328FC291E7BD
        8AE1BC88DFBD88DFBC88DFBA84DDB57AD9B67ADAB781DBBC8AE0C192E99F3A92
        962483870171E6CDE3FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF4EBFCCFB0
        E364216095308ACDA2F7CAA1F4C599EFC598EEC598EEC598EEC599EEC8A1F3CB
        A3F4A04299921E7D860072D5ACD0FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDCBDF18958936B1E63B785C5E3CDFEE3CDFEE1CCFDE3CF
        FEE4D0FFC291D39130838911768B0D7BE5CAE1FFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D4F5CA99DA9150977A307B
        8F49909951999443918218778108718E127DBF7AB6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF1E4F5DCBBE1C792CAB86FB9B76AB0C78DC0E4C8E0FFFFFFFFFFFFFFFFFF
        FFFFFFF2F2F2FFFFFFFFFFFFF2F2F2000000}
      TabOrder = 19
      OnClick = NxButton1Click
    end
    object RxDBLookupCombo9: TRxDBLookupCombo
      Left = 391
      Top = 124
      Width = 313
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMRecebeXML.dsOperacao_Nota
      TabOrder = 20
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.xml'
    InitialDir = 'c:\'
    Left = 680
    Top = 243
  end
  object UCControls1: TUCControls
    GroupName = 'Recebe XML'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 492
    Top = 329
  end
end
