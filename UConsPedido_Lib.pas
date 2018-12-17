unit UConsPedido_Lib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls,
  UDMConsPedido, Buttons, Grids, DBGrids, SMDBGrid, DB, NxCollection;

type
  TfrmConsPedido_Lib = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    btnPesquisar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMConsPedido: TDMConsPedido;
    procedure prc_Consultar;

  public
    { Public declarations }


  end;

var
  frmConsPedido_Lib: TfrmConsPedido_Lib;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsPedido_Lib.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMConsPedido);
  Action := Cafree;
end;

procedure TfrmConsPedido_Lib.btnPesquisarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsPedido_Lib.prc_Consultar;
var
  vComando : String;
begin
  fDMConsPedido.cdsLiberado.IndexFieldNames := 'DTENTREGA;NUM_PEDIDO;ITEM';
  fDMConsPedido.cdsLiberado.Close;
  if fDMConsPedido.qParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
    vComando := ' AND PI.QTD_LIBERADA > 0 ';
  if (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S') then
    vComando := ' AND PE.APROVADO_PED = ' + QuotedStr('A');
  fDMConsPedido.sdsLiberado.CommandText := fDMConsPedido.ctLiberado + vComando;
  fDMConsPedido.cdsLiberado.Open;
end;

procedure TfrmConsPedido_Lib.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Field = fDMConsPedido.cdsLiberadoclQtd_Restante) then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsPedido_Lib.FormShow(Sender: TObject);
begin
  fDMConsPedido := TDMConsPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPedido);
  btnPesquisarClick(Sender);
end;

procedure TfrmConsPedido_Lib.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.cdsLiberado.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
