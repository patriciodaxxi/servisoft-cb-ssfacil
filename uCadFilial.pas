unit UCadFilial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadFilial, DBGrids,
  ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadUF, UCBase, RxLookup, Mask, RXDBCtrl, RxDBComb, ExtDlgs, NxCollection,
  UCadFilial_Email, UCadFilial_Download, RzPanel;

type
  TfrmCadFilial = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    StaticText1: TStaticText;
    UCControls1: TUCControls;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    RzPageControl2: TRzPageControl;
    TS_Dados: TRzTabSheet;
    TS_Tributos: TRzTabSheet;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit15: TDBEdit;
    Label14: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label15: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    RxDBComboBox4: TRxDBComboBox;
    Label19: TLabel;
    Label20: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    Label21: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    Label22: TLabel;
    RxDBComboBox7: TRxDBComboBox;
    Label23: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label24: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label25: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    TS_Parametros: TRzTabSheet;
    Label28: TLabel;
    DBEdit19: TDBEdit;
    Label29: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label27: TLabel;
    DBEdit18: TDBEdit;
    Label26: TLabel;
    DBEdit17: TDBEdit;
    RxDBComboBox8: TRxDBComboBox;
    BitBtn20: TBitBtn;
    OpenPictureDialog2: TOpenPictureDialog;
    Label34: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label35: TLabel;
    DBEdit22: TDBEdit;
    TS_NotaServico: TRzTabSheet;
    Label36: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label37: TLabel;
    Label38: TLabel;
    DBEdit23: TDBEdit;
    Label40: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Label41: TLabel;
    RxDBLookupCombo11: TRxDBLookupCombo;
    Label42: TLabel;
    RxDBLookupCombo12: TRxDBLookupCombo;
    Label43: TLabel;
    DBEdit24: TDBEdit;
    Label44: TLabel;
    DBEdit25: TDBEdit;
    Label45: TLabel;
    DBEdit26: TDBEdit;
    Label46: TLabel;
    DBEdit27: TDBEdit;
    Label50: TLabel;
    DBEdit29: TDBEdit;
    Label51: TLabel;
    RxDBComboBox9: TRxDBComboBox;
    Label49: TLabel;
    DBEdit28: TDBEdit;
    Label39: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    BitBtn1: TBitBtn;
    Label47: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    Label48: TLabel;
    DBEdit32: TDBEdit;
    SpeedButton4: TSpeedButton;
    DBCheckBox1: TDBCheckBox;
    Label52: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Label53: TLabel;
    Label55: TLabel;
    DBEdit36: TDBEdit;
    GroupBox1: TGroupBox;
    Label54: TLabel;
    DBEdit35: TDBEdit;
    DBEdit37: TDBEdit;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit40: TDBEdit;
    Label60: TLabel;
    RxDBComboBox10: TRxDBComboBox;
    Label61: TLabel;
    DBEdit41: TDBEdit;
    TS_SPED: TRzTabSheet;
    Label62: TLabel;
    RxDBLookupCombo13: TRxDBLookupCombo;
    Label63: TLabel;
    RxDBComboBox11: TRxDBComboBox;
    Label64: TLabel;
    RxDBComboBox12: TRxDBComboBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label65: TLabel;
    DBEdit42: TDBEdit;
    Label66: TLabel;
    DBEdit43: TDBEdit;
    TabSheet1: TRzTabSheet;
    pnlRel: TPanel;
    btnInserir_Rel: TNxButton;
    btnAlterar_Rel: TNxButton;
    btnExcluir_Rel: TNxButton;
    SMDBGrid2: TSMDBGrid;
    TS_Email: TRzTabSheet;
    Panel3: TPanel;
    btnInserir_Email: TNxButton;
    btnAlterar_Email: TNxButton;
    btnExcluir_Email: TNxButton;
    SMDBGrid3: TSMDBGrid;
    TS_Download: TRzTabSheet;
    Panel4: TPanel;
    btnInserir_Download: TNxButton;
    btnAlterar_Download: TNxButton;
    btnExcluir_Download: TNxButton;
    SMDBGrid4: TSMDBGrid;
    TS_Config_Danfe_NFe: TRzTabSheet;
    pnlConfig_Danfe_NFe: TPanel;
    gbxCertificado: TRzGroupBox;
    Label67: TLabel;
    DBEdit44: TDBEdit;
    Label68: TLabel;
    DBEdit45: TDBEdit;
    Label69: TLabel;
    DBEdit46: TDBEdit;
    Label70: TLabel;
    Edit1: TEdit;
    RzGroupBox1: TRzGroupBox;
    Label72: TLabel;
    DBEdit48: TDBEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    BitBtn2: TBitBtn;
    Label71: TLabel;
    RxDBComboBox13: TRxDBComboBox;
    Label73: TLabel;
    RxDBComboBox14: TRxDBComboBox;
    Label74: TLabel;
    RxDBComboBox15: TRxDBComboBox;
    Label75: TLabel;
    Label77: TLabel;
    DBEdit47: TDBEdit;
    Label84: TLabel;
    DBEdit49: TDBEdit;
    Label85: TLabel;
    DBEdit50: TDBEdit;
    Label86: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    Panel5: TPanel;
    btnConfirmar_Config_NFe: TNxButton;
    btnAlterar_Config_NFe: TNxButton;
    btnCancelar_Config_NFe: TNxButton;
    Label76: TLabel;
    DBEdit51: TDBEdit;
    TS_CBarra: TRzTabSheet;
    SMDBGrid5: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    Label78: TLabel;
    RxDBComboBox16: TRxDBComboBox;
    Label79: TLabel;
    RxDBLookupCombo14: TRxDBLookupCombo;
    Label80: TLabel;
    RxDBComboBox17: TRxDBComboBox;
    Label81: TLabel;
    DBEdit52: TDBEdit;
    Label82: TLabel;
    DBEdit53: TDBEdit;
    RzGroupBox2: TRzGroupBox;
    Label83: TLabel;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    Label87: TLabel;
    Label88: TLabel;
    RxDBLookupCombo15: TRxDBLookupCombo;
    DBCheckBox15: TDBCheckBox;
    TS_Ult_Numero: TRzTabSheet;
    pnlUlt_Numero: TPanel;
    Label89: TLabel;
    DBEdit56: TDBEdit;
    Label90: TLabel;
    DBEdit57: TDBEdit;
    Label91: TLabel;
    DBEdit58: TDBEdit;
    Label92: TLabel;
    DBEdit59: TDBEdit;
    Label93: TLabel;
    DBEdit60: TDBEdit;
    BitBtn3: TBitBtn;
    Label94: TLabel;
    DBEdit61: TDBEdit;
    Label95: TLabel;
    RxDBComboBox18: TRxDBComboBox;
    TS_Contabil: TRzTabSheet;
    pnlContabil: TPanel;
    Label96: TLabel;
    DBEdit62: TDBEdit;
    Label97: TLabel;
    DBEdit63: TDBEdit;
    Label98: TLabel;
    DBEdit64: TDBEdit;
    Label99: TLabel;
    RxDBLookupCombo16: TRxDBLookupCombo;
    Label100: TLabel;
    RxDBLookupCombo17: TRxDBLookupCombo;
    Label101: TLabel;
    DBEdit65: TDBEdit;
    Label102: TLabel;
    DBEdit66: TDBEdit;
    Label103: TLabel;
    DBEdit67: TDBEdit;
    Label104: TLabel;
    DBEdit68: TDBEdit;
    DBCheckBox16: TDBCheckBox;
    Label105: TLabel;
    DBMemo1: TDBMemo;
    Label106: TLabel;
    Label107: TLabel;
    RxDBComboBox19: TRxDBComboBox;
    TS_MDFe: TRzTabSheet;
    pnlMDFe: TPanel;
    Label108: TLabel;
    RxDBComboBox20: TRxDBComboBox;
    Label109: TLabel;
    RxDBComboBox21: TRxDBComboBox;
    Label110: TLabel;
    RxDBComboBox22: TRxDBComboBox;
    DBEdit69: TDBEdit;
    Label111: TLabel;
    Label112: TLabel;
    DBEdit70: TDBEdit;
    Label113: TLabel;
    DBEdit71: TDBEdit;
    Label114: TLabel;
    DBEdit72: TDBEdit;
    Label115: TLabel;
    DBEdit73: TDBEdit;
    Label116: TLabel;
    TS_Custo: TRzTabSheet;
    pnlCusto: TPanel;
    gbxCustoVenda: TRzGroupBox;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    RzGroupBox3: TRzGroupBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    Label126: TLabel;
    DBEdit83: TDBEdit;
    Label127: TLabel;
    DBEdit84: TDBEdit;
    TS_SMS: TRzTabSheet;
    pnlSMS: TPanel;
    Label128: TLabel;
    Label129: TLabel;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    Label130: TLabel;
    DBEdit87: TDBEdit;
    Label131: TLabel;
    DBEdit88: TDBEdit;
    RzGroupBox4: TRzGroupBox;
    Label132: TLabel;
    Label133: TLabel;
    RxDBComboBox23: TRxDBComboBox;
    RxDBComboBox24: TRxDBComboBox;
    Label134: TLabel;
    rxcbFinalidade: TRxDBComboBox;
    btnCopiar_Filial: TNxButton;
    Label135: TLabel;
    DBEdit89: TDBEdit;
    Label136: TLabel;
    DBCheckBox22: TDBCheckBox;
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
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn20Click(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RxDBLookupCombo10Enter(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RxDBLookupCombo12Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnInserir_RelClick(Sender: TObject);
    procedure btnAlterar_RelClick(Sender: TObject);
    procedure btnExcluir_RelClick(Sender: TObject);
    procedure btnInserir_EmailClick(Sender: TObject);
    procedure btnAlterar_EmailClick(Sender: TObject);
    procedure btnExcluir_EmailClick(Sender: TObject);
    procedure btnInserir_DownloadClick(Sender: TObject);
    procedure btnAlterar_DownloadClick(Sender: TObject);
    procedure btnExcluir_DownloadClick(Sender: TObject);
    procedure RzPageControl2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnAlterar_Config_NFeClick(Sender: TObject);
    procedure btnCancelar_Config_NFeClick(Sender: TObject);
    procedure btnConfirmar_Config_NFeClick(Sender: TObject);
    procedure DBEdit51Exit(Sender: TObject);
    procedure RxDBLookupCombo15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBCheckBox15Click(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox16Click(Sender: TObject);
    procedure RxDBComboBox8Exit(Sender: TObject);
    procedure DBEdit72Exit(Sender: TObject);
    procedure DBEdit85KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCopiar_FilialClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadFilial: TDMCadFilial;
    ffrmCadFilial_Email: TfrmCadFilial_Email;
    ffrmCadFilial_Download: TfrmCadFilial_Download;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Habilitar_Campos;

    procedure prc_Abrir_Config_NFe;
    procedure prc_Configurar_Danfe_Aut;

  public
    { Public declarations }
  end;

var
  frmCadFilial: TfrmCadFilial;

implementation

uses DateUtils, DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, uCadFilialRelatorios,
  USel_EnqIPI;

{$R *.dfm}

procedure TfrmCadFilial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadFilial.btnExcluirClick(Sender: TObject);
begin
  if fDMCadFilial.cdsFilial.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadFilial.prc_Excluir_Registro;
begin
  fDMCadFilial.prc_Excluir;
end;

procedure TfrmCadFilial.prc_Gravar_Registro;
begin
  if (trim(fDMCadFilial.cdsFilialINSCMUNICIPAL.AsString) <> '') and (trim(fDMCadFilial.cdsFilialCNAE.AsString) = '') then
  begin
    if trim(fDMCadFilial.cdsFilialCNAE_NFSE.AsString) <> '' then
      fDMCadFilial.cdsFilialCNAE.AsString := fDMCadFilial.cdsFilialCNAE_NFSE.AsString;
  end;
  if fDMCadFilial.cdsConfig_NFe.State in [dsEdit] then
  begin
    MessageDlg('*** Não foi gravada a configuração da Danfe!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMCadFilial.cdsFilialCALCULAR_DIFAL.IsNull then
    fDMCadFilial.cdsFilialCALCULAR_DIFAL.AsString := 'N';
  if fDMCadFilial.cdsFilialCALCULAR_DIFAL.AsString = 'N' then
    fDMCadFilial.cdsFilialDIFAL_GERAR_VALORES.AsString := 'N';
  fDMCadFilial.prc_Gravar;
  if fDMCadFilial.cdsFilial.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadFilial.vMsgFilial, mtError, [mbOk], 0);
    exit;
  end;
  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadFilial.prc_Inserir_Registro;
begin
  fDMCadFilial.prc_Inserir;
  if fDMCadFilial.cdsFilial.State in [dsBrowse] then
    exit;
  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Cadastro;
  RzPageControl2.ActivePage := TS_Dados;
  DBEdit7.SetFocus;
end;

procedure TfrmCadFilial.FormShow(Sender: TObject);
begin
  fDMCadFilial := TDMCadFilial.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFilial);
  fDMCadFilial.cdsFilial.Open;
  fDMCadFilial.cdsFilial_Email.Close;
  fDMCadFilial.cdsFilial_Email.Open;
  fDMCadFilial.cdsFilial_Download.Close;
  fDMCadFilial.cdsFilial_Download.Open;

  TS_CBarra.TabVisible := ((fDMCadFilial.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadFilial.qParametrosUSA_COD_BARRAS_PROPRIO.AsString = 'S'));

  TS_Contabil.TabVisible := (fDMCadFilial.qParametros_GeralMOSTRAR_COD_CONTABIL.AsString = 'S');

  TS_Custo.TabVisible := (fDMCadFilial.qParametros_GeralUSA_CUSTO.AsString = 'S');

  TS_SMS.TabVisible   := (fDMCadFilial.qParametros_PedENVIA_SMS.AsString = 'S');
end;

procedure TfrmCadFilial.prc_Consultar;
begin
  fDMCadFilial.cdsFilial.Close;
  fDMCadFilial.sdsFilial.CommandText := fDMCadFilial.ctCommand;
  if Trim(Edit4.Text) <> '' then
    fDMCadFilial.sdsFilial.CommandText := fDMCadFilial.sdsFilial.CommandText +
                                          ' WHERE NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadFilial.cdsFilial.Open;
  fDMCadFilial.cdsFilial_Email.Close;
  fDMCadFilial.cdsFilial_Email.Open;
end;

procedure TfrmCadFilial.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadFilial.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadFilial.cdsFilial.State in [dsBrowse]) or not(fDMCadFilial.cdsFilial.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;
  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadFilial.cdsFilial.CancelUpdates;
  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadFilial.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadFilial.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadFilial.cdsFilial.IsEmpty) or not(fDMCadFilial.cdsFilial.Active) or (fDMCadFilial.cdsFilialID.AsInteger < 1) then
    Exit;
  fDMCadFilial.cdsFilial.Edit;
  prc_Habilitar_Campos;
end;

procedure TfrmCadFilial.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadFilial.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadFilial);
end;

