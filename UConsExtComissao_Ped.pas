unit UConsExtComissao_Ped;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadExtComissao,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, RXDBCtrl,
  RzPanel, URelExtComissao_Ped, NxCollection;

type
  TfrmConsExtComissao_Ped = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    Panel3: TPanel;
    Label15: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label18: TLabel;
    DateEdit1: TDateEdit;
    Label26: TLabel;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RzGroupBox1: TRzGroupBox;
    Label8: TLabel;
    lblTotal: TLabel;
    RzPageControl2: TRzPageControl;
    TS_Resumido: TRzTabSheet;
    TS_Detalhado: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    SMDBGrid2: TSMDBGrid;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    StaticText1: TStaticText;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    lblComissao: TLabel;
    Label4: TLabel;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RzPageControl2Change(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid1ChangeSelection(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadExtComissao      : TDMCadExtComissao;

    procedure prc_Le_Pedido;
    procedure prc_Consultar;
    procedure prc_Monta_Grid;
  public
    { Public declarations }
  end;

var
  frmConsExtComissao_Ped: TfrmConsExtComissao_Ped;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, Variants, DBClient, Math;

{$R *.dfm}

procedure TfrmConsExtComissao_Ped.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMCadExtComissao.cdsPedido_Vend.Filtered := False;
  Action := Cafree;
end;

procedure TfrmConsExtComissao_Ped.FormShow(Sender: TObject);
begin
  fDMCadExtComissao := TDMCadExtComissao.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadExtComissao);
  fDMCadExtComissao.cdsFilial.Open;
  fDMCadExtComissao.cdsCliente.Open;
  fDMCadExtComissao.cdsVendedor.Open;
  fDMCadExtComissao.qParametros_Ped.Close;
  fDMCadExtComissao.qParametros_Ped.Open;
  CheckBox3.Visible := (fDMCadExtComissao.qParametros_PedPEDIDO_LOJA.AsString = 'S');
  CheckBox4.Visible := (fDMCadExtComissao.qParametros_PedPEDIDO_LOJA.AsString = 'S');
  prc_Monta_Grid;  
end;

procedure TfrmConsExtComissao_Ped.prc_Consultar;
var
  vComandoAux, vComandoAux2: String;
  vComando : String;
  i: Integer;
begin
  {fDMCadExtComissao.cdsPedido.Close;
  i := PosEx('GROUP',fDMCadExtComissao.ctPedido,0);
  vComandoAux  := copy(fDMCadExtComissao.ctPedido,i,Length(fDMCadExtComissao.ctPedido) - i + 1);
  vComandoAux2 := copy(fDMCadExtComissao.ctPedido,1,i-1);
  vComandoAux2 := vComandoAux2 + ' AND TIPO_REG = ' + QuotedStr('P');
  if RxDBLookupCombo1.Text <> '' then
    vComandoAux2 := vComandoAux2 + ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComandoAux2 := vComandoAux2 + ' AND PED.ID_PESSOA = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  vComandoAux2 := vComandoAux2 + ' AND PED.DTEMISSAO >= ' +  + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  vComandoAux2 := vComandoAux2 + ' AND PED.DTEMISSAO <= ' +  + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMCadExtComissao.sdsPedido.CommandText := vComandoAux2 + vComandoAux;
  fDMCadExtComissao.cdsPedido.Open;}

  fDMCadExtComissao.cdsPedido_Vend.Close;
  vComando := ' WHERE PED.TIPO_REG = ' + QuotedStr('P');
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND PED.ID_VENDEDOR = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  vComando := vComando + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  vComando := vComando + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMCadExtComissao.sdsPedido_Vend.CommandText := fDMCadExtComissao.ctPedido_Vend + vComando;
  fDMCadExtComissao.cdsPedido_Vend.Open;
  fDMCadExtComissao.cdsPedido_Vend.IndexFieldNames := 'DTEMISSAO;NUM_PEDIDO';
end;

procedure TfrmConsExtComissao_Ped.btnConsultarClick(Sender: TObject);
begin
  if (DateEdit1.Date <= 10) or (DateEdit2.Date <= 10) then
  begin
    ShowMessage('*** Data inicial e final não foram informadas!');
    exit;
  end;
  SMDBGrid1.UnSelectAllClick(SMDBGrid1);
  fDMCadExtComissao.cdsPedido_Vend.Filtered := False;
  RzPageControl2.ActivePage := TS_Resumido;
  prc_Consultar;
  prc_Le_Pedido;
end;

procedure TfrmConsExtComissao_Ped.FormDestroy(Sender: TObject);
begin
  fDMCadExtComissao.cdsFilial.Close;
  fDMCadExtComissao.cdsCliente.Close;
  fDMCadExtComissao.cdsVendedor.Close;

  FreeAndNil(fDMCadExtComissao);
end;

procedure TfrmConsExtComissao_Ped.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadExtComissao.cdsExtComissao);
end;

procedure TfrmConsExtComissao_Ped.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadExtComissao.mExtPedido.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsExtComissao_Ped.prc_Le_Pedido;
var
  vBase : Real;
  vComissao : Real;
  vVlrAux : Real;
