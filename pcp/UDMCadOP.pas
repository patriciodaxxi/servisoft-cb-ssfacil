unit UDMCadOP;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, Variants, LogTypes, frxClass, frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDMCadOP = class(TDataModule)
    sdsOP: TSQLDataSet;
    dspOP: TDataSetProvider;
    cdsOP: TClientDataSet;
    dsOP: TDataSource;
    dsOP_Mestre: TDataSource;
    sdsOP_Itens: TSQLDataSet;
    cdsOP_Itens: TClientDataSet;
    dsOP_Itens: TDataSource;
    sdsConsulta_OP: TSQLDataSet;
    dspConsulta_OP: TDataSetProvider;
    cdsConsulta_OP: TClientDataSet;
    dsConsulta_OP: TDataSource;
    sdsOPID: TIntegerField;
    sdsOPDTEMISSAO: TDateField;
    sdsOPNUM_OP: TIntegerField;
    sdsOPFILIAL: TIntegerField;
    cdsOPID: TIntegerField;
    cdsOPDTEMISSAO: TDateField;
    cdsOPNUM_OP: TIntegerField;
    cdsOPFILIAL: TIntegerField;
    cdsOPsdsOP_Itens: TDataSetField;
    qProduto: TSQLQuery;
    qProdutoID: TIntegerField;
    qProdutoREFERENCIA: TStringField;
    qProdutoNOME: TStringField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxDBDataset1: TfrxDBDataset;
    sdsLocal_Estoque: TSQLDataSet;
    dspLocal_Estoque: TDataSetProvider;
    cdsLocal_Estoque: TClientDataSet;
    dsLocal_Estoque: TDataSource;
    cdsLocal_EstoqueID: TIntegerField;
    cdsLocal_EstoqueCOD_LOCAL: TIntegerField;
    cdsLocal_EstoqueNOME: TStringField;
    cdsLocal_EstoquePRINCIPAL: TStringField;
    sdsSel_OP: TSQLDataSet;
    dspSel_OP: TDataSetProvider;
    cdsSel_OP: TClientDataSet;
    dsSel_OP: TDataSource;
    cdsSel_OPID: TIntegerField;
    cdsSel_OPNUM_OP: TIntegerField;
    cdsSel_OPITEM: TIntegerField;
    cdsSel_OPREFERENCIA: TStringField;
    cdsSel_OPQTD_APRODUZIR: TFloatField;
    cdsSel_OPDTEMISSAO: TDateField;
    cdsSel_OPID_PRODUTO: TIntegerField;
    qProdutoUNIDADE: TStringField;
    sdsOP_ItensID: TIntegerField;
    sdsOP_ItensITEM: TIntegerField;
    sdsOP_ItensID_PRODUTO: TIntegerField;
    sdsOP_ItensQTD_APRODUZIR: TFloatField;
    sdsOP_ItensQTD_PRODUZIDO: TFloatField;
    sdsOP_ItensDTINICIAL: TDateField;
    sdsOP_ItensDTBAIXA: TDateField;
    cdsOP_ItensID: TIntegerField;
    cdsOP_ItensITEM: TIntegerField;
    cdsOP_ItensID_PRODUTO: TIntegerField;
    cdsOP_ItensQTD_APRODUZIR: TFloatField;
    cdsOP_ItensQTD_PRODUZIDO: TFloatField;
    cdsOP_ItensDTINICIAL: TDateField;
    cdsOP_ItensDTBAIXA: TDateField;
    sdsOP_Itens_Baixa: TSQLDataSet;
    cdsOP_Itens_Baixa: TClientDataSet;
    dsOP_Itens_Baixa: TDataSource;
    sdsOP_Itens_BaixaID: TIntegerField;
    sdsOP_Itens_BaixaITEM: TIntegerField;
    sdsOP_Itens_BaixaITEM_BAIXA: TIntegerField;
    sdsOP_Itens_BaixaQTD_PRODUZIDA: TFloatField;
    sdsOP_Itens_BaixaID_MOVESTOQUE: TIntegerField;
    sdsOP_Itens_BaixaDATA: TDateField;
    sdsOP_Itens_BaixaNUM_LOTE_CONTROLE: TStringField;
    cdsOP_Itens_BaixaID: TIntegerField;
    cdsOP_Itens_BaixaITEM: TIntegerField;
    cdsOP_Itens_BaixaITEM_BAIXA: TIntegerField;
    cdsOP_Itens_BaixaQTD_PRODUZIDA: TFloatField;
    cdsOP_Itens_BaixaID_MOVESTOQUE: TIntegerField;
    cdsOP_Itens_BaixaDATA: TDateField;
    cdsOP_Itens_BaixaNUM_LOTE_CONTROLE: TStringField;
    cdsSel_OPQTD_PRODUZIDO: TFloatField;
    cdsSel_OPSALDO: TFloatField;
    sdsOP_Itens_BaixaID_LOCAL_ESTOQUE: TIntegerField;
    cdsOP_Itens_BaixaID_LOCAL_ESTOQUE: TIntegerField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosUSA_LOCAL_ESTOQUE: TStringField;
    qProdutoID_LOCAL_ESTOQUE_PROD: TIntegerField;
    cdsConsulta_OPID: TIntegerField;
    cdsConsulta_OPNUM_OP: TIntegerField;
    cdsConsulta_OPDTEMISSAO: TDateField;
    cdsConsulta_OPFILIAL: TIntegerField;
    cdsConsulta_OPITEM: TIntegerField;
    cdsConsulta_OPID_PRODUTO: TIntegerField;
    cdsConsulta_OPQTD_APRODUZIR: TFloatField;
    cdsConsulta_OPQTD_PRODUZIDO: TFloatField;
    cdsConsulta_OPDTINICIAL: TDateField;
    cdsConsulta_OPDTBAIXA: TDateField;
    cdsConsulta_OPREFERENCIA: TStringField;
    cdsConsulta_OPNOME_PRODUTO: TStringField;
    cdsConsulta_OPNOME_MARCA: TStringField;
    cdsConsulta_OPSALDO: TFloatField;
    sdsConsulta_Baixa: TSQLDataSet;
    dspConsulta_Baixa: TDataSetProvider;
    cdsConsulta_Baixa: TClientDataSet;
    dsConsulta_Baixa: TDataSource;
    cdsConsulta_BaixaID: TIntegerField;
    cdsConsulta_BaixaITEM: TIntegerField;
    cdsConsulta_BaixaITEM_BAIXA: TIntegerField;
    cdsConsulta_BaixaQTD_PRODUZIDA: TFloatField;
    cdsConsulta_BaixaID_MOVESTOQUE: TIntegerField;
    cdsConsulta_BaixaDATA: TDateField;
    cdsConsulta_BaixaNUM_LOTE_CONTROLE: TStringField;
    cdsConsulta_BaixaID_LOCAL_ESTOQUE: TIntegerField;
    cdsConsulta_BaixaID_PRODUTO: TIntegerField;
    cdsConsulta_BaixaREFERENCIA: TStringField;
    cdsConsulta_BaixaNOME_PRODUTO: TStringField;
    cdsConsulta_BaixaCOD_LOCAL: TIntegerField;
    cdsConsulta_BaixaNOME_LOCAL: TStringField;
    cdsConsulta_BaixaNUM_OP: TIntegerField;
    dspOP_Itens_Baixa: TDataSetProvider;
    sdsOP_Del: TSQLDataSet;
    cdsOP_Del: TClientDataSet;
    dsOP_Del: TDataSource;
    dspOP_Del: TDataSetProvider;
    sdsOP_DelID: TIntegerField;
    sdsOP_DelITEM: TIntegerField;
    sdsOP_DelID_PRODUTO: TIntegerField;
    sdsOP_DelQTD_APRODUZIR: TFloatField;
    sdsOP_DelQTD_PRODUZIDO: TFloatField;
    sdsOP_DelDTINICIAL: TDateField;
    sdsOP_DelDTBAIXA: TDateField;
    cdsOP_DelID: TIntegerField;
    cdsOP_DelITEM: TIntegerField;
    cdsOP_DelID_PRODUTO: TIntegerField;
    cdsOP_DelQTD_APRODUZIR: TFloatField;
    cdsOP_DelQTD_PRODUZIDO: TFloatField;
    cdsOP_DelDTINICIAL: TDateField;
    cdsOP_DelDTBAIXA: TDateField;
    qExcluir_OP: TSQLQuery;
    qExcluir_OPCONTADOR: TIntegerField;
    sdsOP_Itens_Baixa_Mat: TSQLDataSet;
    cdsOP_Itens_Baixa_Mat: TClientDataSet;
    dsOP_Itens_Baixa_Mat: TDataSource;
    dspOP_Itens_Baixa_Mat: TDataSetProvider;
    qParametros_Est: TSQLQuery;
    qParametros_EstID: TIntegerField;
    qParametros_EstID_LOCAL_ESTOQUE_SEMI: TIntegerField;
    qParametros_EstID_LOCAL_ESTOQUE_MAT: TIntegerField;
    qParametros_EstID_LOCAL_ESTOQUE_MAT_CONS: TIntegerField;
    sdsProduto_Consumo: TSQLDataSet;
    dspProduto_Consumo: TDataSetProvider;
    cdsProduto_Consumo: TClientDataSet;
    cdsProduto_ConsumoID_MATERIAL: TIntegerField;
    cdsProduto_ConsumoTIPO_REG: TStringField;
    sdsOP_Itens_Baixa_MatID: TIntegerField;
    sdsOP_Itens_Baixa_MatITEM: TIntegerField;
    sdsOP_Itens_Baixa_MatITEM_BAIXA: TIntegerField;
    sdsOP_Itens_Baixa_MatITEM_MAT: TIntegerField;
    sdsOP_Itens_Baixa_MatID_PRODUTO: TIntegerField;
    sdsOP_Itens_Baixa_MatID_COR: TIntegerField;
    sdsOP_Itens_Baixa_MatQTD: TFloatField;
    sdsOP_Itens_Baixa_MatID_MOVESTOQUE: TIntegerField;
    sdsOP_Itens_Baixa_MatDATA: TDateField;
    sdsOP_Itens_Baixa_MatID_LOCAL_ESTOQUE: TIntegerField;
    cdsOP_Itens_Baixa_MatID: TIntegerField;
    cdsOP_Itens_Baixa_MatITEM: TIntegerField;
    cdsOP_Itens_Baixa_MatITEM_BAIXA: TIntegerField;
    cdsOP_Itens_Baixa_MatITEM_MAT: TIntegerField;
    cdsOP_Itens_Baixa_MatID_PRODUTO: TIntegerField;
    cdsOP_Itens_Baixa_MatID_COR: TIntegerField;
    cdsOP_Itens_Baixa_MatQTD: TFloatField;
    cdsOP_Itens_Baixa_MatID_MOVESTOQUE: TIntegerField;
    cdsOP_Itens_Baixa_MatDATA: TDateField;
    cdsOP_Itens_Baixa_MatID_LOCAL_ESTOQUE: TIntegerField;
    sdsOP_Itens_Baixa_MatQTD_CONSUMO: TFloatField;
    cdsOP_Itens_Baixa_MatQTD_CONSUMO: TFloatField;
    cdsProduto_ConsumoQTD_CONSUMO: TFloatField;
    cdsProduto_ConsumoUNIDADE: TStringField;
    sdsConsulta_Baixa_Mat: TSQLDataSet;
    dspConsulta_Baixa_Mat: TDataSetProvider;
    cdsConsulta_Baixa_Mat: TClientDataSet;
    dsConsulta_Baixa_Mat: TDataSource;
    cdsConsulta_Baixa_MatID: TIntegerField;
    cdsConsulta_Baixa_MatITEM: TIntegerField;
    cdsConsulta_Baixa_MatITEM_BAIXA: TIntegerField;
    cdsConsulta_Baixa_MatITEM_MAT: TIntegerField;
    cdsConsulta_Baixa_MatID_PRODUTO: TIntegerField;
    cdsConsulta_Baixa_MatID_COR: TIntegerField;
    cdsConsulta_Baixa_MatQTD: TFloatField;
    cdsConsulta_Baixa_MatID_MOVESTOQUE: TIntegerField;
    cdsConsulta_Baixa_MatDATA: TDateField;
    cdsConsulta_Baixa_MatID_LOCAL_ESTOQUE: TIntegerField;
    cdsConsulta_Baixa_MatQTD_CONSUMO: TFloatField;
    cdsConsulta_Baixa_MatNOME_PRODUTO: TStringField;
    cdsConsulta_Baixa_MatREFERENCIA: TStringField;
    cdsConsulta_Baixa_MatNOME_LOCAL_ESTOQUE: TStringField;
    qProdutoBAIXA_ESTOQUE_MAT: TStringField;
    sdsOP_Itens_BaixaBAIXOU_ESTOQUE_MAT: TStringField;
    cdsOP_Itens_BaixaBAIXOU_ESTOQUE_MAT: TStringField;
    cdsConsulta_BaixaBAIXOU_ESTOQUE_MAT: TStringField;
    cdsProduto_ConsumoID_LOCAL_ESTOQUE_PROD: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspOPUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsOP_ItensBeforePost(DataSet: TDataSet);
    procedure cdsOP_ItensNewRecord(DataSet: TDataSet);
    procedure cdsOP_Itens_BaixaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctConsulta_OP: String;
    ctqProduto: String;
    ctConsulta_Baixa: String;
    ctOP_Itens_Baixa: String;
    ctSel_OP: String;
    ctOP_Itens_Baixa_Mat : String;
    vDescOpcao_Rel: String;
    vNum_OP, vItem_OP, vQtd_OP, vID_OP, vQtd_OP_Prod, vQtd_Saldo: Integer;

    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Excluir;
    procedure prc_Gravar;

    procedure prc_Inserir_Itens;
    procedure prc_Abrir_qProduto(Referencia: String ; ID_Produto: Integer);

    procedure prc_Abrir_OP_Itens_Baixa(ID, Item, Item_Baixa: Integer);
    procedure prc_Abrir_OP_Itens_Baixa_MAT(ID, Item, Item_Baixa: Integer);

    function fnc_Proxima_OP: Integer;
    function fnc_Proximo_Item_Baixa(ID, Item: Integer): Integer;

  end;

