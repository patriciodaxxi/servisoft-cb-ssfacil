unit UDMCadPercSimples;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadPercSimples = class(TDataModule)
    sdsPercentual_Simples: TSQLDataSet;
    dspPercentual_Simples: TDataSetProvider;
    cdsPercentual_Simples: TClientDataSet;
    dsPercentual_Simples: TDataSource;
    sdsPercentual_SimplesID: TIntegerField;
    sdsPercentual_SimplesFILIAL: TIntegerField;
    sdsPercentual_SimplesANO: TIntegerField;
    sdsPercentual_SimplesMES: TIntegerField;
    sdsPercentual_SimplesPERCENTUAL: TFloatField;
    cdsPercentual_SimplesID: TIntegerField;
    cdsPercentual_SimplesFILIAL: TIntegerField;
    cdsPercentual_SimplesANO: TIntegerField;
    cdsPercentual_SimplesMES: TIntegerField;
    cdsPercentual_SimplesPERCENTUAL: TFloatField;
    sdsFilial: TSQLDataSet;
    sdsFilialID: TIntegerField;
    sdsFilialNOME: TStringField;
    sdsFilialNOME_INTERNO: TStringField;
    sdsFilialENDERECO: TStringField;
    sdsFilialCOMPLEMENTO_END: TStringField;
    sdsFilialNUM_END: TStringField;
    sdsFilialBAIRRO: TStringField;
    sdsFilialCEP: TStringField;
    sdsFilialID_CIDADE: TIntegerField;
    sdsFilialCIDADE: TStringField;
    sdsFilialUF: TStringField;
    sdsFilialDDD1: TIntegerField;
    sdsFilialFONE1: TStringField;
    sdsFilialDDD2: TIntegerField;
    sdsFilialFONE: TStringField;
    sdsFilialDDDFAX: TIntegerField;
    sdsFilialFAX: TStringField;
    sdsFilialPESSOA: TStringField;
    sdsFilialCNPJ_CPF: TStringField;
    sdsFilialINSCR_EST: TStringField;
    sdsFilialSIMPLES: TStringField;
    sdsFilialENDLOGO: TStringField;
    sdsFilialCALCULAR_IPI: TStringField;
    sdsFilialINATIVO: TStringField;
    sdsFilialINSCMUNICIPAL: TStringField;
    sdsFilialCNAE: TStringField;
    sdsFilialHOMEPAGE: TStringField;
    sdsFilialUSARICMSSIMPLES: TStringField;
    sdsFilialID_REGIME_TRIB: TIntegerField;
    sdsFilialID_PIS: TIntegerField;
    sdsFilialID_COFINS: TIntegerField;
    sdsFilialTIPO_PIS: TStringField;
    sdsFilialTIPO_COFINS: TStringField;
    sdsFilialPERC_PIS: TFloatField;
    sdsFilialPERC_COFINS: TFloatField;
    sdsFilialID_CSTICMS: TIntegerField;
    sdsFilialID_CSTIPI: TIntegerField;
    sdsFilialEMAIL_NFE: TStringField;
    sdsFilialDTESTOQUE: TDateField;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFilialENDERECO: TStringField;
    cdsFilialCOMPLEMENTO_END: TStringField;
    cdsFilialNUM_END: TStringField;
    cdsFilialBAIRRO: TStringField;
    cdsFilialCEP: TStringField;
    cdsFilialID_CIDADE: TIntegerField;
    cdsFilialCIDADE: TStringField;
    cdsFilialUF: TStringField;
    cdsFilialDDD1: TIntegerField;
    cdsFilialFONE1: TStringField;
    cdsFilialDDD2: TIntegerField;
    cdsFilialFONE: TStringField;
    cdsFilialDDDFAX: TIntegerField;
    cdsFilialFAX: TStringField;
    cdsFilialPESSOA: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    cdsFilialINSCR_EST: TStringField;
    cdsFilialSIMPLES: TStringField;
    cdsFilialENDLOGO: TStringField;
    cdsFilialCALCULAR_IPI: TStringField;
    cdsFilialINATIVO: TStringField;
    cdsFilialINSCMUNICIPAL: TStringField;
    cdsFilialCNAE: TStringField;
    cdsFilialHOMEPAGE: TStringField;
    cdsFilialUSARICMSSIMPLES: TStringField;
    cdsFilialID_REGIME_TRIB: TIntegerField;
    cdsFilialID_PIS: TIntegerField;
    cdsFilialID_COFINS: TIntegerField;
    cdsFilialTIPO_PIS: TStringField;
    cdsFilialTIPO_COFINS: TStringField;
    cdsFilialPERC_PIS: TFloatField;
    cdsFilialPERC_COFINS: TFloatField;
    cdsFilialID_CSTICMS: TIntegerField;
    cdsFilialID_CSTIPI: TIntegerField;
    cdsFilialEMAIL_NFE: TStringField;
    cdsFilialDTESTOQUE: TDateField;
    dsFilial: TDataSource;
    qParametros: TSQLQuery;
    qParametrosUSA_FAIXA_SIMPLES: TStringField;
    qFaturamento: TSQLQuery;
    qFaturamentoVLR_FATURAMENTO: TFloatField;
    qDevolucao: TSQLQuery;
    qDevolucaoVLR_DEVOLUCAO: TFloatField;
    qFaixa: TSQLQuery;
    qFaixaPERC_ICMS: TFloatField;
    sdsFaixa_Simples: TSQLDataSet;
    dspFaixa_Simples: TDataSetProvider;
    cdsFaixa_Simples: TClientDataSet;
    dsFaixa_Simples: TDataSource;
    sdsFaixa_SimplesID: TIntegerField;
    sdsFaixa_SimplesVLR_DE: TFloatField;
    sdsFaixa_SimplesVLR_ATE: TFloatField;
    sdsFaixa_SimplesPERC_ICMS: TFloatField;
    cdsFaixa_SimplesID: TIntegerField;
    cdsFaixa_SimplesVLR_DE: TFloatField;
    cdsFaixa_SimplesVLR_ATE: TFloatField;
    cdsFaixa_SimplesPERC_ICMS: TFloatField;
    qFaixaID: TIntegerField;
    sdsPercentual_SimplesNOME_INTERNO: TStringField;
    cdsPercentual_SimplesNOME_INTERNO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspPercentual_SimplesUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;
    ctFaturamento, ctDevolucao : String;

    procedure prc_Localizar(ID : Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadPercSimples: TDMCadPercSimples;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadCFOP}