procedure TfrmCadFilial.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadFilial.RxDBLookupCombo2Exit(Sender: TObject);
begin
  fdmCadFilial.cdsFilialCIDADE.AsString := RxDBLookupCombo2.Text;
  fDMCadFilial.cdsFilialUF.AsString     := fDMCadFilial.cdsCidadeUF.AsString;
end;

procedure TfrmCadFilial.DBEdit2Exit(Sender: TObject);
var
  vNomeAux: String;
  vAux: String;
begin
  vAux := Monta_Numero(DBEdit2.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if fDMCadFilial.cdsFilialPESSOA.AsString = 'J' then
  begin
    if not ValidaCNPJ(DBEdit2.Text) then
    begin
      ShowMessage('CNPJ incorreto!');
      fDMCadFilial.cdsFilialCNPJ_CPF.Clear;
      DBEdit2.SetFocus;
    end;
  end
  else
  if not ValidaCPF(DBEdit2.Text) then
  begin
    ShowMessage('CPF incorreto!');
    fDMCadFilial.cdsFilialCNPJ_CPF.Clear;
    DBEdit2.SetFocus;
  end;

  if not(fDMCadFilial.cdsFilialCNPJ_CPF.IsNull) then
  begin
    vNomeAux := VerificaDuplicidade(DBEdit2.Text,'F',fDMCadFilial.cdsFilialID.AsInteger);
    if trim(vNomeAux) <> '' then
    begin
      ShowMessage('CNPJ ou CPF já utilizado para ' + vNomeAux + '!');
      fDMCadFilial.cdsFilialCNPJ_CPF.Clear;
      DBEdit2.SetFocus;
    end;
  end;
end;

procedure TfrmCadFilial.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadFilial.cdsFilial);
end;

