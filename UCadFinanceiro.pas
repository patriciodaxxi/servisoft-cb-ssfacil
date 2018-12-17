unit UCadFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadFinanceiro, Menus,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, RXDBCtrl, RzPanel,
  UEscolhe_Filial, NxCollection, UConsSaldo_Conta, ValorPor;

type
  TfrmCadFinanceiro = class(TForm)
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
    pnlPesquisa: TPanel;
    pnlNota: TPanel;
    Label19: TLabel;
    Label23: TLabel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    DBEdit8: TDBEdit;
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
    SpeedButton2: TSpeedButton;
    UCControls1: TUCControls;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RzGroupBox1: TRzGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblEntrada: TLabel;
    lblSaida: TLabel;
    lblSaldo: TLabel;
    btnRecalcular: TBitBtn;
    Label4: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label9: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    RzGroupBox2: TRzGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnPesquisar: TNxButton;
    btnImprimir: TNxButton;
    PopupMenu1: TPopupMenu;
    Conta1: TMenuItem;
    FormadePagamento1: TMenuItem;
    btnConsultar: TNxButton;
    Label20: TLabel;
    DBEdit2: TDBEdit;
    Label24: TLabel;
    SpeedButton3: TSpeedButton;
    RxDBLookupCombo6: TRxDBLookupCombo;
    StaticText2: TStaticText;
    Label6: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Label25: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    MovimentopData1: TMenuItem;
    Recibo1: TMenuItem;
    ValorPorExtenso1: TValorPorExtenso;
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
    procedure SpeedButton2Click(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnRecalcularClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure Conta1Click(Sender: TObject);
    procedure FormadePagamento1Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure RxDBLookupCombo6CloseUp(Sender: TObject);
    procedure RxDBLookupCombo6DropDown(Sender: TObject);
    procedure RxDBLookupCombo6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure MovimentopData1Click(Sender: TObject);
    procedure Recibo1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadFinanceiro: TDMCadFinanceiro;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer = 0);
    procedure prc_Le_cdsFinanceiro;
    procedure prc_Posiciona_Financeiro;
    procedure prc_Abrir_qSaldoMov;
    procedure prc_Abrir_Movimento_Data(D1: TDate; D2: TDate; Filial: Integer);
    procedure prc_Abrir_Saldo_Movimento(DataInicial: TDate);
    procedure prc_Imp_Recibo;

    function fnc_Fechamento: Boolean;
  public
    { Public declarations }
  end;

var
  frmCadFinanceiro: TfrmCadFinanceiro;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, Variants, URelFinanceiro_Conta, URelFinanceiro_FPgto, DateUtils, USel_ContaOrc;

{$R *.dfm}

procedure TfrmCadFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadFinanceiro.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadFinanceiro.cdsFinanceiro_Consulta.Active) or (fDMCadFinanceiro.cdsFinanceiro_Consulta.IsEmpty) then
    exit;
  if fDMCadFinanceiro.cdsFinanceiro_ConsultaID_TRANSFERENCIA.AsInteger > 0 then
  begin
    MessageDlg('*** Movimento é de transferência, não pode ser excluído por aqui!', mtError, [mbOk], 0);
    exit;
  end;

  prc_Posiciona_Financeiro;
  if fDMCadFinanceiro.cdsFinanceiro.IsEmpty then
    exit;
  if fnc_Fechamento then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  prc_Excluir_Registro;
  btnConsultarClick(Sender);
end;

procedure TfrmCadFinanceiro.prc_Excluir_Registro;
begin
  fDMCadFinanceiro.prc_Excluir;
end;

procedure TfrmCadFinanceiro.prc_Gravar_Registro;
var
  vIDAux: Integer;
begin
  if fnc_Fechamento then
    exit;
  vIDAux := fDMCadFinanceiro.cdsFinanceiroID.AsInteger;
  fDMCadFinanceiro.prc_Gravar;
  if fDMCadFinanceiro.cdsFinanceiro.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadFinanceiro.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);

  prc_Consultar(vIDAux);
