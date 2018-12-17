unit UDMLoteImp;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, Variants,
  frxClass, frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDMLoteImp = class(TDataModule)
    sdsLote: TSQLDataSet;
    dspLote: TDataSetProvider;
    cdsLote: TClientDataSet;
    dsLote: TDataSource;
    dsLote_Mestre: TDataSource;
    sdsTalao: TSQLDataSet;
    cdsTalao: TClientDataSet;
    dsTalao: TDataSource;
    dsTalao_Mestre: TDataSource;
    sdsLote_Mat: TSQLDataSet;
    dspLote_Mat: TDataSetProvider;
    cdsLote_Mat: TClientDataSet;
    dsLote_Mat: TDataSource;
    sdsLote_MatNUM_ORDEM: TIntegerField;
    sdsLote_MatITEM: TIntegerField;
    sdsLote_MatID_MATERIAL: TIntegerField;
    sdsLote_MatID_COR: TIntegerField;
    sdsLote_MatCARIMBO: TStringField;
    sdsLote_MatTAMANHO: TStringField;
    sdsLote_MatQTD_CONSUMO: TFloatField;
    sdsLote_MatQTD_PRODUTO: TFloatField;
    cdsLote_MatNUM_ORDEM: TIntegerField;
    cdsLote_MatITEM: TIntegerField;
    cdsLote_MatID_MATERIAL: TIntegerField;
    cdsLote_MatID_COR: TIntegerField;
    cdsLote_MatCARIMBO: TStringField;
    cdsLote_MatTAMANHO: TStringField;
    cdsLote_MatQTD_CONSUMO: TFloatField;
    cdsLote_MatQTD_PRODUTO: TFloatField;
    sdsLote_MatCARIMBOAUX: TStringField;
    cdsLote_MatCARIMBOAUX: TStringField;
    sdsLote_MatID_OC: TIntegerField;
    sdsLote_MatITEM_OC: TIntegerField;
    sdsLote_MatNUM_OC: TIntegerField;
    sdsLote_MatID_FORNECEDOR: TIntegerField;
    cdsLote_MatID_OC: TIntegerField;
    cdsLote_MatITEM_OC: TIntegerField;
    cdsLote_MatNUM_OC: TIntegerField;
    cdsLote_MatID_FORNECEDOR: TIntegerField;
    sdsLote_MatQTD_OC_FAT: TFloatField;
    cdsLote_MatQTD_OC_FAT: TFloatField;
    sdsLote_MatGERADO: TStringField;
    cdsLote_MatGERADO: TStringField;
    cdsLoteID: TIntegerField;
    cdsLoteNUM_LOTE: TIntegerField;
    cdsLoteNUM_ORDEM: TIntegerField;
    cdsLoteQTD_TALOES: TIntegerField;
    cdsLoteQTD: TFloatField;
    cdsLoteID_PRODUTO: TIntegerField;
    cdsLoteREFERENCIA: TStringField;
    cdsLoteNOME: TStringField;
    cdsLotesdsTalao: TDataSetField;
    sdsTalaoID: TIntegerField;
    sdsTalaoNUM_TALAO: TIntegerField;
    sdsTalaoQTD: TFloatField;
    sdsTalaoIMPRESSO: TStringField;
    sdsTalaoID_PROCESSO: TIntegerField;
    sdsTalaoNOME_PROCESSO: TStringField;
    cdsTalaoID: TIntegerField;
    cdsTalaoNUM_TALAO: TIntegerField;
    cdsTalaoQTD: TFloatField;
    cdsTalaoIMPRESSO: TStringField;
    cdsTalaoID_PROCESSO: TIntegerField;
    cdsTalaoNOME_PROCESSO: TStringField;
    sdsTalao_Ped: TSQLDataSet;
    cdsTalao_Ped: TClientDataSet;
    dsTalao_Ped: TDataSource;
    cdsTalaosdsTalao_Ped: TDataSetField;
    sdsTalao_PedID: TIntegerField;
    sdsTalao_PedNUM_TALAO: TIntegerField;
    sdsTalao_PedID_PEDIDO: TIntegerField;
    sdsTalao_PedITEM_PEDIDO: TIntegerField;
    sdsTalao_PedID_CLIENTE: TIntegerField;
    sdsTalao_PedQTD: TFloatField;
    sdsTalao_PedNUM_PEDIDO: TIntegerField;
    sdsTalao_PedNOME_CLIENTE: TStringField;
    cdsTalao_PedID: TIntegerField;
    cdsTalao_PedNUM_TALAO: TIntegerField;
    cdsTalao_PedID_PEDIDO: TIntegerField;
    cdsTalao_PedITEM_PEDIDO: TIntegerField;
    cdsTalao_PedID_CLIENTE: TIntegerField;
    cdsTalao_PedQTD: TFloatField;
    cdsTalao_PedNUM_PEDIDO: TIntegerField;
    cdsTalao_PedNOME_CLIENTE: TStringField;
    sdsBusca_Ped: TSQLDataSet;
    cdsBusca_Ped: TClientDataSet;
    dsBusca_Ped: TDataSource;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxLote: TfrxDBDataset;
    sdsLoteID: TIntegerField;
    sdsLoteNUM_LOTE: TIntegerField;
    sdsLoteNUM_ORDEM: TIntegerField;
    sdsLoteQTD_TALOES: TIntegerField;
    sdsLoteQTD: TFloatField;
    sdsLoteID_PRODUTO: TIntegerField;
    sdsLoteREFERENCIA: TStringField;
    sdsLoteNOME: TStringField;
    frxTalao: TfrxDBDataset;
    dspBusca_Ped: TDataSetProvider;
    cdsLoteclCodBarra: TStringField;
    cdsBusca_PedID: TIntegerField;
    cdsBusca_PedID_PEDIDO: TIntegerField;
    cdsBusca_PedID_CLIENTE: TIntegerField;
    cdsBusca_PedQTD: TFloatField;
    cdsBusca_PedNUM_PEDIDO: TIntegerField;
    cdsBusca_PedNOME_CLIENTE: TStringField;
    sdsTalaoAGRUPAR_PEDIDOS: TStringField;
    cdsTalaoAGRUPAR_PEDIDOS: TStringField;
    cdsTalaoclCodBarra: TStringField;
    Talao_Ped: TfrxDBDataset;
    mLoteEmProc: TClientDataSet;
    mLoteEmProcID_Processo: TIntegerField;
    mLoteEmProcNome_Processo: TStringField;
    mLoteEmProcDtEntrada: TDateField;
    mLoteEmProcHrEntrada: TTimeField;
    mLoteEmProcNumOrdem_Em_Proc: TIntegerField;
    mLoteEmProcQtd_Em_Proc: TFloatField;
    mLoteEmProcNumLote_Em_Proc: TIntegerField;
    mLoteEmProcQtd_Aguardando: TFloatField;
    mLoteEmProcQtd_Em_Pedido: TFloatField;
    dsmLoteEmProc: TDataSource;
    mLoteEmProcReferencia: TStringField;
    mLoteEmProcNome_Produto: TStringField;
    qLoteEmProc: TSQLQuery;
    qLoteEmProcID: TIntegerField;
    qLoteEmProcNUM_LOTE: TIntegerField;
    qLoteEmProcNUM_ORDEM: TIntegerField;
    qLoteEmProcID_PRODUTO: TIntegerField;
    qLoteEmProcQTD_EM_PROCESSO: TFloatField;
    qLoteEmProcID_PROCESSO: TIntegerField;
    qLoteEmProcREFERENCIA: TStringField;
    qLoteEmProcNOME_PRODUTO: TStringField;
    qLoteEmProcDTENTRADA: TDateField;
    qLoteEmProcHRENTRADA: TTimeField;
    sdsProcesso: TSQLDataSet;
    dspProcesso: TDataSetProvider;
    cdsProcesso: TClientDataSet;
    cdsProcessoID: TIntegerField;
    cdsProcessoNOME: TStringField;
    cdsProcessoLIMITE_POR_TALAO: TStringField;
    cdsProcessoQTD_LIMITE_POR_TALAO: TIntegerField;
    cdsProcessoAGRUPAR_PEDIDOS: TStringField;
    mLoteEmProcNum_Talao: TIntegerField;
    qLoteEmProcNUM_TALAO: TIntegerField;
    mLoteEmProcTotal_Talao_Aberto: TIntegerField;
    sdsConsTalao: TSQLDataSet;
    dspConsTalao: TDataSetProvider;
    cdsConsTalao: TClientDataSet;
    dsConsTalao: TDataSource;
    cdsConsTalaoID: TIntegerField;
    cdsConsTalaoNUM_LOTE: TIntegerField;
    cdsConsTalaoNUM_ORDEM: TIntegerField;
    cdsConsTalaoID_PRODUTO: TIntegerField;
    cdsConsTalaoQTD_TALAO: TFloatField;
    cdsConsTalaoID_PROCESSO: TIntegerField;
    cdsConsTalaoREFERENCIA: TStringField;
    cdsConsTalaoNOME_PRODUTO: TStringField;
    cdsConsTalaoDTENTRADA: TDateField;
    cdsConsTalaoHRENTRADA: TTimeField;
    cdsConsTalaoNOME_PROCESSO: TStringField;
    cdsConsTalaoDTBAIXA: TDateField;
    cdsConsTalaoHRBAIXA: TTimeField;
    cdsConsTalaoNUM_TALAO: TIntegerField;
    cdsConsTalaoQTD_LOTE: TFloatField;
    cdsConsTalaoCONTADOR_PED: TIntegerField;
    dsProcesso: TDataSource;
    qCliente: TSQLQuery;
    qClienteCODIGO: TIntegerField;
    qClienteNOME: TStringField;
    qClienteCNPJ_CPF: TStringField;
    sdsConsTalao_Ped: TSQLDataSet;
    dspConsTalao_Ped: TDataSetProvider;
    cdsConsTalao_Ped: TClientDataSet;
    dsConsTalao_Ped: TDataSource;
    cdsConsTalao_PedID: TIntegerField;
    cdsConsTalao_PedNUM_TALAO: TIntegerField;
    cdsConsTalao_PedID_PEDIDO: TIntegerField;
    cdsConsTalao_PedITEM_PEDIDO: TIntegerField;
    cdsConsTalao_PedQTD: TFloatField;
    cdsConsTalao_PedID_CLIENTE: TIntegerField;
    cdsConsTalao_PedNUM_PEDIDO: TIntegerField;
    cdsConsTalao_PedNOME_CLIENTE: TStringField;
    cdsConsTalao_PedNUM_LOTE: TIntegerField;
    cdsConsTalao_PedID_PROCESSO: TIntegerField;
    cdsConsTalao_PedNOME_PROCESSO: TStringField;
    cdsConsTalao_PedREFERENCIA: TStringField;
    cdsConsTalao_PedNOME_PRODUTO: TStringField;
    cdsConsTalao_PedNUM_ORDEM: TIntegerField;
    cdsConsTalao_PedDTENTRADA: TDateField;
    cdsConsTalao_PedHRENTRADA: TTimeField;
    cdsConsTalao_PedDTBAIXA: TDateField;
    cdsConsTalao_PedHRBAIXA: TTimeField;
    sdsLoteNUM_PEDIDO: TIntegerField;
    sdsLotePEDIDO_CLIENTE: TStringField;
    cdsLoteNUM_PEDIDO: TIntegerField;
    cdsLotePEDIDO_CLIENTE: TStringField;
    sdsTalao_SL: TSQLDataSet;
    dspTalao_SL: TDataSetProvider;
    cdsTalao_SL: TClientDataSet;
    dsTalao_SL: TDataSource;
    frxTalao_SL: TfrxDBDataset;
    cdsTalao_SLID: TIntegerField;
    cdsTalao_SLNUM_LOTE: TIntegerField;
    cdsTalao_SLNUM_ORDEM: TIntegerField;
    cdsTalao_SLTOTAL_TALOES: TIntegerField;
    cdsTalao_SLQTD_LOTE: TFloatField;
    cdsTalao_SLID_PRODUTO: TIntegerField;
    cdsTalao_SLREFERENCIA: TStringField;
    cdsTalao_SLNOME_PRODUTO: TStringField;
    cdsTalao_SLQTD_TALAO: TFloatField;
    cdsTalao_SLNUM_TALAO: TIntegerField;
    cdsTalao_SLUNIDADE: TStringField;
    cdsTalao_SLclCodBarra_Lote: TStringField;
    cdsTalao_SLID_PEDIDO: TIntegerField;
    cdsTalao_SLNUM_PEDIDO: TIntegerField;
    cdsTalao_SLITEM_PEDIDO: TIntegerField;
    cdsTalao_SLTIPO_LOTE: TStringField;
    cdsTalao_SLDESCRICAO_TIPO_LOTE: TStringField;
    cdsTalao_SLNOME_COMBINACAO: TStringField;
    cdsTalao_SLDTENTREGA: TDateField;
    procedure dspLoteUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsLoteCalcFields(DataSet: TDataSet);
    procedure frxLoteFirst(Sender: TObject);
    procedure frxLoteNext(Sender: TObject);
    procedure cdsTalaoCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsTalao_SLCalcFields(DataSet: TDataSet);
  private
    { Private declarations }

  public
    { Public declarations }
    ctConsTalao : String;
    ctConsTalao_Ped : String;
    vObsPedido : String;
    procedure prc_Le_LotePed;

  end;

