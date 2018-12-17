unit UDMCadNotaFiscal_Lote;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, UDMCadNotaFiscal, UDMEstoque,
  Variants;

type
  TDMCadNotaFiscal_Lote = class(TDataModule)
    sdsNotaFiscal_MP: TSQLDataSet;
    dspNotaFiscal_MP: TDataSetProvider;
    cdsNotaFiscal_MP: TClientDataSet;
    dsNotaFiscal_MP: TDataSource;
    sdsNotaFiscal_MPID: TIntegerField;
    sdsNotaFiscal_MPITEM: TIntegerField;
    sdsNotaFiscal_MPID_MATERIAL: TIntegerField;
    sdsNotaFiscal_MPTAMANHO: TStringField;
    sdsNotaFiscal_MPQTD: TFloatField;
    sdsNotaFiscal_MPID_MOVESTOQUE: TIntegerField;
    cdsNotaFiscal_MPID: TIntegerField;
    cdsNotaFiscal_MPITEM: TIntegerField;
    cdsNotaFiscal_MPID_MATERIAL: TIntegerField;
    cdsNotaFiscal_MPTAMANHO: TStringField;
    cdsNotaFiscal_MPQTD: TFloatField;
    cdsNotaFiscal_MPID_MOVESTOQUE: TIntegerField;
    mMaterial: TClientDataSet;
    dsmMaterial: TDataSource;
    mMaterialID_Material: TIntegerField;
    mMaterialTamanho: TStringField;
    mMaterialQtd: TFloatField;
    qMaterial: TSQLQuery;
    qMaterialID: TIntegerField;
    qMaterialREFERENCIA: TStringField;
    qMaterialNOME: TStringField;
    qMaterialPERC_IPI: TFloatField;
    qMaterialPRECO_CUSTO: TFloatField;
    qMaterialPRECO_VENDA: TFloatField;
    qMaterialPOSSE_MATERIAL: TStringField;
    qMaterialESTOQUE: TStringField;
    qMaterialID_NCM: TIntegerField;
    qMaterialORIGEM_PROD: TStringField;
    qMaterialCODSITCF: TStringField;
    qMaterialPERC_REDUCAOICMS: TFloatField;
    qMaterialUNIDADE: TStringField;
    qMaterialUSA_GRADE: TStringField;
    qMaterialID_GRADE: TIntegerField;
    mMaterialPreco_Custo: TFloatField;
    mMaterialUnidade: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspNotaFiscal_MPUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure mMaterialNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    procedure prc_Gravar_Baixa_MP;
    procedure prc_Gravar_mMaterial(Qtd_Consumo : Real);
  public
    { Public declarations }
    vMsgNotaFiscal_MP: String;
    ctCommand: String;

    fDMCadNotaFiscal: TDMCadNotaFiscal;
    fDMEstoque: TDMEstoque;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    //procedure prc_Le_Produto_Consumo;
    //procedure prc_Le_mMaterial;
    procedure prc_Abrir_NotaFiscal_MP(ID : Integer);
  end;

var
  DMCadNotaFiscal_Lote: TDMCadNotaFiscal_Lote;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadNotaFiscal_Lote.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsNotaFiscal_MP.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('NotaFiscal_MP',0);

  cdsNotaFiscal_MP.Insert;
  cdsNotaFiscal_MPID.AsInteger := vAux;
end;

procedure TDMCadNotaFiscal_Lote.prc_Excluir;
begin
  if not(cdsNotaFiscal_MP.Active) or (cdsNotaFiscal_MP.IsEmpty) then
    exit;
  cdsNotaFiscal_MP.Delete;
  cdsNotaFiscal_MP.ApplyUpdates(0);
end;

procedure TDMCadNotaFiscal_Lote.prc_Gravar;
begin
  vMsgNotaFiscal_MP := '';
  if vMsgNotaFiscal_MP <> '' then
    exit;
  cdsNotaFiscal_MP.Post;
  cdsNotaFiscal_MP.ApplyUpdates(0);
end;

procedure TDMCadNotaFiscal_Lote.prc_Localizar(ID: Integer);
begin
  cdsNotaFiscal_MP.Close;
  sdsNotaFiscal_MP.CommandText := ctCommand;
  if ID <> 0 then
    sdsNotaFiscal_MP.CommandText := sdsNotaFiscal_MP.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsNotaFiscal_MP.Open;
end;

procedure TDMCadNotaFiscal_Lote.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsNotaFiscal_MP.CommandText;
  mMaterial.EmptyDataSet;
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

procedure TDMCadNotaFiscal_Lote.dspNotaFiscal_MPUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadNotaFiscal_Lote.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadNotaFiscal_Lote.mMaterialNewRecord(DataSet: TDataSet);
begin
  mMaterialQtd.AsFloat := StrToFloat(FormatFloat('0',0));
end;

procedure TDMCadNotaFiscal_Lote.prc_Gravar_mMaterial(Qtd_Consumo : Real);
var
  vTam : String;
  vQtdAux : Real;
