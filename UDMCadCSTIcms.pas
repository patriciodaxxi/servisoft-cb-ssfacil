unit UDMCadCSTIcms;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadCSTIcms = class(TDataModule)
    sdsTab_CSTIcms: TSQLDataSet;
    dspTab_CSTIcms: TDataSetProvider;
    cdsTab_CSTIcms: TClientDataSet;
    dsTab_CSTIcms: TDataSource;
    sdsTab_CSTIcmsID: TIntegerField;
    sdsTab_CSTIcmsPERCENTUAL: TFloatField;
    sdsTab_CSTIcmsHISTORICO: TMemoField;
    sdsTab_CSTIcmsCOD_CST: TStringField;
    sdsTab_CSTIcmsTIPO: TStringField;
    sdsTab_CSTIcmsNOME: TStringField;
    cdsTab_CSTIcmsID: TIntegerField;
    cdsTab_CSTIcmsPERCENTUAL: TFloatField;
    cdsTab_CSTIcmsHISTORICO: TMemoField;
    cdsTab_CSTIcmsCOD_CST: TStringField;
    cdsTab_CSTIcmsTIPO: TStringField;
    cdsTab_CSTIcmsNOME: TStringField;
    sdsDesoneracao: TSQLDataSet;
    dspDesoneracao: TDataSetProvider;
    cdsDesoneracao: TClientDataSet;
    dsDesoneracao: TDataSource;
    sdsDesoneracaoCOD_CST_ICMS: TStringField;
    sdsDesoneracaoCOD_DESONERACAO: TSmallintField;
    sdsDesoneracaoNOME: TStringField;
    cdsDesoneracaoCOD_CST_ICMS: TStringField;
    cdsDesoneracaoCOD_DESONERACAO: TSmallintField;
    cdsDesoneracaoNOME: TStringField;
    sdsTab_CSTIcmsUSA_DESONERACAO: TStringField;
    sdsTab_CSTIcmsCOD_DESONERACAO: TSmallintField;
    cdsTab_CSTIcmsUSA_DESONERACAO: TStringField;
    cdsTab_CSTIcmsCOD_DESONERACAO: TSmallintField;
    sdsTab_CSTIcmsPERC_DIFERIMENTO: TFloatField;
    cdsTab_CSTIcmsPERC_DIFERIMENTO: TFloatField;
    qParametros: TSQLQuery;
    qParametrosUSA_DESONERACAO: TStringField;
    sdsTab_CSTIcmsCALCULA_FCP: TStringField;
    cdsTab_CSTIcmsCALCULA_FCP: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspTab_CSTIcmsUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsTab_CSTIcmsNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;

    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    procedure prc_Abrir_Desoneracao(Cod_CST : String);

  end;

var
  DMCadCSTIcms: TDMCadCSTIcms;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCSTIcms.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsTab_CSTIcms.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TAB_CSTICMS',0);

  cdsTab_CSTIcms.Insert;
  cdsTab_CSTIcmsID.AsInteger := vAux;
end;

procedure TDMCadCSTIcms.prc_Excluir;
begin
  if not(cdsTab_CSTIcms.Active) or (cdsTab_CSTIcms.IsEmpty) then
    exit;
  cdsTab_CSTIcms.Delete;
  cdsTab_CSTIcms.ApplyUpdates(0);
end;

procedure TDMCadCSTIcms.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsTab_CSTIcmsNOME.AsString) = '' then
    vMsgErro := vMsgErro + '*** Nome não informado!';
  if (cdsTab_CSTIcmsTIPO.AsString <> 'N') and (cdsTab_CSTIcmsTIPO.AsString <> 'S') then
    vMsgErro := vMsgErro + '*** Tipo da empresa não informado!';
  if (cdsTab_CSTIcmsTIPO.AsString = 'N') and (Length(cdsTab_CSTIcmsCOD_CST.AsString) > 2) then
    vMsgErro := vMsgErro + '*** Código inválido!';
  if (cdsTab_CSTIcmsTIPO.AsString = 'S') and (Length(cdsTab_CSTIcmsCOD_CST.AsString) < 3) then
    vMsgErro := vMsgErro + '*** Código inválido!';
  if vMsgErro <> '' then
    exit;
  cdsTab_CSTIcms.Post;
  cdsTab_CSTIcms.ApplyUpdates(0);
end;

procedure TDMCadCSTIcms.prc_Localizar(ID : Integer);
begin
  cdsTab_CSTIcms.Close;
  sdsTab_CSTIcms.CommandText := ctCommand;
  if ID <> 0 then
    sdsTab_CSTIcms.CommandText := sdsTab_CSTIcms.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsTab_CSTIcms.Open;
end;

procedure TDMCadCSTIcms.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsTab_CSTIcms.CommandText;
  qParametros.Open;

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
  cdsTab_CSTIcms.IndexFieldNames := 'COD_CST';
  cdsDesoneracao.IndexFieldNames := 'COD_DESONERACAO';
end;

procedure TDMCadCSTIcms.dspTab_CSTIcmsUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadCSTIcms.cdsTab_CSTIcmsNewRecord(DataSet: TDataSet);
begin
  cdsTab_CSTIcmsUSA_DESONERACAO.AsString := 'N';
  cdsTab_CSTIcmsCALCULA_FCP.AsString     := 'N';
end;

procedure TDMCadCSTIcms.prc_Abrir_Desoneracao(Cod_CST: String);
begin
  cdsDesoneracao.Close;
  sdsDesoneracao.ParamByName('COD_CST_ICMS').AsString := Cod_CST;
  cdsDesoneracao.Open;
end;

procedure TDMCadCSTIcms.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
