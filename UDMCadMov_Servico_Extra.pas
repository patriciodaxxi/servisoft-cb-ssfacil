unit UDMCadMov_Servico_Extra;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadMov_Servico_Extra = class(TDataModule)
    sdsMov_Servico_Extra: TSQLDataSet;
    dspMov_Servico_Extra: TDataSetProvider;
    cdsMov_Servico_Extra: TClientDataSet;
    dsMov_Servico_Extra: TDataSource;
    sdsMov_Consulta: TSQLDataSet;
    dspMov_Consulta: TDataSetProvider;
    cdsMov_Consulta: TClientDataSet;
    dsMov_Consulta: TDataSource;
    sdsMov_Servico_ExtraID: TIntegerField;
    sdsMov_Servico_ExtraID_SERVICO: TIntegerField;
    sdsMov_Servico_ExtraID_SERVICO_INT: TIntegerField;
    sdsMov_Servico_ExtraCOMPLEMENTO: TStringField;
    sdsMov_Servico_ExtraDTEMISSAO: TDateField;
    sdsMov_Servico_ExtraQTD: TFloatField;
    sdsMov_Servico_ExtraVLR_UNITARIO: TFloatField;
    sdsMov_Servico_ExtraVLR_TOTAL: TFloatField;
    sdsMov_Servico_ExtraID_CLIENTE: TIntegerField;
    sdsMov_Servico_ExtraFILIAL: TIntegerField;
    sdsMov_Servico_ExtraID_NOTA: TIntegerField;
    sdsMov_Servico_ExtraID_RECIBO: TIntegerField;
    sdsMov_Servico_ExtraENCERRADO: TStringField;
    cdsMov_Servico_ExtraID: TIntegerField;
    cdsMov_Servico_ExtraID_SERVICO: TIntegerField;
    cdsMov_Servico_ExtraID_SERVICO_INT: TIntegerField;
    cdsMov_Servico_ExtraCOMPLEMENTO: TStringField;
    cdsMov_Servico_ExtraDTEMISSAO: TDateField;
    cdsMov_Servico_ExtraQTD: TFloatField;
    cdsMov_Servico_ExtraVLR_UNITARIO: TFloatField;
    cdsMov_Servico_ExtraVLR_TOTAL: TFloatField;
    cdsMov_Servico_ExtraID_CLIENTE: TIntegerField;
    cdsMov_Servico_ExtraFILIAL: TIntegerField;
    cdsMov_Servico_ExtraID_NOTA: TIntegerField;
    cdsMov_Servico_ExtraID_RECIBO: TIntegerField;
    cdsMov_Servico_ExtraENCERRADO: TStringField;
    cdsMov_ConsultaID: TIntegerField;
    cdsMov_ConsultaID_SERVICO: TIntegerField;
    cdsMov_ConsultaID_SERVICO_INT: TIntegerField;
    cdsMov_ConsultaCOMPLEMENTO: TStringField;
    cdsMov_ConsultaDTEMISSAO: TDateField;
    cdsMov_ConsultaQTD: TFloatField;
    cdsMov_ConsultaVLR_UNITARIO: TFloatField;
    cdsMov_ConsultaVLR_TOTAL: TFloatField;
    cdsMov_ConsultaID_CLIENTE: TIntegerField;
    cdsMov_ConsultaFILIAL: TIntegerField;
    cdsMov_ConsultaID_NOTA: TIntegerField;
    cdsMov_ConsultaID_RECIBO: TIntegerField;
    cdsMov_ConsultaENCERRADO: TStringField;
    cdsMov_ConsultaNOME_SERVICO: TStringField;
    cdsMov_ConsultaNOME_SERVICO_INT: TStringField;
    cdsMov_ConsultaNOME_CLIENTE: TStringField;
    cdsMov_ConsultaNOME_FILIAL: TStringField;
    cdsMov_ConsultaFANTASIA_FILIAL: TStringField;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteCNPJ_CPF: TStringField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    sdsServico: TSQLDataSet;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    cdsServicoID: TIntegerField;
    cdsServicoCODIGO: TStringField;
    cdsServicoNOME: TStringField;
    cdsServicoTIPO_AS: TStringField;
    cdsServicoNOME_SERVICO: TStringField;
    cdsServicoCNAE: TStringField;
    cdsServicoPERC_ISS: TFloatField;
    cdsServicoID_ATIVIDADE_CID: TIntegerField;
    cdsServicoCODIGO_NBS: TStringField;
    dsServico: TDataSource;
    sdsServico_Int: TSQLDataSet;
    dspServico_Int: TDataSetProvider;
    cdsServico_Int: TClientDataSet;
    cdsServico_IntID: TIntegerField;
    cdsServico_IntNOME: TStringField;
    cdsServico_IntVLR_UNITARIO: TFloatField;
    cdsServico_IntCODIGO_NBS: TStringField;
    dsServico_Int: TDataSource;
    cdsMov_ConsultaSERVICO_COMPLEMENTO: TStringField;
    cdsFilialCOD_SERVICO_SINT: TStringField;
    cdsFilialID_SERVICO_SINT: TIntegerField;
    cdsFilialID_SERVICO_PAD: TIntegerField;
    cdsServico_IntID_SERVICO_PADRAO: TIntegerField;
    sdsMov_Servico_ExtraID_CONTRATO: TIntegerField;
    cdsMov_Servico_ExtraID_CONTRATO: TIntegerField;
    cdsMov_ConsultaID_CONTRATO: TIntegerField;
    cdsMov_ConsultaNUM_CONTRATO: TIntegerField;
    qParametros: TSQLQuery;
    sdsContrato: TSQLDataSet;
    dspContrato: TDataSetProvider;
    cdsContrato: TClientDataSet;
    dsContrato: TDataSource;
    cdsContratoID: TIntegerField;
    cdsContratoNUM_CONTRATO: TIntegerField;
    cdsContratoID_CLIENTE: TIntegerField;
    cdsContratoVLR_TOTAL: TFloatField;
    cdsContratoDTEMISSAO: TDateField;
    cdsContratoNOME_CLIENTE: TStringField;
    cdsContratoANO_CONTRATO: TIntegerField;
    cdsContratoNUM_CONTRATO2: TStringField;
    qParametrosUSA_ANO_CONTRATO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsMov_Servico_ExtraNewRecord(DataSet: TDataSet);
    procedure dspMov_Servico_ExtraUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsMov_Servico_ExtraBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctConsulta : String;
    ctServico : String;
    ctContrato : String;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    procedure prc_Abrir_Servico;
    procedure prc_Abrir_Contrato(ID_Cliente : Integer);
    
  end;

