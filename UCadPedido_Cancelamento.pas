unit UCadPedido_Cancelamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadPedido, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, UCadPedido_Itens_Imposto, Mask, RxDBComb, ToolEdit, RXDBCtrl, RzTabs, RzPanel, Grids,
  CurrEdit, DBGrids, SMDBGrid, UCBase, dbXPress, UDMEstoque, SqlExpr;

type
  TfrmCadPedido_Cancelamento = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    btnConfirmar: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    Panel4: TPanel;
    Label4: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    DBText4: TDBText;
    Label8: TLabel;
    DBText5: TDBText;
    Label9: TLabel;
    DBText6: TDBText;
    Panel2: TPanel;
    Label10: TLabel;
    SMDBGrid1: TSMDBGrid;
    btnExcluir: TBitBtn;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    fDMEstoque: TDMEstoque;
    
    vGE_Cancelamento: Boolean;

    procedure prc_Abrir_Pedido_Cancelamento(ID, Item: Integer);
    procedure prc_Gravar_Cancelamento(Qtd: Real);
    procedure prc_Atualizar_Item;
    procedure prc_Excluir_Sobra;

    function  fnc_Erro: Boolean;

  public
    { Public declarations }
    vOpcao_Cancelar: String; //P= Pedido   I= Item
    fDMCadPedido: TDMCadPedido;
  end;

var
  frmCadPedido_Cancelamento: TfrmCadPedido_Cancelamento;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, UDMUtil, DmdDatabase,
  uCalculo_Pedido;

{$R *.dfm}

procedure TfrmCadPedido_Cancelamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if vGE_Cancelamento then
    prc_Atualizar_Item;
  Action := Cafree;
end;

procedure TfrmCadPedido_Cancelamento.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  vGE_Cancelamento := False;

  Panel2.Visible        := (vOpcao_Cancelar = 'P');
  Panel4.Visible        := (vOpcao_Cancelar = 'I');
  Label1.Visible        := (vOpcao_Cancelar = 'I');
  CurrencyEdit1.Visible := (vOpcao_Cancelar = 'I');
  SMDBGrid1.Visible     := (vOpcao_Cancelar = 'I');
  btnExcluir.Visible    := (vOpcao_Cancelar = 'I');

  DateEdit1.Date := Date;
  if vOpcao_Cancelar = 'I' then
  begin
    CurrencyEdit1.Value := fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat;
    prc_Abrir_Pedido_Cancelamento(fDMCadPedido.cdsPedido_ItensID.AsInteger,fDMCadPedido.cdsPedido_ItensITEM.AsInteger);
  end;
end;

procedure TfrmCadPedido_Cancelamento.btnConfirmarClick(Sender: TObject);
var
  ID: TTransactionDesc;
begin
  if fnc_Erro then
    exit;

  fDMEstoque        := TDMEstoque.Create(Self);

  ID.TransactionID  := 2;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    if vOpcao_Cancelar = 'I' then
      prc_Gravar_Cancelamento(CurrencyEdit1.Value)
    else
    begin
      fDMCadPedido.cdsPedido_Itens.First;
      while not fDMCadPedido.cdsPedido_Itens.Eof do
      begin
        if StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat)) > 0 then
          prc_Gravar_Cancelamento(StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat)));
        fDMCadPedido.cdsPedido_Itens.Next;
      end;
    end;

    fDMCadPedido.sdsPrc_Atualiza_Status_Ped.Close;
    fDMCadPedido.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMCadPedido.cdsPedidoID.AsInteger;
    fDMCadPedido.sdsPrc_Atualiza_Status_Ped.ExecSQL;
    
    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;

  FreeAndNil(fDMEstoque);

  prc_Atualizar_Item;
  Close;
end;

function TfrmCadPedido_Cancelamento.fnc_Erro: Boolean;
var
  vMsgErro: String;
  sds: TSQLDataSet;
