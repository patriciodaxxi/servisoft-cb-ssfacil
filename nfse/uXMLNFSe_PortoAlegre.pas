unit uXMLNFSe_PortoAlegre;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, DateUtils, Variants,
  UDMCadNotaServico, uXMLClientDataSet_NFSe_PortoAlegre, uXMLClientDataSet, DBClient, DB, uUtilTabela;

  procedure prc_Controle_NFSe(fDMCadNotaServico: TDMCadNotaServico ; AStrings: TStrings);
  procedure prc_Gravar_XML(fDMCadNotaServico: TDMCadNotaServico);
  procedure prc_Montar_Cobr(fDMCadNotaServico: TDMCadNotaServico; DtVencimento: TDateTime ; VlrVencimento: Real ; Parcela: Integer );

  procedure prc_Inicio_Envio(fDMCadNotaServico: TDMCadNotaServico);
  procedure prc_Inicio_Ret(fDMCadNotaServico: TDMCadNotaServico);
  //procedure prc_Finaliza(fDMCadNotaServico: TDMCadNotaServico);
  procedure prc_Finaliza(fDMCadNotaServico: TDMCadNotaServico; XMLStream: TStream);

  procedure prc_Carregar(Arquivo: String);
  procedure prc_Le_FCds;

  //********************

//var
  //vCds: TClientDataSet;
//  FCds: TClientDataSet;
  //NFSePoaEnvio: TXMLClientDataset;
//  NFSePoaRet: TXMLClientDataset;

implementation

uses uUtilPadrao;

procedure prc_Controle_NFSe(fDMCadNotaServico: TDMCadNotaServico ; AStrings: TStrings);
//function fnc_Controle_NFSe(fDMCadNotaServico: TDMCadNotaServico): TStrings;
begin
    prc_Gravar_XML(fDMCadNotaServico);


  {Result.Text := '';
  NFSeCB := TXMLClientDataset_NFSE_CampoBom.Create;
  Stream := TMemoryStream.Create;
  try
    vCds := NFSeCB.CriarClientDataSet;

    prc_Gravar_XML(fDMCadNotaServico);

    if Assigned(FCds) and FCds.Active then
    begin
      FCds.First;
      vCds.CloneCursor(FCds, True);
    end;

    NFSeCB.GerarXML(vCds, Stream);

    Stream.Position := 0;
    StrMem := TStringStream.Create('');
    try
      Stream.SaveToStream(StrMem);
      //mmoXML.Lines.Text := UTF8Decode(StrMem.DataString);
      //AStrings.Text := UTF8Decode(StrMem.DataString);
      Result.Text := UTF8Decode(StrMem.DataString);
    finally
      FreeAndNil(StrMem);
    end;
  finally
    FreeAndNil(Stream);
  end;}
end;

procedure prc_Gravar_XML(fDMCadNotaServico: TDMCadNotaServico);
var
  //vAux: String;
  //ano,mes,dia: word;
  vVlrAux: Real;
  Det: TDataSetField;
  Texto: String;
  vDiscriminacao: WideString;
  vAux: Real;
