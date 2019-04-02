unit UConsProdSTRet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, ToolEdit, CurrEdit, StdCtrls, NxCollection, uDmCadMovProdST,
  Grids, DBGrids, SMDBGrid;

type
  TfrmConsProdSTRet = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtRef: TEdit;
    Edit1: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    ceIDProduto: TCurrencyEdit;
    RadioGroup1: TRadioGroup;
    btnConsultar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    btnImprimir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadMovProdST: TDMCadMovProdST;

    procedure prc_Consultar;    

  public
    { Public declarations }
  end;

var
  frmConsProdSTRet: TfrmConsProdSTRet;

implementation

uses
  rsDBUtils;


{$R *.dfm}

procedure TfrmConsProdSTRet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmConsProdSTRet.FormShow(Sender: TObject);
begin
  fDMCadMovProdST := TDMCadMovProdST.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadMovProdST);

end;

procedure TfrmConsProdSTRet.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsProdSTRet.prc_Consultar;
begin
  fDMCadMovProdST.cdsConsProdST.Close;
  fDMCadMovProdST.sdsConsProdST.CommandText := fDMCadMovProdST.ctConsProdST + ' WHERE 0 = 0 ';
  if ceIDProduto.AsInteger > 0 then
    fDMCadMovProdST.sdsConsProdST.CommandText := fDMCadMovProdST.sdsConsProdST.CommandText + ' AND AUX.ID = ' + IntToStr(ceIDProduto.AsInteger)
  else
  begin
    if Trim(edtRef.Text) <> '' then
      fDMCadMovProdST.sdsConsProdST.CommandText := fDMCadMovProdST.sdsConsProdST.CommandText + ' AND AUX.REFERENCIA LIKE ' + QuotedStr('%'+edtRef.Text+'%');
    if Trim(Edit1.Text) <> '' then
      fDMCadMovProdST.sdsConsProdST.CommandText := fDMCadMovProdST.sdsConsProdST.CommandText + ' AND AUX.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  end;
  case RadioGroup1.ItemIndex of
    1 : fDMCadMovProdST.sdsConsProdST.CommandText := fDMCadMovProdST.sdsConsProdST.CommandText + ' AND AUX.DTEMISSAO IS NOT NULL ';
    2 : fDMCadMovProdST.sdsConsProdST.CommandText := fDMCadMovProdST.sdsConsProdST.CommandText + ' AND AUX.DTEMISSAO IS NULL ';
  end;
  fDMCadMovProdST.cdsConsProdST.Open;

end;

procedure TfrmConsProdSTRet.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadMovProdST.cdsConsProdST.IndexFieldNames := Column. FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsProdSTRet.btnImprimirClick(Sender: TObject);
var
  vArq: String;
  vAux : String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\ConsProdSTRet.fr3';
  if FileExists(vArq) then
    fDMCadMovProdST.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  vAux := '';
  if Trim(edtRef.Text) <> '' then
    vAux := vAux + '(Ref: ' + edtRef.Text + ')';
  if Trim(Edit1.Text) <> '' then
    vAux := vAux + '(Nome: ' + Edit1.Text + ')';
  if ceIDProduto.AsInteger > 0 then
    vAux := vAux + '(ID: ' + ceIDProduto.Text + ')';
  case RadioGroup1.ItemIndex of
    1 : vAux := vAux + '(Somente os que possuem Base ST)';
    2 : vAux := vAux + '(Não possuem Base ST)';
  end;
  fDMCadMovProdST.frxReport1.variables['ImpOpcao'] := QuotedStr(vAux);
  fDMCadMovProdST.frxReport1.ShowReport;
end;

end.
