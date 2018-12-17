unit UCadFechamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadFechamento, UCBase,
  DBGrids, ExtCtrls, dbXPress, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, RxLookup, RxDBComb, Menus, RXDBCtrl,
  DB, UEscolhe_Filial, NxCollection, StrUtils, DateUtils, ComCtrls, Variants, RXSplit, UCadFechamento_Sangria, RzPanel, Printers,
  uDmParametros;

type
  TfrmCadFechamento = class(TForm)
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
    btnFechamento: TNxButton;
    UCControls1: TUCControls;
    Label6: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SMDBGrid5: TSMDBGrid;
    SMDBGrid4: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    pnlCliente: TPanel;
    pnlItem: TPanel;
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
    btnSangria: TNxButton;
    btnSuprimento: TNxButton;
    Label1: TLabel;
    Label11: TLabel;
    btnGerar: TNxButton;
    Label17: TLabel;
    Label19: TLabel;
    DBEdit2: TDBEdit;
    Label20: TLabel;
    DBEdit1: TDBEdit;
    Label21: TLabel;
    DBEdit3: TDBEdit;
    Label22: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    btnInf_Valores: TNxButton;
    btnConferencia: TNxButton;
    Shape2: TShape;
    Label14: TLabel;
    Label15: TLabel;
    btGaveta: TNxButton;
    DBText3: TDBText;
    DBText4: TDBText;
    Label23: TLabel;
    DBEdit8: TDBEdit;
    btnReabrir: TNxButton;
    btnConsDetalhamento: TNxButton;
    dbmmoOBS_FECHAMENTO: TDBMemo;
    dbmmoOBS_CONFERENCIA: TDBMemo;
    lbl1: TLabel;
    lbl2: TLabel;
    Shape3: TShape;
    Label2: TLabel;
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
    procedure btnGerarClick(Sender: TObject);
    procedure btnFechamentoClick(Sender: TObject);
    procedure btnSangriaClick(Sender: TObject);
    procedure btnSuprimentoClick(Sender: TObject);
    procedure btnInf_ValoresClick(Sender: TObject);
    procedure btnConferenciaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btGavetaClick(Sender: TObject);
    procedure btnReabrirClick(Sender: TObject);
    procedure btnConsDetalhamentoClick(Sender: TObject);
  private
    { Private declarations }
    vTipoNotaAnt: String;
//    vID_Cliente_Ant: Integer;
//    vInformado_Ant, vDiferenca_Ant: Real;
    vAlterar: String;
    vInserir: String;
    vLinha: Integer;
    vInfSenhaAdmin: Boolean;

    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmCadFechamento_Sangria: TfrmCadFechamento_Sangria;

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

    procedure prc_Informar_Valores(Tipo: String); //I=Informar os valores   C=Conferência
    procedure prc_Zerar_Valores(ApagarItens: Boolean = True);
  public
    { Public declarations }
    fDMCadFechamento: TDMCadFechamento;
    fDmParametros: TDmParametros;

    cTXTStream: TMemoryStream;
    cXMLStream: TMemoryStream;
    sXMLNFSe: TMemoryStream;
  end;

var
  frmCadFechamento: TfrmCadFechamento;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, URelFechamento, UCadFechamento_Contagem, UCadFechamento_Det;

{$R *.dfm}

procedure TfrmCadFechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDmParametros);
  Action := Cafree;
end;

procedure TfrmCadFechamento.btnExcluirClick(Sender: TObject);
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

procedure TfrmCadFechamento.btnInserirClick(Sender: TObject);
begin
  fDMCadFechamento.prc_Localizar(fnc_Inserir_Registro);
  Close;
end;

procedure TfrmCadFechamento.prc_Excluir_Registro;
begin
  fDMCadFechamento.prc_Excluir;
end;

procedure TfrmCadFechamento.prc_Gravar_Registro;
var
  vIDAux: Integer;
  ID: TTransactionDesc;
  vVlrTotal: Real;
  vTipo: String;
begin
//  if fDMCadFechamento.cdsFechamento_Itens.IsEmpty then
    vTipo := 'N';
//  else
//    vTipo := 'S';

  if not fnc_Verifica_Data('S') then
    exit;

