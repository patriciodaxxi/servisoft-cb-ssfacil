unit UDMCadRegra;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes,
  frxClass, frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDMCadRegra = class(TDataModule)
    sdsRegra: TSQLDataSet;
    dspRegra: TDataSetProvider;
    cdsRegra: TClientDataSet;
    dsRegra: TDataSource;
    sdsTab_Pis: TSQLDataSet;
    dspTab_Pis: TDataSetProvider;
    cdsTab_Pis: TClientDataSet;
    cdsTab_PisID: TIntegerField;
    cdsTab_PisCODIGO: TStringField;
    cdsTab_PisNOME: TStringField;
    dsTab_Pis: TDataSource;
    sdsTab_Cofins: TSQLDataSet;
    dspTab_Cofins: TDataSetProvider;
    cdsTab_Cofins: TClientDataSet;
    cdsTab_CofinsID: TIntegerField;
    cdsTab_CofinsCODIGO: TStringField;
    cdsTab_CofinsNOME: TStringField;
    dsTab_Cofins: TDataSource;
    sdsTab_CSTICMS: TSQLDataSet;
    dspTab_CSTICMS: TDataSetProvider;
    cdsTab_CSTICMS: TClientDataSet;
    cdsTab_CSTICMSID: TIntegerField;
    cdsTab_CSTICMSPERCENTUAL: TFloatField;
    cdsTab_CSTICMSHISTORICO: TMemoField;
    cdsTab_CSTICMSTIPO: TStringField;
    cdsTab_CSTICMSNOME: TStringField;
    cdsTab_CSTICMSCOD_CST: TStringField;
    dsTab_CSTICMS: TDataSource;
    dsRegra_Mestre: TDataSource;
    sdsRegra_Itens: TSQLDataSet;
    cdsRegra_Itens: TClientDataSet;
    dsRegra_Itens: TDataSource;
    sdsTab_CSTIPI: TSQLDataSet;
    dspTab_CSTIPI: TDataSetProvider;
    cdsTab_CSTIPI: TClientDataSet;
    cdsTab_CSTIPIID: TIntegerField;
    cdsTab_CSTIPICOD_IPI: TStringField;
    cdsTab_CSTIPINOME: TStringField;
    cdsTab_CSTIPIGERAR_IPI: TStringField;
    dsTab_CSTIPI: TDataSource;
    sdsRegra_Consulta: TSQLDataSet;
    dspRegra_Consulta: TDataSetProvider;
    cdsRegra_Consulta: TClientDataSet;
    dsRegra_Consulta: TDataSource;
    sdsEnqIPI: TSQLDataSet;
    dspEnqIPI: TDataSetProvider;
    cdsEnqIPI: TClientDataSet;
    dsEnqIPI: TDataSource;
    cdsEnqIPIID: TIntegerField;
    cdsEnqIPICODIGO: TStringField;
    cdsEnqIPITIPO: TStringField;
    cdsEnqIPIDESCRICAO: TStringField;
    sdsRegraID: TIntegerField;
    sdsRegraFATURAMENTO: TStringField;
    sdsRegraCALCULA_ST: TStringField;
    sdsRegraID_CSTPIS: TIntegerField;
    sdsRegraID_CSTCOFINS: TIntegerField;
    sdsRegraPERC_PIS: TFloatField;
    sdsRegraPERC_COFINS: TFloatField;
    sdsRegraTIPO_PIS: TStringField;
    sdsRegraTIPO_COFINS: TStringField;
    cdsRegraID: TIntegerField;
    cdsRegraFATURAMENTO: TStringField;
    cdsRegraCALCULA_ST: TStringField;
    cdsRegraID_CSTPIS: TIntegerField;
    cdsRegraID_CSTCOFINS: TIntegerField;
    cdsRegraPERC_PIS: TFloatField;
    cdsRegraPERC_COFINS: TFloatField;
    cdsRegraTIPO_PIS: TStringField;
    cdsRegraTIPO_COFINS: TStringField;
    cdsRegrasdsRegra_Itens: TDataSetField;
    sdsRegra_ItensID: TIntegerField;
    sdsRegra_ItensITEM: TIntegerField;
    sdsRegra_ItensNOME: TStringField;
    sdsRegra_ItensTIPO_EMPRESA: TStringField;
    sdsRegra_ItensTIPO_CLIENTE: TStringField;
    sdsRegra_ItensPESSOA_CLIENTE: TStringField;
    sdsRegra_ItensTIPO_CONSUMIDOR: TStringField;
    sdsRegra_ItensID_CSTICMS: TIntegerField;
    sdsRegra_ItensID_CSTIPI: TIntegerField;
    sdsRegra_ItensID_ENQIPI: TIntegerField;
    sdsRegra_ItensOBS_LEI: TStringField;
    sdsRegra_ItensCOD_ICMS: TStringField;
    sdsRegra_ItensCOD_IPI: TStringField;
    sdsRegra_ItensCOD_ENQ: TStringField;
    cdsRegra_ItensID: TIntegerField;
    cdsRegra_ItensITEM: TIntegerField;
    cdsRegra_ItensNOME: TStringField;
    cdsRegra_ItensTIPO_EMPRESA: TStringField;
    cdsRegra_ItensTIPO_CLIENTE: TStringField;
    cdsRegra_ItensPESSOA_CLIENTE: TStringField;
    cdsRegra_ItensTIPO_CONSUMIDOR: TStringField;
    cdsRegra_ItensID_CSTICMS: TIntegerField;
    cdsRegra_ItensID_CSTIPI: TIntegerField;
    cdsRegra_ItensID_ENQIPI: TIntegerField;
    cdsRegra_ItensOBS_LEI: TStringField;
    cdsRegra_ItensCOD_ICMS: TStringField;
    cdsRegra_ItensCOD_IPI: TStringField;
    cdsRegra_ItensCOD_ENQ: TStringField;
    sdsRegra_CFOP: TSQLDataSet;
    sdsRegra_CFOPID: TIntegerField;
    sdsRegra_CFOPITEM: TIntegerField;
    sdsRegra_CFOPID_CFOP: TIntegerField;
    sdsRegra_CFOPCODCFOP: TStringField;
    cdsRegrasdsRegra_CFOP: TDataSetField;
    cdsRegra_CFOP: TClientDataSet;
    cdsRegra_CFOPID: TIntegerField;
    cdsRegra_CFOPITEM: TIntegerField;
    cdsRegra_CFOPID_CFOP: TIntegerField;
    cdsRegra_CFOPCODCFOP: TStringField;
    dsRegra_CFOP: TDataSource;
    cdsRegra_ConsultaID: TIntegerField;
    cdsRegra_ConsultaFATURAMENTO: TStringField;
    cdsRegra_ConsultaCALCULA_ST: TStringField;
    cdsRegra_ConsultaID_CSTPIS: TIntegerField;
    cdsRegra_ConsultaID_CSTCOFINS: TIntegerField;
    cdsRegra_ConsultaPERC_PIS: TFloatField;
    cdsRegra_ConsultaPERC_COFINS: TFloatField;
    cdsRegra_ConsultaTIPO_PIS: TStringField;
    cdsRegra_ConsultaTIPO_COFINS: TStringField;
    cdsRegra_ConsultaCOD_PIS: TStringField;
    cdsRegra_ConsultaCOD_COFINS: TStringField;
    cdsRegra_ItensclDesc_Tipo_Empresa: TStringField;
    cdsRegra_ItensclDesc_Tipo_Cliente: TStringField;
    cdsRegra_ItensclDesc_Tipo_Consumidor: TStringField;
    cdsRegra_ItensclDesc_Pessoa_Cliente: TStringField;
    sdsRegra_ItensCALCULAR_ST: TStringField;
    cdsRegra_ItensCALCULAR_ST: TStringField;
    sdsRegraNOME: TStringField;
    cdsRegraNOME: TStringField;
    sdsTab_CSTICMS_Simples: TSQLDataSet;
    dspTab_CSTICMS_Simples: TDataSetProvider;
    cdsTab_CSTICMS_Simples: TClientDataSet;
    dsTab_CSTICMS_Simples: TDataSource;
    cdsTab_CSTICMS_SimplesID: TIntegerField;
    cdsTab_CSTICMS_SimplesPERCENTUAL: TFloatField;
    cdsTab_CSTICMS_SimplesHISTORICO: TMemoField;
    cdsTab_CSTICMS_SimplesCOD_CST: TStringField;
    cdsTab_CSTICMS_SimplesTIPO: TStringField;
    cdsTab_CSTICMS_SimplesNOME: TStringField;
    cdsTab_CSTICMS_SimplesUSA_DESONERACAO: TStringField;
    cdsTab_CSTICMS_SimplesCOD_DESONERACAO: TSmallintField;
    cdsTab_CSTICMS_SimplesPERC_DIFERIMENTO: TFloatField;
    cdsRegra_ConsultaNOME: TStringField;
    sdsRegraID_CSTPIS_SIMP: TIntegerField;
    sdsRegraID_CSTCOFINS_SIMP: TIntegerField;
    sdsRegraPERC_PIS_SIMP: TFloatField;
    sdsRegraPERC_COFINS_SIMP: TFloatField;
    sdsRegraTIPO_PIS_SIMP: TStringField;
    sdsRegraTIPO_COFINS_SIMP: TStringField;
    cdsRegraID_CSTPIS_SIMP: TIntegerField;
    cdsRegraID_CSTCOFINS_SIMP: TIntegerField;
    cdsRegraPERC_PIS_SIMP: TFloatField;
    cdsRegraPERC_COFINS_SIMP: TFloatField;
    cdsRegraTIPO_PIS_SIMP: TStringField;
    cdsRegraTIPO_COFINS_SIMP: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspRegraUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsRegra_ItensCalcFields(DataSet: TDataSet);
    procedure cdsRegraNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctConsulta : String;
    ctCSTICMS : String;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Inserir_Itens;

    procedure prc_abrir_csticms(Tipo : String);

  end;

