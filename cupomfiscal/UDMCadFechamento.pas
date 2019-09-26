unit UDMCadFechamento;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, Variants, Printers, Graphics;

type
  TDMCadFechamento = class(TDataModule)
    sdsFechamento: TSQLDataSet;
    dspFechamento: TDataSetProvider;
    cdsFechamento: TClientDataSet;
    dsFechamento: TDataSource;
    sdsTipoCobranca: TSQLDataSet;
    dspTipoCobranca: TDataSetProvider;
    cdsTipoCobranca: TClientDataSet;
    dsTipoCobranca: TDataSource;
    dsFechamento_Mestre: TDataSource;
    sdsFechamento_Itens: TSQLDataSet;
    cdsFechamento_Itens: TClientDataSet;
    dsFechamento_Itens: TDataSource;
    sdsFechamento_Consulta: TSQLDataSet;
    dspFechamento_Consulta: TDataSetProvider;
    cdsFechamento_Consulta: TClientDataSet;
    dsFechamento_Consulta: TDataSource;
    sdsFechamentoID: TIntegerField;
    sdsFechamentoTIPO_FECHAMENTO: TStringField;
    cdsFechamentoID: TIntegerField;
    cdsFechamentoTIPO_FECHAMENTO: TStringField;
    sdsFechamento_ItensID: TIntegerField;
    sdsFechamento_ItensITEM: TIntegerField;
    sdsFechamento_ItensID_TIPOCOBRANCA: TIntegerField;
    sdsFechamento_ItensVLR_ENTRADA: TFloatField;
    sdsFechamento_ItensVLR_SAIDA: TFloatField;
    sdsFechamento_ItensVLR_SALDO: TFloatField;
    sdsFechamento_ItensVLR_INFORMADO: TFloatField;
    cdsFechamentosdsFechamento_Itens: TDataSetField;
    cdsFechamento_ConsultaID: TIntegerField;
    cdsFechamento_ConsultaTIPO_FECHAMENTO: TStringField;
    sdsFechamentoID_CONTA: TIntegerField;
    cdsFechamentoID_CONTA: TIntegerField;
    cdsFechamento_ConsultaID_CONTA: TIntegerField;
    cdsFechamento_ConsultaNOME_CONTA: TStringField;
    cdsTipoCobrancaID: TIntegerField;
    cdsTipoCobrancaNOME: TStringField;
    sdsFechamentoFILIAL: TIntegerField;
    cdsFechamentoFILIAL: TIntegerField;
    cdsFechamento_ConsultaFILIAL: TIntegerField;
    cdsFechamento_ConsultaNOME_FILIAL: TStringField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosID_CONTA_FECHAMENTO: TIntegerField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    sdsFilialID: TIntegerField;
    sdsFilialNOME: TStringField;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    sdsFilialNOME_INTERNO: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFechamento_ItensID: TIntegerField;
    cdsFechamento_ItensITEM: TIntegerField;
    cdsFechamento_ItensID_TIPOCOBRANCA: TIntegerField;
    cdsFechamento_ItensVLR_ENTRADA: TFloatField;
    cdsFechamento_ItensVLR_SAIDA: TFloatField;
    cdsFechamento_ItensVLR_SALDO: TFloatField;
    cdsFechamento_ItensVLR_INFORMADO: TFloatField;
    sdsFinanceiro: TSQLDataSet;
    dspFinanceiro: TDataSetProvider;
    cdsFinanceiro: TClientDataSet;
    sdsFinanceiroVLR_ENTRADA: TFloatField;
    sdsFinanceiroVLR_SAIDA: TFloatField;
    sdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField;
    sdsFinanceiroNOME_FORMA_PAGAMENTO: TStringField;
    cdsFinanceiroVLR_ENTRADA: TFloatField;
    cdsFinanceiroVLR_SAIDA: TFloatField;
    cdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField;
    cdsFinanceiroNOME_FORMA_PAGAMENTO: TStringField;
    sdsFechamentoVLR_ENTRADA: TFloatField;
    sdsFechamentoVLR_SAIDA: TFloatField;
    sdsFechamentoVLR_SALDO: TFloatField;
    cdsFechamentoVLR_ENTRADA: TFloatField;
    cdsFechamentoVLR_SAIDA: TFloatField;
    cdsFechamentoVLR_SALDO: TFloatField;
    qUltimoFechamento: TSQLQuery;
    sdsFechamentoDATA: TDateField;
    cdsFechamentoDATA: TDateField;
    cdsFechamento_ConsultaVLR_ENTRADA: TFloatField;
    cdsFechamento_ConsultaVLR_SAIDA: TFloatField;
    cdsFechamento_ConsultaVLR_SALDO: TFloatField;
    cdsFechamento_ConsultaDATA: TDateField;
    qUltimoFechamentoDATA: TDateField;
    sdsContas: TSQLDataSet;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    dsContas: TDataSource;
    sdsContasID: TIntegerField;
    sdsContasNOME: TStringField;
    cdsContasID: TIntegerField;
    cdsContasNOME: TStringField;
    sdsFechamentoVLR_INICIAL: TFloatField;
    cdsFechamentoVLR_INICIAL: TFloatField;
    cdsFechamento_ConsultaVLR_INICIAL: TFloatField;
    qDuplicidade: TSQLQuery;
    qDuplicidadeID: TIntegerField;
    qDuplicidadeDATA: TDateField;
    sdsFechamentoVLR_SUBSALDO: TFloatField;
    cdsFechamentoVLR_SUBSALDO: TFloatField;
    cdsFechamento_ConsultaVLR_SUBSALDO: TFloatField;
    sdsFechamentoVLR_INFORMADO: TFloatField;
    sdsFechamentoVLR_DIFERENCA: TFloatField;
    cdsFechamentoVLR_INFORMADO: TFloatField;
    cdsFechamentoVLR_DIFERENCA: TFloatField;
    cdsFechamento_ConsultaVLR_INFORMADO: TFloatField;
    cdsFechamento_ConsultaVLR_DIFERENCA: TFloatField;
    sdsFechamento_Sup: TSQLDataSet;
    cdsFechamento_Sup: TClientDataSet;
    dsFechamento_Sup: TDataSource;
    sdsFechamento_SupID: TIntegerField;
    sdsFechamento_SupITEM: TIntegerField;
    sdsFechamento_SupDATA: TSQLTimeStampField;
    sdsFechamento_SupVALOR: TFloatField;
    cdsFechamento_SupID: TIntegerField;
    cdsFechamento_SupITEM: TIntegerField;
    cdsFechamento_SupDATA: TSQLTimeStampField;
    cdsFechamento_SupVALOR: TFloatField;
    sdsFechamentoVLR_SANGRIA: TFloatField;
    cdsFechamentoVLR_SANGRIA: TFloatField;
    cdsFechamento_ConsultaVLR_SANGRIA: TFloatField;
    sdsFechamentoTERMINAL_ID: TSmallintField;
    cdsFechamentoTERMINAL_ID: TSmallintField;
    cdsFechamento_ConsultaTERMINAL_ID: TSmallintField;
    cdsFechamento_ConsultaTERMINAL: TStringField;
    sdsFechamentoTERMINAL: TStringField;
    cdsFechamentoTERMINAL: TStringField;
    qCaixaAberto: TSQLQuery;
    qCaixaAbertoTIPO_FECHAMENTO: TStringField;
    sdsDuplicata: TSQLDataSet;
    dspDuplicata: TDataSetProvider;
    cdsDuplicata: TClientDataSet;
    sdsDuplicataVLR_ENTRADA: TFloatField;
    sdsDuplicataNOME_FORMA_PAGAMENTO: TStringField;
    cdsDuplicataVLR_ENTRADA: TFloatField;
    cdsDuplicataNOME_FORMA_PAGAMENTO: TStringField;
    sdsDuplicataID_TIPOCOBRANCA: TIntegerField;
    cdsDuplicataID_TIPOCOBRANCA: TIntegerField;
    sdsVale: TSQLDataSet;
    dspVale: TDataSetProvider;
    cdsVale: TClientDataSet;
    sdsValeVLR_VALE: TFloatField;
    cdsValeVLR_VALE: TFloatField;
    qTipoCobranca: TSQLQuery;
    qTipoCobrancaID: TIntegerField;
    qTipoCobrancaNOME: TStringField;
    sdsFechamento_ItensTIPO_COB_NOME: TStringField;
    cdsFechamento_ItensTIPO_COB_NOME: TStringField;
    sdsFechamentoUSUARIO: TStringField;
    cdsFechamentoUSUARIO: TStringField;
    cdsFechamento_ConsultaUSUARIO: TStringField;
    cdsFechamentosdsFechamento_Sup: TDataSetField;
    sdsFechamento_San: TSQLDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    FloatField1: TFloatField;
    cdsFechamento_San: TClientDataSet;
    dsFechamento_San: TDataSource;
    cdsFechamentosdsFechamento_San: TDataSetField;
    sdsFechamento_RetIntegerField5: TIntegerField;
    sdsFechamento_RetIntegerField6: TIntegerField;
    sdsFechamento_RetSQLTimeStampField3: TSQLTimeStampField;
    sdsFechamento_RetFloatField3: TFloatField;
    cdsFechamento_Ret: TClientDataSet;
    dsFechamento_Ret: TDataSource;
    sdsFechamento_Ret: TSQLDataSet;
    cdsFechamentosdsFechamento_Ret: TDataSetField;
    sdsFechamento_RetES: TStringField;
    sdsFechamento_SupES: TStringField;
    sdsFechamento_SanES: TStringField;
    cdsFechamento_SupES: TStringField;
    cdsFechamento_RetID: TIntegerField;
    cdsFechamento_RetITEM: TIntegerField;
    cdsFechamento_RetDATA: TSQLTimeStampField;
    cdsFechamento_RetVALOR: TFloatField;
    cdsFechamento_RetES: TStringField;
    cdsFechamento_SanID: TIntegerField;
    cdsFechamento_SanITEM: TIntegerField;
    cdsFechamento_SanDATA: TSQLTimeStampField;
    cdsFechamento_SanVALOR: TFloatField;
    cdsFechamento_SanES: TStringField;
    sdsFechamento_ItensNOME_TIPOCOBRANCA: TStringField;
    cdsFechamento_ItensNOME_TIPOCOBRANCA: TStringField;
    cdsTipoCobrancaDINHEIRO: TStringField;
    mContagem: TClientDataSet;
    dsmContagem: TDataSource;
    mContagemID_TIPOCOBRANCA: TIntegerField;
    mContagemNOME_TIPOCOBRANCA: TStringField;
    mContagemVALOR: TCurrencyField;
    sdsFechamento_ItensVLR_CONFERENCIA: TFloatField;
    cdsFechamento_ItensVLR_CONFERENCIA: TFloatField;
    qVerifica_Inf: TSQLQuery;
    sdsFechamentoHRABERTURA: TTimeField;
    cdsFechamentoHRABERTURA: TTimeField;
    sdsFechamentoHRFECHAMENTO: TTimeField;
    cdsFechamentoHRFECHAMENTO: TTimeField;
    sdsFechamentoDTFECHAMENTO: TDateField;
    cdsFechamentoDTFECHAMENTO: TDateField;
    mContagemVALOR_CONFERENCIA: TFloatField;
    qVerifica_InfCONTADOR_INF: TIntegerField;
    qVerifica_InfCONTADOR_CONF: TIntegerField;
    sdsFechamentoNUM_COMANDA: TIntegerField;
    cdsFechamentoNUM_COMANDA: TIntegerField;
    qCaixaAbertoID: TIntegerField;
    sdsProduto_Vendido: TSQLDataSet;
    dspProduto_Vendido: TDataSetProvider;
    cdsProduto_Vendido: TClientDataSet;
    dsProduto_Vendido: TDataSource;
    cdsProduto_VendidoID_PRODUTO: TIntegerField;
    cdsProduto_VendidoREFERENCIA: TStringField;
    cdsProduto_VendidoNOME_PRODUTO: TStringField;
    cdsProduto_VendidoQTD: TFloatField;
    cdsProduto_VendidoVLR_TOTAL: TFloatField;
    cdsFechamento_RetclTipoES: TStringField;
    qCupomParametros: TSQLQuery;
    qCupomParametrosID_CONTAPERDAS: TIntegerField;
    sdsFechamento_RetDESCRICAO: TStringField;
    cdsFechamento_RetDESCRICAO: TStringField;
    sdsFechamento_SupDESCRICAO: TStringField;
    cdsFechamento_SupDESCRICAO: TStringField;
    sdsFechamento_ItensVLR_DIF_INFORMADO: TFloatField;
    sdsFechamento_ItensVLR_DIF_CONFERIDO: TFloatField;
    cdsFechamento_ItensVLR_DIF_INFORMADO: TFloatField;
    cdsFechamento_ItensVLR_DIF_CONFERIDO: TFloatField;
    sdsFechamento_SanDESCRICAO: TStringField;
    cdsFechamento_SanDESCRICAO: TStringField;
    sdsFechamentoVLR_NAO_FATURADO: TFloatField;
    cdsFechamentoVLR_NAO_FATURADO: TFloatField;
    sdsFechamento_ItensVLR_NAO_FATURADO: TFloatField;
    cdsFechamento_ItensVLR_NAO_FATURADO: TFloatField;
    sdsFechamentoDT_HR_CONFERENCIA: TSQLTimeStampField;
    cdsFechamentoDT_HR_CONFERENCIA: TSQLTimeStampField;
    sdsCupomTipoCobranca: TSQLDataSet;
    dspCupomTipoCobranca: TDataSetProvider;
    cdsCupomTipoCobranca: TClientDataSet;
    cdsCupomTipoCobrancaNOME: TStringField;
    cdsCupomTipoCobrancaTOTAL: TFloatField;
    sdsCupomComandas: TSQLDataSet;
    dspCupomComandas: TDataSetProvider;
    cdsCupomComandas: TClientDataSet;
    cdsCupomComandasQTD: TFMTBCDField;
    qCupomParametrosALTURA_SALTO_LINHA: TSmallintField;
    qCupomParametrosIMPRESSORA_FISCAL: TStringField;
    qCupomParametrosIMP_VENDAS_FECHAMENTO: TStringField;
    sdsFechamentoVLR_RECEBIMENTO: TFloatField;
    cdsFechamentoVLR_RECEBIMENTO: TFloatField;
    sdsFinanceiroDup: TSQLDataSet;
    dspFinanceiroDup: TDataSetProvider;
    cdsFinanceiroDup: TClientDataSet;
    sdsFechamento_ItensVLR_RECEBIMENTO: TFloatField;
    cdsFechamento_ItensVLR_RECEBIMENTO: TFloatField;
    cdsFinanceiroDupVLR_ENTRADA: TFloatField;
    cdsFinanceiroDupVLR_SAIDA: TFloatField;
    cdsFinanceiroDupID_FORMA_PAGAMENTO: TIntegerField;
    cdsFinanceiroDupNOME_FORMA_PAGAMENTO: TStringField;
    cdsFinanceiroDupID_CONTA: TIntegerField;
    sdsDetalhamento: TSQLDataSet;
    dspDetalhamento: TDataSetProvider;
    cdsDetalhamento: TClientDataSet;
    dsDetalhamento: TDataSource;
    cdsDetalhamentoVLR_ENTRADA: TFloatField;
    cdsDetalhamentoVLR_SAIDA: TFloatField;
    cdsDetalhamentoID_FORMA_PAGAMENTO: TIntegerField;
    cdsDetalhamentoNOME_FORMA_PAGAMENTO: TStringField;
    cdsDetalhamentoID_CONTA: TIntegerField;
    cdsDetalhamentoDTMOVIMENTO: TDateField;
    cdsDetalhamentoID_TERMINAL: TIntegerField;
    cdsDetalhamentoID_FECHAMENTO: TIntegerField;
    cdsDetalhamentoID: TIntegerField;
    cdsDetalhamentoHISTORICO_COMPL: TStringField;
    cdsDetalhamentoUSUARIO: TStringField;
    cdsDetalhamentoVLR_RECEBIMENTO: TFloatField;
    sdsDetalhamento_Dup: TSQLDataSet;
    dspDetalhamento_Dup: TDataSetProvider;
    cdsDetalhamento_Dup: TClientDataSet;
    dsDetalhamento_Dup: TDataSource;
    cdsDetalhamento_DupVLR_ENTRADA: TFloatField;
    cdsDetalhamento_DupNOME_FORMA_PAGAMENTO: TStringField;
    cdsDetalhamento_DupID_TIPOCOBRANCA: TIntegerField;
    cdsDetalhamento_DupNUMDUPLICATA: TStringField;
    cdsDetalhamento_DupDTVENCIMENTO: TDateField;
    cdsDetalhamento_DupID_PESSOA: TIntegerField;
    cdsDetalhamento_DupNOME_CLIENTE: TStringField;
    cdsDetalhamento_DupUSUARIO: TStringField;
    sdsFechamentoOBS_FECHAMENTO: TStringField;
    sdsFechamentoOBS_CONFERENCIA: TStringField;
    cdsFechamentoOBS_FECHAMENTO: TStringField;
    cdsFechamentoOBS_CONFERENCIA: TStringField;
    sdsTerminal: TSQLDataSet;
    dspTerminal: TDataSetProvider;
    cdsTerminal: TClientDataSet;
    dsTerminal: TDataSource;
    cdsTerminalID: TSmallintField;
    cdsTerminalNOME: TStringField;
    sdsFechamento_ItensFATURAMENTO_BRUTO: TStringField;
    sdsFechamento_ItensFATURAMENTO_LIQUIDO: TStringField;
    cdsFechamento_ItensFATURAMENTO_BRUTO: TStringField;
    cdsFechamento_ItensFATURAMENTO_LIQUIDO: TStringField;
    cdsTipoCobrancaFECHAMENTO_AUTOMATICO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspFechamentoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsFechamentoNewRecord(DataSet: TDataSet);
    procedure cdsFechamento_ItensNewRecord(DataSet: TDataSet);
    procedure cdsFechamento_ItensCalcFields(DataSet: TDataSet);
    procedure cdsFechamento_RetNewRecord(DataSet: TDataSet);
    procedure cdsFechamento_RetBeforePost(DataSet: TDataSet);
    procedure cdsFechamento_RetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    cAvanco: Word;
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    function fnc_Monta_Descricao(Valor: Real; Nome, vPreenchimento: String): String;
  public
    { Public declarations }
    vTotalVendas: Currency;

    vMsgErro: String;
    ctCommand: String;
    ctConsulta: String;
    ctDetalhamento: String;
    ctDetalhamento_Dup: String;
    vTipo_Caixa: String;
    vItem_Sangria: Integer;
    vTipo_Valor: String;  //I=Informado  C=Conferência X=Cancelamento
    vInfConferencia: String; //S=Confirma a Conferência   N=Não   28/12/2016

    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Inserir_Itens;
    function fnc_Possui_Erro: Boolean;
    procedure prc_Imprime_Vlr_Informado(vID: Integer = 0);
    procedure prc_Imprime_Vlr_InformadoC(vID: Integer = 0);
    procedure prc_Abrir_Financeiro;
    procedure prc_Le_Financeiro(Fechamento: Boolean = False);
    procedure prc_Recalcular_Inf;
    procedure prc_Imprime_FechamentoW(vID: Integer); //Write
    procedure prc_Imprime_FechamentoC(vID: Integer); //Canvas
    procedure prc_Imprime_ReciboW(vItem: Integer; vES: String); //Write
    procedure prc_Imprime_ReciboC(vItem: Integer; vES: String); //Canvas
  end;

