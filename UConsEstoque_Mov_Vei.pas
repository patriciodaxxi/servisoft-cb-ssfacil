unit UConsEstoque_Mov_Vei;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsEstoque, RxLookup, UCBase, Mask, ToolEdit, RzTabs, RzPanel,
  NxCollection, StrUtils, CurrEdit;

type
  TfrmConsEstoque_Mov_Vei = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    RzPageControl1: TRzPageControl;
    Label7: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    CheckBox1: TCheckBox;
    SpeedButton1: TSpeedButton;
    RadioGroup1: TRadioGroup;
    UCControls1: TUCControls;
    SMDBGrid1: TSMDBGrid;
    RzGroupBox2: TRzGroupBox;
    Label5: TLabel;
    lblEntrada: TLabel;
    Label6: TLabel;
    lblSaida: TLabel;
    Label9: TLabel;
    lblSaldo: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    fDMConsEstoque: TDMConsEstoque;
    ColunaOrdenada: String;
    vComando: String;

    procedure prc_Consultar;
    procedure prc_Le_cdsEstoque_Mov;
    procedure prc_Condicao;
    procedure prc_Monta_Cab;

    procedure prc_Imprimir_Produto_Det;

  public
    { Public declarations }
  end;

var
  frmConsEstoque_Mov_Vei: TfrmConsEstoque_Mov_Vei;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, USel_Produto, USel_Pessoa, Math;

{$R *.dfm}

procedure TfrmConsEstoque_Mov_Vei.prc_Consultar;
begin
  fDMConsEstoque.cdsEstoque_Mov_Vei.Close;
  fDMConsEstoque.sdsEstoque_Mov_Vei.CommandText := fDMConsEstoque.ctEstoque_Mov_Vei + ' WHERE 0 = 0 '
                                                 + vComando;
  fDMConsEstoque.cdsEstoque_Mov_Vei.Open;
end;

procedure TfrmConsEstoque_Mov_Vei.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMConsEstoque.cdsProduto.Filtered := False;
  Action := Cafree;
end;

