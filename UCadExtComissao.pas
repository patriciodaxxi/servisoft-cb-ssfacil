unit UCadExtComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadExtComissao,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, RXDBCtrl,
  RzPanel, NxCollection;

type
  TfrmCadExtComissao = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    StaticText1: TStaticText;
    Panel3: TPanel;
    Label15: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RadioGroup2: TRadioGroup;
    Label18: TLabel;
    DateEdit1: TDateEdit;
    Label26: TLabel;
    DateEdit2: TDateEdit;
    Label27: TLabel;
    DateEdit3: TDateEdit;
    Label28: TLabel;
    DateEdit4: TDateEdit;
    RxDBComboBox11: TRxDBComboBox;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label7: TLabel;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RzGroupBox1: TRzGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblEntrada: TLabel;
    lblPagamento: TLabel;
    lblAdiantamento: TLabel;
    btnRecalcular: TBitBtn;
    Label4: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label6: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label12: TLabel;
    lblDevolucao: TLabel;
    Label14: TLabel;
    lblSaldo: TLabel;
    Label13: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    Label20: TLabel;
    DBEdit2: TDBEdit;
    Label21: TLabel;
    DBEdit5: TDBEdit;
    Label22: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    Label23: TLabel;
    DBEdit9: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit10: TDBEdit;
    Label29: TLabel;
    DBEdit11: TDBEdit;
    UCControls1: TUCControls;
    pnlFinanceiro: TPanel;
    Label30: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    Label31: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    SpeedButton4: TSpeedButton;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure edtDuplicataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnRecalcularClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure RxDBComboBox11Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadExtComissao: TDMCadExtComissao;

    vTipo_Ant: String;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer = 0);
    procedure prc_Le_cdsExtComissao;
    procedure prc_Posiciona_Registro;

    procedure prc_Calcular_Comissao;

  public
    { Public declarations }
  end;

var
  frmCadExtComissao: TfrmCadExtComissao;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, Variants;

{$R *.dfm}

procedure TfrmCadExtComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadExtComissao.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadExtComissao.cdsConsulta.Active) or (fDMCadExtComissao.cdsConsulta.IsEmpty) then
    exit;

  prc_Posiciona_Registro;

  if fDMCadExtComissao.cdsExtComissao.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  btnConsultarClick(Sender);
end;

procedure TfrmCadExtComissao.prc_Excluir_Registro;
begin
  fDMCadExtComissao.prc_Excluir;
end;

procedure TfrmCadExtComissao.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vTipo: String;
begin
  vFilial := fDMCadExtComissao.cdsExtComissaoFILIAL.AsInteger;
  vIDAux  := fDMCadExtComissao.cdsExtComissaoID.AsInteger;
  vTipo   := fDMCadExtComissao.cdsExtComissaoTIPO_REG.AsString;
  fDMCadExtComissao.prc_Gravar;
  if fDMCadExtComissao.cdsExtComissao.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadExtComissao.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;

  if (vTipo_Ant = 'PAG') or (vTipo_Ant = 'ADI') then
    fDMCadExtComissao.prc_Excluir_Financeiro;

  if (vTipo = 'PAG') or (vTipo = 'ADI') then
  begin
    fDMCadExtComissao.cdsExtComissao.Locate('ID',vIDAux,[loCaseInsensitive]);
    fDMCadExtComissao.prc_Gravar_Financeiro;
  end;

  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);

  prc_Consultar(vIDAux);
end;

procedure TfrmCadExtComissao.prc_Inserir_Registro;
begin
  vTipo_Ant := '';
  fDMCadExtComissao.prc_Inserir;

  if fDMCadExtComissao.cdsExtComissao.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  RxDBComboBox11.SetFocus;
end;

procedure TfrmCadExtComissao.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMCadExtComissao := TDMCadExtComissao.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadExtComissao);
  fDMCadExtComissao.cdsFilial.Open;
  fDMCadExtComissao.cdsCliente.Open;
  fDMCadExtComissao.cdsVendedor.Open;
  fDMCadExtComissao.cdsTipoCobranca.Open;
  fDMCadExtComissao.cdsContas.Open;
end;

procedure TfrmCadExtComissao.prc_Consultar(ID: Integer = 0);
var
  vComando: String;
