unit uCupomFiscalCanc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit,
  Buttons, DB, UDMCupomFiscal, uDmParametros;

type
  TfCupomFiscalCanc = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Excluir_ItensSacola;
    procedure prc_Calcular_Exclusao;
  public
    { Public declarations }
    vTeste: Boolean;
    fDmCupomFiscal: TDmCupomFiscal;
    fDmParametros: TDmParametros;
  end;

var
  fCupomFiscalCanc: TfCupomFiscalCanc;

implementation

//---------------TROCAR IMPRESSORA
uses UCupomFiscal;
//  uUtilBematech;
//   UECF_DLLG32,
//  uUtilDaruma;

{$R *.dfm}

procedure TfCupomFiscalCanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfCupomFiscalCanc.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfCupomFiscalCanc.BitBtn1Click(Sender: TObject);
begin
  if not fDmCupomFiscal.cdsCupom_Itens.Locate('ITEM',CurrencyEdit1.AsInteger,[loCaseInsensitive]) then
    Raise Exception.Create('Item não encontrado no cupom!');

  if fDmCupomFiscal.cdsCupom_ItensCANCELADO.AsString = 'S' then
    Raise Exception.Create('Item já cancelado!');

  if (fDmCupomFiscal.cdsParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S') and (fDmCupomFiscal.cdsCupom_ItensITEM_ORIGINAL.AsInteger > 0) then
  begin
    if not fDmCupomFiscal.cdsCupomFiscal_ProdPrincipal.Locate('ITEM_ORIGINAL',fDmCupomFiscal.cdsCupom_ItensITEM_ORIGINAL.AsInteger,[loCaseInsensitive]) then
    begin
      MessageDlg('*** Produto (Sacola) não encontrado!' , mtError, [mbOk], 0);
      exit;
    end;
    if not fDmCupomFiscal.cdsProduto.Locate('ID',fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
      exit;
    if MessageDlg('Deseja excluir os Itens da Sacola: ' + fDmCupomFiscal.cdsProdutoNOME.AsString,mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      prc_Excluir_ItensSacola;
    end;
    Close;
    exit;
  end;

{
  if fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S' then
    if MessageDlg('Deseja excluir o item ' + fDmCupomFiscal.cdsCupom_ItensNOMEPRODUTO.AsString + '?' ,mtconfirmation,[mbok,mbno],0)=mrNo then
      exit;

  if fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString <> 'S' then
    if MessageDlg('Deseja cancelar o item ' + fDmCupomFiscal.cdsCupom_ItensNOMEPRODUTO.AsString + '?' ,mtconfirmation,[mbok,mbno],0)=mrNo then
      exit;
}

  fDmCupomFiscal.cdsCupom_Itens.Edit;
  fDmCupomFiscal.cdsCupom_ItensCANCELADO.AsString := 'S';
  fDmCupomFiscal.cdsCupom_Itens.Post;
  prc_Calcular_Exclusao;

  if fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S' then
    fDmCupomFiscal.cdsCupom_Itens.Delete
  else
  if not vTeste then
//---------------TROCAR IMPRESSORA
    case fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsInteger of
//      1: prc_Imprimir_Item_Cancelado_Daruma(fDmCupomFiscal);
//      2: CancelaItemGenerico(fDmCupomFiscal.cdsCupom_ItensITEM.AsString);
//      3: prc_Bematech_CancelarItem(fDmCupomFiscal.cdsCupom_ItensITEM.AsString);
      4: fDmParametros.ACBrECF1.CancelaItemVendido(fDmCupomFiscal.cdsCupom_ItensITEM.AsInteger);
    end;

  if (fDmCupomFiscal.cdsCupomParametrosUSA_COPIA_PEDIDO_CF.AsString = 'S') and (fDmCupomFiscal.cdsCupom_ItensID_PEDIDO.AsInteger > 0) then
  begin
    if not fDmCupomFiscal.mPedidoAux.Locate('ID_Pedido',fDmCupomFiscal.cdsCupom_ItensID_PEDIDO.AsInteger,[loCaseInsensitive]) then
    begin
      fDmCupomFiscal.mPedidoAux.Insert;
      fDmCupomFiscal.mPedidoAuxID_Pedido.AsInteger := fDmCupomFiscal.cdsCupom_ItensID_PEDIDO.AsInteger;
      fDmCupomFiscal.mPedidoAux.Post;
    end;
  end;
  if fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString <> 'S' then
  begin
    if fDmCupomFiscal.cdsCupomFiscal.State in [dsEdit,dsInsert] then
      fDmCupomFiscal.cdsCupomFiscal.Post;
    fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
    fDmCupomFiscal.cdsCupomFiscal.Edit;
    fDmCupomFiscal.cdsCupom_Itens.Last;
  end;
  Close;
end;

procedure TfCupomFiscalCanc.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(CurrencyEdit1.Text) <> '') then
    BitBtn1Click(Sender);
end;

procedure TfCupomFiscalCanc.FormShow(Sender: TObject);
begin
  if fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S' then
    BitBtn1.Caption := 'Excluir';
end;

procedure TfCupomFiscalCanc.prc_Excluir_ItensSacola;
var
  vItemOriginal : Integer;
begin
  vItemOriginal := fDmCupomFiscal.cdsCupom_ItensITEM_ORIGINAL.AsInteger;
  fDmCupomFiscal.cdsCupom_Itens.First;
  while not fDmCupomFiscal.cdsCupom_Itens.Eof do
  begin
    if fDmCupomFiscal.cdsCupom_ItensITEM_ORIGINAL.AsInteger = vItemOriginal then
    begin
      prc_Calcular_Exclusao;
      fDmCupomFiscal.cdsCupom_Itens.Delete;
    end
    else
      fDmCupomFiscal.cdsCupom_Itens.Next;
  end;
  fDmCupomFiscal.cdsCupomFiscal_ProdPrincipal.Delete;
end;

procedure TfCupomFiscalCanc.prc_Calcular_Exclusao;
begin
  fDmCupomFiscal.cdsCupomFiscal.Edit;
  fDmCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsCurrency          := StrToCurr(FormatCurr('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsCurrency - fDmCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsCurrency));
  fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency             := StrToCurr(FormatCurr('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency - fDmCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsCurrency));
  fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsCurrency           := StrToCurr(FormatCurr('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsCurrency - fDmCupomFiscal.cdsCupom_ItensVLR_TRIBUTO.AsCurrency));
  fDmCupomFiscal.cdsCupomFiscalBASE_ICMS.AsCurrency             := StrToCurr(FormatCurr('0.00',fDmCupomFiscal.cdsCupomFiscalBASE_ICMS.AsFloat - fDmCupomFiscal.cdsCupom_ItensBASE_ICMS.AsFloat));
  fDmCupomFiscal.cdsCupomFiscalVLR_ICMS.AsCurrency              := StrToCurr(FormatCurr('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_ICMS.AsFloat - fDmCupomFiscal.cdsCupom_ItensVLR_ICMS.AsFloat));
  fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_ESTADUAL.AsCurrency  := StrToCurr(FormatCurr('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_ESTADUAL.AsFloat - fDmCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_ESTADUAL.AsFloat));
  fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_FEDERAL.AsCurrency   := StrToCurr(FormatCurr('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_FEDERAL.AsFloat - fDmCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_FEDERAL.AsFloat));
  fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_MUNICIPAL.AsCurrency := StrToCurr(FormatCurr('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_MUNICIPAL.AsFloat - fDmCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat));
  fDmCupomFiscal.cdsCupomFiscalVLR_IPI.AsCurrency               := StrToCurr(FormatCurr('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_IPI.AsFloat - fDmCupomFiscal.cdsCupom_ItensVLR_IPI.AsFloat));
  fDmCupomFiscal.cdsCupomFiscalVLR_PIS.AsCurrency               := StrToCurr(FormatCurr('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_PIS.AsFloat - fDmCupomFiscal.cdsCupom_ItensVLR_PIS.AsFloat));
  fDmCupomFiscal.cdsCupomFiscalVLR_COFINS.AsCurrency            := StrToCurr(FormatCurr('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_COFINS.AsFloat - fDmCupomFiscal.cdsCupom_ItensVLR_COFINS.AsFloat));

  fDMCupomFiscal.cdsCupomFiscalBASE_ICMSSUBST_RET.AsFloat := StrToCurr(FormatCurr('0.00',fDMCupomFiscal.cdsCupomFiscalBASE_ICMSSUBST_RET.AsFloat - fDMCupomFiscal.cdsCupom_ItensBASE_ICMSSUBST_RET.AsFloat));
  fDMCupomFiscal.cdsCupomFiscalVLR_ICMSSUBST_RET.AsFloat  := StrToCurr(FormatCurr('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_ICMSSUBST_RET.AsFloat - fDMCupomFiscal.cdsCupom_ItensVLR_ICMSSUBST_RET.AsFloat));
  fDMCupomFiscal.cdsCupomFiscalVLR_BASE_EFET.AsFloat      := StrToCurr(FormatCurr('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_BASE_EFET.AsFloat - fDMCupomFiscal.cdsCupom_ItensVLR_BASE_EFET.AsFloat));
  fDMCupomFiscal.cdsCupomFiscalVLR_ICMS_EFET.AsFloat      := StrToCurr(FormatCurr('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_ICMS_EFET.AsFloat - fDMCupomFiscal.cdsCupom_ItensVLR_ICMS_EFE.AsFloat));

  fDmCupomFiscal.vSomaOriginal := StrToFloat(FormatFloat('0.00',fDmCupomFiscal.vSomaOriginal -
                                                                fDmCupomFiscal.cdsCupom_ItensVLR_UNIT_ORIGINAL.AsCurrency *
                                                                fDmCupomFiscal.cdsCupom_ItensQTD.AsInteger));
  //fDmCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsCurrency          := StrToCurr(FormatCurr('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsFloat - fDmCupomFiscal.cdsCupom_ItensVLR_DESCONTO.AsFloat));
end;

end.
