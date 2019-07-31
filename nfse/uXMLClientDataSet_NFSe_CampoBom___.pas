unit uXMLClientDataSet_NFSe_CampoBom;

interface

uses
  Windows, Classes, SysUtils, uXMLClientDataSet, DBClient, DB, XMLIntf;

type
  TXMLClientDataset_NFSE_CampoBom = class(TXMLClientDataset)
  protected
    procedure ConverterXML(AClientDataSet: TClientDataSet); override;
    procedure ConverterParaXML(AClientDataSet: TClientDataSet; ATodosRegistros: Boolean); override;
    procedure CarregarCampos(AClientDataSet: TClientDataSet); override;
  end;

implementation

{ TXMLClientDataset_NFSE_CampoBom }
                                         
procedure TXMLClientDataset_NFSE_CampoBom.CarregarCampos(AClientDataSet: TClientDataSet);
var
  Def, Def2: TFieldDef;
begin
  AClientDataSet.FieldDefs.Add('Id', ftADT);
  Def := AClientDataSet.FieldDefs.Find('Id');
  AddADTChield(Def, 'cNFS-e', ftString, 9);
  //AddADTChield(Def, 'natOp', ftString, 100);
  AddADTChield(Def, 'mod', ftString, 2);
  AddADTChield(Def, 'serie', ftString, 3);
  AddADTChield(Def, 'nNFS-e', ftString, 21);
  AddADTChield(Def, 'dEmi', ftDate);
  AddADTChield(Def, 'hEmi', ftString, 5);
  //AddADTChield(Def, 'dSaiEnt', ftDate);
  AddADTChield(Def, 'tpNF', ftInteger);
  //AddADTChield(Def, 'cMunFG', ftString, 7);
  AddADTChield(Def, 'refNF', ftString, 39);
  AddADTChield(Def, 'tpImp', ftString, 1);
  AddADTChield(Def, 'tpEmis', ftString, 1);
  AddADTChield(Def, 'cancelada', ftString, 1);
  AddADTChield(Def, 'motCanc', ftInteger);
  AddADTChield(Def, 'dataCanc', ftDate);
  AddADTChield(Def, 'notadebito', ftString, 1);
  AddADTChield(Def, 'notaSub', ftString, 9);
//  AddADTChield(Def, 'serieSub', ftString, 3);
  AddADTChield(Def, 'canhoto', ftString, 1);
  AddADTChield(Def, 'ambienteEmi', ftString, 1);
  AddADTChield(Def, 'formaEmi', ftString, 1);
  AddADTChield(Def, 'empreitadaGlobal', ftString, 1);
  AddADTChield(Def, 'codRPS', ftString, 15);
  AddADTChield(Def, 'rps', ftString, 9);    
  AddADTChield(Def, 'serierps', ftString, 3);    
  AddADTChield(Def, 'dataEmissaoRpsPapel', ftDate);  
  AddADTChield(Def, 'enviarEmail', ftString, 1);     
  AddADTChield(Def, 'chaveAcessoSubstituida', ftString, 39);

//  AddADTChield(Def, 'descDesconto', ftString, 100);
//  AddADTChield(Def, 'descCondEsp', ftString, 100);
//  AddADTChield(Def, 'numeroArt', ftString, 15);
//  AddADTChield(Def, 'numeroCei', ftString, 15);
//  AddADTChield(Def, 'numeroProj', ftString, 15);
//  AddADTChield(Def, 'numeroMatri', ftString, 15);
//  AddADTChield(Def, 'anulada', ftString, 1);

