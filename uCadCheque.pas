unit uCadCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uDmCadCheque, StdCtrls, RxDBComb,
  Mask, DBCtrls, NxCollection, ExtCtrls, Grids, DBGrids, SMDBGrid, RzTabs, RxLookup, ToolEdit, RXDBCtrl, rsDBUtils, DB,
  DateUtils, uEscolhe_Filial, RzPanel, Menus, UCadCheque_Comp, UDMGravarFinanceiro, dbXPress, UCBase;

type
  TfrmCadCheque = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    btnConsultar: TNxButton;
    TS_Cadastro: TRzTabSheet;
    Panel1: TPanel;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    pnlCadastro: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    ComboBox1: TComboBox;
    Label7: TLabel;
    pnlNota: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    lblNome_Filial: TLabel;
    DBText2: TDBText;
    DBEdit8: TDBEdit;
    RzPageControl2: TRzPageControl;
    TS_Mim: TRzTabSheet;
    TS_Cliente: TRzTabSheet;
    Label12: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Panel4: TPanel;
    Label38: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label9: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label1: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    DBEdit5: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    Label17: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    RzPageControl3: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    RzTabSheet2: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    SMDBGrid3: TSMDBGrid;
    btnImprimir: TNxButton;
    PopupMenu1: TPopupMenu;
    Copiadecheque1: TMenuItem;
    Label18: TLabel;
    DBMemo1: TDBMemo;
    Label20: TLabel;
    Label21: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Label24: TLabel;
    ComboBox2: TComboBox;
    Shape1: TShape;
    Label25: TLabel;
    Label26: TLabel;
    Shape2: TShape;
    btnCompensar: TNxButton;
    UCControls1: TUCControls;
    Detalhado1: TMenuItem;
    Label27: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label28: TLabel;
    Edit3: TEdit;
    Label29: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBComboBox2Exit(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure Copiadecheque1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnCompensarClick(Sender: TObject);
    procedure Detalhado1Click(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDmCadCheque: TDmCadCheque;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Opcao;
    procedure prc_Posiciona_Cheque;
    procedure prc_Consultar(ID: Integer);
    procedure prc_Compensar;
    procedure prc_Monta_Banco;

  public
    { Public declarations }
  end;

var
  frmCadCheque: TfrmCadCheque;

implementation

uses uUtilPadrao, URelCheque_Copia, DmdDatabase, UMenu, URelCheque;

{$R *.dfm}

procedure TfrmCadCheque.FormShow(Sender: TObject);
var
  vData: TDateTime;
begin
  fDmCadCheque := TDMCadCheque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmCadCheque);

  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  DateEdit1.Date := vData;
  btnConsultarClick(Sender);

  TS_Mim.TabVisible        := False;
  TS_Cliente.TabVisible    := False;
  RzPageControl2.Visible   := False;
  Label27.Visible          := (fDmCadCheque.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  RxDBLookupCombo6.Visible := (fDmCadCheque.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
end;

procedure TfrmCadCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCheque.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCheque);
end;

procedure TfrmCadCheque.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
  begin
    Edit3.SetFocus;
    btnConsultar.Click;
  end
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadCheque.prc_Limpar_Edit_Consulta;
begin
  RxDBLookupCombo1.ClearValue;
  Edit3.Clear;
  Edit4.Clear;
  DateEdit1.Date := IncMonth(Date,-1);
  DateEdit2.Clear;
  ComboBox1.ItemIndex := 0;
end;

procedure TfrmCadCheque.btnInserirClick(Sender: TObject);
begin
  if fDmCadCheque.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDmCadCheque.cdsFilial.Last;
    vFilial := fDMCadCheque.cdsFilialID.AsInteger;
    vFilial_Nome := fDmCadCheque.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDmCadCheque.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  fDmCadCheque.prc_Inserir;
  lblNome_Filial.Caption := vFilial_Nome;

  if fDmCadCheque.cdsCheque.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  fDmCadCheque.cdsChequeEMITIDO_POR.AsString := '1';
  RxDBComboBox2.SetFocus;
end;

procedure TfrmCadCheque.btnExcluirClick(Sender: TObject);
begin
  prc_Posiciona_Cheque;
  if fDmCadCheque.cdsCheque.IsEmpty then
    Exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  fDmCadCheque.prc_Excluir(fDmCadCheque.cdsCheque_ConsultaID.AsInteger);
  btnConsultarClick(Sender);
end;

procedure TfrmCadCheque.btnConfirmarClick(Sender: TObject);
var
  vIDAux: Integer;
begin
  vIDAux := fDmCadCheque.cdsChequeID.AsInteger;
  fDmCadCheque.prc_Gravar;
  if fDmCadCheque.cdsCheque.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDmCadCheque.vMsgErro,mtError,[mbOk],0);
    Exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  prc_Consultar(vIDAux);
end;

procedure TfrmCadCheque.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCheque.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadCheque.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDmCadCheque.cdsPessoaEmissor.IndexFieldNames := 'NOME';
end;

procedure TfrmCadCheque.RxDBLookupCombo5Enter(Sender: TObject);
begin
  fDmCadCheque.cdsPessoaReceptor.IndexFieldNames := 'NOME';
end;

procedure TfrmCadCheque.btnCancelarClick(Sender: TObject);
begin
  if (fDmCadCheque.cdsCheque.State in [dsBrowse]) or not(fDmCadCheque.cdsCheque.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    Exit;
  end;

  fDmCadCheque.cdsCheque.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCheque.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDmCadCheque.cdsCheque);
end;

procedure TfrmCadCheque.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDmCadCheque.cdsBanco.IndexFieldNames := 'NOME';
end;

procedure TfrmCadCheque.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDmCadCheque.cdsContas.IndexFieldNames := 'NOME';
end;

procedure TfrmCadCheque.btnAlterarClick(Sender: TObject);
begin
  if (fDmCadCheque.cdsCheque.IsEmpty) or not(fDmCadCheque.cdsCheque.Active) or (fDmCadCheque.cdsChequeID.AsInteger < 1) then
    exit;
  if fDmCadCheque.cdsChequeDTCOMPENSADO.AsDateTime > 10 then
  begin
    MessageDlg('*** Cheque não pode ser alterado, pois já foi compensado!',mtInformation,[mbOk],0);
    exit;
  end;

  fDmCadCheque.cdsCheque.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadCheque.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
  begin
    fDmCadCheque.cdsContas.Locate('ID',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]);
    fDmCadCheque.cdsChequeID_BANCO.AsInteger := fDmCadCheque.cdsContasID_BANCO.AsInteger;
  end;
