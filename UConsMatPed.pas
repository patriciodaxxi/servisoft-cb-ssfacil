unit UConsMatPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, ExtCtrls, NxCollection,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, SMDBGrid,
  DBCtrls;

type
  TfrmConsMatPed = class(TForm)
    Panel1: TPanel;
    Label13: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    NxButton1: TNxButton;
    sdsMatLote: TSQLDataSet;
    dspMatLote: TDataSetProvider;
    cdsMatLote: TClientDataSet;
    dsMatLote: TDataSource;
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
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label1: TLabel;
    DBText1: TDBText;
    cdsMatLoteNUM_PEDIDO: TIntegerField;
    cdsMatLoteID_MATERIAL: TIntegerField;
    cdsMatLoteID_COR_MAT: TFMTBCDField;
    cdsMatLoteNOME_COR_MAT: TStringField;
    cdsMatLoteNOME_MATERIAL: TStringField;
    cdsMatLoteQTD_MAT_USADO: TFloatField;
    cdsMatLoteTIPO: TStringField;
    cdsMatLoteQTD: TFloatField;
    cdsMatLoteQTD_RESTANTE: TFloatField;
    cdsMatLoteQTD_FATURADO: TFloatField;
    procedure NxButton1Click(Sender: TObject);
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
  frmConsMatPed: TfrmConsMatPed;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmConsMatPed.NxButton1Click(Sender: TObject);
begin
  if CurrencyEdit2.AsInteger <= 0 then
  begin
    MessageDlg('*** Número do Pedido não informado!', mtError, [mbOk], 0);
    Exit;
  end;

  prc_Consultar;

  cdsMatLote.IndexFieldNames := 'NOME_MATERIAL';
end;

procedure TfrmConsMatPed.prc_Consultar;
begin
  cdsMatLote.Close;
  sdsMatLote.ParamByName('NUM_PEDIDO').AsInteger := CurrencyEdit2.AsInteger;
  cdsMatLote.Open;
end;

procedure TfrmConsMatPed.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  cdsMatLote.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsMatPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsMatPed.FormShow(Sender: TObject);
begin
  if CurrencyEdit2.AsInteger > 0 then
    prc_Consultar;
end;

procedure TfrmConsMatPed.CurrencyEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = vk_Return) and (CurrencyEdit2.AsInteger > 0) then
    prc_Consultar;
end;

procedure TfrmConsMatPed.SMDBGrid1DblClick(Sender: TObject);
begin
  if not(cdsMatLote.Active) or (cdsMatLoteID_MATERIAL.AsInteger <= 0) then
    exit;
  cdsReq.Close;
  sdsReq.ParamByName('NUM_PEDIDO').AsInteger   := cdsMatLoteNUM_PEDIDO.AsInteger;
  sdsReq.ParamByName('ID_PRODUTO').AsInteger := cdsMatLoteID_MATERIAL.AsInteger;
  sdsReq.ParamByName('ID_COR').AsInteger     := cdsMatLoteID_COR_MAT.AsInteger;
  cdsReq.Open;
  SMDBGrid2.Visible := True;
  SMDBGrid2.SetFocus;
end;

procedure TfrmConsMatPed.SMDBGrid2Exit(Sender: TObject);
begin
  SMDBGrid2.Visible := False;
end;

end.
