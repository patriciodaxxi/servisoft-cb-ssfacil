unit UDMProg_Terc;

interface

uses
  SysUtils, Classes, LogTypes, FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  TDMProg_Terc = class(TDataModule)
    sdsProg_Terc: TSQLDataSet;
    dspProg_Terc: TDataSetProvider;
    cdsProg_Terc: TClientDataSet;
    cdsProg_TercID: TIntegerField;
    cdsProg_TercDATA: TDateField;
    cdsProg_TercID_PRODUTO: TIntegerField;
    cdsProg_TercID_COR: TIntegerField;
    cdsProg_TercID_PEDIDO: TIntegerField;
    cdsProg_TercITEM_PEDIDO: TIntegerField;
    cdsProg_TercQTD: TFloatField;
    dsProg_Terc: TDataSource;
    sdsProg_TercID: TIntegerField;
    sdsProg_TercDATA: TDateField;
    sdsProg_TercID_PRODUTO: TIntegerField;
    sdsProg_TercID_COR: TIntegerField;
    sdsProg_TercID_PEDIDO: TIntegerField;
    sdsProg_TercITEM_PEDIDO: TIntegerField;
    sdsProg_TercQTD: TFloatField;
    sdsPedido_Lib: TSQLDataSet;
    dspPedido_Lib: TDataSetProvider;
    cdsPedido_Lib: TClientDataSet;
    cdsPedido_LibID: TIntegerField;
    cdsPedido_LibNUM_PEDIDO: TIntegerField;
    cdsPedido_LibPEDIDO_CLIENTE: TStringField;
    cdsPedido_LibITEM: TIntegerField;
    cdsPedido_LibID_PRODUTO: TIntegerField;
    cdsPedido_LibREFERENCIA: TStringField;
    cdsPedido_LibNOME_PRODUTO: TStringField;
    cdsPedido_LibQTD: TFloatField;
    cdsPedido_LibQTD_RESTANTE: TFloatField;
    cdsPedido_LibQTD_FATURADO: TFloatField;
    cdsPedido_LibQTD_LIBERADA: TFloatField;
    cdsPedido_LibNOME_CLIENTE: TStringField;
    dsPedido_Lib: TDataSource;
    sdsProduto_Lib: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField4: TStringField;
    DataSource1: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    procedure prc_Localizar(ID: Integer); //-1 = Inclusão

  end;

var
  DMProg_Terc: TDMProg_Terc;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMProg_Terc }

procedure TDMProg_Terc.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMProg_Terc.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
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

procedure TDMProg_Terc.prc_Localizar(ID: Integer);
begin
  cdsProg_Terc.Close;
  sdsProg_Terc.ParamByName('ID').AsInteger := ID;
  cdsProg_Terc.Open;
end;

end.
