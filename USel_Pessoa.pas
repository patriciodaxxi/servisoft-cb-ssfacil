unit USel_Pessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TfrmSel_Pessoa = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsPessoa: TSQLDataSet;
    cdsPessoa: TClientDataSet;
    dspPessoa: TDataSetProvider;
    dsPessoa: TDataSource;
    StaticText1: TStaticText;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    sdsPessoaCNPJ_CPF: TStringField;
    sdsPessoaENDERECO: TStringField;
    sdsPessoaCIDADE: TStringField;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaCNPJ_CPF: TStringField;
    cdsPessoaENDERECO: TStringField;
    cdsPessoaCIDADE: TStringField;
    sdsPessoaUF: TStringField;
    cdsPessoaUF: TStringField;
    sdsPessoaFANTASIA: TStringField;
    cdsPessoaFANTASIA: TStringField;
    Label2: TLabel;
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
    ctPessoaLocal : String;
    procedure prc_Consultar;

  public
    { Public declarations }
    vTipo_Pessoa : String;

  end;

var
  frmSel_Pessoa: TfrmSel_Pessoa;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Pessoa.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
  cdsPessoa.RecordCount;
end;

procedure TfrmSel_Pessoa.prc_Consultar;
begin
  cdsPessoa.Close;
  sdsPessoa.CommandText := ctPessoaLocal;
  if vTipo_Pessoa = 'C' then
    sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND TP_CLIENTE = ' + QuotedStr('S')
  else
  if (vTipo_Pessoa = 'F') then
    sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND TP_FORNECEDOR = ' + QuotedStr('S')
  else
  if (vTipo_Pessoa = 'FT') then
    sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND ((TP_FORNECEDOR = ' + QuotedStr('S') + ')'
                           + ' OR (TP_VENDEDOR = ' + QuotedStr('S') + ')'
                           + ' OR (TP_FUNCIONARIO = ' + QuotedStr('S') + ')'
                           + ' OR (TP_TRANSPORTADORA = ' + QuotedStr('S') + '))'
  else
  if vTipo_Pessoa = 'T' then
    sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND TP_TRANSPORTADORA = ' + QuotedStr('S')
  else
  if vTipo_Pessoa = 'V' then
    sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND TP_VENDEDOR = ' + QuotedStr('S')
  else
  if vTipo_Pessoa = 'A' then
    sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND TP_ATELIER = ' + QuotedStr('S');
  if trim(Edit1.Text) <> '' then
    sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND ((NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%') + ')' +
                                                   ' OR (FANTASIA LIKE ' + QuotedStr('%'+Edit1.Text+'%') + '))';
  cdsPessoa.Open;
end;

procedure TfrmSel_Pessoa.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vCodPessoa_Pos := cdsPessoaCODIGO.AsInteger;
    Close;
  end;
end;

procedure TfrmSel_Pessoa.SMDBGrid1DblClick(Sender: TObject);
begin
  vCodPessoa_Pos := cdsPessoaCODIGO.AsInteger;
  Close;
end;

procedure TfrmSel_Pessoa.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsPessoa.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Pessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Pessoa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmSel_Pessoa.FormShow(Sender: TObject);
var
  i : Integer;
begin
  if vTipo_Pessoa = 'C' then
    Label1.Caption := 'Nome Cliente:'
  else
  if vTipo_Pessoa = 'F' then
    Label1.Caption := 'Nome Fornecedor:'
  else
  if vTipo_Pessoa = 'T' then
    Label1.Caption := 'Nome Transportadora:'
  else
  if vTipo_Pessoa = 'V' then
    Label1.Caption := 'Nome Vendedor:';

  ctPessoaLocal := sdsPessoa.CommandText;
end;

procedure TfrmSel_Pessoa.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsPessoa.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
