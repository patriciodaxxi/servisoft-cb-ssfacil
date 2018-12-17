unit UConsExtComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadExtComissao,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, RXDBCtrl,
  RzPanel, URelExtComissao, UCadExtComissao_Pag, NxCollection, TeEngine,
  Series, TeeProcs, Chart, DbChart;

type
  TfrmConsExtComissao = class(TForm)
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
    Label10: TLabel;
    Label11: TLabel;
    lblEntrada: TLabel;
    lblPagamento: TLabel;
    lblAdiantamento: TLabel;
    Label12: TLabel;
    lblDevolucao: TLabel;
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
    SMDBGrid2: TSMDBGrid;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    StaticText1: TStaticText;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    btnPagamento: TNxButton;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label4: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    DateEdit3: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure edtDuplicataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RzPageControl2Change(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure btnPagamentoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid1ChangeSelection(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadExtComissao      : TDMCadExtComissao;
    ffrmCadExtComissao_Pag : TfrmCadExtComissao_Pag;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID : Integer = 0);
    procedure prc_Monta_Valores;
    procedure prc_Posiciona_Registro;

    procedure prc_Calcular_Comissao;
  public
    { Public declarations }
  end;

var
  frmConsExtComissao: TfrmConsExtComissao;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, Variants, DBClient,
  DateUtils;

{$R *.dfm}

procedure TfrmConsExtComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMCadExtComissao.cdsConsulta.Filtered := False;
  Action := Cafree;
end;

procedure TfrmConsExtComissao.prc_Excluir_Registro;
begin
  fDMCadExtComissao.prc_Excluir;
end;

procedure TfrmConsExtComissao.prc_Gravar_Registro;
begin
end;

procedure TfrmConsExtComissao.prc_Inserir_Registro;
begin
end;

procedure TfrmConsExtComissao.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadExtComissao := TDMCadExtComissao.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadExtComissao);
  fDMCadExtComissao.cdsFilial.Open;
  fDMCadExtComissao.cdsCliente.Open;
  fDMCadExtComissao.cdsVendedor.Open;
  fDMCadExtComissao.cdsContas.Open;
  fDMCadExtComissao.cdsTipoCobranca.Open;

  Label2.Visible        := (fDMCadExtComissao.qParametros_FinUSA_METAS_VENDEDOR.AsString = 'S');
  Label4.Visible        := (fDMCadExtComissao.qParametros_FinUSA_METAS_VENDEDOR.AsString = 'S');
  CurrencyEdit1.Visible := (fDMCadExtComissao.qParametros_FinUSA_METAS_VENDEDOR.AsString = 'S');
  CurrencyEdit2.Visible := (fDMCadExtComissao.qParametros_FinUSA_METAS_VENDEDOR.AsString = 'S');

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'Vlr_Meta_Vendas') or (SMDBGrid1.Columns[i].FieldName = 'Vlr_Vendas') then
      SMDBGrid1.Columns[i].Visible := (fDMCadExtComissao.qParametros_FinUSA_METAS_VENDEDOR.AsString = 'S');
  end;
  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'OBS_PEDIDO') then
      SMDBGrid2.Columns[i].Visible := (fDMCadExtComissao.qParametros_ComMOSTRAR_PED.AsString = 'S');
  end;
end;

procedure TfrmConsExtComissao.prc_Consultar(ID : Integer = 0);
var
  vComando : String;
begin
  fDMCadExtComissao.cdsConsulta.Close;
  vComando := fDMCadExtComissao.ctConsulta + ' WHERE 0 = 0 ';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND EXT.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND EXT.ID_VENDEDOR = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND EXT.DTBASE >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND EXT.DTBASE <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMCadExtComissao.sdsConsulta.CommandText := vComando;
  fDMCadExtComissao.cdsConsulta.IndexFieldNames := 'DTBASE';
  fDMCadExtComissao.cdsConsulta.Open;
  if ID > 0 then
    fDMCadExtComissao.cdsConsulta.Locate('ID',ID,[loCaseInsensitive]);
end;

