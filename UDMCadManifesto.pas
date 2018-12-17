unit UDMCadManifesto;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes,
  frxClass, frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDMCadManifesto = class(TDataModule)
    sdsManifesto: TSQLDataSet;
    dspManifesto: TDataSetProvider;
    cdsManifesto: TClientDataSet;
    dsManifesto: TDataSource;
    qParametros: TSQLQuery;
    qParametrosSERIENORMAL: TStringField;
    sdsFilial: TSQLDataSet;
    cdsFilial: TClientDataSet;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialEMAIL_FINANCEIRO: TStringField;
    dspFilial: TDataSetProvider;
    dsFilial: TDataSource;
    sdsManifestoID: TIntegerField;
    sdsManifestoDATA: TDateField;
    sdsManifestoDESCRICAO: TStringField;
    sdsManifestoSTATUS: TStringField;
    sdsManifestoPESO_LIQUIDO: TFloatField;
    sdsManifestoPESO_BRUTO: TFloatField;
    sdsManifestoVLR_NOTA: TFloatField;
    sdsManifestoVLR_DUPLICATA: TFloatField;
    cdsManifestoID: TIntegerField;
    cdsManifestoDATA: TDateField;
    cdsManifestoDESCRICAO: TStringField;
    cdsManifestoSTATUS: TStringField;
    cdsManifestoPESO_LIQUIDO: TFloatField;
    cdsManifestoPESO_BRUTO: TFloatField;
    cdsManifestoVLR_NOTA: TFloatField;
    cdsManifestoVLR_DUPLICATA: TFloatField;
    sdsManifestoNUM_MANIFESTO: TIntegerField;
    cdsManifestoNUM_MANIFESTO: TIntegerField;
    dsManifesto_Mestre: TDataSource;
    sdsManifesto_Nota: TSQLDataSet;
    sdsManifesto_NotaID: TIntegerField;
    sdsManifesto_NotaITEM: TIntegerField;
    sdsManifesto_NotaID_NOTA: TIntegerField;
    sdsManifesto_NotaPESO_LIQUIDO: TFloatField;
    sdsManifesto_NotaPESO_BRUTO: TFloatField;
    sdsManifesto_NotaVLR_NOTA: TFloatField;
    sdsManifesto_NotaVLR_DUPLICATA: TFloatField;
    cdsManifestosdsManifesto_Nota: TDataSetField;
    cdsManifesto_Nota: TClientDataSet;
    cdsManifesto_NotaID: TIntegerField;
    cdsManifesto_NotaITEM: TIntegerField;
    cdsManifesto_NotaID_NOTA: TIntegerField;
    cdsManifesto_NotaPESO_LIQUIDO: TFloatField;
    cdsManifesto_NotaPESO_BRUTO: TFloatField;
    cdsManifesto_NotaVLR_NOTA: TFloatField;
    cdsManifesto_NotaVLR_DUPLICATA: TFloatField;
    dsManifesto_Nota: TDataSource;
    sdsManifesto_NotaSERIE: TStringField;
    sdsManifesto_NotaNUM_NOTA: TIntegerField;
    cdsManifesto_NotaSERIE: TStringField;
    cdsManifesto_NotaNUM_NOTA: TIntegerField;
    sdsNotas: TSQLDataSet;
    dspNotas: TDataSetProvider;
    cdsNotas: TClientDataSet;
    dsNotas: TDataSource;
    cdsNotasID: TIntegerField;
    cdsNotasID_CLIENTE: TIntegerField;
    cdsNotasID_TRANSPORTADORA: TIntegerField;
    cdsNotasQTDVOLUME: TIntegerField;
    cdsNotasQTDTOTAL_ITENS: TIntegerField;
    cdsNotasSERIE: TStringField;
    cdsNotasNUMNOTA: TIntegerField;
    cdsNotasVLR_NOTA: TFloatField;
    cdsNotasTIPO_FRETE: TStringField;
    cdsNotasPESOLIQUIDO: TFloatField;
    cdsNotasPESOBRUTO: TFloatField;
    cdsNotasNOME_CLIENTE: TStringField;
    cdsNotasNOME_TRANSPORTADORA: TStringField;
    cdsNotasUF: TStringField;
    cdsNotasCIDADE: TStringField;
    cdsNotasENDERECO: TStringField;
    cdsNotasNUM_END: TStringField;
    cdsNotasCEP: TStringField;
    cdsNotasBAIRRO: TStringField;
    cdsNotasTIPO_FRETE_DESC: TStringField;
    cdsNotasSELECIONADO: TStringField;
    cdsNotasVLR_DUPLICATA: TFloatField;
    qProximoMan: TSQLQuery;
    qProximoManNUM_MANIFESTO: TIntegerField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxDBDataset1: TfrxDBDataset;
    sdsAgrupaQtd: TSQLDataSet;
    cdsAgrupaQtd: TClientDataSet;
    dspAgrupaQtd: TDataSetProvider;
    dsAgrupaQtd: TDataSource;
    cdsAgrupaQtdID_PRODUTO: TIntegerField;
    cdsAgrupaQtdQTD: TFloatField;
    cdsAgrupaQtdNOME_PRODUTO: TStringField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsConsultaID: TIntegerField;
    sdsConsultaDATA: TDateField;
    sdsConsultaDESCRICAO: TStringField;
    sdsConsultaSTATUS: TStringField;
    sdsConsultaPESO_LIQUIDO: TFloatField;
    sdsConsultaPESO_BRUTO: TFloatField;
    sdsConsultaVLR_NOTA: TFloatField;
    sdsConsultaVLR_DUPLICATA: TFloatField;
    sdsConsultaNUM_MANIFESTO: TIntegerField;
    cdsConsultaID: TIntegerField;
    cdsConsultaDATA: TDateField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaSTATUS: TStringField;
    cdsConsultaPESO_LIQUIDO: TFloatField;
    cdsConsultaPESO_BRUTO: TFloatField;
    cdsConsultaVLR_NOTA: TFloatField;
    cdsConsultaVLR_DUPLICATA: TFloatField;
    cdsConsultaNUM_MANIFESTO: TIntegerField;
    sdsEndereco: TSQLDataSet;
    cdsEndereco: TClientDataSet;
    dspEndereco: TDataSetProvider;
    dsEndereco: TDataSource;
    cdsEnderecoID_MANIFESTO: TIntegerField;
    cdsEnderecoID_NOTA: TIntegerField;
    cdsEnderecoNUM_NOTA: TIntegerField;
    cdsEnderecoSERIE: TStringField;
    cdsEnderecoID_CLIENTE: TIntegerField;
    cdsEnderecoNOME: TStringField;
    cdsEnderecoCNPJ_CPF: TStringField;
    cdsEnderecoENDERECO: TStringField;
    cdsEnderecoBAIRRO: TStringField;
    cdsEnderecoCEP: TStringField;
    cdsEnderecoCIDADE: TStringField;
    cdsEnderecoUF: TStringField;
    cdsEnderecoCOMPLEMENTO_END: TStringField;
    frxDBDataset2: TfrxDBDataset;
    sdsFechamento: TSQLDataSet;
    cdsFechamento: TClientDataSet;
    dspFechamento: TDataSetProvider;
    dsFechamento: TDataSource;
    cdsFechamentoQTD: TFloatField;
    cdsFechamentoVLR_DUPLICATA: TFloatField;
    cdsFechamentoNOME_CLIENTE: TStringField;
    cdsFechamentoNOME_TIPOCOBRANCA: TStringField;
    cdsFechamentoTIPO: TStringField;
    cdsFechamentoNOME_VP: TStringField;
    frxDBDataset3: TfrxDBDataset;
    mTotalCobranca: TClientDataSet;
    mTotalCobrancaNome_VP: TStringField;
    mTotalCobrancaNome_Tipo_Cobranca: TStringField;
    mTotalCobrancaVlr_Total: TFloatField;
    dsmTotalCobranca: TDataSource;
    frxDBDataset4: TfrxDBDataset;
    sdsManifesto_Cob: TSQLDataSet;
    sdsManifesto_CobID: TIntegerField;
    sdsManifesto_CobITEM: TIntegerField;
    sdsManifesto_CobDESCRICAO: TStringField;
    sdsManifesto_CobNUM_DOC: TIntegerField;
    sdsManifesto_CobTIPO: TStringField;
    sdsManifesto_CobVALOR: TFloatField;
    sdsManifesto_CobOBS: TStringField;
    cdsManifestosdsManifesto_Cob: TDataSetField;
    cdsManifesto_Cob: TClientDataSet;
    cdsManifesto_CobID: TIntegerField;
    cdsManifesto_CobITEM: TIntegerField;
    cdsManifesto_CobDESCRICAO: TStringField;
    cdsManifesto_CobNUM_DOC: TIntegerField;
    cdsManifesto_CobTIPO: TStringField;
    cdsManifesto_CobVALOR: TFloatField;
    cdsManifesto_CobOBS: TStringField;
    dsManifesto_Cob: TDataSource;
    sdsManifestoPLACA: TStringField;
    sdsManifestoVLR_DESPESA: TFloatField;
    sdsManifestoNOME_MOTORISTA: TStringField;
    sdsManifestoNOME_AJUDANTE: TStringField;
    sdsManifestoHORARIO: TTimeField;
    cdsManifestoPLACA: TStringField;
    cdsManifestoVLR_DESPESA: TFloatField;
    cdsManifestoNOME_MOTORISTA: TStringField;
    cdsManifestoNOME_AJUDANTE: TStringField;
    cdsManifestoHORARIO: TTimeField;
    sdsImp: TSQLDataSet;
    cdsImp: TClientDataSet;
    dspImp: TDataSetProvider;
    dsImp: TDataSource;
    cdsImpID: TIntegerField;
    cdsImpDATA: TDateField;
    cdsImpDESCRICAO: TStringField;
    cdsImpSTATUS: TStringField;
    cdsImpPESO_LIQUIDO: TFloatField;
    cdsImpPESO_BRUTO: TFloatField;
    cdsImpVLR_NOTA: TFloatField;
    cdsImpVLR_DUPLICATA: TFloatField;
    cdsImpNUM_MANIFESTO: TIntegerField;
    cdsImpPLACA: TStringField;
    cdsImpVLR_DESPESA: TFloatField;
    cdsImpNOME_MOTORISTA: TStringField;
    cdsImpNOME_AJUDANTE: TStringField;
    cdsImpHORARIO: TTimeField;
    sdsImp_Nota: TSQLDataSet;
    cdsImp_Nota: TClientDataSet;
    dspImp_Nota: TDataSetProvider;
    dsImp_Nota: TDataSource;
    sdsImp_Cob: TSQLDataSet;
    cdsImp_Cob: TClientDataSet;
    dspImp_Cob: TDataSetProvider;
    dsImp_Cob: TDataSource;
    cdsImp_NotaVLR_DUPLICATA: TFloatField;
    cdsImp_NotaID: TIntegerField;
    cdsImp_NotaITEM: TIntegerField;
    cdsImp_NotaID_NOTA: TIntegerField;
    cdsImp_NotaPESO_LIQUIDO: TFloatField;
    cdsImp_NotaPESO_BRUTO: TFloatField;
    cdsImp_NotaVLR_NOTA: TFloatField;
    cdsImp_NotaSERIE: TStringField;
    cdsImp_NotaNUM_NOTA: TIntegerField;
    cdsImp_NotaID_CLIENTE: TIntegerField;
    cdsImp_NotaNOME_CLIENTE: TStringField;
    cdsImp_NotaNOME_COBRANCA: TStringField;
    cdsImp_NotaTIPO_DOC: TStringField;
    cdsImp_CobID: TIntegerField;
    cdsImp_CobITEM: TIntegerField;
    cdsImp_CobDESCRICAO: TStringField;
    cdsImp_CobNUM_DOC: TIntegerField;
    cdsImp_CobTIPO: TStringField;
    cdsImp_CobVALOR: TFloatField;
    cdsImp_CobOBS: TStringField;
    frxImp: TfrxDBDataset;
    frxImp_Nota: TfrxDBDataset;
    frxImp_Cob: TfrxDBDataset;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspManifestoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgManifesto: String;
    ctCommand: String;
    ctNota : String;
    ctConsulta : String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    procedure prc_Inserir_Cob;

  end;

