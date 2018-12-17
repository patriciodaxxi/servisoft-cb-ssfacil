unit UDMConsFinanceiro;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, StrUtils;

type
  TDMConsFinanceiro = class(TDataModule)
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    dsFilial: TDataSource;
    sdsConsulta_Conta_Orc: TSQLDataSet;
    dspConsulta_Conta_Orc: TDataSetProvider;
    cdsConsulta_Conta_Orc: TClientDataSet;
    mConta_Orc: TClientDataSet;
    mConta_OrcID: TIntegerField;
    mConta_OrcCodigo: TStringField;
    mConta_OrcNome: TStringField;
    mConta_OrcTipo_ES: TStringField;
    cdsConsulta_Conta_OrcVLR_PARCELA: TFloatField;
    cdsConsulta_Conta_OrcVLR_DEVOLUCAO: TFloatField;
    cdsConsulta_Conta_OrcVLR_RESTANTE: TFloatField;
    cdsConsulta_Conta_OrcVLR_PAGO: TFloatField;
    cdsConsulta_Conta_OrcTIPO_ES: TStringField;
    cdsConsulta_Conta_OrcNOME_CONTA_ORCAMENTO: TStringField;
    cdsConsulta_Conta_OrcCOD_CONTA_ORCAMENTO: TStringField;
    cdsConsulta_Conta_OrcID_CONTA_ORCAMENTO: TIntegerField;
    mConta_OrcVlr_Total: TFloatField;
    mConta_OrcVlr_Pago: TFloatField;
    mConta_OrcVlr_Restante: TFloatField;
    cdsConsulta_Conta_OrcSUPERIOR: TStringField;
    qConta_Orcamento: TSQLQuery;
    qConta_OrcamentoID: TIntegerField;
    qConta_OrcamentoTIPO: TStringField;
    qConta_OrcamentoCODIGO: TStringField;
    qConta_OrcamentoDESCRICAO: TStringField;
    qConta_OrcamentoNIVEL: TIntegerField;
    qConta_OrcamentoSUPERIOR: TStringField;
    qConta_OrcamentoINATIVO: TStringField;
    qConta_OrcamentoID_PESSOA: TIntegerField;
    qConta_OrcamentoDIA_VENCIMENTO: TIntegerField;
    qConta_OrcamentoDTVENCIMENTO: TDateField;
    qConta_OrcamentoTIPO_CALCULO: TStringField;
    qConta_OrcamentoVALOR: TFloatField;
    qConta_OrcamentoTIPO_DESPESA: TStringField;
    qConta_OrcamentoTIPO_RD: TStringField;
    dsmConta_Orc: TDataSource;
    cdsConsulta_Conta_OrcNIVEL: TIntegerField;
    mConta_OrcTipo_Conta: TStringField;
    sdsConsulta_Conta_Orc_Dt: TSQLDataSet;
    dspConsulta_Conta_Orc_Dt: TDataSetProvider;
    cdsConsulta_Conta_Orc_Dt: TClientDataSet;
    cdsConsulta_Conta_Orc_DtVLR_PARCELA: TFloatField;
    cdsConsulta_Conta_Orc_DtVLR_DEVOLUCAO: TFloatField;
    cdsConsulta_Conta_Orc_DtVLR_RESTANTE: TFloatField;
    cdsConsulta_Conta_Orc_DtVLR_PAGO: TFloatField;
    cdsConsulta_Conta_Orc_DtTIPO_ES: TStringField;
    cdsConsulta_Conta_Orc_DtNOME_CONTA_ORCAMENTO: TStringField;
    cdsConsulta_Conta_Orc_DtCOD_CONTA_ORCAMENTO: TStringField;
    cdsConsulta_Conta_Orc_DtID_CONTA_ORCAMENTO: TIntegerField;
    cdsConsulta_Conta_Orc_DtSUPERIOR: TStringField;
    cdsConsulta_Conta_Orc_DtNIVEL: TIntegerField;
    cdsConsulta_Conta_Orc_DtDTVENCIMENTO: TDateField;
    mConta_Orc_Dt_ant: TClientDataSet;
    dsmConta_Orc_Dt_ant: TDataSource;
    mConta_Orc_Dt_antTipo_ES: TStringField;
    mConta_Orc_Dt_antID_Conta_Orc: TIntegerField;
    mConta_Orc_Dt_antCod_Conta_Orc: TStringField;
    mConta_Orc_Dt_antNome_Conta_Orc: TStringField;
    mConta_Orc_Dt_antMes: TIntegerField;
    mConta_Orc_Dt_antAno: TIntegerField;
    mConta_Orc_Dt_antDesc_Mes: TStringField;
    mConta_Orc_Dt_antVlr_Previsto1: TFloatField;
    mConta_Orc_Dt_antVlr_Realizado1: TFloatField;
    mConta_Orc_Dt_antVlr_Previsto2: TFloatField;
    mConta_Orc_Dt_antVlr_Previsto3: TFloatField;
    mConta_Orc_Dt_antVlr_Previsto4: TFloatField;
    mConta_Orc_Dt_antVlr_Previsto5: TFloatField;
    mConta_Orc_Dt_antVlr_Realizado2: TFloatField;
    mConta_Orc_Dt_antVlr_Realizado3: TFloatField;
    mConta_Orc_Dt_antVlr_Realizado4: TFloatField;
    mConta_Orc_Dt_antVlr_Realizado5: TFloatField;
    mConta_Orc_Dt_antTipo_Reg: TStringField;
    mConta_Orc_Dt_antTipo_Conta: TStringField;
    cdsConsulta_Conta_Orc_DtTIPO_CONTA: TStringField;
    mConta_Orc_Dt: TClientDataSet;
    dsmConta_Orc_Dt: TDataSource;
    mConta_Orc_DtTipo_ES: TStringField;
    mConta_Orc_DtID_Conta_Orc: TIntegerField;
    mConta_Orc_DtCod_Conta_Orc: TStringField;
    mConta_Orc_DtNome_Conta_Orc: TStringField;
    mConta_Orc_DtMes: TIntegerField;
    mConta_Orc_DtAno: TIntegerField;
    mConta_Orc_DtDesc_Mes: TStringField;
    mConta_Orc_DtDesc_Valor1: TADTField;
    mConta_Orc_DtDesc_Valor1Vlr_Previsto1: TFloatField;
    mConta_Orc_DtDesc_Valor1Vlr_Realizado1: TFloatField;
    mConta_Orc_DtDesc_Valor2: TADTField;
    mConta_Orc_DtDesc_Valor2Vlr_Previsto2: TFloatField;
    mConta_Orc_DtDesc_Valor2Vlr_Realizado2: TFloatField;
    mConta_Orc_DtDesc_Valor3: TADTField;
    mConta_Orc_DtDesc_Valor3Vlr_Previsto3: TFloatField;
    mConta_Orc_DtDesc_Valor3Vlr_Realizado3: TFloatField;
    mConta_Orc_DtDesc_Valor4: TADTField;
    mConta_Orc_DtDesc_Valor4Vlr_Previsto4: TFloatField;
    mConta_Orc_DtDesc_Valor4Vlr_Realizado4: TFloatField;
    mConta_Orc_DtDesc_Valor5: TADTField;
    mConta_Orc_DtDesc_Valor5Vlr_Previsto5: TFloatField;
    mConta_Orc_DtDesc_Valor5Vlr_Realizado5: TFloatField;
    mConta_Orc_DtTipo_Reg: TStringField;
    mConta_Orc_DtTipo_Conta: TStringField;
    sdsDespesa: TSQLDataSet;
    dspDespesa: TDataSetProvider;
    cdsDespesa: TClientDataSet;
    cdsDespesaNUMDUPLICATA: TStringField;
    cdsDespesaDTEMISSAO: TDateField;
    cdsDespesaID_CONTA_ORCAMENTO: TIntegerField;
    cdsDespesaID_PESSOA: TIntegerField;
    cdsDespesaDTVENCIMENTO: TDateField;
    cdsDespesaNUMNOTA: TIntegerField;
    cdsDespesaSERIE: TStringField;
    cdsDespesaTIPO_ES: TStringField;
    cdsDespesaTIPO_LANCAMENTO: TStringField;
    cdsDespesaTIPO_MOV: TStringField;
    cdsDespesaVLR_PARCELA: TFloatField;
    cdsDespesaID_NOTA: TIntegerField;
    cdsDespesaNOME_PESSOA: TStringField;
    cdsDespesaNOME_CONTA_ORCAMENTO: TStringField;
    mDespesa: TClientDataSet;
    mDespesaDtEmissao: TDateField;
    mDespesaID_ContasOrcamento: TIntegerField;
    mDespesaID_Pessoa: TIntegerField;
    mDespesaDtVencimento: TDateField;
    mDespesaNumNota: TIntegerField;
    mDespesaNumDuplicata: TStringField;
    mDespesaVlrTotal: TFloatField;
    mDespesaVlrIpi: TFloatField;
    mDespesaVlrIcms: TFloatField;
    mDespesaSituacao: TStringField;
    dsmDespesa: TDataSource;
    mDespesaTipo: TStringField;
    qNota_Entrada: TSQLQuery;
    qNota_EntradaVLR_ICMS: TFloatField;
    qNota_EntradaVLR_IPI: TFloatField;
    cdsDespesaVLR_RESTANTE: TFloatField;
    cdsDespesaVLR_PAGO: TFloatField;
    qNota_EntradaVLR_NOTA: TFloatField;
    mDespesaNome_ContaOrcamento: TStringField;
    mDespesaNome_Pessoa: TStringField;
    sdsFornecedor: TSQLDataSet;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dsFornecedor: TDataSource;
    cdsFornecedorCODIGO: TIntegerField;
    cdsFornecedorNOME: TStringField;
    cdsFornecedorFANTASIA: TStringField;
    sdsOC_Pendente: TSQLDataSet;
    dspOC_Pendente: TDataSetProvider;
    cdsOC_Pendente: TClientDataSet;
    mDespesaPrazo_OC: TStringField;
    cdsOC_PendenteTIPO_REG: TStringField;
    cdsOC_PendenteQTD_RESTANTE: TFloatField;
    cdsOC_PendenteQTD: TFloatField;
    cdsOC_PendenteVLR_UNITARIO: TFloatField;
    cdsOC_PendenteID_CLIENTE: TIntegerField;
    cdsOC_PendenteID_CONTA_ORCAMENTO: TIntegerField;
    cdsOC_PendenteNUM_PEDIDO: TIntegerField;
    cdsOC_PendenteNOME_FORNECEDOR: TStringField;
    cdsOC_PendenteNOME_CONTA_ORCAMENTO: TStringField;
    cdsOC_PendenteNOME_CONDICAO: TStringField;
    mDespesaNumOC: TIntegerField;
    cdsOC_PendenteDTEMISSAO: TDateField;
    cdsOC_PendentePERC_IPI: TFloatField;
    cdsOC_PendentePERC_ICMS: TFloatField;
    qParametros_Cta_Orc: TSQLQuery;
    qParametros_Cta_OrcID: TIntegerField;
    qParametros_Cta_OrcID_CONTA_ORC_RECEITA: TIntegerField;
    qParametros_Cta_OrcID_CONTA_ORC_DESPESA: TIntegerField;
    sdsPedido_Pend: TSQLDataSet;
    dspPedido_Pend: TDataSetProvider;
    cdsPedido_Pend: TClientDataSet;
    cdsPedido_PendID_CLIENTE: TIntegerField;
    cdsPedido_PendNOME_CLIENTE: TStringField;
    cdsPedido_PendVLR_RESTANTE: TFloatField;
    cdsPedido_PendQTD_RESTANTE: TFloatField;
    cdsPedido_PendREFERENCIA: TStringField;
    cdsPedido_PendID_PRODUTO: TIntegerField;
    cdsPedido_PendNOME_PRODUTO: TStringField;
    cdsPedido_PendDTENTREGA: TDateField;
    sdsDuplicata_Det: TSQLDataSet;
    dspDuplicata_Det: TDataSetProvider;
    cdsDuplicata_Det: TClientDataSet;
    cdsDuplicata_DetNUMDUPLICATA: TStringField;
    cdsDuplicata_DetNUMNOTA: TIntegerField;
    cdsDuplicata_DetDTEMISSAO: TDateField;
    cdsDuplicata_DetDTVENCIMENTO: TDateField;
    cdsDuplicata_DetVLR_PARCELA: TFloatField;
    cdsDuplicata_DetVLR_RESTANTE: TFloatField;
    cdsDuplicata_DetVLR_PAGO: TFloatField;
    cdsDuplicata_DetID_PESSOA: TIntegerField;
    cdsDuplicata_DetNOME_PESSOA: TStringField;
    cdsDuplicata_DetID: TIntegerField;
    dsDuplicata_det: TDataSource;
    dsPedido_Pend: TDataSource;
    cdsPedido_PendTIPO_REG: TStringField;
    sdsDuplicata_Cli: TSQLDataSet;
    dspDuplicata_Cli: TDataSetProvider;
    cdsDuplicata_Cli: TClientDataSet;
    dsDuplicata_Cli: TDataSource;
    cdsDuplicata_CliVLR_PARCELA: TFloatField;
    cdsDuplicata_CliVLR_RESTANTE: TFloatField;
    cdsDuplicata_CliVLR_PAGO: TFloatField;
    cdsDuplicata_CliID_PESSOA: TIntegerField;
    cdsDuplicata_CliNOME_PESSOA: TStringField;
    sdsPedido_Cli: TSQLDataSet;
    dspPedido_Cli: TDataSetProvider;
    cdsPedido_Cli: TClientDataSet;
    dsPedido_Cli: TDataSource;
    cdsPedido_CliID_CLIENTE: TIntegerField;
    cdsPedido_CliNOME_CLIENTE: TStringField;
    cdsPedido_CliVLR_RESTANTE: TFloatField;
    cdsPedido_CliQTD_RESTANTE: TFloatField;
    cdsPedido_CliDTENTREGA: TDateField;
    cdsPedido_CliTIPO_REG: TStringField;
    mConta_OrcQtd_Restante: TFloatField;
    sdsPrazoMedio: TSQLDataSet;
    dspPrazoMedio: TDataSetProvider;
    cdsPrazoMedio: TClientDataSet;
    dsPrazoMedio: TDataSource;
    cdsPrazoMedioQTDDIAS: TIntegerField;
    cdsPrazoMedioVLR_PARCELA: TFloatField;
    mPrazo: TClientDataSet;
    dsmPrazo: TDataSource;
    mPrazoDescricao: TStringField;
    mPrazoQtdDias: TIntegerField;
    mPrazoQtdDup: TIntegerField;
    mPrazoVlrDup: TFloatField;
    mPrazoItem: TIntegerField;
    cdsPrazoMedioQTDDUP: TFloatField;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteFANTASIA: TStringField;
    dsCliente: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure mConta_OrcNewRecord(DataSet: TDataSet);
    procedure mDespesaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    ctConsulta_Conta_Orc, ctConsulta_Conta_Orc_Dt : String;
    ctDespesa : String;
    ctOC_Pendente : String;
    ctDuplicata_Det : String;
    ctDuplicata_Cli : String;
    ctPedido_Cli : String;
    ctPedido_Pend : String;
    ctPrazoMedio : String;

    vDtInicial, vDtFinal : TDateTime;
    vTipo_Data : String;
    vTotal_Rec, vTotal_Desp : Real;

    procedure prc_Abrir_Duplicata_Det;
    procedure prc_Abrir_Duplicata_Cli;
    procedure prc_Abrir_Pedido_Cli;
    procedure prc_Abrir_Pedido_Pend;

  end;

