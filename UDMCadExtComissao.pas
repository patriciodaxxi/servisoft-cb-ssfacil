unit UDMCadExtComissao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, UDMGravarFinanceiro, Dialogs, LogTypes;

type
  TDMCadExtComissao = class(TDataModule)
    sdsExtComissao: TSQLDataSet;
    dspExtComissao: TDataSetProvider;
    cdsExtComissao: TClientDataSet;
    dsExtComissao: TDataSource;
    sdsExtComissaoID: TIntegerField;
    sdsExtComissaoTIPO_REG: TStringField;
    sdsExtComissaoDTCADASTRO: TDateField;
    sdsExtComissaoDTBASE: TDateField;
    sdsExtComissaoID_VENDEDOR: TIntegerField;
    sdsExtComissaoID_NOTA: TIntegerField;
    sdsExtComissaoID_DUPLICATA: TIntegerField;
    sdsExtComissaoITEM_DUPLICATA_HIST: TIntegerField;
    sdsExtComissaoBASE_COMISSAO: TFloatField;
    sdsExtComissaoPERC_COMISSAO: TFloatField;
    sdsExtComissaoVLR_COMISSAO: TFloatField;
    sdsExtComissaoSERIE: TStringField;
    sdsExtComissaoNUM_NOTA: TIntegerField;
    sdsExtComissaoFILIAL: TIntegerField;
    cdsExtComissaoID: TIntegerField;
    cdsExtComissaoTIPO_REG: TStringField;
    cdsExtComissaoDTCADASTRO: TDateField;
    cdsExtComissaoDTBASE: TDateField;
    cdsExtComissaoID_VENDEDOR: TIntegerField;
    cdsExtComissaoID_NOTA: TIntegerField;
    cdsExtComissaoID_DUPLICATA: TIntegerField;
    cdsExtComissaoITEM_DUPLICATA_HIST: TIntegerField;
    cdsExtComissaoBASE_COMISSAO: TFloatField;
    cdsExtComissaoPERC_COMISSAO: TFloatField;
    cdsExtComissaoVLR_COMISSAO: TFloatField;
    cdsExtComissaoSERIE: TStringField;
    cdsExtComissaoNUM_NOTA: TIntegerField;
    cdsExtComissaoFILIAL: TIntegerField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaTIPO_REG: TStringField;
    cdsConsultaDTCADASTRO: TDateField;
    cdsConsultaDTBASE: TDateField;
    cdsConsultaID_VENDEDOR: TIntegerField;
    cdsConsultaID_NOTA: TIntegerField;
    cdsConsultaID_DUPLICATA: TIntegerField;
    cdsConsultaITEM_DUPLICATA_HIST: TIntegerField;
    cdsConsultaBASE_COMISSAO: TFloatField;
    cdsConsultaPERC_COMISSAO: TFloatField;
    cdsConsultaVLR_COMISSAO: TFloatField;
    cdsConsultaSERIE: TStringField;
    cdsConsultaNUM_NOTA: TIntegerField;
    cdsConsultaFILIAL: TIntegerField;
    cdsConsultaNOMEVENDEDOR: TStringField;
    cdsExtComissaoID_CLIENTE: TIntegerField;
    dspVendedor: TDataSetProvider;
    sdsVendedor: TSQLDataSet;
    cdsVendedor: TClientDataSet;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorPERC_COMISSAO: TFloatField;
    cdsVendedorTIPO_COMISSAO: TStringField;
    dsVendedor: TDataSource;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClientePERC_COMISSAO: TFloatField;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsConsultaID_CLIENTE: TIntegerField;
    cdsConsultaNOMECLIENTE: TStringField;
    sdsExtComissaoPARCELA: TIntegerField;
    cdsExtComissaoPARCELA: TIntegerField;
    sdsExtComissaoID_CLIENTE: TIntegerField;
    sdsExtComissaoOBS: TStringField;
    cdsExtComissaoOBS: TStringField;
    cdsConsultaPARCELA: TIntegerField;
    cdsConsultaOBS: TStringField;
    mExtComissao_Red: TClientDataSet;
    dsmExtComissao_Red: TDataSource;
    mExtComissao_RedID_Vendedor: TIntegerField;
    mExtComissao_RedNomeVendedor: TStringField;
    mExtComissao_RedBase_Comissao: TFloatField;
    mExtComissao_RedVlr_Comissao: TFloatField;
    mExtComissao_RedVlr_Entrada: TFloatField;
    mExtComissao_RedVlr_Pagamento: TFloatField;
    mExtComissao_RedVlr_Adiantamento: TFloatField;
    mExtComissao_RedVlr_Devolucao: TFloatField;
    mImp_Reduzido: TClientDataSet;
    dsmImp_Reduzido: TDataSource;
    mImp_ReduzidoID_Vendedor: TIntegerField;
    mImp_ReduzidoNomeVendedor: TStringField;
    mImp_ReduzidoBase_Comissao: TFloatField;
    mImp_ReduzidoVlr_Comissao: TFloatField;
    mImp_ReduzidoVlr_Entrada: TFloatField;
    mImp_ReduzidoVlr_Pagamento: TFloatField;
    mImp_ReduzidoVlr_Adiantamento: TFloatField;
    mImp_ReduzidoVlr_Devolucao: TFloatField;
    sdsContas: TSQLDataSet;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    dsContas: TDataSource;
    cdsContasID: TIntegerField;
    cdsContasNOME: TStringField;
    cdsContasFILIAL: TIntegerField;
    sdsTipoCobranca: TSQLDataSet;
    dspTipoCobranca: TDataSetProvider;
    cdsTipoCobranca: TClientDataSet;
    dsTipoCobranca: TDataSource;
    cdsTipoCobrancaID: TIntegerField;
    cdsTipoCobrancaNOME: TStringField;
    sdsExtComissaoID_CONTA: TIntegerField;
    sdsExtComissaoID_FORMA_PAGAMENTO: TIntegerField;
    cdsExtComissaoID_CONTA: TIntegerField;
    cdsExtComissaoID_FORMA_PAGAMENTO: TIntegerField;
    cdsConsultaID_CONTA: TIntegerField;
    cdsConsultaID_FORMA_PAGAMENTO: TIntegerField;
    sdsPrevisao: TSQLDataSet;
    dspPrevisao: TDataSetProvider;
    cdsPrevisao: TClientDataSet;
    dsPrevisao: TDataSource;
    cdsPrevisaoID: TIntegerField;
    cdsPrevisaoFILIAL: TIntegerField;
    cdsPrevisaoID_NOTA: TIntegerField;
    cdsPrevisaoPARCELA: TIntegerField;
    cdsPrevisaoNUMDUPLICATA: TStringField;
    cdsPrevisaoNUMNOTA: TIntegerField;
    cdsPrevisaoSERIE: TStringField;
    cdsPrevisaoDTVENCIMENTO: TDateField;
    cdsPrevisaoVLR_RESTANTE: TFloatField;
    cdsPrevisaoID_PESSOA: TIntegerField;
    cdsPrevisaoID_VENDEDOR: TIntegerField;
    cdsPrevisaoNOME_VENDEDOR: TStringField;
    cdsPrevisaoNOME_CLIENTE: TStringField;
    cdsPrevisaoPERC_COMISSAO: TFloatField;
    sdsPrevisao_Ped: TSQLDataSet;
    dspPrevisao_Ped: TDataSetProvider;
    cdsPrevisao_Ped: TClientDataSet;
    dsPrevisao_Ped: TDataSource;
    cdsPrevisao_PedID: TIntegerField;
    cdsPrevisao_PedID_VENDEDOR: TIntegerField;
    cdsPrevisao_PedPERC_COMISSAO: TFloatField;
    cdsPrevisao_PedID_CLIENTE: TIntegerField;
    cdsPrevisao_PedVLR_UNITARIO: TFloatField;
    cdsPrevisao_PedVLR_DESCONTO: TFloatField;
    cdsPrevisao_PedQTD_RESTANTE: TFloatField;
    cdsPrevisao_PedVLR_CALCULADO: TFloatField;
    cdsPrevisao_PedNUM_PEDIDO: TIntegerField;
    mExtComissao_RedBase_Previsao_Dup: TFloatField;
    mExtComissao_RedBase_Previsao_Ped: TFloatField;
    mExtComissao_RedVlr_Previsao_Ped: TFloatField;
    mExtComissao_RedVlr_Previsao_Dup: TFloatField;
    cdsPrevisao_PedDTENTREGA: TDateField;
    cdsPrevisao_PedNOME_CLIENTE: TStringField;
    cdsPrevisao_PedFILIAL: TIntegerField;
    mImp_ReduzidoBase_Previsao_Dup: TFloatField;
    mImp_ReduzidoBase_Previsao_Ped: TFloatField;
    mImp_ReduzidoVlr_Previsao_Dup: TFloatField;
    mImp_ReduzidoVlr_Previsao_Ped: TFloatField;
    cdsPrevisaoVlr_Comissao: TFloatField;
    cdsPrevisao_PedVlr_Comissao: TFloatField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosID_CONTA_ORC_COMISSAO: TIntegerField;
    sdsExtComissaoID_NOTA_SERVICO: TIntegerField;
    cdsExtComissaoID_NOTA_SERVICO: TIntegerField;
    cdsConsultaID_NOTA_SERVICO: TIntegerField;
    sdsExtComissaoID_CUPOM: TIntegerField;
    cdsExtComissaoID_CUPOM: TIntegerField;
    sdsExtComissaoNUMRPS: TIntegerField;
    cdsExtComissaoNUMRPS: TIntegerField;
    cdsConsultaID_CUPOM: TIntegerField;
    cdsConsultaNUMRPS: TIntegerField;
    sdsExtComissaoID_RECIBO: TIntegerField;
    cdsExtComissaoID_RECIBO: TIntegerField;
    mExtPedido: TClientDataSet;
    mExtPedidoID_Vendedor: TIntegerField;
    mExtPedidoNome_Vendedor: TStringField;
    mExtPedidoVlr_Base: TFloatField;
    mExtPedidoVlr_Comissao: TFloatField;
    dsmExtPedido: TDataSource;
    sdsPedido_Vend: TSQLDataSet;
    dspPedido_Vend: TDataSetProvider;
    cdsPedido_Vend: TClientDataSet;
    dsPedido_Vend: TDataSource;
    cdsPedido_VendID_VENDEDOR: TIntegerField;
    cdsPedido_VendPERC_COMISSAO: TFloatField;
    cdsPedido_VendVLR_TOTAL: TFloatField;
    cdsPedido_VendFILIAL: TIntegerField;
    cdsPedido_VendDTEMISSAO: TDateField;
    cdsPedido_VendID_CLIENTE: TIntegerField;
    cdsPedido_VendNOME_CLIENTE: TStringField;
    cdsPedido_VendclVlr_Comissao: TFloatField;
    cdsPedido_VendNUM_PEDIDO: TIntegerField;
    cdsPedido_VendPEDIDO_CLIENTE: TStringField;
    sdsExtComissaoID_DESCONTADA: TIntegerField;
    cdsExtComissaoID_DESCONTADA: TIntegerField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinUSA_METAS_VENDEDOR: TStringField;
    mExtComissao_RedVlr_Meta_Vendas: TFloatField;
    mExtComissao_RedVlr_Vendas: TFloatField;
    mImp_ReduzidoVlr_Meta_Vendas: TFloatField;
    mImp_ReduzidoVlr_Vendas: TFloatField;
    cdsPrevisaoPERC_BASE_COMISSAO: TFloatField;
    cdsPrevisaoVLR_BASE_COMISSAO: TFloatField;
    cdsPrevisao_PedVLR_IPI_CALCULADO: TFloatField;
    cdsPrevisao_PedVLR_FRETE_CALCULADO: TFloatField;
    cdsPrevisao_PedVLR_ICMSSUBST_CALCULADO: TFloatField;
    mPrevPedido: TClientDataSet;
    dsmPrevPedido: TDataSource;
    mPrevPedidoFilial: TIntegerField;
    mPrevPedidoID_Pedido: TIntegerField;
    mPrevPedidoNum_Pedido: TIntegerField;
    mPrevPedidoPedido_Cliente: TStringField;
    mPrevPedidoNome_Cliente: TStringField;
    mPrevPedidoVlr_Base_Comissao: TFloatField;
    mPrevPedidoVlr_Comissao: TFloatField;
    qParametros_Com: TSQLQuery;
    qParametros_ComCOMISSAO_DESCONTAR: TStringField;
    mPrevPedidoID_Vendedor: TIntegerField;
    cdsPrevisao_PedPEDIDO_CLIENTE: TStringField;
    qDupAux: TSQLQuery;
    qDupAuxID: TIntegerField;
    qDupAuxPERC_COMISSAO: TFloatField;
    qDupAuxPERC_BASE_COMISSAO: TFloatField;
    qDupAuxVLR_PARCELA: TFloatField;
    sdsDupAux: TSQLDataSet;
    dspDupAux: TDataSetProvider;
    cdsDupAux: TClientDataSet;
    cdsDupAuxID: TIntegerField;
    cdsDupAuxTIPO_ES: TStringField;
    cdsDupAuxFILIAL: TIntegerField;
    cdsDupAuxID_NOTA: TIntegerField;
    cdsDupAuxPARCELA: TIntegerField;
    cdsDupAuxNUMDUPLICATA: TStringField;
    cdsDupAuxNUMNOTA: TIntegerField;
    cdsDupAuxSERIE: TStringField;
    cdsDupAuxDTVENCIMENTO: TDateField;
    cdsDupAuxVLR_PARCELA: TFloatField;
    cdsDupAuxVLR_RESTANTE: TFloatField;
    cdsDupAuxVLR_PAGO: TFloatField;
    cdsDupAuxVLR_DEVOLUCAO: TFloatField;
    cdsDupAuxVLR_DESPESAS: TFloatField;
    cdsDupAuxVLR_DESCONTO: TFloatField;
    cdsDupAuxVLR_JUROSPAGOS: TFloatField;
    cdsDupAuxVLR_COMISSAO: TFloatField;
    cdsDupAuxPERC_COMISSAO: TFloatField;
    cdsDupAuxDTULTPAGAMENTO: TDateField;
    cdsDupAuxID_PESSOA: TIntegerField;
    cdsDupAuxID_CONTA: TIntegerField;
    cdsDupAuxID_TIPOCOBRANCA: TIntegerField;
    cdsDupAuxID_VENDEDOR: TIntegerField;
    cdsDupAuxID_CONTA_BOLETO: TIntegerField;
    cdsDupAuxID_COMISSAO: TIntegerField;
    cdsDupAuxQTD_DIASATRASO: TIntegerField;
    cdsDupAuxDTRECEBIMENTO_TITULO: TDateField;
    cdsDupAuxDTEMISSAO: TDateField;
    cdsDupAuxPAGO_CARTORIO: TStringField;
    cdsDupAuxPROTESTADO: TStringField;
    cdsDupAuxTIPO_LANCAMENTO: TStringField;
    cdsDupAuxARQUIVO_GERADO: TStringField;
    cdsDupAuxTRANSFERENCIA_ICMS: TStringField;
    cdsDupAuxNOSSONUMERO: TStringField;
    cdsDupAuxDTFINANCEIRO: TDateField;
    cdsDupAuxNUMCHEQUE: TIntegerField;
    cdsDupAuxACEITE: TStringField;
    cdsDupAuxID_COB_ELETRONICA: TIntegerField;
    cdsDupAuxBOLETO_IMP: TStringField;
    cdsDupAuxID_CARTEIRA: TIntegerField;
    cdsDupAuxID_BANCO: TIntegerField;
    cdsDupAuxIMP_BOLETO: TStringField;
    cdsDupAuxNUM_REMESSA: TIntegerField;
    cdsDupAuxID_NOTA_SERVICO: TIntegerField;
    cdsDupAuxDESCRICAO: TStringField;
    cdsDupAuxNUMRPS: TIntegerField;
    cdsDupAuxANO_REF: TIntegerField;
    cdsDupAuxMES_REF: TIntegerField;
    cdsDupAuxNUM_CONTRATO: TIntegerField;
    cdsDupAuxID_CONTA_ORCAMENTO: TIntegerField;
    cdsDupAuxID_CUPOM: TIntegerField;
    cdsDupAuxVLR_TAXA_BANCARIA: TFloatField;
    cdsDupAuxCOBRAR_TAXA: TStringField;
    cdsDupAuxID_TERMINAL: TIntegerField;
    cdsDupAuxID_FECHAMENTO: TIntegerField;
    cdsDupAuxTIPO_MOV: TStringField;
    cdsDupAuxNOSSONUMERO_SEQ: TFMTBCDField;
    cdsDupAuxNOSSONUMERO_GERADO: TStringField;
    cdsDupAuxNUMDUPLICATA_SEQ: TIntegerField;
    cdsDupAuxID_RECIBO: TIntegerField;
    cdsDupAuxID_PEDIDO: TIntegerField;
    cdsDupAuxPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    cdsDupAuxUSUARIO: TStringField;
    cdsDupAuxTITULO_CARTORIO: TStringField;
    cdsDupAuxID_DESCONTADA: TIntegerField;
    cdsDupAuxCONFIRMA_PGTO: TStringField;
    cdsDupAuxCOD_ANT: TIntegerField;
    cdsDupAuxPERC_BASE_COMISSAO: TFloatField;
    cdsDupAuxEMISSAO_BOLETO: TStringField;
    cdsDupAuxDESCRICAO2: TStringField;
    cdsDupAuxID_CONTRATO: TIntegerField;
    cdsDupAuxVLR_MULTA: TFloatField;
    cdsDupAuxID_CONTABIL_OPE_LACTO: TIntegerField;
    cdsDupAuxID_CONTABIL_OPE_BAIXA: TIntegerField;
    cdsDupAuxREGIME_CAIXA: TStringField;
    cdsDupAuxPERDIDO: TStringField;
    sdsExtComissaoID_CONTA_ORC: TIntegerField;
    cdsExtComissaoID_CONTA_ORC: TIntegerField;
    qConta_Orcamento: TSQLQuery;
    qConta_OrcamentoID: TIntegerField;
    qConta_OrcamentoTIPO: TStringField;
    qConta_OrcamentoCODIGO: TStringField;
    qConta_OrcamentoDESCRICAO: TStringField;
    qParametrosUSA_CONTA_ORCAMENTO: TStringField;
    cdsPedido_VendVLR_FRETE: TFloatField;
    cdsPedido_VendCOMISSAO_DESCONTAR: TStringField;
    cdsPedido_VendVLR_MAO_OBRA: TFloatField;
    qParametros_Ped: TSQLQuery;
    qParametros_PedPEDIDO_LOJA: TStringField;
    mExtPedidoVlr_Frete: TFloatField;
    mExtPedidoVlr_Mao_Obra: TFloatField;
    sdsPrc_Atualiza_Comissao: TSQLDataSet;
    cdsConsultaOBS_PEDIDO: TStringField;
    qParametros_ComMOSTRAR_PED: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsExtComissaoNewRecord(DataSet: TDataSet);
    procedure mExtComissao_RedNewRecord(DataSet: TDataSet);
    procedure cdsPrevisaoCalcFields(DataSet: TDataSet);
    procedure cdsPrevisao_PedCalcFields(DataSet: TDataSet);
    procedure cdsExtComissaoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure mExtPedidoNewRecord(DataSet: TDataSet);
    procedure cdsPedido_VendCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure prc_Gravar_mExtComissao_Red;
    procedure prc_Gravar_mExtComissao_Red_Prev(Tipo: String; ID_Vendedor: Integer; Vlr_Base, Percentual, Vlr_Outros: Real);
    procedure prc_Gravar_mPrevPedido;
    function fnc_Busca_Vlr_Entrada(ID : Integer) : Real;

    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }

    vMsgErro: String;
    ctCommand: String;
    ctConsulta: String;
    ctPrevisao, ctPrevisao_Ped: String;
    ctPedido_Vend: String;
    vEntrada_Ext, vPagamento_Ext, vAdiantamento_Ext, vDevolucao_Ext: Real;
    vPrevisao_Dup_Ext, vPrevisao_Ped_Ext: Real;
    vAno, vMes : Integer;

    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    procedure prc_Le_cdsConsulta;
    procedure prc_Le_cdsPrevisao;
    procedure prc_Le_cdsPrevisao_Ped;

    procedure prc_Gravar_Financeiro;
    procedure prc_Excluir_Financeiro;

    function fnc_Mover_Comissao(Tipo_Reg, Serie, Obs: WideString; DtCadastro, DtBase: TDateTime ;
                                Filial, ID_Vendedor, ID_Nota, ID_Duplicata, Item_Duplicata_Hist, Num_Nota, ID_Cliente,
                                Parcela, Num_RPS, ID_Nota_Servico, ID_Cupom: Integer ;
                                Base_Comissao, Vlr_Comissao, Perc_Comissao: Real; ID_Recibo, ID_Descontada: Integer): Integer;

    function fnc_Busca_Metas(Ano,Mes,ID_Vendedor : Integer) : Real;
    function fnc_Busca_Vendas(Ano,Mes,ID_Vendedor : Integer) : Real;

  end;

