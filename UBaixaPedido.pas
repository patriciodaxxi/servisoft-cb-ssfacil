unit UBaixaPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMBaixaPedido, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  UDMEstoque, dbXPress, NxPageControl, RzTabs, NxCollection, NxEdit;

type
  TfrmBaixaPedido = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Label7: TLabel;
    DateEdit3: TDateEdit;
    Label8: TLabel;
    DateEdit4: TDateEdit;
    Panel2: TPanel;
    Shape3: TShape;
    Label14: TLabel;
    Shape4: TShape;
    Label15: TLabel;
    Label4: TLabel;
    DateEdit5: TDateEdit;
    UCControls1: TUCControls;
    SMDBGrid1: TSMDBGrid;
    btnConsultar: TNxButton;
    btnConfBaixa: TNxButton;
    ckEstoque: TNxCheckBox;
    Label11: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure SMDBGrid1ChangeSelection(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMBaixaPedido: TDMBaixaPedido;
    fDMEstoque: TDMEstoque;
    ColunaOrdenada: String;

    procedure prc_Consultar;
    procedure prc_Consultar2;

  public
    { Public declarations }
  end;

var
  frmBaixaPedido: TfrmBaixaPedido;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, USel_Pessoa;

{$R *.dfm}

procedure TfrmBaixaPedido.prc_Consultar;
var
  vComando: String;
  vOpcaoDtEntrega: String;
begin
  fDMBaixaPedido.cdsPedido_Pend.Close;
  fDMBaixaPedido.sdsPedido_Pend.CommandText := fDMBaixaPedido.ctPedido_Pend + ' WHERE 0 = 0 ';
  vComando := '';
  if vTipo_Baixa_Ped = 'FAT' then
    vComando := vComando + ' AND V.CLIENTE_ESTOQUE = ' + QuotedStr('N');
  if fMenu.vTipo_Reg_Pedido <> 'C' then
    vComando := vComando + ' AND V.TIPO_REG = ' + QuotedStr('P')
  else
    vComando := vComando + ' AND V.TIPO_REG = ' + QuotedStr('C');
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND V.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND V.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND V.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND V.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  vOpcaoDtEntrega := '';
  if fDMBaixaPedido.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
    vOpcaoDtEntrega := 'V.DTENTREGA_PED'
  else
    vOpcaoDtEntrega := 'V.DTENTREGA_ITEM';
  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));

  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND V.PEDIDO_CLIENTE LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  if vTipo_Baixa_Ped = 'PRO' then
    vComando := vComando + ' AND ((V.QTD - V.QTD_PRODUZIDA) > 0) ';
  vComando := vComando + ' AND V.QTD_RESTANTE > 0 ';
  fDMBaixaPedido.sdsPedido_Pend.CommandText := fDMBaixaPedido.sdsPedido_Pend.CommandText + vComando;
  fDMBaixaPedido.cdsPedido_Pend.Open;
  fDMBaixaPedido.cdsPedido_Pend.IndexFieldNames := 'PEDIDO_CLIENTE;DTEMISSAO';
end;

procedure TfrmBaixaPedido.prc_Consultar2;
var
  vComando: String;
  vOpcaoDtEntrega: String;
begin
  fDMBaixaPedido.cdsPedido_Item.Close;
  fDMBaixaPedido.sdsPedido_Item.CommandText := fDMBaixaPedido.ctPedido_Item;
  vComando := '';
  if vTipo_Baixa_Ped = 'FAT' then
    vComando := vComando + 'AND CLI.CLIENTE_ESTOQUE = ' + QuotedStr('N');
  if fMenu.vTipo_Reg_Pedido <> 'C' then
    vComando := vComando + ' AND PED.TIPO_REG = ' + QuotedStr('P')
  else
    vComando := vComando + ' AND PED.TIPO_REG = ' + QuotedStr('C');
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND PED.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  vOpcaoDtEntrega := '';
  if fDMBaixaPedido.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
    vOpcaoDtEntrega := 'PED.DTENTREGA'
  else
    vOpcaoDtEntrega := 'ITE.DTENTREGA';
  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));

  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND PED.PEDIDO_CLIENTE LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  if vTipo_Baixa_Ped = 'PRO' then
    vComando := vComando + ' AND ((ITE.QTD - ITE.QTD_PRODUZIDA) > 0) ';
  vComando := vComando + ' AND ITE.QTD_RESTANTE > 0 ';
  fDMBaixaPedido.sdsPedido_Item.CommandText := fDMBaixaPedido.sdsPedido_Item.CommandText + vComando;
  fDMBaixaPedido.cdsPedido_Item.Open;
  fDMBaixaPedido.cdsPedido_Item.IndexFieldNames := 'PEDIDO_CLIENTE;DTEMISSAO';
