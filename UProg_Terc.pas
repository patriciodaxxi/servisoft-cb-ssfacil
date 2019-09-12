unit UProg_Terc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMProg_Terc, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  dbXPress, NxPageControl, RzTabs, NxCollection, NxEdit, CurrEdit;

type
  TfrmProg_Terc = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Produto_Pend: TRzTabSheet;
    Panel4: TPanel;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Edit2: TEdit;
    btnConsultar_Pend: TNxButton;
    NxLabel1: TNxLabel;
    NxPanel1: TNxPanel;
    Label3: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    NxButton3: TNxButton;
    Label9: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    SMDBGrid3: TSMDBGrid;
    TS_Liberados: TRzTabSheet;
    RzPageControl2: TRzPageControl;
    TS_Pedido_Lib: TRzTabSheet;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    Edit5: TEdit;
    SMDBGrid1: TSMDBGrid;
    TS_Produto_Lib: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    btnImprimir: TNxButton;
    btnImprimir_NaoLib: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConsultar_PendClick(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnImprimir_NaoLibClick(Sender: TObject);
  private
    { Private declarations }
    fDMProg_Terc: TDMProg_Terc;
    ColunaOrdenada: String;

    procedure prc_Consultar_Pend;
    procedure prc_Consultar_Pedido_Lib;
    procedure prc_Consultar_Produto_Lib;
    procedure prc_Gravar_Prog_Terc(Qtd : Real);

    procedure prc_Imprimir_Pedido_Lib;
    procedure prc_Imprimir_Produto_Lib;

    function fnc_Existe_Produto : String;

  public
    { Public declarations }
  end;

var
  frmProg_Terc: TfrmProg_Terc;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, USel_Pessoa;

{$R *.dfm}


procedure TfrmProg_Terc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmProg_Terc.FormShow(Sender: TObject);
var
  vCampoAux: String;
  i: Integer;
begin
  fDMProg_Terc := TDMProg_Terc.Create(Self);

  oDBUtils.SetDataSourceProperties(Self, fDMProg_Terc);
  //fDMProg_Terc.cdsFilial.First;
  //if (fDMProg_Terc.cdsFilial.RecordCount < 2) and (fDMProg_Terc.cdsFilialID.AsInteger > 0) then
  //  RxDBLookupCombo1.KeyValue := fDMProg_Terc.cdsFilialID.AsInteger;
end;

procedure TfrmProg_Terc.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  //fDMProg_Terc.cdsPedido_Pend.IndexFieldNames := Column.FieldName;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmProg_Terc.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmProg_Terc.CurrencyEdit1Change(Sender: TObject);
begin
  Edit2.Clear;
end;

procedure TfrmProg_Terc.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    if CurrencyEdit1.AsInteger > 0 then
      Edit2.Text := fnc_Existe_Produto;
    btnConsultar_PendClick(Sender);
  end;
end;

procedure TfrmProg_Terc.btnConsultar_PendClick(Sender: TObject);
begin
  prc_Consultar_Pend;
end;

procedure TfrmProg_Terc.prc_Consultar_Pend;
begin
  fDMProg_Terc.cdsPedido_Pend.Close;
  fDMProg_Terc.sdsPedido_Pend.CommandText := fDMProg_Terc.ctPedido_Pend;
  if CurrencyEdit1.AsInteger > 0 then
    fDMProg_Terc.sdsPedido_Pend.CommandText := fDMProg_Terc.sdsPedido_Pend.CommandText + ' AND I.ID_PRODUTO = ' + IntToStr(CurrencyEdit1.AsInteger);
  fDMProg_Terc.cdsPedido_Pend.Open;
  fDMProg_Terc.cdsPedido_Pend.IndexFieldNames := 'DTENTREGA;PEDIDO_CLIENTE;ID_PRODUTO;ITEM';
  CurrencyEdit3.Value := fDMProg_Terc.cdsPedido_PendagQtd_Total.AsVariant;
  SMDBGrid3.SelectAllClick(SMDBGrid3);
end;

procedure TfrmProg_Terc.NxButton3Click(Sender: TObject);
var
  vQtdOrig : Real;
  vQtdAux : Real;
begin
  if CurrencyEdit2.Value <= 0 then
  begin
    MessageDlg('*** Qtd. não informada!',mtError, [mbOk], 0);
    exit;
  end;
  if CurrencyEdit2.Value > CurrencyEdit3.Value then
  begin
    MessageDlg('*** Qtd. informada maior que a total!',mtError, [mbOk], 0);
    exit;
  end;

  if not fDMProg_Terc.cdsProg_Terc.Active then
    fDMProg_Terc.prc_Localizar(-1);

  vQtdOrig := CurrencyEdit2.Value;  
  fDMProg_Terc.cdsPedido_Pend.First;
  while not fDMProg_Terc.cdsPedido_Pend.Eof do
  begin
    if (SMDBGrid3.SelectedRows.CurrentRowSelected) and (StrToFloat(FormatFloat('0.0000',fDMProg_Terc.cdsPedido_PendQTD_PENDENTE_LIB.AsFloat)) > 0)
      and (StrToFloat(FormatFloat('0.0000',vQtdOrig)) > 0) then
    begin
      if StrToFloat(FormatFloat('0.0000',vQtdOrig)) > 0 then
      begin
        vQtdAux := fDMProg_Terc.cdsPedido_PendQTD_PENDENTE_LIB.AsFloat;
        if StrToFloat(FormatFloat('0.0000',fDMProg_Terc.cdsPedido_PendQTD_PENDENTE_LIB.AsFloat)) > StrToFloat(FormatFloat('0.0000',vQtdOrig)) then
          vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdOrig));
        prc_Gravar_Prog_Terc(vQtdAux);

        fDMProg_Terc.sdsPrc_Atualiza_Status_Ped.Close;
        fDMProg_Terc.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMProg_Terc.cdsPedido_PendID.AsInteger;
        fDMProg_Terc.sdsPrc_Atualiza_Status_Ped.ExecSQL;

        vQtdOrig := StrToFloat(FormatFloat('0.0000',vQtdOrig - vQtdAux));
        if StrToFloat(FormatFloat('0.0000',vQtdOrig)) <= 0 then
          fDMProg_Terc.cdsPedido_Pend.Last;
      end;
    end;
    fDMProg_Terc.cdsPedido_Pend.Next;
  end;

  CurrencyEdit2.Clear;
  MessageDlg('*** Produto Liberado!',mtConfirmation, [mbOk], 0);
  CurrencyEdit1.Clear;
  CurrencyEdit1.SetFocus;
  Edit2.Clear;
  fDMProg_Terc.cdsPedido_Pend.Close;
