unit UConsPedido_Nota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsPedido, RzButton, Grids, DBGrids, SMDBGrid, ExtCtrls,
  RzPanel, UCBase, SqlExpr, dbXPress;

type
  TfrmConsPedido_Nota = class(TForm)
    UCControls1: TUCControls;
    Panel1: TPanel;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid3: TSMDBGrid;
    RzGroupBox3: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    Panel3: TPanel;
    RzGroupBox1: TRzGroupBox;
    RzGroupBox4: TRzGroupBox;
    SMDBGrid4: TSMDBGrid;
    Panel4: TPanel;
    RzBitBtn1: TRzBitBtn;
    SMDBGrid2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirBaixaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMConsPedido: TDMConsPedido;

    vTipo_RegAux : String; //P= Pedido Cliente  C= Ordem de Compra Fornecedor
    vGeral : String; //I=Por Item    G=Geral
    vID_Pedido_Cons, vItem_Pedido_Cons : Integer;
    
  end;

var
  frmConsPedido_Nota: TfrmConsPedido_Nota;

implementation

uses rsDBUtils, UMenu, DmdDatabase, Math, StrUtils;

{$R *.dfm}

procedure TfrmConsPedido_Nota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMConsPedido.cdsPedido_Nota.Close;
  fDMConsPedido.cdsBaixa_Pedido.Close;
  Action := Cafree;
end;

procedure TfrmConsPedido_Nota.FormShow(Sender: TObject);
var
  i : Integer;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMConsPedido);
  if vTipo_RegAux = 'C' then
    Caption := 'Notas/Baixas da Ordem de Compra do Fornecedor'
  else
    Caption := 'Notas/Baixas do Pedido do Cliente';
  RzGroupBox3.Visible := (vTipo_RegAux <> 'C') and (fDMConsPedido.qParametrosUSA_VALE.AsString = 'S');
  RzGroupBox1.Visible := (fDMConsPedido.qParametrosUSA_PEDIDO_FUT.AsString = 'S');

  fDMConsPedido.prc_Consultar_Pedido_Nota(vID_Pedido_Cons,vItem_Pedido_Cons);

  if fDMConsPedido.qParametrosUSA_PEDIDO_FUT.AsString = 'S' then
  begin
    fDMConsPedido.cdsPedido_Fut.Close;
    fDMConsPedido.sdsPedido_Fut.CommandText := fDMConsPedido.ctPedido_Fut;
    if vItem_Pedido_Cons > 0 then
    begin
      fDMConsPedido.sdsPedido_Fut.CommandText := fDMConsPedido.sdsPedido_Fut.CommandText + ' AND NP.ITEM_PEDIDO = :ITEM ';
      fDMConsPedido.sdsPedido_Fut.ParamByName('ITEM').AsInteger := vItem_Pedido_Cons;
    end;
    fDMConsPedido.sdsPedido_Fut.ParamByName('ID').AsInteger   := vID_Pedido_Cons;
    //fDMConsPedido.sdsPedido_Fut.ParamByName('ITEM').AsInteger := vItem_Pedido_Cons;
    fDMConsPedido.cdsPedido_Fut.Open;
  end;

