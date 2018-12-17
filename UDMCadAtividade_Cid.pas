unit UDMCadAtividade_Cid;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadAtividade_Cid = class(TDataModule)
    sdsAtividade_Cid: TSQLDataSet;
    dspAtividade_Cid: TDataSetProvider;
    cdsAtividade_Cid: TClientDataSet;
    dsAtividade_Cid: TDataSource;
    sdsAtividade_CidID: TIntegerField;
    sdsAtividade_CidCODIGO: TStringField;
    sdsAtividade_CidNOME: TStringField;
    cdsAtividade_CidID: TIntegerField;
    cdsAtividade_CidCODIGO: TStringField;
    cdsAtividade_CidNOME: TStringField;
    sdsAtividade_CidID_SERVICO_PADRAO: TIntegerField;
    sdsAtividade_CidPERC_ISSQN: TFloatField;
    sdsAtividade_CidDT_INICIO_VIGENCIA: TDateField;
    sdsAtividade_CidDT_FINAL_VIGENCIA: TDateField;
    cdsAtividade_CidID_SERVICO_PADRAO: TIntegerField;
    cdsAtividade_CidPERC_ISSQN: TFloatField;
    cdsAtividade_CidDT_INICIO_VIGENCIA: TDateField;
    cdsAtividade_CidDT_FINAL_VIGENCIA: TDateField;
    sdsServico: TSQLDataSet;
    sdsServicoID: TIntegerField;
    sdsServicoCODIGO: TStringField;
    sdsServicoNOME: TStringField;
    sdsServicoTIPO_AS: TStringField;
    sdsServicoCNAE: TStringField;
    sdsServicoPERC_ISS: TFloatField;
    sdsServicoID_ATIVIDADE_CID: TIntegerField;
    sdsServicoCODIGO_NBS: TStringField;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    cdsServicoID: TIntegerField;
    cdsServicoCODIGO: TStringField;
    cdsServicoNOME: TStringField;
    cdsServicoTIPO_AS: TStringField;
    cdsServicoCNAE: TStringField;
    cdsServicoPERC_ISS: TFloatField;
    cdsServicoID_ATIVIDADE_CID: TIntegerField;
    cdsServicoCODIGO_NBS: TStringField;
    dsServico: TDataSource;
    qServico: TSQLQuery;
    qServicoID: TIntegerField;
    qServicoCODIGO: TStringField;
    qServicoNOME: TStringField;
    qServicoTIPO_AS: TStringField;
    qServicoCNAE: TStringField;
    qServicoPERC_ISS: TFloatField;
    qServicoID_ATIVIDADE_CID: TIntegerField;
    qServicoCODIGO_NBS: TStringField;
    sdsAtividade_CidCOD_SERVICO: TStringField;
    cdsAtividade_CidCOD_SERVICO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspAtividade_CidUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgAtividade_Cid : String;
    ctCommand : String;

    procedure prc_Localizar(ID : Integer ; Codigo : String = '' ); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadAtividade_Cid: TDMCadAtividade_Cid;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadAtividade_Cid.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsAtividade_Cid.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('ATIVIDADE_CID',0);

  cdsAtividade_Cid.Insert;
  cdsAtividade_CidID.AsInteger := vAux;
end;

procedure TDMCadAtividade_Cid.prc_Excluir;
begin
  if not(cdsAtividade_Cid.Active) or (cdsAtividade_Cid.IsEmpty) then
    exit;
  cdsAtividade_Cid.Delete;
  cdsAtividade_Cid.ApplyUpdates(0);
end;

procedure TDMCadAtividade_Cid.prc_Gravar;
begin
  vMsgAtividade_Cid := '';
  if trim(cdsAtividade_CidNOME.AsString) = '' then
    vMsgAtividade_Cid := 'Nome não informado!';
  if (trim(cdsAtividade_CidCODIGO.AsString) = '') then
    vMsgAtividade_Cid := vMsgAtividade_Cid + #13 + 'Código da atividade não informada!';
  if vMsgAtividade_Cid <> '' then
    exit;
    
  cdsAtividade_Cid.Post;
  cdsAtividade_Cid.ApplyUpdates(0);
end;

procedure TDMCadAtividade_Cid.prc_Localizar(ID : Integer ; Codigo : String = '' ); //-1 = Inclusão
begin
  cdsAtividade_Cid.Close;
  sdsAtividade_Cid.CommandText := ctCommand;                                                      
  if ID <> 0 then
    sdsAtividade_Cid.CommandText := sdsAtividade_Cid.CommandText + ' WHERE ID = ' + IntToStr(ID)
  else
    sdsAtividade_Cid.CommandText := sdsAtividade_Cid.CommandText + ' WHERE CODIGO = ' + QuotedStr(Codigo);
  cdsAtividade_Cid.Open;
end;

procedure TDMCadAtividade_Cid.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsAtividade_Cid.CommandText;
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

procedure TDMCadAtividade_Cid.dspAtividade_CidUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadAtividade_Cid.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
