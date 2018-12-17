unit UDMCadCombinacao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadCombinacao = class(TDataModule)
    sdsCombinacao: TSQLDataSet;
    dspCombinacao: TDataSetProvider;
    cdsCombinacao: TClientDataSet;
    dsCombinacao: TDataSource;
    sdsCombinacaoID: TFMTBCDField;
    sdsCombinacaoID_PRODUTO: TIntegerField;
    sdsCombinacaoITEM_COMBINACAO: TIntegerField;
    sdsCombinacaoID_COR: TIntegerField;
    sdsCombinacaoNOME: TStringField;
    cdsCombinacaoID: TFMTBCDField;
    cdsCombinacaoID_PRODUTO: TIntegerField;
    cdsCombinacaoITEM_COMBINACAO: TIntegerField;
    cdsCombinacaoID_COR: TIntegerField;
    cdsCombinacaoNOME: TStringField;
    sdsCombinacaoTIPO_REG: TStringField;
    cdsCombinacaoTIPO_REG: TStringField;
    qCombinacao: TSQLQuery;
    qCombinacaoID: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCombinacaoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgCombinacao: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadCombinacao: TDMCadCombinacao;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCombinacao.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsCombinacao.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('COMBINACAO',0);

  cdsCombinacao.Insert;
  cdsCombinacaoID.AsInteger := vAux;
end;

procedure TDMCadCombinacao.prc_Excluir;
begin
  if not(cdsCombinacao.Active) or (cdsCombinacao.IsEmpty) then
    exit;
  cdsCombinacao.Delete;
  cdsCombinacao.ApplyUpdates(0);
end;

procedure TDMCadCombinacao.prc_Gravar;
begin
  vMsgCombinacao := '';
  if trim(cdsCombinacaoNOME.AsString) = '' then
    vMsgCombinacao := 'Nome não informado!';
  if vMsgCombinacao <> '' then
    exit;
    
  cdsCombinacao.Post;
  cdsCombinacao.ApplyUpdates(0);
end;

procedure TDMCadCombinacao.prc_Localizar(ID: Integer);
begin
  cdsCombinacao.Close;
  sdsCombinacao.CommandText := ctCommand;
  if ID <> 0 then
    sdsCombinacao.CommandText := sdsCombinacao.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsCombinacao.Open;
end;

procedure TDMCadCombinacao.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsCombinacao.CommandText;
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

procedure TDMCadCombinacao.dspCombinacaoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadCombinacao.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
