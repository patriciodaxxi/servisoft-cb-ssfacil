unit USel_PlanoDRE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TfrmSel_PlanoDRE = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsPlanoDRE: TSQLDataSet;
    cdsPlanoDRE: TClientDataSet;
    dspPlanoDRE: TDataSetProvider;
    dsPlanoDRE: TDataSource;
    StaticText1: TStaticText;
    sdsPesquisa: TSQLDataSet;
    dspPesquisa: TDataSetProvider;
    cdsPesquisa: TClientDataSet;
    cdsPesquisaID: TIntegerField;
    cdsPesquisaNOME: TStringField;
    cdsPlanoDREID: TIntegerField;
    cdsPlanoDRENOME: TStringField;
    cdsPlanoDRETIPO_REG: TStringField;
    cdsPlanoDRECODIGO: TStringField;
    cdsPlanoDRESUPERIOR: TIntegerField;
    cdsPlanoDRENOME_AUX: TStringField;
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
  frmSel_PlanoDRE: TfrmSel_PlanoDRE;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_PlanoDRE.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_PlanoDRE.prc_Consultar;
begin
  cdsPlanoDRE.Close;
  sdsPlanoDRE.CommandText := ctContaOrcLocal;
  cdsPlanoDRE.Open;

  if trim(Edit1.Text) <> '' then
  begin
    cdsPesquisa.Close;
    sdsPesquisa.CommandText := 'SELECT C.ID, C.NOME FROM PLANO_DRE C '
                            + ' WHERE C.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
    cdsPesquisa.Open;
    if cdsPesquisaID.AsInteger > 0 then
      cdsPlanoDRE.Locate('ID',cdsPesquisaID.AsInteger,([loCaseInsensitive]));
  end;
end;

procedure TfrmSel_PlanoDRE.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    prc_Move_Dados;
    Close;
  end;
end;

procedure TfrmSel_PlanoDRE.SMDBGrid1DblClick(Sender: TObject);
begin
  prc_Move_Dados;
  Close;
end;

procedure TfrmSel_PlanoDRE.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsPlanoDRE.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_PlanoDRE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_PlanoDRE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  vIDAux : Integer;
begin
  if Key = 27 then
    Close
  else
  if (Key = Vk_F3) then
  begin
    if (cdsPlanoDRE.Active) and (trim(Edit1.Text) <> '') then
    begin
      if cdsPesquisa.RecordCount <> cdsPesquisa.RecNo then
        cdsPesquisa.Next;
      cdsPlanoDRE.Locate('ID',cdsPesquisaID.AsInteger,([loCaseInsensitive]));
    end;
  end;
end;

procedure TfrmSel_PlanoDRE.FormShow(Sender: TObject);
begin
  ctContaOrcLocal := sdsPlanoDRE.CommandText;
end;

procedure TfrmSel_PlanoDRE.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsPlanoDRE.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmSel_PlanoDRE.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if cdsPlanoDRETIPO_REG.AsString = 'S' then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWindowText;
  end;
end;

procedure TfrmSel_PlanoDRE.prc_Move_Dados;
begin
  vID_ContaOrcamento_Pos := cdsPlanoDREID.AsInteger;
  if cdsPlanoDRETIPO_REG.AsString = 'S' then
    vID_ContaOrcamento_Sup_Pos := cdsPlanoDREID.AsInteger
  else
  if (trim(cdsPlanoDRESUPERIOR.AsString) <> '') and not(cdsPlanoDRESUPERIOR.IsNull) then
    vID_ContaOrcamento_Sup_Pos := StrToInt(cdsPlanoDRESUPERIOR.AsString)
  else
    vID_ContaOrcamento_Sup_Pos := 0;
end;

end.
