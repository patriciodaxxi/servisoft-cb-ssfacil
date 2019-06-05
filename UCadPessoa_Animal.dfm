object frmCadPessoa_Animal: TfrmCadPessoa_Animal
  Left = 241
  Top = 145
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro Animal'
  ClientHeight = 230
  ClientWidth = 610
  Color = 16762250
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 44
    Top = 14
    Width = 65
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome Animal:'
  end
  object Label2: TLabel
    Left = 80
    Top = 35
    Width = 29
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ra'#231'a:'
  end
  object Label3: TLabel
    Left = 20
    Top = 58
    Width = 89
    Height = 13
    Alignment = taRightJustify
    Caption = 'Rem'#233'dio Pulga ID:'
  end
  object Label4: TLabel
    Left = 74
    Top = 79
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ra'#231#227'o:'
  end
  object Label5: TLabel
    Left = 87
    Top = 103
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = 'Obs:'
  end
  object Label6: TLabel
    Left = 486
    Top = 59
    Width = 74
    Height = 26
    Caption = 'Pressione Enter'#13#10'para Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 192
    Width = 610
    Height = 38
    Align = alBottom
    Color = 16762250
    TabOrder = 7
    object NxButton1: TNxButton
      Left = 198
      Top = 6
      Width = 96
      Height = 29
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 293
      Top = 6
      Width = 96
      Height = 29
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = NxButton2Click
    end
  end
  object DBEdit1: TDBEdit
    Left = 110
    Top = 6
    Width = 374
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DMCadPessoa.dsPessoa_Animal
    TabOrder = 0
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 110
    Top = 28
    Width = 374
    Height = 21
    DropDownCount = 8
    DataField = 'ID_RACA'
    DataSource = DMCadPessoa.dsPessoa_Animal
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DMCadPessoa.dsRaca
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 110
    Top = 50
    Width = 81
    Height = 21
    DataField = 'ID_REMEDIO_PULGA'
    DataSource = DMCadPessoa.dsPessoa_Animal
    TabOrder = 2
    OnExit = DBEdit2Exit
    OnKeyDown = DBEdit2KeyDown
  end
  object Edit1: TEdit
    Left = 191
    Top = 50
    Width = 293
    Height = 21
    CharCase = ecUpperCase
    Color = 13882323
    TabOrder = 3
    OnKeyDown = Edit1KeyDown
  end
  object DBEdit3: TDBEdit
    Left = 110
    Top = 72
    Width = 81
    Height = 21
    DataField = 'ID_RACAO'
    DataSource = DMCadPessoa.dsPessoa_Animal
    TabOrder = 4
    OnExit = DBEdit3Exit
    OnKeyDown = DBEdit3KeyDown
  end
  object Edit2: TEdit
    Left = 191
    Top = 72
    Width = 293
    Height = 21
    CharCase = ecUpperCase
    Color = 13882323
    TabOrder = 5
    OnKeyDown = Edit2KeyDown
  end
  object DBMemo1: TDBMemo
    Left = 109
    Top = 97
    Width = 376
    Height = 89
    DataField = 'OBS'
    DataSource = DMCadPessoa.dsPessoa_Animal
    ScrollBars = ssVertical
    TabOrder = 6
  end
end
