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
    gbxDuplicata: TRzGroupBox;
    NxSplitter1: TNxSplitter;
    Label2: TLabel;
    Edit1: TEdit;
    SMDBGrid1: TSMDBGrid;
    Label3: TLabel;
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
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
    fDMConferencia: TDMConferencia;
    ColunaOrdenada: String;
    vItem_Ant : Integer;
    vItem_Ped_Sel : Integer;

    procedure prc_Abrir_cdsPedido_Item;
    procedure prc_Verifica_Pedido_Conf;
    procedure prc_scroll(DataSet: TDataSet);
    procedure prc_Baixa_Processo;
    procedure prc_Abrir_cdsConsPedido_Item_Proc(NumPed,Item : Integer);
    procedure Prc_Gravar(Gravar_Processo : Boolean ; ID_Pedido, Item_Pedido, Item_Processo : Integer ; Nome_Processo : String);

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

  Edit1.SetFocus;

  fDMConferencia.cdsPedido_Item.AFTERSCROLL := prc_scroll;
end;

procedure TfrmConferencia_Ped.btnConfirmarClick(Sender: TObject);
begin
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

  Prc_Gravar(False,0,0,0,'');
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
  begin
    prc_Abrir_cdsPedido_Item;
  end;
end;

procedure TfrmConferencia_Ped.prc_Abrir_cdsPedido_Item;
var
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
  sds: TSQLDataSet;
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

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    vItemAux := fDMConferencia.cdsPedido_ItemITEM.AsInteger;


    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT FIRST 1 P.id, P.item, P.item_processo FROM pedido_item_processo P '
                       + 'where P.ID = ' + IntToStr(fDMConferencia.cdsPedido_ItemID.AsInteger)
                       + '  AND P.ITEM = ' + IntToStr(fDMConferencia.cdsPedido_ItemITEM.AsInteger)
                       + ' ORDER BY P.item_processo DESC ';
    sds.Open;

    if sds.FieldByName('ID').AsInteger > 0 then
    begin
      fDMConferencia.cdsPedido_Item_Processo.Close;
      fDMConferencia.sdsPedido_Item_Processo.ParamByName('ID').AsInteger            := sds.FieldByName('ID').AsInteger;
      fDMConferencia.sdsPedido_Item_Processo.ParamByName('ITEM').AsInteger          := sds.FieldByName('ITEM').AsInteger;
      fDMConferencia.sdsPedido_Item_Processo.ParamByName('ITEM_PROCESSO').AsInteger := sds.FieldByName('ITEM_PROCESSO').AsInteger;
      fDMConferencia.cdsPedido_Item_Processo.Open;
      fDMConferencia.cdsPedido_Item_Processo.Edit;
      fDMConferencia.cdsPedido_Item_ProcessoDTENTRADA.Clear;
      fDMConferencia.cdsPedido_Item_ProcessoHRENTRADA.Clear;
      fDMConferencia.cdsPedido_Item_ProcessoDTBAIXA.Clear;
      fDMConferencia.cdsPedido_Item_ProcessoHRSAIDA.Clear;
      fDMConferencia.cdsPedido_Item_Processo.Post;
      fDMConferencia.cdsPedido_Item_Processo.ApplyUpdates(0);
    end;
    
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

  FreeAndNil(sds);

  fDMConferencia.cdsPedido_Item.Locate('ID;ITEM',VarArrayOf([fDMConferencia.cdsPedidoID.AsInteger,vItemAux]),[locaseinsensitive]);

  prc_Abrir_cdsConsPedido_Item_Proc(fDMConferencia.cdsPedidoNUM_PEDIDO.AsInteger,vItemAux);
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

procedure TfrmConferencia_Ped.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    prc_Baixa_Processo;
end;

procedure TfrmConferencia_Ped.prc_Baixa_Processo;
var
  vNumPed : Integer;
  vItem : Integer;
  vProcesso : String;
  vItem_Processo : Integer;
  vMSG : String;
  vIDPed : Integer;
