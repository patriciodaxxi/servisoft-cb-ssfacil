unit UDMCadProcesso_Grupo;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadProcesso_Grupo = class(TDataModule)
    sdsProcesso_Grupo: TSQLDataSet;
    dspProcesso_Grupo: TDataSetProvider;
    cdsProcesso_Grupo: TClientDataSet;
    dsProcesso_Grupo: TDataSource;
    dsProcesso_Mestre: TDataSource;
    sdsProcesso_Grupo_Itens: TSQLDataSet;
    sdsProcesso_GrupoID: TIntegerField;
    sdsProcesso_GrupoNOME: TStringField;
    cdsProcesso_GrupoID: TIntegerField;
    cdsProcesso_GrupoNOME: TStringField;
    sdsProcesso_Grupo_ItensID: TIntegerField;
    sdsProcesso_Grupo_ItensITEM: TIntegerField;
    sdsProcesso_Grupo_ItensID_PROCESSO: TIntegerField;
    cdsProcesso_GruposdsProcesso_Grupo_Itens: TDataSetField;
    cdsProcesso_Grupo_Itens: TClientDataSet;
    cdsProcesso_Grupo_ItensID: TIntegerField;
    cdsProcesso_Grupo_ItensITEM: TIntegerField;
    cdsProcesso_Grupo_ItensID_PROCESSO: TIntegerField;
    dsProcesso_Grupo_Itens: TDataSource;
    cdsProcesso_Grupo_ItensclNome_Processo: TStringField;
    sdsProcesso: TSQLDataSet;
    dspProcesso: TDataSetProvider;
    cdsProcesso: TClientDataSet;
    dsProcesso: TDataSource;
    cdsProcessoID: TIntegerField;
    cdsProcessoNOME: TStringField;
    sdsProcesso_Grupo_ItensID_SERVICO_OS: TIntegerField;
    cdsProcesso_Grupo_ItensID_SERVICO_OS: TIntegerField;
    qParametros_Ser: TSQLQuery;
    qParametros_SerUSA_PROCESSO_OS: TStringField;
    cdsProcesso_Grupo_ItensclNome_Servico_OS: TStringField;
    qServico_OS: TSQLQuery;
    qServico_OSID: TIntegerField;
    qServico_OSNOME: TStringField;
    sdsServico_OS: TSQLDataSet;
    dspServico_OS: TDataSetProvider;
    cdsServico_OS: TClientDataSet;
    dsServico_OS: TDataSource;
    cdsServico_OSID: TIntegerField;
    cdsServico_OSNOME: TStringField;
    sdsProcesso_Grupo_ItensORDEM: TIntegerField;
    cdsProcesso_Grupo_ItensORDEM: TIntegerField;
    sdsProcesso_Grupo_ItensOBS: TMemoField;
    cdsProcesso_Grupo_ItensOBS: TMemoField;
    cdsProcesso_Grupo_ItensclTipo_Processo: TStringField;
    cdsProcessoTIPO: TStringField;
    cdsProcesso_Grupo_ItensclEncerado: TStringField;
    cdsProcessoENCERADO: TStringField;
    cdsProcesso_Grupo_ItensclEntrada_Auto: TStringField;
    cdsProcessoENTRADA_AUTO: TStringField;
    qParametros_Lote: TSQLQuery;
    qParametros_LoteLOTE_TEXTIL: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspProcesso_GrupoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsProcesso_Grupo_ItensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadProcesso_Grupo: TDMCadProcesso_Grupo;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadProcesso_Grupo.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsProcesso_Grupo.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PROCESSO_GRUPO',0);

  cdsProcesso_Grupo.Insert;
  cdsProcesso_GrupoID.AsInteger := vAux;
end;

procedure TDMCadProcesso_Grupo.prc_Excluir;
begin
  if not(cdsProcesso_Grupo.Active) or (cdsProcesso_Grupo.IsEmpty) then
    exit;
  cdsProcesso_Grupo_Itens.First;
  while not cdsProcesso_Grupo_Itens.Eof do
    cdsProcesso_Grupo_Itens.Delete;
  cdsProcesso_Grupo.Delete;
  cdsProcesso_Grupo.ApplyUpdates(0);
end;

procedure TDMCadProcesso_Grupo.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsProcesso_GrupoNOME.AsString) = '' then
    vMsgErro := '*** Nome não informado!';
  if vMsgErro <> '' then
    exit;
  cdsProcesso_Grupo.Post;
  cdsProcesso_Grupo.ApplyUpdates(0);
end;

procedure TDMCadProcesso_Grupo.prc_Localizar(ID: Integer);
begin
  cdsProcesso_Grupo.Close;
  sdsProcesso_Grupo.CommandText := ctCommand;
  if ID <> 0 then
    sdsProcesso_Grupo.CommandText := sdsProcesso_Grupo.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsProcesso_Grupo.Open;
  cdsProcesso_Grupo_Itens.Close;
  cdsProcesso_Grupo_Itens.Open;
  cdsProcesso_Grupo_Itens.Last;
end;

procedure TDMCadProcesso_Grupo.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsProcesso_Grupo.CommandText;
  cdsProcesso.Open;
  cdsServico_OS.Open;
  qParametros_Ser.Open;
  qParametros_Lote.Open;
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

procedure TDMCadProcesso_Grupo.dspProcesso_GrupoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadProcesso_Grupo.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensCalcFields(
  DataSet: TDataSet);
begin
  if cdsProcesso.Locate('ID',cdsProcesso_Grupo_ItensID_PROCESSO.AsInteger,[loCaseInsensitive]) then
  begin
    cdsProcesso_Grupo_ItensclNome_Processo.AsString := cdsProcessoNOME.AsString;
    if cdsProcessoTIPO.AsString = 'S' then
      cdsProcesso_Grupo_ItensclTipo_Processo.AsString := 'Semi Acabado'
    else
    if cdsProcessoTIPO.AsString = 'T' then
      cdsProcesso_Grupo_ItensclTipo_Processo.AsString := 'Talão'
    else
    if cdsProcessoTIPO.AsString = 'P' then
      cdsProcesso_Grupo_ItensclTipo_Processo.AsString := 'Pedido';
    cdsProcesso_Grupo_ItensclEncerado.AsString     := cdsProcessoENCERADO.AsString;
    cdsProcesso_Grupo_ItensclEntrada_Auto.AsString := cdsProcessoENTRADA_AUTO.AsString;
  end
  else
  begin
    cdsProcesso_Grupo_ItensclNome_Processo.AsString := '';
    cdsProcesso_Grupo_ItensclTipo_Processo.AsString := '';
    cdsProcesso_Grupo_ItensclEntrada_Auto.AsString  := '';
  end;
  if (qParametros_SerUSA_PROCESSO_OS.AsString = 'S') and (cdsProcesso_Grupo_ItensID_SERVICO_OS.AsInteger > 0) then
  begin
    qServico_OS.Close;
    qServico_OS.ParamByName('ID').AsInteger := cdsProcesso_Grupo_ItensID_SERVICO_OS.AsInteger;
    qServico_OS.Open;
    cdsProcesso_Grupo_ItensclNome_Servico_OS.AsString := qServico_OSNOME.AsString;
  end
  else
    cdsProcesso_Grupo_ItensclNome_Servico_OS.AsString := '';

end;

end.