end;

procedure TfrmBaixaPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmBaixaPedido.FormShow(Sender: TObject);
var
  vCampoAux: String;
  i: Integer;
begin
  fDMBaixaPedido := TDMBaixaPedido.Create(Self);
  fDMEstoque     := TDMEstoque.Create(Self);

  fDMBaixaPedido.prc_Abrir_Cliente(fMenu.vTipo_Reg_Pedido,vTipo_Baixa_Ped);

  oDBUtils.SetDataSourceProperties(Self, fDMBaixaPedido);
  fDMBaixaPedido.cdsFilial.First;
  if (fDMBaixaPedido.cdsFilial.RecordCount < 2) and (fDMBaixaPedido.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMBaixaPedido.cdsFilialID.AsInteger;
  if vTipo_Baixa_Ped = 'PRO' then
    Caption := 'Baixa Produção'
  else
  if fMenu.vTipo_Reg_Pedido = 'C' then
  begin
    Caption           := 'Baixa de Ordem de Compra (Fornecedor)';
    Label3.Caption    := 'Fornecedor:';
    Label1.Caption    := 'Nº OC:';
    ckEstoque.Checked := False;
  end
  else
  begin
    Caption := 'Baixa de Pedido (Faturamento)';
    Label3.Caption := 'Cliente:';
    if fDMBaixaPedido.qParametros_EstMARCAR_BAIXA_PEDIDO.AsString = 'S' then
      ckEstoque.Checked := True;
  end;

  if vTipo_Baixa_Ped = 'PRO' then
  begin
    vCampoAux := 'QTD_FATURADO';
    Label14.Caption := 'Prod.Parcial';
    Label15.Caption := 'Produzido';
  end
  else
  begin
    vCampoAux := 'QTD_PRODUZIDA';
    Label14.Caption := 'Fat.Parcial';
    Label15.Caption := 'Faturado';
  end;

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = vCampoAux then
      SMDBGrid1.Columns[i].Visible := False;
    if ((SMDBGrid1.Columns[i].FieldName = 'NUM_DOC') OR (SMDBGrid1.Columns[i].FieldName = 'NUMOS') OR (SMDBGrid1.Columns[i].FieldName = 'NUM_TALAO')) and (fDMBaixaPedido.qParametrosEMPRESA_NAVALHA.AsString <> 'S') then
      SMDBGrid1.Columns[i].Visible := False;
    if vTipo_Baixa_Ped = 'COM' then
    begin
      if (SMDBGrid1.Columns[i].FieldName = 'NUM_PEDIDO') then
         SMDBGrid1.Columns[i].Title.Caption := 'Nº OC'
      else
      if (SMDBGrid1.Columns[i].FieldName = 'PEDIDO_CLIENTE') then
        SMDBGrid1.Columns[i].Visible := False;
    end;
  end;


end;

procedure TfrmBaixaPedido.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if (Column.FieldName = 'clQtd_Restante') or (Column.FieldName = 'QTD_AFATURAR') then
    exit;
  ColunaOrdenada := Column.FieldName;
  fDMBaixaPedido.cdsPedido_Pend.IndexFieldNames := Column.FieldName;
  if (Column.FieldName <> 'clQtd_Restante') and (Column.FieldName <> 'QTD_AFATURAR') then
    Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) and (Column.FieldName <> 'clQtd_Restante') and (Column.FieldName <> 'QTD_AFATURAR') then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmBaixaPedido.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmBaixaPedido.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMBaixaPedido.cdsCliente.IndexFieldNames := 'NOME';
end;

procedure TfrmBaixaPedido.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMBaixaPedido.cdsPedido_PendQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMBaixaPedido.cdsPedido_PendQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMBaixaPedido.cdsPedido_PendQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua;

  if (Field = fDMBaixaPedido.cdsPedido_PendQTD_AFATURAR) then
  begin
    Background  := clYellow;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end
  else
  if (Field = fDMBaixaPedido.cdsPedido_PendclQtd_Restante) then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

