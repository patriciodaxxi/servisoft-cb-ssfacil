unit USel_NotaEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RxLookup, StdCtrls, UDMCadNotaFiscal, Buttons, Grids,
  DBGrids, SMDBGrid, DB, UCadNotaFiscal_Itens, RzPanel, Mask, ToolEdit,
  CurrEdit;

type
  TfrmSel_NotaEntrada = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    gbxConsumo: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    Shape1: TShape;
    Label1: TLabel;
    ckAgrupar: TCheckBox;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure prc_Consultar_NotaEntrada(ID_Nota : Integer = 0 ; Item_Nota : Integer =  0);
    procedure prc_Gravar_mNotaSelecionada;
    procedure prc_Gravar_NotaItens;
    procedure prc_Gravar_NotaNDevolvida;
    procedure prc_Gravar_mMObra_Nota;

    procedure prc_Gravar_NotaItens_Agr;
    procedure prc_Gravar_NotaNDevolvida_Agr;

    procedure prc_Montar_MatConsumo(Limpar: Boolean = True);
    procedure prc_Gravar_MatConsumo(ID_Produto: Integer ; Qtd: Real ; Tamanho : String);
    procedure prc_Gravar_mSelecionado;

    procedure Le_cdsNotaEntrada;
    procedure prc_Le_cdsNotaEntrada2;

    procedure prc_Gravar_mAgrupado;
    procedure prc_Gravar_mSelecionado_Nota;

    function fnc_Consumo : Boolean;
    
    procedure prc_Gravar_MaterialConsumo_2; //Quando o material de consumo é o primeiro item e foi clicado no botão de devolução de notas

  public
    { Public declarations }
    fDMCadNotaFiscal       : TDMCadNotaFiscal;

    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;

  end;

var
  frmSel_NotaEntrada: TfrmSel_NotaEntrada;

implementation

uses rsDBUtils, VarUtils, StrUtils, Math;

{$R *.dfm}

procedure TfrmSel_NotaEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Tag    := 0;
  Action := Cafree;
end;

procedure TfrmSel_NotaEntrada.FormShow(Sender: TObject);
var
  i : Integer;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (fDMCadNotaFiscal.cdsParametrosUSA_LOTE_CONTROLE.AsString <> 'S') and (SMDBGrid1.Columns[i].FieldName = 'Num_Lote_Controle') then
      SMDBGrid1.Columns[i].Visible := False;
  end;

  fDMCadNotaFiscal.cdsFornecedor.Close;
  fDMCadNotaFiscal.cdsFornecedor.Open;
  fDMCadNotaFiscal.mSelecionado_Nota.EmptyDataSet;
  gbxConsumo.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_CONSUMO.AsString = 'S');
  if (fDMCadNotaFiscal.cdsParametrosUSA_CONSUMO.AsString = 'S') then
  begin
    SMDBGrid2.DisableScroll;
    prc_Montar_MatConsumo;
    SMDBGrid2.EnableScroll;
  end;

  if not(fDMCadNotaFiscal.cdsNotaFiscal_Itens.IsEmpty) and (fDMCadNotaFiscal.mSelecionado_Nota.IsEmpty) then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
    begin
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_NTE.AsInteger > 0 then
        prc_Gravar_mSelecionado_Nota;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
    end;
  end;
  if Tag = 99 then
  begin
    fDMCadNotaFiscal.vID_CFOP := 0;
    Label4.Visible            := False;
    RxDBLookupCombo3.Visible  := False;
  end;
  if fDMCadNotaFiscal.vID_CFOP > 0 then
    RxDBLookupCombo3.KeyValue := fDMCadNotaFiscal.vID_CFOP;
  if (RxDBLookupCombo3.Text = '') and (fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger > 0) then
    RxDBLookupCombo3.KeyValue := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
end;

procedure TfrmSel_NotaEntrada.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar_NotaEntrada;
  prc_Le_cdsNotaEntrada2;
end;

procedure TfrmSel_NotaEntrada.prc_Consultar_NotaEntrada(ID_Nota : Integer = 0 ; Item_Nota : Integer =  0);
begin
  fDMCadNotaFiscal.cdsNotaEntrada.Close;
  if ID_Nota <= 0 then
  begin
    fDMCadNotaFiscal.sdsNotaEntrada.CommandText := fDMCadNotaFiscal.ctNotaEntrada
                                                 + ' AND ((NT.ID_CLIENTE = ' + fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsString + ')'
                                                 + '  OR (NT.ID_CLIENTETRIANG = ' + fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsString + '))';
    if CurrencyEdit1.AsInteger > 0 then
      fDMCadNotaFiscal.sdsNotaEntrada.CommandText := fDMCadNotaFiscal.sdsNotaEntrada.CommandText + ' AND NT.NUMNOTA = ' + IntToStr(CurrencyEdit1.AsInteger);

    if RxDBLookupCombo2.Text <> '' then
      fDMCadNotaFiscal.sdsNotaEntrada.CommandText := fDMCadNotaFiscal.sdsNotaEntrada.CommandText
                                               + ' AND NI.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    case ComboBox1.ItemIndex of
      0: fDMCadNotaFiscal.sdsNotaEntrada.CommandText := fDMCadNotaFiscal.sdsNotaEntrada.CommandText + ' AND CFOP.BENEFICIAMENTO = ' + QuotedStr('S');
    end;
  end
  else
    fDMCadNotaFiscal.sdsNotaEntrada.CommandText := fDMCadNotaFiscal.ctNotaEntrada + ' AND (NT.ID = ' + IntToStr(ID_Nota) + ')'
                                                 + ' AND (NI.ITEM = ' + IntToStr(Item_Nota) + ')';
  fDMCadNotaFiscal.cdsNotaEntrada.Open;
end;

procedure TfrmSel_NotaEntrada.prc_Gravar_mNotaSelecionada;
begin

end;

procedure TfrmSel_NotaEntrada.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaEntradaQTD_NOTAATUAL.AsFloat)) > 0 then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
  if (Field = fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER) then
  begin
    Background  := clYellow;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end
  else
  if (Field = fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE) then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

