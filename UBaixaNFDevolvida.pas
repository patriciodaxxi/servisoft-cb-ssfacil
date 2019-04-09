unit UBaixaNFDevolvida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  UDMEstoque, dbXPress, NxPageControl, RzTabs, NxCollection, NxEdit, UDMConsNotaBeneficiamento;

type
  TfrmBaixaNFDevolvida = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Shape3: TShape;
    Label14: TLabel;
    Shape4: TShape;
    Label15: TLabel;
    Label4: TLabel;
    DateEdit5: TDateEdit;
    UCControls1: TUCControls;
    SMDBGrid1: TSMDBGrid;
    btnConfBaixa: TNxButton;
    ckEstoque: TNxCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Shape1: TShape;
    Label13: TLabel;
    Shape2: TShape;
    Label7: TLabel;
    ComboBox1: TComboBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure SMDBGrid1ChangeSelection(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure prc_Consultar_NotaEntrada;

  private
    { Private declarations }
    fDMConsNotaBeneficiamento : TDMConsNotaBeneficiamento;
    fDMEstoque: TDMEstoque;
    ColunaOrdenada: String;

  public
    { Public declarations }
  end;

var
  frmBaixaNFDevolvida: TfrmBaixaNFDevolvida;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, USel_Pessoa;

{$R *.dfm}

procedure TfrmBaixaNFDevolvida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmBaixaNFDevolvida.FormShow(Sender: TObject);
var
  vCampoAux: String;
  i: Integer;
begin
  fDMConsNotaBeneficiamento := TDMConsNotaBeneficiamento.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsNotaBeneficiamento);

  fDMEstoque     := TDMEstoque.Create(Self);
  fDMConsNotaBeneficiamento.cdsFilial.First;
  if (fDMConsNotaBeneficiamento.cdsFilial.RecordCount < 2) and (fDMConsNotaBeneficiamento.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo3.KeyValue := fDMConsNotaBeneficiamento.cdsFilialID.AsInteger;
  ckEstoque.Visible := (Trim(fMenu.vTipo_ConsNotaBeneficiamento) <> 'C');
end;

procedure TfrmBaixaNFDevolvida.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if (Column.FieldName = 'QTDRESTANTE') or (Column.FieldName = 'QTD_AFATURAR') then
    exit;
  ColunaOrdenada := Column.FieldName;
  fDMConsNotaBeneficiamento.cdsNotaPendente.IndexFieldNames := Column.FieldName;
  if (Column.FieldName <> 'QTDRESTANTE') and (Column.FieldName <> 'QTD_AFATURAR') then
    Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) and (Column.FieldName <> 'QTDRESTANTE') and (Column.FieldName <> 'QTD_AFATURAR') then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmBaixaNFDevolvida.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMConsNotaBeneficiamento.cdsFornecedor.IndexFieldNames := 'NOME';
end;

procedure TfrmBaixaNFDevolvida.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
 if (StrToFloat(FormatFloat('0.0000',fDMConsNotaBeneficiamento.cdsNotaPendenteQTDRESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMConsNotaBeneficiamento.cdsNotaPendenteQTDDEVOLVIDA.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsNotaBeneficiamento.cdsNotaPendenteQTDDEVOLVIDA.AsFloat)) > 0) then
    Background  := clAqua;

  if (Field = fDMConsNotaBeneficiamento.cdsNotaPendenteQTD_ADEVOLVER) then
  begin
    Background  := clYellow;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end
  else
  if (Field = fDMConsNotaBeneficiamento.cdsNotaPendenteQTDRESTANTE) then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

procedure TfrmBaixaNFDevolvida.btnConfBaixaClick(Sender: TObject);
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

  fDMConsNotaBeneficiamento.fDMEstoque := fDMEstoque;
//  fDMConsNotaBeneficiamento.mPedidoAux.EmptyDataSet;
  fDMConsNotaBeneficiamento.cdsNotaPendente.First;
  while not fDMConsNotaBeneficiamento.cdsNotaPendente.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (StrToFloat(FormatFloat('0.000',fDMConsNotaBeneficiamento.cdsNotaPendenteQTD_ADEVOLVER.AsFloat)) > 0)then
    begin
      vContadorAux := vContadorAux + 1;
      //aqui 24/01/2014
      fDMConsNotaBeneficiamento.prc_Gravar_Baixa('P',vEstoque,'P',fMenu.vTipo_ConsNotaBeneficiamento, DateEdit5.Date,);
//      if vTipo_Baixa_Ped <> 'PRO' then
//      begin
//        if not(fDMBaixaPedido.mPedidoAux.FindKey([fDMBaixaPedido.cdsPedido_PendID.AsInteger])) then
//        begin
//          fDMBaixaPedido.mPedidoAux.Insert;
//          fDMBaixaPedido.mPedidoAuxID_Pedido.AsInteger := fDMBaixaPedido.cdsPedido_PendID.AsInteger;
//          fDMBaixaPedido.mPedidoAux.Post;
//        end;
//      end;

    end;
    fDMConsNotaBeneficiamento.cdsNotaPendente.Next;
  end;

  //Atualiza Status do pedido somente quando for faturado ou quando for dado a baixa da ordem de compra do fornecedor
{  if vTipo_Baixa_Ped <> 'PRO' then
  begin
    fDMBaixaPedido.mPedidoAux.First;
    while not fDMBaixaPedido.mPedidoAux.Eof do
    begin
      fDMBaixaPedido.sdsPrc_Atualiza_Status_Ped.Close;
      fDMBaixaPedido.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMBaixaPedido.mPedidoAuxID_Pedido.AsInteger;
      fDMBaixaPedido.sdsPrc_Atualiza_Status_Ped.ExecSQL;
      fDMBaixaPedido.mPedidoAux.Next;
    end;
  end;}

  btnConsultarClick(Sender);

  ShowMessage('Total de itens baixados: ' + IntToStr(vContadorAux));
  DateEdit5.Clear;
