unit UDMEstoque_Res;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, Dialogs, LogTypes;

type
  TDMEstoque_Res = class(TDataModule)
    sdsEstoque_Mov_Res: TSQLDataSet;
    dspEstoque_Mov_Res: TDataSetProvider;
    cdsEstoque_Mov_Res: TClientDataSet;
    dsEstoque_Mov_Res: TDataSource;
    sdsEstoque_Mov_ResID: TIntegerField;
    sdsEstoque_Mov_ResID_PRODUTO: TIntegerField;
    sdsEstoque_Mov_ResID_COR: TIntegerField;
    sdsEstoque_Mov_ResTAMANHO: TStringField;
    sdsEstoque_Mov_ResNUM_ORDEM: TIntegerField;
    sdsEstoque_Mov_ResQTD: TFloatField;
    sdsEstoque_Mov_ResDATA: TDateField;
    sdsEstoque_Mov_ResTIPO_ES: TStringField;
    sdsEstoque_Mov_ResFILIAL: TIntegerField;
    cdsEstoque_Mov_ResID: TIntegerField;
    cdsEstoque_Mov_ResID_PRODUTO: TIntegerField;
    cdsEstoque_Mov_ResID_COR: TIntegerField;
    cdsEstoque_Mov_ResTAMANHO: TStringField;
    cdsEstoque_Mov_ResNUM_ORDEM: TIntegerField;
    cdsEstoque_Mov_ResQTD: TFloatField;
    cdsEstoque_Mov_ResDATA: TDateField;
    cdsEstoque_Mov_ResTIPO_ES: TStringField;
    cdsEstoque_Mov_ResFILIAL: TIntegerField;
    sdsEstoque_Mov_ResQTD2: TFloatField;
    cdsEstoque_Mov_ResQTD2: TFloatField;
    sdsEstoque_Mov_ResTIPO_MOV: TStringField;
    cdsEstoque_Mov_ResTIPO_MOV: TStringField;
    sdsEstoque_Mov_ResQTD_ENT: TFloatField;
    sdsEstoque_Mov_ResQTD_SAI: TFloatField;
    cdsEstoque_Mov_ResQTD_ENT: TFloatField;
    cdsEstoque_Mov_ResQTD_SAI: TFloatField;
    sdsCombinacao: TSQLDataSet;
    dspCombinacao: TDataSetProvider;
    cdsCombinacao: TClientDataSet;
    cdsCombinacaoID_PRODUTO: TIntegerField;
    cdsCombinacaoNOME: TStringField;
    cdsCombinacaoID_COR_COMBINACAO: TIntegerField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoINATIVO: TStringField;
    cdsProdutoTIPO_REG: TStringField;
    dsCombinacao: TDataSource;
    sdsProduto_Tam: TSQLDataSet;
    dspProduto_Tam: TDataSetProvider;
    cdsProduto_Tam: TClientDataSet;
    cdsProduto_TamID: TIntegerField;
    cdsProduto_TamTAMANHO: TStringField;
    dsProduto_Tam: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    sdsEstoque_Mov_ResNUM_LOTE_CONTROLE: TStringField;
    cdsEstoque_Mov_ResNUM_LOTE_CONTROLE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsEstoque_Mov_ResReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
  private
    { Private declarations }

    procedure prc_Abrir_Estoque_Mov_Res(ID: Integer);
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    function fnc_Gravar_Estoque_Res(ID_Estoque, ID_Filial, ID_Produto, ID_COR, NUM_ORDEM : Integer ;
                                    Tamanho, TIPO_ES, TIPO_MOV : String ; Qtd : Real ; Data : TDateTime ; Num_Lote_Controle : String) : Integer;

    procedure prc_Excluir_EstoqueMov_Res(ID : Integer);

  end;

var
  DMEstoque_Res: TDMEstoque_Res;

implementation

uses DmdDatabase, uUtilPadrao, LogProvider;

{$R *.dfm}

{ TDMEstoque }

function TDMEstoque_Res.fnc_Gravar_Estoque_Res(ID_Estoque, ID_Filial,
  ID_Produto, ID_COR, NUM_ORDEM: Integer; Tamanho, TIPO_ES,
  TIPO_MOV: String; Qtd: Real; Data: TDateTime; Num_Lote_Controle : String ): Integer;
var
  vAux: Integer;
  vQtdAux: Real;
