unit UDMCadCob_TipoCadastro;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadCob_TipoCadastro = class(TDataModule)
    sdsCob_TipoCadastro: TSQLDataSet;
    dspCob_TipoCadastro: TDataSetProvider;
    cdsCob_TipoCadastro: TClientDataSet;
    dsCob_TipoCadastro: TDataSource;
    sdsCob_TipoCadastroID: TIntegerField;
    sdsCob_TipoCadastroCODIGO: TStringField;
    sdsCob_TipoCadastroNOME: TStringField;
    sdsCob_TipoCadastroTIPO_REG: TStringField;
    sdsCob_TipoCadastroID_BANCO: TIntegerField;
    cdsCob_TipoCadastroID: TIntegerField;
    cdsCob_TipoCadastroCODIGO: TStringField;
    cdsCob_TipoCadastroNOME: TStringField;
    cdsCob_TipoCadastroTIPO_REG: TStringField;
    cdsCob_TipoCadastroID_BANCO: TIntegerField;
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
    sdsCob_TipoCadastroNOME_BANCO: TStringField;
    cdsCob_TipoCadastroNOME_BANCO: TStringField;
    sdsCob_TipoCadastroCOD_REDUZIDO: TStringField;
    cdsCob_TipoCadastroCOD_REDUZIDO: TStringField;
    sdsCob_TipoCadastroTIPO_INST: TStringField;
    cdsCob_TipoCadastroTIPO_INST: TStringField;
    sdsCob_TipoCadastroTIPO_PROTESTO: TStringField;
    sdsCob_TipoCadastroENVIAR_DIAS_PROTESTO: TStringField;
    cdsCob_TipoCadastroTIPO_PROTESTO: TStringField;
    cdsCob_TipoCadastroENVIAR_DIAS_PROTESTO: TStringField;
    sdsCob_TipoCadastroGERAR_NOSSONUMERO: TStringField;
    sdsCob_TipoCadastroGERAR_REMESSA: TStringField;
    cdsCob_TipoCadastroGERAR_NOSSONUMERO: TStringField;
    cdsCob_TipoCadastroGERAR_REMESSA: TStringField;
    sdsCob_TipoCadastroTIPO_OCO: TStringField;
    cdsCob_TipoCadastroTIPO_OCO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCob_TipoCadastroUpdateError(Sender: TObject;
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
  DMCadCob_TipoCadastro: TDMCadCob_TipoCadastro;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCob_TipoCadastro.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsCob_TipoCadastro.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('COB_TIPO_CADASTRO',0);

  cdsCob_TipoCadastro.Insert;
  cdsCob_TipoCadastroID.AsInteger := vAux;
end;

procedure TDMCadCob_TipoCadastro.prc_Excluir;
begin
  if not(cdsCob_TipoCadastro.Active) or (cdsCob_TipoCadastro.IsEmpty) then
    exit;
  cdsCob_TipoCadastro.Delete;
  cdsCob_TipoCadastro.ApplyUpdates(0);
end;

procedure TDMCadCob_TipoCadastro.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsCob_TipoCadastroNOME.AsString) = '' then
    vMsgErro := '*** Nome não informado!';
  if (trim(cdsCob_TipoCadastroCODIGO.AsString) = '') then
    vMsgErro := vMsgErro + #13 + '*** Código do  não informado!';
  if trim(cdsCob_TipoCadastroTIPO_REG.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Tipo não foi informado!';
  if cdsCob_TipoCadastroID_BANCO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Banco não foi informado!';
  if vMsgErro <> '' then
    exit;

  if (cdsCob_TipoCadastroTIPO_REG.AsString <> 'ESP') then
  begin
    cdsCob_TipoCadastroGERAR_NOSSONUMERO.AsString := 'N';
    cdsCob_TipoCadastroGERAR_REMESSA.AsString     := 'N';
  end;
  
  cdsCob_TipoCadastro.Post;
  cdsCob_TipoCadastro.ApplyUpdates(0);
end;

procedure TDMCadCob_TipoCadastro.prc_Localizar(ID : Integer);
begin
  cdsCob_TipoCadastro.Close;
  sdsCob_TipoCadastro.CommandText := ctCommand;
  if ID <> 0 then
    sdsCob_TipoCadastro.CommandText := sdsCob_TipoCadastro.CommandText
                         + ' WHERE CAD.ID = ' + IntToStr(ID);
  cdsCob_TipoCadastro.Open;
end;

procedure TDMCadCob_TipoCadastro.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsCob_TipoCadastro.CommandText;
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
end;

procedure TDMCadCob_TipoCadastro.dspCob_TipoCadastroUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadCob_TipoCadastro.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
