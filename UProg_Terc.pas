unit UProg_Terc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMProg_Terc, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  dbXPress, NxPageControl, RzTabs, NxCollection, NxEdit;

type
  TfrmProg_Terc = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Liberados: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    btnConsultar: TNxButton;
    Edit2: TEdit;
    Panel2: TPanel;
    Label4: TLabel;
    DateEdit5: TDateEdit;
    btnConfBaixa: TNxButton;
    TabSheet1: TRzTabSheet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure SMDBGrid1ChangeSelection(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    fDMProg_Terc: TDMProg_Terc;
    fDMEstoque: TDMEstoque;
    ColunaOrdenada: String;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmProg_Terc: TfrmProg_Terc;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, USel_Pessoa;

{$R *.dfm}

procedure TfrmProg_Terc.prc_Consultar;
var
  vComando: String;
  vOpcaoDtEntrega: String;
begin
  fDMProg_Terc.cdsPedido_Pend.Close;
  fDMProg_Terc.sdsPedido_Pend.CommandText := fDMProg_Terc.ctPedido_Pend + ' WHERE 0 = 0 ';
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
  if fDMProg_Terc.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
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
  fDMProg_Terc.sdsPedido_Pend.CommandText := fDMProg_Terc.sdsPedido_Pend.CommandText + vComando;
  fDMProg_Terc.cdsPedido_Pend.Open;
  fDMProg_Terc.cdsPedido_Pend.IndexFieldNames := 'PEDIDO_CLIENTE;DTEMISSAO';
end;

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
  fDMProg_Terc.cdsFilial.First;
  if (fDMProg_Terc.cdsFilial.RecordCount < 2) and (fDMProg_Terc.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMProg_Terc.cdsFilialID.AsInteger;
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
    if fDMProg_Terc.qParametros_EstMARCAR_BAIXA_PEDIDO.AsString = 'S' then
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
    if ((SMDBGrid1.Columns[i].FieldName = 'NUM_DOC') OR (SMDBGrid1.Columns[i].FieldName = 'NUMOS') OR (SMDBGrid1.Columns[i].FieldName = 'NUM_TALAO')) and (fDMProg_Terc.qParametrosEMPRESA_NAVALHA.AsString <> 'S') then
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

procedure TfrmProg_Terc.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if (Column.FieldName = 'clQtd_Restante') or (Column.FieldName = 'QTD_AFATURAR') then
    exit;
  ColunaOrdenada := Column.FieldName;
  fDMProg_Terc.cdsPedido_Pend.IndexFieldNames := Column.FieldName;
  if (Column.FieldName <> 'clQtd_Restante') and (Column.FieldName <> 'QTD_AFATURAR') then
    Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) and (Column.FieldName <> 'clQtd_Restante') and (Column.FieldName <> 'QTD_AFATURAR') then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmProg_Terc.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmProg_Terc.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMProg_Terc.cdsPedido_PendQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMProg_Terc.cdsPedido_PendQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMProg_Terc.cdsPedido_PendQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua;

  if (Field = fDMProg_Terc.cdsPedido_PendQTD_AFATURAR) then
  begin
    Background  := clYellow;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end
  else
  if (Field = fDMProg_Terc.cdsPedido_PendclQtd_Restante) then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

procedure TfrmProg_Terc.btnConfBaixaClick(Sender: TObject);
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

  fDMProg_Terc.fDMEstoque := fDMEstoque;
  fDMProg_Terc.mPedidoAux.EmptyDataSet;
  fDMProg_Terc.cdsPedido_Pend.First;
  while not fDMProg_Terc.cdsPedido_Pend.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (StrToFloat(FormatFloat('0.000',fDMProg_Terc.cdsPedido_PendQTD_AFATURAR.AsFloat)) > 0)then
    begin
      vContadorAux := vContadorAux + 1;
      //aqui 24/01/2014
      if vTipo_Baixa_Ped = 'COM' then
        fDMProg_Terc.prc_Gravar_Baixa('C',vEstoque,'C',DateEdit5.Date)
      else
        fDMProg_Terc.prc_Gravar_Baixa('P',vEstoque,'P',DateEdit5.Date);
      if vTipo_Baixa_Ped <> 'PRO' then
      begin
        if not(fDMProg_Terc.mPedidoAux.FindKey([fDMProg_Terc.cdsPedido_PendID.AsInteger])) then
        begin
          fDMProg_Terc.mPedidoAux.Insert;
          fDMProg_Terc.mPedidoAuxID_Pedido.AsInteger := fDMProg_Terc.cdsPedido_PendID.AsInteger;
          fDMProg_Terc.mPedidoAux.Post;
        end;
      end;

    end;
    fDMProg_Terc.cdsPedido_Pend.Next;
  end;

  //Atualiza Status do pedido somente quando for faturado ou quando for dado a baixa da ordem de compra do fornecedor
  if vTipo_Baixa_Ped <> 'PRO' then
  begin
    fDMProg_Terc.mPedidoAux.First;
    while not fDMProg_Terc.mPedidoAux.Eof do
    begin
      fDMProg_Terc.sdsPrc_Atualiza_Status_Ped.Close;
      fDMProg_Terc.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMProg_Terc.mPedidoAuxID_Pedido.AsInteger;
      fDMProg_Terc.sdsPrc_Atualiza_Status_Ped.ExecSQL;
      fDMProg_Terc.mPedidoAux.Next;
    end;
  end;

  btnConsultarClick(Sender);

  ShowMessage('Total de itens baixados: ' + IntToStr(vContadorAux));
  DateEdit5.Clear;
  //ckEstoque.Checked := False;
  if fMenu.vTipo_Reg_Pedido <> 'C' then
  begin
    if fDMProg_Terc.qParametros_EstMARCAR_BAIXA_PEDIDO.AsString = 'S' then
      ckEstoque.Checked := True
    else
      ckEstoque.Checked := False;
  end;
end;

procedure TfrmProg_Terc.SMDBGrid1ChangeSelection(Sender: TObject);
begin
  if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
  begin
    fDMProg_Terc.cdsPedido_Pend.Edit;
    fDMProg_Terc.cdsPedido_PendQTD_AFATURAR.AsFloat := fDMProg_Terc.cdsPedido_PendclQtd_Restante.AsFloat;
    fDMProg_Terc.cdsPedido_Pend.Post;
  end
  else
  begin
    fDMProg_Terc.cdsPedido_Pend.Edit;
    fDMProg_Terc.cdsPedido_PendQTD_AFATURAR.AsFloat := 0;
    fDMProg_Terc.cdsPedido_Pend.Post;
  end;
end;

procedure TfrmProg_Terc.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

end.