//  if fnc_Duplicidade then
//    exit;

  if (vAlterar <> 'S') and (vInserir <> 'S') then
  begin
    if MessageDlg('Confirma o fechamento deste registtro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
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

function TfrmCadFechamento.fnc_Inserir_Registro: Integer;
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

procedure TfrmCadFechamento.FormShow(Sender: TObject);
var
  vData: TDateTime;
begin
  btnGerar.Enabled := False;
  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  DateEdit1.Date   := vData;
  RxDBLookupCombo2.KeyValue := vTerminal;
  btnConsultarClick(Sender);

//  prc_scroll(fDMCadFechamento.cdsFechamento_Consulta);
  fDMCadFechamento.cdsFechamento_Consulta.AfterScroll := prc_scroll;
  fDMCadFechamento.cdsFechamento_Consulta.Last;
  fDMCadFechamento.cdsFechamento_Consulta.First;

  fDmParametros.cdsCupomParametros.Open;
  btnFechamento.Enabled := (fDmParametros.cdsCupomParametrosFECHAMENTO.AsString = 'A') or
                           (fDmParametros.cdsCupomParametrosFECHAMENTO.AsString = 'N');
end;

procedure TfrmCadFechamento.prc_Consultar(ID: Integer);
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

procedure TfrmCadFechamento.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadFechamento.btnCancelarClick(Sender: TObject);
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

procedure TfrmCadFechamento.btnAlterarClick(Sender: TObject);
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
      vInfSenhaAdmin := True
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

procedure TfrmCadFechamento.btnConfirmarClick(Sender: TObject);
begin
  if not(fDMCadFechamento.cdsFechamento.State in [dsEdit,dsInsert]) then
    fDMCadFechamento.cdsFechamento.Edit;
  fDMCadFechamento.prc_Recalcular_Inf;
  prc_Gravar_Registro;
  vInserir := '';
end;

procedure TfrmCadFechamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadFechamento);
end;

procedure TfrmCadFechamento.prc_Fechamento;
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

function TfrmCadFechamento.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadFechamento.cdsFechamento_Consulta.Active) or (fDMCadFechamento.cdsFechamento_Consulta.IsEmpty) or
        (fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger < 1) then
    exit;
  Result := True;
end;

procedure TfrmCadFechamento.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadFechamento.cdsFechamento.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadFechamento.cdsFechamento_Consulta.Active) or (fDMCadFechamento.cdsFechamento_Consulta.IsEmpty) or
            (fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Fechamento;
      SMDBGrid4.Visible := True;
      SMDBGrid5.Visible := True;
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

procedure TfrmCadFechamento.prc_Habilitar_Campos;
begin
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnGerar.Enabled     := not(btnGerar.Enabled);
  btnSuprimento.Enabled := not(btnSuprimento.Enabled);
  btnSangria.Enabled    := not(btnSangria.Enabled);
  SMDBGrid5.ReadOnly    := not(SMDBGrid5.ReadOnly);
end;

procedure TfrmCadFechamento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadFechamento.cdsFechamento);
end;

procedure TfrmCadFechamento.edtSerieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadFechamento.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadFechamento.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadFechamento.SMDBGrid1TitleClick(Column: TColumn);
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

