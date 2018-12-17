unit USel_CodCest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, RxLookup, DBCtrls;

type
  TfrmSel_CodCest = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsTab_Cest: TSQLDataSet;
    cdsTab_Cest: TClientDataSet;
    dspTab_Cest: TDataSetProvider;
    dsTab_Cest: TDataSource;
    StaticText1: TStaticText;
    Label3: TLabel;
    Edit2: TEdit;
    cdsTab_CestCOD_CEST: TStringField;
    cdsTab_CestNCM: TStringField;
    cdsTab_CestDESCRICAO: TStringField;
    DBMemo1: TDBMemo;
    procedure BitBtn1Click(Sender: TObject);
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
  private
    { Private declarations }
    ctTab_CestLocal : String;
    procedure prc_Consultar;

  public
    { Public declarations }    
  end;

var
  frmSel_CodCest: TfrmSel_CodCest;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_CodCest.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_CodCest.prc_Consultar;
begin
  cdsTab_Cest.Close;
  sdsTab_Cest.CommandText := ctTab_CestLocal + ' WHERE 0 = 0 ';
  if trim(Edit1.Text) <> '' then
    sdsTab_Cest.CommandText := sdsTab_Cest.CommandText + ' AND NCM LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  if trim(Edit2.Text) <> '' then
    sdsTab_Cest.CommandText := sdsTab_Cest.CommandText + ' AND COD_CEST LIKE ' + QuotedStr('%'+Edit2.Text+'%');
  cdsTab_Cest.Open;
end;

procedure TfrmSel_CodCest.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vCodCest_Pos := cdsTab_CestCOD_CEST.AsString;
    Close;
  end;
end;

procedure TfrmSel_CodCest.SMDBGrid1DblClick(Sender: TObject);
begin
  vCodCest_Pos := cdsTab_CestCOD_CEST.AsString;
  Close;
end;

procedure TfrmSel_CodCest.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsTab_Cest.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_CodCest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_CodCest.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmSel_CodCest.FormShow(Sender: TObject);
var
  i: Integer;
begin
  ctTab_CestLocal := sdsTab_Cest.CommandText;
end;

procedure TfrmSel_CodCest.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsTab_Cest.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
