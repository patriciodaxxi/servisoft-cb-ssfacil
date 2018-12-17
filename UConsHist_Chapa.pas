unit UConsHist_Chapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, RxLookup,
  Mask, ToolEdit, CurrEdit, UDMCopiaPedido;

type
  TfrmConsHist_Chapa = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btnConsultar: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsChapa: TSQLDataSet;
    cdsChapa: TClientDataSet;
    dspChapa: TDataSetProvider;
    dsChapa: TDataSource;
    StaticText1: TStaticText;
    Label2: TLabel;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteCNPJ_CPF: TStringField;
    cdsChapaVLR_KG: TFloatField;
    cdsChapaCOMPRIMENTO: TFloatField;
    cdsChapaLARGURA: TFloatField;
    cdsChapaALTURA: TFloatField;
    cdsChapaQTD: TFloatField;
    cdsChapaVLR_UNITARIO: TFloatField;
    cdsChapaVLR_TOTAL: TFloatField;
    cdsChapaVLR_DOBRA: TFloatField;
    cdsChapaCOMPLEMENTO_NOME: TStringField;
    cdsChapaPESO: TFloatField;
    cdsChapaDTEMISSAO: TDateField;
    cdsChapaID_CLIENTE: TIntegerField;
    cdsChapaNOME_CLIENTE: TStringField;
    RxDBLookupCombo1: TRxDBLookupCombo;
    cdsChapaNUM_PEDIDO: TIntegerField;
    cdsChapaTIPO_REG: TStringField;
    Panel2: TPanel;
    btnCopiar: TBitBtn;
    cdsChapaID_PEDIDO: TIntegerField;
    cdsChapaITEM_PEDIDO: TIntegerField;
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCopiarClick(Sender: TObject);
  private
    { Private declarations }
    ctChapaLocal : String;
    procedure prc_Consultar;

  public
    { Public declarations }
    fDMCopiaPedido : TDMCopiaPedido;

    vTipo_Prod : String; //P=Produto  M=Material  'Vázio'=Ambos
    vID_Cliente : Integer;

  end;

var
  frmConsHist_Chapa: TfrmConsHist_Chapa;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsHist_Chapa.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsHist_Chapa.prc_Consultar;
begin
  cdsChapa.Close;
  sdsChapa.CommandText := ctChapaLocal;
  if trim(Edit1.Text) <> '' then
    sdsChapa.CommandText := sdsChapa.CommandText + ' AND TP.COMPLEMENTO_NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  if RxDBLookupCombo1.Text <> '' then
    sdsChapa.CommandText := sdsChapa.CommandText + ' AND PED.ID_CLIENTE =  ' + IntToStr(RxDBLookupCombo1.KeyValue);
  //if trim(Edit2.Text) <> '' then
  //  sdsChapa.CommandText := sdsChapa.CommandText + ' AND CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%');
  cdsChapa.Open;
end;

procedure TfrmConsHist_Chapa.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    Close;
  end;
end;

procedure TfrmConsHist_Chapa.SMDBGrid1DblClick(Sender: TObject);
begin
  if cdsChapa.Active then
  begin
    vNome_Pos := cdsChapaCOMPLEMENTO_NOME.AsString;
    vVlr_Pos  := StrToFloat(FormatFloat('0.0000##',cdsChapaVLR_KG.AsFloat));
  end;
  Close;
end;

procedure TfrmConsHist_Chapa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action         := Cafree;
end;

procedure TfrmConsHist_Chapa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmConsHist_Chapa.FormShow(Sender: TObject);
var
  i : Integer;
begin
  ctChapaLocal := sdsChapa.CommandText;
  cdsCliente.Open;
  if vID_Cliente > 0 then
    RxDBLookupCombo1.KeyValue := vID_Cliente;

  if not btnCopiar.Enabled then
  begin
    SMDBGrid1.ExOptions := [eoDisableDelete,eoDisableInsert,eoENTERlikeTAB,eoKeepSelection,eoStandardPopup,eoBLOBEditor,eoTitleWordWrap,eoShowFilterBar];
    SMDBGrid1.Options   := [dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
  end;
end;

procedure TfrmConsHist_Chapa.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsChapa.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsHist_Chapa.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    btnConsultarClick(Sender);
end;

procedure TfrmConsHist_Chapa.btnCopiarClick(Sender: TObject);
begin
  fDMCopiaPedido.mAux.EmptyDataSet;
  cdsChapa.First;
  while not cdsChapa.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      fDMCopiaPedido.mAux.Insert;
      fDMCopiaPedido.mAuxID_Pedido.AsInteger   := cdsChapaID_PEDIDO.AsInteger;
      fDMCopiaPedido.mAuxNum_Pedido.AsInteger  := cdsChapaNUM_PEDIDO.AsInteger;
      fDMCopiaPedido.mAuxItem_Pedido.AsInteger := cdsChapaITEM_PEDIDO.AsInteger;
      fDMCopiaPedido.mAux.Post;
    end;
    cdsChapa.Next;
  end;
  Close;
end;

end.
