unit UDMCadContabilista;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadContabilista = class(TDataModule)
    sdsContabilista: TSQLDataSet;
    dspContabilista: TDataSetProvider;
    cdsContabilista: TClientDataSet;
    dsContabilista: TDataSource;
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    sdsCidadeID: TIntegerField;
    sdsCidadeNOME: TStringField;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
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
    sdsCidadeUF: TStringField;
    cdsCidadeUF: TStringField;
    sdsCidadeID_PROVEDOR: TIntegerField;
    cdsCidadeID_PROVEDOR: TIntegerField;
    sdsCidadeTIPO_NATUREZA: TStringField;
    cdsCidadeTIPO_NATUREZA: TStringField;
    sdsContabilistaID: TIntegerField;
    sdsContabilistaNOME: TStringField;
    sdsContabilistaCPF: TStringField;
    sdsContabilistaCRC: TStringField;
    sdsContabilistaCNPJ: TStringField;
    sdsContabilistaID_CIDADE: TIntegerField;
    sdsContabilistaCEP: TStringField;
    sdsContabilistaENDERECO: TStringField;
    sdsContabilistaNUM_END: TStringField;
    sdsContabilistaCOMPLEMENTO_END: TStringField;
    sdsContabilistaBAIRRO: TStringField;
    sdsContabilistaCIDADE: TStringField;
    sdsContabilistaUF: TStringField;
    sdsContabilistaDDD_FONE: TStringField;
    sdsContabilistaFONE: TStringField;
    sdsContabilistaDDD_FAX: TStringField;
    sdsContabilistaFAX: TStringField;
    sdsContabilistaEMAIL: TStringField;
    cdsContabilistaID: TIntegerField;
    cdsContabilistaNOME: TStringField;
    cdsContabilistaCPF: TStringField;
    cdsContabilistaCRC: TStringField;
    cdsContabilistaCNPJ: TStringField;
    cdsContabilistaID_CIDADE: TIntegerField;
    cdsContabilistaCEP: TStringField;
    cdsContabilistaENDERECO: TStringField;
    cdsContabilistaNUM_END: TStringField;
    cdsContabilistaCOMPLEMENTO_END: TStringField;
    cdsContabilistaBAIRRO: TStringField;
    cdsContabilistaCIDADE: TStringField;
    cdsContabilistaUF: TStringField;
    cdsContabilistaDDD_FONE: TStringField;
    cdsContabilistaFONE: TStringField;
    cdsContabilistaDDD_FAX: TStringField;
    cdsContabilistaFAX: TStringField;
    cdsContabilistaEMAIL: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspContabilistaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsContabilistaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgContabilista : String;
    ctCommand : String;

    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadContabilista: TDMCadContabilista;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadContabilista.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsContabilista.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CONTABILISTA',0);

  cdsContabilista.Insert;
  cdsContabilistaID.AsInteger := vAux;
end;

procedure TDMCadContabilista.prc_Excluir;
begin
  if not(cdsContabilista.Active) or (cdsContabilista.IsEmpty) then
    exit;
  cdsContabilista.Delete;
  cdsContabilista.ApplyUpdates(0);
end;

procedure TDMCadContabilista.prc_Gravar;
begin
  vMsgContabilista := '';
  if trim(cdsContabilistaNOME.AsString) = '' then
    vMsgContabilista := '*** Nome não informado!';
  if (trim(cdsContabilistaCNPJ.AsString) = '')  then
    vMsgContabilista := vMsgContabilista + #13 + '*** CNPJ não informado!';
  if (trim(cdsContabilistaCPF.AsString) = '')  then
    vMsgContabilista := vMsgContabilista + #13 + '*** CPF não informado!';
  if vMsgContabilista <> '' then
    exit;
  cdsContabilista.Post;
  cdsContabilista.ApplyUpdates(0);
end;

procedure TDMCadContabilista.prc_Localizar(ID: Integer);
begin
  cdsContabilista.Close;
  sdsContabilista.CommandText := ctCommand;
  if ID <> 0 then
    sdsContabilista.CommandText := sdsContabilista.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsContabilista.Open;
end;

procedure TDMCadContabilista.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsContabilista.CommandText;
  cdsUF.Open;
  cdsCidade.Open;
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

procedure TDMCadContabilista.dspContabilistaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadContabilista.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadContabilista.cdsContabilistaNewRecord(DataSet: TDataSet);
begin
  cdsContabilistaCNPJ.EditMask := '00.000.000/0000-00';
  cdsContabilistaCPF.EditMask  := '000.000.000-00';
end;

end.