procedure TfrmCadFilial.BitBtn20Click(Sender: TObject);
begin
  OpenPictureDialog2.Execute;
  fDMCadFilial.cdsFilialENDLOGO.AsString := OpenPictureDialog2.FileName;
end;

procedure TfrmCadFilial.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadFilial.RxDBLookupCombo10Enter(Sender: TObject);
begin
  fDMCadFilial.prc_Abrir_Natureza;
end;

procedure TfrmCadFilial.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if (not(fDMCadFilial.cdsFilial.Active) or (fDMCadFilial.cdsFilialID.AsInteger <= 0)) then
      exit;
    fDMCadFilial.prc_Abrir_Natureza;
    RzPageControl2.ActivePage := TS_Dados;
    if fDMCadFilial.vNFeConfig_Achou then
      prc_Abrir_Config_NFe;
  end;
end;

procedure TfrmCadFilial.RxDBLookupCombo12Enter(Sender: TObject);
begin
  if RxDBLookupCombo11.Text <> '' then
  begin
   fDMCadFilial.cdsServico_Sint.Locate('ID',RxDBLookupCombo11.KeyValue,[loCaseInsensitive]);
   fDMCadFilial.prc_Abrir_Servico_Pad(fDMCadFilial.cdsServico_SintCODIGO.AsString);
  end
  else
   fDMCadFilial.prc_Abrir_Servico_Pad('');
