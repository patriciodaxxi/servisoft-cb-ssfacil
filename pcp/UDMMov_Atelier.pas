unit UDMMov_Atelier;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, LogTypes,
  frxBarcode, frxClass, frxDBSet, UDMGravarFinanceiro;

type
  TDMMov_Atelier = class(TDataModule)
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsProdutoID: TIntegerField;
    sdsProdutoREFERENCIA: TStringField;
    sdsProdutoNOME: TStringField;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    sdsAtelier: TSQLDataSet;
    dspAtelier: TDataSetProvider;
    cdsAtelier: TClientDataSet;
    dsAtelier: TDataSource;
    cdsAtelierCODIGO: TIntegerField;
    cdsAtelierNOME: TStringField;
    cdsAtelierFANTASIA: TStringField;
    sdsMov_Atelier: TSQLDataSet;
    dspMov_Atelier: TDataSetProvider;
    cdsMov_Atelier: TClientDataSet;
    dsMov_Atelier: TDataSource;
    sdsMov_AtelierID: TIntegerField;
    sdsMov_AtelierDT_CADASTRO: TDateField;
    sdsMov_AtelierDT_REFERENCIA: TDateField;
    sdsMov_AtelierTIPO_REG: TStringField;
    sdsMov_AtelierVLR_MOV: TFloatField;
    sdsMov_AtelierID_ATELIER: TIntegerField;
    sdsMov_AtelierID_FINANCEIRO: TIntegerField;
    sdsMov_AtelierFILIAL: TIntegerField;
    cdsMov_AtelierID: TIntegerField;
    cdsMov_AtelierDT_CADASTRO: TDateField;
    cdsMov_AtelierDT_REFERENCIA: TDateField;
    cdsMov_AtelierTIPO_REG: TStringField;
    cdsMov_AtelierVLR_MOV: TFloatField;
    cdsMov_AtelierID_ATELIER: TIntegerField;
    cdsMov_AtelierID_FINANCEIRO: TIntegerField;
    cdsMov_AtelierFILIAL: TIntegerField;
    sdsConsulta_Talao_Aux: TSQLDataSet;
    dspConsulta_Talao_Aux: TDataSetProvider;
    cdsConsulta_Talao_Aux: TClientDataSet;
    cdsConsulta_Talao_AuxID_TALAO: TIntegerField;
    cdsConsulta_Talao_AuxITEM: TIntegerField;
    cdsConsulta_Talao_AuxID_ATELIER: TIntegerField;
    cdsConsulta_Talao_AuxID_SETOR: TIntegerField;
    cdsConsulta_Talao_AuxID_PRODUTO: TIntegerField;
    cdsConsulta_Talao_AuxID_COMBINACAO: TIntegerField;
    cdsConsulta_Talao_AuxQTD_TALAO: TFloatField;
    cdsConsulta_Talao_AuxDTSAIDA: TDateField;
    cdsConsulta_Talao_AuxHRSAIDA: TTimeField;
    cdsConsulta_Talao_AuxDTRETORNO: TDateField;
    cdsConsulta_Talao_AuxHRRETORNO: TTimeField;
    cdsConsulta_Talao_AuxNOME_ATELIER: TStringField;
    cdsConsulta_Talao_AuxNOME_SETOR: TStringField;
    cdsConsulta_Talao_AuxREFERENCIA: TStringField;
    cdsConsulta_Talao_AuxNOME_PRODUTO: TStringField;
    cdsConsulta_Talao_AuxNOME_COMBINACAO: TStringField;
    cdsConsulta_Talao_AuxNUM_LOTE: TIntegerField;
    cdsConsulta_Talao_AuxNUM_ORDEM: TIntegerField;
    cdsConsulta_Talao_AuxFILIAL: TIntegerField;
    cdsConsulta_Talao_AuxNOME_FILIAL: TStringField;
    cdsConsulta_Talao_AuxCARIMBO: TStringField;
    cdsConsulta_Talao_AuxENDLOGO: TStringField;
    dsConsulta_Talao_Aux: TDataSource;
    sdsSetor: TSQLDataSet;
    dspSetor: TDataSetProvider;
    cdsSetor: TClientDataSet;
    cdsSetorID: TIntegerField;
    cdsSetorNOME: TStringField;
    dsSetor: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    cdsConsulta_Talao_AuxVLR_PAR: TFloatField;
    sdsConsAtelier_Ret: TSQLDataSet;
    dspConsAtelier_Ret: TDataSetProvider;
    cdsConsAtelier_Ret: TClientDataSet;
    dsConsAtelier_Ret: TDataSource;
    cdsConsAtelier_RetID_ATELIER: TIntegerField;
    cdsConsAtelier_RetNOME_ATELIER: TStringField;
    cdsConsAtelier_RetVLR_TOTAL: TFloatField;
    cdsConsulta_Talao_AuxVLR_TOTAL: TFloatField;
    qParametros: TSQLQuery;
    qParametrosGRAVAR_FINANCEIRO_ATELIER: TStringField;
    sdsMov_AtelierID_CONTA: TIntegerField;
    cdsMov_AtelierID_CONTA: TIntegerField;
    sdsContas: TSQLDataSet;
    sdsContasID: TIntegerField;
    sdsContasNOME: TStringField;
    sdsContasFILIAL: TIntegerField;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    cdsContasID: TIntegerField;
    cdsContasNOME: TStringField;
    cdsContasFILIAL: TIntegerField;
    dsContas: TDataSource;
    sdsTipoCobranca: TSQLDataSet;
    sdsTipoCobrancaID: TIntegerField;
    sdsTipoCobrancaNOME: TStringField;
    dspTipoCobranca: TDataSetProvider;
    cdsTipoCobranca: TClientDataSet;
    cdsTipoCobrancaID: TIntegerField;
    cdsTipoCobrancaNOME: TStringField;
    dsTipoCobranca: TDataSource;
    sdsMov_AtelierID_FORMA_PAGAMENTO: TIntegerField;
    cdsMov_AtelierID_FORMA_PAGAMENTO: TIntegerField;
    qParametrosID_CONTA_ORC_ATELIER: TIntegerField;
    cdsConsAtelier_RetVLR_PAGAMENTO: TFloatField;
    sdsConsMov_Pagto: TSQLDataSet;
    dspConsMov_Pagto: TDataSetProvider;
    cdsConsMov_Pagto: TClientDataSet;
    dsConsMov_Pagto: TDataSource;
    cdsConsMov_PagtoID: TIntegerField;
    cdsConsMov_PagtoDT_CADASTRO: TDateField;
    cdsConsMov_PagtoDT_REFERENCIA: TDateField;
    cdsConsMov_PagtoTIPO_REG: TStringField;
    cdsConsMov_PagtoVLR_MOV: TFloatField;
    cdsConsMov_PagtoID_ATELIER: TIntegerField;
    cdsConsMov_PagtoID_FINANCEIRO: TIntegerField;
    cdsConsMov_PagtoFILIAL: TIntegerField;
    cdsConsMov_PagtoID_CONTA: TIntegerField;
    cdsConsMov_PagtoID_FORMA_PAGAMENTO: TIntegerField;
    cdsConsMov_PagtoNOME_ATELIER: TStringField;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    cdsConsulta_Talao_AuxTALAO_COD_BARRA: TStringField;
    cdsConsulta_Talao_AuxDTSISTEMA: TDateField;
    cdsConsulta_Talao_AuxHRSISTEMA: TTimeField;
    sdsTalao_Aux: TSQLDataSet;
    dspTalao_Aux: TDataSetProvider;
    cdsTalao_Aux: TClientDataSet;
    dsTalao_Aux: TDataSource;
    cdsTalao_AuxID: TIntegerField;
    cdsTalao_AuxITEM: TIntegerField;
    cdsTalao_AuxID_ATELIER: TIntegerField;
    cdsTalao_AuxID_SETOR: TIntegerField;
    cdsTalao_AuxID_PRODUTO: TIntegerField;
    cdsTalao_AuxID_COMBINACAO: TIntegerField;
    cdsTalao_AuxQTD: TFloatField;
    cdsTalao_AuxDTSAIDA: TDateField;
    cdsTalao_AuxHRSAIDA: TTimeField;
    cdsTalao_AuxDTRETORNO: TDateField;
    cdsTalao_AuxHRRETORNO: TTimeField;
    cdsTalao_AuxID_ATELIER_ORIG: TIntegerField;
    cdsTalao_AuxDTSISTEMA: TDateField;
    cdsTalao_AuxHRSISTEMA: TTimeField;
    sdsTalao_AuxID: TIntegerField;
    sdsTalao_AuxITEM: TIntegerField;
    sdsTalao_AuxID_ATELIER: TIntegerField;
    sdsTalao_AuxID_SETOR: TIntegerField;
    sdsTalao_AuxID_PRODUTO: TIntegerField;
    sdsTalao_AuxID_COMBINACAO: TIntegerField;
    sdsTalao_AuxQTD: TFloatField;
    sdsTalao_AuxDTSAIDA: TDateField;
    sdsTalao_AuxHRSAIDA: TTimeField;
    sdsTalao_AuxDTRETORNO: TDateField;
    sdsTalao_AuxHRRETORNO: TTimeField;
    sdsTalao_AuxID_ATELIER_ORIG: TIntegerField;
    sdsTalao_AuxDTSISTEMA: TDateField;
    sdsTalao_AuxHRSISTEMA: TTimeField;
    sdsTalao_AuxDTPAGAMENTO: TDateField;
    sdsTalao_AuxSELECIONADO: TStringField;
    cdsTalao_AuxDTPAGAMENTO: TDateField;
    cdsTalao_AuxSELECIONADO: TStringField;
    cdsConsulta_Talao_AuxSELECIONADO: TStringField;
    cdsConsulta_Talao_AuxDTPAGAMENTO: TDateField;
    mSelPagto: TClientDataSet;
    mSelPagtoNum_Ordem: TIntegerField;
    mSelPagtoNum_Lote: TIntegerField;
    mSelPagtoID_Talao: TIntegerField;
    mSelPagtoItem: TIntegerField;
    mSelPagtoTalao_CodBarra: TStringField;
    mSelPagtoReferencia: TStringField;
    mSelPagtoNome_Combinacao: TStringField;
    mSelPagtoQtd: TFloatField;
    mSelPagtoVlr_Par: TFloatField;
    mSelPagtoVlr_Total: TFloatField;
    mSelPagtoDtRetorno: TDateField;
    dsmSelPagto: TDataSource;
    mSelPagtoSelecionado: TBooleanField;
    cdsFilialNOME_INTERNO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure frxDBDataset2First(Sender: TObject);
    procedure frxDBDataset2Next(Sender: TObject);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    procedure prc_Filtrar_Consulta_Talao_Aux(ID_Atelier: Integer);

  public
    { Public declarations }
    vMSGErro: String;
    ctMov_Atelier: String;
    ctConsulta_Talao_Aux: String;
    ctConsAtelier_Ret: String;
    ctConsMov_Pagto: String;
    vTipo_Rel: Integer;
    vID_Atelier_Ant: Integer;
    vQtd_Pares: Real;
    vVlr_Pagar: Real;
    vQtdReg: Integer;
    vExecutar_Post: Integer;

    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Excluir;
    procedure prc_Gravar_Financeiro;
    procedure prc_Excluir_Financeiro(ID_MovAtelier: Integer);

  end;

