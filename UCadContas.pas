unit UCadContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadContas, DBGrids,
  ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, RXDBCtrl, RxDBComb, UCadContas_Ret, NxCollection,
  Menus, ACBrBoleto, ACBrBase, ComCtrls, StrUtils;

type
  TfrmCadContas = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    RzPageControl2: TRzPageControl;
    TS_Dados: TRzTabSheet;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBDateEdit1: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    TS_Cobranca: TRzTabSheet;
    Label7: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    Label15: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label16: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label17: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label18: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label19: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label20: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    RxDBComboBox11: TRxDBComboBox;
    Label25: TLabel;
    DBEdit8: TDBEdit;
    Label26: TLabel;
    DBEdit11: TDBEdit;
    Label27: TLabel;
    DBEdit12: TDBEdit;
    Label28: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label29: TLabel;
    DBEdit13: TDBEdit;
    Label30: TLabel;
    DBEdit14: TDBEdit;
    Label31: TLabel;
    DBEdit15: TDBEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label38: TLabel;
    DBEdit17: TDBEdit;
    Label43: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label24: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    TabSheet8: TRzTabSheet;
    TS_Bancos: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Label33: TLabel;
    Label35: TLabel;
    DirectoryEdit2: TDirectoryEdit;
    DBEdit18: TDBEdit;
    TabSheet7: TRzTabSheet;
    Label41: TLabel;
    Label42: TLabel;
    Label45: TLabel;
    Label44: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    RxDBComboBox3: TRxDBComboBox;
    DBEdit24: TDBEdit;
    DirectoryEdit1: TDirectoryEdit;
    TabSheet4: TRzTabSheet;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    BitBtn1: TBitBtn;
    ts_BancoBrasil: TRzTabSheet;
    Label21: TLabel;
    Label22: TLabel;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    RxDBComboBox9: TRxDBComboBox;
    DBEdit5: TDBEdit;
    ts_CaixaFederal: TRzTabSheet;
    Label32: TLabel;
    Label23: TLabel;
    DBEdit16: TDBEdit;
    RxDBComboBox5: TRxDBComboBox;
    ts_Banrisul: TRzTabSheet;
    Label39: TLabel;
    Label40: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    TabSheet5: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    Panel4: TPanel;
    Label34: TLabel;
    Label48: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label49: TLabel;
    DBEdit23: TDBEdit;
    Label50: TLabel;
    DBEdit27: TDBEdit;
    ts_Sicredi: TRzTabSheet;
    Label51: TLabel;
    RxDBComboBox7: TRxDBComboBox;
    PopupMenu1: TPopupMenu;
    Normal1: TMenuItem;
    btnImprimir: TNxButton;
    ACBrBoleto1: TACBrBoleto;
    ts_Santander: TRzTabSheet;
    Label52: TLabel;
    RxDBComboBox8: TRxDBComboBox;
    Label53: TLabel;
    RxDBComboBox10: TRxDBComboBox;
    Label54: TLabel;
    RxDBComboBox12: TRxDBComboBox;
    Label55: TLabel;
    RxDBComboBox13: TRxDBComboBox;
    DBCheckBox1: TDBCheckBox;
    Label56: TLabel;
    RxDBComboBox14: TRxDBComboBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Label57: TLabel;
    DBEdit28: TDBEdit;
    Label58: TLabel;
    RxDBComboBox15: TRxDBComboBox;
    DBCheckBox4: TDBCheckBox;
    TS_Sacado: TRzTabSheet;
    pnlSacado: TPanel;
    SMDBGrid3: TSMDBGrid;
    Label59: TLabel;
    DBEdit29: TDBEdit;
    Label60: TLabel;
    Label61: TLabel;
    DBEdit31: TDBEdit;
    Label62: TLabel;
    RxDBComboBox16: TRxDBComboBox;
    Label63: TLabel;
    RxDBComboBox17: TRxDBComboBox;
    Label64: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label65: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Label66: TLabel;
    RxDBLookupCombo11: TRxDBLookupCombo;
    Label67: TLabel;
    RxDBLookupCombo12: TRxDBLookupCombo;
    Label68: TLabel;
    RxDBLookupCombo13: TRxDBLookupCombo;
    Label69: TLabel;
    DBEdit30: TDBEdit;
    Label70: TLabel;
    DBEdit32: TDBEdit;
    Label71: TLabel;
    DBDateEdit4: TDBDateEdit;
    Label72: TLabel;
    DBEdit33: TDBEdit;
    Label73: TLabel;
    DBEdit34: TDBEdit;
    Label74: TLabel;
    DBEdit35: TDBEdit;
    Label75: TLabel;
    RxDBComboBox18: TRxDBComboBox;
    Label76: TLabel;
    RxDBComboBox19: TRxDBComboBox;
    Label46: TLabel;
    DirectoryEdit3: TDirectoryEdit;
    stat1: TStatusBar;
    Label47: TLabel;
    DBEdit25: TDBEdit;
    Label77: TLabel;
    DBEdit26: TDBEdit;
    Label78: TLabel;
    DBEdit36: TDBEdit;
    Label79: TLabel;
    RxDBComboBox20: TRxDBComboBox;
    Label80: TLabel;
    RxDBComboBox21: TRxDBComboBox;
    Label81: TLabel;
    RxDBLookupCombo14: TRxDBLookupCombo;
    Label82: TLabel;
    RxDBLookupCombo15: TRxDBLookupCombo;
    Label83: TLabel;
    RxDBLookupCombo16: TRxDBLookupCombo;
    Label84: TLabel;
    RxDBLookupCombo17: TRxDBLookupCombo;
    Label85: TLabel;
    RxDBLookupCombo18: TRxDBLookupCombo;
    Label86: TLabel;
    DBEdit37: TDBEdit;
    Label87: TLabel;
    DBEdit38: TDBEdit;
    Label88: TLabel;
    DBEdit39: TDBEdit;
    Label89: TLabel;
    DBEdit40: TDBEdit;
    Label90: TLabel;
    RxDBComboBox22: TRxDBComboBox;
    Label91: TLabel;
    RxDBComboBox23: TRxDBComboBox;
    Label92: TLabel;
    DBDateEdit5: TDBDateEdit;
    Label93: TLabel;
    DBEdit41: TDBEdit;
    Label94: TLabel;
    DBEdit42: TDBEdit;
    Label95: TLabel;
    DBEdit43: TDBEdit;
    Label96: TLabel;
    DBEdit44: TDBEdit;
    Label97: TLabel;
    RxDBComboBox24: TRxDBComboBox;
    Label98: TLabel;
    RxDBComboBox25: TRxDBComboBox;
    Label99: TLabel;
    RxDBLookupCombo19: TRxDBLookupCombo;
    Label100: TLabel;
    RxDBLookupCombo20: TRxDBLookupCombo;
    Label101: TLabel;
    RxDBLookupCombo21: TRxDBLookupCombo;
    Label102: TLabel;
    RxDBLookupCombo22: TRxDBLookupCombo;
    Label103: TLabel;
    RxDBLookupCombo23: TRxDBLookupCombo;
    Label104: TLabel;
    DBEdit45: TDBEdit;
    Label105: TLabel;
    DBDateEdit6: TDBDateEdit;
    Label106: TLabel;
    DBEdit46: TDBEdit;
    Label107: TLabel;
    DBEdit47: TDBEdit;
    Label108: TLabel;
    DBEdit48: TDBEdit;
    Label109: TLabel;
    RxDBComboBox26: TRxDBComboBox;
    Label110: TLabel;
    RxDBComboBox27: TRxDBComboBox;
    Label111: TLabel;
    DBEdit49: TDBEdit;
    Label112: TLabel;
    DBEdit50: TDBEdit;
    Label113: TLabel;
    DBEdit51: TDBEdit;
    Label114: TLabel;
    DBEdit52: TDBEdit;
    Label115: TLabel;
    RxDBComboBox28: TRxDBComboBox;
    Label116: TLabel;
    RxDBComboBox29: TRxDBComboBox;
    Label117: TLabel;
    RxDBLookupCombo24: TRxDBLookupCombo;
    Label118: TLabel;
    RxDBLookupCombo25: TRxDBLookupCombo;
    Label119: TLabel;
    RxDBLookupCombo26: TRxDBLookupCombo;
    Label120: TLabel;
    RxDBLookupCombo27: TRxDBLookupCombo;
    Label121: TLabel;
    RxDBLookupCombo28: TRxDBLookupCombo;
    Label122: TLabel;
    DBEdit53: TDBEdit;
    Label123: TLabel;
    DBEdit54: TDBEdit;
    Label124: TLabel;
    DBEdit55: TDBEdit;
    Label125: TLabel;
    DBEdit56: TDBEdit;
    Label126: TLabel;
    RxDBComboBox30: TRxDBComboBox;
    Label127: TLabel;
    RxDBComboBox31: TRxDBComboBox;
    Label128: TLabel;
    DBEdit57: TDBEdit;
    Label129: TLabel;
    DBDateEdit7: TDBDateEdit;
    Label130: TLabel;
    DBEdit58: TDBEdit;
    Label131: TLabel;
    DBEdit59: TDBEdit;
    Label132: TLabel;
    DBEdit60: TDBEdit;
    Label133: TLabel;
    RxDBComboBox32: TRxDBComboBox;
    Label134: TLabel;
    RxDBComboBox33: TRxDBComboBox;
    Label135: TLabel;
    RxDBLookupCombo29: TRxDBLookupCombo;
    Label136: TLabel;
    RxDBLookupCombo30: TRxDBLookupCombo;
    Label137: TLabel;
    RxDBLookupCombo31: TRxDBLookupCombo;
    Label138: TLabel;
    RxDBLookupCombo32: TRxDBLookupCombo;
    Label139: TLabel;
    RxDBLookupCombo33: TRxDBLookupCombo;
    Label140: TLabel;
    DBEdit61: TDBEdit;
    Label141: TLabel;
    DBEdit62: TDBEdit;
    Label142: TLabel;
    DBEdit63: TDBEdit;
    Label143: TLabel;
    DBEdit64: TDBEdit;
    Label144: TLabel;
    RxDBComboBox34: TRxDBComboBox;
    Label145: TLabel;
    RxDBComboBox35: TRxDBComboBox;
    Label146: TLabel;
    DBDateEdit8: TDBDateEdit;
    Label147: TLabel;
    DBEdit65: TDBEdit;
    ts_Itau: TRzTabSheet;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    RxDBComboBox37: TRxDBComboBox;
    RxDBComboBox38: TRxDBComboBox;
    RxDBLookupCombo34: TRxDBLookupCombo;
    RxDBLookupCombo35: TRxDBLookupCombo;
    RxDBLookupCombo36: TRxDBLookupCombo;
    RxDBLookupCombo37: TRxDBLookupCombo;
    RxDBLookupCombo38: TRxDBLookupCombo;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    RxDBComboBox39: TRxDBComboBox;
    RxDBComboBox40: TRxDBComboBox;
    DBDateEdit9: TDBDateEdit;
    DBEdit75: TDBEdit;
    UCControls1: TUCControls;
    Label148: TLabel;
    DBEdit66: TDBEdit;
    Label149: TLabel;
    DBEdit67: TDBEdit;
    ts_Sicoob: TRzTabSheet;
    Label150: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    Label185: TLabel;
    Label186: TLabel;
    Label187: TLabel;
    Label188: TLabel;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    RxDBComboBox36: TRxDBComboBox;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    RxDBComboBox41: TRxDBComboBox;
    RxDBComboBox42: TRxDBComboBox;
    RxDBLookupCombo39: TRxDBLookupCombo;
    RxDBLookupCombo40: TRxDBLookupCombo;
    RxDBLookupCombo41: TRxDBLookupCombo;
    RxDBLookupCombo42: TRxDBLookupCombo;
    RxDBLookupCombo43: TRxDBLookupCombo;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBDateEdit10: TDBDateEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    RxDBComboBox43: TRxDBComboBox;
    RxDBComboBox44: TRxDBComboBox;
    Label189: TLabel;
    DBEdit85: TDBEdit;
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
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadContas: TDMCadContas;
    ffrmCadContas_Ret: TfrmCadContas_Ret;
    xNossoNum: Int64;
    vNossoNumero: string;
    vNossoNumero_Montado: string;
    vCarteira: string;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_ConfiguraACBR;
    procedure prc_Desabilita_Aba;
    procedure prc_Habilita_Aba;
    function geraRegistroAcbr: string;
  public
    { Public declarations }
  end;

