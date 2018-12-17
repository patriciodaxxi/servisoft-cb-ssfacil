unit uXMLNFSe_CampoBom;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, DateUtils, Variants,
  UDMCadNotaServico, uXMLClientDataSet_NFSe_CampoBom, uXMLClientDataSet, DBClient, DB;

  procedure prc_Controle_NFSe(fDMCadNotaServico: TDMCadNotaServico ; AStrings: TStrings);
  procedure prc_Gravar_XML(fDMCadNotaServico: TDMCadNotaServico);
  procedure prc_Montar_Cobr(fDMCadNotaServico: TDMCadNotaServico; DtVencimento: TDateTime ; VlrVencimento: Real ; Parcela: Integer );

  procedure prc_Inicio(fDMCadNotaServico: TDMCadNotaServico);
  //procedure prc_Finaliza(fDMCadNotaServico: TDMCadNotaServico);
  procedure prc_Finaliza(fDMCadNotaServico: TDMCadNotaServico; XMLStream: TStream);

  procedure prc_Carregar_Campo_Bom(Arquivo: String);
  procedure prc_Le_FCds;

  //********************

//var
  //vCds: TClientDataSet;
  //FCds: TClientDataSet;
//  NFSeCB: TXMLClientDataset;
//  Cobr: TDataSetField;
//  obs: TDataSetField;

implementation

uses uUtilPadrao, uUtilTabela;

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
  vObsAux: String;
  Det: TDataSetField;
  i : Integer;
  vFlag : Boolean;
  vTexto1 : String;
  AString: TStrings;
