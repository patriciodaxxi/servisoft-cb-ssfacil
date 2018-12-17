unit USel_Pedido_Tam_Dig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls,
  UDMCadNotaFiscal, Buttons, Grids, DBGrids, SMDBGrid, DB, UCadNotaFiscal_Itens, UCadNotaEntrada_Itens, 
  NxCollection, uCadVale_Itens, SqlExpr, DBVGrids, FMTBcd, DBClient,
  Provider;

type
  TfrmSel_Pedido_Tam_Dig = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    btnPesquisar: TNxButton;
    btnImportar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnImportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;

  end;

var
  frmSel_Pedido_Tam_Dig: TfrmSel_Pedido_Tam_Dig;

implementation

uses rsDBUtils, uUtilPadrao, StrUtils, DmdDatabase; 

{$R *.dfm}

procedure TfrmSel_Pedido_Tam_Dig.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Pedido_Tam_Dig.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
var
  vQtd_Faturado : Real;
begin
  vQtd_Faturado := fDMCadNotaFiscal.cdsPedidoQTD_FATURADO.AsFloat;
  if (StrToFloat(FormatFloat('0.0000',vQtd_Faturado)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end;

  if (Field = fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR) then
  begin
    Background  := clYellow;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end
  else
  if (Field = fDMCadNotaFiscal.cdsPedidoclQtd_Restante) then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

procedure TfrmSel_Pedido_Tam_Dig.btnImportarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSel_Pedido_Tam_Dig.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
end;

end.
