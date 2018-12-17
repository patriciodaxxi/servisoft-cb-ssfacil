unit UDMCadSetor;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDmCadSetor = class(TDataModule)
    sdsSetor: TSQLDataSet;
    dspSetor: TDataSetProvider;
    cdsSetor: TClientDataSet;
    dsSetor: TDataSource;
    sdsSetorID: TIntegerField;
    sdsSetorNOME: TStringField;
    cdsSetorID: TIntegerField;
    cdsSetorNOME: TStringField;
    sdsSetorDESPESA_RATEIO: TFloatField;
    cdsSetorDESPESA_RATEIO: TFloatField;
    sdsFuncionario: TSQLDataSet;
    sdsFuncionarioCODIGO: TIntegerField;
    sdsFuncionarioNOME: TStringField;
    sdsFuncionarioDTADMISSAO: TDateField;
    sdsFuncionarioDTDEMISSAO: TDateField;
    sdsFuncionarioVLR_SALARIO: TFloatField;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    cdsFuncionarioCODIGO: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    cdsFuncionarioDTADMISSAO: TDateField;
    cdsFuncionarioDTDEMISSAO: TDateField;
    cdsFuncionarioVLR_SALARIO: TFloatField;
    sdsFolhaEncargo: TSQLDataSet;
    sdsFolhaEncargoID: TIntegerField;
    sdsFolhaEncargoNOME: TStringField;
    sdsFolhaEncargoVALOR_PERC: TFloatField;
    sdsFolhaEncargoSIMPLES: TStringField;
    sdsFolhaEncargoHORISTA: TStringField;
    dspFolhaEncargo: TDataSetProvider;
    cdsFolhaEncargo: TClientDataSet;
    cdsFolhaEncargoID: TIntegerField;
    cdsFolhaEncargoNOME: TStringField;
    cdsFolhaEncargoVALOR_PERC: TFloatField;
    cdsFolhaEncargoSIMPLES: TStringField;
    cdsFolhaEncargoHORISTA: TStringField;
    dsFolhaEncargo: TDataSource;
    sdsFuncionarioHRSEMANAIS: TFloatField;
    cdsFuncionarioHRSEMANAIS: TFloatField;
    sdsSetorGERAR_TALAO: TStringField;
    sdsSetorLIMITE_POR_TALAO: TStringField;
    sdsSetorQTD_LIMITE_POR_TALAO: TIntegerField;
    cdsSetorGERAR_TALAO: TStringField;
    cdsSetorLIMITE_POR_TALAO: TStringField;
    cdsSetorQTD_LIMITE_POR_TALAO: TIntegerField;
    dspFuncionario: TDataSetProvider;
    sdsProcesso: TSQLDataSet;
    dspProcesso: TDataSetProvider;
    cdsProcesso: TClientDataSet;
    dsProcesso: TDataSource;
    sdsProcessoID: TIntegerField;
    cdsProcessoID: TIntegerField;
    sdsProcessoNOME: TStringField;
    cdsProcessoNOME: TStringField;
    sdsProcessoLIMITE_POR_TALAO: TStringField;
    sdsProcessoQTD_LIMITE_POR_TALAO: TIntegerField;
    cdsProcessoLIMITE_POR_TALAO: TStringField;
    cdsProcessoQTD_LIMITE_POR_TALAO: TIntegerField;
    sdsProcessoAGRUPAR_PEDIDOS: TStringField;
    cdsProcessoAGRUPAR_PEDIDOS: TStringField;
    sdsProcessoTIPO: TStringField;
    cdsProcessoTIPO: TStringField;
    sdsProcessoDESCRICAO_TIPO: TStringField;
    cdsProcessoDESCRICAO_TIPO: TStringField;
    qParametros_Ser: TSQLQuery;
    qParametros_SerUSA_PROCESSO_OS: TStringField;
    sdsProcessoCALCULA_AREA: TStringField;
    cdsProcessoCALCULA_AREA: TStringField;
    sdsProcessoQTD_DIAS_PRAZO: TIntegerField;
    cdsProcessoQTD_DIAS_PRAZO: TIntegerField;
    sdsProcessoTERCEIRO: TStringField;
    cdsProcessoTERCEIRO: TStringField;
    sdsProcessoENCERADO: TStringField;
    cdsProcessoENCERADO: TStringField;
    sdsSetor_Proc: TSQLDataSet;
    cdsSetor_Proc: TClientDataSet;
    dsSetor_Proc: TDataSource;
    dsSetor_Mestre: TDataSource;
    sdsSetor_ProcID: TIntegerField;
    sdsSetor_ProcITEM: TIntegerField;
    sdsSetor_ProcORDEM: TIntegerField;
    sdsSetor_ProcID_PROCESSO: TIntegerField;
    sdsSetor_ProcVLR_HORA: TFloatField;
    cdsSetorsdsSetor_Proc: TDataSetField;
    cdsSetor_ProcID: TIntegerField;
    cdsSetor_ProcITEM: TIntegerField;
    cdsSetor_ProcORDEM: TIntegerField;
    cdsSetor_ProcID_PROCESSO: TIntegerField;
    cdsSetor_ProcVLR_HORA: TFloatField;
    qParametros_SerUSA_PROCESSO_SETOR: TStringField;
    sdsSetorMOSTRAR_ORC: TStringField;
    cdsSetorMOSTRAR_ORC: TStringField;
    cdsSetor_ProcclNome_Processo: TStringField;
    qProcesso: TSQLQuery;
    qProcessoID: TIntegerField;
    qProcessoNOME: TStringField;
    qParametros: TSQLQuery;
    qParametrosUSA_LOTE: TStringField;
    qParametros_Lote: TSQLQuery;
    qParametros_LoteLOTE_TEXTIL: TStringField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaDESPESA_RATEIO: TFloatField;
    cdsConsultaGERAR_TALAO: TStringField;
    cdsConsultaLIMITE_POR_TALAO: TStringField;
    cdsConsultaQTD_LIMITE_POR_TALAO: TIntegerField;
    cdsConsultaMOSTRAR_ORC: TStringField;
    sdsSetorORDEM_ORC: TIntegerField;
    cdsSetorORDEM_ORC: TIntegerField;
    cdsConsultaORDEM_ORC: TIntegerField;
    sdsProcessoENTRADA_AUTO: TStringField;
    cdsProcessoENTRADA_AUTO: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralEMPRESA_CALCADOS: TStringField;
    sdsSetorENTRADA_AUT: TStringField;
    cdsSetorENTRADA_AUT: TStringField;
    cdsConsultaENTRADA_AUT: TStringField;
    sdsSetorIMP_MAPA: TStringField;
    cdsSetorIMP_MAPA: TStringField;
    sdsSetorENCERRA_PROD: TStringField;
    cdsSetorENCERRA_PROD: TStringField;
    sdsSetorLER_CBARRA1: TStringField;
    cdsSetorLER_CBARRA1: TStringField;
    qSetor: TSQLQuery;
    qSetorID: TIntegerField;
    qSetorNOME: TStringField;
    qSetorENCERRA_PROD: TStringField;
    sdsProcessoIMP_TALAO: TStringField;
    cdsProcessoIMP_TALAO: TStringField;
    sdsProcessoORDEM_MAPA: TIntegerField;
    cdsProcessoORDEM_MAPA: TIntegerField;
    sdsProcessoIMP_CLIENTE: TStringField;
    cdsProcessoIMP_CLIENTE: TStringField;
    qParametros_LoteTIPO_PROCESSO: TStringField;
    sdsProcessoRETRABALHO: TStringField;
    cdsProcessoRETRABALHO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspSetorUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure dspProcessoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsProcessoNewRecord(DataSet: TDataSet);
    procedure cdsSetor_ProcCalcFields(DataSet: TDataSet);
    procedure cdsSetorNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgSetor: String;
    ctCommand, ctProcesso: String;
    ctConsulta : String;
    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Localizar_Processo(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    procedure prc_Inserir_Setor_Proc;

    procedure prc_Inserir_Processo;
    procedure prc_Gravar_Processo;
    procedure prc_Excluir_Processo;
    procedure prc_Verifica_Setor(ID:INTEGER);

  end;

var
  DmCadSetor: TDmCadSetor;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDmCadSetor.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsSetor.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('SETOR',0);

  cdsSetor.Insert;
  cdsSetorID.AsInteger := vAux;
end;

procedure TDmCadSetor.prc_Excluir;
begin
  if not(cdsSetor.Active) or (cdsSetor.IsEmpty) then
    exit;
  cdsSetor_Proc.First;
  while not cdsSetor_Proc.Eof do
    cdsSetor_Proc.Delete;
  cdsSetor.Delete;
  cdsSetor.ApplyUpdates(0);
end;

procedure TDmCadSetor.prc_Gravar;
begin
  vMsgSetor := '';
  if trim(cdsSetorNOME.AsString) = '' then
    vMsgSetor := 'Nome não informado!';
  if cdsSetorENCERRA_PROD.AsString = 'S' then
  begin
    prc_Verifica_Setor(cdsSetorID.AsInteger);
    if not qSetor.IsEmpty then
      vMsgSetor := 'A Opção Encerrar Produção já está no registro ' + IntToStr(qSetorID.AsInteger) + ' - ' + qSetorNOME.AsString + '!';
  end;
  if vMsgSetor <> '' then
    exit;
  cdsSetor.Post;
  cdsSetor.ApplyUpdates(0);
end;

procedure TDmCadSetor.prc_Localizar(ID: Integer);
begin
  cdsSetor.Close;
  sdsSetor.CommandText := ctCommand;
  if ID <> 0 then
    sdsSetor.CommandText := sdsSetor.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsSetor.Open;
end;

procedure TDmCadSetor.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsSetor.CommandText;
  ctProcesso := sdsProcesso.CommandText;
  ctConsulta := sdsConsulta.CommandText;
  qParametros_Ser.Open;
  qParametros.Open;
  qParametros_Lote.Open;
  qParametros_Geral.Open;
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

procedure TDmCadSetor.dspSetorUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDmCadSetor.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDmCadSetor.dspProcessoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDmCadSetor.prc_Excluir_Processo;
begin
  if not(cdsProcesso.Active) or (cdsProcesso.IsEmpty) then
    exit;
  cdsProcesso.Delete;
  cdsProcesso.ApplyUpdates(0);
end;

procedure TDmCadSetor.prc_Gravar_Processo;
begin
  vMsgSetor := '';
  if trim(cdsProcessoNOME.AsString) = '' then
    vMsgSetor := 'Nome não informado!';
  if vMsgSetor <> '' then
    exit;
    
  cdsProcesso.Post;
  cdsProcesso.ApplyUpdates(0);
end;

procedure TDmCadSetor.prc_Inserir_Processo;
var
  vAux: Integer;
begin
  if not cdsProcesso.Active then
    prc_Localizar_Processo(-1);
  vAux := dmDatabase.ProximaSequencia('PROCESSO',0);

  cdsProcesso.Insert;
  cdsProcessoID.AsInteger := vAux;
  if qParametros_SerUSA_PROCESSO_OS.AsString = 'S' then
    cdsProcessoTIPO.AsString := 'O'; //Identifica que é de OS de Serviço
end;

procedure TDmCadSetor.prc_Localizar_Processo(ID: Integer);
begin
  cdsProcesso.Close;
  sdsProcesso.CommandText := ctProcesso;
  if ID <> 0 then
    sdsProcesso.CommandText := sdsProcesso.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsProcesso.Open;
end;

procedure TDmCadSetor.cdsProcessoNewRecord(DataSet: TDataSet);
begin
  cdsProcessoAGRUPAR_PEDIDOS.AsString  := 'N';
  cdsProcessoLIMITE_POR_TALAO.AsString := 'N';
  cdsProcessoCALCULA_AREA.AsString     := 'N';
  cdsProcessoTERCEIRO.AsString         := 'N';
  cdsProcessoENTRADA_AUTO.AsString     := 'N';
  cdsProcessoRETRABALHO.AsString       := 'N';
end;

procedure TDmCadSetor.cdsSetor_ProcCalcFields(DataSet: TDataSet);
begin
  cdsSetor_ProcclNome_Processo.AsString := '';
  if cdsSetor_ProcID_PROCESSO.AsInteger > 0 then
  begin
    qProcesso.Close;
    qProcesso.ParamByName('ID').AsInteger := cdsSetor_ProcID_PROCESSO.AsInteger;
    qProcesso.Open;
    cdsSetor_ProcclNome_Processo.AsString := qProcessoNOME.AsString;
  end;
end;

procedure TDmCadSetor.cdsSetorNewRecord(DataSet: TDataSet);
begin
  cdsSetorGERAR_TALAO.AsString           := 'N';
  cdsSetorMOSTRAR_ORC.AsString           := 'N';
  cdsSetorLIMITE_POR_TALAO.AsString      := 'N';
  cdsSetorDESPESA_RATEIO.AsFloat         := 0;
  cdsSetorQTD_LIMITE_POR_TALAO.AsInteger := 0;
  cdsSetorENTRADA_AUT.AsString           := 'N';
  cdsSetorIMP_MAPA.AsString              := 'N';
end;

procedure TDmCadSetor.prc_Inserir_Setor_Proc;
var
  vItemAux : Integer;
begin
  cdsSetor_Proc.Last;
  vItemAux := cdsSetor_ProcITEM.AsInteger;

  cdsSetor_Proc.Insert;
  cdsSetor_ProcID.AsInteger     := cdsSetorID.AsInteger;
  cdsSetor_ProcITEM.AsInteger   := vItemAux + 1;
  cdsSetor_ProcVLR_HORA.AsFloat := 0;
end;

procedure TDmCadSetor.prc_Verifica_Setor(ID:INTEGER);
begin
  qSetor.Close;
  qSetor.ParamByName('ID').AsInteger := ID;
  qSetor.Open;
end;

end.