begin

  vCds.Insert;
  //vCds.FieldByName('Id.cNFS-e').AsString := '         '; //ver
  vCds.FieldByName('Id.cNFS-e').AsString := fDMCadNotaServico.cdsNotaServico_ImpNUMNOTA.AsString;
  vCds.FieldByName('Id.natOp').AsString  := 'Prestacao de Servicos';
  vCds.FieldByName('Id.mod').AsString    := '55';
  vCds.FieldByName('Id.serie').AsString := trim(fDMCadNotaServico.cdsNotaServico_ImpSERIE.AsString);
  vCds.FieldByName('Id.nNFS-e').AsString := fDMCadNotaServico.cdsNotaServico_ImpNUMNOTA.AsString;
  //DecodeDate(fDMCadNotaServico.cdsNotaServico_ImpDTEMISSAO_CAD.AsDateTime,ano,mes,dia);
  //vAux := FormatFloat('0000',ano) + '-' + FormatFloat('00',mes) + '-' + FormatFloat('00',dia);
  //vCds.FieldByName('Id.dEmi').AsDateTime := StrToDate(FormatDateTime('YYYY-MM-DD',StrToDate(vAux)));
  vCds.FieldByName('Id.dEmi').AsDateTime := fDMCadNotaServico.cdsNotaServico_ImpDTEMISSAO_CAD.AsDateTime;

  //vCds.FieldByName('Id.hEmi').AsString := ''
  vCds.FieldByName('Id.hEmi').AsString := FormatDateTime('HH:MM',Now);
  //vCds.FieldByName('Id.dSaiEnt').AsString := ''
  vCds.FieldByName('Id.tpNF').AsString   := '1';
  if trim(fDMCadNotaServico.cdsNotaServico_ImpCODMUNICIPIO_CLI.AsString) <> '' then
    vCds.FieldByName('Id.cMunFG').AsString := fDMCadNotaServico.cdsNotaServico_ImpCODMUNICIPIO_CLI.AsString;
  //vCds.FieldByName('Id.refNF').AsString := ''
  //vCds.FieldByName('Id.tpImp').AsString := 'N'; //Ver
  //vCds.FieldByName('Id.notadebito').AsString := 'N'; //Ver
  //vCds.FieldByName('Id.notaSub').AsString  := '';
  //vCds.FieldByName('Id.serieSub').AsString := '';
  //vCds.FieldByName('Id.descDesconto').AsString := ''; //Ver
  //vCds.FieldByName('Id.descCondEsp').AsString := ''; //Ver
  //vCds.FieldByName('Id.numeroArt').AsString := ''; //Ver
  //vCds.FieldByName('Id.numeroCei').AsString := ''; //Ver
  //vCds.FieldByName('Id.numeroProj').AsString := ''; //Ver
  //vCds.FieldByName('Id.numeroMatri').AsString := ''; //Ver
  vCds.FieldByName('Id.tpEmis').AsString := 'N'; //Ver
  //vCds.FieldByName('Id.anulada').AsString := 'N'; //O Lucas pediu para trocar de anulada para cancelada
  vCds.FieldByName('Id.cancelada').AsString := 'N'; //Ver
  //vCds.FieldByName('Id.canhoto').AsString := 'N'; //Ver

  //Emitente
  vCds.FieldByName('emit.CNPJ').AsString  := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpCNPJ_CPF_FIL.AsString,14);
  vCds.FieldByName('emit.xNome').AsString := fDMCadNotaServico.cdsNotaServico_ImpNOME_FIL.AsString;
  vCds.FieldByName('emit.xFant').AsString := fDMCadNotaServico.cdsNotaServico_ImpFANTASIA_FIL.AsString;
  vCds.FieldByName('emit.IM').AsString := fDMCadNotaServico.cdsNotaServico_ImpINSCMUNICIPAL_FIL.AsString;
  vCds.FieldByName('emit.end.xLgr').AsString := fDMCadNotaServico.cdsNotaServico_ImpENDERECO_FIL.AsString;
  vCds.FieldByName('emit.end.nro').AsString := fDMCadNotaServico.cdsNotaServico_ImpNUM_END_FIL.AsString;
  vCds.FieldByName('emit.end.xCpl').AsString := fDMCadNotaServico.cdsNotaServico_ImpCOMPLEMENTO_END_FIL.AsString;
  vCds.FieldByName('emit.end.xBairro').AsString := fDMCadNotaServico.cdsNotaServico_ImpBAIRRO_FIL.AsString;
  vCds.FieldByName('emit.end.cMun').AsString := fDMCadNotaServico.cdsNotaServico_ImpCODMUNICIPIO_FIL.AsString;
  vCds.FieldByName('emit.end.xMun').AsString := fDMCadNotaServico.cdsNotaServico_ImpCIDADE_FIL.AsString;
  vCds.FieldByName('emit.end.UF').AsString := fDMCadNotaServico.cdsNotaServico_ImpUF_FIL.AsString;
  vCds.FieldByName('emit.end.CEP').AsString := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpCEP_FIL.AsString,8);
  vCds.FieldByName('emit.end.cPais').AsString := '1058';
  vCds.FieldByName('emit.end.xPais').AsString := 'Brasil';
  if trim(fDMCadNotaServico.cdsNotaServico_ImpFONE_FIL.AsString) <> '' then
    vCds.FieldByName('emit.end.fone').AsString := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpDDD_FIL.AsString + fDMCadNotaServico.cdsNotaServico_ImpFONE_FIL.AsString,0);
  if trim(fDMCadNotaServico.cdsNotaServico_ImpINSCR_EST_FIL.AsString) <> '' then
    vCds.FieldByName('emit.end.IE').AsString := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpINSCR_EST_FIL.AsString,0);
  //vCds.FieldByName('emit.end.IEST').AsString := '';
  //vCds.FieldByName('emit.end.IMSTS').AsString := '';
  //vCds.FieldByName('emit.end.ddi').AsString := ''; //Verificar
  //vCds.FieldByName('emit.end.ddi2').AsString := ''; //Verificar

  if fDMCadNotaServico.cdsNotaServico_ImpPESSOA_CLI.AsString = 'F' then
    vCds.FieldByName('TomS.CPF').AsString  := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpCNPJ_CPF_CLI.AsString,11)
  else
    vCds.FieldByName('TomS.CNPJ').AsString := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpCNPJ_CPF_CLI.AsString,14);
  if (fDMCadNotaServico.cdsNotaServico_ImpID_CLIENTE.AsInteger = fDMCadNotaServico.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger) and
     (trim(fDMCadNotaServico.cdsNotaServico_ImpNOME_CLIENTE_CONS.AsString) <> '') then
    vCds.FieldByName('TomS.xNome').AsString := fDMCadNotaServico.cdsNotaServico_ImpNOME_CLIENTE_CONS.AsString
  else
    vCds.FieldByName('TomS.xNome').AsString := fDMCadNotaServico.cdsNotaServico_ImpNOME_CLIENTE.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpENDERECO_CLI.AsString) <> '' then
    vCds.FieldByName('TomS.ender.xLgr').AsString := fDMCadNotaServico.cdsNotaServico_ImpENDERECO_CLI.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpNUM_END_CLI.AsString) <> '' then
    vCds.FieldByName('TomS.ender.nro').AsString := fDMCadNotaServico.cdsNotaServico_ImpNUM_END_CLI.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpCOMPLEMENTO_END.AsString) <> '' then
    vCds.FieldByName('TomS.ender.xCpl').AsString := fDMCadNotaServico.cdsNotaServico_ImpCOMPLEMENTO_END.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpBAIRRO_CLI.AsString) <> '' then
    vCds.FieldByName('TomS.ender.xBairro').AsString := fDMCadNotaServico.cdsNotaServico_ImpBAIRRO_CLI.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpCODMUNICIPIO_CLI.AsString) <> '' then
    vCds.FieldByName('TomS.ender.cMun').AsString := fDMCadNotaServico.cdsNotaServico_ImpCODMUNICIPIO_CLI.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpCIDADE_CLI.AsString) <> '' then
    vCds.FieldByName('TomS.ender.xMun').AsString := fDMCadNotaServico.cdsNotaServico_ImpCIDADE_CLI.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpUF_CLI.AsString) <> '' then
    vCds.FieldByName('TomS.ender.UF').AsString := fDMCadNotaServico.cdsNotaServico_ImpUF_CLI.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpCEP_CLI.AsString) <> '' then
    vCds.FieldByName('TomS.ender.CEP').AsString := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpCEP_CLI.AsString,8);
  if trim(fDMCadNotaServico.cdsNotaServico_ImpCODPAIS_CLI.AsString) <> '' then
    vCds.FieldByName('TomS.ender.cPais').AsString := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpCODPAIS_CLI.AsString,0);
  if trim(fDMCadNotaServico.cdsNotaServico_ImpNOME_PAIS_CLI.AsString) <> '' then
    vCds.FieldByName('TomS.ender.xPais').AsString := fDMCadNotaServico.cdsNotaServico_ImpNOME_PAIS_CLI.AsString;
  vCds.FieldByName('TomS.ender.fone').AsString := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpDDD_CLI.AsString + fDMCadNotaServico.cdsNotaServico_ImpFONE_CLI.AsString,0);
  //vCds.FieldByName('TomS.ender.ddi').AsString := '';  Verificar
  //vCds.FieldByName('TomS.ender.ddi2').AsString := ''; Verificar
  //vCds.FieldByName('TomS.ender.xEMAIL').AsString := fDMCadNotaServico.cdsNotaServico_ImpEMAIL_CLI.AsString;
  vCds.FieldByName('TomS.xEMAIL').AsString := fDMCadNotaServico.cdsNotaServico_ImpEMAIL_CLI.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpINSC_ESTADUAL_CLI.AsString) <> '' then
    //vCds.FieldByName('TomS.ender.IE').AsString := fDMCadNotaServico.cdsNotaServico_ImpINSC_ESTADUAL_CLI.AsString;
    vCds.FieldByName('TomS.IE').AsString := fDMCadNotaServico.cdsNotaServico_ImpINSC_ESTADUAL_CLI.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpINSC_MUNICIPAL_CLI.AsString) <> '' then
    //vCds.FieldByName('TomS.ender.IM').AsString := fDMCadNotaServico.cdsNotaServico_ImpINSC_MUNICIPAL_CLI.AsString;
    vCds.FieldByName('TomS.IM').AsString := fDMCadNotaServico.cdsNotaServico_ImpINSC_MUNICIPAL_CLI.AsString;
  //vCds.FieldByName('TomS.ender.IMSTS').AsString := ''; Verificar

  if fDMCadNotaServico.cdsNotaServico_ImpID_CIDADE_TRIB.AsInteger > 0 then
    vCds.FieldByName('TomS.Praca').AsString := fDMCadNotaServico.cdsNotaServico_ImpCIDADE_TRIB.AsString + '-' + fDMCadNotaServico.cdsNotaServico_ImpUF_TRIB.AsString
  else
    vCds.FieldByName('TomS.Praca').AsString := fDMCadNotaServico.cdsNotaServico_ImpCIDADE_FIL.AsString + '-' + fDMCadNotaServico.cdsNotaServico_ImpUF_FIL.AsString;
  fDMCadNotaServico.cdsNotaServico_Imp_Itens.Close;
  fDMCadNotaServico.sdsNotaServico_Imp_Itens.ParamByName('ID').AsInteger := fDMCadNotaServico.cdsNotaServico_ImpID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_Imp_Itens.Open;
  fDMCadNotaServico.cdsNotaServico_Imp_Itens.First;

  //08/07/2015
  fDMCadNotaServico.mOSAux.EmptyDataSet;
  //****************
  Det :=  vCds.FieldByName('det') as TDataSetField;
  //vAux := Replace(Det.NestedDataSet.FieldByName('serv.pISS').AsString,'.',',');
  while not fDMCadNotaServico.cdsNotaServico_Imp_Itens.Eof do
  begin
    if fDMCadNotaServico.cdsNotaServico_Imp_ItensNUM_OS_SIMPLES.AsInteger > 0 then
    begin
      if not fDMCadNotaServico.mOSAux.FindKey([fDMCadNotaServico.cdsNotaServico_Imp_ItensNUM_OS_SIMPLES.AsInteger]) then
      begin
        fDMCadNotaServico.mOSAux.Insert;
        fDMCadNotaServico.mOSAuxID.AsInteger := fDMCadNotaServico.cdsNotaServico_Imp_ItensNUM_OS_SIMPLES.AsInteger;
        fDMCadNotaServico.mOSAux.Post;
      end;
    end;
    Det.NestedDataSet.Insert;
    Det.NestedDataSet.fieldbyname('nItem').asstring := fDMCadNotaServico.cdsNotaServico_Imp_ItensITEM.AsString;

    //Det.NestedDataSet.FieldByName('serv.cServ').AsString := fDMCadNotaServico.cdsNotaServico_Imp_ItensID_SERVICO_INT.AsString; //ver aqui
    Det.NestedDataSet.FieldByName('serv.cServ').AsString := Monta_Numero(fDMCadNotaServico.cdsNotaServico_ImpCOD_SERVICO.AsString,0);

    Det.NestedDataSet.FieldByName('serv.xServ').AsString := fDMCadNotaServico.cdsNotaServico_Imp_ItensNOME_SERVICO_INT.AsString; //ver aqui
    Det.NestedDataSet.FieldByName('serv.uTrib').AsString := 'UN';
    //vAux := Replace(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_Imp_ItensQTD.AsFloat),',','.');
    //Det.NestedDataSet.FieldByName('serv.qTrib').AsString := vAux;
    Det.NestedDataSet.FieldByName('serv.qTrib').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_Imp_ItensQTD.AsFloat));
    Det.NestedDataSet.FieldByName('serv.vUnit').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_Imp_ItensVLR_UNITARIO.AsFloat));
    Det.NestedDataSet.FieldByName('serv.vServ').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_Imp_ItensVLR_TOTAL.AsFloat));
    //vCds.FieldByName('det.serv.vDesc').AsString := '0'
    if fDMCadNotaServico.cdsNotaServico_Imp_ItensCALCULAR_ISSQN.AsString = 'S' then
    begin
      Det.NestedDataSet.FieldByName('serv.vBCISS').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_Imp_ItensBASE_CALCULO.AsFloat));
      Det.NestedDataSet.FieldByName('serv.pISS').AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpPERC_ALIQUOTA.AsFloat));
      Det.NestedDataSet.FieldByName('serv.vISS').AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_Imp_ItensVLR_ISS.AsFloat));
    end
    else
    begin
      Det.NestedDataSet.FieldByName('serv.vBCISS').AsFloat := StrToFloat(FormatFloat('0.00',0));
      Det.NestedDataSet.FieldByName('serv.pISS').AsFloat   := StrToFloat(FormatFloat('0.00',0));
      Det.NestedDataSet.FieldByName('serv.vISS').AsFloat   := StrToFloat(FormatFloat('0.00',0));
    end;
    //Det.NestedDataSet.FieldByName('serv.pISS').AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_Imp_ItensPERC_ALIQUOTA.AsFloat));
    if fDMCadNotaServico.cdsNotaServico_ImpRETEM_INSS.AsString  = 'S' then
    begin
      Det.NestedDataSet.FieldByName('serv.pRetINSS').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpPERC_INSS.AsFloat));
      Det.NestedDataSet.FieldByName('serv.vRetINSS').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_Imp_ItensVLR_INSS.AsFloat));
    end;
    //não preencher se não tiver valor
    //Det.NestedDataSet.FieldByName('serv.vRed').AsFloat := 0;
    //ver depois 24/11/2014
    if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_Imp_ItensVLR_TRIBUTO.AsFloat)) > 0 then
      Det.NestedDataSet.FieldByName('serv.totalAproxTribServ').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_Imp_ItensVLR_TRIBUTO.AsFloat));
    Det.NestedDataSet.Post;

    fDMCadNotaServico.cdsNotaServico_Imp_Itens.Next;
  end;

  //Iss por substituição tributária
  //vCds.FieldByName('ISSST.pRedBCST').AsString := '0.00';
  //vCds.FieldByName('ISSST.vRedBCST').AsString := '0.00';
  //vCds.FieldByName('ISSST.vBCST').AsString    := '0.00';
  //vCds.FieldByName('ISSST.pISSST').AsString   := '0.00';
  //vCds.FieldByName('ISSST.vISSST').AsString   := '0.00';

  //vCds.FieldByName('total.vReemb').AsString := '0.00'
  //vAux := Replace(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_SERVICOS.AsFloat),',','.');
  vCds.FieldByName('total.vServ').AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_SERVICOS.AsFloat));
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_DESCONTO_COND.AsFloat)) > 0) or (StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_DESCONTO_INC.AsFloat)) > 0)then
  begin
    vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_DESCONTO_COND.AsFloat + fDMCadNotaServico.cdsNotaServico_ImpVLR_DESCONTO_INC.AsFloat));
    vCds.FieldByName('total.vDesc').AsFloat := vVlrAux;
  end;
  vCds.FieldByName('total.vOutro').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_OUTRAS_DESPESAS.AsFloat));
  vCds.FieldByName('total.vtNF').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TOTAL.AsFloat));
  vCds.FieldByName('total.vtLiq').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_LIQUIDO_NFSE.AsFloat));
  //Tirar por enquanto 24/11/2014
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO.AsFloat)) > 0 then
    vCds.FieldByName('total.totalAproxTrib').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO.AsFloat));

  //vCds.FieldByName('Ret.xRetIRF').AsString := '';
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_IR.AsFloat)) > 0 then
  begin
    vCds.FieldByName('total.Ret.pRetIRF').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpPERC_IR.AsFloat));
    vCds.FieldByName('total.Ret.vRetIRF').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_IR.AsFloat));
  end;
  if (fDMCadNotaServico.cdsNotaServico_ImpRETEM_PISCOFINS.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_PIS.AsFloat)) > 0) then
  begin
    //vCds.FieldByName('Ret.xRetLei10833-PIS-PASEP').AsString := '';
    vCds.FieldByName('total.Ret.pRetLei10833-PIS-PASEP').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpPERC_PIS_FIL.AsFloat));
    vCds.FieldByName('total.Ret.vRetLei10833-PIS-PASEP').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_PIS.AsFloat));

    //vCds.FieldByName('Ret.xRetLei10833-COFINS').AsString := '';
    vCds.FieldByName('total.Ret.pRetLei10833-COFINS').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpPERC_COFINS_FIL.AsFloat));
    vCds.FieldByName('total.Ret.vRetLei10833-COFINS').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_COFINS.AsFloat));
  end;

  if (StrToFloat(FormatFloat('0.0000',fDMCadNotaServico.cdsNotaServico_ImpVLR_CSLL.AsFloat)) > 0) then
  begin
    //vCds.FieldByName('Ret.xRetLei10833-CSLL').AsString := '';
    vCds.FieldByName('total.Ret.pRetLei10833-CSLL').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpPERC_CSLL_FIL.AsFloat));
    vCds.FieldByName('total.Ret.vRetLei10833-CSLL').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_CSLL.AsFloat));
  end;

  if (fDMCadNotaServico.cdsNotaServico_ImpRETEM_INSS.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_INSS.AsFloat)) > 0) then
  begin
    //vCds.FieldByName('Ret.xRetINSS').AsString := '';
    vCds.FieldByName('total.Ret.vRetINSS').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_INSS.AsFloat));
  end;

  vCds.FieldByName('total.fat.nFat').AsString  := fDMCadNotaServico.cdsNotaServico_ImpNUMNOTA.AsString;
  vCds.FieldByName('total.fat.vOrig').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_DUPLICATA.AsFloat));
  //vCds.FieldByName('fat.vDesc').AsString := '';
  vCds.FieldByName('total.fat.vLiq').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_DUPLICATA.AsFloat));

  vCds.FieldByName('total.ISS.vBCISS').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpBASE_CALCULO.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_ISS.AsFloat)) > 0 then
    vCds.FieldByName('total.ISS.vISS').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_ISS.AsFloat))
  else
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_ISS_RETIDO.AsFloat)) > 0 then
    vCds.FieldByName('total.ISS.vISS').AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_ISS_RETIDO.AsFloat));

  //vCds.FieldByName('ISS.vBCSTISS').AsString := '';
  //vCds.FieldByName('ISS.vSTISS').AsString   := '';

  fDMCadNotaServico.cdsNotaServico_Imp_Parc.Close;
  fDMCadNotaServico.sdsNotaServico_Imp_Parc.ParamByName('ID').AsInteger := fDMCadNotaServico.cdsNotaServico_ImpID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_Imp_Parc.Open;
  fDMCadNotaServico.cdsNotaServico_Imp_Parc.First;

  Cobr := vCds.FieldByName('cobr') as TDataSetField;
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
  end;
  //Observações
  obs := vCds.FieldByName('Observacoes') as TDataSetField;
  {obs.NestedDataSet.Insert;
  obs.NestedDataSet.FieldByName('xinf').AsString := 'Correspondencia do codigo municipal com o código da Lei Complementar 116/2003:'
                                                  + fDMCadNotaServico.cdsNotaServico_ImpCOD_SERVICO.AsString
                                                  + ' -> ' + fDMCadNotaServico.cdsNotaServico_ImpCOD_SERVICO_EQUIV.AsString;
  obs.NestedDataSet.Post;}

  if (trim(fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value) <> '') or (StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL.AsFloat)) > 0) then
  begin
    vTexto1 := fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value;
    i := 1;
    AString := TStringList.Create;
    vFlag := False;
    while not vFlag do
    begin
      if trim(copy(vTexto1,i,100)) <> '' then
      begin
        obs.NestedDataSet.Insert;
        obs.NestedDataSet.FieldByName('xinf').AsString := copy(vTexto1,i,100);
        obs.NestedDataSet.Post;
        Delete(vTexto1,i,100);
      end;
