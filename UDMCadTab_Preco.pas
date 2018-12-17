unit UDMCadTab_Preco;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, frxClass, frxExportPDF, frxDBSet;

type
  TDMCadTab_Preco = class(TDataModule)
    sdsTab_Preco: TSQLDataSet;
    dspTab_Preco: TDataSetProvider;
    cdsTab_Preco: TClientDataSet;
    dsTab_Preco: TDataSource;
    dsTab_Preco_Mestre: TDataSource;
    sdsTab_Preco_Itens: TSQLDataSet;
    cdsTab_Preco_Itens: TClientDataSet;
    dsTab_Preco_Itens: TDataSource;
    sdsTab_PrecoID: TIntegerField;
    sdsTab_PrecoNOME: TStringField;
    sdsTab_PrecoDTCADASTRO: TDateField;
    cdsTab_PrecoID: TIntegerField;
    cdsTab_PrecoNOME: TStringField;
    cdsTab_PrecoDTCADASTRO: TDateField;
    sdsTab_Preco_ItensID: TIntegerField;
    sdsTab_Preco_ItensITEM: TIntegerField;
    sdsTab_Preco_ItensID_PRODUTO: TIntegerField;
    sdsTab_Preco_ItensVLR_VENDA: TFloatField;
    cdsTab_PrecosdsTab_Preco_Itens: TDataSetField;
    cdsTab_Preco_ItensID: TIntegerField;
    cdsTab_Preco_ItensITEM: TIntegerField;
    cdsTab_Preco_ItensID_PRODUTO: TIntegerField;
    cdsTab_Preco_ItensVLR_VENDA: TFloatField;
    sdsTab_Preco_ItensNOMEPRODUTO: TStringField;
    sdsTab_Preco_ItensREFERENCIA: TStringField;
    sdsTab_Preco_ItensPRECO_CUSTO: TFloatField;
    cdsTab_Preco_ItensNOMEPRODUTO: TStringField;
    cdsTab_Preco_ItensREFERENCIA: TStringField;
    cdsTab_Preco_ItensPRECO_CUSTO: TFloatField;
    sdsTab_PrecoOBS: TMemoField;
    cdsTab_PrecoOBS: TMemoField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoPESOLIQUIDO: TFloatField;
    cdsProdutoPESOBRUTO: TFloatField;
    cdsProdutoINATIVO: TStringField;
    cdsProdutoID_CSTIPI: TIntegerField;
    cdsProdutoPERC_IPI: TFloatField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoTIPO_REG: TStringField;
    cdsProdutoPOSSE_MATERIAL: TStringField;
    cdsProdutoESTOQUE: TStringField;
    cdsProdutoMATERIAL_OUTROS: TStringField;
    cdsProdutoUSUARIO: TStringField;
    cdsProdutoDTCAD: TDateField;
    cdsProdutoHRCAD: TTimeField;
    cdsProdutoCA: TStringField;
    cdsProdutoCOMPLEMENTO: TStringField;
    cdsProdutoID_NCM: TIntegerField;
    cdsProdutoORIGEM_PROD: TStringField;
    cdsProdutoOBS: TMemoField;
    cdsProdutoCODSITCF: TStringField;
    cdsProdutoPERC_REDUCAOICMS: TFloatField;
    cdsProdutoTIPO_VENDA: TStringField;
    dsProduto: TDataSource;
    sdsTab_Preco_Consulta: TSQLDataSet;
    dspTab_Preco_Consulta: TDataSetProvider;
    cdsTab_Preco_Consulta: TClientDataSet;
    dsTab_Preco_Consulta: TDataSource;
    cdsTab_Preco_ConsultaID: TIntegerField;
    cdsTab_Preco_ConsultaNOME: TStringField;
    cdsTab_Preco_ConsultaDTCADASTRO: TDateField;
    cdsTab_Preco_ConsultaOBS: TMemoField;
    cdsTab_Preco_ConsultaITEM: TIntegerField;
    cdsTab_Preco_ConsultaID_PRODUTO: TIntegerField;
    cdsTab_Preco_ConsultaVLR_VENDA: TFloatField;
    cdsTab_Preco_ConsultaNOMEPRODUTO: TStringField;
    cdsTab_Preco_ConsultaREFERENCIA: TStringField;
    cdsTab_Preco_ConsultaPRECO_CUSTO: TFloatField;
    sdsTab_Preco_Pesquisa: TSQLDataSet;
    dspTab_Preco_Pesquisa: TDataSetProvider;
    cdsTab_Preco_Pesquisa: TClientDataSet;
    dsTab_Preco_Pesquisa: TDataSource;
    sdsTab_Preco_PesquisaID: TIntegerField;
    sdsTab_Preco_PesquisaNOME: TStringField;
    cdsTab_Preco_PesquisaID: TIntegerField;
    cdsTab_Preco_PesquisaNOME: TStringField;
    sdsGrupo: TSQLDataSet;
    sdsGrupoID: TIntegerField;
    sdsGrupoNOME: TStringField;
    dspGrupo: TDataSetProvider;
    cdsGrupo: TClientDataSet;
    cdsGrupoID: TIntegerField;
    cdsGrupoNOME: TStringField;
    dsGrupo: TDataSource;
    sdsSubGrupo: TSQLDataSet;
    sdsSubGrupoID: TIntegerField;
    sdsSubGrupoNOME: TStringField;
    dspSubGrupo: TDataSetProvider;
    cdsSubGrupo: TClientDataSet;
    cdsSubGrupoID: TIntegerField;
    cdsSubGrupoNOME: TStringField;
    dsSubGrupo: TDataSource;
    sdsMarca: TSQLDataSet;
    sdsMarcaID: TIntegerField;
    sdsMarcaNOME: TStringField;
    dspMarca: TDataSetProvider;
    cdsMarca: TClientDataSet;
    cdsMarcaID: TIntegerField;
    cdsMarcaNOME: TStringField;
    dsMarca: TDataSource;
    cdsTab_Preco_ConsultaNOMEMARCA: TStringField;
    cdsTab_Preco_ConsultaNOMEGRUPO: TStringField;
    cdsTab_Preco_ConsultaNOMESUBGRUPO: TStringField;
    sdsTab_Preco_ItensNOME_FORNECEDOR: TStringField;
    cdsTab_Preco_ItensNOME_FORNECEDOR: TStringField;
    sdsTab_Preco_ItensNOME_MARCA: TStringField;
    cdsTab_Preco_ItensNOME_MARCA: TStringField;
    sdsTab_Preco_ItensFANTASIA: TStringField;
    cdsTab_Preco_ItensFANTASIA: TStringField;
    cdsTab_Preco_ConsultaNOME_FORNECEDOR: TStringField;
    cdsTab_Preco_ConsultaFANTASIA: TStringField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    sdsFilialID: TIntegerField;
    sdsFilialNOME: TStringField;
    sdsFilialNOME_INTERNO: TStringField;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsProdutoDT_ALTPRECO: TDateField;
    cdsProdutoNOME_MARCA: TStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset2: TfrxDBDataset;
    sdsTab_PrecoDTINICIAL: TDateField;
    sdsTab_PrecoDTFINAL: TDateField;
    sdsTab_PrecoTABPROMOCIONAL: TStringField;
    cdsTab_PrecoDTINICIAL: TDateField;
    cdsTab_PrecoDTFINAL: TDateField;
    cdsTab_PrecoTABPROMOCIONAL: TStringField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinUSA_TABPRECO_PROM: TStringField;
    sdsTab_Preco_ItensID_COR: TIntegerField;
    cdsTab_Preco_ItensID_COR: TIntegerField;
    sdsTab_Preco_ItensNOME_COR: TStringField;
    cdsTab_Preco_ItensNOME_COR: TStringField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdPRODUTO_PRECO_COR: TStringField;
    sdsCombinacao: TSQLDataSet;
    dspCombinacao: TDataSetProvider;
    cdsCombinacao: TClientDataSet;
    cdsCombinacaoID_PRODUTO: TIntegerField;
    cdsCombinacaoNOME: TStringField;
    cdsCombinacaoPRECO_CUSTO: TFloatField;
    cdsCombinacaoID_COR_COMBINACAO: TIntegerField;
    cdsCombinacaoPRECO_VENDA: TFloatField;
    dsCombinacao: TDataSource;
    cdsProdutoUSA_PRECO_COR: TStringField;
    cdsTab_Preco_ConsultaNOME_COR: TStringField;
    cdsTab_Preco_ConsultaNOME_PRODUTO_COR: TStringField;
    qParametros_ProdUSA_REF2: TStringField;
    cdsProdutoREF2: TStringField;
    qUltimo_Registro: TSQLQuery;
    qUltimo_RegistroMAX: TIntegerField;
    sdsTab_PrecoNGR: TStringField;
    cdsTab_PrecoNGR: TStringField;
    qParametros_FinUSA_NGR: TStringField;
    qParametros_FinARREDONDA_PRECO_TAB: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsTab_Preco_ItensNewRecord(DataSet: TDataSet);
    procedure dspTab_PrecoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsTab_PrecoNewRecord(DataSet: TDataSet);
    procedure cdsTab_PrecoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;
    ctTabPreco_Consulta : String;
    ctProduto : String;
    vPreco_Sel : Real;
    procedure prc_Localizar(ID : Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Excluir_Item;
    procedure prc_Inserir_Itens;
    procedure prc_Consultar_Produto(Nome : String ; Tipo : String = 'A');
  end;

var
  DMCadTab_Preco: TDMCadTab_Preco;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadTab_Preco}

