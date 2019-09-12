unit UDMProg_Terc;

interface

uses
  SysUtils, Classes, LogTypes, FMTBcd, DB, SqlExpr, Provider, DBClient,
  frxRich, frxClass, frxDBSet, frxExportPDF, frxExportMail;

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
    cdsPedido_LibNUM_PEDIDO: TIntegerField;
    cdsPedido_LibPEDIDO_CLIENTE: TStringField;
    cdsPedido_LibITEM: TIntegerField;
    cdsPedido_LibID_PRODUTO: TIntegerField;
    cdsPedido_LibREFERENCIA: TStringField;
    cdsPedido_LibNOME_PRODUTO: TStringField;
    cdsPedido_LibQTD: TFloatField;
    cdsPedido_LibQTD_FATURADO: TFloatField;
    cdsPedido_LibQTD_LIBERADA: TFloatField;
    cdsPedido_LibNOME_CLIENTE: TStringField;
    dsPedido_Lib: TDataSource;
    sdsProduto_Lib: TSQLDataSet;
    dspProduto_Lib: TDataSetProvider;
    cdsProduto_Lib: TClientDataSet;
    dsProduto_Lib: TDataSource;
    cdsProduto_LibID_PRODUTO: TIntegerField;
    cdsProduto_LibREFERENCIA: TStringField;
    cdsProduto_LibNOME_PRODUTO: TStringField;
    cdsProduto_LibNOME_CLIENTE: TStringField;
    cdsProduto_LibQTD_LIBERADA: TFloatField;
    cdsPedido_LibclQtd_Restante: TFloatField;
    cdsPedido_LibQTD_RESTANTE: TFloatField;
    cdsPedido_LibDTEMISSAO: TDateField;
    cdsPedido_LibDTENTREGA: TDateField;
    sdsPedido_Pend: TSQLDataSet;
    dspPedido_Pend: TDataSetProvider;
    cdsPedido_Pend: TClientDataSet;
    dsPedido_Pend: TDataSource;
    cdsPedido_PendID: TIntegerField;
    cdsPedido_PendNUM_PEDIDO: TIntegerField;
    cdsPedido_PendPEDIDO_CLIENTE: TStringField;
    cdsPedido_PendITEM: TIntegerField;
    cdsPedido_PendID_PRODUTO: TIntegerField;
    cdsPedido_PendREFERENCIA: TStringField;
    cdsPedido_PendNOME_PRODUTO: TStringField;
    cdsPedido_PendQTD: TFloatField;
    cdsPedido_PendQTD_RESTANTE: TFloatField;
    cdsPedido_PendQTD_FATURADO: TFloatField;
    cdsPedido_PendQTD_LIBERADA: TFloatField;
    cdsPedido_PendNOME_CLIENTE: TStringField;
    cdsPedido_PendDTEMISSAO: TDateField;
    cdsPedido_PendDTENTREGA: TDateField;
    cdsPedido_PendQTD_PENDENTE_LIB: TFloatField;
    cdsPedido_PendagQtd_Total: TAggregateField;
    sdsPrc_Atualiza_Status_Ped: TSQLDataSet;
    sdsFilial: TSQLDataSet;
    sdsFilialID: TIntegerField;
    sdsFilialNOME: TStringField;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    dsFilial: TDataSource;
    cdsPedido_LibID: TIntegerField;
    frxMailExport1: TfrxMailExport;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxPedido_Lib: TfrxDBDataset;
    frxRichObject1: TfrxRichObject;
    frxProduto_Lib: TfrxDBDataset;
    frxPedido_Pend: TfrxDBDataset;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsPedido_LibCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    ctPedido_Lib, ctProduto_Lib, ctPedido_Pend : String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;

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
  ctPedido_Lib  := sdsPedido_Lib.CommandText;
  ctProduto_Lib := sdsProduto_Lib.CommandText;
  ctPedido_Pend := sdsPedido_Pend.CommandText;

  cdsFilial.Open;

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

procedure TDMProg_Terc.cdsPedido_LibCalcFields(DataSet: TDataSet);
begin
  cdsPedido_LibclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.0000',cdsPedido_LibQTD_RESTANTE.AsFloat - cdsPedido_LibQTD_LIBERADA.AsFloat));
  if StrToFloat(FormatFloat('0.0000',cdsPedido_LibclQtd_Restante.AsFloat)) <= 0 then
    cdsPedido_LibclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.0000',0));
end;

procedure TDMProg_Terc.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsProg_Terc.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PROG_TERC',0);

  cdsProg_Terc.Insert;
  cdsProg_TercID.AsInteger    := vAux;
  cdsProg_TercDATA.AsDateTime := Date;
end;

end.