var
  DMCadRegra: TDMCadRegra;

implementation

uses DmdDatabase, LogProvider, Math, uUtilPadrao;

{$R *.dfm}

{ TDMCadRegra}

procedure TDMCadRegra.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsRegra.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('REGRA',0);

  cdsRegra.Insert;
  cdsRegraID.AsInteger := vAux;
end;

procedure TDMCadRegra.prc_Excluir;
begin
  if not(cdsRegra.Active) or (cdsRegra.IsEmpty) then
    exit;
  try
    cdsRegra_Itens.First;
    while not cdsRegra_Itens.Eof do
      cdsRegra_Itens.Delete;
    cdsRegra_CFOP.First;
    while not cdsRegra_CFOP.Eof do
      cdsRegra_CFOP.Delete;
    cdsRegra.Delete;
    cdsRegra.ApplyUpdates(0);
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao excluir a Regra, ' + cdsRegra_ConsultaNOME.AsString + '   '+ E.Message);
    end;
  end;

end;

procedure TDMCadRegra.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsRegraNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if cdsRegraID_CSTCOFINS.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Código do Cofins não informado!';
  if cdsRegraID_CSTPIS.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Código do Pis não informado!';
  if cdsRegraTIPO_COFINS.IsNull then
    vMsgErro := vMsgErro + #13 + '*** Tipo do Cofins não informado!';
  if cdsRegraTIPO_PIS.IsNull then
    vMsgErro := vMsgErro + #13 + '*** Tipo do Pis não informado!';

  if trim(vMsgErro) <> '' then
    exit;

  cdsRegra.Post;
  cdsRegra.ApplyUpdates(0);