begin
  Result := 0;

  if ID_Estoque > 0 then
  begin
    prc_Abrir_Estoque_Mov_Res(ID_Estoque);
    if cdsEstoque_Mov_Res.IsEmpty then
      ID_Estoque := 0;
    vaux := ID_Estoque;
  end;
  if ID_Estoque <= 0 then
  begin
    vAux := dmDatabase.ProximaSequencia('ESTOQUE_MOV_RES',0);
    if not(cdsEstoque_Mov_Res.Active)  then
      prc_Abrir_Estoque_Mov_Res(0);
  end;

  try
    if ID_Estoque > 0 then
      cdsEstoque_Mov_Res.Edit
    else
    begin
      cdsEstoque_Mov_Res.Insert;
      cdsEstoque_Mov_ResID.AsInteger := vAux;
    end;
    cdsEstoque_Mov_ResFILIAL.AsInteger     := ID_Filial;
    cdsEstoque_Mov_ResID_PRODUTO.AsInteger := ID_Produto;
    cdsEstoque_Mov_ResID_COR.AsInteger     := ID_COR;
    cdsEstoque_Mov_ResTAMANHO.AsString     := Tamanho;
    cdsEstoque_Mov_ResNum_Ordem.AsInteger  := Num_Ordem;
    cdsEstoque_Mov_ResQTD.AsFloat          := StrToFloat(FormatFloat('0.00000',Qtd));
    cdsEstoque_Mov_ResQTD2.AsFloat         := StrToFloat(FormatFloat('0.00000',Qtd));
    if Tipo_ES = 'S' then
      cdsEstoque_Mov_ResQTD2.AsFloat       := StrToFloat(FormatFloat('0.00000',Qtd * -1));
    cdsEstoque_Mov_ResDATA.AsDateTime      := Data;
    cdsEstoque_Mov_ResTIPO_ES.AsString     := Tipo_ES;
    cdsEstoque_Mov_ResTIPO_MOV.AsString    := Tipo_Mov;
    cdsEstoque_Mov_ResNUM_LOTE_CONTROLE.AsString := Num_Lote_Controle;
    cdsEstoque_Mov_Res.Post;
    cdsEstoque_Mov_Res.ApplyUpdates(0);
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar o estoque mov reserva:' + #13 +
                             'Mensagem: ' + E.Message + #13);
    end;
  end;

  Result := vAux;
end;

procedure TDMEstoque_Res.prc_Abrir_Estoque_Mov_Res(ID: Integer);
begin
  cdsEstoque_Mov_Res.Close;
  sdsEstoque_Mov_Res.ParamByName('ID').AsInteger := ID;
  cdsEstoque_Mov_Res.Open;
end;

procedure TDMEstoque_Res.prc_Excluir_EstoqueMov_Res(ID: Integer);
var
  sds: TSQLDataSet;
begin
  if ID <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.GetMetadata   := False;
  sds.NoMetadata    := True;
  sds.CommandText   := 'DELETE FROM ESTOQUE_MOV_RES WHERE ID = ' + IntToStr(ID);
  sds.ExecSQL;
  FreeAndNil(sds);
end;

procedure TDMEstoque_Res.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMEstoque_Res.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
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

procedure TDMEstoque_Res.cdsEstoque_Mov_ResReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    MessageDlg(e.Message + #13 + #13 + '*** Erro ao gravar a tabela de Estoque_Mov_Res!', mtError, [mbOk], 0);
end;

procedure TDMEstoque_Res.prc_Excluir;
begin
  if not(cdsEstoque_Mov_Res.Active) or (cdsEstoque_Mov_Res.IsEmpty) then
    exit;
  cdsEstoque_Mov_Res.Delete;
  cdsEstoque_Mov_Res.ApplyUpdates(0);
end;

procedure TDMEstoque_Res.prc_Gravar;
var
  vIDCorAux : Integer;
  vTamAux : String;
begin
  vIDCorAux := 0;
  if cdsEstoque_Mov_ResID_COR.AsInteger > 0 then
    vIDCorAux := cdsEstoque_Mov_ResID_COR.AsInteger;
  vTamAux := '';
  if trim(cdsEstoque_Mov_ResTAMANHO.AsString) <> '' then
    vTamAux := cdsEstoque_Mov_ResTAMANHO.AsString;
  cdsEstoque_Mov_ResID_COR.AsInteger := vIDCorAux;
  cdsEstoque_Mov_ResTAMANHO.AsString := vTamAux;
  cdsEstoque_Mov_ResQTD2.AsFloat := StrToFloat(FormatFloat('0.0000',cdsEstoque_Mov_ResQTD.AsFloat));
  if cdsEstoque_Mov_ResTIPO_ES.AsString = 'S' then
    cdsEstoque_Mov_ResQTD2.AsFloat := StrToFloat(FormatFloat('0.0000',cdsEstoque_Mov_ResQTD.AsFloat * -1));
  if cdsEstoque_Mov_Res.State in [dsInsert] then
    cdsEstoque_Mov_ResTIPO_MOV.AsString := 'MAN';
  cdsEstoque_Mov_Res.Post;
  cdsEstoque_Mov_Res.ApplyUpdates(0);
end;

procedure TDMEstoque_Res.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsEstoque_Mov_Res.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('ESTOQUE_MOV_RES',0);

  cdsEstoque_Mov_Res.Insert;
  cdsEstoque_Mov_ResID.AsInteger := vAux;
end;

procedure TDMEstoque_Res.prc_Localizar(ID: Integer);
begin
  cdsEstoque_Mov_Res.Close;
  sdsEstoque_Mov_Res.ParamByName('ID').AsInteger := ID;
  cdsEstoque_Mov_Res.Open;
end;

end.
