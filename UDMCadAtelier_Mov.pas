unit UDMCadAtelier_Mov;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, LogTypes;

type
  TDMCadAtelier_Mov = class(TDataModule)
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    sdsFilialID: TIntegerField;
    sdsFilialNOME: TStringField;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    sdsAtelier: TSQLDataSet;
    dspAtelier: TDataSetProvider;
    cdsAtelier: TClientDataSet;
    dsAtelier: TDataSource;
    sdsAtelierCODIGO: TIntegerField;
    sdsAtelierNOME: TStringField;
    sdsAtelierFANTASIA: TStringField;
    cdsAtelierCODIGO: TIntegerField;
    cdsAtelierNOME: TStringField;
    cdsAtelierFANTASIA: TStringField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosENDXMLNFE: TStringField;
    qParametrosENDPDFNFE: TStringField;
    qParametrosSERIENORMAL: TStringField;
    qParametrosSERIECONTINGENCIA: TStringField;
    qParametrosLOCALSERVIDORNFE: TStringField;
    qParametrosEMAILRESPONSAVELSISTEMA: TStringField;
    qParametrosNFEPRODUCAO: TStringField;
    qParametrosANEXARDANFE: TStringField;
    qParametrosVERSAONFE: TStringField;
    qParametrosVERSAOEMISSAONFE: TStringField;
    qParametrosTIPOLOGONFE: TStringField;
    qParametrosAPLICARDESCONTONOICMS: TStringField;
    qParametrosAPLICARDESCONTONOIPI: TStringField;
    qParametrosSOMARNOPROD_FRETE: TStringField;
    qParametrosSOMARNOPROD_OUTRASDESP: TStringField;
    qParametrosSOMARNOPROD_SEGURO: TStringField;
    qParametrosAJUSTELOGONFEAUTOMATICO: TStringField;
    qParametrosINFNUMNOTAMANUAL: TStringField;
    qParametrosOPCAO_DTENTREGAPEDIDO: TStringField;
    qParametrosOBS_SIMPLES: TStringField;
    qParametrosIMP_OBSSIMPLES: TStringField;
    qParametrosIMP_REFERENCIANANOTA: TStringField;
    qParametrosENVIARNOTABENEF_NANFE: TStringField;
    qParametrosESPECIE_NOTA: TStringField;
    qParametrosMARCA_NOTA: TStringField;
    qParametrosVERSAO_BANCO: TIntegerField;
    qParametrosUSA_QTDPACOTE_NTE: TStringField;
    qParametrosATUALIZAR_PRECO: TStringField;
    qParametrosUSA_VENDEDOR: TStringField;
    qParametrosUSA_CONSUMO: TStringField;
    sdsConsultaID_CLIENTE: TIntegerField;
    sdsConsultaID: TIntegerField;
    sdsConsultaPEDIDO_CLIENTE: TStringField;
    sdsConsultaDTEMISSAO: TDateField;
    sdsConsultaDTENTREGA_PED: TDateField;
    sdsConsultaNUM_PEDIDO: TIntegerField;
    sdsConsultaID_VENDEDOR: TIntegerField;
    sdsConsultaFILIAL: TIntegerField;
    sdsConsultaNOME_FILIAL: TStringField;
    sdsConsultaNOME_FILIAL_INT: TStringField;
    sdsConsultaNOME_CLIENTE: TStringField;
    sdsConsultaNOMEPRODUTO: TStringField;
    sdsConsultaREFERENCIA: TStringField;
    sdsConsultaITEM: TIntegerField;
    sdsConsultaID_PRODUTO: TIntegerField;
    sdsConsultaDTENTREGA_ITEM: TDateField;
    sdsConsultaQTD: TFloatField;
    sdsConsultaQTD_CANCELADO: TFloatField;
    sdsConsultaVLR_UNITARIO: TFloatField;
    sdsConsultaVLR_DESCONTO: TFloatField;
    sdsConsultaVLR_TOTAL: TFloatField;
    sdsConsultaUNIDADE: TStringField;
    sdsConsultaVLR_UNITARIO_ATELIER: TFloatField;
    sdsConsultaVLR_TOTAL_ATELIER: TFloatField;
    sdsConsultaID_ATELIER: TIntegerField;
    sdsConsultaDT_ENVIO_ATELIER: TDateField;
    sdsConsultaDT_RETORNO_ATELIER: TDateField;
    sdsConsultaOBS: TMemoField;
    sdsConsultaNOME_ATELIER: TStringField;
    cdsConsultaID_CLIENTE: TIntegerField;
    cdsConsultaID: TIntegerField;
    cdsConsultaPEDIDO_CLIENTE: TStringField;
    cdsConsultaDTEMISSAO: TDateField;
    cdsConsultaDTENTREGA_PED: TDateField;
    cdsConsultaNUM_PEDIDO: TIntegerField;
    cdsConsultaID_VENDEDOR: TIntegerField;
    cdsConsultaFILIAL: TIntegerField;
    cdsConsultaNOME_FILIAL: TStringField;
    cdsConsultaNOME_FILIAL_INT: TStringField;
    cdsConsultaNOME_CLIENTE: TStringField;
    cdsConsultaNOMEPRODUTO: TStringField;
    cdsConsultaREFERENCIA: TStringField;
    cdsConsultaITEM: TIntegerField;
    cdsConsultaID_PRODUTO: TIntegerField;
    cdsConsultaDTENTREGA_ITEM: TDateField;
    cdsConsultaQTD: TFloatField;
    cdsConsultaQTD_CANCELADO: TFloatField;
    cdsConsultaVLR_UNITARIO: TFloatField;
    cdsConsultaVLR_DESCONTO: TFloatField;
    cdsConsultaVLR_TOTAL: TFloatField;
    cdsConsultaUNIDADE: TStringField;
    cdsConsultaVLR_UNITARIO_ATELIER: TFloatField;
    cdsConsultaVLR_TOTAL_ATELIER: TFloatField;
    cdsConsultaID_ATELIER: TIntegerField;
    cdsConsultaDT_ENVIO_ATELIER: TDateField;
    cdsConsultaDT_RETORNO_ATELIER: TDateField;
    cdsConsultaOBS: TMemoField;
    cdsConsultaNOME_ATELIER: TStringField;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    sdsClienteCODIGO: TIntegerField;
    sdsClienteNOME: TStringField;
    sdsClienteFANTASIA: TStringField;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteFANTASIA: TStringField;
    sdsPedido_Item: TSQLDataSet;
    dspPedido_Item: TDataSetProvider;
    cdsPedido_Item: TClientDataSet;
    dsPedido_Item: TDataSource;
    sdsPedido_ItemID: TIntegerField;
    sdsPedido_ItemITEM: TIntegerField;
    sdsPedido_ItemID_PRODUTO: TIntegerField;
    sdsPedido_ItemID_COR: TIntegerField;
    sdsPedido_ItemTAMANHO: TStringField;
    sdsPedido_ItemQTD: TFloatField;
    sdsPedido_ItemQTD_FATURADO: TFloatField;
    sdsPedido_ItemQTD_RESTANTE: TFloatField;
    sdsPedido_ItemQTD_CANCELADO: TFloatField;
    sdsPedido_ItemVLR_DESCONTO: TFloatField;
    sdsPedido_ItemCANCELADO: TStringField;
    sdsPedido_ItemDTENTREGA: TDateField;
    sdsPedido_ItemFATURADO: TStringField;
    sdsPedido_ItemDTFATURADO: TDateField;
    sdsPedido_ItemCOD_PRODUTO_CLIENTE: TStringField;
    sdsPedido_ItemTIPO: TStringField;
    sdsPedido_ItemUNIDADE: TStringField;
    sdsPedido_ItemNUMOS: TStringField;
    sdsPedido_ItemPERC_DESCONTO: TFloatField;
    sdsPedido_ItemVLR_FRETE: TFloatField;
    sdsPedido_ItemBASE_ICMS: TFloatField;
    sdsPedido_ItemVLR_ICMS: TFloatField;
    sdsPedido_ItemBASE_ICMSTRANSF: TFloatField;
    sdsPedido_ItemPERC_TRANSF: TFloatField;
    sdsPedido_ItemVLR_TRANSF: TFloatField;
    sdsPedido_ItemVLR_IPI: TFloatField;
    sdsPedido_ItemBASE_ICMSSIMPLES: TFloatField;
    sdsPedido_ItemVLR_ICMSSIMPLES: TFloatField;
    sdsPedido_ItemPERC_ICMSSIMPLES: TFloatField;
    sdsPedido_ItemBASE_ICMSSUBST: TFloatField;
    sdsPedido_ItemVLR_ICMSSUBST: TFloatField;
    sdsPedido_ItemVLR_DESCONTORATEIO: TFloatField;
    sdsPedido_ItemID_CFOP: TIntegerField;
    sdsPedido_ItemID_CSTIPI: TIntegerField;
    sdsPedido_ItemID_CSTICMS: TIntegerField;
    sdsPedido_ItemPERC_ICMS: TFloatField;
    sdsPedido_ItemPERC_IPI: TFloatField;
    sdsPedido_ItemREFERENCIA: TStringField;
    sdsPedido_ItemNOMEPRODUTO: TStringField;
    sdsPedido_ItemOBS_COMPLEMENTAR: TStringField;
    sdsPedido_ItemCALCULARICMSSOBREIPI: TStringField;
    sdsPedido_ItemVLR_UNITARIO: TFloatField;
    sdsPedido_ItemID_CONFIG_CFOP: TIntegerField;
    sdsPedido_ItemVLR_TOTAL: TFloatField;
    sdsPedido_ItemQTD_AFATURAR: TFloatField;
    sdsPedido_ItemID_VARIACAO: TIntegerField;
    sdsPedido_ItemOBS: TMemoField;
    sdsPedido_ItemPERC_TRIBICMS: TFloatField;
    sdsPedido_ItemID_ATELIER: TIntegerField;
    sdsPedido_ItemVLR_UNITARIO_ATELIER: TFloatField;
    sdsPedido_ItemVLR_TOTAL_ATELIER: TFloatField;
    sdsPedido_ItemDT_ENVIO_ATELIER: TDateField;
    sdsPedido_ItemDT_RETORNO_ATELIER: TDateField;
    cdsPedido_ItemID: TIntegerField;
    cdsPedido_ItemITEM: TIntegerField;
    cdsPedido_ItemID_PRODUTO: TIntegerField;
    cdsPedido_ItemID_COR: TIntegerField;
    cdsPedido_ItemTAMANHO: TStringField;
    cdsPedido_ItemQTD: TFloatField;
    cdsPedido_ItemQTD_FATURADO: TFloatField;
    cdsPedido_ItemQTD_RESTANTE: TFloatField;
    cdsPedido_ItemQTD_CANCELADO: TFloatField;
    cdsPedido_ItemVLR_DESCONTO: TFloatField;
    cdsPedido_ItemCANCELADO: TStringField;
    cdsPedido_ItemDTENTREGA: TDateField;
    cdsPedido_ItemFATURADO: TStringField;
    cdsPedido_ItemDTFATURADO: TDateField;
    cdsPedido_ItemCOD_PRODUTO_CLIENTE: TStringField;
    cdsPedido_ItemTIPO: TStringField;
    cdsPedido_ItemUNIDADE: TStringField;
    cdsPedido_ItemNUMOS: TStringField;
    cdsPedido_ItemPERC_DESCONTO: TFloatField;
    cdsPedido_ItemVLR_FRETE: TFloatField;
    cdsPedido_ItemBASE_ICMS: TFloatField;
    cdsPedido_ItemVLR_ICMS: TFloatField;
    cdsPedido_ItemBASE_ICMSTRANSF: TFloatField;
    cdsPedido_ItemPERC_TRANSF: TFloatField;
    cdsPedido_ItemVLR_TRANSF: TFloatField;
    cdsPedido_ItemVLR_IPI: TFloatField;
    cdsPedido_ItemBASE_ICMSSIMPLES: TFloatField;
    cdsPedido_ItemVLR_ICMSSIMPLES: TFloatField;
    cdsPedido_ItemPERC_ICMSSIMPLES: TFloatField;
    cdsPedido_ItemBASE_ICMSSUBST: TFloatField;
    cdsPedido_ItemVLR_ICMSSUBST: TFloatField;
    cdsPedido_ItemVLR_DESCONTORATEIO: TFloatField;
    cdsPedido_ItemID_CFOP: TIntegerField;
    cdsPedido_ItemID_CSTIPI: TIntegerField;
    cdsPedido_ItemID_CSTICMS: TIntegerField;
    cdsPedido_ItemPERC_ICMS: TFloatField;
    cdsPedido_ItemPERC_IPI: TFloatField;
    cdsPedido_ItemREFERENCIA: TStringField;
    cdsPedido_ItemNOMEPRODUTO: TStringField;
    cdsPedido_ItemOBS_COMPLEMENTAR: TStringField;
    cdsPedido_ItemCALCULARICMSSOBREIPI: TStringField;
    cdsPedido_ItemVLR_UNITARIO: TFloatField;
    cdsPedido_ItemID_CONFIG_CFOP: TIntegerField;
    cdsPedido_ItemVLR_TOTAL: TFloatField;
    cdsPedido_ItemQTD_AFATURAR: TFloatField;
    cdsPedido_ItemID_VARIACAO: TIntegerField;
    cdsPedido_ItemOBS: TMemoField;
    cdsPedido_ItemPERC_TRIBICMS: TFloatField;
    cdsPedido_ItemID_ATELIER: TIntegerField;
    cdsPedido_ItemVLR_UNITARIO_ATELIER: TFloatField;
    cdsPedido_ItemVLR_TOTAL_ATELIER: TFloatField;
    cdsPedido_ItemDT_ENVIO_ATELIER: TDateField;
    cdsPedido_ItemDT_RETORNO_ATELIER: TDateField;
    sdsConsultaVLR_ADIANTAMENTO: TFloatField;
    cdsConsultaVLR_ADIANTAMENTO: TFloatField;
    sdsAtelier_Mov: TSQLDataSet;
    dspAtelier_Mov: TDataSetProvider;
    cdsAtelier_Mov: TClientDataSet;
    dsAtelier_Mov: TDataSource;
    sdsAtelier_MovID: TIntegerField;
    sdsAtelier_MovDT_MOV: TDateField;
    sdsAtelier_MovDT_REFERENCIA: TDateField;
    sdsAtelier_MovTIPO: TStringField;
    sdsAtelier_MovVLR_MOV: TFloatField;
    sdsAtelier_MovID_ATELIER: TIntegerField;
    sdsAtelier_MovOBS: TMemoField;
    sdsAtelier_MovID_CONTA: TIntegerField;
    sdsAtelier_MovID_FINANCEIRO: TIntegerField;
    cdsAtelier_MovID: TIntegerField;
    cdsAtelier_MovDT_MOV: TDateField;
    cdsAtelier_MovDT_REFERENCIA: TDateField;
    cdsAtelier_MovTIPO: TStringField;
    cdsAtelier_MovVLR_MOV: TFloatField;
    cdsAtelier_MovID_ATELIER: TIntegerField;
    cdsAtelier_MovOBS: TMemoField;
    cdsAtelier_MovID_CONTA: TIntegerField;
    cdsAtelier_MovID_FINANCEIRO: TIntegerField;
    sdsAtelier_MovNOME_ATELIER: TStringField;
    cdsAtelier_MovNOME_ATELIER: TStringField;
    sdsContas: TSQLDataSet;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    dsContas: TDataSource;
    sdsContasID: TIntegerField;
    sdsContasNOME: TStringField;
    cdsContasID: TIntegerField;
    cdsContasNOME: TStringField;
    sdsFinanceiro: TSQLDataSet;
    sdsFinanceiroID: TIntegerField;
    sdsFinanceiroTIPO_ES: TStringField;
    sdsFinanceiroID_CONTA: TIntegerField;
    sdsFinanceiroDTMOVIMENTO: TDateField;
    sdsFinanceiroID_MOVDUPLICATA: TIntegerField;
    sdsFinanceiroITEM_MOVDUPLICATA: TIntegerField;
    sdsFinanceiroVLR_MOVIMENTO: TFloatField;
    sdsFinanceiroID_HISTORICO: TIntegerField;
    sdsFinanceiroHISTORICO_COMPL: TStringField;
    sdsFinanceiroID_PESSOA: TIntegerField;
    sdsFinanceiroFILIAL: TIntegerField;
    sdsFinanceiroUSUARIO: TStringField;
    sdsFinanceiroDTUSUARIO: TDateField;
    sdsFinanceiroHRUSUARIO: TTimeField;
    dspFinanceiro: TDataSetProvider;
    cdsFinanceiro: TClientDataSet;
    cdsFinanceiroID: TIntegerField;
    cdsFinanceiroTIPO_ES: TStringField;
    cdsFinanceiroID_CONTA: TIntegerField;
    cdsFinanceiroDTMOVIMENTO: TDateField;
    cdsFinanceiroID_MOVDUPLICATA: TIntegerField;
    cdsFinanceiroITEM_MOVDUPLICATA: TIntegerField;
    cdsFinanceiroVLR_MOVIMENTO: TFloatField;
    cdsFinanceiroID_HISTORICO: TIntegerField;
    cdsFinanceiroHISTORICO_COMPL: TStringField;
    cdsFinanceiroID_PESSOA: TIntegerField;
    cdsFinanceiroFILIAL: TIntegerField;
    cdsFinanceiroUSUARIO: TStringField;
    cdsFinanceiroDTUSUARIO: TDateField;
    cdsFinanceiroHRUSUARIO: TTimeField;
    dsFinanceiro: TDataSource;
    sdsAtelier_MovFILIAL: TIntegerField;
    cdsAtelier_MovFILIAL: TIntegerField;
    sdsAtelier_MovNOME_CONTA: TStringField;
    cdsAtelier_MovNOME_CONTA: TStringField;
    sdsAtelierATELIER_CONTA_ID: TIntegerField;
    cdsAtelierATELIER_CONTA_ID: TIntegerField;
    sdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField;
    sdsFinanceiroVLR_SAIDA: TFloatField;
    sdsFinanceiroVLR_ENTRADA: TFloatField;
    sdsFinanceiroID_EXTCOMISSAO: TIntegerField;
    sdsFinanceiroID_NOTA: TIntegerField;
    sdsFinanceiroID_NOTA_SERVICO: TIntegerField;
    sdsFinanceiroID_CUPOM: TIntegerField;
    sdsFinanceiroID_CHEQUE: TIntegerField;
    sdsFinanceiroID_CONTA_ORCAMENTO: TIntegerField;
    cdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField;
    cdsFinanceiroVLR_SAIDA: TFloatField;
    cdsFinanceiroVLR_ENTRADA: TFloatField;
    cdsFinanceiroID_EXTCOMISSAO: TIntegerField;
    cdsFinanceiroID_NOTA: TIntegerField;
    cdsFinanceiroID_NOTA_SERVICO: TIntegerField;
    cdsFinanceiroID_CUPOM: TIntegerField;
    cdsFinanceiroID_CHEQUE: TIntegerField;
    cdsFinanceiroID_CONTA_ORCAMENTO: TIntegerField;
    sdsFinanceiroID_TERMINAL: TIntegerField;
    cdsFinanceiroID_TERMINAL: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsAtelier_MovBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    vID_Financeiro : Integer;
    procedure prc_Abrir_Financeiro(ID : Integer);
    procedure prc_Gravar_Financeiro;
    procedure prc_Excluir_Financeiro(ID : Integer);
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    ctConsulta : String;
    ctFinanceiro : String;
    vMsgErro : String;
    ctCommand : String;
    vDtEnvio, vDtRetorno : TDateTime;
    vVlrUnitario : Real;
    vID_Atelier : Integer;
    vTipo_ER : String; //E= Envio   R= Retorno
    vOpcao : String; //S= Selecionados   I=Individual
    vCancelar : Boolean;

    procedure prc_Localizar(ID : Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadAtelier_Mov: TDMCadAtelier_Mov;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

procedure TDMCadAtelier_Mov.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctConsulta   := sdsConsulta.CommandText;
  ctCommand    := sdsAtelier_Mov.CommandText;
  ctFinanceiro := sdsFinanceiro.CommandText;
  cdsFilial.Close;
  cdsContas.Close;
  qParametros.Close;
  cdsFilial.Open;
  cdsAtelier.Open;
  cdsCliente.open;
  qParametros.Open;
  cdsContas.Open;
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

procedure TDMCadAtelier_Mov.DataModuleDestroy(Sender: TObject);
begin
  cdsFilial.Close;
  cdsAtelier.Close;
  cdsCliente.Close;
  qParametros.Close;
end;

procedure TDMCadAtelier_Mov.prc_Abrir_Financeiro(ID: Integer);
begin
  cdsFinanceiro.Close;
  sdsFinanceiro.ParamByName('ID').AsInteger := ID;
  cdsFinanceiro.Open;
end;

procedure TDMCadAtelier_Mov.prc_Excluir;
begin
  if not(cdsAtelier_Mov.Active) or (cdsAtelier_Mov.IsEmpty) then
    exit;
  cdsAtelier_Mov.Delete;
  cdsAtelier_Mov.ApplyUpdates(0);
end;

procedure TDMCadAtelier_Mov.prc_Gravar;
var
  vID_Financeiro : Integer;
  ID: TTransactionDesc;
begin
  vMsgErro := '';
  if cdsAtelier_MovID_Atelier.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Atelier não informado!';
  if cdsAtelier_MovDT_MOV.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data do lançamento não informada!';
  if cdsAtelier_MovDT_REFERENCIA.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data de referência não informada!';
  if StrToFloat(FormatFloat('0.00',cdsAtelier_MovVLR_MOV.AsFloat)) <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Valor não informado!';
  if cdsAtelier_MovFILIAL.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Filial não informada!';

  if trim(vMsgErro) <> '' then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    prc_Gravar_Financeiro;

    if cdsAtelier_Mov.State in [dsEdit,dsInsert] then
      cdsAtelier_Mov.Post;

    cdsAtelier_Mov.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
end;

procedure TDMCadAtelier_Mov.prc_Gravar_Financeiro;
var
  vAux : Integer;
begin
  vID_Financeiro := 0;
  if cdsAtelier_MovID_FINANCEIRO.AsInteger > 0 then
    vID_Financeiro := cdsAtelier_MovID_FINANCEIRO.AsInteger;
  prc_Abrir_Financeiro(vID_Financeiro);
  vID_Financeiro := 0;
  if (cdsAtelier_MovID_CONTA.AsInteger <= 0) or (cdsAtelier_MovID_CONTA.IsNull) then
  begin
    if cdsFinanceiroID.AsInteger > 0 then
      prc_Excluir_Financeiro(cdsFinanceiroID.AsInteger);
    exit;
  end;

  if (cdsFinanceiro.IsEmpty) or (cdsFinanceiroID.AsInteger <= 0) or (cdsFinanceiroID.IsNull) then
  begin
    vAux := dmDatabase.ProximaSequencia('FINANCEIRO',0);
    cdsFinanceiro.Insert;
    cdsFinanceiroID.AsInteger := vAux;
  end
  else
    cdsFinanceiro.Edit;
  cdsFinanceiroTIPO_ES.AsString            := 'S';
  cdsFinanceiroID_CONTA.AsInteger          := cdsAtelier_MovID_CONTA.AsInteger;
  cdsFinanceiroDTMOVIMENTO.AsDateTime      := cdsAtelier_MovDT_MOV.AsDateTime;
  cdsFinanceiroID_MOVDUPLICATA.AsInteger   := 0;
  cdsFinanceiroITEM_MOVDUPLICATA.AsInteger := 0;
  cdsFinanceiroVLR_MOVIMENTO.AsFloat       := StrToFloat(FormatFloat('0.00',cdsAtelier_MovVLR_MOV.AsFloat));
  if cdsAtelierATELIER_CONTA_ID.AsInteger > 0 then
    cdsFinanceiroID_CONTA_ORCAMENTO.AsInteger := cdsAtelierATELIER_CONTA_ID.AsInteger
  else
    cdsFinanceiroID_CONTA_ORCAMENTO.Clear;
  cdsAtelier.Locate('CODIGO',cdsAtelier_MovID_ATELIER.AsInteger,([Locaseinsensitive]));

  cdsFinanceiroHISTORICO_COMPL.AsString := 'Pgto. Atelier ' + cdsAtelierNOME.AsString;
  cdsFinanceiroHISTORICO_COMPL.AsString := UpperCase(cdsFinanceiroHISTORICO_COMPL.AsString);
  
  cdsFinanceiroID_PESSOA.AsInteger := cdsAtelier_MovID_ATELIER.AsInteger;

  cdsFinanceiroFILIAL.AsInteger := cdsAtelier_MovFILIAL.AsInteger;
  cdsFinanceiroDTUSUARIO.AsDateTime  := Date;
  cdsFinanceiroHRUSUARIO.AsDateTime  := Now;
  //12/07/2016
  if vTerminal <= 0 then
    cdsFinanceiroID_TERMINAL.Clear
  else
    cdsFinanceiroID_TERMINAL.AsInteger := vTerminal;
  cdsFinanceiro.Post;

  cdsFinanceiro.ApplyUpdates(0);

  if cdsAtelier_Mov.State in [dsBrowse] then
    cdsAtelier_Mov.Edit;
  cdsAtelier_MovID_FINANCEIRO.AsInteger := cdsFinanceiroID.AsInteger;
  vID_Financeiro := cdsFinanceiroID.AsInteger;
end;

procedure TDMCadAtelier_Mov.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsAtelier_Mov.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('ATELIER_MOV',0);
                                    
  cdsAtelier_Mov.Insert;
  cdsAtelier_MovID.AsInteger := vAux;
  cdsAtelier_MovDT_MOV.AsDateTime := Date;
  cdsAtelier_MovTIPO.AsString     := 'PAG';
  if cdsFilial.RecordCount <= 1 then
    cdsAtelier_MovFILIAL.AsInteger := cdsFilialID.AsInteger;
end;

procedure TDMCadAtelier_Mov.prc_Localizar(ID: Integer);
begin
  cdsAtelier_Mov.Close;
  sdsAtelier_Mov.CommandText := ctCommand;
  if ID <> 0 then
    sdsAtelier_Mov.CommandText := sdsAtelier_Mov.CommandText
                         + ' WHERE MOV.ID = ' + IntToStr(ID);
  cdsAtelier_Mov.Open;
end;

procedure TDMCadAtelier_Mov.cdsAtelier_MovBeforePost(DataSet: TDataSet);
begin
  if (cdsAtelier_MovID_CONTA.AsInteger <= 0) or (cdsAtelier_MovID_CONTA.IsNull) then
    cdsAtelier_MovID_CONTA.Clear;
end;

procedure TDMCadAtelier_Mov.prc_Excluir_Financeiro(ID : Integer);
begin
  cdsFinanceiro.Delete;
end;

procedure TDMCadAtelier_Mov.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
