unit UDMCadProduto_Lote;

interface

uses
  SysUtils, Classes, LogTypes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMCadProduto_Lote = class(TDataModule)
    sdsProduto_Lote: TSQLDataSet;
    sdsProduto_LoteID: TIntegerField;
    sdsProduto_LoteITEM: TIntegerField;
    sdsProduto_LoteNUM_LOTE_CONTROLE: TStringField;
    sdsProduto_LotePRECO_CUSTO: TFloatField;
    sdsProduto_LotePRECO_VENDA: TFloatField;
    dspProduto_Lote: TDataSetProvider;
    cdsProduto_Lote: TClientDataSet;
    cdsProduto_LoteID: TIntegerField;
    cdsProduto_LoteITEM: TIntegerField;
    cdsProduto_LoteNUM_LOTE_CONTROLE: TStringField;
    cdsProduto_LotePRECO_CUSTO: TFloatField;
    cdsProduto_LotePRECO_VENDA: TFloatField;
    dsProduto_Lote: TDataSource;
    qProdLote: TSQLQuery;
    qProdLoteID: TIntegerField;
    qProdLoteITEM: TIntegerField;
    qProdLoteNUM_LOTE_CONTROLE: TStringField;
    qProdLotePRECO_CUSTO: TFloatField;
    qProdLotePRECO_VENDA: TFloatField;
    qProd: TSQLQuery;
    qProdPERC_MARGEMLUCRO: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

    procedure prc_Localizar(ID, Item: Integer);
  public
    { Public declarations }
    ctProduto_Lote: String;

    procedure prc_Gravar(ID: Integer; Num_Lote: String; Preco_Custo, Preco_Venda, Perc_Margem: Real);
    function fnc_Verificar(ID: Integer; Num_Lote: String): Boolean;

  end;

var
  DMCadProduto_Lote: TDMCadProduto_Lote;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadProduto_Lote }

procedure TDMCadProduto_Lote.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadProduto_Lote.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctProduto_Lote := sdsProduto_Lote.CommandText;
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

function TDMCadProduto_Lote.fnc_Verificar(ID: Integer; Num_Lote: String): Boolean;
begin
  Result := False;
  qProdLote.Close;
  qProdLote.ParamByName('ID').AsInteger := ID;
  qProdLote.ParamByName('NUM_LOTE_CONTROLE').AsString := Num_Lote;
  qProdLote.Open;
  if qProdLoteID.AsInteger > 0 then
    Result := True;
end;


procedure TDMCadProduto_Lote.prc_Gravar(ID: Integer; Num_Lote: String;
  Preco_Custo, Preco_Venda, Perc_Margem: Real);
var
  vItemAux: Integer;
begin
  if fnc_Verificar(ID,Num_Lote) then
  begin
    prc_Localizar(ID,qProdLoteITEM.AsInteger);
    cdsProduto_Lote.Edit;
  end
  else
  begin
    prc_Localizar(ID,0);
    cdsProduto_Lote.Last;
    vItemAux := cdsProduto_LoteITEM.AsInteger;
    cdsProduto_Lote.Insert;
    cdsProduto_LoteID.AsInteger   := ID;
    cdsProduto_LoteITEM.AsInteger := vItemAux + 1;
    cdsProduto_LoteNUM_LOTE_CONTROLE.AsString := Num_Lote;
  end;
  cdsProduto_LotePRECO_CUSTO.AsFloat := StrToFloat(FormatFloat('0.000000',Preco_Custo));
  if StrToFloat(FormatFloat('0.00',Preco_Venda)) > 0 then
    cdsProduto_LotePRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.00',Preco_Venda))
  else
  begin
    if StrToFloat(FormatFloat('0.0000',Perc_Margem)) <= 0 then
    begin
      qProd.Close;
      qProd.ParamByName('ID').AsInteger := ID;
      qProd.Open;
      Perc_Margem := StrToFloat(FormatFloat('0.0000',qProdPERC_MARGEMLUCRO.AsFloat));
    end;
    if Perc_Margem > 0 then
      cdsProduto_LotePRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.00',cdsProduto_LotePRECO_CUSTO.AsFloat * Perc_Margem))
    else
      cdsProduto_LotePRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.00',cdsProduto_LotePRECO_CUSTO.AsFloat));
  end;
  cdsProduto_Lote.Post;
  cdsProduto_Lote.ApplyUpdates(0);
end;

procedure TDMCadProduto_Lote.prc_Localizar(ID, Item: Integer);
begin
  cdsProduto_Lote.Close;
  sdsProduto_Lote.CommandText := ctProduto_Lote + ' WHERE ID = ' + IntToStr(ID);
  if Item > 0 then
    sdsProduto_Lote.CommandText := sdsProduto_Lote.CommandText + ' AND ITEM = ' + IntToStr(Item);
  cdsProduto_Lote.Open;
end;

end.
