unit UCadFechamento2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadFechamento, UCBase,
  DBGrids, ExtCtrls, dbXPress, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, RxLookup, RxDBComb, Menus, RXDBCtrl,
  DB, UEscolhe_Filial, NxCollection, StrUtils, DateUtils, ComCtrls, Variants, RXSplit, RzPanel, Printers,
  uDmParametros;

type
  TfrmCadFechamento2 = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    StaticText1: TStaticText;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel11: TPanel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Panel4: TPanel;
    Shape6: TShape;
    Label31: TLabel;
    Shape1: TShape;
    Label10: TLabel;
    btnImprimir: TNxButton;
    DateEdit1: TDateEdit;
    Label13: TLabel;
    DateEdit2: TDateEdit;
    Label5: TLabel;
    UCControls1: TUCControls;
    Label6: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SMDBGrid5: TSMDBGrid;
    pnlNota: TPanel;
    Label16: TLabel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DBText2: TDBText;
    Label7: TLabel;
    DBText6: TDBText;
    Label8: TLabel;
    DBText7: TDBText;
    Label18: TLabel;
    DBText10: TDBText;
    btnInf_Valores: TNxButton;
    Shape2: TShape;
    Label14: TLabel;
    btGaveta: TNxButton;
    btnReabrir: TNxButton;
    Shape3: TShape;
    Label2: TLabel;
    NxPanel1: TNxPanel;
    Label17: TLabel;
    DBEdit1: TDBEdit;
    Label19: TLabel;
    DBEdit2: TDBEdit;
    Label20: TLabel;
    DBEdit3: TDBEdit;
    Label23: TLabel;
    DBEdit8: TDBEdit;
    Label21: TLabel;
    DBEdit4: TDBEdit;
    Label15: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    dbmmoOBS_FECHAMENTO: TDBMemo;
    dbmmoOBS_CONFERENCIA: TDBMemo;
    RxDBComboBox1: TRxDBComboBox;
    Label3: TLabel;
    NxSplitter1: TNxSplitter;
    btnConsDetalhamento: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtSerieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btGavetaClick(Sender: TObject);
    procedure btnReabrirClick(Sender: TObject);
    procedure btnConsDetalhamentoClick(Sender: TObject);
  private
    { Private declarations }
    vTipoNotaAnt: String;
    vAlterar: String;
    vInserir: String;
    vLinha: Integer;
    vInfSenhaAdmin: Boolean;

    ffrmEscolhe_Filial: TfrmEscolhe_Filial;

    procedure prc_Excluir_Registro;
    function fnc_Inserir_Registro: Integer;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Fechamento;

    procedure prc_Habilitar_Campos;
    procedure prc_scroll(DataSet: TDataSet);

    function fnc_Verifica_Registro: Boolean;
    function fnc_Verifica_Data(Tipo: String = ''): Boolean;
    function fnc_Duplicidade: Boolean;

    function fnc_Soma_Linha(Qtd: Integer): Integer;
    procedure prc_Limpar_Edit_Consulta;

    procedure prc_Zerar_Valores(ApagarItens: Boolean = True);
  public
    { Public declarations }
    fDMCadFechamento: TDMCadFechamento;
    fDmParametros: TDmParametros;
    vID_Fechamento_Loc : Integer;

  end;

var
  frmCadFechamento2: TfrmCadFechamento2;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, URelFechamento, UCadFechamento_Contagem, UCadFechamento_Det,
  UCadFechamento;

{$R *.dfm}

procedure TfrmCadFechamento2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDmParametros);
  Action := Cafree;
end;

procedure TfrmCadFechamento2.btnExcluirClick(Sender: TObject);
begin
  if not fnc_Verifica_Registro then
    exit;
  prc_Fechamento;

  if not fnc_Verifica_Data then
    exit;

  if fDMCadFechamento.cdsFechamento.IsEmpty then
    exit;

  {if not fDMCadFechamento.cdsFechamento_Itens.IsEmpty then
  begin
    MessageDlg('*** Já existe valores informados!', mtInformation, [mbOk], 0);
    exit;
  end;}

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadFechamento2.btnInserirClick(Sender: TObject);
begin
  fDMCadFechamento.prc_Localizar(fnc_Inserir_Registro);
  Close;
end;

procedure TfrmCadFechamento2.prc_Excluir_Registro;
begin
  fDMCadFechamento.prc_Excluir;
