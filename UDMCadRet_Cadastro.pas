unit UDMCadRet_Cadastro;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadRet_Cadastro = class(TDataModule)
    sdsRet_Cadastro: TSQLDataSet;
    dspRet_Cadastro: TDataSetProvider;
    cdsRet_Cadastro: TClientDataSet;
    dsRet_Cadastro: TDataSource;
    sdsBanco: TSQLDataSet;
    sdsBancoID: TIntegerField;
    sdsBancoCODIGO: TStringField;
    sdsBancoNOME: TStringField;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    cdsBancoID: TIntegerField;
    cdsBancoCODIGO: TStringField;
    cdsBancoNOME: TStringField;
    dsBanco: TDataSource;
    sdsRet_CadastroID: TIntegerField;
    sdsRet_CadastroCODIGO: TStringField;
    sdsRet_CadastroNOME: TStringField;
    sdsRet_CadastroTIPO_REG: TStringField;
    sdsRet_CadastroID_BANCO: TIntegerField;
    sdsRet_CadastroNOME_BANCO: TStringField;
    cdsRet_CadastroID: TIntegerField;
    cdsRet_CadastroCODIGO: TStringField;
    cdsRet_CadastroNOME: TStringField;
    cdsRet_CadastroTIPO_REG: TStringField;
    cdsRet_CadastroID_BANCO: TIntegerField;
    cdsRet_CadastroNOME_BANCO: TStringField;
    sdsRet_CadastroTIPO_RET: TStringField;
    cdsRet_CadastroTIPO_RET: TStringField;
    sdsRet_CadastroTIPO_LIQ: TStringField;
    cdsRet_CadastroTIPO_LIQ: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspRet_CadastroUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;
    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadRet_Cadastro: TDMCadRet_Cadastro;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadRet_Cadastro.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsRet_Cadastro.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('RET_CADASTRO',0);

  cdsRet_Cadastro.Insert;
  cdsRet_CadastroID.AsInteger := vAux;
end;

procedure TDMCadRet_Cadastro.prc_Excluir;
begin
  if not(cdsRet_Cadastro.Active) or (cdsRet_Cadastro.IsEmpty) then
    exit;
  cdsRet_Cadastro.Delete;
  cdsRet_Cadastro.ApplyUpdates(0);
end;

procedure TDMCadRet_Cadastro.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsRet_CadastroNOME.AsString) = '' then
    vMsgErro := '*** Nome não informado!';
  if (trim(cdsRet_CadastroCODIGO.AsString) = '') then
    vMsgErro := vMsgErro + #13 + '*** Código do  não informado!';
  if trim(cdsRet_CadastroTIPO_REG.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Tipo não foi informado!';
  if cdsRet_CadastroID_BANCO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Banco não foi informado!';
  if vMsgErro <> '' then
    exit;
  cdsRet_Cadastro.Post;
  cdsRet_Cadastro.ApplyUpdates(0);
end;

procedure TDMCadRet_Cadastro.prc_Localizar(ID : Integer);
begin
  cdsRet_Cadastro.Close;
  sdsRet_Cadastro.CommandText := ctCommand;
  if ID <> 0 then
    sdsRet_Cadastro.CommandText := sdsRet_Cadastro.CommandText
                         + ' WHERE CAD.ID = ' + IntToStr(ID);
  cdsRet_Cadastro.Open;
end;

procedure TDMCadRet_Cadastro.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsRet_Cadastro.CommandText;
  cdsBanco.Open;
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
  cdsRet_Cadastro.IndexFieldNames := 'CODIGO';
end;

procedure TDMCadRet_Cadastro.dspRet_CadastroUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadRet_Cadastro.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
