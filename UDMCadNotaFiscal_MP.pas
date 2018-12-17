unit UDMCadNotaFiscal_MP;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, UDMCadNotaFiscal, UDMEstoque,
  Variants;

type
  TDMCadNotaFiscal_MP = class(TDataModule)
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
    sdsConsumo: TSQLDataSet;
    dspConsumo: TDataSetProvider;
    cdsConsumo: TClientDataSet;
    cdsConsumoID: TIntegerField;
    cdsConsumoREFERENCIA: TStringField;
    cdsConsumoNOME_PRODUTO: TStringField;
    cdsConsumoID_COR_COMBINACAO: TIntegerField;
    cdsConsumoNOME_COMBINACAO: TStringField;
    cdsConsumoID_MATERIAL: TIntegerField;
    cdsConsumoQTD_CONSUMO: TFloatField;
    cdsConsumoTIPO_CONSUMO: TStringField;
    cdsConsumoITEM_CONSUMO: TIntegerField;
    cdsConsumoNOME_MATERIAL: TStringField;
    cdsConsumoTRANSFER: TStringField;
    cdsConsumoID_GRADE_MAT: TIntegerField;
    cdsConsumoID_COR_MAT: TIntegerField;
    cdsConsumoNOME_COR: TStringField;
    cdsConsumoID_FORNECEDOR: TIntegerField;
    qConsumo_Tam: TSQLQuery;
    qConsumo_TamQTD_CONSUMO: TFloatField;
    mMaterialID_Cor: TIntegerField;
    cdsConsumoPRECO_CUSTO: TFloatField;
    cdsConsumoUNIDADE: TStringField;
    qReserva: TSQLQuery;
    qReservaNUM_ORDEM: TIntegerField;
    qReservaQTD_RESERVA: TFloatField;
    sdsNotaFiscal_MPID_MOVESTOQUE_RES: TIntegerField;
    cdsNotaFiscal_MPID_MOVESTOQUE_RES: TIntegerField;
    mMaterialNum_Ordem: TIntegerField;
    mMaterialQtd_Reserva: TFloatField;
    sdsNotaFiscal_MPNUM_ORDEM: TIntegerField;
    cdsNotaFiscal_MPNUM_ORDEM: TIntegerField;
    sdsNotaFiscal_MPQTD_RESERVA: TFloatField;
    cdsNotaFiscal_MPQTD_RESERVA: TFloatField;
    sdsNotaFiscal_MPID_COR: TIntegerField;
    cdsNotaFiscal_MPID_COR: TIntegerField;
    mMaterialID_CFOP: TIntegerField;
    sdsNotaFiscal_MPNUM_LOTE_CONTROLE: TStringField;
    cdsNotaFiscal_MPNUM_LOTE_CONTROLE: TStringField;
    sdsNotaFiscal_MPITEM_NOTA: TIntegerField;
    cdsNotaFiscal_MPITEM_NOTA: TIntegerField;
    mMaterialItem_Nota: TIntegerField;
    qReserva_OC: TSQLQuery;
    qReserva_OCQTD_OC_RESTANTE: TFloatField;
    qReserva_OCQTD_OC_ORIGINAL: TFloatField;
    qReserva_OCQTD: TFloatField;
    qOC_Pend: TSQLQuery;
    qOC_PendCONTADOR: TIntegerField;
    qOC_Pend_Ord: TSQLQuery;
    qOC_Pend_OrdCONTADOR: TIntegerField;
    qMaterialPRECO_CUSTO_TOTAL: TFloatField;
    mMaterialPreco_Custo_Total: TFloatField;
    cdsConsumoPRECO_CUSTO_TOTAL: TFloatField;
    sdsProduto_CMat: TSQLDataSet;
    dspProduto_CMat: TDataSetProvider;
    cdsProduto_CMat: TClientDataSet;
    dsProduto_CMat: TDataSource;
    cdsProduto_CMatID: TIntegerField;
    cdsProduto_CMatITEM: TIntegerField;
    cdsProduto_CMatNOME_COMBINACAO: TStringField;
    cdsProduto_CMatID_MATERIAL: TIntegerField;
    cdsProduto_CMatMATERIAL: TStringField;
    cdsProduto_CMatID_SETOR: TIntegerField;
    cdsProduto_CMatNOME_POSICAO: TStringField;
    cdsProduto_CMatQTD_CONSUMO: TFloatField;
    cdsProduto_CMatNOME_SETOR: TStringField;
    cdsProduto_CMatTIPO_CONSUMO: TStringField;
    cdsProduto_CMatITEM_CONSUMO: TIntegerField;
    cdsProduto_CMatID_COR_MAT: TFMTBCDField;
    cdsProduto_CMatNOME_COR_MAT: TStringField;
    cdsProduto_CMatPRECO_CUSTO: TFloatField;
    cdsProduto_CMatPRECO_CUSTO_TOTAL: TFloatField;
    cdsProduto_CMatUNIDADE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspNotaFiscal_MPUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure mMaterialNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    procedure prc_Gravar_Baixa_MP(Num_Lote : String ; Qtd : Real);
    procedure prc_Gravar_mMaterial(Qtd_Consumo : Real);
    procedure prc_Gravar_mMaterial_Comb(Qtd_Consumo : Real; Tamanho : String);
    procedure prc_Gravar_mMaterial_Comb2(Qtd_Consumo : Real; Tamanho : String);
    procedure prc_Le_Consumo_Comb;

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

    procedure prc_Le_Produto_Consumo;
    procedure prc_Le_mMaterial;
    procedure prc_Abrir_NotaFiscal_MP(ID : Integer);
  end;

