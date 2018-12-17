unit UBaixaOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOP, StdCtrls, RxLookup, Mask,
  ToolEdit, CurrEdit, NxCollection, SqlExpr, dbXPress, DB;

type
  TfrmBaixaOP = class(TForm)
    Label6: TLabel;
    edtReferencia: TEdit;
    edtNome_Produto: TEdit;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label5: TLabel;
    Edit1: TEdit;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    ComboBox1: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Label9: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    Label10: TLabel;
    CurrencyEdit6: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtReferenciaExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Limpa_Campos;
    procedure prc_Gravar_Baixa_Mat;
  public
    { Public declarations }
    fDMCadOP: TDMCadOP;
  end;

var
  frmBaixaOP: TfrmBaixaOP;

implementation

uses USel_OP, USel_Produto, uUtilPadrao, UDMEstoque, DmdDatabase;

{$R *.dfm}

procedure TfrmBaixaOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmBaixaOP.edtReferenciaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := 0;
    vReferencia_Pos := '';
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    if vReferencia_Pos <> '' then
       edtReferencia.Text := vReferencia_Pos;
  end
  else
  if (key = VK_RETURN) and (trim(edtReferencia.Text) <> '') then
    RxDBLookupCombo1.SetFocus;
end;

procedure TfrmBaixaOP.edtReferenciaExit(Sender: TObject);
begin
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  fDMCadOP.prc_Abrir_qProduto(edtReferencia.Text,0);
  edtNome_Produto.Text := fDMCadOP.qProdutoNOME.AsString;
  if (trim(edtReferencia.Text) <> '') and (fDMCadOP.qProduto.IsEmpty) then
  begin
    MessageDlg('*** Referência não encontrada!', mtError, [mbOk], 0);
    edtReferencia.SetFocus;
  end
  else
  begin
    fDMCadOP.vNum_OP  := 0;
    fDMCadOP.vItem_OP := 0;
    fDMCadOP.vQtd_OP  := 0;
    fDMCadOP.vID_OP   := 0;
    fDMCadOP.vQtd_OP_Prod := 0;
    fDMCadOP.cdsSel_OP.Close;
    fDMCadOP.sdsSel_OP.CommandText := fDMCadOP.ctSel_OP
                                   + ' AND IT.dtbaixa IS NULL '
                                   + ' and IT.dtinicial IS NOT NULL ';
    fDMCadOP.sdsSel_OP.ParamByName('ID_PRODUTO').AsInteger := fDMCadOP.qProdutoID.AsInteger;
    fDMCadOP.cdsSel_OP.Open;
    if fDMCadOP.cdsSel_OP.RecordCount > 1 then
    begin
      frmSel_OP := TfrmSel_OP.Create(self);
      frmSel_OP.fDMCadOP       := fDMCadOP;
      frmSel_OP.vID_Produto_OP := fDMCadOP.qProdutoID.AsInteger;
      frmSel_OP.ShowModal;
    end
    else
    if not fDMCadOP.cdsSel_OP.IsEmpty then
    begin
      fDMCadOP.vNum_OP  := fDMCadOP.cdsSel_OPNUM_OP.AsInteger;
      fDMCadOP.vItem_OP := fDMCadOP.cdsSel_OPITEM.AsInteger;
      fDMCadOP.vQtd_OP  := fDMCadOP.cdsSel_OPQTD_APRODUZIR.AsInteger;
      fDMCadOP.vID_OP   := fDMCadOP.cdsSel_OPID.AsInteger;
      fDMCadOP.vQtd_OP_Prod := fDMCadOP.cdsSel_OPQTD_PRODUZIDO.AsInteger;
      fDMCadOP.vQtd_Saldo   := fDMCadOP.cdsSel_OPSALDO.AsInteger;
    end;
    CurrencyEdit1.AsInteger := fDMCadOP.vNum_OP;
    CurrencyEdit2.AsInteger := fDMCadOP.vItem_OP;
    CurrencyEdit3.AsInteger := fDMCadOP.vQtd_Saldo;
    CurrencyEdit4.AsInteger := fDMCadOP.vQtd_OP;
    CurrencyEdit5.AsInteger := fDMCadOP.vQtd_OP_Prod;
    CurrencyEdit6.AsInteger := fDMCadOP.vQtd_Saldo;
    if fDMCadOP.qProdutoID_LOCAL_ESTOQUE_PROD.AsInteger > 0 then
      RxDBLookupCombo1.KeyValue := fDMCadOP.qProdutoID_LOCAL_ESTOQUE_PROD.AsInteger
    else
      RxDBLookupCombo1.KeyValue := fnc_Verificar_Local(fDMCadOP.qParametrosUSA_LOCAL_ESTOQUE.AsString);
  end;