var
  DMCadOP: TDMCadOP;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadLote}

procedure TDMCadOP.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsOP.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('OP',0);

  cdsOP.Insert;
  cdsOPID.AsInteger := vAux;
end;

procedure TDMCadOP.prc_Excluir;
begin
  if not(cdsOP.Active) or (cdsOP.IsEmpty) then
    exit;
  cdsOP_Itens.First;
  while not cdsOP_Itens.Eof do
    cdsOP_Itens.Delete;
  cdsOP.Delete;
  cdsOP.ApplyUpdates(0);
end;

procedure TDMCadOP.prc_Gravar;
begin
  vMsgErro := '';
  //if cdsOrdem_ProdQTD_LOTE.AsInteger <= 0 then
  //  vMsgErro := vMsgErro + #13 + '*** Lote não informado!';
  //if trim(vMsgErro) <> '' then
  //  exit;

  cdsOP.Post;
  cdsOP.ApplyUpdates(0);
end;

procedure TDMCadOP.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsOP.Close;
  sdsOP.CommandText := ctCommand;
  if ID <> 0 then
    sdsOP.CommandText := sdsOP.CommandText + ' WHERE ID = ' + IntToStr(ID);
  sdsOP.Open;
  cdsOP_Itens.Close;
  cdsOP_Itens.Open;
  cdsOP_Itens.Last;