procedure TfrmCadFechamento.SMDBGrid1GetCellParams(Sender: TObject;
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

procedure TfrmCadFechamento.SMDBGrid1DblClick(Sender: TObject);
begin
  fDMCadFechamento.prc_Localizar(fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger);
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadFechamento.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
end;

procedure TfrmCadFechamento.prc_Limpar_Edit_Consulta;
begin
  RxDBLookupCombo1.ClearValue;
  DateEdit1.Clear;
  DateEdit2.Clear;
end;

procedure TfrmCadFechamento.btnImprimirClick(Sender: TObject);
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

procedure TfrmCadFechamento.btnGerarClick(Sender: TObject);
begin
  fDMCadFechamento.vTotalVendas := 0;
  if fDMCadFechamento.cdsFechamentoDATA.AsDateTime <= 10 then
  begin
    MessageDlg('*** Data não foi informada!', mtError, [mbOK], 0);
    Exit;
  end;
  if not fnc_Verifica_Data then
    Exit;

  prc_Zerar_Valores(False);

  fDMCadFechamento.prc_Abrir_Financeiro;
  fDMCadFechamento.prc_Le_Financeiro;
  fDMCadFechamento.prc_Recalcular_Inf;
end;

{procedure TfrmCadFechamento.prc_Abrir_Financeiro;
begin
  fDMCadFechamento.cdsFinanceiro.Close;
  fDMCadFechamento.sdsFinanceiro.ParamByName('ID_CONTA').AsInteger := fDMCadFechamento.cdsFechamentoID_CONTA.AsInteger;
  fDMCadFechamento.sdsFinanceiro.ParamByName('FILIAL').AsInteger   := fDMCadFechamento.cdsFechamentoFILIAL.AsInteger;
  fDMCadFechamento.sdsFinanceiro.ParamByName('DTMOVIMENTO').AsDate := fDMCadFechamento.cdsFechamentoDATA.AsDateTime;
  fDMCadFechamento.sdsFinanceiro.ParamByName('TERMINAL').AsInteger := fDMCadFechamento.cdsFechamentoTERMINAL_ID.AsInteger;
  fDMCadFechamento.sdsFinanceiro.ParamByName('FECHAMENTO').AsInteger := fDMCadFechamento.cdsFechamentoID.AsInteger;
  fDMCadFechamento.cdsFinanceiro.Open;

  fDMCadFechamento.cdsDuplicata.Close;
  fDMCadFechamento.sdsDuplicata.ParamByName('FILIAL').AsInteger   := fDMCadFechamento.cdsFechamentoFILIAL.AsInteger;
  fDMCadFechamento.sdsDuplicata.ParamByName('DTMOVIMENTO').AsDate := fDMCadFechamento.cdsFechamentoDATA.AsDateTime;
  fDMCadFechamento.sdsDuplicata.ParamByName('TERM1').AsInteger    := vTerminal;
  fDMCadFechamento.cdsDuplicata.Open;

  fDMCadFechamento.cdsVale.Close;
  fDMCadFechamento.sdsVale.ParamByName('FILIAL').AsInteger   := fDMCadFechamento.cdsFechamentoFILIAL.AsInteger;
  fDMCadFechamento.sdsVale.ParamByName('DTMOVIMENTO').AsDate := fDMCadFechamento.cdsFechamentoDATA.AsDateTime;
  fDMCadFechamento.cdsVale.Open;
end;

procedure TfrmCadFechamento.prc_Le_Financeiro;
var
  vVlrEntrada, vVlrSaida, vVlrInformado: Real;
  vTipoDinheiro: Integer;
begin
  fDMCadFechamento.cdsFinanceiro.First;
  while not fDMCadFechamento.cdsFinanceiro.Eof do
  begin
    if fDMCadFechamento.cdsFechamento_Itens.Locate('ID;ID_TIPOCOBRANCA',VarArrayOf([fDMCadFechamento.cdsFechamentoID.AsInteger,
                                                   fDMCadFechamento.cdsFinanceiroID_FORMA_PAGAMENTO.AsInteger]),[locaseinsensitive]) then
      fDMCadFechamento.cdsFechamento_Itens.Edit
    else
    begin
      fDMCadFechamento.prc_Inserir_Itens;
      fDMCadFechamento.cdsFechamento_ItensID_TIPOCOBRANCA.AsInteger := fDMCadFechamento.cdsFinanceiroID_FORMA_PAGAMENTO.AsInteger;
    end;
    fDMCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsFinanceiroVLR_ENTRADA.AsFloat));
    fDMCadFechamento.cdsFechamento_ItensVLR_SAIDA.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsFinanceiroVLR_SAIDA.AsFloat));
    fDMCadFechamento.cdsFechamento_ItensVLR_SALDO.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsFloat -
                                                               fDMCadFechamento.cdsFechamento_ItensVLR_SAIDA.AsFloat));
    fDMCadFechamento.cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString := fDMCadFechamento.cdsFinanceiroNOME_FORMA_PAGAMENTO.AsString;
    fDMCadFechamento.cdsFechamento_Itens.Post;
    fDMCadFechamento.cdsFinanceiro.Next;
  end;

  fDMCadFechamento.cdsDuplicata.First;
  while not fDMCadFechamento.cdsDuplicata.Eof do
  begin
    if fDMCadFechamento.cdsFechamento_Itens.Locate('ID;ID_TIPOCOBRANCA',VarArrayOf([fDMCadFechamento.cdsFechamentoID.AsInteger,
                                                   fDMCadFechamento.cdsDuplicataID_TIPOCOBRANCA.AsInteger]),[locaseinsensitive]) then
      fDMCadFechamento.cdsFechamento_Itens.Edit
    else
    begin
      fDMCadFechamento.prc_Inserir_Itens;
      fDMCadFechamento.cdsFechamento_ItensID_TIPOCOBRANCA.AsInteger := fDMCadFechamento.cdsDuplicataID_TIPOCOBRANCA.AsInteger;
    end;
    fDMCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsFloat        := StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsDuplicataVLR_ENTRADA.AsFloat));
    fDMCadFechamento.cdsFechamento_ItensVLR_SALDO.AsFloat          := StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsFloat -
                                                                      fDMCadFechamento.cdsFechamento_ItensVLR_SAIDA.AsFloat));
    fDMCadFechamento.cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString := fDMCadFechamento.cdsDuplicataNOME_FORMA_PAGAMENTO.AsString;
    fDMCadFechamento.cdsFechamento_Itens.Post;

    fDMCadFechamento.cdsDuplicata.Next;
  end;

  fDMCadFechamento.cdsVale.First;
  while not fDMCadFechamento.cdsVale.Eof do
  begin
    if StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsValeVLR_VALE.AsFloat)) > 0 then
    begin
      if fDMCadFechamento.cdsFechamento_Itens.Locate('ID;ID_TIPOCOBRANCA',VarArrayOf([fDMCadFechamento.cdsFechamentoID.AsInteger,900]),[locaseinsensitive]) then
        fDMCadFechamento.cdsFechamento_Itens.Edit
      else
      begin
        fDMCadFechamento.prc_Inserir_Itens;
        fDMCadFechamento.cdsFechamento_ItensID_TIPOCOBRANCA.AsInteger := 900;
      end;
      fDMCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsValeVLR_VALE.AsFloat));
      fDMCadFechamento.cdsFechamento_ItensVLR_SALDO.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsFloat -
                                                                 fDMCadFechamento.cdsFechamento_ItensVLR_SAIDA.AsFloat));
      fDMCadFechamento.cdsFechamento_ItensNOME_TIPOCOBRANCA.AsString := 'VALES';
      fDMCadFechamento.cdsFechamento_Itens.Post;
    end;
    fDMCadFechamento.cdsVale.Next;
  end;

  fDMCadFechamento.cdsTipoCobranca.IndexFieldNames := 'DINHEIRO';
  fDMCadFechamento.cdsTipoCobranca.FindKey(['S']);
  vTipoDinheiro := fDMCadFechamento.cdsTipoCobrancaID.AsInteger;

  vVlrEntrada   := 0;
  vVlrSaida     := 0;
  vVlrInformado := 0;
  fDMCadFechamento.cdsFechamento_Itens.First;
  while not fDMCadFechamento.cdsFechamento_Itens.Eof do
  begin
    vVlrEntrada   := StrToFloat(FormatFloat('0.00',vVlrEntrada + fDMCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsFloat));
    vVlrSaida     := StrToFloat(FormatFloat('0.00',vVlrSaida + fDMCadFechamento.cdsFechamento_ItensVLR_SAIDA.AsFloat));
    vVlrInformado := StrToFloat(FormatFloat('0.00',vVlrInformado + fDMCadFechamento.cdsFechamento_ItensVLR_INFORMADO.AsFloat));

    if fDMCadFechamento.cdsFechamento_ItensID_TIPOCOBRANCA.AsInteger = vTipoDinheiro then
    begin
      fDMCadFechamento.cdsFechamento_Itens.Edit;
      fDMCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsCurrency := fDMCadFechamento.cdsFechamento_ItensVLR_SALDO.AsCurrency +
                                                                    fDMCadFechamento.cdsFechamentoVLR_INICIAL.AsCurrency -
                                                                    fDMCadFechamento.cdsFechamentoVLR_SANGRIA.AsCurrency;
      fDMCadFechamento.cdsFechamento_Itens.Post;
    end;

    fDMCadFechamento.cdsFechamento_Itens.Next;
  end;
  if not(fDMCadFechamento.cdsFechamento.State in [dsEdit,dsInsert]) then
    fDMCadFechamento.cdsFechamento.Edit;
  fDMCadFechamento.cdsFechamentoVLR_ENTRADA.AsFloat   := StrToFloat(FormatFloat('0.00',vVlrEntrada));
  fDMCadFechamento.cdsFechamentoVLR_SAIDA.AsFloat     := StrToFloat(FormatFloat('0.00',vVlrSaida));
  fDMCadFechamento.cdsFechamentoVLR_SUBSALDO.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsFechamentoVLR_ENTRADA.AsFloat -
                                                         fDMCadFechamento.cdsFechamentoVLR_SAIDA.AsFloat));
  fDMCadFechamento.cdsFechamentoVLR_SALDO.AsFloat     := StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsFechamentoVLR_SUBSALDO.AsFloat +
                                                         fDMCadFechamento.cdsFechamentoVLR_INICIAL.AsFloat -
                                                         fDMCadFechamento.cdsFechamentoVLR_SANGRIA.AsFloat));
  fDMCadFechamento.cdsFechamentoVLR_INFORMADO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrInformado));
  fDMCadFechamento.cdsFechamentoVLR_DIFERENCA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsFechamentoVLR_SALDO.AsFloat -
                                                         fDMCadFechamento.cdsFechamentoVLR_INFORMADO.AsFloat));
