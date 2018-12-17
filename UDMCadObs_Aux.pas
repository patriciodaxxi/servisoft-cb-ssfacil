unit UDMCadObs_Aux;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadObs_Aux = class(TDataModule)
    sdsObs_Aux: TSQLDataSet;
    dspObs_Aux: TDataSetProvider;
    cdsObs_Aux: TClientDataSet;
    dsObs_Aux: TDataSource;
    sdsObs_AuxID: TIntegerField;
    sdsObs_AuxNOME: TStringField;
    sdsObs_AuxOBS: TStringField;
    cdsObs_AuxID: TIntegerField;
    cdsObs_AuxNOME: TStringField;
    cdsObs_AuxOBS: TStringField;
    sdsObs_AuxOBS_PEDIDO: TMemoField;
    cdsObs_AuxOBS_PEDIDO: TMemoField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspObs_AuxUpdateError(Sender: TObject;
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
  DMCadObs_Aux: TDMCadObs_Aux;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadObs_Aux}

procedure TDMCadObs_Aux.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsObs_Aux.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('OBS_AUX',0);

  cdsObs_Aux.Insert;
  cdsObs_AuxID.AsInteger := vAux;
end;

procedure TDMCadObs_Aux.prc_Excluir;
begin
  if not(cdsObs_Aux.Active) or (cdsObs_Aux.IsEmpty) then
    exit;
  cdsObs_Aux.Delete;
  cdsObs_Aux.ApplyUpdates(0);
end;

procedure TDMCadObs_Aux.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsObs_AuxNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if trim(cdsObs_AuxOBS.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Observação não informada!';
  if trim(vMsgErro) <> '' then
    exit;
  cdsObs_Aux.Post;
  cdsObs_Aux.ApplyUpdates(0);
end;

procedure TDMCadObs_Aux.prc_Localizar(ID : Integer); //-1 é para inclusão
begin
  cdsObs_Aux.Close;
  sdsObs_Aux.CommandText := ctCommand;
  if ID <> 0 then
    sdsObs_Aux.CommandText := sdsObs_Aux.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsObs_Aux.Open;
end;

procedure TDMCadObs_Aux.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsObs_Aux.CommandText;
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

procedure TDMCadObs_Aux.dspObs_AuxUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadObs_Aux.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