var
  DMCadNotaFiscal_MP: TDMCadNotaFiscal_MP;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao, StdConvs, UDMEstoque_Res;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadNotaFiscal_MP.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsNotaFiscal_MP.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('NotaFiscal_MP',0);

  cdsNotaFiscal_MP.Insert;
  cdsNotaFiscal_MPID.AsInteger := vAux;
end;

procedure TDMCadNotaFiscal_MP.prc_Excluir;
begin
  if not(cdsNotaFiscal_MP.Active) or (cdsNotaFiscal_MP.IsEmpty) then
    exit;
  cdsNotaFiscal_MP.Delete;
  cdsNotaFiscal_MP.ApplyUpdates(0);
end;

procedure TDMCadNotaFiscal_MP.prc_Gravar;
begin
  vMsgNotaFiscal_MP := '';
  if vMsgNotaFiscal_MP <> '' then
    exit;
  cdsNotaFiscal_MP.Post;
  cdsNotaFiscal_MP.ApplyUpdates(0);
end;

procedure TDMCadNotaFiscal_MP.prc_Localizar(ID: Integer);
begin
  cdsNotaFiscal_MP.Close;
  sdsNotaFiscal_MP.CommandText := ctCommand;
  if ID <> 0 then
    sdsNotaFiscal_MP.CommandText := sdsNotaFiscal_MP.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsNotaFiscal_MP.Open;
end;

procedure TDMCadNotaFiscal_MP.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  //Origem, Destino: string;
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

procedure TDMCadNotaFiscal_MP.dspNotaFiscal_MPUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadNotaFiscal_MP.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadNotaFiscal_MP.mMaterialNewRecord(DataSet: TDataSet);
begin
  mMaterialQtd.AsFloat := StrToFloat(FormatFloat('0',0));
end;

procedure TDMCadNotaFiscal_MP.prc_Gravar_mMaterial(Qtd_Consumo : Real);
var
  vTam : String;
  vQtdAux : Real;
  vItemAux : Integer;
begin
  qMaterial.Close;
  qMaterial.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsProduto_ConsumoID_MATERIAL.AsInteger;
  qMaterial.Open;

  if qMaterialUSA_GRADE.AsString = 'S' then
    vTam := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString
  else
    vTam := '';

  vItemAux := 0;
  if fDMCadNotaFiscal.qParametros_NFeIMP_CONSUMO_NOTA.AsString = 'S' then
    vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;

  if (mMaterial.Locate('ID_Material;Tamanho;Item_Nota',VarArrayOf([qMaterialID.AsInteger,vTam,vItemAux]),[locaseinsensitive])) then
    mMaterial.Edit
  else
  begin
    mMaterial.Insert;
    mMaterialID_Material.AsInteger := qMaterialID.AsInteger;
    mMaterialTamanho.AsString      := vTam;
    mMaterialItem_Nota.AsInteger   := vItemAux;
    mMaterialPreco_Custo.AsFloat   := StrToFloat(FormatFloat('0.0000',qMaterialPRECO_CUSTO.AsFloat));
    if StrToFloat(FormatFloat('0.0000',qMaterialPRECO_CUSTO_TOTAL.AsFloat)) <= 0 then
      mMaterialPreco_Custo_Total.AsFloat := StrToFloat(FormatFloat('0.0000',qMaterialPRECO_CUSTO.AsFloat))
    else
      mMaterialPreco_Custo_Total.AsFloat := StrToFloat(FormatFloat('0.0000',qMaterialPRECO_CUSTO_TOTAL.AsFloat));
    if trim(fDMCadNotaFiscal.cdsProduto_ConsumoUNIDADE.AsString) <> '' then
      mMaterialUnidade.AsString := fDMCadNotaFiscal.cdsProduto_ConsumoUNIDADE.AsString
    else
      mMaterialUnidade.AsString := qMaterialUNIDADE.AsString;
  end;
  vQtdAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * Qtd_Consumo));
  mMaterialQtd.AsFloat := StrToFloat(FormatFloat('0.00000',mMaterialQtd.AsFloat + vQtdAux));
  mMaterial.Post;