procedure TfrmConsExtComissao.btnConsultarClick(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger < 2010 then
  begin
    MessageDlg('*** Ano inválido!', mtInformation, [mbOk], 0);
    CurrencyEdit1.SetFocus;
    exit;
  end;
  if (CurrencyEdit2.AsInteger <= 0) or (CurrencyEdit2.AsInteger > 12) then
  begin
    MessageDlg('*** Mês inválido!', mtInformation, [mbOk], 0);
    CurrencyEdit2.SetFocus;
    exit;
  end;
  fDMCadExtComissao.vAno := CurrencyEdit1.AsInteger;
  fDMCadExtComissao.vMes := CurrencyEdit2.AsInteger;
  SMDBGrid1.UnSelectAllClick(SMDBGrid1);
  fDMCadExtComissao.cdsConsulta.Filtered := False;
  prc_Consultar(0);
  prc_Monta_Valores;
end;

procedure TfrmConsExtComissao.FormDestroy(Sender: TObject);
begin
  fDMCadExtComissao.cdsFilial.Close;
  fDMCadExtComissao.cdsCliente.Close;
  fDMCadExtComissao.cdsVendedor.Close;

  FreeAndNil(fDMCadExtComissao);
end;

procedure TfrmConsExtComissao.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmConsExtComissao.edtDuplicataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmConsExtComissao.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmConsExtComissao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadExtComissao.cdsExtComissao);
end;

procedure TfrmConsExtComissao.SMDBGrid1TitleClick(Column: TColumn);
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

procedure TfrmConsExtComissao.prc_Monta_Valores;
var
  vSaldo : Real;
begin
  fDMCadExtComissao.vEntrada_Ext      := 0;
  fDMCadExtComissao.vPagamento_Ext    := 0;
  fDMCadExtComissao.vAdiantamento_Ext := 0;
  fDMCadExtComissao.vDevolucao_Ext    := 0;
  SMDBGrid1.DisableScroll;
  fDMCadExtComissao.prc_Le_cdsConsulta;
  
  SMDBGrid1.EnableScroll;
  vSaldo := StrToFloat(FormatFloat('0.00',fDMCadExtComissao.vEntrada_Ext - fDMCadExtComissao.vPagamento_Ext - fDMCadExtComissao.vAdiantamento_Ext - fDMCadExtComissao.vDevolucao_Ext));
  lblEntrada.Caption      := FormatFloat('###,###,##0.00',fDMCadExtComissao.vEntrada_Ext);
  lblPagamento.Caption    := FormatFloat('###,###,##0.00',fDMCadExtComissao.vPagamento_Ext);
  lblAdiantamento.Caption := FormatFloat('###,###,##0.00',fDMCadExtComissao.vAdiantamento_Ext);
  lblDevolucao.Caption    := FormatFloat('###,###,##0.00',fDMCadExtComissao.vDevolucao_Ext);
  lblSaldo.Caption        := FormatFloat('###,###,##0.00',vSaldo);
end;

procedure TfrmConsExtComissao.prc_Posiciona_Registro;
begin
  fDMCadExtComissao.prc_Localizar(fDMCadExtComissao.cdsConsultaID.AsInteger);
end;

procedure TfrmConsExtComissao.DBEdit10Exit(Sender: TObject);
begin
  prc_Calcular_Comissao;
end;

