unit UCadContrato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadOS, RzDTP, DBGrids,
  DB, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, Menus, RXDBCtrl,
  RzEdit, RzDBEdit, RzButton, UEscolhe_Filial, UCBase, RzPanel, dbXPress, NxCollection, StrUtils, DateUtils, ComCtrls, NxEdit,
  UCadContrato_Servico_Int, RzDBDTP;

type
  TfrmCadContrato = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    lblCliente: TLabel;
    Edit2: TEdit;
    StaticText1: TStaticText;
    lblNumNota: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel11: TPanel;
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    TabSheet3: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    DBMemo1: TDBMemo;
    RzGroupBox2: TRzGroupBox;
    DBMemo2: TDBMemo;
    TabSheet2: TRzTabSheet;
    RzGroupBox4: TRzGroupBox;
    RzGroupBox5: TRzGroupBox;
    Label11: TLabel;
    DBDateEdit5: TDBDateEdit;
    Label13: TLabel;
    DBMemo3: TDBMemo;
    UCControls1: TUCControls;
    pnlCertificado: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    DBDateEdit4: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    Shape1: TShape;
    Label15: TLabel;
    ckAtivo: TCheckBox;
    Shape2: TShape;
    Label19: TLabel;
    RzPageControl3: TRzPageControl;
    TabSheet4: TRzTabSheet;
    TS_Relacao_Prod: TRzTabSheet;
    Panel4: TPanel;
    btnInserir_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    SMDBGrid3: TSMDBGrid;
    Panel2: TPanel;
    btnInserirMat: TNxButton;
    btnExcluirMat: TNxButton;
    btnAlterarMat: TNxButton;
    btnImprimir: TNxButton;
    SMDBGrid2: TSMDBGrid;
    Panel3: TPanel;
    RzGroupBox7: TRzGroupBox;
    pnlCobranca: TPanel;
    Label9: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    DBEdit3: TDBEdit;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    DBCheckBox2: TDBCheckBox;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RzGroupBox3: TRzGroupBox;
    pnlRetencao: TPanel;
    Label33: TLabel;
    Label32: TLabel;
    Label7: TLabel;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit2: TDBEdit;
    gbxVendedor: TRzGroupBox;
    pnlVendedor: TPanel;
    Label82: TLabel;
    SpeedButton5: TSpeedButton;
    Label83: TLabel;
    DBEdit53: TDBEdit;
    RxDBLookupCombo9: TRxDBLookupCombo;
    pnlCliente: TPanel;
    Label2: TLabel;
    Label18: TLabel;
    Label8: TLabel;
    Label28: TLabel;
    Label34: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    Label24: TLabel;
    DBDateEdit1: TDBDateEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBEdit18: TDBEdit;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    Label22: TLabel;
    Label1: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    pnlNota: TPanel;
    Label16: TLabel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    TS_Consumo: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    TS_Ajustes: TRzTabSheet;
    SMDBGrid5: TSMDBGrid;
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
    procedure pnlClienteExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
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
    procedure Panel4Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Panel5Exit(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure RxDBLookupCombo10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnInserirMatClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    vTipoNotaAnt: String;
    vID_Cliente_Ant: Integer;

    fDMCadOS: TDMCadOS;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmCadContrato_Servico_Int: TfrmCadContrato_Servico_Int;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);
    procedure prc_Imprimir_Fast;

    procedure prc_Posiciona_OS;
    procedure prc_Posicionar_Cliente;

    procedure prc_Habilitar_Campos;

    function fnc_Verifica_Registro: Boolean;
    function fnc_Cancelar: Boolean;

    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Opcao_Habilita;
  public
    { Public declarations }
  end;

var
  frmCadContrato: TfrmCadContrato;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, UCadContrato_Material, USel_Pessoa, USel_ContaOrc;

{$R *.dfm}

procedure TfrmCadContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMCadOS.cdsProdutoCons.Close;
  Action := Cafree;
end;

procedure TfrmCadContrato.btnExcluirClick(Sender: TObject);
begin
  if not fnc_Verifica_Registro then
    exit;

  prc_Posiciona_OS;

  if fDMCadOS.cdsOS.IsEmpty then
    exit;

  if fDMCadOS.qParametros_SerGERAR_DUPLICATA_CONTRATO.AsString = 'S' then
  begin
    if fDMCadOS.fnc_Verifica_Dupl(fDMCadOS.cdsOSID.AsInteger) then
    begin
      MessageDlg('*** Contrato não poderá ser excluído pois já existe duplicata com nosso número!', mtInformation, [mbOk], 0);
      exit;
    end;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadContrato.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadContrato.prc_Excluir_Registro;
