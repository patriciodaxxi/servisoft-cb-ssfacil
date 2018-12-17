unit UDMUtil;

interface

uses
  SysUtils, Classes, SqlExpr, FMTBcd, DB, DBClient, Provider;

type
  TDMUtil = class(TDataModule)
    sdsModulo: TSQLDataSet;
    dspModulo: TDataSetProvider;
    cdsModulo: TClientDataSet;
    dsModulo: TDataSource;
    sdsModuloID: TIntegerField;
    sdsModuloNOME: TStringField;
    sdsModuloTIPO: TStringField;
    cdsModuloID: TIntegerField;
    cdsModuloNOME: TStringField;
    cdsModuloTIPO: TStringField;
    qParametros: TSQLQuery;
    qParametrosID_RESP_SUPORTE: TIntegerField;
    qParametrosEMPRESA_LIVRARIA: TStringField;
    qParametros_Usuario: TSQLQuery;
    qParametros_UsuarioUTILIZA_PESSOA_REDUZIDO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function fnc_Buscar_Preco(ID_Tabela, ID_Produto: Integer ; ID_Cor : Integer  = 0): Real;
    function fnc_Buscar_Nome_TabPreco(ID_Tabela: Integer): String;
  end;

var
  DMUtil: TDMUtil;

implementation

uses DmdDatabase;

{$R *.dfm}

{ TDMUtil }

function TDMUtil.fnc_Buscar_Nome_TabPreco(ID_Tabela: Integer): String;
var
  sds: TSQLDataSet;                        
  iSeq: Integer;
begin
  Result := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    sds.Close;
    sds.CommandText := ' SELECT NOME FROM TAB_PRECO '
                     + ' WHERE ID = ' + IntToStr(ID_Tabela);
    sds.Open;

    Result := sds.FieldByName('NOME').AsString;
  finally
    FreeAndNil(sds);
  end;
end;

function TDMUtil.fnc_Buscar_Preco(ID_Tabela, ID_Produto: Integer ; ID_Cor : Integer  = 0): Real;
var
  sds: TSQLDataSet;                        
  iSeq: Integer;
  ct : String;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    ct := ' SELECT VLR_VENDA FROM TAB_PRECO_ITENS '
          + ' WHERE ID = ' + IntToStr(ID_Tabela)
          + '   AND ID_PRODUTO = ' + IntToStr(ID_Produto);

    sds.Close;
    sds.CommandText := ct;
    if (ID_Cor > 0) then
      sds.CommandText := sds.CommandText + ' AND ID_COR = ' + IntToStr(ID_Cor);
    sds.Open;
    Result := sds.FieldByName('VLR_VENDA').AsFloat;
    if (StrToFloat(FormatFloat('0.000000',Result)) <= 0) and (ID_Cor > 0) then
    begin
      sds.Close;
      sds.CommandText := ct + ' AND ID_COR = 0 ';
      sds.Open;
      Result := sds.FieldByName('VLR_VENDA').AsFloat;
    end;

  finally
    FreeAndNil(sds);
  end;
end;

end.