end;

procedure TfrmCadCheque.RxDBComboBox2Exit(Sender: TObject);
begin
  prc_Opcao;
  if (fDmCadCheque.cdsChequeEMITIDO_POR.AsString = '1') then
    fDmCadCheque.cdsChequeTITULAR.AsString := fDmCadCheque.cdsFilialNOME.AsString;
end;

procedure TfrmCadCheque.prc_Opcao;
begin
  RzPageControl2.Visible := True;
  TS_Mim.TabVisible      := (fDmCadCheque.cdsChequeEMITIDO_POR.AsString = '1');
  TS_Cliente.TabVisible  := ((fDmCadCheque.cdsChequeEMITIDO_POR.AsString = '2') or (fDmCadCheque.cdsChequeEMITIDO_POR.AsString = '3'));
  if TS_Mim.TabVisible then
    RzPageControl2.ActivePage := TS_Mim
  else
    RzPageControl2.ActivePage := TS_Cliente;
end;

procedure TfrmCadCheque.RzPageControl1Change(Sender: TObject);
begin
  if not(fDmCadCheque.cdsCheque.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDmCadCheque.cdsCheque_Consulta.Active) or (fDmCadCheque.cdsCheque_Consulta.IsEmpty) or
            (fDmCadCheque.cdsCheque_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_Cheque;
      prc_Opcao;
    end;
  end;
end;

procedure TfrmCadCheque.prc_Posiciona_Cheque;
begin
  fDmCadCheque.prc_Localizar(fDmCadCheque.cdsCheque_ConsultaID.AsInteger);
  fDmCadCheque.cdsCheque_Hist.Close;
  fDmCadCheque.cdsCheque_Hist.Open;
  fDmCadCheque.cdsCheque_Tit.Close;
  fDmCadCheque.cdsCheque_Tit.Open;
  vFilial      := fDmCadCheque.cdsChequeFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDmCadCheque.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDmCadCheque.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;
end;

procedure TfrmCadCheque.RxDBLookupCombo5Exit(Sender: TObject);
begin
  if (RxDBLookupCombo5.Text <> '') and (fDmCadCheque.cdsCheque.State in [dsInsert]) then
    fDmCadCheque.cdsChequeNOMINAL.AsString := RxDBLookupCombo5.Text;
end;

procedure TfrmCadCheque.Copiadecheque1Click(Sender: TObject);
begin
  if not(fDmCadCheque.cdsCheque_Consulta.Active) or (fDmCadCheque.cdsCheque_Consulta.IsEmpty) or (fDmCadCheque.cdsCheque_ConsultaID.AsInteger <= 0) then
  begin
    MessageDlg('*** Não existe cheque para imprimir!',mtError,[mbOk],0);
    exit;
  end;
  vTipo_Config_Email := 3;

  fDmCadCheque.prc_Abrir_Cheque_Imp(fDmCadCheque.cdsCheque_ConsultaID.AsInteger);

  fRelCheque_Copia := TfRelCheque_Copia.Create(Self);
  fRelCheque_Copia.fDMCadCheque := fDMCadCheque;
  fRelCheque_Copia.RLReport1.PreviewModal;
  fRelCheque_Copia.RLReport1.Free;
  FreeAndNil(fRelCheque_Copia);
end;

procedure TfrmCadCheque.prc_Consultar(ID: Integer);
begin
  fDmCadCheque.cdsCheque_Consulta.Close;
  fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.ctChequeCons;
  fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + ' WHERE 0 = 0 ';
  if ID > 0 then
    fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + '  AND C.ID = ' + IntToStr(ID)
  else
  begin
    case ComboBox1.ItemIndex of
      0: fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + ' AND EMITIDO_POR = ''1''';
      1: fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + ' AND EMITIDO_POR = ''2''';
      2: fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + ' AND EMITIDO_POR = ''3''';
    end;
    if RxDBLookupCombo1.KeyValue > 0 then
      fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + ' AND ID_CONTA = ' +
                                                    IntToStr(RxDBLookupCombo1.KeyValue);
    if RxDBLookupCombo7.KeyValue > 0 then
      fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + ' AND C.ID_BANCO = ' +
                                                    IntToStr(RxDBLookupCombo7.KeyValue);

    if Edit4.Text <> '' then
      fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + ' AND NUM_CHEQUE = ' +
                                                QuotedStr(Edit4.Text);
    if DateEdit1.Date > 1 then
      fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + ' AND DTEMISSAO >= ' +
                                                QuotedStr(FormatDateTime('MM/DD/YYYY',DateEDit1.Date));
    if DateEdit2.Date > 1 then
      fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + ' AND DTEMISSAO <= ' +
                                               QuotedStr(FormatDateTime('MM/DD/YYYY',DateEDit2.Date));
    if DateEdit3.Date > 1 then
      fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + ' AND DTBOM_PARA >= ' +
                                                QuotedStr(FormatDateTime('MM/DD/YYYY',DateEDit3.Date));
    if DateEdit4.Date > 1 then
      fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + ' AND DTBOM_PARA <= ' +
                                               QuotedStr(FormatDateTime('MM/DD/YYYY',DateEDit4.Date));
    case ComboBox2.ItemIndex of
      0: fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + ' AND DTCOMPENSADO IS NULL ';
      1: fDmCadCheque.sdsCheque_Consulta.CommandText := fDmCadCheque.sdsCheque_Consulta.CommandText + ' AND DTCOMPENSADO IS NOT NULL';
    end;
  end;
  fDmCadCheque.cdsCheque_Consulta.Open;
end;

procedure TfrmCadCheque.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDmCadCheque.cdsCheque_ConsultaEMITIDO_POR.AsString = '1') then
  begin
    if not(fDmCadCheque.cdsCheque_ConsultaDTCOMPENSADO.IsNull) then
      Background := clMoneyGreen;
  end
  else
  if not(fDmCadCheque.cdsCheque_ConsultaDTCOMPENSADO.IsNull) or
     (fDmCadCheque.cdsCheque_ConsultaSTATUS.AsString = '1') or
     (fDmCadCheque.cdsCheque_ConsultaSTATUS.AsString = '3') or
     (fDmCadCheque.cdsCheque_ConsultaSTATUS.AsString = '5') or
     (fDmCadCheque.cdsCheque_ConsultaSTATUS.AsString = '6') then
    Background := clMoneyGreen;
