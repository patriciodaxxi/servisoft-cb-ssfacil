unit UDMCadAgenda;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadAgenda = class(TDataModule)
    sdsAgenda: TSQLDataSet;
    dspAgenda: TDataSetProvider;
    cdsAgenda: TClientDataSet;
    dsAgenda: TDataSource;
    sdsAgendaID: TIntegerField;
    sdsAgendaDTAGENDA: TDateField;
    sdsAgendaOBS: TMemoField;
    sdsAgendaPAUTA: TMemoField;
    sdsAgendaDESCISOES: TMemoField;
    sdsAgendaPENDENCIAS: TMemoField;
    sdsAgendaNOME_PESSOA: TStringField;
    sdsAgendaUSUARIO: TStringField;
    sdsAgendaDTCADASTRO: TDateField;
    sdsAgendaHRCADASTRO: TTimeField;
    sdsAgendaCONCLUIDO: TStringField;
    sdsAgendaHRAGENDA: TTimeField;
    sdsAgendaID_FUNCIONARIO: TIntegerField;
    sdsAgendaDTCONCLUIDO: TDateField;
    sdsAgendaTITULO: TStringField;
    sdsAgendaID_FUNCIONARIO_ORI: TIntegerField;
    sdsAgendaID_PESSOA: TIntegerField;
    sdsAgendaNOMEFUNCIONARIO: TStringField;
    cdsAgendaID: TIntegerField;
    cdsAgendaDTAGENDA: TDateField;
    cdsAgendaOBS: TMemoField;
    cdsAgendaPAUTA: TMemoField;
    cdsAgendaDESCISOES: TMemoField;
    cdsAgendaPENDENCIAS: TMemoField;
    cdsAgendaNOME_PESSOA: TStringField;
    cdsAgendaUSUARIO: TStringField;
    cdsAgendaDTCADASTRO: TDateField;
    cdsAgendaHRCADASTRO: TTimeField;
    cdsAgendaCONCLUIDO: TStringField;
    cdsAgendaHRAGENDA: TTimeField;
    cdsAgendaID_FUNCIONARIO: TIntegerField;
    cdsAgendaDTCONCLUIDO: TDateField;
    cdsAgendaTITULO: TStringField;
    cdsAgendaID_FUNCIONARIO_ORI: TIntegerField;
    cdsAgendaID_PESSOA: TIntegerField;
    cdsAgendaNOMEFUNCIONARIO: TStringField;
    qAgenda: TSQLQuery;
    qAgendaDTAGENDA: TDateField;
    qParametros: TSQLQuery;
    qParametrosUSA_AGENDA_POR_FUNC: TStringField;
    qParametrosID: TIntegerField;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    sdsAgendaNOMEFUNCIONARIO_ORI: TStringField;
    cdsAgendaNOMEFUNCIONARIO_ORI: TStringField;
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    sdsFuncionarioCODIGO: TIntegerField;
    sdsFuncionarioNOME: TStringField;
    cdsFuncionarioCODIGO: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsConsultaID: TIntegerField;
    sdsConsultaDTAGENDA: TDateField;
    sdsConsultaOBS: TMemoField;
    sdsConsultaPAUTA: TMemoField;
    sdsConsultaDESCISOES: TMemoField;
    sdsConsultaPENDENCIAS: TMemoField;
    sdsConsultaNOME_PESSOA: TStringField;
    sdsConsultaUSUARIO: TStringField;
    sdsConsultaDTCADASTRO: TDateField;
    sdsConsultaHRCADASTRO: TTimeField;
    sdsConsultaCONCLUIDO: TStringField;
    sdsConsultaHRAGENDA: TTimeField;
    sdsConsultaID_FUNCIONARIO: TIntegerField;
    sdsConsultaDTCONCLUIDO: TDateField;
    sdsConsultaTITULO: TStringField;
    sdsConsultaID_FUNCIONARIO_ORI: TIntegerField;
    sdsConsultaID_PESSOA: TIntegerField;
    sdsConsultaNOMEFUNCIONARIO: TStringField;
    sdsConsultaNOMEFUNCIONARIO_ORI: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaDTAGENDA: TDateField;
    cdsConsultaOBS: TMemoField;
    cdsConsultaPAUTA: TMemoField;
    cdsConsultaDESCISOES: TMemoField;
    cdsConsultaPENDENCIAS: TMemoField;
    cdsConsultaNOME_PESSOA: TStringField;
    cdsConsultaUSUARIO: TStringField;
    cdsConsultaDTCADASTRO: TDateField;
    cdsConsultaHRCADASTRO: TTimeField;
    cdsConsultaCONCLUIDO: TStringField;
    cdsConsultaHRAGENDA: TTimeField;
    cdsConsultaID_FUNCIONARIO: TIntegerField;
    cdsConsultaDTCONCLUIDO: TDateField;
    cdsConsultaTITULO: TStringField;
    cdsConsultaID_FUNCIONARIO_ORI: TIntegerField;
    cdsConsultaID_PESSOA: TIntegerField;
    cdsConsultaNOMEFUNCIONARIO: TStringField;
    cdsConsultaNOMEFUNCIONARIO_ORI: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspAgendaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsAgendaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctAgenda : String;
    ctConsulta : String;

    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadAgenda: TDMCadAgenda;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadAgenda}

