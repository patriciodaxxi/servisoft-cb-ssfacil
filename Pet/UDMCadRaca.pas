unit UDMCadRaca;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadRaca = class(TDataModule)
    sdsRaca: TSQLDataSet;
    dspRaca: TDataSetProvider;
    cdsRaca: TClientDataSet;
    dsRaca: TDataSource;
    sdsRacaID: TIntegerField;
    sdsRacaNOME: TStringField;
    cdsRacaID: TIntegerField;
    cdsRacaNOME: TStringField;
    sdsRacaID_TIPO_ANIMAL: TIntegerField;
    cdsRacaID_TIPO_ANIMAL: TIntegerField;
    sdsTipo_Animal: TSQLDataSet;
    dspTipo_Animal: TDataSetProvider;
    cdsTipo_Animal: TClientDataSet;
    dsTipo_Animal: TDataSource;
    sdsTipo_AnimalID: TIntegerField;
    sdsTipo_AnimalNOME: TStringField;
    cdsTipo_AnimalID: TIntegerField;
    cdsTipo_AnimalNOME: TStringField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaID_TIPO_ANIMAL: TIntegerField;
    cdsConsultaNOME_TIPO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspRacaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgRaca: String;
    ctCommand: String;
    ctConsulta: String;
    vIDAnt : Integer;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadRaca: TDMCadRaca;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadRaca.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsRaca.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('RACA',0);

  cdsRaca.Insert;
  cdsRacaID.AsInteger := vAux;
end;

procedure TDMCadRaca.prc_Excluir;
begin
  if not(cdsRaca.Active) or (cdsRaca.IsEmpty) then
    exit;
  cdsRaca.Delete;
  cdsRaca.ApplyUpdates(0);
end;

procedure TDMCadRaca.prc_Gravar;
begin
  vMsgRaca := '';
  if trim(cdsRacaNOME.AsString) = '' then
    vMsgRaca := 'Nome da Raça não informado!';
  if vMsgRaca <> '' then
    exit;

  cdsRaca.Post;
  cdsRaca.ApplyUpdates(0);
end;

procedure TDMCadRaca.prc_Localizar(ID: Integer);
begin
  cdsRaca.Close;
  sdsRaca.CommandText := ctCommand;
  if ID <> 0 then
    sdsRaca.CommandText := sdsRaca.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsRaca.Open;
end;

procedure TDMCadRaca.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsRaca.CommandText;
  ctConsulta := sdsConsulta.CommandText;
  cdsTipo_Animal.Open;

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

procedure TDMCadRaca.dspRacaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadRaca.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