end;

procedure TfrmCadFechamento2.prc_Gravar_Registro;
var
  vIDAux: Integer;
  ID: TTransactionDesc;
  vVlrTotal: Real;
  vTipo: String;
begin
    vTipo := 'N';

  if not fnc_Verifica_Data('S') then
    exit;

  if (vAlterar <> 'S') and (vInserir <> 'S') then
  begin
    if MessageDlg('Confirma o fechamento deste registtro?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
      exit;
  end;

  if fDMCadFechamento.fnc_Possui_Erro then
  begin
    MessageDlg(fDMCadFechamento.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    vIDAux := fDMCadFechamento.cdsFechamentoID.AsInteger;
    fDMCadFechamento.prc_Gravar;

    dmDatabase.scoDados.Commit(ID);

    TS_Consulta.TabEnabled := True;
    prc_Habilitar_Campos;
    RzPageControl1.ActivePage := TS_Consulta;
    prc_Consultar(vIDAux);
    fDMCadFechamento.vTipo_Caixa := '';
    vAlterar := '';
    vID_Fechamento_Pos := vIDAux;
  except
    on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar o Fechamento: ' + #13 + e.Message);
      end;
  end;  
end;

function TfrmCadFechamento2.fnc_Inserir_Registro: Integer;
begin
  Result   := 0;
  vInserir := 'S';
  fDMCadFechamento.qCaixaAberto.Close;
  fDMCadFechamento.qCaixaAberto.ParamByName('T1').AsInteger := vTerminal;
  fDMCadFechamento.qCaixaAberto.ParamByName('D1').AsDate    := Date;
  fDMCadFechamento.qCaixaAberto.Open;
  if fDMCadFechamento.qCaixaAbertoTIPO_FECHAMENTO.AsString = 'N' then
  begin
//    MessageDlg('*** Existe caixa aberto para esse terminal!', mtError, [mbOK], 0);
    Result := fDMCadFechamento.qCaixaAbertoID.AsInteger;
    Exit;
  end;
  fDMCadFechamento.qCaixaAberto.Close;


  fDMCadFechamento.qParametros.Close;
  fDMCadFechamento.qParametros.Open;
  if fDMCadFechamento.qParametrosID_CONTA_FECHAMENTO.AsInteger <= 0 then
  begin
    MessageDlg('*** Conta de fechamento não foi informada nos parâmetros!', mtError, [mbOK], 0);
    exit;
  end;

  if fDMCadFechamento.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadFechamento.cdsFilial.Last;
    vFilial      := fDMCadFechamento.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadFechamento.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;
  if not fnc_Verifica_Data('N') then
    Exit;

  fDMCadFechamento.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);
  fDMCadFechamento.prc_Inserir;
  lblNome_Filial.Caption := vFilial_Nome;
  if fDMCadFechamento.cdsFechamento.State in [dsBrowse] then
    Exit;
  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;
  fDMCadFechamento.cdsFechamentoFILIAL.AsInteger         := vFilial;
  fDMCadFechamento.cdsFechamentoTERMINAL_ID.AsInteger    := vTerminal;
  fDMCadFechamento.cdsFechamentoID_CONTA.AsInteger       := fDMCadFechamento.qParametrosID_CONTA_FECHAMENTO.AsInteger;
  fDMCadFechamento.cdsFechamentoDATA.AsDateTime          := Date;
  fDMCadFechamento.cdsFechamentoUSUARIO.AsString         := vUsuario;
  fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString := 'N';

  fDMCadFechamento.cdsTipoCobranca.First;
  while not fDMCadFechamento.cdsTipoCobranca.Eof do
  begin
    fDMCadFechamento.prc_Inserir_Itens;
    fDMCadFechamento.cdsFechamento_ItensID_TIPOCOBRANCA.AsInteger  := fDMCadFechamento.cdsTipoCobrancaID.AsInteger;
    fDMCadFechamento.cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString := fDMCadFechamento.cdsTipoCobrancaNOME.AsString;
    fDMCadFechamento.cdsFechamento_Itens.Post;
    fDMCadFechamento.cdsTipoCobranca.Next;
  end;

  Result := fDMCadFechamento.cdsFechamentoID.AsInteger;
  btnConfirmar.Click;
end;

procedure TfrmCadFechamento2.FormShow(Sender: TObject);
var
  vData: TDateTime;
begin
  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  DateEdit1.Date   := vData;
  RxDBLookupCombo2.KeyValue := vTerminal;

  if vID_Fechamento_Loc > 0 then
    prc_Consultar(vID_Fechamento_Loc)
  else
    btnConsultarClick(Sender);

  fDMCadFechamento.cdsFechamento_Consulta.AfterScroll := prc_scroll;
  fDMCadFechamento.cdsFechamento_Consulta.Last;
  fDMCadFechamento.cdsFechamento_Consulta.First;

  fDmParametros.cdsCupomParametros.Open;

  if vID_Fechamento_Loc > 0 then
    RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadFechamento2.prc_Consultar(ID: Integer);
begin
  fDMCadFechamento.cdsFechamento_Consulta.Close;
  fDMCadFechamento.sdsFechamento_Consulta.CommandText := fDMCadFechamento.ctConsulta;
  if ID > 0 then
    fDMCadFechamento.sdsFechamento_Consulta.CommandText := fDMCadFechamento.sdsFechamento_Consulta.CommandText +
                                                           ' WHERE F.ID = ' + IntToStr(ID)
  else
  begin
    fDMCadFechamento.sdsFechamento_Consulta.CommandText := fDMCadFechamento.sdsFechamento_Consulta.CommandText + ' WHERE 0 = 0';
    if (RxDBLookupCombo1.KeyValue > 0) then
      fDMCadFechamento.sdsFechamento_Consulta.CommandText := fDMCadFechamento.sdsFechamento_Consulta.CommandText +
                                                             ' AND F.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if (RxDBLookupCombo2.KeyValue > 0) then
      fDMCadFechamento.sdsFechamento_Consulta.CommandText := fDMCadFechamento.sdsFechamento_Consulta.CommandText +
                                                             ' AND F.TERMINAL_ID = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    if DateEdit1.Date > 10 then
      fDMCadFechamento.sdsFechamento_Consulta.CommandText := fDMCadFechamento.sdsFechamento_Consulta.CommandText +
                                                           ' AND F.DATA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      fDMCadFechamento.sdsFechamento_Consulta.CommandText := fDMCadFechamento.sdsFechamento_Consulta.CommandText +
                                                             ' AND F.DATA <= ' +
                                                             QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  end;
  fDMCadFechamento.sdsFechamento_Consulta.CommandText := fDMCadFechamento.sdsFechamento_Consulta.CommandText +
                                                         ' ORDER BY F.ID DESC';
  fDMCadFechamento.cdsFechamento_Consulta.Open;
end;

procedure TfrmCadFechamento2.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadFechamento2.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadFechamento.cdsFechamento.State in [dsBrowse]) or not(fDMCadFechamento.cdsFechamento.Active) then
  begin
    TS_Consulta.TabEnabled    := True;
    RzPageControl1.ActivePage := TS_Consulta;
    prc_Habilitar_Campos;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadFechamento.cdsFechamento.CancelUpdates;

  prc_Habilitar_Campos;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  fDMCadFechamento.vTipo_Caixa := '';
  vAlterar := '';
  vInserir := '';
