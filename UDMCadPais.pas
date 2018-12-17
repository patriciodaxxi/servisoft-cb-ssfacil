unit UDMCadPais;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadPais = class(TDataModule)
    sdsPais: TSQLDataSet;
    dspPais: TDataSetProvider;
    cdsPais: TClientDataSet;
    dsPais: TDataSource;
    sdsPaisID: TIntegerField;
    sdsPaisNOME: TStringField;
    sdsPaisCODPAIS: TStringField;
    cdsPaisID: TIntegerField;
    cdsPaisNOME: TStringField;
    cdsPaisCODPAIS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspPaisUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgPais : String;
    ctCommand : String;

    procedure prc_Localizar(ID : Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadPais: TDMCadPais;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadPais.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsPais.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PAIS',0);

  cdsPais.Insert;
  cdsPaisID.AsInteger := vAux;
end;

procedure TDMCadPais.prc_Excluir;
begin
  if not(cdsPais.Active) or (cdsPais.IsEmpty) then
    exit;
  cdsPais.Delete;
  cdsPais.ApplyUpdates(0);
end;

procedure TDMCadPais.prc_Gravar;
begin
  vMsgPais := '';
  if trim(cdsPaisNOME.AsString) = '' then
    vMsgPais := '*** Nome não informado!';
  if vMsgPais <> '' then
    exit;
  cdsPais.Post;
  cdsPais.ApplyUpdates(0);
end;

procedure TDMCadPais.prc_Localizar(ID : Integer); //-1 é para inclusão
begin
  cdsPais.Close;
  sdsPais.CommandText := ctCommand;
  if ID <> 0 then
    sdsPais.CommandText := sdsPais.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsPais.Open;
end;

procedure TDMCadPais.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsPais.CommandText;
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

procedure TDMCadPais.dspPaisUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadPais.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
