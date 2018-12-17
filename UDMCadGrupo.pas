unit UDMCadGrupo;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadGrupo = class(TDataModule)
    sdsGrupo: TSQLDataSet;
    sdsGrupoID: TIntegerField;
    sdsGrupoNOME: TStringField;
    sdsGrupoTIPO: TStringField;
    sdsGrupoCODIGO: TStringField;
    sdsGrupoNIVEL: TIntegerField;
    sdsGrupoSUPERIOR: TStringField;
    dspGrupo: TDataSetProvider;
    cdsGrupo: TClientDataSet;
    dsGrupo: TDataSource;
    cdsGrupoID: TIntegerField;
    cdsGrupoNOME: TStringField;
    cdsGrupoTIPO: TStringField;
    cdsGrupoCODIGO: TStringField;
    cdsGrupoNIVEL: TIntegerField;
    cdsGrupoSUPERIOR: TStringField;
    sdsSuperior: TSQLDataSet;
    sdsSuperiorID: TIntegerField;
    sdsSuperiorCODIGO: TStringField;
    dspSuperior: TDataSetProvider;
    cdsSuperior: TClientDataSet;
    cdsSuperiorID: TIntegerField;
    cdsSuperiorCODIGO: TStringField;
    dsSuperior: TDataSource;
    sdsSuperiorNOME: TStringField;
    cdsSuperiorNOME: TStringField;
    sdsSuperiorNIVEL: TIntegerField;
    cdsSuperiorNIVEL: TIntegerField;
    sdsGrupoCOD_PRINCIPAL: TIntegerField;
    cdsGrupoCOD_PRINCIPAL: TIntegerField;
    sdsSuperiorCOD_PRINCIPAL: TIntegerField;
    cdsSuperiorCOD_PRINCIPAL: TIntegerField;
    sdsGrupoNOME_AUX: TStringField;
    cdsGrupoNOME_AUX: TStringField;
    sdsGrupoTIPO_PROD: TStringField;
    cdsGrupoTIPO_PROD: TStringField;
    qParametros: TSQLQuery;
    qParametrosEMPRESA_AMBIENTES: TStringField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdQTD_CARACTER_NIVEL_GR: TIntegerField;
    sdsGrupoUNIDADE: TStringField;
    sdsGrupoID_NCM: TIntegerField;
    cdsGrupoUNIDADE: TStringField;
    cdsGrupoID_NCM: TIntegerField;
    sdsUnidade: TSQLDataSet;
    dspUnidade: TDataSetProvider;
    cdsUnidade: TClientDataSet;
    cdsUnidadeUNIDADE: TStringField;
    cdsUnidadeCONVERSOR: TFloatField;
    cdsUnidadeNOME: TStringField;
    dsUnidade: TDataSource;
    sdsNCM: TSQLDataSet;
    dspNCM: TDataSetProvider;
    cdsNCM: TClientDataSet;
    cdsNCMID: TIntegerField;
    cdsNCMNCM: TStringField;
    cdsNCMNOME: TStringField;
    dsNCM: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspGrupoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsGrupoNewRecord(DataSet: TDataSet);
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

    procedure prc_Proximo_Codigo;

  end;

var
  DMCadGrupo: TDMCadGrupo;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadCFOP}

procedure TDMCadGrupo.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsGrupo.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('GRUPO',0);

  cdsGrupo.Insert;
  cdsGrupoID.AsInteger := vAux;
end;

procedure TDMCadGrupo.prc_Excluir;
begin
  if not(cdsGrupo.Active) or (cdsGrupo.IsEmpty) then
    exit;
  cdsGrupo.Delete;
  cdsGrupo.ApplyUpdates(0);
end;

procedure TDMCadGrupo.prc_Gravar;
var
  i : Integer;
begin
  vMsgErro := '';
  if trim(cdsGrupoNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if trim(cdsGrupoCODIGO.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Código não informado!';
  if trim(cdsGrupoNIVEL.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nível não informado!';

  if trim(vMsgErro) <> '' then
    exit;

  i := pos('.',cdsGrupoCODIGO.AsString);
  if i > 0 then
    cdsGrupoCOD_PRINCIPAL.AsInteger := StrToInt(copy(cdsGrupoCODIGO.AsString,1,i-1))
  else
  if trim(cdsGrupoCODIGO.AsString) <> '' then
    cdsGrupoCOD_PRINCIPAL.AsInteger := StrToInt(cdsGrupoCODIGO.AsString);
    
  cdsGrupo.Post;
  cdsGrupo.ApplyUpdates(0);
end;

procedure TDMCadGrupo.prc_Localizar(ID : Integer); //-1 é para inclusão
begin
  cdsGrupo.Close;
  sdsGrupo.CommandText := ctCommand;
  if ID <> 0 then
    sdsGrupo.CommandText := sdsGrupo.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsGrupo.Open;
end;

procedure TDMCadGrupo.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsGrupo.CommandText;
  cdsSuperior.Open;
  qParametros.Open;
  qParametros_Prod.Open;
  cdsUnidade.Open;
  cdsNCM.Open;
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

procedure TDMCadGrupo.dspGrupoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadGrupo.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadGrupo.prc_Proximo_Codigo;
var
  vUlt: String;
  vProx: Integer;
  vNivel : Integer;
  sds: TSQLDataSet;
begin
  if (cdsGrupoCODIGO.IsNull) or (cdsGrupoCODIGO.AsString = '') then
  begin
    vNivel := cdsGrupoNIVEL.AsInteger;
    if vNivel <= 1 then
      vNivel := 1;
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados; //--
      sds.NoMetadata  := True;
      sds.GetMetadata := False;
      sds.CommandText := ' SELECT MAX(CODIGO) CODIGO '
                       +  'FROM GRUPO '
                       +  'WHERE 0 = 0';
      if cdsGrupoNIVEL.AsInteger > 1 then
        sds.CommandText := sds.CommandText + ' AND CODIGO LIKE ' + QuotedStr(cdsSuperiorCODIGO.AsString + '.%');
      sds.CommandText := sds.CommandText + ' AND NIVEL = ' + IntToStr(vNivel);
      sds.Open;
      vUlt := sds.FieldByName('CODIGO').AsString;
      if vNivel > 1 then
        vUlt := Copy(sds.FieldByName('CODIGO').AsString,Length(sds.FieldByName('CODIGO').AsString)-1,2);
      if trim(vUlt) = '' then
        vUlt := '0';
      vProx := StrToInt(vUlt) + 1;
      if qParametros_ProdQTD_CARACTER_NIVEL_GR.AsInteger = 3 then
        cdsGrupoCODIGO.AsString := FormatFloat('000',vProx)
      else
        cdsGrupoCODIGO.AsString := FormatFloat('00',vProx);
      if vNivel > 1 then
      begin
        if qParametros_ProdQTD_CARACTER_NIVEL_GR.AsInteger = 3 then
          cdsGrupoCODIGO.AsString := cdsSuperiorCODIGO.AsString + '.' + FormatFloat('000',vProx)
        else
          cdsGrupoCODIGO.AsString := cdsSuperiorCODIGO.AsString + '.' + FormatFloat('00',vProx);
      end;
      sds.Close;
    finally
      FreeAndNil(sds);
    end;
  end;
end;

procedure TDMCadGrupo.cdsGrupoNewRecord(DataSet: TDataSet);
begin
  cdsGrupoTIPO_PROD.AsString := 'O';
end;

end.