end;

procedure TfrmCadFilial.BitBtn1Click(Sender: TObject);
begin
  OpenPictureDialog2.Execute;
  fDMCadFilial.cdsFilialENDLOGO_NFSE.AsString := OpenPictureDialog2.FileName;
end;

procedure TfrmCadFilial.SpeedButton4Click(Sender: TObject);
begin
  fDMCadFilial.cdsAtividade_Cid.Close;
  fDMCadFilial.cdsAtividade_Cid.Open;
end;

procedure TfrmCadFilial.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadFilial.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadFilial.prc_Habilitar_Campos;
begin
  TS_Dados.Enabled            := not(TS_Dados.Enabled);
  TS_Tributos.Enabled         := not(TS_Tributos.Enabled);
  TS_Parametros.Enabled       := not(TS_Parametros.Enabled);
  TS_NotaServico.Enabled      := not(TS_NotaServico.Enabled);
  TS_SPED.Enabled             := not(TS_SPED.Enabled);
  TS_Consulta.TabEnabled      := not(TS_Consulta.TabEnabled);
  btnConfirmar.Enabled        := not(btnConfirmar.Enabled);
  btnAlterar.Enabled          := not(btnAlterar.Enabled);
  pnlRel.Enabled              := not(pnlRel.Enabled);
  btnInserir_Rel.Enabled      := not(btnInserir_Rel.Enabled);
  btnAlterar_Rel.Enabled      := not(btnAlterar_Rel.Enabled);
  btnExcluir_Rel.Enabled      := not(btnExcluir_Rel.Enabled);
  btnCopiar_Filial.Enabled    := not(btnCopiar_Filial.Enabled);
  btnInserir_Email.Enabled    := not(btnInserir_Email.Enabled);
  btnAlterar_Email.Enabled    := not(btnAlterar_Email.Enabled);
  btnExcluir_Email.Enabled    := not(btnExcluir_Email.Enabled);
  btnInserir_Download.Enabled := not(btnInserir_Download.Enabled);
  btnAlterar_Download.Enabled := not(btnAlterar_Download.Enabled);
  btnExcluir_Download.Enabled := not(btnExcluir_Download.Enabled);
  SMDBGrid5.ReadOnly          := not(SMDBGrid5.ReadOnly);
  pnlUlt_Numero.Enabled       := not(pnlUlt_Numero.Enabled);
  pnlContabil.Enabled         := not(pnlContabil.Enabled);
  pnlMDFe.Enabled             := not(pnlMDFe.Enabled);
  pnlCusto.Enabled            := not(pnlCusto.Enabled);
  pnlSMS.Enabled              := not(pnlSMS.Enabled);
end;

