object DMImportarXML: TDMImportarXML
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 61
  Top = 35
  Height = 691
  Width = 1014
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CFOP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 32
    object sdsCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object sdsCFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_ICMS: TStringField
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object sdsCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object sdsCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object sdsCFOPGERAR_ICMS_SIMPLES: TStringField
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object sdsCFOPBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 616
    Top = 32
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 680
    Top = 32
    object cdsCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCFOPCODCFOP: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsCFOPNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCFOPGERAR_IPI: TStringField
      DisplayLabel = 'Gerar IPI'
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ICMS: TStringField
      DisplayLabel = 'Gerar ICMS'
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_DUPLICATA: TStringField
      DisplayLabel = 'Gerar Duplicata'
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      DisplayLabel = 'Somar no Vlr. dos Produtos'
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPNOME_INTERNO: TStringField
      DisplayLabel = 'Nome Interno'
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsCFOPGERAR_ICMS_SIMPLES: TStringField
      DisplayLabel = 'Gerar ICMS Simples'
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPTIPO_EMPRESA: TStringField
      DisplayLabel = 'Tipo Empresa'
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCFOPBENEFICIAMENTO: TStringField
      DisplayLabel = 'Beneficiamento'
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 752
    Top = 32
  end
  object XMLTransformProvider1: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\Delphi7\SSFacil\EXE\nfe_v2.00_ToDp.xtr'
    XMLDataFile = 'C:\A\XMLScorpio\143110089526210_v2.00-procNFe.xml'
    CacheData = True
    Left = 432
    Top = 232
  end
  object cdsCabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProvider1'
    Left = 424
    Top = 304
    object cdsCabecalhoversao: TStringField
      FieldName = 'versao'
      Required = True
      Size = 6
    end
    object cdsCabecalhoinfNFe_Id: TStringField
      FieldName = 'infNFe_Id'
      Required = True
      Size = 47
    end
    object cdsCabecalhocUF: TIntegerField
      FieldName = 'cUF'
    end
    object cdsCabecalhocNF: TIntegerField
      FieldName = 'cNF'
    end
    object cdsCabecalhonatOp: TStringField
      FieldName = 'natOp'
      Size = 60
    end
    object cdsCabecalhoindPag: TIntegerField
      FieldName = 'indPag'
    end
    object cdsCabecalhomod: TStringField
      FieldName = 'mod'
      Size = 3
    end
    object cdsCabecalhoserie: TIntegerField
      FieldName = 'serie'
    end
    object cdsCabecalhonNF: TIntegerField
      FieldName = 'nNF'
    end
    object cdsCabecalhoide_dEmi: TDateField
      FieldName = 'ide_dEmi'
    end
    object cdsCabecalhodSaiEnt: TDateField
      FieldName = 'dSaiEnt'
    end
    object cdsCabecalhohSaiEnt: TStringField
      FieldName = 'hSaiEnt'
      Size = 8
    end
    object cdsCabecalhotpNF: TIntegerField
      FieldName = 'tpNF'
    end
    object cdsCabecalhoIEST: TStringField
      FieldName = 'IEST'
      Size = 14
    end
    object cdsCabecalhocMunFG1: TIntegerField
      FieldName = 'cMunFG1'
    end
    object cdsCabecalhotpImp: TIntegerField
      FieldName = 'tpImp'
    end
    object cdsCabecalhotpEmis: TIntegerField
      FieldName = 'tpEmis'
    end
    object cdsCabecalhocDV: TIntegerField
      FieldName = 'cDV'
    end
    object cdsCabecalhotpAmb: TStringField
      FieldName = 'tpAmb'
      Size = 31
    end
    object cdsCabecalhofinNFe: TIntegerField
      FieldName = 'finNFe'
    end
    object cdsCabecalhoprocEmi: TIntegerField
      FieldName = 'procEmi'
    end
    object cdsCabecalhoverProc: TStringField
      FieldName = 'verProc'
    end
    object cdsCabecalhodhCont: TDateField
      FieldName = 'dhCont'
    end
    object cdsCabecalhoxJust: TStringField
      FieldName = 'xJust'
      Size = 256
    end
    object cdsCabecalhoemit_CNPJ: TStringField
      FieldName = 'emit_CNPJ'
      Size = 14
    end
    object cdsCabecalhoemit_CPF: TStringField
      FieldName = 'emit_CPF'
      Size = 11
    end
    object cdsCabecalhoemit_xNome: TStringField
      FieldName = 'emit_xNome'
      Size = 60
    end
    object cdsCabecalhoxFant: TStringField
      FieldName = 'xFant'
      Size = 60
    end
    object cdsCabecalhoenderEmit_xLgr: TStringField
      FieldName = 'enderEmit_xLgr'
      Size = 60
    end
    object cdsCabecalhoenderEmit_nro: TStringField
      FieldName = 'enderEmit_nro'
      Size = 60
    end
    object cdsCabecalhoenderEmit_xCpl: TStringField
      FieldName = 'enderEmit_xCpl'
      Size = 60
    end
    object cdsCabecalhoenderEmit_xBairro: TStringField
      FieldName = 'enderEmit_xBairro'
      Size = 60
    end
    object cdsCabecalhoenderEmit_cMun: TIntegerField
      FieldName = 'enderEmit_cMun'
    end
    object cdsCabecalhoenderEmit_xMun: TStringField
      FieldName = 'enderEmit_xMun'
      Size = 60
    end
    object cdsCabecalhoenderEmit_UF: TStringField
      FieldName = 'enderEmit_UF'
      Size = 3
    end
    object cdsCabecalhoenderEmit_CEP: TIntegerField
      FieldName = 'enderEmit_CEP'
    end
    object cdsCabecalhoenderEmit_cPais: TIntegerField
      FieldName = 'enderEmit_cPais'
    end
    object cdsCabecalhoenderEmit_xPais: TStringField
      FieldName = 'enderEmit_xPais'
      Size = 60
    end
    object cdsCabecalhoenderEmit_fone: TStringField
      FieldName = 'enderEmit_fone'
    end
    object cdsCabecalhoemit_IE: TStringField
      FieldName = 'emit_IE'
      Size = 14
    end
    object cdsCabecalhoIM: TStringField
      FieldName = 'IM'
      Size = 15
    end
    object cdsCabecalhoCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsCabecalhoCRT: TIntegerField
      FieldName = 'CRT'
    end
    object cdsCabecalhoavulsa_CNPJ: TStringField
      FieldName = 'avulsa_CNPJ'
      Size = 14
    end
    object cdsCabecalhoxOrgao: TStringField
      FieldName = 'xOrgao'
      Size = 60
    end
    object cdsCabecalhomatr: TStringField
      FieldName = 'matr'
      Size = 60
    end
    object cdsCabecalhoxAgente: TStringField
      FieldName = 'xAgente'
      Size = 60
    end
    object cdsCabecalhofone: TStringField
      FieldName = 'fone'
    end
    object cdsCabecalhoavulsa_UF: TStringField
      FieldName = 'avulsa_UF'
      Size = 3
    end
    object cdsCabecalhonDAR: TStringField
      FieldName = 'nDAR'
      Size = 60
    end
    object cdsCabecalhoavulsa_dEmi: TDateField
      FieldName = 'avulsa_dEmi'
    end
    object cdsCabecalhovDAR: TFloatField
      FieldName = 'vDAR'
    end
    object cdsCabecalhorepEmi: TStringField
      FieldName = 'repEmi'
      Size = 60
    end
    object cdsCabecalhodPag: TDateField
      FieldName = 'dPag'
    end
    object cdsCabecalhodest_CNPJ: TStringField
      FieldName = 'dest_CNPJ'
      Size = 14
    end
    object cdsCabecalhodest_CPF: TStringField
      FieldName = 'dest_CPF'
      Size = 11
    end
    object cdsCabecalhodest_xNome: TStringField
      FieldName = 'dest_xNome'
      Size = 60
    end
    object cdsCabecalhoenderDest_xLgr: TStringField
      FieldName = 'enderDest_xLgr'
      Size = 60
    end
    object cdsCabecalhoenderDest_nro: TStringField
      FieldName = 'enderDest_nro'
      Size = 60
    end
    object cdsCabecalhoenderDest_xCpl: TStringField
      FieldName = 'enderDest_xCpl'
      Size = 60
    end
    object cdsCabecalhoenderDest_xBairro: TStringField
      FieldName = 'enderDest_xBairro'
      Size = 60
    end
    object cdsCabecalhoenderDest_cMun: TIntegerField
      FieldName = 'enderDest_cMun'
    end
    object cdsCabecalhoenderDest_xMun: TStringField
      FieldName = 'enderDest_xMun'
      Size = 60
    end
    object cdsCabecalhoenderDest_UF: TStringField
      FieldName = 'enderDest_UF'
      Size = 3
    end
    object cdsCabecalhoenderDest_CEP: TIntegerField
      FieldName = 'enderDest_CEP'
    end
    object cdsCabecalhoenderDest_cPais: TIntegerField
      FieldName = 'enderDest_cPais'
    end
    object cdsCabecalhoenderDest_xPais: TStringField
      FieldName = 'enderDest_xPais'
      Size = 60
    end
    object cdsCabecalhoenderDest_fone: TStringField
      FieldName = 'enderDest_fone'
    end
    object cdsCabecalhodest_IE: TStringField
      FieldName = 'dest_IE'
      Size = 14
    end
    object cdsCabecalhoISUF: TStringField
      FieldName = 'ISUF'
      Size = 9
    end
    object cdsCabecalhoemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object cdsCabecalhoretirada_CNPJ: TStringField
      FieldName = 'retirada_CNPJ'
      Size = 14
    end
    object cdsCabecalhoretirada_CPF: TStringField
      FieldName = 'retirada_CPF'
      Size = 11
    end
    object cdsCabecalhoretirada_xLgr: TStringField
      FieldName = 'retirada_xLgr'
      Size = 60
    end
    object cdsCabecalhoretirada_nro: TStringField
      FieldName = 'retirada_nro'
      Size = 60
    end
    object cdsCabecalhoretirada_xCpl: TStringField
      FieldName = 'retirada_xCpl'
      Size = 60
    end
    object cdsCabecalhoretirada_xBairro: TStringField
      FieldName = 'retirada_xBairro'
      Size = 60
    end
    object cdsCabecalhoretirada_cMun: TIntegerField
      FieldName = 'retirada_cMun'
    end
    object cdsCabecalhoretirada_xMun: TStringField
      FieldName = 'retirada_xMun'
      Size = 60
    end
    object cdsCabecalhoretirada_UF: TStringField
      FieldName = 'retirada_UF'
      Size = 3
    end
    object cdsCabecalhoentrega_CNPJ: TStringField
      FieldName = 'entrega_CNPJ'
      Size = 14
    end
    object cdsCabecalhoentrega_CPF: TStringField
      FieldName = 'entrega_CPF'
      Size = 11
    end
    object cdsCabecalhoentrega_xLgr: TStringField
      FieldName = 'entrega_xLgr'
      Size = 60
    end
    object cdsCabecalhoentrega_nro: TStringField
      FieldName = 'entrega_nro'
      Size = 60
    end
    object cdsCabecalhoentrega_xCpl: TStringField
      FieldName = 'entrega_xCpl'
      Size = 60
    end
    object cdsCabecalhoentrega_xBairro: TStringField
      FieldName = 'entrega_xBairro'
      Size = 60
    end
    object cdsCabecalhoentrega_cMun: TIntegerField
      FieldName = 'entrega_cMun'
    end
    object cdsCabecalhoentrega_xMun: TStringField
      FieldName = 'entrega_xMun'
      Size = 60
    end
    object cdsCabecalhoentrega_UF: TStringField
      FieldName = 'entrega_UF'
      Size = 3
    end
    object cdsCabecalhoICMSTot_vBC: TFloatField
      FieldName = 'ICMSTot_vBC'
    end
    object cdsCabecalhovICMS: TFloatField
      FieldName = 'vICMS'
    end
    object cdsCabecalhovBCST: TFloatField
      FieldName = 'vBCST'
    end
    object cdsCabecalhovST: TFloatField
      FieldName = 'vST'
    end
    object cdsCabecalhovProd: TFloatField
      FieldName = 'vProd'
    end
    object cdsCabecalhovFrete: TFloatField
      FieldName = 'vFrete'
    end
    object cdsCabecalhovSeg: TFloatField
      FieldName = 'vSeg'
    end
    object cdsCabecalhoICMSTot_vDesc: TFloatField
      FieldName = 'ICMSTot_vDesc'
    end
    object cdsCabecalhovII: TFloatField
      FieldName = 'vII'
    end
    object cdsCabecalhovIPI: TFloatField
      FieldName = 'vIPI'
    end
    object cdsCabecalhoICMSTot_vPIS: TFloatField
      FieldName = 'ICMSTot_vPIS'
    end
    object cdsCabecalhoICMSTot_vCOFINS: TFloatField
      FieldName = 'ICMSTot_vCOFINS'
    end
    object cdsCabecalhovOutro: TFloatField
      FieldName = 'vOutro'
    end
    object cdsCabecalhovNF: TFloatField
      FieldName = 'vNF'
    end
    object cdsCabecalhoISSQNtot_vServ: TFloatField
      FieldName = 'ISSQNtot_vServ'
    end
    object cdsCabecalhoISSQNtot_vBC: TFloatField
      FieldName = 'ISSQNtot_vBC'
    end
    object cdsCabecalhovISS: TFloatField
      FieldName = 'vISS'
    end
    object cdsCabecalhoISSQNtot_vPIS: TFloatField
      FieldName = 'ISSQNtot_vPIS'
    end
    object cdsCabecalhoISSQNtot_vCOFINS: TFloatField
      FieldName = 'ISSQNtot_vCOFINS'
    end
    object cdsCabecalhovRetPIS: TFloatField
      FieldName = 'vRetPIS'
    end
    object cdsCabecalhovRetCOFINS: TFloatField
      FieldName = 'vRetCOFINS'
    end
    object cdsCabecalhovRetCSLL: TFloatField
      FieldName = 'vRetCSLL'
    end
    object cdsCabecalhovBCIRRF: TFloatField
      FieldName = 'vBCIRRF'
    end
    object cdsCabecalhovIRRF: TFloatField
      FieldName = 'vIRRF'
    end
    object cdsCabecalhovBCRetPrev: TFloatField
      FieldName = 'vBCRetPrev'
    end
    object cdsCabecalhovRetPrev: TFloatField
      FieldName = 'vRetPrev'
    end
    object cdsCabecalhomodFrete: TIntegerField
      FieldName = 'modFrete'
    end
    object cdsCabecalhoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cdsCabecalhoCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsCabecalhoxNome: TStringField
      FieldName = 'xNome'
      Size = 60
    end
    object cdsCabecalhoIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object cdsCabecalhoxEnder: TStringField
      FieldName = 'xEnder'
      Size = 60
    end
    object cdsCabecalhotransporta_xMun: TStringField
      FieldName = 'transporta_xMun'
      Size = 60
    end
    object cdsCabecalhotransporta_UF: TStringField
      FieldName = 'transporta_UF'
      Size = 3
    end
    object cdsCabecalhoretTransp_vServ: TFloatField
      FieldName = 'retTransp_vServ'
    end
    object cdsCabecalhovBCRet: TFloatField
      FieldName = 'vBCRet'
    end
    object cdsCabecalhopICMSRet: TFloatField
      FieldName = 'pICMSRet'
    end
    object cdsCabecalhovICMSRet: TFloatField
      FieldName = 'vICMSRet'
    end
    object cdsCabecalhoCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object cdsCabecalhocMunFG2: TIntegerField
      FieldName = 'cMunFG2'
    end
    object cdsCabecalhoveicTransp_placa: TStringField
      FieldName = 'veicTransp_placa'
      Size = 8
    end
    object cdsCabecalhoveicTransp_UF: TStringField
      FieldName = 'veicTransp_UF'
      Size = 3
    end
    object cdsCabecalhoveicTransp_RNTC: TStringField
      FieldName = 'veicTransp_RNTC'
    end
    object cdsCabecalhoreboque_placa: TStringField
      FieldName = 'reboque_placa'
      Size = 8
    end
    object cdsCabecalhoreboque_UF: TStringField
      FieldName = 'reboque_UF'
      Size = 3
    end
    object cdsCabecalhoreboque_RNTC: TStringField
      FieldName = 'reboque_RNTC'
    end
    object cdsCabecalhovagao: TStringField
      FieldName = 'vagao'
    end
    object cdsCabecalhobalsa: TStringField
      FieldName = 'balsa'
    end
    object cdsCabecalhonFat: TStringField
      FieldName = 'nFat'
      Size = 60
    end
    object cdsCabecalhovOrig: TFloatField
      FieldName = 'vOrig'
    end
    object cdsCabecalhofat_vDesc: TFloatField
      FieldName = 'fat_vDesc'
    end
    object cdsCabecalhovLiq: TFloatField
      FieldName = 'vLiq'
    end
    object cdsCabecalhoinfAdFisco: TStringField
      FieldName = 'infAdFisco'
      Size = 2000
    end
    object cdsCabecalhoinfCpl: TStringField
      FieldName = 'infCpl'
      Size = 5000
    end
    object cdsCabecalhoobsCont_xCampo: TStringField
      FieldName = 'obsCont_xCampo'
      Required = True
    end
    object cdsCabecalhoobsCont_xTexto: TStringField
      FieldName = 'obsCont_xTexto'
      Size = 60
    end
    object cdsCabecalhoobsFisco_xCampo: TStringField
      FieldName = 'obsFisco_xCampo'
      Required = True
    end
    object cdsCabecalhoobsFisco_xTexto: TStringField
      FieldName = 'obsFisco_xTexto'
      Size = 60
    end
    object cdsCabecalhoUFEmbarq: TStringField
      FieldName = 'UFEmbarq'
      Size = 3
    end
    object cdsCabecalhoxLocEmbarq: TStringField
      FieldName = 'xLocEmbarq'
      Size = 60
    end
    object cdsCabecalhoxNEmp: TStringField
      FieldName = 'xNEmp'
      Size = 17
    end
    object cdsCabecalhoxPed: TStringField
      FieldName = 'xPed'
      Size = 60
    end
    object cdsCabecalhoxCont: TStringField
      FieldName = 'xCont'
      Size = 60
    end
    object cdsCabecalhoSignature_Id: TStringField
      FieldName = 'Signature_Id'
      Required = True
      Size = 47
    end
    object cdsCabecalhoSignedInfo_Id: TStringField
      FieldName = 'SignedInfo_Id'
      Required = True
      Size = 47
    end
    object cdsCabecalhoAlgorithm1: TStringField
      FieldName = 'Algorithm1'
      Required = True
      Size = 31
    end
    object cdsCabecalhoSignatureMethod_Algorithm: TStringField
      FieldName = 'SignatureMethod_Algorithm'
      Required = True
      Size = 31
    end
    object cdsCabecalhoId: TStringField
      FieldName = 'Id'
      Required = True
      Size = 47
    end
    object cdsCabecalhoURI: TStringField
      FieldName = 'URI'
      Required = True
      Size = 31
    end
    object cdsCabecalhoType: TStringField
      FieldName = 'Type'
      Size = 31
    end
    object cdsCabecalhoAlgorithm2: TStringField
      FieldName = 'Algorithm2'
      Required = True
      Size = 31
    end
    object cdsCabecalhoXPath: TStringField
      FieldName = 'XPath'
      Size = 31
    end
    object cdsCabecalhoAlgorithm3: TStringField
      FieldName = 'Algorithm3'
      Required = True
      Size = 31
    end
    object cdsCabecalhoDigestValue: TStringField
      FieldName = 'DigestValue'
      Size = 31
    end
    object cdsCabecalhoSignatureValue_Id: TStringField
      FieldName = 'SignatureValue_Id'
      Required = True
      Size = 47
    end
    object cdsCabecalhoKeyInfo_Id: TStringField
      FieldName = 'KeyInfo_Id'
      Required = True
      Size = 47
    end
    object cdsCabecalhoX509Certificate: TStringField
      FieldName = 'X509Certificate'
      Size = 31
    end
    object cdsCabecalhoNFref: TDataSetField
      FieldName = 'NFref'
      UnNamed = True
    end
    object cdsCabecalhodet: TDataSetField
      FieldName = 'det'
      UnNamed = True
    end
    object cdsCabecalhovol: TDataSetField
      FieldName = 'vol'
      UnNamed = True
    end
    object cdsCabecalhodup: TDataSetField
      FieldName = 'dup'
      UnNamed = True
    end
    object cdsCabecalhoprocRef: TDataSetField
      FieldName = 'procRef'
      UnNamed = True
    end
    object cdsCabecalhoprotNFe: TDataSetField
      FieldName = 'protNFe'
      UnNamed = True
    end
  end
  object dsCabecalho: TDataSource
    DataSet = cdsCabecalho
    Left = 496
    Top = 304
  end
  object cdsNFeRef: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCabecalhoNFref
    Params = <>
    Left = 680
    Top = 368
    object cdsNFeRefrefNFe: TIntegerField
      FieldName = 'refNFe'
    end
    object cdsNFeRefrefNF_cUF: TIntegerField
      FieldName = 'refNF_cUF'
    end
    object cdsNFeRefrefNF_AAMM: TIntegerField
      FieldName = 'refNF_AAMM'
    end
    object cdsNFeRefrefNF_CNPJ: TStringField
      FieldName = 'refNF_CNPJ'
      Size = 14
    end
    object cdsNFeRefrefNF_mod: TStringField
      FieldName = 'refNF_mod'
      Size = 3
    end
    object cdsNFeRefrefNF_serie: TIntegerField
      FieldName = 'refNF_serie'
    end
    object cdsNFeRefrefNF_nNF: TIntegerField
      FieldName = 'refNF_nNF'
    end
    object cdsNFeRefrefNFP_cUF: TIntegerField
      FieldName = 'refNFP_cUF'
    end
    object cdsNFeRefrefNFP_AAMM: TIntegerField
      FieldName = 'refNFP_AAMM'
    end
    object cdsNFeRefrefNFP_CNPJ: TStringField
      FieldName = 'refNFP_CNPJ'
      Size = 14
    end
    object cdsNFeRefCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsNFeRefIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object cdsNFeRefrefNFP_mod: TStringField
      FieldName = 'refNFP_mod'
      Size = 3
    end
    object cdsNFeRefrefNFP_serie: TIntegerField
      FieldName = 'refNFP_serie'
    end
    object cdsNFeRefrefNFP_nNF: TIntegerField
      FieldName = 'refNFP_nNF'
    end
    object cdsNFeRefrefCTe: TIntegerField
      FieldName = 'refCTe'
    end
    object cdsNFeRefrefECF_mod: TStringField
      FieldName = 'refECF_mod'
      Size = 3
    end
    object cdsNFeRefnECF: TIntegerField
      FieldName = 'nECF'
    end
    object cdsNFeRefnCOO: TIntegerField
      FieldName = 'nCOO'
    end
  end
  object cdsNFeProtocolo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCabecalhoprotNFe
    Params = <>
    Left = 768
    Top = 368
    object cdsNFeProtocoloversao: TStringField
      FieldName = 'versao'
      Required = True
      Size = 6
    end
    object cdsNFeProtocoloId: TStringField
      FieldName = 'Id'
      Required = True
      Size = 47
    end
    object cdsNFeProtocolotpAmb: TStringField
      FieldName = 'tpAmb'
      Size = 31
    end
    object cdsNFeProtocoloverAplic: TStringField
      FieldName = 'verAplic'
    end
    object cdsNFeProtocolochNFe: TStringField
      FieldName = 'chNFe'
      Size = 45
    end
    object cdsNFeProtocolodhRecbto: TStringField
      FieldName = 'dhRecbto'
      Size = 31
    end
    object cdsNFeProtocolonProt: TStringField
      FieldName = 'nProt'
      Size = 31
    end
    object cdsNFeProtocolodigVal: TStringField
      FieldName = 'digVal'
      Size = 31
    end
    object cdsNFeProtocolocStat: TStringField
      FieldName = 'cStat'
      Size = 31
    end
    object cdsNFeProtocoloxMotivo: TStringField
      FieldName = 'xMotivo'
      Size = 255
    end
  end
  object dsNFeProtocolo: TDataSource
    DataSet = cdsNFeProtocolo
    Left = 800
    Top = 368
  end
  object dsNFeRef: TDataSource
    DataSet = cdsNFeRef
    Left = 704
    Top = 368
  end
  object dsParcelas: TDataSource
    DataSet = cdsParcelas
    Left = 560
    Top = 368
  end
  object cdsParcelas: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCabecalhodup
    Params = <>
    Left = 536
    Top = 368
    object cdsParcelasnDup: TStringField
      FieldName = 'nDup'
      Size = 60
    end
    object cdsParcelasdVenc: TDateField
      FieldName = 'dVenc'
    end
    object cdsParcelasvDup: TFloatField
      FieldName = 'vDup'
    end
  end
  object cdsDetalhe: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCabecalhodet
    Params = <>
    Left = 456
    Top = 368
    object cdsDetalhenItem: TIntegerField
      FieldName = 'nItem'
      Required = True
    end
    object cdsDetalhecProd: TStringField
      FieldName = 'cProd'
      Size = 60
    end
    object cdsDetalhecEAN: TStringField
      FieldName = 'cEAN'
      Size = 14
    end
    object cdsDetalhexProd: TStringField
      FieldName = 'xProd'
      Size = 120
    end
    object cdsDetalheNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object cdsDetalheEXTIPI: TStringField
      FieldName = 'EXTIPI'
      Size = 3
    end
    object cdsDetalheCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object cdsDetalheuCom: TStringField
      FieldName = 'uCom'
      Size = 6
    end
    object cdsDetalheqCom: TFloatField
      FieldName = 'qCom'
    end
    object cdsDetalhevUnCom: TFloatField
      FieldName = 'vUnCom'
    end
    object cdsDetalhevProd: TFloatField
      FieldName = 'vProd'
    end
    object cdsDetalhecEANTrib: TStringField
      FieldName = 'cEANTrib'
      Size = 14
    end
    object cdsDetalheuTrib: TStringField
      FieldName = 'uTrib'
      Size = 6
    end
    object cdsDetalheqTrib: TFloatField
      FieldName = 'qTrib'
    end
    object cdsDetalhevUnTrib: TFloatField
      FieldName = 'vUnTrib'
    end
    object cdsDetalhevFrete: TFloatField
      FieldName = 'vFrete'
    end
    object cdsDetalhevSeg: TFloatField
      FieldName = 'vSeg'
    end
    object cdsDetalhevDesc: TFloatField
      FieldName = 'vDesc'
    end
    object cdsDetalhevOutro: TFloatField
      FieldName = 'vOutro'
    end
    object cdsDetalheindTot: TIntegerField
      FieldName = 'indTot'
    end
    object cdsDetalhexPed: TStringField
      FieldName = 'xPed'
      Size = 60
    end
    object cdsDetalhenItemPed: TIntegerField
      FieldName = 'nItemPed'
    end
    object cdsDetalhetpOp: TIntegerField
      FieldName = 'tpOp'
    end
    object cdsDetalhechassi: TStringField
      FieldName = 'chassi'
      Size = 17
    end
    object cdsDetalhecCor: TStringField
      FieldName = 'cCor'
      Size = 4
    end
    object cdsDetalhexCor: TStringField
      FieldName = 'xCor'
      Size = 40
    end
    object cdsDetalhepot: TStringField
      FieldName = 'pot'
      Size = 4
    end
    object cdsDetalhecilin: TStringField
      FieldName = 'cilin'
      Size = 4
    end
    object cdsDetalhepesoL: TFloatField
      FieldName = 'pesoL'
    end
    object cdsDetalhepesoB: TFloatField
      FieldName = 'pesoB'
    end
    object cdsDetalhenSerie: TStringField
      FieldName = 'nSerie'
      Size = 9
    end
    object cdsDetalhetpComb: TStringField
      FieldName = 'tpComb'
      Size = 2
    end
    object cdsDetalhenMotor: TStringField
      FieldName = 'nMotor'
      Size = 21
    end
    object cdsDetalheCMT: TStringField
      FieldName = 'CMT'
      Size = 9
    end
    object cdsDetalhedist: TStringField
      FieldName = 'dist'
      Size = 4
    end
    object cdsDetalheanoMod: TIntegerField
      FieldName = 'anoMod'
    end
    object cdsDetalheanoFab: TIntegerField
      FieldName = 'anoFab'
    end
    object cdsDetalhetpPint: TStringField
      FieldName = 'tpPint'
      Size = 3
    end
    object cdsDetalhetpVeic: TIntegerField
      FieldName = 'tpVeic'
    end
    object cdsDetalheespVeic: TIntegerField
      FieldName = 'espVeic'
    end
    object cdsDetalheVIN: TStringField
      FieldName = 'VIN'
      Size = 3
    end
    object cdsDetalhecondVeic: TIntegerField
      FieldName = 'condVeic'
    end
    object cdsDetalhecMod: TIntegerField
      FieldName = 'cMod'
    end
    object cdsDetalhecCorDENATRAN: TIntegerField
      FieldName = 'cCorDENATRAN'
    end
    object cdsDetalhelota: TIntegerField
      FieldName = 'lota'
    end
    object cdsDetalhetpRest: TIntegerField
      FieldName = 'tpRest'
    end
    object cdsDetalhecProdANP: TIntegerField
      FieldName = 'cProdANP'
    end
    object cdsDetalheCODIF: TIntegerField
      FieldName = 'CODIF'
    end
    object cdsDetalheqTemp: TFloatField
      FieldName = 'qTemp'
    end
    object cdsDetalheUFCons: TStringField
      FieldName = 'UFCons'
      Size = 3
    end
    object cdsDetalheCIDE_qBCProd: TFloatField
      FieldName = 'CIDE_qBCProd'
    end
    object cdsDetalheCIDE_vAliqProd: TFloatField
      FieldName = 'CIDE_vAliqProd'
    end
    object cdsDetalhevCIDE: TFloatField
      FieldName = 'vCIDE'
    end
    object cdsDetalheICMS00_orig: TIntegerField
      FieldName = 'ICMS00_orig'
    end
    object cdsDetalheICMS00_CST: TIntegerField
      FieldName = 'ICMS00_CST'
    end
    object cdsDetalheICMS00_modBC: TIntegerField
      FieldName = 'ICMS00_modBC'
    end
    object cdsDetalheICMS00_vBC: TFloatField
      FieldName = 'ICMS00_vBC'
    end
    object cdsDetalheICMS00_pICMS: TFloatField
      FieldName = 'ICMS00_pICMS'
    end
    object cdsDetalheICMS00_vICMS: TFloatField
      FieldName = 'ICMS00_vICMS'
    end
    object cdsDetalheICMS10_orig: TIntegerField
      FieldName = 'ICMS10_orig'
    end
    object cdsDetalheICMS10_CST: TIntegerField
      FieldName = 'ICMS10_CST'
    end
    object cdsDetalheICMS10_modBC: TIntegerField
      FieldName = 'ICMS10_modBC'
    end
    object cdsDetalheICMS10_vBC: TFloatField
      FieldName = 'ICMS10_vBC'
    end
    object cdsDetalheICMS10_pICMS: TFloatField
      FieldName = 'ICMS10_pICMS'
    end
    object cdsDetalheICMS10_vICMS: TFloatField
      FieldName = 'ICMS10_vICMS'
    end
    object cdsDetalheICMS10_modBCST: TIntegerField
      FieldName = 'ICMS10_modBCST'
    end
    object cdsDetalheICMS10_pMVAST: TFloatField
      FieldName = 'ICMS10_pMVAST'
    end
    object cdsDetalheICMS10_pRedBCST: TFloatField
      FieldName = 'ICMS10_pRedBCST'
    end
    object cdsDetalheICMS10_vBCST: TFloatField
      FieldName = 'ICMS10_vBCST'
    end
    object cdsDetalheICMS10_pICMSST: TFloatField
      FieldName = 'ICMS10_pICMSST'
    end
    object cdsDetalheICMS10_vICMSST: TFloatField
      FieldName = 'ICMS10_vICMSST'
    end
    object cdsDetalheICMS20_orig: TIntegerField
      FieldName = 'ICMS20_orig'
    end
    object cdsDetalheICMS20_CST: TIntegerField
      FieldName = 'ICMS20_CST'
    end
    object cdsDetalheICMS20_modBC: TIntegerField
      FieldName = 'ICMS20_modBC'
    end
    object cdsDetalheICMS20_pRedBC: TFloatField
      FieldName = 'ICMS20_pRedBC'
    end
    object cdsDetalheICMS20_vBC: TFloatField
      FieldName = 'ICMS20_vBC'
    end
    object cdsDetalheICMS20_pICMS: TFloatField
      FieldName = 'ICMS20_pICMS'
    end
    object cdsDetalheICMS20_vICMS: TFloatField
      FieldName = 'ICMS20_vICMS'
    end
    object cdsDetalheICMS30_orig: TIntegerField
      FieldName = 'ICMS30_orig'
    end
    object cdsDetalheICMS30_CST: TIntegerField
      FieldName = 'ICMS30_CST'
    end
    object cdsDetalheICMS30_modBCST: TIntegerField
      FieldName = 'ICMS30_modBCST'
    end
    object cdsDetalheICMS30_pMVAST: TFloatField
      FieldName = 'ICMS30_pMVAST'
    end
    object cdsDetalheICMS30_pRedBCST: TFloatField
      FieldName = 'ICMS30_pRedBCST'
    end
    object cdsDetalheICMS30_vBCST: TFloatField
      FieldName = 'ICMS30_vBCST'
    end
    object cdsDetalheICMS30_pICMSST: TFloatField
      FieldName = 'ICMS30_pICMSST'
    end
    object cdsDetalheICMS30_vICMSST: TFloatField
      FieldName = 'ICMS30_vICMSST'
    end
    object cdsDetalheICMS40_orig: TIntegerField
      FieldName = 'ICMS40_orig'
    end
    object cdsDetalheICMS40_CST: TIntegerField
      FieldName = 'ICMS40_CST'
    end
    object cdsDetalheICMS40_vICMS: TFloatField
      FieldName = 'ICMS40_vICMS'
    end
    object cdsDetalhemotDesICMS: TIntegerField
      FieldName = 'motDesICMS'
    end
    object cdsDetalheICMS51_orig: TIntegerField
      FieldName = 'ICMS51_orig'
    end
    object cdsDetalheICMS51_CST: TIntegerField
      FieldName = 'ICMS51_CST'
    end
    object cdsDetalheICMS51_modBC: TIntegerField
      FieldName = 'ICMS51_modBC'
    end
    object cdsDetalheICMS51_pRedBC: TFloatField
      FieldName = 'ICMS51_pRedBC'
    end
    object cdsDetalheICMS51_vBC: TFloatField
      FieldName = 'ICMS51_vBC'
    end
    object cdsDetalheICMS51_pICMS: TFloatField
      FieldName = 'ICMS51_pICMS'
    end
    object cdsDetalheICMS51_vICMS: TFloatField
      FieldName = 'ICMS51_vICMS'
    end
    object cdsDetalheICMS60_orig: TIntegerField
      FieldName = 'ICMS60_orig'
    end
    object cdsDetalheICMS60_CST: TIntegerField
      FieldName = 'ICMS60_CST'
    end
    object cdsDetalheICMS60_vBCSTRet: TFloatField
      FieldName = 'ICMS60_vBCSTRet'
    end
    object cdsDetalheICMS60_vICMSSTRet: TFloatField
      FieldName = 'ICMS60_vICMSSTRet'
    end
    object cdsDetalheICMS70_orig: TIntegerField
      FieldName = 'ICMS70_orig'
    end
    object cdsDetalheICMS70_CST: TIntegerField
      FieldName = 'ICMS70_CST'
    end
    object cdsDetalheICMS70_modBC: TIntegerField
      FieldName = 'ICMS70_modBC'
    end
    object cdsDetalheICMS70_pRedBC: TFloatField
      FieldName = 'ICMS70_pRedBC'
    end
    object cdsDetalheICMS70_vBC: TFloatField
      FieldName = 'ICMS70_vBC'
    end
    object cdsDetalheICMS70_pICMS: TFloatField
      FieldName = 'ICMS70_pICMS'
    end
    object cdsDetalheICMS70_vICMS: TFloatField
      FieldName = 'ICMS70_vICMS'
    end
    object cdsDetalheICMS70_modBCST: TIntegerField
      FieldName = 'ICMS70_modBCST'
    end
    object cdsDetalheICMS70_pMVAST: TFloatField
      FieldName = 'ICMS70_pMVAST'
    end
    object cdsDetalheICMS70_pRedBCST: TFloatField
      FieldName = 'ICMS70_pRedBCST'
    end
    object cdsDetalheICMS70_vBCST: TFloatField
      FieldName = 'ICMS70_vBCST'
    end
    object cdsDetalheICMS70_pICMSST: TFloatField
      FieldName = 'ICMS70_pICMSST'
    end
    object cdsDetalheICMS70_vICMSST: TFloatField
      FieldName = 'ICMS70_vICMSST'
    end
    object cdsDetalheICMS90_orig: TIntegerField
      FieldName = 'ICMS90_orig'
    end
    object cdsDetalheICMS90_CST: TIntegerField
      FieldName = 'ICMS90_CST'
    end
    object cdsDetalheICMS90_modBC: TIntegerField
      FieldName = 'ICMS90_modBC'
    end
    object cdsDetalheICMS90_vBC: TFloatField
      FieldName = 'ICMS90_vBC'
    end
    object cdsDetalheICMS90_pRedBC: TFloatField
      FieldName = 'ICMS90_pRedBC'
    end
    object cdsDetalheICMS90_pICMS: TFloatField
      FieldName = 'ICMS90_pICMS'
    end
    object cdsDetalheICMS90_vICMS: TFloatField
      FieldName = 'ICMS90_vICMS'
    end
    object cdsDetalheICMS90_modBCST: TIntegerField
      FieldName = 'ICMS90_modBCST'
    end
    object cdsDetalheICMS90_pMVAST: TFloatField
      FieldName = 'ICMS90_pMVAST'
    end
    object cdsDetalheICMS90_pRedBCST: TFloatField
      FieldName = 'ICMS90_pRedBCST'
    end
    object cdsDetalheICMS90_vBCST: TFloatField
      FieldName = 'ICMS90_vBCST'
    end
    object cdsDetalheICMS90_pICMSST: TFloatField
      FieldName = 'ICMS90_pICMSST'
    end
    object cdsDetalheICMS90_vICMSST: TFloatField
      FieldName = 'ICMS90_vICMSST'
    end
    object cdsDetalheICMSPart_orig: TIntegerField
      FieldName = 'ICMSPart_orig'
    end
    object cdsDetalheICMSPart_CST: TIntegerField
      FieldName = 'ICMSPart_CST'
    end
    object cdsDetalheICMSPart_modBC: TIntegerField
      FieldName = 'ICMSPart_modBC'
    end
    object cdsDetalheICMSPart_vBC: TFloatField
      FieldName = 'ICMSPart_vBC'
    end
    object cdsDetalheICMSPart_pRedBC: TFloatField
      FieldName = 'ICMSPart_pRedBC'
    end
    object cdsDetalheICMSPart_pICMS: TFloatField
      FieldName = 'ICMSPart_pICMS'
    end
    object cdsDetalheICMSPart_vICMS: TFloatField
      FieldName = 'ICMSPart_vICMS'
    end
    object cdsDetalheICMSPart_modBCST: TIntegerField
      FieldName = 'ICMSPart_modBCST'
    end
    object cdsDetalheICMSPart_pMVAST: TFloatField
      FieldName = 'ICMSPart_pMVAST'
    end
    object cdsDetalheICMSPart_pRedBCST: TFloatField
      FieldName = 'ICMSPart_pRedBCST'
    end
    object cdsDetalheICMSPart_vBCST: TFloatField
      FieldName = 'ICMSPart_vBCST'
    end
    object cdsDetalheICMSPart_pICMSST: TFloatField
      FieldName = 'ICMSPart_pICMSST'
    end
    object cdsDetalheICMSPart_vICMSST: TFloatField
      FieldName = 'ICMSPart_vICMSST'
    end
    object cdsDetalhepBCOp: TFloatField
      FieldName = 'pBCOp'
    end
    object cdsDetalheUFST: TStringField
      FieldName = 'UFST'
      Size = 31
    end
    object cdsDetalheICMSST_orig: TIntegerField
      FieldName = 'ICMSST_orig'
    end
    object cdsDetalheICMSST_CST: TIntegerField
      FieldName = 'ICMSST_CST'
    end
    object cdsDetalheICMSST_vBCSTRet: TFloatField
      FieldName = 'ICMSST_vBCSTRet'
    end
    object cdsDetalheICMSST_vICMSSTRet: TFloatField
      FieldName = 'ICMSST_vICMSSTRet'
    end
    object cdsDetalhevBCSTDest: TFloatField
      FieldName = 'vBCSTDest'
    end
    object cdsDetalhevICMSSTDest: TFloatField
      FieldName = 'vICMSSTDest'
    end
    object cdsDetalheICMSSN101_orig: TIntegerField
      FieldName = 'ICMSSN101_orig'
    end
    object cdsDetalheICMSSN101_CSOSN: TIntegerField
      FieldName = 'ICMSSN101_CSOSN'
    end
    object cdsDetalheICMSSN101_pCredSN: TFloatField
      FieldName = 'ICMSSN101_pCredSN'
    end
    object cdsDetalheICMSSN101_vCredICMSSN: TFloatField
      FieldName = 'ICMSSN101_vCredICMSSN'
    end
    object cdsDetalheICMSSN102_orig: TIntegerField
      FieldName = 'ICMSSN102_orig'
    end
    object cdsDetalheICMSSN102_CSOSN: TIntegerField
      FieldName = 'ICMSSN102_CSOSN'
    end
    object cdsDetalheICMSSN201_orig: TIntegerField
      FieldName = 'ICMSSN201_orig'
    end
    object cdsDetalheICMSSN201_CSOSN: TIntegerField
      FieldName = 'ICMSSN201_CSOSN'
    end
    object cdsDetalheICMSSN201_modBCST: TIntegerField
      FieldName = 'ICMSSN201_modBCST'
    end
    object cdsDetalheICMSSN201_pMVAST: TFloatField
      FieldName = 'ICMSSN201_pMVAST'
    end
    object cdsDetalheICMSSN201_pRedBCST: TFloatField
      FieldName = 'ICMSSN201_pRedBCST'
    end
    object cdsDetalheICMSSN201_vBCST: TFloatField
      FieldName = 'ICMSSN201_vBCST'
    end
    object cdsDetalheICMSSN201_pICMSST: TFloatField
      FieldName = 'ICMSSN201_pICMSST'
    end
    object cdsDetalheICMSSN201_vICMSST: TFloatField
      FieldName = 'ICMSSN201_vICMSST'
    end
    object cdsDetalheICMSSN201_pCredSN: TFloatField
      FieldName = 'ICMSSN201_pCredSN'
    end
    object cdsDetalheICMSSN201_vCredICMSSN: TFloatField
      FieldName = 'ICMSSN201_vCredICMSSN'
    end
    object cdsDetalheICMSSN202_orig: TIntegerField
      FieldName = 'ICMSSN202_orig'
    end
    object cdsDetalheICMSSN202_CSOSN: TIntegerField
      FieldName = 'ICMSSN202_CSOSN'
    end
    object cdsDetalheICMSSN202_modBCST: TIntegerField
      FieldName = 'ICMSSN202_modBCST'
    end
    object cdsDetalheICMSSN202_pMVAST: TFloatField
      FieldName = 'ICMSSN202_pMVAST'
    end
    object cdsDetalheICMSSN202_pRedBCST: TFloatField
      FieldName = 'ICMSSN202_pRedBCST'
    end
    object cdsDetalheICMSSN202_vBCST: TFloatField
      FieldName = 'ICMSSN202_vBCST'
    end
    object cdsDetalheICMSSN202_pICMSST: TFloatField
      FieldName = 'ICMSSN202_pICMSST'
    end
    object cdsDetalheICMSSN202_vICMSST: TFloatField
      FieldName = 'ICMSSN202_vICMSST'
    end
    object cdsDetalheICMSSN500_orig: TIntegerField
      FieldName = 'ICMSSN500_orig'
    end
    object cdsDetalheICMSSN500_CSOSN: TIntegerField
      FieldName = 'ICMSSN500_CSOSN'
    end
    object cdsDetalheICMSSN500_vBCSTRet: TFloatField
      FieldName = 'ICMSSN500_vBCSTRet'
    end
    object cdsDetalheICMSSN500_vICMSSTRet: TFloatField
      FieldName = 'ICMSSN500_vICMSSTRet'
    end
    object cdsDetalheICMSSN900_orig: TIntegerField
      FieldName = 'ICMSSN900_orig'
    end
    object cdsDetalheICMSSN900_CSOSN: TIntegerField
      FieldName = 'ICMSSN900_CSOSN'
    end
    object cdsDetalheICMSSN900_modBC: TIntegerField
      FieldName = 'ICMSSN900_modBC'
    end
    object cdsDetalheICMSSN900_vBC: TFloatField
      FieldName = 'ICMSSN900_vBC'
    end
    object cdsDetalheICMSSN900_pRedBC: TFloatField
      FieldName = 'ICMSSN900_pRedBC'
    end
    object cdsDetalheICMSSN900_pICMS: TFloatField
      FieldName = 'ICMSSN900_pICMS'
    end
    object cdsDetalheICMSSN900_vICMS: TFloatField
      FieldName = 'ICMSSN900_vICMS'
    end
    object cdsDetalheICMSSN900_modBCST: TIntegerField
      FieldName = 'ICMSSN900_modBCST'
    end
    object cdsDetalheICMSSN900_pMVAST: TFloatField
      FieldName = 'ICMSSN900_pMVAST'
    end
    object cdsDetalheICMSSN900_pRedBCST: TFloatField
      FieldName = 'ICMSSN900_pRedBCST'
    end
    object cdsDetalheICMSSN900_vBCST: TFloatField
      FieldName = 'ICMSSN900_vBCST'
    end
    object cdsDetalheICMSSN900_pICMSST: TFloatField
      FieldName = 'ICMSSN900_pICMSST'
    end
    object cdsDetalheICMSSN900_vICMSST: TFloatField
      FieldName = 'ICMSSN900_vICMSST'
    end
    object cdsDetalheICMSSN900_pCredSN: TFloatField
      FieldName = 'ICMSSN900_pCredSN'
    end
    object cdsDetalheICMSSN900_vCredICMSSN: TFloatField
      FieldName = 'ICMSSN900_vCredICMSSN'
    end
    object cdsDetalheclEnq: TStringField
      FieldName = 'clEnq'
      Size = 5
    end
    object cdsDetalheCNPJProd: TStringField
      FieldName = 'CNPJProd'
      Size = 14
    end
    object cdsDetalhecSelo: TStringField
      FieldName = 'cSelo'
      Size = 60
    end
    object cdsDetalheqSelo: TIntegerField
      FieldName = 'qSelo'
    end
    object cdsDetalhecEnq: TStringField
      FieldName = 'cEnq'
      Size = 3
    end
    object cdsDetalheIPITrib_CST: TIntegerField
      FieldName = 'IPITrib_CST'
    end
    object cdsDetalheIPITrib_vBC: TFloatField
      FieldName = 'IPITrib_vBC'
    end
    object cdsDetalhepIPI: TFloatField
      FieldName = 'pIPI'
    end
    object cdsDetalheqUnid: TFloatField
      FieldName = 'qUnid'
    end
    object cdsDetalhevUnid: TFloatField
      FieldName = 'vUnid'
    end
    object cdsDetalhevIPI: TFloatField
      FieldName = 'vIPI'
    end
    object cdsDetalheIPINT_CST: TIntegerField
      FieldName = 'IPINT_CST'
    end
    object cdsDetalheII_vBC: TFloatField
      FieldName = 'II_vBC'
    end
    object cdsDetalhevDespAdu: TFloatField
      FieldName = 'vDespAdu'
    end
    object cdsDetalhevII: TFloatField
      FieldName = 'vII'
    end
    object cdsDetalhevIOF: TFloatField
      FieldName = 'vIOF'
    end
    object cdsDetalheISSQN_vBC: TFloatField
      FieldName = 'ISSQN_vBC'
    end
    object cdsDetalhevAliq: TFloatField
      FieldName = 'vAliq'
    end
    object cdsDetalhevISSQN: TFloatField
      FieldName = 'vISSQN'
    end
    object cdsDetalhecMunFG: TIntegerField
      FieldName = 'cMunFG'
    end
    object cdsDetalhecListServ: TIntegerField
      FieldName = 'cListServ'
    end
    object cdsDetalhecSitTrib: TStringField
      FieldName = 'cSitTrib'
      Size = 3
    end
    object cdsDetalhePISAliq_CST: TIntegerField
      FieldName = 'PISAliq_CST'
    end
    object cdsDetalhePISAliq_vBC: TFloatField
      FieldName = 'PISAliq_vBC'
    end
    object cdsDetalhePISAliq_pPIS: TFloatField
      FieldName = 'PISAliq_pPIS'
    end
    object cdsDetalhePISAliq_vPIS: TFloatField
      FieldName = 'PISAliq_vPIS'
    end
    object cdsDetalhePISQtde_CST: TIntegerField
      FieldName = 'PISQtde_CST'
    end
    object cdsDetalhePISQtde_qBCProd: TFloatField
      FieldName = 'PISQtde_qBCProd'
    end
    object cdsDetalhePISQtde_vAliqProd: TFloatField
      FieldName = 'PISQtde_vAliqProd'
    end
    object cdsDetalhePISQtde_vPIS: TFloatField
      FieldName = 'PISQtde_vPIS'
    end
    object cdsDetalhePISNT_CST: TIntegerField
      FieldName = 'PISNT_CST'
    end
    object cdsDetalhePISOutr_CST: TIntegerField
      FieldName = 'PISOutr_CST'
    end
    object cdsDetalhePISOutr_vBC: TFloatField
      FieldName = 'PISOutr_vBC'
    end
    object cdsDetalhePISOutr_pPIS: TFloatField
      FieldName = 'PISOutr_pPIS'
    end
    object cdsDetalhePISOutr_qBCProd: TFloatField
      FieldName = 'PISOutr_qBCProd'
    end
    object cdsDetalhePISOutr_vAliqProd: TFloatField
      FieldName = 'PISOutr_vAliqProd'
    end
    object cdsDetalhePISOutr_vPIS: TFloatField
      FieldName = 'PISOutr_vPIS'
    end
    object cdsDetalhePISST_vBC: TFloatField
      FieldName = 'PISST_vBC'
    end
    object cdsDetalhepPIS: TFloatField
      FieldName = 'pPIS'
    end
    object cdsDetalhePISST_qBCProd: TFloatField
      FieldName = 'PISST_qBCProd'
    end
    object cdsDetalhePISST_vAliqProd: TFloatField
      FieldName = 'PISST_vAliqProd'
    end
    object cdsDetalhevPIS: TFloatField
      FieldName = 'vPIS'
    end
    object cdsDetalheCOFINSAliq_CST: TIntegerField
      FieldName = 'COFINSAliq_CST'
    end
    object cdsDetalheCOFINSAliq_vBC: TFloatField
      FieldName = 'COFINSAliq_vBC'
    end
    object cdsDetalheCOFINSAliq_pCOFINS: TFloatField
      FieldName = 'COFINSAliq_pCOFINS'
    end
    object cdsDetalheCOFINSAliq_vCOFINS: TFloatField
      FieldName = 'COFINSAliq_vCOFINS'
    end
    object cdsDetalheCOFINSQtde_CST: TIntegerField
      FieldName = 'COFINSQtde_CST'
    end
    object cdsDetalheCOFINSQtde_qBCProd: TFloatField
      FieldName = 'COFINSQtde_qBCProd'
    end
    object cdsDetalheCOFINSQtde_vAliqProd: TFloatField
      FieldName = 'COFINSQtde_vAliqProd'
    end
    object cdsDetalheCOFINSQtde_vCOFINS: TFloatField
      FieldName = 'COFINSQtde_vCOFINS'
    end
    object cdsDetalheCOFINSNT_CST: TIntegerField
      FieldName = 'COFINSNT_CST'
    end
    object cdsDetalheCOFINSOutr_CST: TIntegerField
      FieldName = 'COFINSOutr_CST'
    end
    object cdsDetalheCOFINSOutr_vBC: TFloatField
      FieldName = 'COFINSOutr_vBC'
    end
    object cdsDetalheCOFINSOutr_pCOFINS: TFloatField
      FieldName = 'COFINSOutr_pCOFINS'
    end
    object cdsDetalheCOFINSOutr_qBCProd: TFloatField
      FieldName = 'COFINSOutr_qBCProd'
    end
    object cdsDetalheCOFINSOutr_vAliqProd: TFloatField
      FieldName = 'COFINSOutr_vAliqProd'
    end
    object cdsDetalheCOFINSOutr_vCOFINS: TFloatField
      FieldName = 'COFINSOutr_vCOFINS'
    end
    object cdsDetalheCOFINSST_vBC: TFloatField
      FieldName = 'COFINSST_vBC'
    end
    object cdsDetalhepCOFINS: TFloatField
      FieldName = 'pCOFINS'
    end
    object cdsDetalheCOFINSST_qBCProd: TFloatField
      FieldName = 'COFINSST_qBCProd'
    end
    object cdsDetalheCOFINSST_vAliqProd: TFloatField
      FieldName = 'COFINSST_vAliqProd'
    end
    object cdsDetalhevCOFINS: TFloatField
      FieldName = 'vCOFINS'
    end
    object cdsDetalheinfAdProd: TStringField
      FieldName = 'infAdProd'
      Size = 500
    end
    object cdsDetalheDI: TDataSetField
      FieldName = 'DI'
      UnNamed = True
    end
  end
  object dsDetalhe: TDataSource
    DataSet = cdsDetalhe
    Left = 480
    Top = 368
  end
  object cdsDeclaracaoImportacao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDetalheDI
    Params = <>
    Left = 448
    Top = 424
    object cdsDeclaracaoImportacaonDI: TStringField
      FieldName = 'nDI'
      Size = 10
    end
    object cdsDeclaracaoImportacaodDI: TDateField
      FieldName = 'dDI'
    end
    object cdsDeclaracaoImportacaoxLocDesemb: TStringField
      FieldName = 'xLocDesemb'
      Size = 60
    end
    object cdsDeclaracaoImportacaoUFDesemb: TStringField
      FieldName = 'UFDesemb'
      Size = 3
    end
    object cdsDeclaracaoImportacaodDesemb: TDateField
      FieldName = 'dDesemb'
    end
    object cdsDeclaracaoImportacaocExportador: TStringField
      FieldName = 'cExportador'
      Size = 60
    end
    object cdsDeclaracaoImportacaoadi: TDataSetField
      FieldName = 'adi'
      UnNamed = True
    end
  end
  object dsDeclaracaoImportacao: TDataSource
    DataSet = cdsDeclaracaoImportacao
    Left = 480
    Top = 424
  end
  object cdsAdicoes: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDeclaracaoImportacaoadi
    Params = <>
    Left = 544
    Top = 424
    object cdsAdicoesnAdicao: TIntegerField
      FieldName = 'nAdicao'
    end
    object cdsAdicoesnSeqAdic: TIntegerField
      FieldName = 'nSeqAdic'
    end
    object cdsAdicoescFabricante: TStringField
      FieldName = 'cFabricante'
      Size = 60
    end
    object cdsAdicoesvDescDI: TFloatField
      FieldName = 'vDescDI'
    end
  end
  object dsAdicoes: TDataSource
    DataSet = cdsAdicoes
    Left = 584
    Top = 424
  end
  object mItensNota: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'CodProduto'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CodProdutoInterno'
        DataType = ftInteger
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'CodGrade'
        DataType = ftInteger
      end
      item
        Name = 'Posicao'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'VlrUnitario'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'AliqIcms'
        DataType = ftFloat
      end
      item
        Name = 'AliqIPI'
        DataType = ftFloat
      end
      item
        Name = 'CodSitTrib'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CodSitTribInterno'
        DataType = ftInteger
      end
      item
        Name = 'CodCSTIPI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CodCofins'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CodPIS'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'AliqPIS'
        DataType = ftFloat
      end
      item
        Name = 'AliqCofins'
        DataType = ftFloat
      end
      item
        Name = 'VlrPis'
        DataType = ftFloat
      end
      item
        Name = 'VlrIcms'
        DataType = ftFloat
      end
      item
        Name = 'VlrCofins'
        DataType = ftFloat
      end
      item
        Name = 'VlrIPI'
        DataType = ftFloat
      end
      item
        Name = 'BaseIcms'
        DataType = ftFloat
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NumPedido'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ItemPedido'
        DataType = ftInteger
      end
      item
        Name = 'CodBarra'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'GravarNovo'
        DataType = ftBoolean
      end
      item
        Name = 'PercRedIcms'
        DataType = ftFloat
      end
      item
        Name = 'CodFornecedor'
        DataType = ftInteger
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'NCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CFOP'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOPInterno'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'BaseCSTRet'
        DataType = ftFloat
      end
      item
        Name = 'VlrIcmsCSTRet'
        DataType = ftFloat
      end
      item
        Name = 'ModICMS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Origem'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ModIcmsST'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PercMVAST'
        DataType = ftFloat
      end
      item
        Name = 'PercRedBCST'
        DataType = ftFloat
      end
      item
        Name = 'BaseCST'
        DataType = ftFloat
      end
      item
        Name = 'PercIcmsST'
        DataType = ftFloat
      end
      item
        Name = 'VlrIcmsST'
        DataType = ftFloat
      end
      item
        Name = 'VlrDesconto'
        DataType = ftFloat
      end
      item
        Name = 'ProdMat'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VlrFrete'
        DataType = ftFloat
      end
      item
        Name = 'InfAdicionais'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'NumLote'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'QtdPacote'
        DataType = ftFloat
      end
      item
        Name = 'UnidadeInterno'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Mercado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CFOPOriginal'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ConversorUnidade'
        DataType = ftFloat
      end
      item
        Name = 'ID_NCM'
        DataType = ftInteger
      end
      item
        Name = 'Beneficiamento'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'EX_TIPI'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'VlrSeguro'
        DataType = ftFloat
      end
      item
        Name = 'VlrOutrasDespesas'
        DataType = ftFloat
      end
      item
        Name = 'BaseImportacao'
        DataType = ftFloat
      end
      item
        Name = 'VlrImportacao'
        DataType = ftFloat
      end
      item
        Name = 'VlrDespesaAduaneira'
        DataType = ftFloat
      end
      item
        Name = 'VlrIOF'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Item'
    Params = <>
    StoreDefs = True
    AfterEdit = mItensNotaAfterEdit
    BeforePost = mItensNotaBeforePost
    Left = 464
    Top = 488
    Data = {
      010600009619E0BD010000001800000041000000000003000000010604497465
      6D04000100000000000A436F6450726F6475746F010049000000010005574944
      5448020002001E0011436F6450726F6475746F496E7465726E6F040001000000
      000006436F64436F72040001000000000008436F644772616465040001000000
      000007506F736963616F04000100000000000754616D616E686F010049000000
      0100055749445448020002000A00074E6F6D65436F7201004900000001000557
      494454480200020028000351746408000400000000000B566C72556E69746172
      696F080004000000000008566C72546F74616C080004000000000008416C6971
      49636D73080004000000000007416C697149504908000400000000000A436F64
      53697454726962010049000000010005574944544802000200030011436F6453
      697454726962496E7465726E6F040001000000000009436F6443535449504901
      0049000000010005574944544802000200030009436F64436F66696E73010049
      000000010005574944544802000200030006436F645049530100490000000100
      05574944544802000200030007416C697150495308000400000000000A416C69
      71436F66696E73080004000000000006566C7250697308000400000000000756
      6C7249636D73080004000000000009566C72436F66696E730800040000000000
      06566C724950490800040000000000084261736549636D730800040000000000
      07556E69646164650100490000000100055749445448020002000600094E756D
      50656469646F01004900000001000557494454480200020014000A4974656D50
      656469646F040001000000000008436F64426172726101004900000001000557
      49445448020002001E000A4772617661724E6F766F02000300000000000B5065
      726352656449636D7308000400000000000D436F64466F726E656365646F7204
      000100000000000B4E6F6D6550726F6475746F01004900000001000557494454
      48020002007800034E434D010049000000010005574944544802000200080004
      43464F5001004900000001000557494454480200020004000B43464F50496E74
      65726E6F01004900000001000557494454480200020004000A42617365435354
      52657408000400000000000D566C7249636D7343535452657408000400000000
      00074D6F6449434D530100490000000100055749445448020002000100064F72
      6967656D0100490000000100055749445448020002000100094D6F6449636D73
      5354010049000000010005574944544802000200010009506572634D56415354
      08000400000000000B5065726352656442435354080004000000000007426173
      6543535408000400000000000A5065726349636D735354080004000000000009
      566C7249636D73535408000400000000000B566C72446573636F6E746F080004
      00000000000750726F644D617401004900000001000557494454480200020001
      0008566C72467265746508000400000000000D496E6641646963696F6E616973
      010049000000010005574944544802000200FA00074E756D4C6F746501004900
      00000100055749445448020002000F00095174645061636F7465080004000000
      00000E556E6964616465496E7465726E6F010049000000010005574944544802
      0002000600074D65726361646F01004900000001000557494454480200020001
      000C43464F504F726967696E616C010049000000010005574944544802000200
      050010436F6E766572736F72556E696461646508000400000000000649445F4E
      434D04000100000000000E42656E6566696369616D656E746F01004900000001
      000557494454480200020001000745585F544950490100490000000100055749
      44544802000200050009566C7253656775726F080004000000000011566C724F
      7574726173446573706573617308000400000000000E42617365496D706F7274
      6163616F08000400000000000D566C72496D706F72746163616F080004000000
      000013566C7244657370657361416475616E6569726108000400000000000656
      6C72494F46080004000000000001000D44454641554C545F4F52444552020082
      0000000000}
    object mItensNotaItem: TIntegerField
      FieldName = 'Item'
    end
    object mItensNotaCodProduto: TStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'CodProduto'
      Size = 30
    end
    object mItensNotaCodProdutoInterno: TIntegerField
      DisplayLabel = 'C'#243'd. Produto Interno'
      FieldName = 'CodProdutoInterno'
    end
    object mItensNotaCodCor: TIntegerField
      DisplayLabel = 'C'#243'd. Cor'
      FieldName = 'CodCor'
    end
    object mItensNotaCodGrade: TIntegerField
      DisplayLabel = 'C'#243'd. Grade'
      FieldName = 'CodGrade'
    end
    object mItensNotaPosicao: TIntegerField
      DisplayLabel = 'Posi'#231#227'o'
      FieldName = 'Posicao'
    end
    object mItensNotaTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mItensNotaNomeCor: TStringField
      DisplayLabel = 'Nome da Cor'
      FieldName = 'NomeCor'
      Size = 40
    end
    object mItensNotaQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mItensNotaVlrUnitario: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VlrUnitario'
    end
    object mItensNotaVlrTotal: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VlrTotal'
    end
    object mItensNotaAliqIcms: TFloatField
      DisplayLabel = '% ICMS'
      FieldName = 'AliqIcms'
    end
    object mItensNotaAliqIPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'AliqIPI'
    end
    object mItensNotaCodSitTrib: TStringField
      DisplayLabel = 'CST ICMS'
      FieldName = 'CodSitTrib'
      Size = 3
    end
    object mItensNotaCodSitTribInterno: TIntegerField
      DisplayLabel = 'C'#243'd. CST ICMS Interno'
      FieldName = 'CodSitTribInterno'
    end
    object mItensNotaCodCSTIPI: TStringField
      DisplayLabel = 'CST IPI'
      FieldName = 'CodCSTIPI'
      Size = 3
    end
    object mItensNotaCodCofins: TStringField
      DisplayLabel = 'CST Cofins'
      FieldName = 'CodCofins'
      Size = 3
    end
    object mItensNotaCodPIS: TStringField
      FieldName = 'CodPIS'
      Size = 3
    end
    object mItensNotaAliqPIS: TFloatField
      FieldName = 'AliqPIS'
    end
    object mItensNotaAliqCofins: TFloatField
      FieldName = 'AliqCofins'
    end
    object mItensNotaVlrPis: TFloatField
      FieldName = 'VlrPis'
    end
    object mItensNotaVlrIcms: TFloatField
      DisplayLabel = 'Vlr. Icms'
      FieldName = 'VlrIcms'
    end
    object mItensNotaVlrCofins: TFloatField
      FieldName = 'VlrCofins'
    end
    object mItensNotaVlrIPI: TFloatField
      DisplayLabel = 'Vlr. IPI'
      FieldName = 'VlrIPI'
    end
    object mItensNotaBaseIcms: TFloatField
      DisplayLabel = 'Base Icms'
      FieldName = 'BaseIcms'
    end
    object mItensNotaUnidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Unidade'
      Size = 6
    end
    object mItensNotaNumPedido: TStringField
      DisplayLabel = 'N'#186' Pedido (OC)'
      FieldName = 'NumPedido'
    end
    object mItensNotaItemPedido: TIntegerField
      DisplayLabel = 'Item Pedido (OC)'
      FieldName = 'ItemPedido'
    end
    object mItensNotaCodBarra: TStringField
      DisplayLabel = 'C'#243'd. Barra'
      FieldName = 'CodBarra'
      Size = 30
    end
    object mItensNotaGravarNovo: TBooleanField
      DisplayLabel = 'Gravar Novo'
      FieldName = 'GravarNovo'
    end
    object mItensNotaPercRedIcms: TFloatField
      DisplayLabel = '% Red. Icms'
      FieldName = 'PercRedIcms'
    end
    object mItensNotaCodFornecedor: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'CodFornecedor'
    end
    object mItensNotaNomeProduto: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NomeProduto'
      Size = 120
    end
    object mItensNotaNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object mItensNotaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object mItensNotaCFOPInterno: TStringField
      DisplayLabel = 'CFOP Interno'
      FieldName = 'CFOPInterno'
      Size = 4
    end
    object mItensNotaBaseCSTRet: TFloatField
      FieldName = 'BaseCSTRet'
    end
    object mItensNotaVlrIcmsCSTRet: TFloatField
      FieldName = 'VlrIcmsCSTRet'
    end
    object mItensNotaModICMS: TStringField
      FieldName = 'ModICMS'
      Size = 1
    end
    object mItensNotaOrigem: TStringField
      FieldName = 'Origem'
      Size = 1
    end
    object mItensNotaModIcmsST: TStringField
      FieldName = 'ModIcmsST'
      Size = 1
    end
    object mItensNotaPercMVAST: TFloatField
      FieldName = 'PercMVAST'
    end
    object mItensNotaPercRedBCST: TFloatField
      FieldName = 'PercRedBCST'
    end
    object mItensNotaBaseCST: TFloatField
      FieldName = 'BaseCST'
    end
    object mItensNotaPercIcmsST: TFloatField
      FieldName = 'PercIcmsST'
    end
    object mItensNotaVlrIcmsST: TFloatField
      FieldName = 'VlrIcmsST'
    end
    object mItensNotaVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
    object mItensNotaProdMat: TStringField
      FieldName = 'ProdMat'
      Size = 1
    end
    object mItensNotaVlrFrete: TFloatField
      FieldName = 'VlrFrete'
    end
    object mItensNotaInfAdicionais: TStringField
      FieldName = 'InfAdicionais'
      Size = 250
    end
    object mItensNotaNumLote: TStringField
      DisplayLabel = 'No. Lote'
      FieldName = 'NumLote'
      Size = 15
    end
    object mItensNotaQtdPacote: TFloatField
      DisplayLabel = 'Qtd. Pacote'
      FieldName = 'QtdPacote'
    end
    object mItensNotaUnidadeInterno: TStringField
      DisplayLabel = 'Unid. Interna'
      FieldName = 'UnidadeInterno'
      Size = 6
    end
    object mItensNotaMercado: TStringField
      FieldName = 'Mercado'
      Size = 1
    end
    object mItensNotaCFOPOriginal: TStringField
      DisplayLabel = 'CFOP Original'
      FieldName = 'CFOPOriginal'
      Size = 5
    end
    object mItensNotaConversorUnidade: TFloatField
      FieldName = 'ConversorUnidade'
    end
    object mItensNotaID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object mItensNotaBeneficiamento: TStringField
      FieldName = 'Beneficiamento'
      Size = 1
    end
    object mItensNotaEX_TIPI: TStringField
      FieldName = 'EX_TIPI'
      Size = 5
    end
    object mItensNotaVlrSeguro: TFloatField
      FieldName = 'VlrSeguro'
    end
    object mItensNotaVlrOutrasDespesas: TFloatField
      FieldName = 'VlrOutrasDespesas'
    end
    object mItensNotaBaseImportacao: TFloatField
      FieldName = 'BaseImportacao'
    end
    object mItensNotaVlrImportacao: TFloatField
      FieldName = 'VlrImportacao'
    end
    object mItensNotaVlrDespesaAduaneira: TFloatField
      FieldName = 'VlrDespesaAduaneira'
    end
    object mItensNotaVlrIOF: TFloatField
      FieldName = 'VlrIOF'
    end
  end
  object dsmItensNota: TDataSource
    DataSet = mItensNota
    Left = 496
    Top = 488
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 16
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object sdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object sdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object sdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object sdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object sdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object sdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object sdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object sdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object sdsProdutoPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object sdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsProdutoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 168
    Top = 16
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto'
    OnNewRecord = cdsProdutoNewRecord
    Left = 232
    Top = 16
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object cdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object cdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object cdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object cdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object cdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object cdsProdutoPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object cdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsProdutoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 304
    Top = 16
  end
  object qCFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODCFOP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_CFOP'
      'WHERE CODCFOP = :CODCFOP')
    SQLConnection = dmDatabase.scoDados
    Left = 832
    Top = 32
    object qCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object qCFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object qCFOPGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qCFOPGERAR_ICMS: TStringField
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object qCFOPGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object qCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object qCFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object qCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object qCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object qCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object qCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object qCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object qCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object qCFOPGERAR_ICMS_SIMPLES: TStringField
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object qCFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object qCFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object qCFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object qCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object qCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object qCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object qCFOPBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 840
    Top = 80
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosENDXMLNFE: TStringField
      FieldName = 'ENDXMLNFE'
      Size = 250
    end
    object qParametrosENDPDFNFE: TStringField
      FieldName = 'ENDPDFNFE'
      Size = 250
    end
    object qParametrosSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object qParametrosSERIECONTINGENCIA: TStringField
      FieldName = 'SERIECONTINGENCIA'
      Size = 3
    end
    object qParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object qParametrosEMAILRESPONSAVELSISTEMA: TStringField
      FieldName = 'EMAILRESPONSAVELSISTEMA'
      Size = 200
    end
    object qParametrosNFEPRODUCAO: TStringField
      FieldName = 'NFEPRODUCAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosANEXARDANFE: TStringField
      FieldName = 'ANEXARDANFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosVERSAONFE: TStringField
      FieldName = 'VERSAONFE'
      Size = 10
    end
    object qParametrosVERSAOEMISSAONFE: TStringField
      FieldName = 'VERSAOEMISSAONFE'
      Size = 10
    end
    object qParametrosTIPOLOGONFE: TStringField
      FieldName = 'TIPOLOGONFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosAPLICARDESCONTONOICMS: TStringField
      FieldName = 'APLICARDESCONTONOICMS'
      FixedChar = True
      Size = 1
    end
    object qParametrosAPLICARDESCONTONOIPI: TStringField
      FieldName = 'APLICARDESCONTONOIPI'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_FRETE: TStringField
      FieldName = 'SOMARNOPROD_FRETE'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_OUTRASDESP: TStringField
      FieldName = 'SOMARNOPROD_OUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_SEGURO: TStringField
      FieldName = 'SOMARNOPROD_SEGURO'
      FixedChar = True
      Size = 1
    end
    object qParametrosAJUSTELOGONFEAUTOMATICO: TStringField
      FieldName = 'AJUSTELOGONFEAUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFNUMNOTAMANUAL: TStringField
      FieldName = 'INFNUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosOPCAO_DTENTREGAPEDIDO: TStringField
      FieldName = 'OPCAO_DTENTREGAPEDIDO'
      FixedChar = True
      Size = 1
    end
    object qParametrosOBS_SIMPLES: TStringField
      FieldName = 'OBS_SIMPLES'
      Size = 250
    end
    object qParametrosIMP_OBSSIMPLES: TStringField
      FieldName = 'IMP_OBSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qParametrosIMP_REFERENCIANANOTA: TStringField
      FieldName = 'IMP_REFERENCIANANOTA'
      FixedChar = True
      Size = 1
    end
    object qParametrosENVIARNOTABENEF_NANFE: TStringField
      FieldName = 'ENVIARNOTABENEF_NANFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosESPECIE_NOTA: TStringField
      FieldName = 'ESPECIE_NOTA'
    end
    object qParametrosMARCA_NOTA: TStringField
      FieldName = 'MARCA_NOTA'
    end
    object qParametrosVERSAO_BANCO: TIntegerField
      FieldName = 'VERSAO_BANCO'
    end
    object qParametrosUSA_QTDPACOTE_NTE: TStringField
      FieldName = 'USA_QTDPACOTE_NTE'
      FixedChar = True
      Size = 1
    end
    object qParametrosATUALIZAR_PRECO: TStringField
      FieldName = 'ATUALIZAR_PRECO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 96
    object sdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 168
    Top = 96
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 232
    Top = 96
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 304
    Top = 96
  end
  object sdsPais: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PAIS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 152
    object sdsPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPaisCODPAIS: TStringField
      FieldName = 'CODPAIS'
      Size = 5
    end
  end
  object dspPais: TDataSetProvider
    DataSet = sdsPais
    Left = 168
    Top = 152
  end
  object cdsPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPais'
    Left = 232
    Top = 152
    object cdsPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPaisCODPAIS: TStringField
      FieldName = 'CODPAIS'
      Size = 5
    end
  end
  object dsPais: TDataSource
    DataSet = cdsPais
    Left = 304
    Top = 152
  end
  object sdsFornecedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 208
    object sdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsFornecedorCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsFornecedorNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object sdsFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsFornecedorID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsFornecedorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsFornecedorDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object sdsFornecedorTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object sdsFornecedorDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object sdsFornecedorTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sdsFornecedorDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsFornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsFornecedorPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsFornecedorINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsFornecedorENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object sdsFornecedorCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object sdsFornecedorNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object sdsFornecedorBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object sdsFornecedorID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object sdsFornecedorCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object sdsFornecedorCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object sdsFornecedorUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object sdsFornecedorPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object sdsFornecedorINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object sdsFornecedorENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object sdsFornecedorCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object sdsFornecedorNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object sdsFornecedorBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object sdsFornecedorID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object sdsFornecedorCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object sdsFornecedorCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object sdsFornecedorUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object sdsFornecedorUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsFornecedorDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsFornecedorHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsFornecedorOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsFornecedorCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object sdsFornecedorRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsFornecedorID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsFornecedorID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsFornecedorID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object sdsFornecedorID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsFornecedorID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsFornecedorID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsFornecedorID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object sdsFornecedorID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object sdsFornecedorPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsFornecedorDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object sdsFornecedorFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object sdsFornecedorDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object sdsFornecedorFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object sdsFornecedorINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object sdsFornecedorTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object sdsFornecedorEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object sdsFornecedorEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object sdsFornecedorEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object sdsFornecedorPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object sdsFornecedorCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object sdsFornecedorINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object sdsFornecedorUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object sdsFornecedorPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object sdsFornecedorTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object sdsFornecedorTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object sdsFornecedorTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object sdsFornecedorTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 168
    Top = 208
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 232
    Top = 208
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
    object cdsFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFornecedorCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsFornecedorNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFornecedorID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFornecedorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsFornecedorDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsFornecedorTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsFornecedorDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object cdsFornecedorTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsFornecedorDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsFornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsFornecedorPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFornecedorINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsFornecedorENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsFornecedorCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsFornecedorNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsFornecedorBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsFornecedorID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsFornecedorCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object cdsFornecedorCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsFornecedorUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsFornecedorPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object cdsFornecedorINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object cdsFornecedorENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object cdsFornecedorCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object cdsFornecedorNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object cdsFornecedorBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object cdsFornecedorID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object cdsFornecedorCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object cdsFornecedorCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object cdsFornecedorUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object cdsFornecedorUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsFornecedorDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsFornecedorHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsFornecedorOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFornecedorCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsFornecedorRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsFornecedorID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsFornecedorID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsFornecedorID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object cdsFornecedorID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsFornecedorID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsFornecedorID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsFornecedorID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsFornecedorID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsFornecedorPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsFornecedorDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object cdsFornecedorFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object cdsFornecedorDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object cdsFornecedorFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object cdsFornecedorINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object cdsFornecedorTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object cdsFornecedorEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsFornecedorEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsFornecedorEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object cdsFornecedorPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object cdsFornecedorINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object cdsFornecedorUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object cdsFornecedorPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdsFornecedorTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object cdsFornecedorTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object cdsFornecedorTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object cdsFornecedorTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 304
    Top = 208
  end
  object sdsTab_CSTICMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTICMS'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 418
    object sdsTab_CSTICMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_CSTICMSPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object sdsTab_CSTICMSHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsTab_CSTICMSTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsTab_CSTICMSNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object sdsTab_CSTICMSCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
  end
  object dspTab_CSTICMS: TDataSetProvider
    DataSet = sdsTab_CSTICMS
    Left = 160
    Top = 418
  end
  object cdsTab_CSTICMS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTICMS'
    Left = 200
    Top = 418
    object cdsTab_CSTICMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTICMSPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object cdsTab_CSTICMSHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTab_CSTICMSTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsTab_CSTICMSNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object cdsTab_CSTICMSCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
  end
  object dsTab_CSTICMS: TDataSource
    DataSet = cdsTab_CSTICMS
    Left = 240
    Top = 418
  end
  object qUnidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM UNIDADE'
      'WHERE '#9'UNIDADE = :UNIDADE')
    SQLConnection = dmDatabase.scoDados
    Left = 840
    Top = 128
    object qUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object qUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object qUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CNPJ_CPF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL'
      'WHERE '#9'CNPJ_CPF = :CNPJ_CPF')
    SQLConnection = dmDatabase.scoDados
    Left = 840
    Top = 184
    object qFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object qFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object qFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object qFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object qFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object qFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object qFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object qFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object qFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object qFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object qFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object qFilialCALCULAR_IPI: TStringField
      FieldName = 'CALCULAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object qFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object qFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object qFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 10
    end
    object qFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object qFilialID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object qFilialID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object qFilialTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object qFilialTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object qFilialPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object qFilialPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object qFilialID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qFilialID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object qFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object qFilialDTESTOQUE: TDateField
      FieldName = 'DTESTOQUE'
    end
    object qFilialPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object qFilialLIBERADO_ATE: TStringField
      FieldName = 'LIBERADO_ATE'
      Size = 18
    end
    object qFilialULTIMO_ACESSO: TStringField
      FieldName = 'ULTIMO_ACESSO'
      Size = 18
    end
  end
  object sdsNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_NCM'#13#10'WHERE NCM = :NCM'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NCM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 474
    object sdsNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object sdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object sdsNCMPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object sdsNCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    Left = 152
    Top = 474
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNCM'
    OnNewRecord = cdsNCMNewRecord
    Left = 192
    Top = 474
    object cdsNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsNCMPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object cdsNCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 232
    Top = 474
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'#13#10'WHERE UNIDADE = :UNIDADE'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 362
    object sdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object sdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object sdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 160
    Top = 362
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 200
    Top = 362
    object cdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object cdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 240
    Top = 362
  end
  object qFilial2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 840
    Top = 232
    object qFilial2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilial2NOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qFilial2NOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object qFilial2CNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object sdsTransp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 264
  end
  object dspTransp: TDataSetProvider
    DataSet = sdsTransp
    Left = 168
    Top = 264
  end
  object cdsTransp: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspTransp'
    Left = 232
    Top = 264
  end
  object dsTransp: TDataSource
    DataSet = cdsTransp
    Left = 304
    Top = 264
  end
  object mRegistro: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Tipo_Reg'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Registro'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tipo_Processo'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Processo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CNPJ_CPF'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Pessoa'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Endereco'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Num_Endereco'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Cod_Municipio'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'Cep'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Nome_Cidade'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ID_Cidade'
        DataType = ftInteger
      end
      item
        Name = 'ID_Pais'
        DataType = ftInteger
      end
      item
        Name = 'Cod_Pais'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Cod_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Insc_Estadual'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Insc_Municipal'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Insc_Suframa'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'Complemento_End'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DDD'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Fone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Pais'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforePost = mRegistroBeforePost
    Left = 632
    Top = 488
    Data = {
      060300009619E0BD01000000180000001B000000000003000000060308546970
      6F5F526567010049000000010005574944544802000200030008526567697374
      726F01004900000001000557494454480200020014000D5469706F5F50726F63
      6573736F01004900000001000557494454480200020003000850726F63657373
      6F0100490000000100055749445448020002001E000249440400010000000000
      044E6F6D650100490000000100055749445448020002003C0008434E504A5F43
      5046010049000000010005574944544802000200120006506573736F61010049
      000000010005574944544802000200010008456E64657265636F010049000000
      0100055749445448020002003C000C4E756D5F456E64657265636F0100490000
      000100055749445448020002000F000D436F645F4D756E69636970696F010049
      0000000100055749445448020002000700034365700100490000000100055749
      4454480200020008000642616972726F01004900000001000557494454480200
      020028000B4E6F6D655F43696461646501004900000001000557494454480200
      020028000949445F43696461646504000100000000000749445F506169730400
      01000000000008436F645F506169730100490000000100055749445448020002
      000700025546010049000000010005574944544802000200020006436F645F55
      4601004900000001000557494454480200020002000D496E73635F4573746164
      75616C01004900000001000557494454480200020014000E496E73635F4D756E
      69636970616C01004900000001000557494454480200020014000C496E73635F
      53756672616D61010049000000010005574944544802000200140005456D6169
      6C01004900000001000557494454480200020096000F436F6D706C656D656E74
      6F5F456E640100490000000100055749445448020002003C0003444444010049
      000000010005574944544802000200030004466F6E6501004900000001000557
      49445448020002001400094E6F6D655F50616973010049000000010005574944
      5448020002003C000000}
    object mRegistroID: TIntegerField
      FieldName = 'ID'
    end
    object mRegistroTipo_Reg: TStringField
      FieldName = 'Tipo_Reg'
      Size = 3
    end
    object mRegistroRegistro: TStringField
      FieldName = 'Registro'
    end
    object mRegistroTipo_Processo: TStringField
      FieldName = 'Tipo_Processo'
      Size = 3
    end
    object mRegistroProcesso: TStringField
      FieldName = 'Processo'
      Size = 30
    end
    object mRegistroNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object mRegistroCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object mRegistroPessoa: TStringField
      FieldName = 'Pessoa'
      Size = 1
    end
    object mRegistroEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object mRegistroNum_Endereco: TStringField
      FieldName = 'Num_Endereco'
      Size = 15
    end
    object mRegistroCod_Municipio: TStringField
      FieldName = 'Cod_Municipio'
      Size = 7
    end
    object mRegistroCep: TStringField
      FieldName = 'Cep'
      Size = 8
    end
    object mRegistroBairro: TStringField
      FieldName = 'Bairro'
      Size = 40
    end
    object mRegistroNome_Cidade: TStringField
      FieldName = 'Nome_Cidade'
      Size = 40
    end
    object mRegistroID_Cidade: TIntegerField
      FieldName = 'ID_Cidade'
    end
    object mRegistroID_Pais: TIntegerField
      FieldName = 'ID_Pais'
    end
    object mRegistroCod_Pais: TStringField
      FieldName = 'Cod_Pais'
      Size = 7
    end
    object mRegistroUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mRegistroCod_UF: TStringField
      FieldName = 'Cod_UF'
      Size = 2
    end
    object mRegistroInsc_Estadual: TStringField
      FieldName = 'Insc_Estadual'
    end
    object mRegistroInsc_Municipal: TStringField
      FieldName = 'Insc_Municipal'
    end
    object mRegistroInsc_Suframa: TStringField
      FieldName = 'Insc_Suframa'
    end
    object mRegistroEmail: TStringField
      FieldName = 'Email'
      Size = 150
    end
    object mRegistroComplemento_End: TStringField
      FieldName = 'Complemento_End'
      Size = 60
    end
    object mRegistroDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object mRegistroFone: TStringField
      FieldName = 'Fone'
    end
    object mRegistroNome_Pais: TStringField
      FieldName = 'Nome_Pais'
      Size = 60
    end
  end
  object dsmRegistro: TDataSource
    DataSet = mRegistro
    Left = 672
    Top = 488
  end
  object mDadosImp: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnReconcileError = mDadosImpReconcileError
    Left = 632
    Top = 544
    Data = {
      040100009619E0BD010000001800000008000000000003000000040108497465
      6D5F496D700400010000000000054E756D444901004900000001000557494454
      48020002000C000A4474526567697374726F0100490000000100055749445448
      020002000C000E4474446573656D6261726163616F0100490000000100055749
      445448020002000C000D436F644578706F727461646F72010049000000010005
      5749445448020002003C00114C6F63616C5F446573656D62617261636F010049
      0000000100055749445448020002003C00025546010049000000010005574944
      5448020002000200094E756D4661747572610100490000000100055749445448
      020002000F000000}
    object mDadosImpItem_Imp: TIntegerField
      FieldName = 'Item_Imp'
    end
    object mDadosImpNumDI: TStringField
      FieldName = 'NumDI'
      Size = 12
    end
    object mDadosImpDtRegistro: TStringField
      FieldName = 'DtRegistro'
      Size = 12
    end
    object mDadosImpDtDesembaracao: TStringField
      FieldName = 'DtDesembaracao'
      Size = 12
    end
    object mDadosImpCodExportador: TStringField
      FieldName = 'CodExportador'
      Size = 60
    end
    object mDadosImpLocal_Desembaraco: TStringField
      FieldName = 'Local_Desembaraco'
      Size = 60
    end
    object mDadosImpUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mDadosImpNumFatura: TStringField
      FieldName = 'NumFatura'
      Size = 15
    end
  end
  object dsmDadosImp: TDataSource
    DataSet = mDadosImp
    Left = 688
    Top = 544
  end
  object mDadosImp_Adi: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NumAdicao;Item_Adi'
    Params = <>
    AfterEdit = mDadosImp_AdiAfterEdit
    BeforePost = mDadosImp_AdiBeforePost
    Left = 632
    Top = 592
    Data = {
      8B0000009619E0BD0100000018000000040000000000030000008B00094E756D
      41646963616F0100490000000100055749445448020002000F00084974656D5F
      41646901004900000001000557494454480200020005000D436F644661627269
      63616E74650100490000000100055749445448020002003C000B566C72446573
      636F6E746F08000400000000000000}
    object mDadosImp_AdiNumAdicao: TStringField
      FieldName = 'NumAdicao'
      Size = 15
    end
    object mDadosImp_AdiItem_Adi: TStringField
      FieldName = 'Item_Adi'
      Size = 5
    end
    object mDadosImp_AdiCodFabricante: TStringField
      FieldName = 'CodFabricante'
      Size = 60
    end
    object mDadosImp_AdiVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
  end
  object dsmDadosImp_Adi: TDataSource
    DataSet = mDadosImp_Adi
    Left = 696
    Top = 592
  end
  object mItensNota_Imp: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Item'
    MasterFields = 'Item'
    MasterSource = dsmItensNota
    PacketRecords = 0
    Params = <>
    Left = 464
    Top = 536
    Data = {
      530000009619E0BD010000001800000003000000000003000000530004497465
      6D0400010000000000084974656D5F496D700400010000000000064E756D5F44
      490100490000000100055749445448020002000F000000}
    object mItensNota_ImpItem: TIntegerField
      FieldName = 'Item'
    end
    object mItensNota_ImpItem_Imp: TIntegerField
      FieldName = 'Item_Imp'
    end
    object mItensNota_ImpNum_DI: TStringField
      FieldName = 'Num_DI'
      Size = 15
    end
  end
  object dsmItensNota_Imp: TDataSource
    DataSet = mItensNota_Imp
    Left = 504
    Top = 536
  end
  object mItensNota_Adi: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Item;Item_Imp'
    MasterFields = 'Item;Item_Imp'
    MasterSource = dsmItensNota_Imp
    PacketRecords = 0
    Params = <>
    Left = 464
    Top = 584
    Data = {
      710000009619E0BD010000001800000004000000000003000000710004497465
      6D0400010000000000084974656D5F496D700400010000000000074E756D5F41
      64690100490000000100055749445448020002000700084974656D5F41646901
      004900000001000557494454480200020007000000}
    object mItensNota_AdiItem: TIntegerField
      FieldName = 'Item'
    end
    object mItensNota_AdiItem_Imp: TIntegerField
      FieldName = 'Item_Imp'
    end
    object mItensNota_AdiNum_Adi: TStringField
      FieldName = 'Num_Adi'
      Size = 7
    end
    object mItensNota_AdiItem_Adi: TStringField
      FieldName = 'Item_Adi'
      Size = 7
    end
  end
  object dsmItensNota_Adi: TDataSource
    DataSet = mItensNota_Adi
    Left = 504
    Top = 584
  end
  object mOutrosNota: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 784
    Top = 512
    Data = {
      AA0000009619E0BD010000001800000006000000000003000000AA0009517464
      566F6C756D650400010000000000074573706563696501004900000001000557
      49445448020002001E00054D6172636101004900000001000557494454480200
      02001E000D4E756D65726F566F6C756D65730100490000000100055749445448
      020002001E000B5065736F4C69717569646F0800040000000000095065736F42
      7275746F08000400000000000000}
    object mOutrosNotaQtdVolume: TIntegerField
      FieldName = 'QtdVolume'
    end
    object mOutrosNotaEspecie: TStringField
      FieldName = 'Especie'
      Size = 30
    end
    object mOutrosNotaMarca: TStringField
      FieldName = 'Marca'
      Size = 30
    end
    object mOutrosNotaNumeroVolumes: TStringField
      FieldName = 'NumeroVolumes'
      Size = 30
    end
    object mOutrosNotaPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
    end
    object mOutrosNotaPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
  end
  object dsmOutrosNota: TDataSource
    DataSet = mOutrosNota
    Left = 848
    Top = 512
  end
  object sdsProduto_Forn: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_FORN'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 528
    object sdsProduto_FornID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProduto_FornITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsProduto_FornID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsProduto_FornNOME_MATERIAL_FORN: TStringField
      FieldName = 'NOME_MATERIAL_FORN'
      Size = 100
    end
    object sdsProduto_FornCOD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
    end
    object sdsProduto_FornTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsProduto_FornID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsProduto_FornCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsProduto_FornPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProduto_FornCOD_COR_FORN: TStringField
      FieldName = 'COD_COR_FORN'
      Size = 10
    end
  end
  object dspProduto_Forn: TDataSetProvider
    DataSet = sdsProduto_Forn
    Left = 160
    Top = 528
  end
  object cdsProduto_Forn: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Forn'
    BeforePost = cdsProduto_FornBeforePost
    Left = 200
    Top = 528
    object cdsProduto_FornID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_FornITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_FornID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsProduto_FornNOME_MATERIAL_FORN: TStringField
      FieldName = 'NOME_MATERIAL_FORN'
      Size = 100
    end
    object cdsProduto_FornCOD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
    end
    object cdsProduto_FornTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsProduto_FornID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProduto_FornCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProduto_FornPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProduto_FornCOD_COR_FORN: TStringField
      FieldName = 'COD_COR_FORN'
      Size = 10
    end
  end
  object dsProduto_Forn: TDataSource
    DataSet = cdsProduto_Forn
    Left = 240
    Top = 528
  end
  object qNCM: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_NCM'
      'WHERE ID = :ID'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 840
    Top = 280
    object qNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
  end
  object qCSTIcms: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_CST'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_CSTICMS'
      'WHERE COD_CST = :COD_CST'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 88
    object qCSTIcmsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCSTIcmsPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object qCSTIcmsCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
  end
  object qCSTIpi: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_IPI'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_CSTIPI'
      'WHERE COD_IPI = :COD_IPI'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 136
    object qCSTIpiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCSTIpiCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
  end
  object qCofins: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_COFINS'
      'WHERE CODIGO = :CODIGO'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 184
    object qCofinsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCofinsCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
  end
  object qPis: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_PIS'
      'WHERE CODIGO = :CODIGO'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 240
    object qPisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPisCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
  end
  object qProduto_Forn: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(ITEM) ITEM'
      'FROM PRODUTO_FORN'
      'WHERE ID = :ID'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 864
    Top = 336
    object qProduto_FornITEM: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 601
    Top = 137
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 561
    Top = 137
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
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 521
    Top = 137
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select F.ID, F.nome, F.nome_interno, F.cnpj_cpf'#13#10'from FILIAL F'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 489
    Top = 137
  end
end
