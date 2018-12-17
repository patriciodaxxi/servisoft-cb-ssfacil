unit UCadDocEntrada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadNotaServico,
  DB, DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, Menus,
  RXDBCtrl, RzEdit, RzDBEdit, RzButton, UEscolhe_Filial, UCBase, RzPanel, dbXPress, NxCollection, NxEdit,StrUtils, DateUtils,
  ComCtrls, ValorPor, RzDBDTP, RzDTP, UConsFat_Mensal, RzRadChk, UDMMovimento,
  UCadNotaServico_Obs, RzDBChk, USel_OS_Servico, Variants;

type
  TfrmCadDocEntrada = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    lblCliente: TLabel;
    Edit2: TEdit;
    lblSerie: TLabel;
    edtSerie: TEdit;
    StaticText1: TStaticText;
    lblNumNota: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    pnlNota: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    pnlCliente: TPanel;
    Panel11: TPanel;
    lblTipo_Prazo: TLabel;
    rxcbTipo_Prazo: TRxDBComboBox;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    UCControls1: TUCControls;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label36: TLabel;
    DBDateEdit2: TDBDateEdit;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    stat1: TStatusBar;
    Label22: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Panel7: TPanel;
    RzGroupBox2: TRzGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit1: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit7: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    DBMemo1: TDBMemo;
    btnObs: TNxButton;
    gbxDuplicata: TRzGroupBox;
    Label72: TLabel;
    SpeedButton6: TSpeedButton;
    Label44: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label62: TLabel;
    SMDBGrid_Dupl2: TSMDBGrid;
    rxdbCondicaoPgto: TRxDBLookupCombo;
    rxdbConta_Orcamento: TRxDBLookupCombo;
    rxdbTipoCobranca: TRxDBLookupCombo;
    rxdbConta: TRxDBLookupCombo;
    btnGerarParcelas: TNxButton;
    btnExcluirParcelas: TNxButton;
    dbVlr_Entrada: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtSerieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure rxdbCondicaoPgtoChange(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirParcelasClick(Sender: TObject);
    procedure btnGerarParcelasClick(Sender: TObject);
    procedure dbVlr_EntradaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxdbConta_OrcamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxdbCondicaoPgtoEnter(Sender: TObject);
    procedure rxdbTipoCobrancaEnter(Sender: TObject);
    procedure rxdbConta_OrcamentoEnter(Sender: TObject);
    procedure btnObsClick(Sender: TObject);
    procedure RzGroupBox2Enter(Sender: TObject);
    procedure RzGroupBox2Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
  private
    { Private declarations }
    vFilial_Sel : Integer;

    fDMCadNotaServico: TDMCadNotaServico;
    fDMMovimento: TDMMovimento;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmCadNotaServico_Obs: TfrmCadNotaServico_Obs;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_NotaFiscal;
    procedure prc_Posicionar_Cliente;

    procedure prc_Habilitar_CamposNota;

    procedure prc_Opcao_Prazo;

    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Calcular_Total;

  public
    { Public declarations }
  end;

var
  frmCadDocEntrada: TfrmCadDocEntrada;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, USel_Pessoa, uNFeComandos, Math,
  USel_ContaOrc, uUtilCobranca;

{$R *.dfm}

procedure TfrmCadDocEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMMovimento);
  FreeAndNil(fDMCadNotaServico);
  Action := Cafree;
end;

procedure TfrmCadDocEntrada.btnExcluirClick(Sender: TObject);
begin
  prc_Posiciona_NotaFiscal;

  if fDMCadNotaServico.cdsNotaServico.IsEmpty then
    exit;

  if ((fDMCadNotaServico.cdsNotaServicoHOMOLOGACAO.AsString <> 'S') and (trim(fDMCadNotaServico.cdsNotaServicoSERIE.AsString) <> '8')) and (fDMCadNotaServico.cdsParametrosIMPRESSAO_MATRICIAL.AsString <> 'S') then
  begin
    if fDMCadNotaServico.cdsNotaServicoNUMLOTE.AsInteger > 0 then
    begin
      MessageDlg('*** Nota possui lote, verificar no site da prefeitura se este RPS foi transformado em Nota!', mtError, [mbOk], 0);
      exit;
    end;

    if (fDMCadNotaServico.cdsNotaServicoNUMNOTA.AsInteger > 0) and (fDMCadNotaServico.cdsFilialNOME_PROVEDOR.AsString <> 'CAMPO BOM') then
    begin
      MessageDlg('*** Nota já autorizada na prefeitura!', mtError, [mbOk], 0);
      exit;
    end;

    if fDMCadNotaServico.cdsNotaServicoNUMLOTE.AsInteger > 0 then
    begin
      MessageDlg('*** Nota está no lote ' + fDMCadNotaServico.cdsNotaServicoNUMLOTE.AsString + ' na prefeitura!', mtError, [mbOk], 0);
      exit;
    end;

    if (fDMCadNotaServico.cdsNotaServicoCHAVE_ACESSO.AsString <> '') and (fDMCadNotaServico.cdsFilialNOME_PROVEDOR.AsString = 'CAMPO BOM') then
    begin
      MessageDlg('*** Nota já autorizada na prefeitura!', mtError, [mbOk], 0);
      exit;
    end;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadDocEntrada.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadDocEntrada.prc_Excluir_Registro;
