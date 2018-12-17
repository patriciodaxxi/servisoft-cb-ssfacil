unit uCadPessoaRed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RzButton,
  RxDBComb, RxLookup, db, Mask, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadPessoa, RzDBChk, 
  UNFe_ConsultaCadastro, RzPanel, ToolEdit, RXDBCtrl, UConsPessoa_Fat, UConsPessoa_Fin, UCadPessoa_Servico, RzLstBox,
  UCadPessoa_Servico_Int, NxCollection, RzRadChk, dbXPress, SqlExpr, ComCtrls, UConsCNPJ_ACBR, UConsCPF_ACBR, ACBrBase,
  ACBrSocket, RzChkLst, ACBrConsultaCPF, UConsPessoa_Prod, Menus, ComObj;

type
  TfrmCadPessoaRed = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    Panel2: TPanel;
    StaticText1: TStaticText;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    RZPageControlDados: TRzPageControl;
    TS_Pessoa_Dados: TRzTabSheet;
    UCControls1: TUCControls;
    Label55: TLabel;
    ComboBox1: TComboBox;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnInserir: TNxButton;
    btnPesquisar: TNxButton;
    btnImprimir: TNxButton;
    btnExcluir: TNxButton;
    Label94: TLabel;
    Label95: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ComboBox2: TComboBox;
    Label96: TLabel;
    Panel9: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    lblInscEstadual: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    lblRG: TLabel;
    SpeedButton4: TSpeedButton;
    Label58: TLabel;
    Label89: TLabel;
    DBEdit7: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit8: TDBEdit;
    dbeInscEstadual: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    dbeRG: TDBEdit;
    btnCadConsultar: TBitBtn;
    DBEdit10: TDBEdit;
    DBEdit27: TDBEdit;
    btnCadConsultar_Receita: TBitBtn;
    RxDBComboBox5: TRxDBComboBox;
    Label54: TLabel;
    Label155: TLabel;
    rxdbFilial: TRxDBLookupCombo;
    RzPageControl3: TRzPageControl;
    TS_Contatos: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    TS_Dados_Pessoais: TRzTabSheet;
    RzGroupBox4: TRzGroupBox;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label129: TLabel;
    Label120: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    RxDBComboBox9: TRxDBComboBox;
    RxDBLookupCombo32: TRxDBLookupCombo;
    RxDBLookupCombo33: TRxDBLookupCombo;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    RxDBLookupCombo34: TRxDBLookupCombo;
    DBDateEdit8: TDBDateEdit;
    RxDBComboBox10: TRxDBComboBox;
    RxDBComboBox12: TRxDBComboBox;
    RxDBComboBox13: TRxDBComboBox;
    RxDBComboBox14: TRxDBComboBox;
    TS_Tipo_Regime: TRzTabSheet;
    Label15: TLabel;
    RxDBLookupCombo14: TRxDBLookupCombo;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    TS_Autorizado: TRzTabSheet;
    SMDBGrid6: TSMDBGrid;
    TS_Conjuge: TRzTabSheet;
    RzPageControl4: TRzPageControl;
    TS_Conjuge_Geral: TRzTabSheet;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label177: TLabel;
    Label179: TLabel;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBDateEdit9: TDBDateEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit96: TDBEdit;
    DBEdit98: TDBEdit;
    TS_Conjuge_Profissional: TRzTabSheet;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label178: TLabel;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    RxDBLookupCombo39: TRxDBLookupCombo;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBDateEdit13: TDBDateEdit;
    RxDBLookupCombo40: TRxDBLookupCombo;
    DBEdit97: TDBEdit;
    TS_Dados_Profissionais: TRzTabSheet;
    Label135: TLabel;
    DBEdit68: TDBEdit;
    Label137: TLabel;
    DBEdit70: TDBEdit;
    Label136: TLabel;
    DBEdit69: TDBEdit;
    Label138: TLabel;
    DBEdit71: TDBEdit;
    Label139: TLabel;
    Label140: TLabel;
    DBEdit72: TDBEdit;
    RxDBLookupCombo36: TRxDBLookupCombo;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    Label144: TLabel;
    Label145: TLabel;
    Label148: TLabel;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBDateEdit10: TDBDateEdit;
    Label149: TLabel;
    Label150: TLabel;
    Label176: TLabel;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit95: TDBEdit;
    Label151: TLabel;
    Label152: TLabel;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    TS_Endereco: TRzTabSheet;
    RzPageControl2: TRzPageControl;
    TS_Entrega: TRzTabSheet;
    TS_Cobranca: TRzTabSheet;
    Label42: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label43: TLabel;
    DBEdit33: TDBEdit;
    Label44: TLabel;
    DBEdit34: TDBEdit;
    Label45: TLabel;
    DBEdit35: TDBEdit;
    Label46: TLabel;
    DBEdit36: TDBEdit;
    Label48: TLabel;
    DBEdit38: TDBEdit;
    Label47: TLabel;
    DBEdit37: TDBEdit;
    Label49: TLabel;
    DBEdit39: TDBEdit;
    Label50: TLabel;
    DBEdit40: TDBEdit;
    Label51: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Label52: TLabel;
    RxDBLookupCombo11: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Label31: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label32: TLabel;
    DBEdit25: TDBEdit;
    Label33: TLabel;
    DBEdit26: TDBEdit;
    Label35: TLabel;
    DBEdit28: TDBEdit;
    Label37: TLabel;
    DBEdit30: TDBEdit;
    Label36: TLabel;
    DBEdit29: TDBEdit;
    Label38: TLabel;
    DBEdit31: TDBEdit;
    Label39: TLabel;
    DBEdit32: TDBEdit;
    Label40: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label41: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    rzTelefone: TRzGroupBox;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label186: TLabel;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    StatusBar1: TStatusBar;
    TS_Pessoa_Financeiro: TRzTabSheet;
    Label26: TLabel;
    Label27: TLabel;
    SpeedButton6: TSpeedButton;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBEdit24: TDBEdit;
    Label28: TLabel;
    SpeedButton5: TSpeedButton;
    Label87: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBEdit47: TDBEdit;
    Label29: TLabel;
    SpeedButton2: TSpeedButton;
    Label107: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    DBEdit48: TDBEdit;
    Label30: TLabel;
    SpeedButton3: TSpeedButton;
    RxDBLookupCombo7: TRxDBLookupCombo;
    lblCarteira: TLabel;
    SpeedButton10: TSpeedButton;
    RxDBLookupCombo42: TRxDBLookupCombo;
    Label25: TLabel;
    SpeedButton7: TSpeedButton;
    RxDBLookupCombo15: TRxDBLookupCombo;
    btnReceita: TSpeedButton;
    btnSefaz: TSpeedButton;
    Panel3: TPanel;
    Label115: TLabel;
    DBDateEdit7: TDBDateEdit;
    RxDBComboBox11: TRxDBComboBox;
    Label128: TLabel;
    Label116: TLabel;
    RxDBComboBox8: TRxDBComboBox;
    Label12: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBComboBox1Exit(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnCadConsultarClick(Sender: TObject);
    procedure btnReceitaClick(Sender: TObject);
    procedure RxDBLookupCombo17Enter(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo18Enter(Sender: TObject);
    procedure GroupBox3Enter(Sender: TObject);
    procedure GroupBox2Enter(Sender: TObject);
    procedure btnCadConsultar_ReceitaClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure DBMemo4KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo5KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox3Exit(Sender: TObject);
    procedure RxDBComboBox5Exit(Sender: TObject);
    procedure DBEdit65Enter(Sender: TObject);
    procedure DBEdit65Exit(Sender: TObject);
    procedure btnSefazClick(Sender: TObject);
    procedure RxDBLookupCombo8Exit(Sender: TObject);
    procedure RxDBLookupCombo10Exit(Sender: TObject);
    procedure RxDBComboBox2Exit(Sender: TObject);
    procedure DBEdit25Enter(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit50Enter(Sender: TObject);
    procedure RxDBLookupCombo39Exit(Sender: TObject);
    procedure DBEdit63Enter(Sender: TObject);
    procedure DBEdit63Exit(Sender: TObject);
    procedure DBCheckBox2Enter(Sender: TObject);
    procedure DBCheckBox2Exit(Sender: TObject);
    procedure RxDBLookupCombo7Change(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure CadastrodeConsumidor1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure TS_Dados_PessoaisEnter(Sender: TObject);
    procedure Panel3Enter(Sender: TObject);
  private
    { Private declarations }
    fDMCadPessoa: TDMCadPessoa;
    ffNFe_ConsultaCadastro: TfNFe_ConsultaCadastro;
    ffrmCadPessoa_Servico: TfrmCadPessoa_Servico;
    ffrmCadPessoa_Servico_Int: TfrmCadPessoa_Servico_Int;
    ffrmConsCNPJ_ACBR: TfrmConsCNPJ_ACBR;
    ffrmConsCPF_ACBR: TfrmConsCPF_ACBR;
    vCod_Alfa_Ant: string;
    vRG_Ant: string;
    vTP_Cliente_Ant: string;
    procedure prc_Inserir_Registro(Tipo: string);
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer = 0);
    procedure prc_Configurarr_vTipoPessoa;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Abrir_Pessoas_Outras;
    procedure prc_Chamar_frmSel_ContaOrc(Campo: string; Codigo: Integer);
    procedure prc_Posiciona_Pessoa;
    procedure prc_Inserir_mResumo(Tipo, Codigo, Nome: string);
    procedure prc_CriaExcel(vDados: TDataSource);
    procedure prc_Le_cdsPessoa_Consulta(Tipo : Integer);
    procedure prc_Habilta_TS;
    procedure prc_Opcao_Pessoa;
  public
    { Public declarations }
  end;

var
  frmCadPessoaRed: TfrmCadPessoaRed;

implementation

uses
  UMenu, DmdDatabase, rsDBUtils, uUtilPadrao, uNFeComandos, URelPessoa, USel_ContaOrc, USel_EnqIPI, USel_Atividade;

{$R *.dfm}

procedure TfrmCadPessoaRed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  prc_Grava_Grid(SMDBGrid1, Name, fDMCadPessoa.qParametros_GeralENDGRIDS.AsString);
  Action := Cafree;
end;

procedure TfrmCadPessoaRed.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPessoa);
end;

procedure TfrmCadPessoaRed.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMCadPessoa := TDMCadPessoa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPessoa);
  prc_le_Grid(SMDBGrid1, Name, fDMCadPessoa.qParametros_GeralENDGRIDS.AsString);
  if fMenu.vTipoPessoa = 'C' then
    ComboBox1.ItemIndex := 0
  else if fMenu.vTipoPessoa = 'F' then
    ComboBox1.ItemIndex := 1
  else if fMenu.vTipoPessoa = 'T' then
    ComboBox1.ItemIndex := 2
  else if fMenu.vTipoPessoa = 'V' then
    ComboBox1.ItemIndex := 3
  else if fMenu.vTipoPessoa = 'N' then
    ComboBox1.ItemIndex := 7
  else if fMenu.vTipoPessoa = 'A' then
    ComboBox1.ItemIndex := 8;
  fDMCadPessoa.cdsCidade.IndexFieldNames := 'NOME';
  DBEdit47.Visible := (fDMCadPessoa.qParametrosUSA_LIMITE_CREDITO.AsString = 'S');

end;

procedure TfrmCadPessoaRed.btnInserirClick(Sender: TObject);
begin
  prc_Configurarr_vTipoPessoa;
  prc_Inserir_Registro(fMenu.vTipoPessoa);
end;

procedure TfrmCadPessoaRed.btnExcluirClick(Sender: TObject);
var
  vCodAux: Integer;
begin
  if not (fDMCadPessoa.cdsPessoa_Consulta.Active) or (fDMCadPessoa.cdsPessoa_Consulta.IsEmpty) or (fDMCadPessoa.cdsPessoa_ConsultaCODIGO.AsInteger <= 0) then
    exit;
  if fDMCadPessoa.cdsPessoaCODIGO.AsInteger = 99999 then
  begin
    MessageDlg('*** Este registro não pode ser excluído, é usado para Consumidor Final!', mtError, [mbOk], 0);
    exit;
  end;

  prc_Posiciona_Pessoa;

  prc_Abrir_Pessoas_Outras;

  if fDMCadPessoa.cdsPessoa.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro ' + fDMCadPessoa.cdsPessoa_ConsultaNOME.AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  vCodAux := fDMCadPessoa.cdsPessoa_Consulta.RecNo;
  prc_Excluir_Registro;
  prc_Consultar;
  if vCodAux <= fDMCadPessoa.cdsPessoa_Consulta.RecordCount then
    fDMCadPessoa.cdsPessoa_Consulta.RecNo := vCodAux;
end;

procedure TfrmCadPessoaRed.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPessoaRed.btnAlterarClick(Sender: TObject);
var
  i: Integer;
begin
  if (fDMCadPessoa.cdsPessoa.IsEmpty) or not (fDMCadPessoa.cdsPessoa.Active) or (fDMCadPessoa.cdsPessoaCODIGO.AsInteger < 1) then
    exit;
  fDMCadPessoa.cdsPessoa.Edit;
  TS_Consulta.TabEnabled := False;
  prc_Habilta_TS;
  btnAlterar.Enabled := False;
  btnConfirmar.Enabled := True;
  TS_Pessoa_Dados.Enabled := True;
  SMDBGrid6.readonly := False;
end;

procedure TfrmCadPessoaRed.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadPessoaRed.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPessoa.cdsPessoa.State in [dsBrowse]) or not (fDMCadPessoa.cdsPessoa.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDMCadPessoa.cdsPessoa.CancelUpdates;
  if fDMCadPessoa.cdsPessoa_Fiscal.State in [dsEdit, dsInsert] then
    fDMCadPessoa.cdsPessoa_Fiscal.CancelUpdates;
  if fDMCadPessoa.cdsPessoa_Fisica.State in [dsEdit, dsInsert] then
    fDMCadPessoa.cdsPessoa_Fisica.CancelUpdates;

  fDMCadPessoa.prc_Abrir_Cidade('');

  TS_Consulta.TabEnabled := True;
  RzPageControl1.ActivePage := TS_Consulta;
  btnConfirmar.Enabled := False;
  btnAlterar.Enabled := True;
  prc_Habilta_TS;

  TS_Pessoa_Dados.Enabled := False;
  SMDBGrid6.readonly := True;
end;

procedure TfrmCadPessoaRed.prc_Consultar(ID: Integer = 0);
begin
  SMDBGrid1.UnSelectAllClick(SMDBGrid1);
  SMDBGrid1.DisableScroll;
  prc_Configurarr_vTipoPessoa;
  fDMCadPessoa.cdsPessoa_Consulta.Close;
  fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.ctConsulta;
  if ID > 0 then
    fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' WHERE P.CODIGO = ' + IntToStr(ID)
  else
  begin
    fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' WHERE 1 = 1';
    if Trim(Edit4.Text) <> '' then
      fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND ((P.NOME LIKE ' + QuotedStr('%' + Edit4.Text + '%') + ')' + ' OR (P.FANTASIA LIKE ' + QuotedStr('%' + Edit4.Text + '%') + '))';
    if trim(rxdbFilial.Text) <> '' then
      fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND (P.FILIAL = ' + IntToStr(rxdbFilial.KeyValue) + ')';

    if fMenu.vTipoPessoa = 'C' then
      fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND P.TP_CLIENTE = ' + QuotedStr('S');
    if fMenu.vTipoPessoa = 'F' then
      fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND P.TP_FORNECEDOR = ''S''';
    if fMenu.vTipoPessoa = 'T' then
      fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND P.TP_TRANSPORTADORA = ''S''';
    if fMenu.vTipoPessoa = 'V' then
      fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND P.TP_VENDEDOR = ''S''';
    if fMenu.vTipoPessoa = 'A' then
      fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND P.TP_ATELIER = ''S''';
    if fMenu.vTipoPessoa = 'X' then
      fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND P.TP_EXPORTACAO = ''S''';
    if fMenu.vTipoPessoa = 'P' then
      fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND P.TP_PREPOSTO = ''S''';
    if fMenu.vTipoPessoa = 'N' then
      fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND P.TP_FUNCIONARIO = ''S''';
    case ComboBox2.ItemIndex of
      0:
        fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND P.INATIVO = ''N''';
      1:
        fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND P.INATIVO = ''S''';
    end;

    if DateEdit1.Date > 10 then
      fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND P.DTCADASTRO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit1.date));
    if DateEdit2.Date > 10 then
      fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' AND P.DTCADASTRO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit2.date));
  end;
  fDMCadPessoa.cdsPessoa_Consulta.Open;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadPessoaRed.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
    fDMCadPessoa.prc_Excluir;
  except
    on e: Exception do
    begin
      prc_Consultar;
      if vCodAux > 0 then
        fDMCadPessoa.cdsPessoa.Locate('CODIGO', vCodAux, ([Locaseinsensitive]));
      raise;
    end
  end;
end;

procedure TfrmCadPessoaRed.prc_Gravar_Registro;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vIPI_Suspenso, vPIS_Suspenso: string;
  vCodAux: Integer;
begin
  fDMCadPessoa.prc_Abrir_Cidade('');
  fDMCadPessoa.cdsPessoaID_REGIME_TRIB.AsInteger := 1;
  fDMCadPessoa.cdsPessoaTIPO_CONSUMIDOR.AsString := '1';
  fDMCadPessoa.cdsPessoaTIPO_ICMS.AsString := 'N';
  fDMCadPessoa.cdsPessoaTP_CLIENTE.AsString := 'S';
  if fDMCadPessoa.fnc_Erro_Registro then
  begin
    MessageDlg(fDMCadPessoa.vMsgPessoa, mtError, [mbOk], 0);
    exit;
  end;
  fDMCadPessoa.cdsPessoaENDERECO.AsString := trim(fDMCadPessoa.cdsPessoaENDERECO.AsString);
  fDMCadPessoa.cdsPessoaBAIRRO.AsString := trim(fDMCadPessoa.cdsPessoaBAIRRO.AsString);
  fDMCadPessoa.cdsPessoaCOMPLEMENTO_END.AsString := trim(fDMCadPessoa.cdsPessoaCOMPLEMENTO_END.AsString);
  fDMCadPessoa.cdsPessoaNUM_END.AsString := trim(fDMCadPessoa.cdsPessoaNUM_END.AsString);

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 ' + ' WHERE TABELA = ' + QuotedStr('PESSOA');
    sds.ExecSQL();

    vCodAux := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
    fDMCadPessoa.cdsPessoaCIDADE.AsString := RxDBLookupCombo2.Text;
    fDMCadPessoa.cdsPessoaCIDADE_ENT.AsString := RxDBLookupCombo10.Text;
    fDMCadPessoa.cdsPessoaCIDADE_PGTO.AsString := RxDBLookupCombo8.Text;
    fDMCadPessoa.prc_Gravar;

    vIPI_Suspenso := fDMCadPessoa.cdsPessoa_FiscalIPI_SUSPENSO.AsString;
    vPIS_Suspenso := fDMCadPessoa.cdsPessoa_FiscalPIS_SUSPENSO.AsString;

    if (fDMCadPessoa.cdsPessoa_FiscalIPI_SUSPENSO.AsString = 'N') then
    begin
      if not (fDMCadPessoa.cdsPessoa_Fiscal.State in [dsEdit, dsInsert]) then
        fDMCadPessoa.cdsPessoa_Fiscal.Edit;
      fDMCadPessoa.cdsPessoa_FiscalIPI_DT_FINAL.Clear;
      fDMCadPessoa.cdsPessoa_FiscalIPI_DT_INICIO.Clear;
      fDMCadPessoa.cdsPessoa_FiscalIPI_ID_CSTIPI.Clear;
      fDMCadPessoa.cdsPessoa_FiscalIPI_OBS.Clear;
    end;
    if (fDMCadPessoa.cdsPessoa_FiscalPIS_SUSPENSO.AsString = 'N') then
    begin
      if not (fDMCadPessoa.cdsPessoa_Fiscal.State in [dsEdit, dsInsert]) then
        fDMCadPessoa.cdsPessoa_Fiscal.Edit;
      fDMCadPessoa.cdsPessoa_FiscalPIS_DT_FINAL.Clear;
      fDMCadPessoa.cdsPessoa_FiscalPIS_DT_INICIO.Clear;
      fDMCadPessoa.cdsPessoa_FiscalPIS_ID_COFINS.Clear;
      fDMCadPessoa.cdsPessoa_FiscalPIS_ID_PIS.Clear;
      fDMCadPessoa.cdsPessoa_FiscalPIS_OBS.Clear;
    end;
    fDMCadPessoa.cdsPessoa_Fiscal.ApplyUpdates(0);
    fDMCadPessoa.cdsPessoa_Servico.ApplyUpdates(0);
    fDMCadPessoa.cdsPessoa_Servico_Int.ApplyUpdates(0);
    fDMCadPessoa.cdsPessoa_Dep.ApplyUpdates(0);
    fDMCadPessoa.cdsPessoa_Ativ.ApplyUpdates(0);
    fDMCadPessoa.cdsPessoa_Aut.ApplyUpdates(0);
    fDMCadPessoa.cdsPessoa_RefP.ApplyUpdates(0);
    fDMCadPessoa.cdsPessoa_RefC.ApplyUpdates(0);
    if fDMCadPessoa.cdsPessoa_Fisica.State in [dsEdit, dsInsert] then
    begin
      fDMCadPessoa.cdsPessoa_Fisica.Post;
      fDMCadPessoa.cdsPessoa_Fisica.ApplyUpdates(0);
    end;
    if (vIPI_Suspenso = 'N') and (vPIS_Suspenso = 'N') then
    begin
      fDMCadPessoa.cdsPessoa_Fiscal.Delete;
      fDMCadPessoa.cdsPessoa_Fiscal.ApplyUpdates(0);
    end;

    dmDatabase.scoDados.Commit(ID);

    vCodPessoa_Pos := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;

    TS_Consulta.TabEnabled := not (TS_Consulta.TabEnabled);
    prc_Habilta_TS;
    RzPageControl1.ActivePage := TS_Consulta;
    TS_Pessoa_Dados.Enabled   := False;
    btnConfirmar.Enabled := False;
    btnAlterar.Enabled := True;
    SMDBGrid6.readonly := True;

    if (not (fDMCadPessoa.cdsPessoa_Consulta.Active)) or (not fDMCadPessoa.cdsPessoa_Consulta.Locate('CODIGO', vCodAux, ([Locaseinsensitive]))) then
      prc_Consultar(vCodAux);
    fDMCadPessoa.cdsPessoa_Consulta.Locate('CODIGO', vCodAux, ([Locaseinsensitive]));

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao gravar o Registro: ' + #13 + e.Message);
    end;
  end;
  FreeAndNil(sds);
end;

procedure TfrmCadPessoaRed.prc_Inserir_Registro(Tipo: string);
var
  i: Integer;
begin
  if fDMCadPessoa.qParametros_GeralUSAR_PESSOA_FILIAL.AsString = 'S' then
  begin
    fDMCadPessoa.cdsFilial.First;
    if fDMCadPessoa.cdsFilial.RecordCount = 1 then
      vFilial := fDMCadPessoa.cdsFilialID.AsInteger
    else
      prc_Escolhe_Filial;
    if vFilial <= 0 then
      exit
    else if not fDMCadPessoa.cdsFilial.Locate('ID', vFilial, [loCaseInsensitive]) then
    begin
      ShowMessage('Filial não encontrada!');
      exit;
    end;
  end;

  fDMCadPessoa.prc_Inserir(Tipo);

  if fDMCadPessoa.cdsPessoa.State in [dsBrowse] then
    Exit;

  RzPageControl1.ActivePage := TS_Cadastro;
  RzPageControl3.ActivePage := TS_Contatos;
  TS_Consulta.TabEnabled    := False;
  btnAlterar.Enabled        := False;
  btnConfirmar.Enabled      := True;
  TS_Pessoa_Dados.Enabled   := True;
  SMDBGrid6.ReadOnly        := False;
  prc_Habilta_TS;
  fDMCadPessoa.cdsPessoaPESSOA.AsString := 'F';
  fDMCadPessoa.cdsPessoaUF.AsString     := fDMCadPessoa.cdsFilialUF.AsString;
  RxDBComboBox1Exit(nil);
  DBEdit6.SetFocus;
end;

procedure TfrmCadPessoaRed.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    lblRG.Visible := (RxDBComboBox1.ItemIndex = 1);
    dbeRG.Visible := (RxDBComboBox1.ItemIndex = 1);
    if not (fDMCadPessoa.cdsPessoa.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Pessoa;
    prc_Abrir_Pessoas_Outras;
    DBEdit6Enter(Sender);
    RZPageControlDados.ActivePage := TS_Pessoa_Dados;
    fDMCadPessoa.prc_Abre_Carteira(fDMCadPessoa.cdsContasID.AsInteger);

    if not (fDMCadPessoa.cdsPessoa.State in [dsEdit, dsInsert]) then
    begin
      //prc_Posiciona_Pessoa;
      DBCheckBox3Exit(Sender);
    end;
    prc_Opcao_Pessoa;
  end;
end;

procedure TfrmCadPessoaRed.RxDBLookupCombo1Change(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    fDMCadPessoa.cdsUF.Locate('UF', RxDBLookupCombo1.Value, [loCaseInsensitive]);
    if fDMCadPessoa.cdsUFIDPAIS.AsInteger > 0 then
      fDMCadPessoa.cdsPessoaID_PAIS.AsInteger := fDMCadPessoa.cdsUFIDPAIS.AsInteger;
  end;
end;

procedure TfrmCadPessoaRed.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
  if fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J' then
    RzPageControl3.ActivePage := TS_Contatos;
end;

procedure TfrmCadPessoaRed.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    fDMCadPessoa.cdsPessoaUF.AsString := fDMCadPessoa.cdsCidadeUF.AsString;
end;

procedure TfrmCadPessoaRed.SpeedButton4Click(Sender: TObject);
begin
  fDMCadPessoa.cdsCidade.Close;
  fDMCadPessoa.cdsCidade.Open;
end;

procedure TfrmCadPessoaRed.SpeedButton2Click(Sender: TObject);
begin
  fDMCadPessoa.cdsCondPgto.Close;
  fDMCadPessoa.cdsCondPgto.Open;
end;

procedure TfrmCadPessoaRed.SpeedButton3Click(Sender: TObject);
begin
  fDMCadPessoa.cdsContas.Close;
  fDMCadPessoa.cdsContas.Open;
end;

procedure TfrmCadPessoaRed.SpeedButton5Click(Sender: TObject);
begin
  fDMCadPessoa.cdsTipoCobranca.Close;
  fDMCadPessoa.cdsTipoCobranca.Open;
end;

procedure TfrmCadPessoaRed.SpeedButton6Click(Sender: TObject);
begin
  fDMCadPessoa.cdsVendedor.Close;
  fDMCadPessoa.cdsVendedor.Open;
end;

procedure TfrmCadPessoaRed.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadPessoa.cdsPessoa.State in [dsEdit, dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      CanClose := False
    else
      CanClose := True;
  end;
end;

procedure TfrmCadPessoaRed.Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPessoaRed.DBEdit6Enter(Sender: TObject);
begin
  if fDMCadPessoa.cdsPESSOAPessoa.AsString = 'J' then
    fDMCadPessoa.cdsPESSOACNPJ_CPF.EditMask := '00.000.000/0000-00'
  else if fDMCadPessoa.cdsPESSOAPessoa.AsString = 'F' then
    fDMCadPessoa.cdsPESSOACNPJ_CPF.EditMask := '000.000.000-00'
  else if fDMCadPessoa.cdsPESSOAPessoa.AsString = 'E' then
    fDMCadPessoa.cdsPESSOACNPJ_CPF.EditMask := '';
end;

procedure TfrmCadPessoaRed.DBEdit6Exit(Sender: TObject);
var
  vNomeAux: string;
  vAux: string;
begin
  vAux := Monta_Numero(DBEdit6.Text, 0);
  if (trim(vAux) = '') or (copy(vAux, 1, 9) = '000000000') then
    exit;
  if fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J' then
  begin
    if not ValidaCNPJ(DBEdit6.Text) then
    begin
      ShowMessage('CNPJ incorreto!');
      fDMCadPessoa.cdsPessoaCNPJ_CPF.Clear;
      DBEdit6.SetFocus;
    end;
  end
  else if fDMCadPessoa.cdsPessoaPESSOA.AsString = 'F' then
  begin
    if not ValidaCPF(DBEdit6.Text) then
    begin
      ShowMessage('CPF incorreto!');
      fDMCadPessoa.cdsPessoaCNPJ_CPF.Clear;
      DBEdit6.SetFocus;
    end;
  end;

  if not (fDMCadPessoa.cdsPessoaCNPJ_CPF.IsNull) then
  begin
    if fDMCadPessoa.qParametros_GeralUSAR_PESSOA_FILIAL.AsString = 'S' then
      vNomeAux := VerificaDuplicidade(DBEdit6.Text, 'P', fDMCadPessoa.cdsPessoaCODIGO.AsInteger, fDMCadPessoa.cdsPessoaFILIAL.AsInteger)
    else
      vNomeAux := VerificaDuplicidade(DBEdit6.Text, 'P', fDMCadPessoa.cdsPessoaCODIGO.AsInteger, 0);
    if trim(vNomeAux) <> '' then
    begin
      ShowMessage('CNPJ ou CPF já utilizado para ' + vNomeAux + '!');
      fDMCadPessoa.cdsPessoaCNPJ_CPF.Clear;
      DBEdit6.SetFocus;
    end;
  end;
end;

procedure TfrmCadPessoaRed.SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadPessoa.cdsPessoa_ConsultaINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadPessoaRed.RxDBComboBox1Exit(Sender: TObject);
begin
  if RxDBComboBox1.ItemIndex = 0 then
    fDMCadPessoa.cdsPESSOACNPJ_CPF.EditMask := '00.000.000/0000-00'
  else if RxDBComboBox1.ItemIndex = 1 then
  begin
    fDMCadPessoa.cdsPESSOACNPJ_CPF.EditMask := '000.000.000-00';
    fDMCadPessoa.cdsPessoaID_REGIME_TRIB.AsInteger := 1;
  end
  else if RxDBComboBox1.ItemIndex = 2 then
    fDMCadPessoa.cdsPESSOACNPJ_CPF.EditMask := '';
  lblRG.Visible := (RxDBComboBox1.ItemIndex = 1);
  dbeRG.Visible := (RxDBComboBox1.ItemIndex = 1);
  if (fDMCadPessoa.cdsPessoa.State in [dsInsert]) or (fDMCadPessoa.cdsPessoaTIPO_CONTRIBUINTE.IsNull) then
  begin
    if RxDBComboBox1.ItemIndex = 0 then
      fDMCadPessoa.cdsPessoaTIPO_CONTRIBUINTE.AsInteger := 1
    else if RxDBComboBox1.ItemIndex = 1 then
      fDMCadPessoa.cdsPessoaTIPO_CONTRIBUINTE.AsInteger := 9
    else
      fDMCadPessoa.cdsPessoaTIPO_CONTRIBUINTE.AsInteger := 9;
  end;
  if (fDMCadPessoa.cdsPessoa.State in [dsInsert]) or (fDMCadPessoa.cdsPessoaTIPO_CONSUMIDOR.IsNull) then
  begin
    if RxDBComboBox1.ItemIndex = 1 then
      fDMCadPessoa.cdsPessoaTIPO_CONSUMIDOR.AsInteger := 1
    else
      fDMCadPessoa.cdsPessoaTIPO_CONSUMIDOR.AsInteger := 0;
  end;
  prc_Opcao_Pessoa;
end;

procedure TfrmCadPessoaRed.SpeedButton7Click(Sender: TObject);
begin
  fDMCadPessoa.cdsContas.Close;
  fDMCadPessoa.cdsContas.Open;
end;

procedure TfrmCadPessoaRed.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadPessoa.cdsPessoa_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadPessoaRed.btnCadConsultarClick(Sender: TObject);
var
  texto: string;
  cnpj_pes: string;
  oStream: TMemoryStream;
  oStrStream: TStringStream;
  vPessoa: Integer;
  vUFAux: string;
  vLocalServidorNFe: string;
begin
  vPessoa := 0;
  if fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J' then
    vPessoa := 1
  else if fDMCadPessoa.cdsPessoaPESSOA.AsString = 'F' then
    vPessoa := 2;
  if vPessoa = 0 then
  begin
    MessageDlg('*** Pessoa (Jurídica/Física) não informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  vUFAux := fDMCadPessoa.cdsPessoaUF.AsString;
  if trim(fDMCadPessoa.cdsPessoaUF.AsString) = '' then
    vUFAux := 'RS';

  fDMCadPessoa.qFilial.Close;
  fDMCadPessoa.qFilial.Open;
  fDMCadPessoa.cdsConsultaCadastro.Close;
  if fDMCadPessoa.qFilialPESSOA.AsString = 'F' then
    texto := Monta_Texto(fDMCadPessoa.qFilialCNPJ_CPF.AsString, 11)
  else
    texto := Monta_Texto(fDMCadPessoa.qFilialCNPJ_CPF.AsString, 14);
  vLocalServidorNFe := fDMCadPessoa.qParametrosLOCALSERVIDORNFE.AsString;
  if trim(fDMCadPessoa.qFilialLOCALSERVIDORNFE.AsString) <> '' then
    vLocalServidorNFe := fDMCadPessoa.qFilialLOCALSERVIDORNFE.AsString;
  cnpj_pes := Monta_Texto(fDMCadPessoa.cdsPessoaCNPJ_CPF.AsString, 14);

  if (trim(texto) = '') or (trim(cnpj_pes) = '') then
  begin
    MessageDlg('*** CNPJ não informado!', mtInformation, [mbOk], 0);
    exit;
  end;

  oStream := TMemoryStream.Create;
  try
    ConsultarCadastro(Trim(vLocalServidorNFe), texto, vPessoa, vUFAux, cnpj_pes, oStream);

    oStream.Position := 0;

    oStrStream := TStringStream.Create('');
    try
      oStream.Position := 0;
      oStrStream.CopyFrom(oStream, oStream.Size);
      //oStream.SaveToFile('C:\a\Cadastro.xml');
      fDMCadPessoa.xtrConsultaCadastro.TransformRead.SourceXml := oStrStream.DataString;
      fDMCadPessoa.xtrConsultaCadastro.TransformRead.TransformationFile := ExtractFilePath(Application.ExeName) + 'xtr\ConsultaCadastro.xtr';
    finally
      FreeAndNil(oStrStream);
    end;
  finally
    FreeAndNil(oStream);
  end;
  fDMCadPessoa.cdsConsultaCadastro.Open;
  ffNFe_ConsultaCadastro := TfNFe_ConsultaCadastro.Create(self);
  ffNFe_ConsultaCadastro.fDMCadPessoa := fDMCadPessoa;
  ffNFe_ConsultaCadastro.ShowModal;
  FreeAndNil(ffNFe_ConsultaCadastro);
  if fDMCadPessoa.cdsPessoaID_CIDADE.AsInteger <= 0 then
    MessageDlg('*** Município precisa ser informado manualmente, pois a Sefaz não esta retornando o Cód. do Município!', mtInformation, [mbOk], 0);
end;

procedure TfrmCadPessoaRed.prc_Configurarr_vTipoPessoa;
begin
  case ComboBox1.ItemIndex of
    0:
      fMenu.vTipoPessoa := 'C';
    1:
      fMenu.vTipoPessoa := 'F';
    2:
      fMenu.vTipoPessoa := 'T';
    3:
      fMenu.vTipoPessoa := 'V';
    4:
      fMenu.vTipoPessoa := 'A';
    5:
      fMenu.vTipoPessoa := 'X';
    6:
      fMenu.vTipoPessoa := 'P';
    7:
      fMenu.vTipoPessoa := 'N'; //Funcionário
        8:
      fMenu.vTipoPessoa := '';
  end;
end;

procedure TfrmCadPessoaRed.btnReceitaClick(Sender: TObject);
begin
  if RxDBLookupCombo1.Value = '' then
    begin
      MessageDlg('***** UF não informada!',mtError,[mbOK],0);
      RxDBLookupCombo1.SetFocus;
      exit;
    end;

  if fDMCadPessoa.cdsPessoaPESSOA.AsString = 'F' then
  begin
    ffrmConsCPF_ACBR := TfrmConsCPF_ACBR.Create(self);
    ffrmConsCPF_ACBR.EditCNPJ.Text := fDMCadPessoa.cdsPessoaCNPJ_CPF.AsString;
    ffrmConsCPF_ACBR.ShowModal;
    FreeAndNil(ffrmConsCPF_ACBR);
  end
  else
  begin
    ffrmConsCNPJ_ACBR := TfrmConsCNPJ_ACBR.Create(self);
    ffrmConsCNPJ_ACBR.fDMCadPessoa := fDMCadPessoa;
    ffrmConsCNPJ_ACBR.EditCNPJ.Text := fDMCadPessoa.cdsPessoaCNPJ_CPF.AsString;
    ffrmConsCNPJ_ACBR.ShowModal;
    FreeAndNil(ffrmConsCNPJ_ACBR);
  end;
end;

procedure TfrmCadPessoaRed.RxDBLookupCombo17Enter(Sender: TObject);
begin
  fDMCadPessoa.cdsServico_Int.IndexFieldNames := 'NOME';
end;

procedure TfrmCadPessoaRed.SMDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  ffrmConsPessoa_Fat: TfrmConsPessoa_Fat;
  ffrmConsPessoa_Fin: TfrmConsPessoa_Fin;
  ffrmConsPessoa_Prod: TfrmConsPessoa_Prod;
begin
  if (Key = Vk_F4) and (fDMCadPessoa.cdsPessoa_Consulta.Active) and (fDMCadPessoa.cdsPessoa_ConsultaCODIGO.AsInteger > 0) then
  begin
    ffrmConsPessoa_Fat := TfrmConsPessoa_Fat.Create(self);
    ffrmConsPessoa_Fat.vID_Pessoa_Cons := fDMCadPessoa.cdsPessoa_ConsultaCODIGO.AsInteger;
    ffrmConsPessoa_Fat.Label2.Caption := fDMCadPessoa.cdsPessoa_ConsultaNOME.AsString;
    ffrmConsPessoa_Fat.ShowModal;
    FreeAndNil(ffrmConsPessoa_Fat);
  end
  else if (Key = Vk_F5) and (fDMCadPessoa.cdsPessoa_Consulta.Active) and (fDMCadPessoa.cdsPessoa_ConsultaCODIGO.AsInteger > 0) then
  begin
    ffrmConsPessoa_Fin := TfrmConsPessoa_Fin.Create(self);
    ffrmConsPessoa_Fin.vID_Pessoa_Cons := fDMCadPessoa.cdsPessoa_ConsultaCODIGO.AsInteger;
    ffrmConsPessoa_Fin.Label2.Caption := fDMCadPessoa.cdsPessoa_ConsultaNOME.AsString;
    ffrmConsPessoa_Fin.ShowModal;
    FreeAndNil(ffrmConsPessoa_Fin);
  end
  else if (Key = Vk_F6) and (fDMCadPessoa.cdsPessoa_Consulta.Active) and (fDMCadPessoa.cdsPessoa_ConsultaCODIGO.AsInteger > 0) then
  begin
    ffrmConsPessoa_Prod := TfrmConsPessoa_Prod.Create(self);
    ffrmConsPessoa_Prod.vID_Pessoa_Cons := fDMCadPessoa.cdsPessoa_ConsultaCODIGO.AsInteger;
    ffrmConsPessoa_Prod.Label2.Caption := fDMCadPessoa.cdsPessoa_ConsultaNOME.AsString;
    if (fDMCadPessoa.cdsPessoa_ConsultaTP_CLIENTE.AsString = 'S') and (fDMCadPessoa.cdsPessoa_ConsultaTP_FORNECEDOR.AsString = 'S') then
      ffrmConsPessoa_Prod.vTipo_Pessoa := 'A'
    else if (fDMCadPessoa.cdsPessoa_ConsultaTP_CLIENTE.AsString = 'S') then
      ffrmConsPessoa_Prod.vTipo_Pessoa := 'C'
    else
      ffrmConsPessoa_Prod.vTipo_Pessoa := 'F';
    ffrmConsPessoa_Prod.ShowModal;
    FreeAndNil(ffrmConsPessoa_Prod);
  end;
end;

procedure TfrmCadPessoaRed.BitBtn1Click(Sender: TObject);
begin
  ffrmCadPessoa_Servico := TfrmCadPessoa_Servico.Create(self);
  ffrmCadPessoa_Servico.fDMCadPessoa := fDMCadPessoa;
  ffrmCadPessoa_Servico.ShowModal;
  FreeAndNil(ffrmCadPessoa_Servico);
end;

procedure TfrmCadPessoaRed.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not (pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadPessoaRed.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
  ComboBox1.ItemIndex := 8;
  ComboBox2.ItemIndex := 0;
end;

procedure TfrmCadPessoaRed.prc_Abrir_Pessoas_Outras;
begin
  fDMCadPessoa.cdsOBS_Lei.Close;
  fDMCadPessoa.cdsOBS_Lei.Open;

  fDMCadPessoa.cdsPessoa_Servico.Close;
  fDMCadPessoa.sdsPessoa_Servico.ParamByName('CODIGO').AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
  fDMCadPessoa.cdsPessoa_Servico.Open;

  fDMCadPessoa.cdsPessoa_Fiscal.Close;
  fDMCadPessoa.sdsPessoa_Fiscal.ParamByName('CODIGO').AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
  fDMCadPessoa.cdsPessoa_Fiscal.Open;

  fDMCadPessoa.cdsPessoa_Servico_Int.Close;
  fDMCadPessoa.sdsPessoa_Servico_Int.ParamByName('CODIGO').AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
  fDMCadPessoa.cdsPessoa_Servico_Int.Open;

  fDMCadPessoa.cdsPessoa_Dep.Close;
  fDMCadPessoa.sdsPessoa_Dep.ParamByName('CODIGO').AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
  fDMCadPessoa.cdsPessoa_Dep.Open;

  fDMCadPessoa.cdsPessoa_Ativ.Close;
  fDMCadPessoa.sdsPessoa_Ativ.ParamByName('CODIGO').AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
  fDMCadPessoa.cdsPessoa_Ativ.Open;

  fDMCadPessoa.cdsPessoa_Fisica.Close;
  fDMCadPessoa.sdsPessoa_Fisica.ParamByName('CODIGO').AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
  fDMCadPessoa.cdsPessoa_Fisica.Open;

  fDMCadPessoa.cdsPessoa_Aut.Close;
  fDMCadPessoa.sdsPessoa_Aut.ParamByName('CODIGO').AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
  fDMCadPessoa.cdsPessoa_Aut.Open;

  fDMCadPessoa.cdsPessoa_RefP.Close;
  fDMCadPessoa.sdsPessoa_RefP.ParamByName('CODIGO').AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
  fDMCadPessoa.cdsPessoa_RefP.Open;

  fDMCadPessoa.cdsPessoa_RefC.Close;
  fDMCadPessoa.sdsPessoa_RefC.ParamByName('CODIGO').AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
  fDMCadPessoa.cdsPessoa_RefC.Open;
end;

procedure TfrmCadPessoaRed.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadPessoaRed.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadPessoaRed.BitBtn2Click(Sender: TObject);
begin
  ffrmCadPessoa_Servico_Int := TfrmCadPessoa_Servico_Int.Create(self);
  ffrmCadPessoa_Servico_Int.fDMCadPessoa := fDMCadPessoa;
  ffrmCadPessoa_Servico_Int.ShowModal;
  FreeAndNil(ffrmCadPessoa_Servico_Int);
end;

procedure TfrmCadPessoaRed.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadPessoa.prc_Abrir_Cidade(fDMCadPessoa.cdsPessoaUF.AsString);
end;

procedure TfrmCadPessoaRed.RxDBLookupCombo18Enter(Sender: TObject);
begin
  fDMCadPessoa.cdsContaOrcamento.IndexFieldNames := 'CODIGO';
end;

procedure TfrmCadPessoaRed.prc_Chamar_frmSel_ContaOrc(Campo: string; Codigo: Integer);
begin
  vID_ContaOrcamento_Pos := Codigo;
  frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
  frmSel_ContaOrc.ShowModal;
  fDMCadPessoa.cdsPessoa.FieldByName(Campo).AsInteger := vID_ContaOrcamento_Pos;
end;

procedure TfrmCadPessoaRed.GroupBox3Enter(Sender: TObject);
begin
  fDMCadPessoa.prc_Abrir_Cidade('');
end;

procedure TfrmCadPessoaRed.GroupBox2Enter(Sender: TObject);
begin
  fDMCadPessoa.prc_Abrir_Cidade('');
end;

procedure TfrmCadPessoaRed.prc_Posiciona_Pessoa;
begin
  fDMCadPessoa.prc_Localizar(fDMCadPessoa.cdsPessoa_ConsultaCODIGO.AsInteger);
  fDMCadPessoa.cdsPessoa_Contato.Close;
  fDMCadPessoa.cdsPessoa_Contato.Open;
end;

procedure TfrmCadPessoaRed.btnCadConsultar_ReceitaClick(Sender: TObject);
begin
  if fDMCadPessoa.cdsPessoaPESSOA.AsString = 'F' then
  begin
    ffrmConsCPF_ACBR := TfrmConsCPF_ACBR.Create(self);
    ffrmConsCPF_ACBR.EditCNPJ.Text := fDMCadPessoa.cdsPessoaCNPJ_CPF.AsString;
    ffrmConsCPF_ACBR.ShowModal;
    FreeAndNil(ffrmConsCPF_ACBR);
  end
  else
  begin
    ffrmConsCNPJ_ACBR := TfrmConsCNPJ_ACBR.Create(self);
    ffrmConsCNPJ_ACBR.fDMCadPessoa := fDMCadPessoa;
    ffrmConsCNPJ_ACBR.EditCNPJ.Text := fDMCadPessoa.cdsPessoaCNPJ_CPF.AsString;
    ffrmConsCNPJ_ACBR.ShowModal;
    FreeAndNil(ffrmConsCNPJ_ACBR);
  end;
end;

procedure TfrmCadPessoaRed.N11Click(Sender: TObject);
var
  vArq: string;
begin
end;

procedure TfrmCadPessoaRed.prc_Inserir_mResumo(Tipo, Codigo, Nome: string);
begin
  if (fDMCadPessoa.mResumo.FindKey([Tipo, Codigo])) then
    fDMCadPessoa.mResumo.Edit
  else
  begin
    fDMCadPessoa.mResumo.Insert;
    fDMCadPessoa.mResumoTipo.AsString := Tipo;
    fDMCadPessoa.mResumoCodigo.AsString := Codigo;
    fDMCadPessoa.mResumoNome.AsString := Nome;
    fDMCadPessoa.mResumoQtd.AsInteger := 0;
    fDMCadPessoa.mResumoQtd_Ativo.AsInteger := 0;
    fDMCadPessoa.mResumoQtd_Inativo.AsInteger := 0;
  end;
  fDMCadPessoa.mResumoQtd.AsInteger := fDMCadPessoa.mResumoQtd.AsInteger + 1;
  if fDMCadPessoa.cdsPessoa_ConsultaINATIVO.AsString = 'S' then
    fDMCadPessoa.mResumoQtd_Ativo.AsInteger := fDMCadPessoa.mResumoQtd_Ativo.AsInteger + 1
  else
    fDMCadPessoa.mResumoQtd_Inativo.AsInteger := fDMCadPessoa.mResumoQtd_Inativo.AsInteger + 1;
  if Tipo = '1' then
    fDMCadPessoa.mResumoNome_Tipo.AsString := 'Resumo por Cidades'
  else if Tipo = '2' then
    fDMCadPessoa.mResumoNome_Tipo.AsString := 'Resumo de Clientes por Estado'
  else if Tipo = '3' then
    fDMCadPessoa.mResumoNome_Tipo.AsString := 'Resumo de Clientes por Representante';
  fDMCadPessoa.mResumo.Post;
end;

procedure TfrmCadPessoaRed.DBMemo4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadPessoaRed.DBMemo5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;


procedure TfrmCadPessoaRed.DBCheckBox3Exit(Sender: TObject);
begin
  Label107.Visible     := ((fDMCadPessoa.qParametros_FinUSA_LIMITE_COMPRAS.AsString = 'S') and (fDMCadPessoa.cdsPessoaTP_FORNECEDOR.AsString = 'S'));
  DBEdit48.Visible     := ((fDMCadPessoa.qParametros_FinUSA_LIMITE_COMPRAS.AsString = 'S') and (fDMCadPessoa.cdsPessoaTP_FORNECEDOR.AsString = 'S'));
end;

procedure TfrmCadPessoaRed.RxDBComboBox5Exit(Sender: TObject);
begin
  if fDMCadPessoa.cdsPessoaTIPO_CONTRIBUINTE.AsInteger = 2 then
    fDMCadPessoa.cdsPessoaINSCR_EST.AsString := 'ISENTO'
  else if fDMCadPessoa.cdsPessoaTIPO_CONTRIBUINTE.AsInteger = 9 then
    fDMCadPessoa.cdsPessoaINSCR_EST.AsString := '';
  case fDMCadPessoa.cdsPessoaTIPO_CONTRIBUINTE.AsInteger of
    1:
      fDMCadPessoa.cdsPessoaTIPO_CONSUMIDOR.AsInteger := 0;
    2, 9:
      fDMCadPessoa.cdsPessoaTIPO_CONSUMIDOR.AsInteger := 1;
  end;
end;

procedure TfrmCadPessoaRed.DBEdit65Enter(Sender: TObject);
begin
  fDMCadPessoa.cdsPessoa_FisicaCONJUGE_CPF.EditMask := '000.000.000-00';
end;

procedure TfrmCadPessoaRed.DBEdit65Exit(Sender: TObject);
var
  vAux: string;
begin
  vAux := Monta_Numero(DBEdit65.Text, 0);
  if (trim(vAux) = '') or (copy(vAux, 1, 9) = '000000000') then
    exit;
  if not ValidaCPF(DBEdit65.Text) then
  begin
    ShowMessage('CPF incorreto!');
    fDMCadPessoa.cdsPessoa_FisicaCONJUGE_CPF.Clear;
    DBEdit65.SetFocus;
  end;
end;

procedure TfrmCadPessoaRed.btnSefazClick(Sender: TObject);
var
  texto: string;
  cnpj_pes: string;
  oStream: TMemoryStream;
  oStrStream: TStringStream;
  vPessoa: Integer;
  vUFAux: string;
  vLocalServidorNFe: string;
begin
  vPessoa := 0;
  if fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J' then
    vPessoa := 1
  else if fDMCadPessoa.cdsPessoaPESSOA.AsString = 'F' then
    vPessoa := 2;
  if vPessoa = 0 then
  begin
    MessageDlg('*** Pessoa (Jurídica/Física) não informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  vUFAux := fDMCadPessoa.cdsPessoaUF.AsString;
  if trim(fDMCadPessoa.cdsPessoaUF.AsString) = '' then
    vUFAux := 'RS';

  fDMCadPessoa.qFilial.Close;
  fDMCadPessoa.qFilial.Open;
  fDMCadPessoa.cdsConsultaCadastro.Close;
  if fDMCadPessoa.qFilialPESSOA.AsString = 'F' then
    texto := Monta_Texto(fDMCadPessoa.qFilialCNPJ_CPF.AsString, 11)
  else
    texto := Monta_Texto(fDMCadPessoa.qFilialCNPJ_CPF.AsString, 14);
  vLocalServidorNFe := fDMCadPessoa.qParametrosLOCALSERVIDORNFE.AsString;
  if trim(fDMCadPessoa.qFilialLOCALSERVIDORNFE.AsString) <> '' then
    vLocalServidorNFe := fDMCadPessoa.qFilialLOCALSERVIDORNFE.AsString;
  cnpj_pes := Monta_Texto(fDMCadPessoa.cdsPessoaCNPJ_CPF.AsString, 14);

  if (trim(texto) = '') or (trim(cnpj_pes) = '') then
  begin
    MessageDlg('*** CNPJ não informado!', mtInformation, [mbOk], 0);
    exit;
  end;

  oStream := TMemoryStream.Create;
  try
    ConsultarCadastro(Trim(vLocalServidorNFe), texto, vPessoa, vUFAux, cnpj_pes, oStream);

    oStream.Position := 0;

    oStrStream := TStringStream.Create('');
    try
      oStream.Position := 0;
      oStrStream.CopyFrom(oStream, oStream.Size);
      //oStream.SaveToFile('C:\a\Cadastro.xml');
      fDMCadPessoa.xtrConsultaCadastro.TransformRead.SourceXml := oStrStream.DataString;
      fDMCadPessoa.xtrConsultaCadastro.TransformRead.TransformationFile := ExtractFilePath(Application.ExeName) + 'xtr\ConsultaCadastro.xtr';
    finally
      FreeAndNil(oStrStream);
    end;
  finally
    FreeAndNil(oStream);
  end;
  fDMCadPessoa.cdsConsultaCadastro.Open;
  ffNFe_ConsultaCadastro := TfNFe_ConsultaCadastro.Create(self);
  ffNFe_ConsultaCadastro.fDMCadPessoa := fDMCadPessoa;
  ffNFe_ConsultaCadastro.ShowModal;
  FreeAndNil(ffNFe_ConsultaCadastro);
  if fDMCadPessoa.cdsPessoaID_CIDADE.AsInteger <= 0 then
    MessageDlg('*** Município precisa ser informado manualmente, pois a Sefaz não esta retornando o Cód. do Município!', mtInformation, [mbOk], 0);
end;

procedure TfrmCadPessoaRed.RxDBLookupCombo8Exit(Sender: TObject);
begin
  if RxDBLookupCombo8.Text <> '' then
    fDMCadPessoa.cdsPessoaUF_PGTO.AsString := fDMCadPessoa.cdsCidadeUF.AsString;
end;

procedure TfrmCadPessoaRed.RxDBLookupCombo10Exit(Sender: TObject);
begin
  if RxDBLookupCombo10.Text <> '' then
    fDMCadPessoa.cdsPessoaUF_ENT.AsString := fDMCadPessoa.cdsCidadeUF.AsString;
end;

procedure TfrmCadPessoaRed.RxDBComboBox2Exit(Sender: TObject);
begin
  if RxDBComboBox2.ItemIndex = 0 then
    fDMCadPessoa.cdsPessoaCNPJ_CPG_PGTO.EditMask := '99.999.999/9999-99'
  else if RxDBComboBox2.ItemIndex = 1 then
    fDMCadPessoa.cdsPessoaCNPJ_CPG_PGTO.EditMask := '999.999.999-99'
  else if RxDBComboBox1.ItemIndex = 2 then
    fDMCadPessoa.cdsPessoaCNPJ_CPG_PGTO.EditMask := '';
end;

procedure TfrmCadPessoaRed.DBEdit25Enter(Sender: TObject);
begin
  if fDMCadPessoa.cdsPessoaPESSOA_PGTO.AsString = 'J' then
    fDMCadPessoa.cdsPessoaCNPJ_CPG_PGTO.EditMask := '99.999.999/9999-99'
  else if fDMCadPessoa.cdsPESSOAPessoa.AsString = 'F' then
    fDMCadPessoa.cdsPessoaCNPJ_CPG_PGTO.EditMask := '999.999.999-99'
  else if fDMCadPessoa.cdsPESSOAPessoa.AsString = 'E' then
    fDMCadPessoa.cdsPessoaCNPJ_CPG_PGTO.EditMask := '';
end;

procedure TfrmCadPessoaRed.DBEdit25Exit(Sender: TObject);
var
  vNomeAux: string;
  vAux: string;
begin
  vAux := Monta_Numero(DBEdit25.Text, 0);
  if (trim(vAux) = '') or (copy(vAux, 1, 9) = '000000000') then
    exit;
  if fDMCadPessoa.cdsPessoaPESSOA_PGTO.AsString = 'J' then
  begin
    if not ValidaCNPJ(DBEdit25.Text) then
    begin
      ShowMessage('CNPJ incorreto!');
      fDMCadPessoa.cdsPessoaCNPJ_CPG_PGTO.Clear;
      DBEdit25.SetFocus;
    end;
  end
  else if fDMCadPessoa.cdsPessoaPESSOA_PGTO.AsString = 'F' then
  begin
    if not ValidaCPF(DBEdit25.Text) then
    begin
      ShowMessage('CPF incorreto!');
      fDMCadPessoa.cdsPessoaCNPJ_CPG_PGTO.Clear;
      DBEdit25.SetFocus;
    end;
  end;
end;

procedure TfrmCadPessoaRed.DBEdit50Enter(Sender: TObject);
begin
  vCod_Alfa_Ant := fDMCadPessoa.cdsPessoaCOD_ALFA.AsString;
end;

procedure TfrmCadPessoaRed.RxDBLookupCombo39Exit(Sender: TObject);
begin
  fDMCadPessoa.cdsPessoa_FisicaCONJUGE_CID_EMP.AsString := RxDBLookupCombo39.Text;
  if RxDBLookupCombo39.Text <> '' then
    fDMCadPessoa.cdsCidade.Locate('ID', RxDBLookupCombo39.KeyValue, ([Locaseinsensitive]));
  if RxDBLookupCombo39.Text <> '' then
    fDMCadPessoa.cdsPessoa_FisicaCONJUGE_UF_EMP.AsString := fDMCadPessoa.cdsCidadeUF.AsString;
end;

procedure TfrmCadPessoaRed.DBEdit63Enter(Sender: TObject);
begin
  vRG_Ant := fDMCadPessoa.cdsPessoa_FisicaRG_NUM.AsString;
end;

procedure TfrmCadPessoaRed.DBEdit63Exit(Sender: TObject);
begin
  if trim(fDMCadPessoa.cdsPessoa_FisicaRG_NUM.AsString) <> trim(vRG_Ant) then
    fDMCadPessoa.cdsPessoaRG.AsString := fDMCadPessoa.cdsPessoa_FisicaRG_NUM.AsString;
end;


procedure TfrmCadPessoaRed.DBCheckBox2Enter(Sender: TObject);
begin
  vTP_Cliente_Ant := fDMCadPessoa.cdsPessoaTP_CLIENTE.AsString;
end;

procedure TfrmCadPessoaRed.DBCheckBox2Exit(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  if (fDMCadPessoa.cdsPessoaTP_CLIENTE.AsString = 'N') and (vTP_Cliente_Ant = 'S') then
  begin
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata := True;
      sds.GetMetadata := False;
      sds.CommandText := 'SELECT COUNT(1) CONTADOR FROM NOTAFISCAL N ' + ' WHERE N.ID_CLIENTE = :ID_CLIENTE ';
      sds.ParamByName('ID_CLIENTE').AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
      sds.Open;
      if sds.FieldByName('CONTADOR').AsInteger > 0 then
      begin
        MessageDlg('*** Opção (Tipo Pessoa) não pode ser desmarcado o CLIENTE, pois já existe nota para ele!', mtError, [mbOk], 0);
        fDMCadPessoa.cdsPessoaTP_CLIENTE.AsString := 'S';
      end;
    finally
      FreeAndNil(sds);
    end;
  end;
end;

procedure TfrmCadPessoaRed.RxDBLookupCombo7Change(Sender: TObject);
begin
  if RxDBLookupCombo7.Value <> '' then
    fDMCadPessoa.prc_Abre_Carteira(RxDBLookupCombo7.KeyValue)
  else
    fDMCadPessoa.prc_Abre_Carteira(0);
end;

procedure TfrmCadPessoaRed.SpeedButton10Click(Sender: TObject);
begin
  fDMCadPessoa.cdsCarteira.Close;
  fDMCadPessoa.prc_Abre_Carteira(RxDBLookupCombo7.KeyValue);
  fDMCadPessoa.cdsCarteira.Open;
end;

procedure TfrmCadPessoaRed.CadastrodeConsumidor1Click(Sender: TObject);
var
  vArq: string;
  vCodPessoa: Integer;
begin
  vCodPessoa := fDMCadPessoa.cdsPessoa_ConsultaCODIGO.AsInteger;
  fDMCadPessoa.cdsPessoa_Consulta.Filtered := False;
  fDMCadPessoa.cdsPessoa_Consulta.Filter   := 'CODIGO = ' + IntToStr(vCodPessoa);
  fDMCadPessoa.cdsPessoa_Consulta.Filtered := True;

  prc_Le_cdsPessoa_Consulta(1);
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Clientes_PF.fr3';
  if FileExists(vArq) then
    fDMCadPessoa.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado: ' + vArq);
    Exit;
  end;
  fDMCadPessoa.frxReport1.ShowReport;

  fDMCadPessoa.cdsPessoa_Consulta.Filtered := False;
  fDMCadPessoa.cdsPessoa_Consulta.Filter   := '';
  fDMCadPessoa.cdsPessoa_Consulta.IndexFieldNames := 'CODIGO';
  fDMCadPessoa.cdsPessoa_Consulta.FindKey([vCodPessoa]);
end;

procedure TfrmCadPessoaRed.Excel1Click(Sender: TObject);
begin
  prc_CriaExcel(SMDBGrid1.DataSource);
end;

procedure TfrmCadPessoaRed.prc_CriaExcel(vDados: TDataSource);
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

  vTexto := vTexto + Name + '_Pessoa_'+Monta_Numero(DateToStr(Date),0);

  Planilha.ActiveWorkBook.SaveAs(vTexto);
  Screen.Cursor := crDefault;
end;

procedure TfrmCadPessoaRed.prc_Le_cdsPessoa_Consulta(Tipo: Integer);
var
  vItemImp: Integer;
  vCodAux: string;
  vGravar: Boolean;
begin
  vItemImp := 0;
  if not fDMCadPessoa.mImpAuxiliar.Active then
    fDMCadPessoa.mImpAuxiliar.Open;
  fDMCadPessoa.mImpAuxiliar.EmptyDataSet;
  fDMCadPessoa.mResumo.EmptyDataSet;
  fDMCadPessoa.mResumo.IndexFieldNames := 'Tipo;Codigo';
  SMDBGrid1.DisableScroll;
  fDMCadPessoa.cdsPessoa_Consulta.First;
  while not fDMCadPessoa.cdsPessoa_Consulta.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      vGravar := True;
      if (Tipo = 2) and (trim(fDMCadPessoa.cdsPessoa_ConsultaEMAIL_NFE.AsString) = '') and (trim(fDMCadPessoa.cdsPessoa_ConsultaEMAIL_NFE2.AsString) = '') then
        vGravar := False;
      if vGravar then
      begin
        vItemImp := vItemImp + 1;
        fDMCadPessoa.mImpAuxiliar.Insert;
        fDMCadPessoa.mImpAuxiliarID.AsInteger := fDMCadPessoa.cdsPessoa_ConsultaCODIGO.AsInteger;
        fDMCadPessoa.mImpAuxiliarItem.AsInteger := vItemImp;
        fDMCadPessoa.mImpAuxiliar.Post;
      end;
    end;
    fDMCadPessoa.cdsPessoa_Consulta.Next;
  end;
  SMDBGrid1.EnableScroll;
  fDMCadPessoa.mResumo.IndexFieldNames := 'Tipo;Nome';
end;

procedure TfrmCadPessoaRed.TS_Dados_PessoaisEnter(Sender: TObject);
begin
  if not (fDMCadPessoa.cdsPessoa_Fisica.State in [dsEdit, dsInsert]) then
  begin
    if not fDMCadPessoa.cdsPessoa_Fisica.IsEmpty then
      fDMCadPessoa.cdsPessoa_Fisica.Edit
    else
    begin
      fDMCadPessoa.cdsPessoa_Fisica.Insert;
      fDMCadPessoa.cdsPessoa_FisicaCODIGO.AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
    end;
  end;
end;

procedure TfrmCadPessoaRed.prc_Habilta_TS;
begin
  TS_Contatos.Enabled := not (TS_Contatos.Enabled);
  TS_Dados_Pessoais.Enabled := not (TS_Dados_Pessoais.Enabled);
  TS_Tipo_Regime.Enabled := not (TS_Tipo_Regime.Enabled);
  TS_Autorizado.Enabled := not (TS_Autorizado.Enabled);
  TS_Conjuge.Enabled := not (TS_Conjuge.Enabled);
  TS_Endereco.Enabled := not (TS_Endereco.Enabled);
  TS_Dados_Profissionais.Enabled := not (TS_Dados_Profissionais.Enabled);
  TS_Pessoa_Financeiro.Enabled := not (TS_Pessoa_Financeiro.Enabled);
end;

procedure TfrmCadPessoaRed.prc_Opcao_Pessoa;
begin
  TS_Pessoa_Financeiro.TabVisible   := ((fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J') or (fDMCadPessoa.cdsPessoaPESSOA.AsString = 'E'));
  TS_Dados_Profissionais.TabVisible := (fDMCadPessoa.cdsPessoaPESSOA.AsString = 'F');
  TS_Conjuge.TabVisible             := (fDMCadPessoa.cdsPessoaPESSOA.AsString = 'F');
  TS_Tipo_Regime.TabVisible         := ((fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J') or (fDMCadPessoa.cdsPessoaPESSOA.AsString = 'E'));
  TS_Dados_Pessoais.TabVisible      := (fDMCadPessoa.cdsPessoaPESSOA.AsString = 'F');
  TS_Contatos.TabVisible            := ((fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J') or (fDMCadPessoa.cdsPessoaPESSOA.AsString = 'E'));
  TS_Cobranca.TabVisible            := ((fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J') or (fDMCadPessoa.cdsPessoaPESSOA.AsString = 'E'));
  TS_Endereco.TabVisible            := ((fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J') or (fDMCadPessoa.cdsPessoaPESSOA.AsString = 'E')); 
  Label20.Visible                   := ((fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J') or (fDMCadPessoa.cdsPessoaPESSOA.AsString = 'E'));
  DBEdit18.Visible                  := ((fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J') or (fDMCadPessoa.cdsPessoaPESSOA.AsString = 'E'));
  if fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J' then
    RzPageControl3.ActivePage := TS_Contatos
  else
    RzPageControl3.ActivePage := TS_Dados_Pessoais;
end;

procedure TfrmCadPessoaRed.Panel3Enter(Sender: TObject);
begin
  if not (fDMCadPessoa.cdsPessoa_Fisica.State in [dsEdit, dsInsert]) then
  begin
    if not fDMCadPessoa.cdsPessoa_Fisica.IsEmpty then
      fDMCadPessoa.cdsPessoa_Fisica.Edit
    else
    begin
      fDMCadPessoa.cdsPessoa_Fisica.Insert;
      fDMCadPessoa.cdsPessoa_FisicaCODIGO.AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
    end;
  end;
end;

end.