var
  DMMov_Atelier: TDMMov_Atelier;

implementation

uses DmdDatabase, uUtilPadrao, LogProvider;

{$R *.dfm}


procedure TDMMov_Atelier.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctMov_Atelier        := sdsMov_Atelier.CommandText;
  ctConsulta_Talao_Aux := sdsConsulta_Talao_Aux.CommandText;
  ctConsAtelier_Ret    := sdsConsAtelier_Ret.CommandText;
  ctConsMov_Pagto      := sdsConsMov_Pagto.CommandText;
  cdsFilial.Open;
  cdsProduto.Open;
  cdsAtelier.Open;
  cdsSetor.Open;
  qParametros.Open;
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

procedure TDMMov_Atelier.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMMov_Atelier.prc_Excluir_Financeiro(ID_MovAtelier: Integer);
var
  sds: TSQLDataSet;
begin
  if ID_MovAtelier <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM FINANCEIRO WHERE ID_MOVATELIER = ' + IntToStr(ID_MovAtelier);
  sds.ExecSQL;

  FreeAndNil(sds);
end;

procedure TDMMov_Atelier.prc_Gravar_Financeiro;
var
  fDMGravarFinanceiro: TDMGravarFinanceiro;
begin
  fDMGravarFinanceiro := TDMGravarFinanceiro.Create(Self);

  fDMGravarFinanceiro.vTipo_ES := 'S';
  if cdsMov_AtelierTIPO_REG.AsString = 'PAG' then
    fDMGravarFinanceiro.vHistorico_Compl := 'Pagto. Atelier Dt.Base: ' + cdsMov_AtelierDT_REFERENCIA.AsString;
  if cdsAtelier.Locate('CODIGO',cdsMov_AtelierID_ATELIER.AsInteger,[loCaseInsensitive]) then
    fDMGravarFinanceiro.vHistorico_Compl := fDMGravarFinanceiro.vHistorico_Compl + ' ' + cdsAtelierNOME.AsString;

  fDMGravarFinanceiro.vID_Conta           := cdsMov_AtelierID_CONTA.AsInteger;
  fDMGravarFinanceiro.vID_ModDuplicata    := 0;
  fDMGravarFinanceiro.vItem_MovDuplicata  := 0;
  fDMGravarFinanceiro.vID_Historico       := 0;
  fDMGravarFinanceiro.vID_Pessoa          := 0;
  fDMGravarFinanceiro.vID_ExtComissao     := 0;


  fDMGravarFinanceiro.vID_Forma_Pagamento := cdsMov_AtelierID_FORMA_PAGAMENTO.AsInteger;
  fDMGravarFinanceiro.vID_MovAtelier      := cdsMov_AtelierID.AsInteger;
  fDMGravarFinanceiro.vDtMovimento        := cdsMov_AtelierDT_CADASTRO.AsDateTime;
  fDMGravarFinanceiro.vVlr_Movimento      := StrToFloat(FormatFloat('0.00',cdsMov_AtelierVLR_MOV.AsFloat));
  fDMGravarFinanceiro.vID_Conta_Orcamento := qParametrosID_CONTA_ORC_ATELIER.AsInteger;

  fDMGravarFinanceiro.prc_Gravar;
  fDMGravarFinanceiro.vID_MovAtelier := 0;

  FreeAndNil(fDMGravarFinanceiro);