var
  DMConsFinanceiro: TDMConsFinanceiro;

implementation

uses DmdDatabase;


{$R *.dfm}

{ TDMConsFinanceiro }

procedure TDMConsFinanceiro.DataModuleCreate(Sender: TObject);
begin
  cdsFilial.Open;
  ctConsulta_Conta_Orc    := sdsConsulta_Conta_Orc.CommandText;
  ctConsulta_Conta_Orc_Dt := sdsConsulta_Conta_Orc_Dt.CommandText;
  ctDespesa               := sdsDespesa.CommandText;
  ctOC_Pendente           := sdsOC_Pendente.CommandText;
  ctDuplicata_Det         := sdsDuplicata_Det.CommandText;
  ctDuplicata_Cli         := sdsDuplicata_Cli.CommandText;
  ctPedido_Cli            := sdsPedido_Cli.CommandText;
  ctPedido_Pend           := sdsPedido_Pend.CommandText;
  ctPrazoMedio            := sdsPrazoMedio.CommandText;
end;

procedure TDMConsFinanceiro.mConta_OrcNewRecord(DataSet: TDataSet);
begin
  mConta_OrcVlr_Pago.AsFloat     := 0;
  mConta_OrcVlr_Restante.AsFloat := 0;
  mConta_OrcVlr_Total.AsFloat    := 0;
  mConta_OrcTipo_Conta.AsString  := 'A';
  mConta_OrcQtd_Restante.AsFloat := 0;
