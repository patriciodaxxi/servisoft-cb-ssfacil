unit UDMConsProduto;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TDMConsProduto = class(TDataModule)
    sdsConsulta_Prod: TSQLDataSet;
    dspConsulta_Prod: TDataSetProvider;
    cdsConsulta_Prod: TClientDataSet;
    dsConsulta_Prod: TDataSource;
    cdsConsulta_ProdID_PRODUTO: TIntegerField;
    cdsConsulta_ProdID_PESSOA: TIntegerField;
    cdsConsulta_ProdTIPO_REG: TStringField;
    cdsConsulta_ProdTIPO_MOV: TStringField;
    cdsConsulta_ProdTIPO_ES: TStringField;
    cdsConsulta_ProdTIPO_CONDICAO: TStringField;
    cdsConsulta_ProdID_COR: TIntegerField;
    cdsConsulta_ProdID_CFOP: TIntegerField;
    cdsConsulta_ProdID_CONDPGTO: TIntegerField;
    cdsConsulta_ProdQTD: TFloatField;
    cdsConsulta_ProdVLR_UNITARIO: TFloatField;
    cdsConsulta_ProdVLR_ICMS: TFloatField;
    cdsConsulta_ProdVLR_IPI: TFloatField;
    cdsConsulta_ProdVLR_ICMSSUBST: TFloatField;
    cdsConsulta_ProdVLR_ICMS_UF_DEST: TFloatField;
    cdsConsulta_ProdREFERENCIA: TStringField;
    cdsConsulta_ProdNOME_PRODUTO_SERV: TStringField;
    cdsConsulta_ProdNOME_COR: TStringField;
    cdsConsulta_ProdNOME_PESSOA: TStringField;
    cdsConsulta_ProdUNIDADE: TStringField;
    cdsConsulta_ProdCODCFOP: TStringField;
    cdsConsulta_ProdFATURAMENTO: TStringField;
    cdsConsulta_ProdDEVOLUCAO: TStringField;
    cdsConsulta_ProdDTEMISSAO: TDateField;
    cdsConsulta_ProdNUM_NOTA: TIntegerField;
    cdsConsulta_ProdNOME_CONDPGTO: TStringField;
    cdsConsulta_ProdDESC_TIPO_CONDICAO: TStringField;
    cdsConsulta_ProdDESC_TIPO_REG: TStringField;
    qParametros: TSQLQuery;
    qParametrosINFORMAR_COR_MATERIAL: TStringField;
    qParametrosINFORMAR_COR_PROD: TStringField;
    sdsProduto_Custo: TSQLDataSet;
    dspProduto_Custo: TDataSetProvider;
    cdsProduto_Custo: TClientDataSet;
    dsProduto_Custo: TDataSource;
    cdsProduto_CustoID: TIntegerField;
    cdsProduto_CustoREFERENCIA: TStringField;
    cdsProduto_CustoPRECO_CUSTO: TFloatField;
    cdsProduto_CustoPRECO_CUSTO_TOTAL: TFloatField;
    cdsProduto_CustoPRECO_VENDA: TFloatField;
    cdsProduto_CustoNOME: TStringField;
    cdsProduto_CustoPRECO_CUSTO_CALC: TFloatField;
    cdsProduto_CustoCONTADOR: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctConsulta_Prod : String;
    ctProduto_Custo : String;
    
    procedure prc_Consulta_Prod(ID_Produto, Tipo_Opcao : Integer ; DtInicial, DtFinal : TDateTime ; ID_Filial : Integer = 0);

  end;

var
  DMConsProduto: TDMConsProduto;

implementation

uses DmdDatabase;

{$R *.dfm}

{ TDMConsProduto }

procedure TDMConsProduto.prc_Consulta_Prod(ID_Produto, Tipo_Opcao: Integer;
  DtInicial, DtFinal: TDateTime ; ID_Filial : Integer = 0);
var
  vComando : String;  
begin
  vComando := '';
  if DtInicial > 10 then
    vComando :=  vComando + ' AND M.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DtInicial));
  if DtFinal > 10 then
    vComando :=  vComando + ' AND M.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DtFinal));
  case Tipo_Opcao of
    1 : vComando := vComando + ' AND M.TIPO_ES = ' + QuotedStr('E');
    2 : vComando := vComando + ' AND M.TIPO_ES = ' + QuotedStr('S');
    3 : vComando := vComando + ' AND M.TIPO_ES = ' + QuotedStr('E') + ' AND CFOP.FATURAMENTO = ' + QuotedStr('S');
    4 : vComando := vComando + ' AND M.TIPO_ES = ' + QuotedStr('S') + ' AND CFOP.FATURAMENTO = ' + QuotedStr('S');
  end;
  if ID_Filial > 0 then
    vComando := vComando + ' AND M.TIPO_ES = ' + QuotedStr('S') + ' AND CFOP.FATURAMENTO = ' + QuotedStr('S');


  cdsConsulta_Prod.Close;
  sdsConsulta_Prod.CommandText := ctConsulta_Prod + vComando;
  sdsConsulta_Prod.ParamByName('ID_PRODUTO').AsInteger := ID_Produto;
  cdsConsulta_Prod.Open;
  cdsConsulta_Prod.IndexFieldNames := 'DTEMISSAO;NOME_PESSOA';
end;

procedure TDMConsProduto.DataModuleCreate(Sender: TObject);
begin
  ctConsulta_Prod := sdsConsulta_Prod.CommandText;
  ctProduto_Custo := sdsProduto_Custo.CommandText;
  qParametros.Open;
end;

end.