var
  frmCadContas: TfrmCadContas;

implementation

uses
  DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, ACBrUtil, URelTesteNossoNumero;

{$R *.dfm}

procedure TfrmCadContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadContas.btnExcluirClick(Sender: TObject);
begin
  if fDMCadContas.cdsContas.IsEmpty then
    exit;

  if fDMCadContas.cdsContasID.AsInteger = 1 then
  begin
    MessageDlg('*** Este registro não pode ser apagado!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadContas.prc_Excluir_Registro;
begin
  fDMCadContas.prc_Excluir;
end;

procedure TfrmCadContas.prc_Gravar_Registro;
begin
  fDMCadContas.cdsContasBANCO_LOGO.AsString := DirectoryEdit1.Text;
  fDMCadContas.cdsContasEND_ARQUIVO_REM.AsString := DirectoryEdit2.Text;
  fDMCadContas.cdsContasEND_ARQUIVO_RET.AsString := DirectoryEdit3.Text;

  fDMCadContas.prc_Gravar;
  if fDMCadContas.cdsContas.State in [dsEdit, dsInsert] then
  begin
    MessageDlg(fDMCadContas.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;

  TS_Consulta.TabEnabled := not (TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled := not (pnlCadastro.Enabled);
  btnConfirmar.Enabled := not (btnConfirmar.Enabled);
  btnAlterar.Enabled := not (btnAlterar.Enabled);
  TS_Cobranca.Enabled := not (TS_Cobranca.Enabled);
  TS_Bancos.Enabled := not (TS_Bancos.Enabled);
  pnlSacado.Enabled := not (pnlSacado.Enabled);
end;

procedure TfrmCadContas.prc_Inserir_Registro;
begin
  fDMCadContas.prc_Inserir;

  if fDMCadContas.cdsContas.State in [dsBrowse] then
    exit;

  if fDMCadContas.cdsFilial.RecordCount > 1 then
    fDMCadContas.cdsContasFILIAL.AsInteger := fDMCadContas.cdsFilialID.AsInteger;

  RxDBComboBox1.Enabled := True;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled := False;
  btnConfirmar.Enabled := True;
  pnlCadastro.Enabled := True;
  TS_Cobranca.Enabled := True;
  TS_Bancos.Enabled := True;
  pnlSacado.Enabled := True;

  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadContas.FormShow(Sender: TObject);
begin
  fDMCadContas := TDMCadContas.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadContas);
  DirectoryEdit1.Clear;
  DirectoryEdit2.Clear;
  //if trim(fDMCadContas.cdsContasEND_ARQUIVO_REM.AsString) <> '' then
  DirectoryEdit1.Text := fDMCadContas.cdsContasEND_ARQUIVO_REM.AsString;
  DirectoryEdit2.Text := fDMCadContas.cdsContasBANCO_LOGO.AsString;
  DirectoryEdit3.Text := fDMCadContas.cdsContasEND_ARQUIVO_RET.AsString;
  uUtilPadrao.fnc_Busca_Nome_Filial;

  DBCheckBox2.Visible := (fDMCadContas.qParametros_FinCONTROLAR_BANCO_REM_DEP.AsString = 'S');
  DBCheckBox3.Visible := (fDMCadContas.qParametros_FinCONTROLAR_BANCO_REM_DEP.AsString = 'S');

  Label57.Visible := (fDMCadContas.qParametros_GeralMOSTRAR_COD_CONTABIL.AsString = 'S');
  DBEdit28.Visible := (fDMCadContas.qParametros_GeralMOSTRAR_COD_CONTABIL.AsString = 'S');
  stat1.Panels[1].Text := vFilial_Nome;
  stat1.Panels[0].Text := vUsuario;
  stat1.Panels[2].Text := 'Duplo clique para consultar';
  prc_Desabilita_Aba;
end;

procedure TfrmCadContas.prc_Consultar;
begin
  fDMCadContas.cdsContas.Close;
  fDMCadContas.sdsContas.CommandText := fDMCadContas.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadContas.sdsContas.CommandText := fDMCadContas.sdsContas.CommandText + ' AND NOME LIKE ' + QuotedStr('%' + Edit4.Text + '%');
  fDMCadContas.cdsContas.Open;
end;

procedure TfrmCadContas.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadContas.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadContas.cdsContas.State in [dsBrowse]) or not (fDMCadContas.cdsContas.Active) then
  begin
    stat1.Panels[2].Text := 'Duplo clique para consulta';
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDMCadContas.cdsContas.CancelUpdates;
  TS_Consulta.TabEnabled := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled := not (pnlCadastro.Enabled);
  btnConfirmar.Enabled := not (btnConfirmar.Enabled);
  btnAlterar.Enabled := not (btnAlterar.Enabled);
  TS_Cobranca.Enabled := not (TS_Cobranca.Enabled);
  TS_Bancos.Enabled := not (TS_Bancos.Enabled);
  pnlSacado.Enabled := not (pnlSacado.Enabled);
  prc_Desabilita_Aba;

end;

procedure TfrmCadContas.SMDBGrid1DblClick(Sender: TObject);
begin
  stat1.Panels[2].Text := '';
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadContas.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadContas.cdsContas.IsEmpty) or not (fDMCadContas.cdsContas.Active) or (fDMCadContas.cdsContasID.AsInteger < 1) then
    exit;

  fDMCadContas.cdsContas.Edit;
  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled := False;
  btnConfirmar.Enabled := True;
  pnlCadastro.Enabled := True;
  TS_Cobranca.Enabled := True;
  TS_Bancos.Enabled := True;
  pnlSacado.Enabled := True;
  stat1.Panels[2].Text := '';
  //c_Habilita_Aba;

  if (fDMCadContas.cdsContasID.AsInteger = 1) and ((trim(fDMCadContas.cdsContasTIPO_CONTA.AsString) <> '') and not (fDMCadContas.cdsContasTIPO_CONTA.IsNull)) then
    RxDBComboBox1.Enabled := False
  else
    RxDBComboBox1.Enabled := True;
