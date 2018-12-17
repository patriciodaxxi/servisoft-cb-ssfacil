unit UCadPedido_Desconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Mask,
  DBCtrls, ExtCtrls, ToolEdit, CurrEdit, Grids, DBGrids, SMDBGrid, UDMCadPedido, DB, Math;

type
  TfrmCadPedido_Desconto = class(TForm)
    Label47: TLabel;
    Label54: TLabel;
    DBEdit23: TDBEdit;
    Label48: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    cePercentual: TCurrencyEdit;
    BitBtn7: TBitBtn;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    function  fnc_Erro: Boolean;

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;

  end;

var
  frmCadPedido_Desconto: TfrmCadPedido_Desconto;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadPedido_Desconto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedido_Desconto.BitBtn1Click(Sender: TObject);
var
  vVlrDescAux: Currency;
  vVlrDuplAux, vAux: Currency;
  vVlrDesconto: Currency;
begin
  vVlrDescAux  := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_DESCONTO.AsCurrency));
  if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
    vVlrDuplAux  := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat - fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat))
  else
    vVlrDuplAux  := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat));

  vVlrDesconto := StrToFloat(FormatFloat('0.00',0));
  
  fDMCadPedido.cdsPedido_Desconto.First;
  while not fDMCadPedido.cdsPedido_Desconto.Eof do
    begin
      vAux := StrToFloat(FormatFloat('0.00',(vVlrDuplAux * fDMCadPedido.cdsPedido_DescontoPERC_DESCONTO.AsCurrency) / 100));
      vVlrDesconto := vVlrDesconto + vAux;
      vVlrDuplAux  := vVlrDuplAux - vAux;

      fDMCadPedido.cdsPedido_Desconto.Next;
    end;

  if vVlrDesconto > 0 then
  begin
    fDMCadPedido.cdsPedido_Desconto.First;
    CurrencyEdit2.Value := vVlrDesconto;
    if fDMCadPedido.cdsPedido_Desconto.RecordCount < 2 then
      CurrencyEdit1.Value := fDMCadPedido.cdsPedido_DescontoPERC_DESCONTO.AsFloat
    else
      CurrencyEdit2Exit(Sender);
  end;

  fDMCadPedido.cdsPedidoPERC_DESCONTO.AsFloat := CurrencyEdit1.Value;;
  fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat  := CurrencyEdit2.Value;

  if (CurrencyEdit1.Value > 0) and (CurrencyEdit2.Value > 0) and (trim(fDMCadPedido.cdsPedidoDESCRICAO_DESC.AsString) = '') then
    fDMCadPedido.cdsPedidoDESCRICAO_DESC.AsString := 'Desconto: ';

  if fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert] then
  begin
    if StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat)) > 0 then
      fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString := 'N'
    else
      fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString := '';
  end;

  Close;
end;

procedure TfrmCadPedido_Desconto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  CurrencyEdit1.Value := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoPERC_DESCONTO.AsCurrency));
  CurrencyEdit2.Value := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_DESCONTO.AsCurrency));
end;

procedure TfrmCadPedido_Desconto.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadPedido_Desconto.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.Value > 0 then
  begin
    if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
      CurrencyEdit2.Value := StrToFloat(FormatFloat('0.00',(fDMCadPedido.cdsPedidoVLR_TOTAL.AsCurrency + fDMCadPedido.cdsPedidoVLR_DESCONTO.AsCurrency - fDMCadPedido.cdsPedidoVLR_IPI.AsFloat - fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat) *
                             CurrencyEdit1.Value / 100))
    else
      CurrencyEdit2.Value := StrToFloat(FormatFloat('0.00',(fDMCadPedido.cdsPedidoVLR_TOTAL.AsCurrency + fDMCadPedido.cdsPedidoVLR_DESCONTO.AsCurrency - fDMCadPedido.cdsPedidoVLR_IPI.AsFloat) * CurrencyEdit1.Value / 100));
  end
  else
    CurrencyEdit2.Clear;
end;

procedure TfrmCadPedido_Desconto.CurrencyEdit2Exit(Sender: TObject);
begin
  if CurrencyEdit2.Value > 0 then
  begin
    if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
       CurrencyEdit1.Value := StrToFloat(FormatFloat('0.00000',CurrencyEdit2.Value * 100 / (fDMCadPedido.cdsPedidoVLR_TOTAL.AsCurrency + fDMCadPedido.cdsPedidoVLR_DESCONTO.AsCurrency - fDMCadPedido.cdsPedidoVLR_IPI.AsFloat - fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat)))
    else
       CurrencyEdit1.Value := StrToFloat(FormatFloat('0.00000',CurrencyEdit2.Value * 100 / (fDMCadPedido.cdsPedidoVLR_TOTAL.AsCurrency + fDMCadPedido.cdsPedidoVLR_DESCONTO.AsCurrency - fDMCadPedido.cdsPedidoVLR_IPI.AsFloat)));
  end
  else
    CurrencyEdit1.Clear;
  end;

procedure TfrmCadPedido_Desconto.BitBtn7Click(Sender: TObject);
var
  vItemAux: Integer;
begin
  if fnc_Erro then
    exit;

  fDMCadPedido.cdsPedido_Desconto.Last;
  vItemAux := fDMCadPedido.cdsPedido_DescontoITEM.AsInteger;
  fDMCadPedido.cdsPedido_Desconto.Insert;
  fDMCadPedido.cdsPedido_DescontoID.AsInteger          := fDMCadPedido.cdsPedidoID.AsInteger;
  fDMCadPedido.cdsPedido_DescontoITEM.AsInteger        := vItemAux + 1;
  fDMCadPedido.cdsPedido_DescontoPERC_DESCONTO.AsFloat := cePercentual.Value;
  fDMCadPedido.cdsPedido_Desconto.Post;

  cePercentual.Clear;
  cePercentual.SetFocus;
end;

procedure TfrmCadPedido_Desconto.BitBtn3Click(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido_Desconto.IsEmpty) or (fDMCadPedido.cdsPedido_DescontoID.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir o percentual?',mtWarning,[mbOK,mbNO],0) = mrNo then
    exit;

  fDMCadPedido.cdsPedidoVLR_TOTAL.AsCurrency    := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsCurrency +
                                                   fDMCadPedido.cdsPedidoVLR_DESCONTO.AsCurrency));
  fDMCadPedido.cdsPedidoVLR_DESCONTO.AsCurrency := 0;
  CurrencyEdit1.Value                           := 0;
  CurrencyEdit2.Value                           := 0;

  fDMCadPedido.cdsPedido_Desconto.Delete;
end;

function TfrmCadPedido_Desconto.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if cePercentual.Value <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Percentual não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

end.
