unit UDMCadTipoMaquina;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadTipoMaquina = class(TDataModule)
    sdsTipoMaquina: TSQLDataSet;
    dspTipoMaquina: TDataSetProvider;
    cdsTipoMaquina: TClientDataSet;
    dsTipoMaquina: TDataSource;
    sdsTipoMaquinaID: TIntegerField;
    sdsTipoMaquinaNOME: TStringField;
    cdsTipoMaquinaID: TIntegerField;
    cdsTipoMaquinaNOME: TStringField;
    sdsTipoMaquinaTIPO: TStringField;
    cdsTipoMaquinaTIPO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspTipoMaquinaUpdateError(Sender: TObject;
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
  DMCadTipoMaquina: TDMCadTipoMaquina;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadMaquina }

procedure TDMCadTipoMaquina.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsTipoMaquina.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TIPO_MAQUINA',0);

  cdsTipoMaquina.Insert;
  cdsTipoMaquinaID.AsInteger := vAux;
end;

procedure TDMCadTipoMaquina.prc_Excluir;
begin
  if not(cdsTipoMaquina.Active) or (cdsTipoMaquina.IsEmpty) then
    exit;
  cdsTipoMaquina.Delete;
  cdsTipoMaquina.ApplyUpdates(0);
end;

procedure TDMCadTipoMaquina.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsTipoMaquinaNOME.AsString) = '' then
    vMsgErro := '*** Nome não informado!';
  if vMsgErro <> '' then
    exit;
    
  cdsTipoMaquina.Post;
  cdsTipoMaquina.ApplyUpdates(0);
end;

procedure TDMCadTipoMaquina.prc_Localizar(ID: Integer);
begin
  cdsTipoMaquina.Close;
  sdsTipoMaquina.CommandText := ctCommand;
  if ID <> 0 then
    sdsTipoMaquina.CommandText := sdsTipoMaquina.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsTipoMaquina.Open;
end;

procedure TDMCadTipoMaquina.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsTipoMaquina.CommandText;
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

procedure TDMCadTipoMaquina.dspTipoMaquinaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadTipoMaquina.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
