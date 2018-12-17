unit UTalaoPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsPedido, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit,
  NxCollection, Grids, DBGrids, SMDBGrid;

type
  TfrmTalaoPed = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    Edit1: TEdit;
    Label4: TLabel;
    btnConsultar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    btnImprimir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMConsPedido: TDMConsPedido;
  end;

var
  frmTalaoPed: TfrmTalaoPed;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmTalaoPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmTalaoPed.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMConsPedido);
  if CurrencyEdit1.AsInteger > 0 then
    btnConsultarClick(Sender);
end;

procedure TfrmTalaoPed.btnConsultarClick(Sender: TObject);
begin
  fDMConsPedido.cdsPedidoTipo.Close;
  fDMConsPedido.sdsPedidoTipo.CommandText := fDMConsPedido.ctPedidoTipo + ' WHERE 0 = 0 ';
  if CurrencyEdit1.AsInteger > 0 then
    fDMConsPedido.sdsPedidoTipo.CommandText := fDMConsPedido.sdsPedidoTipo.CommandText + ' AND P.NUM_PEDIDO = ' + IntToStr(CurrencyEdit1.AsInteger)
  else
  begin
    if trim(Edit1.Text) <> '' then
      fDMConsPedido.sdsPedidoTipo.CommandText := fDMConsPedido.sdsPedidoTipo.CommandText + ' AND (P.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%') + ')';
    if DateEdit1.Date > 10 then
      fDMConsPedido.sdsPedidoTipo.CommandText := fDMConsPedido.sdsPedidoTipo.CommandText + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Text <> '' then
      fDMConsPedido.sdsPedidoTipo.CommandText := fDMConsPedido.sdsPedidoTipo.CommandText + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  end;
  fDMConsPedido.cdsPedidoTipo.Open;
end;

procedure TfrmTalaoPed.btnImprimirClick(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMConsPedido.cdsPedidoTipo.Active) or (fDMConsPedido.cdsPedidoTipo.IsEmpty) or (fDMConsPedido.cdsPedidoTipoID.AsInteger <= 0) then
    exit;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\TalaoPed_ADD.fr3';
  if FileExists(vArq) then
    fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + #13 + vArq);
    Exit;
  end;
  fDMConsPedido.frxReport1.ShowReport;
end;

end.
