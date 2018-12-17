unit UDMCadProvedor;
                  
interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadProvedor = class(TDataModule)
    sdsProvedor: TSQLDataSet;
    dspProvedor: TDataSetProvider;
    cdsProvedor: TClientDataSet;
    dsProvedor: TDataSource;
    sdsProvedorID: TIntegerField;
    sdsProvedorNOME: TStringField;
    cdsProvedorID: TIntegerField;
    cdsProvedorNOME: TStringField;
    sdsProvedorOBS: TMemoField;
    cdsProvedorOBS: TMemoField;
    sdsProvedorTIPO_NATUREZA: TStringField;
    cdsProvedorTIPO_NATUREZA: TStringField;
    sdsProvedorTIPO_RETORNO: TStringField;
    cdsProvedorTIPO_RETORNO: TStringField;
    sdsProvedorMOSTRAR_ALIQUOTA_PD: TStringField;
    sdsProvedorINF_COD_SERVICO: TStringField;
    cdsProvedorMOSTRAR_ALIQUOTA_PD: TStringField;
    cdsProvedorINF_COD_SERVICO: TStringField;
    sdsProvedorRETENCAO_ISSQN: TStringField;
    cdsProvedorRETENCAO_ISSQN: TStringField;
    sdsProvedorUSA_ATIVIDADE_CID_SERV: TStringField;
    cdsProvedorUSA_ATIVIDADE_CID_SERV: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspProvedorUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsProvedorNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadProvedor: TDMCadProvedor;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadProvedor}

procedure TDMCadProvedor.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsProvedor.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PROVEDOR',0);

  cdsProvedor.Insert;
  cdsProvedorID.AsInteger := vAux;
end;

procedure TDMCadProvedor.prc_Excluir;
begin
  if not(cdsProvedor.Active) or (cdsProvedor.IsEmpty) then
    exit;
  cdsProvedor.Delete;
  cdsProvedor.ApplyUpdates(0);
end;

procedure TDMCadProvedor.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsProvedorNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';

  if trim(vMsgErro) <> '' then
    exit;

  cdsProvedor.Post;
  cdsProvedor.ApplyUpdates(0);
end;

procedure TDMCadProvedor.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsProvedor.Close;
  sdsProvedor.CommandText := ctCommand;
  if ID <> 0 then
    sdsProvedor.CommandText := sdsProvedor.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsProvedor.Open;
end;

procedure TDMCadProvedor.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsProvedor.CommandText;
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

procedure TDMCadProvedor.dspProvedorUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadProvedor.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadProvedor.cdsProvedorNewRecord(DataSet: TDataSet);
begin
  cdsProvedorRETENCAO_ISSQN.AsString := 'N';
end;

end.
