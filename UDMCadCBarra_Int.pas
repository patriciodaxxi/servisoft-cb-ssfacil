unit UDMCadCBarra_Int;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadCBarra_Int = class(TDataModule)
    sdsCBarra_Int: TSQLDataSet;
    dspCBarra_Int: TDataSetProvider;
    cdsCBarra_Int: TClientDataSet;
    dsCBarra_Int: TDataSource;
    sdsCBarra_IntID: TIntegerField;
    sdsCBarra_IntCOD_BARRA: TStringField;
    sdsCBarra_IntID_PRODUTO: TIntegerField;
    sdsCBarra_IntID_COR: TIntegerField;
    sdsCBarra_IntTAMANHO: TStringField;
    sdsCBarra_IntSEQUENCIA: TIntegerField;
    cdsCBarra_IntID: TIntegerField;
    cdsCBarra_IntCOD_BARRA: TStringField;
    cdsCBarra_IntID_PRODUTO: TIntegerField;
    cdsCBarra_IntID_COR: TIntegerField;
    cdsCBarra_IntTAMANHO: TStringField;
    cdsCBarra_IntSEQUENCIA: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCBarra_IntUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    function fnc_proxima_Seq_CBarra(ID_Produto : Integer) : Integer;
    
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    function fnc_Montar_CodBarra(ID_Produto, ID_Cor : Integer ; Tamanho, Tipo_Rel : String) : String;

  end;

var
  DMCadCBarra_Int: TDMCadCBarra_Int;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCBarra_Int.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsCBarra_Int.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CBARRA_INT',0);

  cdsCBarra_Int.Insert;
  cdsCBarra_IntID.AsInteger := vAux;
end;

procedure TDMCadCBarra_Int.prc_Excluir;
begin
  if not(cdsCBarra_Int.Active) or (cdsCBarra_Int.IsEmpty) then
    exit;
  cdsCBarra_Int.Delete;
  cdsCBarra_Int.ApplyUpdates(0);
end;

procedure TDMCadCBarra_Int.prc_Gravar;
begin
  vMsgErro := '';
  //if trim(cdsCBarra_IntNOME.AsString) = '' then
  //  vMsgErro := 'Nome não informado!';
  if vMsgErro <> '' then
    exit;

  cdsCBarra_Int.Post;
  cdsCBarra_Int.ApplyUpdates(0);
end;

procedure TDMCadCBarra_Int.prc_Localizar(ID: Integer);
begin
  cdsCBarra_Int.Close;
  sdsCBarra_Int.CommandText := ctCommand;
  if ID <> 0 then
    sdsCBarra_Int.CommandText := sdsCBarra_Int.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsCBarra_Int.Open;
end;

procedure TDMCadCBarra_Int.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsCBarra_Int.CommandText;
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

procedure TDMCadCBarra_Int.dspCBarra_IntUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadCBarra_Int.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

function TDMCadCBarra_Int.fnc_Montar_CodBarra(ID_Produto, ID_Cor : Integer ; Tamanho, Tipo_Rel : String) : String;
var
  vId_Cor : Integer;
  vTamAux : String;
  vNumSeq : Integer;
begin
  Result := '';
  vId_Cor := ID_Cor;
  if ID_Cor <= 0 then
    vId_Cor := 0;
  vTamAux := Tamanho;
  if trim(Tamanho) = '' then
    vTamAux := '';

  cdsCBarra_Int.Close;
  sdsCBarra_Int.ParamByName('ID_PRODUTO').AsInteger := ID_Produto;
  sdsCBarra_Int.ParamByName('ID_COR').AsInteger     := vId_Cor;
  sdsCBarra_Int.ParamByName('TAMANHO').AsString     := vTamAux;
  cdsCBarra_Int.Open;
  if not cdsCBarra_Int.IsEmpty then
    Result := cdsCBarra_IntCOD_BARRA.AsString
  else
  if Tipo_Rel <> 'B' then
  begin
    vNumSeq := fnc_proxima_Seq_CBarra(ID_Produto);
    prc_Inserir;
    cdsCBarra_IntID_PRODUTO.AsInteger := ID_Produto;
    cdsCBarra_IntID_COR.AsInteger     := vId_Cor;
    cdsCBarra_IntTAMANHO.AsString     := vTamAux;
    cdsCBarra_IntSEQUENCIA.AsInteger  := vNumSeq;
    cdsCBarra_IntCOD_BARRA.AsString   := '2' + FormatFloat('000000',cdsCBarra_IntID_PRODUTO.AsInteger) + FormatFloat('00000',cdsCBarra_IntSEQUENCIA.AsInteger);
    Result := cdsCBarra_IntCOD_BARRA.AsString;
    prc_Gravar;
  end;
end;

function TDMCadCBarra_Int.fnc_proxima_Seq_CBarra(ID_Produto : Integer): Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT MAX(SEQUENCIA) SEQUENCIA ' +
                         ' FROM CBARRA_INT ' +
                         ' WHERE ID_PRODUTO = :ID_PRODUTO ';
    sds.ParamByName('ID_PRODUTO').AsInteger := ID_Produto;
    sds.Open;
    Result := sds.FieldByName('SEQUENCIA').AsInteger;
    Result := Result + 1;
  finally
    FreeAndNil(sds);
  end;
end;

end.
