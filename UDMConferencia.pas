unit UDMConferencia;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, LogTypes,
  frxClass, frxDBSet, frxRich, frxExportMail, frxExportPDF, Forms, Dialogs;

type
  TDMConferencia = class(TDataModule)
    sdsPedido_Item: TSQLDataSet;
    dspPedido_Item: TDataSetProvider;
    cdsPedido_Item: TClientDataSet;
    dsPedido_Item: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    sdsFilialID: TIntegerField;
    sdsFilialNOME: TStringField;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    sdsPrc_Atualiza_Status_Ped: TSQLDataSet;
    mPedidoAux: TClientDataSet;
    mPedidoAuxID_Pedido: TIntegerField;
    sdsPedido: TSQLDataSet;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    cdsPedidoID: TIntegerField;
    cdsPedidoNUM_PEDIDO: TIntegerField;
    cdsPedidoPEDIDO_CLIENTE: TStringField;
    cdsPedidoDTEMISSAO: TDateField;
    cdsPedidoCONFERIDO: TStringField;
    cdsPedidoID_CLIENTE: TIntegerField;
    cdsPedidoFATURADO: TStringField;
    cdsPedidoNOME_CLIENTE: TStringField;
    dsPedido: TDataSource;
    sdsConferencia: TSQLDataSet;
    dspConferencia: TDataSetProvider;
    cdsConferencia: TClientDataSet;
    dsConferencia: TDataSource;
    sdsConferenciaID: TIntegerField;
    sdsConferenciaDTINICIO: TDateField;
    sdsConferenciaHRINICIO: TTimeField;
    sdsConferenciaTOTAL_ITENS: TIntegerField;
    sdsConferenciaTOTAL_PRODUTO_DIF: TIntegerField;
    sdsConferenciaQTD_PRODUITO: TIntegerField;
    sdsConferenciaPESO_LIQ: TFloatField;
    sdsConferenciaPESO_BRU: TFloatField;
    sdsConferenciaENCERRADO: TStringField;
    sdsConferenciaDTENCERRADO: TDateField;
    sdsConferenciaHRENCERRADO: TTimeField;
    sdsConferenciaUSUARIO: TStringField;
    cdsConferenciaID: TIntegerField;
    cdsConferenciaDTINICIO: TDateField;
    cdsConferenciaHRINICIO: TTimeField;
    cdsConferenciaTOTAL_ITENS: TIntegerField;
    cdsConferenciaTOTAL_PRODUTO_DIF: TIntegerField;
    cdsConferenciaQTD_PRODUITO: TIntegerField;
    cdsConferenciaPESO_LIQ: TFloatField;
    cdsConferenciaPESO_BRU: TFloatField;
    cdsConferenciaENCERRADO: TStringField;
    cdsConferenciaDTENCERRADO: TDateField;
    cdsConferenciaHRENCERRADO: TTimeField;
    cdsConferenciaUSUARIO: TStringField;
    dsConferencia_Mestre: TDataSource;
    qConferencia: TSQLQuery;
    qConferenciaID: TIntegerField;
    qConferenciaDTINICIO: TDateField;
    qConferenciaUSUARIO: TStringField;
    qConferenciaENCERRADO: TStringField;
    sdsConferencia_Itens: TSQLDataSet;
    cdsConferencia_Itens: TClientDataSet;
    dsConferencia_Itens: TDataSource;
    sdsConferencia_ItensID: TIntegerField;
    sdsConferencia_ItensITEM: TIntegerField;
    sdsConferencia_ItensQTD: TFloatField;
    sdsConferencia_ItensPESO_LIQ: TFloatField;
    sdsConferencia_ItensPESO_BRU: TFloatField;
    sdsConferencia_ItensENCERRADO: TStringField;
    sdsConferencia_ItensETIQUETA: TStringField;
    cdsConferenciasdsConferencia_Itens: TDataSetField;
    cdsConferencia_ItensID: TIntegerField;
    cdsConferencia_ItensITEM: TIntegerField;
    cdsConferencia_ItensQTD: TFloatField;
    cdsConferencia_ItensPESO_LIQ: TFloatField;
    cdsConferencia_ItensPESO_BRU: TFloatField;
    cdsConferencia_ItensENCERRADO: TStringField;
    cdsConferencia_ItensETIQUETA: TStringField;
    dsConferencia_Itens_Mestre: TDataSource;
    cdsConferencia_Ped: TClientDataSet;
    dsConferencia_Ped: TDataSource;
    qCBarra: TSQLQuery;
    qCBarraID: TIntegerField;
    qCBarraPESOLIQUIDO: TFloatField;
    qCBarraPESOBRUTO: TFloatField;
    qCBarraCOD_BARRA: TStringField;
    sdsPedidoID: TIntegerField;
    sdsPedidoNUM_PEDIDO: TIntegerField;
    sdsPedidoPEDIDO_CLIENTE: TStringField;
    sdsPedidoDTEMISSAO: TDateField;
    sdsPedidoCONFERIDO: TStringField;
    sdsPedidoID_CLIENTE: TIntegerField;
    sdsPedidoFATURADO: TStringField;
    sdsPedidoNOME_CLIENTE: TStringField;
    sdsPedido_ItemID: TIntegerField;
    sdsPedido_ItemITEM: TIntegerField;
    sdsPedido_ItemID_PRODUTO: TIntegerField;
    sdsPedido_ItemREFERENCIA: TStringField;
    sdsPedido_ItemNOMEPRODUTO: TStringField;
    sdsPedido_ItemQTD: TFloatField;
    sdsPedido_ItemQTD_FATURADO: TFloatField;
    sdsPedido_ItemQTD_RESTANTE: TFloatField;
    sdsPedido_ItemQTD_LIBERADA: TFloatField;
    cdsPedido_ItemID: TIntegerField;
    cdsPedido_ItemITEM: TIntegerField;
    cdsPedido_ItemID_PRODUTO: TIntegerField;
    cdsPedido_ItemREFERENCIA: TStringField;
    cdsPedido_ItemNOMEPRODUTO: TStringField;
    cdsPedido_ItemQTD: TFloatField;
    cdsPedido_ItemQTD_FATURADO: TFloatField;
    cdsPedido_ItemQTD_RESTANTE: TFloatField;
    cdsPedido_ItemQTD_LIBERADA: TFloatField;
    sdsPedido_ItemQTD_CONFERIDO: TFloatField;
    cdsPedido_ItemQTD_CONFERIDO: TFloatField;
    sdsConferenciaFILIAL: TIntegerField;
    cdsConferenciaFILIAL: TIntegerField;
    sdsPedidoFILIAL: TIntegerField;
    cdsPedidoFILIAL: TIntegerField;
    sdsConferencia_Ped: TSQLDataSet;
    sdsConferencia_PedID: TIntegerField;
    sdsConferencia_PedITEM: TIntegerField;
    sdsConferencia_PedITEM_REG: TIntegerField;
    sdsConferencia_PedID_PEDIDO: TIntegerField;
    sdsConferencia_PedITEM_PEDIDO: TIntegerField;
    sdsConferencia_PedID_PRODUTO: TIntegerField;
    sdsConferencia_PedQTD: TFloatField;
    sdsConferencia_PedPESO_LIQ: TFloatField;
    sdsConferencia_PedPESO_BRU: TFloatField;
    sdsConferencia_PedENCERRADO: TStringField;
    cdsConferencia_ItenssdsConferencia_Ped: TDataSetField;
    cdsConferencia_PedID: TIntegerField;
    cdsConferencia_PedITEM: TIntegerField;
    cdsConferencia_PedITEM_REG: TIntegerField;
    cdsConferencia_PedID_PEDIDO: TIntegerField;
    cdsConferencia_PedITEM_PEDIDO: TIntegerField;
    cdsConferencia_PedID_PRODUTO: TIntegerField;
    cdsConferencia_PedQTD: TFloatField;
    cdsConferencia_PedPESO_LIQ: TFloatField;
    cdsConferencia_PedPESO_BRU: TFloatField;
    cdsConferencia_PedENCERRADO: TStringField;
    qPedido_Ver: TSQLQuery;
    qPedido_VerNUM_PEDIDO: TIntegerField;
    qPedido_VerREFERENCIA: TStringField;
    qPedido_VerNOMEPRODUTO: TStringField;
    qPedido_VerCOD_BARRA: TStringField;
    cdsConferencia_PedclNum_Pedido: TIntegerField;
    cdsConferencia_PedclCodBarra: TStringField;
    cdsConferencia_PedclReferencia: TStringField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxEtiqueta: TfrxDBDataset;
    sdsConferencia_ItensQTD_TIPO_PRODUTO: TIntegerField;
    cdsConferencia_ItensQTD_TIPO_PRODUTO: TIntegerField;
    qQtdProd: TSQLQuery;
    qQtdProdCONTADOR: TIntegerField;
    sdsEtiqueta: TSQLDataSet;
    dspEtiqueta: TDataSetProvider;
    cdsEtiqueta: TClientDataSet;
    dsEtiqueta: TDataSource;
    cdsEtiquetaID: TIntegerField;
    cdsEtiquetaITEM: TIntegerField;
    cdsEtiquetaQTD: TFloatField;
    cdsEtiquetaPESO_LIQ: TFloatField;
    cdsEtiquetaPESO_BRU: TFloatField;
    cdsEtiquetaENCERRADO: TStringField;
    cdsEtiquetaETIQUETA: TStringField;
    cdsEtiquetaQTD_TIPO_PRODUTO: TIntegerField;
    cdsEtiquetaDTINICIO: TDateField;
    cdsEtiquetaHRINICIO: TTimeField;
    cdsEtiquetaUSUARIO: TStringField;
    sdsQtdPed: TSQLDataSet;
    dspQtdPed: TDataSetProvider;
    cdsQtdPed: TClientDataSet;
    dsQtdPed: TDataSource;
    cdsQtdPedQTD: TFloatField;
    cdsQtdPedID_PEDIDO: TIntegerField;
    cdsQtdPedITEM_PEDIDO: TIntegerField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaUSUARIO: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaDTINICIO: TDateField;
    cdsConsultaHRINICIO: TTimeField;
    cdsConsultaTOTAL_ITENS: TIntegerField;
    cdsConsultaTOTAL_PRODUTO_DIF: TIntegerField;
    cdsConsultaQTD_PRODUITO: TIntegerField;
    cdsConsultaPESO_LIQ: TFloatField;
    cdsConsultaPESO_BRU: TFloatField;
    cdsConsultaENCERRADO: TStringField;
    cdsConsultaDTENCERRADO: TDateField;
    cdsConsultaHRENCERRADO: TTimeField;
    cdsConsultaFILIAL: TIntegerField;
    sdsConsulta_Itens: TSQLDataSet;
    dspConsulta_Itens: TDataSetProvider;
    cdsConsulta_Itens: TClientDataSet;
    dsConsulta_Itens: TDataSource;
    cdsConsulta_ItensID: TIntegerField;
    cdsConsulta_ItensITEM: TIntegerField;
    cdsConsulta_ItensQTD: TFloatField;
    cdsConsulta_ItensPESO_LIQ: TFloatField;
    cdsConsulta_ItensPESO_BRU: TFloatField;
    cdsConsulta_ItensENCERRADO: TStringField;
    cdsConsulta_ItensETIQUETA: TStringField;
    cdsConsulta_ItensQTD_TIPO_PRODUTO: TIntegerField;
    sdsConsulta_Ped: TSQLDataSet;
    dspConsulta_Ped: TDataSetProvider;
    cdsConsulta_Ped: TClientDataSet;
    dsConsulta_Ped: TDataSource;
    mImpConferencia: TClientDataSet;
    mImpConferenciaID_Conferencia: TIntegerField;
    mImpConferenciaUsuario: TStringField;
    mImpConferenciaQtd_Total: TFloatField;
    mImpConferenciaTotal_Etiqueta: TIntegerField;
    mImpConferenciaTotal_Prod_Dif: TIntegerField;
    mImpConferenciaItem_Etiqueta: TIntegerField;
    mImpConferenciaQtd_Total_Etiq: TFloatField;
    mImpConferenciaTotal_Prod_Dif_Etiq: TIntegerField;
    mImpConferenciaNum_Pedido: TIntegerField;
    mImpConferenciaItem_Pedido: TIntegerField;
    mImpConferenciaID_Produto: TIntegerField;
    mImpConferenciaReferencia: TStringField;
    mImpConferenciaNome_Prod: TStringField;
    mImpConferenciaCod_Barra: TStringField;
    dsmImpConferencia: TDataSource;
    cdsConsulta_PedQTD: TFloatField;
    cdsConsulta_PedITEM: TIntegerField;
    cdsConsulta_PedID_PEDIDO: TIntegerField;
    cdsConsulta_PedITEM_PEDIDO: TIntegerField;
    cdsConsulta_PedID_PRODUTO: TIntegerField;
    cdsConsulta_PedREFERENCIA: TStringField;
    cdsConsulta_PedNOME: TStringField;
    cdsConsulta_PedCOD_BARRA: TStringField;
    cdsConsulta_PedNUM_PEDIDO: TIntegerField;
    frxImpConferencia: TfrxDBDataset;
    mImpConferenciaQtd_Ped: TIntegerField;
    qParametros_Ped: TSQLQuery;
    qParametros_PedCONFERENCIA_SIMPLES: TStringField;
    sdsPedido_ItemDTCONFERENCIA: TDateField;
    cdsPedido_ItemDTCONFERENCIA: TDateField;
    sdsPedidoCANCELADO: TStringField;
    sdsPedidoTIPO_REG: TStringField;
    cdsPedidoCANCELADO: TStringField;
    cdsPedidoTIPO_REG: TStringField;
    sdsPedido_ItemHRCONFERENCIA: TTimeField;
    sdsPedido_ItemUSUARIO_CONF: TStringField;
    cdsPedido_ItemHRCONFERENCIA: TTimeField;
    cdsPedido_ItemUSUARIO_CONF: TStringField;
    sdsPedido_Item_Tipo: TSQLDataSet;
    cdsPedido_Item_Tipo: TClientDataSet;
    cdsPedido_Item_TipoID: TIntegerField;
    cdsPedido_Item_TipoITEM: TIntegerField;
    cdsPedido_Item_TipoCOMPRIMENTO: TFloatField;
    cdsPedido_Item_TipoLARGURA: TFloatField;
    cdsPedido_Item_TipoALTURA: TFloatField;
    cdsPedido_Item_TipoVLR_KG: TFloatField;
    cdsPedido_Item_TipoQTD: TFloatField;
    cdsPedido_Item_TipoVLR_UNITARIO: TFloatField;
    cdsPedido_Item_TipoVLR_TOTAL: TFloatField;
    cdsPedido_Item_TipoDIAMETRO: TFloatField;
    cdsPedido_Item_TipoDIAMETRO_EXT: TFloatField;
    cdsPedido_Item_TipoDIAMETRO_INT: TFloatField;
    cdsPedido_Item_TipoPAREDE: TFloatField;
    cdsPedido_Item_TipoPESO: TFloatField;
    cdsPedido_Item_TipoCOMPLEMENTO_NOME: TStringField;
    cdsPedido_Item_TipoTIPO_ORCAMENTO: TStringField;
    cdsPedido_Item_TipoDESCRICAO_TIPO: TStringField;
    cdsPedido_Item_TipoID_ACABAMENTO: TIntegerField;
    cdsPedido_Item_TipoID_REDONDO_MOD: TIntegerField;
    cdsPedido_Item_TipoID_CMOEDA: TIntegerField;
    cdsPedido_Item_TipoID_FUROS: TIntegerField;
    cdsPedido_Item_TipoID_FURACAO: TIntegerField;
    cdsPedido_Item_TipoID_PERFIL: TIntegerField;
    cdsPedido_Item_TipoID_VIDRO: TIntegerField;
    cdsPedido_Item_TipoclNome_Acabamento: TStringField;
    cdsPedido_Item_TipoclNome_Redondo_Mod: TStringField;
    cdsPedido_Item_TipoclNome_CMoeda: TStringField;
    cdsPedido_Item_TipoclNome_Furos: TStringField;
    cdsPedido_Item_TipoclNome_Furacao: TStringField;
    cdsPedido_Item_TipoclNome_Perfil: TStringField;
    cdsPedido_Item_TipoclNome_Vidro: TStringField;
    cdsPedido_Item_TipoQTD_FUROS: TIntegerField;
    cdsPedido_Item_TipoVLR_DOBRA: TFloatField;
    cdsPedido_Item_TipoID_CHAPA: TIntegerField;
    dsPedido_Item_Tipo: TDataSource;
    dspPedido_Item_Tipo: TDataSetProvider;
    sdsPedidoEMAIL_COMPRAS: TStringField;
    cdsPedidoEMAIL_COMPRAS: TStringField;
    mAuxConf: TClientDataSet;
    mAuxConfID_Pedido: TIntegerField;
    mAuxConfItem: TIntegerField;
    mAuxConfID_Produto: TIntegerField;
    mAuxConfID_Cor: TIntegerField;
    mAuxConfNome_Produto: TStringField;
    mAuxConfNome_Cor: TStringField;
    mAuxConfQtd: TIntegerField;
    dsmAuxConf: TDataSource;
    sdsPedido_ItemID_COR: TFMTBCDField;
    cdsPedido_ItemID_COR: TFMTBCDField;
    mAuxConfReferencia: TStringField;
    qCombinacao: TSQLQuery;
    qCombinacaoID: TFMTBCDField;
    qCombinacaoNOME: TStringField;
    sdsPedido_Conf: TSQLDataSet;
    dspPedido_Conf: TDataSetProvider;
    cdsPedido_Conf: TClientDataSet;
    dsPedido_Conf: TDataSource;
    sdsPedido_ConfID: TIntegerField;
    sdsPedido_ConfITEM: TIntegerField;
    sdsPedido_ConfITEM_CONF: TIntegerField;
    sdsPedido_ConfQTD: TIntegerField;
    sdsPedido_ConfID_MOVESTOQUE: TIntegerField;
    cdsPedido_ConfID: TIntegerField;
    cdsPedido_ConfITEM: TIntegerField;
    cdsPedido_ConfITEM_CONF: TIntegerField;
    cdsPedido_ConfQTD: TIntegerField;
    cdsPedido_ConfID_MOVESTOQUE: TIntegerField;
    qPedidoConf: TSQLQuery;
    qPedidoConfITEM_CONF: TIntegerField;
    sdsPedido_ItemUNIDADE: TStringField;
    cdsPedido_ItemUNIDADE: TStringField;
    sdsPedido_ItemTAMANHO: TStringField;
    cdsPedido_ItemTAMANHO: TStringField;
    sdsPedido_ConfDATA: TDateField;
    cdsPedido_ConfDATA: TDateField;
    sdsPedido_ItemVLR_UNITARIO: TFloatField;
    cdsPedido_ItemVLR_UNITARIO: TFloatField;
    cdsPedido_ItemclNome_Cor: TStringField;
    qCBarraCor: TSQLQuery;
    qCBarraCorCOD_BARRA: TStringField;
    qCBarraCorID_PRODUTO: TIntegerField;
    mAuxConfTamanho: TStringField;
    qCBarraCorID_COR: TIntegerField;
    qCBarraCorTAMANHO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsConferencia_PedCalcFields(DataSet: TDataSet);
    procedure cdsPedido_ItemCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    ctPedido : String;
    ctPedido_Item  : String;
    ctConsulta : String;
    vID_Pedido_Fat : Integer;
    vNum_Pedido_Fat : Integer;
    vID_Conferencia : Integer;

    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Inserir_Itens;
    procedure prc_Inserir_Ped;

    procedure prc_Imp_Etiqueta(ID, Item : Integer);

  end;

