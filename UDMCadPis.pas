unit UDMCadPis;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadPis = class(TDataModule)
    sdsTab_Pis: TSQLDataSet;
    dspTab_Pis: TDataSetProvider;
    cdsTab_Pis: TClientDataSet;
    dsTab_Pis: TDataSource;
    sdsTab_PisID: TIntegerField;
    sdsTab_PisCODIGO: TStringField;
    sdsTab_PisNOME: TStringField;
    cdsTab_PisID: TIntegerField;
    cdsTab_PisCODIGO: TStringField;
    cdsTab_PisNOME: TStringField;
    sdsTab_PisGERAR: TStringField;
    cdsTab_PisGERAR: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsTab_PisNewRecord(DataSet: TDataSet);
    procedure dspTab_PisUpdateError(Sender: TObject;
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
  DMCadPis: TDMCadPis;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadPis.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsTab_Pis.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TAB_PIS',0);

  cdsTab_Pis.Insert;
  cdsTab_PisID.AsInteger := vAux;
end;

procedure TDMCadPis.prc_Excluir;
begin
  if not(cdsTab_Pis.Active) or (cdsTab_Pis.IsEmpty) then
    exit;
  cdsTab_Pis.Delete;
  cdsTab_Pis.ApplyUpdates(0);
end;

procedure TDMCadPis.prc_Gravar;
begin
  vMsgErro := '';
    if trim(cdsTab_PisCODIGO.AsString) = '' then
    vMsgErro := vMsgErro + '*** Código não informado!';
  if trim(cdsTab_PisNOME.AsString) = '' then
    vMsgErro := vMsgErro + '***Nome não informado!';
  if vMsgErro <> '' then
    exit;
  cdsTab_Pis.Post;
  cdsTab_Pis.ApplyUpdates(0);
end;

procedure TDMCadPis.prc_Localizar(ID : Integer);
begin
  cdsTab_Pis.Close;
  sdsTab_Pis.CommandText := ctCommand;
  if ID <> 0 then
    sdsTab_Pis.CommandText := sdsTab_Pis.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsTab_Pis.Open;
end;

procedure TDMCadPis.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsTab_Pis.CommandText;
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

procedure TDMCadPis.cdsTab_PisNewRecord(DataSet: TDataSet);
begin
  cdsTab_PisGERAR.AsString := 'N';
end;

procedure TDMCadPis.dspTab_PisUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadPis.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
