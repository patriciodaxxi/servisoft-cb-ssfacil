unit UDMCadOrigem_Prod;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadOrigem_Prod = class(TDataModule)
    sdsOrigem_Prod: TSQLDataSet;
    dspOrigem_Prod: TDataSetProvider;
    cdsOrigem_Prod: TClientDataSet;
    dsOrigem_Prod: TDataSource;
    sdsOrigem_ProdORIGEM: TStringField;
    sdsOrigem_ProdNOME: TStringField;
    cdsOrigem_ProdORIGEM: TStringField;
    cdsOrigem_ProdNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspOrigem_ProdUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;
    procedure prc_Localizar(Origem : String);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadOrigem_Prod: TDMCadOrigem_Prod;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadOrigem_Prod.prc_Inserir;
begin
  if not cdsOrigem_Prod.Active then
    prc_Localizar('0');

  cdsOrigem_Prod.Insert;
end;

procedure TDMCadOrigem_Prod.prc_Excluir;
begin
  if not(cdsOrigem_Prod.Active) or (cdsOrigem_Prod.IsEmpty) then
    exit;
  cdsOrigem_Prod.Delete;
  cdsOrigem_Prod.ApplyUpdates(0);
end;

procedure TDMCadOrigem_Prod.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsOrigem_ProdORIGEM.AsString) = '' then
    vMsgErro := vMsgErro + #13 + 'Origem não informado!';
  if trim(cdsOrigem_ProdORIGEM.AsString) = '' then
    vMsgErro := vMsgErro + #13 + 'Nome não informado!';
  if vMsgErro <> '' then
    exit;
  cdsOrigem_Prod.Post;
  cdsOrigem_Prod.ApplyUpdates(0);
end;

procedure TDMCadOrigem_Prod.prc_Localizar(Origem : String);
begin
  cdsOrigem_Prod.Close;
  sdsOrigem_Prod.CommandText := ctCommand;
  if Origem <> '' then
    sdsOrigem_Prod.CommandText := sdsOrigem_Prod.CommandText
                         + ' WHERE ORIGEM = ' + QuotedStr(Origem);
  cdsOrigem_Prod.Open;
end;

procedure TDMCadOrigem_Prod.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsOrigem_Prod.CommandText;
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

procedure TDMCadOrigem_Prod.dspOrigem_ProdUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadOrigem_Prod.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
