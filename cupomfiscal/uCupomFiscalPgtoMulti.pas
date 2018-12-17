unit uCupomFiscalPgtoMulti;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls,
  NxCollection, StdCtrls, Mask, ToolEdit, CurrEdit, DBCtrls, uDmCupomFiscal, RxLookup, rsDBUtils, dbXPress, SqlExpr, DB;

type
  TfCupomFiscalPgtoMulti = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    Panel2: TPanel;
    ceNumCartao: TCurrencyEdit;
    Label4: TLabel;
    btnInserir: TNxButton;
    Label15: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    btConfirmar: TNxButton;
    btCancelar: TNxButton;
    CurrencyEdit2: TCurrencyEdit;
    Edit1: TEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel4: TPanel;
    brCancelar: TNxButton;
    NxButton1: TNxButton;
    btGaveta: TNxButton;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label2: TLabel;
    btnCancelar: TNxButton;
    Label3: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    ceDesconto: TCurrencyEdit;
    ceVlrRecebido: TCurrencyEdit;
    ceVlrTotal: TCurrencyEdit;
    ceVlrTroco: TCurrencyEdit;
    ceFormaPgto: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure brCancelarClick(Sender: TObject);
    procedure ceNumCartaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ceVlrRecebidoExit(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure ceVlrRecebidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceFormaPgtoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceFormaPgtoEnter(Sender: TObject);
    procedure ceFormaPgtoExit(Sender: TObject);
  private
    { Private declarations }
    ctCupomFiscal: String;
    function posicionaProduto: Boolean;
    function calculaComanda: Currency;
    procedure Limpa_Campos;
    procedure Monta_sqlCupom_Cons(ID: Integer);
    procedure Calcula_Total;
    procedure IncluiItemCupom;
  public
    { Public declarations }
    fDmCupomFiscal: TDmCupomFiscal;
  end;

var
  fCupomFiscalPgtoMulti: TfCupomFiscalPgtoMulti;

implementation

uses uUtilPadrao, DmdDatabase;


{$R *.dfm}

function TfCupomFiscalPgtoMulti.posicionaProduto: Boolean;
begin
  Result := True;
  if (Trim(Edit1.Text) <> '') and (Length(Edit1.Text) > 9) then
  begin
    fDmCupomFiscal.cdsProduto.IndexFieldNames := 'COD_BARRA';
    if not (fDmCupomFiscal.cdsProduto.FindKey([Edit1.Text])) then
    begin
      Edit1.Clear;
      Edit1.SetFocus;
      Result := False;
    end;
  end
  else
  begin
    fDmCupomFiscal.cdsProduto.IndexFieldNames := 'ID';
    if (Trim(Edit1.Text) <> '') and not(fDmCupomFiscal.cdsProduto.FindKey([Edit1.Text])) then
    begin
      ShowMessage('Código / produto não encontrado!');
      RxDBLookupCombo1.ClearValue;
      Edit1.Clear;
      Edit1.SetFocus;
      Result := False;
    end;
  end;
end;

procedure TfCupomFiscalPgtoMulti.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fdmCupomFiscal.cdsProduto.Close;
  fdmCupomFiscal.mCupom.Close;
  fdmCupomFiscal.mCupomItens.Close;

  Action := caFree;
end;

procedure TfCupomFiscalPgtoMulti.brCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfCupomFiscalPgtoMulti.ceNumCartaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    if ceNumCartao.AsInteger > 0 then
    begin
      Monta_sqlCupom_Cons(ceNumCartao.AsInteger);
      if fdmCupomFiscal.cdsCupom_Cons.IsEmpty then
        ShowMessage('Comanda não localizada!')
      else
        btnInserirClick(Sender);
      ceNumCartao.SelectAll;
    end
    else
      Edit1.SetFocus;
  end;
end;

procedure TfCupomFiscalPgtoMulti.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    if  (Trim(Edit1.Text) <> '') then
    begin
      if not posicionaProduto then
        Exit;

      RxDBLookupCombo1.KeyValue := fDmCupomFiscal.cdsProdutoID.AsInteger;
     btConfirmarClick(Sender);
    end
    else
      if Trim(Edit1.Text) = '' then
        ceFormaPgto.SetFocus;
end;

procedure TfCupomFiscalPgtoMulti.RxDBLookupCombo1Change(Sender: TObject);
begin
  Edit1.Text := RxDBLookupCombo1.Value;
  Edit1Exit(Sender);
end;

procedure TfCupomFiscalPgtoMulti.btConfirmarClick(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Produto não informado!');
    Edit1.SetFocus;
    exit;
  end;
  posicionaProduto;
  if CurrencyEdit2.Value <= 0 then
  begin
    ShowMessage('Quantidade não informada!');
    CurrencyEdit2.SetFocus;
    exit;
  end;

  if fDmCupomFiscal.cdsProdutoPRECO_VENDA.AsCurrency > 0 then
  begin
    fDmCupomFiscal.mCupomItens.Insert;
    fDmCupomFiscal.mCupomItensNOME_PRODUTO.AsString := RxDBLookupCombo1.Text;
    fDmCupomFiscal.mCupomItensQTD.AsFloat           := CurrencyEdit2.Value;
    fDmCupomFiscal.mCupomItensVLR_UNIT.AsFloat      := fDmCupomFiscal.cdsProdutoPRECO_VENDA.AsCurrency;
    fDmCupomFiscal.mCupomItensVLR_TOTAL.AsFloat     := fDmCupomFiscal.mCupomItensVLR_UNIT.AsFloat *
                                                       fDmCupomFiscal.mCupomItensQTD.AsFloat;
    fDmCupomFiscal.mCupomItensID_PRODUTO.AsString   := Edit1.Text;
    fDmCupomFiscal.mCupomItens.Post;
    Limpa_Campos;
    Calcula_Total;
  end
  else
    ShowMessage('Valor unitário não cadastrado!');
end;

procedure TfCupomFiscalPgtoMulti.Limpa_Campos;
begin
  Edit1.Clear;
  RxDBLookupCombo1.ClearValue;
  CurrencyEdit2.Value := fDmCupomFiscal.cdsCupomParametrosQTD_PADRAO.AsCurrency;
  ceDesconto.Clear;
  ceVlrRecebido.Clear;
  ceVlrTroco.Clear;
  ceVlrTotal.Clear;
  ceFormaPgto.Clear;
  RxDBLookupCombo3.ClearValue;
end;

procedure TfCupomFiscalPgtoMulti.Edit1Exit(Sender: TObject);
begin
  case Length(Edit1.Text) > 12 of
    True : fDmCupomFiscal.cdsProduto.IndexFieldNames := 'COD_BARRA';
    False: fDmCupomFiscal.cdsProduto.IndexFieldNames := 'ID';
  end;

  if not posicionaProduto then
    Exit;

  if Trim(Edit1.Text) <> '' then
    RxDBLookupCombo1.KeyValue := fDmCupomFiscal.cdsProdutoID.AsInteger;
end;

procedure TfCupomFiscalPgtoMulti.btCancelarClick(Sender: TObject);
begin
  fDmCupomFiscal.mCupomItens.Delete;
  Calcula_Total;
end;

procedure TfCupomFiscalPgtoMulti.btnCancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este cartão da conta?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
    fDmCupomFiscal.mCupom.Delete;
end;

function TfCupomFiscalPgtoMulti.calculaComanda: Currency;
begin
  Result := 0;
  while not fDmCupomFiscal.mCupomItens.Eof do
  begin
    Result := Result + fDmCupomFiscal.mCupomItensVLR_TOTAL.AsCurrency;
    fDmCupomFiscal.mCupomItens.Next;
  end;
end;

procedure TfCupomFiscalPgtoMulti.btnInserirClick(Sender: TObject);
begin
  fDmCupomFiscal.prcLocalizar(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);

  fDmCupomFiscal.mCupom.Insert;
  fDmCupomFiscal.mCupomCARTAO.AsInteger   := ceNumCartao.AsInteger;
  fDmCupomFiscal.mCupomID_CUPOM.AsInteger := fDmCupomFiscal.cdsCupomFiscalID.AsInteger;
  fDmCupomFiscal.mCupomVLR_TOTAL.AsCurrency := fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency;
  fDmCupomFiscal.mCupom.Post;
  fDmCupomFiscal.cdsCupom_Itens.First;
  while not fDmCupomFiscal.cdsCupom_Itens.Eof do
  begin
    if fDmCupomFiscal.cdsCupom_ItensCANCELADO.AsString = 'S' then
    begin
      fDmCupomFiscal.cdsCupom_Itens.Next;
      Continue;
    end;
    fDmCupomFiscal.mCupomItens.Insert;
    fDmCupomFiscal.mCupomItensID_PRODUTO.AsInteger := fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger;
    fDmCupomFiscal.mCupomItensCARTAO.AsInteger  := ceNumCartao.AsInteger;
    fDmCupomFiscal.mCupomItensNOME_PRODUTO.AsString := fDmCupomFiscal.cdsCupom_ItensNOMEPRODUTO.AsString;
    fDmCupomFiscal.mCupomItensQTD.AsFloat       := fDmCupomFiscal.cdsCupom_ItensQTD.AsFloat;
    fDmCupomFiscal.mCupomItensVLR_UNIT.AsFloat  := fDmCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsCurrency;
    fDmCupomFiscal.mCupomItensVLR_TOTAL.AsFloat := fDmCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsCurrency;
    fDmCupomFiscal.mCupomItens.Post;
    fDmCupomFiscal.cdsCupom_Itens.Next;
  end;
  ceNumCartao.Clear;
  ceNumCartao.SetFocus;

  Calcula_Total;
  if vFilial <= 0 then
    vFilial := fDmCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;
end;

procedure TfCupomFiscalPgtoMulti.Monta_sqlCupom_Cons(ID: Integer);
begin
  fDmCupomFiscal.cdsCupom_Cons.Close;
  fDmCupomFiscal.sdsCupom_Cons.CommandText := ctCupomFiscal + ' WHERE TIPO = ' + QuotedStr('COM'); //QuotedStr(fDmCupomFiscal.vTipoCupom);
  if ID > 0 then
  begin
    fDmCupomFiscal.sdsCupom_Cons.CommandText := fDmCupomFiscal.sdsCupom_Cons.CommandText +
                                                ' AND NUM_CARTAO = ' + IntToStr(ID) +
                                                ' AND ID_TIPOCOBRANCA IS NULL';
  end;
  fDmCupomFiscal.cdsCupom_Cons.Open;
end;

procedure TfCupomFiscalPgtoMulti.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCupomFiscal);
  ctCupomFiscal := fDmCupomFiscal.sdsCupom_Cons.CommandText;
  if not fDmCupomFiscal.mCupom.Active then
  begin
    fDmCupomFiscal.mCupom.CreateDataSet;
    fDmCupomFiscal.mCupomItens.CreateDataSet;
    fDmCupomFiscal.mCupomItens.IndexFieldNames := 'CARTAO';
  end;
  fdmCupomFiscal.cdsProduto.Open;
end;

procedure TfCupomFiscalPgtoMulti.Calcula_Total;
var
  vSoma: Currency;
begin
  vSoma := 0;
  fDmCupomFiscal.mCupomItens.First;
  while not fDmCupomFiscal.mCupomItens.Eof do
  begin
    vSoma := vSoma + fDmCupomFiscal.mCupomItensVLR_TOTAL.AsCurrency;
    fDmCupomFiscal.mCupomItens.Next;
  end;
  vSoma := vSoma - ceDesconto.Value;

  ceVlrTotal.Value := vSoma;
  if (ceVlrRecebido.Value > 0) then
    if (ceVlrRecebido.Value < ceVlrTotal.Value) then
      ShowMessage('Valor recebido menor que valor total da venda!')
    else
      ceVlrTroco.Value := ceVlrRecebido.Value - ceVlrTotal.Value;
end;

procedure TfCupomFiscalPgtoMulti.ceVlrRecebidoExit(Sender: TObject);
begin
  Calcula_Total;
end;

procedure TfCupomFiscalPgtoMulti.NxButton1Click(Sender: TObject);
var
  vGeraNFCe: Boolean;
  ID: TTransactionDesc;
  sds: TSQLDataSet;
begin
  if RxDBLookupCombo3.Text = '' then
  begin
    ShowMessage('Forma de pagamento deve ser selecionada!');
    RxDBLookupCombo3.SetFocus;
    Exit;
  end;

  if ceVlrRecebido.Value = 0 then
  begin
    ShowMessage('Valor recebido deve ser informado!');
    ceVlrRecebido.SetFocus;
    Exit;
  end;

  if ceVlrRecebido.Value < ceVlrTotal.Value then
  begin
    ShowMessage('Valor recebido menor que valor total!');
    ceVlrRecebido.SetFocus;
    Exit;
  end;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('CUPOMFISCAL');
    sds.ExecSQL();
  
    fdmCupomFiscal.mCupom.First;
    while not fDmCupomFiscal.mCupom.Eof do
    begin
      fDmCupomFiscal.prcLocalizar(fDmCupomFiscal.mCupomID_CUPOM.AsInteger);
      fDmCupomFiscal.cdsCupomFiscal.Edit;
      fDmCupomFiscal.cdsCupomFiscalID_TIPOCOBRANCA.AsInteger := RxDBLookupCombo3.KeyValue;
      fDmCupomFiscal.cdsCupomFiscalID_CONDPGTO.AsInteger     := 1; ///a vista

      //07/062016
      vGeraNFCe := False;
      if (fDmCupomFiscal.cdsTipoCobranca.Locate('ID',fDmCupomFiscal.cdsCupomFiscalID_TIPOCOBRANCA.AsInteger,[loCaseInsensitive])) then
      begin
        vGeraNFCe := (fDmCupomFiscal.cdsTipoCobrancaGERAR_NFCE.AsString = 'S');
        if vGeraNFCe then
          fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger := 0;
      end;
      if (fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S') and (fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger <= 0) then
      begin
        fDmCupomFiscal.qProximoCupom.Close;
        fDmCupomFiscal.qProximoCupom.ParamByName('FILIAL').AsInteger := fDmCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;
        if vGeraNFCe then
          fDmCupomFiscal.qProximoCupom.ParamByName('TIPO').AsString := 'NFC'
        else
          fDmCupomFiscal.qProximoCupom.ParamByName('TIPO').AsString := 'CNF';
        fDmCupomFiscal.qProximoCupom.Open;
        fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger := fDmCupomFiscal.qProximoCupomNUMCUPOM.AsInteger + 1;
        if vGeraNFCe then
        begin
          fDmCupomFiscal.cdsCupomFiscalSERIE.AsString := fDmCupomFiscal.cdsFilialSERIE_NFCE.AsString;
          fDmCupomFiscal.cdsCupomFiscalTIPO.AsString  := 'NFC';
        end
        else
        begin
          fDmCupomFiscal.cdsCupomFiscalSERIE.Clear;
          fDmCupomFiscal.cdsCupomFiscalTIPO.AsString  := 'CNF';
        end;
      end;
      //*****

      fDmCupomFiscal.cdsCupomFiscal.Post;

      fDmCupomFiscal.mCupomItens.First;
      while not fDmCupomFiscal.mCupomItens.Eof do
      begin
        if fDmCupomFiscal.mCupomItensCARTAO.IsNull then
        begin
          IncluiItemCupom;
        end;
        fDmCupomFiscal.mCupomItens.Delete;
      end;

      fDmCupomFiscal.prc_Gravar_Financeiro_Cupom(0,fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency);

      fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
      fDmCupomFiscal.mCupom.Delete;
    end;

    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao gravar cupom: ' + #13 + e.Message);
    end;
  end;
  FreeAndNil(sds);

  Limpa_Campos;
end;

procedure TfCupomFiscalPgtoMulti.RxDBLookupCombo3Change(Sender: TObject);
begin
  if fDmCupomFiscal.cdsTipoCobrancaDINHEIRO.AsString = 'S' then
    ceVlrRecebido.Clear
  else
    ceVlrRecebido.Value := ceVlrTotal.Value;
  ceFormaPgto.AsInteger := RxDBLookupCombo3.KeyValue;
end;

procedure TfCupomFiscalPgtoMulti.ceVlrRecebidoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    NxButton1Click(Sender);
end;

procedure TfCupomFiscalPgtoMulti.ceFormaPgtoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    ceFormaPgtoExit(Sender);
end;

procedure TfCupomFiscalPgtoMulti.IncluiItemCupom;
var
  vItemAux: Integer;
begin
  fDmCupomFiscal.cdsCupom_Itens.Last;
  vItemAux := fDmCupomFiscal.cdsCupom_ItensItem.AsInteger;

  try
    fDmCupomFiscal.cdsProduto.IndexFieldNames := 'ID';
    fDmCupomFiscal.cdsProduto.FindKey([fDmCupomFiscal.mCupomItensID_PRODUTO.AsInteger]);

    fDmCupomFiscal.cdsCupom_Itens.Insert;
    fDmCupomFiscal.cdsCupom_ItensID.AsInteger         := fDmCupomFiscal.cdsCupomFiscalID.AsInteger;
    fDmCupomFiscal.cdsCupom_ItensITEM.AsInteger       := vItemAux + 1;
    fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger := fDmCupomFiscal.mCupomItensID_PRODUTO.AsInteger;
    fDmCupomFiscal.cdsCupom_ItensQTD.AsFloat          := fDmCupomFiscal.mCupomItensQTD.AsFloat;// / CurrencyEdit4.Value;
    fDmCupomFiscal.cdsCupom_ItensPERC_ICMS.AsFloat    := 0;
    fDmCupomFiscal.cdsCupom_ItensSITTRIB.AsString     := fDmCupomFiscal.cdsProdutoCODSITCF.AsString;
    fDmCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat := fDmCupomFiscal.mCupomItensVLR_UNIT.AsFloat;
    fDmCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat    := fDmCupomFiscal.mCupomItensVLR_TOTAL.AsFloat;
    fDmCupomFiscal.cdsCupom_ItensBASE_ICMS.AsFloat    := 0;
    fDmCupomFiscal.cdsCupom_ItensVLR_ICMS.AsFloat     := 0;
    if StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupom_ItensPERC_ICMS.AsFloat)) > 0 then
    begin
      fDmCupomFiscal.cdsCupom_ItensBASE_ICMS.AsFloat := fDmCupomFiscal.mCupomVLR_TOTAL.AsFloat;
      fDmCupomFiscal.cdsCupom_ItensVLR_ICMS.AsFloat  := StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupom_ItensBASE_ICMS.AsFloat *
                                                        fDmCupomFiscal.cdsCupom_ItensPERC_ICMS.AsFloat / 100));
    end;
    fDmCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger := 0;
    fDmCupomFiscal.cdsCupom_ItensORIGEM_PROD.AsString := fDmCupomFiscal.cdsProdutoORIGEM_PROD.AsString;
    fDmCupomFiscal.cdsCupom_ItensID_NCM.AsString      := fDmCupomFiscal.cdsProdutoID_NCM.AsString;
    fDmCupomFiscal.cdsCupom_ItensID_MOVESTOQUE.AsInteger := 0;
    fDmCupomFiscal.cdsCupom_ItensUNIDADE.AsString     := fDmCupomFiscal.cdsProdutoUnidade.AsString;
    fDmCupomFiscal.cdsCupom_ItensNOMEPRODUTO.AsString := fDmCupomFiscal.cdsProdutoNome.AsString;
    fDmCupomFiscal.cdsCupom_ItensCANCELADO.AsString   := 'N';

    if (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'CFI') then
    begin
