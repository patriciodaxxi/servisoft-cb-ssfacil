unit UDMCadRegime_Trib;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadRegime_Trib = class(TDataModule)
    sdsRegime_Trib: TSQLDataSet;
    dspRegime_Trib: TDataSetProvider;
    cdsRegime_Trib: TClientDataSet;
    dsRegime_Trib: TDataSource;
    sdsRegime_TribID: TIntegerField;
    sdsRegime_TribCODIGO: TIntegerField;
    sdsRegime_TribNOME: TStringField;
    cdsRegime_TribID: TIntegerField;
    cdsRegime_TribCODIGO: TIntegerField;
    cdsRegime_TribNOME: TStringField;
    sdsRegime_TribTIPO: TStringField;
    cdsRegime_TribTIPO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspRegime_TribUpdateError(Sender: TObject;
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
  DMCadRegime_Trib: TDMCadRegime_Trib;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadRegime_Trib.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsRegime_Trib.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('REGIME_TRIB',0);

  cdsRegime_Trib.Insert;
  cdsRegime_TribID.AsInteger := vAux;
end;

procedure TDMCadRegime_Trib.prc_Excluir;
begin
  if not(cdsRegime_Trib.Active) or (cdsRegime_Trib.IsEmpty) then
    exit;
  cdsRegime_Trib.Delete;
  cdsRegime_Trib.ApplyUpdates(0);
end;

procedure TDMCadRegime_Trib.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsRegime_TribNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if cdsRegime_TribCODIGO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Código não informado!';
  if vMsgErro <> '' then
    exit;
  cdsRegime_Trib.Post;
  cdsRegime_Trib.ApplyUpdates(0);
end;

procedure TDMCadRegime_Trib.prc_Localizar(ID : Integer);
begin
  cdsRegime_Trib.Close;
  sdsRegime_Trib.CommandText := ctCommand;
  if ID <> 0 then
    sdsRegime_Trib.CommandText := sdsRegime_Trib.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsRegime_Trib.Open;
end;

procedure TDMCadRegime_Trib.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsRegime_Trib.CommandText;
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

procedure TDMCadRegime_Trib.dspRegime_TribUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadRegime_Trib.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