end;

procedure TfrmCadFinanceiro.prc_Inserir_Registro;
begin
  if fDMCadFinanceiro.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadFinanceiro.cdsFilial.Last;
    vFilial      := fDMCadFinanceiro.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadFinanceiro.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;
  fDMCadFinanceiro.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);
  fDMCadFinanceiro.prc_Inserir;
  lblNome_Filial.Caption := vFilial_Nome;

  if fDMCadFinanceiro.cdsFinanceiro.State in [dsBrowse] then
    exit;

  fDMCadFinanceiro.cdsFinanceiroFILIAL.AsInteger := vFilial;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  RxDBComboBox11.SetFocus;
end;

procedure TfrmCadFinanceiro.FormShow(Sender: TObject);
var
  i: Integer;
  vData: TDateTime;
begin
  fDMCadFinanceiro := TDMCadFinanceiro.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFinanceiro);

  fDMCadFinanceiro.cdsPessoa.Close;
  fDMCadFinanceiro.cdsPessoa.Open;

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'ID_TERMINAL') then
      SMDBGrid1.Columns[i].Visible := (fDMCadFinanceiro.qParametros_GeralEMPRESA_VAREJO.AsString = 'S');
  end;

  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  DateEdit1.Date := vData;
  btnConsultarClick(Sender);

  Label24.Visible          := (fDMCadFinanceiro.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  RxDBLookupCombo6.Visible := (fDMCadFinanceiro.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  SpeedButton3.Visible     := (fDMCadFinanceiro.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
end;

procedure TfrmCadFinanceiro.prc_Consultar(ID: Integer = 0);
begin
  fDMCadFinanceiro.cdsFinanceiro_Consulta.Close;
  fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText := fDMCadFinanceiro.ctFinanceiro_Consulta  + ' WHERE 0 = 0';
  if RxDBLookupCombo1.Text <> '' then
    fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText := fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText
                                                       + ' AND F.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText := fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText
                                                       + ' AND F.ID_CONTA = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if RxDBLookupCombo5.Text <> '' then
    fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText := fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText
                                                       + ' AND F.ID_FORMA_PAGAMENTO = ' + IntToStr(RxDBLookupCombo5.KeyValue);
  if DateEdit1.Date > 10 then
    fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText := fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText
                                                        + ' AND F.DTMOVIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText := fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText
                                                        + ' AND F.DTMOVIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if DateEdit3.Date > 10 then
    fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText := fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText
                                                        + ' AND F.DTUSUARIO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText := fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText
                        + ' AND F.DTUSUARIO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
  case RadioGroup2.ItemIndex of
    0: fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText := fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText +
                                                               ' AND F.TIPO_ES = ' + QuotedStr('E');
    1: fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText := fDMCadFinanceiro.sdsFinanceiro_Consulta.CommandText +
                                                               ' AND F.TIPO_ES = ' + QuotedStr('S');
  end;
  fDMCadFinanceiro.cdsFinanceiro_Consulta.IndexFieldNames := 'DTMOVIMENTO';
  fDMCadFinanceiro.cdsFinanceiro_Consulta.Open;
  if ID > 0 then
    fDMCadFinanceiro.cdsFinanceiro_Consulta.Locate('ID',ID,[loCaseInsensitive]);

  fDMCadFinanceiro.qCheques.Close;
  fDMCadFinanceiro.qCheques.ParamByName('DATA').AsDate := Date;
  fDMCadFinanceiro.qCheques.Open;
  Label21.Caption := FormatFloat('###,###,##0.00',fDMCadFinanceiro.qChequesVLR_VENCIDO.AsFloat);
  if StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.qChequesVLR_VENCIDO.AsFloat)) > 0 then
  begin
    Label21.Font.Color := clRed;
    Label21.Font.Style := [fsBold];
  end
  else
  begin
    Label21.Font.Color := clNavy;
    Label21.Font.Style := [];
  end;

  Label22.Caption := FormatFloat('###,###,##0.00',fDMCadFinanceiro.qChequesVLR_AVENCER.AsFloat);
end;

procedure TfrmCadFinanceiro.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
  prc_Le_cdsFinanceiro;
end;

procedure TfrmCadFinanceiro.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadFinanceiro.cdsFinanceiro.State in [dsBrowse]) or not(fDMCadFinanceiro.cdsFinanceiro.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadFinanceiro.cdsFinanceiro.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadFinanceiro.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadFinanceiro.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadFinanceiro.cdsFinanceiro.IsEmpty) or
     not(fDMCadFinanceiro.cdsFinanceiro.Active) or
     (fDMCadFinanceiro.cdsFinanceiroID.AsInteger < 1) then
    exit;
  if fDMCadFinanceiro.cdsFinanceiroID_TRANSFERENCIA.AsInteger > 0 then
  begin
    MessageDlg('*** Movimento é de transferência, não pode ser alterado por aqui!', mtError, [mbOk], 0);
    exit;
  end;

  if fnc_Fechamento then
    exit;
  fDMCadFinanceiro.cdsFinanceiro.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadFinanceiro.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadFinanceiro.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadFinanceiro);