begin
  fDMCadOS.prc_Excluir;
end;

procedure TfrmCadContrato.prc_Gravar_Registro;
var
  vIDAux: Integer;
  ID: TTransactionDesc;
  vVlrTotal: Real;
  vGerarDupl: String;
begin
  if (fDMCadOS.qParametrosUSA_ANO_CONTRATO.AsString = 'S') and (fDMCadOS.cdsOSANO_CONTRATO.AsInteger < 2000) then
  begin
    MessageDlg('*** Ano do contrato não informado', mtError, [mbOk], 0);
    exit;
  end;
  if (fDMCadOS.cdsOSNUM_CONTRATO.AsInteger <= 0) and (fDMCadOS.qParametrosGERAR_NUM_AUT_CONTRATO.AsString <> 'N') then
    fDMCadOS.cdsOSNUM_CONTRATO.AsInteger := fDMCadOS.fnc_Busca_Num_Contrato(fDMCadOS.cdsOSANO_CONTRATO.AsInteger,'C');
  if fDMCadOS.cdsClienteCODIGO.AsInteger <> fDMCadOS.cdsOSID_CLIENTE.AsInteger then
    fDMCadOS.cdsCliente.Locate('CODIGO',fDMCadOS.cdsOSID_CLIENTE.AsInteger,[loCaseInsensitive]);
  vVlrTotal := 0;
  fDMCadOS.cdsOS_Servico_Int.First;
  while not fDMCadOS.cdsOS_Servico_Int.Eof do
  begin
    if fDMCadOS.cdsOS_Servico_IntSOMAR_DIMINUIR.AsString = 'S' then
      vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal + fDMCadOS.cdsOS_Servico_IntVLR_TOTAL.AsFloat))
    else
      vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal - fDMCadOS.cdsOS_Servico_IntVLR_TOTAL.AsFloat));
    fDMCadOS.cdsOS_Servico_Int.Next;
  end;
  fDMCadOS.cdsOSVLR_SERVICO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrTotal));
  fDMCadOS.cdsOSVLR_TOTAL.AsFloat   := StrToFloat(FormatFloat('0.00',vVlrTotal));

  if (fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger <= 0) and (fDMCadOS.cdsOSTIPO_REG.AsString <> 'S') and (fDMCadOS.qParametros_SerTIPO_COBRANCA_NFSE.AsString = 'C') then
  begin
    if MessageDlg('Dia do vencimento não informado, Confirma?',mtConfirmation,[mbYes,mbNo],0) = mrNO then
      exit;
  end;

  vIDAux := fDMCadOS.cdsOSID.AsInteger;
  vGerarDupl := 'N';
  if fDMCadOS.qParametros_SerGERAR_DUPLICATA_CONTRATO.AsString = 'S' then
  begin
    if MessageDlg('Gerar duplicata?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      vGerarDupl := 'S';
      if fDMCadOS.fnc_Verifica_Dupl(fDMCadOS.cdsOSID.AsInteger) then
      begin
        MessageDlg('*** Duplicatas não vão ser geradas, pois já existe duplicata com nosso número!', mtInformation, [mbOk], 0);
        vGerarDupl := 'N';
      end;
    end;
  end;

  fDMCadOS.prc_Gravar(vGerarDupl);
  if fDMCadOS.cdsOS.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadOS.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;

  TS_Consulta.TabEnabled    := True;
  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Consulta;

  prc_Consultar(vIDAux);
end;

procedure TfrmCadContrato.prc_Inserir_Registro;
begin
  fDMCadOS.qParametros.Close;
  fDMCadOS.qParametros.Open;
  if fDMCadOS.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadOS.cdsFilial.Last;
    vFilial      := fDMCadOS.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadOS.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDMCadOS.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  fDMCadOS.prc_Abrir_Natureza;
  fDMCadOS.prc_Abrir_Servico;

  fDMCadOS.prc_Inserir;
  lblNome_Filial.Caption := vFilial_Nome;

  if fDMCadOS.cdsOS.State in [dsBrowse] then
    Exit;

  prc_Habilitar_Campos;

  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;

  fDMCadOS.cdsOSFILIAL.AsInteger  := vFilial;
  fDMCadOS.cdsOSTIPO_REG.AsString := 'C';

  if fDMCadOS.qParametrosCONTRATO_CONSUMO.AsString = 'S' then
    fDMCadOS.cdsOSTIPO_REG.AsString := 'U';

  vTipoNotaAnt := 'S';
  if fDMCadOS.cdsFilialID_SERVICO_PAD.AsInteger > 0 then
    fDMCadOS.cdsOSID_SERVICO.AsInteger := fDMCadOS.cdsFilialID_SERVICO_PAD.AsInteger;
  fDMCadOS.cdsOSPERC_INSS.AsFloat := fDMCadOS.cdsFilialPERC_INSS.AsFloat;
  fDMCadOS.cdsOSPERC_IR.AsFloat   := fDMCadOS.cdsFilialPERC_IR.AsFloat;
  fDMCadOS.cdsOSID_ATIVIDADE_CID.AsInteger := fDMCadOS.cdsFilialID_ATIVIDADE_CID.AsInteger;

  RxDBLookupCombo3.SetFocus;
  prc_Opcao_Habilita;
end;

procedure TfrmCadContrato.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMCadOS := TDMCadOS.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadOS);
  fDMCadOS.cdsProdutoCons.Open;
  fDMCadOS.prc_Abrir_cdsCliente;
  gbxVendedor.Visible := ((fDMCadOS.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadOS.qParametrosTIPO_COMISSAO_NFSE.AsString <> 'I'));
  if fDMCadOS.qParametrosESCOLA.AsString = 'S' then
  begin
    gbxVendedor.Caption := ' Professor ';
    Label82.Caption     := 'Professor:';
  end;
  TS_Relacao_Prod.TabVisible := (fDMCadOS.qParametros_GerUSA_PONTOS_LOCACAO.AsString <> 'S');
  TS_Consumo.TabVisible      := (fDMCadOS.qParametros_GerUSA_PONTOS_LOCACAO.AsString <> 'S');
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i-1].FieldName = 'ANO_CONTRATO') and (fDMCadOS.qParametrosUSA_ANO_CONTRATO.AsString <> 'S') then
      SMDBGrid1.Columns[i-1].Visible := False;
    if (SMDBGrid1.Columns[i-1].FieldName = 'DTAJUSTE') and (fDMCadOS.qParametros_SerUSA_AJUSTE_PRECO.AsString <> 'S') then
      SMDBGrid1.Columns[i-1].Visible := False;
  end;
  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'ID_VENDEDOR') or
       (SMDBGrid2.Columns[i].FieldName = 'PERC_COMISSAO') or
       (SMDBGrid2.Columns[i].FieldName = 'NOME_VENDEDOR') then
    begin
      SMDBGrid2.Columns[i].Visible := not(gbxVendedor.Visible);
      if not(gbxVendedor.Visible) and (fDMCadOS.qParametrosESCOLA.AsString = 'S') then
      begin
        if (SMDBGrid2.Columns[i].FieldName = 'ID_VENDEDOR') then
          SMDBGrid2.Columns[i].Title.Caption := 'ID Professor'
        else
        if (SMDBGrid2.Columns[i].FieldName = 'NOME_VENDEDOR') then
          SMDBGrid2.Columns[i].Title.Caption := 'Nome Professor';
      end;
    end;
  end;
  DBEdit1.ReadOnly := (fDMCadOS.qParametrosGERAR_NUM_AUT_CONTRATO.AsString <> 'N');
  DBEdit1.TabStop  := not(DBEdit1.ReadOnly);
  if (fDMCadOS.qParametrosGERAR_NUM_AUT_CONTRATO.AsString <> 'N') then
    DBEdit1.Color := clBtnFace
  else
    DBEdit1.Color := clWindow;
  Label24.Visible := (fDMCadOS.qParametrosUSA_ANO_CONTRATO.AsString = 'S');
  DBEdit4.Visible := (fDMCadOS.qParametrosUSA_ANO_CONTRATO.AsString = 'S');
  TS_Ajustes.TabVisible := (fDMCadOS.qParametros_SerUSA_AJUSTE_PRECO.AsString = 'S');