end;

procedure TDMConsFinanceiro.mDespesaNewRecord(DataSet: TDataSet);
begin
  mDespesaVlrIcms.AsFloat  := 0;
  mDespesaVlrIpi.AsFloat   := 0;
  mDespesaVlrTotal.AsFloat := 0;
end;

procedure TDMConsFinanceiro.prc_Abrir_Duplicata_Cli;
var
  vComandoAux, vComandoAux2 : String;
  i : Integer;
begin
  i := PosEx('GROUP',ctDuplicata_Cli,0);
  vComandoAux  := copy(ctDuplicata_Cli,i,Length(ctDuplicata_Cli) - i + 1);
  vComandoAux2 := copy(ctDuplicata_Cli,1,i-1);

  cdsDuplicata_Cli.Close;
  cdsDuplicata_Cli.IndexFieldNames := 'NOME_PESSOA';
  vComandoAux2 := vComandoAux2 + ' WHERE D.TIPO_ES = ' + QuotedStr(mConta_OrcTipo_ES.AsString);
  if vTipo_Data = 'E' then
    vComandoAux2 := vComandoAux2 + ' AND D.DTEMISSAO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtInicial))
              + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtFinal))
  else
  if vTipo_Data = 'V' then
    vComandoAux2 := vComandoAux2 + ' AND D.DTVENCIMENTO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtInicial))
              + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtFinal));
  if (mConta_OrcID.AsInteger <> 777700) and (mConta_OrcID.AsInteger <> 777800)
     and (mConta_OrcID.AsInteger <> 888100) then
    vComandoAux2 := vComandoAux2 + ' AND D.ID_CONTA_ORCAMENTO = ' + IntToStr(mConta_OrcID.AsInteger)
  else
    vComandoAux2 := vComandoAux2 + ' AND D.ID_CONTA_ORCAMENTO IS NULL ';
  sdsDuplicata_Cli.CommandText := vComandoAux2 + vComandoAux;
  cdsDuplicata_Cli.Open;
