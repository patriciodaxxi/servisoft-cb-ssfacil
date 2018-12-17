unit UDMCadFuncionario;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, DBXpress;

type
  TDMCadFuncionario = class(TDataModule)
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    cdsUFUF: TStringField;
    cdsUFPERC_ICMS: TFloatField;
    cdsUFIDPAIS: TIntegerField;
    cdsUFCODUF: TStringField;
    cdsUFPERC_ICMS_INTERNO: TFloatField;
    dsUF: TDataSource;
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosENDXMLNFE: TStringField;
    qParametrosENDPDFNFE: TStringField;
    qParametrosSERIENORMAL: TStringField;
    qParametrosSERIECONTINGENCIA: TStringField;
    qParametrosLOCALSERVIDORNFE: TStringField;
    qParametrosEMAILRESPONSAVELSISTEMA: TStringField;
    qParametrosNFEPRODUCAO: TStringField;
    qParametrosANEXARDANFE: TStringField;
    qParametrosVERSAONFE: TStringField;
    qParametrosVERSAOEMISSAONFE: TStringField;
    qParametrosTIPOLOGONFE: TStringField;
    qParametrosAPLICARDESCONTONOICMS: TStringField;
    qParametrosAPLICARDESCONTONOIPI: TStringField;
    qParametrosSOMARNOPROD_FRETE: TStringField;
    qParametrosSOMARNOPROD_OUTRASDESP: TStringField;
    qParametrosSOMARNOPROD_SEGURO: TStringField;
    qParametrosAJUSTELOGONFEAUTOMATICO: TStringField;
    qParametrosINFNUMNOTAMANUAL: TStringField;
    qParametrosOPCAO_DTENTREGAPEDIDO: TStringField;
    qParametrosOBS_SIMPLES: TStringField;
    qParametrosIMP_OBSSIMPLES: TStringField;
    qParametrosIMP_REFERENCIANANOTA: TStringField;
    qParametrosENVIARNOTABENEF_NANFE: TStringField;
    qParametrosIMP_CODPRODCLI_DANFE: TStringField;
    qFilial: TSQLQuery;
    qFilialID: TIntegerField;
    qFilialCNPJ_CPF: TStringField;
    sdsFuncionarioCODIGO: TIntegerField;
    sdsFuncionarioNOME: TStringField;
    sdsFuncionarioENDERECO: TStringField;
    sdsFuncionarioID_CIDADE: TIntegerField;
    sdsFuncionarioBAIRRO: TStringField;
    sdsFuncionarioCEP: TStringField;
    sdsFuncionarioDDD: TIntegerField;
    sdsFuncionarioFONE: TStringField;
    sdsFuncionarioDTADMISSAO: TDateField;
    sdsFuncionarioCPF: TStringField;
    sdsFuncionarioRG: TStringField;
    sdsFuncionarioCTPS: TIntegerField;
    sdsFuncionarioSERIE: TStringField;
    sdsFuncionarioPIS: TStringField;
    sdsFuncionarioDTNASCIMENTO: TDateField;
    sdsFuncionarioHRSEMANAIS: TFloatField;
    sdsFuncionarioTIPO_PGTO: TStringField;
    sdsFuncionarioVLR_SALARIO: TFloatField;
    sdsFuncionarioDTDEMISSAO: TDateField;
    sdsFuncionarioHORARIO1: TStringField;
    sdsFuncionarioHORARIO2: TStringField;
    sdsFuncionarioPERC_INSALUBRIDADE: TFloatField;
    sdsFuncionarioPERC_PERICULOSIDADE: TFloatField;
    sdsFuncionarioUF: TStringField;
    sdsFuncionarioOBS: TMemoField;
    sdsFuncionarioFUNCAO: TStringField;
    sdsFuncionarioNOME_CONJUGE: TStringField;
    sdsFuncionarioINATIVO: TStringField;
    cdsFuncionarioCODIGO: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    cdsFuncionarioENDERECO: TStringField;
    cdsFuncionarioID_CIDADE: TIntegerField;
    cdsFuncionarioBAIRRO: TStringField;
    cdsFuncionarioCEP: TStringField;
    cdsFuncionarioDDD: TIntegerField;
    cdsFuncionarioFONE: TStringField;
    cdsFuncionarioDTADMISSAO: TDateField;
    cdsFuncionarioCPF: TStringField;
    cdsFuncionarioRG: TStringField;
    cdsFuncionarioCTPS: TIntegerField;
    cdsFuncionarioSERIE: TStringField;
    cdsFuncionarioPIS: TStringField;
    cdsFuncionarioDTNASCIMENTO: TDateField;
    cdsFuncionarioHRSEMANAIS: TFloatField;
    cdsFuncionarioTIPO_PGTO: TStringField;
    cdsFuncionarioVLR_SALARIO: TFloatField;
    cdsFuncionarioDTDEMISSAO: TDateField;
    cdsFuncionarioHORARIO1: TStringField;
    cdsFuncionarioHORARIO2: TStringField;
    cdsFuncionarioPERC_INSALUBRIDADE: TFloatField;
    cdsFuncionarioPERC_PERICULOSIDADE: TFloatField;
    cdsFuncionarioUF: TStringField;
    cdsFuncionarioOBS: TMemoField;
    cdsFuncionarioESTADO_CIVIL: TStringField;
    cdsFuncionarioESCOLARIDADE: TStringField;
    cdsFuncionarioFUNCAO: TStringField;
    cdsFuncionarioNOME_CONJUGE: TStringField;
    cdsFuncionarioINATIVO: TStringField;
    sdsFuncionarioNUM_MATRICULA: TStringField;
    cdsFuncionarioNUM_MATRICULA: TStringField;
    sdsFuncionarioNUM_END: TStringField;
    cdsFuncionarioNUM_END: TStringField;
    sdsFuncionarioNUM_CARTEIRA_HAB: TStringField;
    sdsFuncionarioCATEGORIA_HAB: TStringField;
    cdsFuncionarioNUM_CARTEIRA_HAB: TStringField;
    cdsFuncionarioCATEGORIA_HAB: TStringField;
    sdsFuncionarioDTVENCIMENTO_HAB: TDateField;
    cdsFuncionarioDTVENCIMENTO_HAB: TDateField;
    sdsFuncionarioESTADO_CIVIL: TStringField;
    sdsFuncionarioESCOLARIDADE: TStringField;
    sdsFuncionarioSETOR_ID: TIntegerField;
    cdsFuncionarioSETOR_ID: TIntegerField;
    sdsSetor: TSQLDataSet;
    dspSetor: TDataSetProvider;
    cdsSetor: TClientDataSet;
    cdsSetorID: TIntegerField;
    cdsSetorNOME: TStringField;
    dsSetor: TDataSource;
    sdsFuncionarioFILIAL: TIntegerField;
    cdsFuncionarioFILIAL: TIntegerField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    sdsFuncionarioCONSELHO: TStringField;
    sdsFuncionarioNUM_CONSELHO: TStringField;
    cdsFuncionarioCONSELHO: TStringField;
    cdsFuncionarioNUM_CONSELHO: TStringField;
    dsFuncionario_Mestre: TDataSource;
    sdsFuncionario_Reajuste: TSQLDataSet;
    cdsFuncionario_Reajuste: TClientDataSet;
    sdsFuncionario_ReajusteCODIGO: TIntegerField;
    sdsFuncionario_ReajusteITEM: TIntegerField;
    sdsFuncionario_ReajusteVALOR: TFloatField;
    sdsFuncionario_ReajusteMOTIVO: TStringField;
    sdsFuncionario_ReajusteDATA: TDateField;
    cdsFuncionario_ReajusteCODIGO: TIntegerField;
    cdsFuncionario_ReajusteITEM: TIntegerField;
    cdsFuncionario_ReajusteVALOR: TFloatField;
    cdsFuncionario_ReajusteMOTIVO: TStringField;
    cdsFuncionario_ReajusteDATA: TDateField;
    dsFuncionario_Reajuste: TDataSource;
    sdsFuncionario_Consulta: TSQLDataSet;
    dspFuncionario_Consulta: TDataSetProvider;
    cdsFuncionario_Consulta: TClientDataSet;
    dsFuncionario_Consulta: TDataSource;
    cdsFuncionario_ConsultaCODIGO: TIntegerField;
    cdsFuncionario_ConsultaNUM_MATRICULA: TStringField;
    cdsFuncionario_ConsultaNOME: TStringField;
    cdsFuncionario_ConsultaDDD: TIntegerField;
    cdsFuncionario_ConsultaFONE: TStringField;
    cdsFuncionario_ConsultaFILIAL: TIntegerField;
    cdsFuncionario_ConsultaCPF: TStringField;
    cdsFuncionario_ConsultaNOME_FILIAL: TStringField;
    cdsFuncionario_ConsultaNOME_INTERNO: TStringField;
    cdsFuncionariosdsFuncionario_Reajuste: TDataSetField;
    cdsFuncionario_ConsultaINATIVO: TStringField;
    sdsFuncionarioEMAIL: TStringField;
    cdsFuncionarioEMAIL: TStringField;
    sdsFuncionarioBAIXA_OS_MANUAL: TStringField;
    cdsFuncionarioBAIXA_OS_MANUAL: TStringField;
    sdsFuncionarioNUM_CARTAO: TIntegerField;
    cdsFuncionarioNUM_CARTAO: TIntegerField;
    sdsFuncionario_Proc: TSQLDataSet;
    cdsFuncionario_Proc: TClientDataSet;
    dsFuncionario_Proc: TDataSource;
    sdsFuncionario_ProcCODIGO: TIntegerField;
    sdsFuncionario_ProcID_PROCESSO: TIntegerField;
    cdsFuncionariosdsFuncionario_Proc: TDataSetField;
    sdsFuncionario_ProcNOME: TStringField;
    cdsFuncionario_ProcID_PROCESSO: TIntegerField;
    cdsFuncionario_ProcCODIGO: TIntegerField;
    cdsFuncionario_ProcNOME: TStringField;
    qProcesso: TSQLQuery;
    qProcessoID: TIntegerField;
    qProcessoNOME: TStringField;
    sdsFuncionarioUSUARIO_LOG: TStringField;
    cdsFuncionarioUSUARIO_LOG: TStringField;
    sdsUsuario: TSQLDataSet;
    dspUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    cdsUsuarioUCIDUSER: TIntegerField;
    cdsUsuarioUCUSERNAME: TStringField;
    cdsUsuarioUCLOGIN: TStringField;
    cdsUsuarioUCPASSWORD: TStringField;
    cdsUsuarioUCEMAIL: TStringField;
    cdsUsuarioUCPRIVILEGED: TIntegerField;
    cdsUsuarioUCTYPEREC: TStringField;
    cdsUsuarioUCPROFILE: TIntegerField;
    cdsUsuarioUCKEY: TStringField;
    dsUsuario: TDataSource;
    sdsFuncionarioMOSTRAR_ORC: TStringField;
    cdsFuncionarioMOSTRAR_ORC: TStringField;
    sdsFuncionarioBAIXA_ETIQ_PREFAT: TStringField;
    cdsFuncionarioBAIXA_ETIQ_PREFAT: TStringField;
    sdsFuncionario_Sertor: TSQLDataSet;
    sdsFuncionario_SertorCODIGO: TIntegerField;
    sdsFuncionario_SertorITEM: TIntegerField;
    sdsFuncionario_SertorID_SETOR: TIntegerField;
    cdsFuncionariosdsFuncionario_Sertor: TDataSetField;
    cdsFuncionario_Setor: TClientDataSet;
    cdsFuncionario_SetorCODIGO: TIntegerField;
    cdsFuncionario_SetorITEM: TIntegerField;
    cdsFuncionario_SetorID_SETOR: TIntegerField;
    dsFuncionario_Setor: TDataSource;
    sdsFuncionario_SertorNOME_SETOR: TStringField;
    cdsFuncionario_SetorNOME_SETOR: TStringField;
    qParametros_Lote: TSQLQuery;
    qParametros_LoteLOTE_TEXTIL: TStringField;
    sdsFuncionarioBAIXA_LOTE_COMPLETO: TStringField;
    cdsFuncionarioBAIXA_LOTE_COMPLETO: TStringField;
    qParametros_LoteLOTE_CALCADO_NOVO: TStringField;
    cdsFuncionario_ConsultaNUM_CARTAO: TIntegerField;
    sdsFuncionarioBAIXA_PROCESSO: TStringField;
    cdsFuncionarioBAIXA_PROCESSO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsFuncionarioNewRecord(DataSet: TDataSet);
    procedure dspFuncionarioUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    vID_CidadePes : Integer;
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgPessoa : String;
    ctCommand : String;
    ctConsulta : String;

    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir(Tipo: String = '');
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Inserir_Setor;

  end;

