unit UDMCadGrupo_Pessoa;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadGrupo_Pessoa = class(TDataModule)
    sdsGrupo_Pessoa: TSQLDataSet;
    dspGrupo_Pessoa: TDataSetProvider;
    cdsGrupo_Pessoa: TClientDataSet;
    dsGrupo_Pessoa: TDataSource;
    sdsGrupo_PessoaID: TIntegerField;
    sdsGrupo_PessoaNOME: TStringField;
    cdsGrupo_PessoaID: TIntegerField;
    cdsGrupo_PessoaNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspGrupo_PessoaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgGrupo_Pessoa: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadGrupo_Pessoa: TDMCadGrupo_Pessoa;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadGrupo_Pessoa.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsGrupo_Pessoa.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('GRUPO_PESSOA',0);

  cdsGrupo_Pessoa.Insert;
  cdsGrupo_PessoaID.AsInteger := vAux;
end;

procedure TDMCadGrupo_Pessoa.prc_Excluir;
begin
  if not(cdsGrupo_Pessoa.Active) or (cdsGrupo_Pessoa.IsEmpty) then
    exit;
  cdsGrupo_Pessoa.Delete;
  cdsGrupo_Pessoa.ApplyUpdates(0);
end;

procedure TDMCadGrupo_Pessoa.prc_Gravar;
begin
  vMsgGrupo_Pessoa := '';
  if trim(cdsGrupo_PessoaNOME.AsString) = '' then
    vMsgGrupo_Pessoa := 'Nome não informado!';
  if vMsgGrupo_Pessoa <> '' then
    exit;

  cdsGrupo_Pessoa.Post;
  cdsGrupo_Pessoa.ApplyUpdates(0);
end;

procedure TDMCadGrupo_Pessoa.prc_Localizar(ID: Integer);
begin
  cdsGrupo_Pessoa.Close;
  sdsGrupo_Pessoa.CommandText := ctCommand;
  if ID <> 0 then
    sdsGrupo_Pessoa.CommandText := sdsGrupo_Pessoa.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsGrupo_Pessoa.Open;
end;

procedure TDMCadGrupo_Pessoa.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsGrupo_Pessoa.CommandText;
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

procedure TDMCadGrupo_Pessoa.dspGrupo_PessoaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadGrupo_Pessoa.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
