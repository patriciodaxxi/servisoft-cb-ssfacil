object dmParametros: TdmParametros
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 501
  Top = 137
  Height = 449
  Width = 390
  object sdsParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, IMPRESSORA_FISCAL, USA_NFCE'#13#10'FROM PARAMETROS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsParametrosIMPRESSORA_FISCAL: TStringField
      FieldName = 'IMPRESSORA_FISCAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 1
    end
  end
  object dspParametros: TDataSetProvider
    DataSet = sdsParametros
    Left = 96
    Top = 32
  end
  object cdsParametros: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspParametros'
    Left = 136
    Top = 32
    object cdsParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsParametrosIMPRESSORA_FISCAL: TStringField
      FieldName = 'IMPRESSORA_FISCAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros: TDataSource
    DataSet = cdsParametros
    Left = 176
    Top = 32
  end
  object sdsCupomParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CUPOMFISCAL_PARAMETROS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 80
    object sdsCupomParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCupomParametrosUSA_IPI: TStringField
      FieldName = 'USA_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosSIT_TRIB_ID: TIntegerField
      FieldName = 'SIT_TRIB_ID'
    end
    object sdsCupomParametrosUSA_DESCONTO: TStringField
      FieldName = 'USA_DESCONTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosQTD_MULTIPLICADOR: TSmallintField
      FieldName = 'QTD_MULTIPLICADOR'
    end
    object sdsCupomParametrosACBR_MODELO: TStringField
      FieldName = 'ACBR_MODELO'
      Size = 30
    end
    object sdsCupomParametrosEXIGE_CAIXA_ABERTO: TStringField
      FieldName = 'EXIGE_CAIXA_ABERTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosTERMINAL_ID: TSmallintField
      FieldName = 'TERMINAL_ID'
    end
    object sdsCupomParametrosABRIR_CUPOM: TStringField
      FieldName = 'ABRIR_CUPOM'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosTAMANHO_LINHA: TSmallintField
      FieldName = 'TAMANHO_LINHA'
    end
    object sdsCupomParametrosBAIXAR_CONSUMO: TStringField
      FieldName = 'BAIXAR_CONSUMO'
      Size = 1
    end
    object sdsCupomParametrosFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosEXIBIR_DIALOGO_IMPRESSORA: TStringField
      FieldName = 'EXIBIR_DIALOGO_IMPRESSORA'
      FixedChar = True
      Size = 1
    end
  end
  object dspCupomParametros: TDataSetProvider
    DataSet = sdsCupomParametros
    Left = 96
    Top = 80
  end
  object cdsCupomParametros: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCupomParametros'
    Left = 136
    Top = 80
    object cdsCupomParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCupomParametrosUSA_IPI: TStringField
      FieldName = 'USA_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosSIT_TRIB_ID: TIntegerField
      FieldName = 'SIT_TRIB_ID'
    end
    object cdsCupomParametrosUSA_DESCONTO: TStringField
      FieldName = 'USA_DESCONTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosQTD_MULTIPLICADOR: TSmallintField
      FieldName = 'QTD_MULTIPLICADOR'
    end
    object cdsCupomParametrosACBR_MODELO: TStringField
      FieldName = 'ACBR_MODELO'
    end
    object cdsCupomParametrosEXIGE_CAIXA_ABERTO: TStringField
      FieldName = 'EXIGE_CAIXA_ABERTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosTERMINAL_ID: TSmallintField
      FieldName = 'TERMINAL_ID'
    end
    object cdsCupomParametrosABRIR_CUPOM: TStringField
      FieldName = 'ABRIR_CUPOM'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosTAMANHO_LINHA: TSmallintField
      FieldName = 'TAMANHO_LINHA'
    end
    object cdsCupomParametrosBAIXAR_CONSUMO: TStringField
      FieldName = 'BAIXAR_CONSUMO'
      Size = 1
    end
    object cdsCupomParametrosFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosEXIBIR_DIALOGO_IMPRESSORA: TStringField
      FieldName = 'EXIBIR_DIALOGO_IMPRESSORA'
      FixedChar = True
      Size = 1
    end
  end
  object dsCupomParametros: TDataSource
    DataSet = cdsCupomParametros
    Left = 176
    Top = 80
  end
  object ACBrGAV1: TACBrGAV
    Modelo = gavImpressoraECF
    Left = 128
    Top = 304
  end
  object qCaixaAberto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'T1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'T1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT FIRST 1 F.ID, F.data, F.TIPO_FECHAMENTO,'
      '(SELECT MAX(F2.DATA) DATA2 FROM FECHAMENTO F2'
      '   WHERE F2.terminal_id = :T1  AND F2.data > F.DATA)'
      'FROM FECHAMENTO F'
      'WHERE f.TERMINAL_ID = :T1'
      ' AND f.DATA <= :D1'
      ' AND f.TIPO_FECHAMENTO = '#39'N'#39
      'ORDER BY F.ID DESC')
    SQLConnection = dmDatabase.scoDados
    Left = 192
    Top = 304
    object qCaixaAbertoTIPO_FECHAMENTO: TStringField
      FieldName = 'TIPO_FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object qCaixaAbertoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCaixaAbertoDATA: TDateField
      FieldName = 'DATA'
    end
    object qCaixaAbertoDATA2: TDateField
      FieldName = 'DATA2'
    end
  end
  object ACBrECF1: TACBrECF
    QuebraLinhaRodape = False
    Modelo = ecfDaruma
    Porta = 'COM1'
    TimeOut = 5
    MsgAguarde = 'Aguardando a resposta da Impressora: %d segundos'
    MsgTrabalhando = 'Impressora est'#225' trabalhando'
    MsgRelatorio = 'Imprimindo %s  %d'#170' Via '
    MsgPausaRelatorio = 'Destaque a %d'#170' via, <ENTER> proxima, %d seg.'
    LinhasEntreCupons = 3
    PaginaDeCodigo = 28591
    FormMsgColor = clHighlight
    FormMsgFonte.Charset = DEFAULT_CHARSET
    FormMsgFonte.Color = clWindowText
    FormMsgFonte.Height = -11
    FormMsgFonte.Name = 'MS Sans Serif'
    FormMsgFonte.Style = []
    MemoParams.Strings = (
      '[Cabecalho]'
      'LIN000=<center><b>Nome da Empresa</b></center>'
      'LIN001=<center>Nome da Rua , 1234  -  Bairro</center>'
      'LIN002=<center>Cidade  -  UF  -  99999-999</center>'
      
        'LIN003=<center>CNPJ: 01.234.567/0001-22    IE: 012.345.678.90</c' +
        'enter>'
      
        'LIN004=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>COO: <b><code>NumCupom</code' +
        '></b></td></tr></table>'
      'LIN005=<hr>'
      ' '
      '[Cabecalho_Item]'
      'LIN000=ITEM   CODIGO      DESCRICAO'
      'LIN001=QTD         x UNITARIO       Aliq     VALOR (R$)'
      'LIN002=<hr>'
      
        'MascaraItem=III CCCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDDQQQQ' +
        'QQQQ UU x VVVVVVVVVVVVV AAAAAA TTTTTTTTTTTTT'
      ' '
      '[Rodape]'
      'LIN000=<hr>'
      
        'LIN001=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>Projeto ACBr: <b><code>ACBR<' +
        '/code></b></td></tr></table>'
      'LIN002=<center>Obrigado Volte Sempre</center>'
      'LIN003=<hr>'
      ' '
      '[Formato]'
      'Colunas=48'
      'HTML=1'
      'HTML_Title_Size=2'
      'HTML_Font=<font size="2" face="Lucida Console">')
    Device.Baud = 115200
    Device.HandShake = hsRTS_CTS
    Device.HardFlow = True
    ConfigBarras.MostrarCodigo = True
    ConfigBarras.LarguraLinha = 3
    ConfigBarras.Altura = 10
    Left = 56
    Top = 304
  end
  object sdsSequencial: TSQLDataSet
    CommandText = 'SELECT * FROM SEQUENCIAL WHERE TABELA IN ('#39'NUM_CNF'#39','#39'NUM_NFC'#39')'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 152
    object sdsSequencialTABELA: TStringField
      FieldName = 'TABELA'
      Required = True
      Size = 50
    end
    object sdsSequencialFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object sdsSequencialNUMREGISTRO: TIntegerField
      FieldName = 'NUMREGISTRO'
    end
  end
  object dspSequencial: TDataSetProvider
    DataSet = sdsSequencial
    Left = 88
    Top = 152
  end
  object cdsSequencial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSequencial'
    Left = 128
    Top = 152
    object cdsSequencialTABELA: TStringField
      FieldName = 'TABELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cdsSequencialFILIAL: TIntegerField
      FieldName = 'FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSequencialNUMREGISTRO: TIntegerField
      FieldName = 'NUMREGISTRO'
    end
  end
  object dsSequencial: TDataSource
    DataSet = cdsSequencial
    Left = 176
    Top = 152
  end
end