end;

procedure TDMCadRegra.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsRegra.Close;
  sdsRegra.CommandText := ctCommand;
  if ID <> 0 then
    sdsRegra.CommandText := sdsRegra.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsRegra.Open;
end;

procedure TDMCadRegra.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsRegra.CommandText;
  ctConsulta := sdsRegra_Consulta.CommandText;
  ctCSTICMS  := sdsTab_CSTICMS.CommandText;
  cdsTab_Cofins.Open;
  cdsTab_Pis.Open;
  cdsTab_CSTICMS.Open;
  cdsTab_CSTIPI.Open;
  cdsEnqIPI.Open;
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

procedure TDMCadRegra.prc_Inserir_Itens;
var
  vItemAux: Integer;
  vID_CSTICMS, vID_CSTIPI, vID_PIS, vID_COFINS, vID_Operacao_Nota, vID_Obs_Lei, vID_EnqIPI: Integer;
  vTipo_Consumidor, vTipo_Contribuinte : Integer;
  vCod_ICMS, vCOD_IPI, vTipo_Empresa, vTipo_Cliente, vUF_Cliente, vFinalidade, vPessoa_Cliente: String;
  vControlar_ICMS, vControlar_Reducao, vControlar_IPI, vControlar_SubstIcms, vControlar_Diferimento: String;
  vTipo_Pis, vTipo_Cofins, vCalcular_ST : String;
  vPerc_Pis, vPerc_Cofins : Real;
