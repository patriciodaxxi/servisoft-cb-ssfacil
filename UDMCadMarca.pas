unit UDMCadMarca;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadMarca = class(TDataModule)
    sdsMarca: TSQLDataSet;
    dspMarca: TDataSetProvider;
    cdsMarca: TClientDataSet;
    dsMarca: TDataSource;
    sdsMarcaID: TIntegerField;
    sdsMarcaNOME: TStringField;
    cdsMarcaID: TIntegerField;
    cdsMarcaNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspMarcaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;

    procedure prc_Localizar(ID : Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadMarca: TDMCadMarca;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadCFOP}

procedure TDMCadMarca.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsMarca.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('MARCA',0);

  cdsMarca.Insert;
  cdsMarcaID.AsInteger := vAux;
end;

procedure TDMCadMarca.prc_Excluir;
begin
  if not(cdsMarca.Active) or (cdsMarca.IsEmpty) then
    exit;
  cdsMarca.Delete;
  cdsMarca.ApplyUpdates(0);
end;

procedure TDMCadMarca.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsMarcaNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if trim(vMsgErro) <> '' then
    exit;

  cdsMarca.Post;
  cdsMarca.ApplyUpdates(0);
end;

procedure TDMCadMarca.prc_Localizar(ID : Integer); //-1 é para inclusão
begin
  cdsMarca.Close;
  sdsMarca.CommandText := ctCommand;
  if ID <> 0 then
    sdsMarca.CommandText := sdsMarca.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsMarca.Open;
end;

procedure TDMCadMarca.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsMarca.CommandText;
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

procedure TDMCadMarca.dspMarcaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadMarca.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.


