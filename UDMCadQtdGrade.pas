unit UDMCadQtdGrade;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadQtdGrade = class(TDataModule)
    sdsQtdGrade: TSQLDataSet;
    dspQtdGrade: TDataSetProvider;
    cdsQtdGrade: TClientDataSet;
    dsQtdGrade: TDataSource;
    sdsQtdGradeID: TIntegerField;
    sdsQtdGradeQTD: TIntegerField;
    sdsQtdGradeID_GRADE: TIntegerField;
    cdsQtdGradeID: TIntegerField;
    cdsQtdGradeQTD: TIntegerField;
    cdsQtdGradeID_GRADE: TIntegerField;
    sdsQtdGrade_Mestre: TDataSource;
    sdsQtdGrade_Itens: TSQLDataSet;
    sdsQtdGrade_ItensID: TIntegerField;
    sdsQtdGrade_ItensTAMANHO: TStringField;
    sdsQtdGrade_ItensQTD: TIntegerField;
    cdsQtdGradesdsQtdGrade_Itens: TDataSetField;
    cdsQtdGrade_Itens: TClientDataSet;
    cdsQtdGrade_ItensID: TIntegerField;
    cdsQtdGrade_ItensTAMANHO: TStringField;
    cdsQtdGrade_ItensQTD: TIntegerField;
    dsQtdGrade_Itens: TDataSource;
    sdsQtdGrade_Consulta: TSQLDataSet;
    dspQtdGrade_Consulta: TDataSetProvider;
    cdsQtdGrade_Consulta: TClientDataSet;
    dsQtdGrade_Consulta: TDataSource;
    cdsQtdGrade_ConsultaID: TIntegerField;
    cdsQtdGrade_ConsultaQTD: TIntegerField;
    cdsQtdGrade_ConsultaID_GRADE: TIntegerField;
    cdsQtdGrade_ConsultaNOME_GRADE: TStringField;
    sdsGrade: TSQLDataSet;
    dspGrade: TDataSetProvider;
    cdsGrade: TClientDataSet;
    dsGrade: TDataSource;
    cdsGradeID: TIntegerField;
    cdsGradeNOME: TStringField;
    cdsGradePOSSUI_MARCACAO: TStringField;
    qGrade_Tam: TSQLQuery;
    qGrade_TamID: TIntegerField;
    qGrade_TamTAMANHO: TStringField;
    qGrade_TamTAMANHO_USA: TStringField;
    qGrade_TamTAMANHO_EUR: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspQtdGradeUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgGrade : String;
    ctCommand : String;
    ctConsulta : String;

    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadQtdGrade: TDMCadQtdGrade;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadQtdGrade.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsQtdGrade.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('QTDGRADE',0);

  cdsQtdGrade.Insert;
  cdsQtdGradeID.AsInteger := vAux;
end;

procedure TDMCadQtdGrade.prc_Excluir;
begin
  if not(cdsQtdGrade.Active) or (cdsQtdGrade.IsEmpty) then
    exit;
  cdsQtdGrade_Itens.First;
  while not cdsQtdGrade_Itens.Eof do
    cdsQtdGrade_Itens.Delete;
  cdsQtdGrade.Delete;
  cdsQtdGrade.ApplyUpdates(0);
end;

procedure TDMCadQtdGrade.prc_Gravar;
var
  vQtdAux : Integer;
begin
  vMsgGrade := '';
  if cdsQtdGradeID_GRADE.AsInteger <= 0 then
    vMsgGrade := '*** Grade não informada!';
  vQtdAux := 0;
  cdsQtdGrade_Itens.First;
  while not cdsQtdGrade_Itens.Eof do
  begin
    vQtdAux := vQtdAux + cdsQtdGrade_ItensQTD.AsInteger;
    cdsQtdGrade_Itens.Next;
  end;
  if cdsQtdGradeQTD.AsInteger <> vQtdAux then
    vMsgGrade := '*** Quantidade não confere!';
  if vMsgGrade <> '' then
    exit;

  cdsQtdGrade.Post;
  cdsQtdGrade.ApplyUpdates(0);
end;

procedure TDMCadQtdGrade.prc_Localizar(ID : Integer);
begin
  cdsQtdGrade.Close;
  sdsQtdGrade.CommandText := ctCommand;
  if ID <> 0 then
    sdsQtdGrade.CommandText := sdsQtdGrade.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsQtdGrade.Open;
end;

procedure TDMCadQtdGrade.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsQtdGrade.CommandText;
  ctConsulta := sdsQtdGrade_Consulta.CommandText;
  cdsQtdGrade.Open;
  cdsQtdGrade_Itens.Open;
  cdsGrade.Open;
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

procedure TDMCadQtdGrade.dspQtdGradeUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadQtdGrade.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