var
  DMLoteImp: TDMLoteImp;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

{ TDMCadLote}

procedure TDMLoteImp.dspLoteUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMLoteImp.cdsLoteCalcFields(DataSet: TDataSet);
begin
  cdsLoteclCodBarra.AsString := '9' + FormatFloat('00000',cdsLoteNUM_ORDEM.AsInteger) + FormatFloat('000000',cdsLoteNUM_LOTE.AsInteger);
end;

procedure TDMLoteImp.frxLoteFirst(Sender: TObject);
begin
  prc_Le_LotePed;
end;

procedure TDMLoteImp.prc_Le_LotePed;
begin
  vObsPedido := '';
  cdsBusca_Ped.Close;
  sdsBusca_Ped.ParamByName('ID').AsInteger := cdsLoteID.AsInteger;
  cdsBusca_Ped.Open;
  cdsBusca_Ped.First;
  while not cdsBusca_Ped.Eof do
  begin
    vObsPedido := vObsPedido + '(' + cdsBusca_PedNUM_PEDIDO.AsString + ' - ' + cdsBusca_PedNOME_CLIENTE.AsString + ', Qtd: ' + cdsBusca_PedQTD.AsString + ')';
    cdsBusca_Ped.Next;
  end;
  TfrxMemoView(frxReport1.FindComponent('Pedido')).Text := vObsPedido;
end;

procedure TDMLoteImp.frxLoteNext(Sender: TObject);
begin
  prc_Le_LotePed;
end;

procedure TDMLoteImp.cdsTalaoCalcFields(DataSet: TDataSet);
begin
  cdsTalaoclCodBarra.AsString := '2' + FormatFloat('0000000',cdsLoteNUM_LOTE.AsInteger) + FormatFloat('0000',cdsTalaoNUM_TALAO.AsInteger);
end;

procedure TDMLoteImp.DataModuleCreate(Sender: TObject);
begin
  ctConsTalao     := sdsConsTalao.CommandText;
  ctConsTalao_Ped := sdsConsTalao_Ped.CommandText;
end;

procedure TDMLoteImp.cdsTalao_SLCalcFields(DataSet: TDataSet);
begin
  cdsTalao_SLclCodBarra_Lote.AsString := '2' + FormatFloat('00000000',cdsTalao_SLNUM_LOTE.AsInteger) + FormatFloat('000',cdsTalao_SLNUM_TALAO.AsInteger);
end;

end.
