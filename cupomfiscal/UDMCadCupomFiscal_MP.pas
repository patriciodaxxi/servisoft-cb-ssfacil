unit UDMCadCupomFiscal_MP;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, UDMCupomFiscal, UDMEstoque, Variants;

type
  TDMCadCupomFiscal_MP = class(TDataModule)
    sdsCupomFiscal_MP: TSQLDataSet;
    dspCupomFiscal_MP: TDataSetProvider;
    cdsCupomFiscal_MP: TClientDataSet;
    dsCupomFiscal_MP: TDataSource;
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
    sdsConsumo: TSQLDataSet;
    dspConsumo: TDataSetProvider;
    cdsConsumo: TClientDataSet;
    qConsumo_Tam: TSQLQuery;
    qConsumo_TamQTD_CONSUMO: TFloatField;
    sdsCupomFiscal_MPID: TIntegerField;
    sdsCupomFiscal_MPITEM: TIntegerField;
    sdsCupomFiscal_MPID_MATERIAL: TIntegerField;
    sdsCupomFiscal_MPTAMANHO: TStringField;
    sdsCupomFiscal_MPQTD: TFloatField;
    sdsCupomFiscal_MPID_MOVESTOQUE: TIntegerField;
    cdsCupomFiscal_MPID: TIntegerField;
    cdsCupomFiscal_MPITEM: TIntegerField;
    cdsCupomFiscal_MPID_MATERIAL: TIntegerField;
    cdsCupomFiscal_MPTAMANHO: TStringField;
    cdsCupomFiscal_MPQTD: TFloatField;
    cdsCupomFiscal_MPID_MOVESTOQUE: TIntegerField;
    cdsConsumoID_MATERIAL: TIntegerField;
    cdsConsumoQTD_CONSUMO: TFloatField;
    cdsConsumoTIPO_CONSUMO: TStringField;
    cdsConsumoITEM_CONSUMO: TIntegerField;
    cdsConsumoNOME_MATERIAL: TStringField;
    cdsConsumoTRANSFER: TStringField;
    cdsConsumoID_GRADE_MAT: TIntegerField;
    cdsConsumoID_FORNECEDOR: TIntegerField;
    cdsConsumoPRECO_CUSTO: TFloatField;
    cdsConsumoUNIDADE: TStringField;
    mMaterialID_CFOP: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCupomFiscal_MPUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure mMaterialNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    procedure prc_Gravar_Baixa_MP;
    procedure prc_Gravar_mMaterial(Qtd_Consumo: Real);

  public
    { Public declarations }
    vMsgCupomFiscal_MP: String;
    ctCommand: String;

    fDMCupomFiscal: TDMCupomFiscal;
    fDMEstoque: TDMEstoque;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    procedure prc_Le_Produto_Consumo;
    procedure prc_Le_mMaterial;
    procedure prc_Abrir_CupomFiscal_MP(ID: Integer);
  end;

var
  DMCadCupomFiscal_MP: TDMCadCupomFiscal_MP;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao, StdConvs;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCupomFiscal_MP.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsCupomFiscal_MP.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CUPOMFISCAL_MP',0);

  cdsCupomFiscal_MP.Insert;
  cdsCupomFiscal_MPID.AsInteger := vAux;
end;

procedure TDMCadCupomFiscal_MP.prc_Excluir;
begin
  if not(cdsCupomFiscal_MP.Active) or (cdsCupomFiscal_MP.IsEmpty) then
    exit;
  cdsCupomFiscal_MP.Delete;
  cdsCupomFiscal_MP.ApplyUpdates(0);
end;

procedure TDMCadCupomFiscal_MP.prc_Gravar;
begin
  vMsgCupomFiscal_MP := '';
  if vMsgCupomFiscal_MP <> '' then
    exit;
  cdsCupomFiscal_MP.Post;
  cdsCupomFiscal_MP.ApplyUpdates(0);
end;

procedure TDMCadCupomFiscal_MP.prc_Localizar(ID: Integer);
begin
  cdsCupomFiscal_MP.Close;
  sdsCupomFiscal_MP.CommandText := ctCommand;
  if ID <> 0 then
    sdsCupomFiscal_MP.CommandText := sdsCupomFiscal_MP.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsCupomFiscal_MP.Open;
end;

procedure TDMCadCupomFiscal_MP.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  //Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsCupomFiscal_MP.CommandText;
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

procedure TDMCadCupomFiscal_MP.dspCupomFiscal_MPUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadCupomFiscal_MP.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadCupomFiscal_MP.mMaterialNewRecord(DataSet: TDataSet);
begin
  mMaterialQtd.AsFloat := StrToFloat(FormatFloat('0',0));
end;

procedure TDMCadCupomFiscal_MP.prc_Gravar_mMaterial(Qtd_Consumo: Real);
var
  vTam: String;
  vQtdAux: Real;
  vID_CFOPAux: Integer;
