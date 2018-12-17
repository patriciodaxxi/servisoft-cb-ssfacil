unit UDMCadOperacao_Nota;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadOperacao_Nota = class(TDataModule)
    sdsOperacao_Nota: TSQLDataSet;
    dspOperacao_Nota: TDataSetProvider;
    cdsOperacao_Nota: TClientDataSet;
    dsOperacao_Nota: TDataSource;
    sdsOperacao_NotaID: TIntegerField;
    sdsOperacao_NotaNOME: TStringField;
    cdsOperacao_NotaID: TIntegerField;
    cdsOperacao_NotaNOME: TStringField;
    sdsOperacao_NotaPEDIR_FINALIDADE: TStringField;
    cdsOperacao_NotaPEDIR_FINALIDADE: TStringField;
    sdsOperacao_NotaNATUREZA_NOTA: TStringField;
    cdsOperacao_NotaNATUREZA_NOTA: TStringField;
    sdsOperacao_NotaSERIE_NFE: TStringField;
    cdsOperacao_NotaSERIE_NFE: TStringField;
    qParametros: TSQLQuery;
    qParametrosCONTROLAR_SERIE_OPERACAO: TStringField;
    sdsOperacao_NotaTIPO_NOTA: TStringField;
    cdsOperacao_NotaTIPO_NOTA: TStringField;
    sdsOperacao_NotaMOSTRA_EDI: TStringField;
    cdsOperacao_NotaMOSTRA_EDI: TStringField;
    sdsOperacao_NotaMOSTRAR_CLI_TRIANG2: TStringField;
    cdsOperacao_NotaMOSTRAR_CLI_TRIANG2: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspOperacao_NotaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsOperacao_NotaNewRecord(DataSet: TDataSet);
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
  DMCadOperacao_Nota: TDMCadOperacao_Nota;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadOperacao_Nota}

procedure TDMCadOperacao_Nota.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsOperacao_Nota.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('OPERACAO_NOTA',0);

  cdsOperacao_Nota.Insert;
  cdsOperacao_NotaID.AsInteger := vAux;
end;

procedure TDMCadOperacao_Nota.prc_Excluir;
begin
  if not(cdsOperacao_Nota.Active) or (cdsOperacao_Nota.IsEmpty) then
    exit;
  cdsOperacao_Nota.Delete;
  cdsOperacao_Nota.ApplyUpdates(0);
end;

procedure TDMCadOperacao_Nota.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsOperacao_NotaNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if trim(vMsgErro) <> '' then
    exit;
  cdsOperacao_Nota.Post;
  cdsOperacao_Nota.ApplyUpdates(0);
end;

procedure TDMCadOperacao_Nota.prc_Localizar(ID : Integer); //-1 é para inclusão
begin
  cdsOperacao_Nota.Close;
  sdsOperacao_Nota.CommandText := ctCommand;
  if ID <> 0 then
    sdsOperacao_Nota.CommandText := sdsOperacao_Nota.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsOperacao_Nota.Open;
end;

procedure TDMCadOperacao_Nota.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsOperacao_Nota.CommandText;
  qParametros.Close;
  qParametros.Open;
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

procedure TDMCadOperacao_Nota.dspOperacao_NotaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadOperacao_Nota.cdsOperacao_NotaNewRecord(DataSet: TDataSet);
begin
  cdsOperacao_NotaSERIE_NFE.AsString := '';
end;

procedure TDMCadOperacao_Nota.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
