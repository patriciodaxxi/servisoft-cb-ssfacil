unit uDmCadMovProdST;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes,
  frxClass, frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDmCadMovProdST = class(TDataModule)
    sdsMovProdST: TSQLDataSet;
    dspMovProdST: TDataSetProvider;
    cdsMovProdST: TClientDataSet;
    dsMovProdST: TDataSource;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaDATA: TDateField;
    cdsConsultaBASE_ST: TFloatField;
    cdsConsultaVLR_ST: TFloatField;
    cdsConsultaPERC_ST: TFloatField;
    cdsConsultaQTD_ORIGINAL: TFloatField;
    cdsConsultaQTD_PACOTE: TFloatField;
    cdsConsultaUNIDADE_ORIGINAL: TStringField;
    cdsConsultaTIPO_REG: TStringField;
    cdsConsultaBASE_ST_ORIGINAL: TFloatField;
    cdsConsultaVLR_ST_ORIGINAL: TFloatField;
    cdsConsultaID_PRODUTO: TIntegerField;
    cdsConsultaNOME_PRODUTO: TStringField;
    sdsMovProdSTID: TIntegerField;
    sdsMovProdSTDATA: TDateField;
    sdsMovProdSTBASE_ST: TFloatField;
    sdsMovProdSTVLR_ST: TFloatField;
    sdsMovProdSTPERC_ST: TFloatField;
    sdsMovProdSTQTD_ORIGINAL: TFloatField;
    sdsMovProdSTQTD_PACOTE: TFloatField;
    sdsMovProdSTUNIDADE_ORIGINAL: TStringField;
    sdsMovProdSTTIPO_REG: TStringField;
    sdsMovProdSTBASE_ST_ORIGINAL: TFloatField;
    sdsMovProdSTVLR_ST_ORIGINAL: TFloatField;
    sdsMovProdSTID_PRODUTO: TIntegerField;
    cdsMovProdSTID: TIntegerField;
    cdsMovProdSTDATA: TDateField;
    cdsMovProdSTBASE_ST: TFloatField;
    cdsMovProdSTVLR_ST: TFloatField;
    cdsMovProdSTPERC_ST: TFloatField;
    cdsMovProdSTQTD_ORIGINAL: TFloatField;
    cdsMovProdSTQTD_PACOTE: TFloatField;
    cdsMovProdSTUNIDADE_ORIGINAL: TStringField;
    cdsMovProdSTTIPO_REG: TStringField;
    cdsMovProdSTBASE_ST_ORIGINAL: TFloatField;
    cdsMovProdSTVLR_ST_ORIGINAL: TFloatField;
    cdsMovProdSTID_PRODUTO: TIntegerField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    sdsConsProdST: TSQLDataSet;
    dspConsProdST: TDataSetProvider;
    cdsConsProdST: TClientDataSet;
    dsConsProdST: TDataSource;
    cdsConsProdSTID: TIntegerField;
    cdsConsProdSTNOME: TStringField;
    cdsConsProdSTREFERENCIA: TStringField;
    cdsConsProdSTNCM: TStringField;
    cdsConsProdSTGERAR_ST: TStringField;
    cdsConsProdSTDTEMISSAO: TDateField;
    cdsConsProdSTBASE_ST: TFloatField;
    cdsConsProdSTBASE_ST_RET: TFloatField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxConsProdST: TfrxDBDataset;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspMovProdSTUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgMovProdST : String;
    ctCommand : String;
    ctConsulta : String;
    ctConsProdST : String;
    ctProduto : String;
    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Abrir_Produto(ID : Integer);
  end;

var
  DmCadMovProdST: TDmCadMovProdST;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDmCadMovProdST.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsMovProdST.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('MOVPRODST',0);

  cdsMovProdST.Insert;
  cdsMovProdSTID.AsInteger := vAux;
end;

procedure TDmCadMovProdST.prc_Excluir;
begin
  if not(cdsMovProdST.Active) or (cdsMovProdST.IsEmpty) then
    exit;

  cdsMovProdST.Delete;
  cdsMovProdST.ApplyUpdates(0);
end;

procedure TDmCadMovProdST.prc_Gravar;
var
  i : Integer;
begin
  vMsgMovProdST := '';
  if cdsMovProdSTDATA.AsDateTime <= 10 then
    vMsgMovProdST := '*** Data não informada!';
  if cdsMovProdSTID_PRODUTO.AsInteger <= 0 then
    vMsgMovProdST := '*** Produto não informado!';
  if vMsgMovProdST <> '' then
    exit;
  cdsMovProdST.Post;
  cdsMovProdST.ApplyUpdates(0);
end;

procedure TDmCadMovProdST.prc_Localizar(ID : Integer);
begin
  cdsMovProdST.Close;
  sdsMovProdST.CommandText := ctCommand;
  sdsMovProdST.ParamByName('ID').AsInteger := ID;
  cdsMovProdST.Open;
end;

procedure TDmCadMovProdST.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand    := sdsMovProdST.CommandText;
  ctConsulta   := sdsConsulta.CommandText;
  ctConsProdST := sdsConsProdST.CommandText;
  ctProduto    := sdsProduto.CommandText;

  cdsProduto.Open;

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
end;

procedure TDmCadMovProdST.dspMovProdSTUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDmCadMovProdST.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDmCadMovProdST.prc_Abrir_Produto(ID: Integer);
begin
  cdsProduto.Close;
  sdsProduto.CommandText := ctProduto;
  if ID > 0 then
    sdsProduto.CommandText := sdsProduto.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsProduto.Open;
end;

end.
