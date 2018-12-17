unit UDMCadTipo_Material;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, DBXpress;

type
  TDMCadTipo_Material = class(TDataModule)
    sdsUNIDADE: TSQLDataSet;
    dspUNIDADE: TDataSetProvider;
    cdsUNIDADE: TClientDataSet;
    dsUNIDADE: TDataSource;
    sdsTipo_Material: TSQLDataSet;
    dspTipo_Material: TDataSetProvider;
    cdsTipo_Material: TClientDataSet;
    dsTipo_Material: TDataSource;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsUNIDADEUNIDADE: TStringField;
    cdsUNIDADECONVERSOR: TFloatField;
    cdsUNIDADENOME: TStringField;
    sdsTipo_MaterialID: TIntegerField;
    sdsTipo_MaterialNOME: TStringField;
    sdsTipo_MaterialDENSIDADE: TFloatField;
    sdsTipo_MaterialVALOR: TFloatField;
    sdsTipo_MaterialUNIDADE: TStringField;
    cdsTipo_MaterialID: TIntegerField;
    cdsTipo_MaterialNOME: TStringField;
    cdsTipo_MaterialDENSIDADE: TFloatField;
    cdsTipo_MaterialVALOR: TFloatField;
    cdsTipo_MaterialUNIDADE: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaDENSIDADE: TFloatField;
    cdsConsultaVALOR: TFloatField;
    cdsConsultaUNIDADE: TStringField;
    sdsTipo_MaterialFATOR_CALCULO: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspTipo_MaterialUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    vID_CidadePes: Integer;
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctConsulta: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir(Tipo: String = '');
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadTipo_Material: TDMCadTipo_Material;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadTipo_Material.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsTipo_Material.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TIPO_MATERIAL',0);

  cdsTipo_Material.Insert;
  cdsTipo_MaterialID.AsInteger := vAux;
end;

procedure TDMCadTipo_Material.prc_Excluir;
var
  ID: TTransactionDesc;
begin
  if not(cdsTipo_Material.Active) or (cdsTipo_Material.IsEmpty) then
    exit;
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsTipo_Material.Delete;
    cdsTipo_Material.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end
  end;

end;

procedure TDMCadTipo_Material.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsTipo_MaterialNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if vMsgErro <> '' then
    exit;
  cdsTipo_Material.Post;
  if cdsTipo_Material.ChangeCount > 0 then
    cdsTipo_Material.ApplyUpdates(0);
end;

procedure TDMCadTipo_Material.prc_Localizar(ID: Integer);
begin
  cdsTipo_Material.Close;
  sdsTipo_Material.CommandText := ctCommand;
  if ID <> 0 then
    sdsTipo_Material.CommandText := sdsTipo_Material.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsTipo_Material.Open;
end;

procedure TDMCadTipo_Material.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsTipo_Material.CommandText;
  ctConsulta := sdsConsulta.CommandText;
  cdsUNIDADE.Open;
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
end;

procedure TDMCadTipo_Material.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadTipo_Material.dspTipo_MaterialUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

end.