procedure TfrmSel_NotaEntrada.BitBtn2Click(Sender: TObject);
var
  vMsgErro: String;
  vContAux: Integer;
  vID_CFOPAux : Integer;
begin
  if (fDMCadNotaFiscal.cdsNotaEntrada.IsEmpty) and (Tag <> 95) then
    exit;
  if Tag <> 99 then
  begin
    if RxDBLookupCombo3.Text = '' then
    begin
      ShowMessage('Falta informar o CFOP!');
      RxDBLookupCombo3.SetFocus;
      exit;
    end;
  end;

  fDMCadNotaFiscal.mAgrupaMat.First;
  while not fDMCadNotaFiscal.mAgrupaMat.Eof do
  begin
    fDMCadNotaFiscal.mAgrupaMat_Nota.First;
    while not fDMCadNotaFiscal.mAgrupaMat_Nota.Eof do
      fDMCadNotaFiscal.mAgrupaMat_Nota.Delete;
    fDMCadNotaFiscal.mAgrupaMat.Delete;
  end;

  //foi feito para a nova função do retorno de materiais (Termojet)
  if Tag = 95 then
  begin
    prc_Consultar_NotaEntrada(fDMCadNotaFiscal.mMObra_NotaID_Nota.AsInteger,fDMCadNotaFiscal.mMObra_NotaItem_Nota.AsInteger);
    if fDMCadNotaFiscal.cdsNotaEntrada.IsEmpty then
      exit;
    if not fDMCadNotaFiscal.cdsNotaEntrada.IsEmpty then
    begin
      fDMCadNotaFiscal.cdsNotaEntrada.Edit;
      fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMObra_NotaQtd.AsFloat));
      fDMCadNotaFiscal.cdsNotaEntrada.Post;
    end;
    SMDBGrid1.SelectAllClick(SMDBGrid1);
  end;

  vContAux     := 0;
  vMsgErro     := '';
  vID_CFOPAux  := 0;
  fDMCadNotaFiscal.vQtd_MatPrima_Calc := 0;
  fDMCadNotaFiscal.vQtd_MatPrima_Sel  := 0;
  fDMCadNotaFiscal.cdsNotaEntrada.First;
  while not fDMCadNotaFiscal.cdsNotaEntrada.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat)) > 0) then
    begin
      if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat)) >
         StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat)) then
        vMsgErro := vMsgErro + #13 + '*** Quantidade informada maior que a pendente!'
      else
      begin
        if (fDMCadNotaFiscal.mMaterialConsumoID_Material.AsInteger > 0) and
           (fDMCadNotaFiscal.mMaterialConsumoID_Material.AsInteger = fDMCadNotaFiscal.cdsNotaEntradaID_PRODUTO.AsInteger) then
        begin
          fDMCadNotaFiscal.mMaterialConsumo.Edit;
          fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat +
                                                                     fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat));
          fDMCadNotaFiscal.mMaterialConsumo.Post;
        end;
        fDMCadNotaFiscal.vQtd_MatPrima_Sel := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.vQtd_MatPrima_Sel +  fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat));

        fDMCadNotaFiscal.cdsNotaEntrada.Edit;
        fDMCadNotaFiscal.cdsNotaEntradaQTD_NOTAATUAL.AsFloat := fDMCadNotaFiscal.cdsNotaEntradaQTD_NOTAATUAL.AsFloat +
                                                                fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat;
        fDMCadNotaFiscal.cdsNotaEntrada.Post;

        vContAux := vContAux + 1;
        //aqui 19/10/12
        if ckAgrupar.Checked then
        begin
          prc_Gravar_mAgrupado;
        end
        else
        begin
          if Tag = 99 then
          begin
            if (vID_CFOPAux > 0) and (vID_CFOPAux <> fDMCadNotaFiscal.cdsNotaEntradaID_CFOP.AsInteger) then
              MessageDlg('*** Nota ' + fDMCadNotaFiscal.cdsNotaEntradaNUMNOTA.AsString + ', com CFOP diferente, não será copiada!' , mtInformation, [mbOk], 0)
            else
              prc_Gravar_mMObra_Nota;
          end
          else
          begin
            prc_Gravar_NotaItens;
            prc_Gravar_NotaNDevolvida;
          end;
        end;
        //prc_Gravar_mSelecionado;
      end;
      vID_CFOPAux := fDMCadNotaFiscal.cdsNotaEntradaID_CFOP.AsInteger;
    end;
    fDMCadNotaFiscal.cdsNotaEntrada.Next;
  end;
  fDMCadNotaFiscal.vQtd_MatPrima_Calc := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdConsumo.AsFloat));
  if ckAgrupar.Checked then
  begin
    vContAux := 0;
    fDMCadNotaFiscal.mAgrupaMat.First;
    while not fDMCadNotaFiscal.mAgrupaMat.Eof do
    begin
      vContAux := vContAux + 1;
      prc_Gravar_NotaItens_Agr;
      prc_Gravar_NotaNDevolvida_Agr;
      fDMCadNotaFiscal.mAgrupaMat.Delete;
    end;
  end;
  if (vContAux > 0) and (Tag <> 95) then
    ShowMessage(IntToStr(vContAux) +  ' Item Copiado para a Nota!')
  else
  if (vContAux <= 0) then
    ShowMessage('Nenhum item copiado!');
  SMDBGrid1.UnSelectAllClick(Sender);
  //if Tag = 99 then
    //Close;
end;

procedure TfrmSel_NotaEntrada.prc_Gravar_NotaItens;
var
  vItemAux: Integer;
  vVlrAux: Real;
