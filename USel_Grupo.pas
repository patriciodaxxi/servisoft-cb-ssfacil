unit USel_Grupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TfrmSel_Grupo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsGrupo: TSQLDataSet;
    cdsGrupo: TClientDataSet;
    dspGrupo: TDataSetProvider;
    dsGrupo: TDataSource;
    StaticText1: TStaticText;
    sdsGrupoID: TIntegerField;
    sdsGrupoNOME: TStringField;
    sdsGrupoTIPO: TStringField;
    sdsGrupoCODIGO: TStringField;
    sdsGrupoNOME_AUX: TStringField;
    cdsGrupoID: TIntegerField;
    cdsGrupoNOME: TStringField;
    cdsGrupoTIPO: TStringField;
    cdsGrupoCODIGO: TStringField;
    cdsGrupoNOME_AUX: TStringField;
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
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    ctGrupoLocal : String;
    procedure prc_Consultar;
  public
    { Public declarations }
  end;

var
  frmSel_Grupo: TfrmSel_Grupo;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Grupo.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_Grupo.prc_Consultar;
begin
  cdsGrupo.Close;
  sdsGrupo.CommandText := ctGrupoLocal;
  if trim(Edit1.Text) <> '' then
    sdsGrupo.CommandText := sdsGrupo.CommandText + ' WHERE G.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  cdsGrupo.Open;
end;

procedure TfrmSel_Grupo.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vID_Grupo_Pos := cdsGrupoID.AsInteger;
    Close;
  end;
end;

procedure TfrmSel_Grupo.SMDBGrid1DblClick(Sender: TObject);
begin
  vID_Grupo_Pos := cdsGrupoID.AsInteger;
  Close;
end;

procedure TfrmSel_Grupo.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsGrupo.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Grupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Grupo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmSel_Grupo.FormShow(Sender: TObject);
begin
  ctGrupoLocal := sdsGrupo.CommandText;
end;

procedure TfrmSel_Grupo.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsGrupo.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmSel_Grupo.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsGrupo.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Grupo.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if cdsGrupoTIPO.AsString = 'S' then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWindowText;
  end;
end;

end.
