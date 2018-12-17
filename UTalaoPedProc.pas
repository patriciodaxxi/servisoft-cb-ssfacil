unit UTalaoPedProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMPedidoImp, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit,
  NxCollection, Grids, DBGrids, SMDBGrid;

type
  TfrmTalaoPedProc = class(TForm)
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
    Label5: TLabel;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMPedidoImp: TDMPedidoImp;
  end;

var
  frmTalaoPedProc: TfrmTalaoPedProc;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmTalaoPedProc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmTalaoPedProc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMPedidoImp);
  if CurrencyEdit1.AsInteger > 0 then
    btnConsultarClick(Sender);
end;

procedure TfrmTalaoPedProc.btnConsultarClick(Sender: TObject);
begin
  fDMPedidoImp.cdsTalao_Proc.Close;
  fDMPedidoImp.sdsTalao_Proc.CommandText := fDMPedidoImp.ctTalao_Proc;
  if CurrencyEdit1.AsInteger > 0 then
    fDMPedidoImp.sdsTalao_Proc.CommandText := fDMPedidoImp.sdsTalao_Proc.CommandText + ' AND PED.NUM_PEDIDO = ' + IntToStr(CurrencyEdit1.AsInteger)
  else
  begin
    if trim(Edit2.Text) <> '' then
      fDMPedidoImp.sdsTalao_Proc.CommandText := fDMPedidoImp.sdsTalao_Proc.CommandText + ' AND PED.PEDIDO_CLIENTE LIKE ' + QuotedStr('%'+Edit2.Text+'%');
    if trim(Edit1.Text) <> '' then
      fDMPedidoImp.sdsTalao_Proc.CommandText := fDMPedidoImp.sdsTalao_Proc.CommandText + ' AND (CLI.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%') + ')';
    if DateEdit1.Date > 10 then
      fDMPedidoImp.sdsTalao_Proc.CommandText := fDMPedidoImp.sdsTalao_Proc.CommandText + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      fDMPedidoImp.sdsTalao_Proc.CommandText := fDMPedidoImp.sdsTalao_Proc.CommandText + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  end;
  fDMPedidoImp.cdsTalao_Proc.Open;
end;

procedure TfrmTalaoPedProc.btnImprimirClick(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMPedidoImp.cdsTalao_Proc.Active) or (fDMPedidoImp.cdsTalao_Proc.IsEmpty) then
    exit;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Talao_Por_Processo.fr3';
  if FileExists(vArq) then
    fDMPedidoImp.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + #13 + vArq);
    Exit;
  end;
  fDMPedidoImp.frxReport1.ShowReport;
end;

end.
