unit USel_OrdemProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, Mask,
  ToolEdit, CurrEdit;

type
  TfrmSel_OrdemProd = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btnConsultar: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsLote: TSQLDataSet;
    cdsLote: TClientDataSet;
    dspLote: TDataSetProvider;
    dsLote: TDataSource;
    StaticText1: TStaticText;
    Label3: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    qPedido2: TSQLQuery;
    qPedido2NUM_ORDEM: TIntegerField;
    cdsLoteNUM_ORDEM: TIntegerField;
    cdsLoteNOME: TStringField;
    cdsLoteDTEMISSAO: TDateField;
    btnSelecionar: TBitBtn;
    qParametros_Lote: TSQLQuery;
    qParametros_LoteUSA_NECESSIDADE_IF: TStringField;
    cdsLoteNUM_REMESSA: TStringField;
    qParametros_LoteUSA_REMESSA: TStringField;
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
    ctConsulta : String;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmSel_OrdemProd: TfrmSel_OrdemProd;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_OrdemProd.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_OrdemProd.prc_Consultar;
var
  vNumOrdAux : Integer;
begin
  vNumOrdAux := CurrencyEdit1.AsInteger;
  if CurrencyEdit2.AsInteger > 0 then
  begin
    qPedido2.Close;
    qPedido2.ParamByName('NUM_PEDIDO').AsInteger := CurrencyEdit2.AsInteger;
    qPedido2.Open;
    vNumOrdAux := qPedido2NUM_ORDEM.AsInteger;
  end;

  cdsLote.Close;
  sdsLote.CommandText := ctConsulta;
  if vNumOrdAux > 0 then
    sdsLote.CommandText := sdsLote.CommandText + ' WHERE L.NUM_ORDEM = ' + IntToStr(vNumOrdAux)
  else
  if trim(Edit1.Text) <> '' then
    sdsLote.CommandText := sdsLote.CommandText + ' WHERE L.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  cdsLote.Open;
end;

procedure TfrmSel_OrdemProd.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vNumOrd_Pos := cdsLoteNUM_ORDEM.AsInteger;
    Close;
  end;
end;

procedure TfrmSel_OrdemProd.SMDBGrid1DblClick(Sender: TObject);
begin
  if qParametros_LoteUSA_REMESSA.AsString = 'S' then
    vNumRemessa_Pos := cdsLoteNUM_REMESSA.AsString
  else
    vNumOrd_Pos := cdsLoteNUM_ORDEM.AsInteger;
  Close;
end;

procedure TfrmSel_OrdemProd.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    btnConsultarClick(Sender);
    if not cdsLote.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_OrdemProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_OrdemProd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    if Edit1.Focused then
      Close
    else
      Edit1.SetFocus;
  end;
end;

procedure TfrmSel_OrdemProd.FormShow(Sender: TObject);
var
  i : Integer;
begin
  ctConsulta := sdsLote.CommandText;
  if trim(Edit1.Text) <> '' then
  begin
    btnConsultarClick(Sender);
    SMDBGrid1.SetFocus;
  end;
  qParametros_Lote.Close;
  qParametros_Lote.Open;
  btnSelecionar.Visible := (qParametros_LoteUSA_NECESSIDADE_IF.AsString = 'S');


  for i := 0 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'NUM_ORDEM' then
      SMDBGrid1.Columns[i].Visible := ((qParametros_LoteUSA_REMESSA.AsString = 'N') or (qParametros_LoteUSA_REMESSA.IsNull));
    if SMDBGrid1.Columns[i].FieldName = 'NUM_REMESSA' then
      SMDBGrid1.Columns[i].Visible := (qParametros_LoteUSA_REMESSA.AsString = 'S');
  end;
end;

procedure TfrmSel_OrdemProd.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsLote.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmSel_OrdemProd.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    btnConsultarClick(Sender);
    if not cdsLote.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_OrdemProd.CurrencyEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    btnConsultarClick(Sender);
    if not cdsLote.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_OrdemProd.btnSelecionarClick(Sender: TObject);
var
 vTexto : String;
begin
  vTexto := '';
  cdsLote.First;
  while not cdsLote.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      if qParametros_LoteUSA_REMESSA.AsString = 'S' then
      begin
        if trim(vTexto) = '' then
          vTexto := cdsLoteNUM_REMESSA.AsString
        else
          vTexto := vTexto + ',' + cdsLoteNUM_REMESSA.AsString;
      end
      else
      begin
        if trim(vTexto) = '' then
          vTexto := cdsLoteNUM_ORDEM.AsString
        else
          vTexto := vTexto + ',' + cdsLoteNUM_ORDEM.AsString;
      end;
    end;
    cdsLote.Next;
  end;
  if trim(vTexto) <> '' then
    vNUM_Ordem_Sel := vTexto;
  Close;
end;

end.