begin
  fDMCadNotaServico.prc_Excluir;
end;

procedure TfrmCadDocEntrada.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vID_Mov: Integer;
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vTipo_Doc : String;
begin
  vIDAux := fDMCadNotaServico.cdsNotaServicoID.AsInteger;
  if fDMCadNotaServico.cdsNotaServico.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadNotaServico.vMSGNotaServico, mtError, [mbOk], 0);
    exit;
  end;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('NOTASERVICO');
    sds.ExecSQL();

    try
      fDMCadNotaServico.prc_Excluir_Duplicata;
      fDMCadNotaServico.prc_Excluir_Financeiro;
      fDMCadNotaServico.prc_Excluir_Movimento;

      if fDMCadNotaServico.cdsNotaServicoTIPO_PRAZO.AsString = 'P' then
      begin
        fDMCadNotaServico.cdsNotaServico_Parc.First;
        while not fDMCadNotaServico.cdsNotaServico_Parc.Eof do
        begin
          if (fDMCadNotaServico.CDSNotaServico_ParcITEM.AsInteger = 0) and
             (StrToFloat(FormatFloat('0.00',fDMCadNotaServico.CDSNotaServico_ParcVLR_VENCIMENTO.AsFloat)) <>
             StrToFloat(FormatFloat('0.00',fDMCadNotaServico.CDSNotaServicoVLR_ENTRADA.AsFloat))) then
          begin
            if not(fDMCadNotaServico.cdsNotaServico.State in [dsEdit,dsInsert]) then
              fDMCadNotaServico.cdsNotaServico.Edit;
            fDMCadNotaServico.cdsNotaServicoVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.CDSNotaServico_ParcVLR_VENCIMENTO.AsFloat));
          end;
          fDMCadNotaServico.Gravar_Duplicata('R','N',fDMCadNotaServico.cdsNotaServico_ParcITEM.AsInteger,
                                                     fDMCadNotaServico.cdsNotaServico_ParcVLR_VENCIMENTO.AsFloat,
                                                     fDMCadNotaServico.cdsNotaServico_ParcDTVENCIMENTO.AsDateTime,'');
          fDMCadNotaServico.cdsNotaServico_Parc.Next;
        end;
      end
      else
      if fDMCadNotaServico.cdsNotaServicoTIPO_PRAZO.AsString = 'V' then
        fDMCadNotaServico.Gravar_Duplicata('R','N',1,fDMCadNotaServico.cdsNotaServicoVLR_DUPLICATA.AsFloat,
                                                     fDMCadNotaServico.cdsNotaServicoDTEMISSAO_CAD.AsDateTime,'AVI');
    except
      on e: Exception do
        raise Exception.Create('Erro ao gravar a Duplicata: ' + #13 + e.Message);
    end;

    try
      if fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger <> fDMCadNotaServico.cdsServicoID.AsInteger then
        fDMCadNotaServico.cdsServico.Locate('ID',fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger,[loCaseInsensitive]);

      vID_Mov := 0;
      if fDMCadNotaServico.cdsNotaServicoNUMNOTA.AsInteger > 0 then
      begin
        fDMCadNotaServico.cdsNotaServico_Itens.First;
        vID_Mov := fDMMovimento.fnc_Gravar_Movimento(fDMCadNotaServico.cdsNotaServicoID_MOVIMENTO.AsInteger,
                                                     fDMCadNotaServico.cdsNotaServicoFILIAL.AsInteger,0,
                                                     fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger,
                                                     fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger,
                                                     fDMCadNotaServico.cdsNotaServicoID.AsInteger,0,
                                                     fDMCadNotaServico.cdsNotaServicoID_CLIENTE.AsInteger,0,
                                                     fDMCadNotaServico.cdsNotaServicoNUMNOTA.AsInteger,
                                                     0,'DEN',
                                                     fDMCadNotaServico.cdsNotaServicoSERIE.AsString,'E',
                                                     fDMCadNotaServico.cdsNotaServicoTIPO_DOC.AsString,
                                                     fDMCadNotaServico.cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat,
                                                     fDMCadNotaServico.cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat,0,0,
                                                     fDMCadNotaServico.cdsNotaServicoVLR_ICMS.AsFloat,0,0,
                                                     fDMCadNotaServico.cdsNotaServicoVLR_ISS.AsFloat,
                                                     fDMCadNotaServico.cdsNotaServicoVLR_IR.AsFloat,0,0,
                                                     fDMCadNotaServico.cdsNotaServicoVLR_PIS.AsFloat,
                                                     fDMCadNotaServico.cdsNotaServicoVLR_COFINS.AsFloat,
                                                     fDMCadNotaServico.cdsNotaServicoVLR_DUPLICATA.AsFloat,
                                                     fDMCadNotaServico.cdsNotaServicoVLR_CSLL.AsFloat,
                                                     0,0,0,0,fDMCadNotaServico.cdsNotaServicoVLR_ISS_RETIDO.AsFloat,
                                                     fDMCadNotaServico.cdsNotaServicoVLR_CSRF.AsFloat,
                                                     fDMCadNotaServico.cdsNotaServicoVLR_TOTAL.AsFloat,
                                                     fDMCadNotaServico.cdsNotaServicoVLR_TOTAL.AsFloat,0,0,0,0,0,0,0,
                                                     fDMCadNotaServico.cdsFilialPERC_PIS.AsFloat,
                                                     fDMCadNotaServico.cdsFilialPERC_COFINS.AsFloat,
                                                     fDMCadNotaServico.cdsNotaServicoPERC_ALIQUOTA.AsFloat,
                                                     fDMCadNotaServico.cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat,0,
                                                     'N','N','UN','',
                                                     fDMCadNotaServico.cdsNotaServico_ItensNOME_SERVICO_INT.AsString,
                                                     fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsString,
                                                     fDMCadNotaServico.cdsNotaServicoDTEMISSAO_CAD.AsDateTime,
                                                     fDMCadNotaServico.cdsNotaServicoDTEMISSAO_CAD.AsDateTime,'',
                                                     fDMCadNotaServico.cdsNotaServicoTIPO_PRAZO.AsString,
                                                     fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger,0,
                                                     fDMCadNotaServico.cdsNotaServicoID_VENDEDOR.AsInteger,0,
                                                     fDMCadNotaServico.cdsNotaServicoPERC_COMISSAO.AsFloat,0,0,1,0,'N');
      end;

      if vID_Mov <> fDMCadNotaServico.cdsNotaServicoID_MOVIMENTO.AsInteger then
      begin
        fDMCadNotaServico.cdsNotaServico.Edit;
        fDMCadNotaServico.cdsNotaServicoID_MOVIMENTO.AsInteger := vID_Mov;
        fDMCadNotaServico.cdsNotaServico.Post;
      end;

      fDMCadNotaServico.cdsNotaServico.ApplyUpdates(0);
    except
      on e: Exception do
        raise Exception.Create('Erro ao gravar o movimento: ' + #13 + e.Message);
    end;

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);

  TS_Consulta.TabEnabled   := True;
  prc_Habilitar_CamposNota;

  prc_Consultar(vIDAux);
  prc_Posiciona_NotaFiscal;
end;

procedure TfrmCadDocEntrada.prc_Inserir_Registro;
begin
  fDMCadNotaServico.cdsParametros.Close;
  fDMCadNotaServico.cdsParametros.Open;
  if fDMCadNotaServico.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadNotaServico.cdsFilial.Last;
    vFilial      := fDMCadNotaServico.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadNotaServico.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDMCadNotaServico.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  fDMCadNotaServico.prc_Abrir_Natureza;
  fDMCadNotaServico.prc_Abrir_Servico;

  fDMCadNotaServico.prc_Inserir('');
  lblNome_Filial.Caption := vFilial_Nome;

  if fDMCadNotaServico.cdsNotaServico.State in [dsBrowse] then
    exit;

  prc_Habilitar_CamposNota;

  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;

  fDMCadNotaServico.cdsNotaServicoTIPO_ES.AsString     := 'E';
  fDMCadNotaServico.cdsNotaServicoDTENTRADA.AsDateTime := Date;

  RxDBComboBox1.SetFocus;
end;

procedure TfrmCadDocEntrada.FormShow(Sender: TObject);
var
  vData: TDateTime;
  i: Integer;
begin
  fDMCadNotaServico := TDMCadNotaServico.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaServico);
  fDMMovimento := TDMMovimento.Create(Self);
  fDMCadNotaServico.prc_Abrir_cdsCliente('E');

  vFilial_Sel := 0;
  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  NxDatePicker1.Date := vData;
  NxDatePicker2.Date := Date;
  fDMCadNotaServico.cdsNotaServico_Consulta.IndexFieldNames := 'DTEMISSAO';
  btnConsultar.Click;

  uUtilPadrao.fnc_Busca_Nome_Filial;
  stat1.Panels[0].Text := vUsuario;
  stat1.Panels[1].Text := vFilial_Nome;
