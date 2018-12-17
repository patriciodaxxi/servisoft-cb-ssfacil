unit UDMCadNCM;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, Dialogs, frxClass, frxDBSet, frxRich, frxExportMail,
  frxExportPDF;

type
  TDMCadNCM = class(TDataModule)
    sdsUF: TSQLDataSet;
    cdsUF: TClientDataSet;
    dspUF: TDataSetProvider;
    cdsUFUF: TStringField;
    dsUF: TDataSource;
    qVerificar_NCM: TSQLQuery;
    qVerificar_NCMID: TIntegerField;
    qVerificar_NCMNCM: TStringField;
    qVerificar_NCMNOME: TStringField;
    qVerificar_NCMPERC_RED_STRIB: TFloatField;
    cdsUFPERC_ICMS_INTERNO: TFloatField;
    sdsObs_Lei: TSQLDataSet;
    cdsObs_Lei: TClientDataSet;
    dspObs_Lei: TDataSetProvider;
    dsObs_Lei: TDataSource;
    cdsObs_LeiID: TIntegerField;
    cdsObs_LeiNOME: TStringField;
    cdsObs_LeiOBS: TStringField;
    sdsNCM: TSQLDataSet;
    sdsNCM_UF: TSQLDataSet;
    dsNCM: TDataSource;
    sdsNCM_Mestre: TDataSource;
    cdsNCM: TClientDataSet;
    cdsNCM_UF: TClientDataSet;
    dspNCM: TDataSetProvider;
    dsNCM_UF: TDataSource;
    sdsNCMID: TIntegerField;
    sdsNCMNCM: TStringField;
    sdsNCMNOME: TStringField;
    sdsNCMPERC_RED_STRIB: TFloatField;
    sdsNCMGERAR_ST: TStringField;
    sdsNCMINATIVO: TStringField;
    sdsNCMTIPO_AS: TStringField;
    sdsNCMCOD_PRINCIPAL: TStringField;
    sdsNCMUSAR_MVA_UF_DESTINO: TStringField;
    sdsNCM_UFID: TIntegerField;
    sdsNCM_UFITEM: TIntegerField;
    sdsNCM_UFUF: TStringField;
    sdsNCM_UFMVAINTERNO: TFloatField;
    sdsNCM_UFPERC_RED_MVA: TFloatField;
    sdsNCM_UFPERC_RED_MVA_GERAL: TFloatField;
    sdsNCM_UFTIPO_EMPRESA: TStringField;
    sdsNCM_UFTIPO_PRODUTO: TStringField;
    sdsNCM_UFAJUSTAR_MVA: TStringField;
    sdsNCM_UFPERC_ICMS_INTERNO: TFloatField;
    sdsNCM_UFID_OBS_LEI: TIntegerField;
    cdsNCMID: TIntegerField;
    cdsNCMNCM: TStringField;
    cdsNCMNOME: TStringField;
    cdsNCMPERC_RED_STRIB: TFloatField;
    cdsNCMGERAR_ST: TStringField;
    cdsNCMINATIVO: TStringField;
    cdsNCMTIPO_AS: TStringField;
    cdsNCMCOD_PRINCIPAL: TStringField;
    cdsNCMUSAR_MVA_UF_DESTINO: TStringField;
    cdsNCMsdsNCM_UF: TDataSetField;
    cdsNCM_UFID: TIntegerField;
    cdsNCM_UFITEM: TIntegerField;
    cdsNCM_UFUF: TStringField;
    cdsNCM_UFMVAINTERNO: TFloatField;
    cdsNCM_UFPERC_RED_MVA: TFloatField;
    cdsNCM_UFPERC_RED_MVA_GERAL: TFloatField;
    cdsNCM_UFTIPO_EMPRESA: TStringField;
    cdsNCM_UFTIPO_PRODUTO: TStringField;
    cdsNCM_UFAJUSTAR_MVA: TStringField;
    cdsNCM_UFPERC_ICMS_INTERNO: TFloatField;
    cdsNCM_UFID_OBS_LEI: TIntegerField;
    cdsNCM_UFclOBS: TStringField;
    qOBS: TSQLQuery;
    qOBSID: TIntegerField;
    qOBSNOME: TStringField;
    qOBSOBS: TStringField;
    cdsNCM_UFclTIPO_PRODUTO_AUX: TStringField;
    cdsNCM_UFclAJUSTAR_MVA_AUX: TStringField;
    sdsNCM_CST: TSQLDataSet;
    sdsNCM_CSTID: TIntegerField;
    sdsNCM_CSTITEM: TIntegerField;
    sdsNCM_CSTUF: TStringField;
    sdsNCM_CSTID_CST_ICMS: TIntegerField;
    cdsNCMsdsNCM_CST: TDataSetField;
    cdsNCM_CST: TClientDataSet;
    cdsNCM_CSTID: TIntegerField;
    cdsNCM_CSTITEM: TIntegerField;
    cdsNCM_CSTUF: TStringField;
    cdsNCM_CSTID_CST_ICMS: TIntegerField;
    dsNCM_CST: TDataSource;
    sdsTab_CSTICMS: TSQLDataSet;
    dspTab_CSTICMS: TDataSetProvider;
    cdsTab_CSTICMS: TClientDataSet;
    cdsTab_CSTICMSID: TIntegerField;
    cdsTab_CSTICMSPERCENTUAL: TFloatField;
    cdsTab_CSTICMSHISTORICO: TMemoField;
    cdsTab_CSTICMSTIPO: TStringField;
    cdsTab_CSTICMSNOME: TStringField;
    cdsTab_CSTICMSCOD_CST: TStringField;
    cdsTab_CSTICMSCOD_DESONERACAO: TSmallintField;
    dsTab_CSTICMS: TDataSource;
    qCSTICMS: TSQLQuery;
    qCSTICMSID: TIntegerField;
    qCSTICMSCOD_CST: TStringField;
    qCSTICMSPERCENTUAL: TFloatField;
    cdsNCM_CSTclCod_CST_ICMS: TStringField;
    sdsNCM_Consulta: TSQLDataSet;
    dspNCM_Consulta: TDataSetProvider;
    cdsNCM_Consulta: TClientDataSet;
    dsNCM_Consulta: TDataSource;
    cdsNCM_ConsultaID: TIntegerField;
    cdsNCM_ConsultaNCM: TStringField;
    cdsNCM_ConsultaNOME: TStringField;
    cdsNCM_ConsultaPERC_RED_STRIB: TFloatField;
    cdsNCM_ConsultaGERAR_ST: TStringField;
    cdsNCM_ConsultaINATIVO: TStringField;
    cdsNCM_ConsultaTIPO_AS: TStringField;
    cdsNCM_ConsultaCOD_PRINCIPAL: TStringField;
    cdsNCM_ConsultaUSAR_MVA_UF_DESTINO: TStringField;
    cdsNCM_CSTclPerc_CST: TFloatField;
    cdsUFIDPAIS: TIntegerField;
    sdsNCMCOD_CEST: TStringField;
    cdsNCMCOD_CEST: TStringField;
    cdsNCM_ConsultaCOD_CEST: TStringField;
    qCest: TSQLQuery;
    qCestCOD_CEST: TStringField;
    qCestNCM: TStringField;
    qCestDESCRICAO: TStringField;
    sdsTab_Cest: TSQLDataSet;
    dspTab_Cest: TDataSetProvider;
    cdsTab_Cest: TClientDataSet;
    sdsNCMAux: TSQLDataSet;
    dspNCMAux: TDataSetProvider;
    cdsNCMAux: TClientDataSet;
    cdsNCMAuxID: TIntegerField;
    cdsNCMAuxNCM: TStringField;
    cdsNCMAuxCOD_CEST: TStringField;
    qCestAux: TSQLQuery;
    qCestAuxCOD_CEST: TStringField;
    qCestAuxNCM: TStringField;
    qCestAuxDESCRICAO: TStringField;
    cdsTab_CestCONTADOR: TIntegerField;
    cdsTab_CestNCM: TStringField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxDBDataset1: TfrxDBDataset;
    sdsNCMUNIDADE_TRIB: TStringField;
    cdsNCMUNIDADE_TRIB: TStringField;
    sdsUnidade: TSQLDataSet;
    dspUnidade: TDataSetProvider;
    cdsUnidade: TClientDataSet;
    dsUnidade: TDataSource;
    cdsUnidadeUNIDADE: TStringField;
    cdsUnidadeCONVERSOR: TFloatField;
    cdsUnidadeNOME: TStringField;
    cdsUnidadeEXPORTACAO: TStringField;
    sdsUnidade_Conv: TSQLDataSet;
    dspUnidade_Conv: TDataSetProvider;
    cdsUnidade_Conv: TClientDataSet;
    dsUnidade_Conv: TDataSource;
    cdsUnidade_ConvUNIDADE: TStringField;
    cdsUnidade_ConvITEM: TIntegerField;
    cdsUnidade_ConvUNIDADE_CONV: TStringField;
    cdsUnidade_ConvNOME: TStringField;
    cdsUnidade_ConvQTD: TFloatField;
    cdsUnidade_ConvTIPO_CONVERSOR: TStringField;
    sdsNCM_Uni: TSQLDataSet;
    cdsNCM_Uni: TClientDataSet;
    dsNCM_Uni: TDataSource;
    sdsNCM_UniID: TIntegerField;
    sdsNCM_UniUNIDADE: TStringField;
    sdsNCM_UniITEM_UNIDADE: TIntegerField;
    cdsNCMsdsNCM_Uni: TDataSetField;
    cdsNCM_UniID: TIntegerField;
    cdsNCM_UniUNIDADE: TStringField;
    cdsNCM_UniITEM_UNIDADE: TIntegerField;
    cdsNCM_UniQtd: TFloatField;
    qUnidade_Conv: TSQLQuery;
    qUnidade_ConvUNIDADE: TStringField;
    qUnidade_ConvITEM: TIntegerField;
    qUnidade_ConvQTD: TFloatField;
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
    cdsNCMID_CFOP: TIntegerField;
    sdsNCMID_COFINS: TIntegerField;
    sdsNCMID_CST_ICMS: TIntegerField;
    sdsNCMPERC_PIS: TFloatField;
    sdsNCMPERC_COFINS: TFloatField;
    sdsNCMPERC_BASE_ICMS: TFloatField;
    sdsNCMID_OBS_LEI: TIntegerField;
    cdsNCMID_PIS: TIntegerField;
    cdsNCMID_COFINS: TIntegerField;
    cdsNCMID_CST_ICMS: TIntegerField;
    cdsNCMPERC_PIS: TFloatField;
    cdsNCMPERC_COFINS: TFloatField;
    cdsNCMPERC_BASE_ICMS: TFloatField;
    cdsNCMID_OBS_LEI: TIntegerField;
    sdsCFOP2: TSQLDataSet;
    dspCFOP2: TDataSetProvider;
    cdsCFOP2: TClientDataSet;
    dsCFOP2: TDataSource;
    cdsCFOP2ID: TIntegerField;
    cdsCFOP2CODCFOP: TStringField;
    cdsCFOP2NOME: TStringField;
    sdsNCMPERC_ICMS: TFloatField;
    cdsNCMPERC_ICMS: TFloatField;
    sdsNCMID_CFOP2: TIntegerField;
    sdsNCMID_PIS: TIntegerField;
    sdsNCMPERC_IPI: TFloatField;
    sdsNCMID_CSTIPI: TIntegerField;
    cdsNCMPERC_IPI: TFloatField;
    cdsNCMID_CSTIPI: TIntegerField;
    sdsTab_CSTIPI: TSQLDataSet;
    dspTab_CSTIPI: TDataSetProvider;
    cdsTab_CSTIPI: TClientDataSet;
    dsTab_CSTIPI: TDataSource;
    cdsTab_CSTIPIID: TIntegerField;
    cdsTab_CSTIPICOD_IPI: TStringField;
    cdsTab_CSTIPINOME: TStringField;
    cdsTab_CSTIPIGERAR_IPI: TStringField;
    sdsNCMTIPO_ESCALA: TStringField;
    cdsNCMTIPO_ESCALA: TStringField;
    cdsNCM_ConsultaTIPO_ESCALA: TStringField;
    sdsNCM_CSTPERC_FCP: TFloatField;
    cdsNCM_CSTPERC_FCP: TFloatField;
    sdsNCMCALCULA_FCP: TStringField;
    cdsNCMCALCULA_FCP: TStringField;
    cdsNCM_ConsultaPERC_IPI: TFloatField;
    cdsNCM_ConsultaCALCULA_FCP: TStringField;
    cdsNCM_ConsultaCOD_IPI: TStringField;
    sdsNCMIBPT_INATIVO: TStringField;
    cdsNCMIBPT_INATIVO: TStringField;
    qParametros_NFE: TSQLQuery;
    qParametros_NFETOKEN_IBPT: TStringField;
    qIBPT: TSQLQuery;
    qIBPTID: TIntegerField;
    qIBPTCODIGO: TStringField;
    qIBPTEX: TStringField;
    qIBPTTABELA: TStringField;
    qIBPTNOME: TStringField;
    qIBPTPERC_NACIONAL: TFloatField;
    qIBPTPERC_IMPORTACAO: TFloatField;
    qIBPTPERC_ESTADUAL: TFloatField;
    qIBPTPERC_MUNICIPAL: TFloatField;
    qIBPTDT_INICIO: TDateField;
    qIBPTDT_FINAL: TDateField;
    qIBPTCHAVE: TStringField;
    qIBPTVERSAO: TStringField;
    qIBPTFONTE: TStringField;
    cdsNCM_ConsultaIBPT_INATIVO: TStringField;
    cdsNCM_ConsultaACHOU_IBPT: TStringField;
    cdsNCM_ConsultaDT_IBPTFIM: TDateField;
    qParametros: TSQLQuery;
    qParametrosTIPO_LEI_TRANSPARENCIA: TStringField;
    cdsNCM_ConsultaNCM_IBPT: TStringField;
    sdsNCM_UFPERC_RED_BASE_ST: TFloatField;
    cdsNCM_UFPERC_RED_BASE_ST: TFloatField;
    sdsNCM_UFPERC_RED_BASE_ST_SIMPLES: TFloatField;
    cdsNCM_UFPERC_RED_BASE_ST_SIMPLES: TFloatField;
    sdsNCM_UFPERC_RED_MVA_CLI_GERAL: TFloatField;
    sdsNCM_UFPERC_RED_MVA_CLI_SIMPLES: TFloatField;
    cdsNCM_UFPERC_RED_MVA_CLI_GERAL: TFloatField;
    cdsNCM_UFPERC_RED_MVA_CLI_SIMPLES: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspNCMUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsNCMNewRecord(DataSet: TDataSet);
    procedure cdsNCMBeforePost(DataSet: TDataSet);
    procedure cdsNCM_UFCalcFields(DataSet: TDataSet);
    procedure cdsNCM_CSTCalcFields(DataSet: TDataSet);
    procedure cdsNCM_UniCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctConsulta: String;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Abrir_CSTICMS(Tipo: String);
    procedure prc_Abrir_Unidade_Conv(Unidade: String);
  end;

