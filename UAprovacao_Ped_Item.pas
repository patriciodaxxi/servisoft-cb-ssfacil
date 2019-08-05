unit UAprovacao_Ped_Item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMAprovacao_Ped, Grids, DBGrids, SMDBGrid, ExtCtrls, RzPanel,
  StdCtrls, DB, NxCollection, Mask, ToolEdit, DBXpress, SqlExpr;

type
  TfrmAprovacao_Ped_Item = class(TForm)
    RzGroupBox1: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Shape5: TShape;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Shape7: TShape;
    Label32: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    Label4: TLabel;
    NxButton1: TNxButton;
    btnAprovarTodos: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure btnAprovarTodosClick(Sender: TObject);
    procedure prc_Gravar_Aprovacao;
  private
    { Private declarations }
    procedure prc_scroll(DataSet: TDataSet);

  public
    { Public declarations }
    fDMAprovacao_Ped: TDMAprovacao_Ped;
    
  end;

var
  frmAprovacao_Ped_Item: TfrmAprovacao_Ped_Item;

implementation

uses rsDBUtils, UAprovacao_Ped_Item2, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmAprovacao_Ped_Item.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMAprovacao_Ped.cdsPedido_Item.AFTERSCROLL := nil;
  Action := Cafree;
end;

procedure TfrmAprovacao_Ped_Item.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMAprovacao_Ped);
  fDMAprovacao_Ped.cdsPedido_Item.AFTERSCROLL := prc_scroll;
  fDMAprovacao_Ped.cdsPedido_Item.Last;
  fDMAprovacao_Ped.cdsPedido_Item.First;
end;

procedure TfrmAprovacao_Ped_Item.prc_scroll(DataSet: TDataSet);
begin
  fDMAprovacao_Ped.cdsPedido_Item_Aprov.Close;
  fDMAprovacao_Ped.sdsPedido_Item_Aprov.ParamByName('ID').AsInteger   := fDMAprovacao_Ped.cdsPedido_ItemID.AsInteger;
  fDMAprovacao_Ped.sdsPedido_Item_Aprov.ParamByName('ITEM').AsInteger := fDMAprovacao_Ped.cdsPedido_ItemITEM.AsInteger;
  fDMAprovacao_Ped.cdsPedido_Item_Aprov.Open;
end;

procedure TfrmAprovacao_Ped_Item.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMAprovacao_Ped.cdsPedido_ItemCANCELADO.AsString = 'S' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString = 'N' then
    Background  := $00AAAAFF
  else
  if fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString = '1' then
    Background  := $00FFFFA8
  else
  if fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString = 'S' then
    Background  := clMoneyGreen;
end;

procedure TfrmAprovacao_Ped_Item.SMDBGrid2DblClick(Sender: TObject);
begin
  if fDMAprovacao_Ped.fnc_Verifica_Aprov(fDMAprovacao_Ped.cdsPedido_ItemID.AsInteger,fDMAprovacao_Ped.cdsPedido_ItemITEM.AsInteger,'S') then
  begin
    MessageDlg('*** Item já esta aprovado!', mtInformation, [mbOk], 0);
    exit;
  end;

  frmAprovacao_Ped_Item2 := TfrmAprovacao_Ped_Item2.Create(self);
  frmAprovacao_Ped_Item2.fDMAprovacao_Ped := fDMAprovacao_Ped;
  frmAprovacao_Ped_Item2.lblUsuario.Caption := vUsuario;
  frmAprovacao_Ped_Item2.ShowModal;
  if frmAprovacao_Ped_Item2.ModalResult = mrOk then
  begin
    prc_Gravar_Aprovacao;
  end;
  FreeAndNil(frmAprovacao_Ped_Item2);

end;

