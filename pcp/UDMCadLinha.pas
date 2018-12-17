unit UDMCadLinha;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, DBXpress;

type
  TDMCadLinha = class(TDataModule)
    sdsNCM: TSQLDataSet;
    dspNCM: TDataSetProvider;
    cdsNCM: TClientDataSet;
    dsNCM: TDataSource;
    sdsUNIDADE: TSQLDataSet;
    dspUNIDADE: TDataSetProvider;
    cdsUNIDADE: TClientDataSet;
    dsUNIDADE: TDataSource;
    sdsLinha: TSQLDataSet;
    dspLinha: TDataSetProvider;
    cdsLinha: TClientDataSet;
    dsLinha: TDataSource;
    sdsLinha_Consulta: TSQLDataSet;
    dspLinha_Consulta: TDataSetProvider;
    cdsLinha_Consulta: TClientDataSet;
    dsLinha_Consulta: TDataSource;
    cdsLinha_ConsultaID: TIntegerField;
    cdsLinha_ConsultaCODIGO: TStringField;
    cdsLinha_ConsultaNOME: TStringField;
    cdsLinha_ConsultaID_NCM: TIntegerField;
    cdsLinha_ConsultaUNIDADE: TStringField;
    cdsLinha_ConsultaNCM: TStringField;
    sdsLinhaID: TIntegerField;
    sdsLinhaCODIGO: TStringField;
    sdsLinhaNOME: TStringField;
    sdsLinhaID_NCM: TIntegerField;
    sdsLinhaUNIDADE: TStringField;
    cdsLinhaID: TIntegerField;
    cdsLinhaCODIGO: TStringField;
    cdsLinhaNOME: TStringField;
    cdsLinhaID_NCM: TIntegerField;
    cdsLinhaUNIDADE: TStringField;
    cdsNCMID: TIntegerField;
    cdsNCMNCM: TStringField;
    cdsNCMNOME: TStringField;
    cdsUNIDADEUNIDADE: TStringField;
    cdsUNIDADECONVERSOR: TFloatField;
    cdsUNIDADENOME: TStringField;
    sdsLinhaINATIVA: TStringField;
    cdsLinhaINATIVA: TStringField;
    cdsLinha_ConsultaINATIVA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspLinhaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsLinhaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    vID_CidadePes: Integer;
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgPessoa: String;
    ctCommand: String;
    ctConsulta: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir(Tipo: String = '');
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadLinha: TDMCadLinha;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadLinha.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsLinha.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('LINHA',0);

  cdsLinha.Insert;
  cdsLinhaID.AsInteger := vAux;
end;

procedure TDMCadLinha.prc_Excluir;
var
  ID: TTransactionDesc;
begin
  if not(cdsLinha.Active) or (cdsLinha.IsEmpty) then
    exit;
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsLinha.Delete;
    cdsLinha.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end
  end;

end;

procedure TDMCadLinha.prc_Gravar;
begin
  vMsgPessoa := '';
  if trim(cdsLinhaCODIGO.AsString) = '' then
    vMsgPessoa := vMsgPessoa + #13 + '*** Código não informado!';
  if vMsgPessoa <> '' then
    exit;
  cdsLinha.Post;
  if cdsLinha.ChangeCount > 0 then
    cdsLinha.ApplyUpdates(0);
end;

procedure TDMCadLinha.prc_Localizar(ID: Integer);
begin
  cdsLinha.Close;
  sdsLinha.CommandText := ctCommand;
  if ID <> 0 then
    sdsLinha.CommandText := sdsLinha.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsLinha.Open;
end;

procedure TDMCadLinha.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsLinha.CommandText;
  ctConsulta := sdsLinha_Consulta.CommandText;
  cdsNCM.Open;
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

procedure TDMCadLinha.dspLinhaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadLinha.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadLinha.cdsLinhaNewRecord(DataSet: TDataSet);
begin
  cdsLinhaINATIVA.AsString := 'N';
end;

end.
