unit UConsExtComissao_Prev;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadExtComissao,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, RXDBCtrl,
  RzPanel, URelExtComissao_Prev;

type
  TfrmConsExtComissao_Prev = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    Panel3: TPanel;
    btnConsultar: TBitBtn;
    Label15: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label18: TLabel;
    DateEdit1: TDateEdit;
    Label26: TLabel;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RzGroupBox1: TRzGroupBox;
    Label14: TLabel;
    lblSaldo: TLabel;
    RzPageControl2: TRzPageControl;
    TS_Resumido: TRzTabSheet;
    TS_Detalhado: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    StaticText1: TStaticText;
    gbxDuplicatas: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid3: TSMDBGrid;
    Label2: TLabel;
    lblDuplicata: TLabel;
    Label5: TLabel;
    lblPedido: TLabel;
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
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
  private
    { Private declarations }
    fDMCadExtComissao      : TDMCadExtComissao;

    procedure prc_Consultar;
    procedure prc_Monta_Valores;

  public
    { Public declarations }

  end;

var
  frmConsExtComissao_Prev: TfrmConsExtComissao_Prev;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, Variants, DBClient;

{$R *.dfm}

procedure TfrmConsExtComissao_Prev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMCadExtComissao.cdsPrevisao.Filtered := False;
  fDMCadExtComissao.cdsPrevisao_Ped.Filtered := False;
  Action := Cafree;
end;

procedure TfrmConsExtComissao_Prev.FormShow(Sender: TObject);
begin
  fDMCadExtComissao := TDMCadExtComissao.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadExtComissao);
  fDMCadExtComissao.cdsFilial.Open;
  fDMCadExtComissao.cdsCliente.Open;
  fDMCadExtComissao.cdsVendedor.Open;
  fDMCadExtComissao.cdsContas.Open;
  fDMCadExtComissao.cdsTipoCobranca.Open;
end;

procedure TfrmConsExtComissao_Prev.prc_Consultar;
var
  vComando : String;
begin
  //Duplicata
  fDMCadExtComissao.cdsPrevisao.Close;
  vComando := fDMCadExtComissao.ctPrevisao;
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND DUP.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND DUP.ID_VENDEDOR = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND DUP.DTVENCIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND DUP.DTVENCIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMCadExtComissao.sdsPrevisao.CommandText := vComando;
  fDMCadExtComissao.cdsPrevisao.IndexFieldNames := 'DTVENCIMENTO';
  fDMCadExtComissao.cdsPrevisao.Open;

  //Pedido
  fDMCadExtComissao.cdsPrevisao_Ped.Close;
  vComando := fDMCadExtComissao.ctPrevisao_Ped;
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND PED.ID_VENDEDOR = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND PI.DTENTREGA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND PI.DTENTREGA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMCadExtComissao.sdsPrevisao_Ped.CommandText := vComando;
  fDMCadExtComissao.cdsPrevisao_Ped.IndexFieldNames := 'DTENTREGA;NUM_PEDIDO';
  fDMCadExtComissao.cdsPrevisao_Ped.Open;
end;

procedure TfrmConsExtComissao_Prev.btnConsultarClick(Sender: TObject);
begin
  RzPageControl2.ActivePage                  := TS_Resumido;
  fDMCadExtComissao.cdsPrevisao.Filtered     := False;
  fDMCadExtComissao.cdsPrevisao_Ped.Filtered := False;
  fDMCadExtComissao.mExtComissao_Red.EmptyDataSet;
  fDMCadExtComissao.mPrevPedido.EmptyDataSet;
  prc_Consultar;
  prc_Monta_Valores;
end;

procedure TfrmConsExtComissao_Prev.FormDestroy(Sender: TObject);
begin
  fDMCadExtComissao.cdsFilial.Close;
  fDMCadExtComissao.cdsCliente.Close;
  fDMCadExtComissao.cdsVendedor.Close;

  FreeAndNil(fDMCadExtComissao);
end;

procedure TfrmConsExtComissao_Prev.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadExtComissao.cdsExtComissao);
end;

procedure TfrmConsExtComissao_Prev.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadExtComissao.mExtComissao_Red.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsExtComissao_Prev.prc_Monta_Valores;
begin
  fDMCadExtComissao.vEntrada_Ext      := 0;
  fDMCadExtComissao.vPrevisao_Dup_Ext := 0;
  fDMCadExtComissao.vPrevisao_Ped_Ext := 0;

  SMDBGrid1.DisableScroll;
  fDMCadExtComissao.prc_Le_cdsPrevisao;
  fDMCadExtComissao.prc_Le_cdsPrevisao_Ped;

  SMDBGrid1.EnableScroll;
  lblSaldo.Caption     := FormatFloat('###,###,##0.00',fDMCadExtComissao.vEntrada_Ext);
  lblDuplicata.Caption := FormatFloat('###,###,##0.00',fDMCadExtComissao.vPrevisao_Dup_Ext);
  lblPedido.Caption    := FormatFloat('###,###,##0.00',fDMCadExtComissao.vPrevisao_Ped_Ext);