begin
  Result   := True;
  vMsgErro := '';
  if DateEdit1.Date < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data do cancelamento não foi informada!';
  if (vOpcao_Cancelar = 'I') and (CurrencyEdit1.Value <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Quantidade para cancelar não foi informada!';
  if (vOpcao_Cancelar = 'I') and (StrToFloat(FormatFloat('0.00000',CurrencyEdit1.Value)) > StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat))) then
    vMsgErro := vMsgErro + #13 + '*** Quantidade para cancelar maior que a quantidade restante!';

  if trim(vMsgErro) = '' then
  begin
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText := 'SELECT COUNT(1) CONTADOR from pedido_sobra_oc oc  ' +
                         'WHERE OC.ID = ' + IntToStr(fDMCadPedido.cdsPedidoID.AsInteger) +
                         '  AND QTD_USADA > 0 ';
      if vOpcao_Cancelar = 'I' then
        sds.CommandText := sds.CommandText + ' AND OC.ITEM = ' + IntToStr(fDMCadPedido.cdsPedido_ItensITEM.AsInteger);
      sds.Open;
      if sds.FieldByName('CONTADOR').AsInteger > 0 then
        vMsgErro := 'Ordem de compra já está com quantidade de sobra reservada para Ordem de Produção!';
    finally
      FreeAndNil(sds);
    end;                                      
  end;

  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadPedido_Cancelamento.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadPedido_Cancelamento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  vQtdAux: Real;
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F7) then
    btnConfirmarClick(Sender);
end;

procedure TfrmCadPedido_Cancelamento.prc_Gravar_Cancelamento(Qtd: Real);
var
  vItemAux: Integer;
  vDescAux: Real;
  vID_Estoque: Integer;
begin
  prc_Abrir_Pedido_Cancelamento(fDMCadPedido.cdsPedido_ItensID.AsInteger,fDMCadPedido.cdsPedido_ItensITEM.AsInteger);
  fDMCadPedido.cdsPedido_Cancelado.Last;
  vItemAux := fDMCadPedido.cdsPedido_CanceladoITEM_CANC.AsInteger;

  fDMCadPedido.cdsPedido_Cancelado.Insert;
  fDMCadPedido.cdsPedido_CanceladoID.AsInteger         := fDMCadPedido.cdsPedido_ItensID.AsInteger;
  fDMCadPedido.cdsPedido_CanceladoITEM.AsInteger       := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  fDMCadPedido.cdsPedido_CanceladoITEM_CANC.AsInteger  := vItemAux + 1;
  fDMCadPedido.cdsPedido_CanceladoDATA.AsDateTime      := DateEdit1.Date;
  fDMCadPedido.cdsPedido_CanceladoMOTIVO.AsString      := Edit1.Text;
  fDMCadPedido.cdsPedido_CanceladoQTD.AsFloat          := StrToFloat(FormatFloat('0.00000',Qtd));
  fDMCadPedido.cdsPedido_CanceladoDTUSUARIO.AsDateTime := Date;
  fDMCadPedido.cdsPedido_CanceladoHRUSUARIO.AsDateTime := Now;
  fDMCadPedido.cdsPedido_Cancelado.Post;

  //09/03/2015
  if fDMCadPedido.cdsPedido_ItensID_MOVESTOQUE.AsInteger > 0 then
  begin
    vDescAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_DESCONTORATEIO.AsFloat));

    vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(fDMCadPedido.cdsPedido_CanceladoID_MOVESTOQUE.AsInteger,
                                                 fDMCadPedido.cdsPedidoFILIAL.AsInteger,
                                                 fDMCadPedido.cdsPedidoID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                                 fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,
                                                 fDMCadPedido.cdsPedidoNUM_PEDIDO.AsInteger,
                                                 fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,
                                                 fDMCadPedido.cdsPedidoID_CFOP.AsInteger,
                                                 fDMCadPedido.cdsPedidoID.AsInteger,0,
                                                 'E','PED',
                                                 fDMCadPedido.cdsPedido_ItensUNIDADE.AsString,
                                                 fDMCadPedido.cdsPedido_ItensUNIDADE.AsString,
                                                 '',
                                                 fDMCadPedido.cdsPedido_ItensTAMANHO.AsString,
                                                 fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime,
                                                 fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                                 fDMCadPedido.cdsPedido_CanceladoQTD.AsFloat,
                                                 fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat,
                                                 fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat,
                                                 vDescAux,
                                                 fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat,
                                                 fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsFloat,
                                                 fDMCadPedido.cdsPedido_CanceladoQTD.AsFloat,
                                                 fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                                 0,0,'',
                                                 fDMCadPedido.cdsPedido_ItensID_COR.AsInteger,
                                                 fDMCadPedido.cdsPedido_ItensNUM_LOTE_CONTROLE.AsString,'N',
                                                 fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat); //ver aqui sobre Lote Controle  04/11/2015

    fDMCadPedido.cdsPedido_Cancelado.Edit;
    fDMCadPedido.cdsPedido_CanceladoID_MOVESTOQUE.AsInteger := vID_Estoque;
    fDMCadPedido.cdsPedido_Cancelado.Post;
  end;
  //30/06/2017 Ordem de compra do fornecedor, quando possuir reserva de estoque 
  if (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'C') and (fDMCadPedido.qParametros_EstUSA_RESERVA.AsString = 'S') then
  begin
    prc_Excluir_Sobra;

  end;
  //******************************

  fDMCadPedido.cdsPedido_Cancelado.ApplyUpdates(0);
