unit UDMCadMatriz_Preco;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadMatriz_Preco = class(TDataModule)
    sdsMatriz_Preco: TSQLDataSet;
    dspMatriz_Preco: TDataSetProvider;
    cdsMatriz_Preco: TClientDataSet;
    dsMatriz_Preco: TDataSource;
    sdsMatriz_PrecoID: TIntegerField;
    sdsMatriz_PrecoNOME: TStringField;
    sdsMatriz_PrecoTIPO_REG: TStringField;
    sdsMatriz_PrecoVLR_UNITARIO: TFloatField;
    cdsMatriz_PrecoID: TIntegerField;
    cdsMatriz_PrecoNOME: TStringField;
    cdsMatriz_PrecoTIPO_REG: TStringField;
    cdsMatriz_PrecoVLR_UNITARIO: TFloatField;
    sdsMatriz_PrecoTIPO_PRECO: TStringField;
    cdsMatriz_PrecoTIPO_PRECO: TStringField;
    sdsMatriz_PrecoTIPO_VP: TStringField;
    cdsMatriz_PrecoTIPO_VP: TStringField;
    sdsMatriz_PrecoDESCRICAO_TIPO: TStringField;
    sdsMatriz_PrecoDESCRICAO_TIPO_PRECO: TStringField;
    sdsMatriz_PrecoDESCRICAO_TIPO_VP: TStringField;
    cdsMatriz_PrecoDESCRICAO_TIPO: TStringField;
    cdsMatriz_PrecoDESCRICAO_TIPO_PRECO: TStringField;
    cdsMatriz_PrecoDESCRICAO_TIPO_VP: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspMatriz_PrecoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgMatriz_Preco: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadMatriz_Preco: TDMCadMatriz_Preco;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadMatriz_Preco.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsMatriz_Preco.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('MATRIZ_PRECO',0);

  cdsMatriz_Preco.Insert;
  cdsMatriz_PrecoID.AsInteger := vAux;
end;

procedure TDMCadMatriz_Preco.prc_Excluir;
begin
  if not(cdsMatriz_Preco.Active) or (cdsMatriz_Preco.IsEmpty) then
    exit;
  cdsMatriz_Preco.Delete;
  cdsMatriz_Preco.ApplyUpdates(0);
end;

procedure TDMCadMatriz_Preco.prc_Gravar;
begin
  vMsgMatriz_Preco := '';
  if trim(cdsMatriz_PrecoNOME.AsString) = '' then
    vMsgMatriz_Preco := 'Nome não informado!';
  if (trim(cdsMatriz_PrecoTIPO_REG.AsString) = '') or (cdsMatriz_PrecoTIPO_REG.IsNull) then
    vMsgMatriz_Preco := 'Tipo não informado!';
  if vMsgMatriz_Preco <> '' then
    exit;
  if cdsMatriz_PrecoTIPO_PRECO.AsString = 'P' then
    cdsMatriz_PrecoVLR_UNITARIO.AsFloat := 0;
  cdsMatriz_Preco.Post;
  cdsMatriz_Preco.ApplyUpdates(0);
end;

procedure TDMCadMatriz_Preco.prc_Localizar(ID: Integer);
begin
  cdsMatriz_Preco.Close;
  sdsMatriz_Preco.CommandText := ctCommand;
  if ID <> 0 then
    sdsMatriz_Preco.CommandText := sdsMatriz_Preco.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsMatriz_Preco.Open;
end;

procedure TDMCadMatriz_Preco.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsMatriz_Preco.CommandText;
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

procedure TDMCadMatriz_Preco.dspMatriz_PrecoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadMatriz_Preco.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
