object frmCadOrdemServico_Itens: TfrmCadOrdemServico_Itens
  Left = 330
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informe o Produto'
  ClientHeight = 501
  ClientWidth = 719
  Color = clMoneyGreen
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
  object Label1: TLabel
    Left = 52
    Top = 93
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = 'Produto:'
  end
  object Label24: TLabel
    Left = 167
    Top = 72
    Width = 124
    Height = 13
    Caption = 'F2 para pesquisar Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 59
    Top = 114
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Marca:'
  end
  object Label3: TLabel
    Left = 366
    Top = 114
    Width = 38
    Height = 13
    Alignment = taRightJustify
    Caption = 'Modelo:'
  end
  object Label4: TLabel
    Left = 50
    Top = 51
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#186' S'#233'rie:'
  end
  object Label5: TLabel
    Left = 49
    Top = 135
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Garantia:'
  end
  object Label6: TLabel
    Left = 45
    Top = 72
    Width = 47
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'd.Prod:'
  end
  object Label7: TLabel
    Left = 361
    Top = 152
    Width = 263
    Height = 32
    Caption = 'S'#233'rie j'#225' recarregada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label8: TLabel
    Left = 361
    Top = 182
    Width = 80
    Height = 32
    Caption = 'Qtd: 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label9: TLabel
    Left = 19
    Top = 156
    Width = 73
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#186' S'#233'rie Troca:'
  end
  object Label10: TLabel
    Left = 40
    Top = 177
    Width = 52
    Height = 13
    Alignment = taRightJustify
    Caption = 'Instala'#231#227'o:'
  end
  object Label11: TLabel
    Left = 361
    Top = 135
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Garantia:'
  end
  object Label12: TLabel
    Left = 13
    Top = 198
    Width = 79
    Height = 13
    Alignment = taRightJustify
    Caption = 'Atendimento em:'
  end
  object RxDBComboBox1: TRxDBComboBox
    Left = 93
    Top = 127
    Width = 182
    Height = 21
    Style = csDropDownList
    Ctl3D = False
    DataField = 'TIPO_GARANTIA'
    DataSource = DMCadOrdemServico.dsOrdemServico_Itens
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#227'o'
      'T'#233'cnico'
      'Cliente')
    ParentCtl3D = False
    TabOrder = 6
    Values.Strings = (
      'N'
      'T'
      'C')
  end
  object DBEdit5: TDBEdit
    Left = 93
    Top = 85
    Width = 493
    Height = 21
    CharCase = ecUpperCase
    Ctl3D = True
    DataField = 'NOME_PRODUTO'
    DataSource = DMCadOrdemServico.dsOrdemServico_Itens
    ParentCtl3D = False
    TabOrder = 3
    OnEnter = DBEdit5Enter
  end
  object DBEdit1: TDBEdit
    Left = 93
    Top = 64
    Width = 68
    Height = 21
    Ctl3D = True
    DataField = 'ID_PRODUTO'
    DataSource = DMCadOrdemServico.dsOrdemServico_Itens
    ParentCtl3D = False
    TabOrder = 2
    OnExit = DBEdit1Exit
  end
  object DBEdit2: TDBEdit
    Left = 93
    Top = 106
    Width = 181
    Height = 21
    CharCase = ecUpperCase
    Ctl3D = True
    DataField = 'MARCA'
    DataSource = DMCadOrdemServico.dsOrdemServico_Itens
    ParentCtl3D = False
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 405
    Top = 106
    Width = 181
    Height = 21
    CharCase = ecUpperCase
    Ctl3D = True
    DataField = 'MODELO'
    DataSource = DMCadOrdemServico.dsOrdemServico_Itens
    ParentCtl3D = False
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 93
    Top = 43
    Width = 181
    Height = 21
    CharCase = ecUpperCase
    Ctl3D = True
    DataField = 'NUM_SERIE'
    DataSource = DMCadOrdemServico.dsOrdemServico_Itens
    ParentCtl3D = False
    TabOrder = 1
    OnEnter = DBEdit4Enter
    OnExit = DBEdit4Exit
    OnKeyDown = DBEdit4KeyDown
  end
  object Panel1: TPanel
    Left = 0
    Top = 460
    Width = 719
    Height = 41
    Align = alBottom
    Color = 8404992
    TabOrder = 12
    object BitBtn1: TBitBtn
      Left = 256
      Top = 8
      Width = 102
      Height = 25
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333377FF333333333000033334224333333333333
        337777FF333333330000333422224333333333333777777FF333333300003342
        2222243333333333777777777F333333000034222A22224333333337777F7777
        7F33333300003222A3A222433333333777F3F7777FF3333300003A2A333A2224
        333333377F333F7777FF3333000033A33333A22243333333F33333F7777FF333
        0000333333333A22243333333333333F7777FF3300003333333333A222433333
        33333333F7777F33000033333333333A22243333333333333F7777F300003333
        33333333A22243333333333333F7777F00003333333333333A22433333333333
        333F7773000033333333333333A22333333333333333F7730000333333333333
        333A33333333333333333F330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 358
      Top = 8
      Width = 102
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033337733333333333333333F333333333333
        0000333911733333973333333377F333333F3333000033391117333911733333
        37F37F333F77F33300003339111173911117333337F337F3F7337F3300003333
        911117111117333337F3337F733337F3000033333911111111733333337F3337
        3333F7330000333333911111173333333337F333333F73330000333333311111
        7333333333337F3333373333000033333339111173333333333337F333733333
        00003333339111117333333333333733337F3333000033333911171117333333
        33337333337F333300003333911173911173333333373337F337F33300003333
        9117333911173333337F33737F337F33000033333913333391113333337FF733
        37F337F300003333333333333919333333377333337FFF730000333333333333
        3333333333333333333777330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 222
    Width = 719
    Height = 238
    ActivePage = TS_Defeito
    ActivePageDefault = TS_Defeito
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabIndex = 0
    TabOrder = 11
    TextColors.Selected = clBlue
    TextColors.Unselected = 6579300
    FixedDimension = 19
    object TS_Defeito: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Defeito Alegado'
      object DBMemo2: TDBMemo
        Left = 0
        Top = 0
        Width = 715
        Height = 215
        Align = alClient
        DataField = 'DEFEITO_ALEGADO'
        DataSource = DMCadOrdemServico.dsOrdemServico_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 800
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TS_OBS: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Observa'#231#227'o'
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 715
        Height = 215
        Align = alClient
        DataField = 'OBS'
        DataSource = DMCadOrdemServico.dsOrdemServico_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 800
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TS_Acessorios: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Acess'#243'rios'
      object DBMemo3: TDBMemo
        Left = 0
        Top = 0
        Width = 715
        Height = 215
        Align = alClient
        DataField = 'ACESSORIOS'
        DataSource = DMCadOrdemServico.dsOrdemServico_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 800
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object pnlCod_Barras: TPanel
    Left = 0
    Top = 0
    Width = 719
    Height = 31
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    Visible = False
    object Label20: TLabel
      Left = 52
      Top = 12
      Width = 84
      Height = 13
      Caption = 'C'#243'digo de Barras:'
    end
    object Edit1: TEdit
      Left = 140
      Top = 6
      Width = 153
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
  end
  object btnConsultar: TNxButton
    Left = 275
    Top = 37
    Width = 177
    Height = 27
    Caption = 'Hist'#243'rico Servi'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    Glyph.Data = {
      AE060000424DAE06000000000000360000002800000017000000170000000100
      1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2F0F5F2F0FCFDFDFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B778D2D52869876
      72B0A3A1FCFDFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7780
      0055B812A5FA5E90BDBBA29FFAF5F4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5C6377004EAD29BEFFA9ECFFA3F7FF3A89BFF6F5F6000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF75737F0051AC17B1FFA4E7FDD5FFFF12A6E45E90B5FFFCFC00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFD6C6C7D0057BB25BAFFA5E7FEC7FFFF099DDF6A8A
      A8FFFFFDFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54657D0057B120B5FFA1E5FECFFFFF
      109CDD4D7EA5FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFCFEFEDADDDDDAD9D9CFCFCFEDEFEFFFFFFFFFFFFFFFFFFF00024A21BCFFA5
      EAFFCAFFFF11A7E86587A9FFFFFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFDDE0E0958E8D7A63657D60628467678065658D77799C9393D3D1D1ADAA
      A749343776B3E0B4FFFF19A4DF5A84A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFD2D8D84C3334846269967570A39388A99E9AAB9E99AE9890
      B69DA4A28E8F867070E7D0CC806B6E005499467EA7FFFFFAFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFC2C2C2533638A27B799D80649A9A7C94988895
      97979498949198849E9478C4AFA8C8B5B7AFA1A1B6B3B1FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FBFBFB816D6E8A66679C6F4A987D
      5A978F7499978499998D99998C989783948769987854C9B1A9C1B4B6DED8D8FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E0DCDB74575C
      98634797653998765499876899927799977F99967F99907799826295704B9B64
      3AD4CFD8A39C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000887F83865B54984D1A945C319969439A77559A7F5F998365998364997F5F
      99735095673F81400DC9A391B2ACB0ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000BDAFB38C57459140079352258D562D875732885D3A8D
      6744946E4B92694587532D91572CBB753CCA906BADAAB0CECDCDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C6B7BB8F56428528008B3D08A766
      34CA9765D0A272BC8D5F9E6940A06B3ECB9867EFB984FFCB8ACD8A5FBBB8C0DD
      DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B8AEB1906152
      AD5529ECB177FFD29AFED7A5FCDEAEFEE7B6FFEABBFFE8B8FDDCABF7D09CFCCB
      90CF9675AEAAB2CBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      00009B96988F6B68EAA769FFD19BF4CD9BF4D8AAF4E0B4F4E4BBF4E5BDF4E4BB
      F4DDB1F6DBABF8C98AC6A399A8A6A9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000D2D0D07E6B73B47F67FED295F6DBADF4E4BAF5E5C2F5
      E7C8F5E9CAF4E7C8F5E8C3F9E9B9D29E73DDDEE8A6A2A1FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFE9B8F91B6A0A5CD9972FDE8
      B2F6EDC7F5E9CCF4EDD4F5EED9F5EED6F9EFCDE4C299F3E4DD867F80D7D8D8FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFD4D6D6
      574849C3AEB2CDA88FF0D9B4F6ECD0F6F3E3F6F1E5F4E8D3E2C2ABE1D0CF9E95
      96C6C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFD3D5D59F969797888CC0A6A1D1B6ACD5BEB2D7C0B7D5BDB8
      C1B4B8ADA7AAC0BFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFCFDFDD2D0D0A3A0A2CEC5C7E1
      D7D8DCD3D4A09C9EE7E5E5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
    GlyphSpacing = 5
    ParentFont = False
    TabOrder = 13
    Transparent = True
    OnClick = btnConsultarClick
  end
  object DBEdit6: TDBEdit
    Left = 93
    Top = 148
    Width = 181
    Height = 21
    CharCase = ecUpperCase
    Ctl3D = True
    DataField = 'NUM_SERIE_TROCA'
    DataSource = DMCadOrdemServico.dsOrdemServico_Itens
    ParentCtl3D = False
    TabOrder = 8
  end
  object DBDateEdit1: TDBDateEdit
    Left = 93
    Top = 169
    Width = 90
    Height = 21
    DataField = 'DT_INSTALACAO'
    DataSource = DMCadOrdemServico.dsOrdemServico_Itens
    Ctl3D = True
    NumGlyphs = 2
    ParentCtl3D = False
    TabOrder = 9
  end
  object DBDateEdit2: TDBDateEdit
    Left = 405
    Top = 127
    Width = 90
    Height = 21
    DataField = 'DT_GARANTIA'
    DataSource = DMCadOrdemServico.dsOrdemServico_Itens
    Ctl3D = True
    NumGlyphs = 2
    ParentCtl3D = False
    TabOrder = 7
  end
  object RxDBComboBox2: TRxDBComboBox
    Left = 93
    Top = 190
    Width = 182
    Height = 21
    Style = csDropDownList
    Ctl3D = False
    DataField = 'TIPO_ATENDIMENTO'
    DataSource = DMCadOrdemServico.dsOrdemServico_Itens
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'Equipamento locado'
      'Contrato de fornecimento'
      'Equipamento do cliente')
    ParentCtl3D = False
    TabOrder = 10
    Values.Strings = (
      '1'
      '2'
      '3')
  end
end