var
  DMCadFechamento: TDMCadFechamento;

const
  IPula   = #13;       //Pula 1 linha
  IEspac1 = #27#48;    //Define espaçamento entre linhas de 1/8"
  IEspac2 = #27#49;    //Define espaçamento entre linhas de 7/72"
  IEspac3 = #27#50;    //Define espaçamento entre linhas de 1/6"
  IEject  = #12;       //Ejeta página
  I80car  = #27#80#18; //Imprime com 80 colunas
  I96car  = #27#77#18; //Imprime com 96 colunas
  I137car = #27#80#15; //Imprime com 137 colunas
  I160car = #27#77#15; //Imprime com 160 colunas
  IDuploG = #27#14#18; //Imprime em caracter grande largura dupla
  IDuploP = #27#14#15; //Imprime em caracter pequeno largura dupla
  IDuploC = #27#20;    //Cancela largura dupla
  INegAti = #27#71;    //Imprime em negrito
  INegDes = #27#72;    //Cancela modo negrito
  IItaAti = #27#52;    //Imprime em Itálico
  IItaDes = #27#53;    //Cancela modo Itálico

implementation

uses DmdDatabase, uUtilPadrao, LogProvider;

{$R *.dfm}

{ TDMCadFechamento}

procedure TDMCadFechamento.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsFechamento.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('FECHAMENTO',0);

  cdsFechamento.Insert;
  cdsFechamentoID.AsInteger          := vAux;
  cdsFechamentoHRABERTURA.AsDateTime := Now;
