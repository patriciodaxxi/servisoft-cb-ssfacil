unit USel_Pedido_Tam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls,
  UDMCadNotaFiscal, Buttons, Grids, DBGrids, SMDBGrid, DB, UCadNotaFiscal_Itens, UCadNotaEntrada_Itens, 
  NxCollection, SqlExpr, DBVGrids, FMTBcd, DBClient,
  Provider;

type
  TfrmSel_Pedido_Tam = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnPesquisar: TNxButton;
    btnImportar: TNxButton;
    Shape4: TShape;
    Label6: TLabel;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure prc_Consultar_Pedido(Tipo: String ; ID : Integer = 0 ; Item_Pedido : Integer = 0);
    procedure prc_Gravar_Nota;
    procedure prc_Gravar_NotaItens(Lote : Boolean = False);
    procedure prc_MostraNota;

    function fnc_busca_Produto_Tipo(ID_Tipo : Integer) : String;

    function fnc_Qtd_Pedidos(Tipo_Reg : String ; ID_Cliente, Filial : Integer) : Integer;

  public
    { Public declarations }
    vCodCliente: Integer;
    vTipo_RegPed: String;
    vTipo: String;

    fDMCadNotaFiscal: TDMCadNotaFiscal;
    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;
    ffrmCadNotaEntrada_Itens: TfrmCadNotaEntrada_Itens;

  end;

var
  frmSel_Pedido_Tam: TfrmSel_Pedido_Tam;

implementation

uses rsDBUtils, uUtilPadrao, StrUtils, DmdDatabase, UInformar_Lote_Controle,
  UConsEstoque_Lote, USel_Pedido_Tam_Dig, uCalculo_NotaFiscal;

{$R *.dfm}

procedure TfrmSel_Pedido_Tam.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Pedido_Tam.FormShow(Sender: TObject);
begin
  prc_MostraNota;

  if Tag = 11 then
  begin
    fDMCadNotaFiscal.vID_CFOP     := 0;
    fDMCadNotaFiscal.vID_Variacao := 0;
    if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger > 0 then
      fDMCadNotaFiscal.vID_CFOP := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger
    else
    if fDMCadNotaFiscal.cdsParametrosID_OPERACAO_PED_FUT.AsInteger > 0 then
      uCalculo_NotaFiscal.prc_Posicionar_Regra_Empresa(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsParametrosID_OPERACAO_PED_FUT.AsInteger,'O');
  end;
  Shape4.Visible := (fDMCadNotaFiscal.qParametros_EstGERAR_LOTE_AUT.AsString = 'S');
  Label6.Visible := (fDMCadNotaFiscal.qParametros_EstGERAR_LOTE_AUT.AsString = 'S');
end;

procedure TfrmSel_Pedido_Tam.prc_Consultar_Pedido(Tipo: String ; ID : Integer = 0 ; Item_Pedido : Integer = 0);
var
  vQtdAux : Integer;
  vComandoAux, vComandoAux2 : String;
  i : Integer;