end;

procedure TDMConsFinanceiro.prc_Abrir_Duplicata_Det;
var
  vComando : String;
begin
  cdsDuplicata_Det.Close;
  cdsDuplicata_Det.IndexFieldNames := 'DTVENCIMENTO;NOME_PESSOA';
  vComando := ' WHERE D.TIPO_ES = ' + QuotedStr(mConta_OrcTipo_ES.AsString);
  if vTipo_Data = 'E' then
    vComando := vComando + ' AND D.DTEMISSAO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtInicial))
              + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtFinal))
  else
  if vTipo_Data = 'V' then
    vComando := vComando + ' AND D.DTVENCIMENTO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtInicial))
              + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtFinal));
  if (mConta_OrcID.AsInteger <> 777700) and (mConta_OrcID.AsInteger <> 777800)
     and (mConta_OrcTipo_ES.AsString <> 'V') and (mConta_OrcTipo_ES.AsString <> 'X') then
    vComando := vComando + ' AND D.ID_CONTA_ORCAMENTO = ' + IntToStr(mConta_OrcID.AsInteger)
  else
    vComando := vComando + ' AND D.ID_CONTA_ORCAMENTO IS NULL ';
  sdsDuplicata_Det.CommandText := ctDuplicata_Det + vComando;
  cdsDuplicata_Det.Open;