procedure TfrmCadFilial.btnInserir_RelClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  frmCadFilialRelatorios              := TfrmCadFilialRelatorios.Create(Self);
  frmCadFilialRelatorios.fDMCadFilial := fDmCadFilial;

  fDMCadFilial.cdsFilialRelatorios.Last;
  vItemAux := fDMCadFilial.cdsFilialRelatoriosITEM.AsInteger;
  fDMCadFilial.cdsFilialRelatorios.Insert;
  fDMCadFilial.cdsFilialRelatoriosID.AsInteger   := fDMCadFilial.cdsFilialID.AsInteger;
  fDMCadFilial.cdsFilialRelatoriosITEM.AsInteger := vItemAux + 1;

  frmCadFilialRelatorios.ShowModal;
  FreeAndNil(frmCadFilialRelatorios);
end;

procedure TfrmCadFilial.btnAlterar_RelClick(Sender: TObject);
begin
  frmCadFilialRelatorios              := TfrmCadFilialRelatorios.Create(Self);
  frmCadFilialRelatorios.fDMCadFilial := fDmCadFilial;
  fDMCadFilial.cdsFilialRelatorios.Edit;
  frmCadFilialRelatorios.FilenameEdit1.Text := fDMCadFilial.cdsFilialRelatoriosCAMINHO.AsString;
  frmCadFilialRelatorios.ShowModal;
end;

