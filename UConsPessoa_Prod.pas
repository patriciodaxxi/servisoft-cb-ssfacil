unit UConsPessoa_Prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, UDMConsPessoa,
  NxEdit, Mask, ToolEdit, NxCollection, RzPanel;

type
  TfrmConsPessoa_Prod = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnConsultar: TNxButton;
    gbxServico: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid2TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMConsPessoa: TDMConsPessoa;

  public
    { Public declarations }
    vID_Pessoa_Cons : Integer;
    vTipo_Pessoa : String; //C= Cliente   F= Fornecedor   A= Ambos   

  end;

var
  frmConsPessoa_Prod: TfrmConsPessoa_Prod;

implementation

uses rsDBUtils, DateUtils;

{$R *.dfm}

procedure TfrmConsPessoa_Prod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsPessoa_Prod.FormShow(Sender: TObject);
begin
  fDMConsPessoa := TDMConsPessoa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPessoa);

  DateEdit1.Date := Date;
  DateEdit1.Date :=  EncodeDate(YearOf(Date),MonthOf(IncMonth(Date, -3)),01);

  if vID_Pessoa_Cons > 0 then
  begin
    fDMConsPessoa.prc_Cons_Produto_Mov(vID_Pessoa_Cons,vTipo_Pessoa,DateEdit1.Date,DateEdit2.Date);
    if fDMConsPessoa.qParametrosUSA_SERVICO.AsString = 'S' then
      fDMConsPessoa.prc_Cons_Servico_Mov(vID_Pessoa_Cons,vTipo_Pessoa,DateEdit1.Date,DateEdit2.Date);
  end;
  gbxServico.Visible := (fDMConsPessoa.qParametrosUSA_SERVICO.AsString = 'S');
end;

procedure TfrmConsPessoa_Prod.SMDBGrid1TitleClick(Column: TColumn);
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

procedure TfrmConsPessoa_Prod.btnConsultarClick(Sender: TObject);
begin
  fDMConsPessoa.prc_Cons_Produto_Mov(vID_Pessoa_Cons,vTipo_Pessoa,DateEdit1.Date,DateEdit2.Date);
  fDMConsPessoa.prc_Cons_Servico_Mov(vID_Pessoa_Cons,vTipo_Pessoa,DateEdit1.Date,DateEdit2.Date);
end;

procedure TfrmConsPessoa_Prod.SMDBGrid2TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPessoa.cdsServico_Mov.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := $00D2D2D2;
end;

end.