begin
  try
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;
    vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger + 1;

    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Insert;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger         := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger       := vItemAux;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger := fDMCadNotaFiscal.cdsNotaEntradaID_PRODUTO.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger    := RxDBLookupCombo3.KeyValue;
    ffrmCadNotaFiscal_Itens.RxDBLookupCombo1.KeyValue        := RxDBLookupCombo3.KeyValue;
    ffrmCadNotaFiscal_Itens.RxDBLookupCombo1Exit(ffrmCadNotaFiscal_Itens);
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;
    ffrmCadNotaFiscal_Itens.vNotaSelecionada   := True;
    ffrmCadNotaFiscal_Itens.prc_Move_Dados_Itens;

    //23/01/2018
    if fDMCadNotaFiscal.cdsFilialID_REGIME_TRIB.AsInteger = fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger then
    begin
      if fDMCadNotaFiscal.cdsNotaEntradaID_CSTICMS.AsInteger > 0 then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger := fDMCadNotaFiscal.cdsNotaEntradaID_CSTICMS.AsInteger;
    end;
    //**************************

    //05/04/2017
    if fDMCadNotaFiscal.cdsCFOPID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger then
      fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,([Locaseinsensitive]));
    if fDMCadNotaFiscal.cdsCFOPDEVOLUCAO.AsString = 'S' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaEntradaPERC_TRIBICMS.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaEntradaPERC_ICMS.AsFloat)) > 0 then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaEntradaPERC_ICMS.AsFloat));
    end;
    //Quando o emitente e o destinatário são do Regime Geral
    if (fDMCadNotaFiscal.cdsFilialSIMPLES.AsString <> 'S') and (fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger > 0) then
    begin
       fDMCadNotaFiscal.qRegime_Trib.Close;
       fDMCadNotaFiscal.qRegime_Trib.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger;
       fDMCadNotaFiscal.qRegime_Trib.Open;
       if fDMCadNotaFiscal.qRegime_TribCODIGO.AsInteger >= 3 then
       begin
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger := fDMCadNotaFiscal.cdsNotaEntradaID_CSTICMS.AsInteger;
       end;
    end;
    //**************

    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger      := fDMCadNotaFiscal.cdsNotaEntradaID_NCM.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString      := fDMCadNotaFiscal.cdsNotaEntradaUNIDADE.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat           := fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat      := fDMCadNotaFiscal.cdsNotaEntradaPERC_IPI.AsFloat;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat  := fDMCadNotaFiscal.cdsNotaEntradaVLR_UNITARIO.AsFloat;
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
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString     := fDMCadNotaFiscal.cdsNotaEntradaNOME_PRODUTO.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString       := fDMCadNotaFiscal.cdsNotaEntradaREFERENCIA.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger   := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString  := 'N';
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat       := fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
    if fDMCadNotaFiscal.cdsParametrosGRAVAR_INF_ADICIONAIS_NTE.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMCadNotaFiscal.cdsNotaEntradaOBS_COMPLEMENTAR.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NTE.AsInteger          := fDMCadNotaFiscal.cdsNotaEntradaID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_NTE.AsInteger        := fDMCadNotaFiscal.cdsNotaEntradaITEM.AsInteger;
    if trim(fDMCadNotaFiscal.cdsNotaEntradaNUM_LOTE_CONTROLE.AsString) <> '' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString := fDMCadNotaFiscal.cdsNotaEntradaNUM_LOTE_CONTROLE.AsString;
    //27/11/2018
    if fDMCadNotaFiscal.cdsNotaEntradaID_COR.AsInteger > 0 then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger := fDMCadNotaFiscal.cdsNotaEntradaID_COR.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_COR_COMBINACAO.AsString := fDMCadNotaFiscal.cdsNotaEntradaNOME_COR.AsString;
    end;
    //*********************
    ffrmCadNotaFiscal_Itens.vNotaSelecionada   := True;
    ffrmCadNotaFiscal_Itens.vPedidoSelecionado := False;
    ffrmCadNotaFiscal_Itens.BitBtn1Click(ffrmCadNotaFiscal_Itens);
    ffrmCadNotaFiscal_Itens.vNotaSelecionada   := False;

    if ffrmCadNotaFiscal_Itens.vGravacao_Ok then
    begin
      fDMCadNotaFiscal.cdsNotaEntrada.Edit;
      fDMCadNotaFiscal.cdsNotaEntradaQTDDEVOLVIDA.AsFloat  := fDMCadNotaFiscal.cdsNotaEntradaQTDDEVOLVIDA.AsFloat + fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat;
      fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat   := fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat - fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat;
      fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat := 0;
      fDMCadNotaFiscal.cdsNotaEntrada.Post;
    end;
  except
    on E: exception do
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

procedure TfrmSel_NotaEntrada.prc_Gravar_NotaNDevolvida;
var
  vItemAux: Integer;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Last;
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaITEM_NDEV.AsInteger;
  vItemAux := vItemAux + 1;

  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaID.AsInteger                := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaITEM.AsInteger              := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaITEM_NDEV.AsInteger         := vItemAux;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaID_FORNECEDOR.AsInteger     := fDMCadNotaFiscal.cdsNotaEntradaID_CLIENTE.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaFILIAL_NTE.AsInteger        := fDMCadNotaFiscal.cdsNotaEntradaFILIAL.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaID_NTE.AsInteger            := fDMCadNotaFiscal.cdsNotaEntradaID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaITEM_NTE.AsInteger          := fDMCadNotaFiscal.cdsNotaEntradaITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaQTD.AsFloat                 := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaDTEMISSAO_NTE.AsDateTime    := fDMCadNotaFiscal.cdsNotaEntradaDTEMISSAO.AsDateTime;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNFECHAVEACESSO_NTE.AsString := fDMCadNotaFiscal.cdsNotaEntradaNFECHAVEACESSO.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA.AsInteger   := fDMCadNotaFiscal.cdsNotaEntradaNUMNOTA.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaSERIE_ENTRADA.AsString      := fDMCadNotaFiscal.cdsNotaEntradaSERIE.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaMODELO.AsString             := '';
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNOMEFORNECEDOR.AsString     := fDMCadNotaFiscal.cdsNotaEntradaNOMECLIENTE.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaCNPJ_CPF.AsString           := fDMCadNotaFiscal.cdsNotaEntradaCNPJ_CPF.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Post;
end;