begin
  vID_CSTICMS            := 0;
  vID_CSTIPI             := 0;
  vID_PIS                := 0;
  vID_COFINS             := 0;
  vID_Operacao_Nota      := 0;
  vID_Obs_Lei            := 0;
  vID_EnqIPI             := 0;
  vCod_ICMS              := '';
  vCOD_IPI               := '';
  vTipo_Empresa          := '';
  vTipo_Cliente          := '';
  vUF_Cliente            := '';
  vFinalidade            := '';
  vPessoa_Cliente        := '';
  vControlar_ICMS        := '';
  vControlar_Reducao     := '';
  vControlar_IPI         := '';
  vControlar_SubstIcms   := '';
  vControlar_Diferimento := '';
  vTipo_Cofins           := '';
  vTipo_Pis              := '';
  vPerc_Cofins           := 0;
  vPerc_Pis              := 0;
  vTipo_Consumidor       := 99;
  vTipo_Contribuinte     := 99;
  vCalcular_ST           := '';
  cdsRegra_Itens.Last;
  vItemAux := cdsRegra_ItensITEM.AsInteger;
  vItemAux := vItemAux + 1;

  if cdsRegra_Itens.RecordCount > 0 then
  begin
    vID_CSTICMS       := cdsRegra_ItensID_CSTICMS.AsInteger;
    vID_CSTIPI        := cdsRegra_ItensID_CSTIPI.AsInteger;
    vID_EnqIPI        := cdsRegra_ItensID_ENQIPI.AsInteger;
    vCod_ICMS              := cdsRegra_ItensCOD_ICMS.AsString;
    vCOD_IPI               := cdsRegra_ItensCOD_IPI.AsString;
    vTipo_Empresa          := cdsRegra_ItensTIPO_EMPRESA.AsString;
    vTipo_Cliente          := cdsRegra_ItensTIPO_CLIENTE.AsString;
    vPessoa_Cliente        := cdsRegra_ItensPESSOA_CLIENTE.AsString;
    if not cdsRegra_ItensTIPO_CONSUMIDOR.IsNull then
      vTipo_Consumidor       := cdsRegra_ItensTIPO_CONSUMIDOR.AsInteger;
    vCalcular_ST           := cdsRegra_ItensCALCULAR_ST.AsString;
  end;
  cdsRegra_Itens.Insert;
  cdsRegra_ItensID.AsInteger   := cdsRegraID.AsInteger;
  cdsRegra_ItensITEM.AsInteger := vItemAux;

  cdsRegra_ItensID_CSTICMS.AsInteger           := vID_CSTICMS;
  cdsRegra_ItensID_CSTIPI.AsInteger            := vID_CSTIPI;
  if vID_EnqIPI > 0 then
    cdsRegra_ItensID_ENQIPI.AsInteger  := vID_EnqIPI;
  cdsRegra_ItensCOD_ICMS.AsString              := vCod_ICMS;
  cdsRegra_ItensCOD_IPI.AsString               := vCOD_IPI;
  cdsRegra_ItensTIPO_EMPRESA.AsString          := vTipo_Empresa;
  cdsRegra_ItensTIPO_CLIENTE.AsString          := vTipo_Cliente;

  cdsRegra_ItensPESSOA_CLIENTE.AsString        := vPessoa_Cliente;
  if vTipo_Consumidor <> 99 then
    cdsRegra_ItensTIPO_CONSUMIDOR.AsInteger := vTipo_Consumidor;
  if (vCalcular_ST = 'S') or (vCalcular_ST = 'N') then
    cdsRegra_ItensCALCULAR_ST.AsString := vCalcular_ST;
