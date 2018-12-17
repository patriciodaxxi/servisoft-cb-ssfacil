unit UDMConsLote;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TDMConsLote = class(TDataModule)
    sdsOrdProd: TSQLDataSet;
    dspOrdProd: TDataSetProvider;
    cdsOrdProd: TClientDataSet;
    dsOrdProd: TDataSource;
    cdsOrdProdNUM_ORDEM: TIntegerField;
    cdsOrdProdQTD: TFloatField;
    sdsTalao_Aux: TSQLDataSet;
    dspTalao_Aux: TDataSetProvider;
    cdsTalao_Aux: TClientDataSet;
    dsTalao_Aux: TDataSource;
    cdsTalao_AuxNUM_ORDEM: TIntegerField;
    cdsTalao_AuxNUM_LOTE: TIntegerField;
    cdsTalao_AuxID: TIntegerField;
    cdsTalao_AuxITEM: TIntegerField;
    cdsTalao_AuxID_SETOR: TIntegerField;
    cdsTalao_AuxID_ATELIER: TIntegerField;
    cdsTalao_AuxDTSAIDA: TDateField;
    cdsTalao_AuxDTRETORNO: TDateField;
    cdsTalao_AuxNOME_SETOR: TStringField;
    cdsTalao_AuxNOME_ATELIER: TStringField;
    sdsConsTalao_Ped: TSQLDataSet;
    dspConsTalao_Ped: TDataSetProvider;
    cdsConsTalao_Ped: TClientDataSet;
    dsConsTalao_Ped: TDataSource;
    cdsConsTalao_PedID_PEDIDO: TIntegerField;
    cdsConsTalao_PedNUM_TALAO: TIntegerField;
    cdsConsTalao_PedITEM_PEDIDO: TIntegerField;
    cdsConsTalao_PedQTD: TFloatField;
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
    qParametros: TSQLQuery;
    qParametrosGERAR_TALAO_AUXILIAR: TStringField;
    sdsTalao_Calc: TSQLDataSet;
    dspTalao_Calc: TDataSetProvider;
    cdsTalao_Calc: TClientDataSet;
    dsTalao_Calc: TDataSource;
    cdsTalao_CalcITEM_PEDIDO: TIntegerField;
    cdsTalao_CalcNUM_LOTE: TIntegerField;
    cdsTalao_CalcNUM_ORDEM: TIntegerField;
    cdsTalao_CalcQTD_PARES_TALAO: TFloatField;
    cdsTalao_CalcNUM_TALAO: TIntegerField;
    cdsTalao_CalcID_PEDIDO: TIntegerField;
    qParametrosUSA_LOTE: TStringField;
    qParametros_Lote: TSQLQuery;
    qParametros_LoteLOTE_TEXTIL: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConsLote: TDMConsLote;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsLote.DataModuleCreate(Sender: TObject);
begin
  qParametros.Open;
  qParametros_Lote.Open;
end;

end.
