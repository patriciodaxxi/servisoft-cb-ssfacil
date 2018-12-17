object DMEmail: TDMEmail
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 339
  Top = 214
  Height = 368
  Width = 524
  object sdsPessoa: TSQLDataSet
    CommandText = 
      'SELECT P.CODIGO, P.NOME, P.CNPJ_CPF, P.email_pgto, P.cidade, P.u' +
      'f'#13#10'FROM PESSOA P'#13#10'WHERE P.inativo = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 48
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 176
    Top = 48
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsPessoaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 128
    Top = 48
  end
  object mAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Cnpj_Cpf'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Email_Filial'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'Enviado'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 216
    Top = 184
    Data = {
      E80000009619E0BD010000001800000008000000000003000000E80006436F64
      69676F0400010000000000044E6F6D6501004900000001000557494454480200
      0200460005456D61696C010049000000010005574944544802000200FA000643
      6964616465010049000000010005574944544802000200280002554601004900
      0000010005574944544802000200020008436E706A5F43706601004900000001
      000557494454480200020012000C456D61696C5F46696C69616C010049000000
      010005574944544802000200FA0007456E766961646F01004900000001000557
      494454480200020001000000}
    object mAuxiliarCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object mAuxiliarNome: TStringField
      FieldName = 'Nome'
      Size = 70
    end
    object mAuxiliarEmail: TStringField
      FieldName = 'Email'
      Size = 250
    end
    object mAuxiliarCidade: TStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object mAuxiliarUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mAuxiliarCnpj_Cpf: TStringField
      FieldName = 'Cnpj_Cpf'
      Size = 18
    end
    object mAuxiliarEmail_Filial: TStringField
      FieldName = 'Email_Filial'
      Size = 250
    end
    object mAuxiliarEnviado: TStringField
      FieldName = 'Enviado'
      Size = 1
    end
  end
  object dsmAuxiliar: TDataSource
    DataSet = mAuxiliar
    Left = 280
    Top = 184
  end
  object mSemEmail: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Cnpj_Cpf'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Email_Filial'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 216
    Top = 248
    Data = {
      CC0000009619E0BD010000001800000007000000000003000000CC0006436F64
      69676F0400010000000000044E6F6D6501004900000001000557494454480200
      0200460005456D61696C010049000000010005574944544802000200FA000643
      6964616465010049000000010005574944544802000200280002554601004900
      0000010005574944544802000200020008436E706A5F43706601004900000001
      000557494454480200020012000C456D61696C5F46696C69616C010049000000
      010005574944544802000200FA000000}
    object mSemEmailCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object mSemEmailNome: TStringField
      FieldName = 'Nome'
      Size = 70
    end
    object mSemEmailEmail: TStringField
      FieldName = 'Email'
      Size = 250
    end
    object mSemEmailCidade: TStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object mSemEmailUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mSemEmailCnpj_Cpf: TStringField
      FieldName = 'Cnpj_Cpf'
      Size = 18
    end
    object mSemEmailEmail_Filial: TStringField
      FieldName = 'Email_Filial'
      Size = 250
    end
  end
  object dsmSemEmail: TDataSource
    DataSet = mSemEmail
    Left = 280
    Top = 248
  end
  object sdsFilial: TSQLDataSet
    CommandText = 
      'select f.id, f.nome, f.email_financeiro, NOME_INTERNO'#13#10'from fili' +
      'al f'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 104
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 176
    Top = 104
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialEMAIL_FINANCEIRO: TStringField
      FieldName = 'EMAIL_FINANCEIRO'
      Size = 200
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 128
    Top = 104
  end
  object qFilial_Email: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT FE.ID ID_FILIAL, FE.id_config_email, CE.nome_config, CE.r' +
        'emetente_nome, CE.remetente_email,'
      
        'CE.smtp_cliente, CE.smtp_porta, CE.smtp_requer_ssl, CE.smtp_usua' +
        'rio, CE.smtp_senha,'
      
        'CE.solicitar_confirmacao, CE.base, F.cnpj_cpf CNPJ_CPF_FILIAL, F' +
        '.LOCALSERVIDORNFE'
      'FROM FILIAL_EMAIL FE'
      'INNER JOIN FILIAL F'
      'ON FE.ID = F.ID'
      'INNER JOIN CONFIG_EMAIL CE'
      'ON FE.id_config_email = CE.id'
      'WHERE FE.ID = :ID'
      '   AND FE.TIPO_REG = 3')
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 64
    object qFilial_EmailID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Required = True
    end
    object qFilial_EmailID_CONFIG_EMAIL: TIntegerField
      FieldName = 'ID_CONFIG_EMAIL'
    end
    object qFilial_EmailNOME_CONFIG: TStringField
      FieldName = 'NOME_CONFIG'
      Required = True
      Size = 40
    end
    object qFilial_EmailREMETENTE_NOME: TStringField
      FieldName = 'REMETENTE_NOME'
      Size = 100
    end
    object qFilial_EmailREMETENTE_EMAIL: TStringField
      FieldName = 'REMETENTE_EMAIL'
      Size = 150
    end
    object qFilial_EmailSMTP_CLIENTE: TStringField
      FieldName = 'SMTP_CLIENTE'
      Size = 100
    end
    object qFilial_EmailSMTP_PORTA: TIntegerField
      FieldName = 'SMTP_PORTA'
    end
    object qFilial_EmailSMTP_REQUER_SSL: TStringField
      FieldName = 'SMTP_REQUER_SSL'
      FixedChar = True
      Size = 1
    end
    object qFilial_EmailSMTP_USUARIO: TStringField
      FieldName = 'SMTP_USUARIO'
      Size = 100
    end
    object qFilial_EmailSMTP_SENHA: TStringField
      FieldName = 'SMTP_SENHA'
      Size = 100
    end
    object qFilial_EmailSOLICITAR_CONFIRMACAO: TStringField
      FieldName = 'SOLICITAR_CONFIRMACAO'
      FixedChar = True
      Size = 1
    end
    object qFilial_EmailBASE: TSmallintField
      FieldName = 'BASE'
    end
    object qFilial_EmailCNPJ_CPF_FILIAL: TStringField
      FieldName = 'CNPJ_CPF_FILIAL'
      Size = 18
    end
    object qFilial_EmailLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID_BANCO_REMESSA, LOCALSERVIDORNFE'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 128
    object qParametrosID_BANCO_REMESSA: TIntegerField
      FieldName = 'ID_BANCO_REMESSA'
    end
    object qParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 216
    Top = 104
  end
end
