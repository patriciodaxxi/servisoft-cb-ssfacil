object frmCadTipoCobranca_Itens: TfrmCadTipoCobranca_Itens
  Left = 350
  Top = 266
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro Tipo Cobran'#231'a Itens'
  ClientHeight = 129
  ClientWidth = 650
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
  object Panel3: TPanel
    Left = 0
    Top = 95
    Width = 650
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 320
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F10) Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 222
      Top = 5
      Width = 98
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 95
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label10: TLabel
      Left = 53
      Top = 32
      Width = 120
      Height = 13
      Alignment = taRightJustify
      Caption = 'Condi'#231#227'o de Pagamento:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 178
      Top = 22
      Width = 249
      Height = 21
      DropDownCount = 8
      DataField = 'ID_CONDPAGTO'
      DataSource = DMCadTipoCobranca.dsTipoCobranca_Itens
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadTipoCobranca.dsCondPagto
      TabOrder = 0
    end
  end
end