begin
  //aqui 11/03/2015 coloco os campos de porto alegre

  vCds.Insert;
  //aqui é de retorno trocar para envio, melhor ver pelo xml
  vCds.FieldByName('NumeroLote').AsString         := fDMCadNotaServico.cdsNotaServico_ImpNUMLOTE.AsString;
  vCds.FieldByName('Cnpj').AsString               := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpCNPJ_CPF_FIL.AsString,14);
  vCds.FieldByName('InscricaoMunicipal').AsString := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpINSCMUNICIPAL_FIL.AsString,0);
  vCds.FieldByName('QuantidadeRps').AsString      := '1';
                                               
  //fDMCadNotaServico.cdsFilialCOD_REGIME_TIB_ESP

  vCds.FieldByName('ListaRps.Rps.InfRps.IdentificacaoRps.Numero').AsString := fDMCadNotaServico.cdsNotaServico_ImpNUMRPS.AsString;
  vCds.FieldByName('ListaRps.Rps.InfRps.IdentificacaoRps.Serie').AsString  := fDMCadNotaServico.cdsNotaServico_ImpSERIE.AsString;
  vCds.FieldByName('ListaRps.Rps.InfRps.IdentificacaoRps.Tipo').AsString   := fDMCadNotaServico.cdsNotaServico_ImpTIPO_RPS.AsString;

  //Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaServico.cdsNotaServico_ImpDTEMISSAO_CAD.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + PegaTimeZone;
  //Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaServico.cdsNotaServico_ImpDTEMISSAO_CAD.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe);
  vCds.FieldByName('ListaRps.Rps.InfRps.DataEmissao').AsDateTime := Date;
  vCds.FieldByName('ListaRps.Rps.InfRps.NaturezaOperacao').AsString := fDMCadNotaServico.cdsNotaServico_ImpCOD_NATUREZA.AsString;
  if fDMCadNotaServico.cdsNotaServico_ImpCODREGIME_TRIBUTACAO.AsInteger > 0 then
    vCds.FieldByName('ListaRps.Rps.InfRps.RegimeEspecialTributacao').AsInteger := fDMCadNotaServico.cdsNotaServico_ImpCODREGIME_TRIBUTACAO.AsInteger;

  if fDMCadNotaServico.cdsNotaServico_ImpSIMPLES_FILIAL.AsString = 'S' then
    vCds.FieldByName('ListaRps.Rps.InfRps.OptanteSimplesNacional').AsString := '1'
  else
    vCds.FieldByName('ListaRps.Rps.InfRps.OptanteSimplesNacional').AsString := '2';
  if fDMCadNotaServico.cdsNotaServico_ImpINCENTIVO_CULTURAL.AsString = 'S' then
    vCds.FieldByName('ListaRps.Rps.InfRps.IncentivadorCultural').AsString := '1'
  else
    vCds.FieldByName('ListaRps.Rps.InfRps.IncentivadorCultural').AsString := '2';
  vCds.FieldByName('ListaRps.Rps.InfRps.Status').AsString := fDMCadNotaServico.cdsNotaServico_ImpSTATUS_RPS.AsString;
  vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.ValorServicos').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TOTAL.AsFloat));
  //if trim(fDMCadNotaServico.cdsNotaServico_ImpCNAE.AsString) <> '' then
    //vCds.FieldByName('ListaRps.Rps.InfRps.Servico.CodigoCnae').AsString := fDMCadNotaServico.cdsNotaServico_ImpCNAE.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpCNAE_NFSE.AsString) <> '' then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.CodigoCnae').AsString := fDMCadNotaServico.cdsNotaServico_ImpCNAE_NFSE.AsString;

  if fDMCadNotaServico.cdsNotaServico_ImpISS_RETIDO.AsString = '1' then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.IssRetido').AsString := '1'
  else
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.IssRetido').AsString := '2';
  vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.DescontoCondicionado').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_DESCONTO_COND.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_DEDUCOES.AsFloat)) > 0 then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.ValorDeducoes').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_DEDUCOES.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_PIS.AsFloat)) > 0 then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.ValorPis').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_PIS.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_COFINS.AsFloat)) > 0 then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.ValorCofins').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_COFINS.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_INSS.AsFloat)) > 0 then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.ValorInss').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_INSS.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_IR.AsFloat)) > 0 then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.ValorIr').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_IR.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_CSLL.AsFloat)) > 0 then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.ValorCsll').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_CSLL.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_ISS.AsFloat)) > 0 then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.ValorIss').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_ISS.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_ISS_RETIDO.AsFloat)) > 0 then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.ValorIssRetido').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_ISS_RETIDO.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_OUTRAS_RETENCOES.AsFloat)) > 0 then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.OutrasRetencoes').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_OUTRAS_RETENCOES.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpBASE_CALCULO.AsFloat)) > 0 then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.BaseCalculo').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpBASE_CALCULO.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpPERC_ALIQUOTA.AsFloat)) > 0 then
  begin
    vAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaServico.cdsNotaServico_ImpPERC_ALIQUOTA.AsFloat / 100));
    //17/04/2015  a aliquota é em casas decimais (5 / 100 = 0,05)    Cleomar
    //vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.Aliquota').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpPERC_ALIQUOTA.AsFloat));
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.Aliquota').AsFloat := StrToFloat(FormatFloat('0.0000',vAux));
  end;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_LIQUIDO_NFSE.AsFloat)) > 0 then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.ValorLiquidoNfse').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_LIQUIDO_NFSE.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_DESCONTO_INC.AsFloat)) > 0 then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Valores.DescontoIncondicionado').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_DESCONTO_INC.AsFloat));

  vCds.FieldByName('ListaRps.Rps.InfRps.Servico.ItemListaServico').AsString          := fDMCadNotaServico.cdsNotaServico_ImpCOD_SERVICO.AsString;
  vCds.FieldByName('ListaRps.Rps.InfRps.Servico.CodigoTributacaoMunicipio').AsString := fDMCadNotaServico.cdsNotaServico_ImpCOD_ATIVIDADE_CID.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpCOD_MUNICIPIO_TRIB.AsString) <> '' then
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.CodigoMunicipio').AsString := fDMCadNotaServico.cdsNotaServico_ImpCOD_MUNICIPIO_TRIB.AsString
  else
    vCds.FieldByName('ListaRps.Rps.InfRps.Servico.CodigoMunicipio').AsString := fDMCadNotaServico.cdsNotaServico_ImpCODMUNICIPIO_CLI.AsString;

  vDiscriminacao := '';
  fDMCadNotaServico.cdsNotaServico_Imp_Itens.Close;
  fDMCadNotaServico.sdsNotaServico_Imp_Itens.ParamByName('ID').AsInteger := fDMCadNotaServico.cdsNotaServico_ImpID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_Imp_Itens.Open;
  fDMCadNotaServico.cdsNotaServico_Imp_Itens.First;
  while not fDMCadNotaServico.cdsNotaServico_Imp_Itens.Eof do
  begin
    if trim(vDiscriminacao) <> '' then
      vDiscriminacao := vDiscriminacao + ' (' + fDMCadNotaServico.cdsNotaServico_Imp_ItensNOME_SERVICO_INT.AsString
    else
      vDiscriminacao := '(' + fDMCadNotaServico.cdsNotaServico_Imp_ItensNOME_SERVICO_INT.AsString;
    vDiscriminacao := vDiscriminacao + '  Valor R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_Imp_ItensVLR_TOTAL.AsFloat) + ')';
    fDMCadNotaServico.cdsNotaServico_Imp_Itens.Next;
  end;
  if (fDMCadNotaServico.cdsNotaServico_ImpANO_REF.AsInteger > 0) and (fDMCadNotaServico.cdsNotaServico_ImpMES_REF.AsInteger > 0) and
     (fDMCadNotaServico.cdsParametrosIMP_MESANO_REF_NOITEM_NFSE.AsString = 'S') then
    vDiscriminacao := vDiscriminacao + ' (Ref.: ' + FormatFloat('00',fDMCadNotaServico.cdsNotaServico_ImpMES_REF.AsInteger) + '/' + fDMCadNotaServico.cdsNotaServico_ImpANO_REF.AsString + ')';
  vCds.FieldByName('ListaRps.Rps.InfRps.Servico.Discriminacao').AsString := vDiscriminacao;
  
  vCds.FieldByName('ListaRps.Rps.InfRps.Prestador.Cnpj').AsString               := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpCNPJ_CPF_FIL.AsString,14);
  vCds.FieldByName('ListaRps.Rps.InfRps.Prestador.InscricaoMunicipal').AsString := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpINSCMUNICIPAL_FIL.AsString,0);

  //aqui 02/07/2015 colocar razão do prestador

  if fDMCadNotaServico.cdsNotaServico_ImpPESSOA_CLI.AsString = 'F' then
    vCds.FieldByName('ListaRps.Rps.InfRps.Tomador.IdentificacaoTomador.CpfCnpj.Cpf').AsString := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpCNPJ_CPF_CLI.AsString,11)
  else
    vCds.FieldByName('ListaRps.Rps.InfRps.Tomador.IdentificacaoTomador.CpfCnpj.Cnpj').AsString := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpCNPJ_CPF_CLI.AsString,14);
  if trim(fDMCadNotaServico.cdsNotaServico_ImpINSC_MUNICIPAL_CLI.AsString) <> '' then
    vCds.FieldByName('ListaRps.Rps.InfRps.Tomador.IdentificacaoTomador.InscricaoMunicipal').AsString := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpINSC_MUNICIPAL_CLI.AsString,0);
  vCds.FieldByName('ListaRps.Rps.InfRps.Tomador.RazaoSocial').AsString := fDMCadNotaServico.cdsNotaServico_ImpNOME_CLIENTE.AsString;
  vCds.FieldByName('ListaRps.Rps.InfRps.Tomador.Endereco.Endereco').AsString := fDMCadNotaServico.cdsNotaServico_ImpENDERECO_CLI.AsString;
  vCds.FieldByName('ListaRps.Rps.InfRps.Tomador.Endereco.Numero').AsString   := fDMCadNotaServico.cdsNotaServico_ImpNUM_END_CLI.AsString;
  vCds.FieldByName('ListaRps.Rps.InfRps.Tomador.Endereco.Complemento').AsString   := fDMCadNotaServico.cdsNotaServico_ImpCOMPLEMENTO_END.AsString;
  vCds.FieldByName('ListaRps.Rps.InfRps.Tomador.Endereco.Bairro').AsString   := fDMCadNotaServico.cdsNotaServico_ImpBAIRRO_CLI.AsString;
  vCds.FieldByName('ListaRps.Rps.InfRps.Tomador.Endereco.CodigoMunicipio').AsString   := fDMCadNotaServico.cdsNotaServico_ImpCODMUNICIPIO_CLI.AsString;
  vCds.FieldByName('ListaRps.Rps.InfRps.Tomador.Endereco.Uf').AsString   := fDMCadNotaServico.cdsNotaServico_ImpUF_CLI.AsString;
  vCds.FieldByName('ListaRps.Rps.InfRps.Tomador.Endereco.Cep').AsString   := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpCEP_CLI.AsString,0);

  fDMCadNotaServico.cdsNotaServico_Imp_Parc.Close;
  fDMCadNotaServico.sdsNotaServico_Imp_Parc.ParamByName('ID').AsInteger := fDMCadNotaServico.cdsNotaServico_ImpID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_Imp_Parc.Open;
  fDMCadNotaServico.cdsNotaServico_Imp_Parc.First;

  {Cobr := vCds.FieldByName('cobr') as TDataSetField;
  if fDMCadNotaServico.cdsNotaServico_ImpTIPO_PRAZO.AsString = 'V' then
    prc_Montar_Cobr(fDMCadNotaServico,fDMCadNotaServico.cdsNotaServico_ImpDTEMISSAO_CAD.AsDateTime,fDMCadNotaServico.cdsNotaServico_ImpVLR_DUPLICATA.AsFloat,1)
  else
  begin
    fDMCadNotaServico.cdsNotaServico_Imp_Parc.First;
    while not fDMCadNotaServico.cdsNotaServico_Imp_Parc.Eof do
    begin
      prc_Montar_Cobr(fDMCadNotaServico,fDMCadNotaServico.cdsNotaServico_Imp_ParcDTVENCIMENTO.AsDateTime,fDMCadNotaServico.cdsNotaServico_Imp_ParcVLR_VENCIMENTO.AsFloat,fDMCadNotaServico.cdsNotaServico_Imp_ParcITEM.AsInteger);
      fDMCadNotaServico.cdsNotaServico_Imp_Parc.Next;
    end;
  end;}
  //Observações
  {if (trim(fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value) <> '') or (StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL.AsFloat)) > 0) then
  begin
    obs := vCds.FieldByName('Observacoes') as TDataSetField;

    if trim(fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value) <> '' then
      //vCds.FieldByName('Observacoes.xinf').AsString := copy(fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value,1,100);
      obs.NestedDataSet.FieldByName('Observacoes.xinf').AsString := copy(fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value,1,100);
    if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL.AsFloat)) > 0 then
    begin
      //if trim(vCds.FieldByName('Observacoes.xinf').AsString) = '' then
      if trim(obs.NestedDataSet.FieldByName('xinf').AsString) = '' then
        obs.NestedDataSet.FieldByName('xinf').AsString := 'Vlr.aprox.tributos R$ ' + FormatFloat('###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL.AsFloat)
      else
        obs.NestedDataSet.FieldByName('xinf').AsString := obs.NestedDataSet.FieldByName('xinf').AsString + '(Vlr.aprox.tributos R$ ' + FormatFloat('###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL.AsFloat) + ')';
    end;
  end;}

  vCds.Post;