begin
  qMaterial.Close;
  qMaterial.ParamByName('ID').AsInteger := fDMCupomFiscal.cdsProduto_ConsumoID_MATERIAL.AsInteger;
  qMaterial.Open;

  if qMaterialUSA_GRADE.AsString = 'S' then
    vTam := fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString
  else
    vTam := '';

  vID_CFOPAux := 0;
  if fDMCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger > 0 then
    vID_CFOPAux := fDMCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger;
    
  if (mMaterial.Locate('ID_Material;Tamanho;ID_CFOP',VarArrayOf([qMaterialID.AsInteger,vTam,vID_CFOPAux]),[locaseinsensitive])) then
    mMaterial.Edit
  else
  begin
    mMaterial.Insert;
    mMaterialID_Material.AsInteger := qMaterialID.AsInteger;
    mMaterialTamanho.AsString      := vTam;
    mMaterialPreco_Custo.AsFloat   := StrToFloat(FormatFloat('0.0000',qMaterialPRECO_CUSTO.AsFloat));
    if trim(fDMCupomFiscal.cdsProduto_ConsumoUNIDADE.AsString) <> '' then
      mMaterialUnidade.AsString := fDMCupomFiscal.cdsProduto_ConsumoUNIDADE.AsString
    else
      mMaterialUnidade.AsString := qMaterialUNIDADE.AsString;
    mMaterialID_CFOP.AsInteger  := vID_CFOPAux;
  end;
  vQtdAux := StrToFloat(FormatFloat('0.00000',fDMCupomFiscal.cdsCupom_ItensQTD.AsFloat * Qtd_Consumo));
  mMaterialQtd.AsFloat := StrToFloat(FormatFloat('0.00000',mMaterialQtd.AsFloat + vQtdAux));
  mMaterial.Post;
end;

procedure TDMCadCupomFiscal_MP.prc_Gravar_Baixa_MP;
var
  vItem: Integer;
  vID_Estoque: Integer;
begin
  cdsCupomFiscal_MP.Last;
  vItem := cdsCupomFiscal_MPITEM.AsInteger + 1;

  cdsCupomFiscal_MP.Insert;
  cdsCupomFiscal_MPID.AsInteger            := fDMCupomFiscal.cdsCupomFiscalID.AsInteger;
  cdsCupomFiscal_MPITEM.AsInteger          := vItem;
  cdsCupomFiscal_MPID_MATERIAL.AsInteger   := mMaterialID_Material.AsInteger;
  cdsCupomFiscal_MPTAMANHO.AsString        := mMaterialTamanho.AsString;
  cdsCupomFiscal_MPQTD.AsFloat             := StrToFloat(FormatFloat('0.00000',mMaterialQtd.AsFloat));
  cdsCupomFiscal_MPID_MOVESTOQUE.AsInteger := 0;
  cdsCupomFiscal_MP.Post;

  vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(0,
                                             fDMCupomFiscal.cdsCupomFiscalFILIAL.AsInteger,
                                             1, //aqui verificar o local do estoque
                                             mMaterialID_Material.AsInteger,
                                             fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger,
                                             fDMCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger,
                                             mMaterialID_CFOP.AsInteger,
                                             fDMCupomFiscal.cdsCupomFiscalID.AsInteger,0,
                                             'S','CFI',
                                             mMaterialUnidade.AsString,
                                             mMaterialUnidade.AsString,
                                             '',
                                             mMaterialTamanho.AsString,
                                             fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime,
                                             mMaterialPreco_Custo.AsFloat,
                                             mMaterialQtd.AsFloat,
                                             0,
                                             0,
                                             0,
                                             0,
                                             0,
                                             mMaterialQtd.AsFloat,
                                             mMaterialPreco_Custo.AsFloat,
                                             0,0,'',0,'','N',0,0,0,0,0);
  cdsCupomFiscal_MP.Edit;
  cdsCupomFiscal_MPID_MOVESTOQUE.AsInteger := vID_Estoque;
  cdsCupomFiscal_MP.Post;
  cdsCupomFiscal_MP.ApplyUpdates(0);
end;

procedure TDMCadCupomFiscal_MP.prc_Le_Produto_Consumo;
begin
  fDMCupomFiscal.cdsProduto_Consumo.Close;
  fDMCupomFiscal.sdsProduto_Consumo.ParamByName('ID').AsInteger := fDMCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger;
  fDMCupomFiscal.cdsProduto_Consumo.Open;

  fDMCupomFiscal.cdsProduto_Consumo.First;
  while not fDMCupomFiscal.cdsProduto_Consumo.Eof do
  begin
    if (fDMCupomFiscal.cdsProduto_ConsumoTIPO_CONSUMO.AsString = 'T') and (trim(fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString) <> '') then
    begin
      fDMCupomFiscal.cdsProduto_Consumo_Tam.Close;
      fDMCupomFiscal.sdsProduto_Consumo_Tam.ParamByName('ID').AsInteger     := fDMCupomFiscal.cdsProduto_ConsumoID.AsInteger;
      fDMCupomFiscal.sdsProduto_Consumo_Tam.ParamByName('ITEM').AsInteger   := fDMCupomFiscal.cdsProduto_ConsumoITEM.AsInteger;
      fDMCupomFiscal.sdsProduto_Consumo_Tam.ParamByName('TAMANHO').AsString := fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString;
      fDMCupomFiscal.cdsProduto_Consumo_Tam.Open;
      if not fDMCupomFiscal.cdsProduto_Consumo_Tam.IsEmpty then
        prc_Gravar_mMaterial(fDMCupomFiscal.cdsProduto_Consumo_TamQTD_CONSUMO.AsFloat);
    end
    else
    begin
      prc_Gravar_mMaterial(fDMCupomFiscal.cdsProduto_ConsumoQTD_CONSUMO.AsFloat);
    end;
    fDMCupomFiscal.cdsProduto_Consumo.Next;
  end;
end;

procedure TDMCadCupomFiscal_MP.prc_Le_mMaterial;
begin
  mMaterial.First;
  while not mMaterial.Eof do
  begin
    prc_Gravar_Baixa_MP;
    mMaterial.Next;
  end;
  mMaterial.EmptyDataSet;
end;

procedure TDMCadCupomFiscal_MP.prc_Abrir_CupomFiscal_MP(ID: Integer);
begin
  cdsCupomFiscal_MP.Close;
  sdsCupomFiscal_MP.ParamByName('ID').AsInteger := ID;
  cdsCupomFiscal_MP.Open;
end;

end.
