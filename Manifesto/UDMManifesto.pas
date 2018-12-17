unit UDMManifesto;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, xmldom,
  Xmlxform, LogTypes;

type
  TDMManifesto = class(TDataModule)
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialENDERECO: TStringField;
    cdsFilialBAIRRO: TStringField;
    cdsFilialCEP: TStringField;
    cdsFilialID_CIDADE: TIntegerField;
    cdsFilialCIDADE: TStringField;
    cdsFilialUF: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFilialCOMPLEMENTO_END: TStringField;
    cdsFilialNUM_END: TStringField;
    cdsFilialDDD1: TIntegerField;
    cdsFilialFONE1: TStringField;
    cdsFilialDDD2: TIntegerField;
    cdsFilialFONE: TStringField;
    cdsFilialPESSOA: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    cdsFilialINSCR_EST: TStringField;
    cdsFilialSIMPLES: TStringField;
    cdsFilialINATIVO: TStringField;
    cdsFilialINSCMUNICIPAL: TStringField;
    cdsFilialCNAE: TStringField;
    cdsFilialID_CONTABILISTA: TIntegerField;
    cdsFilialDDDFAX: TIntegerField;
    cdsFilialFAX: TStringField;
    cdsFilialEMAIL_NFE: TStringField;
    mAuxiliar: TClientDataSet;
    mAuxiliarID_Manifesto_AN: TIntegerField;
    mAuxiliarChave_Acesso: TStringField;
    mAuxiliarCNPJ: TStringField;
    mAuxiliarInsc_Estadual: TStringField;
    mAuxiliarNome: TStringField;
    mAuxiliarNum_Nota: TLargeintField;
    mAuxiliarVlr_Nota: TFloatField;
    mAuxiliarSituacao_Manif: TIntegerField;
    mAuxiliarNSU: TLargeintField;
    mAuxiliarSchema: TStringField;
    mAuxiliarDtRecebimento: TStringField;
    mAuxiliarNum_Protocolo: TStringField;
    mAuxiliarSituacao_NFe: TIntegerField;
    mAuxiliarDownload: TStringField;
    dsmAuxiliar: TDataSource;
    xtrNotaDestinada: TXMLTransformProvider;
    cdsNotaDestinada: TClientDataSet;
    cdsNotaDestinadaNSU: TStringField;
    cdsNotaDestinadaschema: TStringField;
    dsNotaDestinada: TDataSource;
    mAuxiliarXML: TBlobField;
    qUF: TSQLDataSet;
    qUFUF: TStringField;
    qUFCODUF: TStringField;
    qParametros: TSQLDataSet;
    qParametrosLOCALSERVIDORNFE: TStringField;
    cdsFilialLOCALSERVIDORNFE: TStringField;
    mAuxiliarDescricao_SitNFe: TStringField;
    mAuxiliarGravado_Banco: TStringField;
    mAuxiliarDtEmissao: TStringField;
    mAuxiliarSerie: TStringField;
    mAuxiliarEvento: TStringField;
    mAuxiliarXML_Para_Download: TBlobField;
    qUltNSU: TSQLQuery;
    qVerifica_Evento: TSQLQuery;
    qVerifica_Nota: TSQLQuery;
    qVerifica_NotaID: TIntegerField;
    qVerifica_NotaNUMNOTA: TIntegerField;
    qVerifica_NotaNFECHAVEACESSO: TStringField;
    mAuxiliarTipo_Eve: TStringField;
    qParametrosENDXML_NOTAENTRADA: TStringField;
    qPessoa: TSQLQuery;
    qPessoaCODIGO: TIntegerField;
    qPessoaNOME: TStringField;
    qPessoaCNPJ_CPF: TStringField;
    qUltIDManifesto_AN: TSQLQuery;
    qUltIDManifesto_ANID: TIntegerField;
    qDownload: TSQLQuery;
    qVerifica_Manifesto: TSQLQuery;
    qVerifica_ManifestoID: TIntegerField;
    qVerifica_ManifestoCHAVE_ACESSO: TStringField;
    qVerifica_ManifestoCNPJ: TStringField;
    qVerifica_ManifestoINSC_ESTADUAL: TStringField;
    qVerifica_ManifestoDTEMISSAO: TStringField;
    qVerifica_ManifestoNOME: TStringField;
    qVerifica_ManifestoNUM_NOTA: TFMTBCDField;
    qVerifica_ManifestoVLR_NOTA: TFloatField;
    qVerifica_ManifestoSITUACAO_MANIF: TIntegerField;
    qVerifica_ManifestoSITUACAO_NFE: TIntegerField;
    qVerifica_ManifestoXML: TMemoField;
    qVerifica_ManifestoSCHEMA: TStringField;
    qVerifica_ManifestoDTRECEBIMENTO: TStringField;
    qVerifica_ManifestoNUM_PROTOCOLO: TStringField;
    qVerifica_ManifestoDOWNLOAD: TStringField;
    qVerifica_ManifestoNSU: TStringField;
    qUltNSUNSU: TStringField;
    qVerifica_EventoID: TIntegerField;
    qVerifica_EventoCHAVE_ACESSO: TStringField;
    qVerifica_EventoTIPO_EVENTO: TStringField;
    qVerifica_EventoSCHEMA: TStringField;
    qVerifica_EventoXML: TMemoField;
    qVerifica_EventoORGAO: TStringField;
    qVerifica_EventoSEQ_EVENTO: TIntegerField;
    qVerifica_EventoDTEVENTO: TStringField;
    qVerifica_EventoDESCRICAO_EVENTO: TStringField;
    qVerifica_EventoCOD_EVENTO: TStringField;
    qVerifica_EventoFILIAL: TIntegerField;
    qVerifica_EventoNSU: TStringField;
    mAuxiliarNota_Propria: TStringField;
    mAuxiliarDescricao_SitManif: TStringField;
    sdsManifesto_Eve: TSQLDataSet;
    sdsManifesto_EveID: TIntegerField;
    sdsManifesto_EveCHAVE_ACESSO: TStringField;
    sdsManifesto_EveTIPO_EVENTO: TStringField;
    sdsManifesto_EveSCHEMA: TStringField;
    sdsManifesto_EveXML: TMemoField;
    sdsManifesto_EveORGAO: TStringField;
    sdsManifesto_EveSEQ_EVENTO: TIntegerField;
    sdsManifesto_EveDTEVENTO: TStringField;
    sdsManifesto_EveDESCRICAO_EVENTO: TStringField;
    sdsManifesto_EveCOD_EVENTO: TStringField;
    sdsManifesto_EveFILIAL: TIntegerField;
    sdsManifesto_EveNSU: TStringField;
    sdsManifesto_EveNOTA_PROPRIA: TStringField;
    sdsManifesto_EveNUM_NOTA: TIntegerField;
    sdsManifesto_EveSERIE: TStringField;
    dspManifesto_Eve: TDataSetProvider;
    cdsManifesto_Eve: TClientDataSet;
    cdsManifesto_EveID: TIntegerField;
    cdsManifesto_EveCHAVE_ACESSO: TStringField;
    cdsManifesto_EveTIPO_EVENTO: TStringField;
    cdsManifesto_EveSCHEMA: TStringField;
    cdsManifesto_EveXML: TMemoField;
    cdsManifesto_EveORGAO: TStringField;
    cdsManifesto_EveSEQ_EVENTO: TIntegerField;
    cdsManifesto_EveDTEVENTO: TStringField;
    cdsManifesto_EveDESCRICAO_EVENTO: TStringField;
    cdsManifesto_EveCOD_EVENTO: TStringField;
    cdsManifesto_EveFILIAL: TIntegerField;
    cdsManifesto_EveNSU: TStringField;
    cdsManifesto_EveNOTA_PROPRIA: TStringField;
    cdsManifesto_EveNUM_NOTA: TIntegerField;
    cdsManifesto_EveSERIE: TStringField;
    dsManifesto_Eve: TDataSource;
    sdsManifesto_AN: TSQLDataSet;
    dspManifesto_AN: TDataSetProvider;
    sdsManifesto_ANID: TIntegerField;
    sdsManifesto_ANCHAVE_ACESSO: TStringField;
    sdsManifesto_ANCNPJ: TStringField;
    sdsManifesto_ANINSC_ESTADUAL: TStringField;
    sdsManifesto_ANDTEMISSAO: TStringField;
    sdsManifesto_ANNOME: TStringField;
    sdsManifesto_ANNUM_NOTA: TFMTBCDField;
    sdsManifesto_ANVLR_NOTA: TFloatField;
    sdsManifesto_ANSITUACAO_MANIF: TIntegerField;
    sdsManifesto_ANSITUACAO_NFE: TIntegerField;
    sdsManifesto_ANXML: TMemoField;
    sdsManifesto_ANSCHEMA: TStringField;
    sdsManifesto_ANDTRECEBIMENTO: TStringField;
    sdsManifesto_ANNUM_PROTOCOLO: TStringField;
    sdsManifesto_ANDOWNLOAD: TStringField;
    sdsManifesto_ANGRAVADA_NOTA: TStringField;
    sdsManifesto_ANTIPO_EVE: TStringField;
    sdsManifesto_ANCNPJ_FILIAL: TStringField;
    sdsManifesto_ANFILIAL: TIntegerField;
    sdsManifesto_ANNSU: TStringField;
    sdsManifesto_ANNOTA_PROPRIA: TStringField;
    cdsManifesto_AN: TClientDataSet;
    cdsManifesto_ANID: TIntegerField;
    cdsManifesto_ANCHAVE_ACESSO: TStringField;
    cdsManifesto_ANCNPJ: TStringField;
    cdsManifesto_ANINSC_ESTADUAL: TStringField;
    cdsManifesto_ANDTEMISSAO: TStringField;
    cdsManifesto_ANNOME: TStringField;
    cdsManifesto_ANNUM_NOTA: TFMTBCDField;
    cdsManifesto_ANVLR_NOTA: TFloatField;
    cdsManifesto_ANSITUACAO_MANIF: TIntegerField;
    cdsManifesto_ANSITUACAO_NFE: TIntegerField;
    cdsManifesto_ANXML: TMemoField;
    cdsManifesto_ANSCHEMA: TStringField;
    cdsManifesto_ANDTRECEBIMENTO: TStringField;
    cdsManifesto_ANNUM_PROTOCOLO: TStringField;
    cdsManifesto_ANDOWNLOAD: TStringField;
    cdsManifesto_ANGRAVADA_NOTA: TStringField;
    cdsManifesto_ANTIPO_EVE: TStringField;
    cdsManifesto_ANCNPJ_FILIAL: TStringField;
    cdsManifesto_ANFILIAL: TIntegerField;
    cdsManifesto_ANNSU: TStringField;
    cdsManifesto_ANNOTA_PROPRIA: TStringField;
    dsManifesto_AN: TDataSource;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    cdsConsultaID: TIntegerField;
    cdsConsultaCHAVE_ACESSO: TStringField;
    cdsConsultaCNPJ: TStringField;
    cdsConsultaINSC_ESTADUAL: TStringField;
    cdsConsultaDTEMISSAO: TStringField;
    cdsConsultaNOME: TStringField;
    cdsConsultaNUM_NOTA: TFMTBCDField;
    cdsConsultaVLR_NOTA: TFloatField;
    cdsConsultaSITUACAO_MANIF: TIntegerField;
    cdsConsultaSITUACAO_NFE: TIntegerField;
    cdsConsultaXML: TMemoField;
    cdsConsultaSCHEMA: TStringField;
    cdsConsultaDTRECEBIMENTO: TStringField;
    cdsConsultaNUM_PROTOCOLO: TStringField;
    cdsConsultaDOWNLOAD: TStringField;
    cdsConsultaGRAVADA_NOTA: TStringField;
    cdsConsultaTIPO_EVE: TStringField;
    cdsConsultaCNPJ_FILIAL: TStringField;
    cdsConsultaFILIAL: TIntegerField;
    cdsConsultaNSU: TStringField;
    cdsConsultaNOTA_PROPRIA: TStringField;
    sdsManifesto_ANSERIE: TStringField;
    cdsManifesto_ANSERIE: TStringField;
    cdsConsultaSERIE: TStringField;
    mAuxiliarGravada_Nota: TStringField;
    sdsParametros_Geral: TSQLDataSet;
    dspParametros_Geral: TDataSetProvider;
    cdsParametros_Geral: TClientDataSet;
    sdsParametros_GeralID: TIntegerField;
    sdsParametros_GeralENDGRIDS: TStringField;
    sdsParametros_GeralUSA_PONTOS_LOCACAO: TStringField;
    sdsParametros_GeralMOSTRAR_DADOS_PESSOA_FISICA: TStringField;
    sdsParametros_GeralLIBERAR_DIG_DTCADASTRO: TStringField;
    sdsParametros_GeralUSAR_PESSOA_FILIAL: TStringField;
    sdsParametros_GeralMOSTRAR_COD_CONTABIL: TStringField;
    sdsParametros_GeralEND_ARQ_INT_CONTABIL: TStringField;
    sdsParametros_GeralUSA_TIPO_CONTR_VARIACAO: TStringField;
    sdsParametros_GeralGRAVAR_HIST_SENHA: TStringField;
    sdsParametros_GeralEND_ARQ_PERDCOMP: TStringField;
    sdsParametros_GeralVERSAO_BANCO_NFE: TIntegerField;
    cdsParametros_GeralID: TIntegerField;
    cdsParametros_GeralENDGRIDS: TStringField;
    cdsParametros_GeralUSA_PONTOS_LOCACAO: TStringField;
    cdsParametros_GeralMOSTRAR_DADOS_PESSOA_FISICA: TStringField;
    cdsParametros_GeralLIBERAR_DIG_DTCADASTRO: TStringField;
    cdsParametros_GeralUSAR_PESSOA_FILIAL: TStringField;
    cdsParametros_GeralMOSTRAR_COD_CONTABIL: TStringField;
    cdsParametros_GeralEND_ARQ_INT_CONTABIL: TStringField;
    cdsParametros_GeralUSA_TIPO_CONTR_VARIACAO: TStringField;
    cdsParametros_GeralGRAVAR_HIST_SENHA: TStringField;
    cdsParametros_GeralEND_ARQ_PERDCOMP: TStringField;
    cdsParametros_GeralVERSAO_BANCO_NFE: TIntegerField;
    qDownloadID: TIntegerField;
    qDownloadXML: TMemoField;
    qUltManifesto_EVE: TSQLQuery;
    qUltManifesto_EVEID: TIntegerField;
    qParametros_RecXML: TSQLQuery;
    qParametros_RecXMLID: TIntegerField;
    qParametros_RecXMLUSA_OPCAO_NOTA_LANC: TStringField;
    qVerifica_Cancelamento: TSQLQuery;
    qVerifica_CancelamentoID: TIntegerField;
    qVerifica_CancelamentoCHAVE_ACESSO: TStringField;
    qVerifica_CancelamentoTIPO_EVENTO: TStringField;
    sdsManifesto_ANDTEMISSAO2: TDateField;
    cdsManifesto_ANDTEMISSAO2: TDateField;
    cdsConsultaDTEMISSAO2: TDateField;
    mAuxiliarDtEmissao2: TDateField;
    mAuxiliarCCe: TStringField;
    sdsManifesto_ANPOSSUI_CCE: TStringField;
    cdsManifesto_ANPOSSUI_CCE: TStringField;
    cdsConsultaPOSSUI_CCE: TStringField;
    sdsEvento: TSQLDataSet;
    dspEvento: TDataSetProvider;
    cdsEvento: TClientDataSet;
    cdsEventoID: TIntegerField;
    cdsEventoCHAVE_ACESSO: TStringField;
    cdsEventoTIPO_EVENTO: TStringField;
    cdsEventoSCHEMA: TStringField;
    cdsEventoXML: TMemoField;
    cdsEventoORGAO: TStringField;
    cdsEventoSEQ_EVENTO: TIntegerField;
    cdsEventoDTEVENTO: TStringField;
    cdsEventoDESCRICAO_EVENTO: TStringField;
    cdsEventoCOD_EVENTO: TStringField;
    cdsEventoFILIAL: TIntegerField;
    cdsEventoNSU: TStringField;
    cdsEventoNOTA_PROPRIA: TStringField;
    cdsEventoNUM_NOTA: TIntegerField;
    cdsEventoSERIE: TStringField;
    mEventoAux: TClientDataSet;
    mEventoAuxTipo: TStringField;
    mEventoAuxObs: TMemoField;
    dsmEventoAux: TDataSource;
    mEventoAuxDtCompleta: TStringField;
    mEventoAuxDtEvento: TDateField;
    mAuxiliarOcultar: TStringField;
    cdsConsultaOCULTAR: TStringField;
    sdsManifesto_ANOCULTAR: TStringField;
    cdsManifesto_ANOCULTAR: TStringField;
    qXML: TSQLQuery;
    qXMLXML: TMemoField;
    mAuxiliarselecionada: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure mAuxiliarNewRecord(DataSet: TDataSet);
    procedure mAuxiliarBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    
  public
    { Public declarations }
    ctConsulta : String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Localizar_EVE(ID: Integer); //-1 = Inclusão

  end;