begin
  fDMCadExtComissao.mExtPedido.EmptyDataSet;
  vBase     := 0;
  vComissao := 0;
  SMDBGrid1.DisableScroll;
  fDMCadExtComissao.cdsPedido_Vend.First;
  while not fDMCadExtComissao.cdsPedido_Vend.Eof do
  begin
    if StrToFloat(FormatFloat('0.000',fDMCadExtComissao.cdsPedido_VendPERC_COMISSAO.AsFloat)) > 0 then
    begin
      if fDMCadExtComissao.mExtPedido.Locate('ID_VENDEDOR',fDMCadExtComissao.cdsPedido_VendID_VENDEDOR.AsInteger,[loCaseInsensitive]) then
        fDMCadExtComissao.mExtPedido.Edit
      else
      begin
        fDMCadExtComissao.mExtPedido.Insert;
        fDMCadExtComissao.mExtPedidoID_Vendedor.AsInteger := fDMCadExtComissao.cdsPedido_VendID_VENDEDOR.AsInteger;
        if fDMCadExtComissao.cdsVendedor.Locate('CODIGO',fDMCadExtComissao.cdsPedido_VendID_VENDEDOR.AsInteger,[loCaseInsensitive]) then
          fDMCadExtComissao.mExtPedidoNome_Vendedor.AsString := fDMCadExtComissao.cdsVendedorNOME.AsString;
      end;
      fDMCadExtComissao.mExtPedidoVlr_Base.AsFloat     := fDMCadExtComissao.mExtPedidoVlr_Base.AsFloat + fDMCadExtComissao.cdsPedido_VendVLR_TOTAL.AsFloat;
      //vVlrAux := StrToFloat(FormatFloat('0.00',(fDMCadExtComissao.cdsPedidoPERC_COMISSAO.AsFloat * fDMCadExtComissao.cdsPedido_VendVLR_TOTAL.AsFloat) / 100));
      fDMCadExtComissao.mExtPedidoVlr_Comissao.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadExtComissao.mExtPedidoVlr_Comissao.AsFloat + fDMCadExtComissao.cdsPedido_VendclVlr_Comissao.AsFloat));
      fDMCadExtComissao.mExtPedidoVlr_Frete.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadExtComissao.mExtPedidoVlr_Frete.AsFloat + fDMCadExtComissao.cdsPedido_VendVLR_FRETE.AsFloat));
      fDMCadExtComissao.mExtPedidoVlr_Mao_Obra.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadExtComissao.mExtPedidoVlr_Mao_Obra.AsFloat + fDMCadExtComissao.cdsPedido_VendVLR_MAO_OBRA.AsFloat));
      fDMCadExtComissao.mExtPedido.Post;
      vBase     := vBase + fDMCadExtComissao.cdsPedido_VendVLR_TOTAL.AsFloat;
      vComissao := vComissao + fDMCadExtComissao.cdsPedido_VendclVlr_Comissao.AsFloat;
    end;
    fDMCadExtComissao.cdsPedido_Vend.Next;
  end;
  SMDBGrid1.EnableScroll;
  lblTotal.Caption    := FormatFloat('0.00',vBase);
  lblComissao.Caption := FormatFloat('0.00',vComissao);
  //vSaldo := StrToFloat(FormatFloat('0.00',fDMCadExtComissao.vEntrada_Ext - fDMCadExtComissao.vPagamento_Ext - fDMCadExtComissao.vAdiantamento_Ext - fDMCadExtComissao.vDevolucao_Ext));
end;

procedure TfrmConsExtComissao_Ped.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Field = fDMCadExtComissao.mExtPedidoVlr_Comissao) then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsExtComissao_Ped.RzPageControl2Change(Sender: TObject);
begin
  if RzPageControl2.ActivePage <> TS_Detalhado then
  begin
    fDMCadExtComissao.cdsPedido_Vend.Filtered := False;
    exit;
  end;

  SMDBGrid2.Visible := (fDMCadExtComissao.cdsPedido_Vend.Active);
  if not fDMCadExtComissao.cdsPedido_Vend.Active then
    exit;
  if fDMCadExtComissao.mExtPedidoID_Vendedor.AsInteger <= 0 then
    exit;
                    
  fDMCadExtComissao.cdsPedido_Vend.Filtered := False;
  fDMCadExtComissao.cdsPedido_Vend.Filter   :=  'ID_VENDEDOR = ' + QuotedStr(fDMCadExtComissao.mExtPedidoID_Vendedor.AsString);
  fDMCadExtComissao.cdsPedido_Vend.Filtered := True;
 end;

procedure TfrmConsExtComissao_Ped.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl2.ActivePage := TS_Detalhado;
end;

procedure TfrmConsExtComissao_Ped.CheckBox1Click(Sender: TObject);
begin
  CheckBox2.Visible := CheckBox1.Checked;
  if not CheckBox2.Visible then
    CheckBox2.Checked := False;