begin
  Label3.Caption := '';
  if Length(Edit1.Text) <> 10 then
  begin
    MessageDlg('Código de Barras inválido!', mtError, [mbOk], 0);
    exit;
  end;

  vNumPed := StrToInt(Copy(Edit1.Text,2,6));
  vItem   := StrToInt(Copy(Edit1.Text,8,3));

  prc_Abrir_cdsConsPedido_Item_Proc(vNumPed,vItem);

  vMSG           := '';
  vProcesso      := '';
  vItem_Processo := 0;
  vIDPed         := 0;
  fDMConferencia.cdsConsPedido_Item_Proc.First;
  while not fDMConferencia.cdsConsPedido_Item_Proc.Eof do
  begin
    if fDMConferencia.cdsConsPedido_Item_ProcDTBAIXA.AsDateTime <= 10 then
    begin
      if fDMConferencia.cdsConsPedido_Item_ProcDTCONFERENCIA.AsDateTime > 10 then
        vMSG := vMSG + #13 + 'Item já Conferido!'
      else
      if StrToFloat(FormatFloat('0.0000',fDMConferencia.cdsConsPedido_Item_ProcQTD_FATURADO.AsFloat)) > 0 then
        vMSG := vMSG + #13 + 'Item já Faturado!'
      else
      begin
        vProcesso      := fDMConferencia.cdsConsPedido_Item_ProcNOME_PROCESSO.AsString;
        vItem_Processo := fDMConferencia.cdsConsPedido_Item_ProcITEM_PROCESSO.AsInteger;
        vIDPed         := fDMConferencia.cdsConsPedido_Item_ProcID_PEDIDO.AsInteger;
      end;
      fDMConferencia.cdsConsPedido_Item_Proc.Last;
    end;
    fDMConferencia.cdsConsPedido_Item_Proc.Next;
  end;

  if vNumPed > 0 then
  begin
    CurrencyEdit1.AsInteger := vNumPed;
    prc_Abrir_cdsPedido_Item;
  end;

  if vIDPed > 0 then
  begin
    fDMConferencia.qContadorProc.Close;
    fDMConferencia.qContadorProc.ParamByName('ID').AsInteger   := vIDPed;
    fDMConferencia.qContadorProc.ParamByName('ITEM').AsInteger := vItem;
    fDMConferencia.qContadorProc.Open;
  end;

  if trim(vMSG) <> '' then
    Label3.Caption := vMSG
  else
  if (trim(vProcesso) = '') and (fDMConferencia.cdsConsPedido_Item_Proc.RecordCount <= 0) then
    Label3.Caption := 'PEDIDO NÃO ENCONTRADO'
  else
  if (trim(vProcesso) = '') then
    Label3.Caption := 'PEDIDO JÁ BAIXADO'
  else
  if (trim(vProcesso) <> '') then
    Prc_Gravar(True,vIDPed,vItem,vItem_Processo,vProcesso);
  Edit1.Clear;
  Edit1.SetFocus;
end;

procedure TfrmConferencia_Ped.prc_Abrir_cdsConsPedido_Item_Proc(NumPed,Item: Integer);
begin
  fDMConferencia.cdsConsPedido_Item_Proc.Close;
  fDMConferencia.sdsConsPedido_Item_Proc.ParamByName('NUM_PEDIDO').AsInteger := NumPed;
  fDMConferencia.sdsConsPedido_Item_Proc.ParamByName('ITEM').AsInteger       := Item;
  fDMConferencia.cdsConsPedido_Item_Proc.Open;
end;

procedure TfrmConferencia_Ped.Prc_Gravar(Gravar_Processo : Boolean ; ID_Pedido, Item_Pedido, Item_Processo : Integer ; Nome_Processo : String);
var
  vItemAux : Integer;
  ID: TTransactionDesc;
  fDMAprovacao_Ped: TDMAprovacao_Ped;
