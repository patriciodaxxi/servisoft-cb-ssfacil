unit UDMCadBanco;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadBanco = class(TDataModule)
    sdsBanco: TSQLDataSet;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    dsBanco: TDataSource;
    sdsBancoID: TIntegerField;
    sdsBancoCODIGO: TStringField;
    sdsBancoNOME: TStringField;
    cdsBancoID: TIntegerField;
    cdsBancoCODIGO: TStringField;
    cdsBancoNOME: TStringField;
    sdsBancoOPCAO_GERAR_NOSSNUMERO: TStringField;
    cdsBancoOPCAO_GERAR_NOSSNUMERO: TStringField;
    sdsBancoACBR_USAR_MONTAR_NOSSONUMERO: TStringField;
    cdsBancoACBR_USAR_MONTAR_NOSSONUMERO: TStringField;
    sdsBancoINICIAL_NOME_ARQ_REMESSA: TStringField;
    cdsBancoINICIAL_NOME_ARQ_REMESSA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspBancoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsBancoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgBanco: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadBanco: TDMCadBanco;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadBanco.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsBanco.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('BANCO',0);

  cdsBanco.Insert;
  cdsBancoID.AsInteger := vAux;
end;

procedure TDMCadBanco.prc_Excluir;
begin
  if not(cdsBanco.Active) or (cdsBanco.IsEmpty) then
    exit;
  cdsBanco.Delete;
  cdsBanco.ApplyUpdates(0);
end;

procedure TDMCadBanco.prc_Gravar;
begin
  vMsgBanco := '';
  if trim(cdsBancoNOME.AsString) = '' then
    vMsgBanco := 'Nome não informado!';
  if (trim(cdsBancoCODIGO.AsString) = '') then
    vMsgBanco := vMsgBanco + #13 + 'Código do banco não informado!';
  if vMsgBanco <> '' then
    exit;
    
  cdsBanco.Post;
  cdsBanco.ApplyUpdates(0);
end;

procedure TDMCadBanco.prc_Localizar(ID: Integer);
begin
  cdsBanco.Close;
  sdsBanco.CommandText := ctCommand;
  if ID <> 0 then
    sdsBanco.CommandText := sdsBanco.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsBanco.Open;
end;

procedure TDMCadBanco.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsBanco.CommandText;
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

procedure TDMCadBanco.dspBancoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadBanco.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadBanco.cdsBancoNewRecord(DataSet: TDataSet);
begin
  cdsBancoACBR_USAR_MONTAR_NOSSONUMERO.AsString := 'N';
end;

end.
