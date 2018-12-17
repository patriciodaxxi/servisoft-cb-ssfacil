unit USel_ContaOrc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TfrmSel_ContaOrc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsContaOrc: TSQLDataSet;
    cdsContaOrc: TClientDataSet;
    dspContaOrc: TDataSetProvider;
    dsContaOrc: TDataSource;
    StaticText1: TStaticText;
    sdsContaOrcID: TIntegerField;
    sdsContaOrcDESCRICAO: TStringField;
    sdsContaOrcTIPO: TStringField;
    sdsContaOrcCODIGO: TStringField;
    sdsContaOrcNOME_AUX: TStringField;
    cdsContaOrcID: TIntegerField;
    cdsContaOrcDESCRICAO: TStringField;
    cdsContaOrcTIPO: TStringField;
    cdsContaOrcCODIGO: TStringField;
    cdsContaOrcNOME_AUX: TStringField;
    ComboBox2: TComboBox;
    sdsPesquisa: TSQLDataSet;
    dspPesquisa: TDataSetProvider;
    cdsPesquisa: TClientDataSet;
    cdsPesquisaID: TIntegerField;
    cdsPesquisaDESCRICAO: TStringField;
    sdsContaOrcSUPERIOR: TStringField;
    cdsContaOrcSUPERIOR: TStringField;
    sdsContaOrcTIPO_RD: TStringField;
    cdsContaOrcTIPO_RD: TStringField;
    cdsPesquisaCODIGO: TStringField;
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
    ctContaOrcLocal : String;
    procedure prc_Consultar;
    procedure prc_Move_Dados;
  public
    { Public declarations }
  end;

var
  frmSel_ContaOrc: TfrmSel_ContaOrc;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_ContaOrc.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_ContaOrc.prc_Consultar;
begin
  cdsContaOrc.Close;
  sdsContaOrc.CommandText := ctContaOrcLocal;
//  if trim(Edit1.Text) <> '' then
//    sdsContaOrc.CommandText := sdsContaOrc.CommandText + ' AND C.DESCRICAO LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  case ComboBox2.ItemIndex of
    0 : sdsContaOrc.CommandText := sdsContaOrc.CommandText + ' AND C.TIPO_RD = ' + QuotedStr('R');
    1 : sdsContaOrc.CommandText := sdsContaOrc.CommandText + ' AND C.TIPO_RD = ' + QuotedStr('D');
  end;
  cdsContaOrc.Open;
  //if trim(Edit1.Text) <> '' then
  //  cdsContaOrc.Locate('DESCRICAO',Edit1.Text,([loPartialKey]));
  if trim(Edit1.Text) <> '' then
  begin
    cdsPesquisa.Close;
    sdsPesquisa.CommandText := 'SELECT C.ID, C.CODIGO, C.DESCRICAO FROM CONTA_ORCAMENTO C '
                            + ' WHERE C.DESCRICAO LIKE ' + QuotedStr('%'+Edit1.Text+'%');
    cdsPesquisa.Open;
    if cdsPesquisaID.AsInteger > 0 then
      cdsContaOrc.Locate('ID',cdsPesquisaID.AsInteger,([loCaseInsensitive]));
  end;
end;

procedure TfrmSel_ContaOrc.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    prc_Move_Dados;
    Close;
  end;
end;

procedure TfrmSel_ContaOrc.SMDBGrid1DblClick(Sender: TObject);
begin
  prc_Move_Dados;
  Close;
end;

procedure TfrmSel_ContaOrc.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsContaOrc.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_ContaOrc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_ContaOrc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  vIDAux : Integer;
begin
  if Key = 27 then
    Close
  else
  if (Key = Vk_F3) then
  begin
    if (cdsContaOrc.Active) and (trim(Edit1.Text) <> '') then
    begin
      if cdsPesquisa.RecordCount <> cdsPesquisa.RecNo then
        cdsPesquisa.Next;
      cdsContaOrc.Locate('ID',cdsPesquisaID.AsInteger,([loCaseInsensitive]));
      //if cdsPesquisa.FindNearest([Edit1.Text]) then
      {vIDAux := cdsPesquisaID.AsInteger;
      cdsPesquisa.FindNearest([Edit1.Text]);
      if vIDAux <> cdsPesquisaID.AsInteger then
        cdsContaOrc.Locate('ID',cdsPesquisaID.AsInteger,([loCaseInsensitive]));}

      //if cdsPesquisa.Locate('DESCRICAO',Edit1.Text,([loPartialKey])) then
      //begin

       // if qPesquisa.Locate('DESCRICAO',Edit1.Text,([loPartialKey])) then

      //end;

    end;
  end;

end;

procedure TfrmSel_ContaOrc.FormShow(Sender: TObject);
begin
  ctContaOrcLocal := sdsContaOrc.CommandText;
end;

procedure TfrmSel_ContaOrc.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsContaOrc.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmSel_ContaOrc.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if cdsContaOrcTIPO.AsString = 'S' then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWindowText;
  end;
end;

procedure TfrmSel_ContaOrc.prc_Move_Dados;
begin
  vID_ContaOrcamento_Pos := cdsContaOrcID.AsInteger;
  if cdsContaOrcTIPO.AsString = 'S' then
    vID_ContaOrcamento_Sup_Pos := cdsContaOrcID.AsInteger
  else
  if (trim(cdsContaOrcSUPERIOR.AsString) <> '') and not(cdsContaOrcSUPERIOR.IsNull) then
    vID_ContaOrcamento_Sup_Pos := StrToInt(cdsContaOrcSUPERIOR.AsString)
  else
    vID_ContaOrcamento_Sup_Pos := 0;
  if vID_ContaOrcamento_Pos > 0 then
    vTipo_RD_Pos := cdsContaOrcTIPO_RD.AsString;
end;

end.
