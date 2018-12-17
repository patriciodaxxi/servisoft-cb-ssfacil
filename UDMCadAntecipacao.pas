unit UDMCadAntecipacao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadAntecipacao = class(TDataModule)
    sdsAutenticacao: TSQLDataSet;
    dspAutenticacao: TDataSetProvider;
    cdsAutenticacao: TClientDataSet;
    dsAutenticacao: TDataSource;
    sdsAutenticacaoID: TIntegerField;
    sdsAutenticacaoDTMOVIMENTO: TDateField;
    sdsAutenticacaoID_PESSOA: TIntegerField;
    sdsAutenticacaoTIPO_PES: TStringField;
    sdsAutenticacaoVALOR: TFloatField;
    sdsAutenticacaoTIPO_ES: TStringField;
    sdsAutenticacaoNUM_NOTA: TIntegerField;
    sdsAutenticacaoSERIE: TStringField;
    sdsAutenticacaoOBS: TMemoField;
    sdsAutenticacaoID_PEDIDO: TIntegerField;
    sdsAutenticacaoID_NOTA: TIntegerField;
    sdsAutenticacaoNUM_OC: TIntegerField;
    cdsAutenticacaoID: TIntegerField;
    cdsAutenticacaoDTMOVIMENTO: TDateField;
    cdsAutenticacaoID_PESSOA: TIntegerField;
    cdsAutenticacaoTIPO_PES: TStringField;
    cdsAutenticacaoVALOR: TFloatField;
    cdsAutenticacaoTIPO_ES: TStringField;
    cdsAutenticacaoNUM_NOTA: TIntegerField;
    cdsAutenticacaoSERIE: TStringField;
    cdsAutenticacaoOBS: TMemoField;
    cdsAutenticacaoID_PEDIDO: TIntegerField;
    cdsAutenticacaoID_NOTA: TIntegerField;
    cdsAutenticacaoNUM_OC: TIntegerField;
    sdsAutenticacaoFILIAL: TIntegerField;
    cdsAutenticacaoFILIAL: TIntegerField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    sdsAutenticacaoNOME_PESSOA: TStringField;
    cdsAutenticacaoNOME_PESSOA: TStringField;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsAutenticacaoNewRecord(DataSet: TDataSet);
  private
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    { Private declarations }
  public
    ctCommand: string;
    vMsgErro: string;
    procedure prc_Excluir;
    procedure prc_Gravar;
    procedure prc_Inserir;
    procedure prc_Localizar(ID: Integer);
    { Public declarations }
  end;

var
  DMCadAntecipacao: TDMCadAntecipacao;

implementation

uses
  DmdDatabase, uUtilPadrao, LogProvider;

{$R *.dfm}

{ TDMCadAntecipacao }

procedure TDMCadAntecipacao.prc_Excluir;
begin
  if not (cdsAutenticacao.Active) or (cdsAutenticacao.IsEmpty) then
    exit;
  cdsAutenticacao.Delete;
  cdsAutenticacao.ApplyUpdates(0);
end;

procedure TDMCadAntecipacao.prc_Gravar;
begin
  vMsgErro := '';
  if cdsAutenticacaoDTMOVIMENTO.IsNull then
    vMsgErro := vMsgErro + #13 + '*** Data não foi informada!';
  if cdsAutenticacaoID_PESSOA.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Cliente/Fornecedor não foi informado!';
  if vMsgErro <> '' then
    exit;
  cdsAutenticacao.Post;
  cdsAutenticacao.ApplyUpdates(0);
end;

procedure TDMCadAntecipacao.prc_inserir;
var
  vAux: Integer;
begin
  if not cdsAutenticacao.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('ANTECIPACAO', 0);
  cdsAutenticacao.Insert;
  cdsAutenticacaoID.AsInteger := vAux;
end;

procedure TDMCadAntecipacao.prc_Localizar(ID: Integer);
begin
  cdsAutenticacao.Close;
  cdsAutenticacao.CommandText := ctCommand;
  cdsAutenticacao.Open;
end;

procedure TDMCadAntecipacao.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  cdsPessoa.Open;
  cdsFilial.Open;
  ctCommand := sdsAutenticacao.CommandText;
  cdsAutenticacao.Open;
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

procedure TDMCadAntecipacao.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadAntecipacao.cdsAutenticacaoNewRecord(DataSet: TDataSet);
begin
  cdsAutenticacaoTIPO_PES.AsString := 'F';
end;

end.