end;

procedure TfrmCadFechamento2.btnAlterarClick(Sender: TObject);
var
  vCodAux: String;
  vSenhaAux: String;
begin
  if (fDMCadFechamento.cdsFechamento.IsEmpty) or not(fDMCadFechamento.cdsFechamento.Active) or (fDMCadFechamento.cdsFechamentoID.AsInteger < 1) then
    exit;
  vInfSenhaAdmin := False;
  if (fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString <> 'N') and (fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString <> '')
    and (fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString <> 'A') then
  begin
    ShowMessage('O caixa selecionado já está fechado!');

    if not InputQuery('Informe a senha','Senha:',vSenhaAux) then
      Exit;
    if trim(vSenhaAux) = 'abc12' then
    begin
      vInfSenhaAdmin := True;
      RxDBLookupCombo1.Visible := True;
    end
    else
    if trim(vSenhaAux) <> 'abc1' then
      Exit;
  end;

  if not fnc_Verifica_Data then
    exit;

  vAlterar := 'S';
  vInserir := '';

  fDMCadFechamento.qParametros.Close;
  fDMCadFechamento.qParametros.Open;

  fDMCadFechamento.cdsFechamento.Edit;

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_Campos;
end;

procedure TfrmCadFechamento2.btnConfirmarClick(Sender: TObject);
begin
  if not(fDMCadFechamento.cdsFechamento.State in [dsEdit,dsInsert]) then
    fDMCadFechamento.cdsFechamento.Edit;

  fDMCadFechamento.prc_Recalcular_Inf;
  prc_Gravar_Registro;
  vInserir := '';
