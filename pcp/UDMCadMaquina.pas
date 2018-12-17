unit UDMCadMaquina;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadMaquina = class(TDataModule)
    sdsMaquina: TSQLDataSet;
    dspMaquina: TDataSetProvider;
    cdsMaquina: TClientDataSet;
    dsMaquina: TDataSource;
    sdsMaquinaID: TIntegerField;
    sdsMaquinaNOME: TStringField;
    cdsMaquinaID: TIntegerField;
    cdsMaquinaNOME: TStringField;
    dsMaquina_Mestre: TDataSource;
    sdsMaquina_Matriz: TSQLDataSet;
    cdsMaquina_Matriz: TClientDataSet;
    sdsMaquina_MatrizID: TIntegerField;
    sdsMaquina_MatrizMATRIZ: TStringField;
    cdsMaquinasdsMaquina_Matriz: TDataSetField;
    cdsMaquina_MatrizID: TIntegerField;
    cdsMaquina_MatrizMATRIZ: TStringField;
    dsMaquina_Matriz: TDataSource;
    sdsMaquina_MatrizITEM: TIntegerField;
    sdsMaquina_MatrizID_TIPO_MATRIZ: TIntegerField;
    cdsMaquina_MatrizITEM: TIntegerField;
    cdsMaquina_MatrizID_TIPO_MATRIZ: TIntegerField;
    sdsTipo_Matriz: TSQLDataSet;
    dspTipo_Matriz: TDataSetProvider;
    cdsTipo_Matriz: TClientDataSet;
    dsTipo_Matriz: TDataSource;
    cdsTipo_MatrizID: TIntegerField;
    cdsTipo_MatrizNOME: TStringField;
    sdsMaquinaVALORHORACALC: TFloatField;
    cdsMaquinaVALORHORACALC: TFloatField;
    qParametros: TSQLQuery;
    qParametrosEMPRESA_INJETADO: TStringField;
    sdsTipo_Maquina: TSQLDataSet;
    dspTipo_Maquina: TDataSetProvider;
    cdsTipo_Maquina: TClientDataSet;
    dsTipo_Maquina: TDataSource;
    cdsTipo_MaquinaID: TIntegerField;
    cdsTipo_MaquinaNOME: TStringField;
    sdsMaquinaID_TIPO_MAQUINA: TIntegerField;
    cdsMaquinaID_TIPO_MAQUINA: TIntegerField;
    sdsMaquinaESPESSURA: TFloatField;
    sdsMaquinaQTD_BOCA: TIntegerField;
    cdsMaquinaESPESSURA: TFloatField;
    cdsMaquinaQTD_BOCA: TIntegerField;
    sdsMaquinaQTD_FUSO: TIntegerField;
    sdsMaquinaBORRACHA: TStringField;
    sdsMaquinaFIO_AUXILIAR: TStringField;
    cdsMaquinaQTD_FUSO: TIntegerField;
    cdsMaquinaBORRACHA: TStringField;
    cdsMaquinaFIO_AUXILIAR: TStringField;
    sdsMaquinaQTD_QUADRO: TIntegerField;
    cdsMaquinaQTD_QUADRO: TIntegerField;
    cdsTipo_MaquinaTIPO: TStringField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaID_TIPO_MAQUINA: TIntegerField;
    cdsConsultaESPESSURA: TFloatField;
    cdsConsultaQTD_BOCA: TIntegerField;
    cdsConsultaQTD_FUSO: TIntegerField;
    cdsConsultaBORRACHA: TStringField;
    cdsConsultaFIO_AUXILIAR: TStringField;
    cdsConsultaQTD_QUADRO: TIntegerField;
    cdsConsultaNOME_TIPO: TStringField;
    sdsMaquinaMAX_BATIDA: TFloatField;
    cdsMaquinaMAX_BATIDA: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspMaquinaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsMaquinaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctConsulta : String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    procedure prc_Inserir_Matriz;

  end;

var
  DMCadMaquina: TDMCadMaquina;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadMaquina }

procedure TDMCadMaquina.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsMaquina.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('MAQUINA',0);

  cdsMaquina.Insert;
  cdsMaquinaID.AsInteger := vAux;
end;

procedure TDMCadMaquina.prc_Excluir;
begin
  if not(cdsMaquina.Active) or (cdsMaquina.IsEmpty) then
    exit;
  cdsMaquina_Matriz.First;
  while not cdsMaquina_Matriz.Eof do
    cdsMaquina_Matriz.Delete;
  cdsMaquina.Delete;
  cdsMaquina.ApplyUpdates(0);
end;

procedure TDMCadMaquina.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsMaquinaNOME.AsString) = '' then
    vMsgErro := '*** Nome não informado!';
  if vMsgErro <> '' then
    exit;
    
  cdsMaquina.Post;
  cdsMaquina.ApplyUpdates(0);
end;

procedure TDMCadMaquina.prc_Localizar(ID: Integer);
begin
  cdsMaquina.Close;
  sdsMaquina.CommandText := ctCommand;
  if ID <> 0 then
    sdsMaquina.CommandText := sdsMaquina.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsMaquina.Open;
end;

procedure TDMCadMaquina.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsMaquina.CommandText;
  ctConsulta := sdsConsulta.CommandText;
  cdsTipo_Matriz.Open;
  cdsTipo_Maquina.Open;
  qParametros.Open;
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

procedure TDMCadMaquina.dspMaquinaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadMaquina.prc_Inserir_Matriz;
var
  vItemAux: Integer;
begin
  cdsMaquina_Matriz.Last;
  vItemAux := cdsMaquina_MatrizITEM.AsInteger;

  cdsMaquina_Matriz.Insert;
  cdsMaquina_MatrizID.AsInteger   := cdsMaquinaID.AsInteger;
  cdsMaquina_MatrizITEM.AsInteger := vItemAux + 1;
end;

procedure TDMCadMaquina.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadMaquina.cdsMaquinaNewRecord(DataSet: TDataSet);
begin
  cdsMaquinaVALORHORACALC.AsFloat := 0;
end;

end.