end;

procedure TDMCadFechamento.prc_Excluir;
begin
  if not(cdsFechamento.Active) or (cdsFechamento.IsEmpty) then
    exit;
  cdsFechamento_Itens.First;
  while not cdsFechamento_Itens.Eof do
    cdsFechamento_Itens.Delete;

  while not cdsFechamento_Sup.IsEmpty do
    cdsFechamento_Sup.Delete;

  while not cdsFechamento_San.Eof do
    cdsFechamento_San.Delete;

  cdsFechamento.Delete;
  cdsFechamento.ApplyUpdates(0);
end;

procedure TDMCadFechamento.prc_Gravar;
begin
  cdsFechamento_Itens.First;
  cdsFechamento_Itens.Last;
  cdsFechamento_San.First;
  cdsFechamento_San.Last;
  cdsFechamento_Sup.First;
  cdsFechamento_Sup.Last;

  cdsFechamento.ApplyUpdates(0);
end;

procedure TDMCadFechamento.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsFechamento.Close;
  sdsFechamento.CommandText := ctCommand;
  if ID <> 0 then
    sdsFechamento.CommandText := sdsFechamento.CommandText + ' WHERE FI.ID = ' + IntToStr(ID);
  cdsFechamento.Open;
  cdsFechamento_Itens.Close;
  cdsFechamento_Itens.Open;
  cdsFechamento_Sup.Close;
  cdsFechamento_Sup.Open;
  cdsFechamento_San.Close;
  cdsFechamento_San.Open;
  cdsFechamento_Ret.Close;
  cdsFechamento_Ret.Open;
end;

procedure TDMCadFechamento.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand          := sdsFechamento.CommandText;
  ctConsulta         := sdsFechamento_Consulta.CommandText;
  ctDetalhamento     := sdsDetalhamento.CommandText;
  ctDetalhamento_Dup := sdsDetalhamento_Dup.CommandText;
  vItem_Sangria := 0;
  qParametros.Open;
  cdsTipoCobranca.Open;
  cdsContas.Open;
  cdsFilial.Open;
  cdsTerminal.Open;
  qCupomParametros.Open;

  cAvanco := qCupomParametrosALTURA_SALTO_LINHA.AsInteger;

//*** Logs Implantado na versão
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

procedure TDMCadFechamento.prc_Inserir_Itens;
var
  vItemAux: Integer;
begin
  cdsFechamento_Itens.Last;
  vItemAux := cdsFechamento_ItensITEM.AsInteger;
  vItemAux := vItemAux + 1;

  cdsFechamento_Itens.Insert;
  cdsFechamento_ItensID.AsInteger   := cdsFechamentoID.AsInteger;
  cdsFechamento_ItensITEM.AsInteger := vItemAux;
end;

procedure TDMCadFechamento.dspFechamentoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadFechamento.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadFechamento.cdsFechamentoNewRecord(DataSet: TDataSet);
begin
  cdsFechamentoVLR_ENTRADA.AsFloat   := 0;
  cdsFechamentoVLR_SAIDA.AsFloat     := 0;
  cdsFechamentoVLR_SALDO.AsFloat     := 0;
  cdsFechamentoVLR_INICIAL.AsFloat   := 0;
  cdsFechamentoVLR_NAO_FATURADO.AsFloat := 0;
  cdsFechamentoUSUARIO.AsString      := vUsuario;
  cdsFechamentoNUM_COMANDA.AsInteger := 0;
end;

function TDMCadFechamento.fnc_Possui_Erro: Boolean;
begin
  Result   := True;
  vMsgErro := '';
  if cdsFechamentoDATA.AsDateTime <= 10 then
    vMsgErro := vMsgErro + #13 + '*** Data não informada!';
  if cdsFechamentoFILIAL.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Filial não informada!';
  if cdsFechamentoID_CONTA.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Conta não informada!';
  if (cdsFechamento_Itens.IsEmpty) and (vTipo_Caixa = 'F') then
    vMsgErro := vMsgErro + #13 + '*** Não foi informada nenhuma forma de pagamento!';
  //if (cdsFechamentoTIPO_FECHAMENTO.AsString <> 'E') and (cdsFechamentoTIPO_FECHAMENTO.AsString <> 'S') then
  //  vMsgErro := vMsgErro + #13 + '*** Fechamento não informado!';
  if trim(vMsgErro) <> '' then
    exit;
  Result := False;
end;

procedure TDMCadFechamento.cdsFechamento_ItensNewRecord(DataSet: TDataSet);
begin
  cdsFechamento_ItensVLR_ENTRADA.AsFloat     := 0;
  cdsFechamento_ItensVLR_RECEBIMENTO.AsFloat := 0;
  cdsFechamento_ItensVLR_INFORMADO.AsFloat   := 0;
  cdsFechamento_ItensVLR_SAIDA.AsFloat       := 0;
  cdsFechamento_ItensVLR_SALDO.AsFloat       := 0;
end;

procedure TDMCadFechamento.cdsFechamento_ItensCalcFields(DataSet: TDataSet);
begin
  if cdsFechamento_ItensID_TIPOCOBRANCA.AsInteger > 0 then
  begin
    qTipoCobranca.Close;
    qTipoCobranca.ParamByName('ID').AsInteger := cdsFechamento_ItensID_TIPOCOBRANCA.AsInteger;
    qTipoCobranca.Open;
    cdsFechamento_ItensTIPO_COB_NOME.AsString := qTipoCobrancaNOME.AsString;
  end
  else
    cdsFechamento_ItensTIPO_COB_NOME.Clear;
end;

procedure TDMCadFechamento.cdsFechamento_RetNewRecord(DataSet: TDataSet);
begin
  cdsFechamento_RetDATA.AsDateTime := Now;
end;

procedure TDMCadFechamento.cdsFechamento_RetBeforePost(DataSet: TDataSet);
begin
  if cdsFechamento_RetITEM.AsInteger <= 0 then
  begin
    vItem_Sangria := vItem_Sangria + 1;
    cdsFechamento_RetITEM.AsInteger := vItem_Sangria;
  end;
end;

procedure TDMCadFechamento.prc_Imprime_Vlr_Informado(vID: Integer = 0);
var
  vLinha: Integer;
  vTexto: String;
  i: Integer;
  vTexto2: String;
  f: TextFile;