end;

procedure TfrmConsExtComissao_Prev.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Field = fDMCadExtComissao.mExtComissao_RedVlr_Comissao) then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsExtComissao_Prev.RzPageControl2Change(Sender: TObject);
begin
  if RzPageControl2.ActivePage <> TS_Detalhado then
  begin
    fDMCadExtComissao.cdsPrevisao.Filtered     := False;
    fDMCadExtComissao.cdsPrevisao_Ped.Filtered := False;
    exit;
  end;

  SMDBGrid2.Visible := (fDMCadExtComissao.cdsPrevisao.Active);
  if not fDMCadExtComissao.cdsPrevisao.Active then
    exit;
  if fDMCadExtComissao.mExtComissao_RedID_Vendedor.AsInteger <= 0 then
    exit;

  fDMCadExtComissao.cdsPrevisao.Filtered := False;
  fDMCadExtComissao.cdsPrevisao.Filter   :=  'ID_VENDEDOR = ' + QuotedStr(fDMCadExtComissao.mExtComissao_RedID_Vendedor.AsString);
  fDMCadExtComissao.cdsPrevisao.Filtered := True;

  fDMCadExtComissao.cdsPrevisao_Ped.Filtered := False;
  fDMCadExtComissao.cdsPrevisao_Ped.Filter   :=  'ID_VENDEDOR = ' + QuotedStr(fDMCadExtComissao.mExtComissao_RedID_Vendedor.AsString);
  fDMCadExtComissao.cdsPrevisao_Ped.Filtered := True;
end;

procedure TfrmConsExtComissao_Prev.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl2.ActivePage := TS_Detalhado;
end;

procedure TfrmConsExtComissao_Prev.BitBtn2Click(Sender: TObject);
var
  x : Integer;
begin
  //SMDBGrid1.DisableScroll;
  fDMCadExtComissao.mImp_Reduzido.EmptyDataSet;
  vTipo_Config_Email := 3;

  fDMCadExtComissao.mExtComissao_Red.First;
  while not fDMCadExtComissao.mExtComissao_Red.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      fDMCadExtComissao.mImp_Reduzido.Insert;
      for x := 0 to (fDMCadExtComissao.mExtComissao_Red.FieldCount - 1) do
        fDMCadExtComissao.mImp_Reduzido.FieldByName(fDMCadExtComissao.mExtComissao_Red.Fields[x].FieldName).AsVariant := fDMCadExtComissao.mExtComissao_Red.Fields[x].Value;
      fDMCadExtComissao.mImp_Reduzido.Post;
    end;
    fDMCadExtComissao.mExtComissao_Red.Next;
  end;

  fRelExtComissao_Prev   := TfRelExtComissao_Prev.Create(Self);
  fRelExtComissao_Prev.fDMCadExtComissao := fDMCadExtComissao;
  fRelExtComissao_Prev.vImp_Nota := CheckBox1.Checked;
  fRelExtComissao_Prev.vImp_Separar_Vend := CheckBox2.Checked;
  fRelExtComissao_Prev.vOpcaoImp   := '';
  fRelExtComissao_Prev.vNomeEmp    := '';
  fRelExtComissao_Prev.vTitulo_Rel := 'Relatório de Comissão de Vendedores - ';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fRelExtComissao_Prev.vTitulo_Rel := fRelExtComissao_Prev.vTitulo_Rel + '(Período: ' + DateEdit1.Text + ' a ' + DateEdit2.Text +  ')'
  else
  if (DateEdit1.Date > 10) then
    fRelExtComissao_Prev.vTitulo_Rel := fRelExtComissao_Prev.vTitulo_Rel + '(Data Inicial: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    fRelExtComissao_Prev.vTitulo_Rel := fRelExtComissao_Prev.vTitulo_Rel + '(Data Final: ' + DateEdit2.Text + ')'
  else
    fRelExtComissao_Prev.vTitulo_Rel := fRelExtComissao_Prev.vTitulo_Rel + '(Périodo: Geral)';
  if RxDBLookupCombo1.Text <> '' then
    fRelExtComissao_Prev.vNomeEmp := 'Empresa: ' + RxDBLookupCombo1.Text
  else
    fRelExtComissao_Prev.vNomeEmp := 'Empresa: Todas';
  fRelExtComissao_Prev.RLReport1.PreviewModal;
  fRelExtComissao_Prev.RLReport1.Free;
  FreeAndNil(fRelExtComissao_Prev);
  //SMDBGrid1.EnableScroll;
end;

procedure TfrmConsExtComissao_Prev.CheckBox1Click(Sender: TObject);
begin
  CheckBox2.Visible := CheckBox1.Checked;
  if not CheckBox2.Visible then
    CheckBox2.Checked := False;
end;

procedure TfrmConsExtComissao_Prev.RxDBLookupCombo1Change(Sender: TObject);
begin
  fDMCadExtComissao.mExtComissao_Red.EmptyDataSet;
end;

end.