end;

procedure TfrmCadContrato.prc_Consultar(ID: Integer);
begin
  fDMCadOS.cdsOS_Consulta.Close;
  fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.ctConsulta;
  if ID > 0 then
    fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                                           ' WHERE OS.ID = ' + IntToStr(ID)
  else
  begin
    fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                           ' WHERE ((TIPO_REG = ''C'') OR (TIPO_REG = ''U''))';
    if trim(RxDBLookupCombo1.Text) <> '' then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                             ' AND OS.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if CurrencyEdit1.AsInteger > 0 then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                             ' AND OS.NUM_CONTRATO = ' + CurrencyEdit1.Text;
    if Trim(Edit2.Text) <> '' then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                             ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')' +
                                             ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';
    if ckAtivo.Checked then
    begin
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText + 'and (OS.DTCONTRATO_INI <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + ')'
                                           + ' AND ((OS.DTCONTRATO_FIN >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + ')'
                                           + '  OR (OS.DTCONTRATO_FIN IS NULL))'
                                           + ' AND ((OS.DTENCERRAMENTO IS NULL) or (OS.DTENCERRAMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + '))';
    end;
  end;
  fDMCadOS.cdsOS_Consulta.Open;
end;

procedure TfrmCadContrato.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadContrato.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadOS.cdsOS.State in [dsBrowse]) or not(fDMCadOS.cdsOS.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOS.cdsOS.CancelUpdates;

  prc_Habilitar_Campos;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadContrato.btnAlterarClick(Sender: TObject);
var
  vCodAux: String;
begin
  if (fDMCadOS.cdsOS.IsEmpty) or not(fDMCadOS.cdsOS.Active) or (fDMCadOS.cdsOSID.AsInteger < 1) then
    exit;

  fDMCadOS.qParametros.Close;
  fDMCadOS.qParametros.Open;

  fDMCadOS.cdsOS.Edit;

  prc_Posicionar_Cliente;

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_Campos;

  vCodAux := RxDBLookupCombo2.Text;
end;

procedure TfrmCadContrato.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadContrato.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadOS);
end;