//    i := i + 100;
      if trim(vTexto1) = '' then
        vFlag := True;
    end;

    if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL.AsFloat)) > 0 then
    begin
      obs.NestedDataSet.Insert;
      if trim(obs.NestedDataSet.FieldByName('xinf').AsString) = '' then
        obs.NestedDataSet.FieldByName('xinf').AsString := 'Vlr.aprox.tributos R$ ' + FormatFloat('###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL.AsFloat)
      else
        obs.NestedDataSet.FieldByName('xinf').AsString := obs.NestedDataSet.FieldByName('xinf').AsString + '(Vlr.aprox.tributos R$ ' + FormatFloat('###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL.AsFloat) + ')';
      obs.NestedDataSet.Post;
    end;

    vObsAux := '';
    fDMCadNotaServico.mOSAux.First;
    while not fDMCadNotaServico.mOSAux.Eof do
    begin
      if vObsAux = '' then
        vObsAux := 'OS: ' + fDMCadNotaServico.mOSAuxID.AsString
      else
        vObsAux := vObsAux + ',' + fDMCadNotaServico.mOSAuxID.AsString;
      fDMCadNotaServico.mOSAux.Next;
    end;
    
    if trim(vObsAux) <> '' then
    begin
      obs.NestedDataSet.Insert;
      vObsAux := '(' + vObsAux + ')';
      obs.NestedDataSet.FieldByName('xinf').AsString := obs.NestedDataSet.FieldByName('xinf').AsString + vObsAux;
      obs.NestedDataSet.Post;
    end;

    //03/09/2018
    {obs.NestedDataSet.Insert;
    if trim(fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value) <> '' then
    begin
      obs.NestedDataSet.FieldByName('xinf').AsString := copy(fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value,1,100);
    end;

    if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL.AsFloat)) > 0 then
    begin
      //if trim(vCds.FieldByName('Observacoes.xinf').AsString) = '' then
      if trim(obs.NestedDataSet.FieldByName('xinf').AsString) = '' then
        obs.NestedDataSet.FieldByName('xinf').AsString := 'Vlr.aprox.tributos R$ ' + FormatFloat('###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL.AsFloat)
      else
        obs.NestedDataSet.FieldByName('xinf').AsString := obs.NestedDataSet.FieldByName('xinf').AsString + '(Vlr.aprox.tributos R$ ' + FormatFloat('###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL.AsFloat) + ')';
    end;

    vObsAux := '';
    fDMCadNotaServico.mOSAux.First;
    while not fDMCadNotaServico.mOSAux.Eof do
    begin
      if vObsAux = '' then
        vObsAux := 'OS: ' + fDMCadNotaServico.mOSAuxID.AsString
      else
        vObsAux := vObsAux + ',' + fDMCadNotaServico.mOSAuxID.AsString;
      fDMCadNotaServico.mOSAux.Next;
    end;
    if trim(vObsAux) <> '' then
    begin
      vObsAux := '(' + vObsAux + ')';
      obs.NestedDataSet.FieldByName('xinf').AsString := obs.NestedDataSet.FieldByName('xinf').AsString + vObsAux;
    end;
    obs.NestedDataSet.Post;}
  end;

  vCds.Post;
