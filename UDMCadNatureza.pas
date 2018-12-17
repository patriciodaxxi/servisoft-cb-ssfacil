unit UDMCadNatureza;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadNatureza = class(TDataModule)
    sdsNatureza: TSQLDataSet;
    dspNatureza: TDataSetProvider;
    cdsNatureza: TClientDataSet;
    dsNatureza: TDataSource;
    sdsNaturezaID: TIntegerField;
    sdsNaturezaID_PROVEDOR: TIntegerField;
    sdsNaturezaCODIGO: TStringField;
    sdsNaturezaNOME: TStringField;
    sdsNaturezaTRIBUTACAO_DF: TStringField;
    sdsNaturezaCOD_TRIBUTO: TStringField;
    cdsNaturezaID: TIntegerField;
    cdsNaturezaID_PROVEDOR: TIntegerField;
    cdsNaturezaCODIGO: TStringField;
    cdsNaturezaNOME: TStringField;
    cdsNaturezaTRIBUTACAO_DF: TStringField;
    cdsNaturezaCOD_TRIBUTO: TStringField;
    sdsProvedor: TSQLDataSet;
    dspProvedor: TDataSetProvider;
    cdsProvedor: TClientDataSet;
    dsProvedor: TDataSource;
    sdsProvedorID: TIntegerField;
    sdsProvedorNOME: TStringField;
    cdsProvedorID: TIntegerField;
    cdsProvedorNOME: TStringField;
    sdsNaturezaNOME_PROVEDOR: TStringField;
    cdsNaturezaNOME_PROVEDOR: TStringField;
    sdsNaturezaRETER_ISSQN: TStringField;
    sdsNaturezaMOSTRAR_BASE_ISSQN: TStringField;
    cdsNaturezaRETER_ISSQN: TStringField;
    cdsNaturezaMOSTRAR_BASE_ISSQN: TStringField;
    sdsNaturezaUSA_CIDADE_CLI: TStringField;
    cdsNaturezaUSA_CIDADE_CLI: TStringField;
    qParametros_Ser: TSQLQuery;
    qParametros_SerUSA_NATUREZA_CID_NFSE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspNaturezaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsNaturezaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgNatureza: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadNatureza: TDMCadNatureza;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadNatureza.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsNatureza.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('NFSE_NATUREZA',0);

  cdsNatureza.Insert;
  cdsNaturezaID.AsInteger := vAux;
end;

procedure TDMCadNatureza.prc_Excluir;
begin
  if not(cdsNatureza.Active) or (cdsNatureza.IsEmpty) then
    exit;
  cdsNatureza.Delete;
  cdsNatureza.ApplyUpdates(0);
end;

procedure TDMCadNatureza.prc_Gravar;
begin
  vMsgNatureza := '';
  if trim(cdsNaturezaNOME.AsString) = '' then
    vMsgNatureza := vMsgNatureza + #13 + '*** Nome não informado!';
  if (trim(cdsNaturezaCODIGO.AsString) = '') then
    vMsgNatureza := vMsgNatureza + #13 + 'Código do Natureza não informado!';
  if vMsgNatureza <> '' then
    exit;
    
  cdsNatureza.Post;
  cdsNatureza.ApplyUpdates(0);
end;

procedure TDMCadNatureza.prc_Localizar(ID: Integer);
begin
  cdsNatureza.Close;
  sdsNatureza.CommandText := ctCommand;
  if ID <> 0 then
    sdsNatureza.CommandText := sdsNatureza.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsNatureza.Open;
end;

procedure TDMCadNatureza.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsNatureza.CommandText;
  cdsProvedor.Open;
  qParametros_Ser.Open;
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

procedure TDMCadNatureza.dspNaturezaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadNatureza.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadNatureza.cdsNaturezaNewRecord(DataSet: TDataSet);
begin
  cdsNaturezaRETER_ISSQN.AsString        := 'N';
  cdsNaturezaMOSTRAR_BASE_ISSQN.AsString := 'N';
  cdsNaturezaUSA_CIDADE_CLI.AsString     := 'N';
end;

end.
