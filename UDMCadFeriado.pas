unit UDMCadFeriado;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadFeriado = class(TDataModule)
    sdsFeriado: TSQLDataSet;
    dspFeriado: TDataSetProvider;
    cdsFeriado: TClientDataSet;
    dsFeriado: TDataSource;
    sdsFeriadoID: TIntegerField;
    sdsFeriadoDATA: TDateField;
    sdsFeriadoDESCRICAO: TStringField;
    cdsFeriadoID: TIntegerField;
    cdsFeriadoDATA: TDateField;
    cdsFeriadoDESCRICAO: TStringField;
    sdsFeriadoFIXOS: TStringField;
    cdsFeriadoFIXOS: TStringField;
    qData: TSQLQuery;
    qDataID: TIntegerField;
    qDataDATA: TDateField;
    qDataDESCRICAO: TStringField;
    qDataFIXOS: TStringField;
    sdsFeriado_Fixo: TSQLDataSet;
    dspFeriado_Fixo: TDataSetProvider;
    cdsFeriado_Fixo: TClientDataSet;
    sdsFeriado_FixoID: TIntegerField;
    sdsFeriado_FixoDIA: TIntegerField;
    sdsFeriado_FixoMES: TIntegerField;
    sdsFeriado_FixoNOME: TStringField;
    cdsFeriado_FixoID: TIntegerField;
    cdsFeriado_FixoDIA: TIntegerField;
    cdsFeriado_FixoMES: TIntegerField;
    cdsFeriado_FixoNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspFeriadoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgFeriado: String;
    ctCommand: String;
    vDataFeriado : TDateTime;

    procedure prc_Localizar(ID: Integer ; Data : TDateTime); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadFeriado: TDMCadFeriado;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadFeriado.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsFeriado.Active then
    prc_Localizar(-1,0);
  vAux := dmDatabase.ProximaSequencia('FERIADO',0);

  cdsFeriado.Insert;
  cdsFeriadoID.AsInteger := vAux;
end;

procedure TDMCadFeriado.prc_Excluir;
begin
  if not(cdsFeriado.Active) or (cdsFeriado.IsEmpty) then
    exit;

  try
    vDataFeriado := cdsFeriadoDATA.AsDateTime;
    cdsFeriado.Delete;
    cdsFeriado.ApplyUpdates(0);
  except
    vDataFeriado := 0;
  end;
end;

procedure TDMCadFeriado.prc_Gravar;
begin
  vMsgFeriado := '';
  if cdsFeriadoDATA.AsDateTime <= 10 then
    vMsgFeriado := '*** Data não informada!';
  if vMsgFeriado <> '' then
    exit;
    
  cdsFeriado.Post;
  cdsFeriado.ApplyUpdates(0);
  vDataFeriado := cdsFeriadoDATA.AsDateTime;
end;

procedure TDMCadFeriado.prc_Localizar(ID: Integer ; Data : TDateTime);
begin
  cdsFeriado.Close;
  sdsFeriado.CommandText := ctCommand;
  if ID <> 0 then
    sdsFeriado.CommandText := sdsFeriado.CommandText +
                            ' WHERE ID = ' + IntToStr(ID)
  else
  if Data > 10 then
    sdsFeriado.CommandText := sdsFeriado.CommandText
                            + ' WHERE DATA = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Data));
  cdsFeriado.Open;
end;

procedure TDMCadFeriado.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsFeriado.CommandText;
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

procedure TDMCadFeriado.dspFeriadoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadFeriado.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