procedure TfrmBaixaPedido.btnConfBaixaClick(Sender: TObject);
var
  vContadorAux: Integer;
  vEstoque: String;
begin
  if DateEdit5.Date < 10 then
  begin
    ShowMessage('*** Data da baixa não informada!');
    exit;
  end;

  if ckEstoque.Checked then
    vEstoque := 'S'
  else
    vEstoque := 'N';

  vContadorAux := 0;

  fDMBaixaPedido.fDMEstoque := fDMEstoque;
  fDMBaixaPedido.mPedidoAux.EmptyDataSet;
  fDMBaixaPedido.cdsPedido_Pend.First;
  while not fDMBaixaPedido.cdsPedido_Pend.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (StrToFloat(FormatFloat('0.000',fDMBaixaPedido.cdsPedido_PendQTD_AFATURAR.AsFloat)) > 0)then
    begin
      vContadorAux := vContadorAux + 1;
      //aqui 24/01/2014
      if vTipo_Baixa_Ped = 'COM' then
        fDMBaixaPedido.prc_Gravar_Baixa('C',vEstoque,'C',DateEdit5.Date)
      else
        fDMBaixaPedido.prc_Gravar_Baixa('P',vEstoque,'P',DateEdit5.Date);
      if vTipo_Baixa_Ped <> 'PRO' then
      begin
        if not(fDMBaixaPedido.mPedidoAux.FindKey([fDMBaixaPedido.cdsPedido_PendID.AsInteger])) then
        begin
          fDMBaixaPedido.mPedidoAux.Insert;
          fDMBaixaPedido.mPedidoAuxID_Pedido.AsInteger := fDMBaixaPedido.cdsPedido_PendID.AsInteger;
          fDMBaixaPedido.mPedidoAux.Post;
        end;
      end;

    end;
    fDMBaixaPedido.cdsPedido_Pend.Next;
  end;

  //Atualiza Status do pedido somente quando for faturado ou quando for dado a baixa da ordem de compra do fornecedor
  if vTipo_Baixa_Ped <> 'PRO' then
  begin
    fDMBaixaPedido.mPedidoAux.First;
    while not fDMBaixaPedido.mPedidoAux.Eof do
    begin
      fDMBaixaPedido.sdsPrc_Atualiza_Status_Ped.Close;
      fDMBaixaPedido.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMBaixaPedido.mPedidoAuxID_Pedido.AsInteger;
      fDMBaixaPedido.sdsPrc_Atualiza_Status_Ped.ExecSQL;
      fDMBaixaPedido.mPedidoAux.Next;
    end;
  end;

  btnConsultarClick(Sender);

  ShowMessage('Total de itens baixados: ' + IntToStr(vContadorAux));
  DateEdit5.Clear;
  //ckEstoque.Checked := False;
  if fMenu.vTipo_Reg_Pedido <> 'C' then
  begin
    if fDMBaixaPedido.qParametros_EstMARCAR_BAIXA_PEDIDO.AsString = 'S' then
      ckEstoque.Checked := True
    else
      ckEstoque.Checked := False;
  end;
end;

procedure TfrmBaixaPedido.SMDBGrid1ChangeSelection(Sender: TObject);
begin
  if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
  begin
    fDMBaixaPedido.cdsPedido_Pend.Edit;
    fDMBaixaPedido.cdsPedido_PendQTD_AFATURAR.AsFloat := fDMBaixaPedido.cdsPedido_PendclQtd_Restante.AsFloat;
    fDMBaixaPedido.cdsPedido_Pend.Post;
  end
  else
  begin
    fDMBaixaPedido.cdsPedido_Pend.Edit;
    fDMBaixaPedido.cdsPedido_PendQTD_AFATURAR.AsFloat := 0;
    fDMBaixaPedido.cdsPedido_Pend.Post;
  end;
end;

procedure TfrmBaixaPedido.btnConsultarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    prc_Consultar;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmBaixaPedido.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo2.Text <> '' then
      vCodPessoa_Pos := RxDBLookupCombo2.KeyValue
    else
      vCodPessoa_Pos := 0;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    if vCodPessoa_Pos > 0 then
      RxDBLookupCombo2.KeyValue := vCodPessoa_Pos;
    RxDBLookupCombo2.SetFocus;
  end;
end;

end.
