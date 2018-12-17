unit UDMCadRet_Tabela_Rej;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadRet_Tabela_Rej = class(TDataModule)
    sdsRet_Tabela_Rej: TSQLDataSet;
    dspRet_Tabela_Rej: TDataSetProvider;
    cdsRet_Tabela_Rej: TClientDataSet;
    dsRet_Tabela_Rej: TDataSource;
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
    sdsRet_Tabela_RejID: TIntegerField;
    sdsRet_Tabela_RejCODIGO: TStringField;
    sdsRet_Tabela_RejNOME: TStringField;
    sdsRet_Tabela_RejID_BANCO: TIntegerField;
    sdsRet_Tabela_RejNOME_BANCO: TStringField;
    cdsRet_Tabela_RejID: TIntegerField;
    cdsRet_Tabela_RejCODIGO: TStringField;
    cdsRet_Tabela_RejNOME: TStringField;
    cdsRet_Tabela_RejID_BANCO: TIntegerField;
    cdsRet_Tabela_RejNOME_BANCO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspRet_Tabela_RejUpdateError(Sender: TObject;
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
  DMCadRet_Tabela_Rej: TDMCadRet_Tabela_Rej;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadRet_Tabela_Rej.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsRet_Tabela_Rej.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('Ret_Tabela_Rej',0);

  cdsRet_Tabela_Rej.Insert;
  cdsRet_Tabela_RejID.AsInteger := vAux;
end;

procedure TDMCadRet_Tabela_Rej.prc_Excluir;
begin
  if not(cdsRet_Tabela_Rej.Active) or (cdsRet_Tabela_Rej.IsEmpty) then
    exit;
  cdsRet_Tabela_Rej.Delete;
  cdsRet_Tabela_Rej.ApplyUpdates(0);
end;

procedure TDMCadRet_Tabela_Rej.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsRet_Tabela_RejNOME.AsString) = '' then
    vMsgErro := '*** Nome não informado!';
  if (trim(cdsRet_Tabela_RejCODIGO.AsString) = '') then
    vMsgErro := vMsgErro + #13 + '*** Código do  não informado!';
  if cdsRet_Tabela_RejID_BANCO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Banco não foi informado!';
  if vMsgErro <> '' then
    exit;
  cdsRet_Tabela_Rej.Post;
  cdsRet_Tabela_Rej.ApplyUpdates(0);
end;

procedure TDMCadRet_Tabela_Rej.prc_Localizar(ID : Integer);
begin
  cdsRet_Tabela_Rej.Close;
  sdsRet_Tabela_Rej.CommandText := ctCommand;
  if ID <> 0 then
    sdsRet_Tabela_Rej.CommandText := sdsRet_Tabela_Rej.CommandText
                         + ' WHERE CAD.ID = ' + IntToStr(ID);
  cdsRet_Tabela_Rej.Open;
end;

procedure TDMCadRet_Tabela_Rej.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsRet_Tabela_Rej.CommandText;
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

procedure TDMCadRet_Tabela_Rej.dspRet_Tabela_RejUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadRet_Tabela_Rej.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
