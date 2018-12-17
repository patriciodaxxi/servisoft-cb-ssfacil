unit UDMCadTipo_Matriz;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadTipo_Matriz = class(TDataModule)
    sdsTipo_Matriz: TSQLDataSet;
    dspTipo_Matriz: TDataSetProvider;
    cdsTipo_Matriz: TClientDataSet;
    dsTipo_Matriz: TDataSource;
    sdsTipo_MatrizID: TIntegerField;
    sdsTipo_MatrizNOME: TStringField;
    cdsTipo_MatrizID: TIntegerField;
    cdsTipo_MatrizNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspTipo_MatrizUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadTipo_Matriz: TDMCadTipo_Matriz;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadTipo_Matriz }

procedure TDMCadTipo_Matriz.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsTipo_Matriz.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TIPO_MATRIZ',0);
                                                  
  cdsTipo_Matriz.Insert;
  cdsTipo_MatrizID.AsInteger := vAux;
end;

procedure TDMCadTipo_Matriz.prc_Excluir;
begin
  if not(cdsTipo_Matriz.Active) or (cdsTipo_Matriz.IsEmpty) then
    exit;
  cdsTipo_Matriz.Delete;
  cdsTipo_Matriz.ApplyUpdates(0);
end;

procedure TDMCadTipo_Matriz.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsTipo_MatrizNOME.AsString) = '' then
    vMsgErro := '*** Nome não informado!';
  if vMsgErro <> '' then
    exit;
    
  cdsTipo_Matriz.Post;
  cdsTipo_Matriz.ApplyUpdates(0);
end;

procedure TDMCadTipo_Matriz.prc_Localizar(ID: Integer);
begin
  cdsTipo_Matriz.Close;
  sdsTipo_Matriz.CommandText := ctCommand;
  if ID <> 0 then
    sdsTipo_Matriz.CommandText := sdsTipo_Matriz.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsTipo_Matriz.Open;
end;

procedure TDMCadTipo_Matriz.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsTipo_Matriz.CommandText;
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

procedure TDMCadTipo_Matriz.dspTipo_MatrizUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadTipo_Matriz.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
