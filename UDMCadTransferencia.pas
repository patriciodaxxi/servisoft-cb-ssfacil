unit UDMCadTransferencia;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, UDMGravarFinanceiro, Dialogs, dbXPress;

  //SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, UDMCadExtComissao, UDMGravarFinanceiro, xmldom,
  //Math, Xmlxform, RLFilters, RLPDFFilter, DateUtils, RLHTMLFilter,
  //RLRichFilter, RLPreviewForm, LogTypes, dialogs;


type
  TDMCadTransferencia = class(TDataModule)
    sdsTransferencia: TSQLDataSet;
    dspTransferencia: TDataSetProvider;
    cdsTransferencia: TClientDataSet;
    dsTransferencia: TDataSource;
    sdsTransferenciaID: TIntegerField;
    sdsTransferenciaDTEMISSAO: TDateField;
    sdsTransferenciaID_CONTA_ORI: TIntegerField;
    sdsTransferenciaID_CONTA_DEST: TIntegerField;
    sdsTransferenciaVLR_MOVIMENTO: TFloatField;
    sdsTransferenciaID_FORMA_PAGAMENTO: TIntegerField;
    sdsTransferenciaID_CONTA_ORCAMENTO: TIntegerField;
    cdsTransferenciaID: TIntegerField;
    cdsTransferenciaDTEMISSAO: TDateField;
    cdsTransferenciaID_CONTA_ORI: TIntegerField;
    cdsTransferenciaID_CONTA_DEST: TIntegerField;
    cdsTransferenciaVLR_MOVIMENTO: TFloatField;
    cdsTransferenciaID_FORMA_PAGAMENTO: TIntegerField;
    cdsTransferenciaID_CONTA_ORCAMENTO: TIntegerField;
    sdsContas: TSQLDataSet;
    sdsContasID: TIntegerField;
    sdsContasNOME: TStringField;
    sdsContasTIPO_CONTA: TStringField;
    sdsContasID_BANCO: TIntegerField;
    sdsContasFILIAL: TIntegerField;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    cdsContasID: TIntegerField;
    cdsContasNOME: TStringField;
    cdsContasTIPO_CONTA: TStringField;
    cdsContasID_BANCO: TIntegerField;
    cdsContasFILIAL: TIntegerField;
    dsContas: TDataSource;
    sdsTransferencia_Consulta: TSQLDataSet;
    dspTransferencia_Consulta: TDataSetProvider;
    cdsTransferencia_Consulta: TClientDataSet;
    dsTransferencia_Consulta: TDataSource;
    cdsTransferencia_ConsultaID: TIntegerField;
    cdsTransferencia_ConsultaDTEMISSAO: TDateField;
    cdsTransferencia_ConsultaID_CONTA_ORI: TIntegerField;
    cdsTransferencia_ConsultaID_CONTA_DEST: TIntegerField;
    cdsTransferencia_ConsultaVLR_MOVIMENTO: TFloatField;
    cdsTransferencia_ConsultaID_FORMA_PAGAMENTO: TIntegerField;
    cdsTransferencia_ConsultaID_CONTA_ORCAMENTO: TIntegerField;
    cdsTransferencia_ConsultaNOME_CONTA_ORIGEM: TStringField;
    cdsTransferencia_ConsultaNOME_CONTA_DESTINO: TStringField;
    sdsTransferenciaID_CONTA_ORC_ORIGEM: TIntegerField;
    sdsTransferenciaID_CONTA_ORC_DESTINO: TIntegerField;
    cdsTransferenciaID_CONTA_ORC_ORIGEM: TIntegerField;
    cdsTransferenciaID_CONTA_ORC_DESTINO: TIntegerField;
    qConta_Orcamento: TSQLQuery;
    qConta_OrcamentoID: TIntegerField;
    qConta_OrcamentoTIPO: TStringField;
    qConta_OrcamentoCODIGO: TStringField;
    qConta_OrcamentoDESCRICAO: TStringField;
    sdsTransferenciaNUMCHEQUE: TIntegerField;
    sdsTipoCobranca: TSQLDataSet;
    dspTipoCobranca: TDataSetProvider;
    cdsTipoCobranca: TClientDataSet;
    dsTipoCobranca: TDataSource;
    cdsTipoCobrancaID: TIntegerField;
    cdsTipoCobrancaNOME: TStringField;
    cdsTipoCobrancaDEPOSITO: TStringField;
    cdsTipoCobrancaCHEQUE: TStringField;
    cdsTipoCobrancaCARTAOCREDITO: TStringField;
    cdsTipoCobrancaCARTAODEBITO: TStringField;
    cdsTipoCobrancaDINHEIRO: TStringField;
    cdsTransferenciaNUMCHEQUE: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspTransferenciaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    vID_MovOrigem, vID_MovDestino: Integer;
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    procedure prc_Gravar_Financeiro(Tipo: String ; ID_Conta, ID_Conta_2 : Integer);
    procedure prc_Excluir_Financeiro(ID_Transferencia: Integer = 0);

  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctConsulta: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    function fnc_Possui_Erro: Boolean;

  end;