end;

procedure TDMConsFinanceiro.prc_Abrir_Pedido_Cli;
var
  vComandoAux, vComandoAux2 : String;
  i : Integer;
begin
  i := PosEx('GROUP',ctPedido_Cli,0);
  vComandoAux  := copy(ctPedido_Cli,i,Length(ctPedido_Cli) - i + 1);
  vComandoAux2 := copy(ctPedido_Cli,1,i-1);
  i := PosEx('WHERE',vComandoAux2,0);
  delete(vComandoAux2,i,length(vComandoAux2) - i);
  cdsPedido_Cli.Close;
  cdsPedido_Cli.IndexFieldNames := 'DTENTREGA;NOME_CLIENTE';
  if mConta_OrcTipo_ES.AsString = 'V' then
    vComandoAux2 := vComandoAux2 + ' WHERE V.TIPO_REG = ' + QuotedStr('P')
  else
    vComandoAux2 := vComandoAux2 + ' WHERE V.TIPO_REG = ' + QuotedStr('C');
  if (mConta_OrcCodigo.AsString = '888099') or (mConta_OrcCodigo.AsString = '889099') then
    vComandoAux2 := vComandoAux2 + ' AND ((V.DTENTREGA IS NOT NULL) AND (V.DTENTREGA < ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + '))'
  else
    vComandoAux2 := vComandoAux2 + ' AND ((V.DTENTREGA IS NULL) or (V.DTENTREGA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + '))';
  sdsPedido_Cli.CommandText := vComandoAux2 + vComandoAux;
  cdsPedido_Cli.Open;