end;

procedure TfrmCadPedido_Cancelamento.prc_Abrir_Pedido_Cancelamento(ID,
  Item: Integer);
begin
  fDMCadPedido.cdsPedido_Cancelado.Close;
  fDMCadPedido.sdsPedido_Cancelado.ParamByName('ID').AsInteger   := ID;
  fDMCadPedido.sdsPedido_Cancelado.ParamByName('ITEM').AsInteger := Item;
  fDMCadPedido.cdsPedido_Cancelado.Open;
end;

procedure TfrmCadPedido_Cancelamento.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Cancelado.Active) or (fDMCadPedido.cdsPedido_Cancelado.IsEmpty) or (fDMCadPedido.cdsPedido_CanceladoITEM_CANC.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir o cancelamento que esta selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPedido.cdsPedido_Cancelado.Delete;
  fDMCadPedido.cdsPedido_Cancelado.ApplyUpdates(0);

  vGE_Cancelamento := True;
end;

procedure TfrmCadPedido_Cancelamento.prc_Atualizar_Item;
var
  vItemAux: Integer;
  vID: Integer;
begin
  fDMCadPedido.prc_Localizar(fDMCadPedido.cdsPedido_ConsultaID.AsInteger);
  fDMCadPedido.prc_Abrir_cdsCFOP('S');
  vItemAux := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  fDMCadPedido.cdsPedido_Itens.Close;
  fDMCadPedido.cdsPedido_Itens.Open;
  fDMCadPedido.cdsPedido.Edit;
  uCalculo_Pedido.prc_Calcular_Desconto_Novo(fDMCadPedido,False);
  fDMCadPedido.cdsPedido.Post;
  fDMCadPedido.cdsPedido.ApplyUpdates(0);
  if vOpcao_Cancelar = 'I' then
    fDMCadPedido.cdsPedido_Itens.Locate('ITEM',vItemAux,[loCaseInsensitive]);
  if vGE_Cancelamento then
  begin
    fDMCadPedido.sdsPrc_Atualiza_Status_Ped.Close;
    fDMCadPedido.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMCadPedido.cdsPedidoID.AsInteger;
    fDMCadPedido.sdsPrc_Atualiza_Status_Ped.ExecSQL;
  end;
end;

procedure TfrmCadPedido_Cancelamento.prc_Excluir_Sobra;
var
  sds: TSQLDataSet;
  vQtdAux: Real;
begin
  {sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  sds.CommandText := 'SELECT OC.qtd_restante FROM pedido_sobra_oc OC '
                   + ' WHERE OC.id = :ID AND OC.item = :ITEM ';
  sds.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedido_ItensID.AsInteger;
  sds.ParamByName('ITEM').AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  sds.Open;

  vQtdAux := 0;
  if StrToFloat(FormatFloat('0.00000',sds.FieldByName('Qtd_Restante').AsFloat)) >= fDMCadPedido.cdsPedido}
  


end;

end.