var
  DMManifesto: TDMManifesto;

implementation

uses DmdDatabase_NFeBD, DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

procedure TDMManifesto.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctConsulta := sdsConsulta.CommandText;
  cdsFilial.Open;
  qParametros.Open;
  qParametros_RecXML.Open;

  //Versão .668
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

end;

procedure TDMManifesto.mAuxiliarNewRecord(DataSet: TDataSet);
begin
  mAuxiliarSituacao_Manif.AsInteger := -1;
  mAuxiliarGravado_Banco.AsString   := 'N';
  mAuxiliarNota_Propria.AsString    := 'N';
  mAuxiliarXML.Clear;
  mAuxiliarXML_Para_Download.Clear;
  mAuxiliarDownload.AsString    := 'N';
  mAuxiliarCCe.AsString         := '';
  mAuxiliarOcultar.AsString     := 'N';
  mAuxiliarselecionada.AsString := 'N';
end;

procedure TDMManifesto.prc_Localizar(ID: Integer);
begin
  cdsManifesto_AN.Close;
  sdsManifesto_AN.ParamByName('ID').AsInteger := ID;
  cdsManifesto_AN.Open;
end;

procedure TDMManifesto.prc_Localizar_EVE(ID: Integer);
begin
  cdsManifesto_EVE.Close;
  sdsManifesto_Eve.ParamByName('ID').AsInteger := ID;
  cdsManifesto_EVE.Open;
end;

procedure TDMManifesto.mAuxiliarBeforePost(DataSet: TDataSet);
begin
  if mAuxiliarSituacao_Manif.AsInteger = 200 then
    mAuxiliarDescricao_SitManif.AsString := 'Confirmação da Operação'
  else
  if mAuxiliarSituacao_Manif.AsInteger = 210 then
    mAuxiliarDescricao_SitManif.AsString := 'Ciência da Operação'
  else
  if mAuxiliarSituacao_Manif.AsInteger = 220 then
    mAuxiliarDescricao_SitManif.AsString := 'Desconhecimento da Operação'
  else
  if mAuxiliarSituacao_Manif.AsInteger = 240 then
    mAuxiliarDescricao_SitManif.AsString := 'Operação não Realizada'
  else
    mAuxiliarDescricao_SitManif.AsString := 'Sem Manifesto';
end;

procedure TDMManifesto.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