end;

procedure TDMCadOP.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand            := sdsOP.CommandText;
  ctConsulta_OP        := sdsConsulta_OP.CommandText;
  ctqProduto           := qProduto.SQL.Text;
  ctConsulta_Baixa     := sdsConsulta_Baixa.CommandText;
  ctOP_Itens_Baixa     := sdsOP_Itens_Baixa.CommandText;
  ctSel_OP             := sdsSel_OP.CommandText;
  ctOP_Itens_Baixa_Mat := sdsOP_Itens_Baixa_Mat.CommandText;
  cdsLocal_Estoque.Open;
  qParametros.Close;
  qParametros.Open;
  qParametros_Est.Open;
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

procedure TDMCadOP.dspOPUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadOP.cdsOP_ItensBeforePost(DataSet: TDataSet);
begin
  if cdsOP_ItensDTBAIXA.AsDateTime < 10 then
    cdsOP_ItensDTBAIXA.Clear;
end;

procedure TDMCadOP.prc_Inserir_Itens;
var
  vItem_Aux: Integer;
begin
  cdsOP_Itens.Last;
  vItem_Aux := cdsOP_ItensITEM.AsInteger;
  vItem_Aux := vItem_Aux + 1;

  cdsOP_Itens.Insert;
  cdsOP_ItensID.AsInteger   := cdsOPID.AsInteger;
  cdsOP_ItensITEM.AsInteger := vItem_Aux;