procedure TfrmConsExtComissao.prc_Calcular_Comissao;
begin
  if (StrToFloat(FormatFloat('0.00',fDMCadExtComissao.cdsExtComissaoPERC_COMISSAO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',fDMCadExtComissao.cdsExtComissaoBASE_COMISSAO.AsFloat)) > 0) then
    fDMCadExtComissao.cdsExtComissaoVLR_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadExtComissao.cdsExtComissaoBASE_COMISSAO.AsFloat * fDMCadExtComissao.cdsExtComissaoPERC_COMISSAO.AsFloat / 100));
end;

procedure TfrmConsExtComissao.DBEdit6Exit(Sender: TObject);
begin
  prc_Calcular_Comissao;
end;

procedure TfrmConsExtComissao.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.00',fDMCadExtComissao.mExtComissao_RedVlr_Vendas.AsFloat)) < StrToFloat(FormatFloat('0.00',fDMCadExtComissao.mExtComissao_RedVlr_Meta_Vendas.AsFloat)) then
    AFont.Color := clRed;
  if (Field = fDMCadExtComissao.mExtComissao_RedVlr_Comissao) then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsExtComissao.RzPageControl2Change(Sender: TObject);
begin
  if RzPageControl2.ActivePage <> TS_Detalhado then
  begin
    fDMCadExtComissao.cdsConsulta.Filtered := False;
    exit;
  end;

  SMDBGrid2.Visible := (fDMCadExtComissao.cdsConsulta.Active);
  if not fDMCadExtComissao.cdsConsulta.Active then
    exit;
  if fDMCadExtComissao.mExtComissao_RedID_Vendedor.AsInteger <= 0 then
    exit;

  fDMCadExtComissao.cdsConsulta.Filtered := False;
  fDMCadExtComissao.cdsConsulta.Filter   :=  'ID_VENDEDOR = ' + QuotedStr(fDMCadExtComissao.mExtComissao_RedID_Vendedor.AsString);
  fDMCadExtComissao.cdsConsulta.Filtered := True;
end;

procedure TfrmConsExtComissao.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl2.ActivePage := TS_Detalhado;
end;

procedure TfrmConsExtComissao.CheckBox1Click(Sender: TObject);
begin
  CheckBox2.Visible := CheckBox1.Checked;
  if not CheckBox2.Visible then
    CheckBox2.Checked := False;
end;

procedure TfrmConsExtComissao.RxDBLookupCombo1Change(Sender: TObject);
begin
  fDMCadExtComissao.mExtComissao_Red.EmptyDataSet;
  btnPagamento.Enabled := False;
  btnImprimir.Enabled  := False;
end;

procedure TfrmConsExtComissao.btnPagamentoClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não foi escolhida!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadExtComissao.mExtComissao_RedID_Vendedor.AsInteger <= 0 then
  begin
    MessageDlg('*** Vendedor não selecionado!', mtError, [mbOk], 0);
    exit;
  end;
  if (not SMDBGrid1.SelectedRows.CurrentRowSelected) then
  begin
    SMDBGrid1.DisableScroll;
    fDMCadExtComissao.mExtComissao_Red.First;
    fDMCadExtComissao.mExtComissao_Red.First;
    while not fDMCadExtComissao.mExtComissao_Red.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
        break;
      fDMCadExtComissao.mExtComissao_Red.Next;
    end;
    SMDBGrid1.EnableScroll;
  end;

  if MessageDlg('Realizar o pagamento de comissão do vendedor ' + fDMCadExtComissao.mExtComissao_RedNomeVendedor.AsString,mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  vFilial      := RxDBLookupCombo1.KeyValue;
  vFilial_Nome := RxDBLookupCombo1.Text;

  ffrmCadExtComissao_Pag := TfrmCadExtComissao_Pag.Create(self);
  ffrmCadExtComissao_Pag.fDMCadExtComissao := fDMCadExtComissao;
  ffrmCadExtComissao_Pag.vID_Vendedor      := fDMCadExtComissao.mExtComissao_RedID_Vendedor.AsInteger;
  ffrmCadExtComissao_Pag.ShowModal;

  FreeAndNil(ffrmCadExtComissao_Pag);
end;

procedure TfrmConsExtComissao.btnImprimirClick(Sender: TObject);
var
  x : Integer;
begin
  //SMDBGrid1.DisableScroll;
  vTipo_Config_Email := 3;
  if RxDBLookupCombo1.Text <> '' then
    vFilial := RxDBLookupCombo1.KeyValue
  else
  begin
    fDMCadExtComissao.cdsFilial.First;
    vFilial := fDMCadExtComissao.cdsFilialID.AsInteger;
  end;
  fDMCadExtComissao.mImp_Reduzido.EmptyDataSet;
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

  fDMCadExtComissao.cdsConsulta.Open;
  fDMCadExtComissao.cdsConsulta.IndexFieldNames := 'DTBASE;TIPO_REG';

  fRelExtComissao   := TfRelExtComissao.Create(Self);
  fRelExtComissao.fDMCadExtComissao := fDMCadExtComissao;
  fRelExtComissao.vImp_Nota := CheckBox1.Checked;
  fRelExtComissao.vImp_Separar_Vend := CheckBox2.Checked;
  fRelExtComissao.vOpcaoImp   := '';
  fRelExtComissao.vNomeEmp    := '';
  fRelExtComissao.vTitulo_Rel := 'Relatório de Comissão de Vendedores - ';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fRelExtComissao.vTitulo_Rel := fRelExtComissao.vTitulo_Rel + '(Período: ' + DateEdit1.Text + ' a ' + DateEdit2.Text +  ')'
  else
  if (DateEdit1.Date > 10) then
    fRelExtComissao.vTitulo_Rel := fRelExtComissao.vTitulo_Rel + '(Data Inicial: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    fRelExtComissao.vTitulo_Rel := fRelExtComissao.vTitulo_Rel + '(Data Final: ' + DateEdit2.Text + ')'
  else
    fRelExtComissao.vTitulo_Rel := fRelExtComissao.vTitulo_Rel + '(Périodo: Geral)';
  if RxDBLookupCombo1.Text <> '' then
    fRelExtComissao.vNomeEmp := 'Empresa: ' + RxDBLookupCombo1.Text
  else
    fRelExtComissao.vNomeEmp := 'Empresa: Todas';
  fRelExtComissao.RLReport1.PreviewModal;
  fRelExtComissao.RLReport1.Free;
  FreeAndNil(fRelExtComissao);
  //SMDBGrid1.EnableScroll;
end;

procedure TfrmConsExtComissao.SMDBGrid1ChangeSelection(Sender: TObject);
begin
  btnPagamento.Enabled := ((SMDBGrid1.SelectedRows.Count = 1) and (fDMCadExtComissao.mExtComissao_RedID_Vendedor.AsInteger > 0));
  btnImprimir.Enabled  := (SMDBGrid1.SelectedRows.Count > 0);
end;

procedure TfrmConsExtComissao.DateEdit1Exit(Sender: TObject);
begin
  if DateEdit1.Date > 10 then
  begin
    CurrencyEdit1.AsInteger := YearOf(DateEdit1.Date);
    CurrencyEdit2.AsInteger := MonthOf(DateEdit1.Date);
  end;
end;

procedure TfrmConsExtComissao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    BitBtn1.Visible   := not (BitBtn1.Visible);
    DateEdit3.Visible := not (DateEdit3.Visible);
  end;
end;

procedure TfrmConsExtComissao.BitBtn1Click(Sender: TObject);
var
  vAux : Real;
begin
  if DateEdit3.Date < 10 then
  begin
    ShowMessage('Data não informada!');
    DateEdit3.SetFocus;
    exit;
  end;
  fDMCadExtComissao.cdsExtComissao.Close;
  fDMCadExtComissao.sdsExtComissao.CommandText := fDMCadExtComissao.ctCommand
                                                + ' WHERE DTBASE <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  fDMCadExtComissao.cdsExtComissao.Open;
  fDMCadExtComissao.cdsExtComissao.First;
  while not fDMCadExtComissao.cdsExtComissao.Eof do
  begin
    fDMCadExtComissao.qDupAux.Close;
    fDMCadExtComissao.qDupAux.ParamByName('ID').AsInteger := fDMCadExtComissao.cdsExtComissaoID_DUPLICATA.AsInteger;
    fDMCadExtComissao.qDupAux.Open;
    if not fDMCadExtComissao.qDupAux.IsEmpty then
    begin
      if (StrToFloat(FormatFloat('0.000',fDMCadExtComissao.qDupAuxPERC_BASE_COMISSAO.AsFloat)) <>  StrToFloat(FormatFloat('0.000',100)))
        and (StrToFloat(FormatFloat('0.00',fDMCadExtComissao.qDupAuxVLR_PARCELA.AsFloat)) =  StrToFloat(FormatFloat('0.00',fDMCadExtComissao.cdsExtComissaoBASE_COMISSAO.AsFloat)))  then
      begin
        vAux := StrToFloat(FormatFloat('0.00',(fDMCadExtComissao.cdsExtComissaoBASE_COMISSAO.AsFloat * fDMCadExtComissao.qDupAuxPERC_BASE_COMISSAO.AsFloat) / 100));
        fDMCadExtComissao.cdsExtComissao.Edit;
        fDMCadExtComissao.cdsExtComissaoBASE_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
        fDMCadExtComissao.cdsExtComissaoVLR_COMISSAO.AsFloat  := StrToFloat(FormatFloat('0.00',(fDMCadExtComissao.cdsExtComissaoBASE_COMISSAO.AsFloat * fDMCadExtComissao.cdsExtComissaoPERC_COMISSAO.AsFloat) / 100));
        fDMCadExtComissao.cdsExtComissao.Post;
      end;
    end;
    fDMCadExtComissao.cdsExtComissao.Next;
  end;
  fDMCadExtComissao.cdsExtComissao.ApplyUpdates(0);
  ShowMessage('Ajuste Concluído!');
end;

end.