end;

procedure prc_Montar_Cobr(fDMCadNotaServico: TDMCadNotaServico; DtVencimento: TDateTime ; VlrVencimento: Real ; Parcela: Integer);
//var
  //vAux: String;
  //ano,mes,dia: word;
begin
  Cobr.NestedDataSet.Insert;
  Cobr.NestedDataSet.FieldByName('dup.nDup').AsString         := IntToStr(Parcela);
  Cobr.NestedDataSet.FieldByName('dup.dVenc').AsDateTime := DtVencimento;
  Cobr.NestedDataSet.FieldByName('dup.vDup').AsFloat     := StrToFloat(FormatFloat('0.00',VlrVencimento));
  //vCds.FieldByName('cobr.dup.urlBol').AsString  := '';
  //vCds.FieldByName('cobr.dup.bBol').AsString  := '';
   Cobr.NestedDataSet.Post;
end;

procedure prc_Inicio(fDMCadNotaServico: TDMCadNotaServico);
begin
  NFSeCB := TXMLClientDataset_NFSE_CampoBom.Create;
  vCds   := NFSeCB.CriarClientDataSet;
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
    NFSeCB.GerarXML(vCds,XMLStream, True);

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

procedure prc_Carregar_Campo_Bom(Arquivo: String);
var
  NFSeCB: TXMLClientDataset;
begin
  if trim(Arquivo) = '' then
    exit;
  if Assigned(FCds) then
    FreeAndNil(FCds);
  NFSeCB := TXMLClientDataset_NFSE_CampoBom.Create;
  try
    FCds := NFSeCB.CriarClientDataSet(Arquivo);
    //dsNovaGeracao.DataSet := FCds;

    if FCds.RecordCount > 0 then
    begin
      FCds.Last;
      if trim(FCds.FieldByName('ID.nNFS-e').AsString) = '' then
        FCds.Delete;
    end;
  finally
    FreeAndNil(NFSeCB);
  end;

  prc_Le_FCds;
end;

procedure prc_Le_FCds;
begin


end;

end.

