unit USel_Plano_Contabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TfrmSel_Plano_Contabil = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsPlano_Contabil: TSQLDataSet;
    cdsPlano_Contabil: TClientDataSet;
    dspPlano_Contabil: TDataSetProvider;
    dsPlano_Contabil: TDataSource;
    StaticText1: TStaticText;
    sdsPlano_ContabilID: TIntegerField;
    sdsPlano_ContabilCODIGO: TStringField;
    sdsPlano_ContabilNOME: TStringField;
    sdsPlano_ContabilDT_CADASTRO: TDateField;
    sdsPlano_ContabilNIVEL: TIntegerField;
    sdsPlano_ContabilNOME_AUX: TStringField;
    cdsPlano_ContabilID: TIntegerField;
    cdsPlano_ContabilCODIGO: TStringField;
    cdsPlano_ContabilNOME: TStringField;
    cdsPlano_ContabilDT_CADASTRO: TDateField;
    cdsPlano_ContabilNIVEL: TIntegerField;
    cdsPlano_ContabilNOME_AUX: TStringField;
    sdsPlano_ContabilTIPO_REG: TStringField;
    cdsPlano_ContabilTIPO_REG: TStringField;
    sdsPesquisa: TSQLDataSet;
    dspPesquisa: TDataSetProvider;
    cdsPesquisa: TClientDataSet;
    cdsPesquisaID: TIntegerField;
    cdsPesquisaNOME: TStringField;
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
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    ctPlano_ContabilLocal : String;
    procedure prc_Consultar;
  public
    { Public declarations }
  end;

var
  frmSel_Plano_Contabil: TfrmSel_Plano_Contabil;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Plano_Contabil.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_Plano_Contabil.prc_Consultar;
begin
  cdsPlano_Contabil.Close;
  sdsPlano_Contabil.CommandText := ctPlano_ContabilLocal;
  //if trim(Edit1.Text) <> '' then
  //  sdsPlano_Contabil.CommandText := sdsPlano_Contabil.CommandText + ' AND C.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  cdsPlano_Contabil.Open;

  if trim(Edit1.Text) <> '' then
  begin
    cdsPesquisa.Close;
    sdsPesquisa.CommandText := 'SELECT C.ID, C.NOME FROM PLANO_CONTABIL C '
                            + ' WHERE C.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
    cdsPesquisa.Open;
    if cdsPesquisaID.AsInteger > 0 then
      cdsPlano_Contabil.Locate('ID',cdsPesquisaID.AsInteger,([loCaseInsensitive]));
  end;
end;

procedure TfrmSel_Plano_Contabil.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vID_Plano_Contabil_Pos := cdsPlano_ContabilID.AsInteger;
    Close;
  end;
end;

procedure TfrmSel_Plano_Contabil.SMDBGrid1DblClick(Sender: TObject);
begin
  vID_Plano_Contabil := cdsPlano_ContabilID.AsInteger;
  Close;
end;

procedure TfrmSel_Plano_Contabil.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsPlano_Contabil.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Plano_Contabil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Plano_Contabil.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmSel_Plano_Contabil.FormShow(Sender: TObject);
begin
  ctPlano_ContabilLocal := sdsPlano_Contabil.CommandText;
end;

procedure TfrmSel_Plano_Contabil.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsPlano_Contabil.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmSel_Plano_Contabil.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if cdsPlano_ContabilTIPO_REG.AsString = 'S' then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWindowText;
  end;
end;

end.