end;

procedure TfrmCadContas.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
  stat1.Panels[2].Text := 'Duplo clique para consulta';
  prc_Desabilita_Aba;
end;

procedure TfrmCadContas.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadContas);
end;

procedure TfrmCadContas.btnInserirClick(Sender: TObject);
begin
  stat1.Panels[2].Text := '';
  prc_Inserir_Registro;
end;

procedure TfrmCadContas.Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadContas.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if (RxDBLookupCombo2.Text <> '') and (fDMCadContas.cdsContas.State in [dsInsert]) then
    fDMCadContas.cdsContasNOME.AsString := fDMCadContas.cdsBancoNOME.AsString;
  if (RxDBLookupCombo2.Text <> '') and (fDMCadContas.cdsContas.State in [dsEdit, dsInsert]) then
    fDMCadContas.cdsContasDESCRICAO_NOTA.AsString := fDMCadContas.cdsBancoNOME.AsString;
  if RxDBLookupCombo2.Text <> '' then
  begin
    fDMCadContas.prc_Abrir_Carteira(RxDBLookupCombo2.KeyValue);
    fDMCadContas.prc_Abrir_Especie(RxDBLookupCombo2.KeyValue);
    fDMCadContas.prc_Abrir_Instrucao(RxDBLookupCombo2.KeyValue);
    fDMCadContas.prc_Abrir_Ocorrencia(RxDBLookupCombo2.KeyValue);
    prc_Habilita_Aba;
  end;
