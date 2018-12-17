unit USel_ContaOrc2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, NxCollection, uDmCadPlano_DRE;

type
  TfrmSel_ContaOrc2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btnConsultar: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsContaOrc: TSQLDataSet;
    cdsContaOrc: TClientDataSet;
    dspContaOrc: TDataSetProvider;
    dsContaOrc: TDataSource;
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
    sdsContaOrcSUPERIOR: TStringField;
    cdsContaOrcSUPERIOR: TStringField;
    sdsContaOrcTIPO_RD: TStringField;
    cdsContaOrcTIPO_RD: TStringField;
    Panel2: TPanel;
    btnCopiar: TNxButton;
    sdsPesquisa: TSQLDataSet;
    dspPesquisa: TDataSetProvider;
    cdsPesquisa: TClientDataSet;
    cdsPesquisaID: TIntegerField;
    cdsPesquisaDESCRICAO: TStringField;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnCopiarClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ctContaOrcLocal : String;
    procedure prc_Consultar;
  public
    { Public declarations }
    fDMCadPlano_DRE: TDMCadPlano_DRE;
  end;

var
  frmSel_ContaOrc2: TfrmSel_ContaOrc2;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_ContaOrc2.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_ContaOrc2.prc_Consultar;
begin
  cdsContaOrc.Close;
  sdsContaOrc.CommandText := ctContaOrcLocal;
  case ComboBox2.ItemIndex of
    0 : sdsContaOrc.CommandText := sdsContaOrc.CommandText + ' AND C.TIPO_RD = ' + QuotedStr('R');
    1 : sdsContaOrc.CommandText := sdsContaOrc.CommandText + ' AND C.TIPO_RD = ' + QuotedStr('D');
  end;
  //if trim(Edit1.Text) <> '' then
  //  sdsContaOrc.CommandText := sdsContaOrc.CommandText + ' AND C.DESCRICAO LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  cdsContaOrc.Open;

  if trim(Edit1.Text) <> '' then
  begin
    cdsPesquisa.Close;
    sdsPesquisa.CommandText := 'SELECT C.ID, C.DESCRICAO FROM CONTA_ORCAMENTO C '
                            + ' WHERE C.DESCRICAO LIKE ' + QuotedStr('%'+Edit1.Text+'%');
    cdsPesquisa.Open;
    if cdsPesquisaID.AsInteger > 0 then
      cdsContaOrc.Locate('ID',cdsPesquisaID.AsInteger,([loCaseInsensitive]));
  end;
end;

procedure TfrmSel_ContaOrc2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_ContaOrc2.FormShow(Sender: TObject);
begin
  ctContaOrcLocal := sdsContaOrc.CommandText;
end;

procedure TfrmSel_ContaOrc2.SMDBGrid1TitleClick(Column: TColumn);
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

procedure TfrmSel_ContaOrc2.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if cdsContaOrcTIPO.AsString = 'S' then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWindowText;
  end;
end;

procedure TfrmSel_ContaOrc2.btnCopiarClick(Sender: TObject);
var
  vIDAux : Integer;
begin
  vIDAux := 0;
  cdsContaOrc.First;
  while not cdsContaOrc.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (cdsContaOrcTIPO.AsString = 'A') then
    begin
      if vIDAux <= 0 then
        vIDAux := cdsContaOrcID.AsInteger;
      if not fDMCadPlano_DRE.cdsPlano_DRE_Itens.Locate('ID_CONTA_ORCAMENTO',cdsContaOrcID.AsInteger,[loCaseInsensitive]) then
      begin
        fDMCadPlano_DRE.prc_Inserir_Itens;
        fDMCadPlano_DRE.cdsPlano_DRE_ItensID_CONTA_ORCAMENTO.AsInteger := cdsContaOrcID.AsInteger;
        fDMCadPlano_DRE.cdsPlano_DRE_Itens.Post;
      end;
    end;
    cdsContaOrc.Next;
  end;
  Close;
end;

procedure TfrmSel_ContaOrc2.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

end.