begin
  if (vID = 0) and (cdsFechamento_ConsultaID.AsInteger = 0) then
    exit;
  if vID > 0 then
    prc_Localizar(vID)
  else
    prc_Localizar(cdsFechamento_ConsultaID.AsInteger);
  AssignFile(f,vPorta);
  ReWrite(f);

  vLinha := 1;
  WriteLn(f,IDuploG + cdsFilialNOME_INTERNO.AsString + IDuploC);
  WriteLn(f);
  WriteLn(f,INegAti + 'FECHAMENTO DE CAIXA' + INegDes);
  WriteLn(f,'--------------------------------------');
  WriteLn(f,'   Usuario: '+ cdsFechamentoUSUARIO.AsString);
  WriteLn(f,'  Terminal: '+ cdsFechamentoTERMINAL.AsString);
  WriteLn(f,'  Abertura: '+ cdsFechamentoDATA.AsString + ' - ' + cdsFechamentoHRABERTURA.AsString);
  WriteLn(f,'Fechamento: '+ cdsFechamentoDTFECHAMENTO.AsString + ' - ' + cdsFechamentoHRFECHAMENTO.AsString);
  WriteLn(f,'======================================');
  WriteLn(f,INegAti + 'VALORES INFORMADOS' + INegDes);
  WriteLn(f,'--------------------------------------');

  cdsFechamento_Itens.First;
  while not cdsFechamento_Itens.Eof do
  begin
    vTexto := fnc_Monta_Descricao(cdsFechamento_ItensVLR_INFORMADO.AsFloat,
                                  '      * ' + cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString,'.');
    WriteLn(f,vTexto);
    cdsFechamento_Itens.Next;
  end;
  WriteLn(f,'--------------------------------------');

  vTexto := fnc_Monta_Descricao(cdsFechamentoVLR_INFORMADO.AsFloat,'Saldo Total','.');
  WriteLn(f,INegAti + vTexto + INegDes);
  WriteLn(f,'======================================');
  vTexto := fnc_Monta_Descricao(cdsFechamentoVLR_INICIAL.AsFloat,'Suprimento','.');
  WriteLn(f,vTexto);
  vTexto := fnc_Monta_Descricao(cdsFechamentoVLR_SANGRIA.AsFloat,'Sangria','.');
  WriteLn(f,vTexto);
  WriteLn(f);
  WriteLn(f);
  WriteLn(f,'Caixa:................................');
  WriteLn(f);
  WriteLn(f);
  WriteLn(f,'Responsavel:..........................');

  for i := 1 to 5 do
    WriteLn(f);

  CloseFile(f);
end;

function TDMCadFechamento.fnc_Monta_Descricao(Valor: Real; Nome, vPreenchimento: String): String;
var
  vTexto: String;
  vTexto2: String;
  i: Integer;
begin
  vTexto  := '';
  vTexto2 := 'R$ ' + FormatFloat('###,###,##0.00',Valor);
  for i := 1 to 40 - (Length(Nome) + Length(vTexto2)) do
    vTexto := vTexto + vPreenchimento;
  Result := Nome + vTexto + vTexto2;
end;

procedure TDMCadFechamento.cdsFechamento_RetCalcFields(DataSet: TDataSet);
begin
  if cdsFechamento_RetES.AsString = 'E' then
    cdsFechamento_RetclTipoES.AsString := 'Suprimento'
  else
  if cdsFechamento_RetES.AsString = 'S' then
    cdsFechamento_RetclTipoES.AsString := 'Sangria';
end;

procedure TDMCadFechamento.prc_Abrir_Financeiro;
begin
  qCupomParametros.Open;

  cdsFinanceiro.Close;
  sdsFinanceiro.ParamByName('ID_CONTA').AsInteger     := cdsFechamentoID_CONTA.AsInteger;
  sdsFinanceiro.ParamByName('FILIAL').AsInteger       := cdsFechamentoFILIAL.AsInteger;
  sdsFinanceiro.ParamByName('DTMOVIMENTO').AsDate     := cdsFechamentoDATA.AsDateTime;
  sdsFinanceiro.ParamByName('TERMINAL').AsInteger     := cdsFechamentoTERMINAL_ID.AsInteger;
  sdsFinanceiro.ParamByName('FECHAMENTO').AsInteger   := cdsFechamentoID.AsInteger;
  sdsFinanceiro.ParamByName('ID_CONTA_PER').AsInteger := qCupomParametrosID_CONTAPERDAS.AsInteger;
  cdsFinanceiro.Open;

  cdsFinanceiroDup.Close;
  sdsFinanceiroDup.ParamByName('ID_CONTA').AsInteger     := cdsFechamentoID_CONTA.AsInteger;
  sdsFinanceiroDup.ParamByName('FILIAL').AsInteger       := cdsFechamentoFILIAL.AsInteger;
  sdsFinanceiroDup.ParamByName('DTMOVIMENTO').AsDate     := cdsFechamentoDATA.AsDateTime;
  sdsFinanceiroDup.ParamByName('TERMINAL').AsInteger     := cdsFechamentoTERMINAL_ID.AsInteger;
  sdsFinanceiroDup.ParamByName('FECHAMENTO').AsInteger   := cdsFechamentoID.AsInteger;
  sdsFinanceiroDup.ParamByName('ID_CONTA_PER').AsInteger := qCupomParametrosID_CONTAPERDAS.AsInteger;
  cdsFinanceiroDup.Open;

  cdsDuplicata.Close;
  sdsDuplicata.ParamByName('FILIAL').AsInteger   := cdsFechamentoFILIAL.AsInteger;
  sdsDuplicata.ParamByName('DTMOVIMENTO').AsDate := cdsFechamentoDATA.AsDateTime;
  sdsDuplicata.ParamByName('TERM1').AsInteger    := cdsFechamentoTERMINAL_ID.AsInteger;
  if qParametrosID_CONTA_FECHAMENTO.AsInteger <= 0 then
    sdsDuplicata.ParamByName('ID_CONTA').AsInteger := 1
  else
    sdsDuplicata.ParamByName('ID_CONTA').AsInteger := qParametrosID_CONTA_FECHAMENTO.AsInteger;
  sdsDuplicata.ParamByName('ID_FECHAMENTO').AsInteger := cdsFechamentoID.AsInteger;
  cdsDuplicata.Open;

  cdsVale.Close;
  sdsVale.ParamByName('FILIAL').AsInteger   := cdsFechamentoFILIAL.AsInteger;
  sdsVale.ParamByName('DTMOVIMENTO').AsDate := cdsFechamentoDATA.AsDateTime;
  cdsVale.Open;
end;

procedure TDMCadFechamento.prc_Le_Financeiro(Fechamento: Boolean = False);
var
  vVlrEntrada, vVlrSaida, vVlrInformado, vVlrNFaturado, vVlrReceb, vVlrRecDin: Real;
  vTipoDinheiro: Integer;
  vVlrSangria, vVlrSupri: Real;
begin
  cdsFinanceiro.First;
  while not cdsFinanceiro.Eof do
  begin
    if cdsFechamento_Itens.Locate('ID;ID_TIPOCOBRANCA',VarArrayOf([cdsFechamentoID.AsInteger,cdsFinanceiroID_FORMA_PAGAMENTO.AsInteger]),[locaseinsensitive]) then
      cdsFechamento_Itens.Edit
    else
    begin
      prc_Inserir_Itens;
      cdsFechamento_ItensID_TIPOCOBRANCA.AsInteger := cdsFinanceiroID_FORMA_PAGAMENTO.AsInteger;
    end;
    cdsFechamento_ItensVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',cdsFechamento_ItensVLR_ENTRADA.AsFloat +
                                                                            cdsFinanceiroVLR_ENTRADA.AsFloat));
    cdsFechamento_ItensVLR_SAIDA.AsFloat   := StrToFloat(FormatFloat('0.00',cdsFinanceiroVLR_SAIDA.AsFloat));
    cdsFechamento_ItensVLR_SALDO.AsFloat   := StrToFloat(FormatFloat('0.00',cdsFechamento_ItensVLR_ENTRADA.AsFloat -
                                                                            cdsFechamento_ItensVLR_SAIDA.AsFloat));
    cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString := cdsFinanceiroNOME_FORMA_PAGAMENTO.AsString;
    if cdsFechamento_ItensFATURAMENTO_BRUTO.AsString = 'N' then
      cdsFechamento_ItensVLR_NAO_FATURADO.AsCurrency := StrToFloat(FormatFloat('0.00',cdsFinanceiroVLR_ENTRADA.AsFloat));
    cdsFechamento_Itens.Post;
    vTotalVendas := vTotalVendas + cdsFechamento_ItensVLR_ENTRADA.AsFloat;
    cdsFinanceiro.Next;
  end;
  cdsFinanceiroDup.First;
  while not cdsFinanceiroDup.Eof do
  begin
    if cdsFechamento_Itens.Locate('ID;ID_TIPOCOBRANCA',VarArrayOf([cdsFechamentoID.AsInteger,cdsFinanceiroDupID_FORMA_PAGAMENTO.AsInteger]),[locaseinsensitive]) then
      cdsFechamento_Itens.Edit
    else
    begin
      prc_Inserir_Itens;
      cdsFechamento_ItensID_TIPOCOBRANCA.AsInteger := cdsFinanceiroDupID_FORMA_PAGAMENTO.AsInteger;
    end;
    cdsFechamento_ItensVLR_ENTRADA.AsFloat        := cdsFechamento_ItensVLR_ENTRADA.AsFloat +
                                                     StrToFloat(FormatFloat('0.00',cdsFinanceiroDupVLR_ENTRADA.AsFloat));
    cdsFechamento_ItensVLR_SALDO.AsFloat          := StrToFloat(FormatFloat('0.00',cdsFechamento_ItensVLR_ENTRADA.AsFloat -
                                                     cdsFechamento_ItensVLR_SAIDA.AsFloat));
                                                     //aqui 06/02/2017
    cdsFechamento_ItensVLR_RECEBIMENTO.AsFloat    := StrToFloat(FormatFloat('0.00',cdsFinanceiroDupVLR_ENTRADA.AsFloat));
    cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString := cdsFinanceiroDupNOME_FORMA_PAGAMENTO.AsString;
    cdsFechamento_Itens.Post;
    cdsFinanceiroDup.Next;
  end;

  cdsDuplicata.First;
  while not cdsDuplicata.Eof do
  begin
    if cdsFechamento_Itens.Locate('ID;ID_TIPOCOBRANCA',VarArrayOf([cdsFechamentoID.AsInteger,cdsDuplicataID_TIPOCOBRANCA.AsInteger]),[locaseinsensitive]) then
      cdsFechamento_Itens.Edit
    else
    begin
      prc_Inserir_Itens;
      cdsFechamento_ItensID_TIPOCOBRANCA.AsInteger := cdsDuplicataID_TIPOCOBRANCA.AsInteger;
    end;
    cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString := cdsDuplicataNOME_FORMA_PAGAMENTO.AsString;
    cdsFechamento_ItensVLR_ENTRADA.AsFloat        := cdsFechamento_ItensVLR_ENTRADA.AsFloat +
                                                     StrToFloat(FormatFloat('0.00',cdsDuplicataVLR_ENTRADA.AsFloat));
    cdsFechamento_ItensVLR_SALDO.AsFloat          := StrToFloat(FormatFloat('0.00',cdsFechamento_ItensVLR_ENTRADA.AsFloat -
                                                     cdsFechamento_ItensVLR_SAIDA.AsFloat));
    cdsFechamento_Itens.Post;
    vTotalVendas := vTotalVendas + cdsFechamento_ItensVLR_ENTRADA.AsFloat;
    cdsDuplicata.Next;
  end;

  cdsVale.First;
  while not cdsVale.Eof do
  begin
    if StrToFloat(FormatFloat('0.00',cdsValeVLR_VALE.AsFloat)) > 0 then
    begin
      if cdsFechamento_Itens.Locate('ID;ID_TIPOCOBRANCA',VarArrayOf([cdsFechamentoID.AsInteger,900]),[locaseinsensitive]) then
        cdsFechamento_Itens.Edit
      else
      begin
        prc_Inserir_Itens;
        cdsFechamento_ItensID_TIPOCOBRANCA.AsInteger := 900;
      end;
      cdsFechamento_ItensVLR_ENTRADA.AsFloat := cdsFechamento_ItensVLR_ENTRADA.AsFloat +
                                                StrToFloat(FormatFloat('0.00',cdsValeVLR_VALE.AsFloat));
      cdsFechamento_ItensVLR_SALDO.AsFloat   := StrToFloat(FormatFloat('0.00',cdsFechamento_ItensVLR_ENTRADA.AsFloat -
                                                cdsFechamento_ItensVLR_SAIDA.AsFloat));
      cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString := 'VALES';
      if cdsFechamento_ItensFATURAMENTO_BRUTO.AsString = 'N' then
        cdsFechamento_ItensVLR_NAO_FATURADO.AsCurrency := StrToFloat(FormatFloat('0.00',cdsFinanceiroVLR_ENTRADA.AsFloat));
      cdsFechamento_Itens.Post;
    end;
    cdsVale.Next;
  end;

  cdsTipoCobranca.IndexFieldNames := 'DINHEIRO';
  cdsTipoCobranca.FindKey(['S']);
  vTipoDinheiro := cdsTipoCobrancaID.AsInteger;

