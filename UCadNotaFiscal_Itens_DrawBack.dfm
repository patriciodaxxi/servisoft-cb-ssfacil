object frmCadNotaFiscal_Itens_DrawBack: TfrmCadNotaFiscal_Itens_DrawBack
  Left = 342
  Top = 232
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dados de Importa'#231#227'o'
  ClientHeight = 144
  ClientWidth = 688
  Color = clMoneyGreen
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 106
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 14
      Width = 175
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' do ato concess'#243'rio de Drawback:'
    end
    object Label2: TLabel
      Left = 72
      Top = 32
      Width = 114
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Registro Exporta'#231#227'o:'
    end
    object Label3: TLabel
      Left = 114
      Top = 68
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Chave Acesso:'
    end
    object Label4: TLabel
      Left = 128
      Top = 50
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
    end
    object Label5: TLabel
      Left = 192
      Top = 85
      Width = 486
      Height = 13
      Caption = 
        'No caso de opera'#231#227'o com CFOP 3503, informar a chave de acesso da' +
        ' NFe que efetivou a exporta'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 188
      Top = 8
      Width = 185
      Height = 19
      Ctl3D = False
      DataField = 'NUM_DRAWBACK'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_DrawBack
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 188
      Top = 62
      Width = 397
      Height = 19
      Ctl3D = False
      DataField = 'NUM_CHAVE_ACESSO_NFE'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_DrawBack
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 188
      Top = 26
      Width = 185
      Height = 19
      Ctl3D = False
      DataField = 'NUM_REG_EXPORTACAO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_DrawBack
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 188
      Top = 44
      Width = 185
      Height = 19
      Ctl3D = False
      DataField = 'QTD'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_DrawBack
      ParentCtl3D = False
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 106
    Width = 688
    Height = 38
    Align = alBottom
    Color = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 256
      Top = 4
      Width = 96
      Height = 30
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 353
      Top = 4
      Width = 96
      Height = 30
      Caption = 'Cancelar / Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