begin
  SMDBGrid1.ClearFilter;
  fDMCadNotaFiscal.cdsPedido_Tam.Close;
  i := PosEx('GROUP',fDMCadNotaFiscal.ctPedido_Tam,0);
  vComandoAux  := copy(fDMCadNotaFiscal.ctPedido_Tam,1,i-1);
  vComandoAux2 := copy(fDMCadNotaFiscal.ctPedido_Tam,i,Length(fDMCadNotaFiscal.ctPedido_Tam)-i+1);

  if ((vTipo_RegPed = 'P') and (fDMCadNotaFiscal.cdsParametrosUSA_APROVACAO_PED.AsString = 'S')) then
    vComandoAux := vComandoAux + ' AND PE.APROVADO_PED = ' + QuotedStr('A');
  vComandoAux := vComandoAux + ' AND PE.TIPO_REG = ' + QuotedStr('P');
  if vCodCliente > 0 then
    vComandoAux := vComandoAux + ' AND PE.ID_CLIENTE = ' + IntToStr(vCodCliente);
  if fDMCadNotaFiscal.qParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA.AsString = 'S' then
    vComandoAux := vComandoAux + ' AND PE.FILIAL = ' + fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsString;

  fDMCadNotaFiscal.sdsPedido_Tam.CommandText := vComandoAux + ' ' + vComandoAux2;
  fDMCadNotaFiscal.cdsPedido_Tam.Open;

  fDMCadNotaFiscal.cdsPedido.Close;
  fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.ctPedido;
  if ((vTipo_RegPed = 'P') and (fDMCadNotaFiscal.cdsParametrosUSA_APROVACAO_PED.AsString = 'S')) then
    fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText + ' AND PE.APROVADO_PED = ' + QuotedStr('A');
  fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText + ' AND PE.TIPO_REG = ' + QuotedStr('P');
  if vCodCliente > 0 then
    fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText + ' AND PE.ID_CLIENTE = ' + IntToStr(vCodCliente);
  if fDMCadNotaFiscal.qParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA.AsString = 'S' then
    fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText + ' AND PE.FILIAL = ' + fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsString;
  fDMCadNotaFiscal.cdsPedido.Open;
  fDMCadNotaFiscal.cdsPedido.First;

  if fDMCadNotaFiscal.qParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA.AsString = 'S' then
  begin
    vQtdAux := fnc_Qtd_Pedidos(vTipo_RegPed,fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger);
    Memo1.Visible := (vQtdAux > 0);
    if vQtdAux > 0 then
      Memo1.Lines.Text := IntToStr(vQtdAux) + ' Pedido(s) cadastrado(s) em outra Filial';
  end;
    
end;

procedure TfrmSel_Pedido_Tam.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
var
  vQtd_Faturado : Real;
begin
  if (vTipo = 'NTS') and (SMDBGrid1.SelectedRows.CurrentRowSelected) and
     (StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsPedido_TamQTD_AFATURAR.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsPedido_TamQTD_FATURADO.AsFloat)) <= 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  begin
    if (vTipo = 'NTS') or (vTipo = 'MO') then
    begin
      vQtd_Faturado := fDMCadNotaFiscal.cdsPedido_TamQTD_FATURADO.AsFloat;
      if (fDMCadNotaFiscal.qParametros_EstGERAR_LOTE_AUT.AsString = 'S') and (fDMCadNotaFiscal.cdsPedido_TamCOPIAR_SELECIONADO.AsString = 'N') and
         (fDMCadNotaFiscal.cdsPedido_TamLANCA_LOTE_CONTROLE.AsString = 'S') then
        Background  := clYellow
      else
      if (vTipo_RegPed <> 'C') and (StrToFloat(FormatFloat('0.0000',vQtd_Faturado)) > 0) and (Tag = 11) then
        Background  := clSilver
      else
      if (vTipo_RegPed <> 'C') and (StrToFloat(FormatFloat('0.0000',vQtd_Faturado)) > 0) then
      begin
        Background  := clGreen;
        AFont.Color := clWhite;
      end;

      if (Field = fDMCadNotaFiscal.cdsPedido_TamQTD_AFATURAR) then
      begin
        Background  := clYellow;
        AFont.Style := [fsBold];
        AFont.Color := clBlack;
      end
      else
      if (Field = fDMCadNotaFiscal.cdsPedido_TamclQtd_Restante) then
      begin
        Background  := clMoneyGreen;
        AFont.Style := [fsBold];
        AFont.Color := clBlack;
      end;
    end;
  end;
end;

