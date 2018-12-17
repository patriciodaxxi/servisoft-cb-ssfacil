unit UDMCadGrade;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadGrade = class(TDataModule)
    sdsGrade: TSQLDataSet;
    dspGrade: TDataSetProvider;
    cdsGrade: TClientDataSet;
    dsGrade: TDataSource;
    sdsGradeID: TIntegerField;
    sdsGradeNOME: TStringField;
    cdsGradeID: TIntegerField;
    cdsGradeNOME: TStringField;
    dsGrade_Mestre: TDataSource;
    sdsGrade_Itens: TSQLDataSet;
    cdsGrade_Itens: TClientDataSet;
    dsGrade_Itens: TDataSource;
    sdsGrade_ItensID: TIntegerField;
    sdsGrade_ItensTAMANHO: TStringField;
    cdsGradesdsGrade_Itens: TDataSetField;
    cdsGrade_ItensID: TIntegerField;
    cdsGrade_ItensTAMANHO: TStringField;
    sdsTamanho: TSQLDataSet;
    sdsTamanhoID: TIntegerField;
    sdsTamanhoTAMANHO: TStringField;
    dspTamanho: TDataSetProvider;
    cdsTamanho: TClientDataSet;
    cdsTamanhoID: TIntegerField;
    cdsTamanhoTAMANHO: TStringField;
    dsTamanho: TDataSource;
    sdsGradePOSSUI_MARCACAO: TStringField;
    cdsGradePOSSUI_MARCACAO: TStringField;
    sdsGrade_ItensTAMANHO_USA: TStringField;
    sdsGrade_ItensTAMANHO_EUR: TStringField;
    cdsGrade_ItensTAMANHO_USA: TStringField;
    cdsGrade_ItensTAMANHO_EUR: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspGradeUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsGradeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgGrade : String;
    ctCommand : String;

    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadGrade: TDMCadGrade;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadGrade.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsGrade.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('GRADE',0);

  cdsGrade.Insert;
  cdsGradeID.AsInteger := vAux;
end;

procedure TDMCadGrade.prc_Excluir;
begin
  if not(cdsGrade.Active) or (cdsGrade.IsEmpty) then
    exit;
  cdsGrade_Itens.First;
  while not cdsGrade_Itens.Eof do
    cdsGrade_Itens.Delete;
  cdsGrade.Delete;
  cdsGrade.ApplyUpdates(0);
end;

procedure TDMCadGrade.prc_Gravar;
begin
  vMsgGrade := '';
  if trim(cdsGradeNOME.AsString) = '' then
    vMsgGrade := '*** Nome não informado!';
  if vMsgGrade <> '' then
    exit;

  cdsGrade.Post;
  cdsGrade.ApplyUpdates(0);
end;

procedure TDMCadGrade.prc_Localizar(ID : Integer);
begin
  cdsGrade.Close;
  sdsGrade.CommandText := ctCommand;
  if ID <> 0 then
    sdsGrade.CommandText := sdsGrade.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsGrade.Open;
end;

procedure TDMCadGrade.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsGrade.CommandText;
  cdsGrade.Open;
  cdsTamanho.Open;
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

procedure TDMCadGrade.dspGradeUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadGrade.cdsGradeNewRecord(DataSet: TDataSet);
begin
  cdsGradePOSSUI_MARCACAO.AsString := 'N';
end;

procedure TDMCadGrade.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
