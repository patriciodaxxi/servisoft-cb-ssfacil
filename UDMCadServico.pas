unit UDMCadServico;
                  
interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadServico = class(TDataModule)
    sdsServico: TSQLDataSet;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    dsServico: TDataSource;
    sdsServicoID: TIntegerField;
    sdsServicoCODIGO: TStringField;
    sdsServicoNOME: TStringField;
    sdsServicoTIPO_AS: TStringField;
    cdsServicoID: TIntegerField;
    cdsServicoCODIGO: TStringField;
    cdsServicoNOME: TStringField;
    cdsServicoTIPO_AS: TStringField;
    qVerifica_Sintetica: TSQLQuery;
    qVerifica_SinteticaID: TIntegerField;
    qVerifica_SinteticaCODIGO: TStringField;
    sdsServicoCNAE: TStringField;
    cdsServicoCNAE: TStringField;
    sdsServicoPERC_ISS: TFloatField;
    cdsServicoPERC_ISS: TFloatField;
    sdsServicoID_ATIVIDADE_CID: TIntegerField;
    cdsServicoID_ATIVIDADE_CID: TIntegerField;
    sdsAtividade_Cid: TSQLDataSet;
    dspAtividade_Cid: TDataSetProvider;
    cdsAtividade_Cid: TClientDataSet;
    cdsAtividade_CidID: TIntegerField;
    cdsAtividade_CidCODIGO: TStringField;
    cdsAtividade_CidNOME: TStringField;
    dsAtividade_Cid: TDataSource;
    sdsServicoCODIGO_NBS: TStringField;
    cdsServicoCODIGO_NBS: TStringField;
    sdsTab_IBPT: TSQLDataSet;
    dspTab_IBPT: TDataSetProvider;
    cdsTab_IBPT: TClientDataSet;
    dsTab_IBPT: TDataSource;
    sdsTab_IBPTID: TIntegerField;
    sdsTab_IBPTCODIGO: TStringField;
    sdsTab_IBPTEX: TStringField;
    sdsTab_IBPTTABELA: TStringField;
    sdsTab_IBPTNOME: TStringField;
    sdsTab_IBPTPERC_NACIONAL: TFloatField;
    sdsTab_IBPTPERC_IMPORTACAO: TFloatField;
    cdsTab_IBPTID: TIntegerField;
    cdsTab_IBPTCODIGO: TStringField;
    cdsTab_IBPTEX: TStringField;
    cdsTab_IBPTTABELA: TStringField;
    cdsTab_IBPTNOME: TStringField;
    cdsTab_IBPTPERC_NACIONAL: TFloatField;
    cdsTab_IBPTPERC_IMPORTACAO: TFloatField;
    qParametros: TSQLQuery;
    qParametrosLEI_TRANSPARENCIA_SERVICO: TStringField;
    sdsServicoCOD_SERVICO_EQUIV: TStringField;
    cdsServicoCOD_SERVICO_EQUIV: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspServicoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    procedure prc_Abrir_Tab_IBPT(Tabela : String);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctTab_IBPT : String;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadServico: TDMCadServico;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadServico}

procedure TDMCadServico.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsServico.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('SERVICO',0);

  cdsServico.Insert;
  cdsServicoID.AsInteger := vAux;
end;

procedure TDMCadServico.prc_Excluir;
begin
  if not(cdsServico.Active) or (cdsServico.IsEmpty) then
    exit;
  cdsServico.Delete;
  cdsServico.ApplyUpdates(0);
end;

procedure TDMCadServico.prc_Gravar;
var
  vCodAux : String;
  i : Integer;
begin
  vMsgErro := '';
  if trim(cdsServicoNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if trim(cdsServicoCODIGO.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Código Servico não informado!';
  if trim(cdsServicoTIPO_AS.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Tipo analítico ou sintético não informado!';
  i := Pos('.',cdsServicoCODIGO.AsString);
  vCodAux := cdsServicoCODIGO.AsString;
  if i > 0 then
    vCodAux := copy(vCodAux,1,i-1);
  qVerifica_Sintetica.Close;
  qVerifica_Sintetica.ParamByName('CODIGO').AsString := vCodAux;
  qVerifica_Sintetica.Open;
  if i > 0 then
  begin
    if qVerifica_Sintetica.IsEmpty then
      vMsgErro := vMsgErro + #13 + '*** Não existe a conta sintética = ' + vCodAux;
  end
  else
  begin
    if not(qVerifica_Sintetica.IsEmpty) and (qVerifica_SinteticaID.AsInteger <> cdsServicoID.AsInteger) then
      vMsgErro := vMsgErro + #13 + '*** Conta sintética já cadastrada!';
  end;

  if trim(vMsgErro) <> '' then
    exit;

  cdsServico.Post;
  cdsServico.ApplyUpdates(0);
end;

procedure TDMCadServico.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsServico.Close;
  sdsServico.CommandText := ctCommand;
  if ID <> 0 then
    sdsServico.CommandText := sdsServico.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsServico.Open;
end;

procedure TDMCadServico.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsServico.CommandText;
  ctTab_IBPT := sdsTab_IBPT.CommandText;
  cdsAtividade_Cid.Open;
  qParametros.Close;
  qParametros.Open;
  prc_Abrir_Tab_IBPT(copy(qParametrosLEI_TRANSPARENCIA_SERVICO.AsString,2,1));
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

procedure TDMCadServico.dspServicoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadServico.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadServico.prc_Abrir_Tab_IBPT(Tabela: String);
begin
  cdsTab_IBPT.Close;
  sdsTab_IBPT.CommandText := ctTab_IBPT + 'WHERE TABELA = ' + QuotedStr(Tabela);
  cdsTab_IBPT.Open;
end;

end.