end;

procedure TfrmCadDocEntrada.prc_Consultar(ID: Integer);
begin
  fDMCadNotaServico.cdsNotaServico_Consulta.Close;
  fDMCadNotaServico.sdsNotaServico_Consulta.CommandText := fDMCadNotaServico.ctConsulta;
  if ID > 0 then
    fDMCadNotaServico.sdsNotaServico_Consulta.CommandText := fDMCadNotaServico.sdsNotaServico_Consulta.CommandText +
                                                           ' WHERE NS.ID = ' + IntToStr(ID)
  else
  begin
    fDMCadNotaServico.sdsNotaServico_Consulta.CommandText := fDMCadNotaServico.sdsNotaServico_Consulta.CommandText +
                                                           ' WHERE TIPO_ES = ' + QuotedStr('E');
    if not(RxDBLookupCombo1.Text = '') then
      fDMCadNotaServico.sdsNotaServico_Consulta.CommandText := fDMCadNotaServico.sdsNotaServico_Consulta.CommandText +
                                                             ' AND NS.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if Trim(edtSerie.Text) <> '' then
      fDMCadNotaServico.sdsNotaServico_Consulta.CommandText := fDMCadNotaServico.sdsNotaServico_Consulta.CommandText +
                                                           ' AND NS.SERIE = ' + QuotedStr(edtSerie.Text);
    if CurrencyEdit1.AsInteger > 0 then
      fDMCadNotaServico.sdsNotaServico_Consulta.CommandText := fDMCadNotaServico.sdsNotaServico_Consulta.CommandText +
                                                             ' AND NS.NUMNOTA = ' + CurrencyEdit1.Text;
    if NxDatePicker1.Text <> '' then
      fDMCadNotaServico.sdsNotaServico_Consulta.CommandText := fDMCadNotaServico.sdsNotaServico_Consulta.CommandText
                          + ' AND NS.DTEMISSAO_CAD >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
    if NxDatePicker2.Text <> '' then
      fDMCadNotaServico.sdsNotaServico_Consulta.CommandText := fDMCadNotaServico.sdsNotaServico_Consulta.CommandText
                          + ' AND NS.DTEMISSAO_CAD <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));
    if Trim(Edit2.Text) <> '' then
      fDMCadNotaServico.sdsNotaServico_Consulta.CommandText := fDMCadNotaServico.sdsNotaServico_Consulta.CommandText
                                      + ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')'
                                      + ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';
  end;
  fDMCadNotaServico.cdsNotaServico_Consulta.Open;