procedure TfrmConsEstoque_Mov_Vei.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsEstoque);

  fDMConsEstoque.prc_Abrir_Veiculo('N');

  fDMConsEstoque.cdsFilial.First;
  if (fDMConsEstoque.cdsFilial.RecordCount < 2) and (fDMConsEstoque.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsEstoque.cdsFilialID.AsInteger;

  fDMConsEstoque.cdsPessoa.Open;
end;

procedure TfrmConsEstoque_Mov_Vei.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsEstoque.cdsEstoque_Mov_Vei.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsEstoque_Mov_Vei.prc_Le_cdsEstoque_Mov;
var
  vQtdEntrada, vQtdSaida, vSaldo: Real;
begin
  vQtdEntrada := 0;
  vQtdSaida   := 0;

  SMDBGrid1.DisableScroll;
  fDMConsEstoque.cdsEstoque_Mov_Vei.First;
  while not fDMConsEstoque.cdsEstoque_Mov_Vei.Eof do
  begin
    if fDMConsEstoque.cdsEstoque_Mov_VeiTIPO_ES.AsString = 'E' then
      vQtdEntrada := vQtdEntrada + fDMConsEstoque.cdsEstoque_Mov_VeiQTD.AsFloat
    else
      vQtdSaida := vQtdSaida + fDMConsEstoque.cdsEstoque_Mov_VeiQTD.AsFloat;
    fDMConsEstoque.cdsEstoque_Mov_Vei.Next;
  end;

  vSaldo := vQtdEntrada - vQtdSaida;
  lblEntrada.Caption := FormatFloat('###,###,##0.0000',vQtdEntrada);
  lblSaida.Caption   := FormatFloat('###,###,##0.0000',vQtdSaida);
  lblSaldo.Caption   := FormatFloat('###,###,##0.0000',vSaldo);

  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsEstoque_Mov_Vei.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo2.Text <> '' then
      vCodProduto_Pos := RxDBLookupCombo2.KeyValue;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
    begin
      RxDBLookupCombo2.KeyValue := vCodProduto_Pos;
      RxDBLookupCombo2.SetFocus;
    end;
  end;
end;

procedure TfrmConsEstoque_Mov_Vei.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo4.Text <> '' then
      vCodPessoa_Pos := RxDBLookupCombo4.KeyValue;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.ShowModal;
    if vCodPessoa_Pos > 0 then
    begin
      RxDBLookupCombo4.KeyValue := vCodPessoa_Pos;
      RxDBLookupCombo4.SetFocus;
    end;
  end;
end;

procedure TfrmConsEstoque_Mov_Vei.btnConsultarClick(Sender: TObject);
begin
  prc_Condicao;
  prc_Consultar;
  prc_Le_cdsEstoque_Mov;
end;

procedure TfrmConsEstoque_Mov_Vei.prc_Condicao;
begin
  vComando := '';
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND EM.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND EM.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if (RxDBLookupCombo4.Text <> '') then
    vComando := vComando + ' AND EM.ID_PESSOA = ' + IntToStr(RxDBLookupCombo4.KeyValue);
  if (DateEdit1.Date > 10) then
    vComando := vComando + ' AND EM.DTMOVIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
  else
  if (DateEdit1.Date > 10) then
    vComando := vComando + ' AND EM.DATA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if (DateEdit2.Date > 10) then
    vComando := vComando + ' AND EM.DTMOVIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date))
  else
  if (DateEdit2.Date > 10) then
    vComando := vComando + ' AND EM.DATA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if not CheckBox1.Checked then
    vComando := vComando + ' AND PRO.INATIVO = ' + QuotedStr('N');
  vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('P');
  case RadioGroup1.ItemIndex of
    0: vComando := vComando + ' AND EM.TIPO_ES = ' + QuotedStr('E');
    1: vComando := vComando + ' AND EM.TIPO_ES = ' + QuotedStr('S');
  end;
end;

procedure TfrmConsEstoque_Mov_Vei.prc_Monta_Cab;
begin
  fDMConsEstoque.vDescOpcao_Rel := '';
  if RxDBLookupCombo1.Text <> '' then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Filial: ' + RxDBLookupCombo1.Text + ')';
  if RxDBLookupCombo4.Text <> '' then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Cli/Forn: ' + RxDBLookupCombo4.Text + ')';
  if RxDBLookupCombo2.Text <> '' then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Placa: ' + RxDBLookupCombo2.Text + ')';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Período: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')'
  else
  if (DateEdit1.Date > 10) then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Dt.Inicial: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Dt.Final: ' + DateEdit2.Text + ')';
end;

procedure TfrmConsEstoque_Mov_Vei.btnImprimirClick(Sender: TObject);
var
  vArq: String;
begin
  vTipo_Config_Email := 4;
  prc_Monta_Cab;
  if not(fDMConsEstoque.cdsEstoque_Mov_Vei.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  prc_Monta_Cab;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Estoque_Mov_Vei.fr3';
  if FileExists(vArq) then
    fDMConsEstoque.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsEstoque.frxReport1.variables['ImpOpcao'] := QuotedStr(fDMConsEstoque.vDescOpcao_Rel);
  fDMConsEstoque.frxReport1.ShowReport;
end;

procedure TfrmConsEstoque_Mov_Vei.prc_Imprimir_Produto_Det;
begin
  if not(fDMConsEstoque.cdsEstoque_Mov_Vei.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  fDMConsEstoque.cdsEstoque_Mov_Vei.IndexFieldNames := 'PLACA;DTMOVIMENTO;TIPO_ES;NOMEPESSOA;NUMNOTA';
  SMDBGrid1.DisableScroll;




  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsEstoque_Mov_Vei.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    fDMConsEstoque.prc_Abrir_Veiculo('S')
  else
    fDMConsEstoque.prc_Abrir_Veiculo('N');
end;

procedure TfrmConsEstoque_Mov_Vei.SpeedButton1Click(Sender: TObject);
begin
  fDMConsEstoque.cdsVeiculo.Close;
  if CheckBox1.Checked then
    fDMConsEstoque.prc_Abrir_Veiculo('S')
  else
    fDMConsEstoque.prc_Abrir_Veiculo('N');
end;

end.
