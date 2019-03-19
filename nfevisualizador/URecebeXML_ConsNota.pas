unit URecebeXML_ConsNota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls, Buttons,
  UDMRecebeXML, Grids, DBGrids, SMDBGrid, DB, UCadNotaFiscal_Itens, SqlExpr;

type
  TfrmRecebeXML_ConsNota = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar_Nota;

  public
    { Public declarations }
    vCodCliente: Integer;

    fDMRecebeXML: TDMRecebeXML;
    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;
  end;

var
  frmRecebeXML_ConsNota: TfrmRecebeXML_ConsNota;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmRecebeXML_ConsNota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmRecebeXML_ConsNota.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMRecebeXML);
  Screen.Cursor := crHourGlass;
  prc_Consultar_Nota;
  Screen.Cursor := crDefault;
  Panel1.Visible := (vCodCliente <= 0);
end;

procedure TfrmRecebeXML_ConsNota.prc_Consultar_Nota;
begin
  SMDBGrid1.DisableScroll;
  fDMRecebeXML.cdsNotaEntrada.Close;
  fDMRecebeXML.sdsNotaEntrada.CommandText := fDMRecebeXML.ctNotaEntrada;
  fDMRecebeXML.sdsNotaEntrada.CommandText := fDMRecebeXML.sdsNotaEntrada.CommandText
                                               + ' AND ((NT.ID_CLIENTE = ' + IntToStr(vCodCliente) + ')'
                                               + '  OR (NT.ID_CLIENTETRIANG = ' + IntToStr(vCodCliente) + '))';
  if fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger > 0 then
    fDMRecebeXML.sdsNotaEntrada.CommandText := fDMRecebeXML.sdsNotaEntrada.CommandText
                                               + '  AND (NI.ID_PRODUTO = ' + IntToStr(fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger ) + ')';

  fDMRecebeXML.cdsNotaEntrada.Open;
  fDMRecebeXML.cdsNotaEntrada.First;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmRecebeXML_ConsNota.SMDBGrid1DblClick(Sender: TObject);
begin
  if not(fDMRecebeXML.cdsNotaEntrada.Active) or (fDMRecebeXML.cdsNotaEntrada.IsEmpty) or (fDMRecebeXML.cdsNotaEntradaID.AsInteger <= 0) then
    exit;

  fDMRecebeXML.prc_Move_Dados_Da_Nota;

  Close;
end;

end.