procedure TfrmAprovacao_Ped_Item.NxButton1Click(Sender: TObject);
begin
  if fDMAprovacao_Ped.cdsPedido_Item_Aprov.RecordCount <= 0 then
    exit;
  fDMAprovacao_Ped.cdsPedido_Item_Aprov.Last;
  if MessageDlg('Deseja Excluir o registro selecionado abaixo?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  fDMAprovacao_Ped.cdsPedido_Item_Aprov.Delete;
  fDMAprovacao_Ped.cdsPedido_Item_Aprov.ApplyUpdates(0);

  fDMAprovacao_Ped.cdsPedido_Item.Edit;
  fDMAprovacao_Ped.cdsPedido_Item_Aprov.Last;
  if fDMAprovacao_Ped.cdsPedido_Item_Aprov.IsEmpty then
    fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString := 'P'
  else
  if fDMAprovacao_Ped.cdsPedido_Item_AprovAPROVADO.AsString = '1' then
    fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString := '1'
  else
    fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString := 'N';
  fDMAprovacao_Ped.cdsPedido_Item.Post;
  fDMAprovacao_Ped.cdsPedido_Item.ApplyUpdates(0);
end;

procedure TfrmAprovacao_Ped_Item.btnAprovarTodosClick(Sender: TObject);
var
  Gerou : Boolean;
begin
  Gerou := False;
  if fDMAprovacao_Ped.cdsPedido_Item.IsEmpty then
  begin
   MessageDlg('Nenhum registro na consulta', mtError, [mbOK],0);
   Exit;
  end;
  if fDMAprovacao_Ped.fnc_Verifica_Aprov(fDMAprovacao_Ped.cdsPedido_ItemID.AsInteger,fDMAprovacao_Ped.cdsPedido_ItemITEM.AsInteger,'S') then
  begin

    exit;
  end;

  frmAprovacao_Ped_Item2 := TfrmAprovacao_Ped_Item2.Create(self);
  try
    frmAprovacao_Ped_Item2.fDMAprovacao_Ped := fDMAprovacao_Ped;
    frmAprovacao_Ped_Item2.lblUsuario.Caption := vUsuario;
    frmAprovacao_Ped_Item2.ShowModal;
    fDMAprovacao_Ped.cdsPedido_Item.First;
    while not fDMAprovacao_Ped.cdsPedido_Item.Eof do
    begin
      if SMDBGrid2.SelectedRows.CurrentRowSelected then
      begin
        if frmAprovacao_Ped_Item2.ModalResult = mrOk then
        begin
          prc_Gravar_Aprovacao;
        end;
        Gerou := True;
      end;
      fDMAprovacao_Ped.cdsPedido_Item.Next;
    end;
  finally
     FreeAndNil(frmAprovacao_Ped_Item2);
    if not Gerou then
    begin
      MessageDlg('Nenhum registro selecionado!', mtError, [mbOK],0);
    end;
  end;

end;

procedure TfrmAprovacao_Ped_Item.prc_Gravar_Aprovacao;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vItem : Integer;
  vTipo : String;
begin
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try

    fDMAprovacao_Ped.cdsPedido_Item_Aprov.Last;
    vItem := fDMAprovacao_Ped.cdsPedido_Item_AprovITEM_APROV.AsInteger;

    fDMAprovacao_Ped.cdsPedido_Item_Aprov.Insert;
    fDMAprovacao_Ped.cdsPedido_Item_AprovID.AsInteger         := fDMAprovacao_Ped.cdsPedido_ItemID.AsInteger;
    fDMAprovacao_Ped.cdsPedido_Item_AprovITEM.AsInteger       := fDMAprovacao_Ped.cdsPedido_ItemITEM.AsInteger;
    fDMAprovacao_Ped.cdsPedido_Item_AprovITEM_APROV.AsInteger := vItem + 1;
    fDMAprovacao_Ped.cdsPedido_Item_AprovDATA.AsDateTime      := frmAprovacao_Ped_Item2.DateEdit1.Date;
    fDMAprovacao_Ped.cdsPedido_Item_AprovUSUARIO.AsString     := frmAprovacao_Ped_Item2.lblUsuario.Caption;
    fDMAprovacao_Ped.cdsPedido_Item_AprovDTUSUARIO.AsDateTime := Date;
    fDMAprovacao_Ped.cdsPedido_Item_AprovHRUSUARIO.AsDateTime := Now;
    fDMAprovacao_Ped.cdsPedido_Item_AprovID_FUNCIONARIO.AsInteger := fDMAprovacao_Ped.qFuncionarioCODIGO.AsInteger;
    fDMAprovacao_Ped.cdsPedido_Item_AprovMOTIVO_NAO_APROV.Clear;
    if frmAprovacao_Ped_Item2.RadioGroup1.ItemIndex = 0 then
    begin
      if fDMAprovacao_Ped.fnc_Verifica_Aprov(fDMAprovacao_Ped.cdsPedido_ItemID.AsInteger,fDMAprovacao_Ped.cdsPedido_ItemITEM.AsInteger,'1') then
        fDMAprovacao_Ped.cdsPedido_Item_AprovAPROVADO.AsString := 'S'
      else
        fDMAprovacao_Ped.cdsPedido_Item_AprovAPROVADO.AsString := '1';
    end
    else
    begin
      fDMAprovacao_Ped.cdsPedido_Item_AprovAPROVADO.AsString         := 'N';
      fDMAprovacao_Ped.cdsPedido_Item_AprovMOTIVO_NAO_APROV.AsString := frmAprovacao_Ped_Item2.Edit1.Text;
    end;
    fDMAprovacao_Ped.cdsPedido_Item_AprovNOME_FUNCIONARIO.AsString := frmAprovacao_Ped_Item2.lblFuncionario.Caption;
    vTipo := fDMAprovacao_Ped.cdsPedido_Item_AprovAPROVADO.AsString;
    fDMAprovacao_Ped.cdsPedido_Item_Aprov.Post;
    fDMAprovacao_Ped.cdsPedido_Item_Aprov.ApplyUpdates(0);

    fDMAprovacao_Ped.cdsPedido_Item.Edit;
    fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString := vTipo;
    fDMAprovacao_Ped.cdsPedido_Item.Post;
    fDMAprovacao_Ped.cdsPedido_Item.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);

  fDMAprovacao_Ped.sdsPrc_Atualiza_Aprov_Ped.Close;
  fDMAprovacao_Ped.sdsPrc_Atualiza_Aprov_Ped.ParamByName('P_ID').AsInteger := fDMAprovacao_Ped.mPedidoAuxID_Pedido.AsInteger;
  fDMAprovacao_Ped.sdsPrc_Atualiza_Aprov_Ped.ExecSQL;

end;

end.
