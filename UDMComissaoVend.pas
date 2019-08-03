unit UDMComissaoVend;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMComissaoVend = class(TDataModule)
    sdsProduto_Comissao_Vend: TSQLDataSet;
    dspProduto_Comissao_Vend: TDataSetProvider;
    cdsProduto_Comissao_Vend: TClientDataSet;
    dsProduto_Comissao_Vend: TDataSource;
    sdsProduto_Comissao_VendID: TIntegerField;
    sdsProduto_Comissao_VendITEM: TIntegerField;
    sdsProduto_Comissao_VendID_VENDEDOR: TIntegerField;
    sdsProduto_Comissao_VendPERC_COMISSAO: TFloatField;
    cdsProduto_Comissao_VendID: TIntegerField;
    cdsProduto_Comissao_VendITEM: TIntegerField;
    cdsProduto_Comissao_VendID_VENDEDOR: TIntegerField;
    cdsProduto_Comissao_VendPERC_COMISSAO: TFloatField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    dsVendedor: TDataSource;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorPERC_COMISSAO: TFloatField;
    dspConsProduto: TDataSetProvider;
    cdsConsProduto: TClientDataSet;
    dsConsProduto: TDataSource;
    cdsConsProdutoID: TIntegerField;
    cdsConsProdutoNOME: TStringField;
    cdsConsProdutoREFERENCIA: TStringField;
    cdsConsProdutoTIPO_PRODUTO: TStringField;
    qVerProdVend: TSQLQuery;
    qVerProdVendCONTADOR: TIntegerField;
    cdsConsProdutoPERC_COMISSAO: TFloatField;
    sdsConsProduto: TSQLDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    
  public
    { Public declarations }
    ctConsProduto : String;
  end;

var
  DMComissaoVend: TDMComissaoVend;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

procedure TDMComissaoVend.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctConsProduto := sdsConsProduto.CommandText;
  cdsVendedor.Open;
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

procedure TDMComissaoVend.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