end;

procedure TfrmCadFinanceiro.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadFinanceiro.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadFinanceiro.edtDuplicataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadFinanceiro.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadFinanceiro.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadFinanceiro.cdsFinanceiro);
end;

procedure TfrmCadFinanceiro.SpeedButton2Click(Sender: TObject);
begin
  fDMCadFinanceiro.cdsContas.Close;
  fDMCadFinanceiro.cdsContas.Open;
end;

procedure TfrmCadFinanceiro.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadFinanceiro.cdsFinanceiro_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadFinanceiro.prc_Le_cdsFinanceiro;
var
  vEntrada, vSaida, vSaldo: Real;
begin
  vEntrada := 0;
  vSaida   := 0;
  SMDBGrid1.DisableScroll;
  fDMCadFinanceiro.cdsFinanceiro_Consulta.First;
  while not fDMCadFinanceiro.cdsFinanceiro_Consulta.Eof do
  begin
    if fDMCadFinanceiro.cdsFinanceiro_ConsultaTIPO_ES.AsString = 'E' then
      vEntrada := vEntrada + fDMCadFinanceiro.cdsFinanceiro_ConsultaVLR_MOVIMENTO.AsFloat
    else
    if fDMCadFinanceiro.cdsFinanceiro_ConsultaTIPO_ES.AsString = 'S' then
      vSaida := vSaida + fDMCadFinanceiro.cdsFinanceiro_ConsultaVLR_MOVIMENTO.AsFloat;
    fDMCadFinanceiro.cdsFinanceiro_Consulta.Next;
  end;
  SMDBGrid1.EnableScroll;
  vSaldo := StrToFloat(FormatFloat('0.00',vEntrada - vSaida));
  lblEntrada.Caption := FormatFloat('###,###,##0.00',vEntrada);
  lblSaida.Caption   := FormatFloat('###,###,##0.00',vSaida);
  lblSaldo.Caption   := FormatFloat('###,###,##0.00',vSaldo);
end;

procedure TfrmCadFinanceiro.btnRecalcularClick(Sender: TObject);
begin
  btnConsultarClick(Sender);
  prc_Le_cdsFinanceiro;
end;

procedure TfrmCadFinanceiro.SpeedButton1Click(Sender: TObject);
begin
  fDMCadFinanceiro.cdsTipoCobranca.Close;
  fDMCadFinanceiro.cdsTipoCobranca.Open;
end;