//      prc_Busca_IBPT;
//      prc_Calcular_Tributos_Transparencia;
    end;

    fDmCupomFiscal.cdsCupom_Itens.Post;

    //Total
    fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat    := fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat +
                                                         fDmCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat;
    fDmCupomFiscal.cdsCupomFiscalVLR_ICMS.AsFloat     := fDmCupomFiscal.cdsCupomFiscalVLR_ICMS.AsFloat +
                                                         fDmCupomFiscal.cdsCupom_ItensVLR_ICMS.AsFloat;
    fDmCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsFloat := fDmCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsFloat +
                                                         fDmCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat;
    fDmCupomFiscal.cdsCupomFiscalBASE_ICMS.AsFloat    := fDmCupomFiscal.cdsCupomFiscalBASE_ICMS.AsFloat +
                                                         fDmCupomFiscal.cdsCupom_ItensBASE_ICMS.AsFloat;

    fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsFloat  := fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsFloat +
                                                         fDmCupomFiscal.cdsCupom_ItensVLR_TRIBUTO.AsFloat;

    fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_FEDERAL.AsFloat   := fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_FEDERAL.AsFloat +
                                                                  fDmCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_FEDERAL.AsFloat;
    fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_ESTADUAL.AsFloat  := fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_ESTADUAL.AsFloat +
                                                                  fDmCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_ESTADUAL.AsFloat;
    fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_MUNICIPAL.AsFloat := fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_MUNICIPAL.AsFloat +
                                                                  fDmCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat;
    //*****

    fDmCupomFiscal.cdsCupomFiscal.Post;
    fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
    fDmCupomFiscal.cdsCupomFiscal.Edit;
    fDmCupomFiscal.cdsCupom_Itens.Last;
  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível incluir o item, ' + E.Message + '! Clique para continuar!');
      fDmCupomFiscal.cdsCupom_Itens.CancelUpdates;
    end;
  end;
end;

procedure TfCupomFiscalPgtoMulti.ceFormaPgtoEnter(Sender: TObject);
begin
  if not fDmCupomFiscal.cdsTipoCobranca.Active then
    fDmCupomFiscal.cdsTipoCobranca.Open;
end;

procedure TfCupomFiscalPgtoMulti.ceFormaPgtoExit(Sender: TObject);
begin
  if ceFormaPgto.AsInteger > 0 then
  begin
    fDmCupomFiscal.cdsTipoCobranca.IndexFieldNames := 'ID';
    if fDmCupomFiscal.cdsTipoCobranca.FindKey([ceFormaPgto.AsInteger]) then
      RxDBLookupCombo3.KeyValue := ceFormaPgto.AsInteger
    else
      ShowMessage('Forma de pagamento não localizada!');
end;
end;

end.