end;

procedure TfrmCadContas.RzPageControl1Change(Sender: TObject);
begin
  if (RzPageControl1.ActivePage = TS_Cadastro) and not (fDMCadContas.cdsContas.IsEmpty) then
  begin
    fDMCadContas.prc_Abrir_Carteira(fDMCadContas.cdsContasID_BANCO.AsInteger);
    fDMCadContas.prc_Abrir_Especie(fDMCadContas.cdsContasID_BANCO.AsInteger);
    fDMCadContas.prc_Abrir_Instrucao(fDMCadContas.cdsContasID_BANCO.AsInteger);
    fDMCadContas.prc_Abrir_Ocorrencia(fDMCadContas.cdsContasID_BANCO.AsInteger);
    prc_Habilita_Aba;
  end;

  DirectoryEdit1.Text := fDMCadContas.cdsContasBANCO_LOGO.AsString;
  DirectoryEdit2.Text := fDMCadContas.cdsContasEND_ARQUIVO_REM.AsString;
  DirectoryEdit3.Text := fDMCadContas.cdsContasEND_ARQUIVO_RET.AsString;
end;

procedure TfrmCadContas.BitBtn1Click(Sender: TObject);
begin
  ffrmCadContas_Ret := TfrmCadContas_Ret.Create(self);
  ffrmCadContas_Ret.fDMCadContas := fDMCadContas;
  ffrmCadContas_Ret.ShowModal;

  FreeAndNil(ffrmCadContas_Ret);