var
  DMConferencia: TDMConferencia;

implementation

uses DmdDatabase, uUtilPadrao, LogProvider;

{$R *.dfm}

procedure TDMConferencia.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  qParametros_Ped.Open;
  ctPedido      := sdsPedido.CommandText;
  if qParametros_PedCONFERENCIA_SIMPLES.AsString <> 'S' then
    ctPedido := ctPedido + ' WHERE (P.faturado <> ' + QuotedStr('S') + ')'
              + ' AND (P.faturado <> ' + QuotedStr('C') + ')'
              + ' AND (P.TIPO_REG = ' + QuotedStr('P') + ')'
              + ' AND (SELECT SUM(coalesce(PI.qtd_restante,0) - coalesce(PI.qtd_liberada,0) - coalesce(PI.qtd_conferido,0)) FROM PEDIDO_ITEM PI  WHERE PI.ID = P.ID) > 0 ';
  ctPedido_Item := sdsPedido_Item.CommandText;
  if qParametros_PedCONFERENCIA_SIMPLES.AsString <> 'S' then
    ctPedido_Item := ctPedido_Item + ' AND (coalesce(ITE.qtd_restante,0) - coalesce(ITE.qtd_liberada,0)) > 0 ';

  ctConsulta    := sdsConsulta.CommandText;
  cdsFilial.Open;
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


