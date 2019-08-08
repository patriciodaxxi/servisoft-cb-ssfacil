unit UConsProdutoNCM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid,
  StdCtrls, Buttons, UDMConsProduto, NxEdit, Mask, ToolEdit, NxCollection, RzPanel;

type
  TfrmConsProdutoNCM = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    btnConsultar: TNxButton;
    Label68: TLabel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsProduto: TDMConsProduto;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsProdutoNCM: TfrmConsProdutoNCM;

implementation

uses rsDBUtils, DateUtils;

{$R *.dfm}

procedure TfrmConsProdutoNCM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsProdutoNCM.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMConsProduto := TDMConsProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsProduto);
end;

procedure TfrmConsProdutoNCM.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsProduto.cdsProdNCM.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;                        

procedure TfrmConsProdutoNCM.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsProdutoNCM.prc_Consultar;
var
  vComando : String;
begin
  vComando := ' WHERE 0 = 0 ';
  case ComboBox1.ItemIndex of
    0 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('P');
    1 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('M');
    2 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('O');
    3 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('C');
    4 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('I');
    5 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('S');
  end;
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND PRO.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  if trim(Edit2.Text) <> '' then
    vComando := vComando + ' AND G.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%');
  if trim(Edit3.Text) <> '' then
    vComando := vComando + ' AND NCM.NCM LIKE ' + QuotedStr('%'+Edit3.Text+'%');
  fDMConsProduto.cdsProdNCM.Close;
  fDMConsProduto.sdsProdNCM.CommandText := fDMConsProduto.ctProdNCM + vComando;
  fDMConsProduto.cdsProdNCM.Open;
end;

end.
