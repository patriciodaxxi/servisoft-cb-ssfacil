unit UDMCadUnidade;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadUnidade = class(TDataModule)
    sdsUnidade: TSQLDataSet;
    dspUnidade: TDataSetProvider;
    cdsUnidade: TClientDataSet;
    dsUnidade: TDataSource;
    sdsUnidadeUNIDADE: TStringField;
    sdsUnidadeCONVERSOR: TFloatField;
    sdsUnidadeNOME: TStringField;
    cdsUnidadeUNIDADE: TStringField;
    cdsUnidadeCONVERSOR: TFloatField;
    cdsUnidadeNOME: TStringField;
    dsUnidade_Mestre: TDataSource;
    sdsUnidade_Conv: TSQLDataSet;
    sdsUnidade_ConvUNIDADE: TStringField;
    sdsUnidade_ConvITEM: TIntegerField;
    sdsUnidade_ConvUNIDADE_CONV: TStringField;
    sdsUnidade_ConvNOME: TStringField;
    sdsUnidade_ConvQTD: TFloatField;
    cdsUnidade_Conv: TClientDataSet;
    cdsUnidadesdsUnidade_Conv: TDataSetField;
    cdsUnidade_ConvUNIDADE: TStringField;
    cdsUnidade_ConvITEM: TIntegerField;
    cdsUnidade_ConvUNIDADE_CONV: TStringField;
    cdsUnidade_ConvNOME: TStringField;
    cdsUnidade_ConvQTD: TFloatField;
    dsUnidade_Conv: TDataSource;
    sdsUnidade2: TSQLDataSet;
    dspUnidade2: TDataSetProvider;
    cdsUnidade2: TClientDataSet;
    dsUnidade2: TDataSource;
    cdsUnidade2UNIDADE: TStringField;
    cdsUnidade2NOME: TStringField;
    sdsUnidadeEXPORTACAO: TStringField;
    cdsUnidadeEXPORTACAO: TStringField;
    sdsUnidade_ConvTIPO_CONVERSOR: TStringField;
    cdsUnidade_ConvTIPO_CONVERSOR: TStringField;
    sdsUnidadeFRACIONAVEL: TStringField;
    cdsUnidadeFRACIONAVEL: TStringField;
    sdsUnidadeFATOR_CALCULO: TFloatField;
    cdsUnidadeFATOR_CALCULO: TFloatField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdMOSTRAR_TAM_CALC: TStringField;
    qVerUnidade: TSQLQuery;
    qVerUnidadeCONTADOR: TIntegerField;
    qVerUnidadeCONTADOR_PROD: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspUnidadeUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;

    procedure prc_Localizar(Unidade : String); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Inserir_Itens;

  end;

var
  DMCadUnidade: TDMCadUnidade;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadUnidade }

procedure TDMCadUnidade.prc_Inserir;
begin
  if not cdsUnidade.Active then
    prc_Localizar('0');

  cdsUnidade.Insert;
end;

procedure TDMCadUnidade.prc_Excluir;
begin
  if not(cdsUnidade.Active) or (cdsUnidade.IsEmpty) then
    exit;
  cdsUnidade_Conv.First;
  while not cdsUnidade_Conv.Eof do
    cdsUnidade_Conv.Delete;
  cdsUnidade.Delete;
  cdsUnidade.ApplyUpdates(0);
end;

procedure TDMCadUnidade.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsUnidadeUNIDADE.AsString) = '' then
    vMsgErro := vMsgErro + '*** Unidade não informada!';
  if trim(cdsUnidadeNOME.AsString) = '' then
    vMsgErro := vMsgErro + '*** Nome não informado!';
  if trim(cdsUnidadeUNIDADE.AsString) = trim(cdsUnidadeNOME.AsString)  then
    vMsgErro := vMsgErro + '*** Nome não pode ser igual a unidade!';
  if vMsgErro <> '' then
    exit;
  cdsUnidade.Post;
  cdsUnidade.ApplyUpdates(0);
end;

procedure TDMCadUnidade.prc_Localizar(Unidade : String);
begin
  cdsUnidade.Close;
  sdsUnidade.CommandText := ctCommand;
  if Unidade <> '' then
    sdsUnidade.CommandText := sdsUnidade.CommandText
                         + ' WHERE UNIDADE = ' + QuotedStr(Unidade);
  cdsUnidade.Open;
end;

procedure TDMCadUnidade.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsUnidade.CommandText;
  cdsUnidade2.Open;
  qParametros_Prod.Open;
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
end;

procedure TDMCadUnidade.dspUnidadeUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadUnidade.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadUnidade.prc_Inserir_Itens;
var
  vItemAux : Integer;
begin
  cdsUnidade_Conv.Last;
  vItemAux := cdsUnidade_ConvITEM.AsInteger;

  cdsUnidade_Conv.Insert;
  cdsUnidade_ConvUNIDADE.AsString := cdsUnidadeUNIDADE.AsString;
  cdsUnidade_ConvITEM.AsInteger   := vItemAux + 1;
end;

end.