begin
  qMaterial.Close;
  qMaterial.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsProduto_ConsumoID_MATERIAL.AsInteger;
  qMaterial.Open;

  if qMaterialUSA_GRADE.AsString = 'S' then
    vTam := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString
  else
    vTam := '';

  if (mMaterial.Locate('ID_Material;Tamanho',VarArrayOf([qMaterialID.AsInteger,vTam]),[locaseinsensitive])) then
    mMaterial.Edit
  else
  begin
    mMaterial.Insert;
    mMaterialID_Material.AsInteger := qMaterialID.AsInteger;
    mMaterialTamanho.AsString      := vTam;
    mMaterialPreco_Custo.AsFloat   := StrToFloat(FormatFloat('0.0000',qMaterialPRECO_CUSTO.AsFloat));
    mMaterialUnidade.AsString      := fDMCadNotaFiscal.cdsProduto_ConsumoUNIDADE.AsString;
  end;
  vQtdAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * Qtd_Consumo));
  mMaterialQtd.AsFloat := StrToFloat(FormatFloat('0.00000',mMaterialQtd.AsFloat + vQtdAux));
  mMaterial.Post;
end;

procedure TDMCadNotaFiscal_Lote.prc_Gravar_Baixa_MP;
var
  vItem : Integer;
  vID_Estoque : Integer;
begin
  cdsNotaFiscal_MP.Last;
  vItem := cdsNotaFiscal_MPITEM.AsInteger + 1;

  cdsNotaFiscal_MP.Insert;
  cdsNotaFiscal_MPID.AsInteger            := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  cdsNotaFiscal_MPITEM.AsInteger          := vItem;
  cdsNotaFiscal_MPID_MATERIAL.AsInteger   := mMaterialID_Material.AsInteger;
  cdsNotaFiscal_MPTAMANHO.AsString        := mMaterialTamanho.AsString;
  cdsNotaFiscal_MPQTD.AsFloat             := StrToFloat(FormatFloat('0.00000',mMaterialQtd.AsFloat));
  cdsNotaFiscal_MPID_MOVESTOQUE.AsInteger := 0;
  cdsNotaFiscal_MP.Post;

  vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(0,
                                             fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,
                                             fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                             mMaterialID_Material.AsInteger,
                                             fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger,
                                             fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,
                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,
                                             fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,0,
                                             fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString,'NTS',
                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString,
                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString,
                                             '',
                                             mMaterialTamanho.AsString,
                                             fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,
                                             mMaterialPreco_Custo.AsFloat,
                                             mMaterialQtd.AsFloat,
                                             0,
                                             0,
                                             0,
                                             0,
                                             0,
                                             mMaterialQtd.AsFloat,
                                             mMaterialPreco_Custo.AsFloat,
                                             0,0,'',0,'','N',0);  //ver aqui sobre Lote Controle  04/11/2015
  cdsNotaFiscal_MP.Edit;
  cdsNotaFiscal_MPID_MOVESTOQUE.AsInteger := vID_Estoque;
  cdsNotaFiscal_MP.Post;
  cdsNotaFiscal_MP.ApplyUpdates(0);
end;

{procedure TDMCadNotaFiscal_Lote.prc_Le_Produto_Consumo;
begin
  fDMCadNotaFiscal.cdsProduto_Consumo.Close;
  fDMCadNotaFiscal.sdsProduto_Consumo.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
  fDMCadNotaFiscal.cdsProduto_Consumo.Open;

  fDMCadNotaFiscal.cdsProduto_Consumo.First;
  while not fDMCadNotaFiscal.cdsProduto_Consumo.Eof do
  begin
    if (fDMCadNotaFiscal.cdsProduto_ConsumoTIPO_CONSUMO.AsString = 'T') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '') then
    begin
      fDMCadNotaFiscal.cdsProduto_Consumo_Tam.Close;
      fDMCadNotaFiscal.sdsProduto_Consumo_Tam.ParamByName('ID').AsInteger     := fDMCadNotaFiscal.cdsProduto_ConsumoID.AsInteger;
      fDMCadNotaFiscal.sdsProduto_Consumo_Tam.ParamByName('ITEM').AsInteger   := fDMCadNotaFiscal.cdsProduto_ConsumoITEM.AsInteger;
      fDMCadNotaFiscal.sdsProduto_Consumo_Tam.ParamByName('TAMANHO').AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
      fDMCadNotaFiscal.cdsProduto_Consumo_Tam.Open;
      if not fDMCadNotaFiscal.cdsProduto_Consumo_Tam.IsEmpty then
        prc_Gravar_mMaterial(fDMCadNotaFiscal.cdsProduto_Consumo_TamQTD_CONSUMO.AsFloat);
    end
    else
    begin
      prc_Gravar_mMaterial(fDMCadNotaFiscal.cdsProduto_ConsumoQTD_CONSUMO.AsFloat);
    end;
    fDMCadNotaFiscal.cdsProduto_Consumo.Next;
  end;
end;}

{procedure TDMCadNotaFiscal_Lote.prc_Le_mMaterial;
begin
  mMaterial.First;
  while not mMaterial.Eof do
  begin
    prc_Gravar_Baixa_MP;
    mMaterial.Next;
  end;
  mMaterial.EmptyDataSet;
end;}

procedure TDMCadNotaFiscal_Lote.prc_Abrir_NotaFiscal_MP(ID: Integer);
begin
  cdsNotaFiscal_MP.Close;
  sdsNotaFiscal_MP.ParamByName('ID').AsInteger := ID;
  cdsNotaFiscal_MP.Open;
end;

end.