var
  DMCadNCM: TDMCadNCM;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadNCM}

procedure TDMCadNCM.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsNCM.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TAB_NCM',0);

  cdsNCM.Insert;
  cdsNCMID.AsInteger                 := vAux;
  cdsNCMUSAR_MVA_UF_DESTINO.AsString := 'N';
  cdsNCMINATIVO.AsString             := 'N';
end;

procedure TDMCadNCM.prc_Excluir;
begin
  if not(cdsNCM.Active) or (cdsNCM.IsEmpty) then
    exit;
  cdsNCM_UF.First;
  while not cdsNCM_UF.Eof do
    cdsNCM_UF.Delete;
  cdsNCM.Delete;
  cdsNCM.ApplyUpdates(0);
end;

procedure TDMCadNCM.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsNCMNCM.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** NCM não informado!';
  if Length(cdsNCMNCM.AsString) < 8 then
    vMsgErro := vMsgErro + #13 + '*** NCM incorreto, esta com dígitos a menos!';
  if Length(cdsNCMNCM.AsString) > 8 then
    vMsgErro := vMsgErro + #13 + '*** NCM incorreto, esta com dígitos a mais!';
  qVerificar_NCM.Close;
  qVerificar_NCM.ParamByName('NCM').AsString := cdsNCMNCM.AsString;
  qVerificar_NCM.Open;
  if not(qVerificar_NCM.IsEmpty) and (qVerificar_NCMID.AsInteger <> cdsNCMID.AsInteger) then
    vMsgErro := vMsgErro + #13 + '*** NCM já cadastrado no ID ' + qVerificar_NCMID.AsString;
  if trim(vMsgErro) <> '' then
    exit;
  cdsNCM.Post;
  if cdsNCM.ChangeCount > 0 then
    cdsNCM.ApplyUpdates(0);