//  AClientDataSet.FieldDefs.Add('emit', ftADT);
//  Def := AClientDataSet.FieldDefs.Find('emit');
  AClientDataSet.FieldDefs.Add('prest', ftADT);
  Def := AClientDataSet.FieldDefs.Find('prest');
  AddADTChield(Def, 'CNPJ', ftString, 14);
  AddADTChield(Def, 'xNome', ftString, 100);
  AddADTChield(Def, 'xFant', ftString, 60);
  AddADTChield(Def, 'IM', ftString, 15);    
  AddADTChield(Def, 'xEmail', ftString, 50);
  AddADTChield(Def, 'xSite', ftString, 50);

  AddADTChield(Def, 'end', ftADT);
  Def2 := Def.ChildDefs.Find('end');
  AddADTChield(Def2, 'xLgr', ftString, 100);
  AddADTChield(Def2, 'nro', ftString, 15);
  AddADTChield(Def2, 'xCpl', ftString, 100);
  AddADTChield(Def2, 'xBairro', ftString, 100);
  AddADTChield(Def2, 'cMun', ftString, 7);
  AddADTChield(Def2, 'xMun', ftString, 60);
  AddADTChield(Def2, 'UF', ftString, 2);
  AddADTChield(Def2, 'CEP', ftString, 8);
  AddADTChield(Def2, 'cPais', ftString, 5);
  AddADTChield(Def2, 'xPais', ftString, 100);
  //AddADTChield(Def2, 'fone', ftString, 13);
  //AddADTChield(Def2, 'IE', ftString, 15);
  //AddADTChield(Def2, 'IEST', ftString, 15);
  //AddADTChield(Def2, 'IMSTS', ftString, 15);
  //AddADTChield(Def2, 'ddi', ftString, 2);
  //AddADTChield(Def2, 'ddi2', ftString, 2);

  AddADTChield(Def, 'fone', ftString, 13);
  AddADTChield(Def, 'fone2', ftString, 13);
  AddADTChield(Def, 'IE', ftString, 15);
  AddADTChield(Def, 'regimeTrib', ftString, 1);


  AClientDataSet.FieldDefs.Add('TomS', ftADT);
  Def := AClientDataSet.FieldDefs.Find('TomS');
  AddADTChield(Def, 'CPF', ftString, 11);
  AddADTChield(Def, 'CNPJ', ftString, 14);
  AddADTChield(Def, 'xNome', ftString, 100);

  AddADTChield(Def, 'ender', ftADT);
  Def2 := Def.ChildDefs.Find('ender');
  AddADTChield(Def2, 'xLgr', ftString, 100);
  AddADTChield(Def2, 'nro', ftString, 15);
  AddADTChield(Def2, 'xCpl', ftString, 100);
  AddADTChield(Def2, 'xBairro', ftString, 100);
  AddADTChield(Def2, 'cMun', ftString, 7);
  AddADTChield(Def2, 'xMun', ftString, 60);
  AddADTChield(Def2, 'UF', ftString, 2);
  AddADTChield(Def2, 'CEP', ftString, 8);
  AddADTChield(Def2, 'cPais', ftString, 5);
  AddADTChield(Def2, 'xPais', ftString, 100);
  //AddADTChield(Def2, 'fone', ftString, 13);
  //AddADTChield(Def2, 'ddi', ftString, 2);
  //AddADTChield(Def2, 'ddi2', ftString, 2);

  AddADTChield(Def, 'xEmail', ftString, 120);
  AddADTChield(Def, 'IE', ftString, 15);
  AddADTChield(Def, 'IM', ftString, 15);
  //AddADTChield(Def, 'IMSTS', ftString, 15);
  //AddADTChield(Def, 'Praca', ftString, 100);
  AddADTChield(Def, 'IME', ftString, 15);
  AddADTChield(Def, 'fone', ftString, 13);
  AddADTChield(Def, 'fone2', ftString, 13);

  AClientDataSet.FieldDefs.Add('det', ftDataSet);
  Def := AClientDataSet.FieldDefs.Find('det');
  AddADTChield(Def, 'nItem', ftInteger);
  AddADTChield(Def, 'serv', ftADT);

  Def2 := Def.ChildDefs.Find('serv');
  AddADTChield(Def2, 'cServ', ftString, 60);
  AddADTChield(Def2, 'xServ', ftString, 120);  
  AddADTChield(Def2, 'localTributacao', ftString, 7);
  AddADTChield(Def2, 'localVerifResServ', ftString, 1);
  AddADTChield(Def2, 'uTrib', ftString, 6);
  AddADTChield(Def2, 'qTrib', ftFloat);
  AddADTChield(Def2, 'vUnit', ftFloat);
  AddADTChield(Def2, 'vServ', ftFloat);
  AddADTChield(Def2, 'vDesc', ftFloat);
  AddADTChield(Def2, 'vBCISS', ftFloat);
  AddADTChield(Def2, 'pISS', ftFloat);
  AddADTChield(Def2, 'vISS', ftFloat);
  AddADTChield(Def2, 'pRetINSS', ftFloat);
  AddADTChield(Def2, 'vRetINSS', ftFloat);
  AddADTChield(Def2, 'vRed', ftFloat);
  AddADTChield(Def2, 'vBCRetIR', ftFloat);
  AddADTChield(Def2, 'pRetIR', ftFloat);
  AddADTChield(Def2, 'vRetIR', ftFloat);
  AddADTChield(Def2, 'vBCCOFINS', ftFloat);
  AddADTChield(Def2, 'pRetCOFINS', ftFloat);
  AddADTChield(Def2, 'vRetCOFINS', ftFloat);
  AddADTChield(Def2, 'vBCCSLL', ftFloat);
  AddADTChield(Def2, 'pRetCSLL', ftFloat);
  AddADTChield(Def2, 'vRetCSLL', ftFloat);
  AddADTChield(Def2, 'vBCPISPASEP', ftFloat);
  AddADTChield(Def2, 'pRetPISPASEP', ftFloat);
  AddADTChield(Def2, 'vRetPISPASEP', ftFloat);
  AddADTChield(Def2, 'totalAproxTribServ', ftFloat); 
  AddADTChield(Def2, 'xPed', ftString, 50);
  AddADTChield(Def2, 'nItemPed', ftString, 50);

  AddADTChield(Def, 'ISSST', ftADT);
  Def2 := Def.ChildDefs.Find('ISSST');
  //AddADTChield(Def2, 'pRedBCST', ftFloat);
  AddADTChield(Def2, 'vRedBCST', ftFloat);
  AddADTChield(Def2, 'vBCST', ftFloat);
  AddADTChield(Def2, 'pISSST', ftFloat);
  AddADTChield(Def2, 'vISSST', ftFloat);

  AClientDataSet.FieldDefs.Add('total', ftADT);
  Def := AClientDataSet.FieldDefs.Find('total');
  AddADTChield(Def, 'vServ', ftFloat);
  AddADTChield(Def, 'vReemb', ftFloat);  
  AddADTChield(Def, 'vRedBCCivil', ftFloat);
  AddADTChield(Def, 'vDesc', ftFloat);
  //AddADTChield(Def, 'vOutro', ftFloat);
  AddADTChield(Def, 'vtNF', ftFloat);
  AddADTChield(Def, 'vtLiq', ftFloat);
  AddADTChield(Def, 'totalAproxTrib', ftFloat);

  AddADTChield(Def, 'Ret', ftADT);
  Def2 := Def.ChildDefs.Find('Ret');
  //AddADTChield(Def2, 'xRetIRF', ftString, 60);
  //AddADTChield(Def2, 'pRetIRF', ftFloat);
  //AddADTChield(Def2, 'vRetIRF', ftFloat);
  //AddADTChield(Def2, 'xRetLei10833-PIS-PASEP', ftString, 60);
  //AddADTChield(Def2, 'pRetLei10833-PIS-PASEP', ftFloat);
  //AddADTChield(Def2, 'vRetLei10833-PIS-PASEP', ftFloat);
  //AddADTChield(Def2, 'xRetLei10833-COFINS', ftString, 60);
  //AddADTChield(Def2, 'pRetLei10833-COFINS', ftFloat);
  //AddADTChield(Def2, 'vRetLei10833-COFINS', ftFloat);
  //AddADTChield(Def2, 'xRetLei10833-CSLL', ftString, 60);
  //AddADTChield(Def2, 'pRetLei10833-CSLL', ftFloat);
  //AddADTChield(Def2, 'vRetLei10833-CSLL', ftFloat);
  //AddADTChield(Def2, 'xRetINSS', ftString, 60);
  AddADTChield(Def2, 'vRetIR', ftFloat);
  AddADTChield(Def2, 'vRetPISPASEP', ftFloat);
  AddADTChield(Def2, 'vRetCOFINS', ftFloat);
  AddADTChield(Def2, 'vRetCSLL', ftFloat);
  AddADTChield(Def2, 'vRetINSS', ftFloat);

  //AddADTChield(Def, 'fat', ftADT);
  //Def2 := Def.ChildDefs.Find('fat');
  //AddADTChield(Def2, 'nFat', ftString, 60);
  //AddADTChield(Def2, 'vOrig', ftFloat);
  //AddADTChield(Def2, 'vDesc', ftFloat);
  //AddADTChield(Def2, 'vLiq', ftFloat);

  //AddADTChield(Def, 'vtLiqFaturas-CSLL', ftFloat);
  //AddADTChield(Def, 'vtDespesas-CSLL', ftFloat);
  AddADTChield(Def, 'vtLiqFaturas', ftFloat);
  AddADTChield(Def, 'vtDespesas', ftFloat);

  AddADTChield(Def, 'ISS', ftADT);
  Def2 := Def.ChildDefs.Find('ISS');
  AddADTChield(Def2, 'vBCISS', ftFloat);
  AddADTChield(Def2, 'vISS', ftFloat);
  AddADTChield(Def2, 'vBCSTISS', ftFloat);
  AddADTChield(Def2, 'vSTISS', ftFloat);


  AClientDataSet.FieldDefs.Add('faturas', ftDataSet);
  Def := AClientDataSet.FieldDefs.Find('faturas');
  AddADTChield(Def, 'fat', ftADT);
  Def2 := Def.ChildDefs.Find('fat');
  AddADTChield(Def2, 'nItem', ftInteger);
  AddADTChield(Def2, 'nFat', ftString, 60);
  AddADTChield(Def2, 'dVenc', ftDate);
  AddADTChield(Def2, 'vFat', ftFloat);
  AddADTChield(Def2, 'tipoVencFat', ftString, 1);
  AddADTChield(Def2, 'descTipoVencFat', ftString, 15);
  
  AClientDataSet.FieldDefs.Add('infAdicLT', ftString, 7);
  AClientDataSet.FieldDefs.Add('infAdicES', ftString, 1);
  
  AClientDataSet.FieldDefs.Add('infAdic', ftDataSet);
  Def := AClientDataSet.FieldDefs.Find('infAdic');
  AddADTChield(Def, 'item', ftString, 256);
  
  AClientDataSet.FieldDefs.Add('infAdicAT', ftString, 1);
  
  //AddADTChield(Def2, 'vOrig', ftFloat);
  //AddADTChield(Def2, 'vDesc', ftFloat);
  //AddADTChield(Def2, 'vLiq', ftFloat);

  //AClientDataSet.FieldDefs.Add('cobr', ftDataSet);
  //Def := AClientDataSet.FieldDefs.Find('cobr');
  //AddADTChield(Def, 'dup', ftADT);
  //Def2 := Def.ChildDefs.Find('dup');
  //AddADTChield(Def2, 'nDup', ftString, 9);
  //AddADTChield(Def2, 'dVenc', ftDate);
  //AddADTChield(Def2, 'vDup', ftFloat);
  //AddADTChield(Def2, 'urlBol', ftString, 256);
  //AddADTChield(Def2, 'bBol', ftString, 1);

  //AClientDataSet.FieldDefs.Add('Observacoes', ftDataSet);
  //Def := AClientDataSet.FieldDefs.Find('Observacoes');
  //AddADTChield(Def, 'xinf', ftString, 100);
