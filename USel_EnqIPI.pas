unit USel_EnqIPI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, RxLookup,
  DBCtrls;

type
  TfrmSel_EnqIPI = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsEnqIPI: TSQLDataSet;
    cdsEnqIPI: TClientDataSet;
    dspEnqIPI: TDataSetProvider;
    dsEnqIPI: TDataSource;
    StaticText1: TStaticText;
    ComboBox1: TComboBox;
    Label2: TLabel;
    cdsEnqIPIID: TIntegerField;
    cdsEnqIPICODIGO: TStringField;
    cdsEnqIPITIPO: TStringField;
    cdsEnqIPIDESCRICAO: TStringField;
    cdsEnqIPITIPO_DESC: TStringField;
    DBMemo1: TDBMemo;
    procedure BitBtn1Click(Sender: TObject);
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
  private
    { Private declarations }
    ctEnqIPILocal : String;
    procedure prc_Consultar;

  public
    { Public declarations }
    vTipo_Prod : String; //P=EnqIPI  M=Material  'Vázio'=Ambos

  end;

var
  frmSel_EnqIPI: TfrmSel_EnqIPI;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_EnqIPI.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_EnqIPI.prc_Consultar;
begin
  cdsEnqIPI.Close;
  sdsEnqIPI.CommandText := ctEnqIPILocal + ' WHERE 0 = 0 ';
  case ComboBox1.ItemIndex of
    0: sdsEnqIPI.CommandText := sdsEnqIPI.CommandText + ' AND E.TIPO = ' + QuotedStr('M');
    1: sdsEnqIPI.CommandText := sdsEnqIPI.CommandText + ' AND E.TIPO = ' + QuotedStr('S');
    2: sdsEnqIPI.CommandText := sdsEnqIPI.CommandText + ' AND E.TIPO = ' + QuotedStr('I');
    3: sdsEnqIPI.CommandText := sdsEnqIPI.CommandText + ' AND E.TIPO = ' + QuotedStr('R');
    4: sdsEnqIPI.CommandText := sdsEnqIPI.CommandText + ' AND E.TIPO = ' + QuotedStr('O');
  end;
  if trim(Edit1.Text) <> '' then
    sdsEnqIPI.CommandText := sdsEnqIPI.CommandText + ' AND E.CODIGO LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  cdsEnqIPI.Open;
end;

procedure TfrmSel_EnqIPI.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    viD_EnqIPI_Pos := cdsEnqIPIID.AsInteger;
    Close;
  end;
end;

procedure TfrmSel_EnqIPI.SMDBGrid1DblClick(Sender: TObject);
begin
  viD_EnqIPI_Pos := cdsEnqIPIID.AsInteger;
  Close;
end;

procedure TfrmSel_EnqIPI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_EnqIPI.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmSel_EnqIPI.FormShow(Sender: TObject);
var
  i : Integer;
begin
  ctEnqIPILocal := sdsEnqIPI.CommandText;
  Edit1.SetFocus;
end;

procedure TfrmSel_EnqIPI.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsEnqIPI.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmSel_EnqIPI.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsEnqIPI.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

end.