procedure TfrmSel_NotaEntrada.prc_Montar_MatConsumo(Limpar: Boolean = True);
begin
  fDMCadNotaFiscal.mMaterialConsumo.IndexFieldNames := 'ID_Material';
  if Tag <> 99 then
    if (fDMCadNotaFiscal.cdsParametrosUSA_CONSUMO.AsString = 'N') or (fDMCadNotaFiscal.cdsNotaFiscal_Itens.IsEmpty) then
      exit;
  if Limpar then
  begin
    fDMCadNotaFiscal.mMaterialConsumo.EmptyDataSet;
    if Tag = 99 then
    begin
      fDMCadNotaFiscal.mMObra_Ped.First;
      while not fDMCadNotaFiscal.mMObra_Ped.Eof do
      begin
        prc_Gravar_MatConsumo(fDMCadNotaFiscal.mMObra_PedID_Produto.AsInteger,StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMObra_PedQTD.AsFloat)),fDMCadNotaFiscal.mMObra_PedTamanho.AsString);
        fDMCadNotaFiscal.mMObra_Ped.Next;
      end;
    end;
  end;

  if Tag = 99 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
    begin
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensMAOOBRA.AsString = 'S' then
        prc_Gravar_MatConsumo(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)),fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString);
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
    end;
  end;

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
  begin
    {if (fDMCadNotaFiscal.cdsNotaFiscal_ItensMAOOBRA.AsString = 'S') and (Tag <> 99) then
      prc_Gravar_MatConsumo(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)),fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString)
    else
    begin
      if (fDMCadNotaFiscal.mMaterialConsumo.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger])) then
      begin
        fDMCadNotaFiscal.mMaterialConsumo.Edit;
        fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
        fDMCadNotaFiscal.mMaterialConsumo.Post;
      end;
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_NTE.AsInteger > 0 then
        prc_Gravar_mSelecionado_Nota;
    end;}
    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensMAOOBRA.AsString = 'S') and (Tag <> 99) then
      prc_Gravar_MatConsumo(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)),fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString)
    else
    begin
      if (fDMCadNotaFiscal.mMaterialConsumo.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger])) then
      begin
        fDMCadNotaFiscal.mMaterialConsumo.Edit;
        fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
        fDMCadNotaFiscal.mMaterialConsumo.Post;
      end
      else
        prc_Gravar_MaterialConsumo_2; //Quando o material de consumo é o primeiro item e foi clicado no botão de devolução de notas

    end;
    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_NTE.AsInteger > 0) and (Tag <> 99) then
      prc_Gravar_mSelecionado_Nota;

    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
  end;
  fDMCadNotaFiscal.mMObra_Nota.First;
  while not fDMCadNotaFiscal.mMObra_Nota.Eof do
  begin
    if (fDMCadNotaFiscal.mMaterialConsumo.FindKey([fDMCadNotaFiscal.mMObra_NotaID_Material.AsInteger])) then
    begin
      fDMCadNotaFiscal.mMaterialConsumo.Edit;
      fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat + fDMCadNotaFiscal.mMObra_NotaQtd.AsFloat));
      fDMCadNotaFiscal.mMaterialConsumo.Post;
    end;
    fDMCadNotaFiscal.mMObra_Nota.Next;
  end;
  //***********
end;

procedure TfrmSel_NotaEntrada.prc_Gravar_MatConsumo(ID_Produto: Integer ; Qtd: Real ; Tamanho : String);
var
  vAux: Real;
  vConsumo : Real;
begin
  fDMCadNotaFiscal.qProduto_Consumo.Close;
  fDMCadNotaFiscal.qProduto_Consumo.ParamByName('ID').AsInteger := ID_Produto;
  fDMCadNotaFiscal.qProduto_Consumo.Open;
  while not fDMCadNotaFiscal.qProduto_Consumo.Eof do
  begin
    if (fDMCadNotaFiscal.mMaterialConsumo.FindKey([fDMCadNotaFiscal.qProduto_ConsumoID_MATERIAL.AsInteger])) then
      fDMCadNotaFiscal.mMaterialConsumo.Edit
    else
    begin
      fDMCadNotaFiscal.mMaterialConsumo.Insert;
      fDMCadNotaFiscal.mMaterialConsumoID_Material.AsInteger := fDMCadNotaFiscal.qProduto_ConsumoID_MATERIAL.AsInteger;
      fDMCadNotaFiscal.mMaterialConsumoNomeMaterial.AsString := copy(fDMCadNotaFiscal.qProduto_ConsumoNOMEMATERIAL.AsString,1,Length(fDMCadNotaFiscal.qProduto_ConsumoNOMEMATERIAL.AsString));
    end;
    //fDMCadNotaFiscal.mMaterialConsumoQtdProduto.AsFloat := fDMCadNotaFiscal.mMaterialConsumoQtdProduto.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
    if fDMCadNotaFiscal.qProduto_ConsumoTIPO_CONSUMO.AsString = 'T' then
    begin
      fDMCadNotaFiscal.qProduto_Consumo_Tam.Close;
      fDMCadNotaFiscal.qProduto_Consumo_Tam.ParamByName('ID').AsInteger     := fDMCadNotaFiscal.qProduto_ConsumoID.AsInteger;
      fDMCadNotaFiscal.qProduto_Consumo_Tam.ParamByName('ITEM').AsInteger   := fDMCadNotaFiscal.qProduto_ConsumoITEM.AsInteger;
      fDMCadNotaFiscal.qProduto_Consumo_Tam.ParamByName('TAMANHO').AsString := Tamanho;
      fDMCadNotaFiscal.qProduto_Consumo_Tam.Open;
      if fDMCadNotaFiscal.qProduto_Consumo_Tam.IsEmpty then
        vConsumo := 0
      else
        vConsumo := fDMCadNotaFiscal.qProduto_Consumo_TamQTD_CONSUMO.AsFloat;
    end
    else
      vConsumo := fDMCadNotaFiscal.qProduto_ConsumoQTD_CONSUMO.AsFloat;
    fDMCadNotaFiscal.mMaterialConsumoQtdProduto.AsFloat := fDMCadNotaFiscal.mMaterialConsumoQtdProduto.AsFloat + Qtd;
    //vAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.qProduto_ConsumoQTD_CONSUMO.AsFloat));
    //vAux := StrToFloat(FormatFloat('0.00000',Qtd * fDMCadNotaFiscal.qProduto_ConsumoQTD_CONSUMO.AsFloat));
    vAux := StrToFloat(FormatFloat('0.0000',Qtd * vConsumo));
    fDMCadNotaFiscal.mMaterialConsumoQtdConsumo.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdConsumo.AsFloat + vAux));
    fDMCadNotaFiscal.mMaterialConsumo.Post;

    fDMCadNotaFiscal.qProduto_Consumo.Next;
  end;