procedure TDMCadTab_Preco.prc_Inserir;
var
  vAux : Integer;
  vUltimoRegistro : Integer;
  sds: TSQLDataSet;
  iSeq : Integer;
begin
  if not cdsTab_Preco.Active then
    prc_Localizar(-1);
  qUltimo_Registro.Close;
  qUltimo_Registro.Open;
  vUltimoRegistro := qUltimo_RegistroMAX.AsInteger;
  iSeq   := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;
    sds.CommandText := 'SELECT NUMREGISTRO FROM SEQUENCIAL WHERE TABELA = ' + QuotedStr('TAB_PRECO') + ' AND FILIAL = 0';
    sds.Open;
    iSeq := sds.FieldByName('NUMREGISTRO').AsInteger;
  finally
    FreeAndNil(sds);
  end;
  if vUltimoRegistro >= iSeq then
    vAux := dmDatabase.ProximaSequencia('TAB_PRECO',0)
  else
    vAux := vUltimoRegistro + 1;
  cdsTab_Preco.Insert;
  cdsTab_PrecoID.AsInteger          := vAux;
  cdsTab_PrecoDTCADASTRO.AsDateTime := Date;
end;

procedure TDMCadTab_Preco.prc_Excluir;
begin
  if not(cdsTab_Preco.Active) or (cdsTab_Preco.IsEmpty) then
    exit;
  cdsTab_Preco_Itens.First;
  while not cdsTab_Preco_Itens.Eof do
    cdsTab_Preco_Itens.Delete;
  cdsTab_Preco.Delete;
  cdsTab_Preco.ApplyUpdates(0);