procedure TDMCadAgenda.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsAgenda.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('AGENDA',0);

  cdsAgenda.Insert;
  cdsAgendaID.AsInteger          := vAux;
  cdsAgendaDTCADASTRO.AsDateTime := Date;
  cdsAgendaHRCADASTRO.AsDateTime := Now;
end;

procedure TDMCadAgenda.prc_Excluir;
begin
  if not(cdsAgenda.Active) or (cdsAgenda.IsEmpty) then
    exit;
  cdsAgenda.Delete;
  cdsAgenda.ApplyUpdates(0);
end;

procedure TDMCadAgenda.prc_Gravar;
begin
  vMsgErro := '';
  if cdsAgendaDTAGENDA.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data agenda não informada!';
  if trim(cdsAgendaTITULO.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Descrição do agendamento não informada!';
  if (cdsAgendaCONCLUIDO.AsString = 'S') and (cdsAgendaDTCONCLUIDO.AsDateTime < 10) then
    vMsgErro := vMsgErro + #13 + '*** Data concluído não foi informada!';
  if (cdsAgendaCONCLUIDO.AsString = 'N') and (cdsAgendaDTCONCLUIDO.AsDateTime > 10) then
    vMsgErro := vMsgErro + #13 + '*** Data concluído não pode ser informada enquanto não estiver a opção concluída marcada!';
  if trim(vMsgErro) <> '' then
    exit;
  
  if (cdsAgendaID_FUNCIONARIO.AsInteger > 0) then
  begin
    cdsFuncionario.Locate('CODIGO',cdsAgendaID_FUNCIONARIO.AsInteger,[loCaseInsensitive]);
    cdsAgendaNOMEFUNCIONARIO.AsString := cdsFuncionarioNOME.AsString;
  end;
  
  cdsAgenda.Post;
  cdsAgenda.ApplyUpdates(0);
end;

procedure TDMCadAgenda.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsAgenda.Close;
  sdsAgenda.CommandText := ctCommand;
  if ID <> 0 then
    sdsAgenda.CommandText := sdsAgenda.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsAgenda.Open;
end;

procedure TDMCadAgenda.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsAgenda.CommandText;
  ctAgenda   := sdsAgenda.CommandText;
  ctConsulta := sdsConsulta.CommandText;
  qParametros.Close;
  qParametros.Open;
  cdsPessoa.Close;
  cdsPessoa.Open;
  cdsFuncionario.Close;
  cdsFuncionario.Open;
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

procedure TDMCadAgenda.dspAgendaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadAgenda.cdsAgendaNewRecord(DataSet: TDataSet);
begin
  cdsAgendaID_FUNCIONARIO.AsInteger     := 0;
  cdsAgendaID_FUNCIONARIO_ORI.AsInteger := 0;
end;

procedure TDMCadAgenda.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
