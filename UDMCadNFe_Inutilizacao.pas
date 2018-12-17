unit UDMCadNFe_Inutilizacao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadNFe_Inutilizacao = class(TDataModule)
    sdsNFe_Inutilizacao: TSQLDataSet;
    cdsNFe_Inutilizacao: TClientDataSet;
    dsNFe_Inutilizacao: TDataSource;
    sdsNFe_InutilizacaoID: TIntegerField;
    sdsNFe_InutilizacaoFILIAL: TIntegerField;
    sdsNFe_InutilizacaoNUMPROTOCOLO: TStringField;
    sdsNFe_InutilizacaoDATA: TDateField;
    sdsNFe_InutilizacaoHORA: TTimeField;
    sdsNFe_InutilizacaoMOTIVO: TStringField;
    sdsNFe_InutilizacaoNUMNOTA_INI: TIntegerField;
    sdsNFe_InutilizacaoNUMNOTA_FIN: TIntegerField;
    sdsNFe_InutilizacaoUSUARIO: TStringField;
    sdsNFe_InutilizacaoDTUSUARIO: TDateField;
    sdsNFe_InutilizacaoHRUSUARIO: TTimeField;
    sdsNFe_InutilizacaoMODELO: TStringField;
    sdsNFe_InutilizacaoSERIE: TStringField;
    sdsNFe_InutilizacaoANO: TIntegerField;
    dspNFe_Inutilizacao: TDataSetProvider;
    cdsNFe_InutilizacaoID: TIntegerField;
    cdsNFe_InutilizacaoFILIAL: TIntegerField;
    cdsNFe_InutilizacaoNUMPROTOCOLO: TStringField;
    cdsNFe_InutilizacaoDATA: TDateField;
    cdsNFe_InutilizacaoHORA: TTimeField;
    cdsNFe_InutilizacaoMOTIVO: TStringField;
    cdsNFe_InutilizacaoNUMNOTA_INI: TIntegerField;
    cdsNFe_InutilizacaoNUMNOTA_FIN: TIntegerField;
    cdsNFe_InutilizacaoUSUARIO: TStringField;
    cdsNFe_InutilizacaoDTUSUARIO: TDateField;
    cdsNFe_InutilizacaoHRUSUARIO: TTimeField;
    cdsNFe_InutilizacaoMODELO: TStringField;
    cdsNFe_InutilizacaoSERIE: TStringField;
    cdsNFe_InutilizacaoANO: TIntegerField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    qNotas: TSQLQuery;
    qNotasID: TIntegerField;
    qNotasNUMNOTA: TIntegerField;
    qNotasFILIAL: TIntegerField;
    qNotasSERIE: TStringField;
    qUltNota: TSQLQuery;
    qUltNotaNUMNOTA: TIntegerField;
    cdsFilialSERIENORMAL: TStringField;
    qCupom: TSQLQuery;
    qCupomID: TIntegerField;
    qCupomNUMCUPOM: TIntegerField;
    qCupomFILIAL: TIntegerField;
    qCupomSERIE: TStringField;
    qUltCupom: TSQLQuery;
    qUltCupomNUMCUPOM: TIntegerField;
    qUltInutilizacao: TSQLQuery;
    qUltInutilizacaoID: TIntegerField;
    qUltInutilizacaoSERIE: TStringField;
    qUltInutilizacaoMODELO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsNFe_InutilizacaoNewRecord(DataSet: TDataSet);
    procedure dspNFe_InutilizacaoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;

    procedure prc_Localizar(ID : Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadNFe_Inutilizacao: TDMCadNFe_Inutilizacao;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao, DateUtils;

{$R *.dfm}

procedure TDMCadNFe_Inutilizacao.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsNFe_Inutilizacao.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('NFE_INUTILIZACAO',0);

  cdsNFe_Inutilizacao.Insert;
  cdsNFe_InutilizacaoID.AsInteger := vAux;
  cdsFilial.First;

  qUltInutilizacao.Close;
  qUltInutilizacao.Open;
  
  if cdsFilial.RecordCount = 1 then
    cdsNFe_InutilizacaoFILIAL.AsInteger := cdsFilialID.AsInteger;

  if trim(qUltInutilizacaoSERIE.AsString) <> '' then
  begin
    cdsNFe_InutilizacaoSERIE.AsString  := qUltInutilizacaoSERIE.AsString;
    cdsNFe_InutilizacaoMODELO.AsString := qUltInutilizacaoMODELO.AsString;
  end
  else
    cdsNFe_InutilizacaoSERIE.AsString  := cdsFilialSERIENORMAL.AsString;
  cdsNFe_InutilizacaoANO.AsInteger   := YearOf(Now);
  cdsNFe_InutilizacaoDATA.AsDateTime := Date;
end;

procedure TDMCadNFe_Inutilizacao.prc_Excluir;
begin
  if not(cdsNFe_Inutilizacao.Active) or (cdsNFe_Inutilizacao.IsEmpty) then
    exit;
  cdsNFe_Inutilizacao.Delete;
  cdsNFe_Inutilizacao.ApplyUpdates(0);
end;

procedure TDMCadNFe_Inutilizacao.prc_Gravar;
begin
  vMsgErro := '';
  if cdsNFe_InutilizacaoFILIAL.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 +'*** Filial não informada!';
  if Length(cdsNFe_InutilizacaoMOTIVO.AsString) < 16 then
    vMsgErro := vMsgErro + #13 +'*** Motivo é obrigatório no mínimo 15 caracteres!';
  if (cdsNFe_InutilizacaoNUMNOTA_INI.AsInteger < 1) then
    vMsgErro := vMsgErro + #13 +'*** Nota inicial não pode ser zero!';
  if (cdsNFe_InutilizacaoNUMNOTA_INI.AsInteger > cdsNFe_InutilizacaoNUMNOTA_FIN.AsInteger ) then
    vMsgErro := vMsgErro + #13 +'*** Nota inicial maior que nota final!';
  if trim(cdsNFe_InutilizacaoMODELO.AsString) = '' then
    vMsgErro := vMsgErro + #13 +'*** Modelo não informado!';
  if trim(cdsNFe_InutilizacaoSERIE.AsString) = '' then
    vMsgErro := vMsgErro + #13 +'*** Série não informada!';
  if cdsNFe_InutilizacaoANO.AsInteger < 2010 then
    vMsgErro := vMsgErro + #13 +'*** Ano não informado ou esta incorreto!';

  if trim(vMsgErro) <> '' then
    exit;

  if cdsNFe_InutilizacaoMODELO.AsString = '55' then
  begin
    qNotas.Close;
    qNotas.ParamByName('FILIAL').AsInteger     := cdsNFe_InutilizacaoFILIAL.AsInteger;
    qNotas.ParamByName('SERIE').AsString       := cdsNFe_InutilizacaoSERIE.AsString;
    qNotas.ParamByName('NUMNOTAINI').AsInteger := cdsNFe_InutilizacaoNUMNOTA_INI.AsInteger;
    qNotas.ParamByName('NUMNOTAFIN').AsInteger := cdsNFe_InutilizacaoNUMNOTA_FIN.AsInteger;
    qNotas.Open;
    if not(qNotas.IsEmpty) and (qNotasID.AsInteger > 0) then
      vMsgErro := vMsgErro + #13 +'*** Sequência do número da nota não pode ser inutilizada pois já esta sendo usada!';
    qNotas.Close;
  end
  else
  if cdsNFe_InutilizacaoMODELO.AsString = '65' then
  begin
    qCupom.Close;
    qCupom.ParamByName('FILIAL').AsInteger      := cdsNFe_InutilizacaoFILIAL.AsInteger;
    qCupom.ParamByName('SERIE').AsString        := cdsNFe_InutilizacaoSERIE.AsString;
    qCupom.ParamByName('NUMCUPOMINI').AsInteger := cdsNFe_InutilizacaoNUMNOTA_INI.AsInteger;
    qCupom.ParamByName('NUMCUPOMFIN').AsInteger := cdsNFe_InutilizacaoNUMNOTA_FIN.AsInteger;
    qCupom.Open;
    if not(qCupom.IsEmpty) and (qCupomID.AsInteger > 0) then
      vMsgErro := vMsgErro + #13 +'*** Sequência do número da nota não pode ser inutilizada pois já esta sendo usada!';
    qCupom.Close;
  end;

  if trim(vMsgErro) <> '' then
    exit;

  if cdsNFe_InutilizacaoMODELO.AsString = '55' then
  begin
    qUltNota.Close;
    qUltNota.ParamByName('FILIAL').AsInteger := cdsNFe_InutilizacaoFILIAL.AsInteger;
    qUltNota.ParamByName('SERIE').AsString   := cdsNFe_InutilizacaoSERIE.AsString;
    qUltNota.Open;
    if cdsNFe_InutilizacaoNUMNOTA_INI.AsInteger > qUltNotaNumNota.AsInteger then
      vMsgErro := vMsgErro + #13 +'*** Última nota emitida é menor que a nota ' + cdsNFe_InutilizacaoNUMNOTA_INI.AsString
    else
    if cdsNFe_InutilizacaoNUMNOTA_FIN.AsInteger > qUltNotaNumNota.AsInteger then
      vMsgErro := vMsgErro + #13 +'*** Última nota emitida é menor que a nota ' + cdsNFe_InutilizacaoNUMNOTA_FIN.AsString;
    qUltNota.Close;
  end
  else
  if cdsNFe_InutilizacaoMODELO.AsString = '65' then
  begin
    qUltCupom.Close;
    qUltCupom.ParamByName('FILIAL').AsInteger := cdsNFe_InutilizacaoFILIAL.AsInteger;
    qUltCupom.ParamByName('SERIE').AsString   := cdsNFe_InutilizacaoSERIE.AsString;
    qUltCupom.Open;
    if cdsNFe_InutilizacaoNUMNOTA_INI.AsInteger > qUltCupomNUMCUPOM.AsInteger then
      vMsgErro := vMsgErro + #13 +'*** Última nota emitida é menor que a nota ' + cdsNFe_InutilizacaoNUMNOTA_INI.AsString
    else
    if cdsNFe_InutilizacaoNUMNOTA_FIN.AsInteger > qUltCupomNUMCUPOM.AsInteger then
      vMsgErro := vMsgErro + #13 +'*** Última nota emitida é menor que a nota ' + cdsNFe_InutilizacaoNUMNOTA_FIN.AsString;
    qUltCupom.Close;
  end;

  if trim(vMsgErro) <> '' then
    exit;

  cdsNFe_Inutilizacao.Post;
  cdsNFe_Inutilizacao.ApplyUpdates(0);
end;

procedure TDMCadNFe_Inutilizacao.prc_Localizar(ID : Integer); //-1 é para inclusão
begin
  cdsNFe_Inutilizacao.Close;
  sdsNFe_Inutilizacao.CommandText := ctCommand;
  if ID <> 0 then
    sdsNFe_Inutilizacao.CommandText := sdsNFe_Inutilizacao.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsNFe_Inutilizacao.Open;
end;

procedure TDMCadNFe_Inutilizacao.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsNFe_Inutilizacao.CommandText;
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

procedure TDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNewRecord(
  DataSet: TDataSet);
begin
  cdsNFe_InutilizacaoMODELO.AsString      := '55';
  cdsNFe_InutilizacaoDTUSUARIO.AsDateTime := Date;
  cdsNFe_InutilizacaoHRUSUARIO.AsDateTime := Now;
end;

procedure TDMCadNFe_Inutilizacao.dspNFe_InutilizacaoUpdateError(
  Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
  UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadNFe_Inutilizacao.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
