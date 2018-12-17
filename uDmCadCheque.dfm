object dmCadCheque: TdmCadCheque
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 361
  Top = 42
  Height = 582
  Width = 818
  object sdsCheque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CHEQUE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 16
    object sdsChequeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsChequeEMITIDO_POR: TStringField
      FieldName = 'EMITIDO_POR'
      FixedChar = True
      Size = 1
    end
    object sdsChequeRECEBIDO_DE: TIntegerField
      FieldName = 'RECEBIDO_DE'
    end
    object sdsChequeTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 40
    end
    object sdsChequeAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object sdsChequeCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object sdsChequeNUM_CHEQUE: TStringField
      FieldName = 'NUM_CHEQUE'
      Size = 10
    end
    object sdsChequeDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsChequeDTBOM_PARA: TDateField
      FieldName = 'DTBOM_PARA'
    end
    object sdsChequeVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsChequeFONE_CONTATO: TStringField
      FieldName = 'FONE_CONTATO'
      Size = 15
    end
    object sdsChequeEMITIDO_PARA: TIntegerField
      FieldName = 'EMITIDO_PARA'
    end
    object sdsChequeFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsChequeID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsChequeID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsChequeNOMINAL: TStringField
      FieldName = 'NOMINAL'
      Size = 60
    end
    object sdsChequeDTCOMPENSADO: TDateField
      FieldName = 'DTCOMPENSADO'
    end
    object sdsChequeUTILIZADO_PARA: TMemoField
      FieldName = 'UTILIZADO_PARA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsChequeID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsChequeSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsChequeMOTIVO_COMP: TStringField
      FieldName = 'MOTIVO_COMP'
      Size = 250
    end
  end
  object dspCheque: TDataSetProvider
    DataSet = sdsCheque
    Left = 120
    Top = 16
  end
  object cdsCheque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCheque'
    OnNewRecord = cdsChequeNewRecord
    Left = 176
    Top = 16
    object cdsChequeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsChequeEMITIDO_POR: TStringField
      FieldName = 'EMITIDO_POR'
      FixedChar = True
      Size = 1
    end
    object cdsChequeRECEBIDO_DE: TIntegerField
      FieldName = 'RECEBIDO_DE'
    end
    object cdsChequeTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 40
    end
    object cdsChequeAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object cdsChequeCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object cdsChequeNUM_CHEQUE: TStringField
      FieldName = 'NUM_CHEQUE'
      Size = 10
    end
    object cdsChequeDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsChequeDTBOM_PARA: TDateField
      FieldName = 'DTBOM_PARA'
    end
    object cdsChequeVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object cdsChequeFONE_CONTATO: TStringField
      FieldName = 'FONE_CONTATO'
      Size = 15
    end
    object cdsChequeEMITIDO_PARA: TIntegerField
      FieldName = 'EMITIDO_PARA'
    end
    object cdsChequeFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsChequeID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsChequeID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsChequeNOMINAL: TStringField
      FieldName = 'NOMINAL'
      Size = 60
    end
    object cdsChequesdsCheque_Hist: TDataSetField
      FieldName = 'sdsCheque_Hist'
    end
    object cdsChequesdsCheque_Tit: TDataSetField
      FieldName = 'sdsCheque_Tit'
    end
    object cdsChequeDTCOMPENSADO: TDateField
      FieldName = 'DTCOMPENSADO'
    end
    object cdsChequeUTILIZADO_PARA: TMemoField
      FieldName = 'UTILIZADO_PARA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsChequeID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsChequeSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsChequeMOTIVO_COMP: TStringField
      FieldName = 'MOTIVO_COMP'
      Size = 250
    end
  end
  object dsCheque: TDataSource
    DataSet = cdsCheque
    Left = 232
    Top = 16
  end
  object dsCheque_Mestre: TDataSource
    DataSet = sdsCheque
    Left = 32
    Top = 64
  end
  object sdsCheque_Hist: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM CHEQUE_HIST CH'#13#10'WHERE CH.ID = :ID'
    DataSource = dsCheque_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 88
    object sdsCheque_HistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCheque_HistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCheque_HistDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object sdsCheque_HistTIPO_HIST: TStringField
      FieldName = 'TIPO_HIST'
      FixedChar = True
      Size = 1
    end
  end
  object cdsCheque_Hist: TClientDataSet
    Aggregates = <>
    DataSetField = cdsChequesdsCheque_Hist
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsCheque_HistCalcFields
    Left = 160
    Top = 88
    object cdsCheque_HistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCheque_HistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCheque_HistDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsCheque_HistTIPO_HIST: TStringField
      FieldName = 'TIPO_HIST'
      FixedChar = True
      Size = 1
    end
    object cdsCheque_HistclTipoHist: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTipoHist'
      Calculated = True
    end
  end
  object dsCheque_Hist: TDataSource
    DataSet = cdsCheque_Hist
    Left = 216
    Top = 88
  end
  object sdsCheque_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*, E.NOME EMISSOR, R.NOME RECEPTOR,CT.NOME NOME_CONTA,'#13 +
      #10'CT.agencia AGENCIA_CONTA, CT.numconta,'#13#10'CT.dig_agencia, CT.dig_' +
      'conta, BC.nome NOME_BANCO, BC.CODIGO COD_BANCO,'#13#10'C.fone_contato ' +
      '|| '#39' '#39' || C.titular Contato,'#13#10'CASE'#13#10'  WHEN C.EMITIDO_POR = '#39'1'#39' T' +
      'HEN C.TITULAR'#13#10'  WHEN C.EMITIDO_POR = '#39'2'#39' THEN E.NOME'#13#10'  WHEN C.' +
      'EMITIDO_POR = '#39'3'#39' THEN E.NOME'#13#10'  END NOME_CORRENTISTA,'#13#10'CASE'#13#10'  ' +
      'WHEN C.EMITIDO_POR = '#39'1'#39' THEN CT.NOME'#13#10'  WHEN C.EMITIDO_POR = '#39'2' +
      #39' THEN BC.NOME'#13#10'  WHEN C.EMITIDO_POR = '#39'3'#39' THEN BC.NOME'#13#10'  END N' +
      'OME_CONTA_BANCO,'#13#10#13#10'CASE'#13#10'  WHEN C.EMITIDO_POR = '#39'1'#39' THEN '#39'MIM'#39#13 +
      #10'  WHEN C.EMITIDO_POR = '#39'2'#39' THEN '#39'CLIENTE'#39#13#10'  WHEN C.EMITIDO_POR' +
      ' = '#39'3'#39' THEN '#39'TERCEITO'#39#13#10'  END DESCRICAO_EMITIDO,'#13#10'CASE'#13#10'  WHEN C' +
      '.EMITIDO_POR = '#39'1'#39' THEN '#39'1'#39#13#10'  WHEN C.EMITIDO_POR = '#39'2'#39' THEN '#39'2'#39 +
      #13#10'  WHEN C.EMITIDO_POR = '#39'3'#39' THEN '#39'2'#39#13#10'  END TIPO_EMIT,'#13#10'CASE'#13#10' ' +
      ' WHEN C.STATUS = '#39'0'#39' THEN '#39'Pendente'#39#13#10'  WHEN C.STATUS = '#39'1'#39' THEN' +
      ' '#39'Dep'#243'sito'#39#13#10'  WHEN C.STATUS = '#39'2'#39' THEN '#39'Devolvido 1'#39#13#10'  WHEN C.' +
      'STATUS = '#39'3'#39' THEN '#39'Reapresentado'#39#13#10'  WHEN C.STATUS = '#39'4'#39' THEN '#39'D' +
      'evolvido 2'#39#13#10'  WHEN C.STATUS = '#39'5'#39' THEN '#39'Compensado'#39#13#10'  WHEN C.S' +
      'TATUS = '#39'6'#39' THEN '#39'Repasse'#39#13#10'  END DESC_STATUS'#13#10#13#10'FROM CHEQUE C'#13#10 +
      'LEFT JOIN CONTAS CT'#13#10'ON C.ID_CONTA = CT.ID'#13#10'LEFT JOIN BANCO BC'#13#10 +
      'ON C.id_banco = BC.ID'#13#10'LEFT JOIN PESSOA E ON (E.CODIGO = C.RECEB' +
      'IDO_DE)'#13#10'LEFT JOIN PESSOA R ON (R.CODIGO =  C.EMITIDO_PARA)'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 16
  end
  object dspCheque_Consulta: TDataSetProvider
    DataSet = sdsCheque_Consulta
    Left = 448
    Top = 16
  end
  object cdsCheque_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCheque_Consulta'
    Left = 504
    Top = 16
    object cdsCheque_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCheque_ConsultaEMITIDO_POR: TStringField
      FieldName = 'EMITIDO_POR'
      FixedChar = True
      Size = 1
    end
    object cdsCheque_ConsultaRECEBIDO_DE: TIntegerField
      FieldName = 'RECEBIDO_DE'
    end
    object cdsCheque_ConsultaTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 40
    end
    object cdsCheque_ConsultaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object cdsCheque_ConsultaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object cdsCheque_ConsultaNUM_CHEQUE: TStringField
      FieldName = 'NUM_CHEQUE'
      Size = 10
    end
    object cdsCheque_ConsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsCheque_ConsultaDTBOM_PARA: TDateField
      FieldName = 'DTBOM_PARA'
    end
    object cdsCheque_ConsultaVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object cdsCheque_ConsultaFONE_CONTATO: TStringField
      FieldName = 'FONE_CONTATO'
      Size = 15
    end
    object cdsCheque_ConsultaEMITIDO_PARA: TIntegerField
      FieldName = 'EMITIDO_PARA'
    end
    object cdsCheque_ConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCheque_ConsultaID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsCheque_ConsultaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsCheque_ConsultaNOMINAL: TStringField
      FieldName = 'NOMINAL'
      Size = 60
    end
    object cdsCheque_ConsultaEMISSOR: TStringField
      FieldName = 'EMISSOR'
      Size = 60
    end
    object cdsCheque_ConsultaRECEPTOR: TStringField
      FieldName = 'RECEPTOR'
      Size = 60
    end
    object cdsCheque_ConsultaDTCOMPENSADO: TDateField
      FieldName = 'DTCOMPENSADO'
    end
    object cdsCheque_ConsultaUTILIZADO_PARA: TMemoField
      FieldName = 'UTILIZADO_PARA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCheque_ConsultaNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 30
    end
    object cdsCheque_ConsultaAGENCIA_CONTA: TStringField
      FieldName = 'AGENCIA_CONTA'
      Size = 5
    end
    object cdsCheque_ConsultaNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 12
    end
    object cdsCheque_ConsultaDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 1
    end
    object cdsCheque_ConsultaDIG_CONTA: TStringField
      FieldName = 'DIG_CONTA'
      Size = 1
    end
    object cdsCheque_ConsultaNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 60
    end
    object cdsCheque_ConsultaCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object cdsCheque_ConsultaID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsCheque_ConsultaNOME_CONTA_BANCO: TStringField
      FieldName = 'NOME_CONTA_BANCO'
      Size = 60
    end
    object cdsCheque_ConsultaDESCRICAO_EMITIDO: TStringField
      FieldName = 'DESCRICAO_EMITIDO'
      FixedChar = True
      Size = 8
    end
    object cdsCheque_ConsultaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 56
    end
    object cdsCheque_ConsultaNOME_CORRENTISTA: TStringField
      FieldName = 'NOME_CORRENTISTA'
      Size = 60
    end
    object cdsCheque_ConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsCheque_ConsultaTIPO_EMIT: TStringField
      FieldName = 'TIPO_EMIT'
      FixedChar = True
      Size = 1
    end
    object cdsCheque_ConsultaDESC_STATUS: TStringField
      FieldName = 'DESC_STATUS'
      FixedChar = True
      Size = 13
    end
    object cdsCheque_ConsultaMOTIVO_COMP: TStringField
      FieldName = 'MOTIVO_COMP'
      Size = 250
    end
  end
  object dsCheque_Consulta: TDataSource
    DataSet = cdsCheque_Consulta
    Left = 560
    Top = 16
  end
  object sdsBanco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 272
  end
  object dspBanco: TDataSetProvider
    DataSet = sdsBanco
    Left = 104
    Top = 272
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBanco'
    Left = 160
    Top = 272
    object cdsBancoID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsBancoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo Banco'
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsBancoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsBanco: TDataSource
    DataSet = cdsBanco
    Left = 216
    Top = 272
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONTAS'#13#10'WHERE TIPO_CONTA = '#39'B'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 336
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 104
    Top = 336
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContas'
    Left = 160
    Top = 336
    object cdsContasID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsContasNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 30
    end
    object cdsContasAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Size = 5
    end
    object cdsContasNUMCONTA: TStringField
      DisplayLabel = 'N'#186' Conta'
      FieldName = 'NUMCONTA'
      Size = 12
    end
    object cdsContasFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsContasDTENCERRAMENTO: TDateField
      DisplayLabel = 'Dt. Encerramento'
      FieldName = 'DTENCERRAMENTO'
    end
    object cdsContasTIPO_CONTA: TStringField
      DisplayLabel = 'Tipo Conta'
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsContasID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsContasDIG_CONTA: TStringField
      FieldName = 'DIG_CONTA'
      Size = 1
    end
    object cdsContasDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 1
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 216
    Top = 336
  end
  object sdsPessoaEmissor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CODIGO, NOME '#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 384
  end
  object dspPessoaEmissor: TDataSetProvider
    DataSet = sdsPessoaEmissor
    Left = 104
    Top = 384
  end
  object cdsPessoaEmissor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaEmissor'
    Left = 160
    Top = 384
    object cdsPessoaEmissorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaEmissorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsPessoaEmissor: TDataSource
    DataSet = cdsPessoaEmissor
    Left = 216
    Top = 384
  end
  object sdsPessoaReceptor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CODIGO, NOME '#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 432
  end
  object dspPessoaReceptor: TDataSetProvider
    DataSet = sdsPessoaReceptor
    Left = 104
    Top = 432
  end
  object cdsPessoaReceptor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaReceptor'
    Left = 160
    Top = 432
    object cdsPessoaReceptorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaReceptorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsPessoaReceptor: TDataSource
    DataSet = cdsPessoaReceptor
    Left = 216
    Top = 432
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME , NOME_INTERNO'#13#10'FROM FILIAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 480
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 104
    Top = 480
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 160
    Top = 480
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
    Left = 216
    Top = 480
  end
  object sdsCheque_Tit: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT TIT.*, DUP.id_pessoa, DUP.numduplicata, DUP.parcela, DUP.' +
      'numnota,'#13#10'DUP.serie, PES.NOME,'#13#10'CASE'#13#10'  WHEN TIT.TIPO_MOV = 1 TH' +
      'EN '#39'RECEBIDO'#39#13#10'  WHEN TIT.TIPO_MOV = 6 THEN '#39'REPASSADO'#39#13#10'  end D' +
      'ESC_TIPO_MOV'#13#10'FROM CHEQUE_TIT TIT'#13#10'INNER JOIN DUPLICATA DUP'#13#10'ON ' +
      'TIT.id_duplicata = DUP.ID'#13#10'INNER JOIN PESSOA PES'#13#10'ON DUP.id_pess' +
      'oa = PES.codigo'#13#10'WHERE TIT.ID = :ID'#13#10#13#10
    DataSource = dsCheque_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 144
    object sdsCheque_TitID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCheque_TitITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCheque_TitID_DUPLICATA: TIntegerField
      FieldName = 'ID_DUPLICATA'
    end
    object sdsCheque_TitITEM_HIST: TIntegerField
      FieldName = 'ITEM_HIST'
    end
    object sdsCheque_TitID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      ProviderFlags = []
    end
    object sdsCheque_TitNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
      ProviderFlags = []
    end
    object sdsCheque_TitPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = []
    end
    object sdsCheque_TitNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      ProviderFlags = []
    end
    object sdsCheque_TitSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = []
      Size = 3
    end
    object sdsCheque_TitNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 60
    end
    object sdsCheque_TitTIPO_MOV: TIntegerField
      FieldName = 'TIPO_MOV'
    end
    object sdsCheque_TitDESC_TIPO_MOV: TStringField
      FieldName = 'DESC_TIPO_MOV'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
    object sdsCheque_TitDEVOLVIDO: TStringField
      FieldName = 'DEVOLVIDO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsCheque_Tit: TClientDataSet
    Aggregates = <>
    DataSetField = cdsChequesdsCheque_Tit
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnNewRecord = cdsCheque_TitNewRecord
    Left = 160
    Top = 144
    object cdsCheque_TitID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCheque_TitITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCheque_TitID_DUPLICATA: TIntegerField
      FieldName = 'ID_DUPLICATA'
    end
    object cdsCheque_TitITEM_HIST: TIntegerField
      FieldName = 'ITEM_HIST'
    end
    object cdsCheque_TitID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      ProviderFlags = []
    end
    object cdsCheque_TitNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
      ProviderFlags = []
    end
    object cdsCheque_TitPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = []
    end
    object cdsCheque_TitNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      ProviderFlags = []
    end
    object cdsCheque_TitSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = []
      Size = 3
    end
    object cdsCheque_TitNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 60
    end
    object cdsCheque_TitTIPO_MOV: TIntegerField
      FieldName = 'TIPO_MOV'
    end
    object cdsCheque_TitDESC_TIPO_MOV: TStringField
      FieldName = 'DESC_TIPO_MOV'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
    object cdsCheque_TitDEVOLVIDO: TStringField
      FieldName = 'DEVOLVIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCheque_Tit: TDataSource
    DataSet = cdsCheque_Tit
    Left = 224
    Top = 144
  end
  object sdsCheque_Imp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CH.*, FIL.NOME NOME_FILIAL, CT.NOME NOME_CONTA, CT.agenci' +
      'a AGENCIA_CONTA, CT.numconta,'#13#10'CT.dig_agencia, CT.dig_conta, BC.' +
      'nome NOME_BANCO, BC.CODIGO COD_BANCO, FIL.CIDADE CIDADE_FIL'#13#10'FRO' +
      'M CHEQUE CH'#13#10'INNER JOIN FILIAL FIL'#13#10'ON CH.FILIAL = FIL.ID'#13#10'INNER' +
      ' JOIN CONTAS CT'#13#10'ON CH.ID_CONTA = CT.ID'#13#10'INNER JOIN BANCO BC'#13#10'ON' +
      ' CH.id_banco = BC.ID'#13#10'WHERE CH.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 128
    object sdsCheque_ImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCheque_ImpEMITIDO_POR: TStringField
      FieldName = 'EMITIDO_POR'
      FixedChar = True
      Size = 1
    end
    object sdsCheque_ImpRECEBIDO_DE: TIntegerField
      FieldName = 'RECEBIDO_DE'
    end
    object sdsCheque_ImpTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 40
    end
    object sdsCheque_ImpAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object sdsCheque_ImpCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object sdsCheque_ImpNUM_CHEQUE: TStringField
      FieldName = 'NUM_CHEQUE'
      Size = 10
    end
    object sdsCheque_ImpDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsCheque_ImpDTBOM_PARA: TDateField
      FieldName = 'DTBOM_PARA'
    end
    object sdsCheque_ImpVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsCheque_ImpFONE_CONTATO: TStringField
      FieldName = 'FONE_CONTATO'
      Size = 15
    end
    object sdsCheque_ImpEMITIDO_PARA: TIntegerField
      FieldName = 'EMITIDO_PARA'
    end
    object sdsCheque_ImpFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsCheque_ImpID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsCheque_ImpID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsCheque_ImpNOMINAL: TStringField
      FieldName = 'NOMINAL'
      Size = 60
    end
    object sdsCheque_ImpDTCOMPENSADO: TDateField
      FieldName = 'DTCOMPENSADO'
    end
    object sdsCheque_ImpNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object sdsCheque_ImpNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 30
    end
    object sdsCheque_ImpNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 12
    end
    object sdsCheque_ImpDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 1
    end
    object sdsCheque_ImpDIG_CONTA: TStringField
      FieldName = 'DIG_CONTA'
      Size = 1
    end
    object sdsCheque_ImpNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 60
    end
    object sdsCheque_ImpCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object sdsCheque_ImpAGENCIA_CONTA: TStringField
      FieldName = 'AGENCIA_CONTA'
      Size = 5
    end
    object sdsCheque_ImpCIDADE_FIL: TStringField
      FieldName = 'CIDADE_FIL'
      Size = 40
    end
    object sdsCheque_ImpUTILIZADO_PARA: TMemoField
      FieldName = 'UTILIZADO_PARA'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspCheque_Imp: TDataSetProvider
    DataSet = sdsCheque_Imp
    Left = 504
    Top = 128
  end
  object cdsCheque_Imp: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCheque_Imp'
    Left = 560
    Top = 128
    object cdsCheque_ImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCheque_ImpEMITIDO_POR: TStringField
      FieldName = 'EMITIDO_POR'
      FixedChar = True
      Size = 1
    end
    object cdsCheque_ImpRECEBIDO_DE: TIntegerField
      FieldName = 'RECEBIDO_DE'
    end
    object cdsCheque_ImpTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 40
    end
    object cdsCheque_ImpAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object cdsCheque_ImpCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object cdsCheque_ImpNUM_CHEQUE: TStringField
      FieldName = 'NUM_CHEQUE'
      Size = 10
    end
    object cdsCheque_ImpDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsCheque_ImpDTBOM_PARA: TDateField
      FieldName = 'DTBOM_PARA'
    end
    object cdsCheque_ImpVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsCheque_ImpFONE_CONTATO: TStringField
      FieldName = 'FONE_CONTATO'
      Size = 15
    end
    object cdsCheque_ImpEMITIDO_PARA: TIntegerField
      FieldName = 'EMITIDO_PARA'
    end
    object cdsCheque_ImpFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCheque_ImpID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsCheque_ImpID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsCheque_ImpNOMINAL: TStringField
      FieldName = 'NOMINAL'
      Size = 60
    end
    object cdsCheque_ImpDTCOMPENSADO: TDateField
      FieldName = 'DTCOMPENSADO'
    end
    object cdsCheque_ImpNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsCheque_ImpNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 30
    end
    object cdsCheque_ImpNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 12
    end
    object cdsCheque_ImpDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 1
    end
    object cdsCheque_ImpDIG_CONTA: TStringField
      FieldName = 'DIG_CONTA'
      Size = 1
    end
    object cdsCheque_ImpNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 60
    end
    object cdsCheque_ImpCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object cdsCheque_ImpAGENCIA_CONTA: TStringField
      FieldName = 'AGENCIA_CONTA'
      Size = 5
    end
    object cdsCheque_ImpCIDADE_FIL: TStringField
      FieldName = 'CIDADE_FIL'
      Size = 40
    end
    object cdsCheque_ImpUTILIZADO_PARA: TMemoField
      FieldName = 'UTILIZADO_PARA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCheque_ImpsdsCheque_Imp_Tit: TDataSetField
      FieldName = 'sdsCheque_Imp_Tit'
    end
  end
  object dsCheque_Imp: TDataSource
    DataSet = cdsCheque_Imp
    Left = 616
    Top = 128
  end
  object Cheque_ImpMestre: TDataSource
    DataSet = sdsCheque_Imp
    Left = 416
    Top = 176
  end
  object sdsCheque_Imp_Tit: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CH.*, DUP.numduplicata, DUP.parcela, DUP.vlr_pago, PES.no' +
      'me NOME_PESSOA'#13#10'FROM CHEQUE_TIT CH'#13#10'INNER JOIN DUPLICATA DUP'#13#10'ON' +
      ' CH.id_duplicata = DUP.ID'#13#10'INNER JOIN PESSOA PES'#13#10'ON DUP.id_pess' +
      'oa = PES.codigo'#13#10'WHERE CH.ID = :ID'
    DataSource = Cheque_ImpMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 216
    object sdsCheque_Imp_TitID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCheque_Imp_TitITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCheque_Imp_TitID_DUPLICATA: TIntegerField
      FieldName = 'ID_DUPLICATA'
    end
    object sdsCheque_Imp_TitITEM_HIST: TIntegerField
      FieldName = 'ITEM_HIST'
    end
    object sdsCheque_Imp_TitNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object sdsCheque_Imp_TitPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sdsCheque_Imp_TitVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
    end
    object sdsCheque_Imp_TitNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
  end
  object cdsCheque_Imp_Tit: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCheque_ImpsdsCheque_Imp_Tit
    Params = <>
    Left = 528
    Top = 216
    object cdsCheque_Imp_TitID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCheque_Imp_TitITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCheque_Imp_TitID_DUPLICATA: TIntegerField
      FieldName = 'ID_DUPLICATA'
    end
    object cdsCheque_Imp_TitITEM_HIST: TIntegerField
      FieldName = 'ITEM_HIST'
    end
    object cdsCheque_Imp_TitNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object cdsCheque_Imp_TitPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsCheque_Imp_TitVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsCheque_Imp_TitNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
  end
  object dsCheque_Imp_Tit: TDataSource
    DataSet = cdsCheque_Imp_Tit
    Left = 592
    Top = 216
  end
  object qTipo_Cobranca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID'
      'FROM TIPOCOBRANCA'
      'WHERE CHEQUE = '#39'S'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 296
    object qTipo_CobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object sdsContaOrcamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CONTA_ORCAMENTO'#13#10'WHERE TIPO = '#39'A'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 409
    Top = 368
  end
  object dspContaOrcamento: TDataSetProvider
    DataSet = sdsContaOrcamento
    Left = 441
    Top = 368
  end
  object cdsContaOrcamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspContaOrcamento'
    Left = 481
    Top = 368
    object cdsContaOrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContaOrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsContaOrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsContaOrcamentoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsContaOrcamentoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
  end
  object dsContaOrcamento: TDataSource
    DataSet = cdsContaOrcamento
    Left = 521
    Top = 368
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 424
    Top = 432
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
  end
end