end;

function TDMCadOP.fnc_Proxima_OP: Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT MAX(NUM_OP) NUM_OP '
                     + 'FROM OP ';
    sds.Open;
    Result := sds.FieldByName('NUM_OP').AsInteger;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadOP.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadOP.prc_Abrir_qProduto(Referencia: String; ID_Produto: Integer);
begin
  qProduto.Close;
  qProduto.SQL.Clear;
  qProduto.SQL.Text := ctqProduto;
  if trim(Referencia) <> '' then
    qProduto.SQL.Add('WHERE REFERENCIA = ' + QuotedStr(Referencia))
  else
  if ID_Produto > 0 then
    qProduto.SQL.Add('WHERE ID = ' + IntToStr(ID_Produto))
  else
    qProduto.SQL.Add('WHERE ID = -1 ');
  qProduto.Open;
end;

procedure TDMCadOP.cdsOP_ItensNewRecord(DataSet: TDataSet);
begin
  cdsOP_ItensQTD_PRODUZIDO.AsInteger := 0;
end;

function TDMCadOP.fnc_Proximo_Item_Baixa(ID, Item: Integer): Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT MAX(ITEM_BAIXA) ITEM_BAIXA '
                     + 'FROM OP_ITENS_BAIXA '
                     + ' WHERE ID = :ID '
                     + '   AND ITEM = :ITEM ';
    sds.ParamByName('ID').AsInteger   := ID;
    sds.ParamByName('ITEM').AsInteger := ITEM;
    sds.Open;
    Result := sds.FieldByName('ITEM_BAIXA').AsInteger;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadOP.prc_Abrir_OP_Itens_Baixa(ID, Item, Item_Baixa: Integer);