procedure TDMConferencia.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMConferencia.prc_Localizar(ID: Integer);
begin
  cdsConferencia.Close;
  sdsConferencia.ParamByName('ID').AsInteger := ID;
  cdsConferencia.Open;

  cdsConferencia_Itens.Close;
  cdsConferencia_Itens.Open;
  cdsConferencia_Itens.Last;

  cdsConferencia_Ped.Close;
  cdsConferencia_Ped.Open;
  cdsConferencia_Ped.Last;
end;

procedure TDMConferencia.prc_Inserir;
var
  vAux: Integer;
  vNumAux: Integer;
begin
  if not cdsConferencia.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CONFERENCIA',0);

  cdsConferencia.Insert;
  cdsConferenciaID.AsInteger := vAux;
  cdsConferenciaFILIAL.AsInteger := cdsPedidoFILIAL.AsInteger;
  cdsConferenciaDTINICIO.AsDateTime := Date;
  cdsConferenciaHRINICIO.AsDateTime := Now;
  cdsConferenciaENCERRADO.AsString  := 'N';
  cdsConferenciaPESO_BRU.AsFloat    := 0;
  cdsConferenciaPESO_LIQ.AsFloat    := 0;
  cdsConferenciaQTD_PRODUITO.AsFloat := 0;
  cdsConferenciaTOTAL_ITENS.AsFloat       := 0;
  cdsConferenciaTOTAL_PRODUTO_DIF.AsFloat := 0;
  cdsConferenciaUSUARIO.AsString          := vUsuario;