var
  DMCadExtComissao: TDMCadExtComissao;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao, uGrava_Erro;

{$R *.dfm}

procedure TDMCadExtComissao.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand      := sdsExtComissao.CommandText;
  ctConsulta     := sdsConsulta.CommandText;
  ctPrevisao     := sdsPrevisao.CommandText;
  ctPrevisao_Ped := sdsPrevisao_Ped.CommandText;
  ctPedido_Vend  := sdsPedido_Vend.CommandText;
  qParametros.Open;
  qParametros_Fin.Open;
  qParametros_Com.Close;
  qParametros_Com.Open;

  //*** Logs Implantado na versão .353
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
end;

procedure TDMCadExtComissao.prc_Excluir;
begin
  if not(cdsExtComissao.Active) or (cdsExtComissao.IsEmpty) then
    exit;
  cdsExtComissao.Delete;
  cdsExtComissao.ApplyUpdates(0);
end;

procedure TDMCadExtComissao.prc_Gravar;
var
  vIDAux : Integer;
  vIDNotaAux : Integer;
begin
  vIDAux := cdsExtComissaoID.AsInteger;
  vMsgErro := '';
  if cdsExtComissaoID_VENDEDOR.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Vendedor não informado!';
  if cdsExtComissaoFILIAL.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Filial não informada!';
  if ((cdsExtComissaoTIPO_REG.AsString = 'ENT') or ((cdsExtComissaoTIPO_REG.AsString = 'DEV')))  and (cdsExtComissaoID_CLIENTE.AsInteger <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Cliente não informado!';
  if cdsExtComissaoDTBASE.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data base não informada!';
  if StrToFloat(FormatFloat('0.00',cdsExtComissaoVLR_COMISSAO.AsFloat)) <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Valor comissão não informada!';
  if ((cdsExtComissaoTIPO_REG.AsString = 'PAG') or (cdsExtComissaoTIPO_REG.AsString = 'ADI')) and
     ((cdsExtComissaoID_CONTA.AsInteger <= 0) or (cdsExtComissaoID_FORMA_PAGAMENTO.AsInteger <= 0)) then
    vMsgErro := vMsgErro + #13 + '*** Quando for o tipo "Pagamento ou Adiantamento" Conta e Forma de pagamento devem ser informadas para gravar no financeiro!';
  if trim(vMsgErro) <> '' then
    exit;

  try
    if cdsExtComissao.State in [dsEdit,dsInsert] then
      cdsExtComissao.Post;

    cdsExtComissao.ApplyUpdates(0);

    if qParametros_ComMOSTRAR_PED.AsString = 'S' then
    begin
      if cdsExtComissao.Locate('ID',vIDAux,[loCaseInsensitive]) then
      begin
        if cdsExtComissaoID_NOTA.AsInteger > 0 then
        begin
          sdsPrc_Atualiza_Comissao.Close;
          sdsPrc_Atualiza_Comissao.ParamByName('ID_NOTA').AsInteger     := cdsExtComissaoID_NOTA.AsInteger;
          sdsPrc_Atualiza_Comissao.ParamByName('ID_COMISSAO').AsInteger := cdsExtComissaoID.AsInteger;
          sdsPrc_Atualiza_Comissao.ExecSQL;
        end;
      end;
    end;

  except
      on e: Exception do
        raise Exception.Create('Erro ao gravar a Comissão: ' + #13 + e.Message);
  end;
end;

procedure TDMCadExtComissao.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsExtComissao.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('EXTCOMISSAO',0);

  cdsExtComissao.Insert;
  cdsExtComissaoID.AsInteger          := vAux;
  cdsExtComissaoDTCADASTRO.AsDateTime := Date;
end;

procedure TDMCadExtComissao.prc_Localizar(ID: Integer);
begin
  cdsExtComissao.Close;
  sdsExtComissao.CommandText := ctCommand;
  if ID <> 0 then
    sdsExtComissao.CommandText := sdsExtComissao.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsExtComissao.Open;
end;

function TDMCadExtComissao.fnc_Mover_Comissao(Tipo_Reg, Serie,
  Obs: WideString; DtCadastro, DtBase: TDateTime; Filial, ID_Vendedor,
  ID_Nota, ID_Duplicata, Item_Duplicata_Hist, Num_Nota, ID_Cliente,
  Parcela, Num_RPS, ID_Nota_Servico, ID_Cupom: Integer; Base_Comissao, Vlr_Comissao,
  Perc_Comissao: Real; ID_Recibo, ID_Descontada: Integer): Integer;
begin
  Result := 0;

  try
    prc_Inserir;

    cdsExtComissaoTIPO_REG.AsString := Tipo_Reg;
    if DtCadastro > 10 then
      cdsExtComissaoDTCADASTRO.AsDateTime := DtCadastro;
    if DtBase > 10 then
      cdsExtComissaoDTBASE.AsDateTime := DtBase;
    cdsExtComissaoID_VENDEDOR.AsInteger         := ID_Vendedor;
    cdsExtComissaoID_NOTA.AsInteger             := ID_Nota;
    cdsExtComissaoID_NOTA_SERVICO.AsInteger     := ID_Nota_Servico;
    cdsExtComissaoID_DUPLICATA.AsInteger        := ID_Duplicata;
    cdsExtComissaoITEM_DUPLICATA_HIST.AsInteger := Item_Duplicata_Hist;
    cdsExtComissaoBASE_COMISSAO.AsFloat         := Base_Comissao;
    cdsExtComissaoPERC_COMISSAO.AsFloat         := Perc_Comissao;
    cdsExtComissaoVLR_COMISSAO.AsFloat          := StrToFloat(FormatFloat('0.00', Base_Comissao * Perc_Comissao / 100));
    cdsExtComissaoSERIE.AsString                := Serie;
    cdsExtComissaoNUM_NOTA.AsInteger            := Num_Nota;
    cdsExtComissaoFILIAL.AsInteger              := Filial;
    cdsExtComissaoOBS.Value                     := Obs;
    cdsExtComissaoID_CLIENTE.AsInteger          := ID_Cliente;
    cdsExtComissaoPARCELA.AsInteger             := Parcela;
    cdsExtComissaoNUMRPS.AsInteger              := Num_RPS;
    cdsExtComissaoID_CUPOM.AsInteger            := ID_Cupom;
    if ID_Descontada > 0 then
      cdsExtComissaoID_DESCONTADA.AsInteger := ID_Descontada;

    prc_Gravar;

    Result := cdsExtComissaoID.AsInteger;
  except
    //begin
      on e: Exception do
      begin
        Result := 0;
        raise Exception.Create('Erro ao gravar a Comissão: ' + #13 + e.Message);
      end;
    //end;
  end;
end;

procedure TDMCadExtComissao.cdsExtComissaoNewRecord(DataSet: TDataSet);
begin
  cdsExtComissaoID_DUPLICATA.AsInteger := 0;
  cdsExtComissaoID_NOTA.AsInteger      := 0;
end;

procedure TDMCadExtComissao.prc_Le_cdsConsulta;
begin
  mExtComissao_Red.EmptyDataSet;
  cdsConsulta.First;
  while not cdsConsulta.Eof do
  begin
    if cdsConsultaTIPO_REG.AsString = 'ENT' then
      vEntrada_Ext := vEntrada_Ext + cdsConsultaVLR_COMISSAO.AsFloat
    else
    if cdsConsultaTIPO_REG.AsString = 'PAG' then
      vPagamento_Ext := vPagamento_Ext + cdsConsultaVLR_COMISSAO.AsFloat
    else
    if cdsConsultaTIPO_REG.AsString = 'ADI' then
      vAdiantamento_Ext := vAdiantamento_Ext + cdsConsultaVLR_COMISSAO.AsFloat
    else
    if cdsConsultaTIPO_REG.AsString = 'DEV' then
      vDevolucao_Ext := vDevolucao_Ext + cdsConsultaVLR_COMISSAO.AsFloat;
    prc_Gravar_mExtComissao_Red;
    cdsConsulta.Next;
  end;
end;

procedure TDMCadExtComissao.prc_Gravar_mExtComissao_Red;
begin
  if mExtComissao_Red.Locate('ID_VENDEDOR',cdsConsultaID_VENDEDOR.AsInteger,[loCaseInsensitive]) then
    mExtComissao_Red.Edit
  else
  begin
    mExtComissao_Red.Insert;
    mExtComissao_RedID_Vendedor.AsInteger := cdsConsultaID_VENDEDOR.AsInteger;
    if cdsVendedor.Locate('CODIGO',cdsConsultaID_VENDEDOR.AsInteger,[loCaseInsensitive]) then
      mExtComissao_RedNomeVendedor.AsString := cdsVendedorNOME.AsString;
  end;

  if cdsConsultaTIPO_REG.AsString = 'ENT' then
  begin
    mExtComissao_RedVlr_Entrada.AsFloat   := StrToFloat(FormatFloat('0.00',mExtComissao_RedVlr_Entrada.AsFloat + cdsConsultaVLR_COMISSAO.AsFloat));
    mExtComissao_RedBase_Comissao.AsFloat := StrToFloat(FormatFloat('0.00',mExtComissao_RedBase_Comissao.AsFloat + cdsConsultaBASE_COMISSAO.AsFloat));
  end
  else
  if cdsConsultaTIPO_REG.AsString = 'PAG' then
    mExtComissao_RedVlr_Pagamento.AsFloat := StrToFloat(FormatFloat('0.00',mExtComissao_RedVlr_Pagamento.AsFloat + cdsConsultaVLR_COMISSAO.AsFloat))
  else
  if cdsConsultaTIPO_REG.AsString = 'ADI' then
    mExtComissao_RedVlr_Adiantamento.AsFloat := StrToFloat(FormatFloat('0.00',mExtComissao_RedVlr_Adiantamento.AsFloat + cdsConsultaVLR_COMISSAO.AsFloat))
  else
  if cdsConsultaTIPO_REG.AsString = 'DEV' then
  begin
    mExtComissao_RedVlr_Devolucao.AsFloat := StrToFloat(FormatFloat('0.00',mExtComissao_RedVlr_Devolucao.AsFloat + cdsConsultaVLR_COMISSAO.AsFloat));
    mExtComissao_RedBase_Comissao.AsFloat := StrToFloat(FormatFloat('0.00',mExtComissao_RedBase_Comissao.AsFloat - cdsConsultaBASE_COMISSAO.AsFloat));
  end;
  mExtComissao_RedVlr_Comissao.AsFloat  := StrToFloat(FormatFloat('0.00',mExtComissao_RedVlr_Entrada.AsFloat - mExtComissao_RedVlr_Pagamento.AsFloat
                                         - mExtComissao_RedVlr_Adiantamento.AsFloat - mExtComissao_RedVlr_Devolucao.AsFloat));

  mExtComissao_RedVlr_Meta_Vendas.AsFloat := fnc_Busca_Metas(vAno,vMes,cdsConsultaID_VENDEDOR.AsInteger);
  mExtComissao_RedVlr_Vendas.AsFloat      := fnc_Busca_Vendas(vAno,vMes,cdsConsultaID_VENDEDOR.AsInteger);
  mExtComissao_Red.Post;
end;

procedure TDMCadExtComissao.prc_Gravar_Financeiro;
var
  fDMGravarFinanceiro: TDMGravarFinanceiro;
begin
  fDMGravarFinanceiro := TDMGravarFinanceiro.Create(Self);

  fDMGravarFinanceiro.vTipo_ES := 'S';
  if cdsExtComissaoTIPO_REG.AsString = 'PAG' then
    fDMGravarFinanceiro.vHistorico_Compl := 'Pagto.Comissão Dt.Base: ' + cdsExtComissaoDTBASE.AsString
  else
  if cdsExtComissaoTIPO_REG.AsString = 'ADI' then
    fDMGravarFinanceiro.vHistorico_Compl := 'Adiant.Comissão Dt.Base: ' + cdsExtComissaoDTBASE.AsString;
  if cdsVendedor.Locate('CODIGO',cdsExtComissaoID_VENDEDOR.AsInteger,[loCaseInsensitive]) then
    fDMGravarFinanceiro.vHistorico_Compl := fDMGravarFinanceiro.vHistorico_Compl + ' ' + cdsVendedorNOME.AsString;

  fDMGravarFinanceiro.vID_Conta           := cdsExtComissaoID_CONTA.AsInteger;
  fDMGravarFinanceiro.vID_ModDuplicata    := 0;
  fDMGravarFinanceiro.vItem_MovDuplicata  := 0;
  fDMGravarFinanceiro.vID_Historico       := 0;
  fDMGravarFinanceiro.vID_Pessoa          := 0;
  fDMGravarFinanceiro.vID_Forma_Pagamento := cdsExtComissaoID_FORMA_PAGAMENTO.AsInteger;
  fDMGravarFinanceiro.vID_ExtComissao     := cdsExtComissaoID.AsInteger;
  fDMGravarFinanceiro.vDtMovimento        := cdsExtComissaoDTCADASTRO.AsDateTime;
  fDMGravarFinanceiro.vVlr_Movimento      := StrToFloat(FormatFloat('0.00',cdsExtComissaoVLR_COMISSAO.AsFloat));
//  fDMGravarFinanceiro.vID_Conta_Orcamento := fDMGravarFinanceiro.qParametrosID_CONTA_ORC_COMISSAO.AsInteger;
  fDMGravarFinanceiro.vID_Conta_Orcamento := cdsExtComissaoID_CONTA_ORC.AsInteger;

  fDMGravarFinanceiro.prc_Gravar;

  FreeAndNil(fDMGravarFinanceiro);
end;

procedure TDMCadExtComissao.prc_Excluir_Financeiro;
var
  fDMGravarFinanceiro: TDMGravarFinanceiro;
begin
  fDMGravarFinanceiro := TDMGravarFinanceiro.Create(Self);
  fDMGravarFinanceiro.vID_ExtComissao := cdsExtComissaoID.AsInteger;
  fDMGravarFinanceiro.prc_Excluir2;
  FreeAndNil(fDMGravarFinanceiro);
end;

procedure TDMCadExtComissao.prc_Le_cdsPrevisao;
begin
  cdsPrevisao.First;
  while not cdsPrevisao.Eof do
  begin
    //prc_Gravar_mExtComissao_Red_Prev('D',cdsPrevisaoID_VENDEDOR.AsInteger,cdsPrevisaoVLR_RESTANTE.AsFloat,cdsPrevisaoPERC_COMISSAO.AsFloat);
    prc_Gravar_mExtComissao_Red_Prev('D',cdsPrevisaoID_VENDEDOR.AsInteger,cdsPrevisaoVLR_BASE_COMISSAO.AsFloat,cdsPrevisaoPERC_COMISSAO.AsFloat,0);
    cdsPrevisao.Next;
  end;
end;

procedure TDMCadExtComissao.prc_Le_cdsPrevisao_Ped;
var
  vAux : Real;
  vID_Ant : Integer;
  vVlr_Base, vVlr_Comissao : Real;
begin
  vID_Ant := 0;
  cdsPrevisao_Ped.IndexFieldNames := 'ID_VENDEDOR;ID';
  cdsPrevisao_Ped.First;
  while not cdsPrevisao_Ped.Eof do
  begin
    {if (vID_Ant > 0) and (vID_Ant <> cdsPrevisao_PedID_VENDEDOR.AsInteger) then
    begin
      if mPrevPedido.Locate('ID_VENDEDOR',vID_Ant,[loCaseInsensitive]) then
      begin
        if mExtComissao_RedID_Vendedor.AsInteger <> vID_Ant then
          mExtComissao_Red.Locate('ID_VENDEDOR',vID_Ant,[loCaseInsensitive]);
        mExtComissao_Red.Edit;
        mExtComissao_RedBase_Previsao_Ped.AsFloat := mExtComissao_RedBase_Previsao_Ped.AsFloat + mPrevPedidoVlr_Base_Comissao.AsFloat;
        mExtComissao_RedVlr_Previsao_Ped.AsFloat  := mExtComissao_RedVlr_Previsao_Ped.AsFloat + mPrevPedidoVlr_Comissao.AsFloat;
        mExtComissao_Red.Post;
      end;
    end;}
    if qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S' then
      vAux := StrToFloat(FormatFloat('0.00',0))
    else
      vAux := StrToFloat(FormatFloat('0.00',cdsPrevisao_PedVLR_FRETE_CALCULADO.AsFloat + cdsPrevisao_PedVLR_ICMSSUBST_CALCULADO.AsFloat + cdsPrevisao_PedVLR_IPI_CALCULADO.AsFloat));
    //prc_Gravar_mExtComissao_Red_Prev('P',cdsPrevisao_PedID_VENDEDOR.AsInteger,cdsPrevisao_PedVLR_CALCULADO.AsFloat,cdsPrevisao_PedPERC_COMISSAO.AsFloat,vAux);
    prc_Gravar_mPrevPedido;
    vID_Ant := cdsPrevisao_PedID_VENDEDOR.AsInteger;
    cdsPrevisao_Ped.Next;
  end;
  {if (vID_Ant > 0) then
  begin
    if mPrevPedido.Locate('ID_VENDEDOR',vID_Ant,[loCaseInsensitive]) then
    begin
      if mExtComissao_RedID_Vendedor.AsInteger <> vID_Ant then
        mExtComissao_Red.Locate('ID_VENDEDOR',vID_Ant,[loCaseInsensitive]);
      mExtComissao_Red.Edit;
      mExtComissao_RedBase_Previsao_Ped.AsFloat := mExtComissao_RedBase_Previsao_Ped.AsFloat + mPrevPedidoVlr_Base_Comissao.AsFloat;
      mExtComissao_RedVlr_Previsao_Ped.AsFloat  := mExtComissao_RedVlr_Previsao_Ped.AsFloat + mPrevPedidoVlr_Comissao.AsFloat;
      mExtComissao_Red.Post;
    end;
  end;}
  mPrevPedido.First;
  while not mPrevPedido.Eof do
  begin
    prc_Gravar_mExtComissao_Red_Prev('P',mPrevPedidoID_VENDEDOR.AsInteger,mPrevPedidoVlr_Base_Comissao.AsFloat,mPrevPedidoVlr_Comissao.AsFloat,vAux);
    mPrevPedido.Next;
  end;
end;

procedure TDMCadExtComissao.prc_Gravar_mExtComissao_Red_Prev(Tipo: String; ID_Vendedor: Integer; Vlr_Base, Percentual, Vlr_Outros: Real);
var
  vAux: Real;
begin
  if mExtComissao_Red.Locate('ID_VENDEDOR',ID_Vendedor,[loCaseInsensitive]) then
    mExtComissao_Red.Edit
  else
  begin
    mExtComissao_Red.Insert;
    mExtComissao_RedID_Vendedor.AsInteger := ID_Vendedor;
    if cdsVendedor.Locate('CODIGO',mExtComissao_RedID_Vendedor.AsInteger,[loCaseInsensitive]) then
      mExtComissao_RedNomeVendedor.AsString := cdsVendedorNOME.AsString;
  end;

  if Tipo = 'D' then
  begin
    mExtComissao_RedBase_Comissao.AsFloat := StrToFloat(FormatFloat('0.00',mExtComissao_RedBase_Comissao.AsFloat + Vlr_Base + Vlr_Outros));
    vAux := 0;
    if (StrToFloat(FormatFloat('0.00',Vlr_Base)) > 0) and (StrToFloat(FormatFloat('0.000',Percentual)) > 0) then
      vAux := StrToFloat(FormatFloat('0.00',Vlr_Base * Percentual / 100));
    vEntrada_Ext := StrToFloat(FormatFloat('0.00',vEntrada_Ext + vAux));
    mExtComissao_RedVlr_Comissao.AsFloat := StrToFloat(FormatFloat('0.00',mExtComissao_RedVlr_Comissao.AsFloat + vAux));

    mExtComissao_RedBase_Previsao_Dup.AsFloat := StrToFloat(FormatFloat('0.00',mExtComissao_RedBase_Previsao_Dup.AsFloat + Vlr_Base));
    mExtComissao_RedVlr_Previsao_Dup.AsFloat  := StrToFloat(FormatFloat('0.00',mExtComissao_RedVlr_Previsao_Dup.AsFloat + vAux));
    vPrevisao_Dup_Ext                         := StrToFloat(FormatFloat('0.00',vPrevisao_Dup_Ext + vAux));
  end
  else
  if Tipo = 'P' then
  begin
    mExtComissao_RedBase_Comissao.AsFloat := mExtComissao_RedBase_Comissao.AsFloat + Vlr_Base;
    mExtComissao_RedBase_Previsao_Ped.AsFloat := StrToFloat(FormatFloat('0.00',mExtComissao_RedBase_Previsao_Ped.AsFloat + Vlr_Base));
    mExtComissao_RedVlr_Previsao_Ped.AsFloat  := StrToFloat(FormatFloat('0.00',mExtComissao_RedVlr_Previsao_Ped.AsFloat + Percentual));
    vPrevisao_Ped_Ext                         := StrToFloat(FormatFloat('0.00',vPrevisao_Ped_Ext + Percentual));
    mExtComissao_RedVlr_Comissao.AsFloat := StrToFloat(FormatFloat('0.00',mExtComissao_RedVlr_Comissao.AsFloat + Percentual));
  end;
  mExtComissao_Red.Post;
end;

procedure TDMCadExtComissao.mExtComissao_RedNewRecord(DataSet: TDataSet);
begin
  mExtComissao_RedBase_Comissao.AsFloat     := 0;
  mExtComissao_RedVlr_Comissao.AsFloat      := 0;
  mExtComissao_RedVlr_Entrada.AsFloat       := 0;
  mExtComissao_RedVlr_Pagamento.AsFloat     := 0;
  mExtComissao_RedVlr_Adiantamento.AsFloat  := 0;
  mExtComissao_RedVlr_Devolucao.AsFloat     := 0;
  mExtComissao_RedBase_Previsao_Dup.AsFloat := 0;
  mExtComissao_RedBase_Previsao_Ped.AsFloat := 0;
  mExtComissao_RedVlr_Previsao_Ped.AsFloat  := 0;
  mExtComissao_RedVlr_Previsao_Dup.AsFloat  := 0;
end;

procedure TDMCadExtComissao.cdsPrevisaoCalcFields(DataSet: TDataSet);
var
  vAux: Real;
begin
  vAux := 0;
  //if (StrToFloat(FormatFloat('0.00',cdsPrevisaoVLR_RESTANTE.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',cdsPrevisaoPERC_COMISSAO.AsFloat)) > 0) then
  //  vAux := StrToFloat(FormatFloat('0.00',cdsPrevisaoVLR_RESTANTE.AsFloat * cdsPrevisaoPERC_COMISSAO.AsFloat / 100));
  if (StrToFloat(FormatFloat('0.00',cdsPrevisaoVLR_BASE_COMISSAO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',cdsPrevisaoPERC_COMISSAO.AsFloat)) > 0) then
    vAux := StrToFloat(FormatFloat('0.00',cdsPrevisaoVLR_BASE_COMISSAO.AsFloat * cdsPrevisaoPERC_COMISSAO.AsFloat / 100));
  cdsPrevisaoVlr_Comissao.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
end;

procedure TDMCadExtComissao.cdsPrevisao_PedCalcFields(DataSet: TDataSet);
var
  vAux: Real;
begin
  vAux := 0;
  if (StrToFloat(FormatFloat('0.00',cdsPrevisao_PedVLR_CALCULADO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',cdsPrevisao_PedPERC_COMISSAO.AsFloat)) > 0) then
    vAux := StrToFloat(FormatFloat('0.00',cdsPrevisao_PedVLR_CALCULADO.AsFloat * cdsPrevisao_PedPERC_COMISSAO.AsFloat / 100));
  cdsPrevisao_PedVlr_Comissao.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
end;

procedure TDMCadExtComissao.cdsExtComissaoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
var
  vMSGAux : String;  
begin
  if trim(e.Message) <> '' then
  begin
    vMSGAux := e.Message + #13 + #13 + '*** Comissao nao gravada!';
    MessageDlg(e.Message + #13 + #13 + '*** Comissão não gravada!', mtError, [mbOk], 0);
    uGrava_Erro.prc_Gravar('ExtComissao','',vMSGAux,DateToStr(Date),TimeToStr(Now));
  end;
end;

procedure TDMCadExtComissao.mExtPedidoNewRecord(DataSet: TDataSet);
begin
  mExtPedidoVlr_Base.AsFloat     := 0;
  mExtPedidoVlr_Comissao.AsFloat := 0;
end;

procedure TDMCadExtComissao.cdsPedido_VendCalcFields(DataSet: TDataSet);
begin
  if (StrToFloat(FormatFloat('0.0000',cdsPedido_VendPERC_COMISSAO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',cdsPedido_VendVLR_TOTAL.AsFloat)) > 0) then
    cdsPedido_VendclVlr_Comissao.AsFloat := StrToFloat(FormatFloat('0.00',(cdsPedido_VendPERC_COMISSAO.AsFloat * cdsPedido_VendVLR_TOTAL.AsFloat) / 100))
  else
    cdsPedido_VendclVlr_Comissao.AsFloat := StrToFloat(FormatFloat('0.00',0));
end;

function TDMCadExtComissao.fnc_Busca_Metas(Ano, Mes, ID_Vendedor : Integer): Real;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT VLR_META ' +
                         ' FROM METAS_VENDEDOR ' +
                         ' WHERE ANO <= :Ano ' +
                         '   AND MES <= :Mes ' +
                         '   AND ID_VENDEDOR = :ID_Vendedor ';
    sds.ParamByName('Ano').AsInteger := Ano;
    sds.ParamByName('Mes').AsInteger := Mes;
    sds.ParamByName('ID_Vendedor').AsInteger := ID_Vendedor;
    sds.Open;
    Result := StrToFloat(FormatFloat('0.00',sds.FieldByName('VLR_META').AsFloat));
  finally
    FreeAndNil(sds);
  end;
end;

function TDMCadExtComissao.fnc_Busca_Vendas(Ano, Mes,
  ID_Vendedor: Integer): Real;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT VALOR ' +
                         ' FROM METAS_ACUM ' +
                         ' WHERE ANO = :Ano ' +
                         '   AND MES = :Mes ' +
                         '   AND ID_VENDEDOR = :ID_Vendedor ';
    sds.ParamByName('Ano').AsInteger := Ano;
    sds.ParamByName('Mes').AsInteger := Mes;
    sds.ParamByName('ID_Vendedor').AsInteger := ID_Vendedor;
    sds.Open;
    Result := StrToFloat(FormatFloat('0.00',sds.FieldByName('VALOR').AsFloat));
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadExtComissao.prc_Gravar_mPrevPedido;
var
  vBase : Real;
begin
  if mPrevPedido.Locate('ID_Pedido',cdsPrevisao_PedID.AsInteger,[loCaseInsensitive]) then
  begin
    mPrevPedido.Edit;
    if qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S' then
      vBase := StrToFloat(FormatFloat('0.00',cdsPrevisao_PedVLR_CALCULADO.AsFloat))
    else
      vBase := StrToFloat(FormatFloat('0.00',cdsPrevisao_PedVLR_CALCULADO.AsFloat
                                            + cdsPrevisao_PedVLR_FRETE_CALCULADO.AsFloat + cdsPrevisao_PedVLR_ICMSSUBST_CALCULADO.AsFloat + cdsPrevisao_PedVLR_IPI_CALCULADO.AsFloat));
    mPrevPedidoVlr_Base_Comissao.AsFloat := StrToFloat(FormatFloat('0.00',mPrevPedidoVlr_Base_Comissao.AsFloat + vBase));
  end
  else
  begin
    mPrevPedido.Insert;
    mPrevPedidoFilial.AsInteger          := cdsPrevisao_PedFILIAL.AsInteger;
    mPrevPedidoID_Vendedor.AsInteger     := cdsPrevisao_PedID_VENDEDOR.AsInteger;
    mPrevPedidoID_Pedido.AsInteger       := cdsPrevisao_PedID.AsInteger;
    mPrevPedidoNum_Pedido.AsInteger      := cdsPrevisao_PedNUM_PEDIDO.AsInteger;
    mPrevPedidoPedido_Cliente.AsString   := cdsPrevisao_PedPEDIDO_CLIENTE.AsString;
    mPrevPedidoNome_Cliente.AsString     := cdsPrevisao_PedNOME_CLIENTE.AsString;
    mPrevPedidoVlr_Base_Comissao.AsFloat := StrToFloat(FormatFloat('0.00',fnc_Busca_Vlr_Entrada(cdsPrevisao_PedID.AsInteger) * -1));
    mPrevPedidoVlr_Comissao.AsFloat      := 0;
    if qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S' then
      vBase := StrToFloat(FormatFloat('0.00',mPrevPedidoVlr_Base_Comissao.AsFloat + cdsPrevisao_PedVLR_CALCULADO.AsFloat))
    else
      vBase := StrToFloat(FormatFloat('0.00',mPrevPedidoVlr_Base_Comissao.AsFloat + cdsPrevisao_PedVLR_CALCULADO.AsFloat
                                            + cdsPrevisao_PedVLR_FRETE_CALCULADO.AsFloat + cdsPrevisao_PedVLR_ICMSSUBST_CALCULADO.AsFloat + cdsPrevisao_PedVLR_IPI_CALCULADO.AsFloat));
    mPrevPedidoVlr_Base_Comissao.AsFloat := StrToFloat(FormatFloat('0.00',vBase));
  end;
  mPrevPedidoVlr_Comissao.AsFloat := mPrevPedidoVlr_Comissao.AsFloat + (StrToFloat(FormatFloat('0.00',cdsPrevisaoPERC_COMISSAO.AsFloat * vBase / 100)));
  mPrevPedido.Post;
end;

function TDMCadExtComissao.fnc_Busca_Vlr_Entrada(ID: Integer) : Real;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT VLR_ENTRADA ' +
                         ' FROM PEDIDO ' +
                         ' WHERE ID = :ID ';
    sds.ParamByName('ID').AsInteger := ID;
    sds.Open;
    Result := StrToFloat(FormatFloat('0.00',sds.FieldByName('VLR_ENTRADA').AsFloat));
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadExtComissao.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.


