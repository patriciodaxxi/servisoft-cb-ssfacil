unit USel_CentroCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TfrmSel_CentroCusto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsCentroCusto: TSQLDataSet;
    cdsCentroCusto: TClientDataSet;
    dspCentroCusto: TDataSetProvider;
    dsCentroCusto: TDataSource;
    StaticText1: TStaticText;
    sdsPesquisa: TSQLDataSet;
    dspPesquisa: TDataSetProvider;
    cdsPesquisa: TClientDataSet;
    cdsPesquisaID: TIntegerField;
    cdsPesquisaDESCRICAO: TStringField;
    sdsPesquisaID: TIntegerField;
    sdsPesquisaDESCRICAO: TStringField;
    cdsCentroCustoID: TIntegerField;
    cdsCentroCustoCODIGO: TStringField;
    cdsCentroCustoNOME_AUX: TStringField;
    cdsCentroCustoDESCRICAO: TStringField;
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
    ctCentroCustoLocal : String;
    procedure prc_Consultar;
    procedure prc_Move_Dados;
  public
    { Public declarations }
  end;

var
  frmSel_CentroCusto: TfrmSel_CentroCusto;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_CentroCusto.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_CentroCusto.prc_Consultar;
begin
  cdsCentroCusto.Close;
  sdsCentroCusto.CommandText := ctCentroCustoLocal;
  //if trim(Edit1.Text) <> '' then
    //sdsCentroCusto.CommandText := sdsCentroCusto.CommandText + ' WHERE B.DESCRICAO LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  cdsCentroCusto.Open;

  if trim(Edit1.Text) <> '' then
  begin
    cdsPesquisa.Close;
    sdsPesquisa.CommandText := 'SELECT C.ID, C.DESCRICAO FROM CENTROCUSTO C '
                            + ' WHERE C.DESCRICAO LIKE ' + QuotedStr('%'+Edit1.Text+'%');
    cdsPesquisa.Open;
    if cdsPesquisaID.AsInteger > 0 then
      cdsCentroCusto.Locate('ID',cdsPesquisaID.AsInteger,([loCaseInsensitive]));
  end;
end;

procedure TfrmSel_CentroCusto.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    prc_Move_Dados;
    Close;
  end;
end;

procedure TfrmSel_CentroCusto.SMDBGrid1DblClick(Sender: TObject);
begin
  prc_Move_Dados;
  Close;
end;

procedure TfrmSel_CentroCusto.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsCentroCusto.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_CentroCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_CentroCusto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  vIDAux : Integer;
begin
  if Key = 27 then
    Close
  else
  if (Key = Vk_F3) then
  begin
    if (cdsCentroCusto.Active) and (trim(Edit1.Text) <> '') then
    begin
      if cdsPesquisa.RecordCount <> cdsPesquisa.RecNo then
        cdsPesquisa.Next;
      cdsCentroCusto.Locate('ID',cdsPesquisaID.AsInteger,([loCaseInsensitive]));
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

procedure TfrmSel_CentroCusto.FormShow(Sender: TObject);
begin
  ctCentroCustoLocal := sdsCentroCusto.CommandText;
end;

procedure TfrmSel_CentroCusto.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsCentroCusto.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmSel_CentroCusto.prc_Move_Dados;
begin
  vID_Centro_Custo := cdsCentroCustoID.AsInteger;
end;

end.
