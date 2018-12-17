object fCupomParametros: TfCupomParametros
  Left = 325
  Top = 47
  Width = 881
  Height = 632
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fCupomParametros'
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
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 873
    Height = 35
    Align = alTop
    Color = 8404992
    TabOrder = 0
    object btnConfirmar: TBitBtn
      Left = 80
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TBitBtn
      Left = 155
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnAlterar: TBitBtn
      Left = 5
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnAlterarClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 35
    Width = 873
    Height = 566
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Configura'#231#227'o'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 865
        Height = 538
        Align = alClient
        Enabled = False
        TabOrder = 0
        object GroupBox4: TGroupBox
          Left = 4
          Top = 316
          Width = 841
          Height = 102
          Caption = 'Estoque'
          TabOrder = 3
          object Label36: TLabel
            Left = 9
            Top = 43
            Width = 187
            Height = 13
            Alignment = taRightJustify
            Caption = 'Baixar Estoque do Consumo no Cupom:'
          end
          object Label33: TLabel
            Left = 88
            Top = 20
            Width = 108
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vende tipo de produto:'
          end
          object Label25: TLabel
            Left = 15
            Top = 66
            Width = 181
            Height = 13
            Alignment = taRightJustify
            Caption = 'Usar c'#243'pia do pedido no cupom fiscal:'
          end
          object Label13: TLabel
            Left = 454
            Top = 43
            Width = 94
            Height = 13
            Alignment = taRightJustify
            Caption = 'Quantidade padr'#227'o:'
          end
          object Label10: TLabel
            Left = 457
            Top = 20
            Width = 91
            Height = 13
            Alignment = taRightJustify
            Caption = 'ID Produto Padr'#227'o:'
          end
          object Label4: TLabel
            Left = 624
            Top = 43
            Width = 100
            Height = 13
            Alignment = taRightJustify
            Caption = 'Multiplicador de Qtd.:'
          end
          object Label51: TLabel
            Left = 624
            Top = 20
            Width = 100
            Height = 13
            Alignment = taRightJustify
            Caption = 'ID Produto Gen'#233'rico:'
          end
          object Label61: TLabel
            Left = 462
            Top = 66
            Width = 86
            Height = 13
            Alignment = taRightJustify
            Caption = 'Local do Estoque:'
          end
          object RxDBComboBox20: TRxDBComboBox
            Left = 198
            Top = 35
            Width = 187
            Height = 21
            Style = csDropDownList
            DataField = 'BAIXAR_CONSUMO'
            DataSource = dmCupomFiscal.dsCupomParametros
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'SIM'
              'N'#195'O')
            TabOrder = 1
            Values.Strings = (
              'S'
              'N')
          end
          object RxDBComboBox17: TRxDBComboBox
            Left = 198
            Top = 12
            Width = 187
            Height = 21
            Style = csDropDownList
            DataField = 'VENDA_TIPO_PRODUTO'
            DataSource = dmCupomFiscal.dsCupomParametros
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'PRODUTO'
              'MATERIAL'
              'AMBOS')
            TabOrder = 0
            Values.Strings = (
              'P'
              'M'
              'A')
          end
          object RxDBComboBox13: TRxDBComboBox
            Left = 198
            Top = 58
            Width = 187
            Height = 21
            Style = csDropDownList
            DataField = 'USA_COPIA_PEDIDO_CF'
            DataSource = dmCupomFiscal.dsCupomParametros
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'SIM'
              'N'#195'O')
            TabOrder = 2
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit3: TDBEdit
            Left = 550
            Top = 35
            Width = 67
            Height = 21
            DataField = 'QTD_PADRAO'
            DataSource = dmCupomFiscal.dsCupomParametros
            TabOrder = 5
          end
          object DBEdit6: TDBEdit
            Left = 550
            Top = 12
            Width = 67
            Height = 21
            DataField = 'PRODUTO_PADRAO'
            DataSource = dmCupomFiscal.dsCupomParametros
            TabOrder = 3
          end
          object DBEdit1: TDBEdit
            Left = 726
            Top = 35
            Width = 67
            Height = 21
            DataField = 'QTD_MULTIPLICADOR'
            DataSource = dmCupomFiscal.dsCupomParametros
            TabOrder = 6
          end
          object DBEdit9: TDBEdit
            Left = 726
            Top = 12
            Width = 67
            Height = 21
            DataField = 'ID_PRODUTO_GENERICO'
            DataSource = dmCupomFiscal.dsCupomParametros
            TabOrder = 4
          end
          object RxDBLookupCombo7: TRxDBLookupCombo
            Left = 550
            Top = 58
            Width = 244
            Height = 21
            DropDownCount = 8
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = dmCupomFiscal.dsLocalEstoque
            TabOrder = 7
            OnEnter = RxDBLookupCombo4Enter
          end
        end
        object GroupBox6: TGroupBox
          Left = 4
          Top = 147
          Width = 381
          Height = 169
          Caption = 'Impressora'
          TabOrder = 1
          object Label5: TLabel
            Left = 86
            Top = 41
            Width = 86
            Height = 13
            Alignment = taRightJustify
            Caption = 'Impressora ACBR:'
          end
          object Label2: TLabel
            Left = 40
            Top = 130
            Width = 132
            Height = 13
            Alignment = taRightJustify
            Caption = 'C'#243'digo da Al'#237'quta de ICMS:'
          end
          object Label76: TLabel
            Left = 118
            Top = 19
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = 'Impressora:'
          end
          object Label7: TLabel
            Left = 7
            Top = 63
            Width = 165
            Height = 13
            Alignment = taRightJustify
            Caption = 'Porta ou Nome da Mini Impressora:'
          end
          object Label19: TLabel
            Left = 143
            Top = 85
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'Boud:'
          end
          object Label54: TLabel
            Left = 134
            Top = 107
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Gaveta:'
          end
          object RxDBComboBox3: TRxDBComboBox
            Left = 174
            Top = 33
            Width = 187
            Height = 21
            Style = csDropDownList
            DataField = 'ACBR_MODELO'
            DataSource = dmCupomFiscal.dsCupomParametros
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'DARUMA'
              'ELGIN'
              'BEMATECH'
              'N'#195'O FISCAL')
            TabOrder = 1
            Values.Strings = (
              'ecfDaruma'
              'ecfFiscNet'
              'ecfBematech'
              'ecfNaoFiscal')
          end
          object RxDBLookupCombo1: TRxDBLookupCombo
            Left = 174
            Top = 121
            Width = 69
            Height = 21
            DropDownCount = 8
            DataField = 'SIT_TRIB_ID'
            DataSource = dmCupomFiscal.dsCupomParametros
            LookupField = 'ID'
            LookupDisplay = 'CODIGO'
            LookupSource = dmCupomFiscal.dsSitTribCF
            TabOrder = 5
          end
          object RxDBComboBox5: TRxDBComboBox
            Left = 174
            Top = 11
            Width = 187
            Height = 21
            Style = csDropDownList
            DataField = 'IMPRESSORA_FISCAL'
            DataSource = dmCupomFiscal.dsParametros
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'NENHUMA'
              'ACBR'
              'N'#195'O FISCAL - Modo Texto'
              'N'#195'O FISCAL - Impressora Windows'
              'NFCe - Nota Eletr'#244'nica')
            TabOrder = 0
            Values.Strings = (
              '0'
              '4'
              '5'
              '6'
              '7')
            OnChange = RxDBComboBox5Change
          end
          object Edit1: TEdit
            Left = 174
            Top = 55
            Width = 187
            Height = 21
            TabOrder = 2
            Text = 'COM1'
          end
          object Edit2: TEdit
            Left = 174
            Top = 77
            Width = 69
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
            Text = '115200'
          end
          object ComboBox4: TComboBox
            Left = 174
            Top = 99
            Width = 69
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 4
            Text = 'N'#195'O'
            Items.Strings = (
              'N'#195'O'
              'SIM')
          end
        end
        object GroupBox7: TGroupBox
          Left = 388
          Top = 147
          Width = 457
          Height = 169
          Caption = 'Impress'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label39: TLabel
            Left = 72
            Top = 19
            Width = 92
            Height = 13
            Alignment = taRightJustify
            Caption = 'Quando n'#227'o NFCe:'
          end
          object Label43: TLabel
            Left = 48
            Top = 41
            Width = 116
            Height = 13
            Alignment = taRightJustify
            Caption = 'Altura do Salto de Linha:'
          end
          object Label26: TLabel
            Left = 12
            Top = 63
            Width = 152
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tamanho da Linha (Caracteres):'
          end
          object Label3: TLabel
            Left = 90
            Top = 85
            Width = 74
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vias do Cupom:'
          end
          object Label44: TLabel
            Left = 240
            Top = 40
            Width = 206
            Height = 13
            Caption = 'Para impress'#227'o modo Canvas (padr'#227'o = 25)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 10
            Top = 107
            Width = 154
            Height = 13
            Alignment = taRightJustify
            Caption = 'Imprimir Vendas no Fechamento:'
          end
          object Label49: TLabel
            Left = 33
            Top = 129
            Width = 131
            Height = 13
            Alignment = taRightJustify
            Caption = 'Imprimir Via de Confer'#234'ncia:'
          end
          object Label50: TLabel
            Left = 240
            Top = 129
            Width = 179
            Height = 13
            Caption = 'Imprimie via n'#227'o fiscal depois da fiscal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label66: TLabel
            Left = 56
            Top = 151
            Width = 108
            Height = 13
            Alignment = taRightJustify
            Caption = 'Di'#225'logo da Impressora:'
          end
          object Label67: TLabel
            Left = 240
            Top = 151
            Width = 133
            Height = 13
            Caption = 'Imprimie autom'#225'tico sem OK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RxDBComboBox22: TRxDBComboBox
            Left = 166
            Top = 11
            Width = 187
            Height = 21
            Style = csDropDownList
            DataField = 'IMPRIME_FISCAL_NFISCAL'
            DataSource = dmCupomFiscal.dsCupomParametros
            DropDownCount = 2
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'Imprime comprovante n'#227'o fiscal'
              'N'#227'o imprime comprovante')
            TabOrder = 0
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit5: TDBEdit
            Left = 166
            Top = 33
            Width = 67
            Height = 21
            DataField = 'ALTURA_SALTO_LINHA'
            DataSource = dmCupomFiscal.dsCupomParametros
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 166
            Top = 55
            Width = 67
            Height = 21
            DataField = 'TAMANHO_LINHA'
            DataSource = dmCupomFiscal.dsCupomParametros
            TabOrder = 2
          end
          object DBEdit7: TDBEdit
            Left = 166
            Top = 77
            Width = 67
            Height = 21
            DataField = 'VIAS_CUPOM'
            DataSource = dmCupomFiscal.dsCupomParametros
            TabOrder = 3
          end
          object RxDBComboBox2: TRxDBComboBox
            Left = 166
            Top = 99
            Width = 69
            Height = 21
            Style = csDropDownList
            DataField = 'IMP_VENDAS_FECHAMENTO'
            DataSource = dmCupomFiscal.dsCupomParametros
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'SIM'
              'N'#195'O')
            TabOrder = 4
            Values.Strings = (
              'S'
              'N')
          end
          object RxDBComboBox30: TRxDBComboBox
            Left = 166
            Top = 121
            Width = 69
            Height = 21
            Style = csDropDownList
            DataField = 'IMPRIME_NFISCAL_CONFERENCIA'
            DataSource = dmCupomFiscal.dsCupomParametros
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'SIM'
              'N'#195'O')
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
          end
          object RxDBComboBox39: TRxDBComboBox
            Left = 166
            Top = 143
            Width = 69
            Height = 21
            Style = csDropDownList
            DataField = 'EXIBIR_DIALOGO_IMPRESSORA'
            DataSource = dmCupomFiscal.dsCupomParametros
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'SIM'
              'N'#195'O')
            TabOrder = 6
            Values.Strings = (
              'S'
              'N')
          end
        end
        object GroupBox8: TGroupBox
          Left = 4
          Top = 8
          Width = 840
          Height = 137
          Caption = 'Terminal'
          TabOrder = 0
          object Label20: TLabel
            Left = 160
            Top = 66
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Usa NFCe:'
          end
          object Label8: TLabel
            Left = 138
            Top = 44
            Width = 74
            Height = 13
            Alignment = taRightJustify
            Caption = 'Terminal (PDV):'
          end
          object Label30: TLabel
            Left = 25
            Top = 87
            Width = 186
            Height = 13
            Alignment = taRightJustify
            Caption = 'Endere'#231'o Para Salvar o XML da NFCe:'
          end
          object Label21: TLabel
            Left = 26
            Top = 110
            Width = 185
            Height = 13
            Alignment = taRightJustify
            Caption = 'Endere'#231'o Para Salvar o PDF da NFCe:'
          end
          object Label64: TLabel
            Left = 189
            Top = 22
            Width = 23
            Height = 13
            Alignment = taRightJustify
            Caption = 'Filial:'
          end
          object RxDBComboBox9: TRxDBComboBox
            Left = 214
            Top = 58
            Width = 187
            Height = 21
            Style = csDropDownList
            DataField = 'USA_NFCE'
            DataSource = dmCupomFiscal.dsParametros
            DropDownCount = 2
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'SIM'
              'N'#195'O')
            TabOrder = 1
            Values.Strings = (
              'S'
              'N')
          end
          object RxDBLookupCombo2: TRxDBLookupCombo
            Left = 214
            Top = 36
            Width = 187
            Height = 21
            DropDownCount = 8
            DataField = 'TERMINAL_ID'
            DataSource = dmCupomFiscal.dsCupomParametros
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = dmCupomFiscal.dsCupomTerminal
            TabOrder = 2
          end
          object DirectoryEdit2: TDirectoryEdit
            Left = 214
            Top = 80
            Width = 411
            Height = 21
            InitialDir = 'C:\'
            MultipleDirs = True
            NumGlyphs = 1
            TabOrder = 3
            Text = 'C:\'
          end
          object DirectoryEdit3: TDirectoryEdit
            Left = 214
            Top = 102
            Width = 411
            Height = 21
            InitialDir = 'C:\'
            MultipleDirs = True
            NumGlyphs = 1
            TabOrder = 4
            Text = 'C:\'
          end
          object RxDBLookupCombo8: TRxDBLookupCombo
            Left = 214
            Top = 14
            Width = 187
            Height = 21
            DropDownCount = 8
            LookupField = 'ID'
            LookupDisplay = 'NOME_INTERNO'
            LookupSource = dmCupomFiscal.dsFilial
            TabOrder = 0
          end
        end
        object GroupBox9: TGroupBox
          Left = 4
          Top = 420
          Width = 841
          Height = 53
          Caption = ' Configura'#231#227'o NFCe '
          TabOrder = 4
          object Label71: TLabel
            Left = 4
            Top = 24
            Width = 80
            Height = 13
            Alignment = taRightJustify
            Caption = 'Enviar S'#237'ncrono:'
          end
          object RxDBComboBox42: TRxDBComboBox
            Left = 86
            Top = 16
            Width = 187
            Height = 21
            Style = csDropDownList
            DataField = 'USA_MODO_SINCRONO'
            DataSource = dmCupomFiscal.dsCupomParametros
            DropDownCount = 2
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'SIM'
              'N'#195'O')
            TabOrder = 0
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Personaliza'#231#227'o'
      ImageIndex = 3
      object GroupBox1: TGroupBox
        Left = 16
        Top = 0
        Width = 801
        Height = 257
        Caption = 'Financeiro'
        Enabled = False
        TabOrder = 0
        object Label9: TLabel
          Left = 169
          Top = 42
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta de Caixa:'
        end
        object Label31: TLabel
          Left = 120
          Top = 86
          Width = 124
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cond. Pagamento '#192' Vista:'
        end
        object Label37: TLabel
          Left = 163
          Top = 130
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta de perdas:'
        end
        object Label6: TLabel
          Left = 152
          Top = 20
          Width = 92
          Height = 13
          Alignment = taRightJustify
          Caption = 'Exige Caixa Aberto:'
        end
        object Label29: TLabel
          Left = 325
          Top = 174
          Width = 151
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mostrar Cond. Pagto no Cupom:'
        end
        object Label28: TLabel
          Left = 89
          Top = 174
          Width = 155
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mostrar Barra de total no Cupom:'
        end
        object Label12: TLabel
          Left = 100
          Top = 152
          Width = 144
          Height = 13
          Alignment = taRightJustify
          Caption = 'Casas Decimais Valor Unit'#225'rio:'
        end
        object Label1: TLabel
          Left = 379
          Top = 151
          Width = 97
          Height = 13
          Alignment = taRightJustify
          Caption = 'IPI no Cupom Fiscal:'
        end
        object Label41: TLabel
          Left = 117
          Top = 196
          Width = 127
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gera carn'#234' de pagamento:'
        end
        object Label47: TLabel
          Left = 317
          Top = 64
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desconto Item:'
        end
        object Label48: TLabel
          Left = 130
          Top = 64
          Width = 114
          Height = 13
          Alignment = taRightJustify
          Caption = 'Exige Campo Desconto:'
        end
        object lbl1: TLabel
          Left = 116
          Top = 108
          Width = 128
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cond. Pagamento A Prazo:'
        end
        object Label59: TLabel
          Left = 384
          Top = 196
          Width = 92
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pr'#233'-visualiza carn'#234':'
        end
        object Label60: TLabel
          Left = 172
          Top = 218
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Arquivo carn'#234':'
        end
        object Label62: TLabel
          Left = 486
          Top = 20
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fechamento:'
        end
        object Label65: TLabel
          Left = 579
          Top = 64
          Width = 89
          Height = 13
          Alignment = taRightJustify
          Caption = 'Usa Pre'#231'o '#192' Vista:'
        end
        object Label69: TLabel
          Left = 572
          Top = 108
          Width = 96
          Height = 13
          Alignment = taRightJustify
          Caption = 'Juros Parcelamento:'
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 246
          Top = 34
          Width = 187
          Height = 21
          DropDownCount = 8
          DataField = 'ID_CONTA_FECHAMENTO'
          DataSource = dmCupomFiscal.dsParametros
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmCupomFiscal.dsContas
          TabOrder = 2
          OnEnter = RxDBLookupCombo3Enter
        end
        object RxDBLookupCombo5: TRxDBLookupCombo
          Left = 246
          Top = 78
          Width = 299
          Height = 21
          DropDownCount = 8
          DataField = 'ID_CONDPGTO_PADRAO'
          DataSource = dmCupomFiscal.dsCupomParametros
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmCupomFiscal.dsCondPgto
          TabOrder = 6
          OnEnter = RxDBLookupCombo4Enter
        end
        object RxDBLookupCombo6: TRxDBLookupCombo
          Left = 246
          Top = 122
          Width = 299
          Height = 21
          DropDownCount = 8
          DataField = 'ID_CONTAPERDAS'
          DataSource = dmCupomFiscal.dsCupomParametros
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmCupomFiscal.dsContas
          TabOrder = 9
          OnEnter = RxDBLookupCombo4Enter
        end
        object RxDBComboBox4: TRxDBComboBox
          Left = 246
          Top = 12
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'EXIGE_CAIXA_ABERTO'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 0
          Values.Strings = (
            'N'
            'S')
        end
        object RxDBComboBox15: TRxDBComboBox
          Left = 478
          Top = 166
          Width = 67
          Height = 21
          Style = csDropDownList
          DataField = 'MOSTRAR_CONDPGTO'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 13
          Values.Strings = (
            'S'
            'N')
        end
        object RxDBComboBox14: TRxDBComboBox
          Left = 246
          Top = 166
          Width = 67
          Height = 21
          Style = csDropDownList
          DataField = 'MOSTRAR_BARRA_TOTAL'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 12
          Values.Strings = (
            'S'
            'N')
        end
        object DBEdit2: TDBEdit
          Left = 246
          Top = 144
          Width = 67
          Height = 21
          DataField = 'CASAS_DECIMAIS'
          DataSource = dmCupomFiscal.dsCupomParametros
          TabOrder = 10
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 478
          Top = 143
          Width = 67
          Height = 21
          Style = csDropDownList
          DataField = 'USA_IPI'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 11
          Values.Strings = (
            'N'
            'S')
        end
        object RxDBComboBox24: TRxDBComboBox
          Left = 246
          Top = 188
          Width = 67
          Height = 21
          Style = csDropDownList
          DataField = 'USA_CARNE'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 14
          Values.Strings = (
            'S'
            'N')
          OnChange = RxDBComboBox24Change
        end
        object RxDBComboBox28: TRxDBComboBox
          Left = 392
          Top = 56
          Width = 153
          Height = 21
          Style = csDropDownList
          DataField = 'USA_DESCONTO'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'NOS ITENS'
            'NO TOTAL DA VENDA'
            'AMBOS (ITENS E TOTAL)')
          TabOrder = 4
          Values.Strings = (
            'N'
            'I'
            'T'
            'A')
        end
        object RxDBComboBox29: TRxDBComboBox
          Left = 246
          Top = 56
          Width = 67
          Height = 21
          Style = csDropDownList
          DataField = 'EXIGE_CAMPO_DESCONTO'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 3
          Values.Strings = (
            'N'
            'S')
        end
        object RxDBLookupCombo4: TRxDBLookupCombo
          Left = 246
          Top = 100
          Width = 299
          Height = 21
          DropDownCount = 8
          DataField = 'ID_CONDPGTO_PRAZO'
          DataSource = dmCupomFiscal.dsCupomParametros
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmCupomFiscal.dsCondPgto
          TabOrder = 7
          OnEnter = RxDBLookupCombo4Enter
        end
        object RxDBComboBox35: TRxDBComboBox
          Left = 478
          Top = 188
          Width = 67
          Height = 21
          Style = csDropDownList
          DataField = 'USA_PREVIEW_CARNE'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 15
          Values.Strings = (
            'S'
            'N')
        end
        object DBEdit11: TDBEdit
          Left = 246
          Top = 210
          Width = 299
          Height = 21
          DataField = 'CARNE_RELATORIO'
          DataSource = dmCupomFiscal.dsCupomParametros
          TabOrder = 16
        end
        object RxDBComboBox36: TRxDBComboBox
          Left = 550
          Top = 12
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'FECHAMENTO'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Completo'
            'Autom'#225'tico'
            'Sem confer'#234'ncia')
          TabOrder = 1
          Values.Strings = (
            'C'
            'A'
            'S')
        end
        object RxDBComboBox38: TRxDBComboBox
          Left = 670
          Top = 56
          Width = 67
          Height = 21
          Style = csDropDownList
          DataField = 'USA_PRECO_AVISTA'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 5
          Values.Strings = (
            'N'
            'S')
        end
        object DBEdit12: TDBEdit
          Left = 670
          Top = 100
          Width = 67
          Height = 21
          DataField = 'JUROS_MES'
          DataSource = dmCupomFiscal.dsCupomParametros
          TabOrder = 8
        end
      end
      object GroupBox2: TGroupBox
        Left = 16
        Top = 258
        Width = 465
        Height = 192
        Caption = 'Usabilidade'
        Enabled = False
        TabOrder = 1
        object Label11: TLabel
          Left = 117
          Top = 17
          Width = 127
          Height = 13
          Alignment = taRightJustify
          Caption = 'Primeiro Campo do Cupom:'
        end
        object Label38: TLabel
          Left = 149
          Top = 39
          Width = 95
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ordem dos Campos:'
        end
        object Label22: TLabel
          Left = 146
          Top = 61
          Width = 98
          Height = 13
          Alignment = taRightJustify
          Caption = 'Abrir o Cupom direto:'
        end
        object Label23: TLabel
          Left = 87
          Top = 105
          Width = 157
          Height = 13
          Alignment = taRightJustify
          Caption = 'Informar na digita'#231#227'o do Produto:'
        end
        object Label24: TLabel
          Left = 20
          Top = 127
          Width = 224
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mostrar o nome do produto na inclus'#227'o do item:'
        end
        object Label58: TLabel
          Left = 130
          Top = 83
          Width = 114
          Height = 13
          Alignment = taRightJustify
          Caption = 'Quantidade Autom'#225'tica:'
        end
        object Label55: TLabel
          Left = 123
          Top = 149
          Width = 121
          Height = 13
          Alignment = taRightJustify
          Caption = 'ID do cliente Consumidor:'
        end
        object RxDBComboBox6: TRxDBComboBox
          Left = 246
          Top = 9
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'PRIMEIRO_CAMPO'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'QUANTIDADE'
            'C'#211'DIGO DE BARRAS'
            'NOME DO PRODUTO')
          TabOrder = 0
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBComboBox21: TRxDBComboBox
          Left = 246
          Top = 31
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'ORDEM_CAMPOS'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Quantidade / C'#243'digo'
            'C'#243'digo / Quantidade')
          TabOrder = 1
          Values.Strings = (
            '1'
            '2')
        end
        object RxDBComboBox10: TRxDBComboBox
          Left = 246
          Top = 53
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'ABRIR_CUPOM'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'NA VENDA'
            'NA CONSULTA')
          TabOrder = 2
          Values.Strings = (
            'I'
            'C')
        end
        object RxDBComboBox11: TRxDBComboBox
          Left = 246
          Top = 97
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'USA_COD_REF'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'C'#243'digo (ID)'
            'Refer'#234'ncia')
          TabOrder = 4
          Values.Strings = (
            'C'
            'R')
        end
        object RxDBComboBox12: TRxDBComboBox
          Left = 246
          Top = 119
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'MOSTRA_NOME_PRODUTO'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 5
          Values.Strings = (
            'S'
            'N')
        end
        object RxDBComboBox34: TRxDBComboBox
          Left = 246
          Top = 75
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'QTD_AUTO'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'SIM (PASSA DIRETO)'
            'N'#195'O (PARA NO CAMPO)')
          TabOrder = 3
          Values.Strings = (
            'S'
            'N')
        end
        object DBEdit8: TDBEdit
          Left = 246
          Top = 141
          Width = 67
          Height = 21
          DataField = 'ID_CLIENTE_CONSUMIDOR'
          DataSource = dmCupomFiscal.dsParametros
          TabOrder = 6
        end
      end
      object GroupBox3: TGroupBox
        Left = 16
        Top = 451
        Width = 802
        Height = 85
        Caption = 'Restaurante'
        Enabled = False
        TabOrder = 3
        object Label14: TLabel
          Left = 80
          Top = 20
          Width = 164
          Height = 13
          Alignment = taRightJustify
          Caption = 'Usa Cart'#227'o / Comanda Numerada:'
        end
        object Label34: TLabel
          Left = 118
          Top = 42
          Width = 126
          Height = 13
          Alignment = taRightJustify
          Caption = 'Caixa novo zera comanda:'
        end
        object Label35: TLabel
          Left = 459
          Top = 20
          Width = 137
          Height = 13
          Alignment = taRightJustify
          Caption = 'Imprime no cupom n'#227'o fiscal:'
        end
        object Label32: TLabel
          Left = 30
          Top = 62
          Width = 214
          Height = 13
          Alignment = taRightJustify
          Caption = 'Informar a quantidade de pessoas no Cupom:'
        end
        object Label42: TLabel
          Left = 510
          Top = 42
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Imprimir Comanda:'
        end
        object Label63: TLabel
          Left = 480
          Top = 62
          Width = 116
          Height = 13
          Alignment = taRightJustify
          Caption = 'Permite Rachar a Conta:'
        end
        object RxDBComboBox7: TRxDBComboBox
          Left = 246
          Top = 12
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'USA_CARTAO_COMANDA'
          DataSource = dmCupomFiscal.dsCupomParametros
          DropDownCount = 3
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 0
          Values.Strings = (
            'N'
            'S')
        end
        object RxDBComboBox18: TRxDBComboBox
          Left = 246
          Top = 34
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'CAIXA_NUMERA_COMANDA'
          DataSource = dmCupomFiscal.dsCupomParametros
          DropDownCount = 2
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 1
          Values.Strings = (
            'S'
            'N')
        end
        object RxDBComboBox19: TRxDBComboBox
          Left = 598
          Top = 12
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'IMPRIME_NUM_NFISCAL'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#250'mero do Cupom'
            'N'#250'mero do Cart'#227'o')
          TabOrder = 3
          Values.Strings = (
            '1'
            '2')
        end
        object RxDBComboBox16: TRxDBComboBox
          Left = 246
          Top = 54
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'USA_QTD_PESSOA'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 2
          Values.Strings = (
            'S'
            'N')
        end
        object RxDBComboBox25: TRxDBComboBox
          Left = 598
          Top = 34
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'USA_COMANDA'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 4
          Values.Strings = (
            'S'
            'N')
        end
        object RxDBComboBox37: TRxDBComboBox
          Left = 598
          Top = 54
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'RACHAR_CONTA'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 5
          Values.Strings = (
            'S'
            'N')
        end
      end
      object GroupBox5: TGroupBox
        Left = 486
        Top = 258
        Width = 331
        Height = 192
        Caption = 'Varejo'
        TabOrder = 2
        object Label45: TLabel
          Left = 47
          Top = 18
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = 'Usa Or'#231'amento:'
        end
        object Label46: TLabel
          Left = 66
          Top = 40
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Usa Pedido:'
        end
        object Label52: TLabel
          Left = 47
          Top = 62
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = 'Exige vendedor:'
        end
        object Label53: TLabel
          Left = 38
          Top = 84
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Repete vendedor:'
        end
        object Label56: TLabel
          Left = 20
          Top = 128
          Width = 104
          Height = 13
          Alignment = taRightJustify
          Caption = 'Usa tabela de pre'#231'os:'
        end
        object Label18: TLabel
          Left = 60
          Top = 150
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Usa Balan'#231'a:'
        end
        object Label68: TLabel
          Left = 27
          Top = 172
          Width = 97
          Height = 13
          Alignment = taRightJustify
          Caption = 'Usa Cor / Tamanho:'
        end
        object Label70: TLabel
          Left = 28
          Top = 106
          Width = 96
          Height = 13
          Alignment = taRightJustify
          Caption = 'Autentica vendedor:'
        end
        object RxDBComboBox26: TRxDBComboBox
          Left = 128
          Top = 10
          Width = 176
          Height = 21
          Style = csDropDownList
          DataField = 'USA_ORCAMENTO'
          DataSource = dmCupomFiscal.dsCupomParametros
          DropDownCount = 3
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 0
          Values.Strings = (
            'N'
            'S')
        end
        object RxDBComboBox27: TRxDBComboBox
          Left = 128
          Top = 32
          Width = 176
          Height = 21
          Style = csDropDownList
          DataField = 'USA_PEDIDO'
          DataSource = dmCupomFiscal.dsCupomParametros
          DropDownCount = 3
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 1
          Values.Strings = (
            'N'
            'S')
        end
        object RxDBComboBox31: TRxDBComboBox
          Left = 128
          Top = 54
          Width = 176
          Height = 21
          Style = csDropDownList
          DataField = 'EXIGE_VENDEDOR'
          DataSource = dmCupomFiscal.dsCupomParametros
          DropDownCount = 3
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 2
          Values.Strings = (
            'N'
            'S')
          OnExit = RxDBComboBox31Exit
        end
        object RxDBComboBox32: TRxDBComboBox
          Left = 128
          Top = 76
          Width = 176
          Height = 21
          Style = csDropDownList
          DataField = 'REPETE_VENDEDOR'
          DataSource = dmCupomFiscal.dsCupomParametros
          DropDownCount = 3
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 3
          Values.Strings = (
            'N'
            'S')
        end
        object RxDBComboBox33: TRxDBComboBox
          Left = 128
          Top = 120
          Width = 176
          Height = 21
          Style = csDropDownList
          DataField = 'USA_TABELA_PRECO'
          DataSource = dmCupomFiscal.dsCupomParametros
          DropDownCount = 3
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 6
          Values.Strings = (
            'N'
            'S')
        end
        object RxDBComboBox8: TRxDBComboBox
          Left = 128
          Top = 142
          Width = 176
          Height = 21
          Style = csDropDownList
          DataField = 'USA_BALANCA'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 7
          Values.Strings = (
            'N'
            'S')
        end
        object RxDBComboBox40: TRxDBComboBox
          Left = 128
          Top = 164
          Width = 176
          Height = 21
          Style = csDropDownList
          DataField = 'USA_COR_TAMANHO'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 8
          Values.Strings = (
            'N'
            'S')
        end
        object RxDBComboBox41: TRxDBComboBox
          Left = 128
          Top = 98
          Width = 148
          Height = 21
          Style = csDropDownList
          DataField = 'AUTENTICA_VENDEDOR'
          DataSource = dmCupomFiscal.dsCupomParametros
          DropDownCount = 3
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 4
          Values.Strings = (
            'N'
            'S')
        end
        object BitBtn1: TBitBtn
          Left = 282
          Top = 98
          Width = 20
          Height = 20
          Caption = '?'
          TabOrder = 5
          TabStop = False
          OnClick = BitBtn1Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Balan'#231'a'
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 865
        Height = 538
        Align = alClient
        TabOrder = 0
        object Label15: TLabel
          Left = 52
          Top = 32
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Balan'#231'a:'
        end
        object Label16: TLabel
          Left = 56
          Top = 56
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Modelo:'
        end
        object Label17: TLabel
          Left = 67
          Top = 80
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'COM:'
        end
        object Label40: TLabel
          Left = 52
          Top = 104
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Etiqueta:'
        end
        object Label57: TLabel
          Left = 79
          Top = 128
          Width = 135
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tam. do C'#243'digo na Etiqueta:'
        end
        object ComboBox1: TComboBox
          Left = 96
          Top = 24
          Width = 145
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'URANO'
          Items.Strings = (
            'URANO'
            'ACBR')
        end
        object ComboBox2: TComboBox
          Left = 96
          Top = 48
          Width = 145
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Text = 'US POP'
          Items.Strings = (
            'US POP'
            'PRIX 8217')
        end
        object ComboBox3: TComboBox
          Left = 96
          Top = 72
          Width = 145
          Height = 21
          DropDownCount = 10
          ItemHeight = 13
          TabOrder = 2
          Text = 'COM1'
          Items.Strings = (
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8'
            'COM9'
            'COM10')
        end
        object RxDBComboBox23: TRxDBComboBox
          Left = 96
          Top = 96
          Width = 187
          Height = 21
          Style = csDropDownList
          DataField = 'ETIQUETA_INFO'
          DataSource = dmCupomFiscal.dsCupomParametros
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Nenhuma'
            'Informa Peso'
            'Informa Pre'#231'o')
          TabOrder = 3
          Values.Strings = (
            '0'
            '1'
            '2')
        end
        object DBEdit10: TDBEdit
          Left = 216
          Top = 120
          Width = 67
          Height = 21
          DataField = 'TAMANHO_COD_ETIQUETA'
          DataSource = dmCupomFiscal.dsCupomParametros
          TabOrder = 4
        end
      end
    end
    object TS_Numeracao: TTabSheet
      Caption = 'Numera'#231#227'o'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 865
        Height = 538
        Align = alClient
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 863
          Height = 536
          Align = alClient
          DataSource = dmParametros.dsSequencial
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'TABELA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FILIAL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMREGISTRO'
              Visible = True
            end>
        end
      end
    end
  end
end