procedure TfrmCadFinanceiro.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadFinanceiro.cdsFinanceiro.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadFinanceiro.cdsFinanceiro_Consulta.Active) or
            (fDMCadFinanceiro.cdsFinanceiro_Consulta.IsEmpty) or
            (fDMCadFinanceiro.cdsFinanceiro_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_Financeiro;
    end;
  end;
end;

procedure TfrmCadFinanceiro.prc_Posiciona_Financeiro;
begin
  fDMCadFinanceiro.prc_Localizar(fDMCadFinanceiro.cdsFinanceiro_ConsultaID.AsInteger);
end;

procedure TfrmCadFinanceiro.prc_Abrir_qSaldoMov;
begin
  fDMCadFinanceiro.qSaldoMov.Close;
  if DateEdit1.Date > 10 then
    fDMCadFinanceiro.qSaldoMov.ParamByName('DTMOVIMENTO').AsDate := DateEdit1.Date;
  fDMCadFinanceiro.qSaldoMov.Open;
end;

function TfrmCadFinanceiro.fnc_Fechamento: Boolean;
begin
  fDMCadFinanceiro.qParametros.Close;
  fDMCadFinanceiro.qParametros.Open;
  Result := False;
  fDMCadFinanceiro.qUltFechamento.Close;
  fDMCadFinanceiro.qUltFechamento.ParamByName('ID_CONTA').AsInteger := fDMCadFinanceiro.cdsFinanceiroID_CONTA.AsInteger;
  fDMCadFinanceiro.qUltFechamento.ParamByName('FILIAL').AsInteger   := fDMCadFinanceiro.cdsFinanceiroFILIAL.AsInteger;
  fDMCadFinanceiro.qUltFechamento.Open;
  if not(fDMCadFinanceiro.qUltFechamento.IsEmpty) and
    (fDMCadFinanceiro.cdsFinanceiroDTMOVIMENTO.AsDateTime <
     fDMCadFinanceiro.qUltFechamentoDATA.AsDateTime) then
  begin
    MessageDlg('*** Processo não pode ser concluído pois data está fechada!', mtError, [mbOk], 0);
    Result := True;
  end;
end;

procedure TfrmCadFinanceiro.Conta1Click(Sender: TObject);
begin
  if not(fDMCadFinanceiro.cdsFinanceiro_Consulta.Active) or
        (fDMCadFinanceiro.cdsFinanceiro_Consulta.IsEmpty) or
        (fDMCadFinanceiro.cdsFinanceiro_ConsultaID.AsInteger <= 0) then
    exit;
  vTipo_Config_Email := 3;
  fDMCadFinanceiro.cdsFinanceiro_Consulta.IndexFieldNames := 'NOME_CONTA;DTMOVIMENTO;TIPO_ES';
  if DateEdit1.Date > 10 then
    prc_Abrir_qSaldoMov
  else
    fDMCadFinanceiro.qSaldoMov.Close;

  fRelFinanceiro_Conta                  := TfRelFinanceiro_Conta.Create(Self);
  fRelFinanceiro_Conta.fDMCadFinanceiro := fDMCadFinanceiro;
  fRelFinanceiro_Conta.RLReport1.PreviewModal;
  fRelFinanceiro_Conta.RLReport1.Free;
  FreeAndNil(fRelFinanceiro_Conta);
end;

procedure TfrmCadFinanceiro.FormadePagamento1Click(Sender: TObject);
begin
  if not(fDMCadFinanceiro.cdsFinanceiro_Consulta.Active) or
        (fDMCadFinanceiro.cdsFinanceiro_Consulta.IsEmpty) or
        (fDMCadFinanceiro.cdsFinanceiro_ConsultaID.AsInteger <= 0) then
    exit;
  vTipo_Config_Email := 3;
  fDMCadFinanceiro.cdsFinanceiro_Consulta.IndexFieldNames := 'NOME_FORMAPGTO;DTMOVIMENTO;TIPO_ES;NOME_CONTA';

  fRelFinanceiro_FPgto                  := TfRelFinanceiro_FPgto.Create(Self);
  fRelFinanceiro_FPgto.fDMCadFinanceiro := fDMCadFinanceiro;
  fRelFinanceiro_FPgto.RLReport1.PreviewModal;
  fRelFinanceiro_FPgto.RLReport1.Free;
  FreeAndNil(fRelFinanceiro_FPgto);
end;

procedure TfrmCadFinanceiro.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    RxDBLookupCombo2.SetFocus;
end;

procedure TfrmCadFinanceiro.SpeedButton3Click(Sender: TObject);
begin
  fDMCadFinanceiro.cdsContaOrcamento.Close;
  fDMCadFinanceiro.cdsContaOrcamento.Open;
end;

procedure TfrmCadFinanceiro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmConsSaldo_Conta: TfrmConsSaldo_Conta;
begin
  if (Key = Vk_F5) then
  begin
    ffrmConsSaldo_Conta := TfrmConsSaldo_Conta.Create(self);
    ffrmConsSaldo_Conta.ShowModal;
    FreeAndNil(ffrmConsSaldo_Conta);
  end;
end;

procedure TfrmCadFinanceiro.RxDBLookupCombo6Enter(Sender: TObject);
begin
  StaticText2.Visible := True;
end;

procedure TfrmCadFinanceiro.RxDBLookupCombo6Exit(Sender: TObject);
begin
  StaticText2.Visible := False;
end;

procedure TfrmCadFinanceiro.RxDBLookupCombo6CloseUp(Sender: TObject);
begin
  RxDBLookupCombo6.LookupDisplay := 'DESCRICAO';
end;

procedure TfrmCadFinanceiro.RxDBLookupCombo6DropDown(Sender: TObject);
begin
  RxDBLookupCombo6.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadFinanceiro.RxDBLookupCombo6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadFinanceiro.cdsFinanceiroID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ShowModal;
    fDMCadFinanceiro.cdsFinanceiroID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos;
  end;
end;

procedure TfrmCadFinanceiro.RxDBLookupCombo7Enter(Sender: TObject);
begin
  fdmCadFinanceiro.cdsPessoa.IndexFieldNames := 'NOME';
end;

procedure TfrmCadFinanceiro.MovimentopData1Click(Sender: TObject);
var
  vArq: String;
  vDataIni,vDataFin: TDate;
begin
  vDataIni := DateEdit1.Date;
  vDataFin := DateEdit2.Date;
  if vDataFin < 10 then
     vDataFin := Date;
  prc_Abrir_Saldo_Movimento(vDataIni);
  prc_Abrir_Movimento_Data(vDataIni,vDataFin,fDMCadFinanceiro.cdsFilialID.AsInteger);
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Movimento_Fin_Data.fr3';
  if FileExists(vArq) then
    fDMCadFinanceiro.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMCadFinanceiro.frxReport1.Variables['Nome_Empresa'] := QuotedStr(fDMCadFinanceiro.cdsFilialNOME.AsString);
  fDMCadFinanceiro.frxReport1.ShowReport;
end;

procedure TfrmCadFinanceiro.prc_Abrir_Movimento_Data(D1, D2: TDate;
  Filial: Integer);
begin
  fDMCadFinanceiro.cdsMovimentoData.Close;
  fDMCadFinanceiro.sdsMovimentoData.ParamByName('D1').AsDate := D1;
  fDMCadFinanceiro.sdsMovimentoData.ParamByName('D2').AsDate := D2;
  fDMCadFinanceiro.sdsMovimentoData.ParamByName('FIL').AsInteger := Filial;
  fDMCadFinanceiro.cdsMovimentoData.Open;
end;

procedure TfrmCadFinanceiro.prc_Abrir_Saldo_Movimento(DataInicial: TDate);
begin
  fDMCadFinanceiro.qSaldoMovData.Close;
  fDMCadFinanceiro.qSaldoMovData.ParamByName('DTMOVIMENTO').AsDate := DataInicial;
  fDMCadFinanceiro.qSaldoMovData.Open;
end;

procedure TfrmCadFinanceiro.prc_Imp_Recibo;
begin
end;

procedure TfrmCadFinanceiro.Recibo1Click(Sender: TObject);
var
  vArq: String;
begin
  fDMCadFinanceiro.mRecibo.EmptyDataSet;

  fDMCadFinanceiro.prc_Localizar(fDMCadFinanceiro.cdsFinanceiro_ConsultaID.AsInteger);

  fDMCadFinanceiro.cdsFilial.IndexFieldNames := 'ID';
  fDMCadFinanceiro.cdsFilial.FindKey([fDMCadFinanceiro.cdsFinanceiroFILIAL.AsInteger]);

  if not fDMCadFinanceiro.cdsPessoa.Active then
    fDMCadFinanceiro.cdsPessoa.Active := True;
  fDMCadFinanceiro.cdsPessoa.IndexFieldNames := 'CODIGO';
  fDMCadFinanceiro.cdsPessoa.FindKey([fDMCadFinanceiro.cdsFinanceiroID_PESSOA.AsInteger]);

  fDMCadFinanceiro.mRecibo.Insert;
  fDMCadFinanceiro.mReciboFilial.AsString        := fDMCadFinanceiro.cdsFilialNOME.AsString;
  fDMCadFinanceiro.mReciboFilial_CEP.AsString    := fDMCadFinanceiro.cdsFilialCEP.AsString;
  fDMCadFinanceiro.mReciboFilial_Cidade.AsString := fDMCadFinanceiro.cdsFilialCIDADE.AsString;
  fDMCadFinanceiro.mReciboFilial_End.AsString    := fDMCadFinanceiro.cdsFilialENDERECO.AsString + ', ' +
                                                    fDMCadFinanceiro.cdsFilialNUM_END.AsString + ' - ' +
                                                    fDMCadFinanceiro.cdsFilialCOMPLEMENTO_END.AsString;
  fDMCadFinanceiro.mReciboFilial_UF.AsString     := fDMCadFinanceiro.cdsFilialUF.AsString;
  fDMCadFinanceiro.mReciboFilial_Email.AsString  := fDMCadFinanceiro.cdsFilialEMAIL_NFE.AsString;
  fDMCadFinanceiro.mReciboFilial_Fone.AsString   := fDMCadFinanceiro.cdsFilialDDD1.AsString + ' ' +
                                                    fDMCadFinanceiro.cdsFilialFONE.AsString;
  fDMCadFinanceiro.mReciboFilial_CNPJ.AsString   := fDMCadFinanceiro.cdsFilialCNPJ_CPF.AsString;
  fDMCadFinanceiro.mReciboPessoa_Nome.AsString   := fDMCadFinanceiro.cdsPessoaNOME.AsString;
  fDMCadFinanceiro.mReciboPessoa_Doc.AsString    := fDMCadFinanceiro.cdsPessoaCNPJ_CPF.AsString;
  fDMCadFinanceiro.mReciboFinanceiro_Forma.AsString      := fDMCadFinanceiro.cdsFinanceiro_ConsultaNOME_FORMAPGTO.AsString;
  fDMCadFinanceiro.mReciboFinanceiro_Data.AsString       := fDMCadFinanceiro.cdsFinanceiro_ConsultaDTMOVIMENTO.AsString;
  fDMCadFinanceiro.mReciboFinanceiro_Descr.AsString      := fDMCadFinanceiro.cdsFinanceiro_ConsultaHISTORICO_COMPL.AsString;
  fDMCadFinanceiro.mReciboFinanceiro_Valor.AsFloat       := StrToFloat(FormatFloat('#,###,##0.00',fDMCadFinanceiro.cdsFinanceiro_ConsultaVLR_MOVIMENTO.AsFloat));
  ValorPorExtenso1.Valor := fDMCadFinanceiro.cdsFinanceiro_ConsultaVLR_MOVIMENTO.AsFloat;
  fDMCadFinanceiro.mReciboFinanceiro_VlrExtenso.AsString := ValorPorExtenso1.Texto;
  fDMCadFinanceiro.mRecibo.Post;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Recibo_Financeiro.fr3';
  if FileExists(vArq) then
    fDMCadFinanceiro.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMCadFinanceiro.frxReport1.ShowReport;
end;

end.