end;

procedure prc_Montar_Cobr(fDMCadNotaServico: TDMCadNotaServico; DtVencimento: TDateTime ; VlrVencimento: Real ; Parcela: Integer);
//var
  //vAux: String;
  //ano,mes,dia: word;
begin
  {Cobr.NestedDataSet.Insert;
  Cobr.NestedDataSet.FieldByName('dup.nDup').AsString         := IntToStr(Parcela);
  Cobr.NestedDataSet.FieldByName('dup.dVenc').AsDateTime := DtVencimento;
  Cobr.NestedDataSet.FieldByName('dup.vDup').AsFloat     := StrToFloat(FormatFloat('0.00',VlrVencimento));
  //vCds.FieldByName('cobr.dup.urlBol').AsString  := '';
  //vCds.FieldByName('cobr.dup.bBol').AsString  := '';
   Cobr.NestedDataSet.Post;}
end;

procedure prc_Inicio_Envio(fDMCadNotaServico: TDMCadNotaServico);
begin
  NFSePoaEnvio := TXCDS_NFSe_POA_Envio.Create;
  vCds   := NFSePoaEnvio.CriarClientDataSet;
end;

procedure prc_Inicio_Ret(fDMCadNotaServico: TDMCadNotaServico);
begin
  NFSePoaRet := TXCDS_NFSe_POA_Retorno.Create;
  vCds   := NFSePoaRet.CriarClientDataSet;