end;

procedure TfrmProg_Terc.prc_Gravar_Prog_Terc(Qtd: Real);
begin
  fDMProg_Terc.prc_Inserir;
  fDMProg_Terc.cdsProg_TercID_PRODUTO.AsInteger  := fDMProg_Terc.cdsPedido_PendID_PRODUTO.AsInteger;
  fDMProg_Terc.cdsProg_TercID_COR.AsInteger      := 0;
  fDMProg_Terc.cdsProg_TercID_PEDIDO.AsInteger   := fDMProg_Terc.cdsPedido_PendID.AsInteger;
  fDMProg_Terc.cdsProg_TercITEM_PEDIDO.AsInteger := fDMProg_Terc.cdsPedido_PendITEM.AsInteger;
  fDMProg_Terc.cdsProg_TercQTD.AsFloat           := StrToFloat(FormatFloat('0.0000',Qtd));
  fDMProg_Terc.cdsProg_Terc.Post;
  fDMProg_Terc.cdsProg_Terc.ApplyUpdates(0);
end;

function TfrmProg_Terc.fnc_Existe_Produto: String;
var
  sds: TSQLDataSet;
begin
  Result   := '';
  sds      := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.Close;
    sds.CommandText   := 'SELECT NOME FROM PRODUTO WHERE ID = ' + IntToStr(CurrencyEdit1.AsInteger);
    sds.Open;
    Result := sds.FieldByName('NOME').AsString;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmProg_Terc.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger <= 0 then
    exit;
  Edit2.Text := fnc_Existe_Produto;
  if trim(Edit2.Text) = '' then
  begin
    MessageDlg('*** ID do Produto não encontrado!',mtError, [mbOk], 0);
    CurrencyEdit1.SetFocus;
    exit;
  end;
end;

procedure TfrmProg_Terc.btnConsultarClick(Sender: TObject);
begin
  if RzPageControl2.ActivePage = TS_Pedido_Lib then
    prc_Consultar_Pedido_Lib
  else
    prc_Consultar_Produto_Lib;
end;

procedure TfrmProg_Terc.prc_Consultar_Pedido_Lib;
var
  vComando: String;
begin
  fDMProg_Terc.cdsPedido_Lib.Close;
  vComando := '';
  if RxDBLookupCombo3.Text <> '' then
    vComando := vComando + ' AND P.FILIAL = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if trim(Edit5.Text) <> '' then
    vComando := vComando + ' AND CLI.NOME LIKE ' + QuotedStr('%'+Edit5.Text+'%');
  fDMProg_Terc.sdsPedido_Lib.CommandText := fDMProg_Terc.ctPedido_Lib + vComando;
  fDMProg_Terc.cdsPedido_Lib.Open;
  fDMProg_Terc.cdsPedido_Lib.IndexFieldNames := 'PEDIDO_CLIENTE;DTEMISSAO;ID_PRODUTO';
end;

procedure TfrmProg_Terc.prc_Consultar_Produto_Lib;
var
  vComando: String;
begin
  fDMProg_Terc.cdsProduto_Lib.Close;
  vComando := '';
  if RxDBLookupCombo3.Text <> '' then
    vComando := vComando + ' AND P.FILIAL = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if trim(Edit5.Text) <> '' then
    vComando := vComando + ' AND CLI.NOME LIKE ' + QuotedStr('%'+Edit5.Text+'%');
  fDMProg_Terc.sdsProduto_Lib.CommandText := fDMProg_Terc.ctProduto_Lib + vComando;
  fDMProg_Terc.cdsProduto_Lib.Open;
  fDMProg_Terc.cdsProduto_Lib.IndexFieldNames := 'ID_PRODUTO;NOME_CLIENTE';
end;

procedure TfrmProg_Terc.btnImprimirClick(Sender: TObject);
begin
  if RzPageControl2.ActivePage = TS_Pedido_Lib then
    prc_Imprimir_Pedido_Lib
  else
    prc_Imprimir_Produto_Lib;

end;

procedure TfrmProg_Terc.prc_Imprimir_Pedido_Lib;
var
  vArq: string;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedidos_Lib.fr3';
  if FileExists(vArq) then
    fDMProg_Terc.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMProg_Terc.frxReport1.ShowReport;
end;

procedure TfrmProg_Terc.prc_Imprimir_Produto_Lib;
var
  vArq: string;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Produtos_Lib.fr3';
  if FileExists(vArq) then
    fDMProg_Terc.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMProg_Terc.frxReport1.ShowReport;
end;

procedure TfrmProg_Terc.btnImprimir_NaoLibClick(Sender: TObject);
var
  vArq: string;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedidos_NaoLib.fr3';
  if FileExists(vArq) then
    fDMProg_Terc.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMProg_Terc.frxReport1.ShowReport;
end;

end.