end;}

function TfrmCadFechamento.fnc_Verifica_Data(Tipo: String): Boolean;
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

procedure TfrmCadFechamento.btnFechamentoClick(Sender: TObject);
begin
  if not fnc_Verifica_Registro then
    exit;
  prc_Fechamento;
  if fDMCadFechamento.cdsFechamento.IsEmpty then
    exit;
  if fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString <> 'N' then
  begin
    MessageDlg('*** Já foi feito o fechamento deste registro!', mtInformation, [mbOk], 0);
    exit;
  end;
  vAlterar := '';

  vFilial_Nome := fDMCadFechamento.cdsFilialNOME.AsString;
  lblNome_Filial.Caption := vFilial_Nome;

  fDMCadFechamento.cdsFechamento.Edit;
  fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString := 'F';

  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Cadastro;

  btnGerar.Click;
  btnConfirmar.Click;
  RzPageControl1.ActivePage := TS_Consulta;

{  fDMCadFechamento.cdsFechamento_Ret.Last;
  fDMCadFechamento.vItem_Sangria := fDMCadFechamento.cdsFechamento_RetITEM.AsInteger;

  fDMCadFechamento.vTipo_Caixa := 'F';

//  fDMCadFechamento.prc_Recalcular_Inf;

//////imprmir fechamento
  if not fDMCadFechamento.cdsCupomTipoCobranca.Active then
  begin
    fDMCadFechamento.sdsCupomTipoCobranca.ParamByName('ID_FECHAMENTO').AsInteger := fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger;
    fDMCadFechamento.sdsCupomTipoCobranca.ParamByName('TERMINAL_ID').AsInteger   := fDMCadFechamento.cdsFechamento_ConsultaTERMINAL_ID.AsInteger;
    fDMCadFechamento.cdsCupomTipoCobranca.Open;
  end;

  fDMCadFechamento.cdsProduto_Vendido.Close;
  fDMCadFechamento.sdsProduto_Vendido.ParamByName('ID_FECHAMENTO').AsInteger := fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger;
  fDMCadFechamento.sdsProduto_Vendido.ParamByName('TERMINAL_ID').AsInteger   := fDMCadFechamento.cdsFechamento_ConsultaTERMINAL_ID.AsInteger;
  fDMCadFechamento.cdsProduto_Vendido.Open;

//  fDMCadFechamento.prc_Imprime_FechamentoW(fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger);}
end;

function TfrmCadFechamento.fnc_Duplicidade: Boolean;
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

{procedure TfrmCadFechamento.prc_Recalcular_Inf;
var
  vVlrInformado: Real;
  vVlrSangria, vVlrSupri: Real;
begin
  fDMCadFechamento.cdsFechamento.Edit;
  vVlrInformado := 0;
  vVlrSangria   := 0;
  vVlrSupri     := 0;
  fDMCadFechamento.cdsFechamento_Itens.First;
  while not fDMCadFechamento.cdsFechamento_Itens.Eof do
  begin
    vVlrInformado := StrToFloat(FormatFloat('0.00',vVlrInformado + fDMCadFechamento.cdsFechamento_ItensVLR_INFORMADO.AsFloat));
    fDMCadFechamento.cdsFechamento_Itens.Next;
  end;

  fDMCadFechamento.cdsFechamento_San.First;
  while not fDMCadFechamento.cdsFechamento_San.Eof do
  begin
    vVlrSangria := StrToFloat(FormatFloat('0.00',vVlrSangria + fDMCadFechamento.cdsFechamento_SanVALOR.AsFloat));
    fDMCadFechamento.cdsFechamento_San.Next;
  end;

  fDMCadFechamento.cdsFechamento_Sup.First;
  while not fDMCadFechamento.cdsFechamento_Sup.Eof do
  begin
    vVlrSupri := StrToFloat(FormatFloat('0.00',vVlrSupri + fDMCadFechamento.cdsFechamento_SupVALOR.AsFloat));
    fDMCadFechamento.cdsFechamento_Sup.Next;
  end;

  fDMCadFechamento.cdsFechamentoVLR_INICIAL.AsCurrency := StrToFloat(FormatFloat('0.00',vVlrSupri));
  fDMCadFechamento.cdsFechamentoVLR_SANGRIA.AsFloat    := StrToFloat(FormatFloat('0.00',vVlrSangria));

  fDMCadFechamento.cdsFechamentoVLR_INFORMADO.AsFloat  := StrToFloat(FormatFloat('0.00',vVlrInformado));
  fDMCadFechamento.cdsFechamentoVLR_SALDO.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsFechamentoVLR_SUBSALDO.AsFloat +
                                                          fDMCadFechamento.cdsFechamentoVLR_INICIAL.AsFloat -
                                                          fDMCadFechamento.cdsFechamentoVLR_SANGRIA.AsFloat));
  fDMCadFechamento.cdsFechamentoVLR_DIFERENCA.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsFechamentoVLR_SALDO.AsFloat -
                                                          fDMCadFechamento.cdsFechamentoVLR_INFORMADO.AsFloat));