end;

procedure TXMLClientDataset_NFSE_CampoBom.ConverterParaXML(AClientDataSet: TClientDataSet; ATodosRegistros: Boolean);
var
  Node: IXMLNode;
  NodeLote: IXMLNode;
begin
  if (AClientDataSet.RecordCount = 0) then
    raise Exception.Create('Não foi informado nenhuma nota.');
//  else if (AClientDataSet.RecordCount > 1) then
//    raise Exception.Create('Deve ser informado apenas uma nota.');

  if ATodosRegistros then
  begin
    NodeLote := XMLDoc.AddChild('lote');
    AClientDataSet.First;
    while not AClientDataSet.Eof do
    begin
      Node := NodeLote.AddChild('NFS-e');
      Node := Node.AddChild('infNFSe');
      //Node.Attributes['versao'] := '1.00';
      Node.Attributes['versao'] := '1.1';

      Processar_NodesXML(AClientDataSet.Fields, Node, '');
      AClientDataSet.Next;
    end;
  end
  else
  begin
    Node := XMLDoc.AddChild('NFS-e');
    Node := Node.AddChild('infNFSe');
    //Node.Attributes['versao'] := '1.00';
    Node.Attributes['versao'] := '1.1';

    Processar_NodesXML(AClientDataSet.Fields, Node, '');
  end;
end;

procedure TXMLClientDataset_NFSE_CampoBom.ConverterXML(AClientDataSet: TClientDataSet);
var
  xNode, xNFSe: IXMLNode;
  I: Integer;
begin
  // Primeiro node
  xNode := XMLDoc.ChildNodes[1];

  if (xNode <> nil) then
  begin
    if (xNode.NodeName = 'lote') then
    begin
      // Percorre a lista
      for I := 0 to xNode.ChildNodes.Count - 1 do
      begin
        xNFSe := xNode.ChildNodes[I];
        AClientDataSet.Append;
        Processar_Nodes(AClientDataSet.Fields, xNFSe.ChildNodes[0], '');
        AClientDataSet.Post;
      end;
    end
    else
    begin
      AClientDataSet.Append;
      Processar_Nodes(AClientDataSet.Fields, xNode.ChildNodes[0], '');
      AClientDataSet.Post;
    end;
  end;
end;

end.