//  if Fechamento then
  begin
    cdsFechamento_San.First;
    while not cdsFechamento_San.Eof do
    begin
      vVlrSangria := StrToFloat(FormatFloat('0.00',vVlrSangria + cdsFechamento_SanVALOR.AsFloat));
      cdsFechamento_San.Next;
    end;

    cdsFechamento_Sup.First;
    while not cdsFechamento_Sup.Eof do
    begin
      vVlrSupri := StrToFloat(FormatFloat('0.00',vVlrSupri + cdsFechamento_SupVALOR.AsFloat));
      cdsFechamento_Sup.Next;
    end;
  end;

  vVlrEntrada   := 0;
  vVlrSaida     := 0;
  vVlrInformado := 0;
  vVlrNFaturado := 0;
  vVlrReceb     := 0;
  vVlrRecDin    := 0;
  cdsFechamento_Itens.First;
  while not cdsFechamento_Itens.Eof do
  begin
    vVlrEntrada   := StrToFloat(FormatFloat('0.00',vVlrEntrada + cdsFechamento_ItensVLR_ENTRADA.AsFloat));
    vVlrSaida     := StrToFloat(FormatFloat('0.00',vVlrSaida + cdsFechamento_ItensVLR_SAIDA.AsFloat));
    vVlrInformado := StrToFloat(FormatFloat('0.00',vVlrInformado + cdsFechamento_ItensVLR_INFORMADO.AsFloat));
    vVlrNFaturado := StrToFloat(FormatFloat('0.00',vVlrNFaturado + cdsFechamento_ItensVLR_NAO_FATURADO.AsFloat));
    vVlrReceb     := StrToFloat(FormatFloat('0.00',vVlrReceb + cdsFechamento_ItensVLR_RECEBIMENTO.AsFloat));

    if cdsFechamento_ItensID_TIPOCOBRANCA.AsInteger = vTipoDinheiro then
    begin
      cdsFechamento_Itens.Edit;
      cdsFechamento_ItensVLR_ENTRADA.AsCurrency := cdsFechamento_ItensVLR_SALDO.AsCurrency + vVlrSupri - vVlrSangria;
      cdsFechamento_Itens.Post;
      vVlrRecDin := vVlrRecDin + cdsFechamento_ItensVLR_RECEBIMENTO.AsFloat;
    end;
    cdsFechamento_Itens.Next;
  end;
  if not(cdsFechamento.State in [dsEdit,dsInsert]) then
    cdsFechamento.Edit;
  cdsFechamentoVLR_ENTRADA.AsFloat  := StrToFloat(FormatFloat('0.00',vTotalVendas)); //StrToFloat(FormatFloat('0.00',vVlrEntrada));
  cdsFechamentoVLR_SAIDA.AsFloat    := StrToFloat(FormatFloat('0.00',vVlrSaida));
  cdsFechamentoVLR_SUBSALDO.AsFloat := StrToFloat(FormatFloat('0.00',cdsFechamentoVLR_ENTRADA.AsFloat - cdsFechamentoVLR_SAIDA.AsFloat));
  cdsFechamentoVLR_NAO_FATURADO.AsCurrency := StrToFloat(FormatFloat('0.00',vVlrNFaturado));
  cdsFechamentoVLR_INFORMADO.AsFloat   := StrToFloat(FormatFloat('0.00',vVlrInformado));
  cdsFechamentoVLR_RECEBIMENTO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrReceb));
  cdsFechamentoVLR_SALDO.AsFloat       := StrToFloat(FormatFloat('0.00',cdsFechamentoVLR_SUBSALDO.AsFloat + cdsFechamentoVLR_INICIAL.AsFloat -
                                          cdsFechamentoVLR_SANGRIA.AsFloat - cdsFechamentoVLR_NAO_FATURADO.AsCurrency));
  cdsFechamentoVLR_DIFERENCA.AsFloat   := StrToFloat(FormatFloat('0.00',cdsFechamentoVLR_INFORMADO.AsFloat - cdsFechamentoVLR_SALDO.AsFloat));
end;

procedure TDMCadFechamento.prc_Recalcular_Inf;
var
  vVlrInformado: Real;
  vVlrSangria, vVlrSupri, vVlrDiferenca: Real;
begin
  cdsFechamento.Edit;
  vVlrInformado := 0;
  vVlrSangria   := 0;
  vVlrSupri     := 0;
  cdsFechamento_Itens.First;
  while not cdsFechamento_Itens.Eof do
  begin
    vVlrInformado := StrToFloat(FormatFloat('0.00',vVlrInformado + cdsFechamento_ItensVLR_INFORMADO.AsFloat));
    cdsFechamento_Itens.Edit;
    cdsFechamento_ItensVLR_DIF_INFORMADO.AsFloat := StrToFloat(FormatFloat('0.00',cdsFechamento_ItensVLR_INFORMADO.AsFloat - cdsFechamento_ItensVLR_ENTRADA.AsFloat));
    cdsFechamento_ItensVLR_DIF_CONFERIDO.AsFloat := StrToFloat(FormatFloat('0.00',cdsFechamento_ItensVLR_CONFERENCIA.AsFloat - cdsFechamento_ItensVLR_ENTRADA.AsFloat));
    vVlrDiferenca := vVlrDiferenca + cdsFechamento_ItensVLR_DIF_CONFERIDO.AsFloat;
    cdsFechamento_Itens.Post;
    cdsFechamento_Itens.Next;
  end;
  cdsFechamento_San.First;
  while not cdsFechamento_San.Eof do
  begin
    vVlrSangria := StrToFloat(FormatFloat('0.00',vVlrSangria + cdsFechamento_SanVALOR.AsFloat));
    cdsFechamento_San.Next;
  end;

  cdsFechamento_Sup.First;
  while not cdsFechamento_Sup.Eof do
  begin
    vVlrSupri := StrToFloat(FormatFloat('0.00',vVlrSupri + cdsFechamento_SupVALOR.AsFloat));
    cdsFechamento_Sup.Next;
  end;

  cdsFechamentoVLR_INICIAL.AsCurrency := StrToFloat(FormatFloat('0.00',vVlrSupri));
  cdsFechamentoVLR_SANGRIA.AsFloat    := StrToFloat(FormatFloat('0.00',vVlrSangria));
  cdsFechamentoVLR_INFORMADO.AsFloat  := StrToFloat(FormatFloat('0.00',vVlrInformado));
  cdsFechamentoVLR_DIFERENCA.AsFloat  := StrToFloat(FormatFloat('0.00',vVlrDiferenca));


  if (cdsFechamentoTIPO_FECHAMENTO.AsString = 'S') or
     (cdsFechamentoTIPO_FECHAMENTO.AsString = 'E') then
  begin
    if StrToFloat(FormatFloat('0.00',cdsFechamentoVLR_DIFERENCA.AsFloat)) <> 0 then
      cdsFechamentoTIPO_FECHAMENTO.AsString := 'E'
    else
      cdsFechamentoTIPO_FECHAMENTO.AsString := 'S';
  end;