var
  DMCadMov_Servico_Extra: TDMCadMov_Servico_Extra;

implementation

uses DmdDatabase, LogProvider, Math, uUtilPadrao;

{$R *.dfm}

{ TDMCadMov_Servico_Extra}

procedure TDMCadMov_Servico_Extra.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsMov_Servico_Extra.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('MOV_SERVICO_EXTRA',0);

  cdsMov_Servico_Extra.Insert;
  cdsMov_Servico_ExtraID.AsInteger         := vAux;
  cdsMov_Servico_ExtraFILIAL.AsInteger     := vFilial;
  cdsMov_Servico_ExtraDTEMISSAO.AsDateTime := Date;
  cdsMov_Servico_ExtraQTD.AsFloat          := 1;
end;

procedure TDMCadMov_Servico_Extra.prc_Excluir;
begin
  if not(cdsMov_Servico_Extra.Active) or (cdsMov_Servico_Extra.IsEmpty) then
    exit;
  try
    cdsMov_Servico_Extra.Delete;
    cdsMov_Servico_Extra.ApplyUpdates(0);
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao excluir Movimento, ' + cdsMov_ConsultaID.AsString + '   '+ E.Message);
    end;
  end;

end;

procedure TDMCadMov_Servico_Extra.prc_Gravar;
begin
  vMsgErro := '';
  if cdsMov_Servico_ExtraID_SERVICO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Serviço padrão não informado!';
  if cdsMov_Servico_ExtraID_SERVICO_INT.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Serviço interno não informado!';
  if cdsMov_Servico_ExtraDTEMISSAO.AsDateTime <= 10 then
    vMsgErro := vMsgErro + #13 + '*** Data do movimento não informada!';
  if cdsMov_Servico_ExtraID_CLIENTE.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Cliente não informado!';
  if cdsMov_Servico_ExtraFILIAL.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Filial não informada!';
  if StrToFloat(FormatFloat('0.0000',cdsMov_Servico_ExtraQTD.AsFloat)) <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Quantidade não informada!';
  if StrToFloat(FormatFloat('0.0000',cdsMov_Servico_ExtraVLR_UNITARIO.AsFloat)) <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Valor unitário não informado!';
  if trim(vMsgErro) <> '' then
    exit;
  cdsMov_Servico_Extra.Post;
  cdsMov_Servico_Extra.ApplyUpdates(0);
end;

procedure TDMCadMov_Servico_Extra.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsMov_Servico_Extra.Close;
  sdsMov_Servico_Extra.CommandText := ctCommand;
  if ID <> 0 then
    sdsMov_Servico_Extra.CommandText := sdsMov_Servico_Extra.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsMov_Servico_Extra.Open;
end;

procedure TDMCadMov_Servico_Extra.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsMov_Servico_Extra.CommandText;
  ctConsulta := sdsMov_Consulta.CommandText;
  ctServico  := sdsServico.CommandText;
  ctContrato := sdsContrato.CommandText;
  cdsCliente.Open;
  cdsFilial.Open;
  cdsServico_Int.Open;
  qParametros.Open;
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

procedure TDMCadMov_Servico_Extra.cdsMov_Servico_ExtraNewRecord(DataSet: TDataSet);
begin
  cdsMov_Servico_ExtraENCERRADO.AsString := 'N';
end;

procedure TDMCadMov_Servico_Extra.dspMov_Servico_ExtraUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadMov_Servico_Extra.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadMov_Servico_Extra.prc_Abrir_Servico;
begin
  cdsServico.Close;
  sdsServico.CommandText := ctServico;
  if cdsFilialID_SERVICO_SINT.AsInteger > 0 then
    sdsServico.CommandText := sdsServico.CommandText + ' WHERE CODIGO LIKE ' + QuotedStr(cdsFilialCOD_SERVICO_SINT.AsString+'.%');
  cdsServico.Open;
end;

procedure TDMCadMov_Servico_Extra.prc_Abrir_Contrato(ID_Cliente: Integer);
begin
  cdsContrato.Close;
  sdsContrato.CommandText := ctContrato;
  if ID_Cliente > 0 then
    sdsContrato.CommandText := sdsContrato.CommandText + ' AND ID_CLIENTE = ' + IntToStr(ID_Cliente);
  cdsContrato.Open;
end;

procedure TDMCadMov_Servico_Extra.cdsMov_Servico_ExtraBeforePost(
  DataSet: TDataSet);
begin
  if cdsMov_Servico_ExtraCOMPLEMENTO.IsNull then
    cdsMov_Servico_ExtraCOMPLEMENTO.AsString := EmptyStr;
end;

end.
