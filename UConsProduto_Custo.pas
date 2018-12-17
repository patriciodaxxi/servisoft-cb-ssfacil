unit UConsProduto_Custo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsProduto, ExtCtrls, NxCollection, Grids, DBGrids, SMDBGrid,
  StdCtrls, DB;

type
  TfrmConsProduto_Custo = class(TForm)
    Panel1: TPanel;
    btnAjusteCusto: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAjusteCustoClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMConsProduto: TDMConsProduto;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsProduto_Custo: TfrmConsProduto_Custo;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsProduto_Custo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fDMConsProduto);
  Action := Cafree;
end;

procedure TfrmConsProduto_Custo.FormShow(Sender: TObject);
begin
  fDMConsProduto := TDMConsProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsProduto);
end;

procedure TfrmConsProduto_Custo.btnAjusteCustoClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsProduto_Custo.prc_Consultar;
begin
  fDMConsProduto.cdsProduto_Custo.Close;
  fDMConsProduto.sdsProduto_Custo.CommandText := fDMConsProduto.ctProduto_Custo;
  fDMConsProduto.cdsProduto_Custo.Open;
  fDMConsProduto.cdsProduto_Custo.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmConsProduto_Custo.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.000000',fDMConsProduto.cdsProduto_CustoPRECO_CUSTO_TOTAL.AsFloat)) <> StrToFloat(FormatFloat('0.000000',fDMConsProduto.cdsProduto_CustoPRECO_CUSTO_CALC.AsFloat)) then
    Background := clYellow
  else
  if fDMConsProduto.cdsProduto_CustoCONTADOR.AsInteger > 0 then
    Background := $008080FF;
end;

end.
