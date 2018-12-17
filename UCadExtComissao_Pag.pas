unit UCadExtComissao_Pag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadExtComissao, ExtCtrls,
  DBCtrls, StdCtrls, ToolEdit, Mask, CurrEdit, RxLookup, Buttons, dbXPress, UDMGravarFinanceiro, SqlExpr;

type
  TfrmCadExtComissao_Pag = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Label5: TLabel;
    DateEdit2: TDateEdit;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label8: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    lblContaOrcamento: TLabel;
    dbedtContaOrc: TDBEdit;
    edtNome: TEdit;
    lblPesquisa: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbedtContaOrcEnter(Sender: TObject);
    procedure dbedtContaOrcExit(Sender: TObject);
    procedure prc_Abrir_qConta_Orcamento(ID: Integer);
    procedure dbedtContaOrcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMGravarFinanceiro: TDMGravarFinanceiro;

    procedure prc_Verificar_Erros;
  public
    { Public declarations }
    vID_Vendedor: Integer;
    vID_Conta_Orcamento : Integer;

    fDMCadExtComissao: TDMCadExtComissao;
  end;

var
  frmCadExtComissao_Pag: TfrmCadExtComissao_Pag;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase, USel_ContaOrc, DB;

{$R *.dfm}

procedure TfrmCadExtComissao_Pag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadExtComissao_Pag.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadExtComissao);
  Label10.Caption := vFilial_Nome;
  if not fDMCadExtComissao.cdsExtComissao.Active then
    fDMCadExtComissao.cdsExtComissao.Open;
  if  not fDMCadExtComissao.qParametros.Active then
    fDMCadExtComissao.qParametros.Open;
  fDMCadExtComissao.cdsExtComissao.Edit;
  if fDMCadExtComissao.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S' then
  begin
    lblContaOrcamento.Visible := True;
    dbedtContaOrc.Visible := True;
    edtNome.Visible := True;
  end;
end;

procedure TfrmCadExtComissao_Pag.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadExtComissao_Pag.prc_Verificar_Erros;
begin
  fDMCadExtComissao.vMsgErro := '';
  if trim(RxDBLookupCombo1.Text) = '' then
    fDMCadExtComissao.vMsgErro := fDMCadExtComissao.vMsgErro + #13 + '*** Conta não informada!';
  if trim(RxDBLookupCombo2.Text) = '' then
    fDMCadExtComissao.vMsgErro := fDMCadExtComissao.vMsgErro + #13 + '*** Forma de pagamento não informada!';
  if CurrencyEdit1.Value <= 0 then
    fDMCadExtComissao.vMsgErro := fDMCadExtComissao.vMsgErro + #13 + '*** Valor de pagamento não informado!';
  if DateEdit1.Date < 10 then
    fDMCadExtComissao.vMsgErro := fDMCadExtComissao.vMsgErro + #13 + '*** Data de pagamento não informada!';
  if DateEdit2.Date < 10 then
    fDMCadExtComissao.vMsgErro := fDMCadExtComissao.vMsgErro + #13 + '*** Data base não informada!';
end;

procedure TfrmCadExtComissao_Pag.BitBtn1Click(Sender: TObject);
var
  sds: TSQLDataSet;
  ID: TTransactionDesc;