procedure TDMCadPercSimples.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsPercentual_Simples.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PERCENTUAL_SIMPLES',0);

  cdsPercentual_Simples.Insert;
  cdsPercentual_SimplesID.AsInteger := vAux;
end;

procedure TDMCadPercSimples.prc_Excluir;
begin
  if not(cdsPercentual_Simples.Active) or (cdsPercentual_Simples.IsEmpty) then
    exit;
  cdsPercentual_Simples.Delete;
  cdsPercentual_Simples.ApplyUpdates(0);
end;

procedure TDMCadPercSimples.prc_Gravar;
begin
  vMsgErro := '';
  if cdsPercentual_SimplesFILIAL.AsInteger < 1 then
    vMsgErro := vMsgErro + #13 + '*** Filial não informada!';
  if cdsPercentual_SimplesANO.AsInteger < 2012 then
    vMsgErro := vMsgErro + #13 + '*** Ano inválido!';
  if (cdsPercentual_SimplesMes.AsInteger < 01) or (cdsPercentual_SimplesMes.AsInteger > 12) then
    vMsgErro := vMsgErro + #13 + '*** Mês inválido!';
  if trim(vMsgErro) <> '' then
    exit;
  cdsPercentual_Simples.Post;
  cdsPercentual_Simples.ApplyUpdates(0);
end;

procedure TDMCadPercSimples.prc_Localizar(ID : Integer); //-1 é para inclusão
begin
  cdsPercentual_Simples.Close;
  sdsPercentual_Simples.CommandText := ctCommand;
  if ID <> 0 then
    sdsPercentual_Simples.CommandText := sdsPercentual_Simples.CommandText
                         + ' WHERE P.ID = ' + IntToStr(ID);
  cdsPercentual_Simples.Open;
end;

procedure TDMCadPercSimples.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsPercentual_Simples.CommandText;
  ctFaturamento := qFaturamento.SQL.Text;
  ctDevolucao   := qDevolucao.SQL.Text;
  cdsFilial.Open;
  qParametros.Open;
  cdsFaixa_Simples.Open;
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

procedure TDMCadPercSimples.dspPercentual_SimplesUpdateError(
  Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
  UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadPercSimples.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
