unit UDMBaixaPedidoProc;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, frxClass,
  frxDBSet, frxRich, frxExportMail, frxExportPDF, LogTypes;

type
  TDMBaixaPedidoProc = class(TDataModule)
    sdsPedidoProc: TSQLDataSet;
    dspPedidoProc: TDataSetProvider;
    cdsPedidoProc: TClientDataSet;
    dsPedidoProc: TDataSource;
    cdsPedidoProcNOME_PROCESSO: TStringField;
    cdsPedidoProcIMP_CLIENTE: TStringField;
    cdsPedidoProcID: TIntegerField;
    cdsPedidoProcPEDIDO_CLIENTE: TStringField;
    cdsPedidoProcNUM_PEDIDO: TIntegerField;
    cdsPedidoProcQTD_RESTANTE: TFloatField;
    cdsPedidoProcID_PRODUTO: TIntegerField;
    cdsPedidoProcREFERENCIA: TStringField;
    cdsPedidoProcNOMEPRODUTO: TStringField;
    cdsPedidoProcUNIDADE: TStringField;
    cdsPedidoProcNOME_COMBINACAO: TStringField;
    cdsPedidoProcDTENTREGA: TDateField;
    cdsPedidoProcID_CLIENTE: TIntegerField;
    cdsPedidoProcNOME_CLIENTE: TStringField;
    cdsPedidoProcFANTASIA: TStringField;
    cdsPedidoProcID_PROCESSO: TIntegerField;
    cdsPedidoProcITEM_PEDIDO: TIntegerField;
    cdsPedidoProcORDEM_MAPA: TIntegerField;
    cdsPedidoProcQTD_PROCESSO_PEND: TFloatField;
    sdsBaixa_Processo: TSQLDataSet;
    dspBaixa_Processo: TDataSetProvider;
    cdsBaixa_Processo: TClientDataSet;
    dsBaixa_Processo: TDataSource;
    sdsBaixa_ProcessoID: TIntegerField;
    sdsBaixa_ProcessoITEM: TIntegerField;
    sdsBaixa_ProcessoID_PROCESSO: TIntegerField;
    sdsBaixa_ProcessoID_LOTE: TIntegerField;
    sdsBaixa_ProcessoID_PEDIDO: TIntegerField;
    sdsBaixa_ProcessoITEM_PEDIDO: TIntegerField;
    sdsBaixa_ProcessoDTENTRADA: TDateField;
    sdsBaixa_ProcessoHRENTRADA: TTimeField;
    sdsBaixa_ProcessoDTBAIXA: TDateField;
    sdsBaixa_ProcessoHRBAIXA: TTimeField;
    sdsBaixa_ProcessoQTD: TFloatField;
    sdsBaixa_ProcessoQTD_PRODUZIDO: TFloatField;
    sdsBaixa_ProcessoNUM_ORDEM: TIntegerField;
    sdsBaixa_ProcessoTIPO: TStringField;
    sdsBaixa_ProcessoTOTAL_HORAS: TFloatField;
    sdsBaixa_ProcessoQTD_PENDENTE: TFloatField;
    sdsBaixa_ProcessoSELECIONADO: TStringField;
    cdsBaixa_ProcessoID: TIntegerField;
    cdsBaixa_ProcessoITEM: TIntegerField;
    cdsBaixa_ProcessoID_PROCESSO: TIntegerField;
    cdsBaixa_ProcessoID_LOTE: TIntegerField;
    cdsBaixa_ProcessoID_PEDIDO: TIntegerField;
    cdsBaixa_ProcessoITEM_PEDIDO: TIntegerField;
    cdsBaixa_ProcessoDTENTRADA: TDateField;
    cdsBaixa_ProcessoHRENTRADA: TTimeField;
    cdsBaixa_ProcessoDTBAIXA: TDateField;
    cdsBaixa_ProcessoHRBAIXA: TTimeField;
    cdsBaixa_ProcessoQTD: TFloatField;
    cdsBaixa_ProcessoQTD_PRODUZIDO: TFloatField;
    cdsBaixa_ProcessoNUM_ORDEM: TIntegerField;
    cdsBaixa_ProcessoTIPO: TStringField;
    cdsBaixa_ProcessoTOTAL_HORAS: TFloatField;
    cdsBaixa_ProcessoQTD_PENDENTE: TFloatField;
    cdsBaixa_ProcessoSELECIONADO: TStringField;
    cdsPedidoProcQTD_APRODUZIR: TFMTBCDField;
    sdsPedido_Itens: TSQLDataSet;
    dspPedido_Itens: TDataSetProvider;
    cdsPedido_Itens: TClientDataSet;
    cdsPedido_ItensID_PEDIDO: TIntegerField;
    cdsPedido_ItensNUM_PEDIDO: TIntegerField;
    cdsPedido_ItensPEDIDO_CLIENTE: TStringField;
    cdsPedido_ItensID_CLIENTE: TIntegerField;
    cdsPedido_ItensREFERENCIA: TStringField;
    cdsPedido_ItensQTD: TFloatField;
    cdsPedido_ItensNOME_COR: TStringField;
    cdsPedido_ItensDTENTREGA: TDateField;
    cdsPedido_ItensDTEMISSAO: TDateField;
    cdsPedido_ItensNOME_CLIENTE: TStringField;
    cdsPedido_ItensITEM_PEDIDO: TIntegerField;
    cdsPedido_ItensFANTASIA_CLIENTE: TStringField;
    dsPedido_Itens: TDataSource;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxPedido_Itens: TfrxDBDataset;
    sdsBaixaPed: TSQLDataSet;
    dspBaixaPed: TDataSetProvider;
    cdsBaixaPed: TClientDataSet;
    dsBaixaPed: TDataSource;
    frxBaixaPed: TfrxDBDataset;
    sdsProcesso: TSQLDataSet;
    dspProcesso: TDataSetProvider;
    cdsProcesso: TClientDataSet;
    cdsProcessoNOME: TStringField;
    cdsProcessoORDEM_MAPA: TIntegerField;
    dsProcesso: TDataSource;
    frxProcesso: TfrxDBDataset;
    qCliente: TSQLQuery;
    qClienteCODIGO: TIntegerField;
    qClienteNOME: TStringField;
    qClienteCNPJ_CPF: TStringField;
    cdsBaixaPedID_PROCESSO: TIntegerField;
    cdsBaixaPedNOME_PROCESSO: TStringField;
    cdsBaixaPedORDEM_MAPA: TIntegerField;
    cdsBaixaPedID_PEDIDO: TIntegerField;
    cdsBaixaPedQTD: TFloatField;
    cdsBaixaPedQTD_PEND_IMPRIMIR: TStringField;
    cdsPedido_ItensID_PRODUTO: TIntegerField;
    sdsConsBaixa: TSQLDataSet;
    dspConsBaixa: TDataSetProvider;
    cdsConsBaixa: TClientDataSet;
    dsConsBaixa: TDataSource;
    cdsConsBaixaID_BAIXA: TIntegerField;
    cdsConsBaixaITEM_BAIXA: TIntegerField;
    cdsConsBaixaID_PROCESSO: TIntegerField;
    cdsConsBaixaID_PEDIDO: TIntegerField;
    cdsConsBaixaITEM_PEDIDO: TIntegerField;
    cdsConsBaixaQTD: TFloatField;
    cdsConsBaixaDTBAIXA: TDateField;
    cdsConsBaixaHRBAIXA: TTimeField;
    cdsConsBaixaNOME_PROCESSO: TStringField;
    cdsConsBaixaORDEM_MAPA: TIntegerField;
    cdsConsBaixaPEDIDO_CLIENTE: TStringField;
    cdsConsBaixaID_CLIENTE: TIntegerField;
    cdsConsBaixaDTEMISSAO: TDateField;
    cdsConsBaixaNOME_CLIENTE: TStringField;
    cdsConsBaixaID_PRODUTO: TIntegerField;
    cdsConsBaixaREFERENCIA: TStringField;
    cdsConsBaixaNOME_COR: TStringField;
    cdsConsBaixaQTD_PEDIDO: TFloatField;
    cdsConsBaixaDTENTREGA: TDateField;
    cdsConsBaixaFANTASIA: TStringField;
    sdsConsBaixa_Acum: TSQLDataSet;
    dspConsBaixa_Acum: TDataSetProvider;
    cdsConsBaixa_Acum: TClientDataSet;
    dsConsBaixa_Acum: TDataSource;
    cdsConsBaixa_AcumID_PROCESSO: TIntegerField;
    cdsConsBaixa_AcumID_PEDIDO: TIntegerField;
    cdsConsBaixa_AcumITEM_PEDIDO: TIntegerField;
    cdsConsBaixa_AcumQTD: TFloatField;
    cdsConsBaixa_AcumNOME_PROCESSO: TStringField;
    cdsConsBaixa_AcumORDEM_MAPA: TIntegerField;
    cdsConsBaixa_AcumPEDIDO_CLIENTE: TStringField;
    cdsConsBaixa_AcumID_CLIENTE: TIntegerField;
    cdsConsBaixa_AcumDTEMISSAO: TDateField;
    cdsConsBaixa_AcumNOME_CLIENTE: TStringField;
    cdsConsBaixa_AcumID_PRODUTO: TIntegerField;
    cdsConsBaixa_AcumREFERENCIA: TStringField;
    cdsConsBaixa_AcumNOME_COR: TStringField;
    cdsConsBaixa_AcumQTD_PEDIDO: TFloatField;
    cdsConsBaixa_AcumDTENTREGA: TDateField;
    cdsConsBaixa_AcumFANTASIA: TStringField;
    cdsConsBaixa_AcumclQtd_Pendente: TFloatField;
    mPedidoTotal: TClientDataSet;
    mPedidoTotalProcesso: TIntegerField;
    mPedidoTotalQtde: TFloatField;
    dsmPedidoTotal: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure frxPedido_ItensFirst(Sender: TObject);
    procedure frxPedido_ItensNext(Sender: TObject);
    procedure frxPedido_ItensOpen(Sender: TObject);
    procedure frxPedido_ItensPrior(Sender: TObject);
    procedure cdsConsBaixa_AcumCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure prc_Abrir_BaixaPed;
    procedure prc_Gravar_Totais;
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    ctPedidoProc : String;
    ctPedido_Itens : String;
    ctConsBaixa : String;
    ctBaixa_Processo : String;
    ctConsBaixa_Acum : String;
  end;