end;

procedure TfrmBaixaNFDevolvida.SMDBGrid1ChangeSelection(Sender: TObject);
begin
 if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
  begin
    fDMConsNotaBeneficiamento.cdsNotaPendente.Edit;
    fDMConsNotaBeneficiamento.cdsNotaPendenteQTD_ADEVOLVER.AsFloat := fDMConsNotaBeneficiamento.cdsNotaPendenteQTDRESTANTE.AsFloat;
    fDMConsNotaBeneficiamento.cdsNotaPendente.Post;
  end
  else
  begin
    fDMConsNotaBeneficiamento.cdsNotaPendente.Edit;
    fDMConsNotaBeneficiamento.cdsNotaPendenteQTD_ADEVOLVER.AsFloat := 0;
    fDMConsNotaBeneficiamento.cdsNotaPendente.Post;
  end;
end;

procedure TfrmBaixaNFDevolvida.btnConsultarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    prc_Consultar_NotaEntrada
  finally
    Screen.Cursor := crDefault;
  end;        
end;

procedure TfrmBaixaNFDevolvida.RxDBLookupCombo2KeyDown(Sender: TObject;
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

procedure TfrmBaixaNFDevolvida.prc_Consultar_NotaEntrada;
var
  vPosse : String;
  vBenef_Posse : String;
  vComando : String;
begin
  if fMenu.vTipo_ConsNotaBeneficiamento = 'C' then
  begin
    vPosse := ' o2.estoque_EM_terceiro = ' + QuotedStr('S');
    vBenef_Posse := ' AND CFOP.BENEFICIAMENTO_POSSE = '  + QuotedStr('E');
  end
  else
  begin
    vPosse := ' o2.estoque_DE_terceiro = ' + QuotedStr('S');
    vBenef_Posse := ' AND CFOP.BENEFICIAMENTO_POSSE = '  + QuotedStr('T');
  end;

  fDMConsNotaBeneficiamento.cdsNotaPendente.Close;
  vComando := fDMConsNotaBeneficiamento.ctNotaPendente;
  if fMenu.vTipo_ConsNotaBeneficiamento = 'C' then
    vComando := vComando + ' WHERE NF.TIPO_REG = ' + QuotedStr('NTS')
  else
    vComando := vComando + ' WHERE NF.TIPO_REG = ' + QuotedStr('NTE');
  case ComboBox1.ItemIndex of
    0: vComando := vComando + ' AND ((CFOP.BENEFICIAMENTO = ' + QuotedStr('S') + vBenef_Posse + ') OR (' + vPosse + '))';
    1: vComando := vComando + ' AND (CFOP.BENEFICIAMENTO = ' + QuotedStr('S') + vBenef_Posse + ')';
    2: vComando := vComando + ' AND ' + vPosse;
  end;
  if RxDBLookupCombo3.Text <> '' then
    vComando := vComando + ' AND NF.FILIAL = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND ((NF.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue) + ')' + '  OR (NF.ID_CLIENTETRIANG = ' + IntToStr(RxDBLookupCombo2.KeyValue) + '))';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND NI.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  vComando := vComando + ' AND NI.QTDRESTANTE > 0 ';
  vComando := vComando + ' AND PRO.INATIVO = ' + QuotedStr('N');
  fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText := vComando;
  fDMConsNotaBeneficiamento.cdsNotaPendente.Open;

  {fDMConsNotaBeneficiamento.cdsNotaPendente.Close;
  fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText := fDMConsNotaBeneficiamento.ctNotaPendente;
  if ComboBox1.ItemIndex = 0 then
    fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText := fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText + ' AND CFOP.BENEFICIAMENTO = ' + QuotedStr('S');


  if RxDBLookupCombo3.Text <> '' then
    fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText := fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText
                                               + ' AND NF.FILIAL = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText := fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText
                                               + ' AND ((NF.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue) + ')'
                                               + '  OR (NF.ID_CLIENTETRIANG = ' + IntToStr(RxDBLookupCombo2.KeyValue) + '))';
  if RxDBLookupCombo1.Text <> '' then
    fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText := fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText
                                               + ' AND NI.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  case ComboBox2.ItemIndex of
    0 : fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText := fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText + ' AND NI.QTDRESTANTE > 0 ';
    1 : fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText := fDMConsNotaBeneficiamento.sdsNotaPendente.CommandText + ' AND NI.QTDRESTANTE <= 0 ';
  end;
  fDMConsNotaBeneficiamento.cdsNotaPendente.Open;}
end;

end.
