unit USel_Processo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TfrmSel_Processo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsProcesso: TSQLDataSet;
    cdsProcesso: TClientDataSet;
    dspProcesso: TDataSetProvider;
    dsProcesso: TDataSource;
    StaticText1: TStaticText;
    sdsProcessoID: TIntegerField;
    sdsProcessoNOME: TStringField;
    cdsProcessoID: TIntegerField;
    cdsProcessoNOME: TStringField;
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
    ctProcessoLocal : String;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmSel_Processo: TfrmSel_Processo;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Processo.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
  cdsProcesso.RecordCount;
end;

procedure TfrmSel_Processo.prc_Consultar;
begin
  cdsProcesso.Close;
  sdsProcesso.CommandText := ctProcessoLocal;
  if trim(Edit1.Text) <> '' then
    sdsProcesso.CommandText := sdsProcesso.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  cdsProcesso.Open;
end;

procedure TfrmSel_Processo.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vCodProcesso_Pos := cdsProcessoID.AsInteger;
    Close;
  end;
end;

procedure TfrmSel_Processo.SMDBGrid1DblClick(Sender: TObject);
begin
  vCodProcesso_Pos := cdsProcessoID.AsInteger;
  Close;
end;

procedure TfrmSel_Processo.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsProcesso.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Processo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Processo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmSel_Processo.FormShow(Sender: TObject);
var
  i : Integer;
begin
  ctProcessoLocal := sdsProcesso.CommandText;
end;

procedure TfrmSel_Processo.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsProcesso.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
