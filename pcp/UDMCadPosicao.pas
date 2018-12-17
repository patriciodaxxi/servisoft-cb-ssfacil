unit UDMCadPosicao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadPosicao = class(TDataModule)
    sdsPosicao: TSQLDataSet;
    dspPosicao: TDataSetProvider;
    cdsPosicao: TClientDataSet;
    dsPosicao: TDataSource;
    sdsPosicaoID: TIntegerField;
    sdsPosicaoNOME: TStringField;
    sdsPosicaoIMP_TALAO: TStringField;
    cdsPosicaoID: TIntegerField;
    cdsPosicaoNOME: TStringField;
    cdsPosicaoIMP_TALAO: TStringField;
    sdsPosicaoIMP_MATERIAL: TStringField;
    sdsPosicaoIMP_AGRUPADO_MATERIAL: TStringField;
    cdsPosicaoIMP_MATERIAL: TStringField;
    cdsPosicaoIMP_AGRUPADO_MATERIAL: TStringField;
    sdsPosicaoGERAR_TALAO: TStringField;
    sdsPosicaoTALAO_LIMITE_QTD: TStringField;
    sdsPosicaoQTD_LIMITE: TIntegerField;
    cdsPosicaoGERAR_TALAO: TStringField;
    cdsPosicaoTALAO_LIMITE_QTD: TStringField;
    cdsPosicaoQTD_LIMITE: TIntegerField;
    sdsPosicaoPRIMEIRO_MAT: TStringField;
    cdsPosicaoPRIMEIRO_MAT: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspPosicaoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsPosicaoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadPosicao: TDMCadPosicao;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadPosicao.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsPosicao.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('POSICAO',0);

  cdsPosicao.Insert;
  cdsPosicaoID.AsInteger := vAux;
end;

procedure TDMCadPosicao.prc_Excluir;
begin
  if not(cdsPosicao.Active) or (cdsPosicao.IsEmpty) then
    exit;
  cdsPosicao.Delete;
  cdsPosicao.ApplyUpdates(0);
end;

procedure TDMCadPosicao.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsPosicaoNOME.AsString) = '' then
    vMsgErro := '*** Nome não informado!';
  if vMsgErro <> '' then
    exit;
    
  cdsPosicao.Post;
  cdsPosicao.ApplyUpdates(0);
end;

procedure TDMCadPosicao.prc_Localizar(ID: Integer);
begin
  cdsPosicao.Close;
  sdsPosicao.CommandText := ctCommand;
  if ID <> 0 then
    sdsPosicao.CommandText := sdsPosicao.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsPosicao.Open;
end;

procedure TDMCadPosicao.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsPosicao.CommandText;
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

procedure TDMCadPosicao.dspPosicaoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadPosicao.cdsPosicaoNewRecord(DataSet: TDataSet);
begin
  cdsPosicaoIMP_TALAO.AsString := 'N';
end;

procedure TDMCadPosicao.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