end;

procedure TDMCadTab_Preco.prc_Gravar;
var
  sds: TSQLDataSet;
begin
  vMsgErro := '';
  if trim(cdsTab_PrecoNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if cdsTab_PrecoDTCADASTRO.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data não informada!';
  if (qParametros_FinUSA_TABPRECO_PROM.AsString = 'S') and (cdsTab_PrecoTABPROMOCIONAL.AsString = 'S') then
  begin
    if cdsTab_PrecoTABPROMOCIONAL.AsString = 'S' then
    begin
      if cdsTab_PrecoDTINICIAL.AsDateTime > cdsTab_PrecoDTFINAL.AsDateTime then
        vMsgErro := vMsgErro + #13 + '*** Data Final menor que a Inicial!'
      else
      if (cdsTab_PrecoDTINICIAL.AsDateTime <= 10) or (cdsTab_PrecoDTFINAL.AsDateTime <= 10) then
        vMsgErro := vMsgErro + #13 + '*** Data Inicial ou Final não informadas!';
    end;
    sds  := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT COUNT(1) CONTADOR FROM TAB_PRECO T '
                     + ' WHERE T.tabpromocional = ' + QuotedStr('S')
                     + ' AND T.ID <> :ID '
                     + ' AND T.DTFINAL >= :DTFINAL ';
    sds.ParamByName('ID').AsInteger := cdsTab_PrecoID.AsInteger;
    sds.ParamByName('DTFINAL').AsDate := Date;
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
      vMsgErro := vMsgErro + #13 + '*** Já existe uma tabela promocional em vigência';
    FreeAndNil(sds);
  end;
  if trim(vMsgErro) <> '' then
    exit;

  cdsTab_Preco.Post;
  cdsTab_Preco.ApplyUpdates(0);
end;

procedure TDMCadTab_Preco.prc_Localizar(ID : Integer); //-1 é para inclusão
begin
  cdsTab_Preco.Close;
  sdsTab_Preco.CommandText := ctCommand;
  if ID <> 0 then
    sdsTab_Preco.CommandText := sdsTab_Preco.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsTab_Preco.Open;
end;

procedure TDMCadTab_Preco.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsTab_Preco.CommandText;
  ctTabPreco_Consulta := sdsTab_Preco_Consulta.CommandText;
  ctProduto := sdsProduto.CommandText;
  cdsProduto.Open;
  cdsGrupo.Open;
  cdsSubGrupo.Open;
  cdsMarca.Open;
  qParametros_Fin.Open;
  qParametros_Prod.Open;
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

procedure TDMCadTab_Preco.prc_Inserir_Itens;
var
  vItemAux: Integer;
begin
  cdsTab_Preco_Itens.Last;
  vItemAux := cdsTab_Preco_ItensITEM.AsInteger;
  vItemAux := vItemAux + 1;

  cdsTab_Preco_Itens.Insert;
  cdsTab_Preco_ItensID.AsInteger   := cdsTab_PrecoID.AsInteger;
  cdsTab_Preco_ItensITEM.AsInteger := vItemAux;
end;

procedure TDMCadTab_Preco.prc_Excluir_Item;
begin
  cdsTab_Preco_Itens.Delete;
end;

procedure TDMCadTab_Preco.cdsTab_Preco_ItensNewRecord(DataSet: TDataSet);
begin
  cdsTab_Preco_ItensVLR_VENDA.AsFloat := 0;
end;

procedure TDMCadTab_Preco.dspTab_PrecoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadTab_Preco.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadTab_Preco.cdsTab_PrecoNewRecord(DataSet: TDataSet);
begin
  cdsTab_PrecoTABPROMOCIONAL.AsString := 'N';
end;

procedure TDMCadTab_Preco.cdsTab_PrecoBeforePost(DataSet: TDataSet);
begin
  if cdsTab_PrecoDTINICIAL.AsDateTime < 10 then
    cdsTab_PrecoDTINICIAL.Clear;
  if cdsTab_PrecoDTFINAL.AsDateTime < 10 then
    cdsTab_PrecoDTFINAL.Clear;
end;

procedure TDMCadTab_Preco.prc_Consultar_Produto(Nome : String ; Tipo : String = 'A');
begin
  cdsProduto.Close;
  sdsProduto.CommandText := ctProduto;
  if trim(Nome) <> '' then
    sdsProduto.CommandText := sdsProduto.CommandText + ' AND LIKE ' + QuotedStr('%'+Nome+'%');
  if (Tipo <> 'A') and (Tipo <> '') then
    sdsProduto.CommandText := sdsProduto.CommandText + ' AND TIPO_REG = ' + QuotedStr(Tipo);
  cdsProduto.Open;
end;

end.