end;}

procedure TfrmCadFechamento.btnSangriaClick(Sender: TObject);
begin
  if not fnc_Verifica_Registro then
    exit;
  prc_Fechamento;

  if not fnc_Verifica_Data then
    exit;

  if fDMCadFechamento.cdsFechamento.IsEmpty then
    exit;

  vID_Fechamento_Pos := fDMCadFechamento.cdsFechamentoID.AsInteger;

  ffrmCadFechamento_Sangria := TfrmCadFechamento_Sangria.Create(self);
  ffrmCadFechamento_Sangria.fDMCadFechamento := fDMCadFechamento;
  ffrmCadFechamento_Sangria.vES              := 'S';
  ffrmCadFechamento_Sangria.ShowModal;
  FreeAndNil(ffrmCadFechamento_Sangria);

  fDMCadFechamento.cdsFechamento.Edit;
  fDMCadFechamento.cdsFechamento.Post;
  fDMCadFechamento.cdsFechamento.ApplyUpdates(0);

  fDMCadFechamento.prc_Recalcular_Inf;

  fDMCadFechamento.cdsFechamento.Post;
  fDMCadFechamento.cdsFechamento.ApplyUpdates(0);
end;

procedure TfrmCadFechamento.btnSuprimentoClick(Sender: TObject);
begin
  fDMCadFechamento.cdsFechamento.First;

  if fDMCadFechamento.cdsFechamento.IsEmpty then
    exit;

  ffrmCadFechamento_Sangria := TfrmCadFechamento_Sangria.Create(self);
  ffrmCadFechamento_Sangria.fDMCadFechamento := fDMCadFechamento;
  ffrmCadFechamento_Sangria.vES              := 'E';
  ffrmCadFechamento_Sangria.ShowModal;
  FreeAndNil(ffrmCadFechamento_Sangria);

  fDMCadFechamento.cdsFechamento.Edit;
  fDMCadFechamento.cdsFechamento.Post;
  fDMCadFechamento.cdsFechamento.ApplyUpdates(0);

  fDMCadFechamento.prc_Recalcular_Inf;

  fDMCadFechamento.cdsFechamento.Post;
  fDMCadFechamento.cdsFechamento.ApplyUpdates(0);
