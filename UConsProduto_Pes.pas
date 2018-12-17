unit UConsProduto_Pes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid,
  StdCtrls, Buttons, UDMConsProduto, NxEdit, Mask, ToolEdit, NxCollection, RzPanel;

type
  TfrmConsProduto_Pes = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnConsultar: TNxButton;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsProduto: TDMConsProduto;
  public
    { Public declarations }
    vID_Produto_Cons: Integer;
    vTipo_Produto: String;
    vFilial_Loc : Integer;
  end;

var
  frmConsProduto_Pes: TfrmConsProduto_Pes;

implementation

uses rsDBUtils, DateUtils;

{$R *.dfm}

procedure TfrmConsProduto_Pes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsProduto_Pes.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMConsProduto := TDMConsProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsProduto);

  if vID_Produto_Cons > 0 then
    fDMConsProduto.prc_Consulta_Prod(vID_Produto_Cons,ComboBox2.ItemIndex,DateEdit1.Date,DateEdit2.Date);

  for i := 0 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'NOME_COR' then
      SMDBGrid1.Columns[i].Visible := ((vTipo_Produto = 'P') and ((fDMConsProduto.qParametrosINFORMAR_COR_PROD.AsString = 'C') or
                                      (fDMConsProduto.qParametrosINFORMAR_COR_PROD.AsString = 'B'))) or
                                      ((vTipo_Produto = 'M') and (fDMConsProduto.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S'));
  end;
end;

procedure TfrmConsProduto_Pes.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsProduto.cdsConsulta_Prod.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;                        

procedure TfrmConsProduto_Pes.btnConsultarClick(Sender: TObject);
begin
  fDMConsProduto.prc_Consulta_Prod(vID_Produto_Cons,ComboBox2.ItemIndex,DateEdit1.Date,DateEdit2.Date);
end;

end.