var
  DMCadFuncionario: TDMCadFuncionario;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadFuncionario.prc_Inserir(Tipo: String);
var
  vAux: Integer;
begin
  if not cdsFuncionario.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('FUNCIONARIO',0);

  cdsFuncionario.Insert;
  cdsFuncionarioCODIGO.AsInteger := vAux;
end;

procedure TDMCadFuncionario.prc_Excluir;
var
  ID: TTransactionDesc;
begin
  if not(cdsFuncionario.Active) or (cdsFuncionario.IsEmpty) then
    exit;
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsFuncionario_Reajuste.First;
    while not cdsFuncionario_Reajuste.Eof do
      cdsFuncionario_Reajuste.Delete;

    cdsFuncionario_Proc.First;
    while not cdsFuncionario_Proc.Eof do
      cdsFuncionario_Proc.Delete;

    cdsFuncionario_Setor.First;
    while not cdsFuncionario_Setor.Eof do
      cdsFuncionario_Setor.Delete;

    cdsFuncionario.Delete;
    cdsFuncionario.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end
  end;

end;

procedure TDMCadFuncionario.prc_Gravar;
begin
  vMsgPessoa := '';
  if trim(cdsFuncionarioNOME.AsString) = '' then
    vMsgPessoa := vMsgPessoa + #13 + '*** Nome não informado!';
  if vMsgPessoa <> '' then
    exit;
  cdsFuncionario.Post;
  if cdsFuncionario.ChangeCount > 0 then
    cdsFuncionario.ApplyUpdates(0);
