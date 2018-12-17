//Quem usa é a JW para conferência simples e envio de Email ou SMS
unit UConferencia_Ped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConferencia, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  dbXPress, NxPageControl, RzTabs, NxCollection, NxEdit,
  DBCtrls, CurrEdit;

type
  TfrmConferencia_Ped = class(TForm)
    Panel3: TPanel;
    gbxVendedor: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    Panel2: TPanel;
    Label13: TLabel;
    btnConfirmar: TNxButton;
    CurrencyEdit1: TCurrencyEdit;
    Label1: TLabel;
    btnExcluir: TNxButton;
    Shape6: TShape;
    Label31: TLabel;
    Shape11: TShape;
    Label68: TLabel;
    SMDBGrid6: TSMDBGrid;
    btnConsultarSaldoSMS: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SMDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnExcluirClick(Sender: TObject);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure btnConsultarSaldoSMSClick(Sender: TObject);
  private
    { Private declarations }
    fDMConferencia: TDMConferencia;
    ColunaOrdenada: String;
    vItem_Ant : Integer;
    vItem_Ped_Sel : Integer;

    procedure prc_Abrir_cdsPedido_Item;

    procedure prc_Verifica_Pedido_Conf;

    procedure prc_scroll(DataSet: TDataSet);


  public
    { Public declarations }
  end;

var
  frmConferencia_Ped: TfrmConferencia_Ped;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, ULiberacao_Fat_Ped, ULiberacao_Fat_Conf,
  UDMAprovacao_Ped, UEscolhe_Filial;

{$R *.dfm}

procedure TfrmConferencia_Ped.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConferencia_Ped.FormShow(Sender: TObject);
begin
  fDMConferencia := TDMConferencia.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConferencia);
  vItem_Ant := 0;

  fDMConferencia.cdsPedido.Close;
  fDMConferencia.cdsPedido_Item.Close;

  fDMConferencia.cdsPedido_Item.AFTERSCROLL := prc_scroll;
end;

procedure TfrmConferencia_Ped.btnConfirmarClick(Sender: TObject);
var
  vItemAux : Integer;
  ID: TTransactionDesc;
  fDMAprovacao_Ped: TDMAprovacao_Ped;