procedure TfrmSel_Pedido_Tam.prc_Gravar_NotaItens(Lote : Boolean = False);
var
  vItemAux: Integer;
  vNum_Controle_Tam : Integer;
  vVlrAux: Real;
  vFlag: Boolean;
  vTexto : String;
  vExiste : Boolean;
  vQtd_Tam : Real;
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger <= 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := fDMCadNotaFiscal.cdsPedido_TamID_CFOP.AsInteger;
  end;
  if (fDMCadNotaFiscal.cdsPedido_TamLOCALENTREGA.AsString = 'N') or (fDMCadNotaFiscal.cdsPedido_TamLOCALENTREGA.AsString = 'E') then
    fDMCadNotaFiscal.cdsNotaFiscalLOCALENTREGA.AsString := fDMCadNotaFiscal.cdsPedido_TamLOCALENTREGA.AsString;
  if fDMCadNotaFiscal.cdsPedido_TamNOTIFICACAO.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalNOTIFICACAO.AsInteger := fDMCadNotaFiscal.cdsPedido_TamNOTIFICACAO.AsInteger;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsPedido_TamVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsPedido_TamVLR_DESCONTORATEIO.AsFloat;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString := 'N';
  if (fDMCadNotaFiscal.cdsPedido_TamID_CONDPGTO.AsInteger > 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger := fDMCadNotaFiscal.cdsPedido_TamID_CONDPGTO.AsInteger
  else
  if (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger <= 0) and (fDMCadNotaFiscal.cdsPedido_TamID_CONDPGTO.AsInteger > 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger := fDMCadNotaFiscal.cdsPedido_TamID_CONDPGTO.AsInteger;
  if fDMCadNotaFiscal.cdsPedido_TamID_TIPO_COBRANCA.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger := fDMCadNotaFiscal.cdsPedido_TamID_TIPO_COBRANCA.AsInteger;
  if fDMCadNotaFiscal.cdsPedido_TamID_CONTA.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger := fDMCadNotaFiscal.cdsPedido_TamID_CONTA.AsInteger;
  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '') and (fDMCadNotaFiscal.cdsPedido_TamTIPO_FRETE.AsString <> '') then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString := fDMCadNotaFiscal.cdsPedido_TamTIPO_FRETE.AsString;

  fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString := 'P';
  if fDMCadNotaFiscal.cdsPedido_TamID_TRANSPORTADORA.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger := fDMCadNotaFiscal.cdsPedido_TamID_TRANSPORTADORA.AsInteger;

  if fDMCadNotaFiscal.cdsPedido_TamID_VENDEDOR.AsInteger > 0 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger := fDMCadNotaFiscal.cdsPedido_TamID_VENDEDOR.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsPedido_TamPERC_COMISSAO.AsFloat));
  end;

  vExiste := False;

  if vExiste then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit
  else
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;
    vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger + 1;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Insert;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger          := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger        := vItemAux;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger  := fDMCadNotaFiscal.cdsPedido_TamID_PRODUTO.AsInteger;
    if fDMCadNotaFiscal.cdsPedido_TamID_COR.AsInteger > 0 then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger := fDMCadNotaFiscal.cdsPedido_TamID_COR.AsInteger;
    if (Tag = 95) then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger   := RxDBLookupCombo1.KeyValue;
      ffrmCadNotaFiscal_Itens.RxDBLookupCombo1.KeyValue       := RxDBLookupCombo1.KeyValue;
      ffrmCadNotaFiscal_Itens.RxDBLookupCombo1Exit(ffrmCadNotaFiscal_Itens);
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;
    end
    else
    if (vTipo_RegPed = 'C') and (RxDBLookupCombo1.Text <> '') then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger   := RxDBLookupCombo1.KeyValue
    else
    if Tag = 11 then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger     := fDMCadNotaFiscal.vID_CFOP;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;
    end
    else
    if fDMCadNotaFiscal.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger     := fDMCadNotaFiscal.cdsPedido_TamID_CFOP.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.cdsPedido_TamID_VARIACAO.AsInteger;
      fDMCadNotaFiscal.vID_Variacao                             := fDMCadNotaFiscal.cdsPedido_TamID_VARIACAO.AsInteger;
    end
    else
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_VARIACAO.AsInteger;
      fDMCadNotaFiscal.vID_Variacao                             := fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger);
    end;

    if vTipo_RegPed = 'C' then
      ffrmCadNotaEntrada_Itens.prc_Move_Dados_Itens
    else
      ffrmCadNotaFiscal_Itens.prc_Move_Dados_Itens;

    if (fDMCadNotaFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString <> 'S') then
    begin
      if Tag <> 95 then
      begin
        if fDMCadNotaFiscal.cdsPedido_TamID_NCM_PED.AsInteger > 0 then
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger := fDMCadNotaFiscal.cdsPedido_TamID_NCM_PED.AsInteger
        else
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger := fDMCadNotaFiscal.cdsPedido_TamID_NCM.AsInteger;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString     := fDMCadNotaFiscal.cdsPedido_TamUNIDADE.AsString;
    end;

  end;

  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat + fDMCadNotaFiscal.cdsPedido_TamQTD_AFATURAR.AsFloat));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString := 'S';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString := '';

  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat     := fDMCadNotaFiscal.cdsPedido_TamPERC_IPI.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsPedido_TamVLR_UNITARIO.AsFloat;
  if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat))
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));

  if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100))
    else
      vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString     := fDMCadNotaFiscal.cdsPedido_TamNOMEPRODUTO.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString       := fDMCadNotaFiscal.cdsPedido_TamREFERENCIA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger   := 0;
  if fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString <> 'I' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat   := 0
  else
  begin
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedido_TamPERC_COMISSAO_ITEM.AsFloat)) > 0 then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedido_TamPERC_COMISSAO_ITEM.AsFloat))
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedido_TamPERC_COMISSAO.AsFloat));
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat       := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMCadNotaFiscal.cdsPedido_TamOBS_COMPLEMENTAR.AsString;

  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString        := fDMCadNotaFiscal.cdsPedido_TamPEDIDO_CLIENTE.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString        := fDMCadNotaFiscal.cdsPedido_TamNUMOS.AsString;
  //18/09/2018
  //fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_CLIENTE.AsInteger    := fDMCadNotaFiscal.cdsPedido_TamITEM_CLIENTE.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_CLIENTE.AsInteger    := fDMCadNotaFiscal.cdsPedido_TamITEM_ORIGINAL.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_PEDIDO.AsInteger      := fDMCadNotaFiscal.cdsPedido_TamNUM_PEDIDO.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensIMP_OC_NOTA.AsString      := fDMCadNotaFiscal.cdsPedido_TamIMP_OC_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString        := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString          := '';
  if (fDMCadNotaFiscal.cdsParametrosCONTROLAR_DUP_PEDIDO.AsString = 'S') then
  begin
    fDMCadNotaFiscal.qDupPedido.Close;
    fDMCadNotaFiscal.qDupPedido.ParamByName('ID_PEDIDO').AsInteger := fDMCadNotaFiscal.cdsPedido_TamID.AsInteger;
    fDMCadNotaFiscal.qDupPedido.Open;
    if not fDMCadNotaFiscal.qDupPedido.IsEmpty then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString  := 'N';
    fDMCadNotaFiscal.qDupPedido.Close;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger   := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger     := fDMCadNotaFiscal.cdsPedido_TamID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger := fDMCadNotaFiscal.cdsPedido_TamITEM_ORIGINAL.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString  := 'S';

  vQtd_Tam := 0;
  if vTipo_RegPed = 'C' then
  begin
    ffrmCadNotaEntrada_Itens.vPedidoSelecionado := True;
    ffrmCadNotaEntrada_Itens.BitBtn1Click(ffrmCadNotaEntrada_Itens);
    ffrmCadNotaEntrada_Itens.vPedidoSelecionado := False;
  end
  else
  begin
    //17/09/2018
    fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat := 0; 

    if not(fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert]) then
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;

    fDMCadNotaFiscal.cdsPedido.Filtered := False;
    fDMCadNotaFiscal.cdsPedido.Filter   :=  'ID = ' + fDMCadNotaFiscal.cdsPedido_TamID.AsString + ' and ITEM_ORIGINAL = ' + fDMCadNotaFiscal.cdsPedido_TamITEM_ORIGINAL.AsString;
    fDMCadNotaFiscal.cdsPedido.Filtered := True;
    fDMCadNotaFiscal.cdsPedido.First;
    while not fDMCadNotaFiscal.cdsPedido.Eof do
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_Tam.Insert;
      fDMCadNotaFiscal.cdsNotaFiscal_TamID.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscal_TamITEM.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscal_TamTAMANHO.AsString := fDMCadNotaFiscal.cdsPedidoTAMANHO.AsString;
      fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat      := StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
      fDMCadNotaFiscal.cdsNotaFiscal_TamID_PEDIDO.AsInteger   := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscal_TamITEM_PEDIDO.AsInteger := fDMCadNotaFiscal.cdsPedidoITEM.AsInteger;
      vQtd_Tam := fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat;
      fDMCadNotaFiscal.cdsNotaFiscal_Tam.Post;

      //17/09/2018
      if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat + fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
      //****************

      fDMCadNotaFiscal.cdsPedido.Edit;
      fDMCadNotaFiscal.cdsPedidoQTD_FATURADO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_FATURADO.AsFloat + vQtd_Tam));
      fDMCadNotaFiscal.cdsPedidoQTD_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_RESTANTE.AsFloat - vQtd_Tam));
      fDMCadNotaFiscal.cdsPedidoQTD_LIBERADA.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_LIBERADA.AsFloat - vQtd_Tam));
      fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat - vQtd_Tam));
      fDMCadNotaFiscal.cdsPedido.Post;

      fDMCadNotaFiscal.cdsPedido.Next;
    end;
    vQtd_Tam := fDMCadNotaFiscal.cdsPedido_TamQTD_AFATURAR.AsFloat;

    //*******************
    ffrmCadNotaFiscal_Itens.vNotaSelecionada   := False;
    ffrmCadNotaFiscal_Itens.vPedidoSelecionado := True;
    ffrmCadNotaFiscal_Itens.BitBtn1Click(ffrmCadNotaFiscal_Itens);
    if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInsert] then
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
    ffrmCadNotaFiscal_Itens.vPedidoSelecionado := False;
  end;

  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;

  fDMCadNotaFiscal.cdsPedido.Filtered := False;

  if vTipo_RegPed = 'C' then
    vFlag := ffrmCadNotaEntrada_Itens.vGravacao_Ok
  else
    vFlag := ffrmCadNotaFiscal_Itens.vGravacao_Ok;

  if vFlag then
  begin
    fDMCadNotaFiscal.cdsPedido_Tam.Edit;
    fDMCadNotaFiscal.cdsPedido_TamQTD_FATURADO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedido_TamQTD_FATURADO.AsFloat + vQtd_Tam));
    fDMCadNotaFiscal.cdsPedido_TamQTD_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedido_TamQTD_RESTANTE.AsFloat - vQtd_Tam));
    fDMCadNotaFiscal.cdsPedido_TamQTD_LIBERADA.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedido_TamQTD_LIBERADA.AsFloat - vQtd_Tam));
    fDMCadNotaFiscal.cdsPedido_TamQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNotaFiscal.cdsPedido_TamQTD_AFATURAR.AsFloat - vQtd_Tam));
    fDMCadNotaFiscal.cdsPedido_Tam.Post;
  end;
