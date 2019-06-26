object frmVendedor_Config: TfrmVendedor_Config
  Left = 506
  Top = 203
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmVendedor_Config'
  ClientHeight = 217
  ClientWidth = 294
  Color = 11599792
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnConfirmar: TNxButton
    Left = 38
    Top = 189
    Width = 109
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnConfirmarClick
  end
  object NxButton2: TNxButton
    Left = 147
    Top = 189
    Width = 109
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = NxButton2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 294
    Height = 182
    Align = alTop
    Color = 11599792
    TabOrder = 0
    object DBCheckBox1: TDBCheckBox
      Left = 59
      Top = 15
      Width = 142
      Height = 17
      Caption = 'Descontar Frete'
      DataField = 'DESC_FRETE'
      DataSource = DMCadPessoa.dsVendedor_Config
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 58
      Top = 42
      Width = 142
      Height = 17
      Caption = 'Descontar IPI'
      DataField = 'DESC_IPI'
      DataSource = DMCadPessoa.dsVendedor_Config
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox3: TDBCheckBox
      Left = 58
      Top = 68
      Width = 142
      Height = 19
      Caption = 'Descontar ST'
      DataField = 'DESC_ST'
      DataSource = DMCadPessoa.dsVendedor_Config
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox4: TDBCheckBox
      Left = 58
      Top = 96
      Width = 142
      Height = 17
      Caption = 'Descontar PIS'
      DataField = 'DESC_PIS'
      DataSource = DMCadPessoa.dsVendedor_Config
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox5: TDBCheckBox
      Left = 58
      Top = 123
      Width = 142
      Height = 17
      Caption = 'Descontar COFINS'
      DataField = 'DESC_COFINS'
      DataSource = DMCadPessoa.dsVendedor_Config
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox6: TDBCheckBox
      Left = 58
      Top = 150
      Width = 142
      Height = 17
      Caption = 'Descontar ISSQN'
      DataField = 'DESC_ISSQN'
      DataSource = DMCadPessoa.dsVendedor_Config
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
end
