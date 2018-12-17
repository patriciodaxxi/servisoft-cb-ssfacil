unit UDMCadNFe_Email;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadNFe_Email = class(TDataModule)
    sdsNFe_Email: TSQLDataSet;
    cdsNFe_Email: TClientDataSet;
    dsNFe_Email: TDataSource;
    dspNFe_Email: TDataSetProvider;
    sdsNFe_EmailID: TIntegerField;
    sdsNFe_EmailNOME: TStringField;
    sdsNFe_EmailEMAIL: TStringField;
    cdsNFe_EmailID: TIntegerField;
    cdsNFe_EmailNOME: TStringField;
    cdsNFe_EmailEMAIL: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspNFe_EmailUpdateError(Sender: TObject;
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
  DMCadNFe_Email: TDMCadNFe_Email;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}


procedure TDMCadNFe_Email.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsNFe_Email.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('NFE_EMAIL',0);

  cdsNFe_Email.Insert;
  cdsNFe_EmailID.AsInteger := vAux;
end;

procedure TDMCadNFe_Email.prc_Excluir;
begin
  if not(cdsNFe_Email.Active) or (cdsNFe_Email.IsEmpty) then
    exit;
  cdsNFe_Email.Delete;
  cdsNFe_Email.ApplyUpdates(0);
end;

procedure TDMCadNFe_Email.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsNFe_EmailNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if trim(cdsNFe_EmailEMAIL.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Email não informado!';
  if trim(vMsgErro) <> '' then
    exit;
  cdsNFe_Email.Post;
  cdsNFe_Email.ApplyUpdates(0);
end;

procedure TDMCadNFe_Email.prc_Localizar(ID : Integer); //-1 é para inclusão
begin
  cdsNFe_Email.Close;
  sdsNFe_Email.CommandText := ctCommand;
  if ID <> 0 then
    sdsNFe_Email.CommandText := sdsNFe_Email.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsNFe_Email.Open;
end;

procedure TDMCadNFe_Email.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsNFe_Email.CommandText;
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

procedure TDMCadNFe_Email.dspNFe_EmailUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadNFe_Email.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
