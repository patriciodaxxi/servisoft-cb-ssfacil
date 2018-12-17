unit UConsNecessidadeMat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, DB, Provider, DBClient, SqlExpr, UDMConsPedido, RxLookup, UCBase, Mask, ToolEdit, CurrEdit;

type
  TfrmConsNecessidadeMat = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    SMDBGrid1: TSMDBGrid;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Label7: TLabel;
    DateEdit3: TDateEdit;
    Label8: TLabel;
    DateEdit4: TDateEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Shape2: TShape;
    Label13: TLabel;
    Shape3: TShape;
    Label14: TLabel;
    Shape4: TShape;
    Label15: TLabel;
    Label10: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMConsPedido: TDMConsPedido;
    ColunaOrdenada: String;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsNecessidadeMat: TfrmConsNecessidadeMat;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelEstoque;

{$R *.dfm}

procedure TfrmConsNecessidadeMat.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsNecessidadeMat.prc_Consultar;
var
  vComando : String;
  vOpcaoDtEntrega : String;
begin
  fDMConsPedido.cdsPedido_Item.Close;
  fDMConsPedido.sdsPedido_Item.CommandText := fDMConsPedido.ctPedido_Item + ' WHERE 0 = 0 ';
  vComando := '';
  if RxDBLookupCombo1.Text <> '' then
    vComando := ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND PED.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if RxDBLookupCombo3.Text <> '' then
    vComando := vComando + ' AND ITE.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  vOpcaoDtEntrega := '';
  if fDMConsPedido.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
    vOpcaoDtEntrega := 'PED.DTENTREGA'
  else
    vOpcaoDtEntrega := 'ITE.DTENTREGA';
  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));

  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND PED.PEDIDO_CLIENTE LIKE ' + QuotedStr('%'+Edit1.Text+'%');

  fDMConsPedido.sdsPedido_Item.CommandText := fDMConsPedido.sdsPedido_Item.CommandText + vComando; 
  fDMConsPedido.cdsPedido_Item.Open;
  fDMConsPedido.cdsPedido_Item.IndexFieldNames := 'PEDIDO_CLIENTE;DTEMISSAO';
end;

procedure TfrmConsNecessidadeMat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsNecessidadeMat.FormShow(Sender: TObject);
begin
  fDMConsPedido := TDMConsPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPedido);
  RadioGroup2Click(Sender);
  fDMConsPedido.cdsFilial.First;
  if (fDMConsPedido.cdsFilial.RecordCount < 2) and (fDMConsPedido.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsPedido.cdsFilialID.AsInteger;
end;

procedure TfrmConsNecessidadeMat.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.cdsPedido_Item.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsNecessidadeMat.RadioGroup2Click(Sender: TObject);
var
  i : Integer;
  vColunaAux : String;
  vColunaAux2 : String;
begin
  if fDMConsPedido.cdsFilial.RecordCount > 1 then
    vColunaAux2 := ''
  else
    vColunaAux2 := 'QTDGERAL';
end;

procedure TfrmConsNecessidadeMat.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    BitBtn1Click(Sender);
end;

procedure TfrmConsNecessidadeMat.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMConsPedido.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmConsNecessidadeMat.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMConsPedido.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmConsNecessidadeMat.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMConsPedido.cdsCliente.IndexFieldNames := 'NOME';
end;

procedure TfrmConsNecessidadeMat.RxDBLookupCombo5Enter(Sender: TObject);
begin
  fDMConsPedido.cdsVendedor.IndexFieldNames := 'NOME';
end;

procedure TfrmConsNecessidadeMat.RxDBLookupCombo4Change(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    RxDBLookupCombo3.KeyValue := RxDBLookupCombo4.KeyValue;
end;

procedure TfrmConsNecessidadeMat.RxDBLookupCombo3Change(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    RxDBLookupCombo4.KeyValue := RxDBLookupCombo3.KeyValue;
end;

procedure TfrmConsNecessidadeMat.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

end.