end;

procedure TDMCadFechamento.prc_Imprime_FechamentoW(vID: Integer); //com write
var
  vTxt1, vTxt2: String;
  i: Integer;
  f: TextFile;
  vTotProd: Currency;
  vImpDivisor: Boolean;
begin
  vImpDivisor := False;
  vTotProd := 0;
  if (vID = 0) and (cdsFechamento_ConsultaID.AsInteger = 0) then
    exit;
  if vID > 0 then
    prc_Localizar(vID)
  else
    prc_Localizar(cdsFechamento_ConsultaID.AsInteger);
  AssignFile(f,vPorta);
  ReWrite(f);

  WriteLn(f,IDuploG + cdsFilialNOME_INTERNO.AsString + IDuploC);
  WriteLn(f);
  WriteLn(f,INegAti + 'FECHAMENTO DE CAIXA' + INegDes);
  WriteLn(f,'----------------------------------------');
  WriteLn(f,'    Usuario: '+ cdsFechamentoUSUARIO.AsString);
  WriteLn(f,'   Terminal: '+ cdsFechamentoTERMINAL.AsString);
  WriteLn(f,'   Abertura: '+ cdsFechamentoDATA.AsString + ' - ' + cdsFechamentoHRABERTURA.AsString);
  WriteLn(f,' Fechamento: '+ cdsFechamentoDTFECHAMENTO.AsString + ' - ' + cdsFechamentoHRFECHAMENTO.AsString);
  WriteLn(f,'Conferencia: '+ cdsFechamentoDT_HR_CONFERENCIA.AsString);
  WriteLn(f,'==========================================');
  WriteLn(f,INegAti + 'BALANCETE' + INegDes);
  WriteLn(f);
  vTxt1 := fnc_Monta_Descricao(cdsFechamentoVLR_INICIAL.AsFloat,'SUPRIMENTO',' ');
  WriteLn(f,vTxt1);

  WriteLn(f,'------------------------------------------');
  vTxt1 := fnc_Monta_Descricao(cdsFechamentoVLR_ENTRADA.AsCurrency,'FAT. BRUTO',' ');
  WriteLn(f,vTxt1);

  WriteLn(f,'------------------------------------------');
  vTxt1 := fnc_Monta_Descricao(cdsFechamentoVLR_RECEBIMENTO.AsCurrency,'RECEBIMENTO',' ');
  WriteLn(f,vTxt1);

  WriteLn(f,'------------------------------------------');
  cdsFechamento_Itens.First;
  while not cdsFechamento_Itens.Eof do
  begin
    if cdsFechamento_ItensVLR_NAO_FATURADO.AsFloat > 0 then
    begin
      vTxt1 := fnc_Monta_Descricao(cdsFechamento_ItensVLR_NAO_FATURADO.AsFloat,
                                   Copy(cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString,1,18),'.');
      WriteLn(f,vTxt1);
      vImpDivisor := True;
    end;
    cdsFechamento_Itens.Next;
  end;

  if vImpDivisor then
    WriteLn(f,'------------------------------------------');
  vTxt1 := fnc_Monta_Descricao(cdsFechamentoVLR_ENTRADA.AsCurrency - cdsFechamentoVLR_NAO_FATURADO.AsCurrency,'FAT. LIQUIDO',' ');
  WriteLn(f,vTxt1);

  WriteLn(f,'------------------------------------------');
  vTxt1 := fnc_Monta_Descricao(cdsFechamentoVLR_SANGRIA.AsFloat,'SANGRIA',' ');
  WriteLn(f,vTxt1);
  WriteLn(f,'------------------------------------------');

  WriteLn(f);
  WriteLn(f,'DETALHAMENTO');
  WriteLn(f,'------------------------------------------');
  cdsCupomTipoCobranca.First;
  while not cdsCupomTipoCobranca.Eof do
  begin
    vTxt1 := fnc_Monta_Descricao(cdsCupomTipoCobrancaTOTAL.AsFloat,Copy(cdsCupomTipoCobrancaNOME.AsString,1,25),'.');
    WriteLn(f,vTxt1);
    cdsCupomTipoCobranca.Next;
  end;
  WriteLn(f);

  WriteLn(f,'==========================================');
  WriteLn(f,INegAti + 'SALDOS' + INegDes);
  WriteLn(f);
  WriteLn(f,'FORMA          CALC.   INFO.   CONF.  DIF.');
  WriteLn(f,'------------------------------------------');
  cdsFechamento_Itens.First;
  while not cdsFechamento_Itens.Eof do
  begin
    vTxt1 := Copy(cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString,1,12);
    for i := 1 to 13 - Length(vTxt1) do
      vTxt1 := vTxt1 + ' ';
    vTxt2 := FormatFloat('0.00',cdsFechamento_ItensVLR_ENTRADA.AsFloat);
    for i := 1 to 7 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;
    vTxt1 := vTxt1 + vTxt2 + ' ';
    vTxt2 := FormatFloat('0.00',cdsFechamento_ItensVLR_INFORMADO.AsFloat);
    for i := 1 to 7 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;
    vTxt1 := vTxt1 + vTxt2 + ' ';
    vTxt2 := FormatFloat('0.00',cdsFechamento_ItensVLR_CONFERENCIA.AsFloat);
    for i := 1 to 7 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;
    vTxt1 := vTxt1 + vTxt2 + ' ';
    vTxt2 := FormatFloat('0.00',cdsFechamento_ItensVLR_DIF_CONFERIDO.AsFloat);
    for i := 1 to 5 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;
    vTxt1 := vTxt1 + vTxt2;
    WriteLn(f,vTxt1);
    cdsFechamento_Itens.Next;
  end;

  WriteLn(f,'==========================================');
  WriteLn(f,INegAti + 'OCORRENCIAS' + INegDes);
  WriteLn(f);

  vTxt2 := cdsCupomComandasQTD.AsString;
  for i := 1 to 10 - Length(vTxt2) do
    vTxt2 := ' ' + vTxt2;
  WriteLn(f,'       NUMERO DE VENDAS: ' + vTxt2);

  vTxt2 := 'R$ ' + FormatFloat('0.00',cdsFechamentoVLR_ENTRADA.AsCurrency / cdsCupomComandasQTD.AsFloat);
  for i := 1 to 10 - Length(vTxt2) do
    vTxt2 := ' ' + vTxt2;
  WriteLn(f,'VALOR MEDIO POR COMANDA: ' + vTxt2);

  WriteLn(f,'==========================================');
  WriteLn(f,INegAti + 'PRODUTOS VENDIDOS' + INegDes);
  WriteLn(f);
  vTxt1 :=  'COD  PRODUTO                  QTD    TOT';
  WriteLn(f,vTxt1);
  WriteLn(f,'------------------------------------------');
  while not cdsProduto_Vendido.Eof do
  begin
    vTxt1 := Copy(cdsProduto_VendidoREFERENCIA.AsString,1,4);
    for i:= 1 to 5 - Length(vTxt1) do
      vTxt1 := vTxt1 + ' ';
    vTxt1 := vTxt1 + Copy(cdsProduto_VendidoNOME_PRODUTO.AsString,1,23);
    for i:= 1 to 28 - Length(vTxt1) do
      vTxt1 := vTxt1 + ' ';
    vTxt2 := cdsProduto_VendidoQTD.AsString;
    for i:= 1 to 4 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;
    vTxt1 := vTxt1 + vTxt2;
    vTxt2 := FormatFloat('0.00',cdsProduto_VendidoVLR_TOTAL.AsCurrency);
    vTotProd := vTotProd + StrToFloat(FormatFloat('0.00',cdsProduto_VendidoVLR_TOTAL.AsCurrency));
    for i:= 1 to 8 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;
    vTxt1 := vTxt1 + vTxt2;
    Writeln(f,vTxt1);
    cdsProduto_Vendido.Next;
  end;
  WriteLn(f,'==========================================');
  vTxt1 := 'TOTAL:';
  vTxt2 := 'R$ ' + FormatFloat('0.00',vTotProd);
  for i := 1 to 34 - Length(vTxt2) do
    vTxt2 := ' ' + vTxt2;
  WriteLn(f,INegAti + vTxt1 + vTxt2 + INegDes);

  WriteLn(f);
  WriteLn(f,IDuploP + 'SERVISOFT Informatica' + IDuploC);
  WriteLn(f,'Fone: (51) 3598-6584');
  for i := 1 to 5 do
    WriteLn(f);

  CloseFile(f);
end;

procedure TDMCadFechamento.prc_Imprime_ReciboW(vItem: Integer; vES: String); //Write
var
  vTxt1: String;
  i: Integer;
  f: TextFile;
