object DMConsFinanceiro: TDMConsFinanceiro
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 221
  Top = 135
  Height = 653
  Width = 874
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 40
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 144
    Top = 40
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 192
    Top = 40
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
    Left = 232
    Top = 40
  end
  object sdsConsulta_Conta_Orc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT sum(DUP.VLR_PARCELA) VLR_PARCELA, sum(DUP.VLR_DEVOLUCAO) ' +
      'VLR_DEVOLUCAO,'#13#10'sum(DUP.VLR_RESTANTE) VLR_RESTANTE, sum(DUP.VLR_' +
      'PAGO) VLR_PAGO, DUP.TIPO_ES,'#13#10'ORC.descricao NOME_CONTA_ORCAMENTO' +
      ','#13#10'ORC.codigo COD_CONTA_ORCAMENTO, DUP.ID_CONTA_ORCAMENTO, ORC.S' +
      'UPERIOR, ORC.NIVEL'#13#10'FROM DUPLICATA DUP'#13#10'LEFT JOIN CONTA_ORCAMENT' +
      'O ORC'#13#10'ON DUP.id_conta_orcamento = ORC.ID'#13#10'WHERE DUP.TIPO_MOV <>' +
      ' '#39'H'#39#13#10'GROUP BY DUP.TIPO_ES,'#13#10'ORC.descricao, ORC.codigo, DUP.ID_C' +
      'ONTA_ORCAMENTO, ORC.SUPERIOR, ORC.NIVEL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 104
  end
  object dspConsulta_Conta_Orc: TDataSetProvider
    DataSet = sdsConsulta_Conta_Orc
    Left = 144
    Top = 104
  end
  object cdsConsulta_Conta_Orc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Conta_Orc'
    Left = 192
    Top = 104
    object cdsConsulta_Conta_OrcVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
    end
    object cdsConsulta_Conta_OrcVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object cdsConsulta_Conta_OrcVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsConsulta_Conta_OrcVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
    end
    object cdsConsulta_Conta_OrcTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsConsulta_Conta_OrcNOME_CONTA_ORCAMENTO: TStringField
      FieldName = 'NOME_CONTA_ORCAMENTO'
      Size = 50
    end
    object cdsConsulta_Conta_OrcCOD_CONTA_ORCAMENTO: TStringField
      FieldName = 'COD_CONTA_ORCAMENTO'
    end
    object cdsConsulta_Conta_OrcID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsConsulta_Conta_OrcSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsConsulta_Conta_OrcNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object mConta_Orc: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Tipo_ES'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Pago'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Restante'
        DataType = ftFloat
      end
      item
        Name = 'Tipo_Conta'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Qtd_Restante'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID'
    Params = <>
    StoreDefs = True
    OnNewRecord = mConta_OrcNewRecord
    Left = 416
    Top = 56
    Data = {
      E10000009619E0BD010000001800000009000000000003000000E10002494404
      0001000000000006436F6469676F010049000000010005574944544802000200
      1400044E6F6D650100490000000100055749445448020002003C00075469706F
      5F4553010049000000010005574944544802000200010009566C725F546F7461
      6C080004000000000008566C725F5061676F08000400000000000C566C725F52
      657374616E746508000400000000000A5469706F5F436F6E7461010049000000
      01000557494454480200020001000C5174645F52657374616E74650800040000
      0000000000}
    object mConta_OrcID: TIntegerField
      FieldName = 'ID'
    end
    object mConta_OrcCodigo: TStringField
      FieldName = 'Codigo'
    end
    object mConta_OrcNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object mConta_OrcTipo_ES: TStringField
      FieldName = 'Tipo_ES'
      Size = 1
    end
    object mConta_OrcVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
      DisplayFormat = '###,###,##0.00'
    end
    object mConta_OrcVlr_Pago: TFloatField
      FieldName = 'Vlr_Pago'
      DisplayFormat = '###,###,##0.00'
    end
    object mConta_OrcVlr_Restante: TFloatField
      FieldName = 'Vlr_Restante'
      DisplayFormat = '###,###,##0.00'
    end
    object mConta_OrcTipo_Conta: TStringField
      FieldName = 'Tipo_Conta'
      Size = 1
    end
    object mConta_OrcQtd_Restante: TFloatField
      FieldName = 'Qtd_Restante'
    end
  end
  object qConta_Orcamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTA_ORCAMENTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 48
    object qConta_OrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qConta_OrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qConta_OrcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object qConta_OrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qConta_OrcamentoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object qConta_OrcamentoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object qConta_OrcamentoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qConta_OrcamentoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object qConta_OrcamentoDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
    end
    object qConta_OrcamentoDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object qConta_OrcamentoTIPO_CALCULO: TStringField
      FieldName = 'TIPO_CALCULO'
      FixedChar = True
      Size = 1
    end
    object qConta_OrcamentoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qConta_OrcamentoTIPO_DESPESA: TStringField
      FieldName = 'TIPO_DESPESA'
      FixedChar = True
      Size = 1
    end
    object qConta_OrcamentoTIPO_RD: TStringField
      FieldName = 'TIPO_RD'
      FixedChar = True
      Size = 1
    end
  end
  object dsmConta_Orc: TDataSource
    DataSet = mConta_Orc
    Left = 456
    Top = 56
  end
  object sdsConsulta_Conta_Orc_Dt: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT sum(DUP.VLR_PARCELA) VLR_PARCELA, sum(DUP.VLR_DEVOLUCAO) ' +
      'VLR_DEVOLUCAO,'#13#10'sum(DUP.VLR_RESTANTE) VLR_RESTANTE, sum(DUP.VLR_' +
      'PAGO) VLR_PAGO, DUP.TIPO_ES,'#13#10'ORC.descricao NOME_CONTA_ORCAMENTO' +
      ','#13#10'ORC.codigo COD_CONTA_ORCAMENTO, DUP.ID_CONTA_ORCAMENTO, ORC.S' +
      'UPERIOR, ORC.NIVEL,'#13#10'DUP.dtvencimento, ORC.TIPO TIPO_CONTA'#13#10'FROM' +
      ' DUPLICATA DUP'#13#10'LEFT JOIN CONTA_ORCAMENTO ORC'#13#10'ON DUP.id_conta_o' +
      'rcamento = ORC.ID'#13#10'WHERE DUP.TIPO_MOV <> '#39'H'#39#13#10'GROUP BY DUP.TIPO_' +
      'ES,'#13#10'ORC.descricao, ORC.codigo, DUP.ID_CONTA_ORCAMENTO, ORC.SUPE' +
      'RIOR, ORC.NIVEL,'#13#10'DUP.dtvencimento, ORC.TIPO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 168
  end
  object dspConsulta_Conta_Orc_Dt: TDataSetProvider
    DataSet = sdsConsulta_Conta_Orc_Dt
    Left = 144
    Top = 168
  end
  object cdsConsulta_Conta_Orc_Dt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Conta_Orc_Dt'
    Left = 192
    Top = 168
    object cdsConsulta_Conta_Orc_DtVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
    end
    object cdsConsulta_Conta_Orc_DtVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object cdsConsulta_Conta_Orc_DtVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsConsulta_Conta_Orc_DtVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
    end
    object cdsConsulta_Conta_Orc_DtTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsConsulta_Conta_Orc_DtNOME_CONTA_ORCAMENTO: TStringField
      FieldName = 'NOME_CONTA_ORCAMENTO'
      Size = 50
    end
    object cdsConsulta_Conta_Orc_DtCOD_CONTA_ORCAMENTO: TStringField
      FieldName = 'COD_CONTA_ORCAMENTO'
    end
    object cdsConsulta_Conta_Orc_DtID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsConsulta_Conta_Orc_DtSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsConsulta_Conta_Orc_DtNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsConsulta_Conta_Orc_DtDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsConsulta_Conta_Orc_DtTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
  end
  object mConta_Orc_Dt_ant: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Tipo_ES'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_Conta_Orc'
        DataType = ftInteger
      end
      item
        Name = 'Cod_Conta_Orc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Nome_Conta_Orc'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Mes'
        DataType = ftInteger
      end
      item
        Name = 'Ano'
        DataType = ftInteger
      end
      item
        Name = 'Desc_Mes'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Vlr_Previsto1'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Realizado1'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Previsto2'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Realizado2'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Previsto3'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Realizado3'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Previsto4'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Realizado4'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Previsto5'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Realizado5'
        DataType = ftFloat
      end
      item
        Name = 'Tipo_Reg'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Tipo_Conta'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 416
    Top = 104
    Data = {
      E20100009619E0BD010000001800000013000000000003000000E20107546970
      6F5F455301004900000001000557494454480200020001000C49445F436F6E74
      615F4F726304000100000000000D436F645F436F6E74615F4F72630100490000
      000100055749445448020002001E000E4E6F6D655F436F6E74615F4F72630100
      490000000100055749445448020002003C00034D657304000100000000000341
      6E6F040001000000000008446573635F4D657301004900000001000557494454
      48020002000F000D566C725F507265766973746F3108000400000000000E566C
      725F5265616C697A61646F3108000400000000000D566C725F50726576697374
      6F3208000400000000000E566C725F5265616C697A61646F3208000400000000
      000D566C725F507265766973746F3308000400000000000E566C725F5265616C
      697A61646F3308000400000000000D566C725F507265766973746F3408000400
      000000000E566C725F5265616C697A61646F3408000400000000000D566C725F
      507265766973746F3508000400000000000E566C725F5265616C697A61646F35
      0800040000000000085469706F5F526567010049000000010005574944544802
      00020001000A5469706F5F436F6E746101004900000001000557494454480200
      020001000000}
    object mConta_Orc_Dt_antTipo_ES: TStringField
      FieldName = 'Tipo_ES'
      Size = 1
    end
    object mConta_Orc_Dt_antID_Conta_Orc: TIntegerField
      FieldName = 'ID_Conta_Orc'
    end
    object mConta_Orc_Dt_antCod_Conta_Orc: TStringField
      FieldName = 'Cod_Conta_Orc'
      Size = 30
    end
    object mConta_Orc_Dt_antNome_Conta_Orc: TStringField
      FieldName = 'Nome_Conta_Orc'
      Size = 60
    end
    object mConta_Orc_Dt_antMes: TIntegerField
      FieldName = 'Mes'
    end
    object mConta_Orc_Dt_antAno: TIntegerField
      FieldName = 'Ano'
    end
    object mConta_Orc_Dt_antDesc_Mes: TStringField
      FieldName = 'Desc_Mes'
      Size = 15
    end
    object mConta_Orc_Dt_antVlr_Previsto1: TFloatField
      FieldName = 'Vlr_Previsto1'
      DisplayFormat = '0.00'
    end
    object mConta_Orc_Dt_antVlr_Realizado1: TFloatField
      FieldName = 'Vlr_Realizado1'
      DisplayFormat = '0.00'
    end
    object mConta_Orc_Dt_antVlr_Previsto2: TFloatField
      FieldName = 'Vlr_Previsto2'
      DisplayFormat = '0.00'
    end
    object mConta_Orc_Dt_antVlr_Realizado2: TFloatField
      FieldName = 'Vlr_Realizado2'
      DisplayFormat = '0.00'
    end
    object mConta_Orc_Dt_antVlr_Previsto3: TFloatField
      FieldName = 'Vlr_Previsto3'
      DisplayFormat = '0.00'
    end
    object mConta_Orc_Dt_antVlr_Realizado3: TFloatField
      FieldName = 'Vlr_Realizado3'
      DisplayFormat = '0.00'
    end
    object mConta_Orc_Dt_antVlr_Previsto4: TFloatField
      FieldName = 'Vlr_Previsto4'
      DisplayFormat = '0.00'
    end
    object mConta_Orc_Dt_antVlr_Realizado4: TFloatField
      FieldName = 'Vlr_Realizado4'
      DisplayFormat = '0.00'
    end
    object mConta_Orc_Dt_antVlr_Previsto5: TFloatField
      FieldName = 'Vlr_Previsto5'
      DisplayFormat = '0.00'
    end
    object mConta_Orc_Dt_antVlr_Realizado5: TFloatField
      FieldName = 'Vlr_Realizado5'
      DisplayFormat = '0.00'
    end
    object mConta_Orc_Dt_antTipo_Reg: TStringField
      FieldName = 'Tipo_Reg'
      Size = 1
    end
    object mConta_Orc_Dt_antTipo_Conta: TStringField
      FieldName = 'Tipo_Conta'
      Size = 1
    end
  end
  object dsmConta_Orc_Dt_ant: TDataSource
    DataSet = mConta_Orc_Dt_ant
    Left = 456
    Top = 104
  end
  object mConta_Orc_Dt: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Tipo_ES'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_Conta_Orc'
        DataType = ftInteger
      end
      item
        Name = 'Cod_Conta_Orc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Nome_Conta_Orc'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Mes'
        DataType = ftInteger
      end
      item
        Name = 'Ano'
        DataType = ftInteger
      end
      item
        Name = 'Desc_Mes'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Desc_Valor1'
        ChildDefs = <
          item
            Name = 'Vlr_Previsto1'
            DataType = ftFloat
          end
          item
            Name = 'Vlr_Realizado1'
            DataType = ftFloat
          end>
        DataType = ftADT
        Size = 2
      end
      item
        Name = 'Desc_Valor2'
        ChildDefs = <
          item
            Name = 'Vlr_Previsto2'
            DataType = ftFloat
          end
          item
            Name = 'Vlr_Realizado2'
            DataType = ftFloat
          end>
        DataType = ftADT
        Size = 2
      end
      item
        Name = 'Desc_Valor3'
        ChildDefs = <
          item
            Name = 'Vlr_Previsto3'
            DataType = ftFloat
          end
          item
            Name = 'Vlr_Realizado3'
            DataType = ftFloat
          end>
        DataType = ftADT
        Size = 2
      end
      item
        Name = 'Desc_Valor4'
        ChildDefs = <
          item
            Name = 'Vlr_Previsto4'
            DataType = ftFloat
          end
          item
            Name = 'Vlr_Realizado4'
            DataType = ftFloat
          end>
        DataType = ftADT
        Size = 2
      end
      item
        Name = 'Desc_Valor5'
        ChildDefs = <
          item
            Name = 'Vlr_Previsto5'
            DataType = ftFloat
          end
          item
            Name = 'Vlr_Realizado5'
            DataType = ftFloat
          end>
        DataType = ftADT
        Size = 2
      end
      item
        Name = 'Tipo_Reg'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Tipo_Conta'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 416
    Top = 152
    Data = {
      460200009619E0BD020000001800000018000000000003000000460207546970
      6F5F455301004900000001000557494454480200020001000C49445F436F6E74
      615F4F726304000100000000000D436F645F436F6E74615F4F72630100490000
      000100055749445448020002001E000E4E6F6D655F436F6E74615F4F72630100
      490000000100055749445448020002003C00034D657304000100000000000341
      6E6F040001000000000008446573635F4D657301004900000001000557494454
      48020002003C000B446573635F56616C6F723102000C01000000000D566C725F
      507265766973746F3108000400000000000E566C725F5265616C697A61646F31
      08000400000000000B446573635F56616C6F723202000C01000000000D566C72
      5F507265766973746F3208000400000000000E566C725F5265616C697A61646F
      3208000400000000000B446573635F56616C6F723302000C01000000000D566C
      725F507265766973746F3308000400000000000E566C725F5265616C697A6164
      6F3308000400000000000B446573635F56616C6F723402000C01000000000D56
      6C725F507265766973746F3408000400000000000E566C725F5265616C697A61
      646F3408000400000000000B446573635F56616C6F723502000C01000000000D
      566C725F507265766973746F3508000400000000000E566C725F5265616C697A
      61646F350800040000000000085469706F5F5265670100490000000100055749
      4454480200020001000A5469706F5F436F6E7461010049000000010005574944
      54480200020001000000}
    object mConta_Orc_DtTipo_ES: TStringField
      FieldName = 'Tipo_ES'
      Size = 1
    end
    object mConta_Orc_DtID_Conta_Orc: TIntegerField
      FieldName = 'ID_Conta_Orc'
    end
    object mConta_Orc_DtCod_Conta_Orc: TStringField
      FieldName = 'Cod_Conta_Orc'
      Size = 30
    end
    object mConta_Orc_DtNome_Conta_Orc: TStringField
      FieldName = 'Nome_Conta_Orc'
      Size = 60
    end
    object mConta_Orc_DtMes: TIntegerField
      FieldName = 'Mes'
    end
    object mConta_Orc_DtAno: TIntegerField
      FieldName = 'Ano'
    end
    object mConta_Orc_DtDesc_Mes: TStringField
      FieldName = 'Desc_Mes'
      Size = 60
    end
    object mConta_Orc_DtDesc_Valor1: TADTField
      FieldName = 'Desc_Valor1'
      object mConta_Orc_DtDesc_Valor1Vlr_Previsto1: TFloatField
        FieldName = 'Vlr_Previsto1'
        DisplayFormat = '0.00'
      end
      object mConta_Orc_DtDesc_Valor1Vlr_Realizado1: TFloatField
        FieldName = 'Vlr_Realizado1'
        DisplayFormat = '0.00'
      end
    end
    object mConta_Orc_DtDesc_Valor2: TADTField
      FieldName = 'Desc_Valor2'
      object mConta_Orc_DtDesc_Valor2Vlr_Previsto2: TFloatField
        FieldName = 'Vlr_Previsto2'
        DisplayFormat = '0.00'
      end
      object mConta_Orc_DtDesc_Valor2Vlr_Realizado2: TFloatField
        FieldName = 'Vlr_Realizado2'
        DisplayFormat = '0.00'
      end
    end
    object mConta_Orc_DtDesc_Valor3: TADTField
      FieldName = 'Desc_Valor3'
      object mConta_Orc_DtDesc_Valor3Vlr_Previsto3: TFloatField
        FieldName = 'Vlr_Previsto3'
        DisplayFormat = '0.00'
      end
      object mConta_Orc_DtDesc_Valor3Vlr_Realizado3: TFloatField
        FieldName = 'Vlr_Realizado3'
        DisplayFormat = '0.00'
      end
    end
    object mConta_Orc_DtDesc_Valor4: TADTField
      FieldName = 'Desc_Valor4'
      object mConta_Orc_DtDesc_Valor4Vlr_Previsto4: TFloatField
        FieldName = 'Vlr_Previsto4'
        DisplayFormat = '0.00'
      end
      object mConta_Orc_DtDesc_Valor4Vlr_Realizado4: TFloatField
        FieldName = 'Vlr_Realizado4'
        DisplayFormat = '0.00'
      end
    end
    object mConta_Orc_DtDesc_Valor5: TADTField
      FieldName = 'Desc_Valor5'
      object mConta_Orc_DtDesc_Valor5Vlr_Previsto5: TFloatField
        FieldName = 'Vlr_Previsto5'
        DisplayFormat = '0.00'
      end
      object mConta_Orc_DtDesc_Valor5Vlr_Realizado5: TFloatField
        FieldName = 'Vlr_Realizado5'
        DisplayFormat = '0.00'
      end
    end
    object mConta_Orc_DtTipo_Reg: TStringField
      FieldName = 'Tipo_Reg'
      Size = 1
    end
    object mConta_Orc_DtTipo_Conta: TStringField
      FieldName = 'Tipo_Conta'
      Size = 1
    end
  end
  object dsmConta_Orc_Dt: TDataSource
    DataSet = mConta_Orc_Dt
    Left = 456
    Top = 152
  end
  object sdsDespesa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DUP.numduplicata, DUP.dtemissao, DUP.id_conta_orcamento, ' +
      'DUP.id_pessoa,'#13#10'DUP.dtvencimento, DUP.numnota, DUP.serie, DUP.ti' +
      'po_es, DUP.tipo_lancamento,'#13#10'DUP.tipo_mov, DUP.vlr_parcela, DUP.' +
      'ID_NOTA, DUP.vlr_restante, DUP.vlr_pago, '#13#10'PES.NOME NOME_PESSOA,' +
      ' ORC.descricao NOME_CONTA_ORCAMENTO'#13#10'FROM DUPLICATA DUP'#13#10'INNER J' +
      'OIN PESSOA PES'#13#10'ON DUP.id_pessoa = PES.CODIGO'#13#10'LEFT JOIN CONTA_O' +
      'RCAMENTO ORC'#13#10'ON DUP.id_conta_orcamento = ORC.id'#13#10'WHERE DUP.tipo' +
      '_es = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 248
  end
  object dspDespesa: TDataSetProvider
    DataSet = sdsDespesa
    Left = 144
    Top = 248
  end
  object cdsDespesa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDespesa'
    Left = 192
    Top = 248
    object cdsDespesaNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object cdsDespesaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsDespesaID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsDespesaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDespesaDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsDespesaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsDespesaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsDespesaTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsDespesaTIPO_LANCAMENTO: TStringField
      FieldName = 'TIPO_LANCAMENTO'
      Size = 3
    end
    object cdsDespesaTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      FixedChar = True
      Size = 1
    end
    object cdsDespesaVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
    end
    object cdsDespesaID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsDespesaNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsDespesaNOME_CONTA_ORCAMENTO: TStringField
      FieldName = 'NOME_CONTA_ORCAMENTO'
      Size = 50
    end
    object cdsDespesaVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsDespesaVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
    end
  end
  object mDespesa: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'ID_ContasOrcamento'
        DataType = ftInteger
      end
      item
        Name = 'ID_Pessoa'
        DataType = ftInteger
      end
      item
        Name = 'DtVencimento'
        DataType = ftDate
      end
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'NumDuplicata'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'VlrIpi'
        DataType = ftFloat
      end
      item
        Name = 'VlrIcms'
        DataType = ftFloat
      end
      item
        Name = 'Situacao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Nome_ContaOrcamento'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Nome_Pessoa'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Prazo_OC'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NumOC'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mDespesaNewRecord
    Left = 424
    Top = 296
    Data = {
      780100009619E0BD01000000180000000F000000000003000000780109447445
      6D697373616F04000600000000001249445F436F6E7461734F7263616D656E74
      6F04000100000000000949445F506573736F6104000100000000000C44745665
      6E63696D656E746F0400060000000000074E756D4E6F74610400010000000000
      0C4E756D4475706C696361746101004900000001000557494454480200020014
      0008566C72546F74616C080004000000000006566C7249706908000400000000
      0007566C7249636D73080004000000000008536974756163616F010049000000
      0100055749445448020002001400045469706F01004900000001000557494454
      48020002000100134E6F6D655F436F6E74614F7263616D656E746F0100490000
      000100055749445448020002003C000B4E6F6D655F506573736F610100490000
      000100055749445448020002003C00085072617A6F5F4F430100490000000100
      055749445448020002001E00054E756D4F4304000100000000000000}
    object mDespesaDtEmissao: TDateField
      Alignment = taCenter
      DisplayLabel = 'Dt. Mov.'
      FieldName = 'DtEmissao'
    end
    object mDespesaID_ContasOrcamento: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Conta Or'#231'.'
      FieldName = 'ID_ContasOrcamento'
    end
    object mDespesaID_Pessoa: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Pessoa'
      FieldName = 'ID_Pessoa'
    end
    object mDespesaDtVencimento: TDateField
      Alignment = taCenter
      DisplayLabel = 'Dt Vencimento'
      FieldName = 'DtVencimento'
    end
    object mDespesaNumNota: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Nota'
      FieldName = 'NumNota'
    end
    object mDespesaNumDuplicata: TStringField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Duplicata'
      FieldName = 'NumDuplicata'
    end
    object mDespesaNumOC: TIntegerField
      DisplayLabel = 'N'#186' OC'
      FieldName = 'NumOC'
    end
    object mDespesaNome_ContaOrcamento: TStringField
      DisplayLabel = 'Conta Or'#231'amento'
      FieldName = 'Nome_ContaOrcamento'
      Size = 60
    end
    object mDespesaNome_Pessoa: TStringField
      DisplayLabel = 'Nome Fornecedor'
      FieldName = 'Nome_Pessoa'
      Size = 60
    end
    object mDespesaVlrTotal: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VlrTotal'
    end
    object mDespesaVlrIpi: TFloatField
      DisplayLabel = 'Vlr. Ipi'
      FieldName = 'VlrIpi'
    end
    object mDespesaVlrIcms: TFloatField
      DisplayLabel = 'Vlr. Icms'
      FieldName = 'VlrIcms'
    end
    object mDespesaSituacao: TStringField
      Alignment = taCenter
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'Situacao'
    end
    object mDespesaTipo: TStringField
      Alignment = taCenter
      FieldName = 'Tipo'
      Size = 1
    end
    object mDespesaPrazo_OC: TStringField
      DisplayLabel = 'Prazo OC'
      FieldName = 'Prazo_OC'
      Size = 30
    end
  end
  object dsmDespesa: TDataSource
    DataSet = mDespesa
    Left = 472
    Top = 296
  end
  object qNota_Entrada: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT N.VLR_ICMS, N.VLR_IPI, N.VLR_NOTA'
      'FROM NOTAFISCAL N'
      'WHERE N.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 688
    Top = 48
    object qNota_EntradaVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object qNota_EntradaVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object qNota_EntradaVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
  end
  object sdsFornecedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.NOME, P.FANTASIA'#13#10'FROM PESSOA P'#13#10'WHERE P.TP_F' +
      'ORNECEDOR = '#39'S'#39#13#10'  AND P.INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 320
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 144
    Top = 320
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 192
    Top = 320
    object cdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 232
    Top = 320
  end
  object sdsOC_Pendente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.TIPO_REG, I.QTD_RESTANTE, I.QTD, I.VLR_UNITARIO, P.ID_C' +
      'LIENTE,'#13#10'I.perc_ipi, I.perc_icms, P.ID_CONTA_ORCAMENTO, P.NUM_PE' +
      'DIDO, P.dtemissao,'#13#10'PES.NOME NOME_FORNECEDOR, ORC.DESCRICAO NOME' +
      '_CONTA_ORCAMENTO,'#13#10'COND.NOME NOME_CONDICAO'#13#10'FROM PEDIDO P'#13#10'INNER' +
      ' JOIN PEDIDO_ITEM I'#13#10'ON P.ID = I.ID'#13#10'INNER JOIN PESSOA PES'#13#10'ON P' +
      '.ID_CLIENTE = PES.CODIGO'#13#10'LEFT JOIN CONTA_ORCAMENTO ORC'#13#10'ON P.ID' +
      '_CONTA_ORCAMENTO = ORC.ID'#13#10'LEFT JOIN CONDPGTO COND'#13#10'ON P.ID_COND' +
      'PGTO = COND.ID'#13#10'WHERE P.TIPO_REG = '#39'C'#39#13#10'  AND I.QTD_RESTANTE > 0' +
      #13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 384
  end
  object dspOC_Pendente: TDataSetProvider
    DataSet = sdsOC_Pendente
    Left = 152
    Top = 384
  end
  object cdsOC_Pendente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOC_Pendente'
    Left = 200
    Top = 384
    object cdsOC_PendenteTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsOC_PendenteQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOC_PendenteQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOC_PendenteVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsOC_PendenteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOC_PendenteID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsOC_PendenteNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsOC_PendenteNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 60
    end
    object cdsOC_PendenteNOME_CONTA_ORCAMENTO: TStringField
      FieldName = 'NOME_CONTA_ORCAMENTO'
      Size = 50
    end
    object cdsOC_PendenteNOME_CONDICAO: TStringField
      FieldName = 'NOME_CONDICAO'
      Size = 40
    end
    object cdsOC_PendenteDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOC_PendentePERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsOC_PendentePERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
  end
  object qParametros_Cta_Orc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_CTA_ORC'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 736
    Top = 48
    object qParametros_Cta_OrcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_Cta_OrcID_CONTA_ORC_RECEITA: TIntegerField
      FieldName = 'ID_CONTA_ORC_RECEITA'
    end
    object qParametros_Cta_OrcID_CONTA_ORC_DESPESA: TIntegerField
      FieldName = 'ID_CONTA_ORC_DESPESA'
    end
  end
  object sdsPedido_Pend: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select v.id_cliente, v.nome_cliente, Sum(v.vlr_restante) Vlr_Res' +
      'tante,'#13#10'sum(v.qtd_restante) Qtd_Restante, v.referencia,'#13#10'v.id_pr' +
      'oduto, v.nome_produto, v.dtentrega, v.Tipo_Reg'#13#10'from vpedido_ite' +
      'm_pend v'#13#10'GROUP by v.id_cliente, v.nome_cliente, v.referencia,'#13#10 +
      'v.id_produto, v.nome_produto, v.dtentrega, v.Tipo_Reg'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 352
    Top = 416
  end
  object dspPedido_Pend: TDataSetProvider
    DataSet = sdsPedido_Pend
    Left = 400
    Top = 416
  end
  object cdsPedido_Pend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Pend'
    Left = 448
    Top = 416
    object cdsPedido_PendID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_PendNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_PendVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsPedido_PendQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_PendREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_PendID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_PendNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPedido_PendDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedido_PendTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object sdsDuplicata_Det: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select D.numduplicata, D.numnota, D.dtemissao, D.dtvencimento, D' +
      '.vlr_parcela,'#13#10'D.vlr_restante, D.vlr_pago, D.id_pessoa, P.nome N' +
      'OME_PESSOA, D.ID'#13#10'from duplicata D'#13#10'INNER JOIN PESSOA P'#13#10'ON D.id' +
      '_pessoa = P.codigo'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 272
  end
  object dspDuplicata_Det: TDataSetProvider
    DataSet = sdsDuplicata_Det
    Left = 648
    Top = 272
  end
  object cdsDuplicata_Det: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDuplicata_Det'
    Left = 696
    Top = 272
    object cdsDuplicata_DetNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object cdsDuplicata_DetNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsDuplicata_DetDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsDuplicata_DetDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsDuplicata_DetVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_DetVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_DetVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_DetID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDuplicata_DetNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsDuplicata_DetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsDuplicata_det: TDataSource
    DataSet = cdsDuplicata_Det
    Left = 744
    Top = 272
  end
  object dsPedido_Pend: TDataSource
    DataSet = cdsPedido_Pend
    Left = 488
    Top = 416
  end
  object sdsDuplicata_Cli: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select SUM(D.vlr_parcela) Vlr_Parcela,'#13#10'SUM(D.vlr_restante) Vlr_' +
      'Restante, SUM(D.vlr_pago) Vlr_Pago,'#13#10'D.id_pessoa, P.nome NOME_PE' +
      'SSOA'#13#10'from duplicata D'#13#10'INNER JOIN PESSOA P'#13#10'ON D.id_pessoa = P.' +
      'codigo'#13#10'GROUP by D.id_pessoa, P.nome'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 216
  end
  object dspDuplicata_Cli: TDataSetProvider
    DataSet = sdsDuplicata_Cli
    Left = 640
    Top = 216
  end
  object cdsDuplicata_Cli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDuplicata_Cli'
    Left = 688
    Top = 216
    object cdsDuplicata_CliVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_CliVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_CliVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_CliID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDuplicata_CliNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
  end
  object dsDuplicata_Cli: TDataSource
    DataSet = cdsDuplicata_Cli
    Left = 736
    Top = 216
  end
  object sdsPedido_Cli: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select v.id_cliente, v.nome_cliente, Sum(v.vlr_restante) Vlr_Res' +
      'tante,'#13#10'sum(v.qtd_restante) Qtd_Restante,'#13#10'v.dtentrega, v.Tipo_R' +
      'eg'#13#10'from vpedido_item_pend v'#13#10'WHERE (V.TIPO_REG = '#39'P'#39') or (V.TIP' +
      'O_REG = '#39'C'#39')'#13#10'GROUP by v.id_cliente, v.nome_cliente, v.referenci' +
      'a,'#13#10'v.id_produto, v.nome_produto, v.dtentrega, v.Tipo_Reg'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 352
    Top = 360
  end
  object dspPedido_Cli: TDataSetProvider
    DataSet = sdsPedido_Cli
    Left = 400
    Top = 360
  end
  object cdsPedido_Cli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Cli'
    Left = 448
    Top = 360
    object cdsPedido_CliID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_CliNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_CliVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsPedido_CliQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_CliDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedido_CliTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedido_Cli: TDataSource
    DataSet = cdsPedido_Cli
    Left = 488
    Top = 360
  end
  object sdsPrazoMedio: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT (D.dtvencimento - D.dtemissao)  QtdDias, d.vlr_parcela, c' +
      'ast(1 as Float) AS QtdDup'#13#10'FROM duplicata D'#13#10'WHERE d.tipo_es = '#39 +
      'E'#39#13#10'  and d.id_nota > 0'#13#10'  and d.dtemissao <= d.dtvencimento'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 160
  end
  object dspPrazoMedio: TDataSetProvider
    DataSet = sdsPrazoMedio
    Left = 640
    Top = 160
  end
  object cdsPrazoMedio: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'QTDDias'
    Params = <>
    ProviderName = 'dspPrazoMedio'
    Left = 688
    Top = 160
    object cdsPrazoMedioQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
    object cdsPrazoMedioVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
      DisplayFormat = '###,###,###,##0.00'
    end
    object cdsPrazoMedioQTDDUP: TFloatField
      FieldName = 'QTDDUP'
      Required = True
    end
  end
  object dsPrazoMedio: TDataSource
    DataSet = cdsPrazoMedio
    Left = 736
    Top = 160
  end
  object mPrazo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'QtdDias'
        DataType = ftInteger
      end
      item
        Name = 'QtdDup'
        DataType = ftInteger
      end
      item
        Name = 'VlrDup'
        DataType = ftFloat
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'Item'
    Params = <>
    StoreDefs = True
    Left = 592
    Top = 104
    Data = {
      730000009619E0BD010000001800000005000000000003000000730009446573
      63726963616F0100490000000100055749445448020002003C00075174644469
      6173040001000000000006517464447570040001000000000006566C72447570
      0800040000000000044974656D04000100000000000000}
    object mPrazoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object mPrazoQtdDias: TIntegerField
      FieldName = 'QtdDias'
    end
    object mPrazoQtdDup: TIntegerField
      FieldName = 'QtdDup'
    end
    object mPrazoVlrDup: TFloatField
      FieldName = 'VlrDup'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mPrazoItem: TIntegerField
      FieldName = 'Item'
    end
  end
  object dsmPrazo: TDataSource
    DataSet = mPrazo
    Left = 640
    Top = 104
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, FANTASIA'#13#10'FROM PESSOA'#13#10'WHERE TP_CLIENTE = '#39 +
      'S'#39#13#10'      AND INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 352
    Top = 480
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 384
    Top = 480
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 424
    Top = 480
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 464
    Top = 480
  end
  object qConta_Orcamento_Ccusto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select CO.*, CC.CODIGO CODIGO_CCUSTO, CC.DESCRICAO NOME_CCUSTO, ' +
        'CC.ID ID_CCUSTO, CC.NIVEL NIVEL_CCUSTO'
      'from CONTA_ORCAMENTO CO'
      'left join CONTA_ORCAMENTO_CCUSTO COC on CO.ID = COC.ID'
      'left join CENTROCUSTO CC on CC.ID = COC.ID_CENTROCUSTO'
      'where CO.ID = :ID   ')
    SQLConnection = dmDatabase.scoDados
    Left = 640
    Top = 48
    object qConta_Orcamento_CcustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qConta_Orcamento_CcustoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qConta_Orcamento_CcustoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object qConta_Orcamento_CcustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qConta_Orcamento_CcustoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object qConta_Orcamento_CcustoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object qConta_Orcamento_CcustoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qConta_Orcamento_CcustoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object qConta_Orcamento_CcustoDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
    end
    object qConta_Orcamento_CcustoDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object qConta_Orcamento_CcustoTIPO_CALCULO: TStringField
      FieldName = 'TIPO_CALCULO'
      FixedChar = True
      Size = 1
    end
    object qConta_Orcamento_CcustoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qConta_Orcamento_CcustoTIPO_DESPESA: TStringField
      FieldName = 'TIPO_DESPESA'
      FixedChar = True
      Size = 1
    end
    object qConta_Orcamento_CcustoTIPO_RD: TStringField
      FieldName = 'TIPO_RD'
      FixedChar = True
      Size = 1
    end
    object qConta_Orcamento_CcustoCOD_CONTABIL: TIntegerField
      FieldName = 'COD_CONTABIL'
    end
    object qConta_Orcamento_CcustoID_TIPO_CONTA: TIntegerField
      FieldName = 'ID_TIPO_CONTA'
    end
    object qConta_Orcamento_CcustoVLR_ORC: TFloatField
      FieldName = 'VLR_ORC'
    end
    object qConta_Orcamento_CcustoANO: TIntegerField
      FieldName = 'ANO'
    end
    object qConta_Orcamento_CcustoCODIGO_CCUSTO: TStringField
      FieldName = 'CODIGO_CCUSTO'
    end
    object qConta_Orcamento_CcustoNOME_CCUSTO: TStringField
      FieldName = 'NOME_CCUSTO'
      Size = 50
    end
    object qConta_Orcamento_CcustoID_CCUSTO: TIntegerField
      FieldName = 'ID_CCUSTO'
    end
    object qConta_Orcamento_CcustoNIVEL_CCUSTO: TIntegerField
      FieldName = 'NIVEL_CCUSTO'
    end
  end
  object sdsConsulta_Conta_Orc_CCus: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select sum(iif (DCCUS.valor > 0, DCCUS.valor, Dup.vlr_parcela)) ' +
      'VLR_PARCELA, sum(DUP.VLR_DEVOLUCAO) VLR_DEVOLUCAO, sum(DUP.VLR_R' +
      'ESTANTE) VLR_RESTANTE,'#13#10'       sum(DUP.VLR_PAGO) VLR_PAGO, DUP.T' +
      'IPO_ES, ORC.DESCRICAO NOME_CONTA_ORCAMENTO, ORC.CODIGO COD_CONTA' +
      '_ORCAMENTO,'#13#10'       DUP.ID_CONTA_ORCAMENTO, ORC.SUPERIOR, ORC.NI' +
      'VEL, DCCUS.ID_CENTROCUSTO, CC.DESCRICAO NOME_CCUSTO,'#13#10'       CC.' +
      'CODIGO CODIGO_CCUSTO, CC.NIVEL NIVEL_CCUSTO, SUM(DCCUS.VALOR) VL' +
      'R_CCUS'#13#10'from DUPLICATA DUP'#13#10'left join CONTA_ORCAMENTO ORC on DUP' +
      '.ID_CONTA_ORCAMENTO = ORC.ID'#13#10'left join DUPLICATA_CCUSTO DCCUS o' +
      'n DCCUS.ID = DUP.ID and (DCCUS.VALOR > 0)'#13#10'left join CENTROCUSTO' +
      ' CC on CC.ID = DCCUS.ID_CENTROCUSTO'#13#10'where DUP.TIPO_MOV <> '#39'H'#39' a' +
      'nd'#13#10'      DUP.FILIAL = 1 and'#13#10'      DUP.DTVENCIMENTO between '#39'01' +
      '/01/2019'#39' and '#39'03/31/2019'#39#13#10'GROUP BY DUP.TIPO_ES, ORC.DESCRICAO,' +
      ' ORC.CODIGO, DUP.ID_CONTA_ORCAMENTO, ORC.SUPERIOR, ORC.NIVEL,'#13#10' ' +
      '        DCCUS.ID_CENTROCUSTO, CC.DESCRICAO, CC.CODIGO, CC.NIVEL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 440
  end
  object dspConsulta_Conta_Orc_CCus: TDataSetProvider
    DataSet = sdsConsulta_Conta_Orc_CCus
    Left = 152
    Top = 440
  end
  object cdsConsulta_Conta_Orc_CCus: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Conta_Orc_CCus'
    Left = 200
    Top = 440
    object cdsConsulta_Conta_Orc_CCusVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
    end
    object cdsConsulta_Conta_Orc_CCusVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object cdsConsulta_Conta_Orc_CCusVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsConsulta_Conta_Orc_CCusVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
    end
    object cdsConsulta_Conta_Orc_CCusTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsConsulta_Conta_Orc_CCusNOME_CONTA_ORCAMENTO: TStringField
      FieldName = 'NOME_CONTA_ORCAMENTO'
      Size = 50
    end
    object cdsConsulta_Conta_Orc_CCusCOD_CONTA_ORCAMENTO: TStringField
      FieldName = 'COD_CONTA_ORCAMENTO'
    end
    object cdsConsulta_Conta_Orc_CCusID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsConsulta_Conta_Orc_CCusSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsConsulta_Conta_Orc_CCusNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsConsulta_Conta_Orc_CCusID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object cdsConsulta_Conta_Orc_CCusNOME_CCUSTO: TStringField
      FieldName = 'NOME_CCUSTO'
      Size = 50
    end
    object cdsConsulta_Conta_Orc_CCusCODIGO_CCUSTO: TStringField
      FieldName = 'CODIGO_CCUSTO'
    end
    object cdsConsulta_Conta_Orc_CCusNIVEL_CCUSTO: TIntegerField
      FieldName = 'NIVEL_CCUSTO'
    end
    object cdsConsulta_Conta_Orc_CCusVLR_CCUS: TFloatField
      FieldName = 'VLR_CCUS'
    end
  end
  object mContas_Orc_CCusto: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Tipo_ES'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Pago'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Restante'
        DataType = ftFloat
      end
      item
        Name = 'Tipo_Conta'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Qtd_Restante'
        DataType = ftFloat
      end
      item
        Name = 'ID_CCusto'
        DataType = ftInteger
      end
      item
        Name = 'Nome_CCusto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Codigo_CCusto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Vlr_CentroCusto'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID;ID_CCUSTO'
    Params = <>
    StoreDefs = True
    Left = 416
    Top = 208
    Data = {
      630100009619E0BD01000000180000000D000000000003000000630102494404
      0001000000000006436F6469676F010049000000010005574944544802000200
      1400044E6F6D650100490000000100055749445448020002003C00075469706F
      5F4553010049000000010005574944544802000200010009566C725F546F7461
      6C080004000000000008566C725F5061676F08000400000000000C566C725F52
      657374616E746508000400000000000A5469706F5F436F6E7461010049000000
      01000557494454480200020001000C5174645F52657374616E74650800040000
      0000000949445F43437573746F04000100000000000B4E6F6D655F4343757374
      6F0100490000000100055749445448020002003C000D436F6469676F5F434375
      73746F01004900000001000557494454480200020014000F566C725F43656E74
      726F437573746F080004000000000001000D44454641554C545F4F5244455202
      00820000000000}
    object mContas_Orc_CCustoID: TIntegerField
      FieldName = 'ID'
    end
    object mContas_Orc_CCustoCodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
    end
    object mContas_Orc_CCustoNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object mContas_Orc_CCustoTipo_ES: TStringField
      FieldName = 'Tipo_ES'
      Size = 1
    end
    object mContas_Orc_CCustoVlr_Total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'Vlr_Total'
      DisplayFormat = '###,###,##0.00'
    end
    object mContas_Orc_CCustoVlr_Pago: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'Vlr_Pago'
      DisplayFormat = '###,###,##0.00'
    end
    object mContas_Orc_CCustoVlr_Restante: TFloatField
      DisplayLabel = 'Valor Restante'
      FieldName = 'Vlr_Restante'
      DisplayFormat = '###,###,##0.00'
    end
    object mContas_Orc_CCustoTipo_Conta: TStringField
      DisplayLabel = 'Tipo Conta'
      FieldName = 'Tipo_Conta'
      Size = 1
    end
    object mContas_Orc_CCustoQtd_Restante: TFloatField
      DisplayLabel = 'Qtde Restante'
      FieldName = 'Qtd_Restante'
    end
    object mContas_Orc_CCustoID_CCusto: TIntegerField
      FieldName = 'ID_CCusto'
    end
    object mContas_Orc_CCustoNome_CCusto: TStringField
      DisplayLabel = 'Nome CCusto'
      FieldName = 'Nome_CCusto'
      Size = 60
    end
    object mContas_Orc_CCustoCodigo_CCusto: TStringField
      DisplayLabel = 'C'#243'digo CCusto'
      FieldName = 'Codigo_CCusto'
    end
    object mContas_Orc_CCustoVlr_CentroCusto: TFloatField
      DisplayLabel = 'Vlr Centro Custo'
      FieldName = 'Vlr_CentroCusto'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsmContas_Orc_CCusto: TDataSource
    DataSet = mContas_Orc_CCusto
    Left = 464
    Top = 208
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42992.427233402800000000
    ReportOptions.LastChange = 43558.481186296300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = frxReport1BeforePrint
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 592
    Top = 328
    Datasets = <
      item
        DataSet = frxCentroCusto
        DataSetName = 'frxCentroCusto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxCentroCusto
        DataSetName = 'frxCentroCusto'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCentroCusto."Codigo"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 94.488250000000000000
          Top = 3.779530000000000000
          Width = 185.196970000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCentroCusto."Nome"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxCentroCusto."Vlr_Total"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 298.582870000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCentroCusto."Codigo_CCusto"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo7: TfrxMemoView
          Left = 362.834880000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCentroCusto."Nome_CCusto"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 45.714285710000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 196.190476190000000000
          Top = 21.461193560000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8 = (
            'Per'#195#173'odo de 99/99/9999 at'#195#169' 99/99/9999')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 219.212740000000000000
          Top = 3.007111900000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Contas de Or'#195#167'amento por Centro de Custo')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 4.761904760000000000
          Top = 41.102350000000000000
          Width = 708.571428570000000000
          Color = clBlack
          Frame.ShadowColor = clWhite
          Frame.Style = fsDot
          Diagonal = True
        end
        object Page: TfrxMemoView
          Left = 688.606679040000000000
          Top = 2.977118100000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Page]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 649.523809530000000000
          Top = 2.024737150000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina:')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 650.811379040000000000
          Top = 20.149969040000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 86.929190000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'C'#195#179'd.Conta')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 94.488250000000000000
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome.Conta')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 298.582870000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cod.CCusto')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo11: TfrxMemoView
          Left = 362.834880000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome CCusto')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 555.590910000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Top = 17.118120000000000000
          Width = 708.571428570000000000
          Color = clBlack
          Frame.ShadowColor = clWhite
          Frame.Style = fsDot
          Diagonal = True
        end
      end
    end
  end
  object frxCentroCusto: TfrxDBDataset
    UserName = 'frxCentroCusto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'Codigo=Codigo'
      'Nome=Nome'
      'Tipo_ES=Tipo_ES'
      'Vlr_Total=Vlr_Total'
      'Vlr_Pago=Vlr_Pago'
      'Vlr_Restante=Vlr_Restante'
      'Tipo_Conta=Tipo_Conta'
      'Qtd_Restante=Qtd_Restante'
      'ID_CCusto=ID_CCusto'
      'Nome_CCusto=Nome_CCusto'
      'Codigo_CCusto=Codigo_CCusto'
      'Vlr_CentroCusto=Vlr_CentroCusto')
    DataSource = dsmContas_Orc_CCusto
    BCDToCurrency = False
    Left = 592
    Top = 384
  end
end
