unit UDMCadCidade;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadCidade = class(TDataModule)
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    dsUF: TDataSource;
    sdsCidadeID: TIntegerField;
    sdsCidadeNOME: TStringField;
    sdsCidadeUF: TStringField;
    sdsCidadeCODMUNICIPIO: TStringField;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    sdsUFUF: TStringField;
    cdsUFUF: TStringField;
    sdsCidadeID_PROVEDOR: TIntegerField;
    cdsCidadeID_PROVEDOR: TIntegerField;
    sdsProvedor: TSQLDataSet;
    sdsProvedorID: TIntegerField;
    sdsProvedorNOME: TStringField;
    sdsProvedorOBS: TMemoField;
    sdsProvedorTIPO_NATUREZA: TStringField;
    dspProvedor: TDataSetProvider;
    cdsProvedor: TClientDataSet;
    cdsProvedorID: TIntegerField;
    cdsProvedorNOME: TStringField;
    cdsProvedorOBS: TMemoField;
    cdsProvedorTIPO_NATUREZA: TStringField;
    dsProvedor: TDataSource;
    sdsCidadeLINKNFSE: TStringField;
    cdsCidadeLINKNFSE: TStringField;
    sdsCidadeFONE_PREFEITURA: TStringField;
    sdsCidadeSITE_PREFEITURA: TStringField;
    sdsCidadeEND_LOGO_PREFEITURA: TStringField;
    cdsCidadeFONE_PREFEITURA: TStringField;
    cdsCidadeSITE_PREFEITURA: TStringField;
    cdsCidadeEND_LOGO_PREFEITURA: TStringField;
    sdsCidadeCANCELAMENTO_NFSE: TStringField;
    cdsCidadeCANCELAMENTO_NFSE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCidadeUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgCidade : String;
    ctCommand : String;

    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadCidade: TDMCadCidade;

implementation

uses DmdDatabase, uUtilPadrao, LogProvider;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCidade.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsCidade.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CIDADE',0);

  cdsCidade.Insert;
  cdsCidadeID.AsInteger := vAux;
end;

procedure TDMCadCidade.prc_Excluir;
begin
  if not(cdsCidade.Active) or (cdsCidade.IsEmpty) then
    exit;
  cdsCidade.Delete;
  cdsCidade.ApplyUpdates(0);
end;

procedure TDMCadCidade.prc_Gravar;
begin
  vMsgCidade := '';
  if trim(cdsCidadeNOME.AsString) = '' then
    vMsgCidade := 'Nome não informado!';
  if (trim(cdsCidadeCODMUNICIPIO.AsString) = '') or (Length(cdsCidadeCODMUNICIPIO.AsString) < 7) then
    vMsgCidade := vMsgCidade + #13 + 'Código do munícipio não informado ou menor que 7 dígitos!';
  if trim(cdsCidadeUF.AsString) = '' then
    vMsgCidade := vMsgCidade + #13 + 'UF não informada!';
  if vMsgCidade <> '' then
    exit;
    
  cdsCidade.Post;
  cdsCidade.ApplyUpdates(0);
  vID_Cidade_Pos := cdsCidadeID.AsInteger;
end;

procedure TDMCadCidade.prc_Localizar(ID : Integer);
begin
  cdsCidade.Close;
  sdsCidade.CommandText := ctCommand;
  if ID <> 0 then
    sdsCidade.CommandText := sdsCidade.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsCidade.Open;
end;

procedure TDMCadCidade.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsCidade.CommandText;
  cdsUF.Close;
  cdsUF.Open;
  cdsProvedor.Close;
  cdsProvedor.Open;
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

procedure TDMCadCidade.dspCidadeUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadCidade.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