end;

procedure TfrmCadFechamento2.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadFechamento);
end;

procedure TfrmCadFechamento2.prc_Fechamento;
begin
  fDMCadFechamento.prc_Localizar(fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger);
  fDMCadFechamento.cdsFechamento_Itens.Close;
  fDMCadFechamento.cdsFechamento_Itens.Open;
  fDMCadFechamento.cdsFechamento_Itens.First;
  vFilial := fDMCadFechamento.cdsFechamentoFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadFechamento.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadFechamento.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;
end;
                                                                  
function TfrmCadFechamento2.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadFechamento.cdsFechamento_Consulta.Active) or (fDMCadFechamento.cdsFechamento_Consulta.IsEmpty) or
        (fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger < 1) then
    exit;
  Result := True;
end;

procedure TfrmCadFechamento2.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadFechamento.cdsFechamento.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadFechamento.cdsFechamento_Consulta.Active) or (fDMCadFechamento.cdsFechamento_Consulta.IsEmpty) or
            (fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Fechamento;
      Label15.Caption   := '';
      if fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString = 'N' then
      begin
        Label15.Caption    := '*** EM ABERTO ***';
        Label15.Color      := clRed;
        Label15.Font.Color := clWhite;
      end
      else
      if fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString = 'A' then
      begin
        Label15.Caption := '*** Aguardando Conferência *** ';
        Label15.Color      := clYellow;
        Label15.Font.Color := clBlack;
      end
      else
      if fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString = 'E' then
      begin
        Label15.Caption := '*** ENCERRADO *** ';
        Label15.Color      := clBlue;
        Label15.Font.Color := clWhite;
      end;
    end;
  end;
end;

procedure TfrmCadFechamento2.prc_Habilitar_Campos;
begin
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  SMDBGrid5.ReadOnly   := not(SMDBGrid5.ReadOnly);
end;

procedure TfrmCadFechamento2.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadFechamento.cdsFechamento);
end;

procedure TfrmCadFechamento2.edtSerieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadFechamento2.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadFechamento2.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadFechamento2.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadFechamento.cdsFechamento_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadFechamento2.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMCadFechamento.cdsFechamento_Consulta.Active) or (fDMCadFechamento.cdsFechamento_Consulta.IsEmpty) then
    exit;
  if fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'S' then
    AFont.Color := clGreen
  else
  if fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'E' then
    AFont.Color := clRed
  else
  if fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'F' then
    AFont.Color := $00400080
  else
  if fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'A' then
  begin
    Background  := clYellow;
    AFont.Color := clBlack;
  end;     
end;

procedure TfrmCadFechamento2.SMDBGrid1DblClick(Sender: TObject);
begin
  fDMCadFechamento.prc_Localizar(fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger);
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadFechamento2.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
end;

procedure TfrmCadFechamento2.prc_Limpar_Edit_Consulta;
begin
  RxDBLookupCombo1.ClearValue;
  DateEdit1.Clear;
  DateEdit2.Clear;
end;