end;

procedure TDMCadRegra.dspRegraUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadRegra.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadRegra.cdsRegra_ItensCalcFields(DataSet: TDataSet);
begin
  if cdsRegra_ItensTIPO_CONSUMIDOR.IsNull then
    cdsRegra_ItensclDesc_Tipo_Consumidor.AsString := ''
  else
  if cdsRegra_ItensTIPO_CONSUMIDOR.AsInteger = 0 then
    cdsRegra_ItensclDesc_Tipo_Consumidor.AsString := 'Normal'
  else
  if cdsRegra_ItensTIPO_CONSUMIDOR.AsInteger = 1 then
    cdsRegra_ItensclDesc_Tipo_Consumidor.AsString := 'Final';
  if cdsRegra_ItensTIPO_EMPRESA.AsString = 'G' then
    cdsRegra_ItensclDesc_Tipo_Empresa.AsString := 'Geral'
  else
  if cdsRegra_ItensTIPO_EMPRESA.AsString = 'S' then
    cdsRegra_ItensclDesc_Tipo_Empresa.AsString := 'Simples';
  if cdsRegra_ItensTIPO_CLIENTE.AsString = 'G' then
    cdsRegra_ItensclDesc_Tipo_Cliente.AsString := 'Geral'
  else
  if cdsRegra_ItensTIPO_CLIENTE.AsString = 'S' then
    cdsRegra_ItensclDesc_Tipo_Cliente.AsString := 'Simples';
  if cdsRegra_ItensPESSOA_CLIENTE.AsString = 'J' then
    cdsRegra_ItensclDesc_Pessoa_Cliente.AsString := 'Jurídica'
  else
  if cdsRegra_ItensPESSOA_CLIENTE.AsString = 'F' then
    cdsRegra_ItensclDesc_Pessoa_Cliente.AsString := 'Física';
end;

procedure TDMCadRegra.prc_abrir_csticms(Tipo: String);
begin
  cdsTab_CSTICMS.Close;
  if Tipo = 'G' then
    sdsTab_CSTICMS.CommandText := ctCSTICMS + ' WHERE TIPO = ' + QuotedStr('N')
  else
  if Tipo = 'S' then
    sdsTab_CSTICMS.CommandText := ctCSTICMS + ' WHERE TIPO = ' + QuotedStr('S')
  else
    sdsTab_CSTICMS.CommandText := ctCSTICMS;
  cdsTab_CSTICMS.Open;
end;

procedure TDMCadRegra.cdsRegraNewRecord(DataSet: TDataSet);
begin
  cdsRegraFATURAMENTO.AsString := 'N';
  cdsRegraCALCULA_ST.AsString  := 'N';
end;

end.