procedure TfrmCadContrato.prc_Posiciona_OS;
begin
  fDMCadOS.prc_Localizar(fDMCadOS.cdsOS_ConsultaID.AsInteger);
  fDMCadOS.cdsOS_Servico_Int.Close;
  fDMCadOS.cdsOS_Servico_Int.Open;
  fDMCadOS.cdsOS_Servico_Hist.Close;
  fDMCadOS.cdsOS_Servico_Hist.Open;

  vFilial      := fDMCadOS.cdsOSFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadOS.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadOS.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;
end;

function TfrmCadContrato.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadOS.cdsOS_Consulta.Active) or (fDMCadOS.cdsOS_Consulta.IsEmpty) or
        (fDMCadOS.cdsOS_ConsultaID.AsInteger < 1) then
    exit;
  Result := True;
end;

procedure TfrmCadContrato.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadOS.cdsOS.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadOS.cdsOS_Consulta.Active) or (fDMCadOS.cdsOS_Consulta.IsEmpty) or (fDMCadOS.cdsOS_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_OS;
      fDMCadOS.prc_Abrir_Natureza;
      prc_Opcao_Habilita;
    end;
  end;
end;

procedure TfrmCadContrato.pnlClienteExit(Sender: TObject);
begin
  prc_Posicionar_Cliente;
end;

procedure TfrmCadContrato.prc_Posicionar_Cliente;
begin
  if fDMCadOS.cdsClienteCODIGO.AsInteger <> fDMCadOS.cdsOSID_CLIENTE.AsInteger then
    fDMCadOS.cdsCliente.Locate('CODIGO',fDMCadOS.cdsOSID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if (fDMCadOS.cdsFilialID.AsInteger <> fDMCadOS.cdsOSFILIAL.AsInteger) then
    fDMCadOS.cdsFilial.Locate('ID',fDMCadOS.cdsOSFILIAL.AsInteger,[loCaseInsensitive]);
end;

procedure TfrmCadContrato.prc_Habilitar_Campos;
begin
  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  btnAlterar.Enabled       := not(btnAlterar.Enabled);
  DBMemo1.ReadOnly         := not(DBMemo1.ReadOnly);
  pnlCliente.Enabled       := not(pnlCliente.Enabled);
  pnlCertificado.Enabled   := not(pnlCertificado.Enabled);
  pnlCobranca.Enabled      := not(pnlCobranca.Enabled);
  pnlVendedor.Enabled      := not(pnlVendedor.Enabled);
  pnlRetencao.Enabled      := not(pnlRetencao.Enabled);
  DBDateEdit5.ReadOnly     := not(DBDateEdit5.ReadOnly);
  DBMemo3.ReadOnly         := not(DBMemo3.ReadOnly);
  btnInserir_Itens.Enabled := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled := not(btnExcluir_Itens.Enabled);

  btnInserirMat.Enabled := not(btnInserirMat.Enabled);
  btnInserirMat.Enabled := not(btnInserirMat.Enabled);
  btnInserirMat.Enabled := not(btnInserirMat.Enabled);
end;

function TfrmCadContrato.fnc_Cancelar: Boolean;
begin
  Result := True;
  fDMCadOS.vMsgOS := '';

  if trim(fDMCadOS.vMsgOS) <> '' then
    Result := False;
end;

procedure TfrmCadContrato.SpeedButton1Click(Sender: TObject);
begin
  fDMCadOS.cdsCliente.Close;
  fDMCadOS.cdsCliente.Open;
end;

procedure TfrmCadContrato.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadOS.cdsOS);
end;

procedure TfrmCadContrato.edtSerieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadContrato.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadContrato.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadContrato.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if fDMCadOS.cdsClienteID_SERVICO.AsInteger <> fDMCadOS.cdsFilialID_SERVICO_PAD.AsInteger then
    fDMCadOS.prc_Abrir_Servico;
  if fDMCadOS.cdsClienteID_SERVICO.AsInteger > 0 then
    fDMCadOS.cdsOSID_SERVICO.AsInteger := fDMCadOS.cdsClienteID_SERVICO.AsInteger;
  if not(fDMCadOS.cdsClienteRETEM_ISS.IsNull) then
    fDMCadOS.cdsOSRETEM_ISS.AsString      := fDMCadOS.cdsClienteRETEM_ISS.AsString;
  if not(fDMCadOS.cdsClienteRETEM_CSLL.IsNull) then
    fDMCadOS.cdsOSRETEM_CSLL.AsString      := fDMCadOS.cdsClienteRETEM_CSLL.AsString;
  if not(fDMCadOS.cdsClienteRETEM_INSS.IsNull) then
    fDMCadOS.cdsOSRETEM_INSS.AsString      := fDMCadOS.cdsClienteRETEM_INSS.AsString;
  if not(fDMCadOS.cdsClienteRETEM_PISCOFINS.IsNull) then
    fDMCadOS.cdsOSRETEM_PISCOFINS.AsString := fDMCadOS.cdsClienteRETEM_PISCOFINS.AsString;
  if fDMCadOS.cdsClienteID_CONTABOLETO.AsInteger > 0 then
    fDMCadOS.cdsOSID_CONTA.AsInteger := fDMCadOS.cdsClienteID_CONTABOLETO.AsInteger;
  if fDMCadOS.cdsClienteID_TIPOCOBRANCA.AsInteger > 0 then
    fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger := fDMCadOS.cdsClienteID_TIPOCOBRANCA.AsInteger;
  if fDMCadOS.cdsClienteID_CONDPGTO.AsInteger > 0 then
    fDMCadOS.cdsOSID_CONDPGTO.AsInteger := fDMCadOS.cdsClienteID_CONDPGTO.AsInteger;
  //Vendedor
  if (fDMCadOS.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadOS.qParametrosTIPO_COMISSAO_NFSE.AsString <> 'I') then
  begin
    if fDMCadOS.cdsClienteID_VENDEDOR.AsInteger > 0 then
      fDMCadOS.cdsOSID_VENDEDOR.AsInteger := fDMCadOS.cdsClienteID_VENDEDOR.AsInteger;
    if StrToFloat(FormatFloat('0.00',fDMCadOS.cdsClientePERC_COMISSAO.AsFloat)) > 0 then
      fDMCadOS.cdsOSPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsClientePERC_COMISSAO.AsFloat))
    else
    if (fDMCadOS.cdsOSID_VENDEDOR.AsInteger > 0) and (fDMCadOS.cdsVendedor.Locate('CODIGO',fDMCadOS.cdsOSID_VENDEDOR.AsInteger,[loCaseInsensitive])) then
    begin
      if StrToFloat(FormatFloat('0.00',fDMCadOS.cdsVendedorPERC_COMISSAO_VEND.AsFloat)) > 0 then
        fDMCadOS.cdsOSPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsVendedorPERC_COMISSAO_VEND.AsFloat));
    end;
  end;