end;

procedure TDMCadNCM.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsNCM.Close;
  sdsNCM.CommandText := ctCommand;
  if ID <> 0 then
    sdsNCM.CommandText := sdsNCM.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsNCM.Open;
end;

procedure TDMCadNCM.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsNCM.CommandText;
  ctConsulta := sdsNCM_Consulta.CommandText;
  cdsUF.Open;
  cdsObs_Lei.Open;
  cdsUnidade.Open;
  cdsTab_Pis.Open;
  cdsCFOP2.Open;
  cdsTab_Cofins.Open;
  cdsTab_CSTIPI.Open;
  qParametros.Open;
  qParametros_NFE.Open;
  prc_Abrir_CSTICMS('N');
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

procedure TDMCadNCM.dspNCMUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadNCM.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadNCM.cdsNCMNewRecord(DataSet: TDataSet);
begin
  cdsNCMGERAR_ST.AsString     := 'N';
  cdsNCMINATIVO.AsString      := 'N';
  cdsNCMIBPT_INATIVO.AsString := 'N';
end;

procedure TDMCadNCM.cdsNCMBeforePost(DataSet: TDataSet);
var
  vAux: String;
  vTipo_AS: String;
begin
  if Length(trim(cdsNCMNCM.AsString)) > 7 then
    cdsNCMTIPO_AS.AsString := 'A'
  else
    cdsNCMTIPO_AS.AsString := 'S';
  cdsNCMCOD_PRINCIPAL.AsString := copy(cdsNCMNCM.AsString,1,2);