begin
  prc_Verificar_Erros;
  if trim(fDMCadExtComissao.vMsgErro) <> '' then
  begin
    MessageDlg(fDMCadExtComissao.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  if not(fDMCadExtComissao.cdsExtComissao.Active) then
    fDMCadExtComissao.prc_Localizar(0);

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 ' +
                         ' WHERE TABELA = ' + QuotedStr('NOTAFISCAL');
    sds.ExecSQL();

    fDMCadExtComissao.prc_Inserir;
    fDMCadExtComissao.cdsExtComissaoTIPO_REG.AsString             := 'PAG';
    fDMCadExtComissao.cdsExtComissaoDTCADASTRO.AsDateTime         := DateEdit1.Date;
    fDMCadExtComissao.cdsExtComissaoDTBASE.AsDateTime             := DateEdit2.Date;
    fDMCadExtComissao.cdsExtComissaoID_VENDEDOR.AsInteger         := vID_Vendedor;
    fDMCadExtComissao.cdsExtComissaoID_NOTA.AsInteger             := 0;
    fDMCadExtComissao.cdsExtComissaoID_DUPLICATA.AsInteger        := 0;
    fDMCadExtComissao.cdsExtComissaoITEM_DUPLICATA_HIST.AsInteger := 0;
    fDMCadExtComissao.cdsExtComissaoBASE_COMISSAO.AsFloat         := 0;
    fDMCadExtComissao.cdsExtComissaoPERC_COMISSAO.AsFloat         := 0;
    fDMCadExtComissao.cdsExtComissaoVLR_COMISSAO.AsFloat          := CurrencyEdit1.Value;
    fDMCadExtComissao.cdsExtComissaoSERIE.AsString                := '';
    fDMCadExtComissao.cdsExtComissaoNUM_NOTA.AsInteger            := 0;
    fDMCadExtComissao.cdsExtComissaoFILIAL.AsInteger              := vFilial;
    fDMCadExtComissao.cdsExtComissaoPARCELA.AsInteger             := 0;
    fDMCadExtComissao.cdsExtComissaoOBS.AsString                  := Edit1.Text;
    fDMCadExtComissao.cdsExtComissaoID_CONTA.AsInteger            := RxDBLookupCombo1.KeyValue;
    fDMCadExtComissao.cdsExtComissaoID_CONTA_ORC.AsInteger        := vID_Conta_Orcamento;
    if fDMCadExtComissao.cdsExtComissaoID_CONTA_ORC.AsInteger <= 0 then
      fDMCadExtComissao.cdsExtComissaoID_CONTA_ORC.Clear;
    if RxDBLookupCombo2.Text <> '' then
      fDMCadExtComissao.cdsExtComissaoID_FORMA_PAGAMENTO.AsInteger := RxDBLookupCombo2.KeyValue;

    fDMCadExtComissao.cdsExtComissao.Post;

    fDMCadExtComissao.prc_Gravar_Financeiro;

    fDMCadExtComissao.cdsExtComissao.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);

  Close;
end;

procedure TfrmCadExtComissao_Pag.dbedtContaOrcEnter(Sender: TObject);
begin
  lblPesquisa.Visible := True;
  if fDMCadExtComissao.cdsExtComissaoID_CONTA_ORC.AsInteger = 0 then
    fDMCadExtComissao.cdsExtComissaoID_CONTA_ORC.AsInteger := fDMCadExtComissao.qParametrosID_CONTA_ORC_COMISSAO.AsInteger;
end;

procedure TfrmCadExtComissao_Pag.dbedtContaOrcExit(Sender: TObject);
begin
  lblPesquisa.Visible := False;
  if (trim(dbedtContaOrc.Text) = '') or (trim(dbedtContaOrc.Text) = '0') then
    prc_Abrir_qConta_Orcamento(0)
  else
  begin
    prc_Abrir_qConta_Orcamento(StrToInt(dbedtContaOrc.Text));
    if fDMCadExtComissao.qConta_Orcamento.IsEmpty then
    begin
      MessageDlg('*** ID Conta de orçamento não cadastrada', mtError, [mbOk], 0);
      dbedtContaOrc.SetFocus;
    end;
  end;
  vID_Conta_Orcamento := fDMCadExtComissao.cdsExtComissaoID_CONTA_ORC.AsInteger;
end;

procedure TfrmCadExtComissao_Pag.prc_Abrir_qConta_Orcamento(ID: Integer);
begin
  edtNome.Clear;
  if ID <= 0 then
    exit;
  fDMCadExtComissao.qConta_Orcamento.Close;
  fDMCadExtComissao.qConta_Orcamento.ParamByName('ID').AsInteger := ID;
  fDMCadExtComissao.qConta_Orcamento.Open;
  edtNome.Text := fDMCadExtComissao.qConta_OrcamentoDESCRICAO.AsString;
end;

procedure TfrmCadExtComissao_Pag.dbedtContaOrcKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadExtComissao.cdsExtComissaoID_CONTA_ORC.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ComboBox2.ItemIndex := 1;
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Pos > 0 then
      fDMCadExtComissao.cdsExtComissaoID_CONTA_ORC.AsInteger := vID_ContaOrcamento_Pos
    else
      fDMCadExtComissao.cdsExtComissaoID_CONTA_ORC.Clear;
    prc_Abrir_qConta_Orcamento(fDMCadExtComissao.cdsExtComissaoID_CONTA_ORC.AsInteger);
  end;

end;

end.