end;

procedure TfrmCadContas.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not (pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadContas.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

function TfrmCadContas.geraRegistroAcbr: string;
var
  Titulo: TACBrTitulo;
  vTamAux: Integer;
  vNossoNumAux: string;
  vCodCarteira: string;
begin
  Titulo := ACBrBoleto1.CriarTituloNaLista;
  with Titulo do
  begin
    //TipoImpressao     := tipNormal;//se for carnê, tipCarne
    //Vencimento        := fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime;
    //DataDocumento     := fDmCob_Eletronica.cdsDuplicataDTEMISSAO.AsDateTime;
    //NumeroDocumento   := fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + '/' + fDmCob_Eletronica.cdsDuplicataPARCELA.AsString;
    //if not fDmCob_Eletronica.cdsEspecie.Active then
    //  fDmCob_Eletronica.cdsEspecie.Open;
    //fDmCob_Eletronica.cdsEspecie.IndexFieldNames := 'ID;ID_BANCO';
    //fDmCob_Eletronica.cdsEspecie.FindKey([fDmCob_Eletronica.cdsContasID_ESPECIE.AsInteger,fDmCob_Eletronica.cdsContasID_BANCO.AsInteger]);
    //if trim(fDmCob_Eletronica.cdsEspecieCOD_REDUZIDO.AsString) = '' then
    //  EspecieDoc := fDmCob_Eletronica.cdsEspecieCODIGO.AsString
    //else
    //  EspecieDoc := fDmCob_Eletronica.cdsEspecieCOD_REDUZIDO.AsString;
    {if (trim(fDmCob_Eletronica.cdsDuplicataACEITE.AsString) = '') or (fDmCob_Eletronica.cdsDuplicataACEITE.IsNull) then
    begin
      fDmCob_Eletronica.vAceite := fDmCob_Eletronica.cdsContasACEITE.AsString;
      if fDmCob_Eletronica.cdsContasACEITE.AsString = 'A' then
        Aceite := atSim
      else
        Aceite := atNao;
    end
    else
    if fDmCob_Eletronica.cdsDuplicataACEITE.AsString = 'A' then
      Aceite := atSim
    else
      Aceite := atNao;}
    //DataProcessamento := Now;
    //if not(fDmCob_Eletronica.cdsDuplicataCOD_CARTEIRA.IsNull) and (trim(fDmCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString) <> '')  then
    //  Carteira := fDmCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString
    //else
    //  Carteira := fDmCob_Eletronica.cdsContasCOD_CARTEIRA.AsString;
    Carteira := vCarteira;
    //fDmCob_Eletronica.prc_Verificar_Carteira;
    //if ((fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.IsNull) or
    //   (fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString = '')) and (fDmCob_Eletronica.vGera_NossoNumero = 'S')  then
    //begin
    xNossoNum := xNossoNum + 1;
    vNossoNumAux := IntToStr(xNossoNum);
    vTamAux := ACBrBoleto.Banco.CalcularTamMaximoNossoNumero(Carteira, vNossoNumAux);
    NossoNumero := IntToStrZero(xNossoNum, vTamAux);

    if fDMCadContas.cdsBanco.Locate('ID', fDMCadContas.cdsContasID_BANCO.AsInteger, [loCaseInsensitive]) then
    begin
      if fDMCadContas.cdsBancoACBR_USAR_MONTAR_NOSSONUMERO.AsString = 'S' then
      begin
        vNossoNumero_Montado := ACBrBoleto.Banco.MontarCampoNossoNumero(Titulo);
        //ShowMessage(vNossoNumero_Montado);
      end
      else
        vNossoNumero_Montado := NossoNumero;
    end
    else
      vNossoNumero_Montado := NossoNumero;
    //SeuNumero         := fDmCob_Eletronica.cdsDuplicataFILIAL.AsString + '.' + fDmCob_Eletronica.cdsDuplicataID.AsString;
    //ValorDocumento    := fDmCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat;
    //Sacado.NomeSacado := fDmCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString;
    //Sacado.CNPJCPF    := fDmCob_Eletronica.cdsDuplicataCNPJ_CPF.AsString;
    //Sacado.Logradouro := fDmCob_Eletronica.cdsDuplicataENDERECO.AsString;
    //Sacado.Numero     := fDmCob_Eletronica.cdsDuplicataNUM_END.AsString;
    //Sacado.Bairro     := fDmCob_Eletronica.cdsDuplicataBAIRRO.AsString;
    //Sacado.Cidade     := fDmCob_Eletronica.cdsDuplicataCIDADE.AsString;
    //Sacado.UF         := fDmCob_Eletronica.cdsDuplicataUF.AsString;
    //Sacado.CEP        := fDmCob_Eletronica.cdsDuplicataCEP.AsString;
    //case AnsiIndexStr(fDmCob_Eletronica.cdsDuplicataPESSOA.AsString,['F','J']) of
      //0: Sacado.Pessoa := pFisica;
      //1: Sacado.Pessoa := pJuridica;
    //end;
    //ValorAbatimento   := 0;
    //LocalPagamento    := fDmCob_Eletronica.cdsContasLOCAL_PAGAMENTO.AsString;
    //ValorMoraJuros    := fDmCob_Eletronica.cdsContasPERC_JUROS.AsCurrency / 100 * fDmCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat;
    //ValorDesconto     := 0;
    //ValorAbatimento   := 0;
    //DataMoraJuros     := 0;
    //DataDesconto      := 0;
    //DataAbatimento    := 0;
    //DataProtesto      := fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime + fDmCob_Eletronica.cdsContasDIAS_PROTESTO.AsInteger;
    //PercentualMulta   := fDmCob_Eletronica.cdsContasPERC_MULTA.AsCurrency;
    //Mensagem.Text     := fDmCob_Eletronica.cdsContasMENSAGEM_FIXA.AsString;

    //fDmCob_Eletronica.cdsCob_Tipo_Cadastro.Close;
    //fDmCob_Eletronica.sdsCob_Tipo_Cadastro.CommandText := fDmCob_Eletronica.ctCobTpCadastro +
      //                                                    ' WHERE ID_BANCO = ' + IntToStr(vIdBanco);
    //fDmCob_Eletronica.cdsCob_Tipo_Cadastro.Open;

    //fDmCob_Eletronica.cdsCob_Tipo_Cadastro.IndexFieldNames := 'ID';
    //if fDmCob_Eletronica.cdsContasID_INSTRUCAO1.AsInteger > 0 then
    //begin
     // fDmCob_Eletronica.cdsCob_Tipo_Cadastro.FindKey([fDmCob_Eletronica.cdsContasID_INSTRUCAO1.AsInteger]);
      //Instrucao1 := padL(trim(fDmCob_Eletronica.cdsCob_Tipo_CadastroCODIGO.AsString),2,'0');
    //end;
    //if fDmCob_Eletronica.cdsContasID_INSTRUCAO2.AsInteger > 0 then
    //begin
      //fDmCob_Eletronica.cdsCob_Tipo_Cadastro.FindKey([fDmCob_Eletronica.cdsContasID_INSTRUCAO2.AsInteger]);
      //Instrucao2 := padL(trim(fDmCob_Eletronica.cdsCob_Tipo_CadastroCODIGO.AsString),2,'0');
    //end;
    //if (fDmCob_Eletronica.cdsContasTIPO_IMPRESSAO.AsString = 'C') or (fDmCob_Eletronica.cdsContasCOD_BANCO.AsString <> '748') then
    //  Parcela := fDmCob_Eletronica.cdsDuplicataPARCELA.AsInteger
    //else
     // Parcela := 0;

    //OcorrenciaOriginal.Tipo := toRemessaRegistrar;
  end;
  //result := Titulo.NossoNumero;
  result := vNossoNumero_Montado;
end;

procedure TfrmCadContas.prc_ConfiguraACBR;
var
  vExtensao: string;
begin
  case fDMCadContas.cdsContasACBR_TIPOCOBRANCA.AsInteger of
    1: ACBrBoleto1.Banco.TipoCobranca := cobBancoDoBrasil;
    2: ACBrBoleto1.Banco.TipoCobranca := cobBancoDoNordeste;
    3: ACBrBoleto1.Banco.TipoCobranca := cobBancoMercantil;
    4: ACBrBoleto1.Banco.TipoCobranca := cobBancoob;
    5: ACBrBoleto1.Banco.TipoCobranca := cobBanestes;
    6: ACBrBoleto1.Banco.TipoCobranca := cobBanrisul;
    7: ACBrBoleto1.Banco.TipoCobranca := cobBicBanco;
    8: ACBrBoleto1.Banco.TipoCobranca := cobBradesco;
    9: ACBrBoleto1.Banco.TipoCobranca := cobBradescoSICOOB;
    10: ACBrBoleto1.Banco.TipoCobranca := cobBRB;
    11: ACBrBoleto1.Banco.TipoCobranca := cobCaixaEconomica;
    12: ACBrBoleto1.Banco.TipoCobranca := cobCaixaSicob;
    13: ACBrBoleto1.Banco.TipoCobranca := cobHSBC;
    14: ACBrBoleto1.Banco.TipoCobranca := cobItau;
    15: ACBrBoleto1.Banco.TipoCobranca := cobNenhum;
    16: ACBrBoleto1.Banco.TipoCobranca := cobSantander;
    17: ACBrBoleto1.Banco.TipoCobranca := cobSicred;
  end;

  //ACBrBoleto1.ACBrBoletoFC.DirLogo  := fDmCob_Eletronica.cdsContasBANCO_LOGO.AsString;
  //ACBrBoleto1.ACBrBoletoFC.ArquivoLogo := fDmCob_Eletronica.cdsContasBANCO_LOGO.AsString;
  //ACBrBoleto1.ACBrBoletoFC.Filtro   := fiNenhum;
  //ACBrBoleto1.Cedente.Nome          := fDmCob_Eletronica.cdsFilialNOME.AsString;
  ACBrBoleto1.Cedente.CodigoCedente := fDMCadContas.cdsContasCOD_CEDENTE.AsString;
  ACBrBoleto1.Cedente.Agencia       := fDMCadContas.cdsContasAGENCIA.AsString;
  ACBrBoleto1.Cedente.AgenciaDigito := fDMCadContas.cdsContasDIG_AGENCIA.AsString;
  ACBrBoleto1.Cedente.Conta         := fDMCadContas.cdsContasNUMCONTA.AsString;
  ACBrBoleto1.Cedente.ContaDigito   := fDMCadContas.cdsContasDIG_CONTA.AsString;
  ACBrBoleto1.Cedente.Convenio      := fDMCadContas.cdsContasCOD_TRANSMISSAO.AsString;
  //ACBrBoleto1.Cedente.UF            := fDmCob_Eletronica.cdsFilialUF.AsString;
  //ACBrBoleto1.DirArqRemessa         := fDmCob_Eletronica.cdsContasEND_ARQUIVO_REM.AsString;
  //ACBrBoleto1.NomeArqRemessa        := 'COB_' + FormatDateTime('YYYYMMDD_HHMMSS',Now)+'.TXT';

  {if fDMCadContas.cdsContasACBR_TIPOCOBRANCA.AsInteger = 17 then //se for cobrança SICREDI
    ACBrBoleto1.NomeArqRemessa := fDmCob_Eletronica.Monta_NomeSicredi(fDmCob_Eletronica.cdsContasEND_ARQUIVO_REM.AsString,
                                  fDmCob_Eletronica.cdsContasCOD_CEDENTE.AsString)
  else
  begin
    ACBrBoleto1.NomeArqRemessa := fDmCob_Eletronica.cdsContasINICIAL_NOME_ARQ_REMESSA.AsString +
                                  FormatFloat('00',fDmCob_Eletronica.cdsContasFILIAL.AsInteger) +
                                  FormatFloat('00',MonthOf(Date)) + FormatFloat('00',DayOf(Date));
    if trim(fDmCob_Eletronica.cdsContasEXTENSAO_ARQ_REM.AsString) = '' then
      vExtensao := 'REM'
    else
      vExtensao := fDmCob_Eletronica.cdsContasEXTENSAO_ARQ_REM.AsString;
    if fDmCob_Eletronica.vSeq_Remessa_Dia = 1 then
      ACBrBoleto1.NomeArqRemessa := ACBrBoleto1.NomeArqRemessa + '.' + vExtensao
    else
    if fDmCob_Eletronica.vSeq_Remessa_Dia < 100 then
      ACBrBoleto1.NomeArqRemessa := ACBrBoleto1.NomeArqRemessa + '.' + Copy(vExtensao,1,1) +
                                    FormatFloat('00',fDmCob_Eletronica.vSeq_Remessa_Dia)
    else
      ACBrBoleto1.NomeArqRemessa := ACBrBoleto1.NomeArqRemessa + '.' +
                                    FormatFloat('000',fDmCob_Eletronica.vSeq_Remessa_Dia);
  end;}
end;

procedure TfrmCadContas.Normal1Click(Sender: TObject);
var
  vAux: string;
  vQtd: Integer;
  i: Integer;
begin
  ACBrBoleto1.ListadeBoletos.Clear;
  prc_ConfiguraACBR;

  fDMCadContas.mArqNumero.EmptyDataSet;
  vAux := InputBox('Gerar Nosso Número', 'Informe a qtde. para gerar: ', '');
  vAux := Monta_Texto(vAux, 0);
  if trim(vAux) = '' then
    exit;
  vQtd := StrToInt(vAux);
  vCarteira := InputBox('Carteira', 'Informe a Carteira: ', '');
  for i := 1 to vQtd do
  begin
    fDMCadContas.mArqNumero.Insert;
    fDMCadContas.mArqNumeroNossoNumero.AsString := geraRegistroAcbr;
    fDMCadContas.mArqNumero.Post;
  end;

  fRelTesteNossoNumero := TfRelTesteNossoNumero.Create(Self);
  fRelTesteNossoNumero.fDMCadContas := fDMCadContas;
  fRelTesteNossoNumero.RLReport1.PreviewModal;
  fRelTesteNossoNumero.RLReport1.Free;
  FreeAndNil(fRelTesteNossoNumero);
end;

procedure TfrmCadContas.prc_Desabilita_Aba;
begin
  ts_BancoBrasil.TabVisible  := False; //Banco do Brasil
  ts_CaixaFederal.TabVisible := False; //Caixa Federal
  ts_Banrisul.TabVisible     := False; //Banrisul
  ts_Sicredi.TabVisible      := False;  //Sicredi
  ts_Santander.TabVisible    := False;  //Santander
  ts_Itau.TabVisible         := False; //Itau
  ts_Sicoob.TabVisible       := False;
//  TS_Bancos.Pages[7].TabVisible := False;  //Santander
end;

procedure TfrmCadContas.prc_Habilita_Aba;
begin
  fDMCadContas.cdsBanco.FindKey([fDMCadContas.cdsContasID_BANCO]);
  prc_Desabilita_Aba;
  case AnsiIndexStr(UpperCase(fDMCadContas.cdsBancoCODIGO.AsString), ['001', '104','041','748','033','341','756']) of
    0: ts_BancoBrasil.TabVisible  := True;
    1: ts_CaixaFederal.TabVisible := True;
    2: ts_Banrisul.TabVisible     := True;
    3: ts_Sicredi.TabVisible      := True;
    4: ts_Santander.TabVisible    := True;
    5: ts_Itau.TabVisible         := True;
    6: ts_Sicoob.TabVisible       := True;
  end;
end;

end.

