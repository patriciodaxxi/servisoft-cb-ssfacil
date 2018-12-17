unit UGerar_Lote_AuxEst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadLote, ExtCtrls, Grids, DBGrids, SMDBGrid, StdCtrls, Mask,
  ToolEdit, CurrEdit;

type
  TfrmGerar_Lote_AuxEst = class(TForm)
    SMDBGrid2: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    pnlSemi: TPanel;
    Label2: TLabel;
    ceEstoque: TCurrencyEdit;
    ceMinimo: TCurrencyEdit;
    Label3: TLabel;
    Label6: TLabel;
    ceQtdUsada: TCurrencyEdit;
    Label7: TLabel;
    ceReserva: TCurrencyEdit;
    Label5: TLabel;
    lblTotal: TLabel;
    Shape1: TShape;
    ceEstoque2: TCurrencyEdit;
    ceQtdUsada2: TCurrencyEdit;
    ceReserva2: TCurrencyEdit;
    lblTotal2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Monta_Estoque;
  public
    { Public declarations }
    fDMCadLote: TDMCadLote;
    vQtdUsada : Real;

  end;

var
  frmGerar_Lote_AuxEst: TfrmGerar_Lote_AuxEst;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmGerar_Lote_AuxEst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmGerar_Lote_AuxEst.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadLote);
  pnlSemi.Visible := (fDMCadLote.mAuxLoteTipo_Lote.AsString = 'S');
  if (fDMCadLote.mAuxLoteTipo_Lote.AsString = 'S') then
    prc_Monta_Estoque;
end;

procedure TfrmGerar_Lote_AuxEst.prc_Monta_Estoque;
var
  vQtdAux : Real;
begin
  fDMCadLote.qEstSemi.Close;
  fDMCadLote.qEstSemi.ParamByName('ID_PRODUTO').AsInteger := fDMCadLote.mAuxLoteID_Produto.AsInteger;
  fDMCadLote.qEstSemi.Open;
  ceEstoque.Value := StrToFloat(FormatFloat('0.0000',fDMCadLote.qEstSemiQTD.AsFloat));
  ceEstoque2.Value := StrToFloat(FormatFloat('0.0000',fDMCadLote.qEstSemiQTD.AsFloat));
  ceReserva.Value := StrToFloat(FormatFloat('0.0000',fDMCadLote.qEstSemiQTD_RESERVA.AsFloat));
  ceReserva2.Value := StrToFloat(FormatFloat('0.0000',fDMCadLote.qEstSemiQTD_RESERVA.AsFloat));
  ceMinimo.Value  := StrToFloat(FormatFloat('0.0000',fDMCadLote.mAuxLoteQtd_Minimo.AsFloat));
  ceQtdUsada.Value    := StrToFloat(FormatFloat('0.0000',vQtdUsada));
  ceQtdUsada2.Value    := StrToFloat(FormatFloat('0.0000',vQtdUsada));
  vQtdAux             := StrToFloat(FormatFloat('0.0000',ceEstoque.Value - ceReserva.Value - ceMinimo.Value - vQtdUsada));
  lblTotal.Caption    := FormatFloat('###,###,##0.0000',vQtdAux);
  vQtdAux             := StrToFloat(FormatFloat('0.0000',ceEstoque.Value - ceReserva.Value - vQtdUsada));
  lblTotal2.Caption    := FormatFloat('###,###,##0.0000',vQtdAux);
  if (fDMCadLote.mAuxLoteTipo_Lote.AsString = 'S') and (ceQtdUsada.Value > 0) then
  begin
    fDMCadLote.cdsSaldoEst.First;
    fDMCadLote.cdsSaldoEst.Edit;
    fDMCadLote.cdsSaldoEstQTD2.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadLote.cdsSaldoEstQTD2.AsFloat - ceQtdUsada.Value));
    fDMCadLote.cdsSaldoEst.Post;
  end;
end;

procedure TfrmGerar_Lote_AuxEst.SMDBGrid2DblClick(Sender: TObject);
var
  VQtd : Real;
begin
  if MessageDlg('Usar o Lote de Controle: ' + fDMCadLote.cdsSaldoEstNUM_LOTE_CONTROLE.AsString ,mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadLote.mAuxLote.Edit;
  vQtd := 0;
  if StrToFloat(FormatFloat('0.0000',fDMCadLote.cdsSaldoEstQTD2.AsFloat)) >= StrToFloat(FormatFloat('0.0000',fDMCadLote.mAuxLoteQtd_Original.AsFloat)) then
    vQtd := StrToFloat(FormatFloat('0.0000',fDMCadLote.mAuxLoteQtd_Original.AsFloat))
  else
    vQtd := StrToFloat(FormatFloat('0.0000',fDMCadLote.cdsSaldoEstQTD2.AsFloat));
  fDMCadLote.mAuxLoteQtd.AsFloat             := StrToFloat(FormatFloat('0.0000',fDMCadLote.mAuxLoteQtd_Original.AsFloat - vQtd));
  fDMCadLote.mAuxLoteQtd_Estoque_Usa.AsFloat := StrToFloat(FormatFloat('0.0000',vQtd));
  fDMCadLote.mAuxLoteNum_Lote_Controle.AsString := fDMCadLote.cdsSaldoEstNUM_LOTE_CONTROLE.AsString;
  fDMCadLote.mAuxLoteUsa_Estoque.AsString    := 'S';
  fDMCadLote.mAuxLote.Post;
  Close;
end;

end.