end;

procedure TDMCadNCM.cdsNCM_UFCalcFields(DataSet: TDataSet);
begin
  if cdsNCM_UFID_OBS_LEI.AsInteger > 0 then
  begin
    qOBS.Close;
    qOBS.ParamByName('ID').AsInteger := cdsNCM_UFID_OBS_LEI.AsInteger;
    qOBS.Open;
    cdsNCM_UFclOBS.AsString := qOBSOBS.AsString;
  end
  else
    cdsNCM_UFclOBS.AsString := '';
  if cdsNCM_UFTIPO_PRODUTO.AsString = 'I' then
    cdsNCM_UFclTIPO_PRODUTO_AUX.AsString := 'Importado'
  else
  if cdsNCM_UFTIPO_PRODUTO.AsString = 'N' then
    cdsNCM_UFclTIPO_PRODUTO_AUX.AsString := 'Nacional'
  else
  if cdsNCM_UFTIPO_PRODUTO.AsString = 'A' then
    cdsNCM_UFclTIPO_PRODUTO_AUX.AsString := 'Ambos';

  if cdsNCM_UFAJUSTAR_MVA.AsString = 'S' then
    cdsNCM_UFclAJUSTAR_MVA_AUX.AsString := 'Optante Simples'
  else
  if cdsNCM_UFAJUSTAR_MVA.AsString = 'G' then
    cdsNCM_UFclAJUSTAR_MVA_AUX.AsString := 'Geral'
  else
  if cdsNCM_UFAJUSTAR_MVA.AsString = 'A' then
    cdsNCM_UFclAJUSTAR_MVA_AUX.AsString := 'Ambos'
  else
  if cdsNCM_UFAJUSTAR_MVA.AsString = 'N' then
    cdsNCM_UFclAJUSTAR_MVA_AUX.AsString := 'Não Ajustar';