procedure TfrmCadFechamento2.btnImprimirClick(Sender: TObject);
begin
  if not(fDMCadFechamento.cdsFechamento_Consulta.Active) or (fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger <= 0) then
  begin
    MessageDlg('*** Fechamento não selecionado!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadFechamento.cdsProduto_Vendido.Close;
  fDMCadFechamento.sdsProduto_Vendido.ParamByName('ID_FECHAMENTO').AsInteger := fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger;
  fDMCadFechamento.sdsProduto_Vendido.ParamByName('TERMINAL_ID').AsInteger   := fDMCadFechamento.cdsFechamento_ConsultaTERMINAL_ID.AsInteger;
  fDMCadFechamento.cdsProduto_Vendido.Open;

  fDMCadFechamento.cdsCupomTipoCobranca.Close;
  fDMCadFechamento.SdsCupomTipoCobranca.ParamByName('ID_FECHAMENTO').AsInteger := fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger;
  fDMCadFechamento.SdsCupomTipoCobranca.ParamByName('TERMINAL_ID').AsInteger   := fDMCadFechamento.cdsFechamento_ConsultaTERMINAL_ID.AsInteger;
  fDMCadFechamento.cdsCupomTipoCobranca.Open;

  fDMCadFechamento.cdsCupomComandas.Close;
  fDMCadFechamento.SdsCupomComandas.ParamByName('ID_FECHAMENTO').AsInteger := fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger;
  fDMCadFechamento.SdsCupomComandas.ParamByName('TERMINAL_ID').AsInteger   := fDMCadFechamento.cdsFechamento_ConsultaTERMINAL_ID.AsInteger;
  fDMCadFechamento.cdsCupomComandas.Open;

  if vPorta <> vImpressora_Padrao then
    SetDefaultPrinter(vPorta);
  fDMCadFechamento.prc_Imprime_FechamentoC(fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger);
  if vPorta <> vImpressora_Padrao then
    SetDefaultPrinter(vImpressora_Padrao);       

/////NAO APAGAR ABAIXO, IMPRIME IMPRESSORA GRANDE
{  if not(fDMCadFechamento.cdsFechamento_Consulta.Active) or (fDMCadFechamento.cdsFechamento_Consulta.IsEmpty) or
        (fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger <= 0) then
    exit;

  fDMCadFechamento.cdsFilial.Locate('ID',fDMCadFechamento.cdsFechamento_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadFechamento.prc_Localizar(fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger);

  fRelFechamento := TfRelFechamento.Create(Self);
  fRelFechamento.fDMCadFechamento := fDMCadFechamento;
  fRelFechamento.RLReport1.PreviewModal;
  fRelFechamento.RLReport1.Free;
  FreeAndNil(fRelFechamento);}
end;

function TfrmCadFechamento2.fnc_Verifica_Data(Tipo: String): Boolean;
begin
  Result := False;
  fDMCadFechamento.qUltimoFechamento.Close;
  fDMCadFechamento.qUltimoFechamento.ParamByName('T1').AsInteger := vTerminal;
  fDMCadFechamento.qUltimoFechamento.Open;

  if (Tipo = 'G') and (fDMCadFechamento.cdsFechamentoDATA.AsDateTime <= fDMCadFechamento.qUltimoFechamentoDATA.AsDateTime) then
  begin
    MessageDlg('*** Fechamento já existe até a data ' + fDMCadFechamento.qUltimoFechamentoDATA.AsString, mtInformation, [mbOk], 0);
    exit;
  end
  else

  if Date < fDMCadFechamento.qUltimoFechamentoDATA.AsDateTime then
  begin
    MessageDlg('*** Fechamento não é o último!', mtError, [mbOk], 0);
    exit;
  end;

  Result := True;
end;

function TfrmCadFechamento2.fnc_Duplicidade: Boolean;
begin
  Result := False;
  fDMCadFechamento.qDuplicidade.Close;
  fDMCadFechamento.qDuplicidade.ParamByName('DATA').AsDate := fDMCadFechamento.cdsFechamentoDATA.AsDateTime;
  fDMCadFechamento.qDuplicidade.Open;
  if fDMCadFechamento.qDuplicidade.IsEmpty then
    exit;
  if (fDMCadFechamento.qDuplicidadeDATA.AsDateTime = fDMCadFechamento.cdsFechamentoDATA.AsDateTime) and
     (fDMCadFechamento.qDuplicidadeID.AsInteger <> fDMCadFechamento.cdsFechamentoID.AsInteger) then
  begin
    Result := True;
    MessageDlg('*** Data já informada!', mtError, [mbOk], 0);
  end;
end;

procedure TfrmCadFechamento2.prc_scroll(DataSet: TDataSet);
begin
  btnExcluir.Enabled     := ((fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'N') or (trim(fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString) = ''));
  btnInf_Valores.Enabled := ((fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'N') or (trim(fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString) = ''));
end;

function TfrmCadFechamento2.fnc_Soma_Linha(Qtd: Integer): Integer;
begin
  vLinha := vLinha + Qtd;
  Result := vLinha;
end;

procedure TfrmCadFechamento2.FormCreate(Sender: TObject);
begin
  fDMCadFechamento := TDMCadFechamento.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFechamento);

  if not Assigned(fDmParametros) then
    fDmParametros := TdmParametros.Create(Self);
  fDmParametros.Le_Ini;
end;

procedure TfrmCadFechamento2.btGavetaClick(Sender: TObject);
begin
  prc_AbreGaveta(1);
end;

procedure TfrmCadFechamento2.prc_Zerar_Valores(ApagarItens: Boolean = True);
begin
  if ApagarItens then
  begin
    fDMCadFechamento.cdsFechamento_Itens.First;
    while not fDMCadFechamento.cdsFechamento_Itens.IsEmpty do
      fDMCadFechamento.cdsFechamento_Itens.Delete;
  end
  else
  begin
    fDMCadFechamento.cdsFechamento_Itens.First;
    while not fDMCadFechamento.cdsFechamento_Itens.Eof do
    begin
      fDMCadFechamento.cdsFechamento_Itens.Edit;
      fDMCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsFloat     := 0;
      fDMCadFechamento.cdsFechamento_ItensVLR_RECEBIMENTO.AsFloat := 0;
      fDMCadFechamento.cdsFechamento_Itens.Post;
      fDMCadFechamento.cdsFechamento_Itens.Next;
    end;
  end;
  fDMCadFechamento.cdsFechamento.Edit;
  fDMCadFechamento.cdsFechamentoVLR_DIFERENCA.AsCurrency := 0;
  fDMCadFechamento.cdsFechamentoVLR_INFORMADO.AsCurrency := 0;
  fDMCadFechamento.cdsFechamentoVLR_NAO_FATURADO.AsCurrency := 0;
  fDMCadFechamento.cdsFechamentoVLR_RECEBIMENTO.AsCurrency  := 0;
  fDMCadFechamento.cdsFechamentoVLR_SAIDA.AsCurrency    := 0;
  fDMCadFechamento.cdsFechamentoVLR_SUBSALDO.AsCurrency := 0;
  fDMCadFechamento.cdsFechamentoVLR_ENTRADA.AsCurrency  := 0;
  fDMCadFechamento.cdsFechamentoVLR_SALDO.AsCurrency    := 0;
  fDMCadFechamento.cdsFechamentoENTRADA_DE_DINHEIRO.AsCurrency := 0;
  fDMCadFechamento.cdsFechamento.Post;
end;

procedure TfrmCadFechamento2.btnReabrirClick(Sender: TObject);
var
  vIDAux: Integer;
begin
  if not(fDMCadFechamento.cdsFechamento_Consulta.Active) or (fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger <= 0) then
    exit;

  if fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'N' then
  begin
    MessageDlg('*** Caixa já está aberto!', mtInformation, [mbOk], 0);
    exit;
  end;
  if (fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'E') or
     (fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'S') then
  begin
//    MessageDlg('*** Caixa já encerrado, neste processo não pode ser reaberto!', mtInformation, [mbOk], 0);
      vIDAux := fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger;
      fDMCadFechamento.prc_Localizar(fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger);
      if fDMCadFechamento.cdsFechamento.IsEmpty then
        exit;
      fDMCadFechamento.cdsFechamento.Edit;
      fDMCadFechamento.cdsFechamentoDTFECHAMENTO.Clear;
      fDMCadFechamento.cdsFechamentoHRFECHAMENTO.Clear;
      fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString := 'N';
      fDMCadFechamento.cdsFechamento.Post;
      fDMCadFechamento.cdsFechamento.ApplyUpdates(0);
      MessageDlg('*** Caixa reaberto!', mtConfirmation, [mbOk], 0);
      btnConsultarClick(Sender);
      fDMCadFechamento.cdsFechamento_Consulta.Locate('ID',vIDAux,[loCaseInsensitive]);
  end;
  if fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'A' then
  begin
    if MessageDlg('Caixa aguardando conferência, deseja reabrir?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit
    else
    begin
      vIDAux := fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger;
      fDMCadFechamento.prc_Localizar(fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger);
      if fDMCadFechamento.cdsFechamento.IsEmpty then
        exit;
      fDMCadFechamento.cdsFechamento.Edit;
      fDMCadFechamento.cdsFechamentoDTFECHAMENTO.Clear;
      fDMCadFechamento.cdsFechamentoHRFECHAMENTO.Clear;
      fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString := 'N';
      fDMCadFechamento.cdsFechamento.Post;
      fDMCadFechamento.cdsFechamento.ApplyUpdates(0);
      MessageDlg('*** Caixa reaberto!', mtConfirmation, [mbOk], 0);
      btnConsultarClick(Sender);
      fDMCadFechamento.cdsFechamento_Consulta.Locate('ID',vIDAux,[loCaseInsensitive]);
    end;
  end;
end;

procedure TfrmCadFechamento2.btnConsDetalhamentoClick(Sender: TObject);
var
  ffrmCadFechamento_Det: TfrmCadFechamento_Det;
  vComando: String;
begin
  if fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString <> 'N' then
    vComando := ' AND (FIN.ID_FECHAMENTO = :FECHAMENTO)'
  else
  begin
    vComando := ' AND (FIN.ID_FECHAMENTO = :FECHAMENTO OR FIN.ID_FECHAMENTO IS NULL) '
              + ' AND (FIN.DTMOVIMENTO = :DTMOVIMENTO or  FIN.ID_FECHAMENTO = :FECHAMENTO) '
  end;

  fDMCadFechamento.cdsDetalhamento.Close;
  fDMCadFechamento.sdsDetalhamento.CommandText := fDMCadFechamento.ctDetalhamento + vComando;
  fDMCadFechamento.sdsDetalhamento.ParamByName('ID_CONTA').AsInteger     := fDMCadFechamento.cdsFechamentoID_CONTA.AsInteger;
  fDMCadFechamento.sdsDetalhamento.ParamByName('FILIAL').AsInteger       := fDMCadFechamento.cdsFechamentoFILIAL.AsInteger;
  if fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString = 'N' then
    fDMCadFechamento.sdsDetalhamento.ParamByName('DTMOVIMENTO').AsDate := fDMCadFechamento.cdsFechamentoDATA.AsDateTime;
  fDMCadFechamento.sdsDetalhamento.ParamByName('TERMINAL').AsInteger     := fDMCadFechamento.cdsFechamentoTERMINAL_ID.AsInteger;
  fDMCadFechamento.sdsDetalhamento.ParamByName('FECHAMENTO').AsInteger   := fDMCadFechamento.cdsFechamentoID.AsInteger;
  fDMCadFechamento.sdsDetalhamento.ParamByName('ID_CONTA_PER').AsInteger := fDMCadFechamento.qCupomParametrosID_CONTAPERDAS.AsInteger;
  fDMCadFechamento.cdsDetalhamento.Open;
  fDMCadFechamento.cdsDetalhamento.IndexFieldNames := 'NOME_FORMA_PAGAMENTO;DTMOVIMENTO;ID';


  if fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString <> 'N' then
    vComando := ' AND (DUP.id_fechamento = :ID_FECHAMENTO)'
  else
    vComando := ' AND DUP.VLR_RESTANTE > 0  AND ((DUP.id_fechamento IS NULL) or (DUP.id_fechamento = :ID_FECHAMENTO)) ';
  fDMCadFechamento.cdsDetalhamento_Dup.Close;
  fDMCadFechamento.sdsDetalhamento_Dup.ParamByName('FILIAL').AsInteger   := fDMCadFechamento.cdsFechamentoFILIAL.AsInteger;
  fDMCadFechamento.sdsDetalhamento_Dup.ParamByName('DTMOVIMENTO').AsDate := fDMCadFechamento.cdsFechamentoDATA.AsDateTime;
  fDMCadFechamento.sdsDetalhamento_Dup.ParamByName('TERM1').AsInteger    := vTerminal;
  if fDMCadFechamento.qParametrosID_CONTA_FECHAMENTO.AsInteger <= 0 then
    fDMCadFechamento.sdsDetalhamento_Dup.ParamByName('ID_CONTA').AsInteger := 1
  else
    fDMCadFechamento.sdsDetalhamento_Dup.ParamByName('ID_CONTA').AsInteger := fDMCadFechamento.qParametrosID_CONTA_FECHAMENTO.AsInteger;
  fDMCadFechamento.sdsDetalhamento_Dup.ParamByName('ID_FECHAMENTO').AsInteger := fDMCadFechamento.cdsFechamentoID.AsInteger;
  fDMCadFechamento.cdsDetalhamento_Dup.Open;
  fDMCadFechamento.cdsDetalhamento_Dup.IndexFieldNames := 'NUMDUPLICATA';

  ffrmCadFechamento_Det := TfrmCadFechamento_Det.Create(self);
  ffrmCadFechamento_Det.fDMCadFechamento := fDMCadFechamento;
  ffrmCadFechamento_Det.ShowModal;
  FreeAndNil(ffrmCadFechamento_Det);
end;

end.