end;

procedure TfrmSel_NotaEntrada.SMDBGrid2DblClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.mMaterialConsumoID_Material.AsInteger > 0 then
  begin
    RxDBLookupCombo2.KeyValue := fDMCadNotaFiscal.mMaterialConsumoID_Material.AsInteger;
    BitBtn1Click(sender);
    Le_cdsNotaEntrada;
  end;
end;

procedure TfrmSel_NotaEntrada.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdConsumo.AsFloat)) <> StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat)) then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clRed;
  end;
  if (Field = fDMCadNotaFiscal.mMaterialConsumoQtdConsumo) then
  begin
    Background  := clYellow;
    AFont.Style := [fsBold];
  end;
end;

procedure TfrmSel_NotaEntrada.Le_cdsNotaEntrada;
var
  vQtdOri: Real;
  vQtdAux: Real;
  vID_CFOP_Aux : array[1..2] of Integer;
  vQtd_Ori_Aux : array[1..2] of Real;
  vIndice : Integer;
  i : Integer;
begin
  vQtdOri  := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdConsumo.AsFloat - fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat));
  for vIndice := 1 to 2 do
    //vQtd_Ori_Aux[vIndice] := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.mMaterialConsumoQtdConsumo.AsFloat - fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat));
    vQtd_Ori_Aux[vIndice] := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdConsumo.AsFloat - fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat));
  if StrToFloat(FormatFloat('0.0000',vQtdOri)) <= 0 then
  begin
    prc_Le_cdsNotaEntrada2;
  end
  else
  begin
    fDMCadNotaFiscal.mMaterialConsumo.Edit;
    fDMCadNotaFiscal.mMaterialConsumoQtdAutomatica.AsFloat  := StrToFloat(FormatFloat('0.0000',0));
    fDMCadNotaFiscal.mMaterialConsumoQtdAutomatica2.AsFloat := StrToFloat(FormatFloat('0.0000',0));
    fDMCadNotaFiscal.mMaterialConsumo.Post;

    fDMCadNotaFiscal.cdsNotaEntrada.First;
    while not fDMCadNotaFiscal.cdsNotaEntrada.Eof do
    begin
      vIndice := 0;
      for i := 1 to 2 do
      begin
        if (vIndice = 0) and ((vID_CFOP_Aux[i] <= 0) or (vID_CFOP_Aux[i] = fDMCadNotaFiscal.cdsNotaEntradaID_CFOP.AsInteger)) then
        begin
          vIndice := i;
          vID_CFOP_Aux[i] := fDMCadNotaFiscal.cdsNotaEntradaID_CFOP.AsInteger;
        end;
      end;

      if StrToFloat(FormatFloat('0.0000',vQtd_Ori_Aux[vIndice])) <= 0 then
      begin
        if vIndice = 1 then i := 2
        else i := 1;
        if StrToFloat(FormatFloat('0.0000',vQtd_Ori_Aux[i])) <= 0 then
          fDMCadNotaFiscal.cdsNotaEntrada.Last;
      end
      else
      begin
        if fDMCadNotaFiscal.mSelecionado_Nota.Locate('ID_NTE;ITEM_NTE',VarArrayOf([fDMCadNotaFiscal.cdsNotaEntradaID.AsInteger,fDMCadNotaFiscal.cdsNotaEntradaITEM.AsInteger]),[locaseinsensitive]) then
        begin
          vQtdAux := 0;
          fDMCadNotaFiscal.cdsNotaEntrada.Edit;
          fDMCadNotaFiscal.cdsNotaEntradaQTD_NOTAATUAL.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mSelecionado_NotaQTD.AsFloat));
          fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat   := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat - fDMCadNotaFiscal.mSelecionado_NotaQTD.AsFloat));

          if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat)) <= 0 then
            fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat   := StrToFloat(FormatFloat('0.0000',0));
          fDMCadNotaFiscal.cdsNotaEntrada.Post;
        end;
        vQtdAux := fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat - fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat;
        if vQtdAux > 0 then
        begin
          if StrToFloat(FormatFloat('0.0000',vQtdAux)) > StrToFloat(FormatFloat('0.0000',vQtd_Ori_Aux[vIndice])) then
            vQtdAux := StrToFloat(FormatFloat('0.0000',vQtd_Ori_Aux[vIndice]));
          vQtd_Ori_Aux[vIndice] := StrToFloat(FormatFloat('0.0000',vQtd_Ori_Aux[vIndice] - vQtdAux));
          if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaEntradaQTD_NOTAATUAL.AsFloat)) <= 0 then
          begin
            fDMCadNotaFiscal.cdsNotaEntrada.Edit;
            fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat + vQtdAux));
            fDMCadNotaFiscal.cdsNotaEntrada.Post;

            fDMCadNotaFiscal.mMaterialConsumo.Edit;
            if vIndice = 1 then
              fDMCadNotaFiscal.mMaterialConsumoQtdAutomatica.AsFloat  := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdAutomatica.AsFloat + vQtdAux))
            else
              fDMCadNotaFiscal.mMaterialConsumoQtdAutomatica2.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdAutomatica2.AsFloat + vQtdAux));
            fDMCadNotaFiscal.mMaterialConsumo.Post;
          end;
        end;
      end;

      //termporário para testar o bloco acima
      {if StrToFloat(FormatFloat('0.00000',vQtdOri)) <= 0 then
        fDMCadNotaFiscal.cdsNotaEntrada.Last
      else
      begin
        if fDMCadNotaFiscal.mSelecionado_Nota.Locate('ID_NTE;ITEM_NTE',VarArrayOf([fDMCadNotaFiscal.cdsNotaEntradaID.AsInteger,fDMCadNotaFiscal.cdsNotaEntradaITEM.AsInteger]),[locaseinsensitive]) then
        begin
          vQtdAux := 0;
          fDMCadNotaFiscal.cdsNotaEntrada.Edit;
          fDMCadNotaFiscal.cdsNotaEntradaQTD_NOTAATUAL.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.mSelecionado_NotaQTD.AsFloat));
          fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat   := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat - fDMCadNotaFiscal.mSelecionado_NotaQTD.AsFloat));
          fDMCadNotaFiscal.cdsNotaEntrada.Post;
        end;
        vQtdAux := fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat - fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat;
        if vQtdAux > 0 then
        begin
          if StrToFloat(FormatFloat('0.00000',vQtdAux)) > StrToFloat(FormatFloat('0.00000',vQtdOri)) then
            vQtdAux := StrToFloat(FormatFloat('0.00000',vQtdOri));
          vQtdOri := StrToFloat(FormatFloat('0.00000',vQtdOri - vQtdAux));
          if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaEntradaQTD_NOTAATUAL.AsFloat)) <= 0 then
          begin
            fDMCadNotaFiscal.cdsNotaEntrada.Edit;
            fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat + vQtdAux));
            fDMCadNotaFiscal.cdsNotaEntrada.Post;

            fDMCadNotaFiscal.mMaterialConsumo.Edit;
            fDMCadNotaFiscal.mMaterialConsumoQtdAutomatica.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.mMaterialConsumoQtdAutomatica.AsFloat + vQtdAux));
            fDMCadNotaFiscal.mMaterialConsumo.Post;
          end;
        end;
      end;}
      fDMCadNotaFiscal.cdsNotaEntrada.Next;
    end;
  end;
