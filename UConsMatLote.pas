unit UConsMatLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, ExtCtrls, NxCollection,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, SMDBGrid,
  DBCtrls;

type
  TfrmConsMatLote = class(TForm)
    Panel1: TPanel;
    Label13: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    NxButton1: TNxButton;
    sdsMatLote: TSQLDataSet;
    dspMatLote: TDataSetProvider;
    cdsMatLote: TClientDataSet;
    dsMatLote: TDataSource;
    cdsMatLoteclSaldoMat: TFloatField;
    SMDBGrid1: TSMDBGrid;
    sdsReq: TSQLDataSet;
    dspReq: TDataSetProvider;
    cdsReq: TClientDataSet;
    dsReq: TDataSource;
    cdsReqID_FUNCIONARIO: TIntegerField;
    cdsReqID_FUNCIONARIO_ENTR: TIntegerField;
    cdsReqNUM_REQUISICAO: TIntegerField;
    cdsReqDTMOVIMENTO: TDateField;
    cdsReqID_PRODUTO: TIntegerField;
    cdsReqID_COR: TFMTBCDField;
    cdsReqTAMANHO: TStringField;
    cdsReqNOME_REQUISITANTE: TStringField;
    cdsReqQTD: TFloatField;
    SMDBGrid2: TSMDBGrid;
    Panel2: TPanel;
    cdsReqID: TIntegerField;
    cdsReqNUM_LOTE: TIntegerField;
    cdsReqNOME_FUNCIONARIO_ENTR: TStringField;
    cdsMatLoteNUM_LOTE: TIntegerField;
    cdsMatLoteID_PRODUTO: TIntegerField;
    cdsMatLoteID_COR_COMBINACAO: TIntegerField;
    cdsMatLoteID_MATERIAL: TIntegerField;
    cdsMatLoteID_POSICAO: TIntegerField;
    cdsMatLoteNOME_COR_MAT: TStringField;
    cdsMatLoteNOME_POSICAO: TStringField;
    cdsMatLoteNOME_MATERIAL: TStringField;
    cdsMatLoteQTD_CONSUMO: TFloatField;
    cdsMatLoteQTD_PROD: TFloatField;
    cdsMatLoteQTD_PROD_PEND: TFloatField;
    cdsMatLoteQTD_PROD_PRODUZIDO: TFloatField;
    cdsMatLoteNUM_ORDEM: TIntegerField;
    cdsMatLoteQTD_MAT_USADO: TFloatField;
    cdsMatLoteTIPO: TStringField;
    cdsMatLoteID_COR_MAT: TFMTBCDField;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    procedure NxButton1Click(Sender: TObject);
    procedure cdsMatLoteCalcFields(DataSet: TDataSet);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid2Exit(Sender: TObject);
  private
    { Private declarations }

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsMatLote: TfrmConsMatLote;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmConsMatLote.NxButton1Click(Sender: TObject);
begin
  if CurrencyEdit2.AsInteger <= 0 then
  begin
    MessageDlg('*** Número do Lote não informado!', mtError, [mbOk], 0);
    Exit;
  end;

  prc_Consultar;

  cdsMatLote.IndexFieldNames := 'NOME_POSICAO;NOME_MATERIAL';
end;

procedure TfrmConsMatLote.prc_Consultar;
begin
  cdsMatLote.Close;
  sdsMatLote.ParamByName('NUM_LOTE').AsInteger := CurrencyEdit2.AsInteger;
  cdsMatLote.Open;
end;

procedure TfrmConsMatLote.cdsMatLoteCalcFields(DataSet: TDataSet);
begin
  cdsMatLoteclSaldoMat.AsFloat := StrToFloat(FormatFloat('0.00000',cdsMatLoteQTD_CONSUMO.AsFloat - cdsMatLoteQTD_MAT_USADO.AsFloat));
end;

procedure TfrmConsMatLote.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  cdsMatLote.IndexFieldNames := Column.FieldName;
  if Column.FieldName = 'NOME_POSICAO' then
    cdsMatLote.IndexFieldNames := Column.FieldName + ';NOME_MATERIAL';
end;

procedure TfrmConsMatLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsMatLote.FormShow(Sender: TObject);
begin
  if CurrencyEdit2.AsInteger > 0 then
    prc_Consultar;
end;

procedure TfrmConsMatLote.CurrencyEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = vk_Return) and (CurrencyEdit2.AsInteger > 0) then
    prc_Consultar;
end;

procedure TfrmConsMatLote.SMDBGrid1DblClick(Sender: TObject);
begin
  if not(cdsMatLote.Active) or (cdsMatLoteID_MATERIAL.AsInteger <= 0) then
    exit;
  cdsReq.Close;
  sdsReq.ParamByName('NUM_LOTE').AsInteger   := cdsMatLoteNUM_LOTE.AsInteger;
  sdsReq.ParamByName('ID_PRODUTO').AsInteger := cdsMatLoteID_MATERIAL.AsInteger;
  sdsReq.ParamByName('ID_COR').AsInteger     := cdsMatLoteID_COR_MAT.AsInteger;
  cdsReq.Open;
  SMDBGrid2.Visible := True;
  SMDBGrid2.SetFocus;
end;

procedure TfrmConsMatLote.SMDBGrid2Exit(Sender: TObject);
begin
  SMDBGrid2.Visible := False;
end;

end.
