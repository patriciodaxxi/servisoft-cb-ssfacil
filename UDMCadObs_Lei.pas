unit UDMCadObs_Lei;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadObs_Lei = class(TDataModule)
    sdsObs_Lei: TSQLDataSet;
    dspObs_Lei: TDataSetProvider;
    cdsObs_Lei: TClientDataSet;
    dsObs_Lei: TDataSource;
    sdsObs_LeiID: TIntegerField;
    sdsObs_LeiNOME: TStringField;
    sdsObs_LeiOBS: TStringField;
    cdsObs_LeiID: TIntegerField;
    cdsObs_LeiNOME: TStringField;
    cdsObs_LeiOBS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspObs_LeiUpdateError(Sender: TObject;
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
  DMCadObs_Lei: TDMCadObs_Lei;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadOBS_Lei}

procedure TDMCadObs_Lei.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsOBS_Lei.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('OBS_LEI',0);

  cdsOBS_Lei.Insert;
  cdsOBS_LeiID.AsInteger := vAux;
end;

procedure TDMCadObs_Lei.prc_Excluir;
begin
  if not(cdsOBS_Lei.Active) or (cdsOBS_Lei.IsEmpty) then
    exit;
  cdsOBS_Lei.Delete;
  cdsOBS_Lei.ApplyUpdates(0);
end;

procedure TDMCadObs_Lei.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsOBS_LeiNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if trim(cdsOBS_LeiOBS.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Observação não informada!';
  if trim(vMsgErro) <> '' then
    exit;
  cdsOBS_Lei.Post;
  cdsOBS_Lei.ApplyUpdates(0);
end;

procedure TDMCadObs_Lei.prc_Localizar(ID : Integer); //-1 é para inclusão
begin
  cdsOBS_Lei.Close;
  sdsOBS_Lei.CommandText := ctCommand;
  if ID <> 0 then
    sdsOBS_Lei.CommandText := sdsOBS_Lei.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsOBS_Lei.Open;
end;

procedure TDMCadObs_Lei.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsOBS_Lei.CommandText;
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

procedure TDMCadObs_Lei.dspObs_LeiUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadObs_Lei.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