var
  DMCadManifesto: TDMCadManifesto;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadManifesto.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsManifesto.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('MANIFESTO',0);

  cdsManifesto.Insert;
  cdsManifestoID.AsInteger := vAux;
  cdsManifestoDATA.AsDateTime := Date;
  cdsManifestoPESO_BRUTO.AsFloat := 0;
  cdsManifestoPESO_LIQUIDO.AsFloat := 0;
  cdsManifestoVLR_DUPLICATA.AsFloat := 0;
  cdsManifestoVLR_NOTA.AsFloat      := 0;
end;

procedure TDMCadManifesto.prc_Excluir;
begin
  if not(cdsManifesto.Active) or (cdsManifesto.IsEmpty) then
    exit;
  cdsManifesto_Nota.First;
  while not cdsManifesto_Nota.Eof do
    cdsManifesto_Nota.Delete;
  cdsManifesto_Cob.First;
  while not cdsManifesto_Cob.Eof do
    cdsManifesto_Cob.Delete;
  cdsManifesto.Delete;
  cdsManifesto.ApplyUpdates(0);
end;

procedure TDMCadManifesto.prc_Gravar;
begin
  vMsgManifesto := '';
  if cdsManifestoDATA.AsDateTime <= 10 then
    vMsgManifesto := '*** Data não informada';
  if cdsManifesto_Nota.RecordCount <= 0 then
    vMsgManifesto := vMsgManifesto + #13 + '*** Não foi informada notas no manifesto!';
  if vMsgManifesto <> '' then
    exit;
    
  cdsManifesto.Post;
  cdsManifesto.ApplyUpdates(0);
end;

procedure TDMCadManifesto.prc_Localizar(ID: Integer);
begin
  cdsManifesto.Close;
  sdsManifesto.CommandText := ctCommand;
  if ID <> 0 then
    sdsManifesto.CommandText := sdsManifesto.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsManifesto.Open;
end;

procedure TDMCadManifesto.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsManifesto.CommandText;
  ctNota     := sdsNotas.CommandText;
  ctConsulta := sdsConsulta.CommandText;
  qParametros.Close;
  qParametros.Open;
  cdsFilial.Open;
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

procedure TDMCadManifesto.dspManifestoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadManifesto.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadManifesto.prc_Inserir_Cob;
var
  vItemAux : Integer;
begin
  cdsManifesto_Cob.Last;
  vItemAux := cdsManifesto_CobITEM.AsInteger;

  cdsManifesto_Cob.Insert;
  cdsManifesto_CobID.AsInteger   := cdsManifestoID.AsInteger;
  cdsManifesto_CobITEM.AsInteger := vItemAux + 1;
end;

end.
