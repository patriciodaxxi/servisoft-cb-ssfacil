unit UDMCadAtividade;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadAtividade = class(TDataModule)
    sdsAtividade: TSQLDataSet;
    dspAtividade: TDataSetProvider;
    cdsAtividade: TClientDataSet;
    dsAtividade: TDataSource;
    qVerifica_Ativ: TSQLQuery;
    sdsAtividadeID: TIntegerField;
    sdsAtividadeNOME: TStringField;
    sdsAtividadeTIPO: TStringField;
    sdsAtividadeCOD_ANT: TIntegerField;
    cdsAtividadeID: TIntegerField;
    cdsAtividadeNOME: TStringField;
    cdsAtividadeTIPO: TStringField;
    cdsAtividadeCOD_ANT: TIntegerField;
    qVerifica_AtivID: TIntegerField;
    qVerifica_AtivTIPO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspAtividadeUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsAtividadeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgAtiv: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadAtividade: TDMCadAtividade;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadAtividade.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsAtividade.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('ATIVIDADE',0);

  cdsAtividade.Insert;
  cdsAtividadeID.AsInteger := vAux;
end;

procedure TDMCadAtividade.prc_Excluir;
begin
  if not(cdsAtividade.Active) or (cdsAtividade.IsEmpty) then
    exit;
  cdsAtividade.Delete;
  cdsAtividade.ApplyUpdates(0);
end;

procedure TDMCadAtividade.prc_Gravar;
begin
  vMsgAtiv := '';
  if trim(cdsAtividadeNOME.AsString) = '' then
    vMsgAtiv := '*** Nome não informado!';
  if trim(cdsAtividadeTipo.AsString) = '' then
    vMsgAtiv := '*** Tipo não informado!';
  qVerifica_Ativ.Close;
  //qVerifica_Ativ.ParamByName('TIPO').AsString := cdsAtividadeTIPO.AsString;
  qVerifica_Ativ.ParamByName('NOME').AsString := cdsAtividadeNOME.AsString;
  qVerifica_Ativ.Open;
  if not qVerifica_Ativ.IsEmpty then
  begin
    if (qVerifica_AtivID.AsInteger > 0) and (qVerifica_AtivID.AsInteger <> cdsAtividadeID.AsInteger) then
    begin
      vMsgAtiv := '*** Atividade já cadastrada no ID = ' + qVerifica_AtivID.AsString;
      if qVerifica_AtivTIPO.AsString = 'F' then
        vMsgAtiv := vMsgAtiv + ', como Fornecedor'
      else
      if qVerifica_AtivTIPO.AsString = 'C' then
        vMsgAtiv := vMsgAtiv + ', como Cliente'
      else
        vMsgAtiv := vMsgAtiv + ', como Ambos';
    end;
  end;
  if vMsgAtiv <> '' then
    exit;

  cdsAtividade.Post;
  cdsAtividade.ApplyUpdates(0);
end;

procedure TDMCadAtividade.prc_Localizar(ID: Integer);
begin
  cdsAtividade.Close;
  sdsAtividade.CommandText := ctCommand;
  if ID <> 0 then
    sdsAtividade.CommandText := sdsAtividade.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsAtividade.Open;
end;

procedure TDMCadAtividade.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsAtividade.CommandText;
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

procedure TDMCadAtividade.dspAtividadeUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadAtividade.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadAtividade.cdsAtividadeNewRecord(DataSet: TDataSet);
begin
  cdsAtividadeTIPO.AsString := 'A';
  cdsAtividadeNOME.AsString := '';
end;

end.