end;

procedure TDMCadNotaFiscal_MP.prc_Gravar_Baixa_MP(Num_Lote : String ; Qtd : Real);
var
  vItem : Integer;
  vID_Estoque : Integer;
  vID_Estoque_Res : Integer;
  fDMEstoque_Res: TDMEstoque_Res;
begin
  cdsNotaFiscal_MP.Last;
  vItem := cdsNotaFiscal_MPITEM.AsInteger + 1;

  cdsNotaFiscal_MP.Insert;
  cdsNotaFiscal_MPID.AsInteger                := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  cdsNotaFiscal_MPITEM.AsInteger              := vItem;
  cdsNotaFiscal_MPID_MATERIAL.AsInteger       := mMaterialID_Material.AsInteger;
  cdsNotaFiscal_MPTAMANHO.AsString            := mMaterialTamanho.AsString;
  //cdsNotaFiscal_MPQTD.AsFloat                 := StrToFloat(FormatFloat('0.00000',mMaterialQtd.AsFloat));
  cdsNotaFiscal_MPQTD.AsFloat                 := StrToFloat(FormatFloat('0.00000',Qtd));
  cdsNotaFiscal_MPNUM_LOTE_CONTROLE.AsString  := Num_Lote;
  cdsNotaFiscal_MPID_MOVESTOQUE.AsInteger     := 0;
  cdsNotaFiscal_MPID_MOVESTOQUE_RES.AsInteger := 0;
  cdsNotaFiscal_MPNUM_ORDEM.AsInteger         := mMaterialNum_Ordem.AsInteger;
  cdsNotaFiscal_MPID_COR.AsInteger            := mMaterialID_Cor.AsInteger;
  //aqui arrumar estoque 04/02/2017 
  if (StrToFloat(FormatFloat('0.0000',mMaterialQtd_Reserva.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.0000',mMaterialQtd_Reserva.AsFloat)) > StrToFloat(FormatFloat('0.0000',mMaterialQtd.AsFloat))) then
    cdsNotaFiscal_MPQTD_RESERVA.AsFloat := StrToFloat(FormatFloat('0.0000',mMaterialQtd.AsFloat))
  else
    cdsNotaFiscal_MPQTD_RESERVA.AsFloat := StrToFloat(FormatFloat('0.0000',mMaterialQtd_Reserva.AsFloat));
  cdsNotaFiscal_MPITEM_NOTA.AsInteger := mMaterialItem_Nota.AsInteger;
  cdsNotaFiscal_MP.Post;

  vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(0,
                                             fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,
                                             fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                             mMaterialID_Material.AsInteger,
                                             fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger,
                                             fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,
                                             0,
                                             fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,0,
                                             fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString,'NTS',
                                             mMaterialUnidade.AsString,
                                             mMaterialUnidade.AsString,
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
                                             0,0,'',mMaterialID_Cor.AsInteger,Num_Lote,'N',
                                             mMaterialPreco_Custo_Total.AsFloat);  //ver aqui sobre Lote Controle  04/11/2015
  cdsNotaFiscal_MP.Edit;
  cdsNotaFiscal_MPID_MOVESTOQUE.AsInteger := vID_Estoque;

  //gravar reserva
  vID_Estoque_Res := 0;
  if StrToFloat(FormatFloat('0.0000',cdsNotaFiscal_MPQTD_RESERVA.AsFloat)) > 0 then
  begin
    fDMEstoque_Res := TDMEstoque_Res.Create(Self);
    vID_Estoque_Res := fDMEstoque_Res.fnc_Gravar_Estoque_Res(cdsNotaFiscal_MPID_MOVESTOQUE_RES.AsInteger,
                                                             fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,
                                                             cdsNotaFiscal_MPID_MATERIAL.AsInteger,
                                                             cdsNotaFiscal_MPID_COR.AsInteger,
                                                             cdsNotaFiscal_MPNUM_ORDEM.AsInteger,
                                                             cdsNotaFiscal_MPTAMANHO.AsString,
                                                             'S','NTS',cdsNotaFiscal_MPQTD_RESERVA.AsFloat,
                                                             fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,'');
    FreeAndNil(fDMEstoque_Res);
  end;
  cdsNotaFiscal_MPID_MOVESTOQUE_RES.AsInteger := vID_Estoque_Res;
  //**************

  cdsNotaFiscal_MP.Post;
  cdsNotaFiscal_MP.ApplyUpdates(0);
end;

procedure TDMCadNotaFiscal_MP.prc_Le_Produto_Consumo;
begin
  if fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'B' then
    prc_Le_Consumo_Comb
  else
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
  end;
end;

procedure TDMCadNotaFiscal_MP.prc_Le_mMaterial;
var
  vQtdTotalAux : Real;
  vQtdAux : Real;
begin
  mMaterial.First;
  while not mMaterial.Eof do
  begin
    if fDMCadNotaFiscal.qParametros_EstGERAR_LOTE_AUT_CONSUMO.AsString = 'S' then
    begin
      fDMCadNotaFiscal.cdsEstoqueLoteAux.Close;
      fDMCadNotaFiscal.sdsEstoqueLoteAux.ParamByName('ID_PRODUTO').AsInteger := mMaterialID_Material.AsInteger;
      fDMCadNotaFiscal.sdsEstoqueLoteAux.ParamByName('FILIAL').AsInteger     := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
      fDMCadNotaFiscal.cdsEstoqueLoteAux.Open;
      vQtdTotalAux := StrToFloat(FormatFloat('0.0000',mMaterialQtd.AsFloat));
      vQtdAux      := StrToFloat(FormatFloat('0.0000',0));
      fDMCadNotaFiscal.cdsEstoqueLoteAux.First;
      while not fDMCadNotaFiscal.cdsEstoqueLoteAux.Eof do
      begin
        if StrToFloat(FormatFloat('0.0000',vQtdTotalAux)) > 0 then
        begin
          if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsEstoqueLoteAuxQTD.AsFloat)) >= StrToFloat(FormatFloat('0.0000',vQtdTotalAux)) then
            vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdTotalAux))
          else
          if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsEstoqueLoteAuxQTD.AsFloat)) < StrToFloat(FormatFloat('0.0000',vQtdTotalAux)) then
            vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsEstoqueLoteAuxQTD.AsFloat));
          prc_Gravar_Baixa_MP(fDMCadNotaFiscal.cdsEstoqueLoteAuxNUM_LOTE_CONTROLE.AsString,StrToFloat(FormatFloat('0.0000',vQtdAux)));
          vQtdTotalAux := StrToFloat(FormatFloat('0.0000',vQtdTotalAux - vQtdAux));
          if StrToFloat(FormatFloat('0.0000',vQtdTotalAux)) > 0 then
            fDMCadNotaFiscal.cdsEstoqueLoteAux.Last;
        end;
        fDMCadNotaFiscal.cdsEstoqueLoteAux.Next;
      end;
      if StrToFloat(FormatFloat('0.0000',vQtdTotalAux)) > 0 then
        prc_Gravar_Baixa_MP('',StrToFloat(FormatFloat('0.0000',vQtdTotalAux)));
    end
    else
      prc_Gravar_Baixa_MP('',StrToFloat(FormatFloat('0.0000',mMaterialQtd.AsFloat)));
    mMaterial.Next;
  end;
  mMaterial.EmptyDataSet;
