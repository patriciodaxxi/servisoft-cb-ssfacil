object fCupomFiscalPgto: TfCupomFiscalPgto
  Left = 316
  Top = 15
  Width = 822
  Height = 673
  BorderIcons = [biSystemMenu]
  Caption = 'fCupomFiscalPgto - Pagamento'
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
    Top = 601
    Width = 814
    Height = 41
    Align = alBottom
    TabOrder = 1
    object brCancelar: TNxButton
      Left = 313
      Top = 5
      Width = 187
      Height = 30
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      TabStop = False
      Transparent = True
      OnClick = brCancelarClick
    end
    object btConfirmar: TNxButton
      Left = 126
      Top = 5
      Width = 187
      Height = 30
      Hint = 'Grava e finaliza a venda'
      Caption = '&Confirmar (F10)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Transparent = True
      OnClick = btConfirmarClick
    end
    object btGaveta: TNxButton
      Left = 500
      Top = 5
      Width = 187
      Height = 30
      Caption = '&Gaveta (F8)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 2
      TabStop = False
      Transparent = True
      OnClick = btGavetaClick
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 814
    Height = 601
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Geral'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 810
        Height = 578
        Align = alClient
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 377
          Width = 808
          Height = 200
          Align = alBottom
          Color = clBlack
          TabOrder = 3
          object Label8: TLabel
            Left = 94
            Top = 56
            Width = 100
            Height = 23
            Alignment = taRightJustify
            Caption = 'CPF/CNPJ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 119
            Top = 94
            Width = 75
            Height = 23
            Alignment = taRightJustify
            Caption = 'Cliente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 95
            Top = 16
            Width = 99
            Height = 23
            Alignment = taRightJustify
            Caption = 'Vendedor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object btCliente: TSpeedButton
            Left = 684
            Top = 84
            Width = 31
            Height = 32
            Hint = 'Consulta de clientes'
            Caption = 'F2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = btClienteClick
          end
          object SpeedButton1: TSpeedButton
            Left = 716
            Top = 84
            Width = 31
            Height = 32
            Hint = 'Consulta cr'#233'dito do cliente'
            Caption = 'F6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object Label3: TLabel
            Left = 97
            Top = 131
            Width = 97
            Height = 23
            Alignment = taRightJustify
            Caption = 'Condi'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object btnParcelas: TSpeedButton
            Left = 684
            Top = 122
            Width = 31
            Height = 32
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
            OnClick = btnParcelasClick
          end
          object Label6: TLabel
            Left = 141
            Top = 169
            Width = 53
            Height = 23
            Alignment = taRightJustify
            Caption = 'Obs.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton2: TSpeedButton
            Left = 748
            Top = 84
            Width = 31
            Height = 32
            Hint = 'Informa'#231#245'es do cliente'
            Caption = 'F4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton2Click
          end
          object Label14: TLabel
            Left = 493
            Top = 54
            Width = 84
            Height = 23
            Alignment = taRightJustify
            Caption = 'Pessoas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit5: TDBEdit
            Left = 202
            Top = 46
            Width = 279
            Height = 31
            DataField = 'CPF'
            DataSource = dmCupomFiscal.dsCupomFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnExit = DBEdit5Exit
            OnKeyDown = DBEdit5KeyDown
          end
          object DBEdit8: TDBEdit
            Left = 279
            Top = 84
            Width = 401
            Height = 31
            CharCase = ecUpperCase
            DataField = 'CLIENTE_NOME'
            DataSource = dmCupomFiscal.dsCupomFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyDown = DBEdit8KeyDown
          end
          object ceCodCliente: TCurrencyEdit
            Left = 202
            Top = 84
            Width = 73
            Height = 31
            AutoSize = False
            DecimalPlaces = 0
            DisplayFormat = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnExit = ceCodClienteExit
            OnKeyDown = ceCodClienteKeyDown
          end
          object ComboVendedor: TRxDBLookupCombo
            Left = 202
            Top = 7
            Width = 477
            Height = 32
            DropDownCount = 10
            Ctl3D = True
            DataField = 'ID_VENDEDOR'
            DataSource = dmCupomFiscal.dsCupomFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            LookupField = 'CODIGO'
            LookupDisplay = 'NOME'
            LookupSource = dmCupomFiscal.dsVendedor
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnChange = ComboVendedorChange
            OnEnter = ComboVendedorEnter
            OnExit = ComboVendedorExit
            OnKeyDown = ComboVendedorKeyDown
          end
          object RxDBLookupCombo2: TRxDBLookupCombo
            Left = 202
            Top = 122
            Width = 478
            Height = 32
            DropDownCount = 15
            DataField = 'ID_CONDPGTO'
            DataSource = dmCupomFiscal.dsCupomFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = dmCupomFiscal.dsCondPgto
            ParentFont = False
            TabOrder = 5
            OnChange = RxDBLookupCombo2Change
            OnEnter = RxDBLookupCombo2Enter
            OnKeyDown = RxDBLookupCombo2KeyDown
          end
          object DBEdit9: TDBEdit
            Left = 202
            Top = 161
            Width = 478
            Height = 31
            CharCase = ecUpperCase
            DataField = 'CLIENTE_OBS'
            DataSource = dmCupomFiscal.dsCupomFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnExit = DBEdit9Exit
          end
          object DBEdit6: TDBEdit
            Left = 583
            Top = 45
            Width = 97
            Height = 32
            DataField = 'QTD_PESSOA'
            DataSource = dmCupomFiscal.dsCupomFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyDown = DBEdit6KeyDown
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 808
          Height = 86
          Align = alTop
          Color = clBlack
          TabOrder = 0
          OnExit = Panel4Exit
          object Label2: TLabel
            Left = 61
            Top = 17
            Width = 181
            Height = 23
            Alignment = taRightJustify
            Caption = 'Forma Pagamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 184
            Top = 56
            Width = 58
            Height = 23
            Alignment = taRightJustify
            Caption = 'NFCe:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label12: TLabel
            Left = 10
            Top = 65
            Width = 118
            Height = 13
            Caption = 'F5 para atualizar campos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 509
            Top = 55
            Width = 114
            Height = 23
            Alignment = taRightJustify
            Caption = 'Perc. Juros:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object RxDBLookupCombo3: TRxDBLookupCombo
            Left = 326
            Top = 8
            Width = 401
            Height = 32
            DropDownCount = 15
            DataField = 'ID_TIPOCOBRANCA'
            DataSource = dmCupomFiscal.dsCupomFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = dmCupomFiscal.dsTipoCobranca
            ParentFont = False
            TabOrder = 1
            OnChange = RxDBLookupCombo3Change
            OnEnter = RxDBLookupCombo3Enter
            OnKeyDown = RxDBLookupCombo3KeyDown
          end
          object Edit1: TEdit
            Left = 730
            Top = 57
            Width = 57
            Height = 21
            TabStop = False
            TabOrder = 3
            Visible = False
          end
          object ceFormaPgto: TCurrencyEdit
            Left = 250
            Top = 8
            Width = 73
            Height = 32
            AutoSize = False
            DecimalPlaces = 0
            DisplayFormat = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnExit = ceFormaPgtoExit
            OnKeyDown = ceFormaPgtoKeyDown
          end
          object cbNFCe: TComboBox
            Left = 250
            Top = 46
            Width = 145
            Height = 32
            Style = csDropDownList
            DropDownCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 24
            ItemIndex = 0
            ParentFont = False
            TabOrder = 2
            Text = 'SIM'
            Visible = False
            OnKeyDown = cbNFCeKeyDown
            Items.Strings = (
              'SIM'
              'N'#195'O')
          end
          object CurrencyEdit2: TCurrencyEdit
            Left = 632
            Top = 46
            Width = 96
            Height = 32
            AutoSize = False
            DisplayFormat = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            Visible = False
          end
        end
        object Panel6: TPanel
          Left = 1
          Top = 87
          Width = 808
          Height = 96
          Align = alTop
          TabOrder = 1
          object Label7: TLabel
            Left = 201
            Top = 59
            Width = 137
            Height = 32
            Alignment = taRightJustify
            Caption = 'Desconto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -27
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 129
            Top = 16
            Width = 209
            Height = 32
            Alignment = taRightJustify
            Caption = 'Valor Produtos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -27
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 482
            Top = 59
            Width = 48
            Height = 32
            Alignment = taRightJustify
            Caption = 'R$:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -27
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit4: TDBEdit
            Left = 536
            Top = 51
            Width = 191
            Height = 40
            DataField = 'VLR_DESCONTO'
            DataSource = dmCupomFiscal.dsCupomFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -27
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = DBEdit4Enter
            OnExit = DBEdit4Exit
            OnKeyDown = DBEdit4KeyDown
          end
          object DBEdit3: TDBEdit
            Left = 346
            Top = 6
            Width = 381
            Height = 40
            TabStop = False
            Color = 8454143
            Ctl3D = True
            DataField = 'VLR_PRODUTOS'
            DataSource = dmCupomFiscal.dsCupomFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -27
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object CurrencyEdit1: TCurrencyEdit
            Left = 346
            Top = 51
            Width = 127
            Height = 40
            AutoSize = False
            DecimalPlaces = 1
            DisplayFormat = '0.0%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -27
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = CurrencyEdit1Enter
            OnExit = CurrencyEdit1Exit
            OnKeyDown = CurrencyEdit1KeyDown
          end
        end
        object Panel7: TPanel
          Left = 1
          Top = 183
          Width = 808
          Height = 194
          Align = alClient
          TabOrder = 2
          OnEnter = Panel7Enter
          object Label15: TLabel
            Left = 223
            Top = 16
            Width = 115
            Height = 48
            Alignment = taRightJustify
            Caption = 'Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -40
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 22
            Top = 78
            Width = 316
            Height = 48
            Alignment = taRightJustify
            Caption = 'Valor Recebido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -40
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 213
            Top = 140
            Width = 125
            Height = 48
            Alignment = taRightJustify
            Caption = 'Troco:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -40
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit7: TDBEdit
            Left = 346
            Top = 8
            Width = 381
            Height = 56
            TabStop = False
            Color = 8454143
            DataField = 'VLR_TOTAL'
            DataSource = dmCupomFiscal.dsCupomFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -40
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 346
            Top = 70
            Width = 381
            Height = 56
            DataField = 'VLR_RECEBIDO'
            DataSource = dmCupomFiscal.dsCupomFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -40
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyDown = DBEdit1KeyDown
          end
          object DBEdit2: TDBEdit
            Left = 346
            Top = 132
            Width = 381
            Height = 56
            TabStop = False
            Color = 8454143
            Ctl3D = True
            DataField = 'VLR_TROCO'
            DataSource = dmCupomFiscal.dsCupomFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -40
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Detalhamento'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 810
        Height = 39
        Align = alTop
        TabOrder = 0
        object Label13: TLabel
          Left = 28
          Top = 13
          Width = 215
          Height = 22
          Caption = 'Condi'#231#227'o de Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RxDBLookupCombo4: TRxDBLookupCombo
          Left = 248
          Top = 4
          Width = 313
          Height = 31
          DropDownCount = 8
          DataField = 'ID_CONDPGTO'
          DataSource = dmCupomFiscal.dsCupomFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmCupomFiscal.dsCondPgto
          ParentFont = False
          TabOrder = 0
          OnEnter = RxDBLookupCombo2Enter
          OnKeyDown = RxDBLookupCombo2KeyDown
        end
        object btnGerarParcelas: TNxButton
          Left = 560
          Top = 4
          Width = 31
          Height = 29
          Hint = 'Gerar autom'#225'tico os servi'#231'os'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Transparent = True
          Visible = False
          OnClick = btnGerarParcelasClick
        end
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 39
        Width = 810
        Height = 467
        Align = alClient
        DataSource = dmCupomFiscal.dsCupom_Parc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = SMDBGrid1DblClick
        Flat = False
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
        DefaultRowHeight = 22
        ScrollBars = ssHorizontal
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'PARCELA'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTVENCIMENTO'
            ReadOnly = True
            Title.Caption = 'DATA'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_VENCIMENTO'
            ReadOnly = True
            Title.Caption = 'VALOR'
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_COBRANCA'
            Title.Caption = 'FORMA PAGAMENTO'
            Width = 284
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_DUPLICATA'
            Width = 120
            Visible = True
          end>
      end
      object Panel8: TPanel
        Left = 0
        Top = 506
        Width = 810
        Height = 72
        Align = alBottom
        TabOrder = 2
        OnEnter = Panel7Enter
        object Label18: TLabel
          Left = 153
          Top = 16
          Width = 115
          Height = 48
          Alignment = taRightJustify
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -40
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit10: TDBEdit
          Left = 276
          Top = 8
          Width = 381
          Height = 56
          TabStop = False
          Color = 8454143
          DataField = 'VLR_TOTAL'
          DataSource = dmCupomFiscal.dsCupomFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -40
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
end
