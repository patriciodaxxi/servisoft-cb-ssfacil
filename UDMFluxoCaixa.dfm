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
      'select sum(DUP.VLR_RESTANTE) VALOR, DUP.ID_CONTA_ORCAMENTO, DUP.' +
      'DTVENCIMENTO, DUP.TIPO_ES,'#13#10'       cast('#39'DUP'#39' as varchar(3)) as ' +
      'TIPO_REG, ORC.DESCRICAO NOME_ORCAMENTO, DUP.ID_CONTA, CTA.NOME N' +
      'OME_CONTA'#13#10'from DUPLICATA DUP'#13#10'left join CONTA_ORCAMENTO ORC on ' +
      'DUP.ID_CONTA_ORCAMENTO = ORC.ID'#13#10'left join CONTAS CTA on DUP.ID_' +
      'CONTA = CTA.ID'#13#10'where DUP.VLR_RESTANTE > 0 and'#13#10'      DUP.TIPO_M' +
      'OV <> '#39'H'#39' and'#13#10'      DUP.DTVENCIMENTO between :DTINICIAL and :DT' +
      'FINAL AND'#13#10'      DUP.FILIAL = :FILIAL'#13#10'group by DUP.ID_CONTA_ORC' +
      'AMENTO, DUP.DTVENCIMENTO, DUP.TIPO_ES, ORC.DESCRICAO, DUP.ID_CON' +
      'TA, CTA.NOME'#13#10#13#10'union all'#13#10#13#10'select sum(CHE.VALOR) VALOR, CHE.ID' +
      '_CONTA_ORCAMENTO, CHE.DTBOM_PARA DTVENCIMENTO, cast('#39'S'#39' as varch' +
      'ar(1)) as TIPO_ES,'#13#10'       cast('#39'CHE'#39' as varchar(3)) as TIPO_REG' +
      ', ORC.DESCRICAO NOME_ORCAMENTO, CHE.ID_CONTA, CTA.NOME NOME_CONT' +
      'A'#13#10'from CHEQUE CHE'#13#10'left join CONTA_ORCAMENTO ORC on CHE.ID_CONT' +
      'A_ORCAMENTO = ORC.ID'#13#10'left join CONTAS CTA on CHE.ID_CONTA = CTA' +
      '.ID'#13#10'where CHE.DTCOMPENSADO is null and'#13#10'      CHE.DTBOM_PARA be' +
      'tween :DTINICIAL and :DTFINAL AND'#13#10'      CHE.FILIAL = :FILIAL'#13#10'g' +
      'roup by CHE.ID_CONTA_ORCAMENTO, CHE.DTBOM_PARA, ORC.DESCRICAO, C' +
      'HE.ID_CONTA, CTA.NOME   '
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
        DataType = ftInteger
        Name = 'FILIAL'
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
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
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
    Left = 272
    Top = 32
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
    Left = 312
    Top = 32
  end
  object mData: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Data'
    Params = <>
    Left = 272
    Top = 80
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
    Left = 312
    Top = 80
  end
  object sdsAtrasado: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select sum(DUP.VLR_RESTANTE) VALOR, DUP.ID_CONTA_ORCAMENTO, DUP.' +
      'TIPO_ES, cast('#39'DUP'#39' as varchar(3)) as TIPO_REG,'#13#10'       ORC.DESC' +
      'RICAO NOME_ORCAMENTO'#13#10'from DUPLICATA DUP'#13#10'left join CONTA_ORCAME' +
      'NTO ORC on DUP.ID_CONTA_ORCAMENTO = ORC.ID'#13#10'where DUP.VLR_RESTAN' +
      'TE > 0 and'#13#10'      DUP.TIPO_MOV <> '#39'H'#39' and'#13#10'      DUP.DTVENCIMENT' +
      'O < :DATA AND'#13#10'      DUP.FILIAL = :FILIAL'#13#10'group by DUP.ID_CONTA' +
      '_ORCAMENTO, DUP.TIPO_ES, ORC.DESCRICAO'#13#10#13#10'union all'#13#10#13#10'select su' +
      'm(CHE.VALOR) VALOR, CHE.ID_CONTA_ORCAMENTO, cast('#39'S'#39' as varchar(' +
      '1)) as TIPO_ES,'#13#10'       cast('#39'CHE'#39' as varchar(3)) as TIPO_REG, O' +
      'RC.DESCRICAO NOME_ORCAMENTO'#13#10'from CHEQUE CHE'#13#10'left join CONTA_OR' +
      'CAMENTO ORC on CHE.ID_CONTA_ORCAMENTO = ORC.ID'#13#10'where CHE.DTCOMP' +
      'ENSADO is null and'#13#10'      CHE.DTBOM_PARA < :DATA AND'#13#10'      CHE.' +
      'FILIAL = :FILIAL'#13#10'group by CHE.ID_CONTA_ORCAMENTO, ORC.DESCRICAO' +
      ' '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
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
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select sum(S.VLR_SALDO) VLR_SALDO'
      'from SALDO_CONTA S'
      'inner join CONTAS C on S.ID_CONTA = C.ID'
      'where (C.TIPO_CONTA = '#39'C'#39') or (C.TIPO_CONTA = '#39'B'#39') and'
      '      C.FILIAL = :FILIAL ')
    SQLConnection = dmDatabase.scoDados
    Left = 280
    Top = 160
    object qSaldoVLR_SALDO: TFloatField
      FieldName = 'VLR_SALDO'
    end
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 160
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 88
    Top = 160
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 120
    Top = 160
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 152
    Top = 160
  end
end
