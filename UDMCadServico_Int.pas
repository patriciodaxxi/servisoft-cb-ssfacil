unit UDMCadServico_Int;
                  
interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadServico_Int = class(TDataModule)
    sdsServico_Int: TSQLDataSet;
    dspServico_Int: TDataSetProvider;
    cdsServico_Int: TClientDataSet;
    dsServico_Int: TDataSource;
    sdsServico_IntID: TIntegerField;
    sdsServico_IntNOME: TStringField;
    sdsServico_IntVLR_UNITARIO: TFloatField;
    cdsServico_IntID: TIntegerField;
    cdsServico_IntNOME: TStringField;
    cdsServico_IntVLR_UNITARIO: TFloatField;
    sdsServico_IntID_VENDEDOR: TIntegerField;
    sdsServico_IntPERC_COMISSAO: TFloatField;
    cdsServico_IntID_VENDEDOR: TIntegerField;
    cdsServico_IntPERC_COMISSAO: TFloatField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosTIPO_COMISSAO_NFSE: TStringField;
    qParametrosTIPO_COMISSAO_PROD: TStringField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    dsVendedor: TDataSource;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    sdsTab_IBPT: TSQLDataSet;
    sdsTab_IBPTID: TIntegerField;
    sdsTab_IBPTCODIGO: TStringField;
    sdsTab_IBPTEX: TStringField;
    sdsTab_IBPTTABELA: TStringField;
    sdsTab_IBPTNOME: TStringField;
    sdsTab_IBPTPERC_NACIONAL: TFloatField;
    sdsTab_IBPTPERC_IMPORTACAO: TFloatField;
    dspTab_IBPT: TDataSetProvider;
    cdsTab_IBPT: TClientDataSet;
    cdsTab_IBPTID: TIntegerField;
    cdsTab_IBPTCODIGO: TStringField;
    cdsTab_IBPTEX: TStringField;
    cdsTab_IBPTTABELA: TStringField;
    cdsTab_IBPTNOME: TStringField;
    cdsTab_IBPTPERC_NACIONAL: TFloatField;
    cdsTab_IBPTPERC_IMPORTACAO: TFloatField;
    dsTab_IBPT: TDataSource;
    sdsServico_IntCODIGO_NBS: TStringField;
    cdsServico_IntCODIGO_NBS: TStringField;
    qParametrosLEI_TRANSPARENCIA_SERVICO: TStringField;
    sdsServico_IntID_SERVICO_PADRAO: TIntegerField;
    cdsServico_IntID_SERVICO_PADRAO: TIntegerField;
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
    qFilial: TSQLQuery;
    qFilialID_SERVICO_SINT: TIntegerField;
    qFilialCODIGO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspServico_IntUpdateError(Sender: TObject;
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
    ctServico : String;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Abrir_Servico;

  end;

var
  DMCadServico_Int: TDMCadServico_Int;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao, Variants;

{$R *.dfm}

{ TDMCadServico}

procedure TDMCadServico_Int.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsServico_Int.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('SERVICO_INT',0);

  cdsServico_Int.Insert;
  cdsServico_IntID.AsInteger := vAux;
end;

procedure TDMCadServico_Int.prc_Excluir;
begin
  if not(cdsServico_Int.Active) or (cdsServico_Int.IsEmpty) then
    exit;
  cdsServico_Int.Delete;
  cdsServico_Int.ApplyUpdates(0);
end;

procedure TDMCadServico_Int.prc_Gravar;
var
  vCodAux : String;
  i : Integer;
begin
  vMsgErro := '';
  if trim(cdsServico_IntNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';

  if trim(vMsgErro) <> '' then
    exit;

  cdsServico_Int.Post;
  cdsServico_Int.ApplyUpdates(0);
end;

procedure TDMCadServico_Int.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsServico_Int.Close;
  sdsServico_Int.CommandText := ctCommand;
  if ID <> 0 then
    sdsServico_Int.CommandText := sdsServico_Int.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsServico_Int.Open;
end;

procedure TDMCadServico_Int.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsServico_Int.CommandText;
  ctTab_IBPT := sdsTab_IBPT.CommandText;
  ctServico  := sdsServico.CommandText;
  qParametros.Open;
  if qParametrosTIPO_COMISSAO_NFSE.AsString = 'I' then
    cdsVendedor.Open;
  prc_Abrir_Tab_IBPT(copy(qParametrosLEI_TRANSPARENCIA_SERVICO.AsString,2,1));
  prc_Abrir_Servico;
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

procedure TDMCadServico_Int.dspServico_IntUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadServico_Int.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadServico_Int.prc_Abrir_Tab_IBPT(Tabela: String);
begin
  cdsTab_IBPT.Close;
  sdsTab_IBPT.CommandText := ctTab_IBPT + 'WHERE TABELA = ' + QuotedStr(Tabela);
  cdsTab_IBPT.Open;
end;

procedure TDMCadServico_Int.prc_Abrir_Servico;
var
  vCodServicoAux : String;
begin
  vCodServicoAux := '';
  qFilial.Close;
  qFilial.Open;
  while not qFilial.Eof do
  begin
    if trim(vCodServicoAux) <> '' then
      vCodServicoAux := vCodServicoAux + ' OR (CODIGO LIKE ' + QuotedStr(qFilialCODIGO.AsString + '.%') + ')'
    else
      vCodServicoAux := ' WHERE (CODIGO LIKE ' + QuotedStr(qFilialCODIGO.AsString + '.%') + ')';
    qFilial.Next;
  end;
  cdsServico.Close;
  if trim(vCodServicoAux) <> '' then
    sdsServico.CommandText := ctServico + vCodServicoAux;
  cdsServico.Open;
end;

end.
