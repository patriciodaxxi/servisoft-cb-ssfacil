object DMFluxoCaixa: TDMFluxoCaixa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 509
  Top = 197
  Height = 440
  Width = 503
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(DUP.VLR_RESTANTE) VALOR, DUP.ID_CONTA_ORCAMENTO, DUP.' +
      'DTVENCIMENTO,'#13#10'DUP.TIPO_ES, CAST('#39'DUP'#39' AS VARCHAR(3)) AS TIPO_RE' +
      'G, ORC.DESCRICAO NOME_ORCAMENTO,'#13#10'DUP.ID_CONTA, CTA.NOME NOME_CO' +
      'NTA'#13#10'FROM DUPLICATA DUP'#13#10'LEFT JOIN CONTA_ORCAMENTO ORC'#13#10'ON DUP.I' +
      'D_CONTA_ORCAMENTO = ORC.ID'#13#10'LEFT JOIN CONTAS CTA'#13#10'ON DUP.ID_CONT' +
      'A = CTA.ID'#13#10'WHERE DUP.VLR_RESTANTE > 0'#13#10'  AND DUP.TIPO_MOV <> '#39'H' +
      #39#13#10'  AND DUP.DTVENCIMENTO BETWEEN :DTINICIAL AND :DTFINAL'#13#10'GROUP' +
      ' BY DUP.ID_CONTA_ORCAMENTO, DUP.DTVENCIMENTO, DUP.TIPO_ES, ORC.D' +
      'ESCRICAO, DUP.ID_CONTA, CTA.NOME'#13#10#13#10'UNION ALL'#13#10#13#10'SELECT SUM(CHE.' +
      'VALOR) VALOR, CHE.ID_CONTA_ORCAMENTO, CHE.DTBOM_PARA DTVENCIMENT' +
      'O,'#13#10'CAST('#39'S'#39' AS VARCHAR(1)) AS TIPO_ES, CAST('#39'CHE'#39' AS VARCHAR(3)' +
      ') AS TIPO_REG, ORC.DESCRICAO NOME_ORCAMENTO,'#13#10'CHE.ID_CONTA, CTA.' +
      'NOME NOME_CONTA'#13#10'FROM CHEQUE CHE'#13#10'LEFT JOIN CONTA_ORCAMENTO ORC'#13 +
      #10'ON CHE.ID_CONTA_ORCAMENTO = ORC.ID'#13#10'LEFT JOIN CONTAS CTA'#13#10'ON CH' +
      'E.ID_CONTA = CTA.ID'#13#10'WHERE CHE.DTCOMPENSADO IS NULL'#13#10'  AND CHE.D' +
      'TBOM_PARA BETWEEN :DTINICIAL AND :DTFINAL'#13#10'GROUP BY CHE.ID_CONTA' +
      '_ORCAMENTO, CHE.DTBOM_PARA, ORC.DESCRICAO, CHE.ID_CONTA, CTA.NOM' +
      'E'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsConsultaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsConsultaID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsConsultaDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsConsultaTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object sdsConsultaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Required = True
      Size = 3
    end
    object sdsConsultaNOME_ORCAMENTO: TStringField
      FieldName = 'NOME_ORCAMENTO'
      Size = 50
    end
    object sdsConsultaID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsConsultaNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 30
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 96
    Top = 32
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 144
    Top = 32
    object cdsConsultaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsConsultaID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsConsultaDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsConsultaTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsConsultaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Required = True
      Size = 3
    end
    object cdsConsultaNOME_ORCAMENTO: TStringField
      FieldName = 'NOME_ORCAMENTO'
      Size = 50
    end
    object cdsConsultaID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsConsultaNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 30
    end
  end
  object mContaOrc: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Conta_Orcamento'
        DataType = ftInteger
      end
      item
        Name = 'Tipo_Reg'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Nome_Orcamento'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Tipo_ES'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Valor_01'
        DataType = ftFloat
      end
      item
        Name = 'Valor_02'
        DataType = ftFloat
      end
      item
        Name = 'Valor_03'
        DataType = ftFloat
      end
      item
        Name = 'Valor_04'
        DataType = ftFloat
      end
      item
        Name = 'Valor_05'
        DataType = ftFloat
      end
      item
        Name = 'Valor_06'
        DataType = ftFloat
      end
      item
        Name = 'Valor_07'
        DataType = ftFloat
      end
      item
        Name = 'Valor_08'
        DataType = ftFloat
      end
      item
        Name = 'Valor_09'
        DataType = ftFloat
      end
      item
        Name = 'Valor_10'
        DataType = ftFloat
      end
      item
        Name = 'Valor_11'
        DataType = ftFloat
      end
      item
        Name = 'Valor_12'
        DataType = ftFloat
      end
      item
        Name = 'Valor_13'
        DataType = ftFloat
      end
      item
        Name = 'Valor_14'
        DataType = ftFloat
      end
      item
        Name = 'Valor_15'
        DataType = ftFloat
      end
      item
        Name = 'Valor_16'
        DataType = ftFloat
      end
      item
        Name = 'Valor_17'
        DataType = ftFloat
      end
      item
        Name = 'Valor_18'
        DataType = ftFloat
      end
      item
        Name = 'Valor_19'
        DataType = ftFloat
      end
      item
        Name = 'Valor_20'
        DataType = ftFloat
      end
      item
        Name = 'Valor_21'
        DataType = ftFloat
      end
      item
        Name = 'Valor_22'
        DataType = ftFloat
      end
      item
        Name = 'Valor_23'
        DataType = ftFloat
      end
      item
        Name = 'Valor_24'
        DataType = ftFloat
      end
      item
        Name = 'Valor_25'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Atrasado'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 96
    Top = 184
    Data = {
      7F0200009619E0BD0100000018000000200000000000030000007F021249445F
      436F6E74615F4F7263616D656E746F0400010000000000085469706F5F526567
      01004900000001000557494454480200020005000E4E6F6D655F4F7263616D65
      6E746F0100490000000100055749445448020002003C00094465736372696361
      6F0100490000000100055749445448020002001E00075469706F5F4553010049
      00000001000557494454480200020001000856616C6F725F3031080004000000
      00000856616C6F725F303208000400000000000856616C6F725F303308000400
      000000000856616C6F725F303408000400000000000856616C6F725F30350800
      0400000000000856616C6F725F303608000400000000000856616C6F725F3037
      08000400000000000856616C6F725F303808000400000000000856616C6F725F
      303908000400000000000856616C6F725F313008000400000000000856616C6F
      725F313108000400000000000856616C6F725F31320800040000000000085661
      6C6F725F313308000400000000000856616C6F725F3134080004000000000008
      56616C6F725F313508000400000000000856616C6F725F313608000400000000
      000856616C6F725F313708000400000000000856616C6F725F31380800040000
      0000000856616C6F725F313908000400000000000856616C6F725F3230080004
      00000000000856616C6F725F323108000400000000000856616C6F725F323208
      000400000000000856616C6F725F323308000400000000000856616C6F725F32
      3408000400000000000856616C6F725F323508000400000000000C566C725F41
      7472617361646F080004000000000009566C725F546F74616C08000400000000
      000000}
    object mContaOrcID_Conta_Orcamento: TIntegerField
      FieldName = 'ID_Conta_Orcamento'
    end
    object mContaOrcTipo_Reg: TStringField
      FieldName = 'Tipo_Reg'
      Size = 5
    end
    object mContaOrcDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
    object mContaOrcNome_Orcamento: TStringField
      FieldName = 'Nome_Orcamento'
      Size = 60
    end
    object mContaOrcTipo_ES: TStringField
      FieldName = 'Tipo_ES'
      Size = 1
    end
    object mContaOrcVlr_Atrasado: TFloatField
      FieldName = 'Vlr_Atrasado'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_01: TFloatField
      FieldName = 'Valor_01'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_02: TFloatField
      FieldName = 'Valor_02'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_03: TFloatField
      FieldName = 'Valor_03'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_04: TFloatField
      FieldName = 'Valor_04'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_05: TFloatField
      FieldName = 'Valor_05'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_06: TFloatField
      FieldName = 'Valor_06'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_07: TFloatField
      FieldName = 'Valor_07'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_08: TFloatField
      FieldName = 'Valor_08'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_09: TFloatField
      FieldName = 'Valor_09'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_10: TFloatField
      FieldName = 'Valor_10'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_11: TFloatField
      FieldName = 'Valor_11'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_12: TFloatField
      FieldName = 'Valor_12'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_13: TFloatField
      FieldName = 'Valor_13'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_14: TFloatField
      FieldName = 'Valor_14'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_15: TFloatField
      FieldName = 'Valor_15'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_16: TFloatField
      FieldName = 'Valor_16'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_17: TFloatField
      FieldName = 'Valor_17'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_18: TFloatField
      FieldName = 'Valor_18'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_19: TFloatField
      FieldName = 'Valor_19'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_20: TFloatField
      FieldName = 'Valor_20'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_21: TFloatField
      FieldName = 'Valor_21'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_22: TFloatField
      FieldName = 'Valor_22'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_23: TFloatField
      FieldName = 'Valor_23'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_24: TFloatField
      FieldName = 'Valor_24'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcValor_25: TFloatField
      FieldName = 'Valor_25'
      DisplayFormat = '###,###,##0.00'
    end
    object mContaOrcVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsmContaOrc: TDataSource
    DataSet = mContaOrc
    Left = 136
    Top = 184
  end
  object mData: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Data'
    Params = <>
    Left = 280
    Top = 128
    Data = {
      360000009619E0BD010000001800000002000000000003000000360004446174
      61040006000000000006496E6469636504000100000000000000}
    object mDataData: TDateField
      FieldName = 'Data'
    end
    object mDataIndice: TIntegerField
      FieldName = 'Indice'
    end
  end
  object dsmData: TDataSource
    DataSet = mData
    Left = 320
    Top = 128
  end
  object sdsAtrasado: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(DUP.VLR_RESTANTE) VALOR, DUP.ID_CONTA_ORCAMENTO, DUP.' +
      'TIPO_ES, CAST('#39'DUP'#39' AS VARCHAR(3)) AS TIPO_REG, ORC.DESCRICAO NO' +
      'ME_ORCAMENTO'#13#10'FROM DUPLICATA DUP'#13#10'LEFT JOIN CONTA_ORCAMENTO ORC'#13 +
      #10'ON DUP.ID_CONTA_ORCAMENTO = ORC.ID'#13#10'WHERE DUP.VLR_RESTANTE > 0'#13 +
      #10'  AND DUP.TIPO_MOV <> '#39'H'#39#13#10'  AND DUP.DTVENCIMENTO < :DATA'#13#10'GROU' +
      'P BY DUP.ID_CONTA_ORCAMENTO, DUP.TIPO_ES, ORC.DESCRICAO'#13#10#13#10'UNION' +
      ' ALL'#13#10#13#10'SELECT SUM(CHE.VALOR) VALOR, CHE.ID_CONTA_ORCAMENTO,'#13#10'CA' +
      'ST('#39'S'#39' AS VARCHAR(1)) AS TIPO_ES, CAST('#39'CHE'#39' AS VARCHAR(3)) AS T' +
      'IPO_REG, ORC.DESCRICAO NOME_ORCAMENTO'#13#10'FROM CHEQUE CHE'#13#10'LEFT JOI' +
      'N CONTA_ORCAMENTO ORC'#13#10'ON CHE.ID_CONTA_ORCAMENTO = ORC.ID'#13#10'WHERE' +
      ' CHE.DTCOMPENSADO IS NULL'#13#10'  AND CHE.DTBOM_PARA < :DATA'#13#10'GROUP B' +
      'Y CHE.ID_CONTA_ORCAMENTO, ORC.DESCRICAO '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 96
    object sdsAtrasadoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsAtrasadoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsAtrasadoTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object sdsAtrasadoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Required = True
      Size = 3
    end
    object sdsAtrasadoNOME_ORCAMENTO: TStringField
      FieldName = 'NOME_ORCAMENTO'
      Size = 50
    end
  end
  object dspAtrasado: TDataSetProvider
    DataSet = sdsAtrasado
    Left = 96
    Top = 96
  end
  object cdsAtrasado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAtrasado'
    Left = 144
    Top = 96
    object cdsAtrasadoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsAtrasadoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsAtrasadoTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsAtrasadoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Required = True
      Size = 3
    end
    object cdsAtrasadoNOME_ORCAMENTO: TStringField
      FieldName = 'NOME_ORCAMENTO'
      Size = 50
    end
  end
  object qSaldo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT SUM(S.vlr_saldo) VLR_SALDO'
      'FROM SALDO_CONTA S'
      'INNER JOIN CONTAS C'
      'ON S.ID_CONTA = C.ID'
      'WHERE (C.TIPO_CONTA = '#39'C'#39')'
      '  or (C.TIPO_CONTA = '#39'B'#39')')
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 232
    object qSaldoVLR_SALDO: TFloatField
      FieldName = 'VLR_SALDO'
    end
  end
end
