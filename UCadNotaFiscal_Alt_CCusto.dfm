object frmCadNotaFiscal_Alt_CCusto: TfrmCadNotaFiscal_Alt_CCusto
  Left = 449
  Top = 213
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadNotaFiscal_Alt_CCusto'
  ClientHeight = 90
  ClientWidth = 557
  Color = 16765606
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
  object lblContaOrc: TLabel
    Left = 15
    Top = 15
    Width = 124
    Height = 13
    Alignment = taRightJustify
    Caption = 'Conta de Or'#231'amento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object lblCCusto: TLabel
    Left = 40
    Top = 36
    Width = 99
    Height = 13
    Alignment = taRightJustify
    Caption = 'Centro de Custo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 376
    Top = 55
    Width = 58
    Height = 13
    Caption = 'F2 Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object RxDBlkContaOrc: TRxDBLookupCombo
    Left = 143
    Top = 7
    Width = 380
    Height = 21
    DropDownCount = 8
    DropDownWidth = 550
    DataField = 'CONTA_ORCAMENTO_ID'
    DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
    LookupField = 'ID'
    LookupDisplay = 'DESCRICAO'
    LookupSource = DMCadNotaFiscal.dsContaOrcamento
    TabOrder = 0
    OnKeyDown = RxDBlkContaOrcKeyDown
  end
  object RxDBlkCCusto: TRxDBLookupCombo
    Left = 143
    Top = 28
    Width = 380
    Height = 21
    DropDownCount = 8
    DropDownWidth = 550
    DataField = 'CENTRO_CUSTO_ID'
    DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
    LookupField = 'ID'
    LookupDisplay = 'DESCRICAO'
    LookupSource = DMCadNotaFiscal.dsCentroCusto
    TabOrder = 1
    OnKeyDown = RxDBlkCCustoKeyDown
  end
  object NxButton1: TNxButton
    Left = 144
    Top = 56
    Width = 82
    Height = 25
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 225
    Top = 56
    Width = 82
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = NxButton2Click
  end
end