begin
  fDMCadExtComissao.cdsConsulta.Close;
  vComando := fDMCadExtComissao.ctConsulta + ' WHERE 0 = 0 ';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND EXT.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND EXT.ID_VENDEDOR = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if RxDBLookupCombo5.Text <> '' then
    vComando := vComando + ' AND EXT.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo5.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND EXT.DTBASE >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND EXT.DTBASE <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND EXT.DTCADASTRO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND EXT.DTCADASTRO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
  case RadioGroup2.ItemIndex of
    0: vComando := vComando + ' AND EXT.TIPO_REG = ' + QuotedStr('ENT');
    1: vComando := vComando + ' AND EXT.TIPO_REG = ' + QuotedStr('PAG');
    2: vComando := vComando + ' AND EXT.TIPO_REG = ' + QuotedStr('ADI');
    3: vComando := vComando + ' AND EXT.TIPO_REG = ' + QuotedStr('DEV');
  end;
  fDMCadExtComissao.sdsConsulta.CommandText := vComando;
  fDMCadExtComissao.cdsConsulta.IndexFieldNames := 'DTBASE';
  fDMCadExtComissao.cdsConsulta.Open;
  if ID > 0 then
    fDMCadExtComissao.cdsConsulta.Locate('ID',ID,[loCaseInsensitive]);
end;

procedure TfrmCadExtComissao.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
  prc_Le_cdsExtComissao;
end;

procedure TfrmCadExtComissao.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadExtComissao.cdsExtComissao.State in [dsBrowse]) or not(fDMCadExtComissao.cdsExtComissao.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadExtComissao.cdsExtComissao.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadExtComissao.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadExtComissao.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadExtComissao.cdsExtComissao.IsEmpty) or not(fDMCadExtComissao.cdsExtComissao.Active) or (fDMCadExtComissao.cdsExtComissaoID.AsInteger < 1) then
    exit;
  vTipo_Ant := fDMCadExtComissao.cdsExtComissaoTIPO_REG.AsString;

  fDMCadExtComissao.cdsExtComissao.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadExtComissao.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadExtComissao.FormDestroy(Sender: TObject);
begin
  fDMCadExtComissao.cdsFilial.Close;
  fDMCadExtComissao.cdsCliente.Close;
  fDMCadExtComissao.cdsVendedor.Close;

  FreeAndNil(fDMCadExtComissao);
end;

procedure TfrmCadExtComissao.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadExtComissao.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadExtComissao.edtDuplicataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadExtComissao.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadExtComissao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadExtComissao.cdsExtComissao);
end;

procedure TfrmCadExtComissao.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadExtComissao.cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadExtComissao.prc_Le_cdsExtComissao;
var
  vEntrada, vPagamento, vAdiantamento, vDevolucao, vSaldo: Real;
begin
  vEntrada      := 0;
  vPagamento    := 0;
  vAdiantamento := 0;
  vDevolucao    := 0;
  SMDBGrid1.DisableScroll;
  fDMCadExtComissao.cdsConsulta.First;
  while not fDMCadExtComissao.cdsConsulta.Eof do
  begin
    if fDMCadExtComissao.cdsConsultaTIPO_REG.AsString = 'ENT' then
      vEntrada := vEntrada + fDMCadExtComissao.cdsConsultaVLR_COMISSAO.AsFloat
    else
    if fDMCadExtComissao.cdsConsultaTIPO_REG.AsString = 'PAG' then
      vPagamento := vPagamento + fDMCadExtComissao.cdsConsultaVLR_COMISSAO.AsFloat
    else
    if fDMCadExtComissao.cdsConsultaTIPO_REG.AsString = 'ADI' then
      vAdiantamento := vAdiantamento + fDMCadExtComissao.cdsConsultaVLR_COMISSAO.AsFloat
    else
    if fDMCadExtComissao.cdsConsultaTIPO_REG.AsString = 'DEV' then
      vDevolucao := vDevolucao + fDMCadExtComissao.cdsConsultaVLR_COMISSAO.AsFloat;
    fDMCadExtComissao.cdsConsulta.Next;
  end;
  SMDBGrid1.EnableScroll;
  vSaldo := StrToFloat(FormatFloat('0.00',vEntrada - vPagamento - vAdiantamento - vDevolucao));
  lblEntrada.Caption      := FormatFloat('###,###,##0.00',vEntrada);
  lblPagamento.Caption    := FormatFloat('###,###,##0.00',vPagamento);
  lblAdiantamento.Caption := FormatFloat('###,###,##0.00',vAdiantamento);
  lblDevolucao.Caption    := FormatFloat('###,###,##0.00',vDevolucao);
  lblSaldo.Caption        := FormatFloat('###,###,##0.00',vSaldo);