end;

procedure TfrmCadContrato.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadOS.cdsOSID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadOS.cdsOSID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end;
end;

procedure TfrmCadContrato.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadOS.cdsOS_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadContrato.Panel4Enter(Sender: TObject);
begin
  vID_Cliente_Ant := fDMCadOS.cdsOSID_CLIENTE.AsInteger;
end;

procedure TfrmCadContrato.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMCadOS.cdsOS_Consulta.Active) or (fDMCadOS.cdsOS_Consulta.IsEmpty) then
    exit;
  if ((fDMCadOS.cdsOS_ConsultaDTENCERRAMENTO.AsDateTime > 10) and (fDMCadOS.cdsOS_ConsultaDTENCERRAMENTO.AsDateTime < Date)) or
     ((fDMCadOS.cdsOS_ConsultaDTCONTRATO_FIN.AsDateTime > 10) and (fDMCadOS.cdsOS_ConsultaDTCONTRATO_FIN.AsDateTime < Date)) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if fDMCadOS.cdsOS_ConsultaDTCONTRATO_INI.AsDateTime > Date then
    Background  := clYellow;
end;

procedure TfrmCadContrato.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadContrato.Panel5Exit(Sender: TObject);
var
  vAux: Real;
begin
  if RxDBLookupCombo2.Text <> '' then
  begin
    if trim(fDMCadOS.cdsServicoCNAE.AsString) <> '' then
      fDMCadOS.cdsOSCNAE.AsString := fDMCadOS.cdsServicoCNAE.AsString;
    if fDMCadOS.cdsServicoID_ATIVIDADE_CID.AsInteger > 0 then
      fDMCadOS.cdsOSID_ATIVIDADE_CID.AsInteger := fDMCadOS.cdsServicoID_ATIVIDADE_CID.AsInteger
    else
    if fDMCadOS.cdsFilialID_ATIVIDADE_CID.AsInteger > 0 then
      fDMCadOS.cdsOSID_ATIVIDADE_CID.AsInteger := fDMCadOS.cdsFilialID_ATIVIDADE_CID.AsInteger;
    if (fDMCadOS.cdsFilialSIMPLES.AsString = 'S') and (StrToFloat(FormatFloat('0.00000',fDMCadOS.cdsFilialPERC_ISS_SIMPLES.AsFloat)) > 0) then
      fDMCadOS.cdsOSPERC_ISS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsFilialPERC_ISS_SIMPLES.AsFloat))
    else
    begin
      if StrToFloat(FormatFloat('0.00',fDMCadOS.cdsServicoPERC_ISS.AsFloat)) > 0 then
        fDMCadOS.cdsOSPERC_ISS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsServicoPERC_ISS.AsFloat));
      vAux := fDMCadOS.fnc_Buscar_Pessoa_Servico(fDMCadOS.cdsOSID_CLIENTE.AsInteger,fDMCadOS.cdsOSID_SERVICO.AsInteger);
      if StrToFloat(FormatFloat('0.00',vAux)) > 0 then
        fDMCadOS.cdsOSPERC_ISS.AsFloat := vAux;
    end;
  end;
