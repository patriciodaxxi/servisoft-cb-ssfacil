unit UConsEstoque_Lote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, Mask, 
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsEstoque, RxLookup, UCBase, NxCollection, ToolEdit, CurrEdit;

type
  TfrmConsEstoque_Lote = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    SMDBGrid1: TSMDBGrid;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RadioGroup2: TRadioGroup;
    btnConsultar: TNxButton;
    Label5: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label6: TLabel;
    rxdbLocalEstoque: TRxDBLookupCombo;
    Label3: TLabel;
    Edit2: TEdit;
    Label8: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label9: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConsultarClick(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMConsEstoque: TDMConsEstoque;

    procedure prc_Consultar;
  public
    { Public declarations }
    vID_Produto_Lote : Integer;
    vID_Filial_Lote : Integer;
  end;

var
  frmConsEstoque_Lote: TfrmConsEstoque_Lote;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, USel_Produto;

{$R *.dfm}

procedure TfrmConsEstoque_Lote.prc_Consultar;
var
  vQtdAux: Integer;
  vComando: String;
begin
  vQtdAux := 0;
  fDMConsEstoque.cdsEstoque_Lote.Close;
  vComando := vComando + ' AND E.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND PRO.REFERENCIA = ' + QuotedStr(Edit1.Text);
  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' AND E.ID_PRODUTO = ' + IntToStr(CurrencyEdit1.AsInteger);
  if rxdbLocalEstoque.Text <> '' then
    vComando := vComando + ' AND E.ID_LOCAL_ESTOQUE = ' + IntToStr(rxdbLocalEstoque.KeyValue);
  if trim(Edit2.Text) <> '' then
    vComando := vComando + ' AND E.NUM_LOTE_CONTROLE = ' + QuotedStr(Edit2.Text);
  case RadioGroup2.ItemIndex of
    0: vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('P');
    1: vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('M');
    2: vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('C');
    3: vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('S');
  end;

  if fDMConsEstoque.qParametros_EstUSA_QTD_INI.AsString = 'S' then
  begin
    if CurrencyEdit2.Value > 0 then
      vComando := vComando + ' AND E.QTD >= ' + CurrencyEdit2.Text;
    if CurrencyEdit3.Value > 0 then
      vComando := vComando + ' AND E.QTD <= ' + CurrencyEdit3.Text;
  end;

  fDMConsEstoque.sdsEstoque_Lote.CommandText := fDMConsEstoque.ctEstoque_Lote + vComando;
  fDMConsEstoque.cdsEstoque_Lote.Open;
end;

procedure TfrmConsEstoque_Lote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsEstoque_Lote.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsEstoque);
  fDMConsEstoque.cdsFilial.First;
  if (fDMConsEstoque.cdsFilial.RecordCount < 2) and (fDMConsEstoque.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsEstoque.cdsFilialID.AsInteger;
  Label6.Visible           := (fDMConsEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  rxdbLocalEstoque.Visible := (fDMConsEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'NOME_LOCAL') then
      SMDBGrid1.Columns[i].Visible := (fDMConsEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'COD_LOCAL') then
      SMDBGrid1.Columns[i].Visible := (fDMConsEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  end;
  if vID_Filial_Lote > 0 then
  begin
    fDMConsEstoque.cdsFilial.Locate('ID',vID_Filial_Lote,[loCaseInsensitive]);
    RxDBLookupCombo1.KeyValue := vID_Filial_Lote;
  end;
  if vID_Produto_Lote > 0 then
  begin
    CurrencyEdit1.AsInteger := vID_Produto_Lote;
    btnConsultarClick(Sender);
  end;
end;

procedure TfrmConsEstoque_Lote.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender)
  else
  if (Key = Vk_F2) then
  begin
    vReferencia_Pos := Edit1.Text;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    Edit1.Text := vReferencia_Pos;
  end;
end;

procedure TfrmConsEstoque_Lote.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.0000',fDMConsEstoque.cdsEstoque_LoteQTD.AsFloat)) < 0 then
    AFont.Color := clRed;
end;

procedure TfrmConsEstoque_Lote.btnConsultarClick(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Filial não informada!');
    RxDBLookupCombo1.SetFocus;
    exit;
  end;

  fDMConsEstoque.cdsEstoque.IndexFieldNames := 'REFERENCIA;NUM_LOTE_CONTROLE;NOME_LOCAL';
  prc_Consultar;
end;

procedure TfrmConsEstoque_Lote.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

end.