var
  DMBaixaPedidoProc: TDMBaixaPedidoProc;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

procedure TDMBaixaPedidoProc.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctPedidoProc     := sdsPedidoProc.CommandText;
  ctPedido_Itens   := sdsPedido_Itens.CommandText;
  ctConsBaixa      := sdsConsBaixa.CommandText;
  ctBaixa_Processo := sdsBaixa_Processo.CommandText;
  ctConsBaixa_Acum := sdsConsBaixa_Acum.CommandText;

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

procedure TDMBaixaPedidoProc.prc_Abrir_BaixaPed;
begin
  cdsBaixaPed.Close;
  sdsBaixaPed.ParamByName('ID_PEDIDO').AsInteger   := cdsPedido_ItensID_PEDIDO.AsInteger;
  sdsBaixaPed.ParamByName('ITEM_PEDIDO').AsInteger := cdsPedido_ItensITEM_PEDIDO.AsInteger;
  sdsBaixaPed.ParamByName('ID_PRODUTO').AsInteger  := cdsPedido_ItensID_PRODUTO.AsInteger;
  cdsBaixaPed.Open;
//  prc_Gravar_Totais;
end;

procedure TDMBaixaPedidoProc.frxPedido_ItensFirst(Sender: TObject);
begin
  prc_Abrir_BaixaPed;