begin
  cdsOP_Itens_Baixa.Close;
  sdsOP_Itens_Baixa.CommandText := ctOP_Itens_Baixa
                                 + '   AND ITEM_BAIXA = :ITEM_BAIXA ';
  sdsOP_Itens_Baixa.ParamByName('ID').AsInteger := ID;
  sdsOP_Itens_Baixa.ParamByName('ITEM').AsInteger := Item;
  sdsOP_Itens_Baixa.ParamByName('ITEM_BAIXA').AsInteger := Item_Baixa;
  cdsOP_Itens_Baixa.Open;
end;

procedure TDMCadOP.prc_Abrir_OP_Itens_Baixa_MAT(ID, Item,
  Item_Baixa: Integer);
begin
  cdsOP_Itens_Baixa_Mat.Close;
  sdsOP_Itens_Baixa_Mat.ParamByName('ID').AsInteger         := ID;
  sdsOP_Itens_Baixa_Mat.ParamByName('ITEM').AsInteger       := Item;
  sdsOP_Itens_Baixa_Mat.ParamByName('ITEM_BAIXA').AsInteger := Item_Baixa;
  cdsOP_Itens_Baixa_Mat.Open;
end;

procedure TDMCadOP.cdsOP_Itens_BaixaNewRecord(DataSet: TDataSet);
begin
  cdsOP_Itens_BaixaBAIXOU_ESTOQUE_MAT.AsString := 'N';
end;

end.
