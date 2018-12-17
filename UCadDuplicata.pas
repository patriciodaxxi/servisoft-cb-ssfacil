unit UCadDuplicata;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadDuplicata, DBGrids,
  ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, RXDBCtrl, RzChkLst, RzPanel,
  UEscolhe_Filial, URelDuplicata, UCadDuplicata_Pag, UCadDuplicata_Pag2, Variants, UCadDuplicata_Pag_Sel, NxEdit, Menus,
  NxCollection, StrUtils, DateUtils, UCadDuplicata_Gerar, UDMCadCheque, UCadDuplicata_Alt, UCadDuplicata_EscTipo, RzLstBox,
  UCadDuplicata_Total, ComObj, UCadDuplicata_LeItau, SqlExpr, ComCtrls;

type
  TfrmCadDuplicata = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Label3: TLabel;
    pnlNota: TPanel;
    Label19: TLabel;
    Label23: TLabel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    DBEdit8: TDBEdit;
    edtNumDuplicata: TEdit;
    Label15: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label18: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RadioGroup1: TRadioGroup;
    Shape1: TShape;
    Label33: TLabel;
    Label34: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label35: TLabel;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    pnlTotal: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    lblCReceber: TLabel;
    lblCPagar: TLabel;
    lblCPagar_Pago: TLabel;
    lblCReceber_Pago: TLabel;
    lblCReceber_Pend: TLabel;
    lblCPagar_Pend: TLabel;
    btnRecalcular: TBitBtn;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Shape4: TShape;
    Label47: TLabel;
    Shape5: TShape;
    Label49: TLabel;
    Label50: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label51: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnImprimir: TNxButton;
    Panel5: TPanel;
    btnConsultar: TNxButton;
    btnPagamento: TNxButton;
    btnPagtoSelecionado: TNxButton;
    btnEstorno: TNxButton;
    NxButton1: TNxButton;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    NxDatePicker3: TNxDatePicker;
    NxDatePicker4: TNxDatePicker;
    Panel3: TPanel;
    RadioGroup2: TRadioGroup;
    RzCheckList1: TRzCheckList;
    Label1: TLabel;
    RxDBComboBox11: TRxDBComboBox;
    Label54: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    PopupMenu1: TPopupMenu;
    Duplicata1: TMenuItem;
    Boleto1: TMenuItem;
    Detalhada1: TMenuItem;
    ApenasLista1: TMenuItem;
    Shape6: TShape;
    Label56: TLabel;
    NxComboBox2: TNxComboBox;
    Label57: TLabel;
    Shape7: TShape;
    Label58: TLabel;
    BitBtn1: TBitBtn;
    btnDescontada: TNxButton;
    PopupMenu2: TPopupMenu;
    MenuItem4: TMenuItem;
    Zerar1: TMenuItem;
    Shape8: TShape;
    Label16: TLabel;
    ConfirmaPagamento1: TMenuItem;
    Clientenopagou1: TMenuItem;
    AgrupadoPordia1: TMenuItem;
    ListaSimples1: TMenuItem;
    Panel6: TPanel;
    RzGroupBox3: TRzGroupBox;
    Label2: TLabel;
    Label17: TLabel;
    Label4: TLabel;
    Label21: TLabel;
    Label5: TLabel;
    lblPessoa: TLabel;
    SpeedButton1: TSpeedButton;
    Label45: TLabel;
    Label8: TLabel;
    Label46: TLabel;
    Label55: TLabel;
    DBEdit7: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit4: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit18: TDBEdit;
    NxButton2: TNxButton;
    DBEdit2: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    RzGroupBox4: TRzGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label52: TLabel;
    Label29: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    DBDateEdit3: TDBDateEdit;
    gbxVendedor: TRzGroupBox;
    lblVendedor: TLabel;
    SpeedButton5: TSpeedButton;
    lblComissao: TLabel;
    rxdbVendedor: TRxDBLookupCombo;
    dbedtComissao: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    gbxDadosPagamento: TRzGroupBox;
    Label11: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label43: TLabel;
    Label32: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit17: TDBEdit;
    DBEdit3: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    PopupMenu3: TPopupMenu;
    GravarComissao1: TMenuItem;
    GravaComissao2: TMenuItem;
    Label42: TLabel;
    DBEdit22: TDBEdit;
    btnLerItau: TBitBtn;
    DBEdit23: TDBEdit;
    Label44: TLabel;
    Excel1: TMenuItem;
    N1: TMenuItem;
    Label48: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    ExtratoVendedor1: TMenuItem;
    gbxContabil: TRzGroupBox;
    Label53: TLabel;
    SpeedButton6: TSpeedButton;
    RxDBLookupCombo11: TRxDBLookupCombo;
    Label59: TLabel;
    RxDBLookupCombo12: TRxDBLookupCombo;
    DBCheckBox8: TDBCheckBox;
    ckImpNossoNumero: TCheckBox;
    LayoutBorder1: TMenuItem;
    Lista1: TMenuItem;
    DBCheckBox9: TDBCheckBox;
    Label60: TLabel;
    RxDBLookupCombo13: TRxDBLookupCombo;
    SpeedButton7: TSpeedButton;
    stat1: TStatusBar;
    UCControls1: TUCControls;
    Gradecompleta1: TMenuItem;
    Cobrana1: TMenuItem;
    AlterarDataVencimento1: TMenuItem;
    DBCheckBox10: TDBCheckBox;
    Label61: TLabel;
    cbxNGR: TNxComboBox;
    DBCheckBox11: TDBCheckBox;
    Label62: TLabel;
    DBDateEdit4: TDBDateEdit;
    Label63: TLabel;
    cbxAprovado: TNxComboBox;
    Shape9: TShape;
    Label64: TLabel;
    btnOpcao: TNxButton;
    PopupMenu4: TPopupMenu;
    Aprovar1: TMenuItem;
    btnCobranca: TNxButton;
    CheckBox1: TCheckBox;
    RecibodePagamento1: TMenuItem;
    SaldoClienteFornecedor1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure OnShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure edtDuplicataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RxDBComboBox11Change(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnPagamentoClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnEstornoClick(Sender: TObject);
    procedure btnRecalcularClick(Sender: TObject);
    procedure edtNumDuplicataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure rxdbVendedorExit(Sender: TObject);
    procedure rxdbVendedorEnter(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Duplicata1Click(Sender: TObject);
    procedure Boleto1Click(Sender: TObject);
    procedure Detalhada1Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnPagtoSelecionadoClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RxDBLookupCombo9CloseUp(Sender: TObject);
    procedure RxDBLookupCombo9DropDown(Sender: TObject);
    procedure RxDBLookupCombo9Enter(Sender: TObject);
    procedure RxDBLookupCombo9Exit(Sender: TObject);
    procedure RxDBLookupCombo9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SMDBGrid1ChangeSelection(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure RxDBComboBox1Change(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure Zerar1Click(Sender: TObject);
    procedure ConfirmaPagamento1Click(Sender: TObject);
    procedure Clientenopagou1Click(Sender: TObject);
    procedure AgrupadoPordia1Click(Sender: TObject);
    procedure ListaSimples1Click(Sender: TObject);
    procedure Panel6Enter(Sender: TObject);
    procedure GravarComissao1Click(Sender: TObject);
    procedure GravaComissao2Click(Sender: TObject);
    procedure btnLerItauClick(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBComboBox11Enter(Sender: TObject);
    procedure RxDBComboBox11Exit(Sender: TObject);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure ExtratoVendedor1Click(Sender: TObject);
    procedure DBCheckBox8Exit(Sender: TObject);
    procedure Lista1Click(Sender: TObject);
    procedure LayoutBorder1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure RxDBLookupCombo13Enter(Sender: TObject);
    procedure Gradecompleta1Click(Sender: TObject);
    procedure Cobrana1Click(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure AlterarDataVencimento1Click(Sender: TObject);
    procedure Aprovar1Click(Sender: TObject);
    procedure DBCheckBox11Exit(Sender: TObject);
    procedure btnCobrancaClick(Sender: TObject);
    procedure RecibodePagamento1Click(Sender: TObject);
    procedure SaldoClienteFornecedor1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadDuplicata: TDMCadDuplicata;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmCadDuplicata_Pag: TfrmCadDuplicata_Pag;
    ffrmCadDuplicata_Pag2: TfrmCadDuplicata_Pag2;
    ffrmCadDuplicata_Pag_Sel: TfrmCadDuplicata_Pag_Sel;
    ffrmCadDuplicata_Gerar: TfrmCadDuplicata_Gerar;
    ffrmCadDuplicata_Alt: TfrmCadDuplicata_Alt;
    ffrmCadDuplicata_EscTipo: TfrmCadDuplicata_EscTipo;
    vCodCliente_Ant: Integer;
    vCodVendedor_Ant: Integer;
    vUser_Pagto, vUser_Estorno: Boolean;
    vTipo_ES_Loc: string;
    vOpcaoImp: string;
    vTipo_Relatorio: String;
    vID_Conta_Orc_Loc: Integer;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer = 0; ID_FIN: Integer = 0; Num_Duplicata: string = ''; Inserir: Boolean = False);
    procedure prc_Consultar_Comissao;
    procedure prc_Le_cdsDuplicata_Consulta;
    procedure prc_Montar_TotalAtraso;
    procedure prc_Imprimir_Cheque;
    procedure prc_Imp_Duplicata;
    procedure prc_Imp_Recibo;
    procedure prc_Imp_Boleto;
    procedure prc_Imp_Detalhada(vLista: Boolean; Tipo_Lista: string); //S Simples D Detalhada
    procedure prc_Opcao_Registro;
    procedure prc_Gerar_mTitulos;
    procedure prc_Verifica_Usuario;
    function fnc_Existe_Comissao: Boolean;
    procedure prc_Gerar_Bordero_Excel(planilha: Variant);
    procedure prc_Gerar_Lista_Excel(planilha: Variant);
    procedure prc_Monta_Cab(Extrato: Boolean = False);
    procedure prc_CriaExcel(vDados: TDataSource);
    procedure prc_GridHist;
    procedure prc_Mostra_Aprov;
    procedure prc_Monta_Saldo;
  public
    { Public declarations }
    procedure prc_Posiciona_Duplicata(ID: Integer);
    procedure prc_Gravar_Selecionados;                  
  end;

var
  frmCadDuplicata: TfrmCadDuplicata;

implementation

uses
  DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, uRelPagarReceber, uRelPagarReceber2, URelCheque_Copia, USel_ContaOrc, USel_Pessoa,
  uUtilCobranca, UCadDuplicata_Desc, uRelPagarReceber3, UChequeDupHist, UCadDuplicata_Cob, uMenu1, uRelRecibo_Pgto;

{$R *.dfm}

procedure TfrmCadDuplicata.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  SMDBGrid1.ClearFilter;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
  fMenu1.prc_Verifica_Nota_Dupl('D');
  try
    fDMCadDuplicata.qParametros_Geral.Close;
    fDMCadDuplicata.qParametros_Geral.Open;
    prc_Grava_Grid(SMDBGrid1, Name, fDMCadDuplicata.qParametros_GeralENDGRIDS.AsString);
  finally
    Action := Cafree;
  end;
end;

procedure TfrmCadDuplicata.btnExcluirClick(Sender: TObject);
begin
  if not (fDMCadDuplicata.cdsDuplicata_Consulta.Active) or (fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty) then
    exit;

  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  prc_Posiciona_Duplicata(fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger);
  if (fDMCadDuplicata.cdsDuplicata.IsEmpty) or (fDMCadDuplicata.cdsDuplicataID.AsInteger <> fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger) then
    exit;
  fDMCadDuplicata.cdsDuplicata_Hist.Last;
  if fDMCadDuplicata.cdsDuplicata_HistNUMCHEQUE.AsInteger > 0 then
  begin
    MessageDlg('*** Título pago com cheque. Para excluir, entrar no cadastro de cheques.', mtInformation, [mbOk], 0);
    exit;
  end;
  prc_Excluir_Registro;
  btnConsultarClick(Sender);
end;

procedure TfrmCadDuplicata.prc_Excluir_Registro;
begin
  fDMCadDuplicata.prc_Excluir;
end;

procedure TfrmCadDuplicata.prc_Gravar_Registro;
var
  vInserir: Boolean;
  vIDAux: Integer;
begin
  with fDMCadDuplicata do
  begin
    {if cdsDuplicataDTVENCIMENTO.AsDateTime > cdsDuplicataDTPRORROGACAO.AsDateTime then
    begin
      ShowMessage('Data da prorrogação não pode ser menor que a data do vencimento!');
      cdsDuplicataDTPRORROGACAO.Clear;
      DBDateEdit4.SetFocus;
    end;}
    //28/11/2017  Foi incluido conforme solicitação do Silvio
    if (fDMCadDuplicata.qParametros_FinEXIGIR_CONTA_ORC_DUP.AsString = 'S') and (fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger <= 0) then
    begin
      MessageDlg('*** Conta de orçamento não informada', mtInformation, [mbOk], 0);
      exit;
    end;
    //**********************

    vIDAux := cdsDuplicataID.AsInteger;
    vInserir := (cdsDuplicata.State in [dsInsert]);
    vNumDup_Fin := 0;
    if (cdsDuplicataTIPO_MOV.AsString = 'D') and (cdsDuplicataID_NOTA.AsInteger <= 0) then
    begin
      cdsDuplicataNUMNOTA.AsInteger := 0;
      cdsDuplicataSERIE.AsString := '';
    end;
    cdsDuplicataVLR_RESTANTE.AsFloat := cdsDuplicataVLR_PARCELA.AsFloat;
    if (trim(cdsDuplicataNUMDUPLICATA.AsString) = '') or (cdsDuplicataNUMDUPLICATA.IsNull) then
      cdsDuplicataNUMDUPLICATA_SEQ.AsInteger := fnc_Proxima_Duplicata;
    if (trim(cdsDuplicataPARCELA.AsString) = '') or (cdsDuplicataPARCELA.IsNull) then
      cdsDuplicataPARCELA.AsInteger := 1;

    vObs_Original := cdsDuplicataDESCRICAO.AsString;
    prc_Gravar;
    if cdsDuplicata.State in [dsEdit, dsInsert] then
    begin
      MessageDlg(vMsgErro, mtError, [mbOk], 0);
      exit;
    end;

  //15/08/2016
    if vIDAux <> cdsDuplicataID.AsInteger then
      prc_Posiciona_Duplicata(vIDAux);
    vNumDup_Ini := cdsDuplicataID.AsInteger; // Já existia em versões anteriores
    if cdsDuplicataREGIME_CAIXA.AsString = 'S' then
    begin
      ffrmCadDuplicata_Pag := TfrmCadDuplicata_Pag.Create(self);
      ffrmCadDuplicata_Pag.fDMCadDuplicata := fDMCadDuplicata;
      ffrmCadDuplicata_Pag.DtPagamento.Date := cdsDuplicataDTEMISSAO.AsDateTime;
      ffrmCadDuplicata_Pag.ShowModal;
      FreeAndNil(ffrmCadDuplicata_Pag);
      if (mCheque.RecordCount > 0) and (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'S') then
        prc_Imprimir_Cheque;
    end;
  //******************
    if not mGerarDup.IsEmpty then
    begin
      if MessageDlg('Confirma a geração de mais ' + IntToStr(mGerarDup.RecordCount - 1) + ' parcela(s)?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        prc_Controle;
      mGerarDup.EmptyDataSet;
    end;

    TS_Consulta.TabEnabled := not (TS_Consulta.TabEnabled);
    RzPageControl1.ActivePage := TS_Consulta;
    pnlCadastro.Enabled := not (pnlCadastro.Enabled);
    btnConfirmar.Enabled := not (btnConfirmar.Enabled);
    btnAlterar.Enabled := not (btnAlterar.Enabled);
    btnCobranca.Enabled := not(btnCobranca.Enabled);

    gbxDadosPagamento.Visible := False;

    if vInserir then
      prc_Consultar(vNumDup_Ini, vNumDup_Fin, cdsDuplicataNUMDUPLICATA.AsString, vInserir)
    else
      cdsDuplicata_Consulta.Locate('ID', vNumDup_Ini, [loCaseInsensitive]);
  end;
end;

procedure TfrmCadDuplicata.prc_Inserir_Registro;
begin
  if fDMCadDuplicata.qParametros_FinCONTROLAR_DUP_USUARIO.AsString = 'S' then
  begin
    if (fDMCadDuplicata.qParametros_UsuarioMOSTRAR_DUP_REC_PAG.AsString <> 'A') and (fDMCadDuplicata.qParametros_UsuarioMOSTRAR_DUP_REC_PAG.AsString <> 'R') and (fDMCadDuplicata.qParametros_UsuarioMOSTRAR_DUP_REC_PAG.AsString <> 'P') then
    begin
      MessageDlg('*** Usuário não autorizado a inserir', mtInformation, [mbOk], 0);
      exit;
    end;
  end;

  if fDMCadDuplicata.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadDuplicata.cdsFilial.Last;
    vFilial := fDMCadDuplicata.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadDuplicata.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDMCadDuplicata.cdsFilial.Locate('ID', vFilial, [loCaseInsensitive]);
  fDMCadDuplicata.prc_Inserir;
  lblNome_Filial.Caption := vFilial_Nome;
  if fDMCadDuplicata.cdsDuplicata.State in [dsBrowse] then
    exit;

  fDMCadDuplicata.cdsDuplicataTIPO_LANCAMENTO.AsString := 'MAN';
  fDMCadDuplicata.cdsDuplicataFILIAL.AsInteger := vFilial;
  fDMCadDuplicata.cdsDuplicataTIPO_MOV.AsString := 'D';
  fDMCadDuplicata.cdsDuplicataPERC_BASE_COMISSAO.AsFloat := 100;
  RxDBComboBox1Change(RxDBComboBox1);

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled := False;
  btnConfirmar.Enabled := True;
  btnCobranca.Enabled  := False;
  pnlCadastro.Enabled := True;
  RxDBComboBox11.SetFocus;

  fDMCadDuplicata.mGerarDup.EmptyDataSet;

  //23/11/2015
  prc_Verifica_Usuario;
end;

procedure TfrmCadDuplicata.OnShow(Sender: TObject);
var
  i: Integer;
begin
  fDMCadDuplicata := TDMCadDuplicata.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);
  prc_le_Grid(SMDBGrid1, Name, fDMCadDuplicata.qParametros_GeralENDGRIDS.AsString);
  CheckBox1.Visible := (fDMCadDuplicata.qParametros_FinMANTER_DUP_CANC.AsString = 'S');

  fDMCadDuplicata.vTipo_RP := '';

  if fDMCadDuplicata.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo1.KeyValue := fDMCadDuplicata.cdsFilialID.AsInteger;

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'PERC_COMISSAO') or (SMDBGrid1.Columns[i].FieldName = 'NOME_VENDEDOR') then
      SMDBGrid1.Columns[i].Visible := (fdmCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'VLR_PAGO') then
      SMDBGrid1.Columns[i].Visible := (fDMCadDuplicata.qParametrosMOSTRAR_TOTAL_ACUMULADO_DUP.AsString <> 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'VLR_TOTALPAGO') then
      SMDBGrid1.Columns[i].Visible := (fDMCadDuplicata.qParametrosMOSTRAR_TOTAL_ACUMULADO_DUP.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'PERC_BASE_COMISSAO') then
      SMDBGrid1.Columns[i].Visible := ((fdmCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadDuplicata.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S'));
    if (SMDBGrid1.Columns[i].FieldName = 'APROVADO') then
      SMDBGrid1.Columns[i].Visible := (fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S');
  end;
  gbxVendedor.Visible := (fDMCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S');
  if fDMCadDuplicata.qParametrosUSA_VENDEDOR.AsString <> 'S' then
    gbxContabil.Left := 10;
  gbxContabil.Visible := (fDMCadDuplicata.qParametros_GeralMOSTRAR_COD_CONTABIL.AsString = 'S');

  Label29.Visible := (RxDBComboBox11.ItemIndex = 0);
  DBDateEdit3.Visible := (RxDBComboBox11.ItemIndex = 0);
  Label52.Visible := (fDMCadDuplicata.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  RxDBLookupCombo9.Visible := (fDMCadDuplicata.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  SpeedButton4.Visible := (fDMCadDuplicata.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');

  {  if fDMCadDuplicata.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S' then
    StaticText1.Caption := 'Duplo clique para consultar     F3 Altera Conta Previsão/Orçamento'
  else
    StaticText1.Caption := 'Duplo clique para consultar';}

  uUtilPadrao.fnc_Busca_Nome_Filial;
  stat1.Panels[0].Text := vUsuario;
  stat1.Panels[1].Text := vFilial_Nome;
  if fDMCadDuplicata.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S' then
    stat1.Panels[2].Text := 'Duplo clique para consultar    F3 Altera Conta Previsão/Orçamento'
  else
    stat1.Panels[2].Text := 'Duplo clique para consultar';

  NxDatePicker1.Clear;
  NxDatePicker2.Clear;
  NxDatePicker3.Clear;

  if fDMCadDuplicata.qParametros_FinDUP_DIA_FIN_VECTO.AsString = '6' then
  begin
    if (DayOfTheWeek(Date) = 6) then
      NxDatePicker4.Date := Date + 6
    else if (DayOfTheWeek(Date) = 7) then
      NxDatePicker4.Date := Date + 5
    else
    begin
      NxDatePicker4.Date := Date - (DayOfTheWeek(Date) - 1);
      NxDatePicker4.Date := NxDatePicker4.Date + 4;
    end;
  end
  else
  begin
    if (DayOfTheWeek(Date) = 1) then
      NxDatePicker4.Date := Date
    else
      NxDatePicker4.Date := Date - (DayOfTheWeek(Date) - 1);
    NxDatePicker4.Date := NxDatePicker4.Date + 6;
  end;

  vUser_Estorno := btnEstorno.Enabled;
  vUser_Pagto := btnPagamento.Enabled;
  btnPagamento.Enabled := False;
  btnPagtoSelecionado.Enabled := False;
  btnEstorno.Enabled := False;
  fDMCadDuplicata.mTitulos.EmptyDataSet;
  //23/11/2015
  if (fDMCadDuplicata.qParametros_FinCONTROLAR_DUP_USUARIO.AsString = 'S') then
  begin
    if fDMCadDuplicata.qParametros_UsuarioMOSTRAR_DUP_REC_PAG.AsString = 'R' then
      RadioGroup2.ItemIndex := 0
    else if fDMCadDuplicata.qParametros_UsuarioMOSTRAR_DUP_REC_PAG.AsString = 'P' then
      RadioGroup2.ItemIndex := 1
    else if fDMCadDuplicata.qParametros_UsuarioMOSTRAR_DUP_REC_PAG.AsString = 'A' then
      RadioGroup2.ItemIndex := 2
    else
      RadioGroup2.ItemIndex := -1;

    if RadioGroup2.ItemIndex < 2 then
      RadioGroup2.Enabled := False;
  end
  else
    RadioGroup2.Enabled := True;
  Label42.Visible := ((fdmCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadDuplicata.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S') and (gbxVendedor.Visible));
  DBEdit22.Visible := ((fdmCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadDuplicata.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S') and (gbxVendedor.Visible));
  pnlTotal.Visible := (fDMCadDuplicata.qParametros_FinMOSTRAR_VLR_ROD_DUP.AsString = 'S');
  DBCheckBox8.Visible := (fDMCadDuplicata.qParametros_FinUSA_REGIME_CAIXA_DUP.AsString = 'S');
  ckImpNossoNumero.Visible := (fDMCadDuplicata.qParametros_FinIMP_NOSSO_NUMERO.AsString = 'S');
  btnConsultarClick(Sender);
  DBCheckBox10.Visible := (fDMCadDuplicata.qParametros_FinUSA_NGR.AsString = 'S');
  Label61.Visible      := (fDMCadDuplicata.qParametros_FinUSA_NGR.AsString = 'S');
  cbxNGR.Visible       := (fDMCadDuplicata.qParametros_FinUSA_NGR.AsString = 'S');
  Label63.Visible      := (fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S');
  cbxAprovado.Visible  := (fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S');
  Shape9.Visible       := (fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S');
  Label64.Visible      := (fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S');
  btnOpcao.Visible     := (fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S');
  DBCheckBox11.Enabled := (fDMCadDuplicata.qParametros_UsuarioPERMITE_APROVAR_DUP.AsString = 'S');
  DBDateEdit4.Enabled  := (fDMCadDuplicata.qParametros_UsuarioPERMITE_APROVAR_DUP.AsString = 'S');
  if (fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S') then
    btnOpcao.Enabled := (fDMCadDuplicata.qParametros_UsuarioPERMITE_APROVAR_DUP.AsString = 'S');
end;

procedure TfrmCadDuplicata.prc_Consultar(ID: Integer = 0; ID_FIN: Integer = 0; Num_Duplicata: string = ''; Inserir: Boolean = False);
begin
  fDMCadDuplicata.cdsDuplicata_Consulta.Close;
  if Inserir then
  begin
    if trim(Num_Duplicata) <> '' then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.ctDuplicata_Consulta + ' WHERE DUP.NUMDUPLICATA = ' + QuotedStr(Num_Duplicata)
    else if (ID > 0) and (ID_FIN > 0) then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.ctDuplicata_Consulta + ' WHERE DUP.ID BETWEEN ' + IntToStr(ID) + ' AND ' + IntToStr(ID_FIN)
    else if (ID > 0) then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.ctDuplicata_Consulta + ' WHERE DUP.ID = ' + IntToStr(ID);
  end
  else
  begin
    fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.ctDuplicata_Consulta + ' WHERE 0 = 0';
    if RxDBLookupCombo1.Text <> '' then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if RxDBLookupCombo10.Text <> '' then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.ID_VENDEDOR = ' + IntToStr(RxDBLookupCombo10.KeyValue);
    if RxDBLookupCombo7.Text <> '' then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND ((DUP.ID_CONTA_BOLETO = ' + IntToStr(RxDBLookupCombo7.KeyValue) + ')' + '  OR (DUP.ID_CONTA = ' + IntToStr(RxDBLookupCombo7.KeyValue) + '))';
    if RxDBLookupCombo8.Text <> '' then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.ID_TIPOCOBRANCA = ' + IntToStr(RxDBLookupCombo8.KeyValue);
    if RxDBLookupCombo2.Text <> '' then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.ID_PESSOA = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    if Trim(edtNumDuplicata.Text) <> '' then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.NUMDUPLICATA LIKE ' + QuotedStr('%' + edtNumDuplicata.Text + '%');
    if NxDatePicker1.Text <> '' then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker1.date));
    if NxDatePicker2.Text <> '' then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker2.date));
    if NxDatePicker3.Text <> '' then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.DTVENCIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker3.date));
    if NxDatePicker4.Text <> '' then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.DTVENCIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker4.date));
    if RzCheckList1.ItemChecked[0] then
    begin
      case RadioGroup2.ItemIndex of
        0:
          fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND ((DUP.TIPO_ES = ' + QuotedStr('E') + ') OR (DUP.TIPO_MOV = ' + QuotedStr('H') + '))';
        1:
          fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.TIPO_ES = ' + QuotedStr('S');
      end;
    end
    else
    begin
      case RadioGroup2.ItemIndex of
        0:
          fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.TIPO_ES = ' + QuotedStr('E');
        1:
          fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.TIPO_ES = ' + QuotedStr('S');
      end;
    end;
    case RadioGroup1.ItemIndex of
      0:
        fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.VLR_RESTANTE > 0 ';
      1:
        fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.VLR_RESTANTE <= 0 ';
      2:
        fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND ((ID_DESCONTADA > 0) AND (CONFIRMA_PGTO = ' + QuotedStr('N') + '))';
//      2: fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND DUP.VLR_RESTANTE <= 0 ';
    end;
    if not RzCheckList1.ItemChecked[0] then
      fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND ((DUP.TIPO_MOV = ' + QuotedStr('D') + ') OR (DUP.TIPO_MOV = ' + QuotedStr('N') + '))';
    case NxComboBox2.ItemIndex of
      0:
        fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND ((DUP.PERDIDO = ' + QuotedStr('N') + ') OR (DUP.PERDIDO IS NULL))';
      1:
        fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND (DUP.TITULO_CARTORIO = ' + QuotedStr('S') + ')';
      2:
        fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND (DUP.PROTESTADO = ' + QuotedStr('S') + ')';
      3:
        fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND ((DUP.PROTESTADO = ' + QuotedStr('S') + ') OR (DUP.TITULO_CARTORIO = ' + QuotedStr('S') + '))';
      4:
        fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND (DUP.PERDIDO = ' + QuotedStr('S') + ')';
    end;
    if fDMCadDuplicata.qParametros_FinUSA_NGR.AsString = 'S' then
    begin
      case cbxNGR.ItemIndex of
        1: fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND ((DUP.NGR <> ' + QuotedStr('S') + ') OR (DUP.NGR IS NULL)) ';
        2: fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND (DUP.NGR = ' + QuotedStr('S') + ')';
      end;
    end;
    if fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S' then
    begin
      case cbxAprovado.ItemIndex of
        1: fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND (DUP.APROVADO = ' + QuotedStr('S') + ')';
        2: fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.sdsDuplicata_Consulta.CommandText + ' AND ((DUP.APROVADO <> ' + QuotedStr('S') + ') OR (DUP.APROVADO IS NULL))';
      end;
    end;
  end;
  fDMCadDuplicata.cdsDuplicata_Consulta.IndexFieldNames := 'DTVENCIMENTO';
  fDMCadDuplicata.cdsDuplicata_Consulta.Open;
  if not (Inserir) and (ID > 0) then
    fDMCadDuplicata.cdsDuplicata_Consulta.Locate('ID', ID, [loCaseInsensitive]);
end;

procedure TfrmCadDuplicata.btnConsultarClick(Sender: TObject);
begin
  if RadioGroup2.ItemIndex < 0 then
  begin
    MessageDlg('*** É obrigatório escolher um tipo (Contas a Receber/Contas a Pagar/Ambos)', mtInformation, [mbOk], 0);
    exit;
  end;
  prc_Consultar;
  if RzCheckList1.ItemChecked[1] then
    prc_Consultar_Comissao;
  prc_Le_cdsDuplicata_Consulta;
  if not fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty then
    SMDBGrid1.SetFocus;
end;

procedure TfrmCadDuplicata.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadDuplicata.cdsDuplicata.State in [dsBrowse]) or not (fDMCadDuplicata.cdsDuplicata.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDMCadDuplicata.cdsDuplicata.CancelUpdates;
  TS_Consulta.TabEnabled := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled := not (pnlCadastro.Enabled);
  btnConfirmar.Enabled := not (btnConfirmar.Enabled);
  btnAlterar.Enabled  := not (btnAlterar.Enabled);
  btnCobranca.Enabled := not(btnCobranca.Enabled);
end;

procedure TfrmCadDuplicata.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
  stat1.Panels[2].Text := '';
end;

procedure TfrmCadDuplicata.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadDuplicata.cdsDuplicata.IsEmpty) or not (fDMCadDuplicata.cdsDuplicata.Active) or (fDMCadDuplicata.cdsDuplicataID.AsInteger < 1) then
    exit;
  if (fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat > 0) or (fDMCadDuplicata.cdsDuplicataVLR_DEVOLUCAO.AsFloat > 0) then
  begin
    ShowMessage('*** Duplicata não pode ser alterada pois consta pagamento/devolução!');
    exit;
  end;
  if fDMCadDuplicata.cdsDuplicataTIPO_MOV.AsString = 'H' then
  begin
    MessageDlg('*** Este registro é de cheque. Para alterar, entrar na opção Financeiro/Cheque!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadDuplicata.cdsDuplicata.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled := False;
  btnConfirmar.Enabled := True;
  pnlCadastro.Enabled := True;
  btnCobranca.Enabled := False;

  prc_Verifica_Usuario;
  if RxDBComboBox11.Enabled then
    RxDBComboBox11.SetFocus
  else
    DBEdit7.SetFocus;
end;

procedure TfrmCadDuplicata.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadDuplicata.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadDuplicata);
end;

procedure TfrmCadDuplicata.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadDuplicata.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadDuplicata.edtDuplicataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadDuplicata.edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadDuplicata.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadDuplicata.cdsDuplicata);
end;

procedure TfrmCadDuplicata.RzPageControl1Change(Sender: TObject);
begin
  if not (fDMCadDuplicata.cdsDuplicata.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not (fDMCadDuplicata.cdsDuplicata_Consulta.Active) or (fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty) or (fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger <= 0) then
        exit;
      fDMCadDuplicata.cdsContas.Close;
      fDMCadDuplicata.cdsContas.Open;
      prc_Posiciona_Duplicata(fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger);
      RxDBComboBox11Change(Sender);
    end;
  end;
  if not (fDMCadDuplicata.cdsDuplicata.State in [dsInsert]) and (RzPageControl1.ActivePage = TS_Cadastro) then
    gbxDadosPagamento.Visible := True
  else
    gbxDadosPagamento.Visible := False;
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    //if not fDMCadDuplicata.cdsDuplicata.State in [dsInsert] then
    //  fDMCadDuplicata.prc_Abrir_Pessoa(fDMCadDuplicata.vTipo_RP)
    //else
    if not (fDMCadDuplicata.cdsDuplicata.State in [dsInsert]) then
    begin
      if (fDMCadDuplicata.cdsDuplicata_Consulta.Active) and not (fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty) then
        fDMCadDuplicata.prc_Abrir_Pessoa(fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_ES.AsString)
      else
        fDMCadDuplicata.prc_Abrir_Pessoa('');
    end;
    prc_Opcao_Registro;
    RxDBComboBox1Change(Sender);
    prc_GridHist;
    prc_Mostra_Aprov;
  end;
end;

procedure TfrmCadDuplicata.prc_Posiciona_Duplicata(ID: Integer);
begin
  fDMCadDuplicata.prc_Localizar(ID);
  fDMCadDuplicata.cdsDuplicata_Hist.Close;
  fDMCadDuplicata.cdsDuplicata_Hist.Open;
  vFilial := fDMCadDuplicata.cdsDuplicataFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadDuplicata.cdsFilial.Locate('ID', vFilial, [loCaseInsensitive]) then
    vFilial_Nome := fDMCadDuplicata.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;
end;

procedure TfrmCadDuplicata.RxDBComboBox11Change(Sender: TObject);
begin
  case RxDBComboBox11.ItemIndex of
    0:
      begin
        lblPessoa.Caption := 'Cliente:';
        Label60.Visible := True;
        RxDBLookupCombo13.Visible := True;
        SpeedButton7.Visible := True;
      end;
    1:
      begin
        lblPessoa.Caption := 'Fornecedor:';
        Label60.Visible := False;
        RxDBLookupCombo13.Visible := False;
        SpeedButton7.Visible := False;
      end;
  end;
  gbxVendedor.Visible := ((fDMCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S') and (RxDBComboBox11.ItemIndex = 0));
  Label42.Visible := ((fdmCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadDuplicata.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S') and (gbxVendedor.Visible));
  DBEdit22.Visible := ((fdmCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadDuplicata.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S') and (gbxVendedor.Visible));
end;

procedure TfrmCadDuplicata.RxDBLookupCombo3Enter(Sender: TObject);
begin
  vCodCliente_Ant := 0;
  if RxDBLookupCombo3.Text <> '' then
    vCodCliente_Ant := RxDBLookupCombo3.KeyValue;
  fDMCadDuplicata.cdsPessoa.IndexFieldNames := 'NOME';
  stat1.Panels[2].Text := 'F2 - Para Consultar';
end;

procedure TfrmCadDuplicata.SpeedButton5Click(Sender: TObject);
begin
  fDMCadDuplicata.cdsVendedor.Close;
  fDMCadDuplicata.cdsVendedor.Open;
end;

procedure TfrmCadDuplicata.SpeedButton1Click(Sender: TObject);
begin
  fDMCadDuplicata.cdsPessoa.Close;
  fDMCadDuplicata.cdsPessoa.Open;
end;

procedure TfrmCadDuplicata.SpeedButton2Click(Sender: TObject);
begin
  fDMCadDuplicata.cdsContas.Close;
  fDMCadDuplicata.cdsContas.Open;
end;

procedure TfrmCadDuplicata.SpeedButton3Click(Sender: TObject);
begin
  fDMCadDuplicata.cdsTipoCobranca.Close;
  fDMCadDuplicata.cdsTipoCobranca.Open;
end;

procedure TfrmCadDuplicata.SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty then
    exit;

  if (fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S') and (fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_ES.AsString = 'S') and
     (fDMCadDuplicata.cdsDuplicata_ConsultaAPROVADO.AsString <> 'S') then
  begin
    Background  := $0053A9FF;
    AFont.Color := clBlack;
  end;
  if (fDMCadDuplicata.cdsDuplicata_ConsultaID_DESCONTADA.AsInteger > 0) and (fDMCadDuplicata.cdsDuplicata_ConsultaCONFIRMA_PGTO.AsString <> 'S') then
  begin
    BackGround := clBlue;
    AFont.Color := clWhite;
  end
  else if fDMCadDuplicata.cdsDuplicata_ConsultaTRANSFERENCIA_ICMS.AsString = 'S' then
    Background := clSilver
  else if fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat <= 0 then
  begin
    Background := clGreen;
    AFont.Color := clWhite;
  end
  else if fDMCadDuplicata.cdsDuplicata_ConsultaTITULO_CARTORIO.AsString = 'S' then
  begin
    BackGround := $00FFFFBB;
    AFont.Color := clBlack;
  end
  else if fDMCadDuplicata.cdsDuplicata_ConsultaPROTESTADO.AsString = 'S' then
  begin
    BackGround := $00A8A8FF;
    AFont.Color := clBlack;
  end
  else if fDMCadDuplicata.cdsDuplicata_ConsultaDTVENCIMENTO.AsDateTime < Date then
  begin
    Background := clRed;
    AFont.Color := clWhite;
  end
  else if (fDMCadDuplicata.cdsDuplicata_ConsultaIMP_BOLETO.AsString <> 'S') and (fDMCadDuplicata.cdsDuplicata_ConsultaGERARBOLETO.AsString = 'S') then
  begin
    BackGround := $0080FFFF;
    AFont.Color := clBlack;
  end;
  if fDMCadDuplicata.cdsDuplicata_ConsultaCANCELADA.AsString = 'S' then
  begin
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end;
end;

procedure TfrmCadDuplicata.btnPagamentoClick(Sender: TObject);
begin
  //SMDBGrid1.Row := SMDBGrid1.SelectedRows.IndexOf;
  if (not SMDBGrid1.SelectedRows.CurrentRowSelected) then
  begin
    SMDBGrid1.DisableScroll;
    fDMCadDuplicata.cdsDuplicata_Consulta.First;
    while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
        break;
      fDMCadDuplicata.cdsDuplicata_Consulta.Next;
    end;
    SMDBGrid1.EnableScroll;
  end;
  if (not SMDBGrid1.SelectedRows.CurrentRowSelected) then
  begin
    ShowMessage('Duplicata não está selecionada para pagamento!');
    Exit;
  end;

  if not (fDMCadDuplicata.cdsDuplicata_Consulta.Active) or (fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty) or (fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger <= 0) then
    exit;
  if fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_MOV.AsString = 'H' then
  begin
    MessageDlg('*** Este registro é de cheque. Compensar o cheque pela opção Financeiro/Cheque!', mtError, [mbOk], 0);
    exit;
  end;
  if (fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S') and (fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_ES.AsString = 'S')
    and (fDMCadDuplicata.cdsDuplicataAPROVADO.AsString <> 'S') then
  begin
    MessageDlg('*** Título não aprovado!', mtError, [mbOk], 0);
    exit;
  end;
  
  fDMCadDuplicata.vID_Cheque := 0;
  //03/01/2018
  fDMCadDuplicata.mCheque.EmptyDataSet;
  //*************************

  if fDMCadDuplicata.cdsPessoaCODIGO.AsInteger <> fDMCadDuplicata.cdsDuplicataID_PESSOA.AsInteger then
    fDMCadDuplicata.cdsPessoa.Locate('CODIGO', fDMCadDuplicata.cdsDuplicataID_PESSOA.AsInteger, [loCaseInsensitive]);
  prc_Posiciona_Duplicata(fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger);
  {ffrmCadDuplicata_Pag := TfrmCadDuplicata_Pag.Create(self);
  ffrmCadDuplicata_Pag.fDMCadDuplicata := fDMCadDuplicata;
  ffrmCadDuplicata_Pag.ShowModal;
  FreeAndNil(ffrmCadDuplicata_Pag);}
  ffrmCadDuplicata_Pag2 := TfrmCadDuplicata_Pag2.Create(self);
  ffrmCadDuplicata_Pag2.fDMCadDuplicata := fDMCadDuplicata;
  ffrmCadDuplicata_Pag2.ShowModal;
  FreeAndNil(ffrmCadDuplicata_Pag2);
  if (fDMCadDuplicata.mCheque.RecordCount > 0) and (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'S') then
    prc_Imprimir_Cheque;
  fDMCadDuplicata.mCheque.EmptyDataSet;  
  btnConsultarClick(Sender);
  btnPagamento.Enabled := False;
  btnPagtoSelecionado.Enabled := False;
end;

procedure TfrmCadDuplicata.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadDuplicata.cdsDuplicata_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadDuplicata.btnEstornoClick(Sender: TObject);
var
  vItemAux: Integer;
  vDescAux: string;
begin
  if not (fDMCadDuplicata.cdsDuplicata_Consulta.Active) or (fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty) or (fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger <= 0) then
    exit;
  if fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_MOV.AsString = 'H' then
  begin
    MessageDlg('*** Este registro é de cheque!', mtError, [mbOk], 0);
    exit;
  end;

  prc_Posiciona_Duplicata(fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger);
  fDMCadDuplicata.vDtUltPagamento := 0;
  vItemAux := 0;
  fDMCadDuplicata.cdsDuplicata_Hist.Last;
  while not fDMCadDuplicata.cdsDuplicata_Hist.Bof do
  begin
    if (vItemAux <= 0) and ((fDMCadDuplicata.cdsDuplicata_HistTIPO_HISTORICO.AsString = 'PAG') or (fDMCadDuplicata.cdsDuplicata_HistTIPO_HISTORICO.AsString = 'DEV')) then
    begin
      vItemAux := fDMCadDuplicata.cdsDuplicata_HistITEM.AsInteger;
    end
    else if (fDMCadDuplicata.vDtUltPagamento < 10) and ((fDMCadDuplicata.cdsDuplicata_HistTIPO_HISTORICO.AsString = 'PAG') or (fDMCadDuplicata.cdsDuplicata_HistTIPO_HISTORICO.AsString = 'DEV')) then
    begin
      fDMCadDuplicata.vDtUltPagamento := fDMCadDuplicata.cdsDuplicata_HistDTLANCAMENTO.AsDateTime;
      fDMCadDuplicata.cdsDuplicata_Hist.First;
    end;
    fDMCadDuplicata.cdsDuplicata_Hist.Prior;
  end;
  if vItemAux <= 0 then
  begin
    MessageDlg('*** Não existe pagamento/devolução para estorno!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadDuplicata.cdsDuplicata_Hist.Locate('ITEM', vItemAux, [loCaseInsensitive]);
  if fDMCadDuplicata.cdsDuplicata_HistNUMCHEQUE.AsInteger > 0 then
  begin
    MessageDlg('*** Estorno só pode ser feito pelo cadastro dos cheques!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMCadDuplicata.cdsDuplicata_HistTIPO_HISTORICO.AsString = 'PAG' then
    vDescAux := 'do pagamento?'
  else
    vDescAux := 'da devolução?';
  if MessageDlg('Deseja fazer o estorno ' + vDescAux, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    fDMCadDuplicata.prc_Estorno_Pag;
  prc_Consultar;
  btnEstorno.Enabled := False;
end;

procedure TfrmCadDuplicata.prc_Le_cdsDuplicata_Consulta;
var
  vSaldo: Real;
begin
  fDMCadDuplicata.vCReceber_Tot := 0;
  fDMCadDuplicata.vCReceber_Pago_Tot := 0;
  fDMCadDuplicata.vCReceber_Pend_Tot := 0;
  fDMCadDuplicata.vCReceber_Atraso_Tot := 0;
  fDMCadDuplicata.vCPagar_Tot := 0;
  fDMCadDuplicata.vCPagar_Pago_Tot := 0;
  fDMCadDuplicata.vCPagar_Pend_Tot := 0;
  fDMCadDuplicata.vCPagar_Atraso_Tot := 0;
  fDMCadDuplicata.vCheque_Tot := 0;
  fDMCadDuplicata.vCheque_Atraso_Tot := 0;
  fDMCadDuplicata.vCReceber_Cartorio_Tot := 0;
  fDMCadDuplicata.vCReceber_Protesto_Tot := 0;
  fDMCadDuplicata.vCPagar_Cartorio_Tot := 0;
  fDMCadDuplicata.vCPagar_Protesto_Tot := 0;
  SMDBGrid1.DisableScroll;
  fDMCadDuplicata.cdsDuplicata_Consulta.First;
  while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
  begin
    if fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_ES.AsString = 'E' then
    begin
      fDMCadDuplicata.vCReceber_Tot := fDMCadDuplicata.vCReceber_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PARCELA.AsFloat;
      fDMCadDuplicata.vCReceber_Pago_Tot := fDMCadDuplicata.vCReceber_Pago_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PAGO.AsFloat;
      fDMCadDuplicata.vCReceber_Pend_Tot := fDMCadDuplicata.vCReceber_Pend_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat;
      if fDMCadDuplicata.cdsDuplicata_ConsultaDTVENCIMENTO.AsDateTime < Date then
        fDMCadDuplicata.vCReceber_Atraso_Tot := fDMCadDuplicata.vCReceber_Atraso_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat;
      if StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat)) > 0 then
      begin
        if fDMCadDuplicata.cdsDuplicata_ConsultaTITULO_CARTORIO.AsString = 'S' then
          fDMCadDuplicata.vCReceber_Cartorio_Tot := fDMCadDuplicata.vCReceber_Cartorio_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat
        else if fDMCadDuplicata.cdsDuplicata_ConsultaPROTESTADO.AsString = 'S' then
          fDMCadDuplicata.vCReceber_Protesto_Tot := fDMCadDuplicata.vCReceber_Protesto_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat;
      end;
    end
    else
    begin
      if fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_MOV.AsString = 'H' then
      begin
        if fDMCadDuplicata.cdsDuplicata_ConsultaDTVENCIMENTO.AsDateTime < Date then
          fDMCadDuplicata.vCheque_Atraso_Tot := fDMCadDuplicata.vCheque_Atraso_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat
        else
          fDMCadDuplicata.vCheque_Tot := fDMCadDuplicata.vCheque_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat;
      end
      else
      begin
        fDMCadDuplicata.vCPagar_Tot := fDMCadDuplicata.vCPagar_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PARCELA.AsFloat;
        fDMCadDuplicata.vCPagar_Pago_Tot := fDMCadDuplicata.vCPagar_Pago_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PAGO.AsFloat;
        fDMCadDuplicata.vCPagar_Pend_Tot := fDMCadDuplicata.vCPagar_Pend_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat;
        if fDMCadDuplicata.cdsDuplicata_ConsultaDTVENCIMENTO.AsDateTime < Date then
          fDMCadDuplicata.vCPagar_Atraso_Tot := fDMCadDuplicata.vCPagar_Atraso_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat;
        if StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat)) > 0 then
        begin
          if fDMCadDuplicata.cdsDuplicata_ConsultaTITULO_CARTORIO.AsString = 'S' then
            fDMCadDuplicata.vCPagar_Cartorio_Tot := fDMCadDuplicata.vCPagar_Cartorio_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat
          else if fDMCadDuplicata.cdsDuplicata_ConsultaPROTESTADO.AsString = 'S' then
            fDMCadDuplicata.vCPagar_Protesto_Tot := fDMCadDuplicata.vCPagar_Protesto_Tot + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat;
        end;
      end;
    end;
    fDMCadDuplicata.cdsDuplicata_Consulta.Next;
  end;

  lblCReceber.Caption := FormatFloat('###,###,###,##0.00', fDMCadDuplicata.vCReceber_Tot);
  lblCReceber_Pago.Caption := FormatFloat('###,###,###,##0.00', fDMCadDuplicata.vCReceber_Pago_Tot);
  lblCReceber_Pend.Caption := FormatFloat('###,###,###,##0.00', fDMCadDuplicata.vCReceber_Pend_Tot);

  lblCPagar.Caption := FormatFloat('###,###,###,##0.00', fDMCadDuplicata.vCPagar_Tot);
  lblCPagar_Pago.Caption := FormatFloat('###,###,###,##0.00', fDMCadDuplicata.vCPagar_Pago_Tot);
  lblCPagar_Pend.Caption := FormatFloat('###,###,###,##0.00', fDMCadDuplicata.vCPagar_Pend_Tot);

  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadDuplicata.btnRecalcularClick(Sender: TObject);
begin
  if not fDMCadDuplicata.cdsDuplicata_Consulta.Active then
    exit;
  prc_Le_cdsDuplicata_Consulta;
end;

procedure TfrmCadDuplicata.prc_Gravar_Selecionados;
var
  vHist: string;
  vPagou: Boolean;
begin
  vPagou := False;
  fDMCadDuplicata.vID_Cheque := 0;
  fDMCadDuplicata.cdsDuplicata_Consulta.First;
  while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_MOV.AsString <> 'H') then
    begin
      prc_Posiciona_Duplicata(fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger);
      if StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat)) > 0 then
      begin
        fDMCadDuplicata.cdsDuplicata.Edit;
        if fDMCadDuplicata.vID_Banco_Cheque > 0 then
          fDMCadDuplicata.cdsDuplicataID_BANCO.AsInteger := fDMCadDuplicata.vID_Banco_Cheque;
        fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger := fDMCadDuplicata.vID_ContaPgtoSel;
        fDMCadDuplicata.cdsDuplicataDTULTPAGAMENTO.AsDateTime := fDMCadDuplicata.vDtPgtoSel;
        fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat := StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat + fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat));
        if fDMCadDuplicata.mCheque.IsEmpty then
          vHist := 'PAGAMENTO DE TITULO'
        else
          vHist := 'PAGAMENTO COM CHEQUE Nº ' + fDMCadDuplicata.mChequeNum_Cheque.AsString;
        fDMCadDuplicata.prc_Gravar_Dupicata_Hist('PAG', vHist, fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat, 0, 0, 0, 0, 0, fDMCadDuplicata.vID_FormaPgto);
        //Foi colocado na versão .390
        if fDMCadDuplicata.mCheque.RecordCount <= 0 then
          fDMCadDuplicata.prc_Gravar_Financeiro(fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat, 'P', fDMCadDuplicata.vID_FormaPgto);
        fDMCadDuplicata.cdsDuplicataVLR_JUROSPAGOS.AsFloat := 0;
        fDMCadDuplicata.cdsDuplicataVLR_DESCONTO.AsFloat := 0;
        fDMCadDuplicata.cdsDuplicataVLR_DESPESAS.AsFloat := 0;
        fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat := 0;
        fDMCadDuplicata.cdsDuplicata.Post;
        vTipo_ES_Loc := fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString;
        fDMCadDuplicata.cdsDuplicata.ApplyUpdates(0);
        vPagou := True;
      end;
    end;
    fDMCadDuplicata.cdsDuplicata_Consulta.Next;
  end;
  if (not vPagou) then
    ShowMessage('Nenhum pagamento realizado!');
  btnConsultarClick(frmCadDuplicata);
end;

procedure TfrmCadDuplicata.edtNumDuplicataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadDuplicata.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if ((RxDBLookupCombo3.Text <> '') and (fDMCadDuplicata.cdsDuplicata.State in [dsInsert])) or ((RxDBLookupCombo3.Text <> '') and (vCodCliente_Ant <> RxDBLookupCombo3.KeyValue)) then
  begin
    vID_Conta_Orc_Loc := 0;
    if fDMCadDuplicata.cdsPessoa.Locate('CODIGO', RxDBLookupCombo3.KeyValue, [loCaseInsensitive]) then
    begin
      fDMCadDuplicata.cdsDuplicataID_VENDEDOR.AsInteger := fDMCadDuplicata.cdsPessoaID_VENDEDOR.AsInteger;
      if fDMCadDuplicata.cdsPessoaID_VENDEDOR.AsInteger > 0 then
      begin
        fDMCadDuplicata.cdsDuplicataPERC_COMISSAO.AsFloat := fDMCadDuplicata.cdsPessoaPERC_COMISSAO.AsFloat;
        rxdbVendedorExit(Sender);
      end
      else
        fDMCadDuplicata.cdsDuplicataPERC_COMISSAO.AsFloat := 0;
      if fDMCadDuplicata.cdsPessoaID_CONTABOLETO.AsInteger > 0 then
        fDMCadDuplicata.cdsDuplicataID_CONTA_BOLETO.AsInteger := fDMCadDuplicata.cdsPessoaID_CONTABOLETO.AsInteger;
      if fDMCadDuplicata.cdsPessoaID_TIPOCOBRANCA.AsInteger > 0 then
        fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger := fDMCadDuplicata.cdsPessoaID_TIPOCOBRANCA.AsInteger;
      if (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E') and (fDMCadDuplicata.cdsPessoaCLIENTE_CONTA_ID.AsInteger > 0) then
        fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := fDMCadDuplicata.cdsPessoaCLIENTE_CONTA_ID.AsInteger
      else if (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'S') and (fDMCadDuplicata.cdsPessoaFORNECEDOR_CONTA_ID.AsInteger > 0) then
        fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := fDMCadDuplicata.cdsPessoaFORNECEDOR_CONTA_ID.AsInteger;
      if (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'S') and (fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger <= 0) and
        (fDMCadDuplicata.cdsPessoaTP_TRANSPORTADORA.AsString = 'S') and (fDMCadDuplicata.cdsPessoaTRANSPORTADORA_CONTA_ID.AsInteger > 0) then
        fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := fDMCadDuplicata.cdsPessoaTRANSPORTADORA_CONTA_ID.AsInteger;
      if (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'S') and (fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger <= 0) and
        (fDMCadDuplicata.cdsPessoaTP_VENDEDOR.AsString = 'S') and (fDMCadDuplicata.cdsPessoaVENDEDOR_CONTA_ID.AsInteger > 0) then
        fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := fDMCadDuplicata.cdsPessoaVENDEDOR_CONTA_ID.AsInteger;
      if (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'S') and (fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger <= 0) and
        (fDMCadDuplicata.cdsPessoaTP_FUNCIONARIO.AsString = 'S') and (fDMCadDuplicata.cdsPessoaFUNCIONARIO_CONTA_ID.AsInteger > 0) then
        fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := fDMCadDuplicata.cdsPessoaFUNCIONARIO_CONTA_ID.AsInteger;

      if fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger > 0 then
      begin
        if (fDMCadDuplicata.cdsContaOrcamento.Locate('ID',fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger, [loCaseInsensitive])) and
          (fDMCadDuplicata.cdsContaOrcamentoTIPO.AsString = 'S') then
        begin
          vID_Conta_Orc_Loc := fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger;
          fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.Clear;
        end
        else
          vID_Conta_Orc_Loc := 0;
      end;

    end;
  end;
  stat1.Panels[2].Text := '';
//  StaticText2.Visible := False;

end;

procedure TfrmCadDuplicata.rxdbVendedorExit(Sender: TObject);
begin
  if ((rxdbVendedor.Text <> '') and (fDMCadDuplicata.cdsDuplicata.State in [dsInsert])) or ((rxdbVendedor.Text <> '') and (vCodVendedor_Ant <> rxdbVendedor.KeyValue)) then
  begin
    if fDMCadDuplicata.cdsPessoaCODIGO.AsInteger <> RxDBLookupCombo3.KeyValue then
      fDMCadDuplicata.cdsPessoa.Locate('CODIGO', RxDBLookupCombo3.KeyValue, [loCaseInsensitive]);
    if StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsPessoaPERC_COMISSAO.AsFloat)) <= 0 then
    begin
      if fDMCadDuplicata.cdsVendedor.Locate('CODIGO', rxdbVendedor.KeyValue, [loCaseInsensitive]) then
        fDMCadDuplicata.cdsDuplicataPERC_COMISSAO.AsFloat := fDMCadDuplicata.cdsVendedorPERC_COMISSAO_VEND.AsFloat;
    end;
  end;
end;

procedure TfrmCadDuplicata.rxdbVendedorEnter(Sender: TObject);
begin
  vCodVendedor_Ant := 0;
  if rxdbVendedor.Text <> '' then
    vCodVendedor_Ant := rxdbVendedor.KeyValue;
end;

procedure TfrmCadDuplicata.prc_Montar_TotalAtraso;
var
  vComandoAux, vComandoAux2: string;
  i: Integer;
  vDataAux: TDateTime;
begin
  fDMCadDuplicata.qTotalAtraso.Close;
  i := PosEx('GROUP', fDMCadDuplicata.ctTotalAtraso, 0);
  vComandoAux := copy(fDMCadDuplicata.ctTotalAtraso, i, Length(fDMCadDuplicata.ctTotalAtraso) - i + 1);
  vComandoAux2 := copy(fDMCadDuplicata.ctTotalAtraso, 1, i - 1);
  if RxDBLookupCombo1.Text <> '' then
    vComandoAux2 := vComandoAux2 + ' AND DUP.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComandoAux2 := vComandoAux2 + ' AND DUP.ID_PESSOA = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  fDMCadDuplicata.qTotalAtraso.SQL.Text := vComandoAux2 + vComandoAux;
  vDataAux := NxDatePicker3.Date - 1;
  fDMCadDuplicata.qTotalAtraso.ParamByName('DTVENCIMENTO').AsDate := vDataAux;
  fDMCadDuplicata.qTotalAtraso.Open;
end;

procedure TfrmCadDuplicata.prc_Imprimir_Cheque;
var
  fDMCadCheque: TDMCadCheque;
begin
  fDMCadDuplicata.mCheque.Filtered := False;
  fDMCadDuplicata.mCheque.Filter   := 'Emitido_Por = ' + QuotedStr('1');
  fDMCadDuplicata.mCheque.Filtered := True;
  if fDMCadDuplicata.mCheque.RecordCount <= 0 then
  begin
    fDMCadDuplicata.mCheque.Filtered := False;
    exit;
  end;

  if MessageDlg('Deseja imprimir a copia do cheque?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadCheque := TDMCadCheque.Create(Self);
  try
    fDmCadCheque.prc_Abrir_Cheque_Imp(fDMCadDuplicata.mChequeID_Cheque.AsInteger);
    fRelCheque_Copia := TfRelCheque_Copia.Create(Self);
    fRelCheque_Copia.fDMCadCheque := fDMCadCheque;
    fRelCheque_Copia.RLReport1.PreviewModal;
    fRelCheque_Copia.RLReport1.Free;
  finally
    FreeAndNil(fRelCheque_Copia);
    FreeAndNil(fDMCadCheque);
    fDMCadDuplicata.mCheque.Filtered := False;
  end;
end;

procedure TfrmCadDuplicata.SpeedButton4Click(Sender: TObject);
begin
  fDMCadDuplicata.cdsContaOrcamento.Close;
  fDMCadDuplicata.cdsContaOrcamento.Open;
end;

procedure TfrmCadDuplicata.Duplicata1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    vFilial := RxDBLookupCombo1.KeyValue
  else
    vFilial := 0;
  vTipo_Config_Email := 3;
  prc_Imp_Duplicata;
end;

procedure TfrmCadDuplicata.Boleto1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    vFilial := RxDBLookupCombo1.KeyValue
  else
    vFilial := 0;
  vTipo_Config_Email := 3;
  prc_Imp_Boleto;
end;

procedure TfrmCadDuplicata.Detalhada1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    vFilial := RxDBLookupCombo1.KeyValue
  else
    vFilial := 0;
  vTipo_Config_Email := 3;
  prc_Imp_Detalhada(False, '');
end;

procedure TfrmCadDuplicata.prc_Imp_Boleto;
var
  vIDContaAux: Integer;
begin
  if (fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty) or (fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger < 1) then
  begin
    MessageDlg('*** Não existe nota selecionada!', mtError, [mbOk], 0);
    exit;
  end;
  if (fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_ES.AsString <> 'E') then
  begin
    MessageDlg('*** Título não é a receber!', mtError, [mbOk], 0);
    exit;
  end;

  if fDMCadDuplicata.qParametrosUSA_BOLETO_ACBR.AsString = 'S' then
  begin
    vIDContaAux := fDMCadDuplicata.cdsDuplicataID_CONTA_BOLETO.AsInteger;
    if vIDContaAux <= 0 then
      vIDContaAux := fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger;
    if RzPageControl1.ActivePage = TS_Cadastro then
      prc_Chama_CobRemessa(fDMCadDuplicata.cdsDuplicataID.AsInteger, fDMCadDuplicata.cdsDuplicataFilial.AsInteger,
                           fDMCadDuplicata.cdsDuplicataID_PESSOA.AsInteger,vIDContaAux,fDMCadDuplicata.cdsDuplicataNUMDUPLICATA.AsString)
    else
      prc_Chama_CobRemessa(fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger, fDMCadDuplicata.cdsDuplicata_ConsultaFilial.AsInteger,
                           fDMCadDuplicata.cdsDuplicata_ConsultaID_PESSOA.AsInteger, vIDContaAux, fDMCadDuplicata.cdsDuplicata_ConsultaNUMDUPLICATA.AsString);
  end;
end;

procedure TfrmCadDuplicata.prc_Imp_Detalhada(vLista: Boolean; Tipo_Lista: string); //S Simples D Detalhada
begin
  if Tipo_Lista <> 'S' then
    fDMCadDuplicata.cdsDuplicata_Consulta.IndexFieldNames := 'DTVENCIMENTO;TIPO_ES;TIPO_MOV';
  fDMCadDuplicata.qTotalAtraso.Close;
  if NxDatePicker3.Date > 0 then
    prc_Montar_TotalAtraso;

  SMDBGrid1.DisableScroll;

  if ckImpNossoNumero.Checked then
  begin
    fRelPagarReceber3 := TfRelPagarReceber3.Create(Self);
    fRelPagarReceber3.vTipo_ES := 'A';
    case RadioGroup2.ItemIndex of
      0:
        fRelPagarReceber3.vTipo_ES := 'E';
      1:
        fRelPagarReceber3.vTipo_ES := 'S';
    end;
    fRelPagarReceber3.vOpcaoImp := '';
    fRelPagarReceber3.vOpcaoImp2 := '';
    if (NxDatePicker3.Date > 10) and (NxDatePicker4.Date > 10) then
      fRelPagarReceber3.vOpcaoImp2 := '(Vecto: ' + NxDatePicker3.Text + ' a ' + NxDatePicker4.Text + ')'
    else if (NxDatePicker3.Date > 10) then
      fRelPagarReceber3.vOpcaoImp2 := '(Apartir do Vecto.: ' + NxDatePicker3.Text + ')'
    else if (NxDatePicker4.Date > 10) then
      fRelPagarReceber3.vOpcaoImp2 := '(Até o Vecto.: ' + NxDatePicker4.Text + ')';
    if (NxDatePicker1.Date > 10) and (NxDatePicker2.Date > 10) then
      fRelPagarReceber3.vOpcaoImp := fRelPagarReceber3.vOpcaoImp + '(Emissão: ' + NxDatePicker1.Text + ' a ' + NxDatePicker2.Text + ')'
    else if (NxDatePicker1.Date > 10) then
      fRelPagarReceber3.vOpcaoImp := fRelPagarReceber3.vOpcaoImp + '(Apartir da Emissão: ' + NxDatePicker1.Text + ')'
    else if (NxDatePicker2.Date > 10) then
      fRelPagarReceber3.vOpcaoImp := fRelPagarReceber3.vOpcaoImp + '(Até a Emissão: ' + NxDatePicker2.Text + ')';
    if trim(RxDBLookupCombo1.Text) <> '' then
    begin
      fRelPagarReceber3.vOpcaoImp := fRelPagarReceber3.vOpcaoImp + '(Filial: ' + RxDBLookupCombo1.Text + ')';
      fRelPagarReceber3.vFilialOpc := RxDBLookupCombo1.KeyValue;
    end
    else
      fRelPagarReceber3.vFilialOpc := 0;
    fRelPagarReceber3.fDMCadDuplicata := fDMCadDuplicata;
    if NxDatePicker3.Date > 10 then
      fRelPagarReceber3.vDataInicial := NxDatePicker3.Date - 1;
    fRelPagarReceber3.vLista := vLista;
    fRelPagarReceber3.vTipo_Lista := Tipo_Lista;
    fRelPagarReceber3.RlReport1.PreviewModal;
    fRelPagarReceber3.RlReport1.Free;
    FreeAndNil(fRelPagarReceber3);
  end
  else
  begin
    fRelPagarReceber2 := TfRelPagarReceber2.Create(Self);
    fRelPagarReceber2.vTipo_ES := 'A';
    case RadioGroup2.ItemIndex of
      0:
        fRelPagarReceber2.vTipo_ES := 'E';
      1:
        fRelPagarReceber2.vTipo_ES := 'S';
    end;
    fRelPagarReceber2.vOpcaoImp := '';
    fRelPagarReceber2.vOpcaoImp2 := '';
    if (NxDatePicker3.Date > 10) and (NxDatePicker4.Date > 10) then
      fRelPagarReceber2.vOpcaoImp2 := '(Vecto: ' + NxDatePicker3.Text + ' a ' + NxDatePicker4.Text + ')'
    else if (NxDatePicker3.Date > 10) then
      fRelPagarReceber2.vOpcaoImp2 := '(Apartir do Vecto.: ' + NxDatePicker3.Text + ')'
    else if (NxDatePicker4.Date > 10) then
      fRelPagarReceber2.vOpcaoImp2 := '(Até o Vecto.: ' + NxDatePicker4.Text + ')';
    if (NxDatePicker1.Date > 10) and (NxDatePicker2.Date > 10) then
      fRelPagarReceber2.vOpcaoImp := fRelPagarReceber2.vOpcaoImp + '(Emissão: ' + NxDatePicker1.Text + ' a ' + NxDatePicker2.Text + ')'
    else if (NxDatePicker1.Date > 10) then
      fRelPagarReceber2.vOpcaoImp := fRelPagarReceber2.vOpcaoImp + '(Apartir da Emissão: ' + NxDatePicker1.Text + ')'
    else if (NxDatePicker2.Date > 10) then
      fRelPagarReceber2.vOpcaoImp := fRelPagarReceber2.vOpcaoImp + '(Até a Emissão: ' + NxDatePicker2.Text + ')';
    if trim(RxDBLookupCombo1.Text) <> '' then
    begin
      fRelPagarReceber2.vOpcaoImp := fRelPagarReceber2.vOpcaoImp + '(Filial: ' + RxDBLookupCombo1.Text + ')';
      fRelPagarReceber2.vFilialOpc := RxDBLookupCombo1.KeyValue;
    end
    else
      fRelPagarReceber2.vFilialOpc := 0;
    fRelPagarReceber2.fDMCadDuplicata := fDMCadDuplicata;
    if NxDatePicker3.Date > 10 then
      fRelPagarReceber2.vDataInicial := NxDatePicker3.Date - 1;
    fRelPagarReceber2.vLista := vLista;
    fRelPagarReceber2.vTipo_Lista := Tipo_Lista;
    fRelPagarReceber2.RlReport1.PreviewModal;
    fRelPagarReceber2.RlReport1.Free;
    FreeAndNil(fRelPagarReceber2);
  end;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadDuplicata.prc_Imp_Duplicata;
var
  vNumImpressao: Integer;
  i: Integer;
  vTexto: string;
  vNumCopias: Integer;
begin
  vTexto := InputBox('Nº de Copias', '', '2');
  vTexto := Monta_Numero(vTexto, 0);
  if trim(vTexto) = '' then
    vTexto := '1';
  vNumCopias := StrToInt(vTexto);

  if vNumCopias < 1 then
  begin
    ShowMessage('*** Nº de cópias não informado!');
    exit;
  end;
  if not (fDMCadDuplicata.cdsDuplicata_Consulta.Active) and (fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty) then
  begin
    ShowMessage('*** Não existe registro para impressão!');
    exit;
  end;

  vNumImpressao := 0;
  SMDBGrid1.DisableScroll;
  try
    fDMCadDuplicata.mImpDuplicata.EmptyDataSet;
    fDMCadDuplicata.cdsDuplicata_Consulta.First;
    while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_ES.AsString = 'E') then
      begin
        for i := 1 to vNumCopias do
        begin
          fDMCadDuplicata.mImpDuplicata.Insert;
          fDMCadDuplicata.mImpDuplicataID_Duplicata.AsInteger := fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger;
          fDMCadDuplicata.mImpDuplicata.Post;
        end;
        vNumImpressao := vNumImpressao + 1;
      end;
      fDMCadDuplicata.cdsDuplicata_Consulta.Next;
    end;
  except
  end;
  SMDBGrid1.EnableScroll;
  if vNumImpressao <= 0 then
  begin
    ShowMessage('Nenhuma duplicata selecionada para a impressão!');
    exit;
  end;
  try
    fRelDuplicata := TfRelDuplicata.Create(Self);
    fRelDuplicata.fDMCadDuplicata := fDMCadDuplicata;
    fRelDuplicata.RLReport1.PreviewModal;
    fRelDuplicata.RLReport1.Free;
    FreeAndNil(fRelDuplicata);
  except
  end;
end;

procedure TfrmCadDuplicata.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not (pnlPesquisa.Visible);
end;

procedure TfrmCadDuplicata.btnPagtoSelecionadoClick(Sender: TObject);
var
  vFlag: Boolean;
begin
  if not (fDMCadDuplicata.cdsDuplicata_Consulta.Active) or (fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty) then
    Exit;
  if fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S' then
  begin
    vFlag := True;
    SMDBGrid1.DisableScroll;
    fDMCadDuplicata.cdsDuplicata_Consulta.First;
    while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (fDMCadDuplicata.cdsDuplicata_ConsultaAPROVADO.AsString <> 'S') then
      begin
        vFlag := False;
        fDMCadDuplicata.cdsDuplicata_Consulta.Last;
      end;
      fDMCadDuplicata.cdsDuplicata_Consulta.Next;
    end;
    SMDBGrid1.EnableScroll;
    if not vFlag then
    begin
      MessageDlg('*** Foi seleciondo título sem a aprovação!', mtInformation, [mbOk], 0);
      exit;
    end;
  end;

  fDMCadDuplicata.mCheque.EmptyDataSet;
  fDMCadDuplicata.vID_Cheque := 0;
  ffrmCadDuplicata_Pag_Sel := TfrmCadDuplicata_Pag_Sel.Create(self);
  case RadioGroup2.ItemIndex of
    0:
      ffrmCadDuplicata_Pag_Sel.vTipo_ES := 'E';
    1, 2:
      ffrmCadDuplicata_Pag_Sel.vTipo_ES := 'S';
  end;
  ffrmCadDuplicata_Pag_Sel.fDMCadDuplicata := fDMCadDuplicata;
  ffrmCadDuplicata_Pag_Sel.ShowModal;
  FreeAndNil(frmCadDuplicata_Pag_Sel);

  if (fDMCadDuplicata.vDtPgtoSel > 10) and (fDMCadDuplicata.vID_ContaPgtoSel > 0) then
  begin
    vTipo_ES_Loc := '';
    prc_Gravar_Selecionados;
    if (fDMCadDuplicata.mCheque.RecordCount > 0) and (vTipo_ES_Loc = 'S') then
      prc_Imprimir_Cheque;
  end;
  btnConsultarClick(Sender);
  btnPagtoSelecionado.Enabled := False;
  btnPagamento.Enabled := False;
end;

procedure TfrmCadDuplicata.prc_Opcao_Registro;
begin
  if (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E') then
    lblPessoa.Caption := 'Cliente:'
  else
    lblPessoa.Caption := 'Fornecedor:';
  {lblVendedor.Visible   := ((fDMCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E'));
  rxdbVendedor.Visible  := ((fDMCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E'));
  lblComissao.Visible   := ((fDMCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E'));
  dbedtComissao.Visible := ((fDMCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E'));
  SpeedButton5.Visible  := rxdbVendedor.Visible;}
  gbxVendedor.Visible := ((fDMCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E'));
  Label42.Visible := ((fdmCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadDuplicata.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S') and (gbxVendedor.Visible));
  DBEdit22.Visible := ((fdmCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadDuplicata.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S') and (gbxVendedor.Visible));
end;

procedure TfrmCadDuplicata.RadioGroup2Click(Sender: TObject);
begin
  case RadioGroup2.ItemIndex of
    0:
      fDMCadDuplicata.prc_Abrir_Pessoa('R');
    1:
      fDMCadDuplicata.prc_Abrir_Pessoa('P');
    2:
      fDMCadDuplicata.prc_Abrir_Pessoa('');
  end;
  RzCheckList1.ItemChecked[0] := (RadioGroup2.ItemIndex > 0);
end;

procedure TfrmCadDuplicata.RxDBLookupCombo9CloseUp(Sender: TObject);
begin
  RxDBLookupCombo9.LookupDisplay := 'DESCRICAO';
end;

procedure TfrmCadDuplicata.RxDBLookupCombo9DropDown(Sender: TObject);
begin
  RxDBLookupCombo9.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadDuplicata.RxDBLookupCombo9Enter(Sender: TObject);
begin
  if vID_Conta_Orc_Loc > 0 then
  begin
    fDMCadDuplicata.cdsContaOrcamento.Filtered := False;
    fDMCadDuplicata.cdsContaOrcamento.Filter   := 'SUPERIOR = ' + IntToStr(vID_Conta_Orc_Loc);
    fDMCadDuplicata.cdsContaOrcamento.Filtered := True;
  end;

  fDMCadDuplicata.cdsContaOrcamento.IndexFieldNames := 'CODIGO';
  stat1.Panels[2].Text := 'F2 - Consulta Conta Orçamento';
//  StaticText2.Visible := True;
end;

procedure TfrmCadDuplicata.RxDBLookupCombo9Exit(Sender: TObject);
begin
  stat1.Panels[2].Text := '';
//  fDMCadDuplicata.cdsContaOrcamento.Close;
//  StaticText2.Visible := False;
end;

procedure TfrmCadDuplicata.RxDBLookupCombo9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    if fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E' then
      frmSel_ContaOrc.ComboBox2.ItemIndex := 0
    else
      frmSel_ContaOrc.ComboBox2.ItemIndex := 1;
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Pos > 0 then
      fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos
    else
      fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.Clear;
  end;
end;

procedure TfrmCadDuplicata.RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadDuplicata.cdsDuplicataID_PESSOA.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    if fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E' then
      frmSel_Pessoa.vTipo_Pessoa := 'C'
    else
      //frmSel_Pessoa.vTipo_Pessoa := 'F';
      frmSel_Pessoa.vTipo_Pessoa := 'FT';
    frmSel_Pessoa.ShowModal;
    fDMCadDuplicata.cdsDuplicataID_PESSOA.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end;
end;

procedure TfrmCadDuplicata.SMDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F3) and not (fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty) and (fDMCadDuplicata.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S') then
  begin
    prc_Posiciona_Duplicata(fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger);
    ffrmCadDuplicata_Alt := TfrmCadDuplicata_Alt.Create(self);
    ffrmCadDuplicata_Alt.fDMCadDuplicata := fDMCadDuplicata;
    ffrmCadDuplicata_Alt.TS_DtVencimento.TabVisible := False;
    ffrmCadDuplicata_Alt.RzPageControl1.ActivePage := ffrmCadDuplicata_Alt.TS_ContaOrcamento;
    ffrmCadDuplicata_Alt.ShowModal;
    FreeAndNil(ffrmCadDuplicata_Alt);
  end
  else if Key = Vk_Return then
    RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadDuplicata.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    NxButton1.Visible := not (NxButton1.Visible)
  else if (Key = 45) and (btnInserir.Enabled) and (btnInserir.Visible) and not (fDMCadDuplicata.cdsDuplicata.State in [dsEdit, dsInsert]) then
    btnInserirClick(Sender);
  if (Shift = [ssCtrl]) and (Key = 83) then //S
    btnLerItau.Visible := not (btnLerItau.Visible);
end;

procedure TfrmCadDuplicata.prc_Consultar_Comissao;
begin

end;

procedure TfrmCadDuplicata.SMDBGrid1ChangeSelection(Sender: TObject);
begin
  btnPagamento.Enabled := ((SMDBGrid1.SelectedRows.Count = 1) and (vUser_Pagto) and (StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat)) > 0));
  btnPagtoSelecionado.Enabled := ((SMDBGrid1.SelectedRows.Count > 0) and (vUser_Pagto) and (StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat)) > 0));
  btnEstorno.Enabled := ((SMDBGrid1.SelectedRows.Count = 1) and (StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PAGO.AsFloat)) > 0) and (vUser_Estorno));
  btnDescontada.Enabled := ((SMDBGrid1.SelectedRows.Count > 0) and ((StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat)) > 0) or (fDMCadDuplicata.cdsDuplicata_ConsultaCONFIRMA_PGTO.AsString <> 'S')));
end;

procedure TfrmCadDuplicata.NxButton2Click(Sender: TObject);
begin
  ffrmCadDuplicata_Gerar := TfrmCadDuplicata_Gerar.Create(self);
  ffrmCadDuplicata_Gerar.fDMCadDuplicata := fDMCadDuplicata;
  ffrmCadDuplicata_Gerar.ShowModal;
  fDMCadDuplicata.mGerarDup.First;
  if not fDMCadDuplicata.mGerarDup.IsEmpty then
  begin
    fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime := fDMCadDuplicata.mGerarDupDtVencimento.AsDateTime;
    fDMCadDuplicata.cdsDuplicataPARCELA.AsInteger := fDMCadDuplicata.mGerarDupParcela.AsInteger;
    fDMCadDuplicata.cdsDuplicataVLR_PARCELA.AsFloat := StrToFloat(FormatFloat('0.00', fDMCadDuplicata.mGerarDupVlrParcela.AsFloat));
  end;
end;

procedure TfrmCadDuplicata.RxDBComboBox1Change(Sender: TObject);
begin
  Label8.Visible := (RxDBComboBox1.ItemIndex = 0);
  DBEdit2.Visible := (RxDBComboBox1.ItemIndex = 0);
  Label46.Visible := (RxDBComboBox1.ItemIndex = 0);
  DBEdit19.Visible := (RxDBComboBox1.ItemIndex = 0);
  DBEDit2.TabStop := DBEdit2.Visible;
  DBEDit19.TabStop := DBEdit19.Visible;
end;

procedure TfrmCadDuplicata.DBEdit7Exit(Sender: TObject);
var
  vNumAux: string;
begin
  if (fDMCadDuplicata.cdsDuplicata.State in [dsInsert]) and (fDMCadDuplicata.cdsDuplicataNUMNOTA.AsInteger <= 0) and (fDMCadDuplicata.cdsDuplicataTIPO_MOV.AsString = 'N') then
  begin
    vNumAux := Monta_Texto(fDMCadDuplicata.cdsDuplicataNUMDUPLICATA.AsString, 0);
    if (Trim(vNumAux) <> '') and (Trim(vNumAux) = '0') then
      fDMCadDuplicata.cdsDuplicataNUMNOTA.AsInteger := StrToInt(vNumAux);
  end;
end;

procedure TfrmCadDuplicata.BitBtn1Click(Sender: TObject);
var
  ffrmCadDuplicata_Total: TfrmCadDuplicata_Total;
begin
  ffrmCadDuplicata_Total := TfrmCadDuplicata_Total.Create(self);
  ffrmCadDuplicata_Total.fDMCadDuplicata := fDMCadDuplicata;
  btnRecalcularClick(Sender);
  ffrmCadDuplicata_Total.ShowModal;
  FreeAndNil(ffrmCadDuplicata_Total);
end;

procedure TfrmCadDuplicata.MenuItem4Click(Sender: TObject);
begin
  if MessageDlg('Gerar cobrança descontada dos títulos selecionados?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  prc_Gerar_mTitulos;
  if fDMCadDuplicata.vGerou_Descontada then
    btnConsultarClick(Sender);
end;

procedure TfrmCadDuplicata.prc_Gerar_mTitulos;
var
  ffrmCadDuplicata_Desc: TfrmCadDuplicata_Desc;
  ffrmEscolhe_Filial: TfrmEscolhe_Filial;
  vVlrTotal: Real;
  vDtPrimeiro_Vecto, vDtFinal_Vecto: TDateTime;
  vQtdTit: Integer;
begin
  vDtFinal_Vecto := 0;
  vDtPrimeiro_Vecto := 0;
  vVlrTotal := 0;
  vQtdTit := 0;
  SMDBGrid1.DisableScroll;
  fDMCadDuplicata.cdsDuplicata_Consulta.First;
  while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PAGO.AsFloat)) <= 0) and (fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_ES.AsString = 'E') and (fDMCadDuplicata.cdsDuplicata_ConsultaID_DESCONTADA.AsInteger <= 0) then
    begin
      vVlrTotal := vVlrTotal + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat;
      vQtdTit := vQtdTit + 1;
      if not fDMCadDuplicata.mTitulos.FindKey([fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger]) then
      begin
        if (vDtPrimeiro_Vecto < 10) or (fDMCadDuplicata.cdsDuplicata_ConsultaDTVENCIMENTO.AsDateTime < vDtPrimeiro_Vecto) then
          vDtPrimeiro_Vecto := fDMCadDuplicata.cdsDuplicata_ConsultaDTVENCIMENTO.AsDateTime;
        if (vDtFinal_Vecto < 10) or (fDMCadDuplicata.cdsDuplicata_ConsultaDTVENCIMENTO.AsDateTime > vDtFinal_Vecto) then
          vDtFinal_Vecto := fDMCadDuplicata.cdsDuplicata_ConsultaDTVENCIMENTO.AsDateTime;

        fDMCadDuplicata.mTitulos.Insert;
        fDMCadDuplicata.mTitulosID.AsInteger := fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger;
        fDMCadDuplicata.mTitulosID_Cliente.AsInteger := fDMCadDuplicata.cdsDuplicata_ConsultaID_PESSOA.AsInteger;
        fDMCadDuplicata.mTitulosNome_Cliente.AsString := fDMCadDuplicata.cdsDuplicata_ConsultaNOME_PESSOA.AsString;
        fDMCadDuplicata.mTitulosVlr_Parcela.AsFloat := fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat;
        fDMCadDuplicata.mTitulosDt_Vencimento.AsDateTime := fDMCadDuplicata.cdsDuplicata_ConsultaDTVENCIMENTO.AsDateTime;
        fDMCadDuplicata.mTitulosNum_Duplicata.AsString := fDMCadDuplicata.cdsDuplicata_ConsultaNUMDUPLICATA.AsString;
        fDMCadDuplicata.mTitulosParcela.AsInteger := fDMCadDuplicata.cdsDuplicata_ConsultaPARCELA.AsInteger;
        fDMCadDuplicata.mTitulosFilial.AsInteger := fDMCadDuplicata.cdsDuplicata_ConsultaFILIAL.AsInteger;
        fDMCadDuplicata.mTitulosCNPJ_Cliente.AsString := fDMCadDuplicata.cdsDuplicata_ConsultaCNPJ_CPF.AsString;
        fDMCadDuplicata.mTitulos.Post;
      end;
    end;
    fDMCadDuplicata.cdsDuplicata_Consulta.Next;
  end;
  SMDBGrid1.EnableScroll;

  ffrmCadDuplicata_Desc := TfrmCadDuplicata_Desc.Create(self);
  ffrmCadDuplicata_Desc.fDMCadDuplicata := fDMCadDuplicata;
  ffrmCadDuplicata_Desc.CurrencyEdit1.Value := vVlrTotal;
  ffrmCadDuplicata_Desc.CurrencyEdit7.Value := vQtdTit;
  ffrmCadDuplicata_Desc.vID_Descontada := 0;
  ffrmCadDuplicata_Desc.ShowModal;
  FreeAndNil(ffrmCadDuplicata_Desc);
end;

procedure TfrmCadDuplicata.Zerar1Click(Sender: TObject);
begin
  if MessageDlg('Limpar as duplicatas já selecionadas e depois gerar cobrança descontada dos títulos selecionados?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadDuplicata.mTitulos.EmptyDataSet;
  prc_Gerar_mTitulos;
  if fDMCadDuplicata.vGerou_Descontada then
    btnConsultarClick(Sender);
end;

procedure TfrmCadDuplicata.ConfirmaPagamento1Click(Sender: TObject);
begin
  if MessageDlg('Confirma pagamentos dos títulos descontados?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadDuplicata.cdsDuplicata_Consulta.First;
  while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (fDMCadDuplicata.cdsDuplicata_ConsultaID_DESCONTADA.AsInteger > 0) and (fDMCadDuplicata.cdsDuplicata_ConsultaCONFIRMA_PGTO.AsString <> 'S') and (StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat)) <= 0) then
    begin
      fDMCadDuplicata.prc_Localizar(fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger);
      if not fDMCadDuplicata.cdsDuplicata.IsEmpty then
      begin
        fDMCadDuplicata.cdsDuplicata.Edit;
        fDMCadDuplicata.cdsDuplicataCONFIRMA_PGTO.AsString := 'S';
        fDMCadDuplicata.cdsDuplicata.Post;
        fDMCadDuplicata.prc_Gravar_Dupicata_Hist('OUT', 'CONFIRMAÇÃO DO PAGAMENTO DESCONTADO', 0, 0, 0, 0, 0, 0, 0);
        fDMCadDuplicata.cdsDuplicata.ApplyUpdates(0);
      end;
    end;
    fDMCadDuplicata.cdsDuplicata_Consulta.Next;
  end;
  MessageDlg('*** Título confirmados!', mtConfirmation, [mbOk], 0);
  btnConsultarClick(Sender);
end;

procedure TfrmCadDuplicata.Clientenopagou1Click(Sender: TObject);
var
  vHist: string;
begin
  if fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty then
    exit;
  if MessageDlg('Confirma não pagamento pelo cliente dos títulos selecionados?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  if MessageDlg('Essa opção vai colocar o título do cliente em aberto ' + #13 + ' e junto vai excluir a comissão do representante ' + #13 + #13 + 'Confirmar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDMCadDuplicata.cdsDuplicata_Consulta.First;
  while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (fDMCadDuplicata.cdsDuplicata_ConsultaID_DESCONTADA.AsInteger > 0) and (fDMCadDuplicata.cdsDuplicata_ConsultaCONFIRMA_PGTO.AsString <> 'S') then
    begin
      fDMCadDuplicata.prc_Localizar(fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger);
      if not (fDMCadDuplicata.cdsDuplicata.IsEmpty) and (StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat)) <= 0) and (fDMCadDuplicata.cdsDuplicataCONFIRMA_PGTO.AsString <> 'S') then
      begin
        fDMCadDuplicata.cdsDuplicata.Edit;
        fDMCadDuplicata.cdsDuplicataCONFIRMA_PGTO.AsString := 'N';

        fDMCadDuplicata.cdsDuplicataDTULTPAGAMENTO.Clear;
        fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat := StrToFloat(FormatFloat('0.00', 0));
        fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger := 0;

        vHist := 'EXCLUIDA DA COBRANÇA DESCONTADA Nº ' + IntToStr(fDMCadDuplicata.cdsDuplicataID_DESCONTADA.AsInteger) + ' DEVIDO AO NÃO PAGAMENTO PELO CLIENTE';
        fDMCadDuplicata.prc_Gravar_Dupicata_Hist('OUT', vHist, 0, 0, 0, 0, 0, 0, 0, 0);
        fDMCadDuplicata.cdsDuplicataID_DESCONTADA.AsInteger := 0;

        fDMCadDuplicata.cdsDuplicataVLR_JUROSPAGOS.AsFloat := 0;
        fDMCadDuplicata.cdsDuplicataVLR_MULTA.AsFloat := 0;
        fDMCadDuplicata.cdsDuplicataVLR_DESCONTO.AsFloat := 0;
        fDMCadDuplicata.cdsDuplicataVLR_DESPESAS.AsFloat := 0;
        fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicataVLR_PARCELA.AsFloat));
        if fDMCadDuplicata.cdsDuplicata.State in [dsEdit, dsInsert] then
          fDMCadDuplicata.cdsDuplicata.Post;
        fDMCadDuplicata.cdsDuplicata.ApplyUpdates(0);
      end;
    end;
    fDMCadDuplicata.cdsDuplicata_Consulta.Next;
  end;
  btnConsultarClick(Sender);
end;

procedure TfrmCadDuplicata.prc_Verifica_Usuario;
begin
  if fDMCadDuplicata.qParametros_FinCONTROLAR_DUP_USUARIO.AsString = 'S' then
  begin
    if fDMCadDuplicata.qParametros_UsuarioMOSTRAR_DUP_REC_PAG.AsString = 'R' then
      fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString := 'E'
    else if fDMCadDuplicata.qParametros_UsuarioMOSTRAR_DUP_REC_PAG.AsString = 'P' then
      fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString := 'S';
    if fDMCadDuplicata.qParametros_UsuarioMOSTRAR_DUP_REC_PAG.AsString <> 'A' then
    begin
      RxDBComboBox11Change(nil);
      RxDBComboBox11.Enabled := False;
    end;
  end;
end;

procedure TfrmCadDuplicata.AgrupadoPordia1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    vFilial := RxDBLookupCombo1.KeyValue
  else
    vFilial := 0;
  vTipo_Config_Email := 3;
  prc_Imp_Detalhada(True, 'A');
end;

procedure TfrmCadDuplicata.ListaSimples1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    vFilial := RxDBLookupCombo1.KeyValue
  else
    vFilial := 0;
  vTipo_Config_Email := 3;
  prc_Imp_Detalhada(True, 'S');
end;

procedure TfrmCadDuplicata.Panel6Enter(Sender: TObject);
begin
  if (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString <> 'S') and (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString <> 'E') then
  begin
    MessageDlg('*** Tipo (Receber/Pagar) não informado!', mtInformation, [mbOk], 0);
    RxDBComboBox11.SetFocus;
    exit;
  end;
  if (fDMCadDuplicata.cdsDuplicataTIPO_MOV.AsString <> 'N') and (fDMCadDuplicata.cdsDuplicataTIPO_MOV.AsString <> 'D') then
  begin
    MessageDlg('*** Tipo Doc não informado!', mtInformation, [mbOk], 0);
    RxDBComboBox1.SetFocus;
    exit;
  end;
end;

procedure TfrmCadDuplicata.GravarComissao1Click(Sender: TObject);
begin
  ShowMessage('Desabilitado, ver com o suporte!');
  exit;
  fDMCadDuplicata.cdsDuplicata.Open;
  fDMCadDuplicata.cdsPessoa.IndexFieldNames := 'CODIGO';
  fDMCadDuplicata.cdsPessoa.First;
  while not fDMCadDuplicata.cdsPessoa.Eof do
  begin
    if (fDMCadDuplicata.cdsPessoaID_VENDEDOR.IsNull) or (fDMCadDuplicata.cdsPessoaID_VENDEDOR.AsInteger = 0) then
    begin
      fDMCadDuplicata.cdsPessoa.Next;
      Continue;
    end;
    fDMCadDuplicata.cdsDuplicata.Close;
    fDMCadDuplicata.sdsDuplicata.CommandText := 'SELECT * FROM DUPLICATA WHERE TIPO_ES = ''E'' AND ID_PESSOA = ' + fDMCadDuplicata.cdsPessoaCODIGO.AsString;
    fDMCadDuplicata.cdsDuplicata.Open;
    while not fDMCadDuplicata.cdsDuplicata.Eof do
    begin
      fDMCadDuplicata.cdsDuplicata.Edit;
      fDMCadDuplicata.cdsDuplicataID_VENDEDOR.AsInteger := fDMCadDuplicata.cdsPessoaID_VENDEDOR.AsInteger;
      fDMCadDuplicata.cdsDuplicataPERC_COMISSAO.AsFloat := fDMCadDuplicata.cdsPessoaPERC_COMISSAO.AsFloat;
      fDMCadDuplicata.cdsDuplicata.Post;
      fDMCadDuplicata.cdsDuplicata.ApplyUpdates(0);
      fDMCadDuplicata.cdsDuplicata.Next;
    end;
    fDMCadDuplicata.cdsPessoa.Next;
  end;
  fDMCadDuplicata.cdsDuplicata.Close;
  fDMCadDuplicata.sdsDuplicata.CommandText := fDMCadDuplicata.ctCommand;
  fDMCadDuplicata.cdsDuplicata.Open;

  RadioGroup2.ItemIndex := 0;
  RadioGroup1.ItemIndex := 1;
  btnConsultar.Click;
  fDMCadDuplicata.cdsDuplicata_Consulta.First;
  while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
  begin
    prc_Posiciona_Duplicata(fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger);
    fDMCadDuplicata.cdsDuplicata_Hist.Last;
    if fDMCadDuplicata.cdsDuplicata_HistTIPO_HISTORICO.AsString = 'PAG' then
      if fDMCadDuplicata.cdsDuplicata_HistID_COMISSAO.AsInteger = 0 then
      begin
        fDMCadDuplicata.cdsDuplicata_Hist.Edit;
        fDMCadDuplicata.cdsDuplicataID_COMISSAO.AsInteger := fDMCadDuplicata.fnc_Gravar_ExtComissao;
        fDMCadDuplicata.cdsDuplicata_Hist.Post;
      end;
    fDMCadDuplicata.cdsDuplicata_Consulta.Next;
  end;
  fDMCadDuplicata.cdsDuplicata_Hist.ApplyUpdates(0);
end;

procedure TfrmCadDuplicata.GravaComissao2Click(Sender: TObject);
begin
  fDMCadDuplicata.cdsDuplicata_Consulta.First;
  while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
  begin
    prc_Posiciona_Duplicata(fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger);
    fDMCadDuplicata.cdsDuplicata_Hist.Last;
    if fDMCadDuplicata.cdsDuplicata_HistTIPO_HISTORICO.AsString = 'PAG' then
    begin
      if not fnc_Existe_Comissao then
      //if fDMCadDuplicata.cdsDuplicata_HistID_COMISSAO.AsInteger = 0 then
      begin
        fDMCadDuplicata.cdsDuplicata_Hist.Edit;
        fDMCadDuplicata.cdsDuplicataID_COMISSAO.AsInteger := fDMCadDuplicata.fnc_Gravar_ExtComissao;
        fDMCadDuplicata.cdsDuplicata_Hist.Post;
        fDMCadDuplicata.cdsDuplicata_Hist.ApplyUpdates(0);
      end;
    end;
    fDMCadDuplicata.cdsDuplicata_Consulta.Next;
  end;
end;

function TfrmCadDuplicata.fnc_Existe_Comissao: Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.CommandText := 'SELECT ID FROM EXTCOMISSAO ' + 'WHERE ID_DUPLICATA  = :ID_DUPLICATA ' + 'AND ITEM_DUPLICATA_HIST = :ITEM_DUPLICATA_HIST ';
    sds.ParamByName('ID_DUPLICATA').AsInteger := fDMCadDuplicata.cdsDuplicata_HistID.AsInteger;
    sds.ParamByName('ITEM_DUPLICATA_HIST').AsInteger := fDMCadDuplicata.cdsDuplicata_HistITEM.AsInteger;
    sds.Open;
    if sds.FieldByName('ID').AsInteger > 0 then
      Result := True;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmCadDuplicata.btnLerItauClick(Sender: TObject);
var
  ffrmCadDuplicata_LeItau: TfrmCadDuplicata_LeItau;
begin
  ffrmCadDuplicata_LeItau := TfrmCadDuplicata_LeItau.Create(self);
  ffrmCadDuplicata_LeItau.fDMCadDuplicata := fDMCadDuplicata;
  ffrmCadDuplicata_LeItau.ShowModal;
  FreeAndNil(ffrmCadDuplicata_LeItau);
end;

procedure TfrmCadDuplicata.RxDBLookupCombo4Enter(Sender: TObject);
begin
  RxDBLookupCombo4.readonly := not ((trim(fDMCadDuplicata.cdsDuplicataNOSSONUMERO.AsString) = '') or (fDMCadDuplicata.cdsDuplicataNOSSONUMERO.IsNull));
end;

procedure TfrmCadDuplicata.RxDBLookupCombo5Enter(Sender: TObject);
begin
  RxDBLookupCombo5.readonly := not ((trim(fDMCadDuplicata.cdsDuplicataNOSSONUMERO.AsString) = '') or (fDMCadDuplicata.cdsDuplicataNOSSONUMERO.IsNull));
end;

procedure TfrmCadDuplicata.RxDBComboBox11Enter(Sender: TObject);
begin
  vTipo_ES_Loc := fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString;
end;

procedure TfrmCadDuplicata.RxDBComboBox11Exit(Sender: TObject);
begin
  if fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString <> vTipo_ES_Loc then
    fDMCadDuplicata.prc_Abrir_Pessoa(fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString);
  prc_GridHist;
  prc_Mostra_Aprov;
end;

procedure TfrmCadDuplicata.RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if trim(RxDBLookupCombo2.Text) <> '' then
      vCodPessoa_Pos := RxDBLookupCombo2.KeyValue;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    if fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E' then
      frmSel_Pessoa.vTipo_Pessoa := 'C'
    else
      frmSel_Pessoa.vTipo_Pessoa := 'FT';
    frmSel_Pessoa.ShowModal;
    if vCodPessoa_Pos > 0 then
      RxDBLookupCombo2.KeyValue := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end;
end;

procedure TfrmCadDuplicata.RxDBLookupCombo2Enter(Sender: TObject);
begin
  stat1.Panels[2].Text := 'F2 - Consulta Cliente/Fornecedor';
  //StaticText2.Visible := True;
end;

procedure TfrmCadDuplicata.RxDBLookupCombo2Exit(Sender: TObject);
begin
  stat1.Panels[2].Text := '';
  //StaticText2.Visible := True;
end;

procedure TfrmCadDuplicata.ExtratoVendedor1Click(Sender: TObject);
var
  vArq: string;
  vIndice_Ant: string;
begin
  vIndice_Ant := fDMCadDuplicata.cdsDuplicata_Consulta.IndexFieldNames;
  fDMCadDuplicata.cdsDuplicata_Consulta.IndexFieldNames := 'NOME_VENDEDOR;' + vIndice_Ant;
  prc_Monta_Cab(True);
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Extrato_Dup_Vendedor.fr3';
  if FileExists(vArq) then
    fDMCadDuplicata.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMCadDuplicata.frxReport1.variables['ImpOpcao'] := QuotedStr(vOpcaoImp);
  fDMCadDuplicata.frxReport1.ShowReport;
end;

procedure TfrmCadDuplicata.prc_Monta_Cab(Extrato: Boolean);
begin
  vOpcaoImp := '';
  case RadioGroup2.ItemIndex of
    0:
      vOpcaoImp := '(Entrada)';
    1:
      vOpcaoImp := '(Saida)';
  end;
  if (trim(NxDatePicker1.Text) <> '') and (trim(NxDatePicker2.Text) <> '') then
  //if (NxDatePicker1.Date > 10) and (NxDatePicker2.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Emissão: ' + NxDatePicker1.Text + ' a ' + NxDatePicker2.Text + ')'
  else
  //if (NxDatePicker1.Date > 10) then
 if (trim(NxDatePicker1.Text) <> '') then
    vOpcaoImp := vOpcaoImp + '(A partir da emissão: ' + NxDatePicker1.Text + ')'
  else
  //if (NxDatePicker2.Date > 10) then
 if (trim(NxDatePicker2.Text) <> '') then
    vOpcaoImp := vOpcaoImp + '(Até a Emissão: ' + NxDatePicker2.Text + ')';
  if trim(RxDBLookupCombo1.Text) <> '' then
    vOpcaoImp := vOpcaoImp + '(Filial: ' + RxDBLookupCombo1.Text + ')';
  //if trim(RxDBLookupCombo7.Text) <> '' then
  //  vOpcaoImp  := fRelPagarReceber2.vOpcaoImp + '(Banco: ' + RxDBLookupCombo1.Text + ')';
  if (trim(NxDatePicker3.Text) <> '') and (trim(NxDatePicker4.Text) <> '') then
    vOpcaoImp := vOpcaoImp + '(Vencimento: ' + NxDatePicker3.Text + ' a ' + NxDatePicker4.Text + ')'
  else if (trim(NxDatePicker3.Text) <> '') then
    vOpcaoImp := vOpcaoImp + '(A partir do vencimento: ' + NxDatePicker3.Text + ')'
  else if (trim(NxDatePicker4.Text) <> '') then
    vOpcaoImp := vOpcaoImp + '(Até a vencimento: ' + NxDatePicker4.Text + ')';
end;

procedure TfrmCadDuplicata.DBCheckBox8Exit(Sender: TObject);
begin
  NxButton2.Visible := (fDMCadDuplicata.cdsDuplicataREGIME_CAIXA.AsString <> 'S');
  if (fDMCadDuplicata.cdsDuplicataREGIME_CAIXA.AsString = 'S') and (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E') then
  begin
    if (fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger <= 0) and (fDMCadDuplicata.qParametrosID_TIPO_COBRANCA_PADRAO.AsInteger > 0) then
      fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger := fDMCadDuplicata.qParametrosID_TIPO_COBRANCA_PADRAO.AsInteger;
    if (fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger <= 0) and (fDMCadDuplicata.qParametrosID_CONTA_PADRAO.AsInteger > 0) then
      fDMCadDuplicata.cdsDuplicataID_CONTA_BOLETO.AsInteger := fDMCadDuplicata.qParametrosID_CONTA_PADRAO.AsInteger;
  end;
end;

procedure TfrmCadDuplicata.prc_Gerar_Bordero_Excel(planilha: Variant);
var
  Linha, Coluna: Integer;
  valorCampo: string;
  vNome_Grupo: string;
  vFlag: Boolean;
  ColunaP: Integer;
  i2: Integer;
  ano, mes, dia: Word;
  vTexto: string;
begin
  linha := 1;
  ColunaP := 0;
  i2 := 0;
  for coluna := 0 to 23 do
  begin
    case coluna of
      0:
        valorcampo := 'VERSÃO';
      1:
        valorcampo := 'FILIAL';
      2:
        valorcampo := 'CLIENTE';
      3:
        valorcampo := 'CÓDIGO';
      4:
        valorcampo := 'RAZÃO SOCIAL DEVEDOR';
      5:
        valorcampo := 'NOME FANTASIA DEVEDOR';
      6:
        valorcampo := 'ENDEREÇO DEVEDOR';
      7:
        valorcampo := 'BAIRRO DEVEDOR';
      8:
        valorcampo := 'CEP DEVEDOR';
      9:
        valorcampo := 'CIDADE DEVEDOR';
      10:
        valorcampo := 'UF DEVEDOR';
      11:
        valorcampo := 'CNPJ OU CPF DEVEDOR';
      12:
        valorcampo := 'INSCRIÇÃO ESTADUAL DEVEDOR';
      13:
        valorcampo := 'CONTATO DEVEDOR';
      14:
        valorcampo := 'E-MAIL DEVEDOR';
      15:
        valorcampo := 'TELEFONE DEVEDOR';
      16:
        valorcampo := 'CELULAR DEVEDOR';
      17:
        valorcampo := 'NUMERO TÍTULO';
      18:
        valorcampo := 'PARCELA TÍTULO';
      19:
        valorcampo := 'DATA VENCIMENTO';
      20:
        valorcampo := 'VALOR TÍTULO';
      21:
        valorcampo := 'VALOR ABATIMENTO';
      22:
        valorcampo := 'TAXA DE PROSTESTO';
      23:
        valorcampo := 'OBSERVAÇÃO';
    end;
    ColunaP := ColunaP + 1;
    planilha.cells[Linha, colunaP] := valorCampo;
    planilha.cells[Linha, colunaP].Font.Bold := True; // Negrito
    planilha.cells[Linha, colunaP].Interior.Color := clRed;
    planilha.cells[Linha, colunaP].Font.Size := 11; // Tamanho da Fonte
    planilha.cells[Linha, colunaP].Font.Color := clWhite;
  end;

  fDMCadDuplicata.cdsPessoa.IndexFieldNames := 'CODIGO';
  Linha := Linha + 1;
  fDMCadDuplicata.cdsDuplicata_Consulta.First;
  while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
  begin
    fDMCadDuplicata.cdsPessoa.FindKey([fDMCadDuplicata.cdsDuplicata_ConsultaID_PESSOA.AsInteger]);
    ColunaP := 0;
    for coluna := 0 to 23 do
    begin
      case coluna of
        0:
          valorcampo := '1';
        1:
          valorcampo := '1';
        2:
          valorcampo := fDMCadDuplicata.cdsPessoaCODIGO.AsString;
        3:
          valorcampo := fDMCadDuplicata.cdsPessoaCODIGO.AsString;
        4:
          valorcampo := fDMCadDuplicata.cdsPessoaNOME.AsString;
        5:
          valorcampo := fDMCadDuplicata.cdsPessoaFANTASIA.AsString;
        6:
          valorcampo := fDMCadDuplicata.cdsPessoaENDERECO.AsString + ', ' + fDMCadDuplicata.cdsPessoaNUM_END.AsString + ' ' + fDMCadDuplicata.cdsPessoaCOMPLEMENTO_END.AsString;
        7:
          valorcampo := fDMCadDuplicata.cdsPessoaBAIRRO.AsString;
        8:
          valorcampo := fDMCadDuplicata.cdsPessoaCEP.AsString;
        9:
          valorcampo := fDMCadDuplicata.cdsPessoaCIDADE.AsString;
        10:
          valorcampo := fDMCadDuplicata.cdsPessoaUF.AsString;
        11:
          valorcampo := fDMCadDuplicata.cdsPessoaCNPJ_CPF.AsString;
        12:
          valorcampo := fDMCadDuplicata.cdsPessoaINSCR_EST.AsString;
        13:
          valorcampo := fDMCadDuplicata.cdsPessoaNOME_CONTATO.AsString;
        14:
          valorcampo := fDMCadDuplicata.cdsPessoaEMAIL_PGTO.AsString;
        15:
          valorcampo := (fDMCadDuplicata.cdsPessoaDDDFONE1.AsString) + ' ' + fDMCadDuplicata.cdsPessoaTELEFONE1.AsString;
        16:
          valorcampo := '';
        17:
          valorcampo := fDMCadDuplicata.cdsDuplicata_ConsultaNUMDUPLICATA.AsString;
        18:
          valorcampo := fDMCadDuplicata.cdsDuplicata_ConsultaPARCELA.AsString;
        19:
          valorcampo := fDMCadDuplicata.cdsDuplicata_ConsultaDTVENCIMENTO.AsString;
        20:
          valorcampo := FormatFloat('0.00', fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsCurrency);
        21:
          valorcampo := '';
        22:
          valorcampo := '';
        23:
          valorcampo := '';
      end;
      ColunaP := ColunaP + 1;
      planilha.cells[Linha, colunaP] := valorCampo;
//      planilha.cells[Linha,colunaP].Interior.Color := clWindow;
      planilha.cells[Linha, colunaP].Font.Size := 11; // Tamanho da Fonte
      planilha.cells[Linha, colunaP].Font.Color := clWindowText;
    end;
    Linha := Linha + 1;
    fDMCadDuplicata.cdsDuplicata_Consulta.Next;
  end;
end;

procedure TfrmCadDuplicata.prc_Gerar_Lista_Excel(planilha: Variant);
var
  linha, coluna: integer;
  valorCampo: string;
  vNome_Grupo: string;
  vFlag: Boolean;
  ColunaP: Integer;
  i2: Integer;
  ano, mes, dia: Word;
  vTexto: string;
begin
  linha := 2;
  ColunaP := 0;
  i2 := 0;
  for coluna := 1 to fDMCadDuplicata.cdsDuplicata_Consulta.FieldCount do
  begin
    if (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'NUMDUPLICATA') or (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'PARCELA') or (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'DTVENCIMENTO') or (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'DTEMISSAO') or (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'VLR_PARCELA') or (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'clDias_Atraso') or (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'NOME_PESSOA') then
    begin
      ColunaP := ColunaP + 1;
      valorcampo := fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].DisplayLabel;
      planilha.cells[Linha, colunaP] := valorCampo;
      planilha.cells[Linha, colunaP].font.bold := True; // Negrito
      planilha.cells[Linha, colunaP].Interior.Color := clRed;
      planilha.cells[Linha, colunaP].font.size := 11; // Tamanho da Fonte
      planilha.cells[Linha, colunaP].font.Color := clWhite;
    end;
  end;

  fDMCadDuplicata.cdsDuplicata_Consulta.First;
  while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
  begin
    linha := Linha + 1;
    ColunaP := 0;
    for coluna := 1 to fDMCadDuplicata.cdsDuplicata_Consulta.FieldCount do
    begin
      if (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'NUMDUPLICATA') or (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'PARCELA') or (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'DTVENCIMENTO') or (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'DTEMISSAO') or (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'VLR_PARCELA') or (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'clDias_Atraso') or (fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName = 'NOME_PESSOA') then
      begin
        ColunaP := ColunaP + 1;
        vTexto := fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].AsString;
        if trim(vTexto) <> '' then
          valorcampo := fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].Value
        else
          valorcampo := '';
        vTexto := fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].FieldName;
        if (copy(vTexto, 1, 4) = 'VLR_') then
        begin
          if trim(valorcampo) = '' then
            valorcampo := '0';
          planilha.Cells[linha, colunaP].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,000##)';
          planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
        end
        else
        begin
          //if (copy(vTexto,1,2) = 'DT') then
          //  planilha.Range['C1'].VerticalAlignmen := 3;
          vTexto := fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].AsString;
          if trim(vTexto) <> '' then
            planilha.cells[linha, colunaP] := fDMCadDuplicata.cdsDuplicata_Consulta.Fields[coluna - 1].Value
          else
            planilha.cells[linha, colunaP] := '';
        end;
        planilha.cells[linha, colunaP].font.size := 11; // Tamanho da Fonte
      end;
    end;
    fDMCadDuplicata.cdsDuplicata_Consulta.Next;
  end;
end;

procedure TfrmCadDuplicata.Lista1Click(Sender: TObject);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  fDMCadDuplicata.cdsDuplicata_Consulta.First;

  planilha := CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do dbGrid para o Excel';
  planilha.visible := true;

  prc_Gerar_Lista_Excel(planilha);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  Planilha.ActiveWorkBook.SaveAs(vTexto + 'CReceber_Pagar.XLS');
  Screen.Cursor := crDefault;
end;

procedure TfrmCadDuplicata.LayoutBorder1Click(Sender: TObject);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  fDMCadDuplicata.cdsDuplicata_Consulta.First;

  planilha := CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do dbGrid para o Excel';
  planilha.visible := true;

  prc_Gerar_Bordero_Excel(planilha);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  Planilha.ActiveWorkBook.SaveAs(vTexto + 'Bordero.XLS');
  Screen.Cursor := crDefault;
end;

procedure TfrmCadDuplicata.SpeedButton7Click(Sender: TObject);
begin
  fDMCadDuplicata.cdsCarteira.Close;
  fDMCadDuplicata.cdsCarteira.Open;
end;

procedure TfrmCadDuplicata.RxDBLookupCombo13Enter(Sender: TObject);
begin
  fDMCadDuplicata.prc_Abrir_Carteira(fDMCadDuplicata.cdsContasID_BANCO.AsInteger);
end;

procedure TfrmCadDuplicata.Gradecompleta1Click(Sender: TObject);
begin
  prc_CriaExcel(SMDBGrid1.DataSource);
end;

procedure TfrmCadDuplicata.prc_CriaExcel(vDados: TDataSource);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := true;

  prc_Preencher_Excel2(planilha, vDados, SMDBGrid1);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  vTexto := vTexto + Name + '_' + RzPageControl1.ActivePage.Caption;

  Planilha.ActiveWorkBook.SaveAs(vTexto);
  Screen.Cursor := crDefault;
end;

procedure TfrmCadDuplicata.Cobrana1Click(Sender: TObject);
var
  vArq: string;
  vIndice_Ant: string;
begin
  vIndice_Ant := fDMCadDuplicata.cdsDuplicata_Consulta.IndexFieldNames;
  fDMCadDuplicata.cdsDuplicata_Consulta.IndexFieldNames := 'NOME_PESSOA;DTVENCIMENTO';
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Cobranca.fr3';
  if FileExists(vArq) then
    fDMCadDuplicata.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  if NxDatePicker3.AsInteger > 1 then
    fDMCadDuplicata.vDataIni := NxDatePicker3.Date
  else
    fDMCadDuplicata.vDataIni := 36526;
  fDMCadDuplicata.vDataFim := NxDatePicker4.Date;
  fDMCadDuplicata.frxReport1.ShowReport;
  fDMCadDuplicata.cdsDuplicata_Consulta.IndexFieldNames := vIndice_Ant;
end;

procedure TfrmCadDuplicata.prc_GridHist;
var
  i: Integer;
begin
  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'NUMCHEQUE') then
      SMDBGrid1.Columns[i].Visible := (fdmCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'S');
  end;
end;

procedure TfrmCadDuplicata.SMDBGrid2DblClick(Sender: TObject);
var
  ffrmChequeDupHist: TfrmChequeDupHist;
begin
  if fDMCadDuplicata.cdsDuplicata_HistclCheque.AsString = 'S' then
  begin
    ffrmChequeDupHist := TfrmChequeDupHist.Create(self);
    ffrmChequeDupHist.vID_Duplicata_Loc := fDMCadDuplicata.cdsDuplicataID.AsInteger;
    ffrmChequeDupHist.vItem_Hist_Loc    := fDMCadDuplicata.cdsDuplicata_HistITEM.AsInteger;
    ffrmChequeDupHist.ShowModal;
    FreeAndNil(ffrmChequeDupHist);
  end;
end;

procedure TfrmCadDuplicata.AlterarDataVencimento1Click(Sender: TObject);
var
  vIDAux: Integer;
begin
  if fDMCadDuplicata.cdsDuplicata_ConsultaID_DESCONTADA.AsInteger <= 0 then
  begin
    MessageDlg('*** Esta opção serve para o título descontado!', mtInformation, [mbOk], 0);
    exit;
  end;
  vIDAux := fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger;
  prc_Posiciona_Duplicata(fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger);
  if fDMCadDuplicata.cdsDuplicata.IsEmpty then
    exit;
  ffrmCadDuplicata_Alt := TfrmCadDuplicata_Alt.Create(self);
  ffrmCadDuplicata_Alt.fDMCadDuplicata := fDMCadDuplicata;
  ffrmCadDuplicata_Alt.TS_ContaOrcamento.TabVisible := False;
  ffrmCadDuplicata_Alt.RzPageControl1.ActivePage := ffrmCadDuplicata_Alt.TS_DtVencimento;
  ffrmCadDuplicata_Alt.ShowModal;
  FreeAndNil(ffrmCadDuplicata_Alt);
  if fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime <> fDMCadDuplicata.cdsDuplicata_ConsultaDTVENCIMENTO.AsDateTime then
  begin
    btnConsultarClick(Sender);
    fDMCadDuplicata.cdsDuplicata_Consulta.Locate('ID', vIDAux, [loCaseInsensitive]);
  end;
end;

procedure TfrmCadDuplicata.Aprovar1Click(Sender: TObject);
var
  vIDAux: Integer;
begin
  if not(fDMCadDuplicata.cdsDuplicata_Consulta.Active) or (fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty) then
    exit;
  if MessageDlg('Deseja aprovar os Títulos selecionados?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  vIDAux := fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger;
  SMDBGrid1.DisableScroll;
  fDMCadDuplicata.cdsDuplicata_Consulta.First;
  while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (trim(fDMCadDuplicata.cdsDuplicata_ConsultaAPROVADO.AsString) <> 'S') and (fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_ES.AsString = 'S') then
    begin
      fDMCadDuplicata.prc_Localizar(fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger);
      fDMCadDuplicata.cdsDuplicata.Edit;
      fDMCadDuplicata.cdsDuplicataAPROVADO.AsString     := 'S';
      fDMCadDuplicata.cdsDuplicataDTAPROVADO.AsDateTime := Date;
      fDMCadDuplicata.cdsDuplicata.Post;
      fDMCadDuplicata.cdsDuplicata.ApplyUpdates(0);
    end;
    fDMCadDuplicata.cdsDuplicata_Consulta.Next;
  end;
  prc_Consultar;
  fDMCadDuplicata.cdsDuplicata_Consulta.Locate('ID', vIDAux, [loCaseInsensitive]);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadDuplicata.prc_Mostra_Aprov;
begin
  DBCheckBox11.Visible := (fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S') and (RxDBComboBox11.ItemIndex = 1);
  Label62.Visible      := (fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S') and (RxDBComboBox11.ItemIndex = 1);
  DBDateEdit4.Visible  := (fDMCadDuplicata.qParametros_FinUSA_APROVA_DUP.AsString = 'S') and (RxDBComboBox11.ItemIndex = 1);
end;

procedure TfrmCadDuplicata.DBCheckBox11Exit(Sender: TObject);
begin
  if (fDMCadDuplicata.cdsDuplicata.State in [dsEdit,dsInsert]) then
  begin
    if (DBCheckBox11.Checked) and (fDMCadDuplicata.cdsDuplicataDTAPROVADO.AsDateTime <= 10) then
      fDMCadDuplicata.cdsDuplicataDTAPROVADO.AsDateTime := Date
    else
    if not(DBCheckBox11.Checked) then
      fDMCadDuplicata.cdsDuplicataDTAPROVADO.Clear;
  end;
end;


procedure TfrmCadDuplicata.btnCobrancaClick(Sender: TObject);
var
  ffrmCadDuplicata_Cob: TfrmCadDuplicata_Cob;
begin
  ffrmCadDuplicata_Cob := TfrmCadDuplicata_Cob.Create(self);
  ffrmCadDuplicata_Cob.fDMCadDuplicata := fDMCadDuplicata;
  ffrmCadDuplicata_Cob.ShowModal;
  FreeAndNil(ffrmCadDuplicata_Cob);
end;

procedure TfrmCadDuplicata.RecibodePagamento1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    vFilial := RxDBLookupCombo1.KeyValue
  else
    vFilial := 0;
  vTipo_Config_Email := 3;
  prc_Imp_Recibo;
end;

procedure TfrmCadDuplicata.prc_Imp_Recibo;
var
  vNumImpressao: Integer;
  i: Integer;
  vTexto: string;
  vNumCopias: Integer;
begin
  vTexto := InputBox('Nº de Cópias', '', '2');
  vTexto := Monta_Numero(vTexto, 0);
  if trim(vTexto) = '' then
    vTexto := '1';
  vNumCopias := StrToInt(vTexto);

  if vNumCopias < 1 then
  begin
    ShowMessage('*** Nº de cópias não informado!');
    exit;
  end;
  if not (fDMCadDuplicata.cdsDuplicata_Consulta.Active) and (fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty) then
  begin
    ShowMessage('*** Não existe registro para impressão!');
    exit;
  end;

  vNumImpressao := 0;
  SMDBGrid1.DisableScroll;
  try
    fDMCadDuplicata.mImpDuplicata.EmptyDataSet;
    fDMCadDuplicata.cdsDuplicata_Consulta.First;
    while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
      begin
        for i := 1 to vNumCopias do
        begin
          fDMCadDuplicata.mImpDuplicata.Insert;
          fDMCadDuplicata.mImpDuplicataID_Duplicata.AsInteger := fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger;
          fDMCadDuplicata.mImpDuplicata.Post;
        end;
        vNumImpressao := vNumImpressao + 1;
      end;
      fDMCadDuplicata.cdsDuplicata_Consulta.Next;
    end;
  except
  end;
  SMDBGrid1.EnableScroll;
  if vNumImpressao <= 0 then
  begin
    ShowMessage('Nenhuma duplicata selecionada para a impressão!');
    exit;
  end;
  try
    fRelRecibo_Pgto := TfRelRecibo_Pgto.Create(Self);
    fRelRecibo_Pgto.fDMCadDuplicata := fDMCadDuplicata;
    fRelRecibo_Pgto.RLReport1.PreviewModal;
    fRelRecibo_Pgto.RLReport1.Free;
    FreeAndNil(fRelRecibo_Pgto);
  except
  end;
end;

procedure TfrmCadDuplicata.SaldoClienteFornecedor1Click(Sender: TObject);
begin
  prc_Monta_Saldo;
end;

procedure TfrmCadDuplicata.prc_Monta_Saldo;
var
  vArq, vIndice: String;
begin
  if fDMCadDuplicata.cdsDuplicata_Consulta.IsEmpty then
  begin
    ShowMessage('*** Não existe registro para impressão!');
    exit;
  end;
  SMDBGrid1.DisableScroll;
  vIndice := fDMCadDuplicata.cdsDuplicata_Consulta.IndexFieldNames;
  fDMCadDuplicata.cdsDuplicata_Consulta.IndexFieldNames := 'NOME_PESSOA;ID_PESSOA';
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Extrato_Cliente_Fornecedor.fr3';
  if FileExists(vArq) then
    fDMCadDuplicata.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  case RadioGroup2.ItemIndex of
    0:
      vTipo_Relatorio := 'Extrato Cliente';
    1:
      vTipo_Relatorio := 'Extrato Fornecedor';
    2:
      vTipo_Relatorio := 'Extrato Cliente/Fornecedor';
  end;
  fDMCadDuplicata.frxReport1.variables['TIPO'] := QuotedStr(vTipo_Relatorio);
  fDMCadDuplicata.frxReport1.ShowReport;
  fDMCadDuplicata.cdsDuplicata_Consulta.IndexFieldNames := vIndice;
  SMDBGrid1.EnableScroll;
end;

end.