end;

procedure TDMCadNCM.prc_Abrir_CSTICMS(Tipo: String);
begin
  cdsTab_CSTICMS.Close;
//  sdsTab_CSTICMS.ParamByName('TIPO').AsString := Tipo;
  cdsTab_CSTICMS.Open;
end;

procedure TDMCadNCM.cdsNCM_CSTCalcFields(DataSet: TDataSet);
begin
  if cdsNCM_CSTID_CST_ICMS.AsInteger > 0 then
  begin
    qCSTICMS.Close;
    qCSTICMS.ParamByName('ID').AsInteger := cdsNCM_CSTID_CST_ICMS.AsInteger;
    qCSTICMS.Open;
    cdsNCM_CSTclCod_CST_ICMS.AsString := qCSTICMSCOD_CST.AsString;
    cdsNCM_CSTclPerc_CST.AsFloat      := StrToFloat(FormatFLoat('0.0000',qCSTICMSPERCENTUAL.AsFloat));
  end;
end;

procedure TDMCadNCM.prc_Abrir_Unidade_Conv(Unidade: String);
begin
  cdsUnidade_Conv.Close;
  sdsUnidade_Conv.ParamByName('UNIDADE').AsString := Unidade;
  cdsUnidade_Conv.Open;
end;

procedure TDMCadNCM.cdsNCM_UniCalcFields(DataSet: TDataSet);
begin
  if trim(cdsNCM_UniUNIDADE.AsString) <> '' then
  begin
    qUnidade_Conv.Close;
    qUnidade_Conv.ParamByName('UNIDADE').AsString := cdsNCM_UniUNIDADE.AsString;
    qUnidade_Conv.ParamByName('ITEM').AsInteger   := cdsNCM_UniITEM_UNIDADE.AsInteger;
    qUnidade_Conv.Open;
    cdsNCM_UniQtd.AsFloat := StrToFloat(FormatFloat('0.0000',qUnidade_ConvQTD.AsFloat));
  end;
end;

end.
