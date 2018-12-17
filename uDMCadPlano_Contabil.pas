unit uDMCadPlano_Contabil;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadPlano_Contabil = class(TDataModule)
    sdsPlano_Contabil: TSQLDataSet;
    dspPlano_Contabil: TDataSetProvider;
    cdsPlano_Contabil: TClientDataSet;
    dsPlano_Contabil: TDataSource;
    sdsPlano_ContabilID: TIntegerField;
    sdsPlano_ContabilCODIGO: TStringField;
    sdsPlano_ContabilNOME: TStringField;
    sdsPlano_ContabilDT_CADASTRO: TDateField;
    sdsPlano_ContabilNIVEL: TIntegerField;
    sdsPlano_ContabilTIPO_REG: TStringField;
    sdsPlano_ContabilCOD_NATUREZA: TIntegerField;
    sdsPlano_ContabilINATIVO: TStringField;
    sdsPlano_ContabilSUPERIOR: TIntegerField;
    sdsPlano_ContabilDT_INICIO_VALIDADE: TDateField;
    sdsPlano_ContabilDT_FINAL_VALIDADE: TDateField;
    sdsPlano_ContabilNOME_AUX: TStringField;
    cdsPlano_ContabilID: TIntegerField;
    cdsPlano_ContabilCODIGO: TStringField;
    cdsPlano_ContabilNOME: TStringField;
    cdsPlano_ContabilDT_CADASTRO: TDateField;
    cdsPlano_ContabilNIVEL: TIntegerField;
    cdsPlano_ContabilTIPO_REG: TStringField;
    cdsPlano_ContabilCOD_NATUREZA: TIntegerField;
    cdsPlano_ContabilINATIVO: TStringField;
    cdsPlano_ContabilSUPERIOR: TIntegerField;
    cdsPlano_ContabilDT_INICIO_VALIDADE: TDateField;
    cdsPlano_ContabilDT_FINAL_VALIDADE: TDateField;
    cdsPlano_ContabilNOME_AUX: TStringField;
    sdsSuperior: TSQLDataSet;
    sdsSuperiorID: TIntegerField;
    sdsSuperiorCODIGO: TStringField;
    sdsSuperiorNOME: TStringField;
    sdsSuperiorNIVEL: TIntegerField;
    dspSuperior: TDataSetProvider;
    cdsSuperior: TClientDataSet;
    cdsSuperiorID: TIntegerField;
    cdsSuperiorCODIGO: TStringField;
    cdsSuperiorNOME: TStringField;
    cdsSuperiorNIVEL: TIntegerField;
    dsSuperior: TDataSource;
    sdsPlano_ContabilCODIGO_REDUZIDO: TIntegerField;
    cdsPlano_ContabilCODIGO_REDUZIDO: TIntegerField;
    qUltimoCodReduzido: TSQLQuery;
    qUltimoCodReduzidoULTIMO_CODIGO: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspPlano_ContabilUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsPlano_ContabilNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgConta: String;
    ctCommand: String;
    vItem_Plano_Contas : Integer;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Proximo_Codigo;

  end;

var
  DMCadPlano_Contabil: TDMCadPlano_Contabil;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao, StrUtils;

{$R *.dfm}

{ TDMCadPlano_Contabil }

procedure TDMCadPlano_Contabil.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadPlano_Contabil.prc_Excluir;
begin
  if not(cdsPlano_Contabil.Active) or (cdsPlano_Contabil.IsEmpty) then
    exit;
  cdsPlano_Contabil.Delete;
  cdsPlano_Contabil.ApplyUpdates(0);
end;

procedure TDMCadPlano_Contabil.prc_Gravar;
begin
  vMsgConta := '';
  if trim(cdsPlano_ContabilNOME.AsString) = '' then
    vMsgConta := '*** Nome não informada!';
  if (trim(cdsPlano_ContabilCODIGO.AsString) = '') then
    vMsgConta := vMsgConta + #13 + '*** Código da conta não informado!';
  if vMsgConta <> '' then
    exit;
  cdsPlano_Contabil.Post;
  cdsPlano_Contabil.ApplyUpdates(0);

end;

procedure TDMCadPlano_Contabil.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsPlano_Contabil.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PLANO_CONTABIL',0);

  cdsPlano_Contabil.Insert;
  cdsPlano_ContabilID.AsInteger := vAux;
end;

procedure TDMCadPlano_Contabil.prc_Localizar(ID: Integer);
begin
  cdsPlano_Contabil.Close;
  sdsPlano_Contabil.CommandText := ctCommand;
  if ID <> 0 then
    sdsPlano_Contabil.CommandText := sdsPlano_Contabil.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsPlano_Contabil.Open;
end;

procedure TDMCadPlano_Contabil.prc_Proximo_Codigo;
var
  vUlt: String;
  vProx: Integer;
  vNivel : Integer;
  sds: TSQLDataSet;
  s : String;
  i : Integer;
begin
  if (cdsPlano_ContabilCODIGO.IsNull) or (cdsPlano_ContabilCODIGO.AsString = '') then
  begin
    vNivel := cdsPlano_ContabilNIVEL.AsInteger;
    if vNivel <= 1 then
      vNivel := 1;
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados; //--
      sds.NoMetadata  := True;
      sds.GetMetadata := False;
      sds.CommandText := ' SELECT MAX(CODIGO) CODIGO '
                       +  'FROM PLANO_CONTABIL '
                       +  'WHERE 0 = 0';
      if cdsPlano_ContabilNIVEL.AsInteger > 1 then
        sds.CommandText := sds.CommandText + ' AND CODIGO LIKE ' + QuotedStr(cdsSuperiorCODIGO.AsString + '.%');
      sds.CommandText := sds.CommandText + ' AND NIVEL = ' + IntToStr(vNivel);
      sds.Open;
      vUlt := sds.FieldByName('CODIGO').AsString;
      if vNivel > 1 then
        vUlt := ReverseString(vUlt);
      i := pos('.', vUlt);
      vUlt := Copy(vUlt, 1, i - 1);
      i := i - 1;
      if trim(vUlt) = '' then
        vUlt := '0';
      vProx := StrToInt(vUlt) + 1;
      if i = 1 then
        cdsPlano_ContabilCODIGO.AsString := FormatFloat('0',vProx)
      else
      if i = 2 then
        cdsPlano_ContabilCODIGO.AsString := FormatFloat('0',vProx)
      else
        cdsPlano_ContabilCODIGO.AsString := FormatFloat('000',vProx);

      if vNivel > 1 then
        cdsPlano_ContabilCODIGO.AsString := cdsSuperiorCODIGO.AsString + '.' + cdsPlano_ContabilCODIGO.AsString;
      sds.Close;
    finally
      FreeAndNil(sds);
    end;
  end;

end;

procedure TDMCadPlano_Contabil.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;

begin
  ctCommand := sdsPlano_Contabil.CommandText;
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

procedure TDMCadPlano_Contabil.dspPlano_ContabilUpdateError(
  Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
  UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadPlano_Contabil.cdsPlano_ContabilNewRecord(
  DataSet: TDataSet);
begin
  cdsPlano_ContabilINATIVO.AsString := 'N';
end;

end.