end;

procedure TfrmSel_Pedido_Tam.btnPesquisarClick(Sender: TObject);
begin
  prc_Consultar_Pedido(vTipo);
end;

procedure TfrmSel_Pedido_Tam.btnImportarClick(Sender: TObject);
begin
  if vTipo = 'NTS' then
    prc_Gravar_Nota;
end;

procedure TfrmSel_Pedido_Tam.prc_MostraNota;
var
  i: Integer;
begin
  Label3.Visible           := (vTipo_RegPed = 'C');
  RxDBLookupCombo1.Visible := (vTipo_RegPed = 'C');
  if (vTipo_RegPed = 'C') and (fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
  if vTipo_RegPed = 'C' then
    Caption := 'Selecionar Ordens de Compra'
  else
    Caption := 'Selecionar Pedidos';

  Shape2.Visible := (vTipo_RegPed <> 'C');
  Label2.Visible := (vTipo_RegPed <> 'C');

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'clQtd_NaoLiberada') and
       ((fDMCadNotaFiscal.cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'N') or
       (vTipo_RegPed = 'C'))  then
      SMDBGrid1.Columns[i].Visible := False
    else
    if vTipo_RegPed = 'C' then
    begin
      if (SMDBGrid1.Columns[i].FieldName = 'NUM_PEDIDO') then
        SMDBGrid1.Columns[i].Title.Caption := 'Nº Ordem de Compra'
      else
      if (SMDBGrid1.Columns[i].FieldName = 'PEDIDO_CLIENTE') then
        SMDBGrid1.Columns[i].Visible := False
    end;
  end;