end;

procedure TDMCadNotaFiscal_MP.prc_Abrir_NotaFiscal_MP(ID: Integer);
begin
  cdsNotaFiscal_MP.Close;
  sdsNotaFiscal_MP.ParamByName('ID').AsInteger := ID;
  cdsNotaFiscal_MP.Open;
end;

procedure TDMCadNotaFiscal_MP.prc_Le_Consumo_Comb;
var
  vTamanho : String;
  vQtdAux : Real;
begin
  //Alterado dia 23/02/2018  para buscar da vFicha_Tecnica2
  cdsProduto_CMat.Close;
  sdsProduto_CMat.ParamByName('ID').AsInteger                := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger;
  sdsProduto_CMat.ParamByName('ID_COR_COMBINACAO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
  cdsProduto_CMat.Open;
  if cdsProduto_CMat.IsEmpty then
    exit;

  cdsProduto_CMat.First;
  while not cdsProduto_CMat.Eof do
  begin
    vTamanho := '';
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '' then
      vTamanho := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
    vQtdAux  := StrToFloat(FormatFloat('0.00000',cdsProduto_CMatQTD_CONSUMO.AsFloat));
    //if (cdsConsumoID_GRADE_MAT.AsInteger > 0) or (cdsProduto_CMatTIPO_CONSUMO.AsString = 'T') then
    if (cdsProduto_CMatTIPO_CONSUMO.AsString = 'T') then
    begin
      if (cdsProduto_CMatTIPO_CONSUMO.AsString = 'T') then
      begin
        qConsumo_Tam.Close;
        qConsumo_Tam.ParamByName('ID').AsInteger     := cdsProduto_CMatID.AsInteger;
        qConsumo_Tam.ParamByName('ITEM').AsInteger   := cdsProduto_CMatITEM_CONSUMO.AsInteger;
        qConsumo_Tam.ParamByName('TAMANHO').AsString := vTamanho;
        qConsumo_Tam.Open;
        vQtdAux := StrToFloat(FormatFloat('0.00000',qConsumo_TamQTD_CONSUMO.AsFloat));
      end;
      prc_Gravar_mMaterial_Comb(vQtdAux,vTamanho);
    end
    else
      prc_Gravar_mMaterial_Comb(cdsProduto_CMatQTD_CONSUMO.AsFloat,'');
    cdsProduto_CMat.Next;
  end;

  {cdsConsumo.Close;
  sdsConsumo.ParamByName('ID_COMBINACAO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger;
  sdsConsumo.ParamByName('ID_PRODUTO').AsInteger    := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
  cdsConsumo.Open;
  if cdsConsumo.IsEmpty then
    exit;

  cdsConsumo.First;
  while not cdsConsumo.Eof do
  begin
    vTamanho := '';
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '' then
      vTamanho := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
    vQtdAux  := StrToFloat(FormatFloat('0.00000',cdsConsumoQTD_CONSUMO.AsFloat));
    if (cdsConsumoID_GRADE_MAT.AsInteger > 0) or (cdsConsumoTIPO_CONSUMO.AsString = 'T') then
    begin
      if (cdsConsumoTIPO_CONSUMO.AsString = 'T') then
      begin
        qConsumo_Tam.Close;
        qConsumo_Tam.ParamByName('ID').AsInteger     := cdsConsumoID.AsInteger;
        qConsumo_Tam.ParamByName('ITEM').AsInteger   := cdsConsumoITEM_CONSUMO.AsInteger;
        qConsumo_Tam.ParamByName('TAMANHO').AsString := vTamanho;
        qConsumo_Tam.Open;
        vQtdAux := StrToFloat(FormatFloat('0.00000',qConsumo_TamQTD_CONSUMO.AsFloat));
      end;
      prc_Gravar_mMaterial_Comb(vQtdAux,vTamanho);
    end
    else
      prc_Gravar_mMaterial_Comb(cdsConsumoQTD_CONSUMO.AsFloat,'');
    cdsConsumo.Next;
  end;}
end;

procedure TDMCadNotaFiscal_MP.prc_Gravar_mMaterial_Comb(Qtd_Consumo : Real; Tamanho : String);
var
  vIDCorAux : Integer;
  vQtdAux : Real;
  vQtdRes : Real;
  vNumOrdem : Integer;
begin
  vIDCorAux := cdsConsumoID_COR_MAT.AsInteger;
  if cdsConsumoID_COR_MAT.AsInteger <= 0 then
    vIDCorAux := 0;
  vQtdRes := 0;
  vNumOrdem := 0;
  if (fDMCadNotaFiscal.qParametros_EstUSA_RESERVA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) then
  begin
    qReserva.Close;
    qReserva.ParamByName('ID_PEDIDO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
    qReserva.ParamByName('ITEM_PEDIDO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger;
    qReserva.ParamByName('ID_MATERIAL').AsInteger := cdsConsumoID_MATERIAL.AsInteger;
    qReserva.ParamByName('TAMANHO').AsString      := Tamanho;
    qReserva.ParamByName('ID_COR').AsInteger      := vIDCorAux;
    qReserva.Open;
    if not(qReserva.IsEmpty) and (StrToFloat(FormatFloat('0.0000',qReservaQTD_RESERVA.AsFloat)) > 0) then
    begin
      vQtdRes := StrToFloat(FormatFloat('0.0000',qReservaQTD_RESERVA.AsFloat));
      vNumOrdem := qReservaNUM_ORDEM.AsInteger;

      ///04/02/2017
      if not (fDMCadNotaFiscal.mVerReserva.Locate('ID_Material;ID_Cor',VarArrayOf([cdsConsumoID_MATERIAL.AsInteger,vIDCorAux]),[locaseinsensitive])) then
      begin
        qOC_Pend_Ord.Close;
        qOC_Pend_Ord.ParamByName('ID_PRODUTO').AsInteger  := cdsConsumoID_MATERIAL.AsInteger;
        qOC_Pend_Ord.ParamByName('ID_COR').AsInteger      := vIDCorAux;
        qOC_Pend_Ord.ParamByName('NUM_ORDPROD').AsInteger := vNumOrdem;
        qOC_Pend_Ord.Open;
        if qOC_Pend_Ord.FieldByName('CONTADOR').AsInteger > 0 then
        begin
          fDMCadNotaFiscal.mVerReserva.Insert;
          fDMCadNotaFiscal.mVerReservaID_Material.AsInteger := cdsConsumoID_MATERIAL.AsInteger;
          fDMCadNotaFiscal.mVerReservaID_Cor.AsInteger      := vIDCorAux;
          fDMCadNotaFiscal.mVerReservaNome_Cor.AsString     := cdsConsumoNOME_COR.AsString;
          fDMCadNotaFiscal.mVerReserva.Post;
        end;
      end;
      //************
    end
    else
    begin
      ///04/02/2017
      {qOC_Pend.Close;
      qOC_Pend.ParamByName('ID_PRODUTO').AsInteger := cdsConsumoID_MATERIAL.AsInteger;
      qOC_Pend.ParamByName('ID_COR').AsInteger     := vIDCorAux;
      qOC_Pend.Open;
      if qOC_Pend.FieldByName('CONTADOR').AsInteger > 0 then
      begin
        if not (fDMCadNotaFiscal.mVerReserva.Locate('ID_Material;ID_Cor',VarArrayOf([cdsConsumoID_MATERIAL.AsInteger,vIDCorAux]),[locaseinsensitive])) then
        begin
          fDMCadNotaFiscal.mVerReserva.Insert;
          fDMCadNotaFiscal.mVerReservaID_Material.AsInteger := cdsConsumoID_MATERIAL.AsInteger;
          fDMCadNotaFiscal.mVerReservaID_Cor.AsInteger      := vIDCorAux;
          fDMCadNotaFiscal.mVerReservaNome_Cor.AsString     := cdsConsumoNOME_COR.AsString;
          fDMCadNotaFiscal.mVerReserva.Post;
        end;
      end;}
      //**************
    end;

    //Verifica as OC pendente  04/02/2017   (esta query é para ser lançada, caso a Nota Fiscal seja feita antes do lançamento da nota se entrada
    //que baixa a OC  (vai pegar as OC pendentes)  
    {if vNumOrdem > 0 then
    begin
      qReserva_OC.Close;
      qReserva_OC.ParamByName('NUM_ORDPROD').AsInteger := vNumOrdem;
      qReserva_OC.ParamByName('ID_PRODUTO').AsInteger  := cdsConsumoID_MATERIAL.AsInteger;
      qReserva_OC.ParamByName('ID_COR').AsInteger      := vIDCorAux;
      qReserva_OC.ParamByName('TAMANHO').AsString      := Tamanho;
      qReserva_OC.Open;
      vQtdAux := StrToFloat(FormatFloat('0.00000',qReserva_OCQTD.AsFloat - qReserva_OCQTD_OC_RESTANTE.AsFloat));
      vQtdAux := StrToFloat(FormatFloat('0.00000',qReserva_OCQTD_OC_ORIGINAL.AsFloat - vQtdAux));
      if StrToFloat(FormatFloat('0.00000',vQtdAux)) > 0 then
        vQtdRes := StrToFloat(FormatFloat('0.00000',vQtdRes + vQtdAux));
    end;
    //******************}
  end;

  if (mMaterial.Locate('ID_Material;Tamanho;ID_Cor;Num_Ordem',VarArrayOf([cdsConsumoID_MATERIAL.AsInteger,Tamanho,vIDCorAux,vNumOrdem]),[locaseinsensitive])) then
    mMaterial.Edit
  else
  begin
    mMaterial.Insert;
    mMaterialID_Material.AsInteger := cdsConsumoID_MATERIAL.AsInteger;
    mMaterialTamanho.AsString      := Tamanho;
    mMaterialID_Cor.AsInteger      := vIDCorAux;
    mMaterialNum_Ordem.AsInteger   := vNumOrdem;
    mMaterialPreco_Custo.AsFloat       := StrToFloat(FormatFloat('0.0000',cdsConsumoPRECO_CUSTO.AsFloat));
    mMaterialPreco_Custo_Total.AsFloat := StrToFloat(FormatFloat('0.0000',cdsConsumoPRECO_CUSTO_TOTAL.AsFloat));
    mMaterialUnidade.AsString      := cdsConsumoUNIDADE.AsString;
    mMaterialQtd_Reserva.AsFloat   := StrToFloat(FormatFloat('0.0000',vQtdRes));
  end;
  vQtdAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * Qtd_Consumo));
  mMaterialQtd.AsFloat := StrToFloat(FormatFloat('0.00000',mMaterialQtd.AsFloat + vQtdAux));
  mMaterial.Post;
end;

procedure TDMCadNotaFiscal_MP.prc_Gravar_mMaterial_Comb2(Qtd_Consumo: Real;
  Tamanho: String);
var
  vIDCorAux : Integer;
  vQtdAux : Real;
  vQtdRes : Real;
  vNumOrdem : Integer;
begin
  vIDCorAux := cdsProduto_CMatID_COR_MAT.AsInteger;
  if cdsProduto_CMatID_COR_MAT.AsInteger <= 0 then
    vIDCorAux := 0;
  vQtdRes := 0;
  vNumOrdem := 0;
  if (fDMCadNotaFiscal.qParametros_EstUSA_RESERVA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) then
  begin
    qReserva.Close;
    qReserva.ParamByName('ID_PEDIDO').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
    qReserva.ParamByName('ITEM_PEDIDO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger;
    qReserva.ParamByName('ID_MATERIAL').AsInteger := cdsProduto_CMatID_MATERIAL.AsInteger;
    qReserva.ParamByName('TAMANHO').AsString      := Tamanho;
    qReserva.ParamByName('ID_COR').AsInteger      := vIDCorAux;
    qReserva.Open;
    if not(qReserva.IsEmpty) and (StrToFloat(FormatFloat('0.0000',qReservaQTD_RESERVA.AsFloat)) > 0) then
    begin
      vQtdRes := StrToFloat(FormatFloat('0.0000',qReservaQTD_RESERVA.AsFloat));
      vNumOrdem := qReservaNUM_ORDEM.AsInteger;

      ///04/02/2017
      if not (fDMCadNotaFiscal.mVerReserva.Locate('ID_Material;ID_Cor',VarArrayOf([cdsProduto_CMatID_MATERIAL.AsInteger,vIDCorAux]),[locaseinsensitive])) then
      begin
        qOC_Pend_Ord.Close;
        qOC_Pend_Ord.ParamByName('ID_PRODUTO').AsInteger  := cdsProduto_CMatID_MATERIAL.AsInteger;
        qOC_Pend_Ord.ParamByName('ID_COR').AsInteger      := vIDCorAux;
        qOC_Pend_Ord.ParamByName('NUM_ORDPROD').AsInteger := vNumOrdem;
        qOC_Pend_Ord.Open;
        if qOC_Pend_Ord.FieldByName('CONTADOR').AsInteger > 0 then
        begin
          fDMCadNotaFiscal.mVerReserva.Insert;
          fDMCadNotaFiscal.mVerReservaID_Material.AsInteger := cdsProduto_CMatID_MATERIAL.AsInteger;
          fDMCadNotaFiscal.mVerReservaID_Cor.AsInteger      := vIDCorAux;
          fDMCadNotaFiscal.mVerReservaNome_Cor.AsString     := cdsProduto_CMatNOME_COR_MAT.AsString;
          fDMCadNotaFiscal.mVerReserva.Post;
        end;
      end;
      //************
    end
    else
    begin
      ///04/02/2017
      {qOC_Pend.Close;
      qOC_Pend.ParamByName('ID_PRODUTO').AsInteger := cdsConsumoID_MATERIAL.AsInteger;
      qOC_Pend.ParamByName('ID_COR').AsInteger     := vIDCorAux;
      qOC_Pend.Open;
      if qOC_Pend.FieldByName('CONTADOR').AsInteger > 0 then
      begin
        if not (fDMCadNotaFiscal.mVerReserva.Locate('ID_Material;ID_Cor',VarArrayOf([cdsConsumoID_MATERIAL.AsInteger,vIDCorAux]),[locaseinsensitive])) then
        begin
          fDMCadNotaFiscal.mVerReserva.Insert;
          fDMCadNotaFiscal.mVerReservaID_Material.AsInteger := cdsConsumoID_MATERIAL.AsInteger;
          fDMCadNotaFiscal.mVerReservaID_Cor.AsInteger      := vIDCorAux;
          fDMCadNotaFiscal.mVerReservaNome_Cor.AsString     := cdsConsumoNOME_COR.AsString;
          fDMCadNotaFiscal.mVerReserva.Post;
        end;
      end;}
      //**************
    end;

    //Verifica as OC pendente  04/02/2017   (esta query é para ser lançada, caso a Nota Fiscal seja feita antes do lançamento da nota se entrada
    //que baixa a OC  (vai pegar as OC pendentes)  
    {if vNumOrdem > 0 then
    begin
      qReserva_OC.Close;
      qReserva_OC.ParamByName('NUM_ORDPROD').AsInteger := vNumOrdem;
      qReserva_OC.ParamByName('ID_PRODUTO').AsInteger  := cdsConsumoID_MATERIAL.AsInteger;
      qReserva_OC.ParamByName('ID_COR').AsInteger      := vIDCorAux;
      qReserva_OC.ParamByName('TAMANHO').AsString      := Tamanho;
      qReserva_OC.Open;
      vQtdAux := StrToFloat(FormatFloat('0.00000',qReserva_OCQTD.AsFloat - qReserva_OCQTD_OC_RESTANTE.AsFloat));
      vQtdAux := StrToFloat(FormatFloat('0.00000',qReserva_OCQTD_OC_ORIGINAL.AsFloat - vQtdAux));
      if StrToFloat(FormatFloat('0.00000',vQtdAux)) > 0 then
        vQtdRes := StrToFloat(FormatFloat('0.00000',vQtdRes + vQtdAux));
    end;
    //******************}
  end;

  if (mMaterial.Locate('ID_Material;Tamanho;ID_Cor;Num_Ordem',VarArrayOf([cdsProduto_CMatID_MATERIAL.AsInteger,Tamanho,vIDCorAux,vNumOrdem]),[locaseinsensitive])) then
    mMaterial.Edit
  else
  begin
    mMaterial.Insert;
    mMaterialID_Material.AsInteger     := cdsProduto_CMatID_MATERIAL.AsInteger;
    mMaterialTamanho.AsString          := Tamanho;
    mMaterialID_Cor.AsInteger          := vIDCorAux;
    mMaterialNum_Ordem.AsInteger       := vNumOrdem;
    mMaterialPreco_Custo.AsFloat       := StrToFloat(FormatFloat('0.0000',cdsProduto_CMatPRECO_CUSTO.AsFloat));
    mMaterialPreco_Custo_Total.AsFloat := StrToFloat(FormatFloat('0.0000',cdsProduto_CMatPRECO_CUSTO_TOTAL.AsFloat));
    mMaterialUnidade.AsString          := cdsProduto_CMatUNIDADE.AsString;
    mMaterialQtd_Reserva.AsFloat       := StrToFloat(FormatFloat('0.0000',vQtdRes));
  end;
  vQtdAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * Qtd_Consumo));
  mMaterialQtd.AsFloat := StrToFloat(FormatFloat('0.00000',mMaterialQtd.AsFloat + vQtdAux));
  mMaterial.Post;
end;

end.