end;

procedure TfrmSel_NotaEntrada.prc_Gravar_mSelecionado;
begin
  if fDMCadNotaFiscal.mSelecionado.Locate('ID_MATERIAL',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,([Locaseinsensitive])) then
    fDMCadNotaFiscal.mSelecionado.Edit
  else
  begin
    fDMCadNotaFiscal.mSelecionado.Insert;
    fDMCadNotaFiscal.mSelecionadoID_Material.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
    fDMCadNotaFiscal.mSelecionadoQtdNota.AsInteger     := 0;
  end;
  fDMCadNotaFiscal.mSelecionadoQtdNota.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mSelecionadoQtdNota.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
  fDMCadNotaFiscal.mSelecionado.Post;
end;

procedure TfrmSel_NotaEntrada.prc_Le_cdsNotaEntrada2;
begin
  while not fDMCadNotaFiscal.cdsNotaEntrada.Eof do
  begin
    //if fDMCadNotaFiscal.cdsNotaFiscal_Itens.Locate('ID_NTE;ITEM_NTE',VarArrayOf([fDMCadNotaFiscal.cdsNotaEntradaID.AsInteger,fDMCadNotaFiscal.cdsNotaEntradaITEM.AsInteger]),[locaseinsensitive]) then
    if fDMCadNotaFiscal.mSelecionado_Nota.Locate('ID_NTE;ITEM_NTE',VarArrayOf([fDMCadNotaFiscal.cdsNotaEntradaID.AsInteger,fDMCadNotaFiscal.cdsNotaEntradaITEM.AsInteger]),[locaseinsensitive]) then
    begin
      fDMCadNotaFiscal.cdsNotaEntrada.Edit;
      //fDMCadNotaFiscal.cdsNotaEntradaQTD_NOTAATUAL.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
      //fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat   := fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
      fDMCadNotaFiscal.cdsNotaEntradaQTD_NOTAATUAL.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mSelecionado_NotaQTD.AsFloat));
      fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat   := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat - fDMCadNotaFiscal.mSelecionado_NotaQTD.AsFloat));
      fDMCadNotaFiscal.cdsNotaEntrada.Post;
    end
    else
    if fDMCadNotaFiscal.qParametros_NFeCOPIAR_QTD_REST_ADEVOLVER.AsString = 'S' then
    begin
      fDMCadNotaFiscal.cdsNotaEntrada.Edit;
      fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat));
      fDMCadNotaFiscal.cdsNotaEntrada.Post;
    end;
    fDMCadNotaFiscal.cdsNotaEntrada.Next;
  end;
end;

procedure TfrmSel_NotaEntrada.prc_Gravar_mAgrupado;
var
  vIDAux: Integer;
  vVlrAux: Real;