var
  DMCadTransferencia: TDMCadTransferencia;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadTransferencia.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsTransferencia.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TRANSFERENCIA',0);

  cdsTransferencia.Insert;
  cdsTransferenciaID.AsInteger := vAux;
end;

procedure TDMCadTransferencia.prc_Excluir;
begin
  if not(cdsTransferencia.Active) or (cdsTransferencia.IsEmpty) then
    exit;
  cdsTransferencia.Delete;
  cdsTransferencia.ApplyUpdates(0);
end;

procedure TDMCadTransferencia.prc_Gravar;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 70;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 '
                     + ' WHERE TABELA = ' + QuotedStr('FINANCEIRO');
    sds.ExecSQL();

    prc_Excluir_Financeiro(cdsTransferenciaID.AsInteger);

    prc_Gravar_Financeiro('S',cdsTransferenciaID_CONTA_ORI.AsInteger,cdsTransferenciaID_CONTA_DEST.AsInteger);
    prc_Gravar_Financeiro('E',cdsTransferenciaID_CONTA_DEST.AsInteger,cdsTransferenciaID_CONTA_ORI.AsInteger);

    if not(cdsTransferencia.State in [dsEdit,dsInsert]) then
      cdsTransferencia.Edit;

    cdsTransferencia.Post;
    cdsTransferencia.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);

end;

procedure TDMCadTransferencia.prc_Localizar(ID: Integer);
begin
  cdsTransferencia.Close;
  sdsTransferencia.CommandText := ctCommand;
  if ID <> 0 then
    sdsTransferencia.CommandText := sdsTransferencia.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsTransferencia.Open;
end;

procedure TDMCadTransferencia.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsTransferencia.CommandText;
  ctConsulta := sdsTransferencia_Consulta.CommandText;
  cdsContas.Open;
  cdsTipoCobranca.Open;
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

procedure TDMCadTransferencia.dspTransferenciaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadTransferencia.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

