unit UDMConsMetas;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, frxClass,
  frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDMConsMetas = class(TDataModule)
    sdsMetas_Pedidos: TSQLDataSet;
    dspMetas_Pedidos: TDataSetProvider;
    cdsMetas_Pedidos: TClientDataSet;
    dsMetas_Pedidos: TDataSource;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    dsVendedor: TDataSource;
    cdsMetas_PedidosANO: TIntegerField;
    cdsMetas_PedidosMES: TIntegerField;
    cdsMetas_PedidosVLR_META: TFloatField;
    cdsMetas_PedidosID_VENDEDOR: TIntegerField;
    cdsMetas_PedidosNOME_VENDEDOR: TStringField;
    cdsMetas_PedidosVLR_PEDIDOS: TFloatField;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsMetas_PedidosNOME_MES: TStringField;
    cdsMetas_PedidosRESULTADO: TFloatField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxDBDataset1: TfrxDBDataset;
    cdsMetas_PedidosANO_MES: TStringField;
    mMetasAux: TClientDataSet;
    mMetasAuxID_Vendedor: TIntegerField;
    mMetasAuxNome_Vendedor: TStringField;
    mMetasAuxVlr_Meta: TFloatField;
    mMetasAuxVlr_Pedidos: TFloatField;
    mMetasAuxVlr_Resultado: TFloatField;
    mMetasAuxAno: TIntegerField;
    mMetasAuxMes: TStringField;
    mMetasAuxAno_Mes: TStringField;
    dsmMetasAux: TDataSource;
    sdsVendedor_Metas: TSQLDataSet;
    dspVendedor_Metas: TDataSetProvider;
    cdsVendedor_Metas: TClientDataSet;
    dsVendedor_Metas: TDataSource;
    cdsVendedor_MetasID_VENDEDOR: TIntegerField;
    cdsVendedor_MetasNOME_VENDEDOR: TStringField;
    mMetasAuxNome_Mes: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctMetas_Pedidos : String;
    ctVendedor_Metas : String;
  end;

var
  DMConsMetas: TDMConsMetas;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsMetas.DataModuleCreate(Sender: TObject);
begin
  ctMetas_Pedidos  := sdsMetas_Pedidos.CommandText;
  ctVendedor_Metas := sdsVendedor_Metas.CommandText;
end;

end.