end;

procedure TfrmCadContrato.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    CurrencyEdit1.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadContrato.prc_Limpar_Edit_Consulta;
begin
  CurrencyEdit1.Clear;
  Edit2.Clear;
end;

procedure TfrmCadContrato.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadContrato.btnInserir_ItensClick(Sender: TObject);
begin
  if fDMCadOS.cdsFilialIMPRESSAO_MATRICIAL.AsString = 'S' then
    if fDMCadOS.cdsOS_Servico_Int.RecordCount > 3 then
    begin
      ShowMessage('Limitado a 4 serviços por nota!');
      Exit;
    end;
  fDMCadOS.prc_Inserir_Servico_Int;
  ffrmCadContrato_Servico_Int := TfrmCadContrato_Servico_Int.Create(self);
  ffrmCadContrato_Servico_Int.fDMCadOS := fDMCadOS;
  ffrmCadContrato_Servico_Int.ShowModal;
  FreeAndNil(ffrmCadContrato_Servico_Int);
end;

procedure TfrmCadContrato.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDMCadOS.cdsOS_Servico_Int.IsEmpty) or (fDMCadOS.cdsOS_Servico_IntITEM.AsInteger <= 0) then
    exit;

  fDMCadOS.cdsOS_Servico_Int.Edit;

  ffrmCadContrato_Servico_Int := TfrmCadContrato_Servico_Int.Create(self);
  ffrmCadContrato_Servico_Int.fDMCadOS := fDMCadOS;
  ffrmCadContrato_Servico_Int.ShowModal;
  FreeAndNil(ffrmCadContrato_Servico_Int);
