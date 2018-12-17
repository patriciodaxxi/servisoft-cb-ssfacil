unit uXMLClientDataSet_NFSe_PortoAlegre;

interface

uses
  Windows, Classes, SysUtils, uXMLClientDataSet, DBClient, DB, XMLIntf;

type
  TXCDS_NFSe_PortoAlegre = class(TXMLClientDataset)
  private
    procedure AdicionarTcCpfCnpj(AFieldDefs: TFieldDefs);
    procedure AdicionarTcEndereco(AFieldDefs: TFieldDefs);
    procedure AdicionarTcContato(AFieldDefs: TFieldDefs);
    procedure AdicionartcIdentificacaoOrgaoGerador(AFieldDefs: TFieldDefs);
    procedure AdicionartcIdentificacaoRps(AFieldDefs: TFieldDefs);
    procedure AdicionartcIdentificacaoPrestador(AFieldDefs: TFieldDefs);
    procedure AdicionartcIdentificacaoTomador(AFieldDefs: TFieldDefs);
    procedure AdicionartcDadosTomador(AFieldDefs: TFieldDefs);
    procedure AdicionarTcIdentificacaoIntermediarioServico(AFieldDefs: TFieldDefs);
    procedure AdicionarTcValores(AFieldDefs: TFieldDefs);
    procedure AdicionarTcDadosServico(AFieldDefs: TFieldDefs);
    procedure AdicionartcDadosConstrucaoCivil(AFieldDefs: TFieldDefs);
    procedure AdicionartcDadosPrestador(AFieldDefs: TFieldDefs);
  end;

  TXCDS_NFSe_POA_Envio = class(TXCDS_NFSe_PortoAlegre)
  private
    procedure AdicionarListaRps(AFieldDefs: TFieldDefs);
    procedure AdicionartcRps(AFieldDefs: TFieldDefs);
    procedure AdicionartcInfRps(AFieldDefs: TFieldDefs);
  protected
    procedure ConverterXML(AClientDataSet: TClientDataSet); override;
    procedure ConverterParaXML(AClientDataSet: TClientDataSet; ATodosRegistros: Boolean); override;
    procedure CarregarCampos(AClientDataSet: TClientDataSet); override;
    procedure Processar_NodeAttributes(AClientDataSet: TClientDataSet; ANode: IXMLNode); override;
  end;

  TXCDS_NFSe_POA_Retorno = class(TXCDS_NFSe_PortoAlegre)
  protected
    procedure ConverterXML(AClientDataSet: TClientDataSet); override;
    procedure ConverterParaXML(AClientDataSet: TClientDataSet; ATodosRegistros: Boolean); override;
    procedure CarregarCampos(AClientDataSet: TClientDataSet); override;
  end;

implementation

uses StrUtils;

{ TXCDS_NFSe_PortoAlegre }