function TDMCadTransferencia.fnc_Possui_Erro: Boolean;
begin
  Result   := False;
  vMsgErro := '';
  if cdsTransferenciaID_CONTA_ORI.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Conta Origem não informada!';
  if cdsTransferenciaID_CONTA_DEST.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Conta Destino não informada!';
  if (cdsTransferenciaID_CONTA_ORI.AsInteger > 0) and (cdsTransferenciaID_CONTA_ORI.AsInteger = cdsTransferenciaID_CONTA_DEST.AsInteger) then
    vMsgErro := vMsgErro + #13 + '*** Conta Origem e Destino iguais!';
  if StrToFloat(FormatFloat('0.00',cdsTransferenciaVLR_MOVIMENTO.AsFloat)) <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Valor não informado!';
  if cdsTransferenciaDTEMISSAO.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data do movimento não informada!';
  if (cdsContas.Locate('ID',cdsTransferenciaID_CONTA_ORI.AsInteger,[loCaseInsensitive])) and (cdsContasFILIAL.AsInteger <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Filial não informada na conta de origem ' + cdsContasNOME.AsString;
  if (cdsContas.Locate('ID',cdsTransferenciaID_CONTA_DEST.AsInteger,[loCaseInsensitive])) and (cdsContasFILIAL.AsInteger <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Filial não informada na conta de destino ' + cdsContasNOME.AsString;
  if trim(vMsgErro) <> '' then
    Result := True;
end;

procedure TDMCadTransferencia.prc_Gravar_Financeiro(Tipo: String ; ID_Conta, ID_Conta_2 : Integer);
var
  fDMGravarFinanceiro: TDMGravarFinanceiro;
begin
  fDMGravarFinanceiro := TDMGravarFinanceiro.Create(Self);

  try
    fDMGravarFinanceiro.vTipo_ES := Tipo;
    cdsContas.Locate('ID',ID_Conta_2,[loCaseInsensitive]);
    if fDMGravarFinanceiro.vTipo_ES = 'S' then
    begin
      fDMGravarFinanceiro.vHistorico_Compl := 'Saida por transferencia para ' + cdsContasNOME.AsString;
      fDMGravarFinanceiro.vID_Conta_Orcamento := cdsTransferenciaID_CONTA_ORC_ORIGEM.AsInteger;
    end
    else
    if fDMGravarFinanceiro.vTipo_ES = 'E' then
    begin
      fDMGravarFinanceiro.vHistorico_Compl := 'Entrada por transferencia de ' + cdsContasNOME.AsString;
      fDMGravarFinanceiro.vID_Conta_Orcamento := cdsTransferenciaID_CONTA_ORC_DESTINO.AsInteger;
    end;

    cdsContas.Locate('ID',ID_Conta,[loCaseInsensitive]);
    fDMGravarFinanceiro.vID_Conta           := ID_Conta;
    fDMGravarFinanceiro.vID_ModDuplicata    := 0;
    fDMGravarFinanceiro.vItem_MovDuplicata  := 0;
    fDMGravarFinanceiro.vID_Historico       := 0;
    fDMGravarFinanceiro.vID_Pessoa          := 0;
    if cdsTransferenciaID_FORMA_PAGAMENTO.AsInteger > 0 then
      fDMGravarFinanceiro.vID_Forma_Pagamento := cdsTransferenciaID_FORMA_PAGAMENTO.AsInteger;
    fDMGravarFinanceiro.vID_ExtComissao     := 0;
    fDMGravarFinanceiro.vDtMovimento        := cdsTransferenciaDTEMISSAO.AsDateTime;
    fDMGravarFinanceiro.vVlr_Movimento      := StrToFloat(FormatFloat('0.00',cdsTransferenciaVLR_MOVIMENTO.AsFloat));
//    if cdsTransferenciaID_CONTA_ORCAMENTO.AsInteger > 0 then
//      fDMGravarFinanceiro.vID_Conta_Orcamento := cdsTransferenciaID_CONTA_ORCAMENTO.AsInteger;
    fDMGravarFinanceiro.vID_Transferencia := cdsTransferenciaID.AsInteger;

    vFilial := cdsContasFILIAL.AsInteger;

    fDMGravarFinanceiro.prc_Gravar;
  except
    on e: Exception do
    begin
      MessageDlg('Erro ao gravar financeiro: ' + #13 + e.Message, mtInformation, [mbOk], 0);
     // Raise Exception.Create('Ocorreu o seguinte erro ao gravar a nota: ' + #13 + e.Message);
    end
  end;
  FreeAndNil(fDMGravarFinanceiro);
end;

procedure TDMCadTransferencia.prc_Excluir_Financeiro(ID_Transferencia: Integer);
var
  sds: TSQLDataSet;
begin
  if ID_Transferencia <= 0 then
    ID_Transferencia := cdsTransferenciaID.AsInteger;
  if ID_Transferencia <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM FINANCEIRO WHERE ID_TRANSFERENCIA = ' + IntToStr(ID_Transferencia);
  sds.ExecSQL;               

  FreeAndNil(sds);
end;

end.