end;

procedure TfrmCadFechamento.prc_scroll(DataSet: TDataSet);
begin
  btnSuprimento.Enabled  := ((fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'N') or (trim(fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString) = ''));
  btnSangria.Enabled     := ((fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'N') or (trim(fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString) = ''));
  btnFechamento.Enabled  := ((fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'N') or (trim(fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString) = ''));
  btnExcluir.Enabled     := ((fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'N') or (trim(fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString) = ''));
  btnInf_Valores.Enabled := ((fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'N') or (trim(fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString) = ''));
  btnConferencia.Enabled := (fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'A');
end;

function TfrmCadFechamento.fnc_Soma_Linha(Qtd: Integer): Integer;
begin
  vLinha := vLinha + Qtd;
  Result := vLinha;
end;

procedure TfrmCadFechamento.btnInf_ValoresClick(Sender: TObject);
begin
  prc_Informar_Valores('I');
end;

procedure TfrmCadFechamento.prc_Informar_Valores(Tipo: String);
var
  i: Integer;
  vGravarAux: Boolean;
begin
  if not fnc_Verifica_Registro then
    Exit;

  prc_Fechamento;

  fDMCadFechamento.qVerifica_Inf.Close;
  fDMCadFechamento.qVerifica_Inf.ParamByName('ID').AsInteger := fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger;
  fDMCadFechamento.qVerifica_Inf.Open;
  if (Tipo = 'C') and (fDMCadFechamento.qVerifica_InfCONTADOR_CONF.AsInteger > 0) then
  begin
    MessageDlg('*** Já foram informados os valores de conferência!', mtInformation, [mbOk], 0);
    exit;
  end;
  if (Tipo = 'I') and (fDMCadFechamento.qVerifica_InfCONTADOR_INF.AsInteger > 0) then
  begin
    if MessageDlg('Já foram informados os valores do caixa!' +#13 + #13 + 'Deseja imprimir os valores informados?',
                  mtConfirmation,[mbYes,mbNo],0) = mrYes then
      fDmCadFechamento.prc_Imprime_Vlr_InformadoC;
    exit;
  end;

  vAlterar := '';

  if not fnc_Verifica_Data then
    Exit;

  if fDMCadFechamento.cdsFechamento.IsEmpty then
    Exit;

  btnGerarClick(frmCadFechamento);

  frmCadFechamento_Contagem := TfrmCadFechamento_Contagem.Create(Self);
  frmCadFechamento_Contagem.fDMCadFechamento := fDMCadFechamento;
  frmCadFechamento_Contagem.vTipo_Valor      := Tipo;
  frmCadFechamento_Contagem.ShowModal;

  //28/12/2016  Só vai confirmar a conferência quando for no botão OK e digitar os valores
  if fDMCadFechamento.vInfConferencia <> 'S' then
    exit;
  //****************

  vGravarAux := False;
  fDMCadFechamento.mContagem.First;
  while not fDMCadFechamento.mContagem.Eof do
  begin
    if fDMCadFechamento.cdsFechamento_Itens.Locate('ID;ID_TIPOCOBRANCA',VarArrayOf([fDMCadFechamento.cdsFechamentoID.AsInteger,
                                                   fDMCadFechamento.mContagemID_TIPOCOBRANCA.AsInteger]),[locaseinsensitive]) then
    begin
      vGravarAux := True;
      fDMCadFechamento.cdsFechamento_Itens.Edit;
      if Tipo = 'I' then
      begin
        fDMCadFechamento.cdsFechamento_ItensVLR_INFORMADO.AsCurrency     := fDMCadFechamento.mContagemVALOR.AsCurrency;
        fDmCadFechamento.cdsFechamento_ItensVLR_DIF_INFORMADO.AsCurrency := fDMCadFechamento.mContagemVALOR.AsCurrency - fDmCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsCurrency;
      end
      else
      begin
        fDMCadFechamento.cdsFechamento_ItensVLR_CONFERENCIA.AsCurrency   := fDMCadFechamento.mContagemVALOR.AsCurrency;
        fDmCadFechamento.cdsFechamento_ItensVLR_DIF_CONFERIDO.AsCurrency := fDMCadFechamento.mContagemVALOR.AsCurrency -
                                                                            fDmCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsCurrency;        
      end;
      fDMCadFechamento.cdsFechamento_Itens.Post;
    end;
    fDMCadFechamento.mContagem.Next;
  end;

  //12/07/2016
  if (vGravarAux) then
  begin
    if (Tipo = 'C') then
    begin
      fDMCadFechamento.cdsFechamento.Edit;
      if StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsFechamentoVLR_DIFERENCA.AsFloat)) > 0 then
        fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString := 'E'
      else
        fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString := 'S';
      fDMCadFechamento.cdsFechamentoDT_HR_CONFERENCIA.AsDateTime := Now;
      fDMCadFechamento.cdsFechamento.Post;
    end
    else
    if (Tipo = 'I') then
    begin
      fDMCadFechamento.cdsFechamento.Edit;
      fDMCadFechamento.cdsFechamentoDTFECHAMENTO.AsDateTime  := Date;
      fDMCadFechamento.cdsFechamentoHRFECHAMENTO.AsDateTime  := Now;
      fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString := 'A';
      fDMCadFechamento.cdsFechamento.Post;
      fDMCadFechamento.prc_Recalcular_Inf;
    end;
    fDMCadFechamento.cdsFechamento.ApplyUpdates(0);
  end;

  if Tipo = 'I' then
    fDmCadFechamento.prc_Imprime_Vlr_InformadoC;
