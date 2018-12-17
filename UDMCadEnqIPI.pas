unit UDMCadEnqIPI;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadEnqIPI = class(TDataModule)
    sdsTab_EnqIPI: TSQLDataSet;
    dspTab_EnqIPI: TDataSetProvider;
    cdsTab_EnqIPI: TClientDataSet;
    dsTab_EnqIPI: TDataSource;
    sdsTab_EnqIPIID: TIntegerField;
    sdsTab_EnqIPICODIGO: TStringField;
    sdsTab_EnqIPITIPO: TStringField;
    sdsTab_EnqIPIDESCRICAO: TStringField;
    cdsTab_EnqIPIID: TIntegerField;
    cdsTab_EnqIPICODIGO: TStringField;
    cdsTab_EnqIPITIPO: TStringField;
    cdsTab_EnqIPIDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspTab_EnqIPIUpdateError(Sender: TObject;
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
  DMCadEnqIPI: TDMCadEnqIPI;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadEnqIPI.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsTab_EnqIPI.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TAB_ENQIPI',0);

  cdsTab_EnqIPI.Insert;
  cdsTab_EnqIPIID.AsInteger := vAux;
end;

procedure TDMCadEnqIPI.prc_Excluir;
begin
  if not(cdsTab_EnqIPI.Active) or (cdsTab_EnqIPI.IsEmpty) then
    exit;
  cdsTab_EnqIPI.Delete;
  cdsTab_EnqIPI.ApplyUpdates(0);
end;

procedure TDMCadEnqIPI.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsTab_EnqIPIDESCRICAO.AsString) = '' then
    vMsgErro := vMsgErro + '*** Descrição não informada!';
  if trim(cdsTab_EnqIPICODIGO.AsString) = '' then
    vMsgErro := vMsgErro + '*** Código não informado!';
  if vMsgErro <> '' then
    exit;
  cdsTab_EnqIPI.Post;
  cdsTab_EnqIPI.ApplyUpdates(0);
end;

procedure TDMCadEnqIPI.prc_Localizar(ID : Integer);
begin
  cdsTab_EnqIPI.Close;
  sdsTab_EnqIPI.CommandText := ctCommand;
  if ID <> 0 then
    sdsTab_EnqIPI.CommandText := sdsTab_EnqIPI.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsTab_EnqIPI.Open;
end;

procedure TDMCadEnqIPI.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsTab_EnqIPI.CommandText;

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
  cdsTab_EnqIPI.IndexFieldNames := 'CODIGO';
end;

procedure TDMCadEnqIPI.dspTab_EnqIPIUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadEnqIPI.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