end;

procedure TDMConsFinanceiro.prc_Abrir_Pedido_Pend;
var
  vComandoAux, vComandoAux2 : String;
  i : Integer;
begin
  i := PosEx('GROUP',ctPedido_Pend,0);
  vComandoAux  := copy(ctPedido_Pend,i,Length(ctPedido_Pend) - i + 1);
  vComandoAux2 := copy(ctPedido_Pend,1,i-1);
  cdsPedido_Pend.Close;
  cdsPedido_Pend.IndexFieldNames := 'DTENTREGA;NOME_CLIENTE;REFERENCIA';
  if mConta_OrcTipo_ES.AsString = 'V' then
    vComandoAux2 := vComandoAux2 + ' WHERE V.TIPO_REG = ' + QuotedStr('P')
  else
    vComandoAux2 := vComandoAux2 + ' WHERE V.TIPO_REG = ' + QuotedStr('C');
  if (mConta_OrcCodigo.AsString = '888099') or (mConta_OrcCodigo.AsString = '889099') then
    vComandoAux2 := vComandoAux2 + ' AND ((V.DTENTREGA IS NOT NULL) AND (V.DTENTREGA < ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + '))'
  else
    vComandoAux2 := vComandoAux2 + ' AND ((V.DTENTREGA IS NULL) or (V.DTENTREGA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + '))';
  sdsPedido_Pend.CommandText := vComandoAux2 + vComandoAux;
  cdsPedido_Pend.Open;
end;

end.
