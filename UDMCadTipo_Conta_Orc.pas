unit UDMCadTipo_Conta_Orc;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadTipo_Conta_Orc = class(TDataModule)
    sdsTipo_Conta_Orc: TSQLDataSet;
    dspTipo_Conta_Orc: TDataSetProvider;
    cdsTipo_Conta_Orc: TClientDataSet;
    dsTipo_Conta_Orc: TDataSource;
    sdsTipo_Conta_OrcID: TIntegerField;
    sdsTipo_Conta_OrcNOME: TStringField;
    cdsTipo_Conta_OrcID: TIntegerField;
    cdsTipo_Conta_OrcNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspTipo_Conta_OrcUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;
    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadTipo_Conta_Orc: TDMCadTipo_Conta_Orc;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadTipo_Conta_Orc.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsTipo_Conta_Orc.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TIPO_CONTA_ORC',0);

  cdsTipo_Conta_Orc.Insert;
  cdsTipo_Conta_OrcID.AsInteger := vAux;
end;

procedure TDMCadTipo_Conta_Orc.prc_Excluir;
begin
  if not(cdsTipo_Conta_Orc.Active) or (cdsTipo_Conta_Orc.IsEmpty) then
    exit;
  cdsTipo_Conta_Orc.Delete;
  cdsTipo_Conta_Orc.ApplyUpdates(0);
end;

procedure TDMCadTipo_Conta_Orc.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsTipo_Conta_OrcNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if vMsgErro <> '' then
    exit;
  cdsTipo_Conta_Orc.Post;
  cdsTipo_Conta_Orc.ApplyUpdates(0);
end;

procedure TDMCadTipo_Conta_Orc.prc_Localizar(ID : Integer);
begin
  cdsTipo_Conta_Orc.Close;
  sdsTipo_Conta_Orc.CommandText := ctCommand;
  if ID <> 0 then
    sdsTipo_Conta_Orc.CommandText := sdsTipo_Conta_Orc.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsTipo_Conta_Orc.Open;
end;

procedure TDMCadTipo_Conta_Orc.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsTipo_Conta_Orc.CommandText;
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

procedure TDMCadTipo_Conta_Orc.dspTipo_Conta_OrcUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadTipo_Conta_Orc.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