procedure TXCDS_NFSe_PortoAlegre.AdicionarTcContato(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Telefone', ftString, 11);
  AFieldDefs.Add('Email', ftString, 80);
end;

procedure TXCDS_NFSe_PortoAlegre.AdicionarTcCpfCnpj(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Cpf', ftString, 11);
  AFieldDefs.Add('Cnpj', ftString, 14);
end;

procedure TXCDS_NFSe_PortoAlegre.AdicionartcDadosTomador(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('IdentificacaoTomador', ftADT);
  AdicionartcIdentificacaoTomador(AFieldDefs.Find('IdentificacaoTomador').ChildDefs);

  AFieldDefs.Add('RazaoSocial', ftString, 115);

  AFieldDefs.Add('Endereco', ftADT);
  AdicionarTcEndereco(AFieldDefs.Find('Endereco').ChildDefs);

  AFieldDefs.Add('Contato', ftADT);
  AdicionarTcContato(AFieldDefs.Find('Contato').ChildDefs);
end;

procedure TXCDS_NFSe_PortoAlegre.AdicionarTcEndereco(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Endereco', ftString, 125);
  AFieldDefs.Add('Numero', ftString, 30);
  AFieldDefs.Add('Complemento', ftString, 60);
  AFieldDefs.Add('Bairro', ftString, 60);
  AFieldDefs.Add('CodigoMunicipio', ftInteger);
  AFieldDefs.Add('Uf', ftString, 2);
  AFieldDefs.Add('Cep', ftInteger);
end;

procedure TXCDS_NFSe_PortoAlegre.AdicionartcIdentificacaoOrgaoGerador(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('CodigoMunicipio', ftInteger);
  AFieldDefs.Add('Uf', ftString, 2);
end;


procedure TXCDS_NFSe_PortoAlegre.AdicionartcIdentificacaoRps(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Numero', ftString, 15);
  AFieldDefs.Add('Serie', ftString, 5);
  AFieldDefs.Add('Tipo', ftInteger);
end;

procedure TXCDS_NFSe_PortoAlegre.AdicionartcIdentificacaoPrestador(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Cnpj', ftString, 14);
  AFieldDefs.Add('InscricaoMunicipal', ftString, 15);
end;

procedure TXCDS_NFSe_PortoAlegre.AdicionartcIdentificacaoTomador(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('CpfCnpj', ftADT);
  AdicionarTcCpfCnpj(AFieldDefs.Find('CpfCnpj').ChildDefs);
  AFieldDefs.Add('InscricaoMunicipal', ftString, 15);
end;

procedure TXCDS_NFSe_PortoAlegre.AdicionarTcIdentificacaoIntermediarioServico(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('RazaoSocial', ftString, 115);

  AFieldDefs.Add('CpfCnpj', ftADT);
  AdicionarTcCpfCnpj(AFieldDefs.Find('CpfCnpj').ChildDefs);

  AFieldDefs.Add('InscricaoMunicipal', ftString, 15);
end;

procedure TXCDS_NFSe_PortoAlegre.AdicionarTcValores(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('ValorServicos', ftFloat);
  AFieldDefs.Add('ValorDeducoes', ftFloat);
  AFieldDefs.Add('ValorPis', ftFloat);
  AFieldDefs.Add('ValorCofins', ftFloat);
  AFieldDefs.Add('ValorInss', ftFloat);
  AFieldDefs.Add('ValorIr', ftFloat);
  AFieldDefs.Add('ValorCsll', ftFloat);
  AFieldDefs.Add('IssRetido', ftInteger);
  AFieldDefs.Add('ValorIss', ftFloat);
  AFieldDefs.Add('ValorIssRetido', ftFloat);
  AFieldDefs.Add('OutrasRetencoes', ftFloat);
  AFieldDefs.Add('BaseCalculo', ftFloat);
  AFieldDefs.Add('Aliquota', ftFloat);
  AFieldDefs.Add('ValorLiquidoNfse', ftFloat);
  AFieldDefs.Add('DescontoIncondicionado', ftFloat);
  AFieldDefs.Add('DescontoCondicionado', ftFloat);
end;

procedure TXCDS_NFSe_PortoAlegre.AdicionarTcDadosServico(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Valores', ftADT);
  AdicionarTcValores(AFieldDefs.Find('Valores').ChildDefs);

  AFieldDefs.Add('ItemListaServico', ftString, 5);
  AFieldDefs.Add('CodigoCnae', ftInteger);
  AFieldDefs.Add('CodigoTributacaoMunicipio', ftString, 20);
  AFieldDefs.Add('Discriminacao', ftString, 2000);
  AFieldDefs.Add('CodigoMunicipio', ftInteger);
end;

procedure TXCDS_NFSe_PortoAlegre.AdicionartcDadosConstrucaoCivil(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('CodigoObra', ftString, 15);
  AFieldDefs.Add('Art', ftString, 15);
end;

procedure TXCDS_NFSe_PortoAlegre.AdicionartcDadosPrestador(
  AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('IdentificacaoPrestador', ftADT);
  AdicionartcIdentificacaoPrestador(AFieldDefs.Find('IdentificacaoPrestador').ChildDefs);

  AFieldDefs.Add('RazaoSocial', ftString, 115);
  AFieldDefs.Add('NomeFantasia', ftString, 60);

  AFieldDefs.Add('Endereco', ftADT);
  AdicionarTcEndereco(AFieldDefs.Find('Endereco').ChildDefs);

  AFieldDefs.Add('Contato', ftADT);
  AdicionarTcContato(AFieldDefs.Find('Contato').ChildDefs);
end;

{ TXCDS_NFSe_POA_Retorno }

procedure TXCDS_NFSe_POA_Retorno.CarregarCampos(
  AClientDataSet: TClientDataSet);
begin
  inherited;
  AClientDataSet.FieldDefs.Add('Numero', ftString, 15);
  AClientDataSet.FieldDefs.Add('CodigoVerificacao', ftString, 9);
  AClientDataSet.FieldDefs.Add('DataEmissao', ftDateTime);

  AClientDataSet.FieldDefs.Add('IdentificacaoRps', ftADT);
  AdicionartcIdentificacaoRps(AClientDataSet.FieldDefs.Find('IdentificacaoRps').ChildDefs);

  AClientDataSet.FieldDefs.Add('DataEmissaoRps', ftDate);
  AClientDataSet.FieldDefs.Add('NaturezaOperacao', ftInteger);
  AClientDataSet.FieldDefs.Add('RegimeEspecialTributacao', ftInteger);
  AClientDataSet.FieldDefs.Add('OptanteSimplesNacional', ftInteger);
  AClientDataSet.FieldDefs.Add('IncentivadorCultural', ftInteger);
  AClientDataSet.FieldDefs.Add('Competencia', ftDate);
  AClientDataSet.FieldDefs.Add('NfseSubstituida', ftInteger);
  AClientDataSet.FieldDefs.Add('OutrasInformacoes', ftString, 255);

  AClientDataSet.FieldDefs.Add('Servico', ftADT);
  AdicionarTcDadosServico(AClientDataSet.FieldDefs.Find('Servico').ChildDefs);

  AClientDataSet.FieldDefs.Add('ValorCredito', ftFloat);

  AClientDataSet.FieldDefs.Add('PrestadorServico', ftADT);
  AdicionartcDadosPrestador(AClientDataSet.FieldDefs.Find('PrestadorServico').ChildDefs);

  AClientDataSet.FieldDefs.Add('TomadorServico', ftADT);
  AdicionartcDadosTomador(AClientDataSet.FieldDefs.Find('TomadorServico').ChildDefs);

  AClientDataSet.FieldDefs.Add('IntermediarioServico', ftADT);
  AdicionarTcIdentificacaoIntermediarioServico(AClientDataSet.FieldDefs.Find('IntermediarioServico').ChildDefs);

  AClientDataSet.FieldDefs.Add('OrgaoGerador', ftADT);
  AdicionartcIdentificacaoOrgaoGerador(AClientDataSet.FieldDefs.Find('OrgaoGerador').ChildDefs);

  AClientDataSet.FieldDefs.Add('ConstrucaoCivil', ftADT);
  AdicionartcDadosConstrucaoCivil(AClientDataSet.FieldDefs.Find('ConstrucaoCivil').ChildDefs);
end;

procedure TXCDS_NFSe_POA_Retorno.ConverterXML(
  AClientDataSet: TClientDataSet);
var
  xNode: IXMLNode;
begin
  // Primeiro node
  xNode := XMLDoc.ChildNodes[1];

  if (xNode <> nil) then
  begin
    // Verifica o CompNfse
    if (xNode.NodeName = 'CompNfse') then
    begin
      AClientDataSet.Append;
      Processar_Nodes(AClientDataSet.Fields, xNode.ChildNodes[0].ChildNodes[0], '');
      AClientDataSet.Post;
    end
    else if (xNode.NodeName = 'NFS-e') then
    begin
      AClientDataSet.Append;
      Processar_Nodes(AClientDataSet.Fields, xNode.ChildNodes[0], '');
      AClientDataSet.Post;
    end
    else if AnsiMatchText(xNode.NodeName, ['GerarNfseResposta', 'ConsultarLoteRpsResposta', 'ConsultarNfseResposta']) then
    begin
      AClientDataSet.Append;
      Processar_Nodes(AClientDataSet.Fields, xNode.ChildNodes.FindNode('ListaNfse').ChildNodes[0].ChildNodes[0].ChildNodes[0], '');
      AClientDataSet.Post;
    end
    else if (xNode.NodeName = 'ConsultarNfseRpsResposta') then
    begin
      AClientDataSet.Append;
      Processar_Nodes(AClientDataSet.Fields, xNode.ChildNodes.FindNode('CompNfse').ChildNodes[0].ChildNodes[0], '');
      AClientDataSet.Post;
    end;
  end;
end;

procedure TXCDS_NFSe_POA_Retorno.ConverterParaXML(
  AClientDataSet: TClientDataSet; ATodosRegistros: Boolean);
var
  Node: IXMLNode;
begin
  if (AClientDataSet.RecordCount = 0) then
    raise Exception.Create('Não foi informado nenhuma nota.')
  else if (AClientDataSet.RecordCount > 1) then
    raise Exception.Create('Deve ser informado apenas uma nota.');

  Node := XMLDoc.AddChild('NFS-e');
  
  Node := Node.AddChild('infNFSe');
  Node.Attributes['versao'] := '1.00';

  Processar_NodesXML(AClientDataSet.Fields, Node, '');
end;

{ TXCDS_NFSe_POA_Envio }

procedure TXCDS_NFSe_POA_Envio.AdicionarListaRps(AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('Rps', ftADT);
  AdicionartcRps(AFieldDefs.Find('Rps').ChildDefs);
end;

procedure TXCDS_NFSe_POA_Envio.AdicionartcInfRps(AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('IdentificacaoRps', ftADT);
  AdicionartcIdentificacaoRps(AFieldDefs.Find('IdentificacaoRps').ChildDefs);

  AFieldDefs.Add('DataEmissao', ftDateTime);
  AFieldDefs.Add('NaturezaOperacao', ftInteger);
  AFieldDefs.Add('RegimeEspecialTributacao', ftInteger);
  AFieldDefs.Add('OptanteSimplesNacional', ftInteger);
  AFieldDefs.Add('IncentivadorCultural', ftInteger);
  AFieldDefs.Add('Status', ftInteger);
  AFieldDefs.Add('RpsSubstituida', ftInteger);

  AFieldDefs.Add('Servico', ftADT);
  AdicionarTcDadosServico(AFieldDefs.Find('Servico').ChildDefs);

  AFieldDefs.Add('Prestador', ftADT);
  AdicionartcIdentificacaoPrestador(AFieldDefs.Find('Prestador').ChildDefs);

  AFieldDefs.Add('Tomador', ftADT);
  AdicionartcDadosTomador(AFieldDefs.Find('Tomador').ChildDefs);

  AFieldDefs.Add('IntermediarioServico', ftADT);
  AdicionarTcIdentificacaoIntermediarioServico(AFieldDefs.Find('IntermediarioServico').ChildDefs);

  AFieldDefs.Add('ConstrucaoCivil', ftADT);
  AdicionartcDadosConstrucaoCivil(AFieldDefs.Find('ConstrucaoCivil').ChildDefs);
end;

procedure TXCDS_NFSe_POA_Envio.AdicionartcRps(AFieldDefs: TFieldDefs);
begin
  AFieldDefs.Add('InfRps', ftADT);
  AdicionartcInfRps(AFieldDefs.Find('InfRps').ChildDefs);
end;

procedure TXCDS_NFSe_POA_Envio.CarregarCampos(AClientDataSet: TClientDataSet);
begin
  inherited;
  AClientDataSet.FieldDefs.Add('NumeroLote', ftString, 15);
  AClientDataSet.FieldDefs.Add('Cnpj', ftString, 14);
  AClientDataSet.FieldDefs.Add('InscricaoMunicipal', ftString, 15);
  AClientDataSet.FieldDefs.Add('QuantidadeRps', ftInteger);

  AClientDataSet.FieldDefs.Add('ListaRps', ftADT);
  AdicionarListaRps(AClientDataSet.FieldDefs.Find('ListaRps').ChildDefs);
end;

procedure TXCDS_NFSe_POA_Envio.ConverterParaXML(
  AClientDataSet: TClientDataSet; ATodosRegistros: Boolean);
var
  Node: IXMLNode;
begin
  if (AClientDataSet.RecordCount = 0) then
    raise Exception.Create('Não foi informado nenhuma nota.')
  else if (AClientDataSet.RecordCount > 1) then
    raise Exception.Create('Deve ser informado apenas uma nota.');

  Node := XMLDoc.AddChild('GerarNfseEnvio');
  Node.Attributes['xmlns'] := 'http://www.abrasf.org.br/nfse.xsd';
  
  Node := Node.AddChild('LoteRps');
  Node.Attributes['Id'] := 'Lote' + AClientDataSet.FieldByName('NumeroLote').AsString;
  Node.Attributes['xmlns'] := 'http://www.abrasf.org.br/nfse.xsd';
  Node.Attributes['versao'] := '1.00';

  Processar_NodesXML(AClientDataSet.Fields, Node, '');
end;

procedure TXCDS_NFSe_POA_Envio.ConverterXML(
  AClientDataSet: TClientDataSet);
var
  xNode: IXMLNode;
begin
  // Primeiro node
  xNode := XMLDoc.ChildNodes[1];

  if (xNode <> nil) then
  begin
    // Verifica o CompNfse
    if (xNode.NodeName = 'GerarNfseEnvio') then
    begin
      AClientDataSet.Append;
      Processar_Nodes(AClientDataSet.Fields, xNode.ChildNodes[0], '');
      AClientDataSet.Post;
    end;
  end;
end;

procedure TXCDS_NFSe_POA_Envio.Processar_NodeAttributes(AClientDataSet: TClientDataSet;
  ANode: IXMLNode);
begin
  inherited;
  if SameText(ANode.NodeName, 'InfRps') then
  begin
    //ANode.Attributes['Id'] := AClientDataSet.FieldByName('NumeroLote').AsString;
    ANode.Attributes['Id'] := 'RPS' + AClientDataSet.FieldByName('NumeroLote').AsString;
    ANode.Attributes['xmlns'] := 'http://www.abrasf.org.br/nfse.xsd';
  end
  else if SameText(ANode.NodeName, 'Rps') then
    ANode.Attributes['xmlns'] := 'http://www.abrasf.org.br/nfse.xsd';;
end;

end.
