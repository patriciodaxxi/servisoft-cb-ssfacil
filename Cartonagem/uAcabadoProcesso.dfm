object fAcabadoProcesso: TfAcabadoProcesso
  Left = 360
  Top = 200
  Width = 570
  Height = 253
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fAcabadoProcesso'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 98
    Top = 48
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'ID:'
  end
  object Label2: TLabel
    Left = 89
    Top = 96
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'Item:'
  end
  object Label7: TLabel
    Left = 71
    Top = 72
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Posi'#231#227'o:'
  end
  object Label3: TLabel
    Left = 61
    Top = 120
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'Descri'#231#227'o:'
  end
  object Label4: TLabel
    Left = 44
    Top = 144
    Width = 67
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tempo Setup:'
  end
  object Label5: TLabel
    Left = 24
    Top = 168
    Width = 87
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tempo Execu'#231#227'o:'
  end
  object Label6: TLabel
    Left = 244
    Top = 144
    Width = 37
    Height = 13
    Caption = 'Minutos'
  end
  object Label8: TLabel
    Left = 244
    Top = 168
    Width = 37
    Height = 13
    Caption = 'Minutos'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 29
    Align = alTop
    TabOrder = 6
    object DBText1: TDBText
      Left = 654
      Top = 6
      Width = 65
      Height = 17
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'ID'
      DataSource = dmFaca.dsCartoFaca
      ParentColor = False
    end
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 74
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 77
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object DBEdit1: TDBEdit
    Left = 120
    Top = 40
    Width = 121
    Height = 21
    DataField = 'ID'
    DataSource = dmAcabado.dsAcabadoProcesso
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 88
    Width = 121
    Height = 21
    DataField = 'ITEM'
    DataSource = dmAcabado.dsAcabadoProcesso
    TabOrder = 2
  end
  object RxDBComboBox1: TRxDBComboBox
    Left = 120
    Top = 64
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'POSICAO'
    DataSource = dmAcabado.dsAcabadoProcesso
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'CX - CAIXA'
      'FD - FUNDO'
      'TP - TAMPA'
      'SP - SUPORTE')
    TabOrder = 1
    Values.Strings = (
      'CX'
      'FD'
      'TP'
      'SP')
  end
  object DBEdit3: TDBEdit
    Left = 120
    Top = 112
    Width = 377
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dmAcabado.dsAcabadoProcesso
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 119
    Top = 136
    Width = 121
    Height = 21
    DataField = 'TEMPO_SETUP'
    DataSource = dmAcabado.dsAcabadoProcesso
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 119
    Top = 160
    Width = 121
    Height = 21
    DataField = 'TEMPO_EXECUCAO'
    DataSource = dmAcabado.dsAcabadoProcesso
    TabOrder = 5
  end
end