begin
  fDMAprovacao_Ped := TDMAprovacao_Ped.Create(Self);

  if not(fDMConferencia.cdsPedido_Item.Active) or (fDMConferencia.cdsPedido_Item.IsEmpty) then
  begin
    MessageDlg('Pedido não foi selecionado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMConferencia.cdsPedido_ItemDTCONFERENCIA.AsDateTime > 10 then
  begin
    MessageDlg('Item do Pedido já conferido!', mtInformation, [mbOk], 0);
    exit;
  end;
  if StrToFloat(FormatFloat('0.00000',fDMConferencia.cdsPedido_ItemQTD_FATURADO.AsFloat)) > 0 then
  begin
    MessageDlg('Item já foi faturado!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja confirmar a conferência do item ' + fDMConferencia.cdsPedido_ItemITEM.AsString + ' ?' ,mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    vItemAux := fDMConferencia.cdsPedido_ItemITEM.AsInteger;
    fDMConferencia.cdsPedido_Item.Edit;
    fDMConferencia.cdsPedido_ItemDTCONFERENCIA.AsDateTime := Date;
    fDMConferencia.cdsPedido_ItemHRCONFERENCIA.AsDateTime := Now;
    fDMConferencia.cdsPedido_ItemUSUARIO_CONF.AsString    := vUsuario;
    fDMConferencia.cdsPedido_ItemQTD_CONFERIDO.AsFloat    := StrToFloat(FormatFloat('0.00000',fDMConferencia.cdsPedido_ItemQTD.AsFloat));
    fDMConferencia.cdsPedido_Item.Post;
    fDMConferencia.cdsPedido_Item.ApplyUpdates(0);
    prc_Verifica_Pedido_Conf;

    fDMAprovacao_Ped.prc_Gravar_Pedido_Processo(fDMConferencia.cdsPedidoEMAIL_COMPRAS.AsString,fDMConferencia.cdsPedidoID.AsInteger,0,'E','','',Date);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  fDMConferencia.cdsPedido_Item.Locate('ID;ITEM',VarArrayOf([fDMConferencia.cdsPedidoID.AsInteger,vItemAux]),[locaseinsensitive]);
  FreeAndNil(fDMAprovacao_Ped);

end;

procedure TfrmConferencia_Ped.SMDBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConfirmarClick(Sender);
end;

procedure TfrmConferencia_Ped.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    prc_Abrir_cdsPedido_Item;
end;

procedure TfrmConferencia_Ped.prc_Abrir_cdsPedido_Item;
var
  sds: TSQLDataSet;
  vIDAux : Integer;
begin
  fDMConferencia.cdsPedido.Close;
  fDMConferencia.sdsPedido.CommandText := fDMConferencia.ctPedido
                                        + ' WHERE NUM_PEDIDO = ' + IntToStr(CurrencyEdit1.AsInteger);
  fDMConferencia.cdsPedido.Open;
  if (fDMConferencia.cdsPedido.IsEmpty) or (fDMConferencia.cdsPedidoTIPO_REG.AsString <> 'P') then
  begin
    MessageDlg('Pedido não encontrado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMConferencia.cdsPedidoCANCELADO.AsString = 'S' then
  begin
    MessageDlg('Pedido não encontrado!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMConferencia.cdsPedido_Item.Close;
  fDMConferencia.sdsPedido_Item.ParamByName('ID').AsInteger := fDMConferencia.cdsPedidoID.AsInteger;
  fDMConferencia.cdsPedido_Item.Open;

  btnConfirmar.Enabled := ((fDMConferencia.cdsPedido_ItemDTCONFERENCIA.AsDateTime <= 10) and not(fDMConferencia.cdsPedido_Item.IsEmpty));
  btnExcluir.Enabled   := ((fDMConferencia.cdsPedido_ItemDTCONFERENCIA.AsDateTime > 10) and not(fDMConferencia.cdsPedido_Item.IsEmpty));

  SMDBGrid2.SetFocus;
end;

procedure TfrmConferencia_Ped.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.00000',fDMConferencia.cdsPedido_ItemQTD_FATURADO.AsFloat)) > 0 then
    Background := clGreen
  else
  if fDMConferencia.cdsPedido_ItemDTCONFERENCIA.AsDateTime > 10 then
    Background := $007DBEFF;
end;

procedure TfrmConferencia_Ped.btnExcluirClick(Sender: TObject);
var
  ID: TTransactionDesc;
  vItemAux : Integer;
begin
  if not(fDMConferencia.cdsPedido_Item.Active) or (fDMConferencia.cdsPedido_Item.IsEmpty) then
  begin
    MessageDlg('Pedido não foi selecionado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMConferencia.cdsPedido_ItemDTCONFERENCIA.AsDateTime <= 10 then
  begin
    MessageDlg('Item não conferido!', mtInformation, [mbOk], 0);
    exit;
  end;
  if StrToFloat(FormatFloat('0.00000',fDMConferencia.cdsPedido_ItemQTD_FATURADO.AsFloat)) > 0 then
  begin
    MessageDlg('Item já foi faturado!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir a conferência do item ' + fDMConferencia.cdsPedido_ItemITEM.AsString + ' ?' ,mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    vItemAux := fDMConferencia.cdsPedido_ItemITEM.AsInteger;
    
    fDMConferencia.cdsPedido_Item.Edit;
    fDMConferencia.cdsPedido_ItemDTCONFERENCIA.Clear;
    fDMConferencia.cdsPedido_ItemHRCONFERENCIA.Clear;
    fDMConferencia.cdsPedido_ItemUSUARIO_CONF.AsString := vUsuario;
    fDMConferencia.cdsPedido_ItemQTD_CONFERIDO.AsFloat := StrToFloat(FormatFloat('0.00000',0));
    fDMConferencia.cdsPedido_Item.Post;
    fDMConferencia.cdsPedido_Item.ApplyUpdates(0);
    prc_Verifica_Pedido_Conf;
    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  fDMConferencia.cdsPedido_Item.Locate('ID;ITEM',VarArrayOf([fDMConferencia.cdsPedidoID.AsInteger,vItemAux]),[locaseinsensitive]);
end;

procedure TfrmConferencia_Ped.prc_Verifica_Pedido_Conf;
var
  vConfAux : String;
begin
  if fDMConferencia.cdsPedidoNUM_PEDIDO.AsInteger <> CurrencyEdit1.AsInteger then
    exit;

  vConfAux := '';
  fDMConferencia.cdsPedido_Item.First;
  while not fDMConferencia.cdsPedido_Item.Eof do
  begin
    if (fDMConferencia.cdsPedido_ItemDTCONFERENCIA.AsDateTime > 10) then
    begin
      if vConfAux = 'N' then
        vConfAux := 'P'
      else
      if vConfAux = '' then
        vConfAux := 'S';
    end
    else
    begin
      if vConfAux = 'S' then
        vConfAux := 'P'
      else
      if vConfAux = '' then
        vConfAux := 'N';
    end;
    fDMConferencia.cdsPedido_Item.Next;
  end;

  fDMConferencia.cdsPedido.Edit;
  fDMConferencia.cdsPedidoCONFERIDO.AsString := vConfAux;
  fDMConferencia.cdsPedido.Post;
  fDMConferencia.cdsPedido.ApplyUpdates(0);
end;

procedure TfrmConferencia_Ped.CurrencyEdit1Change(Sender: TObject);
begin
  btnConfirmar.Enabled := False;
  btnExcluir.Enabled   := False;
end;

procedure TfrmConferencia_Ped.prc_scroll(DataSet: TDataSet);
begin
  fDMConferencia.cdsPedido_Item_Tipo.Close;
  fDMConferencia.sdsPedido_Item_Tipo.ParamByName('ID').AsInteger   := fDMConferencia.cdsPedido_ItemID.AsInteger;
  fDMConferencia.sdsPedido_Item_Tipo.ParamByName('ITEM').AsInteger := fDMConferencia.cdsPedido_ItemITEM.AsInteger;
  fDMConferencia.cdsPedido_Item_Tipo.Open;

  btnConfirmar.Enabled := (fDMConferencia.cdsPedido_ItemDTCONFERENCIA.AsDateTime <= 10);
  btnExcluir.Enabled   := (fDMConferencia.cdsPedido_ItemDTCONFERENCIA.AsDateTime > 10);
end;

procedure TfrmConferencia_Ped.btnConsultarSaldoSMSClick(Sender: TObject);
var
  fDMAprovacao_Ped: TDMAprovacao_Ped;
  ffrmEscolhe_Filial: TfrmEscolhe_Filial;
begin
  if fDMConferencia.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMConferencia.cdsFilial.Last;
    vFilial      := fDMConferencia.cdsFilialID.AsInteger;
    vFilial_Nome := fDMConferencia.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDMAprovacao_Ped := TDMAprovacao_Ped.Create(Self);
  fDMAprovacao_Ped.prc_Saldo_SMS;
  FreeAndNil(fDMAprovacao_Ped);
end;

end.