end;

procedure TfrmCadExtComissao.btnRecalcularClick(Sender: TObject);
begin
  btnConsultarClick(Sender);
  prc_Le_cdsExtComissao;
end;

procedure TfrmCadExtComissao.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadExtComissao.cdsExtComissao.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadExtComissao.cdsConsulta.Active) or (fDMCadExtComissao.cdsConsulta.IsEmpty) or (fDMCadExtComissao.cdsConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_Registro;

      pnlFinanceiro.Visible := ((fDMCadExtComissao.cdsExtComissaoTIPO_REG.AsString = 'PAG') or (fDMCadExtComissao.cdsExtComissaoTIPO_REG.AsString = 'ADI'));
      DateEdit2.ReadOnly    := ((fDMCadExtComissao.cdsExtComissaoTIPO_REG.AsString <> 'PAG') and (fDMCadExtComissao.cdsExtComissaoTIPO_REG.AsString <> 'ADI'));
      
    end;
  end;
end;

procedure TfrmCadExtComissao.prc_Posiciona_Registro;
begin
  fDMCadExtComissao.prc_Localizar(fDMCadExtComissao.cdsConsultaID.AsInteger);
end;

procedure TfrmCadExtComissao.SpeedButton1Click(Sender: TObject);
begin
  fDMCadExtComissao.cdsVendedor.Close;
  fDMCadExtComissao.cdsVendedor.Open;
end;

procedure TfrmCadExtComissao.SpeedButton2Click(Sender: TObject);
begin
  fDMCadExtComissao.cdsCliente.Close;
  fDMCadExtComissao.cdsCliente.Open;
end;

procedure TfrmCadExtComissao.DBEdit10Exit(Sender: TObject);
begin
  prc_Calcular_Comissao;
end;

procedure TfrmCadExtComissao.prc_Calcular_Comissao;
begin
  if (StrToFloat(FormatFloat('0.00',fDMCadExtComissao.cdsExtComissaoPERC_COMISSAO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',fDMCadExtComissao.cdsExtComissaoBASE_COMISSAO.AsFloat)) > 0) then
    fDMCadExtComissao.cdsExtComissaoVLR_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadExtComissao.cdsExtComissaoBASE_COMISSAO.AsFloat * fDMCadExtComissao.cdsExtComissaoPERC_COMISSAO.AsFloat / 100));
end;

procedure TfrmCadExtComissao.DBEdit6Exit(Sender: TObject);
begin
  prc_Calcular_Comissao;
end;

procedure TfrmCadExtComissao.SpeedButton3Click(Sender: TObject);
begin
  fDMCadExtComissao.cdsContas.Close;
  fDMCadExtComissao.cdsContas.Open;
end;

procedure TfrmCadExtComissao.SpeedButton4Click(Sender: TObject);
begin
  fDMCadExtComissao.cdsTipoCobranca.Close;
  fDMCadExtComissao.cdsTipoCobranca.Open;
end;

procedure TfrmCadExtComissao.RxDBComboBox11Click(Sender: TObject);
begin
  pnlFinanceiro.Visible := ((RxDBComboBox11.ItemIndex = 1) or (RxDBComboBox11.ItemIndex = 2));
  DBDateEdit2.ReadOnly  := ((RxDBComboBox11.ItemIndex <> 1) and (RxDBComboBox11.ItemIndex <> 2));
end;

procedure TfrmCadExtComissao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then //CTRL W
    BitBtn1.Visible := not(BitBtn1.Visible);
end;

procedure TfrmCadExtComissao.BitBtn1Click(Sender: TObject);
begin
  fDMCadExtComissao.cdsConsulta.First;
  while not fDMCadExtComissao.cdsConsulta.Eof do
  begin
    if fDMCadExtComissao.cdsConsultaID_NOTA.AsInteger > 0 then
    begin
      fDMCadExtComissao.sdsPrc_Atualiza_Comissao.Close;
      fDMCadExtComissao.sdsPrc_Atualiza_Comissao.ParamByName('ID_NOTA').AsInteger     := fDMCadExtComissao.cdsConsultaID_NOTA.AsInteger;
      fDMCadExtComissao.sdsPrc_Atualiza_Comissao.ParamByName('ID_COMISSAO').AsInteger := fDMCadExtComissao.cdsConsultaID.AsInteger;
      fDMCadExtComissao.sdsPrc_Atualiza_Comissao.ExecSQL;
    end;
    fDMCadExtComissao.cdsConsulta.Next;
  end;
end;

end.
