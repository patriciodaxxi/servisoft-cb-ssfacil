unit USel_Plano_Contas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TfrmSel_Plano_Contas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsPlano_Contas: TSQLDataSet;
    cdsPlano_Contas: TClientDataSet;
    dspPlano_Contas: TDataSetProvider;
    dsPlano_Contas: TDataSource;
    StaticText1: TStaticText;
    sdsPlano_ContasID: TIntegerField;
    sdsPlano_ContasCODIGO: TStringField;
    sdsPlano_ContasNOME: TStringField;
    sdsPlano_ContasNIVEL: TIntegerField;
    sdsPlano_ContasTIPO_REG: TStringField;
    sdsPlano_ContasCOD_NATUREZA: TIntegerField;
    sdsPlano_ContasINATIVO: TStringField;
    sdsPlano_ContasSUPERIOR: TIntegerField;
    sdsPlano_ContasNOME_AUX: TStringField;
    cdsPlano_ContasID: TIntegerField;
    cdsPlano_ContasCODIGO: TStringField;
    cdsPlano_ContasNOME: TStringField;
    cdsPlano_ContasNIVEL: TIntegerField;
    cdsPlano_ContasTIPO_REG: TStringField;
    cdsPlano_ContasCOD_NATUREZA: TIntegerField;
    cdsPlano_ContasINATIVO: TStringField;
    cdsPlano_ContasSUPERIOR: TIntegerField;
    cdsPlano_ContasNOME_AUX: TStringField;
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
    ctPlano_ContasLocal : String;
    procedure prc_Consultar;
  public
    { Public declarations }
  end;

var
  frmSel_Plano_Contas: TfrmSel_Plano_Contas;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Plano_Contas.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_Plano_Contas.prc_Consultar;
begin
  cdsPlano_Contas.Close;
  sdsPlano_Contas.CommandText := ctPlano_ContasLocal;
  //if trim(Edit1.Text) <> '' then
  //  sdsPlano_Contas.CommandText := sdsPlano_Contas.CommandText + ' AND C.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  cdsPlano_Contas.Open;

  if trim(Edit1.Text) <> '' then
  begin
    cdsPesquisa.Close;
    sdsPesquisa.CommandText := 'SELECT C.ID, C.NOME FROM PLANO_CONTABIL C '
                            + ' WHERE C.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
    cdsPesquisa.Open;
    if cdsPesquisaID.AsInteger > 0 then
      cdsPlano_Contas.Locate('ID',cdsPesquisaID.AsInteger,([loCaseInsensitive]));
  end;
end;

procedure TfrmSel_Plano_Contas.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vID_Plano_Contas_Pos := cdsPlano_ContasID.AsInteger;
    Close;
  end;
end;

procedure TfrmSel_Plano_Contas.SMDBGrid1DblClick(Sender: TObject);
begin
  vID_Plano_Contas_Pos := cdsPlano_ContasID.AsInteger;
  Close;
end;

procedure TfrmSel_Plano_Contas.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsPlano_Contas.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Plano_Contas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Plano_Contas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmSel_Plano_Contas.FormShow(Sender: TObject);
begin
  ctPlano_ContasLocal := sdsPlano_Contas.CommandText;
end;

procedure TfrmSel_Plano_Contas.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsPlano_Contas.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmSel_Plano_Contas.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if cdsPlano_ContasTIPO_REG.AsString = 'S' then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWindowText;
  end;
end;

end.