end;

procedure TfrmConsExtComissao_Ped.RxDBLookupCombo1Change(Sender: TObject);
begin
  btnImprimir.Enabled := False;
end;

procedure TfrmConsExtComissao_Ped.btnImprimirClick(Sender: TObject);
var
  x : Integer;
begin
  vTipo_Config_Email := 3;
  fDMCadExtComissao.mImp_Reduzido.EmptyDataSet;
  fDMCadExtComissao.mExtPedido.First;
  while not fDMCadExtComissao.mExtPedido.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      fDMCadExtComissao.mImp_Reduzido.Insert;
      fDMCadExtComissao.mImp_ReduzidoID_Vendedor.AsInteger := fDMCadExtComissao.mExtPedidoID_Vendedor.AsInteger;
      fDMCadExtComissao.mImp_ReduzidoNomeVendedor.AsString := fDMCadExtComissao.mExtPedidoNome_Vendedor.AsString;
      fDMCadExtComissao.mImp_ReduzidoVlr_Comissao.AsFloat  := fDMCadExtComissao.mExtPedidoVlr_Comissao.AsFloat;
      fDMCadExtComissao.mImp_ReduzidoBase_Comissao.AsFloat := fDMCadExtComissao.mExtPedidoVlr_Base.AsFloat;
      fDMCadExtComissao.mImp_Reduzido.Post;
    end;
    fDMCadExtComissao.mExtPedido.Next;
  end;
  
  fRelExtComissao_Ped := TfRelExtComissao_Ped.Create(Self);
  fRelExtComissao_Ped.fDMCadExtComissao := fDMCadExtComissao;
  fRelExtComissao_Ped.vImp_Nota := CheckBox1.Checked;
  fRelExtComissao_Ped.vImp_Separar_Vend := CheckBox2.Checked;
  fRelExtComissao_Ped.vOpcaoImp   := '';
  fRelExtComissao_Ped.vNomeEmp    := '';
  fRelExtComissao_Ped.vTitulo_Rel := 'Relatório de Comissão de Vendedores Por Pedido - ';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fRelExtComissao_Ped.vTitulo_Rel := fRelExtComissao_Ped.vTitulo_Rel + '(Período: ' + DateEdit1.Text + ' a ' + DateEdit2.Text +  ')'
  else
  if (DateEdit1.Date > 10) then
    fRelExtComissao_Ped.vTitulo_Rel := fRelExtComissao_Ped.vTitulo_Rel + '(Data Inicial: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    fRelExtComissao_Ped.vTitulo_Rel := fRelExtComissao_Ped.vTitulo_Rel + '(Data Final: ' + DateEdit2.Text + ')'
  else
    fRelExtComissao_Ped.vTitulo_Rel := fRelExtComissao_Ped.vTitulo_Rel + '(Periodo: Geral)';
  if RxDBLookupCombo1.Text <> '' then
    fRelExtComissao_Ped.vNomeEmp := 'Empresa: ' + RxDBLookupCombo1.Text
  else
    fRelExtComissao_Ped.vNomeEmp := 'Empresa: Todas';
  fRelExtComissao_Ped.RLReport1.PreviewModal;
  fRelExtComissao_Ped.RLReport1.Free;
  FreeAndNil(fRelExtComissao_Ped);
end;

procedure TfrmConsExtComissao_Ped.SMDBGrid1ChangeSelection(Sender: TObject);
begin
  btnImprimir.Enabled  := (SMDBGrid1.SelectedRows.Count > 0);
end;

procedure TfrmConsExtComissao_Ped.prc_Monta_Grid;
var
  i : integer;
begin
  for i := 1 to SMDBGrid2.ColCount - 2  do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'VLR_FRETE') and (fDMCadExtComissao.qParametros_PedPEDIDO_LOJA.AsString = 'S') then
      SMDBGrid2.Columns[i].Visible := CheckBox3.Checked;
    if (SMDBGrid2.Columns[i].FieldName = 'VLR_MAO_OBRA') and (fDMCadExtComissao.qParametros_PedPEDIDO_LOJA.AsString = 'S') then
      SMDBGrid2.Columns[i].Visible := CheckBox4.Checked;
  end;
  for i := 1 to SMDBGrid1.ColCount - 2  do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'Vlr_Frete') and (fDMCadExtComissao.qParametros_PedPEDIDO_LOJA.AsString = 'S') then
      SMDBGrid1.Columns[i].Visible := CheckBox3.Checked;
    if (SMDBGrid1.Columns[i].FieldName = 'Vlr_Mao_Obra') and (fDMCadExtComissao.qParametros_PedPEDIDO_LOJA.AsString = 'S') then
      SMDBGrid1.Columns[i].Visible := CheckBox4.Checked;
  end;

end;

procedure TfrmConsExtComissao_Ped.CheckBox3Click(Sender: TObject);
begin
  prc_Monta_Grid;
end;

procedure TfrmConsExtComissao_Ped.CheckBox4Click(Sender: TObject);
begin
  prc_Monta_Grid;
end;

end.
