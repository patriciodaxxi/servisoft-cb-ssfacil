unit UDMCadAtelier_Fic;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadAtelier_Fic = class(TDataModule)
    sdsAtelier_Fic: TSQLDataSet;
    dspAtelier_Fic: TDataSetProvider;
    cdsAtelier_Fic: TClientDataSet;
    dsAtelier_Fic: TDataSource;
    sdsAtelier_FicID: TIntegerField;
    sdsAtelier_FicID_ATELIER: TIntegerField;
    sdsAtelier_FicADEFINIR: TStringField;
    cdsAtelier_FicID: TIntegerField;
    cdsAtelier_FicID_ATELIER: TIntegerField;
    cdsAtelier_FicADEFINIR: TStringField;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaCNPJ_CPF: TStringField;
    cdsPessoaCIDADE: TStringField;
    cdsAtelier_FicclNome_Atelier: TStringField;
    qVer: TSQLQuery;
    qVerCONTADOR: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspAtelier_FicUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsAtelier_FicNewRecord(DataSet: TDataSet);
    procedure cdsAtelier_FicCalcFields(DataSet: TDataSet);
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

  end;

var
  DMCadAtelier_Fic: TDMCadAtelier_Fic;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadAtelier_Fic.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsAtelier_Fic.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('ATELIER_FIC',0);

  cdsAtelier_Fic.Insert;
  cdsAtelier_FicID.AsInteger := vAux;
end;

procedure TDMCadAtelier_Fic.prc_Excluir;
begin
  if not(cdsAtelier_Fic.Active) or (cdsAtelier_Fic.IsEmpty) then
    exit;
  cdsAtelier_Fic.Delete;
  cdsAtelier_Fic.ApplyUpdates(0);
end;

procedure TDMCadAtelier_Fic.prc_Gravar;
begin
  vMsgErro := '';
  qVer.Close;
  qVer.ParamByName('ID_ATELIER').AsInteger := cdsAtelier_FicID_ATELIER.AsInteger;
  qVer.Open;
  if qVerCONTADOR.AsInteger > 0 then
    vMsgErro := '*** Atelier já informado!';
  if cdsAtelier_FicID_ATELIER.AsInteger <= 0 then
    vMsgErro := vMsgErro + '*** Atelier não informado';
  if vMsgErro <> '' then
    exit;
  cdsAtelier_Fic.Post;
  cdsAtelier_Fic.ApplyUpdates(0);
end;

procedure TDMCadAtelier_Fic.prc_Localizar(ID : Integer);
begin
  cdsAtelier_Fic.Close;
  sdsAtelier_Fic.CommandText := ctCommand;
  if ID <> 0 then
    sdsAtelier_Fic.CommandText := sdsAtelier_Fic.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsAtelier_Fic.Open;
end;

procedure TDMCadAtelier_Fic.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsAtelier_Fic.CommandText;

  cdsPessoa.Open;
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

procedure TDMCadAtelier_Fic.dspAtelier_FicUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadAtelier_Fic.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadAtelier_Fic.cdsAtelier_FicNewRecord(DataSet: TDataSet);
begin
  cdsAtelier_FicADEFINIR.AsString := 'N';
end;

procedure TDMCadAtelier_Fic.cdsAtelier_FicCalcFields(DataSet: TDataSet);
begin
  cdsAtelier_FicclNome_Atelier.AsString := '';
  if cdsAtelier_FicID_ATELIER.AsInteger > 0 then
  begin
    if cdsPessoa.Locate('CODIGO',cdsAtelier_FicID_ATELIER.AsInteger, ([Locaseinsensitive])) then
      cdsAtelier_FicclNome_Atelier.AsString := cdsPessoaNOME.AsString;
  end;
end;

end.
