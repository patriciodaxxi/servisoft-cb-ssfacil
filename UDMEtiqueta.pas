unit UDMEtiqueta;

interface

uses
  SysUtils, Classes, DB, DBClient, FMTBcd, SqlExpr, Provider, Dialogs,
  frxClass, frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDMEtiqueta = class(TDataModule)
    mEtiqueta_Nav: TClientDataSet;
    mEtiqueta_NavNome_Empresa: TStringField;
    mEtiqueta_NavFone: TStringField;
    mEtiqueta_NavNome_Etiqueta: TStringField;
    mEtiqueta_NavTamanho: TStringField;
    mEtiqueta_NavReferencia: TStringField;
    mEtiqueta_NavNome_Produto: TStringField;
    mEtiqueta_NavNome_Cliente: TStringField;
    mEtiqueta_NavQtd: TIntegerField;
    mEtiqueta_NavPedido_Cliente: TStringField;
    mEtiqueta_NavFantasia_Cli: TStringField;
    mEtiqueta_NavDtEmissao: TDateField;
    mEtiqueta_NavProd_Cliente: TStringField;
    mEtiqueta_NavNumOS: TStringField;
    mEtiqueta_NavEncerado: TStringField;
    mEtiqueta_NavItem_Ped: TIntegerField;
    mEtiqueta_NavUnidade: TStringField;
    dsmEtiqueta_Nav: TDataSource;
    qPessoa: TSQLQuery;
    qPessoaCODIGO: TIntegerField;
    qPessoaNOME: TStringField;
    qPessoaFANTASIA: TStringField;
    qPessoaENDERECO: TStringField;
    qPessoaCOMPLEMENTO_END: TStringField;
    qPessoaNUM_END: TStringField;
    qPessoaBAIRRO: TStringField;
    qPessoaID_CIDADE: TIntegerField;
    qPessoaCIDADE: TStringField;
    qPessoaUF: TStringField;
    qPessoaCEP: TStringField;
    qPessoaDDDFONE1: TIntegerField;
    qPessoaTELEFONE1: TStringField;
    qPessoaDDDFONE2: TIntegerField;
    qPessoaTELEFONE2: TStringField;
    qPessoaDDDFAX: TIntegerField;
    qPessoaFAX: TStringField;
    qPessoaPESSOA: TStringField;
    qPessoaCNPJ_CPF: TStringField;
    qPessoaINSCR_EST: TStringField;
    qPessoaENDERECO_ENT: TStringField;
    qPessoaCOMPLEMENTO_END_ENT: TStringField;
    qPessoaNUM_END_ENT: TStringField;
    qPessoaBAIRRO_ENT: TStringField;
    qPessoaID_CIDADE_ENT: TIntegerField;
    qPessoaCIDADE_ENT: TStringField;
    qPessoaCEP_ENT: TStringField;
    qPessoaUF_ENT: TStringField;
    qPessoaPESSOA_ENT: TStringField;
    qPessoaCNPJ_CPF_ENT: TStringField;
    qPessoaINSC_EST_ENT: TStringField;
    qPessoaENDERECO_PGTO: TStringField;
    qPessoaCOMPLEMENTO_END_PGTO: TStringField;
    qPessoaNUM_END_PGTO: TStringField;
    qPessoaBAIRRO_PGTO: TStringField;
    qPessoaID_CIDADE_PGTO: TIntegerField;
    qPessoaCIDADE_PGTO: TStringField;
    qPessoaCEP_PGTO: TStringField;
    qPessoaUF_PGTO: TStringField;
    qPessoaUSUARIO: TStringField;
    qPessoaDTCADASTRO: TDateField;
    qPessoaHRCADASTRO: TTimeField;
    qPessoaOBS: TMemoField;
    qPessoaCAIXAPOSTAL: TStringField;
    qPessoaRG: TStringField;
    qPessoaID_VENDEDOR: TIntegerField;
    qPessoaID_CONDPGTO: TIntegerField;
    qPessoaID_CONTABOLETO: TIntegerField;
    qPessoaID_TRANSPORTADORA: TIntegerField;
    qPessoaID_TIPOCOBRANCA: TIntegerField;
    qPessoaID_REDESPACHO: TIntegerField;
    qPessoaID_PAIS: TIntegerField;
    qPessoaID_REGIME_TRIB: TIntegerField;
    qPessoaPERC_COMISSAO: TFloatField;
    qPessoaDDD_ENT: TIntegerField;
    qPessoaFONE_ENT: TStringField;
    qPessoaDDD_PGTO: TIntegerField;
    qPessoaFONE_PGTO: TStringField;
    qPessoaINATIVO: TStringField;
    qPessoaHOMEPAGE: TStringField;
    qPessoaTIPO_FRETE: TStringField;
    qPessoaNOME_ENTREGA: TStringField;
    qPessoaEMAIL_NFE: TStringField;
    qPessoaEMAIL_PGTO: TStringField;
    qPessoaEMAIL_NFE2: TStringField;
    qPessoaPESSOA_PGTO: TStringField;
    qPessoaCNPJ_CPG_PGTO: TStringField;
    qPessoaINSC_EST_PGTO: TStringField;
    qPessoaUF_PLACA: TStringField;
    qPessoaPLACA: TStringField;
    qPessoaTP_CLIENTE: TStringField;
    qPessoaTP_FORNECEDOR: TStringField;
    qPessoaTP_TRANSPORTADORA: TStringField;
    qPessoaTP_VENDEDOR: TStringField;
    qPessoaTIPO_ICMS: TStringField;
    qPessoaID_TAB_PRECO: TIntegerField;
    qPessoaTP_ATELIER: TStringField;
    qPessoaTIPO_COMISSAO: TStringField;
    qPessoaPERC_COMISSAO_VEND: TFloatField;
    qPessoaNOME_CONTATO: TStringField;
    qPessoaINSC_MUNICIPAL: TStringField;
    qPessoaDT_CONTRATO_INI: TDateField;
    qPessoaDT_CONTRATO_FIN: TDateField;
    qPessoaID_SERVICO: TIntegerField;
    qPessoaID_SERVICO_INT: TIntegerField;
    qPessoaVLR_SERVICO: TFloatField;
    qPessoaCLIENTE_CONTA_ID: TIntegerField;
    qPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    qPessoaVENDEDOR_CONTA_ID: TIntegerField;
    qPessoaTRANSPORTADORA_CONTA_ID: TIntegerField;
    qPessoaATELIER_CONTA_ID: TIntegerField;
    qPessoaRETEM_ISS: TStringField;
    qPessoaRETEM_CSLL: TStringField;
    qPessoaRETEM_PISCOFINS: TStringField;
    qPessoaRETEM_INSS: TStringField;
    qPessoaEMAIL_COMPRAS: TStringField;
    qPessoaCONTATO_COMPRAS: TStringField;
    qPessoaORGAO_PUBLICO: TStringField;
    qPessoaID_NATUREZA: TIntegerField;
    qPessoaDIMINUIR_RETENCAO: TStringField;
    qPessoaPERC_REDUCAO_INSS: TFloatField;
    qPessoaUSA_TRANSFICMS: TStringField;
    qPessoaCLIENTE_ESTOQUE: TStringField;
    qPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField;
    qPessoaCOD_ANT: TIntegerField;
    qPessoaID_EDI: TIntegerField;
    qPessoaPAI_NOME: TStringField;
    qPessoaMAE_NOME: TStringField;
    qPessoaTP_ALUNO: TStringField;
    qPessoaCOBRAR_TAXA_BANCO: TStringField;
    qPessoaVLR_LIMITE_CREDITO: TFloatField;
    qPessoaINSC_EST_ST: TStringField;
    qPessoaUF_ST: TStringField;
    qPessoaTIPO_CONSUMIDOR: TSmallintField;
    qPessoaTIPO_CONTRIBUINTE: TSmallintField;
    qPessoaINSC_SUFRAMA: TStringField;
    qPessoaCOD_ALFA: TStringField;
    qPessoaTP_PREPOSTO: TStringField;
    qPessoaTP_EXPORTACAO: TStringField;
    qPessoaCARIMBO: TStringField;
    qPessoaDTPEDIDO: TDateField;
    qPessoaDTNOTA: TDateField;
    qPessoaPERC_DESC_SUFRAMA: TFloatField;
    qPessoaVLR_LIMITE_COMPRA: TFloatField;
    qPessoaID_GRUPO: TIntegerField;
    qPessoaTP_FUNCIONARIO: TStringField;
    qPessoaIMP_COD_PRODUTO_CLI: TStringField;
    qPessoaFILIAL: TIntegerField;
    qPessoaVLR_ULT_FATURAMENTO: TFloatField;
    qPessoaQTD_ULT_FATURAMENTO: TFloatField;
    qPessoaCOD_CONTABIL_CLIENTE: TIntegerField;
    qPessoaCOD_CONTABIL_FORNECEDOR: TIntegerField;
    qPessoaID_REGIAO_VENDA: TIntegerField;
    qPessoaTIPO_CREDITO: TStringField;
    qPessoaUSUARIO_LOG: TStringField;
    qPessoaPROTESTAR: TStringField;
    qPessoaID_CARTEIRA: TIntegerField;
    qPessoaCELULAR: TStringField;
    qPessoaDDDCELULAR: TIntegerField;
    qPessoaCONT_CUSTO_LIQ: TStringField;
    qPessoaUSA_OC_XML: TStringField;
    qPessoaIMP_COR_CLIENTE: TStringField;
    qPessoaOBS_AVISO: TStringField;
    qPessoaMOSTRAR_AVISO: TStringField;
    qPessoaID_ROTA: TIntegerField;
    sdsNotaFiscal_Itens: TSQLDataSet;
    dspNotaFiscal_Itens: TDataSetProvider;
    cdsNotaFiscal_Itens: TClientDataSet;
    cdsNotaFiscal_ItensID: TIntegerField;
    cdsNotaFiscal_ItensITEM: TIntegerField;
    cdsNotaFiscal_ItensID_PRODUTO: TIntegerField;
    cdsNotaFiscal_ItensID_COR: TIntegerField;
    cdsNotaFiscal_ItensTAMANHO: TStringField;
    cdsNotaFiscal_ItensNOME_PRODUTO: TStringField;
    cdsNotaFiscal_ItensREFERENCIA: TStringField;
    cdsNotaFiscal_ItensUNIDADE: TStringField;
    cdsNotaFiscal_ItensQTD: TFloatField;
    cdsNotaFiscal_ItensNUMERO_OC: TStringField;
    cdsNotaFiscal_ItensNUMERO_OS: TStringField;
    cdsNotaFiscal_ItensNUM_PEDIDO: TIntegerField;
    cdsNotaFiscal_ItensCOD_PRODUTO_FORN: TStringField;
    cdsNotaFiscal_ItensCOD_BARRA: TStringField;
    cdsNotaFiscal_ItensCOD_PRODUTO_CLIENTE: TStringField;
    cdsNotaFiscal_ItensCOD_COR_CLIENTE: TStringField;
    cdsNotaFiscal_ItensNOME_COR_CLIENTE: TStringField;
    cdsNotaFiscal_ItensTAMANHO_CLIENTE: TStringField;
    cdsNotaFiscal_ItensNOME_COR: TStringField;
    qNotaFiscal: TSQLQuery;
    qNotaFiscalID: TIntegerField;
    qNotaFiscalNUMNOTA: TIntegerField;
    qNotaFiscalID_CLIENTE: TIntegerField;
    qNotaFiscalNOME_CLIENTE: TStringField;
    qNotaFiscalIMP_COR_CLIENTE: TStringField;
    cdsNotaFiscal_ItensENCERADO: TStringField;
    qNotaFiscalDTEMISSAO: TDateField;
    qNotaFiscalFANTASIA: TStringField;
    qNotaFiscalNOME_INTERNO: TStringField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxmEtiqueta_Nav: TfrxDBDataset;
    mEtiqueta_NavNum_Nota: TIntegerField;
    mEtiqueta_NavCod_Cor_Cliente: TStringField;
    mEtiqueta_NavNome_Cor_Cliente: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure prc_Monta_Etiqueta_Calcado(Tipo: String ; ID : Integer); //D= DOS   A=A4 em windows

  end;

