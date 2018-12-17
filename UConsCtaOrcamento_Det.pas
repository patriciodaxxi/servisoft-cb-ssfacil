unit UConsCtaOrcamento_Det;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsFinanceiro, Grids, DBGrids, SMDBGrid, DB, RzTabs;

type
  TfrmConsCtaOrcamento_Det = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Titulos: TRzTabSheet;
    TS_Carteira: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    TS_OC: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure SMDBGrid3TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMConsFinanceiro : TDMConsFinanceiro;
  end;

var
  frmConsCtaOrcamento_Det: TfrmConsCtaOrcamento_Det;

implementation

{$R *.dfm}

procedure TfrmConsCtaOrcamento_Det.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsCtaOrcamento_Det.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.cdsDuplicata_DetVLR_RESTANTE.AsFloat)) <= 0 then
    Background := clMoneyGreen;
end;

procedure TfrmConsCtaOrcamento_Det.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsFinanceiro.cdsDuplicata_Det.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsCtaOrcamento_Det.SMDBGrid2TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsFinanceiro.cdsPedido_Pend.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsCtaOrcamento_Det.SMDBGrid3TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsFinanceiro.cdsPedido_Pend.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid3.Columns.Count - 1 do
    if not (SMDBGrid3.Columns.Items[I] = Column) then
      SMDBGrid3.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