end;

procedure TfrmBaixaOP.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBaixaOP.btnConfirmarClick(Sender: TObject);
var
  vMsgAux: String;
  ID: TTransactionDesc;
  fDMEstoque: TDMEstoque;
  vID_Estoque: Integer;
  vItemAux: Integer;
  vNumLote_Controle : String;
begin

  if ComboBox1.ItemIndex = 2 then
  begin
    RxDBLookupCombo1.ClearValue;
    CurrencyEdit3.Clear;
    Edit1.Clear;
  end;
  vMsgAux := '';
  if fDMCadOP.qParametros_EstID_LOCAL_ESTOQUE_MAT.AsInteger <= 0 then
    vMsgAux := vMsgAux + #13 + '*** Local do Estoque do material não informado nos parametros!';
  if fDMCadOP.qParametros_EstID_LOCAL_ESTOQUE_MAT_CONS.AsInteger <= 0 then
    vMsgAux := vMsgAux + #13 + '*** Local do Estoque do material de consumo não informado nos parametros!';
  if fDMCadOP.qParametros_EstID_LOCAL_ESTOQUE_SEMI.AsInteger <= 0 then
    vMsgAux := vMsgAux + #13 + '*** Local do Estoque do Semi Acabado não informado nos parametros!';
  if trim(edtReferencia.Text) = '' then
    vMsgAux := vMsgAux + #13 + '*** Referência não informada!';
  if (trim(RxDBLookupCombo1.Text) = '') and (ComboBox1.ItemIndex <= 1) then
    vMsgAux := vMsgAux + #13 + '*** Local não informado!';
  if (CurrencyEdit3.AsInteger <= 0) and (ComboBox1.ItemIndex <= 1) then
    vMsgAux := vMsgAux + #13 + '*** Quantidade não informada!';
  if DateEdit1.Date <= 10 then
    vMsgAux := vMsgAux + #13 + '*** Data da baixa não informada!';
  fDMCadOP.prc_Localizar(fDMCadOP.vID_OP);
  if fDMCadOP.cdsOP.IsEmpty then
    vMsgAux := vMsgAux + #13 + '*** OP não encontrada!';
  if not fDMCadOP.cdsOP_Itens.Locate('ID;ITEM',VarArrayOf([fDMCadOP.cdsOPID.AsInteger,fDMCadOP.vItem_OP]),[locaseinsensitive]) then
    vMsgAux := vMsgAux + #13 + '*** Item da OP não encontrado!';
  if ComboBox1.ItemIndex < 0 then
    vMsgAux := vMsgAux + #13 + '*** Campo de Encerrar OP não foi informado!';
  if (CurrencyEdit3.AsInteger >= fDMCadOP.vQtd_Saldo) and (ComboBox1.ItemIndex = 2) then
    vMsgAux := vMsgAux + #13 + '*** Quantidade para cancelar o Saldo maior que qtd. Saldo!';
  if trim(vMsgAux) <> '' then
  begin
    MessageDlg(vMsgAux, mtError, [mbOk], 0);
    exit;
  end;
  if (CurrencyEdit3.AsInteger < fDMCadOP.vQtd_Saldo) and (ComboBox1.ItemIndex = 0) then
    if MessageDlg('Quantidade informada menor que o saldo a produzir' + #13
                  + 'Confirma o encerramento da OP?' ,mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  if (CurrencyEdit3.AsInteger >= fDMCadOP.vQtd_Saldo) and (ComboBox1.ItemIndex = 1) then
    if MessageDlg('Quantidade informada maior que o saldo a produzir' + #13
                  + 'E a opção é para não encerrar a OP,' + #13
                  + 'Confirmar Opção?' ,mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  if (CurrencyEdit3.AsInteger > 0) and (ComboBox1.ItemIndex = 2) then
    if MessageDlg('Confirma o encerramento da OP sem produzir o saldo de ' + CurrencyEdit3.Text + '?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;

  fDMCadOP.prc_Abrir_qProduto('',fDMCadOP.cdsOP_ItensID_PRODUTO.AsInteger);

  fDMEstoque := TDMEstoque.Create(Self);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    vID_Estoque := 0;
    if ComboBox1.ItemIndex < 2 then
    begin
      vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(0,
                                                   fDMCadOP.cdsOPFILIAL.AsInteger,
                                                   RxDBLookupCombo1.KeyValue,
                                                   fDMCadOP.cdsOP_ItensID_PRODUTO.AsInteger,
                                                   fDMCadOP.cdsOPNUM_OP.AsInteger,
                                                   0,
                                                   0,
                                                   0,0,
                                                   'E','OPR',
                                                   fDMCadOP.qProdutoUnidade.AsString,
                                                   fDMCadOP.qProdutoUnidade.AsString,
                                                   '',
                                                   '',
                                                   DateEdit1.Date,
                                                   0,
                                                   CurrencyEdit3.value,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   CurrencyEdit3.value,
                                                   0,
                                                   0,0,'',
                                                   0,Edit1.Text,'N',0); //ver aqui sobre Lote Controle  04/11/2015
                                                   //aqui é sem cor, Ciex usa
    end;
    fDMCadOP.cdsOP_Itens.Edit;
    if (ComboBox1.ItemIndex = 0) or (ComboBox1.ItemIndex = 2) then
      fDMCadOP.cdsOP_ItensDTBAIXA.AsDateTime    := DateEdit1.Date
    else
      fDMCadOP.cdsOP_ItensDTBAIXA.Clear;
    fDMCadOP.cdsOP_ItensQTD_PRODUZIDO.AsInteger := fDMCadOP.cdsOP_ItensQTD_PRODUZIDO.AsInteger + CurrencyEdit3.AsInteger;
    fDMCadOP.cdsOP_Itens.Post;

    fDMCadOP.prc_Abrir_OP_Itens_Baixa(fDMCadOP.cdsOPID.AsInteger,fDMCadOP.cdsOP_ItensITEM.AsInteger,0);
    vItemAux := fDMCadOP.fnc_Proximo_Item_Baixa(fDMCadOP.cdsOPID.AsInteger,fDMCadOP.cdsOP_ItensITEM.AsInteger);

    fDMCadOP.cdsOP_Itens_Baixa.Insert;
    fDMCadOP.cdsOP_Itens_BaixaID.AsInteger            := fDMCadOP.cdsOPID.AsInteger;
    fDMCadOP.cdsOP_Itens_BaixaITEM.AsInteger          := fDMCadOP.cdsOP_ItensITEM.AsInteger;
    fDMCadOP.cdsOP_Itens_BaixaITEM_BAIXA.AsInteger    := vItemAux + 1;
    fDMCadOP.cdsOP_Itens_BaixaQTD_PRODUZIDA.AsInteger := CurrencyEdit3.AsInteger;
    fDMCadOP.cdsOP_Itens_BaixaID_MOVESTOQUE.AsInteger := vID_Estoque;
    fDMCadOP.cdsOP_Itens_BaixaDATA.AsDateTime         := DateEdit1.Date;
    fDMCadOP.cdsOP_Itens_BaixaNUM_LOTE_CONTROLE.AsString := Edit1.Text;
    if trim(RxDBLookupCombo1.Text) <> '' then
      fDMCadOP.cdsOP_Itens_BaixaID_LOCAL_ESTOQUE.AsInteger := RxDBLookupCombo1.KeyValue;
    fDMCadOP.cdsOP_Itens_Baixa.Post;

    //18/06/2016   Baixa o estoque da materia prima e do semi acabado
    if fDMCadOP.qProdutoBAIXA_ESTOQUE_MAT.AsString = 'S' then
    begin
      vID_Estoque := 0;
      fDMCadOP.prc_Abrir_OP_Itens_Baixa_Mat(fDMCadOP.cdsOP_Itens_BaixaID.AsInteger,fDMCadOP.cdsOP_Itens_BaixaITEM.AsInteger,fDMCadOP.cdsOP_Itens_BaixaITEM_BAIXA.AsInteger);
      fDMCadOP.cdsOP_Itens_Baixa_Mat.Last;
      vItemAux := fDMCadOP.cdsOP_Itens_Baixa_MatITEM_MAT.AsInteger;
      fDMCadOP.cdsProduto_Consumo.Close;
      fDMCadOP.sdsProduto_Consumo.ParamByName('ID_PRODUTO').AsInteger := fDMCadOP.cdsOP_ItensID_PRODUTO.AsInteger;
      fDMCadOP.cdsProduto_Consumo.Open;
      fDMCadOP.cdsProduto_Consumo.First;
      while not fDMCadOP.cdsProduto_Consumo.Eof do
      begin
        vItemAux := vItemAux + 1;
        fDMCadOP.cdsOP_Itens_Baixa_Mat.Insert;
        fDMCadOP.cdsOP_Itens_Baixa_MatID.AsInteger   := fDMCadOP.cdsOP_Itens_BaixaID.AsInteger;
        fDMCadOP.cdsOP_Itens_Baixa_MatITEM.AsInteger := fDMCadOP.cdsOP_Itens_BaixaITEM.AsInteger;
        fDMCadOP.cdsOP_Itens_Baixa_MatITEM_BAIXA.AsInteger    := fDMCadOP.cdsOP_Itens_BaixaITEM_BAIXA.AsInteger;
        fDMCadOP.cdsOP_Itens_Baixa_MatITEM_MAT.AsInteger      := vItemAux;
        fDMCadOP.cdsOP_Itens_Baixa_MatID_PRODUTO.AsInteger    := fDMCadOP.cdsProduto_ConsumoID_MATERIAL.AsInteger;
        fDMCadOP.cdsOP_Itens_Baixa_MatID_COR.AsInteger        := 0;
        fDMCadOP.cdsOP_Itens_Baixa_MatQTD_CONSUMO.AsFloat     := StrToFloat(FormatFloat('0.0000',fDMCadOP.cdsProduto_ConsumoQTD_CONSUMO.AsFloat));
        fDMCadOP.cdsOP_Itens_Baixa_MatQTD.AsFloat             := StrToFloat(FormatFloat('0.0000',fDMCadOP.cdsProduto_ConsumoQTD_CONSUMO.AsFloat * fDMCadOP.cdsOP_Itens_BaixaQTD_PRODUZIDA.AsFloat));
        fDMCadOP.cdsOP_Itens_Baixa_MatID_MOVESTOQUE.AsInteger := 0;
        fDMCadOP.cdsOP_Itens_Baixa_MatDATA.AsDateTime         := DateEdit1.Date;
        vNumLote_Controle := '';
        if fDMCadOP.cdsProduto_ConsumoID_LOCAL_ESTOQUE_PROD.AsInteger > 0 then
          fDMCadOP.cdsOP_Itens_Baixa_MatID_LOCAL_ESTOQUE.AsInteger := fDMCadOP.cdsProduto_ConsumoID_LOCAL_ESTOQUE_PROD.AsInteger
        else
        if fDMCadOP.cdsProduto_ConsumoTIPO_REG.AsString = 'M' then
          fDMCadOP.cdsOP_Itens_Baixa_MatID_LOCAL_ESTOQUE.AsInteger := fDMCadOP.qParametros_EstID_LOCAL_ESTOQUE_MAT.AsInteger
        else
        if fDMCadOP.cdsProduto_ConsumoTIPO_REG.AsString = 'C' then
          fDMCadOP.cdsOP_Itens_Baixa_MatID_LOCAL_ESTOQUE.AsInteger := fDMCadOP.qParametros_EstID_LOCAL_ESTOQUE_MAT_CONS.AsInteger
        else
        if fDMCadOP.cdsProduto_ConsumoTIPO_REG.AsString = 'S' then
          fDMCadOP.cdsOP_Itens_Baixa_MatID_LOCAL_ESTOQUE.AsInteger := fDMCadOP.qParametros_EstID_LOCAL_ESTOQUE_SEMI.AsInteger;
        if fDMCadOP.cdsProduto_ConsumoTIPO_REG.AsString = 'S' then
          vNumLote_Controle := fDMCadOP.cdsOP_Itens_BaixaNUM_LOTE_CONTROLE.AsString;
        fDMCadOP.cdsOP_Itens_Baixa_Mat.Post;

        vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(0,
                                                     fDMCadOP.cdsOPFILIAL.AsInteger,
                                                     fDMCadOP.cdsOP_Itens_Baixa_MatID_LOCAL_ESTOQUE.AsInteger,
                                                     fDMCadOP.cdsOP_Itens_Baixa_MatID_PRODUTO.AsInteger,
                                                     fDMCadOP.cdsOPNUM_OP.AsInteger,
                                                     0,
                                                     0,
                                                     0,0,
                                                     'S','OPM',
                                                     fDMCadOP.cdsProduto_ConsumoUNIDADE.AsString,
                                                     fDMCadOP.cdsProduto_ConsumoUNIDADE.AsString,
                                                     '',
                                                     '',
                                                     fDMCadOP.cdsOP_Itens_Baixa_MatDATA.AsDateTime,
                                                     0,
                                                     StrToFloat(FormatFloat('0.0000',fDMCadOP.cdsOP_Itens_Baixa_MatQTD.AsFloat)),
                                                     0,
                                                     0,
                                                     0,
                                                     0,
                                                     0,
                                                     StrToFloat(FormatFloat('0.0000',fDMCadOP.cdsOP_Itens_Baixa_MatQTD.AsFloat)),
                                                     0,
                                                     0,0,'',
                                                     0,vNumLote_Controle,'N',0); //ver aqui sobre Lote Controle  04/11/2015

        fDMCadOP.cdsOP_Itens_Baixa_Mat.Edit;
        fDMCadOP.cdsOP_Itens_Baixa_MatID_MOVESTOQUE.AsInteger := vID_Estoque;
        fDMCadOP.cdsOP_Itens_Baixa_Mat.Post;
        fDMCadOP.cdsProduto_Consumo.Next;
      end;
      if vID_Estoque > 0 then
      begin
        fDMCadOP.cdsOP_Itens_Baixa.Edit;
        fDMCadOP.cdsOP_Itens_BaixaBAIXOU_ESTOQUE_MAT.AsString := 'S';
        fDMCadOP.cdsOP_Itens_Baixa.Post;
        fDMCadOP.cdsOP_Itens_Baixa_Mat.ApplyUpdates(0);
      end;
      //******************************
    end;

    fDMCadOP.cdsOP_Itens.ApplyUpdates(0);

    fDMCadOP.cdsOP_Itens_Baixa.ApplyUpdates(0);

    prc_Limpa_Campos;

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(fDMEstoque);
  edtReferencia.SetFocus;
  ComboBox1.ItemIndex := -1;
end;

procedure TfrmBaixaOP.prc_Limpa_Campos;
begin
  edtReferencia.Clear;
  edtNome_Produto.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  CurrencyEdit5.Clear;
  CurrencyEdit6.Clear;
  ComboBox1.ItemIndex := -1;
end;

procedure TfrmBaixaOP.FormShow(Sender: TObject);
begin
  DateEdit1.Date := Date;
  fDMCadOP.qParametros_Est.Close;
  fDMCadOP.qParametros_Est.Open;
end;

procedure TfrmBaixaOP.prc_Gravar_Baixa_Mat;
var
  vItemAux : Integer;
  vID_Estoque: Integer;
begin


end;

end.
