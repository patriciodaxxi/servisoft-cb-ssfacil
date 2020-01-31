unit UDMConsProduto;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, LogTypes;

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
    sdsProdNCM: TSQLDataSet;
    dspProdNCM: TDataSetProvider;
    cdsProdNCM: TClientDataSet;
    dsProdNCM: TDataSource;
    cdsProdNCMID: TIntegerField;
    cdsProdNCMNOME: TStringField;
    cdsProdNCMREFERENCIA: TStringField;
    cdsProdNCMUNIDADE: TStringField;
    cdsProdNCMID_NCM: TIntegerField;
    cdsProdNCMORIGEM_PROD: TStringField;
    cdsProdNCMNCM: TStringField;
    cdsProdNCMTIPO_REG_DESCRICAO: TStringField;
    cdsProdNCMCFOP_PROD: TStringField;
    cdsProdNCMCFOP_NCM: TStringField;
    cdsProdNCMCOD_CST: TStringField;
    cdsProdNCMCST_BRED_PROD: TStringField;
    cdsProdNCMCST_NCM: TStringField;
    cdsProdNCMPERC_REDUCAOICMS: TFloatField;
    cdsProdNCMPERC_ICMS_NFCE: TFloatField;
    cdsProdNCMPERC_BASE_ICMS_NCM: TFloatField;
    cdsProdNCMPERC_ICMS: TFloatField;
    cdsProdNCMNOME_GRUPO: TStringField;
    cdsProdNCMINATIVO: TStringField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsProdutoID: TIntegerField;
    sdsProdutoNOME: TStringField;
    sdsProdutoID_CFOP_NFCE: TIntegerField;
    sdsProdutoID_CSTICMS: TIntegerField;
    sdsProdutoID_CSTICMS_BRED: TIntegerField;
    sdsProdutoPERC_ICMS_NFCE: TFloatField;
    sdsProdutoPERC_REDUCAOICMS: TFloatField;
    cdsProdutoID: TIntegerField;
    cdsProdutoNOME: TStringField;
    cdsProdutoID_CFOP_NFCE: TIntegerField;
    cdsProdutoID_CSTICMS: TIntegerField;
    cdsProdutoID_CSTICMS_BRED: TIntegerField;
    cdsProdutoPERC_ICMS_NFCE: TFloatField;
    cdsProdutoPERC_REDUCAOICMS: TFloatField;
    sdsCFOP: TSQLDataSet;
    dspCFOP: TDataSetProvider;
    cdsCFOP: TClientDataSet;
    cdsCFOPID: TIntegerField;
    cdsCFOPCODCFOP: TStringField;
    cdsCFOPNOME: TStringField;
    cdsCFOPNOME_INTERNO: TStringField;
    cdsCFOPCONTROLAR_CONFIG: TStringField;
    dsCFOP: TDataSource;
    sdsCSTICMS: TSQLDataSet;
    dspCSTICMS: TDataSetProvider;
    cdsCSTICMS: TClientDataSet;
    cdsCSTICMSID: TIntegerField;
    cdsCSTICMSCOD_CST: TStringField;
    cdsCSTICMSCOD_DESONERACAO: TSmallintField;
    cdsCSTICMSPERCENTUAL: TFloatField;
    cdsCSTICMSTIPO_ICMS: TStringField;
    dsCSTICMS: TDataSource;
    cdsProduto_CustoDESC_TIPO_REG: TStringField;
    sdsProdutoPRECO_CUSTO: TFloatField;
    sdsProdutoPRECO_CUSTO_TOTAL: TFloatField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoPRECO_CUSTO_TOTAL: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    ctConsulta_Prod : String;
    ctProduto_Custo : String;
    ctProdNCM : String;
    vAltProd : Boolean;
    
    procedure prc_Consulta_Prod(ID_Produto, Tipo_Opcao : Integer ; DtInicial, DtFinal : TDateTime ; ID_Filial : Integer = 0);

  end;

var
  DMConsProduto: TDMConsProduto;

implementation

uses DmdDatabase, uUtilPadrao, LogProvider;

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
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctConsulta_Prod := sdsConsulta_Prod.CommandText;
  ctProduto_Custo := sdsProduto_Custo.CommandText;
  ctProdNCM       := sdsProdNCM.CommandText;
  qParametros.Open;
  cdsCFOP.Open;
  cdsCSTICMS.Open;
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

procedure TDMConsProduto.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