begin
  fDMAprovacao_Ped := TDMAprovacao_Ped.Create(Self);

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    if Gravar_Processo then
    begin
      fDMConferencia.cdsPedido_Item_Processo.Close;
      fDMConferencia.sdsPedido_Item_Processo.ParamByName('ID').AsInteger            := ID_Pedido;
      fDMConferencia.sdsPedido_Item_Processo.ParamByName('ITEM').AsInteger          := Item_Pedido;
      fDMConferencia.sdsPedido_Item_Processo.ParamByName('ITEM_PROCESSO').AsInteger := Item_Processo;
      fDMConferencia.cdsPedido_Item_Processo.Open;
      fDMConferencia.cdsPedido_Item_Processo.Edit;
      fDMConferencia.cdsPedido_Item_ProcessoDTENTRADA.AsDateTime := Date;
      fDMConferencia.cdsPedido_Item_ProcessoHRENTRADA.AsDateTime := Now;
      fDMConferencia.cdsPedido_Item_ProcessoDTBAIXA.AsDateTime   := fDMConferencia.cdsPedido_Item_ProcessoDTENTRADA.AsDateTime;
      fDMConferencia.cdsPedido_Item_ProcessoHRSAIDA.AsDateTime   := fDMConferencia.cdsPedido_Item_ProcessoHRENTRADA.AsDateTime;
      fDMConferencia.cdsPedido_Item_Processo.Post;
      fDMConferencia.cdsPedido_Item_Processo.ApplyUpdates(0);

      fDMConferencia.cdsPedido_Item.Locate('ID;ITEM',VarArrayOf([fDMConferencia.cdsPedidoID.AsInteger,Item_Pedido]),[locaseinsensitive]);
    end;

    if ((Gravar_Processo) and (fDMConferencia.qContadorProcCONTADOR.AsInteger <= 1)) or not(Gravar_Processo) then
    begin
      vItemAux := fDMConferencia.cdsPedido_ItemITEM.AsInteger;
      fDMConferencia.cdsPedido_Item.Edit;
      fDMConferencia.cdsPedido_ItemDTCONFERENCIA.AsDateTime := Date;
      fDMConferencia.cdsPedido_ItemHRCONFERENCIA.AsDateTime := Now;
      fDMConferencia.cdsPedido_ItemUSUARIO_CONF.AsString    := vUsuario;
      fDMConferencia.cdsPedido_ItemQTD_CONFERIDO.AsFloat    := StrToFloat(FormatFloat('0.00000',fDMConferencia.cdsPedido_ItemQTD.AsFloat));
      fDMConferencia.cdsPedido_Item.Post;
      fDMConferencia.cdsPedido_Item.ApplyUpdates(0);
      prc_Verifica_Pedido_Conf;
      if fDMConferencia.cdsPedidoCONFERIDO.AsString = 'S' then
        fDMAprovacao_Ped.prc_Gravar_Pedido_Processo(fDMConferencia.cdsPedidoEMAIL_COMPRAS.AsString,fDMConferencia.cdsPedidoID.AsInteger,0,'E','','',Date);
    end;

    dmDatabase.scoDados.Commit(ID);

    if Gravar_Processo then
      Label3.Caption := 'Pedido: ' + fDMConferencia.cdsPedidoNUM_PEDIDO.AsString + '     Item: ' + IntToStr(Item_Pedido) + #13 + #13
                      + 'Processo: ' + Nome_Processo
                      + '      ** Encerrado **      ';

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  fDMConferencia.cdsPedido_Item.Locate('ID;ITEM',VarArrayOf([fDMConferencia.cdsPedidoID.AsInteger,vItemAux]),[locaseinsensitive]);
  FreeAndNil(fDMAprovacao_Ped);
  fDMConferencia.cdsConsPedido_Item_Proc.Close;
  fDMConferencia.cdsConsPedido_Item_Proc.Open;
end;

procedure TfrmConferencia_Ped.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMConferencia.cdsConsPedido_Item_ProcDTBAIXA.AsDateTime > 10 then
    Background := $007DBEFF;
end;

procedure TfrmConferencia_Ped.SMDBGrid2DblClick(Sender: TObject);
begin
  if fDMConferencia.cdsPedido_ItemITEM.AsInteger > 0 then
    prc_Abrir_cdsConsPedido_Item_Proc(fDMConferencia.cdsPedidoNUM_PEDIDO.AsInteger,fDMConferencia.cdsPedido_ItemITEM.AsInteger);
end;

end.
