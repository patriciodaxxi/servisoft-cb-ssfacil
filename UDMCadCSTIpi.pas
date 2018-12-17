unit UDMCadCSTIpi;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadCSTIpi = class(TDataModule)
    sdsTab_CSTIpi: TSQLDataSet;
    dspTab_CSTIpi: TDataSetProvider;
    cdsTab_CSTIpi: TClientDataSet;
    dsTab_CSTIpi: TDataSource;
    sdsTab_CSTIpiID: TIntegerField;
    sdsTab_CSTIpiCOD_IPI: TStringField;
    sdsTab_CSTIpiNOME: TStringField;
    sdsTab_CSTIpiGERAR_IPI: TStringField;
    cdsTab_CSTIpiID: TIntegerField;
    cdsTab_CSTIpiCOD_IPI: TStringField;
    cdsTab_CSTIpiNOME: TStringField;
    cdsTab_CSTIpiGERAR_IPI: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsTab_CSTIpiNewRecord(DataSet: TDataSet);
    procedure dspTab_CSTIpiUpdateError(Sender: TObject;
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
  DMCadCSTIpi: TDMCadCSTIpi;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCSTIpi.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsTab_CSTIpi.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TAB_CSTIPI',0);

  cdsTab_CSTIpi.Insert;
  cdsTab_CSTIpiID.AsInteger := vAux;
end;

procedure TDMCadCSTIpi.prc_Excluir;
begin
  if not(cdsTab_CSTIpi.Active) or (cdsTab_CSTIpi.IsEmpty) then
    exit;
  cdsTab_CSTIpi.Delete;
  cdsTab_CSTIpi.ApplyUpdates(0);
end;

procedure TDMCadCSTIpi.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsTab_CSTIpiNOME.AsString) = '' then
    vMsgErro := vMsgErro + '*** Nome não informado!';
  if trim(cdsTab_CSTIpiCOD_IPI.AsString) = '' then
    vMsgErro := vMsgErro + '*** Código não informado!';
  if vMsgErro <> '' then
    exit;
  cdsTab_CSTIpi.Post;
  cdsTab_CSTIpi.ApplyUpdates(0);
end;

procedure TDMCadCSTIpi.prc_Localizar(ID : Integer);
begin
  cdsTab_CSTIpi.Close;
  sdsTab_CSTIpi.CommandText := ctCommand;
  if ID <> 0 then
    sdsTab_CSTIpi.CommandText := sdsTab_CSTIpi.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsTab_CSTIpi.Open;
end;

procedure TDMCadCSTIpi.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsTab_CSTIpi.CommandText;

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
  cdsTab_CSTIpi.IndexFieldNames := 'COD_IPI';
end;

procedure TDMCadCSTIpi.cdsTab_CSTIpiNewRecord(DataSet: TDataSet);
begin
  cdsTab_CSTIpiGERAR_IPI.AsString := 'N';
end;

procedure TDMCadCSTIpi.dspTab_CSTIpiUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadCSTIpi.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