end;

procedure TfrmCadContrato.btnExcluir_ItensClick(Sender: TObject);
begin
  if not(fDMCadOS.cdsOS_Servico_Int.Active) and (fDMCadOS.cdsOS_Servico_Int.IsEmpty) or (fDMCadOS.cdsOS_Servico_IntITEM.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOS.prc_Excluir_Servico_Int;
end;

procedure TfrmCadContrato.SpeedButton5Click(Sender: TObject);
begin
  fDMCadOS.cdsVendedor.Close;
  fDMCadOS.cdsVendedor.Open;
end;

procedure TfrmCadContrato.RxDBLookupCombo10KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadOS.cdsOSID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ShowModal;
    fDMCadOS.cdsOSID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos;
    FreeAndNil(frmSel_ContaOrc);
  end;
end;

procedure TfrmCadContrato.btnInserirMatClick(Sender: TObject);
begin
  fDMCadOS.prc_Inserir_Material;
  frmCadContratoMaterial := TfrmCadContratoMaterial.Create(self);
  frmCadContratoMaterial.fDMCadOS := fDMCadOS;
  frmCadContratoMaterial.ShowModal;
  FreeAndNil(frmCadContratoMaterial);
end;

procedure TfrmCadContrato.btnImprimirClick(Sender: TObject);
var
  arquivo, vPasta: String;
  WinWord, Docs, Doc: Variant;
  vNumContrato: String;
  vNumContrato_Arq: String;
begin
 // Pega o nome do arquivo...
  vTipo_Config_Email := 3;
  vPasta   := ExtractFilePath(Application.ExeName) + 'Contratos\';

  vNumContrato_Arq := fDMCadOS.cdsOS_ConsultaNUM_CONTRATO.AsString;
  if (fDMCadOS.cdsOS_ConsultaANO_CONTRATO.AsInteger > 0) and (fDMCadOS.cdsOS_ConsultaANO_CONTRATO.AsInteger < 9999) then
    vNumContrato_Arq := fDMCadOS.cdsOS_ConsultaANO_CONTRATO.AsString + '_' + vNumContrato_Arq;

  arquivo := vPasta + fDMCadOS.cdsOS_ConsultaNOME_CLIENTE.AsString + '_' + vNumContrato_Arq + '.doc';

  if not (fileExists(arquivo)) then
  begin
    arquivo := ExtractFilePath(Application.ExeName) + 'Contrato.doc';
    if not (fileExists(arquivo)) then
    begin
      ShowMessage('Arquivo de modelo ' + arquivo + ' não localizado!');
      Exit;
    end;
  end;

  if not DirectoryExists(ExtractFilePath(Application.ExeName)+ 'Contratos') then
  begin
    ShowMessage('Pasta ' + vPasta + ' deve ser criada!');
    Exit;
  end;

  // Cria objeto principal de controle
  //aqui 18/02/2015
  //WinWord := CreateOleObject('Word.Application');

  //Não Mostra o Word
  WinWord.Visible := False;

  // Pega uma interface para o objeto que manipula documentos
  Docs := WinWord.Documents;

  // Abre um Documento
  Doc := Docs.Open(arquivo);

  //Substitui texto via "name parameters"
  vNumContrato := fDMCadOS.cdsOS_ConsultaNUM_CONTRATO.AsString;
  if (fDMCadOS.cdsOS_ConsultaANO_CONTRATO.AsInteger > 0) and (fDMCadOS.cdsOS_ConsultaANO_CONTRATO.AsInteger < 9999) then
    vNumContrato := fDMCadOS.cdsOS_ConsultaANO_CONTRATO.AsString + '/' + vNumContrato;

  //Nome nossa empresa
  Doc.Content.Find.Execute(FindText := '<contrato_num>', ReplaceWith       := vNumContrato, Replace := 2);
  Doc.Content.Find.Execute(FindText := '<contratante>',  ReplaceWith       := fDMCadOS.cdsOS_ConsultaNOME_CLIENTE.AsString, Replace := 2);
  Doc.Content.Find.Execute(FindText := '<contratante_cnpj>', ReplaceWith   := fDMCadOS.cdsOS_ConsultaCNPJ_CPF.AsString, Replace := 2);
  Doc.Content.Find.Execute(FindText := '<contratante_endereco>', ReplaceWith := fDMCadOS.cdsOS_ConsultaENDERECO.AsString + ', ' +
                                                                                fDMCadOS.cdsOS_ConsultaNUM_END.AsString + ', ' +
                                                                                fDMCadOS.cdsOS_ConsultaCOMPLEMENTO_END.AsString, Replace := 2);
  Doc.Content.Find.Execute(FindText := '<contratante_bairro>', ReplaceWith := fDMCadOS.cdsOS_ConsultaBAIRRO.AsString, Replace := 2);
  Doc.Content.Find.Execute(FindText := '<contratante_uf>', ReplaceWith     := fDMCadOS.cdsOS_ConsultaUF.AsString, Replace := 2);
  //aqui ver com o juca
  Doc.Content.Find.Execute(FindText := '<contratante_cep>', ReplaceWith    := fDMCadOS.cdsOS_ConsultaNUM_CONTRATO.AsString, Replace := 2);
  Doc.Content.Find.Execute(FindText := '<preco>', ReplaceWith              := FormatFloat('#,##0.00',fDMCadOS.cdsOS_ConsultaVLR_TOTAL.AsFloat), Replace := 2);
  //aqui 18/02/2015
  //ValorPorExtenso1.Valor := fDMCadOS.cdsOS_ConsultaVLR_TOTAL.AsFloat;
  Doc.Content.Find.Execute(FindText := '<contrato_comarca>', ReplaceWith   := fDMCadOS.cdsOS_ConsultaCOMARCA.AsString, Replace := 2);
  Doc.Content.Find.Execute(FindText := '<contrato_data>', ReplaceWith      := fDMCadOS.cdsOS_ConsultaDTCONTRATO_INI.AsString, Replace := 2);

  //Salva doc
  arquivo := vPasta + fDMCadOS.cdsOS_ConsultaNOME_CLIENTE.AsString + '_' +
             vNumContrato_Arq + '.doc';
  Doc.SaveAs(arquivo);

  // Fecha o Word
  WinWord.Quit;

  Sleep(2500);
   //aqui 18/02/2015
  //if (fileExists(arquivo)) then
  //  ShellExecute(Handle, nil, Pchar(arquivo), nil, nil, SW_SHOWNORMAL);
end;


procedure TfrmCadContrato.prc_Imprimir_Fast;
var
  vArq: String;
begin
///  prc_Posiciona_Imp;
{  fDMCadOS.cdsOSImp.Close;
  fDMCadOS.sdsOSImp.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOS.cdsOSImp.Open;

  if fDMCadOrdemServico.cdsFilialRelatorios.Locate('TIPO',5,([loCaseInsensitive])) then //tipo 5 = Contrato
  begin
    vArq := fDMCadOrdemServico.cdsFilialRelatoriosCAMINHO.AsString;
    if FileExists(vArq) then
      fDMCadOrdemServico.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatorio não localizado! ' + vArq);
      Exit;
    end;
    fDMCadOrdemServico.frxReport1.ShowReport;
  end
  else
  begin
    ShowMessage('Relatório não definido no cadastro da empresa (filial)!');
  end;}
end;

procedure TfrmCadContrato.prc_Opcao_Habilita;
begin
  Label8.Visible           := (fDMCadOS.cdsFilialNOME_PROVEDOR.AsString <> 'CAMPO BOM');
  RxDBLookupCombo4.Visible := (fDMCadOS.cdsFilialNOME_PROVEDOR.AsString <> 'CAMPO BOM');

  Label34.Visible          := (fDMCadOS.cdsFilialNOME_PROVEDOR.AsString <> 'CAMPO BOM');
  RxDBLookupCombo5.Visible := (fDMCadOS.cdsFilialNOME_PROVEDOR.AsString <> 'CAMPO BOM');
end;

end.