begin
  if vES = 'S' then
  begin
    cdsFechamento_Ret.IndexFieldNames := 'ID;ITEM';
    cdsFechamento_Ret.FindKey([cdsFechamentoID.AsInteger,vItem]);
  end
  else
  begin
    cdsFechamento_Sup.IndexFieldNames := 'ID;ITEM';
    cdsFechamento_Sup.FindKey([cdsFechamentoID.AsInteger,vItem]);
  end;

  AssignFile(f,vPorta);
  ReWrite(f);

  WriteLn(f,IDuploG + cdsFilialNOME_INTERNO.AsString + IDuploC);
  WriteLn(f);
  if vES = 'S' then
    WriteLn(f,INegAti + 'SANGRIA DE CAIXA' + INegDes)
  else
    WriteLn(f,INegAti + 'SUPRIMENTO DE CAIXA' + INegDes);
  WriteLn(f,'----------------------------------------');
  WriteLn(f,'  Usuario: ' + cdsFechamentoUSUARIO.AsString);
  WriteLn(f,' Terminal: ' + cdsFechamentoTERMINAL.AsString);
  WriteLn(f,'Data/Hora: ' + cdsFechamento_RetDATA.AsString);
  WriteLn(f,'========================================');
  WriteLn(f,'    Valor: R$ ' + FormatFloat('0.00',cdsFechamento_RetValor.AsCurrency));
  vTxt1 := cdsFechamento_RetDescricao.AsString;
  if Length(vTxt1) > 28 then
  begin
    WriteLn(f,'Descricao: ' + Copy(vTxt1,1,29));
    Delete(vTxt1,1,29);
  end;
  while Length(vTxt1) > 40 do
  begin
    WriteLn(f,Copy(vTxt1,1,40));
    Delete(vTxt1,1,40);
  end;
  if Length(vTxt1) > 0 then
    WriteLn(f,(vTxt1));

  WriteLn(f,'========================================');
  WriteLn(f);
  WriteLn(f);
  WriteLn(f,'Caixa:..................................');

  WriteLn(f);
  WriteLn(f,IDuploP + 'SERVISOFT Informatica' + IDuploC);
  WriteLn(f,'Fone: (51) 3598-6584');
  for i := 1 to 5 do
    WriteLn(f);

  CloseFile(f);
end;

procedure TDMCadFechamento.prc_Imprime_FechamentoC(vID: Integer);
var
  vTxt1, vTxt2: String;
  i: Integer;
  vTotProd: Currency;
  vImpDivisor: Boolean;
  vLinha: Integer;
begin
  vImpDivisor := False;
  vTotProd := 0;
  if (vID = 0) and (cdsFechamento_ConsultaID.AsInteger = 0) then
    exit;
  if vID > 0 then
    prc_Localizar(vID)
  else
    prc_Localizar(cdsFechamento_ConsultaID.AsInteger);

  Printer.BeginDoc;
  Printer.Canvas.Font.Name  := 'Lucida Console';
  Printer.Canvas.Font.Size := 7;

  vLinha   := 0;
  Printer.Canvas.Font.Style := [fsBold]; //Declarar Graphics

  vTxt1 := cdsFilialNOME_INTERNO.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'');
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'FECHAMENTO DE CAIXA');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.Font.Style := [];

  Printer.Canvas.TextOut(0,vLinha,'------------------------------------------');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'    Usuário: '+ cdsFechamentoUSUARIO.AsString + ' (Impresso por:' + vUsuario + ')');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'   Terminal: '+ cdsFechamentoTERMINAL.AsString);
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'   Abertura: '+ cdsFechamentoDATA.AsString + ' - ' + cdsFechamentoHRABERTURA.AsString);
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,' Fechamento: '+ cdsFechamentoDTFECHAMENTO.AsString + ' - ' + cdsFechamentoHRFECHAMENTO.AsString);
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'Conferência: '+ cdsFechamentoDT_HR_CONFERENCIA.AsString);
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'==========================================');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.Font.Style := [fsBold];
  Printer.Canvas.TextOut(0,vLinha,'BALANCETE');
  Printer.Canvas.Font.Style := [];
  vLinha := vLinha + cAvanco;
  vLinha := vLinha + cAvanco;
  vTxt1 := fnc_Monta_Descricao(cdsFechamentoVLR_INICIAL.AsFloat,'SUPRIMENTO',' ');
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'------------------------------------------');
  vLinha := vLinha + cAvanco;
  vTxt1 := fnc_Monta_Descricao(cdsFechamentoVLR_ENTRADA.AsCurrency,'FAT. BRUTO',' ');
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'------------------------------------------');
  vLinha := vLinha + cAvanco;
  cdsFechamento_Itens.First;
  while not cdsFechamento_Itens.Eof do
  begin
    if cdsFechamento_ItensVLR_NAO_FATURADO.AsFloat > 0 then
    begin
      vTxt1 := fnc_Monta_Descricao(cdsFechamento_ItensVLR_NAO_FATURADO.AsFloat,
                                   Copy(cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString,1,18),'.');
      Printer.Canvas.TextOut(0,vLinha,vTxt1);
      vLinha := vLinha + cAvanco;
      vImpDivisor := True;
    end;
    cdsFechamento_Itens.Next;
  end;

  if vImpDivisor then
  begin
    Printer.Canvas.TextOut(0,vLinha,'------------------------------------------');
    vLinha := vLinha + cAvanco;
  end;
  vTxt1 := fnc_Monta_Descricao(cdsFechamentoVLR_ENTRADA.AsCurrency - cdsFechamentoVLR_NAO_FATURADO.AsCurrency,'FAT. LIQUIDO',' ');
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'------------------------------------------');
  vLinha := vLinha + cAvanco;
  vTxt1 := fnc_Monta_Descricao(cdsFechamentoVLR_RECEBIMENTO.AsCurrency,'RECEBIMENTOS',' ');
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
{  if vVlrRecDin > 0 then
  begin
    vTxt1 := fnc_Monta_Descricao(vVlrRecDin,'(Em dinheiro)',' ');
    Printer.Canvas.TextOut(0,vLinha,vTxt1);
    vLinha := vLinha + cAvanco;
  end;
}
  Printer.Canvas.TextOut(0,vLinha,'------------------------------------------');
  vLinha := vLinha + cAvanco;
  vTxt1 := fnc_Monta_Descricao(cdsFechamentoVLR_SANGRIA.AsFloat,'SANGRIA',' ');
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'------------------------------------------');
  vLinha := vLinha + cAvanco;

  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'DETALHAMENTO do FATURAMENTO');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'------------------------------------------');
  vLinha := vLinha + cAvanco;
  cdsCupomTipoCobranca.First;
  while not cdsCupomTipoCobranca.Eof do
  begin
    vTxt1 := fnc_Monta_Descricao(cdsCupomTipoCobrancaTOTAL.AsFloat,Copy(cdsCupomTipoCobrancaNOME.AsString,1,25),'.');
    Printer.Canvas.TextOut(0,vLinha,vTxt1);
    vLinha := vLinha + cAvanco;
    cdsCupomTipoCobranca.Next;
  end;
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'==========================================');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.Font.Style := [fsBold];
  Printer.Canvas.TextOut(0,vLinha,'SALDOS');
  Printer.Canvas.Font.Style := [];
  vLinha := vLinha + cAvanco;
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'FORMA          CALC.   INFO.   CONF.  DIF.');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'------------------------------------------');
  vLinha := vLinha + cAvanco;
  cdsFechamento_Itens.First;
  while not cdsFechamento_Itens.Eof do
  begin
    vTxt1 := Copy(cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString,1,12);
    for i := 1 to 13 - Length(vTxt1) do
      vTxt1 := vTxt1 + ' ';
    vTxt2 := FormatFloat('0.00',cdsFechamento_ItensVLR_ENTRADA.AsFloat);
    for i := 1 to 7 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;
    vTxt1 := vTxt1 + vTxt2 + ' ';
    vTxt2 := FormatFloat('0.00',cdsFechamento_ItensVLR_INFORMADO.AsFloat);
    for i := 1 to 7 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;
    vTxt1 := vTxt1 + vTxt2 + ' ';
    vTxt2 := FormatFloat('0.00',cdsFechamento_ItensVLR_CONFERENCIA.AsFloat);
    for i := 1 to 7 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;
    vTxt1 := vTxt1 + vTxt2 + ' ';
    vTxt2 := FormatFloat('0.00',cdsFechamento_ItensVLR_DIF_CONFERIDO.AsFloat);
    for i := 1 to 5 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;
    vTxt1 := vTxt1 + vTxt2;
    Printer.Canvas.TextOut(0,vLinha,vTxt1);
    vLinha := vLinha + cAvanco;
    cdsFechamento_Itens.Next;
  end;

  Printer.Canvas.TextOut(0,vLinha,'==========================================');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.Font.Style := [fsBold];
  Printer.Canvas.TextOut(0,vLinha,'OCORRÊNCIAS');
  Printer.Canvas.Font.Style := [];
  vLinha := vLinha + cAvanco;
  vLinha := vLinha + cAvanco;

  vTxt2 := cdsCupomComandasQTD.AsString;
  for i := 1 to 10 - Length(vTxt2) do
    vTxt2 := ' ' + vTxt2;
  Printer.Canvas.TextOut(0,vLinha,'       NUMERO DE VENDAS: ' + vTxt2);
  vLinha := vLinha + cAvanco;

  if cdsCupomComandasQTD.AsFloat > 0 then
  begin
    vTxt2 := 'R$ ' + FormatFloat('0.00',cdsFechamentoVLR_ENTRADA.AsCurrency / cdsCupomComandasQTD.AsFloat);
    for i := 1 to 10 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;
    Printer.Canvas.TextOut(0,vLinha,'VALOR MEDIO POR COMANDA: ' + vTxt2);
    vLinha := vLinha + cAvanco;
  end;

  if qCupomParametrosIMP_VENDAS_FECHAMENTO.AsString = 'S' then
  begin
    Printer.Canvas.TextOut(0,vLinha,'==========================================');
    vLinha := vLinha + cAvanco;
    Printer.Canvas.Font.Style := [fsBold];
    Printer.Canvas.TextOut(0,vLinha,'PRODUTOS VENDIDOS');
    Printer.Canvas.Font.Style := [];
    vLinha := vLinha + cAvanco;
    vLinha := vLinha + cAvanco;
    vTxt1 :=  'COD  PRODUTO                  QTD    TOT';
    Printer.Canvas.TextOut(0,vLinha,vTxt1);
    vLinha := vLinha + cAvanco;
    Printer.Canvas.TextOut(0,vLinha,'------------------------------------------');
    vLinha := vLinha + cAvanco;
    while not cdsProduto_Vendido.Eof do
    begin
      vTxt1 := Copy(cdsProduto_VendidoREFERENCIA.AsString,1,4);
      for i:= 1 to 5 - Length(vTxt1) do
        vTxt1 := vTxt1 + ' ';
      vTxt1 := vTxt1 + Copy(cdsProduto_VendidoNOME_PRODUTO.AsString,1,23);
      for i:= 1 to 28 - Length(vTxt1) do
        vTxt1 := vTxt1 + ' ';
      vTxt2 := cdsProduto_VendidoQTD.AsString;
      for i:= 1 to 4 - Length(vTxt2) do
        vTxt2 := ' ' + vTxt2;
      vTxt1 := vTxt1 + vTxt2;
      vTxt2 := FormatFloat('0.00',cdsProduto_VendidoVLR_TOTAL.AsCurrency);
      vTotProd := vTotProd + StrToFloat(FormatFloat('0.00',cdsProduto_VendidoVLR_TOTAL.AsCurrency));
      for i:= 1 to 8 - Length(vTxt2) do
        vTxt2 := ' ' + vTxt2;
      vTxt1 := vTxt1 + vTxt2;
      Printer.Canvas.TextOut(0,vLinha,vTxt1);
      vLinha := vLinha + cAvanco;
      cdsProduto_Vendido.Next;
    end;
    Printer.Canvas.TextOut(0,vLinha,'==========================================');
     vLinha := vLinha + cAvanco;
    Printer.Canvas.Font.Style := [fsBold];
    vTxt1 := 'TOTAL:';
    vTxt2 := 'R$ ' + FormatFloat('0.00',vTotProd);
    for i := 1 to 31 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;
    Printer.Canvas.TextOut(0,vLinha,vTxt1 + vTxt2);
    vLinha := vLinha + cAvanco;
  end;

  Printer.Canvas.TextOut(0,vLinha,'------------------------------------------');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'SERVISOFT Informatica');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'Fone: (51) 3598-6584');
  vLinha := vLinha + cAvanco;
  for i := 1 to 5 do
    Printer.Canvas.TextOut(0,vLinha,'');

  Printer.EndDoc;