end;

procedure TfrmSel_Pedido_Tam.prc_Gravar_Nota;
var
  vMsgErro: String;
  vMsgAviso : WideString;
begin
  if fDMCadNotaFiscal.cdsPedido_Tam.IsEmpty then
    exit;

  fDMCadNotaFiscal.mPedidoAux.EmptyDataSet;

  vMsgErro  := '';
  vMsgAviso := '';
  try
    fDMCadNotaFiscal.cdsPedido_Tam.First;
    while not fDMCadNotaFiscal.cdsPedido_Tam.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
      begin
        if (fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger > 0) and (fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger <> fDMCadNotaFiscal.cdsPedido_TamID_VENDEDOR.AsInteger) then
        begin
          if fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount <= 0 then
            vMsgAviso := vMsgAviso + '*** Verificar o vendedor,  pedido diferente do cadastro do cliente... (Pedido: ' + fDMCadNotaFiscal.cdsPedido_TamNUM_PEDIDO.AsString + ')' + #13
          else
            vMsgAviso := vMsgAviso + '*** Verificar o vendedor,  Pedido diferente da nota ou de outros pedidos que foram copiados para a nota.. (Pedido: ' + fDMCadNotaFiscal.cdsPedido_TamNUM_PEDIDO.AsString + ')' + #13;
        end;
        if StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsPedido_TamVLR_UNITARIO.AsFloat)) <= 0 then
          vMsgErro := vMsgErro + #13 + ' Ped: ' + fDMCadNotaFiscal.cdsPedido_TamNUM_PEDIDO.AsString + ' Item: ' + fDMCadNotaFiscal.cdsPedido_TamITEM_ORIGINAL.AsString + ', não possui valor'
        else
        if (vTipo_RegPed = 'P') and (fDMCadNotaFiscal.cdsPedido_TamID_CFOP.AsInteger <= 0) and (fDMCadNotaFiscal.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S') then
          vMsgErro := vMsgErro + #13 + ' Ped: ' + fDMCadNotaFiscal.cdsPedido_TamNUM_PEDIDO.AsString + ' Item: ' + fDMCadNotaFiscal.cdsPedido_TamITEM_ORIGINAL.AsString + ',  não possui CFOP'
        else
        if (fDMCadNotaFiscal.cdsParametrosPERMITE_QTDMAIOR_PEDIDO.AsString <> 'S') and
           (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedido_TamQTD_AFATURAR.AsFloat)) >
           StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedido_TamclQtd_Restante.AsFloat))) then
          vMsgErro := vMsgErro + #13 + '*** Quantidade informada maior que a pendente, Ped: ' +
                      fDMCadNotaFiscal.cdsPedido_TamNUM_PEDIDO.AsString + ' Item: ' + fDMCadNotaFiscal.cdsPedido_TamITEM_Original.AsString
        else
        if StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsPedido_TamQTD_AFATURAR.AsFloat)) > StrToFloat(FormatFloat('0.000000',0)) then
        begin
          if not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Locate('Num_Pedido;Item_Original',VarArrayOf([fDMCadNotaFiscal.cdsPedido_TamNUM_PEDIDO.AsInteger,fDMCadNotaFiscal.cdsPedido_TamITEM_Original.AsInteger]),[locaseinsensitive]) then
            prc_Gravar_NotaItens;
        end
        else
          vMsgErro := vMsgErro + #13 + '*** Quantidade não informada, Ped: ' + fDMCadNotaFiscal.cdsPedido_TamNUM_PEDIDO.AsString +
                      ' Item: ' + fDMCadNotaFiscal.cdsPedido_TamITEM_Original.AsString;
      end;
      fDMCadNotaFiscal.cdsPedido_Tam.Next;
    end;
    if not(fDMCadNotaFiscal.mPedidoAux.IsEmpty) and (fDMCadNotaFiscal.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') then
    begin
      fDMCadNotaFiscal.mPedidoAux.First;
      while not fDMCadNotaFiscal.mPedidoAux.Eof do
      begin
        fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat + fDMCadNotaFiscal.mPedidoAuxVlr_Adiantamento.AsFloat));
        fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat + fDMCadNotaFiscal.mPedidoAuxVlr_Entrada.AsFloat));
        fDMCadNotaFiscal.mPedidoAux.next;
      end;
    end;

  except
    on E: exception do
    begin
      if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
      vMsgErro := E.Message;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  if trim(vMsgAviso) <> '' then
    MessageDlg(vMsgAviso, mtWarning, [mbOk], 0);
  if trim(vMsgErro) <> '' then
    MessageDlg(vMsgErro, mtError, [mbOk], 0)
  else
  if trim(vMsgErro) = '' then
    Close;
