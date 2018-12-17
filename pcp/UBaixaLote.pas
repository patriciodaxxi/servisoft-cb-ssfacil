unit UBaixaLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMBaixaPedido, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  UDMEstoque, dbXPress, NxPageControl, RzTabs, NxCollection, NxEdit, CurrEdit;

type
  TfrmBaixaLote = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label7: TLabel;
    DateEdit1: TDateEdit;
    Label8: TLabel;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    Label4: TLabel;
    DateEdit5: TDateEdit;
    SMDBGrid1: TSMDBGrid;
    btnConsultar: TNxButton;
    btnConfBaixa: TNxButton;
    ckEstoque: TNxCheckBox;
    CurrencyEdit1: TCurrencyEdit;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    fDMBaixaPedido: TDMBaixaPedido;
    fDMEstoque: TDMEstoque;
    ColunaOrdenada: String;

    procedure prc_Consultar;
    procedure prc_Le_Talao_Ped;
    procedure prc_Abrir_Pedido_Item;
    procedure prc_Abrir_Baixa_Talao(ID: Integer);

  public
    { Public declarations }
  end;

var
  frmBaixaLote: TfrmBaixaLote;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelEstoque;

{$R *.dfm}

procedure TfrmBaixaLote.prc_Consultar;
var
  vComando: String;
  vOpcaoDtEntrega: String;
begin
  fDMBaixaPedido.cdsLote_Talao.Close;
  fDMBaixaPedido.sdsLote_Talao.CommandText := fDMBaixaPedido.ctLote_Talao;
  vComando := '';
  if RxDBLookupCombo1.Text <> '' then
    vComando := ' AND L.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND L.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' AND L.NUM_LOTE = ' + CurrencyEdit1.Text;
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND L.DTENTREGA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND L.DTENTREGA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMBaixaPedido.sdsLote_Talao.CommandText := fDMBaixaPedido.sdsLote_Talao.CommandText + vComando;
  fDMBaixaPedido.cdsLote_Talao.Open;
  fDMBaixaPedido.cdsLote_Talao.IndexFieldNames := 'NUM_LOTE;NUM_TALAO';
end;

procedure TfrmBaixaLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmBaixaLote.FormShow(Sender: TObject);
var
  vCampoAux: String;
  i: Integer;
begin
  fDMBaixaPedido := TDMBaixaPedido.Create(Self);
  fDMEstoque     := TDMEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMBaixaPedido);
  fDMBaixaPedido.cdsFilial.First;
  if (fDMBaixaPedido.cdsFilial.RecordCount < 2) and (fDMBaixaPedido.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMBaixaPedido.cdsFilialID.AsInteger;
end;

procedure TfrmBaixaLote.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMBaixaPedido.cdsLote_Talao.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmBaixaLote.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmBaixaLote.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMBaixaPedido.cdsCliente.IndexFieldNames := 'NOME';
end;

procedure TfrmBaixaLote.btnConfBaixaClick(Sender: TObject);
var
  vContadorAux: Integer;
begin
  prc_Abrir_Baixa_Talao(-1);

  if DateEdit5.Date < 10 then
  begin
    ShowMessage('*** Data da baixa não informada!');
    exit;
  end;
  fDMBaixaPedido.fDMEstoque := fDMEstoque;
  vContadorAux := 0;
  fDMBaixaPedido.cdsLote_Talao.First;
  while not fDMBaixaPedido.cdsLote_Talao.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      vContadorAux := vContadorAux + 1;
      prc_Le_Talao_Ped;
    end;
    fDMBaixaPedido.cdsLote_Talao.Next;
  end;
  btnConsultarClick(Sender);
  ShowMessage('Total de Talões baixados: ' + IntToStr(vContadorAux));
  DateEdit5.Clear;
  ckEstoque.Checked := False;
end;

procedure TfrmBaixaLote.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmBaixaLote.prc_Le_Talao_Ped;
var
  vEstoque: String;
  ID: TTransactionDesc;
begin
  if ckEstoque.Checked then
    vEstoque := 'S'
  else
    vEstoque := 'N';

  ID.TransactionID  := 9;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try

    vTipo_Baixa_Ped := 'PRO';
    fDMBaixaPedido.cdsTalao_Ped.Close;
    fDMBaixaPedido.sdsTalao_Ped.ParamByName('ID').AsInteger        := fDMBaixaPedido.cdsLote_TalaoID.AsInteger;
    fDMBaixaPedido.sdsTalao_Ped.ParamByName('NUM_TALAO').AsInteger := fDMBaixaPedido.cdsLote_TalaoNUM_TALAO.AsInteger;
    fDMBaixaPedido.cdsTalao_Ped.Open;
    fDMBaixaPedido.cdsTalao_Ped.First;
    while not fDMBaixaPedido.cdsTalao_Ped.Eof do
    begin
      prc_Abrir_Pedido_Item;
      if not fDMBaixaPedido.cdsPedido_Item.IsEmpty then
        fDMBaixaPedido.prc_Gravar_Baixa('P',vEstoque,'T',DateEdit5.Date);
      fDMBaixaPedido.cdsTalao_Ped.Next;
    end;

    fDMBaixaPedido.cdsTalao.Close;
    fDMBaixaPedido.sdsTalao.ParamByName('ID').AsInteger        := fDMBaixaPedido.cdsLote_TalaoID.AsInteger;
    fDMBaixaPedido.sdsTalao.ParamByName('NUM_TALAO').AsInteger := fDMBaixaPedido.cdsLote_TalaoNUM_TALAO.AsInteger;
    fDMBaixaPedido.cdsTalao.Open;
    if not fDMBaixaPedido.cdsTalao.IsEmpty then
    begin
      fDMBaixaPedido.cdsTalao.Edit;
      fDMBaixaPedido.cdsTalaoDTBAIXA.AsDateTime    := DateEdit5.Date;
      fDMBaixaPedido.cdsTalaoHRBAIXA.AsDateTime    := Now;
      fDMBaixaPedido.cdsTalaoQTD_PRODUZIDO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMBaixaPedido.cdsTalaoQTD.AsFloat));
      fDMBaixaPedido.cdsTalaoQTD_PENDENTE.AsFloat  := StrToFloat(FormatFloat('0.00',0));
      fDMBaixaPedido.cdsTalao.Post;
      fDMBaixaPedido.cdsTalao.ApplyUpdates(0);
    end;
    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;

end;

procedure TfrmBaixaLote.prc_Abrir_Pedido_Item;
begin
  fDMBaixaPedido.cdsPedido_Item.Close;
  fDMBaixaPedido.sdsPedido_Item.CommandText := fDMBaixaPedido.ctPedido_Item
                                             + ' AND ITE.ID = ' + fDMBaixaPedido.cdsTalao_PedID_PEDIDO.AsString
                                             + ' AND ITE.ITEM = ' + fDMBaixaPedido.cdsTalao_PedITEM_PEDIDO.AsString;
  fDMBaixaPedido.cdsPedido_Item.Open;
end;

procedure TfrmBaixaLote.prc_Abrir_Baixa_Talao(ID: Integer);
begin
  fDMBaixaPedido.cdsBaixa_Talao.Close;
  fDMBaixaPedido.sdsBaixa_Talao.CommandText := fDMBaixaPedido.ctBaixa_Talao;
  if ID <> 0 then
    fDMBaixaPedido.sdsBaixa_Talao.CommandText := fDMBaixaPedido.sdsBaixa_Talao.CommandText
                                               + ' WHERE ID = ' + IntToStr(ID);
  fDMBaixaPedido.cdsBaixa_Talao.Open;
end;

end.