var
  DMEtiqueta: TDMEtiqueta;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

{ TDMEtiqueta }

procedure TDMEtiqueta.prc_Monta_Etiqueta_Calcado(Tipo: String ; ID : Integer); //D= DOS   A=A4 em windows
var
  i: Integer;
  vQtdDiv: Integer;
  vTexto: String;
  vQtdAux: Integer;
  vQtdPac: Integer;
begin
  vTexto := '1';
  if Tipo = 'A' then
    vTexto := InputBox('','Informar a Quantidade por Pacote', '72');
  vTexto := Monta_Numero(vTexto,0);
  if trim(vTexto) <> '' then
    vQtdDiv := StrToInt(vTexto)
  else
    vQtdDiv := 1;
  vQtdPac := vQtdDiv;

  qNotaFiscal.Close;
  qNotaFiscal.ParamByName('ID').AsInteger := ID;
  qNotaFiscal.Open;

  cdsNotaFiscal_Itens.Close;
  sdsNotaFiscal_Itens.ParamByName('ID').AsInteger := ID;
  cdsNotaFiscal_Itens.Open;

  mEtiqueta_Nav.EmptyDataSet;
  cdsNotaFiscal_Itens.First;
  while not cdsNotaFiscal_Itens.Eof do
  begin
    //for i := 1 to fDMCadPedido.cdsPedidoImp_ItensQTD.AsInteger do
    vQtdAux := cdsNotaFiscal_ItensQTD.AsInteger;
    if Tipo = 'A' then
    begin
      vQtdDiv := cdsNotaFiscal_ItensQTD.AsInteger div vQtdPac;
      if cdsNotaFiscal_ItensQTD.AsInteger mod vQtdPac > 0 then
        vQtdDiv := vQtdDiv + 1;
    end;

    if Tipo <> 'A' then
      vQtdDiv := vQtdAux;
    for i := 1 to vQtdDiv do
    begin
      mEtiqueta_Nav.Insert;
      mEtiqueta_NavNum_Nota.AsInteger        := qNotaFiscalNUMNOTA.AsInteger;
      mEtiqueta_NavReferencia.AsString       := cdsNotaFiscal_ItensREFERENCIA.AsString;
      mEtiqueta_NavNome_Produto.AsString     := cdsNotaFiscal_ItensNOME_PRODUTO.AsString;
      mEtiqueta_NavItem_Ped.AsInteger        := cdsNotaFiscal_ItensITEM.AsInteger;
      mEtiqueta_NavCod_Cor_Cliente.AsString  := cdsNotaFiscal_ItensCOD_COR_CLIENTE.AsString;
      mEtiqueta_NavNome_Cor_Cliente.AsString := cdsNotaFiscal_ItensNOME_COR_CLIENTE.AsString;
      if (qNotaFiscalIMP_COR_CLIENTE.AsString = 'S') and (cdsNotaFiscal_ItensID_COR.AsInteger > 0) and
         (cdsNotaFiscal_ItensCOD_COR_CLIENTE.AsString <> '') then
      begin
        //mEtiqueta_NavNome_Produto.AsString := cdsNotaFiscal_ItensNOME_PRODUTO.AsString + ' ' + cdsNotaFiscal_ItensCOD_COR_CLIENTE.AsString
        //                  + ' ' + cdsNotaFiscal_ItensNOME_COR_CLIENTE.AsString;
        if (trim(cdsNotaFiscal_ItensTAMANHO_CLIENTE.AsString) <> '') and (trim(cdsNotaFiscal_ItensTAMANHO_CLIENTE.AsString) <> '0') then
          mEtiqueta_NavNome_Produto.AsString := mEtiqueta_NavNome_Produto.AsString + ' TAM. ' + cdsNotaFiscal_ItensTAMANHO_CLIENTE.AsString;
      end
      else
      if cdsNotaFiscal_ItensID_COR.AsInteger > 0 then
        mEtiqueta_NavNome_Produto.AsString := mEtiqueta_NavNome_Produto.AsString + ' ' + cdsNotaFiscal_ItensNOME_COR.AsString;
      mEtiqueta_NavTamanho.AsString      := cdsNotaFiscal_ItensTAMANHO.AsString;
      mEtiqueta_NavNumOS.AsString        := cdsNotaFiscal_ItensNUMERO_OS.AsString;
      mEtiqueta_NavUnidade.AsString      := cdsNotaFiscal_ItensUNIDADE.AsString;
      if cdsNotaFiscal_ItensENCERADO.AsString = 'S' then
      begin
        mEtiqueta_NavEncerado.AsString   := 'encerado';
        mEtiqueta_NavReferencia.AsString := mEtiqueta_NavReferencia.AsString + '-E';
      end
      else
        mEtiqueta_NavEncerado.AsString     := '';
      if Tipo = 'A' then
      begin
        if trim(cdsNotaFiscal_ItensCOD_PRODUTO_CLIENTE.AsString) <> '' then
          mEtiqueta_NavProd_Cliente.AsString := cdsNotaFiscal_ItensCOD_PRODUTO_CLIENTE.AsString
        else
        begin
          mEtiqueta_NavProd_Cliente.AsString := fnc_Busca_CodProduto_Cliente(cdsNotaFiscal_ItensID_PRODUTO.AsInteger,
                                                                             qNotaFiscalID_CLIENTE.AsInteger,
                                                                             cdsNotaFiscal_ItensID_COR.AsInteger,'',
                                                                             cdsNotaFiscal_ItensTAMANHO_CLIENTE.AsString);
        end;
        mEtiqueta_NavDtEmissao.AsDateTime    := qNotaFiscalDTEMISSAO.AsDateTime;
        mEtiqueta_NavNome_Empresa.AsString   := qNotaFiscalNOME_INTERNO.AsString;
        mEtiqueta_NavNome_Cliente.AsString   := qNotaFiscalNOME_CLIENTE.AsString;
        mEtiqueta_NavFantasia_Cli.AsString   := qNotaFiscalFANTASIA.AsString;
        mEtiqueta_NavPedido_Cliente.AsString := cdsNotaFiscal_ItensNUMERO_OC.AsString;
        if vQtdAux > vQtdPac then
          mEtiqueta_NavQtd.AsInteger := vQtdPac
        else
          mEtiqueta_NavQtd.AsInteger := vQtdAux;
        vQtdAux := vQtdAux - vQtdPac;
        if vQtdAux <= 0 then
          vQtdDiv := i;
      end;
      if mEtiqueta_Nav.State in [dsEdit,dsInsert] then
        mEtiqueta_Nav.Post;
    end;
    cdsNotaFiscal_Itens.Next;
  end;
end;

end.