end;

procedure TfrmCadCheque.btnCompensarClick(Sender: TObject);
var
  ffrmCadCheque_Comp: TfrmCadCheque_Comp;
begin
  if not(fDmCadCheque.cdsCheque_Consulta.Active) or (fDmCadCheque.cdsCheque_Consulta.IsEmpty) then
    exit;
  if MessageDlg('Deseja compensar os cheques selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  ffrmCadCheque_Comp := TfrmCadCheque_Comp.Create(self);
  ffrmCadCheque_Comp.fDMCadCheque   := fDMCadCheque;
  ffrmCadCheque_Comp.ShowModal;
  FreeAndNil(ffrmCadCheque_Comp);
  if fDmCadCheque.vDtCompensado <= 10 then
    exit;

  fDmCadCheque.cdsCheque_Consulta.First;
  while not fDmCadCheque.cdsCheque_Consulta.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      fDmCadCheque.prc_Localizar(fDmCadCheque.cdsCheque_ConsultaID.AsInteger);
      if not(fDmCadCheque.cdsCheque.IsEmpty) and ((fDmCadCheque.cdsChequeDTCOMPENSADO.AsDateTime < 10) or (fDmCadCheque.cdsChequeDTCOMPENSADO.IsNull))  then
        prc_Compensar;
    end;
    fDmCadCheque.cdsCheque_Consulta.Next;
  end;

  MessageDlg('*** Cheques compensados',mtConfirmation,[mbOK],0);
  prc_Consultar(0);
end;

procedure TfrmCadCheque.prc_Compensar;
var
  fDmGravarFinanceiro: TDmGravarFinanceiro;
  vID_TipoCobranca: Integer;
  ID: TTransactionDesc;
begin
  fDmGravarFinanceiro := TDmGravarFinanceiro.Create(Self);
  ID.TransactionID  := 3;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDmCadCheque.cdsCheque.Edit;
    fDmCadCheque.cdsChequeDTCOMPENSADO.AsDateTime := fDmCadCheque.vDtCompensado;
    fDmCadCheque.cdsChequeMOTIVO_COMP.AsString    := fDmCadCheque.vMotivo_Comp;
    fDmCadCheque.cdsCheque.Post;
    fDmCadCheque.cdsCheque.ApplyUpdates(0);

    fDmCadCheque.qTipo_Cobranca.Close;
    fDmCadCheque.qTipo_Cobranca.Open;
    if fDmCadCheque.qTipo_CobrancaID.AsInteger > 0 then
      vID_TipoCobranca := fDmCadCheque.qTipo_CobrancaID.AsInteger
    else
      vID_TipoCobranca := 0;
    fDMGravarFinanceiro.vTipo_ES         := 'S';
    fDMGravarFinanceiro.vHistorico_Compl := ' Cheque Nº ' + fDmCadCheque.cdsChequeNUM_CHEQUE.AsString + ' compensado';
    fDMGravarFinanceiro.vID_Conta           := fDmCadCheque.cdsChequeID_CONTA.AsInteger;
    fDMGravarFinanceiro.vID_ModDuplicata    := 0;
    fDMGravarFinanceiro.vItem_MovDuplicata  := 0;
    fDMGravarFinanceiro.vID_Historico       := 0;
    fDMGravarFinanceiro.vID_Pessoa          := 0;
    fDMGravarFinanceiro.vID_Forma_Pagamento := vID_TipoCobranca;
    fDMGravarFinanceiro.vID_ExtComissao     := 0;
    fDmGravarFinanceiro.vID_Cheque          := fDmCadCheque.cdsChequeID.AsInteger;
    fDMGravarFinanceiro.vDtMovimento        := fDmCadCheque.cdsChequeDTCOMPENSADO.AsDateTime;
    fDMGravarFinanceiro.vVlr_Movimento      := StrToFloat(FormatFloat('0.00',fDmCadCheque.cdsChequeVALOR.AsFloat));
    vFilial                                 := fDmCadCheque.cdsChequeFILIAL.AsInteger;
    fDmGravarFinanceiro.vID_Conta_Orcamento := fDmCadCheque.cdsChequeID_CONTA_ORCAMENTO.AsInteger;
    fDMGravarFinanceiro.prc_Gravar;
    
    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(fDmGravarFinanceiro);
end;

procedure TfrmCadCheque.Detalhado1Click(Sender: TObject);
begin
  if not(fDmCadCheque.cdsCheque_Consulta.Active) or (fDmCadCheque.cdsCheque_Consulta.IsEmpty) or (fDmCadCheque.cdsCheque_ConsultaID.AsInteger <= 0) then
  begin
    MessageDlg('*** Não existe cheque para imprimir!',mtError,[mbOk],0);
    exit;
  end;
  vTipo_Config_Email := 3;
  fDmCadCheque.cdsCheque_Consulta.IndexFieldNames := 'NOME_CONTA;TIPO_EMIT;RECEBIDO_DE;TITULAR;NUMCONTA';
  fRelCheque := TfRelCheque.Create(Self);
  fRelCheque.fDMCadCheque := fDMCadCheque;
  fRelCheque.RLReport1.PreviewModal;
  fRelCheque.RLReport1.Free;
  FreeAndNil(fRelCheque);
end;

procedure TfrmCadCheque.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) then
  begin
    if (Length(Edit3.Text) >= 2) and (Length(Edit3.Text) < 33) then
    begin
      MessageDlg('*** Erro na leitura!', mtError, [mbOk], 0);
      Edit3.SetFocus;
      Edit3.SelectAll;
    end
    else
    if (Length(Edit3.Text) >= 33) then
    begin
      prc_Monta_Banco;
      btnConsultarClick(Sender);
    end;
  end;
