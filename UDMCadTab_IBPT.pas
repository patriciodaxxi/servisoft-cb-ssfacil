unit UDMCadTab_IBPT;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadTab_IBPT = class(TDataModule)
    sdsIBPT: TSQLDataSet;
    dspIBPT: TDataSetProvider;
    cdsIBPT: TClientDataSet;
    dsIBPT: TDataSource;
    sdsIBPTID: TIntegerField;
    sdsIBPTCODIGO: TStringField;
    sdsIBPTNOME: TStringField;
    sdsIBPTPERC_NACIONAL: TFloatField;
    sdsIBPTPERC_IMPORTACAO: TFloatField;
    cdsIBPTID: TIntegerField;
    cdsIBPTCODIGO: TStringField;
    cdsIBPTNOME: TStringField;
    cdsIBPTPERC_NACIONAL: TFloatField;
    cdsIBPTPERC_IMPORTACAO: TFloatField;
    sdsIBPTEX: TStringField;
    sdsIBPTTABELA: TStringField;
    cdsIBPTEX: TStringField;
    cdsIBPTTABELA: TStringField;
    qIBPT_Contador: TSQLQuery;
    qIBPT_ContadorCONTADOR: TIntegerField;
    sdsIBPTPERC_ESTADUAL: TFloatField;
    sdsIBPTPERC_MUNICIPAL: TFloatField;
    sdsIBPTDT_INICIO: TDateField;
    sdsIBPTDT_FINAL: TDateField;
    sdsIBPTCHAVE: TStringField;
    sdsIBPTVERSAO: TStringField;
    cdsIBPTPERC_ESTADUAL: TFloatField;
    cdsIBPTPERC_MUNICIPAL: TFloatField;
    cdsIBPTDT_INICIO: TDateField;
    cdsIBPTDT_FINAL: TDateField;
    cdsIBPTCHAVE: TStringField;
    cdsIBPTVERSAO: TStringField;
    sdsIBPTFONTE: TStringField;
    cdsIBPTFONTE: TStringField;
    qFilial: TSQLQuery;
    qFilialID: TIntegerField;
    qFilialNOME: TStringField;
    qFilialNOME_INTERNO: TStringField;
    qFilialUF: TStringField;
    qVerificaFilial: TSQLQuery;
    qVerificaFilialQTDE_FIL: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspIBPTUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgIBPT: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer ; Codigo : String = '' ; Ex : String = ''); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadTab_IBPT: TDMCadTab_IBPT;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadTab_IBPT.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsIBPT.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TAB_IBPT',0);

  cdsIBPT.Insert;
  cdsIBPTID.AsInteger := vAux;
end;

procedure TDMCadTab_IBPT.prc_Excluir;
begin
  if not(cdsIBPT.Active) or (cdsIBPT.IsEmpty) then
    exit;
  cdsIBPT.Delete;
  cdsIBPT.ApplyUpdates(0);
end;

procedure TDMCadTab_IBPT.prc_Gravar;
begin
  vMsgIBPT := '';
  if trim(cdsIBPTNOME.AsString) = '' then
    vMsgIBPT := 'Nome não informado!';
  if (trim(cdsIBPTCODIGO.AsString) = '') then
    vMsgIBPT := vMsgIBPT + #13 + 'Código do IBPT não informado!';
  if vMsgIBPT <> '' then
    exit;
    
  cdsIBPT.Post;
  cdsIBPT.ApplyUpdates(0);
end;

procedure TDMCadTab_IBPT.prc_Localizar(ID: Integer ; Codigo : String = '' ; Ex : String = ''); //-1 = Inclusão
begin
  cdsIBPT.Close;
  sdsIBPT.CommandText := ctCommand;
  if ID <> 0 then
    sdsIBPT.CommandText := sdsIBPT.CommandText + ' WHERE ID = ' + IntToStr(ID)
  else
  if trim(Codigo) <> '' then
  begin
    sdsIBPT.CommandText := sdsIBPT.CommandText + ' WHERE CODIGO = ' + QuotedStr(Codigo)
                         + ' AND EX = ' + QuotedStr(EX);
  end;
  cdsIBPT.Open;
end;

procedure TDMCadTab_IBPT.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsIBPT.CommandText;
  qFilial.Open;
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

procedure TDMCadTab_IBPT.dspIBPTUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadTab_IBPT.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