procedure TfrmCadFilial.btnExcluir_RelClick(Sender: TObject);
begin
  if not fDMCadFilial.cdsFilialRelatorios.IsEmpty then
    if MessageDlg('Deseja realmente excluir esse item?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
      fDMCadFilial.cdsFilialRelatorios.Delete;
end;

procedure TfrmCadFilial.btnInserir_EmailClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  ffrmCadFilial_Email  := TfrmCadFilial_Email.Create(self);
  ffrmCadFilial_Email.fDMCadFilial := fDmCadFilial;

  fDMCadFilial.cdsFilial_Email.Last;
  vItemAux := fDMCadFilial.cdsFilial_EmailITEM.AsInteger;
  fDMCadFilial.cdsFilial_Email.Insert;
  fDMCadFilial.cdsFilial_EmailID.AsInteger   := fDMCadFilial.cdsFilialID.AsInteger;
  fDMCadFilial.cdsFilial_EmailITEM.AsInteger := vItemAux + 1;
  ffrmCadFilial_Email.ShowModal;
  FreeAndNil(ffrmCadFilial_Email);
end;

procedure TfrmCadFilial.btnAlterar_EmailClick(Sender: TObject);
begin
  if fDMCadFilial.cdsFilial_Email.IsEmpty then
    exit;
  ffrmCadFilial_Email  := TfrmCadFilial_Email.Create(self);
  ffrmCadFilial_Email.fDMCadFilial := fDmCadFilial;
  fDMCadFilial.cdsFilial_Email.Edit;
  ffrmCadFilial_Email.ShowModal;
  FreeAndNil(ffrmCadFilial_Email);
end;

procedure TfrmCadFilial.btnExcluir_EmailClick(Sender: TObject);
begin
  if not fDMCadFilial.cdsFilial_Email.IsEmpty then
    if MessageDlg('Deseja realmente excluir esse item?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
      fDMCadFilial.cdsFilial_Email.Delete;
end;

procedure TfrmCadFilial.btnInserir_DownloadClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  ffrmCadFilial_Download  := TfrmCadFilial_Download.Create(self);
  ffrmCadFilial_Download.fDMCadFilial := fDmCadFilial;
  fDMCadFilial.cdsFilial_Download.Last;
  vItemAux := fDMCadFilial.cdsFilial_DownloadITEM.AsInteger;
  fDMCadFilial.cdsFilial_Download.Insert;
  fDMCadFilial.cdsFilial_DownloadID.AsInteger   := fDMCadFilial.cdsFilialID.AsInteger;
  fDMCadFilial.cdsFilial_DownloadITEM.AsInteger := vItemAux + 1;
  ffrmCadFilial_Download.ShowModal;
  FreeAndNil(ffrmCadFilial_Download);
end;

procedure TfrmCadFilial.btnAlterar_DownloadClick(Sender: TObject);
begin
  if fDMCadFilial.cdsFilial_Download.IsEmpty then
    exit;
  ffrmCadFilial_Download  := TfrmCadFilial_Download.Create(self);
  ffrmCadFilial_Download.fDMCadFilial := fDmCadFilial;
  fDMCadFilial.cdsFilial_Download.Edit;
  ffrmCadFilial_Download.ShowModal;
  FreeAndNil(ffrmCadFilial_Download);
end;

procedure TfrmCadFilial.btnExcluir_DownloadClick(Sender: TObject);
begin
  if not fDMCadFilial.cdsFilial_Download.IsEmpty then
    if MessageDlg('Deseja realmente excluir esse item?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
      fDMCadFilial.cdsFilial_Download.Delete;
end;

procedure TfrmCadFilial.RzPageControl2Change(Sender: TObject);
begin
  if (RzPageControl2.ActivePage = TS_Config_Danfe_NFe) then
  begin
    if fDMCadFilial.cdsConfig_NFeAMBIENTE.AsInteger = 0 then
      Edit1.Text := 'Produção'
    else
      Edit1.Text := 'Homologação';
  end
  else
  if (RzPageControl2.ActivePage = TS_NotaServico) then
  begin
    if fDMCadFilial.cdsFilialID_CIDADE.AsInteger > 0 then
    begin
      if fDMCadFilial.cdsCidadeID.AsInteger <> fDMCadFilial.cdsFilialID_CIDADE.AsInteger then
        fDMCadFilial.cdsCidade.Locate('ID',fDMCadFilial.cdsFilialID_CIDADE.AsInteger,[loCaseInsensitive]);
      Label107.Visible       := (fDMCadFilial.cdsCidadeNOME.AsString = 'ESTANCIA VELHA');
      RxDBComboBox19.Visible := (fDMCadFilial.cdsCidadeNOME.AsString = 'ESTANCIA VELHA');
    end
    else
    begin
      Label107.Visible       := False;
      RxDBComboBox19.Visible := False;
    end;
    Label114.Visible := ((fDMCadFilial.cdsFilialSIMPLES.AsString = 'S') or (fDMCadFilial.cdsFilialSIMPLES.AsString = '2')) ;
    DBEdit72.Visible := ((fDMCadFilial.cdsFilialSIMPLES.AsString = 'S') or (fDMCadFilial.cdsFilialSIMPLES.AsString = '2')) ;
    Label115.Visible := ((fDMCadFilial.cdsFilialSIMPLES.AsString = 'S') or (fDMCadFilial.cdsFilialSIMPLES.AsString = '2')) ;
  end;
end;

procedure TfrmCadFilial.BitBtn2Click(Sender: TObject);
begin
  OpenPictureDialog1.Execute;
  fDMCadFilial.cdsConfig_NFeDANFE_DADOS_EMISSOR.AsString := OpenPictureDialog1.FileName;
end;

procedure TfrmCadFilial.btnAlterar_Config_NFeClick(Sender: TObject);
begin
  if not fDMCadFilial.cdsConfig_NFe.Active then
    exit;
  if fDMCadFilial.cdsConfig_NFe.IsEmpty then
  begin
    MessageDlg('*** NFeConfig não esta configurado com o certificado do cnpj ' + fDMCadFilial.cdsFilialCNPJ_CPF.AsString , mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadFilial.cdsConfig_NFe.Edit;
  prc_Configurar_Danfe_Aut;
  pnlConfig_Danfe_NFe.Enabled     := not(pnlConfig_Danfe_NFe.Enabled);
  btnConfirmar_Config_NFe.Enabled := not(btnConfirmar_Config_NFe.Enabled);
  btnCancelar_Config_NFe.Enabled  := not(btnCancelar_Config_NFe.Enabled);
  btnAlterar_Config_NFe.Enabled   := not(btnAlterar_Config_NFe.Enabled);
end;

procedure TfrmCadFilial.btnCancelar_Config_NFeClick(Sender: TObject);
begin
  if not(fDMCadFilial.cdsConfig_NFe.State in [dsEdit]) then
    exit;
  if MessageDlg('Deseja cancelar alteração da configuração da impressão do Danfe?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadFilial.cdsConfig_NFe.Cancel;
  pnlConfig_Danfe_NFe.Enabled     := False;
  btnConfirmar_Config_NFe.Enabled := False;
  btnAlterar_Config_NFe.Enabled   := True;
  btnCancelar_Config_NFe.Enabled  := False;
end;

procedure TfrmCadFilial.btnConfirmar_Config_NFeClick(Sender: TObject);
begin
  if MessageDlg('Deseja confirmar as alterações da configuração da impressão do Danfe?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  if not (fDMCadFilial.cdsConfig_NFe.State in [dsEdit]) then
    fDMCadFilial.cdsConfig_NFe.Edit;

  fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Clear;

  if fDMCadFilial.cdsConfig_NFeDANFE_SEM_COLUNA_DESCONTO.AsString = 'S' then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[SEM COLUNA DESCONTO]';

  if trim(fDMCadFilial.cdsConfig_NFeDANFE_RODAPE.AsString) <> '' then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[RODAPE=' + QuotedStr(fDMCadFilial.cdsConfig_NFeDANFE_RODAPE.AsString) + ']';

  if fDMCadFilial.cdsConfig_NFeDANFE_COM_FATURA.AsString = 'S' then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[COM FATURA]';

  if fDMCadFilial.cdsConfig_NFeDANFE_QTRIBDEC.AsInteger > 0 then
  begin
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[qComDEC='+ IntToStr(fDMCadFilial.cdsConfig_NFeDANFE_QTRIBDEC.AsInteger) +']';
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[qTribDEC='+ IntToStr(fDMCadFilial.cdsConfig_NFeDANFE_QTRIBDEC.AsInteger) +']';
  end;

  //25/11/2014
  if fDMCadFilial.cdsConfig_NFeDANFE_ALTQUADRORECIBO.AsInteger > 0 then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[AltQuadroRECIBO='+IntToStr(fDMCadFilial.cdsConfig_NFeDANFE_ALTQUADRORECIBO.AsInteger)+']';

  if fDMCadFilial.cdsConfig_NFeDANFE_SEM_DADOS_EMITENTE.AsString = 'S' then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[SEM DADOS EMITENTE]';

  if fDMCadFilial.cdsConfig_NFeDANFE_SEM_QUADRO_EMITENTE.AsString = 'S' then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[SEM QUADRO EMITENTE]';

  if (fDMCadFilial.cdsConfig_NFeDANFE_SALTAR_LINHA.AsString = 'S') and (trim(fDMCadFilial.cdsConfig_NFeDANFE_CARACTER_SALTAR_LINHA.AsString) <> '') then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[SALTALINHA='+fDMCadFilial.cdsConfig_NFeDANFE_CARACTER_SALTAR_LINHA.AsString + ']';

  if fDMCadFilial.cdsConfig_NFeDANFE_MOSTRAR_ST.AsString = 'S' then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[MOSTRARICMSST]';

  if fDMCadFilial.cdsConfig_NFeDANFE_OMITIR_RESER_AO_FISCO.AsString = 'S' then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[FSSEMESTAMPAFISCAL]';

  if fDMCadFilial.cdsConfig_NFeDANFE_IMP_COLUNA_TRIB_SEM_INF.AsString = 'S' then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[COLUNAVALORTRIBUTO]';

  if fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_ZEROS_ICMS.AsString = 'S' then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[NAOGERARZEROSICMS]';

  if fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_ZEROS_IPI.AsString = 'S' then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[NAOGERARZEROSIPI]';

  if fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_DADOS_ENTREGA.AsString = 'S' then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[NAOGERARENDERECOENTREGA]';

  if fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_DADOS_RETIRADA.AsString = 'S' then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[NAOGERARENDERECORETIRADA]';

  if fDMCadFilial.cdsConfig_NFeDANFE_MOSTRAR_FCI.AsString = 'S' then
    fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value := fDMCadFilial.cdsConfig_NFeDANFE_CONF_PDF.Value + '[MOSTRARFCI]';

  fDMCadFilial.cdsConfig_NFe.Post;
  fDMCadFilial.cdsConfig_NFe.ApplyUpdates(0);
  
  pnlConfig_Danfe_NFe.Enabled     := not(pnlConfig_Danfe_NFe.Enabled);
  btnConfirmar_Config_NFe.Enabled := not(btnConfirmar_Config_NFe.Enabled);
  btnCancelar_Config_NFe.Enabled  := not(btnCancelar_Config_NFe.Enabled);
  btnAlterar_Config_NFe.Enabled   := not(btnAlterar_Config_NFe.Enabled);
end;

procedure TfrmCadFilial.prc_Abrir_Config_NFe;
begin
  fDMCadFilial.cdsConfig_NFe.Close;
  if (fDMCadFilial.cdsFilial.Active) then
  begin
    fDMCadFilial.sdsConfig_NFe.ParamByName('CNPJ_TITULAR').AsString := Monta_Numero(fDMCadFilial.cdsFilialCNPJ_CPF.AsString,0);
    fDMCadFilial.cdsConfig_NFe.Open;
  end;
end;

procedure TfrmCadFilial.prc_Configurar_Danfe_Aut;
begin
  if (fDMCadFilial.cdsConfig_NFeDANFE_QUADRO_RECIBO.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_QUADRO_RECIBO.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_QUADRO_RECIBO.AsString := 'S';
  if (fDMCadFilial.cdsConfig_NFeDANFE_QUADRO_FATURA.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_QUADRO_FATURA.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_QUADRO_FATURA.AsString := 'S';
  if (fDMCadFilial.cdsConfig_NFeDANFE_QUADRO_ISSQN.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_QUADRO_ISSQN.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_QUADRO_ISSQN.AsString := 'S';
  if (fDMCadFilial.cdsConfig_NFeDANFE_SEPARADOR_ITEM.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_SEPARADOR_ITEM.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_SEPARADOR_ITEM.AsString := 'l';
  if fDMCadFilial.cdsConfig_NFeDANFE_QTRIBDEC.AsInteger <= 0 then
    fDMCadFilial.cdsConfig_NFeDANFE_QTRIBDEC.AsInteger := 4;
  if fDMCadFilial.cdsConfig_NFeDANFE_ALTQUADRORECIBO.AsInteger <= 0 then
    fDMCadFilial.cdsConfig_NFeDANFE_ALTQUADRORECIBO.AsInteger := 18;
  if (fDMCadFilial.cdsConfig_NFeDANFE_SEM_COLUNA_DESCONTO.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_SEM_COLUNA_DESCONTO.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_SEM_COLUNA_DESCONTO.AsString := 'S';
  if (fDMCadFilial.cdsConfig_NFeDANFE_COM_FATURA.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_COM_FATURA.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_COM_FATURA.AsString := 'N';
  if (fDMCadFilial.cdsConfig_NFeDANFE_SEM_DADOS_EMITENTE.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_SEM_DADOS_EMITENTE.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_SEM_DADOS_EMITENTE.AsString := 'N';
  if (fDMCadFilial.cdsConfig_NFeDANFE_SEM_QUADRO_EMITENTE.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_SEM_QUADRO_EMITENTE.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_SEM_QUADRO_EMITENTE.AsString := 'N';
  if (fDMCadFilial.cdsConfig_NFeDANFE_SALTAR_LINHA.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_SALTAR_LINHA.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_SALTAR_LINHA.AsString := 'S';
  if (fDMCadFilial.cdsConfig_NFeDANFE_CARACTER_SALTAR_LINHA.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_CARACTER_SALTAR_LINHA.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_CARACTER_SALTAR_LINHA.AsString := ';';
  if (fDMCadFilial.cdsConfig_NFeDANFE_MOSTRAR_ST.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_MOSTRAR_ST.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_MOSTRAR_ST.AsString := 'N';
  if (fDMCadFilial.cdsConfig_NFeDANFE_OMITIR_RESER_AO_FISCO.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_OMITIR_RESER_AO_FISCO.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_OMITIR_RESER_AO_FISCO.AsString := 'N';
  if (fDMCadFilial.cdsConfig_NFeDANFE_IMP_COLUNA_TRIB_SEM_INF.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_IMP_COLUNA_TRIB_SEM_INF.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_IMP_COLUNA_TRIB_SEM_INF.AsString := 'N';
  if (fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_ZEROS_ICMS.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_ZEROS_ICMS.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_ZEROS_ICMS.AsString := 'N';
  if (fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_ZEROS_IPI.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_ZEROS_IPI.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_ZEROS_IPI.AsString := 'N';
  if (fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_DADOS_ENTREGA.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_DADOS_ENTREGA.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_DADOS_ENTREGA.AsString := 'N';
  if (fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_DADOS_RETIRADA.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_DADOS_RETIRADA.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_NAO_GERAR_DADOS_RETIRADA.AsString := 'N';
  if (fDMCadFilial.cdsConfig_NFeDANFE_MOSTRAR_FCI.IsNull) or (trim(fDMCadFilial.cdsConfig_NFeDANFE_MOSTRAR_FCI.AsString) = '') then
    fDMCadFilial.cdsConfig_NFeDANFE_MOSTRAR_FCI.AsString := 'S';
end;

procedure TfrmCadFilial.DBEdit51Exit(Sender: TObject);
begin
  if ((fDMCadFilial.cdsConfig_NFeDANFE_ALTQUADRORECIBO.AsInteger > 0) and (fDMCadFilial.cdsConfig_NFeDANFE_ALTQUADRORECIBO.AsInteger < 18)) or
     ((fDMCadFilial.cdsConfig_NFeDANFE_ALTQUADRORECIBO.AsInteger > 0) and (fDMCadFilial.cdsConfig_NFeDANFE_ALTQUADRORECIBO.AsInteger > 40)) then
  begin
    MessageDlg('*** Número informado fora do permitido (18 a 40)!', mtInformation, [mbOk], 0);
    DBEdit51.SetFocus;
  end;
end;

procedure TfrmCadFilial.RxDBLookupCombo15KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo15.Text <> '' then
      viD_EnqIPI_Pos := RxDBLookupCombo15.KeyValue;
    frmSel_EnqIPI := TfrmSel_EnqIPI.Create(Self);
    frmSel_EnqIPI.ShowModal;
    if viD_EnqIPI_Pos > 0 then
      RxDBLookupCombo15.KeyValue := viD_EnqIPI_Pos
    else
      RxDBLookupCombo15.ClearValue;
  end;
end;

procedure TfrmCadFilial.BitBtn3Click(Sender: TObject);
begin
  OpenPictureDialog2.Execute;
  fDMCadFilial.cdsFilialENDLOGO_ROTULO.AsString := OpenPictureDialog2.FileName;
end;

procedure TfrmCadFilial.DBCheckBox15Click(Sender: TObject);
begin
  DBCheckBox16.Visible := (DBCheckBox15.Checked);
  label105.Visible     := ((DBCheckBox15.Checked) and not(DBCheckBox16.Checked));
  label106.Visible     := ((DBCheckBox15.Checked) and not(DBCheckBox16.Checked));
  DBMemo1.Visible      := ((DBCheckBox15.Checked) and not(DBCheckBox16.Checked));
end;

procedure TfrmCadFilial.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #10) then
    Key := ' ';
end;

procedure TfrmCadFilial.DBCheckBox16Click(Sender: TObject);
begin
  label105.Visible := not(DBCheckBox16.Checked);
  label106.Visible := not(DBCheckBox16.Checked);
  DBMemo1.Visible  := not(DBCheckBox16.Checked);
end;

procedure TfrmCadFilial.RxDBComboBox8Exit(Sender: TObject);
begin
  fdmCadFilial.cdsFilialCNPJ_CPF.EditMask := '00.000.000/0000-00';
  if fdmCadFilial.cdsFilialPessoa.AsString = 'F' then
    fdmCadFilial.cdsFilialCNPJ_CPF.EditMask := '000.000.000-00';
end;

procedure TfrmCadFilial.DBEdit72Exit(Sender: TObject);
begin
  if (fDMCadFilial.cdsFilialSIMPLES.AsString = 'S') or (fDMCadFilial.cdsFilialSIMPLES.AsString = '2') then
  begin
    if StrToFloat(FormatFloat('0.00000',fDMCadFilial.cdsFilialPERC_ISS_SIMPLES.AsFloat)) > 0 then
      MessageDlg('*** O Sistema vai assumir este % para o cálculo do ISSQN na hora da digitação da NFSe', mtInformation, [mbOk], 0)
    else
      MessageDlg('*** O Sistema vai assumir o % ISSQN que esta no campo "% ISS"', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCadFilial.DBEdit85KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 83) then //S
  begin
    DBEdit85.PasswordChar := #0;
  end;

end;

procedure TfrmCadFilial.btnCopiar_FilialClick(Sender: TObject);
begin
  try
   fDMCadFilial.qCopiar_Filial_Rel.Close;
   fDMCadFilial.qCopiar_Filial_Rel.ParamByName('FILIAL').AsInteger := fDMCadFilial.cdsFilialID.AsInteger;
   fDMCadFilial.qCopiar_Filial_Rel.ExecSQL;
  Except
    ShowMessage('Erro ao copiar relatórios');
    exit;
  end;
    ShowMessage('Geração efetuado com sucesso!');

end;

end.