end;

procedure prc_Finaliza(fDMCadNotaServico: TDMCadNotaServico; XMLStream: TStream);
var
  Stream: TMemoryStream;
  StrMem: TStringStream;
begin
  Stream := TMemoryStream.Create;
  try
    if Assigned(FCds) and FCds.Active then
    begin
      FCds.First;
      vCds.CloneCursor(FCds, True);
    end;

    //NFSeCB.GerarXML(vCds, Stream);
    NFSePoaEnvio.GerarXML(vCds,XMLStream, True);

    Stream.Position := 0;
    StrMem := TStringStream.Create('');
    try
      Stream.SaveToStream(StrMem);
      //mmoXML.Lines.Text := UTF8Decode(StrMem.DataString);
      //AStrings.Text := UTF8Decode(StrMem.DataString);
    finally
      FreeAndNil(StrMem);
    end;
  finally
    FreeAndNil(Stream);
  end;
end;

procedure prc_Carregar(Arquivo: String);
var
  NFSePoa: TXMLClientDataset;
begin
  if trim(Arquivo) = '' then
    exit;
  if Assigned(FCds) then
    FreeAndNil(FCds);
  NFSePoa := TXCDS_NFSe_POA_Retorno.Create;
  try
    FCds := NFSePoa.CriarClientDataSet(Arquivo);
    //dsNovaGeracao.DataSet := FCds;

    if FCds.RecordCount > 0 then
    begin
      FCds.Last;
     // if trim(FCds.FieldByName('ID.nNFS-e').AsString) = '' then
      //  FCds.Delete;
    end;
  finally
    FreeAndNil(NFSePoa);
  end;

  prc_Le_FCds;
end;

procedure prc_Le_FCds;
begin


end;

end.