end;

procedure TDMMov_Atelier.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsMov_Atelier.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('MOV_ATELIER',0);

  cdsMov_Atelier.Insert;
  cdsMov_AtelierID.AsInteger := vAux;
end;

procedure TDMMov_Atelier.prc_Localizar(ID: Integer);
begin
  cdsMov_Atelier.Close;
  sdsMov_Atelier.CommandText := ctMov_Atelier;
  if ID <> 0 then
    sdsMov_Atelier.CommandText := sdsMov_Atelier.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsMov_Atelier.Open;
end;

procedure TDMMov_Atelier.frxReport1BeforePrint(
  Sender: TfrxReportComponent);
begin
  if vTipo_Rel = 2 then
  begin
    //cdsConsMov_Pagto.Filtered := False;
    //cdsConsMov_Pagto.Filter   :=  'ID_ATELIER = ' + QuotedStr(cdsConsAtelier_RetID_ATELIER.AsString);
    //cdsConsMov_Pagto.Filtered := True;
  end;
end;

procedure TDMMov_Atelier.prc_Filtrar_Consulta_Talao_Aux(
  ID_Atelier: Integer);
begin
  cdsConsulta_Talao_Aux.Filtered := False;
  cdsConsulta_Talao_Aux.Filter   :=  'ID_ATELIER = ' + QuotedStr(IntToStr(ID_Atelier));
  cdsConsulta_Talao_Aux.Filtered := True;
end;

procedure TDMMov_Atelier.frxDBDataset2First(Sender: TObject);
begin
  if vTipo_Rel = 2 then
    prc_Filtrar_Consulta_Talao_Aux(cdsConsAtelier_RetID_ATELIER.AsInteger);
end;

procedure TDMMov_Atelier.frxDBDataset2Next(Sender: TObject);
begin
  if vTipo_Rel = 2 then
    prc_Filtrar_Consulta_Talao_Aux(cdsConsAtelier_RetID_ATELIER.AsInteger);
end;

procedure TDMMov_Atelier.prc_Excluir;
begin
  if not(cdsMov_Atelier.Active) or (cdsMov_Atelier.IsEmpty) then
    exit;
  cdsMov_Atelier.Delete;
  cdsMov_Atelier.ApplyUpdates(0);
end;

end.
