object DMManifesto: TDMManifesto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 177
  Top = 83
  Height = 551
  Width = 1094
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 48
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 504
    Top = 48
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 544
    Top = 48
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object cdsFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cdsFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object cdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object cdsFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsFilialID_CONTABILISTA: TIntegerField
      FieldName = 'ID_CONTABILISTA'
    end
    object cdsFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object cdsFilialLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 596
    Top = 48
  end
  object mAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Manifesto_AN'
        DataType = ftInteger
      end
      item
        Name = 'Chave_Acesso'
        DataType = ftString
        Size = 44
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Insc_Estadual'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'DtEmissao'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Num_Nota'
        DataType = ftLargeint
      end
      item
        Name = 'Vlr_Nota'
        DataType = ftFloat
      end
      item
        Name = 'Situacao_Manif'
        DataType = ftInteger
      end
      item
        Name = 'NSU'
        DataType = ftLargeint
      end
      item
        Name = 'Schema'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DtRecebimento'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Num_Protocolo'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Situacao_NFe'
        DataType = ftInteger
      end
      item
        Name = 'Download'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'XML'
        DataType = ftBlob
        Size = 80
      end
      item
        Name = 'Descricao_SitNFe'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'Gravado_Banco'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Serie'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Evento'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'XML_Para_Download'
        DataType = ftBlob
        Size = 80
      end
      item
        Name = 'Tipo_Eve'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nota_Propria'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Descricao_SitManif'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Gravada_Nota'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DtEmissao2'
        DataType = ftDate
      end
      item
        Name = 'CCe'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Ocultar'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'selecionada'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'NUM_NOTA'
    Params = <>
    StoreDefs = True
    BeforePost = mAuxiliarBeforePost
    OnNewRecord = mAuxiliarNewRecord
    Left = 352
    Top = 296
    Data = {
      820300009619E0BD01000000180000001D00000000000300000082030F49445F
      4D616E69666573746F5F414E04000100000000000C43686176655F4163657373
      6F0100490000000100055749445448020002002C0004434E504A010049000000
      01000557494454480200020012000D496E73635F457374616475616C01004900
      00000100055749445448020002001400044E6F6D650100490000000100055749
      445448020002004600094474456D697373616F01004900000001000557494454
      48020002001E00084E756D5F4E6F7461080001000000000008566C725F4E6F74
      6108000400000000000E536974756163616F5F4D616E69660400010000000000
      034E5355080001000000000006536368656D6101004900000001000557494454
      480200020032000D44745265636562696D656E746F0100490000000100055749
      445448020002001E000D4E756D5F50726F746F636F6C6F010049000000010005
      57494454480200020019000C536974756163616F5F4E46650400010000000000
      08446F776E6C6F6164010049000000010005574944544802000200010003584D
      4C04004B0000000200075355425459504502004900070042696E617279000557
      494454480200020050001044657363726963616F5F5369744E46650100490000
      0001000557494454480200020046000D4772617661646F5F42616E636F010049
      0000000100055749445448020002000100055365726965010049000000010005
      5749445448020002000300064576656E746F0100490000000100055749445448
      02000200140011584D4C5F506172615F446F776E6C6F616404004B0000000200
      075355425459504502004900070042696E617279000557494454480200020050
      00085469706F5F45766501004900000001000557494454480200020014000C4E
      6F74615F50726F70726961010049000000010005574944544802000200010012
      44657363726963616F5F5369744D616E69660100490000000100055749445448
      0200020032000C477261766164615F4E6F746101004900000001000557494454
      480200020001000A4474456D697373616F320400060000000000034343650100
      490000000100055749445448020002000100074F63756C746172010049000000
      01000557494454480200020001000B73656C6563696F6E616461010049000000
      010005574944544802000200010001000D44454641554C545F4F524445520200
      820000000000}
    object mAuxiliarID_Manifesto_AN: TIntegerField
      FieldName = 'ID_Manifesto_AN'
    end
    object mAuxiliarChave_Acesso: TStringField
      FieldName = 'Chave_Acesso'
      Size = 44
    end
    object mAuxiliarCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object mAuxiliarInsc_Estadual: TStringField
      FieldName = 'Insc_Estadual'
    end
    object mAuxiliarNome: TStringField
      FieldName = 'Nome'
      Size = 70
    end
    object mAuxiliarDtEmissao: TStringField
      FieldName = 'DtEmissao'
      Size = 30
    end
    object mAuxiliarNum_Nota: TLargeintField
      FieldName = 'Num_Nota'
    end
    object mAuxiliarVlr_Nota: TFloatField
      FieldName = 'Vlr_Nota'
    end
    object mAuxiliarSituacao_Manif: TIntegerField
      FieldName = 'Situacao_Manif'
    end
    object mAuxiliarNSU: TLargeintField
      FieldName = 'NSU'
    end
    object mAuxiliarSchema: TStringField
      FieldName = 'Schema'
      Size = 50
    end
    object mAuxiliarDtRecebimento: TStringField
      FieldName = 'DtRecebimento'
      Size = 30
    end
    object mAuxiliarNum_Protocolo: TStringField
      FieldName = 'Num_Protocolo'
      Size = 25
    end
    object mAuxiliarSituacao_NFe: TIntegerField
      FieldName = 'Situacao_NFe'
    end
    object mAuxiliarDownload: TStringField
      FieldName = 'Download'
      Size = 1
    end
    object mAuxiliarXML: TBlobField
      FieldName = 'XML'
      Size = 80
    end
    object mAuxiliarDescricao_SitNFe: TStringField
      FieldName = 'Descricao_SitNFe'
      Size = 70
    end
    object mAuxiliarGravado_Banco: TStringField
      FieldName = 'Gravado_Banco'
      Size = 1
    end
    object mAuxiliarSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object mAuxiliarEvento: TStringField
      FieldName = 'Evento'
    end
    object mAuxiliarXML_Para_Download: TBlobField
      FieldName = 'XML_Para_Download'
      Size = 80
    end
    object mAuxiliarTipo_Eve: TStringField
      FieldName = 'Tipo_Eve'
    end
    object mAuxiliarNota_Propria: TStringField
      FieldName = 'Nota_Propria'
      Size = 1
    end
    object mAuxiliarDescricao_SitManif: TStringField
      FieldName = 'Descricao_SitManif'
      Size = 50
    end
    object mAuxiliarGravada_Nota: TStringField
      FieldName = 'Gravada_Nota'
      Size = 1
    end
    object mAuxiliarDtEmissao2: TDateField
      FieldName = 'DtEmissao2'
    end
    object mAuxiliarCCe: TStringField
      FieldName = 'CCe'
      Size = 1
    end
    object mAuxiliarOcultar: TStringField
      FieldName = 'Ocultar'
      Size = 1
    end
    object mAuxiliarselecionada: TStringField
      FieldName = 'selecionada'
      Size = 1
    end
  end
  object dsmAuxiliar: TDataSource
    DataSet = mAuxiliar
    Left = 392
    Top = 296
  end
  object xtrNotaDestinada: TXMLTransformProvider
    Left = 612
    Top = 336
  end
  object cdsNotaDestinada: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NSU'
    Params = <>
    ProviderName = 'xtrNotaDestinada'
    Left = 604
    Top = 384
    object cdsNotaDestinadaNSU: TStringField
      FieldName = 'NSU'
      Size = 15
    end
    object cdsNotaDestinadaschema: TStringField
      FieldName = 'schema'
      Size = 23
    end
  end
  object dsNotaDestinada: TDataSource
    DataSet = cdsNotaDestinada
    Left = 648
    Top = 384
  end
  object qUF: TSQLDataSet
    CommandText = 'SELECT UF.uf, UF.coduf'#13#10'FROM UF'#13#10'WHERE UF.UF = :UF'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 192
    object qUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object qUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
  end
  object qParametros: TSQLDataSet
    CommandText = 'SELECT LOCALSERVIDORNFE, ENDXML_NOTAENTRADA'#13#10'FROM PARAMETROS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 248
    object qParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object qParametrosENDXML_NOTAENTRADA: TStringField
      FieldName = 'ENDXML_NOTAENTRADA'
      Size = 250
    end
  end
  object qUltNSU: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select MAX(NSU) NSU'
      'FROM MANIFESTO_EVE'
      '  WHERE FILIAL = :FILIAL')
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 424
    Top = 168
    object qUltNSUNSU: TStringField
      FieldName = 'NSU'
      Size = 15
    end
  end
  object qVerifica_Evento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Name = 'NSU'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select EVE.*'
      'FROM manifesto_eve EVE'
      'WHERE EVE.filial = :FILIAL'
      '  AND EVE.nsu = :NSU')
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 608
    Top = 224
    object qVerifica_EventoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerifica_EventoCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object qVerifica_EventoTIPO_EVENTO: TStringField
      FieldName = 'TIPO_EVENTO'
    end
    object qVerifica_EventoSCHEMA: TStringField
      FieldName = 'SCHEMA'
      Size = 50
    end
    object qVerifica_EventoXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object qVerifica_EventoORGAO: TStringField
      FieldName = 'ORGAO'
      Size = 5
    end
    object qVerifica_EventoSEQ_EVENTO: TIntegerField
      FieldName = 'SEQ_EVENTO'
    end
    object qVerifica_EventoDTEVENTO: TStringField
      FieldName = 'DTEVENTO'
      Size = 30
    end
    object qVerifica_EventoDESCRICAO_EVENTO: TStringField
      FieldName = 'DESCRICAO_EVENTO'
      Size = 60
    end
    object qVerifica_EventoCOD_EVENTO: TStringField
      FieldName = 'COD_EVENTO'
      Size = 10
    end
    object qVerifica_EventoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object qVerifica_EventoNSU: TStringField
      FieldName = 'NSU'
      Size = 15
    end
  end
  object qVerifica_Nota: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'nfechaveacesso'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT n.id, n.numnota, n.nfechaveacesso'
      'FROM notafiscal n'
      'where n.nfechaveacesso = :nfechaveacesso'
      '  and N.TIPO_REG = '#39'NTE'#39
      '   ')
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 240
    object qVerifica_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerifica_NotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qVerifica_NotaNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
  end
  object qPessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CNPJ_CPF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.codigo, P.nome, P.cnpj_cpf'
      'FROM pessoa P'
      'WHERE P.cnpj_cpf = :CNPJ_CPF')
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 304
    object qPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
  object qUltIDManifesto_AN: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(ID) ID'
      'FROM MANIFESTO_AN MA')
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 480
    Top = 384
    object qUltIDManifesto_ANID: TIntegerField
      FieldName = 'ID'
    end
  end
  object qDownload: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'chave_acesso'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT EVE.*'
      'FROM MANIFESTO_EVE EVE'
      'WHERE EVE.chave_acesso = :chave_acesso'
      '  AND EVE.tipo_evento = '#39'procNFe'#39)
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 320
    Top = 368
    object qDownloadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qDownloadXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
  end
  object qVerifica_Manifesto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE_ACESSO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select MA.*'
      'FROM MANIFESTO_AN MA'
      'WHERE MA.chave_acesso = :CHAVE_ACESSO'
      '  AND MA.FILIAL = :FILIAL')
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 528
    Top = 168
    object qVerifica_ManifestoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerifica_ManifestoCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object qVerifica_ManifestoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object qVerifica_ManifestoINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
    end
    object qVerifica_ManifestoDTEMISSAO: TStringField
      FieldName = 'DTEMISSAO'
      Size = 30
    end
    object qVerifica_ManifestoNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object qVerifica_ManifestoNUM_NOTA: TFMTBCDField
      FieldName = 'NUM_NOTA'
      Precision = 15
      Size = 0
    end
    object qVerifica_ManifestoVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object qVerifica_ManifestoSITUACAO_MANIF: TIntegerField
      FieldName = 'SITUACAO_MANIF'
    end
    object qVerifica_ManifestoSITUACAO_NFE: TIntegerField
      FieldName = 'SITUACAO_NFE'
    end
    object qVerifica_ManifestoXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object qVerifica_ManifestoSCHEMA: TStringField
      FieldName = 'SCHEMA'
      Size = 50
    end
    object qVerifica_ManifestoDTRECEBIMENTO: TStringField
      FieldName = 'DTRECEBIMENTO'
      Size = 30
    end
    object qVerifica_ManifestoNUM_PROTOCOLO: TStringField
      FieldName = 'NUM_PROTOCOLO'
      Size = 25
    end
    object qVerifica_ManifestoDOWNLOAD: TStringField
      FieldName = 'DOWNLOAD'
      FixedChar = True
      Size = 1
    end
    object qVerifica_ManifestoNSU: TStringField
      FieldName = 'NSU'
      Size = 15
    end
  end
  object sdsManifesto_Eve: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MANIFESTO_EVE'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 96
    Top = 88
    object sdsManifesto_EveID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsManifesto_EveCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object sdsManifesto_EveTIPO_EVENTO: TStringField
      FieldName = 'TIPO_EVENTO'
    end
    object sdsManifesto_EveSCHEMA: TStringField
      FieldName = 'SCHEMA'
      Size = 50
    end
    object sdsManifesto_EveXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object sdsManifesto_EveORGAO: TStringField
      FieldName = 'ORGAO'
      Size = 5
    end
    object sdsManifesto_EveSEQ_EVENTO: TIntegerField
      FieldName = 'SEQ_EVENTO'
    end
    object sdsManifesto_EveDTEVENTO: TStringField
      FieldName = 'DTEVENTO'
      Size = 30
    end
    object sdsManifesto_EveDESCRICAO_EVENTO: TStringField
      FieldName = 'DESCRICAO_EVENTO'
      Size = 60
    end
    object sdsManifesto_EveCOD_EVENTO: TStringField
      FieldName = 'COD_EVENTO'
      Size = 10
    end
    object sdsManifesto_EveFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsManifesto_EveNSU: TStringField
      FieldName = 'NSU'
      Size = 15
    end
    object sdsManifesto_EveNOTA_PROPRIA: TStringField
      FieldName = 'NOTA_PROPRIA'
      FixedChar = True
      Size = 1
    end
    object sdsManifesto_EveNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sdsManifesto_EveSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
  end
  object dspManifesto_Eve: TDataSetProvider
    DataSet = sdsManifesto_Eve
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 88
  end
  object cdsManifesto_Eve: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspManifesto_Eve'
    Left = 208
    Top = 88
    object cdsManifesto_EveID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsManifesto_EveCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object cdsManifesto_EveTIPO_EVENTO: TStringField
      FieldName = 'TIPO_EVENTO'
    end
    object cdsManifesto_EveSCHEMA: TStringField
      FieldName = 'SCHEMA'
      Size = 50
    end
    object cdsManifesto_EveXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsManifesto_EveORGAO: TStringField
      FieldName = 'ORGAO'
      Size = 5
    end
    object cdsManifesto_EveSEQ_EVENTO: TIntegerField
      FieldName = 'SEQ_EVENTO'
    end
    object cdsManifesto_EveDTEVENTO: TStringField
      FieldName = 'DTEVENTO'
      Size = 30
    end
    object cdsManifesto_EveDESCRICAO_EVENTO: TStringField
      FieldName = 'DESCRICAO_EVENTO'
      Size = 60
    end
    object cdsManifesto_EveCOD_EVENTO: TStringField
      FieldName = 'COD_EVENTO'
      Size = 10
    end
    object cdsManifesto_EveFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsManifesto_EveNSU: TStringField
      FieldName = 'NSU'
      Size = 15
    end
    object cdsManifesto_EveNOTA_PROPRIA: TStringField
      FieldName = 'NOTA_PROPRIA'
      FixedChar = True
      Size = 1
    end
    object cdsManifesto_EveNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsManifesto_EveSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
  end
  object dsManifesto_Eve: TDataSource
    DataSet = cdsManifesto_Eve
    Left = 264
    Top = 88
  end
  object sdsManifesto_AN: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM MANIFESTO_AN'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 96
    Top = 16
    object sdsManifesto_ANID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsManifesto_ANCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object sdsManifesto_ANCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsManifesto_ANINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
    end
    object sdsManifesto_ANDTEMISSAO: TStringField
      FieldName = 'DTEMISSAO'
      Size = 30
    end
    object sdsManifesto_ANNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsManifesto_ANNUM_NOTA: TFMTBCDField
      FieldName = 'NUM_NOTA'
      Precision = 15
      Size = 0
    end
    object sdsManifesto_ANVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object sdsManifesto_ANSITUACAO_MANIF: TIntegerField
      FieldName = 'SITUACAO_MANIF'
    end
    object sdsManifesto_ANSITUACAO_NFE: TIntegerField
      FieldName = 'SITUACAO_NFE'
    end
    object sdsManifesto_ANXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object sdsManifesto_ANSCHEMA: TStringField
      FieldName = 'SCHEMA'
      Size = 50
    end
    object sdsManifesto_ANDTRECEBIMENTO: TStringField
      FieldName = 'DTRECEBIMENTO'
      Size = 30
    end
    object sdsManifesto_ANNUM_PROTOCOLO: TStringField
      FieldName = 'NUM_PROTOCOLO'
      Size = 25
    end
    object sdsManifesto_ANDOWNLOAD: TStringField
      FieldName = 'DOWNLOAD'
      FixedChar = True
      Size = 1
    end
    object sdsManifesto_ANGRAVADA_NOTA: TStringField
      FieldName = 'GRAVADA_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsManifesto_ANTIPO_EVE: TStringField
      FieldName = 'TIPO_EVE'
    end
    object sdsManifesto_ANCNPJ_FILIAL: TStringField
      FieldName = 'CNPJ_FILIAL'
      Size = 18
    end
    object sdsManifesto_ANFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsManifesto_ANNSU: TStringField
      FieldName = 'NSU'
      Size = 15
    end
    object sdsManifesto_ANNOTA_PROPRIA: TStringField
      FieldName = 'NOTA_PROPRIA'
      FixedChar = True
      Size = 1
    end
    object sdsManifesto_ANSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsManifesto_ANDTEMISSAO2: TDateField
      FieldName = 'DTEMISSAO2'
    end
    object sdsManifesto_ANPOSSUI_CCE: TStringField
      FieldName = 'POSSUI_CCE'
      Size = 1
    end
    object sdsManifesto_ANOCULTAR: TStringField
      FieldName = 'OCULTAR'
      Size = 1
    end
  end
  object dspManifesto_AN: TDataSetProvider
    DataSet = sdsManifesto_AN
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 16
  end
  object cdsManifesto_AN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspManifesto_AN'
    Left = 208
    Top = 24
    object cdsManifesto_ANID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsManifesto_ANCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object cdsManifesto_ANCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsManifesto_ANINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
    end
    object cdsManifesto_ANDTEMISSAO: TStringField
      FieldName = 'DTEMISSAO'
      Size = 30
    end
    object cdsManifesto_ANNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsManifesto_ANNUM_NOTA: TFMTBCDField
      FieldName = 'NUM_NOTA'
      Precision = 15
      Size = 0
    end
    object cdsManifesto_ANVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object cdsManifesto_ANSITUACAO_MANIF: TIntegerField
      FieldName = 'SITUACAO_MANIF'
    end
    object cdsManifesto_ANSITUACAO_NFE: TIntegerField
      FieldName = 'SITUACAO_NFE'
    end
    object cdsManifesto_ANXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsManifesto_ANSCHEMA: TStringField
      FieldName = 'SCHEMA'
      Size = 50
    end
    object cdsManifesto_ANDTRECEBIMENTO: TStringField
      FieldName = 'DTRECEBIMENTO'
      Size = 30
    end
    object cdsManifesto_ANNUM_PROTOCOLO: TStringField
      FieldName = 'NUM_PROTOCOLO'
      Size = 25
    end
    object cdsManifesto_ANDOWNLOAD: TStringField
      FieldName = 'DOWNLOAD'
      FixedChar = True
      Size = 1
    end
    object cdsManifesto_ANGRAVADA_NOTA: TStringField
      FieldName = 'GRAVADA_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsManifesto_ANTIPO_EVE: TStringField
      FieldName = 'TIPO_EVE'
    end
    object cdsManifesto_ANCNPJ_FILIAL: TStringField
      FieldName = 'CNPJ_FILIAL'
      Size = 18
    end
    object cdsManifesto_ANFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsManifesto_ANNSU: TStringField
      FieldName = 'NSU'
      Size = 15
    end
    object cdsManifesto_ANNOTA_PROPRIA: TStringField
      FieldName = 'NOTA_PROPRIA'
      FixedChar = True
      Size = 1
    end
    object cdsManifesto_ANSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsManifesto_ANDTEMISSAO2: TDateField
      FieldName = 'DTEMISSAO2'
    end
    object cdsManifesto_ANPOSSUI_CCE: TStringField
      FieldName = 'POSSUI_CCE'
      Size = 1
    end
    object cdsManifesto_ANOCULTAR: TStringField
      FieldName = 'OCULTAR'
      Size = 1
    end
  end
  object dsManifesto_AN: TDataSource
    DataSet = cdsManifesto_AN
    Left = 248
    Top = 24
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select AN.*'#13#10'FROM manifesto_AN AN'#13#10'WHERE AN.filial = :FILIAL'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 88
    Top = 216
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 128
    Top = 216
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 168
    Top = 216
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object cdsConsultaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsConsultaINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
    end
    object cdsConsultaDTEMISSAO: TStringField
      FieldName = 'DTEMISSAO'
      Size = 30
    end
    object cdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsConsultaNUM_NOTA: TFMTBCDField
      FieldName = 'NUM_NOTA'
      Precision = 15
      Size = 0
    end
    object cdsConsultaVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object cdsConsultaSITUACAO_MANIF: TIntegerField
      FieldName = 'SITUACAO_MANIF'
    end
    object cdsConsultaSITUACAO_NFE: TIntegerField
      FieldName = 'SITUACAO_NFE'
    end
    object cdsConsultaXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaSCHEMA: TStringField
      FieldName = 'SCHEMA'
      Size = 50
    end
    object cdsConsultaDTRECEBIMENTO: TStringField
      FieldName = 'DTRECEBIMENTO'
      Size = 30
    end
    object cdsConsultaNUM_PROTOCOLO: TStringField
      FieldName = 'NUM_PROTOCOLO'
      Size = 25
    end
    object cdsConsultaDOWNLOAD: TStringField
      FieldName = 'DOWNLOAD'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaGRAVADA_NOTA: TStringField
      FieldName = 'GRAVADA_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaTIPO_EVE: TStringField
      FieldName = 'TIPO_EVE'
    end
    object cdsConsultaCNPJ_FILIAL: TStringField
      FieldName = 'CNPJ_FILIAL'
      Size = 18
    end
    object cdsConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsultaNSU: TStringField
      FieldName = 'NSU'
      Size = 15
    end
    object cdsConsultaNOTA_PROPRIA: TStringField
      FieldName = 'NOTA_PROPRIA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsConsultaDTEMISSAO2: TDateField
      FieldName = 'DTEMISSAO2'
    end
    object cdsConsultaPOSSUI_CCE: TStringField
      FieldName = 'POSSUI_CCE'
      Size = 1
    end
    object cdsConsultaOCULTAR: TStringField
      FieldName = 'OCULTAR'
      Size = 1
    end
  end
  object sdsParametros_Geral: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_GERAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 672
    Top = 104
    object sdsParametros_GeralID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsParametros_GeralENDGRIDS: TStringField
      FieldName = 'ENDGRIDS'
      Size = 250
    end
    object sdsParametros_GeralUSA_PONTOS_LOCACAO: TStringField
      FieldName = 'USA_PONTOS_LOCACAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralMOSTRAR_DADOS_PESSOA_FISICA: TStringField
      FieldName = 'MOSTRAR_DADOS_PESSOA_FISICA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralLIBERAR_DIG_DTCADASTRO: TStringField
      FieldName = 'LIBERAR_DIG_DTCADASTRO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralUSAR_PESSOA_FILIAL: TStringField
      FieldName = 'USAR_PESSOA_FILIAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralMOSTRAR_COD_CONTABIL: TStringField
      FieldName = 'MOSTRAR_COD_CONTABIL'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralEND_ARQ_INT_CONTABIL: TStringField
      FieldName = 'END_ARQ_INT_CONTABIL'
      Size = 200
    end
    object sdsParametros_GeralUSA_TIPO_CONTR_VARIACAO: TStringField
      FieldName = 'USA_TIPO_CONTR_VARIACAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralGRAVAR_HIST_SENHA: TStringField
      FieldName = 'GRAVAR_HIST_SENHA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralEND_ARQ_PERDCOMP: TStringField
      FieldName = 'END_ARQ_PERDCOMP'
      Size = 200
    end
    object sdsParametros_GeralVERSAO_BANCO_NFE: TIntegerField
      FieldName = 'VERSAO_BANCO_NFE'
    end
  end
  object dspParametros_Geral: TDataSetProvider
    DataSet = sdsParametros_Geral
    Left = 712
    Top = 104
  end
  object cdsParametros_Geral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametros_Geral'
    Left = 752
    Top = 88
    object cdsParametros_GeralID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsParametros_GeralENDGRIDS: TStringField
      FieldName = 'ENDGRIDS'
      Size = 250
    end
    object cdsParametros_GeralUSA_PONTOS_LOCACAO: TStringField
      FieldName = 'USA_PONTOS_LOCACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralMOSTRAR_DADOS_PESSOA_FISICA: TStringField
      FieldName = 'MOSTRAR_DADOS_PESSOA_FISICA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralLIBERAR_DIG_DTCADASTRO: TStringField
      FieldName = 'LIBERAR_DIG_DTCADASTRO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralUSAR_PESSOA_FILIAL: TStringField
      FieldName = 'USAR_PESSOA_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralMOSTRAR_COD_CONTABIL: TStringField
      FieldName = 'MOSTRAR_COD_CONTABIL'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralEND_ARQ_INT_CONTABIL: TStringField
      FieldName = 'END_ARQ_INT_CONTABIL'
      Size = 200
    end
    object cdsParametros_GeralUSA_TIPO_CONTR_VARIACAO: TStringField
      FieldName = 'USA_TIPO_CONTR_VARIACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralGRAVAR_HIST_SENHA: TStringField
      FieldName = 'GRAVAR_HIST_SENHA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralEND_ARQ_PERDCOMP: TStringField
      FieldName = 'END_ARQ_PERDCOMP'
      Size = 200
    end
    object cdsParametros_GeralVERSAO_BANCO_NFE: TIntegerField
      FieldName = 'VERSAO_BANCO_NFE'
    end
  end
  object qUltManifesto_EVE: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(ID) ID'
      'FROM MANIFESTO_EVE')
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 472
    Top = 456
    object qUltManifesto_EVEID: TIntegerField
      FieldName = 'ID'
    end
  end
  object qParametros_RecXML: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_RECXML')
    SQLConnection = dmDatabase.scoDados
    Left = 160
    Top = 376
    object qParametros_RecXMLID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_RecXMLUSA_OPCAO_NOTA_LANC: TStringField
      FieldName = 'USA_OPCAO_NOTA_LANC'
      FixedChar = True
      Size = 1
    end
  end
  object qVerifica_Cancelamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHAVE_ACESSO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select EVE.*'
      'FROM manifesto_eve EVE'
      'WHERE EVE.filial = :FILIAL'
      '  and EVE.CHAVE_ACESSO = :CHAVE_ACESSO'
      '  and eve.tipo_evento = '#39'Cancelamento'#39)
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 736
    Top = 320
    object qVerifica_CancelamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerifica_CancelamentoCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object qVerifica_CancelamentoTIPO_EVENTO: TStringField
      FieldName = 'TIPO_EVENTO'
    end
  end
  object sdsEvento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select eve.*'#13#10'from manifesto_eve eve'#13#10'where EVE.CHAVE_ACESSO = :' +
      'CHAVE_ACESSO'#13#10'  and eve.filial = :FILIAL'#13#10'  and (eve.tipo_evento' +
      ' <> '#39'resNFe'#39')'#13#10'  and (eve.tipo_evento <> '#39'procNFe'#39')'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE_ACESSO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 896
    Top = 216
  end
  object dspEvento: TDataSetProvider
    DataSet = sdsEvento
    Left = 936
    Top = 216
  end
  object cdsEvento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEvento'
    Left = 976
    Top = 216
    object cdsEventoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEventoCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object cdsEventoTIPO_EVENTO: TStringField
      FieldName = 'TIPO_EVENTO'
    end
    object cdsEventoSCHEMA: TStringField
      FieldName = 'SCHEMA'
      Size = 50
    end
    object cdsEventoXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsEventoORGAO: TStringField
      FieldName = 'ORGAO'
      Size = 5
    end
    object cdsEventoSEQ_EVENTO: TIntegerField
      FieldName = 'SEQ_EVENTO'
    end
    object cdsEventoDTEVENTO: TStringField
      FieldName = 'DTEVENTO'
      Size = 30
    end
    object cdsEventoDESCRICAO_EVENTO: TStringField
      FieldName = 'DESCRICAO_EVENTO'
      Size = 60
    end
    object cdsEventoCOD_EVENTO: TStringField
      FieldName = 'COD_EVENTO'
      Size = 10
    end
    object cdsEventoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEventoNSU: TStringField
      FieldName = 'NSU'
      Size = 15
    end
    object cdsEventoNOTA_PROPRIA: TStringField
      FieldName = 'NOTA_PROPRIA'
      FixedChar = True
      Size = 1
    end
    object cdsEventoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsEventoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
  end
  object mEventoAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Obs'
        DataType = ftMemo
        Size = 10
      end
      item
        Name = 'DtCompleta'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DtEvento'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    StoreDefs = True
    Left = 904
    Top = 272
    Data = {
      8E0000009619E0BD0100000018000000040000000000030000008E0004546970
      6F0100490000000100055749445448020002001400034F627304004B00000002
      0007535542545950450200490005005465787400055749445448020002000A00
      0A4474436F6D706C657461010049000000010005574944544802000200280008
      44744576656E746F04000600000000000000}
    object mEventoAuxTipo: TStringField
      FieldName = 'Tipo'
    end
    object mEventoAuxObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 10
    end
    object mEventoAuxDtCompleta: TStringField
      FieldName = 'DtCompleta'
      Size = 40
    end
    object mEventoAuxDtEvento: TDateField
      FieldName = 'DtEvento'
    end
  end
  object dsmEventoAux: TDataSource
    DataSet = mEventoAux
    Left = 944
    Top = 272
  end
  object qXML: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE_ACESSO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT E.*'
      'FROM MANIFESTO_EVE e'
      'WHERE E.CHAVE_ACESSO = :CHAVE_ACESSO'
      '  AND E.TIPO_EVENTO = '#39'procNFe'#39)
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 920
    Top = 376
    object qXMLXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
  end
end