end;

procedure TDMCadFechamento.prc_Imprime_ReciboC(vItem: Integer; vES: String);
var
  vTxt1: String;
  i: Integer;
  vLinha: Integer;
begin
  if vES = 'S' then
  begin
    cdsFechamento_Ret.IndexFieldNames := 'ID;ITEM';
    cdsFechamento_Ret.FindKey([cdsFechamentoID.AsInteger,vItem]);
  end
  else
  begin
    cdsFechamento_Sup.IndexFieldNames := 'ID;ITEM';
    cdsFechamento_Sup.FindKey([cdsFechamentoID.AsInteger,vItem]);
  end;

  Printer.BeginDoc;
  Printer.Canvas.Font.Name  := 'Lucida Console';

  vLinha   := 0;
  Printer.Canvas.Font.Style := [fsBold]; //Declarar Graphics

  vTxt1 := cdsFilialNOME.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  vTxt1 := cdsFilialNOME_INTERNO.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  Printer.Canvas.Font.Style := []; //Declarar Graphics

  if vES = 'S' then
    vTxt1 := 'SANGRIA DE CAIXA'
  else
    vTxt1 := 'SUPRIMENTO DE CAIXA';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  vTxt1 := '----------------------------------------';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := '  Usuario: ' + cdsFechamentoUSUARIO.AsString  + ' (Impresso por:' + vUsuario + ')';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := ' Terminal: ' + cdsFechamentoTERMINAL.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := 'Data/Hora: ' + cdsFechamento_RetDATA.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := '========================================';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := '    Valor: R$ ' + FormatFloat('0.00',cdsFechamento_RetValor.AsCurrency);
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := cdsFechamento_RetDescricao.AsString;
  if Length(vTxt1) > 28 then
  begin
    Printer.Canvas.TextOut(0,vLinha,'Descricao: ' + Copy(vTxt1,1,29));
    vLinha := vLinha + cAvanco;
    Delete(vTxt1,1,29);
  end;
  while Length(vTxt1) > 40 do
  begin
    Printer.Canvas.TextOut(0,vLinha,Copy(vTxt1,1,40));
    vLinha := vLinha + cAvanco;
    Delete(vTxt1,1,40);
  end;
  if Length(vTxt1) > 0 then
  begin
    Printer.Canvas.TextOut(0,vLinha,vTxt1);
    vLinha := vLinha + cAvanco;
  end;

  vTxt1 := '========================================';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'');
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'');
  vLinha := vLinha + cAvanco;

  vTxt1 := 'Caixa:..................................';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'');
  vLinha := vLinha + cAvanco;
  vTxt1 := 'SERVISOFT Informatica';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := 'Fone: (51) 3598-6584';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  for i := 1 to 5 do
  begin
    Printer.Canvas.TextOut(0,vLinha,'');
    vLinha := vLinha + cAvanco;
  end;
  Printer.EndDoc;
end;

procedure TDMCadFechamento.prc_Imprime_Vlr_InformadoC(vID: Integer);
var
  vLinha: Integer;
  vTxt1: String;
  i: Integer;
  f: TextFile;
begin
  if (vID = 0) and (cdsFechamento_ConsultaID.AsInteger = 0) then
    exit;
  if vID > 0 then
    prc_Localizar(vID)
  else
    prc_Localizar(cdsFechamento_ConsultaID.AsInteger);

  Printer.BeginDoc;
  Printer.Canvas.Font.Name  := 'Lucida Console';
  Printer.Canvas.Font.Size  := 8;
  Printer.Canvas.Font.Style := [fsBold];

  vLinha := 1;
  vTxt1 := cdsFilialNOME_INTERNO.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  Printer.Canvas.Font.Size  := 7;
  vTxt1 := 'FECHAMENTO DE CAIXA';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  Printer.Canvas.Font.Style := [];

  vTxt1 := '--------------------------------------';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := '   Usuario: '+ cdsFechamentoUSUARIO.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := '  Terminal: '+ cdsFechamentoTERMINAL.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := '  Abertura: '+ cdsFechamentoDATA.AsString + ' - ' + cdsFechamentoHRABERTURA.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := 'Fechamento: '+ cdsFechamentoDTFECHAMENTO.AsString + ' - ' + cdsFechamentoHRFECHAMENTO.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := '======================================';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  Printer.Canvas.Font.Style := [fsBold];
  vTxt1 := 'VALORES INFORMADOS';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  Printer.Canvas.Font.Style := [];
  vTxt1 := '--------------------------------------';

  cdsFechamento_Itens.First;
  while not cdsFechamento_Itens.Eof do
  begin
    vTxt1 := fnc_Monta_Descricao(cdsFechamento_ItensVLR_INFORMADO.AsFloat,
                                  '      * ' + cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString,'.');
    Printer.Canvas.TextOut(0,vLinha,vTxt1);
    vLinha := vLinha + cAvanco;
    cdsFechamento_Itens.Next;
  end;
  vTxt1 := '--------------------------------------';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  vTxt1 := fnc_Monta_Descricao(cdsFechamentoVLR_INFORMADO.AsFloat,'Saldo Total','.');
  Printer.Canvas.Font.Style := [fsBold];
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  Printer.Canvas.Font.Style := [];

  vTxt1 := '======================================';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := fnc_Monta_Descricao(cdsFechamentoVLR_INICIAL.AsFloat,'Suprimento','.');
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  vTxt1 := fnc_Monta_Descricao(cdsFechamentoVLR_SANGRIA.AsFloat,'Sangria','.');
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  vTxt1 := '';
  for i := 1 to 2 do
  begin
    Printer.Canvas.TextOut(0,vLinha,vTxt1);
    vLinha := vLinha + cAvanco;
  end;

  vTxt1 := 'Caixa:................................';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'');
  vLinha := vLinha + cAvanco;
  vTxt1 := 'Responsavel:..........................';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  vTxt1 := '';
  for i := 1 to 5 do
  begin
    Printer.Canvas.TextOut(0,vLinha,vTxt1);
    vLinha := vLinha + cAvanco;
  end;

  Printer.EndDoc;
end;

end.