begin
  fDMCadNotaFiscal.mAgrupaMat.Last;
  vIDAux := fDMCadNotaFiscal.mAgrupaMatID_Agrupa.AsInteger + 1;
  vVlrAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaEntradaVLR_UNITARIO.AsFloat));
  if fDMCadNotaFiscal.mAgrupaMat.Locate('Nome_Material;Unidade;Vlr_Unitario',
     VarArrayOf([fDMCadNotaFiscal.cdsNotaEntradaNOME_PRODUTO.AsString,fDMCadNotaFiscal.cdsNotaEntradaUNIDADE.AsString,vVlrAux]),[locaseinsensitive]) then
    fDMCadNotaFiscal.mAgrupaMat.Edit
  else
  begin
    fDMCadNotaFiscal.mAgrupaMat.Insert;
    fDMCadNotaFiscal.mAgrupaMatID_Agrupa.AsInteger    := vIDAux;
    fDMCadNotaFiscal.mAgrupaMatID_Material.AsInteger  := fDMCadNotaFiscal.cdsNotaEntradaID_PRODUTO.AsInteger;
    fDMCadNotaFiscal.mAgrupaMatUnidade.AsString       := fDMCadNotaFiscal.cdsNotaEntradaUNIDADE.AsString;
    fDMCadNotaFiscal.mAgrupaMatVlr_Unitario.AsFloat   := StrToFloat(FormatFloat('0.00000',vVlrAux));
    fDMCadNotaFiscal.mAgrupaMatNome_Material.AsString := fDMCadNotaFiscal.cdsNotaEntradaNOME_PRODUTO.AsString;
    fDMCadNotaFiscal.mAgrupaMatReferencia.AsString    := fDMCadNotaFiscal.cdsNotaEntradaREFERENCIA.AsString;
  end;
  fDMCadNotaFiscal.mAgrupaMatQtd.AsFloat  := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mAgrupaMatQtd.AsFloat + fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat));
  fDMCadNotaFiscal.mAgrupaMatID_NCM.AsInteger  := fDMCadNotaFiscal.cdsNotaEntradaID_NCM.AsInteger;
  fDMCadNotaFiscal.mAgrupaMatPerc_IPI.AsFloat              := fDMCadNotaFiscal.cdsNotaEntradaPERC_IPI.AsFloat;
  fDMCadNotaFiscal.mAgrupaMat.Post;

  fDMCadNotaFiscal.mAgrupaMat_Nota.Insert;
  fDMCadNotaFiscal.mAgrupaMat_NotaID_Agrupa.AsInteger      := fDMCadNotaFiscal.mAgrupaMatID_Agrupa.AsInteger;
  fDMCadNotaFiscal.mAgrupaMat_NotaID_NTE.AsInteger         := fDMCadNotaFiscal.cdsNotaEntradaID.AsInteger;
  fDMCadNotaFiscal.mAgrupaMat_NotaItem_NTE.AsInteger       := fDMCadNotaFiscal.cdsNotaEntradaITEM.AsInteger;
  fDMCadNotaFiscal.mAgrupaMat_NotaQtd.AsFloat              := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat));
  fDMCadNotaFiscal.mAgrupaMat_NotaNumNota_NTE.AsInteger    := fDMCadNotaFiscal.cdsNotaEntradaNUMNOTA.AsInteger;
  fDMCadNotaFiscal.mAgrupaMat_NotaSerie_NTE.AsString       := fDMCadNotaFiscal.cdsNotaEntradaSERIE.AsString;
  fDMCadNotaFiscal.mAgrupaMat_NotaDtEmissao_NTE.AsDateTime := fDMCadNotaFiscal.cdsNotaEntradaDTEMISSAO.AsDateTime;
  fDMCadNotaFiscal.mAgrupaMat_NotaID_Fornecedor.AsInteger  := fDMCadNotaFiscal.cdsNotaEntradaID_CLIENTE.AsInteger;
  fDMCadNotaFiscal.mAgrupaMat_NotaFilial.AsInteger         := fDMCadNotaFiscal.cdsNotaEntradaFILIAL.AsInteger;
  fDMCadNotaFiscal.mAgrupaMat_NotaNFeChaveAcesso.AsString  := fDMCadNotaFiscal.cdsNotaEntradaNFECHAVEACESSO.AsString;
  fDMCadNotaFiscal.mAgrupaMat_Nota.Post;

  fDMCadNotaFiscal.cdsNotaEntrada.Edit;
  fDMCadNotaFiscal.cdsNotaEntradaQTDDEVOLVIDA.AsFloat  := fDMCadNotaFiscal.cdsNotaEntradaQTDDEVOLVIDA.AsFloat + fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat;
  fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat   := fDMCadNotaFiscal.cdsNotaEntradaQTDRESTANTE.AsFloat - fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat;
  fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat := 0;
  fDMCadNotaFiscal.cdsNotaEntrada.Post;
end;

procedure TfrmSel_NotaEntrada.prc_Gravar_NotaItens_Agr;
var
  vItemAux: Integer;
  vVlrAux: Real;
begin
  try
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;
    vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger + 1;

    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Insert;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger         := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger       := vItemAux;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger := fDMCadNotaFiscal.mAgrupaMatID_Material.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger    := RxDBLookupCombo3.KeyValue;
    ffrmCadNotaFiscal_Itens.vNotaSelecionada := True;
    ffrmCadNotaFiscal_Itens.prc_Move_Dados_Itens;

    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger     := fDMCadNotaFiscal.mAgrupaMatID_NCM.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString     := fDMCadNotaFiscal.mAgrupaMatUnidade.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat          := fDMCadNotaFiscal.mAgrupaMatQtd.AsFloat;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat     := fDMCadNotaFiscal.mAgrupaMatPerc_IPI.AsFloat;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.mAgrupaMatVlr_Unitario.AsFloat;
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
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString     := fDMCadNotaFiscal.mAgrupaMatNome_Material.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString       := fDMCadNotaFiscal.mAgrupaMatReferencia.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger   := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString  := 'N';
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat       := fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := '';
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NTE.AsInteger          := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_NTE.AsInteger        := 99999;

    ffrmCadNotaFiscal_Itens.vNotaSelecionada   := True;
    ffrmCadNotaFiscal_Itens.vPedidoSelecionado := False;
    ffrmCadNotaFiscal_Itens.BitBtn1Click(ffrmCadNotaFiscal_Itens);
    ffrmCadNotaFiscal_Itens.vNotaSelecionada   := False;
  except
    on E: exception do
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

procedure TfrmSel_NotaEntrada.prc_Gravar_NotaNDevolvida_Agr;
var
  vItemAux: Integer;
begin
  fDMCadNotaFiscal.mAgrupaMat_Nota.First;
  while not fDMCadNotaFiscal.mAgrupaMat_Nota.Eof do
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Last;
    vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaITEM_NDEV.AsInteger;
    vItemAux := vItemAux + 1;

    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Insert;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaID.AsInteger                := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaITEM.AsInteger              := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaITEM_NDEV.AsInteger         := vItemAux;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaID_FORNECEDOR.AsInteger     := fDMCadNotaFiscal.mAgrupaMat_NotaID_Fornecedor.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaFILIAL_NTE.AsInteger        := fDMCadNotaFiscal.mAgrupaMat_NotaFilial.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaID_NTE.AsInteger            := fDMCadNotaFiscal.mAgrupaMat_NotaID_NTE.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaITEM_NTE.AsInteger          := fDMCadNotaFiscal.mAgrupaMat_NotaItem_NTE.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaQTD.AsFloat                 := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mAgrupaMat_NotaQtd.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaDTEMISSAO_NTE.AsDateTime    := fDMCadNotaFiscal.mAgrupaMat_NotaDtEmissao_NTE.AsDateTime;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNFECHAVEACESSO_NTE.AsString := fDMCadNotaFiscal.mAgrupaMat_NotaNFeChaveAcesso.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA.AsInteger   := fDMCadNotaFiscal.mAgrupaMat_NotaNumNota_NTE.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaSERIE_ENTRADA.AsString      := fDMCadNotaFiscal.mAgrupaMat_NotaSerie_NTE.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaMODELO.AsString             := '';
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Post;

    fDMCadNotaFiscal.mAgrupaMat_Nota.Delete;
  end;