end;

procedure TDMBaixaPedidoProc.frxPedido_ItensNext(Sender: TObject);
begin
  prc_Abrir_BaixaPed;
end;

procedure TDMBaixaPedidoProc.frxPedido_ItensOpen(Sender: TObject);
begin
  prc_Abrir_BaixaPed;
end;

procedure TDMBaixaPedidoProc.frxPedido_ItensPrior(Sender: TObject);
begin
  prc_Abrir_BaixaPed;
end;

procedure TDMBaixaPedidoProc.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMBaixaPedidoProc.cdsConsBaixa_AcumCalcFields(
  DataSet: TDataSet);
begin
  cdsConsBaixa_AcumclQtd_Pendente.AsFloat := StrToFloat(FormatFloat('0.0000',cdsConsBaixa_AcumQTD_PEDIDO.AsFloat - cdsConsBaixa_AcumQTD.AsFloat));
end;

procedure TDMBaixaPedidoProc.prc_Gravar_Totais;
var
 vQtde : Double;
begin
  cdsBaixaPed.First;
  while not cdsBaixaPed.Eof do
  begin
    if cdsBaixaPedQTD_PEND_IMPRIMIR.AsString <> 'X' then
    begin
      if not mPedidoTotal.Locate('PROCESSO',cdsBaixaPedID_PROCESSO.AsInteger,[loCaseInsensitive]) then
      begin
        mPedidoTotal.Insert;
        mPedidoTotalProcesso.AsInteger := cdsBaixaPedID_PROCESSO.AsInteger;
        vQtde := StrToFloat(cdsBaixaPedQTD_PEND_IMPRIMIR.AsString);
        mPedidoTotalQtde.AsFloat := vQtde;
      end
      else
      begin
        mPedidoTotal.Insert;
        mPedidoTotalProcesso.AsInteger := cdsBaixaPedID_PROCESSO.AsInteger;
        vQtde := StrToFloat(cdsBaixaPedQTD_PEND_IMPRIMIR.AsString);
        mPedidoTotalQtde.AsFloat := mPedidoTotalQtde.AsFloat + vQtde;
      end;
    end;
    cdsBaixaPed.Next;
  end;
end;

end.
