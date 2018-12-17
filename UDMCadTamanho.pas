unit UDMCadTamanho;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadTamanho = class(TDataModule)
    sdsTamanho: TSQLDataSet;
    dspTamanho: TDataSetProvider;
    cdsTamanho: TClientDataSet;
    dsTamanho: TDataSource;
    sdsTamanhoID: TIntegerField;
    sdsTamanhoTAMANHO: TStringField;
    cdsTamanhoID: TIntegerField;
    cdsTamanhoTAMANHO: TStringField;
    qTamanho: TSQLQuery;
    qTamanhoID: TIntegerField;
    qTamanhoTAMANHO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspTamanhoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgTamanho : String;
    ctCommand : String;
    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadTamanho: TDMCadTamanho;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadTamanho.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsTamanho.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TAMANHO',0);

  cdsTamanho.Insert;
  cdsTamanhoID.AsInteger := vAux;
end;

procedure TDMCadTamanho.prc_Excluir;
begin
  if not(cdsTamanho.Active) or (cdsTamanho.IsEmpty) then
    exit;
  cdsTamanho.Delete;
  cdsTamanho.ApplyUpdates(0);
end;

procedure TDMCadTamanho.prc_Gravar;
begin
  vMsgTamanho := '';
  qTamanho.Close;
  qTamanho.ParamByName('TAMANHO').AsString := cdsTamanhoTAMANHO.AsString;
  qTamanho.Open;
  if not(qTamanho.IsEmpty) and ((trim(qTamanhoTAMANHO.AsString) = trim(cdsTamanhoTAMANHO.AsString)) and (qTamanhoID.AsInteger <> cdsTamanhoID.AsInteger)) then
    vMsgTamanho := 'Tamanho já informado!';
  if trim(cdsTamanhoTAMANHO.AsString) = '' then
    vMsgTamanho := 'Tamanho não informado!';
  if vMsgTamanho <> '' then
    exit;
    
  cdsTamanho.Post;
  cdsTamanho.ApplyUpdates(0);
end;

procedure TDMCadTamanho.prc_Localizar(ID : Integer);
begin
  cdsTamanho.Close;
  sdsTamanho.CommandText := ctCommand;
  if ID <> 0 then
    sdsTamanho.CommandText := sdsTamanho.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsTamanho.Open;
end;

procedure TDMCadTamanho.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsTamanho.CommandText;
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

procedure TDMCadTamanho.dspTamanhoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadTamanho.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
