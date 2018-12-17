unit UDMCadUF;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadUF = class(TDataModule)
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    dsUF: TDataSource;
    sdsUFUF: TStringField;
    sdsUFPERC_ICMS: TFloatField;
    sdsUFIDPAIS: TIntegerField;
    sdsUFCODUF: TStringField;
    sdsUFPERC_ICMS_INTERNO: TFloatField;
    cdsUFUF: TStringField;
    cdsUFPERC_ICMS: TFloatField;
    cdsUFIDPAIS: TIntegerField;
    cdsUFCODUF: TStringField;
    cdsUFPERC_ICMS_INTERNO: TFloatField;
    sdsPais: TSQLDataSet;
    dspPais: TDataSetProvider;
    cdsPais: TClientDataSet;
    dsPais: TDataSource;
    sdsPaisID: TIntegerField;
    sdsPaisNOME: TStringField;
    cdsPaisID: TIntegerField;
    cdsPaisNOME: TStringField;
    cdsUFclNomePais: TStringField;
    qPais: TSQLQuery;
    qPaisNOME: TStringField;
    sdsUFPERC_CP: TFloatField;
    cdsUFPERC_CP: TFloatField;
    sdsUFQTD_DIGITOS_IE: TIntegerField;
    cdsUFQTD_DIGITOS_IE: TIntegerField;
    sdsUFEXIGE_CBENEF: TStringField;
    cdsUFEXIGE_CBENEF: TStringField;
    sdsUFACEITA_ISENTO: TStringField;
    cdsUFACEITA_ISENTO: TStringField;
    sdsUFPOSSUI_FCP: TStringField;
    cdsUFPOSSUI_FCP: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspUFUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsUFCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgUF : String;
    ctCommand : String;
    procedure prc_Localizar(UF : String); //'0' - Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadUF: TDMCadUF;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadUF.prc_Inserir;
begin
  if not cdsUF.Active then
    prc_Localizar('0');

  cdsUF.Insert;
end;

procedure TDMCadUF.prc_Excluir;
begin
  if not(cdsUF.Active) or (cdsUF.IsEmpty) then
    exit;
  cdsUF.Delete;
  cdsUF.ApplyUpdates(0);
end;

procedure TDMCadUF.prc_Gravar;
begin
  vMsgUF := '';
  if trim(cdsUFUF.AsString) = '' then
  begin
    vMsgUF := 'UF não informada!';
    exit;
  end;
  cdsUF.Post;
  cdsUF.ApplyUpdates(0);
end;

procedure TDMCadUF.prc_Localizar(UF : String); //
begin
  cdsUF.Close;
  sdsUF.CommandText := ctCommand;
  if UF <> '' then
    sdsUF.CommandText := sdsUF.CommandText
                         + ' WHERE UF = ' + QuotedStr(UF);
  cdsUF.Open;
end;

procedure TDMCadUF.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsUF.CommandText;
  cdsPais.Close;
  cdsPais.Open;
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

procedure TDMCadUF.dspUFUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadUF.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadUF.cdsUFCalcFields(DataSet: TDataSet);
begin
  if cdsUFIDPAIS.AsInteger > 0 then
  begin
    qPais.Close;
    qPais.ParamByName('ID').AsInteger := cdsUFIDPAIS.AsInteger;
    qPais.Open;
    cdsUFclNomePais.AsString := qPaisNOME.AsString;
    qPais.Close;
  end;
end;

end.
