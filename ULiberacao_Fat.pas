unit ULiberacao_Fat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConferencia, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  UDMEstoque, dbXPress, NxPageControl, RzTabs, NxCollection, NxEdit,
  DBCtrls;

type
  TfrmLiberacao_Fat = class(TForm)
    gbxVendedor: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    Panel2: TPanel;
    NxButton1: TNxButton;
    Label13: TLabel;
    Label14: TLabel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Panel3: TPanel;
    Label5: TLabel;
    edtCBarra: TEdit;
    btnConfBaixa: TNxButton;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    btnEtiqueta: TNxButton;
    RzGroupBox1: TRzGroupBox;
    Splitter1: TSplitter;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label8: TLabel;
    DBText7: TDBText;
    Label9: TLabel;
    DBText8: TDBText;
    Label15: TLabel;
    DBText4: TDBText;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    SMDBGrid3: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtCBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid2Enter(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEtiquetaClick(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
  private
    { Private declarations }
    fDMConferencia: TDMConferencia;
    fDMEstoque: TDMEstoque;
    ColunaOrdenada: String;
    vItem_Ant : Integer;
    vItem_Ped_Sel : Integer;

    procedure prc_Gravar_Conf;
    procedure prc_Chamar_Form_Ped;
    procedure prc_Posiciona_Item;
    procedure prc_Abrir_Conferencia;

  public
    { Public declarations }
  end;

var
  frmLiberacao_Fat: TfrmLiberacao_Fat;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, ULiberacao_Fat_Ped, ULiberacao_Fat_Conf;

{$R *.dfm}

procedure TfrmLiberacao_Fat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmLiberacao_Fat.FormShow(Sender: TObject);
begin
  fDMConferencia := TDMConferencia.Create(Self);
  fDMEstoque     := TDMEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConferencia);
  vItem_Ant := 0;

  fDMConferencia.cdsPedido.Close;
  fDMConferencia.cdsPedido_Item.Close;

  prc_Abrir_Conferencia;
end;

procedure TfrmLiberacao_Fat.edtCBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    prc_Gravar_Conf;
end;

procedure TfrmLiberacao_Fat.prc_Gravar_Conf;
var
  vQtdAux : Integer;
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vItem_Ped : Integer;
begin
  if trim(edtCBarra.Text) = '' then
  begin
    Windows.Beep(1000, 520);
    Windows.Beep(1500, 480);
    exit;
  end;
  fDMConferencia.qCBarra.Close;
  fDMConferencia.qCBarra.ParamByName('COD_BARRA').AsString := trim(edtCBarra.Text);
  fDMConferencia.qCBarra.Open;
  if fDMConferencia.qCBarra.IsEmpty then
  begin
    Windows.Beep(1000, 520);
    Windows.Beep(1500, 480);
    MessageDlg('Código de Barras não encontrado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMConferencia.qCBarraID.AsInteger <> fDMConferencia.cdsPedido_ItemID_PRODUTO.AsInteger then
  begin
    MessageDlg('Código de Barras não pertece ao produto: ' + fDMConferencia.cdsPedido_ItemID_PRODUTO.AsString + ',   Ref: ' + fDMConferencia.cdsPedido_ItemREFERENCIA.AsString, mtInformation, [mbOk], 0);
    Windows.Beep(1000, 520);
    Windows.Beep(1500, 480);
    exit;
  end;
  vQtdAux := StrToInt(FormatFloat('0',fDMConferencia.cdsPedido_ItemQTD_RESTANTE.AsInteger - fDMConferencia.cdsPedido_ItemQTD_CONFERIDO.AsInteger - fDMConferencia.cdsPedido_ItemQTD_LIBERADA.AsInteger));
  if StrtoFloat(FormatFloat('0',vQtdAux)) <= 0 then
  begin
    Windows.Beep(1000, 520);
    Windows.Beep(1500, 480);
    MessageDlg('Item  ' + fDMConferencia.cdsPedido_ItemITEM.AsString + ' do Pedido ' + fDMConferencia.cdsPedidoNUM_PEDIDO.AsString + ' Sem qtde. para liberar!' , mtInformation, [mbOk], 0);
    exit;
  end;

  vItem_Ped := fDMConferencia.cdsPedido_ItemITEM.AsInteger;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 ' +
                         'WHERE TABELA = ' + QuotedStr('CONFERENCIA');
    sds.ExecSQL();

    fDMConferencia.cdsPedido_Item.Edit;
    fDMConferencia.cdsPedido_ItemQTD_CONFERIDO.AsFloat := fDMConferencia.cdsPedido_ItemQTD_CONFERIDO.AsFloat + 1;
    fDMConferencia.cdsPedido_Item.Post;
    fDMConferencia.cdsPedido_Item.ApplyUpdates(0);

    if (fDMConferencia.cdsConferenciaID.AsInteger <= 0) or (fDMConferencia.cdsConferenciaENCERRADO.AsString = 'S') then
      fDMConferencia.prc_Inserir
    else
      fDMConferencia.cdsConferencia.Edit;
    fDMConferencia.cdsConferenciaQTD_PRODUITO.AsInteger := fDMConferencia.cdsConferenciaQTD_PRODUITO.AsInteger + 1;
    fDMConferencia.cdsConferenciaPESO_LIQ.AsFloat       := StrToFloat(FormatFloat('0.00000',fDMConferencia.cdsConferenciaPESO_LIQ.AsFloat + fDMConferencia.qCBarraPESOLIQUIDO.AsFloat));
    fDMConferencia.cdsConferenciaPESO_BRU.AsFloat       := StrToFloat(FormatFloat('0.00000',fDMConferencia.cdsConferenciaPESO_BRU.AsFloat + fDMConferencia.qCBarraPESOBRUTO.AsFloat));
    fDMConferencia.cdsConferencia.Post;

    fDMConferencia.cdsConferencia_Itens.Last;
    if (fDMConferencia.cdsConferencia_Itens.IsEmpty) or (fDMConferencia.cdsConferencia_ItensENCERRADO.AsString = 'S') then
      fDMConferencia.prc_Inserir_Itens
    else
      fDMConferencia.cdsConferencia_Itens.Edit;
    fDMConferencia.cdsConferencia_ItensQTD.AsInteger    := fDMConferencia.cdsConferencia_ItensQTD.AsInteger + 1;
    fDMConferencia.cdsConferencia_ItensPESO_LIQ.AsFloat := StrToFloat(FormatFloat('0.00000',fDMConferencia.cdsConferencia_ItensPESO_LIQ.AsFloat + fDMConferencia.qCBarraPESOLIQUIDO.AsFloat));
    fDMConferencia.cdsConferencia_ItensPESO_BRU.AsFloat := StrToFloat(FormatFloat('0.00000',fDMConferencia.cdsConferencia_ItensPESO_BRU.AsFloat + fDMConferencia.qCBarraPESOBRUTO.AsFloat));
    fDMConferencia.cdsConferencia_Itens.Post;

    if fDMConferencia.cdsConferencia_Ped.Locate('ID_PEDIDO;ITEM_PEDIDO',VarArrayOf([fDMConferencia.cdsPedido_ItemID.AsInteger,fDMConferencia.cdsPedido_ItemITEM.AsInteger]),[locaseinsensitive]) then
      fDMConferencia.cdsConferencia_Ped.Edit
    else
      fDMConferencia.prc_Inserir_Ped;
    fDMConferencia.cdsConferencia_PedID_PEDIDO.AsInteger   := fDMConferencia.cdsPedido_ItemID.AsInteger;
    fDMConferencia.cdsConferencia_PedITEM_PEDIDO.AsInteger := fDMConferencia.cdsPedido_ItemITEM.AsInteger;
    fDMConferencia.cdsConferencia_PedID_PRODUTO.AsInteger  := fDMConferencia.cdsPedido_ItemID_PRODUTO.AsInteger;
    fDMConferencia.cdsConferencia_PedQTD.AsInteger         := fDMConferencia.cdsConferencia_PedQTD.AsInteger + 1;
    fDMConferencia.cdsConferencia_PedPESO_LIQ.AsFloat      := StrToFloat(FormatFloat('0.00000',fDMConferencia.cdsConferencia_PedPESO_LIQ.AsFloat + fDMConferencia.qCBarraPESOLIQUIDO.AsFloat));
    fDMConferencia.cdsConferencia_PedPESO_BRU.AsFloat      := StrToFloat(FormatFloat('0.00000',fDMConferencia.cdsConferencia_PedPESO_BRU.AsFloat + fDMConferencia.qCBarraPESOBRUTO.AsFloat));
    fDMConferencia.cdsConferencia_Ped.Post;
    fDMConferencia.cdsConferencia_Ped.ApplyUpdates(0);

    fDMConferencia.cdsConferencia.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    Windows.Beep(1000, 520);
    Windows.Beep(1500, 480);
    raise;
  end;
  FreeAndNil(sds);

  fDMConferencia.cdsConferencia.Last;
  fDMConferencia.cdsConferencia_Itens.Last;
  fDMConferencia.cdsConferencia_Ped.Last;
  if vItem_Ped > 0 then
    fDMConferencia.cdsPedido_Item.Locate('ITEM',vItem_Ped,[loCaseInsensitive]);

  Label10.Caption := fDMConferencia.cdsConferencia_ItensQTD.AsString;
  Label11.Caption := fDMConferencia.cdsConferencia_ItensPESO_LIQ.AsString;
  Label12.Caption := fDMConferencia.cdsConferencia_ItensPESO_BRU.AsString;

  edtCBarra.Clear;
  edtCBarra.SetFocus;
end;

procedure TfrmLiberacao_Fat.btnConfBaixaClick(Sender: TObject);
begin
  if fDMConferencia.cdsConferencia_Itens.IsEmpty then
    exit;
  fDMConferencia.cdsConferencia_Itens.Last;
  if fDMConferencia.cdsConferencia_ItensENCERRADO.AsString = 'S' then
  begin
    MessageDlg('Embalagem já encerrada!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMConferencia.qQtdProd.Close;
  fDMConferencia.qQtdProd.ParamByName('ID').AsInteger   := fDMConferencia.cdsConferencia_ItensID.AsInteger;
  fDMConferencia.qQtdProd.ParamByName('ITEM').AsInteger := fDMConferencia.cdsConferencia_ItensITEM.AsInteger;
  fDMConferencia.qQtdProd.Open;

  fDMConferencia.cdsConferencia_Itens.Edit;
  fDMConferencia.cdsConferencia_ItensENCERRADO.AsString := 'S';
  fDMConferencia.cdsConferencia_ItensQTD_TIPO_PRODUTO.AsInteger := fDMConferencia.qQtdProdCONTADOR.AsInteger;
  fDMConferencia.cdsConferencia_ItensETIQUETA.AsString  := 'S';
  fDMConferencia.cdsConferencia_Itens.Post;
  fDMConferencia.cdsConferencia_Itens.ApplyUpdates(0);

  fDMConferencia.cdsConferencia_Itens.Last;
  fDMConferencia.prc_Imp_Etiqueta(fDMConferencia.cdsConferencia_ItensID.AsInteger,fDMConferencia.cdsConferencia_ItensITEM.AsInteger);
end;

procedure TfrmLiberacao_Fat.NxButton2Click(Sender: TObject);
var
  ID: TTransactionDesc;
  sds, sds2: TSQLDataSet;
  vID_PedAux : Integer;
  vID_Ped, vItem_Ped : Integer;
begin
  if fDMConferencia.cdsConferencia.IsEmpty then
    exit;
  fDMConferencia.cdsConferencia.Last;
  if fDMConferencia.cdsConferenciaENCERRADO.AsString = 'S' then
  begin
    MessageDlg('Conferência já encerrada!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMConferencia.cdsConferencia_Itens.Last;
  if fDMConferencia.cdsConferencia_Itens.RecordCount <= 0 then
  begin
    MessageDlg('Conferência sem embalagens!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMConferencia.cdsConferencia_ItensENCERRADO.AsString <> 'S' then
  begin
    MessageDlg('Existe embalagem não encerrada!', mtInformation, [mbOk], 0);
    exit;
  end;

  sds  := TSQLDataSet.Create(nil);
  sds2 := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 ' +
                         'WHERE TABELA = ' + QuotedStr('CONFERENCIA');
    sds.ExecSQL();

    sds2.SQLConnection := dmDatabase.scoDados;
    sds2.NoMetadata    := True;
    sds2.GetMetadata   := False;
    sds2.Close;

    vID_Ped   := fDMConferencia.cdsPedido_ItemID.AsInteger;
    vItem_Ped := fDMConferencia.cdsPedido_ItemITEM.AsInteger;

    fDMConferencia.cdsConferencia.Edit;
    fDMConferencia.cdsConferenciaENCERRADO.AsString     := 'S';
    fDMConferencia.cdsConferenciaDTENCERRADO.AsDateTime := Date;
    fDMConferencia.cdsConferenciaHRENCERRADO.AsDateTime := Now;
    fDMConferencia.cdsConferenciaTOTAL_ITENS.AsInteger  := fDMConferencia.cdsConferencia_Itens.RecordCount;
    sds2.CommandText := 'SELECT COUNT(DISTINCT CP.id_produto) CONTADOR  FROM conferencia_ped CP  WHERE CP.ID = :ID ';
    sds2.ParamByName('ID').AsInteger := fDMConferencia.cdsConferenciaID.AsInteger;
    sds2.Open;
    fDMConferencia.cdsConferenciaTOTAL_PRODUTO_DIF.AsInteger := sds2.FieldByName('CONTADOR').AsInteger;
    fDMConferencia.cdsConferencia.Post;

    fDMConferencia.cdsQtdPed.Close;
    fDMConferencia.sdsQtdPed.ParamByName('ID').AsInteger := fDMConferencia.cdsConferenciaID.AsInteger;
    fDMConferencia.cdsQtdPed.Open;

    fDMConferencia.cdsConferencia.ApplyUpdates(0);

    sds2.Close;
    vID_PedAux := 0;
    fDMConferencia.cdsQtdPed.First;
    while not fDMConferencia.cdsQtdPed.Eof do
    begin
      sds2.CommandText := 'UPDATE PEDIDO_ITEM SET QTD_LIBERADA =  ROUND(QTD_LIBERADA + ' + FloatToStr(fDMConferencia.cdsQtdPedQTD.AsFloat) + ',4)'
                        + ', QTD_CONFERIDO = ROUND(QTD_CONFERIDO - ' + FloatToStr(fDMConferencia.cdsQtdPedQTD.AsFloat)  + ',4) '
                        + 'WHERE ID = ' + IntToStr(fDMConferencia.cdsQtdPedID_PEDIDO.AsInteger)
                        + '  AND ITEM = ' + IntToStr(fDMConferencia.cdsQtdPedITEM_PEDIDO.AsInteger);
      sds2.ExecSQL();

      if vID_PedAux <> fDMConferencia.cdsQtdPedID_PEDIDO.AsInteger then
      begin
        fDMConferencia.sdsPrc_Atualiza_Status_Ped.Close;
        fDMConferencia.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMConferencia.cdsQtdPedID_PEDIDO.AsInteger;
        fDMConferencia.sdsPrc_Atualiza_Status_Ped.ExecSQL;
      end;

      vID_PedAux := fDMConferencia.cdsQtdPedID_PEDIDO.AsInteger;
      fDMConferencia.cdsQtdPed.Next;
    end;

    prc_Abrir_Conferencia;

    dmDatabase.scoDados.Commit(ID);

    fDMConferencia.cdsPedido_Item.Close;
    fDMConferencia.sdsPedido_Item.ParamByName('ID').AsInteger := vID_Ped;
    fDMConferencia.cdsPedido_Item.Open;

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
  FreeAndNil(sds2);
end;

procedure TfrmLiberacao_Fat.NxButton1Click(Sender: TObject);
begin
  prc_Chamar_Form_Ped;
end;

procedure TfrmLiberacao_Fat.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F4) then
    prc_Chamar_Form_Ped;
end;

procedure TfrmLiberacao_Fat.prc_Chamar_Form_Ped;
var
  ffrmLiberacao_Fat_Ped: TfrmLiberacao_Fat_Ped;
begin
  fDMConferencia.vID_Pedido_Fat  := 0;
  if (fDMConferencia.cdsPedido_Item.Active) and (fDMConferencia.cdsPedido_ItemID.AsInteger > 0) then
    fDMConferencia.vID_Pedido_Fat := fDMConferencia.cdsPedido_ItemID.AsInteger
  else
    fDMConferencia.vNum_Pedido_Fat := 0;

  ffrmLiberacao_Fat_Ped := TfrmLiberacao_Fat_Ped.Create(self);
  ffrmLiberacao_Fat_Ped.fDMConferencia := fDMConferencia;
  ffrmLiberacao_Fat_Ped.ShowModal;
  FreeAndNil(ffrmLiberacao_Fat_Ped);

  if fDMConferencia.vID_Pedido_Fat <= 0 then
    fDMConferencia.cdsPedido_Item.Close
  else
  //if fDMConferencia.vID_Pedido_Fat <> fDMConferencia.cdsPedido_ItemID.AsInteger then
  begin
    fDMConferencia.cdsPedido_Item.Close;
    fDMConferencia.sdsPedido_Item.ParamByName('ID').AsInteger := fDMConferencia.vID_Pedido_Fat;
    fDMConferencia.cdsPedido_Item.Open;
  end;
  if fDMConferencia.vID_Pedido_Fat > 0 then
  begin
    Label14.Caption := IntToStr(fDMConferencia.vNum_Pedido_Fat);
    SMDBGrid2.SetFocus;
  end
  else
    Label14.Caption := '0';
end;

procedure TfrmLiberacao_Fat.SMDBGrid2Enter(Sender: TObject);
begin
  vItem_Ped_Sel := 0;
  {if fDMConferencia.cdsPedido_ItemCONFERIDO.AsString = 'D' then
  begin
    vItem_Ant := fDMConferencia.cdsPedido_ItemITEM.AsInteger;
    if fDMConferencia.cdsPedido_ItemCONFERIDO.AsString = 'D' then
    begin
      fDMConferencia.cdsPedido_Item.Edit;
      fDMConferencia.cdsPedido_ItemCONFERIDO.AsString := '';
      fDMConferencia.cdsPedido_Item.Post;
    end;
  end
  else
    vItem_Ant := 0;}
end;

procedure TfrmLiberacao_Fat.Panel3Exit(Sender: TObject);
begin
  edtCBarra.Enabled := False;
  Label5.Enabled    := False;
end;

procedure TfrmLiberacao_Fat.SMDBGrid2DblClick(Sender: TObject);
begin
  prc_Posiciona_Item;
end;

procedure TfrmLiberacao_Fat.prc_Posiciona_Item;
begin
  if (fDMConferencia.cdsPedido_Item.Active) and (fDMConferencia.cdsPedido_ItemITEM.AsInteger > 0) then
  begin
    vItem_Ped_Sel := fDMConferencia.cdsPedido_ItemITEM.AsInteger;                                           
    {fDMConferencia.cdsPedido_Item.Edit;
    fDMConferencia.cdsPedido_ItemCONFERIDO.AsString := 'D';
    fDMConferencia.cdsPedido_Item.Post;}
    edtCBarra.Enabled := True;
    Label5.Enabled    := True;
    edtCBarra.SetFocus;
  end;
end;

procedure TfrmLiberacao_Fat.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMConferencia.cdsPedido_ItemITEM.AsInteger = vItem_Ped_Sel) and (vItem_Ped_Sel > 0) then
    AFont.Style := [fsBold]
  else
  if (fDMConferencia.cdsPedido_ItemQTD_RESTANTE.AsInteger - fDMConferencia.cdsPedido_ItemQTD_CONFERIDO.AsInteger - fDMConferencia.cdsPedido_ItemQTD_LIBERADA.AsInteger) <= 0 then
    Background := $00A6FFFF;
end;

procedure TfrmLiberacao_Fat.SMDBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    prc_Posiciona_Item;
end;

procedure TfrmLiberacao_Fat.prc_Abrir_Conferencia;
begin
  fDMConferencia.qConferencia.Close;
  fDMConferencia.qConferencia.ParamByName('USUARIO').AsString := vUsuario;
  fDMConferencia.qConferencia.Open;
  if fDMConferencia.qConferencia.IsEmpty then
    fDMConferencia.prc_Localizar(-1)
  else
    fDMConferencia.prc_Localizar(fDMConferencia.qConferenciaID.AsInteger);

  if not fDMConferencia.cdsConferencia.IsEmpty then
  begin
    fDMConferencia.cdsConferencia_Itens.Last;
    if fDMConferencia.cdsConferencia_ItensENCERRADO.AsString = 'N' then
    begin
      Label10.Caption := fDMConferencia.cdsConferencia_ItensQTD.AsString;
      Label11.Caption := fDMConferencia.cdsConferencia_ItensPESO_LIQ.AsString;
      Label12.Caption := fDMConferencia.cdsConferencia_ItensPESO_BRU.AsString;
    end;
  end;
end;

procedure TfrmLiberacao_Fat.btnEtiquetaClick(Sender: TObject);
var
  vItemAux : Integer;
begin
  if not(fDMConferencia.cdsConferencia_Itens.Active) or (fDMConferencia.cdsConferencia_Itens.IsEmpty) then
  begin
    MessageDlg('Não existe registro para imprimir a etiqueta! ' , mtInformation, [mbOk], 0);
    Exit;
  end;

  if fDMConferencia.cdsConferencia_ItensENCERRADO.AsString <> 'S' then
  begin
    MessageDlg('Item não encerrado! ' , mtInformation, [mbOk], 0);
    Exit;
  end;

  if fDMConferencia.cdsConferencia_ItensETIQUETA.AsString = 'S' then
    if MessageDlg('Etiqueta já impressa, imprimir novamente?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      Exit;

  if fDMConferencia.cdsConferencia_ItensETIQUETA.AsString <> 'S' then
  begin
    vItemAux := fDMConferencia.cdsConferencia_ItensITEM.AsInteger;
    fDMConferencia.cdsConferencia_Itens.Edit;
    fDMConferencia.cdsConferencia_ItensETIQUETA.AsString := 'S';
    fDMConferencia.cdsConferencia_Itens.Post;
    fDMConferencia.cdsConferencia_Itens.ApplyUpdates(0);
    fDMConferencia.cdsConferencia_Itens.Locate('ITEM',vItemAux,[loCaseInsensitive]);
  end;
  fDMConferencia.prc_Imp_Etiqueta(fDMConferencia.cdsConferencia_ItensID.AsInteger,fDMConferencia.cdsConferencia_ItensITEM.AsInteger);
end;

procedure TfrmLiberacao_Fat.NxButton3Click(Sender: TObject);
var
  ffrmLiberacao_Fat_Conf: TfrmLiberacao_Fat_Conf;
begin
  fDMConferencia.vID_Conferencia := 0;
  ffrmLiberacao_Fat_Conf := TfrmLiberacao_Fat_Conf.Create(self);
  ffrmLiberacao_Fat_Conf.fDMConferencia := fDMConferencia;
  ffrmLiberacao_Fat_Conf.ShowModal;
  FreeAndNil(ffrmLiberacao_Fat_Conf);

  if fDMConferencia.vID_Conferencia > 0 then
    fDMConferencia.prc_Localizar(fDMConferencia.vID_Conferencia);
end;

end.