end;

procedure TfrmCadDocEntrada.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadDocEntrada.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadNotaServico.cdsNotaServico.State in [dsBrowse]) or not(fDMCadNotaServico.cdsNotaServico.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNotaServico.cdsNotaServico.CancelUpdates;

  prc_Habilitar_CamposNota;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadDocEntrada.btnAlterarClick(Sender: TObject);
var
  vCodAux: String;
begin
  fDMCadNotaServico.cdsParametros.Close;
  fDMCadNotaServico.cdsParametros.Open;

  if (fDMCadNotaServico.cdsNotaServico.IsEmpty) or not(fDMCadNotaServico.cdsNotaServico.Active) or (fDMCadNotaServico.cdsNotaServicoID.AsInteger < 1) then
    exit;

  fDMCadNotaServico.cdsNotaServico.Edit;

  prc_Posicionar_Cliente;

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_CamposNota;

  vCodAux := RxDBLookupCombo2.Text;
end;

procedure TfrmCadDocEntrada.btnConfirmarClick(Sender: TObject);
var
  vIDAux: Integer;
  cData: String;
  vAux, vAuxLim: Real;
begin
  if (fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger > 0) and
     (fDMCadNotaServico.cdsCondPgto.Locate('ID',fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger,([Locaseinsensitive]))) then
  begin
    if (fDMCadNotaServico.cdsCondPgtoENTRADA.AsString = 'N') then
      fDMCadNotaServico.cdsNotaServicoVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',0));
  end;
  if ((fDMCadNotaServico.cdsNotaServicoTIPO_PRAZO.AsString = 'V') or (StrToFloat(formatFloat('0.00',fDMCadNotaServico.cdsNotaServicoVLR_ENTRADA.AsFloat)) > 0)) and
     (fDMCadNotaServico.cdsNotaServicoID_BANCO.AsInteger <= 0) then
    fDMCadNotaServico.cdsNotaServicoID_BANCO.AsInteger := fDMCadNotaServico.cdsParametrosID_CONTA_PADRAO.AsInteger;
  if ((fDMCadNotaServico.cdsNotaServicoTIPO_PRAZO.AsString = 'V') or (StrToFloat(formatFloat('0.00',fDMCadNotaServico.cdsNotaServicoVLR_ENTRADA.AsFloat)) > 0)) and
     (fDMCadNotaServico.cdsNotaServicoID_TIPO_COBRANCA.AsInteger <= 0) then
    fDMCadNotaServico.cdsNotaServicoID_TIPO_COBRANCA.AsInteger := fDMCadNotaServico.cdsParametrosID_TIPO_COBRANCA_PADRAO.AsInteger;
  if (fDMCadNotaServico.cdsNotaServicoTIPO_PRAZO.AsString = 'V') and not(fDMCadNotaServico.cdsNotaServico_Parc.IsEmpty) then
  begin
    fDMCadNotaServico.cdsNotaServico_Parc.First;
    while not fDMCadNotaServico.cdsNotaServico_Parc.Eof do
      fDMCadNotaServico.cdsNotaServico_Parc.Delete;
  end;
  if ((fDMCadNotaServico.cdsNotaServicoTIPO_PRAZO.AsString = 'V') or (StrToFloat(formatFloat('0.00',fDMCadNotaServico.cdsNotaServicoVLR_ENTRADA.AsFloat)) > 0)) and
     (fDMCadNotaServico.cdsNotaServicoID_CONTA.AsInteger <= 0) then
    fDMCadNotaServico.cdsNotaServicoID_CONTA.AsInteger := fDMCadNotaServico.cdsParametrosID_CONTA_PADRAO.AsInteger;
  if ((fDMCadNotaServico.cdsNotaServicoTIPO_PRAZO.AsString = 'V') or (StrToFloat(formatFloat('0.00',fDMCadNotaServico.cdsNotaServicoVLR_ENTRADA.AsFloat)) > 0)) and
     (fDMCadNotaServico.cdsNotaServicoID_TIPO_COBRANCA.AsInteger <= 0) then
    fDMCadNotaServico.cdsNotaServicoID_TIPO_COBRANCA.AsInteger := fDMCadNotaServico.cdsParametrosID_TIPO_COBRANCA_PADRAO.AsInteger;

  if fDMCadNotaServico.fnc_Possui_Erro then
  begin
    MessageDlg(fDMCadNotaServico.vMSGNotaServico, mtError, [mbOk], 0);
    exit;
  end;

  vIDAux := fDMCadNotaServico.cdsNotaServicoID.AsInteger;
  fDMCadNotaServico.cdsNotaServicoSTATUS_RPS.AsString  := '1';

  fDMCadNotaServico.prc_Gravar;

  prc_Gravar_Registro;

  prc_Consultar(vIDAux);

  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadDocEntrada.prc_Posiciona_NotaFiscal;
begin
  fDMCadNotaServico.prc_Localizar(fDMCadNotaServico.cdsNotaServico_ConsultaID.AsInteger);
  fDMCadNotaServico.cdsNotaServico_Itens.Close;
  fDMCadNotaServico.cdsNotaServico_Itens.Open;
  vFilial      := fDMCadNotaServico.cdsNotaServicoFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadNotaServico.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadNotaServico.cdsFilialNOME_INTERNO.AsString;
  if fDMCadNotaServico.cdsClienteCODIGO.AsInteger <> fDMCadNotaServico.cdsNotaServicoID_CLIENTE.AsInteger then
    fDMCadNotaServico.cdsCliente.Locate('CODIGO',fDMCadNotaServico.cdsNotaServicoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  lblNome_Filial.Caption := vFilial_Nome;
end;

procedure TfrmCadDocEntrada.prc_Posicionar_Cliente;
begin
  if fDMCadNotaServico.cdsClienteCODIGO.AsInteger <> fDMCadNotaServico.cdsNotaServicoID_CLIENTE.AsInteger then
    fDMCadNotaServico.cdsCliente.Locate('CODIGO',fDMCadNotaServico.cdsNotaServicoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if (fDMCadNotaServico.cdsFilialID.AsInteger <> fDMCadNotaServico.cdsNotaServicoFILIAL.AsInteger) then
    fDMCadNotaServico.cdsFilial.Locate('ID',fDMCadNotaServico.cdsNotaServicoFILIAL.AsInteger,[loCaseInsensitive]);
end;

procedure TfrmCadDocEntrada.prc_Habilitar_CamposNota;
begin
  btnConfirmar.Enabled       := not(btnConfirmar.Enabled);
  btnAlterar.Enabled         := not(btnAlterar.Enabled);

  DBMemo1.ReadOnly           := not(DBMemo1.ReadOnly);
  pnlCadastro.Enabled        := not(pnlCadastro.Enabled);

  SMDBGrid_Dupl2.ReadOnly    := not(SMDBGrid_Dupl2.ReadOnly);

  btnGerarParcelas.Enabled   := not(btnGerarParcelas.Enabled);
  btnExcluirParcelas.Enabled := not(btnExcluirParcelas.Enabled);

  rxdbCondicaoPgto.ReadOnly   := not(rxdbCondicaoPgto.ReadOnly);
  rxdbConta_Orcamento.ReadOnly := not(rxdbConta_Orcamento.ReadOnly);
  rxdbConta.ReadOnly          := not(rxdbConta.ReadOnly);
  rxdbTipoCobranca.ReadOnly   := not(rxdbTipoCobranca.ReadOnly);

  dbVlr_Entrada.ReadOnly     := not(dbVlr_Entrada.ReadOnly);

  btnObs.Enabled             := not(btnObs.Enabled);
end;

procedure TfrmCadDocEntrada.SpeedButton1Click(Sender: TObject);
begin
  fDMCadNotaServico.cdsCliente.Close;
  fDMCadNotaServico.cdsCliente.Open;
end;

procedure TfrmCadDocEntrada.SpeedButton6Click(Sender: TObject);
begin
  fDMCadNotaServico.cdsCondPgto.Close;
  fDMCadNotaServico.cdsCondPgto.Open;
end;

procedure TfrmCadDocEntrada.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadNotaServico.cdsNotaServico);
end;

procedure TfrmCadDocEntrada.edtSerieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadDocEntrada.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadDocEntrada.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadDocEntrada.RxDBLookupCombo3Exit(Sender: TObject);
var
  vAux: Real;
begin
  if trim(RxDBLookupCombo3.Text) = '' then
    exit;

  if fDMCadNotaServico.cdsClienteCODIGO.AsInteger <> RxDBLookupCombo3.KeyValue then
    fDMCadNotaServico.cdsCliente.Locate('CODIGO',RxDBLookupCombo3.KeyValue,[loCaseInsensitive]);
end;

procedure TfrmCadDocEntrada.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadNotaServico.cdsNotaServicoID_CLIENTE.AsInteger;
    frmSel_Pessoa  := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'F';
    frmSel_Pessoa.ShowModal;
    fDMCadNotaServico.cdsNotaServicoID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBComboBox1.SetFocus;
  end;
end;

procedure TfrmCadDocEntrada.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadNotaServico.cdsNotaServico_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadDocEntrada.rxdbCondicaoPgtoChange(Sender: TObject);
begin
  if ((fDMCadNotaServico.cdsNotaServicoNUM_CONTRATO.AsInteger <= 0) or
     (fDMCadNotaServico.cdsNotaServicoNUM_CONTRATO.IsNull)) then
  begin
    prc_Opcao_Prazo;
    if fDMCadNotaServico.cdsNotaServico.State in [dsEdit,dsInsert] then
      btnGerarParcelasClick(Sender);
  end;
end;

procedure TfrmCadDocEntrada.prc_Opcao_Prazo;
var
  vMostrarAux: String;
begin
  vMostrarAux := 'N';
  if rxdbCondicaoPgto.Text <> '' then
  begin
    if fDMCadNotaServico.cdsCondPgto.Locate('ID',rxdbCondicaoPgto.KeyValue,[loCaseInsensitive]) then
      vMostrarAux := fDMCadNotaServico.cdsCondPgtoTIPO.AsString;
  end;
  btnGerarParcelas.Visible   := (vMostrarAux = 'P');
  btnExcluirParcelas.Visible := (vMostrarAux = 'P');

  Label62.Visible            := ((vMostrarAux = 'P') and (fDMCadNotaServico.cdsCondPgtoENTRADA.AsString = 'S'));
  dbVlr_Entrada.Visible      := ((vMostrarAux = 'P') and (fDMCadNotaServico.cdsCondPgtoENTRADA.AsString = 'S'));

  SMDBGrid_Dupl2.Visible     := (vMostrarAux = 'P');
  if fDMCadNotaServico.cdsNotaServico.State in [dsEdit,dsInsert] then
  begin
    fDMCadNotaServico.cdsNotaServicoTIPO_PRAZO.AsString := vMostrarAux;
    if vMostrarAux = 'P' then
      rxcbTipo_Prazo.ItemIndex := 0
    else
    if vMostrarAux = 'V' then
      rxcbTipo_Prazo.ItemIndex := 1
    else
    if vMostrarAux = 'N' then
      rxcbTipo_Prazo.ItemIndex := 2;
  end;
  rxdbTipoCobranca.Visible    := (fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger > 0);
  rxdbConta.Visible           := (fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger > 0);
  rxdbConta_Orcamento.Visible := ((fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger > 0) and (fDMCadNotaServico.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S'));
  Label74.Visible             := (fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger > 0);
  Label75.Visible             := (fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger > 0);
  Label44.Visible             := ((fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger > 0) and (fDMCadNotaServico.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S'));
end;

procedure TfrmCadDocEntrada.SMDBGrid1DblClick(Sender: TObject);
begin
  prc_Posiciona_NotaFiscal;
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadDocEntrada.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtSerie.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadDocEntrada.prc_Limpar_Edit_Consulta;
begin
  edtSerie.Clear;
  CurrencyEdit1.Clear;
  NxDatePicker1.Clear;
  NxDatePicker2.Clear;
  Edit2.Clear;
end;

procedure TfrmCadDocEntrada.RzPageControl1Change(Sender: TObject);
begin
  if fDMCadNotaServico.cdsNotaServico.State in [dsEdit, dsInsert] then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
      prc_Opcao_Prazo;
  end
  else
  if not(fDMCadNotaServico.cdsNotaServico.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadNotaServico.cdsNotaServico_Consulta.Active) or (fDMCadNotaServico.cdsNotaServico_Consulta.IsEmpty) or
         (fDMCadNotaServico.cdsNotaServico_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_NotaFiscal;
      prc_Opcao_Prazo;
      fDMCadNotaServico.prc_Abrir_Natureza;
    end;
  end;
end;

procedure TfrmCadDocEntrada.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    DBEdit8.ReadOnly := not(DBEdit8.ReadOnly);
end;

procedure TfrmCadDocEntrada.btnExcluirParcelasClick(Sender: TObject);
begin
  if (fDMCadNotaServico.cdsNotaServico_Parc.IsEmpty) or (fDMCadNotaServico.cdsNotaServico_ParcID.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNotaServico.cdsNotaServico_Parc.Delete;
end;

procedure TfrmCadDocEntrada.btnGerarParcelasClick(Sender: TObject);
begin
  if not fDMCadNotaServico.fnc_Gerar_NotaServico_Parc then
    MessageDlg(fDMCadNotaServico.vMsgErroParc, mtError, [mbOk], 0);
end;

procedure TfrmCadDocEntrada.dbVlr_EntradaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    if trim(dbVlr_Entrada.Text) <> '' then
      fDMCadNotaServico.cdsNotaServicoVLR_ENTRADA.AsFloat := StrToFloat(dbVlr_Entrada.Text)
    else
      fDMCadNotaServico.cdsNotaServicoVLR_ENTRADA.AsFloat := 0;
    btnGerarParcelasClick(Sender);
  end;
end;

procedure TfrmCadDocEntrada.rxdbConta_OrcamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadNotaServico.cdsNotaServicoID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ShowModal;
    fDMCadNotaServico.cdsNotaServicoID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos;
    FreeAndNil(frmSel_ContaOrc);
  end;
end;

procedure TfrmCadDocEntrada.rxdbCondicaoPgtoEnter(Sender: TObject);
begin
  fDMCadNotaServico.cdsCondPgto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadDocEntrada.rxdbTipoCobrancaEnter(Sender: TObject);
begin
  fDMCadNotaServico.cdsTipoCobranca.IndexFieldNames := 'NOME';
end;

procedure TfrmCadDocEntrada.rxdbConta_OrcamentoEnter(Sender: TObject);
begin
  fDMCadNotaServico.cdsContaOrcamento.IndexFieldNames := 'NOME_AUX';
end;

procedure TfrmCadDocEntrada.btnObsClick(Sender: TObject);
begin
  ffrmCadNotaServico_Obs := TfrmCadNotaServico_Obs.Create(self);
  ffrmCadNotaServico_Obs.fDMCadNotaServico := fDMCadNotaServico;
  ffrmCadNotaServico_Obs.ShowModal;
  FreeAndNil(ffrmCadNotaServico_Obs);
end;

procedure TfrmCadDocEntrada.RzGroupBox2Enter(Sender: TObject);
begin
  if fDMCadNotaServico.cdsNotaServico_Itens.State in [dsInsert,dsEdit] then
    exit;
  if ((fDMCadNotaServico.cdsNotaServico_Itens.RecordCount <= 0) or (fDMCadNotaServico.cdsNotaServico_ItensID.AsInteger <= 0)) then
    fDMCadNotaServico.prc_Inserir_Itens
  else
    fDMCadNotaServico.cdsNotaServico_Itens.Edit;
end;

procedure TfrmCadDocEntrada.RzGroupBox2Exit(Sender: TObject);
begin
  fDMCadNotaServico.cdsNotaServicoVLR_COFINS.AsFloat       := fDMCadNotaServico.cdsNotaServico_ItensVLR_COFINS.AsFloat;
  fDMCadNotaServico.cdsNotaServicoVLR_CSLL.AsFloat         := fDMCadNotaServico.cdsNotaServico_ItensVLR_COFINS.AsFloat;
  fDMCadNotaServico.cdsNotaServicoVLR_DUPLICATA.AsFloat    := fDMCadNotaServico.cdsNotaServico_ItensVLR_DUPLICATA.AsFloat;
  fDMCadNotaServico.cdsNotaServicoVLR_ICMS.AsFloat         := fDMCadNotaServico.cdsNotaServico_ItensVLR_ICMS.AsFloat;
  fDMCadNotaServico.cdsNotaServicoVLR_INSS.AsFloat         := fDMCadNotaServico.cdsNotaServico_ItensVLR_INSS.AsFloat;
  fDMCadNotaServico.cdsNotaServicoVLR_IR.AsFloat           := fDMCadNotaServico.cdsNotaServico_ItensVLR_IR.AsFloat;
  fDMCadNotaServico.cdsNotaServicoVLR_ISS_RETIDO.AsFloat   := fDMCadNotaServico.cdsNotaServico_ItensVLR_ISS_RETIDO.AsFloat;
  fDMCadNotaServico.cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat := fDMCadNotaServico.cdsNotaServico_ItensVLR_DUPLICATA.AsFloat;
  fDMCadNotaServico.cdsNotaServicoVLR_PIS.AsFloat          := fDMCadNotaServico.cdsNotaServico_ItensVLR_PIS.AsFloat;
  fDMCadNotaServico.cdsNotaServicoVLR_SERVICOS.AsFloat     := fDMCadNotaServico.cdsNotaServico_ItensVLR_TOTAL.AsFloat;
  fDMCadNotaServico.cdsNotaServicoVLR_TOTAL.AsFloat        := fDMCadNotaServico.cdsNotaServico_ItensVLR_TOTAL.AsFloat;
end;

procedure TfrmCadDocEntrada.DBEdit9Exit(Sender: TObject);
begin
  prc_Calcular_Total;
end;

procedure TfrmCadDocEntrada.prc_Calcular_Total;
begin
  fDMCadNotaServico.cdsNotaServico_ItensVLR_TOTAL.AsFloat := fDMCadNotaServico.cdsNotaServico_ItensQTD.AsFloat *
                                                             fDMCadNotaServico.cdsNotaServico_ItensVLR_UNITARIO.AsFloat;
end;

procedure TfrmCadDocEntrada.DBEdit10Exit(Sender: TObject);
begin
  prc_Calcular_Total;
  fDMCadNotaServico.cdsNotaServico_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaServico.cdsNotaServico_ItensVLR_TOTAL.AsFloat;
end;

end.
