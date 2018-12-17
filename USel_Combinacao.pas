unit USel_Combinacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TfrmSel_Combinacao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btnConsultar: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsCombinacao: TSQLDataSet;
    cdsCombinacao: TClientDataSet;
    dspCombinacao: TDataSetProvider;
    dsCombinacao: TDataSource;
    StaticText1: TStaticText;
    cdsCombinacaoID: TFMTBCDField;
    cdsCombinacaoNOME: TStringField;
    procedure btnConsultarClick(Sender: TObject);
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
    ctCombinacaoLocal : String;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmSel_Combinacao: TfrmSel_Combinacao;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Combinacao.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
  cdsCombinacao.RecordCount;
end;

procedure TfrmSel_Combinacao.prc_Consultar;
begin
  cdsCombinacao.Close;
  sdsCombinacao.CommandText := ctCombinacaoLocal;
  if trim(Edit1.Text) <> '' then
    //sdsCombinacao.CommandText := sdsCombinacao.CommandText + ' AND (NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%') + ')';
    sdsCombinacao.CommandText := sdsCombinacao.CommandText + ' AND (NOME LIKE ' + QuotedStr(Edit1.Text+'%') + ')';
  cdsCombinacao.Open;
end;

procedure TfrmSel_Combinacao.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vCodCombinacao_Pos := cdsCombinacaoID.AsInteger;
    vNome_Pos          := cdsCombinacaoNOME.AsString;
    Close;
  end;
end;

procedure TfrmSel_Combinacao.SMDBGrid1DblClick(Sender: TObject);
begin
  vCodCombinacao_Pos := cdsCombinacaoID.AsInteger;
  vNome_Pos          := cdsCombinacaoNOME.AsString;
  Close;
end;

procedure TfrmSel_Combinacao.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    btnConsultarClick(Sender);
    if not cdsCombinacao.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Combinacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Combinacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    if Edit1.Focused then
      Close
    else
      Edit1.SetFocus;
  end;
end;

procedure TfrmSel_Combinacao.FormShow(Sender: TObject);
var
  i : Integer;
begin
  ctCombinacaoLocal := sdsCombinacao.CommandText;
  if trim(Edit1.Text) <> '' then
  begin
    btnConsultarClick(Sender);
    SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Combinacao.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsCombinacao.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