end;

procedure TfrmCadFechamento.btnConferenciaClick(Sender: TObject);
var
  vIDAux: Integer;
begin
  vIDAux := fDMCadFechamento.cdsFechamento_ConsultaID.AsInteger;
  prc_Informar_Valores('C');
  prc_Consultar(0);
  fDMCadFechamento.cdsFechamento_Consulta.Locate('ID',vIDAux,[loCaseInsensitive]);
  btnGerarClick(Sender);

  fDMCadFechamento.cdsFechamento.Edit;
  if FormatFloat('0.00',fDMCadFechamento.cdsFechamentoVLR_DIFERENCA.AsFloat) <> FormatFloat('0.00',0) then
    fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString := 'E'
  else
    fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString := 'S';
//  fDMCadFechamento.cdsFechamento.Post;

  btnConfirmarClick(Sender);
end;

procedure TfrmCadFechamento.FormCreate(Sender: TObject);
begin
  fDMCadFechamento := TDMCadFechamento.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFechamento);

  if not Assigned(fDmParametros) then
    fDmParametros := TdmParametros.Create(Self);
  fDmParametros.Le_Ini;
end;

procedure TfrmCadFechamento.btGavetaClick(Sender: TObject);
begin
  prc_AbreGaveta(1);
end;

procedure TfrmCadFechamento.prc_Zerar_Valores(ApagarItens: Boolean = True);
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
  fDMCadFechamento.cdsFechamento.Post;
end;

procedure TfrmCadFechamento.btnReabrirClick(Sender: TObject);
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
  if fDMCadFechamento.cdsFechamento_ConsultaTIPO_FECHAMENTO.AsString = 'E' then
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

procedure TfrmCadFechamento.btnConsDetalhamentoClick(Sender: TObject);
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
