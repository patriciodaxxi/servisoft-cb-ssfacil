unit USel_Atividade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TfrmSel_Atividade = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsAtividade: TSQLDataSet;
    cdsAtividade: TClientDataSet;
    dspAtividade: TDataSetProvider;
    dsAtividade: TDataSource;
    StaticText1: TStaticText;
    cdsAtividadeID: TIntegerField;
    cdsAtividadeNOME: TStringField;
    cdsAtividadeTIPO: TStringField;
    cdsAtividadeCOD_ANT: TIntegerField;
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
    ctAtividadeLocal : String;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmSel_Atividade: TfrmSel_Atividade;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Atividade.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_Atividade.prc_Consultar;
begin
  cdsAtividade.Close;
  sdsAtividade.CommandText := ctAtividadeLocal;
  if trim(Edit1.Text) <> '' then
    sdsAtividade.CommandText := sdsAtividade.CommandText + ' AND (NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%') + ')'; 
  cdsAtividade.Open;
end;

procedure TfrmSel_Atividade.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vID_Atividade_Pos := cdsAtividadeID.AsInteger;
    Close;
  end;
end;

procedure TfrmSel_Atividade.SMDBGrid1DblClick(Sender: TObject);
begin
  vID_Atividade_Pos := cdsAtividadeID.AsInteger;
  Close;
end;

procedure TfrmSel_Atividade.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsAtividade.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Atividade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Atividade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmSel_Atividade.FormShow(Sender: TObject);
var
  i : Integer;
begin
  ctAtividadeLocal := sdsAtividade.CommandText;
end;

procedure TfrmSel_Atividade.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsAtividade.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
