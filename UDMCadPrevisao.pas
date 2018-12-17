unit UDMCadPrevisao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadPrevisao = class(TDataModule)
    sdsPrevisao: TSQLDataSet;
    dspPrevisao: TDataSetProvider;
    cdsPrevisao: TClientDataSet;
    dsPrevisao: TDataSource;
    cdsPrevisaoID: TIntegerField;
    cdsPrevisaoID_CENTRO_CUSTO: TIntegerField;
    cdsPrevisaoID_PESSOA: TIntegerField;
    cdsPrevisaoTIPO_REG: TStringField;
    cdsPrevisaoVLR_PREVISAO: TFloatField;
    cdsPrevisaoINATIVO: TStringField;
    sdsPrevisaoID: TIntegerField;
    sdsPrevisaoID_CENTRO_CUSTO: TIntegerField;
    sdsPrevisaoID_PESSOA: TIntegerField;
    sdsPrevisaoTIPO_REG: TStringField;
    sdsPrevisaoVLR_PREVISAO: TFloatField;
    sdsPrevisaoINATIVO: TStringField;
    sdsPrevisaoNOME_CENTROCUSTO: TStringField;
    sdsPrevisaoNOME_PESSOA: TStringField;
    cdsPrevisaoNOME_CENTROCUSTO: TStringField;
    cdsPrevisaoNOME_PESSOA: TStringField;
    sdsCentroCusto: TSQLDataSet;
    dspCentroCusto: TDataSetProvider;
    cdsCentroCusto: TClientDataSet;
    dsCentroCusto: TDataSource;
    sdsCentroCustoTIPO: TStringField;
    sdsCentroCustoCODIGO: TStringField;
    sdsCentroCustoDESCRICAO: TStringField;
    cdsCentroCustoTIPO: TStringField;
    cdsCentroCustoCODIGO: TStringField;
    cdsCentroCustoDESCRICAO: TStringField;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    sdsPessoaFANTASIA: TStringField;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    sdsCentroCustoID: TIntegerField;
    cdsCentroCustoID: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspPrevisaoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsPrevisaoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgPrevisao : String;
    ctCommand : String;

    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadPrevisao: TDMCadPrevisao;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadPrevisao.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsPrevisao.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PREVISAO',0);

  cdsPrevisao.Insert;
  cdsPrevisaoID.AsInteger := vAux;
end;

procedure TDMCadPrevisao.prc_Excluir;
begin
  if not(cdsPrevisao.Active) or (cdsPrevisao.IsEmpty) then
    exit;
  cdsPrevisao.Delete;
  cdsPrevisao.ApplyUpdates(0);
end;

procedure TDMCadPrevisao.prc_Gravar;
begin
  vMsgPrevisao := '';
  if cdsPrevisaoID_CENTRO_CUSTO.AsInteger <= 0 then
    vMsgPrevisao := vMsgPrevisao + #13 + '*** Centro de Custo não Informado!';
  
  if vMsgPrevisao <> '' then
    exit;
    
  cdsPrevisao.Post;
  cdsPrevisao.ApplyUpdates(0);
end;

procedure TDMCadPrevisao.prc_Localizar(ID : Integer);
begin
  cdsPrevisao.Close;
  sdsPrevisao.CommandText := ctCommand;
  if ID <> 0 then
    sdsPrevisao.CommandText := sdsPrevisao.CommandText
                         + ' WHERE PR.ID = ' + IntToStr(ID);
  cdsPrevisao.Open;
end;

procedure TDMCadPrevisao.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsPrevisao.CommandText;
  cdsCentroCusto.Open;
  cdsPessoa.Open;
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

procedure TDMCadPrevisao.dspPrevisaoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadPrevisao.cdsPrevisaoNewRecord(DataSet: TDataSet);
begin
  cdsPrevisaoINATIVO.AsString  := 'N';
  cdsPrevisaoTIPO_REG.AsString := 'S';
end;

procedure TDMCadPrevisao.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