end;

function TfrmSel_Pedido_Tam.fnc_busca_Produto_Tipo(ID_Tipo: Integer): String;
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds := TSQLDataSet.Create(nil);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' SELECT NOME FROM PRODUTO  ' +
                         ' WHERE ID = ' + IntToStr(ID_Tipo);
    sds.Open;
    Result := sds.FieldByName('NOME').AsString;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmSel_Pedido_Tam.SMDBGrid1DblClick(Sender: TObject);
var
  vQtdAux : Real;
begin
  if not(fDMCadNotaFiscal.cdsPedido_Tam.Active) or (fDMCadNotaFiscal.cdsPedido_Tam.IsEmpty) then
    exit;

  fDMCadNotaFiscal.cdsPedido.Filtered := False;
  frmSel_Pedido_Tam_Dig := TfrmSel_Pedido_Tam_Dig.Create(self);
  try
    fDMCadNotaFiscal.cdsPedido.Filter   :=  'ID = ' + fDMCadNotaFiscal.cdsPedido_TamID.AsString + ' and  ITEM_ORIGINAL = ' + fDMCadNotaFiscal.cdsPedido_TamITEM_ORIGINAL.AsString;
    fDMCadNotaFiscal.cdsPedido.Filtered := True;
    frmSel_Pedido_Tam_Dig.fDMCadNotaFiscal    := fDMCadNotaFiscal;
    frmSel_Pedido_Tam_Dig.ShowModal;

    vQtdAux := 0;
    fDMCadNotaFiscal.cdsPedido.First;
    while not fDMCadNotaFiscal.cdsPedido.Eof do
    begin
      vQtdAux := vQtdAux + fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat;
      fDMCadNotaFiscal.cdsPedido.Next;
    end;

    fDMCadNotaFiscal.cdsPedido_Tam.Edit;
    fDMCadNotaFiscal.cdsPedido_TamQTD_AFATURAR.AsFloat := vQtdAux;
    fDMCadNotaFiscal.cdsPedido_Tam.Post;

  finally
    fDMCadNotaFiscal.cdsPedido.Filtered := False;
    FreeAndNil(frmSel_Pedido_Tam_Dig);
  end;