end;

procedure TDMCadFuncionario.prc_Localizar(ID : Integer);
begin
  cdsFuncionario.Close;
  sdsFuncionario.CommandText := ctCommand;
  if ID <> 0 then
    sdsFuncionario.CommandText := sdsFuncionario.CommandText + ' WHERE CODIGO = ' + IntToStr(ID);
  cdsFuncionario.Open;
  cdsFuncionario_Setor.Close;
  cdsFuncionario_Setor.Open;
end;

procedure TDMCadFuncionario.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsFuncionario.CommandText;
  ctConsulta := sdsFuncionario_Consulta.CommandText;
  cdsUF.Open;
  cdsCidade.Open;
  cdsFilial.Open;
  qParametros.Close;
  qParametros.Open;
  qParametros_Lote.Open;
  cdsUsuario.Open;
  //*** Logs Implantado na versão .599
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

procedure TDMCadFuncionario.cdsFuncionarioNewRecord(DataSet: TDataSet);
begin
  cdsFuncionarioINATIVO.AsString             := 'N';
  cdsFuncionarioMOSTRAR_ORC.AsString         := 'N';
  cdsFuncionarioBAIXA_ETIQ_PREFAT.AsString   := 'N';
  cdsFuncionarioBAIXA_LOTE_COMPLETO.AsString := 'N';
end;

procedure TDMCadFuncionario.dspFuncionarioUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadFuncionario.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadFuncionario.prc_Inserir_Setor;
var
  vItem : Integer;
begin
  cdsFuncionario_Setor.Last;
  vItem := cdsFuncionario_SetorITEM.AsInteger;
  cdsFuncionario_Setor.Insert;
  cdsFuncionario_SetorCODIGO.AsInteger := cdsFuncionarioCODIGO.AsInteger;
  cdsFuncionario_SetorITEM.AsInteger   := vItem + 1;
end;

end.
