unit UDMCadCofins;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadCofins = class(TDataModule)
    sdsTab_Cofins: TSQLDataSet;
    dspTab_Cofins: TDataSetProvider;
    cdsTab_Cofins: TClientDataSet;
    dsTab_Cofins: TDataSource;
    sdsTab_CofinsID: TIntegerField;
    sdsTab_CofinsCODIGO: TStringField;
    sdsTab_CofinsNOME: TStringField;
    cdsTab_CofinsCODIGO: TStringField;
    cdsTab_CofinsNOME: TStringField;
    cdsTab_CofinsID: TIntegerField;
    sdsTab_CofinsGERAR: TStringField;
    cdsTab_CofinsGERAR: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsTab_CofinsNewRecord(DataSet: TDataSet);
    procedure dspTab_CofinsUpdateError(Sender: TObject;
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
  DMCadCofins: TDMCadCofins;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCofins.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsTab_Cofins.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TAB_COFINS',0);

  cdsTab_Cofins.Insert;
  cdsTab_CofinsID.AsInteger := vAux;
end;

procedure TDMCadCofins.prc_Excluir;
begin
  if not(cdsTab_Cofins.Active) or (cdsTab_Cofins.IsEmpty) then
    exit;
  cdsTab_Cofins.Delete;
  cdsTab_Cofins.ApplyUpdates(0);
end;

procedure TDMCadCofins.prc_Gravar;
begin
  vMsgErro := '';
    if trim(cdsTab_CofinsCODIGO.AsString) = '' then
    vMsgErro := vMsgErro + '*** Código não informado!';
  if trim(cdsTab_CofinsNOME.AsString) = '' then
    vMsgErro := vMsgErro + '***Nome não informado!';
  if vMsgErro <> '' then
    exit;
  cdsTab_Cofins.Post;
  cdsTab_Cofins.ApplyUpdates(0);
end;

procedure TDMCadCofins.prc_Localizar(ID: Integer);
begin
  cdsTab_Cofins.Close;
  sdsTab_Cofins.CommandText := ctCommand;
  if ID <> 0 then
    sdsTab_Cofins.CommandText := sdsTab_Cofins.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsTab_Cofins.Open;
end;

procedure TDMCadCofins.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsTab_Cofins.CommandText;
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

procedure TDMCadCofins.cdsTab_CofinsNewRecord(DataSet: TDataSet);
begin
  cdsTab_CofinsGERAR.AsString := 'N';
end;

procedure TDMCadCofins.dspTab_CofinsUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadCofins.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
