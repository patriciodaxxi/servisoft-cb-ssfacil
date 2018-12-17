unit UDMCadPlano_Contas;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadPlano_Contas = class(TDataModule)
    sdsPlano_Contas: TSQLDataSet;
    dspPlano_Contas: TDataSetProvider;
    cdsPlano_Contas: TClientDataSet;
    dsPlano_Contas: TDataSource;
    sdsSuperior: TSQLDataSet;
    dspSuperior: TDataSetProvider;
    cdsSuperior: TClientDataSet;
    dsSuperior: TDataSource;
    sqProximo: TSQLQuery;
    sqProximoMAX: TStringField;
    qCalculo: TSQLQuery;
    qCalculoVALOR: TFloatField;
    sdsPlano_ContasID: TIntegerField;
    sdsPlano_ContasDT_CADASTRO: TDateField;
    sdsPlano_ContasNIVEL: TIntegerField;
    sdsPlano_ContasTIPO_REG: TStringField;
    sdsPlano_ContasCOD_NATUREZA: TIntegerField;
    cdsPlano_ContasID: TIntegerField;
    cdsPlano_ContasDT_CADASTRO: TDateField;
    cdsPlano_ContasNIVEL: TIntegerField;
    cdsPlano_ContasTIPO_REG: TStringField;
    cdsPlano_ContasCOD_NATUREZA: TIntegerField;
    sdsPlano_ContasCODIGO: TStringField;
    cdsPlano_ContasCODIGO: TStringField;
    sdsPlano_ContasINATIVO: TStringField;
    cdsPlano_ContasINATIVO: TStringField;
    sdsPlano_ContasSUPERIOR: TIntegerField;
    cdsPlano_ContasSUPERIOR: TIntegerField;
    sdsSuperiorID: TIntegerField;
    sdsSuperiorCODIGO: TStringField;
    sdsSuperiorNOME: TStringField;
    sdsSuperiorNIVEL: TIntegerField;
    cdsSuperiorID: TIntegerField;
    cdsSuperiorCODIGO: TStringField;
    cdsSuperiorNOME: TStringField;
    cdsSuperiorNIVEL: TIntegerField;
    sdsPlano_ContasDT_INICIO_VALIDADE: TDateField;
    sdsPlano_ContasDT_FINAL_VALIDADE: TDateField;
    cdsPlano_ContasDT_INICIO_VALIDADE: TDateField;
    cdsPlano_ContasDT_FINAL_VALIDADE: TDateField;
    sdsPlano_ContasNOME: TStringField;
    sdsPlano_ContasNOME_AUX: TStringField;
    cdsPlano_ContasNOME: TStringField;
    cdsPlano_ContasNOME_AUX: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspPlano_ContasUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsPlano_ContasNewRecord(DataSet: TDataSet);
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
  DMCadPlano_Contas: TDMCadPlano_Contas;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadPlano_Contas.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsPlano_Contas.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PLANO_CONTAS',0);

  cdsPlano_Contas.Insert;
  cdsPlano_ContasID.AsInteger := vAux;
end;

procedure TDMCadPlano_Contas.prc_Excluir;
begin
  if not(cdsPlano_Contas.Active) or (cdsPlano_Contas.IsEmpty) then
    exit;
  cdsPlano_Contas.Delete;
  cdsPlano_Contas.ApplyUpdates(0);
end;

procedure TDMCadPlano_Contas.prc_Gravar;
begin
  vMsgConta := '';
  if trim(cdsPlano_ContasNOME.AsString) = '' then
    vMsgConta := '*** Nome não informada!';
  if (trim(cdsPlano_ContasCODIGO.AsString) = '') then
    vMsgConta := vMsgConta + #13 + '*** Código da conta não informado!';
  if vMsgConta <> '' then
    exit;
  case cdsPlano_ContasNIVEL.AsInteger of
    1 : cdsPlano_ContasNOME_AUX.AsString := cdsPlano_ContasNOME.AsString;
    2 : cdsPlano_ContasNOME_AUX.AsString := '  ' + cdsPlano_ContasNOME.AsString;
    3 : cdsPlano_ContasNOME_AUX.AsString := '    ' + cdsPlano_ContasNOME.AsString;
    4 : cdsPlano_ContasNOME_AUX.AsString := '      ' + cdsPlano_ContasNOME.AsString;
    5 : cdsPlano_ContasNOME_AUX.AsString := '        ' + cdsPlano_ContasNOME.AsString;
    6 : cdsPlano_ContasNOME_AUX.AsString := '          ' + cdsPlano_ContasNOME.AsString;
    7 : cdsPlano_ContasNOME_AUX.AsString := '            ' + cdsPlano_ContasNOME.AsString;
    8 : cdsPlano_ContasNOME_AUX.AsString := '              ' + cdsPlano_ContasNOME.AsString;
    9 : cdsPlano_ContasNOME_AUX.AsString := '                ' + cdsPlano_ContasNOME.AsString;
  end;
  cdsPlano_Contas.Post;
  cdsPlano_Contas.ApplyUpdates(0);
end;

procedure TDMCadPlano_Contas.prc_Localizar(ID: Integer);
begin
  cdsPlano_Contas.Close;
  sdsPlano_Contas.CommandText := ctCommand;
  if ID <> 0 then
    sdsPlano_Contas.CommandText := sdsPlano_Contas.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsPlano_Contas.Open;
end;

procedure TDMCadPlano_Contas.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsPlano_Contas.CommandText;
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

procedure TDMCadPlano_Contas.dspPlano_ContasUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadPlano_Contas.prc_Proximo_Codigo;
var
  vUlt: String;
  vProx: Integer;
  vNivel : Integer;
  sds: TSQLDataSet;
begin
  if (cdsPlano_ContasCODIGO.IsNull) or (cdsPlano_ContasCODIGO.AsString = '') then
  begin
    vNivel := cdsPlano_ContasNIVEL.AsInteger;
    if vNivel <= 1 then
      vNivel := 1;
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados; //--
      sds.NoMetadata  := True;
      sds.GetMetadata := False;
      sds.CommandText := ' SELECT MAX(CODIGO) CODIGO '
                       +  'FROM CONTA_ORCAMENTO '
                       +  'WHERE 0 = 0';
      if cdsPlano_ContasNIVEL.AsInteger > 1 then
        sds.CommandText := sds.CommandText + ' AND CODIGO LIKE ' + QuotedStr(cdsSuperiorCODIGO.AsString + '.%');
      sds.CommandText := sds.CommandText + ' AND NIVEL = ' + IntToStr(vNivel);
      sds.Open;
      vUlt := sds.FieldByName('CODIGO').AsString;
      if vNivel > 1 then
        vUlt := Copy(sds.FieldByName('CODIGO').AsString,Length(sds.FieldByName('CODIGO').AsString)-1,2);
      if trim(vUlt) = '' then
        vUlt := '0';
      vProx := StrToInt(vUlt) + 1;
      cdsPlano_ContasCODIGO.AsString := FormatFloat('000',vProx);
      if vNivel > 1 then
        cdsPlano_ContasCODIGO.AsString := cdsSuperiorCODIGO.AsString + '.' + FormatFloat('00',vProx);
      sds.Close;
    finally
      FreeAndNil(sds);
    end;
  end;
end;

procedure TDMCadPlano_Contas.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadPlano_Contas.cdsPlano_ContasNewRecord(DataSet: TDataSet);
begin
  cdsPlano_ContasINATIVO.AsString := 'N';
end;

end.