end;

procedure TfrmSel_Pedido_Tam.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmConsEstoque_Lote: TfrmConsEstoque_Lote;
begin
  if (Key = Vk_Return) and (fDMCadNotaFiscal.cdsParametrosUSA_LOTE_CONTROLE.AsString = 'S') then
    SMDBGrid1DblClick(Sender)
  else
  if (Key = Vk_F2) then
  begin
    ffrmConsEstoque_Lote := TfrmConsEstoque_Lote.Create(Self);
    ffrmConsEstoque_Lote.vID_Produto_Lote := fDMCadNotaFiscal.cdsPedido_TamID_PRODUTO.AsInteger;
    ffrmConsEstoque_Lote.vID_Filial_Lote  := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
    ffrmConsEstoque_Lote.ShowModal;
    FreeAndNil(ffrmConsEstoque_Lote);
  end;
end;

function TfrmSel_Pedido_Tam.fnc_Qtd_Pedidos(Tipo_Reg: String; ID_Cliente,
  Filial: Integer): Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'Select COUNT(1) CONTADOR FROM PEDIDO PE '
                       + ' INNER JOIN PEDIDO_ITEM PI ON (PE.ID = PI.ID) '
                       + ' WHERE PI.qtd_restante > 0 '
                       + ' AND PE.TIPO_REG = :TIPO_REG AND PE.ID_CLIENTE = :ID_CLIENTE '
                       + ' and pe.filial <> :FILIAL ';
    sds.ParamByName('TIPO_REG').AsString    := Tipo_Reg;
    sds.ParamByName('ID_CLIENTE').AsInteger := ID_Cliente;
    sds.ParamByName('FILIAL').AsInteger     := Filial;
    sds.Open;

    Result := sds.FieldByName('CONTADOR').AsInteger;
    sds.Close;

  finally
    FreeAndNil(sds);
  end;
end;

end.