end;

procedure TfrmCadCheque.prc_Monta_Banco;
var
  vAux : String;
  vNumAux : Int64;
begin
  vAux := copy(Edit3.Text,2,3);
  if fDmCadCheque.cdsBanco.Locate('CODIGO',vAux,([Locaseinsensitive])) then
    RxDBLookupCombo7.KeyValue := fDmCadCheque.cdsBancoID.AsInteger
  else
    RxDBLookupCombo7.ClearValue;

  vNumAux := 0;
  {Edit5.Text := Monta_Numero(copy(Edit3.Text,26,7),0);
  if trim(Edit5.Text) <> '' then
    vNumAux := StrToInt64(Edit5.Text);
  Edit5.Text := FormatFloat('0',vNumAux);
  Edit4.Text := copy(Edit3.Text,5,4);
  vAux := Monta_Numero(copy(Edit3.Text,11,3),0);
  if trim(vAux) <> '' then
    CurrencyEdit4.AsInteger := StrToInt(vAux)
  else
    CurrencyEdit4.AsInteger := 0;}
  vAux := Monta_Numero(copy(Edit3.Text,14,6),0);
  Edit4.Text := vAux;
  
//<23703256??180018375>952412125834:
//123456789.123456789.123456789.1234
//<23703256??180018375>952412125834:
//123456789.123456789.123456789.1234
//<74814266<0180000785>000009540048
//123456789.123456789.123456789.123
end;

end.