//  fDMConsPedido.cdsBaixa_Pedido.Close;
//  fDMConsPedido.sdsBaixa_Pedido.CommandText := fDMConsPedido.ctBaixa_Pedido;
//  if vItem_Pedido_Cons > 0 then
//  begin
//    fDMConsPedido.sdsBaixa_Pedido.CommandText := fDMConsPedido.sdsBaixa_Pedido.CommandText + ' AND BX.ITEM_PEDIDO = :ITEM ';
//    fDMConsPedido.sdsBaixa_Pedido.ParamByName('ITEM').AsInteger := vItem_Pedido_Cons;
//  end;
//  fDMConsPedido.sdsBaixa_Pedido.ParamByName('ID').AsInteger   := vID_Pedido_Cons;
//  fDMConsPedido.cdsBaixa_Pedido.Open;

  fDMConsPedido.prc_Abre_Baixar_Pedido(vID_Pedido_Cons,vItem_Pedido_Cons);

  if fDMConsPedido.qParametrosUSA_VALE.AsString = 'S' then
  begin
    fDMConsPedido.cdsPedido_Vale.Close;
    fDMConsPedido.sdsPedido_Vale.CommandText := fDMConsPedido.ctPedido_Vale;
    if vItem_Pedido_Cons > 0 then
    begin
      fDMConsPedido.sdsPedido_Vale.CommandText := fDMConsPedido.sdsPedido_Vale.CommandText + '   AND NP.ITEM_PEDIDO = :ITEM ';
      fDMConsPedido.sdsPedido_Vale.ParamByName('ITEM').AsInteger := vItem_Pedido_Cons;
    end;
    fDMConsPedido.sdsPedido_Vale.ParamByName('ID').AsInteger   := vID_Pedido_Cons;
    //fDMConsPedido.sdsPedido_Vale.ParamByName('ITEM').AsInteger := vItem_Pedido_Cons;
    fDMConsPedido.cdsPedido_Vale.Open;
  end;
  for i := 0 to SMDBGrid4.ColCount - 2 do
  begin
    if SMDBGrid4.Columns[i].FieldName = 'NUM_OS' then
      SMDBGrid4.Columns[i].Visible := (fDMConsPedido.qParametros_SerLIB_QTD_PEDIDO.AsString = 'S');
  end;
end;

procedure TfrmConsPedido_Nota.btnExcluirBaixaClick(Sender: TObject);
var
  vID_Aux : Integer;
  sds: TSQLDataSet;
  ID: TTransactionDesc;
begin
  if not fDMConsPedido.cdsPedido_Nota.IsEmpty then
  begin
    MessageDlg('*** Já existe faturamento para este item!', mtError, [mbOk], 0);
    exit;
  end;
  if (fDMConsPedido.cdsBaixa_Pedido.IsEmpty) or (fDMConsPedido.cdsBaixa_PedidoID.AsInteger <= 0) then
  begin
    MessageDlg('*** Não existe baixa para ser excluida!', mtError, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir a baixa selecionada?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vID_Aux := fDMConsPedido.cdsBaixa_PedidoID_PEDIDO.AsInteger;
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    if fDMConsPedido.cdsBaixa_PedidoTIPO_MOV.AsString = 'T' then
    begin
      try
        sds := TSQLDataSet.Create(nil);
        sds.SQLConnection := dmDatabase.scoDados;
        sds.NoMetadata    := True;
        sds.GetMetadata   := False;
        sds.CommandText   := ' DELETE FROM BAIXA_TALAO  '
                      + ' WHERE ID_BAIXA_PEDIDO = ' +  fDMConsPedido.cdsBaixa_PedidoID.AsString;
        sds.ExecSQL();
      except
        raise;
      end;
      FreeAndNil(sds);
    end
    else
    begin
      fDMConsPedido.cdsBaixa_Pedido.Delete;
      fDMConsPedido.cdsBaixa_Pedido.ApplyUpdates(0);
    end;

    fDMConsPedido.sdsPrc_Atualiza_Status_Ped.Close;
    fDMConsPedido.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := vID_Aux;
    fDMConsPedido.sdsPrc_Atualiza_Status_Ped.ExecSQL;

    dmDatabase.scoDados.Commit(ID);

    MessageDlg('Baixa excluida!', mtInformation, [mbOk], 0);
  except
    on E: exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao excluir a baixa manual: ' + e.Message);
    end;
  end;

  fDMConsPedido.prc_Abre_Baixar_Pedido(vID_Pedido_Cons,vItem_Pedido_Cons);
//  fDMConsPedido.cdsBaixa_Pedido.Close;
//  fDMConsPedido.sdsBaixa_Pedido.ParamByName('ID').AsInteger   := fDMConsPedido.cdsPedido_ItemID.AsInteger;
//  fDMConsPedido.sdsBaixa_Pedido.ParamByName('ITEM').AsInteger := fDMConsPedido.cdsPedido_ItemITEM.AsInteger;
//  fDMConsPedido.cdsBaixa_Pedido.Open;
end;

end.