end;

procedure TfrmSel_NotaEntrada.prc_Gravar_mSelecionado_Nota;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Eof do
  begin
    fDMCadNotaFiscal.mSelecionado_Nota.Insert;
    fDMCadNotaFiscal.mSelecionado_NotaID_NTE.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaID_NTE.AsInteger;
    fDMCadNotaFiscal.mSelecionado_NotaITEM_NTE.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaITEM_NTE.AsInteger;
    fDMCadNotaFiscal.mSelecionado_NotaQTD.AsFloat        := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaQTD.AsFloat));
    fDMCadNotaFiscal.mSelecionado_Nota.Post;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Next;
  end;
end;

procedure TfrmSel_NotaEntrada.prc_Gravar_mMObra_Nota;
var
  vItemAux: Integer;
  vVlrAux: Real;
begin
  try
    fDMCadNotaFiscal.mMObra_Nota.Insert;
    fDMCadNotaFiscal.mMObra_NotaID_Nota.AsInteger      := fDMCadNotaFiscal.cdsNotaEntradaID.AsInteger;
    fDMCadNotaFiscal.mMObra_NotaItem_Nota.AsInteger    := fDMCadNotaFiscal.cdsNotaEntradaITEM.AsInteger;
    fDMCadNotaFiscal.mMObra_NotaNum_Nota.AsInteger     := fDMCadNotaFiscal.cdsNotaEntradaNUMNOTA.AsInteger;
    fDMCadNotaFiscal.mMObra_NotaID_Material.AsInteger  := fDMCadNotaFiscal.cdsNotaEntradaID_PRODUTO.AsInteger;
    fDMCadNotaFiscal.mMObra_NotaNome_Material.AsString := fDMCadNotaFiscal.cdsNotaEntradaNOME_PRODUTO.AsString;

    fDMCadNotaFiscal.qDePara_CFOP.Close;
    fDMCadNotaFiscal.qDePara_CFOP.ParamByName('COD_CFOP_ENT').AsString := fDMCadNotaFiscal.cdsNotaEntradaCODCFOP.AsString;
    fDMCadNotaFiscal.qDePara_CFOP.Open;
    if fDMCadNotaFiscal.qDePara_CFOP.IsEmpty then
    begin
      fDMCadNotaFiscal.mMObra_NotaID_CFOP.AsInteger := 0 ;
      fDMCadNotaFiscal.mMObra_NotaCODCFOP.AsString  := '';
    end
    else
    begin
      fDMCadNotaFiscal.mMObra_NotaID_CFOP.AsInteger     := fDMCadNotaFiscal.qDePara_CFOPID_CFOP_GRA.AsInteger;
      fDMCadNotaFiscal.mMObra_NotaCODCFOP.AsString      := fDMCadNotaFiscal.qDePara_CFOPCOD_CFOP_GRA.AsString;
      fDMCadNotaFiscal.mMObra_NotaID_CFOP_Ped.AsInteger := fDMCadNotaFiscal.qDePara_CFOPID_CFOP_PED.AsInteger;
      fDMCadNotaFiscal.mMObra_NotaCODCFOP_Ped.AsString  := fDMCadNotaFiscal.qDePara_CFOPCOD_CFOP_PED.AsString;
    end;
    fDMCadNotaFiscal.mMObra_NotaQtd.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaEntradaQTD_ADEVOLVER.AsFloat));
    fDMCadNotaFiscal.mMObra_Nota.Post;
    fDMCadNotaFiscal.qDePara_CFOP.Close;
  except
    on E: exception do
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

procedure TfrmSel_NotaEntrada.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Consumo;
end;

function TfrmSel_NotaEntrada.fnc_Consumo: Boolean;
var
  vMSG : String;
begin
  vMSG   := '';
  Result := True;
  fDMCadNotaFiscal.mMaterialConsumo.First;
  while not fDMCadNotaFiscal.mMaterialConsumo.Eof do
  begin
    if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdConsumo.AsFloat)) <> StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat)) then
      vMSG := vMSG + #13 + '*** Material com consumo informado diferente do calculado (' + fDMCadNotaFiscal.mMaterialConsumoNomeMaterial.AsString + ')';
    fDMCadNotaFiscal.mMaterialConsumo.Next;
  end;
  if trim(vMSG) <> '' then
  begin
    if MessageDlg(vMSG + #13 + #13 + ' Confirma?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      Result := False;
  end;
end;

procedure TfrmSel_NotaEntrada.prc_Gravar_MaterialConsumo_2;
begin
  if Tag <> 99 then
  begin
    fDMCadNotaFiscal.mMaterialConsumo.Insert;
    fDMCadNotaFiscal.mMaterialConsumoID_Material.AsInteger  := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
    fDMCadNotaFiscal.mMaterialConsumoNomeMaterial.AsString  := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString;
    fDMCadNotaFiscal.mMaterialConsumoQtdProduto.AsFloat     := 0;
    fDMCadNotaFiscal.mMaterialConsumoQtdConsumo.AsFloat     := 0;
    fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    fDMCadNotaFiscal.mMaterialConsumoQtdAutomatica.AsFloat  := 0;
    fDMCadNotaFiscal.mMaterialConsumoQtdAutomatica2.AsFloat := 0;
    fDMCadNotaFiscal.mMaterialConsumo.Post;
  end;
end;

procedure TfrmSel_NotaEntrada.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    BitBtn1Click(Sender);
end;

end.
