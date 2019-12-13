unit UConsPessoa_Produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, UDMConsPessoa,
  NxEdit, Mask, ToolEdit, NxCollection, RzPanel, RxLookup;

type
  TfrmConsPessoa_Produto = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnConsultar: TNxButton;
    comboMarca: TRxDBLookupCombo;
    lblMarca: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsPessoa: TDMConsPessoa;

  public
    { Public declarations }
    vID_Pessoa_Cons : Integer;
    vTipo_Pessoa : String; //C= Cliente   F= Fornecedor   A= Ambos   

  end;

var
  frmConsPessoa_Produto: TfrmConsPessoa_Produto;

implementation

uses rsDBUtils, DateUtils, DB;

{$R *.dfm}

procedure TfrmConsPessoa_Produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsPessoa_Produto.FormShow(Sender: TObject);
begin
  fDMConsPessoa := TDMConsPessoa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPessoa);
  DateEdit1.Date := Date;
  DateEdit1.Date :=  EncodeDate(YearOf(Date),MonthOf(IncMonth(Date, -3)),01);
end;

procedure TfrmConsPessoa_Produto.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPessoa.cdsProduto_Mov.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;                        

procedure TfrmConsPessoa_Produto.btnConsultarClick(Sender: TObject);
var
  vID_Marca : Integer;
begin
  if comboMarca.Text <> EmptyStr then
    vID_Marca := comboMarca.KeyValue
  else
    vID_Marca := 0;
  fDMConsPessoa.prc_Cons_Cliente_Produto(vID_Marca,DateEdit1.Date,DateEdit2.Date);
end;

procedure TfrmConsPessoa_Produto.SMDBGrid2TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPessoa.cdsServico_Mov.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := $00D2D2D2;
end;

procedure TfrmConsPessoa_Produto.SMDBGrid1DblClick(Sender: TObject);
begin
  if not (fDMConsPessoa.cdsConsPessoaProduto.IsEmpty) then
  begin
    vID_Pessoa_Cons := fDMConsPessoa.cdsConsPessoaProdutoCODIGO.AsInteger;
    Close;
  end;
end;

end.