end;

procedure TDMConferencia.prc_Inserir_Itens;
var
  vItemAux : Integer;
begin
  cdsConferencia_Itens.Last;
  vItemAux := cdsConferencia_ItensITEM.AsInteger;

  cdsConferencia_Itens.Insert;
  cdsConferencia_ItensID.AsInteger   := cdsConferenciaID.AsInteger;
  cdsConferencia_ItensITEM.AsInteger := vItemAux + 1;
  cdsConferencia_ItensETIQUETA.AsString  := 'N';
  cdsConferencia_ItensENCERRADO.AsString := 'N';
  cdsConferencia_ItensPESO_LIQ.AsFloat   := 0;
  cdsConferencia_ItensPESO_BRU.AsFloat   := 0;
end;

procedure TDMConferencia.prc_Inserir_Ped;
var
  vItemAux : Integer;
begin
  cdsConferencia_Ped.Last;
  vItemAux := cdsConferencia_PedITEM_REG.AsInteger;

  cdsConferencia_Ped.Insert;
  cdsConferencia_PedID.AsInteger       := cdsConferencia_ItensID.AsInteger;
  cdsConferencia_PedITEM.AsInteger     := cdsConferencia_ItensITEM.AsInteger;
  cdsConferencia_PedITEM_REG.AsInteger := vItemAux + 1;
  cdsConferencia_PedQTD.AsFloat        := 0;
  cdsConferencia_PedPESO_BRU.AsFloat   := 0;
  cdsConferencia_PedPESO_LIQ.AsFloat   := 0;
