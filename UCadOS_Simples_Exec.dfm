object frmCadOS_Simples_Exec: TfrmCadOS_Simples_Exec
  Left = 415
  Top = 252
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadOS_Simples_Exec'
  ClientHeight = 124
  ClientWidth = 660
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 88
    Width = 660
    Height = 36
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 228
      Top = 6
      Width = 98
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
      Left = 331
      Top = 6
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 660
    Height = 88
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 58
      Top = 21
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'T'#233'cnico:'
    end
    object Label10: TLabel
      Left = 483
      Top = 17
      Width = 120
      Height = 13
      Caption = 'F5 para atualizar T'#233'cnico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 44
      Top = 41
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data In'#237'cio:'
    end
    object Label3: TLabel
      Left = 22
      Top = 61
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data conclus'#227'o:'
    end
    object Label4: TLabel
      Left = 244
      Top = 41
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hora In'#237'cio:'
    end
    object Label5: TLabel
      Left = 222
      Top = 61
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hora conclus'#227'o:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 104
      Top = 13
      Width = 374
      Height = 21
      DropDownCount = 15
      DropDownWidth = 500
      Ctl3D = False
      DataField = 'ID_TECNICO'
      DataSource = DMCadOrdemServico.dsOS_Exec
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMCadOrdemServico.dsFuncionario
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = RxDBLookupCombo1Enter
      OnKeyDown = RxDBLookupCombo1KeyDown
    end
    object DBDateEdit1: TDBDateEdit
      Left = 104
      Top = 33
      Width = 90
      Height = 21
      DataField = 'DT_INICIO'
      DataSource = DMCadOrdemServico.dsOS_Exec
      Ctl3D = False
      DefaultToday = True
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
      StartOfWeek = Sun
    end
    object DBDateEdit2: TDBDateEdit
      Left = 104
      Top = 53
      Width = 90
      Height = 21
      DataField = 'DT_FIM'
      DataSource = DMCadOrdemServico.dsOS_Exec
      Ctl3D = False
      DefaultToday = True
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 3
      StartOfWeek = Sun
    end
    object rzHoraIni: TRzDBDateTimeEdit
      Left = 302
      Top = 33
      Width = 78
      Height = 21
      DataSource = DMCadOrdemServico.dsOS_Exec
      DataField = 'HR_INICIO'
      AutoSize = False
      Ctl3D = False
      MaxLength = 4
      ParentCtl3D = False
      TabOrder = 2
      CalendarElements = [ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton, ceClearButton]
      RestrictMinutes = True
      EditType = etTime
      Format = 'hh:nn'
    end
    object rzHoraFim: TRzDBDateTimeEdit
      Left = 302
      Top = 53
      Width = 78
      Height = 21
      DataSource = DMCadOrdemServico.dsOS_Exec
      DataField = 'HR_FIM'
      AutoSize = False
      Ctl3D = False
      MaxLength = 4
      ParentCtl3D = False
      TabOrder = 4
      RestrictMinutes = True
      EditType = etTime
      Format = 'hh:nn'
    end
  end
end
