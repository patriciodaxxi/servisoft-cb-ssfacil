unit UDMCadLocal_Estoque;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, LogTypes;

type
  TDMCadLocal_Estoque = class(TDataModule)
    sdsLocal_Estoque: TSQLDataSet;
    dspLocal_Estoque: TDataSetProvider;
    cdsLocal_Estoque: TClientDataSet;
    dsLocal_Estoque: TDataSource;
    sdsUF: TSQLDataSet;
    sdsUFUF: TStringField;
    sdsUFPERC_ICMS: TFloatField;
    sdsUFIDPAIS: TIntegerField;
    sdsUFCODUF: TStringField;
    sdsUFPERC_ICMS_INTERNO: TFloatField;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    cdsUFUF: TStringField;
    cdsUFPERC_ICMS: TFloatField;
    cdsUFIDPAIS: TIntegerField;
    cdsUFCODUF: TStringField;
    cdsUFPERC_ICMS_INTERNO: TFloatField;
    dsUF: TDataSource;
    sdsCidade: TSQLDataSet;
    sdsCidadeID: TIntegerField;
    sdsCidadeNOME: TStringField;
    sdsCidadeUF: TStringField;
    sdsCidadeCODMUNICIPIO: TStringField;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    dsCidade: TDataSource;
    sdsLocal_EstoqueID: TIntegerField;
    sdsLocal_EstoqueNOME: TStringField;
    sdsLocal_EstoqueENDERECO: TStringField;
    sdsLocal_EstoqueNUM_ENDERECO: TStringField;
    sdsLocal_EstoqueID_CIDADE: TIntegerField;
    sdsLocal_EstoqueUF: TStringField;
    sdsLocal_EstoqueBAIRRO: TStringField;
    sdsLocal_EstoqueCEP: TStringField;
    cdsLocal_EstoqueID: TIntegerField;
    cdsLocal_EstoqueNOME: TStringField;
    cdsLocal_EstoqueENDERECO: TStringField;
    cdsLocal_EstoqueNUM_ENDERECO: TStringField;
    cdsLocal_EstoqueID_CIDADE: TIntegerField;
    cdsLocal_EstoqueUF: TStringField;
    cdsLocal_EstoqueBAIRRO: TStringField;
    cdsLocal_EstoqueCEP: TStringField;
    sdsLocal_EstoqueCOD_LOCAL: TIntegerField;
    cdsLocal_EstoqueCOD_LOCAL: TIntegerField;
    qProximoCod: TSQLQuery;
    qProximoCodCOD_LOCAL: TIntegerField;
    sdsLocal_EstoquePRINCIPAL: TStringField;
    cdsLocal_EstoquePRINCIPAL: TStringField;
    sdsLocal_EstoqueINATIVO: TStringField;
    cdsLocal_EstoqueINATIVO: TStringField;
    sdsLocal_EstoqueCIDADE: TStringField;
    cdsLocal_EstoqueCIDADE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsLocal_EstoqueNewRecord(DataSet: TDataSet);
    procedure dspLocal_EstoqueUpdateError(Sender: TObject;
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
  DMCadLocal_Estoque: TDMCadLocal_Estoque;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

procedure TDMCadLocal_Estoque.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsLocal_Estoque.CommandText;
  cdsCidade.Open;
  cdsUF.Open;
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

procedure TDMCadLocal_Estoque.DataModuleDestroy(Sender: TObject);
begin
  cdsCidade.Close;
  cdsUF.Close;
  cdsLocal_Estoque.Close;
end;

procedure TDMCadLocal_Estoque.prc_Excluir;
begin
  if not(cdsLocal_Estoque.Active) or (cdsLocal_Estoque.IsEmpty) then
    exit;
  cdsLocal_Estoque.Delete;
  cdsLocal_Estoque.ApplyUpdates(0);
end;

procedure TDMCadLocal_Estoque.prc_Gravar;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  sds2: TSQLDataSet;
begin
  vMsgErro := '';
  if trim(cdsLocal_EstoqueNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não foi informado!';

  if cdsLocal_EstoquePRINCIPAL.AsString = 'S' then
  begin
    sds2 := TSQLDataSet.Create(nil);
    try
      sds2.SQLConnection := dmDatabase.scoDados;
      sds2.NoMetadata    := True;
      sds2.GetMetadata   := False;
      sds2.CommandText   := 'SELECT ID, COD_LOCAL FROM LOCAL_ESTOQUE '
                          + ' WHERE PRINCIPAL = ' + QuotedStr('S')
                          + ' AND ID <> ' + IntToStr(cdsLocal_EstoqueID.AsInteger);
      sds2.Open;
      if not sds2.IsEmpty then
        vMsgErro := vMsgErro + #13 + '*** Local principal já esta no ID = ' + sds2.FieldByName('ID').AsString + '  Código = ' + sds2.FieldByName('COD_LOCAL').AsString;
    finally
      FreeAndNil(sds2);
    end;
  end;
  if trim(vMsgErro) <> '' then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    if cdsLocal_Estoque.State in [dsEdit,dsInsert] then
      cdsLocal_Estoque.Post;

    cdsLocal_Estoque.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
end;

procedure TDMCadLocal_Estoque.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsLocal_Estoque.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('LOCAL_ESTOQUE',0);
                                    
  cdsLocal_Estoque.Insert;
  cdsLocal_EstoqueID.AsInteger := vAux;

  qProximoCod.Close;
  qProximoCod.Open;
  vAux := qProximoCodCOD_LOCAL.AsInteger + 1;

  cdsLocal_EstoqueCOD_LOCAL.AsInteger := vAux;
end;

procedure TDMCadLocal_Estoque.prc_Localizar(ID: Integer);
begin
  cdsLocal_Estoque.Close;
  sdsLocal_Estoque.CommandText := ctCommand;
  if ID <> 0 then
    sdsLocal_Estoque.CommandText := sdsLocal_Estoque.CommandText
                         + ' WHERE LOC.ID = ' + IntToStr(ID);
  cdsLocal_Estoque.Open;
end;

procedure TDMCadLocal_Estoque.cdsLocal_EstoqueNewRecord(DataSet: TDataSet);
begin
  cdsLocal_EstoqueINATIVO.AsString   := 'N';
  cdsLocal_EstoquePRINCIPAL.AsString := 'N';
end;

procedure TDMCadLocal_Estoque.dspLocal_EstoqueUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadLocal_Estoque.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