end;

procedure TDMConferencia.cdsConferencia_PedCalcFields(DataSet: TDataSet);
begin
  if cdsConferencia_PedclNum_Pedido.AsInteger <= 0 then
  begin
    qPedido_Ver.Close;
    qPedido_Ver.ParamByName('ID').AsInteger   := cdsConferencia_PedID_PEDIDO.AsInteger;
    qPedido_Ver.ParamByName('ITEM').AsInteger := cdsConferencia_PedITEM_PEDIDO.AsInteger;
    qPedido_Ver.Open;
    cdsConferencia_PedclNum_Pedido.AsInteger := qPedido_VerNUM_PEDIDO.AsInteger;
    cdsConferencia_PedclCodBarra.AsString    := qPedido_VerCOD_BARRA.AsString;
    cdsConferencia_PedclReferencia.AsString  := qPedido_VerREFERENCIA.AsString;
  end;
end;

procedure TDMConferencia.prc_Imp_Etiqueta(ID, Item: Integer);
var
  vArq : String;
begin
  cdsEtiqueta.Close;
  sdsEtiqueta.ParamByName('ID').AsInteger   := ID;
  sdsEtiqueta.ParamByName('ITEM').AsInteger := Item;
  cdsEtiqueta.Open;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Etiq_Conferencia.fr3';
  if FileExists(vArq) then
    frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    MessageDlg('Relatório não localizado: ' + vArq , mtInformation, [mbOk], 0);
    Exit;
  end;
  frxReport1.ShowReport;
end;

procedure TDMConferencia.cdsPedido_ItemCalcFields(DataSet: TDataSet);
begin
  if cdsPedido_ItemID_COR.AsInteger > 0 then
  begin
    qCombinacao.Close;
    qCombinacao.ParamByName('ID').AsInteger := cdsPedido_ItemID_COR.AsInteger;
    qCombinacao.Open;
    cdsPedido_ItemclNome_Cor.AsString := qCombinacaoNOME.AsString;
  end;
end;

end.
