unit UDMCadFeriado_Fixo;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadFeriado_Fixo = class(TDataModule)
    sdsFeriado_Fixo: TSQLDataSet;
    dspFeriado_Fixo: TDataSetProvider;
    cdsFeriado_Fixo: TClientDataSet;
    dsFeriado_Fixo: TDataSource;
    sdsFeriado_FixoID: TIntegerField;
    sdsFeriado_FixoDIA: TIntegerField;
    sdsFeriado_FixoMES: TIntegerField;
    sdsFeriado_FixoNOME: TStringField;
    cdsFeriado_FixoID: TIntegerField;
    cdsFeriado_FixoDIA: TIntegerField;
    cdsFeriado_FixoMES: TIntegerField;
    cdsFeriado_FixoNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspFeriado_FixoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgFeriado_Fixo: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadFeriado_Fixo: TDMCadFeriado_Fixo;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadFeriado_Fixo.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsFeriado_Fixo.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('FERIADO_FIXO',0);

  cdsFeriado_Fixo.Insert;
  cdsFeriado_FixoID.AsInteger := vAux;
end;

procedure TDMCadFeriado_Fixo.prc_Excluir;
begin
  if not(cdsFeriado_Fixo.Active) or (cdsFeriado_Fixo.IsEmpty) then
    exit;
  cdsFeriado_Fixo.Delete;
  cdsFeriado_Fixo.ApplyUpdates(0);
end;

procedure TDMCadFeriado_Fixo.prc_Gravar;
begin
  vMsgFeriado_Fixo := '';
  if (cdsFeriado_FixoDIA.AsInteger <= 0) or (cdsFeriado_FixoDIA.AsInteger > 31) then
    vMsgFeriado_Fixo := '*** Dia inválido!';
  if (cdsFeriado_FixoMES.AsInteger <= 0) or (cdsFeriado_FixoMES.AsInteger > 12) then
    vMsgFeriado_Fixo := '*** Mês inválido!';
  if (cdsFeriado_FixoMES.AsInteger = 2) and (cdsFeriado_FixoDIA.AsInteger > 29) then
    vMsgFeriado_Fixo := '*** Dia inválido!';
  if ((cdsFeriado_FixoMES.AsInteger = 4) or (cdsFeriado_FixoMES.AsInteger = 6) or 
     (cdsFeriado_FixoMES.AsInteger = 9) or (cdsFeriado_FixoMES.AsInteger = 11)) and (cdsFeriado_FixoDIA.AsInteger > 30) then
    vMsgFeriado_Fixo := '*** Dia inválido!';
  if vMsgFeriado_Fixo <> '' then
    exit;
    
  cdsFeriado_Fixo.Post;
  cdsFeriado_Fixo.ApplyUpdates(0);
end;

procedure TDMCadFeriado_Fixo.prc_Localizar(ID: Integer);
begin
  cdsFeriado_Fixo.Close;
  sdsFeriado_Fixo.CommandText := ctCommand;
  if ID <> 0 then
    sdsFeriado_Fixo.CommandText := sdsFeriado_Fixo.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsFeriado_Fixo.Open;
end;

procedure TDMCadFeriado_Fixo.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsFeriado_Fixo.CommandText;
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

procedure TDMCadFeriado_Fixo.dspFeriado_FixoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadFeriado_Fixo.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
