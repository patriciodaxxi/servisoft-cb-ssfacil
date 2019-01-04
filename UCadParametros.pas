unit UCadParametros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadParametros,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, RxDBComb, UDmCadFuncionario, Math,
  CurrEdit, NxCollection, RzPanel, RXDBCtrl, ExtDlgs;

type
  TfrmCadParametros = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Cadastro: TRzTabSheet;
    Panel1: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAlterar: TBitBtn;
    UCControls1: TUCControls;
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    pnlGeral: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    RxDBComboBox5: TRxDBComboBox;
    TabSheet2: TRzTabSheet;
    pnlNFe: TPanel;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label15: TLabel;
    RxDBComboBox12: TRxDBComboBox;
    DBCheckBox1: TDBCheckBox;
    Label34: TLabel;
    RxDBComboBox20: TRxDBComboBox;
    DBCheckBox2: TDBCheckBox;
    TS_NotaFiscal: TRzTabSheet;
    pnlNotaFiscal: TPanel;
    Label35: TLabel;
    DBEdit5: TDBEdit;
    Label36: TLabel;
    DBEdit6: TDBEdit;
    Label37: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label38: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label40: TLabel;
    RxDBComboBox21: TRxDBComboBox;
    Label41: TLabel;
    RxDBComboBox22: TRxDBComboBox;
    Label45: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    TabSheet4: TRzTabSheet;
    Label46: TLabel;
    DirectoryEdit4: TDirectoryEdit;
    Label47: TLabel;
    DirectoryEdit5: TDirectoryEdit;
    TabSheet5: TRzTabSheet;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    btnInserir: TBitBtn;
    btnExcluir: TBitBtn;
    Panel3: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    BitBtn1: TBitBtn;
    DateEdit1: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    DBCheckBox3: TDBCheckBox;
    Label50: TLabel;
    Label51: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label53: TLabel;
    RxDBComboBox25: TRxDBComboBox;
    Label54: TLabel;
    RxDBComboBox26: TRxDBComboBox;
    DBCheckBox4: TDBCheckBox;
    Label56: TLabel;
    DBEdit9: TDBEdit;
    TabSheet6: TRzTabSheet;
    Panel4: TPanel;
    Label57: TLabel;
    RxDBComboBox27: TRxDBComboBox;
    RxDBComboBox28: TRxDBComboBox;
    Label58: TLabel;
    TS_NotaEntrada: TRzTabSheet;
    Panel5: TPanel;
    Label59: TLabel;
    RxDBComboBox29: TRxDBComboBox;
    Label12: TLabel;
    RxDBComboBox10: TRxDBComboBox;
    Label14: TLabel;
    RxDBComboBox11: TRxDBComboBox;
    Label4: TLabel;
    RxDBComboBox30: TRxDBComboBox;
    Label61: TLabel;
    RxDBComboBox33: TRxDBComboBox;
    Label63: TLabel;
    RxDBComboBox35: TRxDBComboBox;
    Label33: TLabel;
    RxDBComboBox19: TRxDBComboBox;
    TS_Produto: TRzTabSheet;
    TS_Pedido: TRzTabSheet;
    pnlPedido: TPanel;
    pnlProduto: TPanel;
    RxDBComboBox13: TRxDBComboBox;
    Label17: TLabel;
    Label62: TLabel;
    RxDBComboBox34: TRxDBComboBox;
    Label24: TLabel;
    RxDBComboBox16: TRxDBComboBox;
    Label29: TLabel;
    RxDBComboBox17: TRxDBComboBox;
    Label32: TLabel;
    RxDBComboBox18: TRxDBComboBox;
    Label65: TLabel;
    RxDBComboBox37: TRxDBComboBox;
    Label70: TLabel;
    RxDBComboBox41: TRxDBComboBox;
    DBCheckBox6: TDBCheckBox;
    Label72: TLabel;
    RxDBComboBox43: TRxDBComboBox;
    TS_Lote: TRzTabSheet;
    pnlLote: TPanel;
    Label75: TLabel;
    RxDBComboBox46: TRxDBComboBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    Label81: TLabel;
    RxDBComboBox51: TRxDBComboBox;
    Label82: TLabel;
    DBEdit1: TDBEdit;
    Label83: TLabel;
    RxDBLookupCombo11: TRxDBLookupCombo;
    TS_Conta_Orcamento: TRzTabSheet;
    pnlConta_Orcamento: TPanel;
    Label85: TLabel;
    RxDBL_ContaServico: TRxDBLookupCombo;
    Label86: TLabel;
    RxDBL_ContaComissao: TRxDBLookupCombo;
    Label88: TLabel;
    RxDBComboBox54: TRxDBComboBox;
    Label89: TLabel;
    DBEdit3: TDBEdit;
    Label91: TLabel;
    RxDBComboBox56: TRxDBComboBox;
    Label94: TLabel;
    RxDBComboBox58: TRxDBComboBox;
    DBCheckBox10: TDBCheckBox;
    Label95: TLabel;
    DBEdit10: TDBEdit;
    DBCheckBox11: TDBCheckBox;
    Label96: TLabel;
    RxDBComboBox59: TRxDBComboBox;
    DBCheckBox12: TDBCheckBox;
    TS_Comissao: TRzTabSheet;
    pnlComissao: TPanel;
    Label99: TLabel;
    RxDBComboBox61: TRxDBComboBox;
    Label100: TLabel;
    RxDBComboBox62: TRxDBComboBox;
    TS_Excel: TRzTabSheet;
    pnlExcel: TPanel;
    Label101: TLabel;
    FilenameEdit1: TFilenameEdit;
    Label102: TLabel;
    DBMemo2: TDBMemo;
    TS_Sped: TRzTabSheet;
    pnlSped: TPanel;
    Label103: TLabel;
    DBEdit13: TDBEdit;
    TS_Financeiro: TRzTabSheet;
    pnlFinanceiro: TPanel;
    Label107: TLabel;
    DBEdit14: TDBEdit;
    Label77: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Label84: TLabel;
    RxDBComboBox52: TRxDBComboBox;
    DBCheckBox13: TDBCheckBox;
    Label108: TLabel;
    RxDBComboBox65: TRxDBComboBox;
    GroupBox1: TGroupBox;
    Label87: TLabel;
    RxDBComboBox53: TRxDBComboBox;
    Label109: TLabel;
    RxDBComboBox66: TRxDBComboBox;
    Label110: TLabel;
    DBEdit15: TDBEdit;
    Label111: TLabel;
    RxDBComboBox67: TRxDBComboBox;
    Label112: TLabel;
    RxDBComboBox68: TRxDBComboBox;
    DBCheckBox14: TDBCheckBox;
    Label115: TLabel;
    RxDBComboBox70: TRxDBComboBox;
    TabSheet11: TRzTabSheet;
    DBCheckBox15: TDBCheckBox;
    Label118: TLabel;
    RxDBComboBox73: TRxDBComboBox;
    Label122: TLabel;
    RxDBL_ContaJurosRec: TRxDBLookupCombo;
    Label123: TLabel;
    RxDBL_ContaTaxaBancaria: TRxDBLookupCombo;
    Label124: TLabel;
    RxDBL_ContaDespesaBancRec: TRxDBLookupCombo;
    Label125: TLabel;
    RxDBL_ContaJurosPag: TRxDBLookupCombo;
    Label126: TLabel;
    TabSheet12: TRzTabSheet;
    Label127: TLabel;
    RxDBComboBox75: TRxDBComboBox;
    Label129: TLabel;
    RxDBComboBox77: TRxDBComboBox;
    RxDBL_ContaDespesaBancPag: TRxDBLookupCombo;
    Label130: TLabel;
    RxDBComboBox78: TRxDBComboBox;
    Label131: TLabel;
    RxDBComboBox79: TRxDBComboBox;
    Label132: TLabel;
    RxDBComboBox80: TRxDBComboBox;
    Label133: TLabel;
    RxDBComboBox81: TRxDBComboBox;
    Label134: TLabel;
    RxDBComboBox83: TRxDBComboBox;
    Label135: TLabel;
    RxDBComboBox84: TRxDBComboBox;
    Label136: TLabel;
    RxDBComboBox85: TRxDBComboBox;
    TS_Usuario: TRzTabSheet;
    Panel6: TPanel;
    SMDBGrid2: TSMDBGrid;
    Label137: TLabel;
    RxDBLookupCombo12: TRxDBLookupCombo;
    btnNFe: TNxButton;
    Panel7: TPanel;
    Label138: TLabel;
    Label139: TLabel;
    RxDBComboBox86: TRxDBComboBox;
    RxDBComboBox87: TRxDBComboBox;
    Label93: TLabel;
    RxDBComboBox57: TRxDBComboBox;
    Label140: TLabel;
    RxDBComboBox88: TRxDBComboBox;
    DBCheckBox16: TDBCheckBox;
    Label141: TLabel;
    RxDBComboBox89: TRxDBComboBox;
    Label143: TLabel;
    RxDBComboBox91: TRxDBComboBox;
    Label146: TLabel;
    RxDBComboBox93: TRxDBComboBox;
    DBCheckBox17: TDBCheckBox;
    Label147: TLabel;
    RxDBLookupCombo16: TRxDBLookupCombo;
    Label148: TLabel;
    RxDBComboBox94: TRxDBComboBox;
    Label149: TLabel;
    RxDBComboBox95: TRxDBComboBox;
    Label150: TLabel;
    RxDBComboBox96: TRxDBComboBox;
    Label142: TLabel;
    RxDBComboBox90: TRxDBComboBox;
    Label151: TLabel;
    RxDBComboBox97: TRxDBComboBox;
    Label152: TLabel;
    RxDBComboBox98: TRxDBComboBox;
    Label153: TLabel;
    RxDBComboBox99: TRxDBComboBox;
    Label154: TLabel;
    RxDBComboBox100: TRxDBComboBox;
    Label155: TLabel;
    RxDBComboBox101: TRxDBComboBox;
    Label156: TLabel;
    DBEdit12: TDBEdit;
    DBCheckBox18: TDBCheckBox;
    Label157: TLabel;
    RxDBComboBox102: TRxDBComboBox;
    Label158: TLabel;
    RxDBComboBox103: TRxDBComboBox;
    Label159: TLabel;
    RxDBComboBox104: TRxDBComboBox;
    Label160: TLabel;
    RxDBComboBox105: TRxDBComboBox;
    Label161: TLabel;
    RxDBComboBox106: TRxDBComboBox;
    Label162: TLabel;
    RxDBComboBox107: TRxDBComboBox;
    Label163: TLabel;
    RxDBComboBox108: TRxDBComboBox;
    Label164: TLabel;
    RxDBComboBox109: TRxDBComboBox;
    Label165: TLabel;
    RxDBComboBox110: TRxDBComboBox;
    Label166: TLabel;
    DBEdit21: TDBEdit;
    Label167: TLabel;
    RxDBComboBox111: TRxDBComboBox;
    Label168: TLabel;
    RxDBComboBox112: TRxDBComboBox;
    Label169: TLabel;
    RxDBComboBox113: TRxDBComboBox;
    TS_Estoque: TRzTabSheet;
    Label10: TLabel;
    RxDBComboBox31: TRxDBComboBox;
    Label76: TLabel;
    RxDBComboBox47: TRxDBComboBox;
    Label170: TLabel;
    RxDBComboBox114: TRxDBComboBox;
    DBCheckBox19: TDBCheckBox;
    Label171: TLabel;
    RxDBComboBox115: TRxDBComboBox;
    Label174: TLabel;
    rxdbControlarEstoqueSaida: TRxDBComboBox;
    Label175: TLabel;
    Label176: TLabel;
    dbedtSenhaLiberarEstoque: TDBEdit;
    Label97: TLabel;
    rxdbUsaLimiteCredito: TRxDBComboBox;
    Label98: TLabel;
    dbedtSenhaCredito: TDBEdit;
    dbedtSenhaExcluirVale: TDBEdit;
    Label113: TLabel;
    Label117: TLabel;
    rxdbAlerta_Vale: TRxDBComboBox;
    Label121: TLabel;
    rxdbAlerta_Vlr_Atraso: TRxDBComboBox;
    TS_Servico: TRzTabSheet;
    pnlServico: TPanel;
    Label178: TLabel;
    RxDBComboBox72: TRxDBComboBox;
    Label179: TLabel;
    RxDBComboBox74: TRxDBComboBox;
    Label181: TLabel;
    RxDBComboBox119: TRxDBComboBox;
    Label116: TLabel;
    RxDBComboBox71: TRxDBComboBox;
    DBCheckBox26: TDBCheckBox;
    Label183: TLabel;
    RxDBComboBox121: TRxDBComboBox;
    Label184: TLabel;
    RxDBComboBox122: TRxDBComboBox;
    Label185: TLabel;
    RxDBLookupCombo17: TRxDBLookupCombo;
    Label186: TLabel;
    RxDBComboBox123: TRxDBComboBox;
    Label187: TLabel;
    RxDBLookupCombo18: TRxDBLookupCombo;
    Label188: TLabel;
    RxDBComboBox124: TRxDBComboBox;
    Label189: TLabel;
    RxDBComboBox125: TRxDBComboBox;
    Label190: TLabel;
    RxDBComboBox126: TRxDBComboBox;
    Label191: TLabel;
    RxDBLookupCombo19: TRxDBLookupCombo;
    RxDBLookupCombo20: TRxDBLookupCombo;
    Label193: TLabel;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    rxdbLocalEstoque: TRxDBComboBox;
    Label194: TLabel;
    Label197: TLabel;
    RxDBComboBox128: TRxDBComboBox;
    lblLote_Controle: TLabel;
    rxdbLote_Controle22: TRxDBComboBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    Label198: TLabel;
    RxDBLookupCombo21: TRxDBLookupCombo;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    RzGroupBox1: TRzGroupBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    RzGroupBox2: TRzGroupBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    Label203: TLabel;
    RxDBLookupCombo24: TRxDBLookupCombo;
    Label204: TLabel;
    RxDBComboBox130: TRxDBComboBox;
    Label205: TLabel;
    RxDBComboBox131: TRxDBComboBox;
    Label207: TLabel;
    RxDBComboBox133: TRxDBComboBox;
    Label208: TLabel;
    DirectoryEdit6: TDirectoryEdit;
    Label209: TLabel;
    RxDBComboBox134: TRxDBComboBox;
    Label210: TLabel;
    RxDBComboBox135: TRxDBComboBox;
    Label211: TLabel;
    RxDBComboBox136: TRxDBComboBox;
    Label212: TLabel;
    RxDBComboBox137: TRxDBComboBox;
    RzGroupBox3: TRzGroupBox;
    DBCheckBox49: TDBCheckBox;
    Label213: TLabel;
    RxDBComboBox138: TRxDBComboBox;
    Label214: TLabel;
    RxDBComboBox139: TRxDBComboBox;
    Label215: TLabel;
    RxDBL_Receita: TRxDBLookupCombo;
    Label216: TLabel;
    RxDBL_Despesa: TRxDBLookupCombo;
    Label217: TLabel;
    RxDBComboBox140: TRxDBComboBox;
    Label218: TLabel;
    RxDBComboBox141: TRxDBComboBox;
    DBCheckBox20: TDBCheckBox;
    Label219: TLabel;
    RxDBComboBox142: TRxDBComboBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    Label220: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label221: TLabel;
    RxDBComboBox143: TRxDBComboBox;
    Label222: TLabel;
    RxDBComboBox144: TRxDBComboBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox53: TDBCheckBox;
    Label182: TLabel;
    RxDBComboBox118: TRxDBComboBox;
    DBCheckBox54: TDBCheckBox;
    Label224: TLabel;
    DBEdit22: TDBEdit;
    Label225: TLabel;
    RxDBComboBox120: TRxDBComboBox;
    DBCheckBox58: TDBCheckBox;
    Label226: TLabel;
    DBMemo5: TDBMemo;
    Label19: TLabel;
    RxDBComboBox15: TRxDBComboBox;
    Label128: TLabel;
    RxDBComboBox76: TRxDBComboBox;
    DBCheckBox61: TDBCheckBox;
    DBCheckBox67: TDBCheckBox;
    DBCheckBox68: TDBCheckBox;
    DBCheckBox69: TDBCheckBox;
    Label228: TLabel;
    DBEdit23: TDBEdit;
    DBCheckBox70: TDBCheckBox;
    DBCheckBox71: TDBCheckBox;
    Label229: TLabel;
    RxDBLookupCombo26: TRxDBLookupCombo;
    Label230: TLabel;
    RxDBLookupCombo27: TRxDBLookupCombo;
    Label231: TLabel;
    RxDBLookupCombo28: TRxDBLookupCombo;
    DBCheckBox72: TDBCheckBox;
    DBCheckBox73: TDBCheckBox;
    DBCheckBox75: TDBCheckBox;
    Label232: TLabel;
    DirectoryEdit7: TDirectoryEdit;
    DBCheckBox76: TDBCheckBox;
    DBCheckBox77: TDBCheckBox;
    DBCheckBox78: TDBCheckBox;
    Label233: TLabel;
    DBEdit24: TDBEdit;
    Label235: TLabel;
    DBEdit26: TDBEdit;
    DBCheckBox80: TDBCheckBox;
    Label234: TLabel;
    Label236: TLabel;
    RxDBLookupCombo29: TRxDBLookupCombo;
    RxDBLookupCombo30: TRxDBLookupCombo;
    Label237: TLabel;
    RxDBComboBox146: TRxDBComboBox;
    DBCheckBox82: TDBCheckBox;
    DBCheckBox83: TDBCheckBox;
    TS_FCI: TRzTabSheet;
    pnlFCI: TPanel;
    Label238: TLabel;
    DirectoryEdit8: TDirectoryEdit;
    DBCheckBox84: TDBCheckBox;
    Label239: TLabel;
    DBEdit25: TDBEdit;
    DBCheckBox85: TDBCheckBox;
    Label240: TLabel;
    DBMemo6: TDBMemo;
    DBCheckBox86: TDBCheckBox;
    Label241: TLabel;
    DBCheckBox87: TDBCheckBox;
    Label242: TLabel;
    DirectoryEdit9: TDirectoryEdit;
    Label243: TLabel;
    DBEdit27: TDBEdit;
    DBCheckBox88: TDBCheckBox;
    DBCheckBox89: TDBCheckBox;
    Label244: TLabel;
    RxDBComboBox147: TRxDBComboBox;
    DBCheckBox90: TDBCheckBox;
    DBCheckBox92: TDBCheckBox;
    DBCheckBox93: TDBCheckBox;
    Label245: TLabel;
    RxDBComboBox148: TRxDBComboBox;
    Label246: TLabel;
    RxDBComboBox149: TRxDBComboBox;
    Label247: TLabel;
    DBEdit28: TDBEdit;
    DBCheckBox95: TDBCheckBox;
    DBCheckBox96: TDBCheckBox;
    DBCheckBox97: TDBCheckBox;
    Label248: TLabel;
    RxDBComboBox150: TRxDBComboBox;
    DBCheckBox98: TDBCheckBox;
    DBCheckBox99: TDBCheckBox;
    Label249: TLabel;
    Label250: TLabel;
    RxDBComboBox151: TRxDBComboBox;
    RxDBComboBox152: TRxDBComboBox;
    DBCheckBox104: TDBCheckBox;
    Label90: TLabel;
    RxDBComboBox55: TRxDBComboBox;
    DBCheckBox105: TDBCheckBox;
    DBCheckBox108: TDBCheckBox;
    DBCheckBox109: TDBCheckBox;
    DBCheckBox110: TDBCheckBox;
    Label114: TLabel;
    RxDBLookupCombo31: TRxDBLookupCombo;
    Label251: TLabel;
    RxDBLookupCombo32: TRxDBLookupCombo;
    Label252: TLabel;
    RxDBLookupCombo33: TRxDBLookupCombo;
    DBCheckBox112: TDBCheckBox;
    DBCheckBox113: TDBCheckBox;
    Label253: TLabel;
    DBEdit29: TDBEdit;
    DBCheckBox115: TDBCheckBox;
    DBCheckBox117: TDBCheckBox;
    DBCheckBox119: TDBCheckBox;
    Label254: TLabel;
    DBCheckBox120: TDBCheckBox;
    RxDBComboBox69: TRxDBComboBox;
    Label255: TLabel;
    DBCheckBox118: TDBCheckBox;
    Label256: TLabel;
    RxDBComboBox153: TRxDBComboBox;
    Label257: TLabel;
    DBEdit30: TDBEdit;
    Label258: TLabel;
    BitBtn2: TBitBtn;
    DBEdit31: TDBEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    DBCheckBox124: TDBCheckBox;
    DBCheckBox125: TDBCheckBox;
    DBCheckBox126: TDBCheckBox;
    DBCheckBox127: TDBCheckBox;
    Label260: TLabel;
    RxDBComboBox155: TRxDBComboBox;
    DBCheckBox27: TDBCheckBox;
    Label259: TLabel;
    RxDBComboBox154: TRxDBComboBox;
    TS_MDFe: TRzTabSheet;
    pnlMDFe: TPanel;
    Label261: TLabel;
    DBEdit32: TDBEdit;
    Label262: TLabel;
    DBEdit33: TDBEdit;
    Label263: TLabel;
    DBEdit34: TDBEdit;
    Label264: TLabel;
    DirectoryEdit10: TDirectoryEdit;
    Label265: TLabel;
    DirectoryEdit11: TDirectoryEdit;
    chkProtestarCliente: TDBCheckBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo14: TRxDBLookupCombo;
    Label20: TLabel;
    RxDBComboBox156: TRxDBComboBox;
    Label21: TLabel;
    dbEditPESSOA_CIDADE_PADRAO: TDBEdit;
    lbl5: TLabel;
    dbEditPESSOA_PAIS_PADRAO: TDBEdit;
    Label22: TLabel;
    DirectoryEdit12: TDirectoryEdit;
    Label92: TLabel;
    DBEdit35: TDBEdit;
    TS_Etiqueta: TRzTabSheet;
    pnlEtiqueta: TPanel;
    GroupBox2: TGroupBox;
    Label266: TLabel;
    DBEdit36: TDBEdit;
    Label267: TLabel;
    DBEdit37: TDBEdit;
    Label268: TLabel;
    DBEdit38: TDBEdit;
    Label269: TLabel;
    DBEdit39: TDBEdit;
    Label270: TLabel;
    Label271: TLabel;
    Label272: TLabel;
    Label273: TLabel;
    Label274: TLabel;
    DBEdit40: TDBEdit;
    Label275: TLabel;
    DBCheckBox131: TDBCheckBox;
    DBCheckBox132: TDBCheckBox;
    DBCheckBox134: TDBCheckBox;
    DBCheckBox135: TDBCheckBox;
    DBCheckBox137: TDBCheckBox;
    Label277: TLabel;
    DBEdit41: TDBEdit;
    Label278: TLabel;
    RxDBComboBox158: TRxDBComboBox;
    Label279: TLabel;
    RxDBComboBox159: TRxDBComboBox;
    Label280: TLabel;
    DirectoryEdit13: TDirectoryEdit;
    Label281: TLabel;
    RxDBComboBox160: TRxDBComboBox;
    Label282: TLabel;
    RxDBComboBox161: TRxDBComboBox;
    DBCheckBox133: TDBCheckBox;
    DBCheckBox138: TDBCheckBox;
    DBCheckBox139: TDBCheckBox;
    DBCheckBox140: TDBCheckBox;
    DBCheckBox141: TDBCheckBox;
    TS_Pedido_Proc: TRzTabSheet;
    pnlPedido_Proc: TPanel;
    DBCheckBox142: TDBCheckBox;
    DBCheckBox143: TDBCheckBox;
    DBCheckBox144: TDBCheckBox;
    DBCheckBox145: TDBCheckBox;
    DBCheckBox146: TDBCheckBox;
    DBCheckBox147: TDBCheckBox;
    DBCheckBox148: TDBCheckBox;
    Label284: TLabel;
    RxDBComboBox162: TRxDBComboBox;
    Label285: TLabel;
    RxDBComboBox163: TRxDBComboBox;
    DBCheckBox151: TDBCheckBox;
    DBCheckBox152: TDBCheckBox;
    DBCheckBox153: TDBCheckBox;
    DBCheckBox154: TDBCheckBox;
    Label286: TLabel;
    RxDBComboBox164: TRxDBComboBox;
    DBCheckBox155: TDBCheckBox;
    Label287: TLabel;
    RxDBComboBox165: TRxDBComboBox;
    DBCheckBox158: TDBCheckBox;
    DBCheckBox160: TDBCheckBox;
    DBCheckBox161: TDBCheckBox;
    DBCheckBox165: TDBCheckBox;
    DBCheckBox164: TDBCheckBox;
    Label288: TLabel;
    RxDBComboBox166: TRxDBComboBox;
    DBCheckBox166: TDBCheckBox;
    DBCheckBox167: TDBCheckBox;
    DBCheckBox168: TDBCheckBox;
    DBCheckBox171: TDBCheckBox;
    DBCheckBox172: TDBCheckBox;
    Label289: TLabel;
    RxDBComboBox167: TRxDBComboBox;
    Label290: TLabel;
    RxDBComboBox168: TRxDBComboBox;
    DBCheckBox173: TDBCheckBox;
    DBCheckBox174: TDBCheckBox;
    TS_PrecoCusto: TRzTabSheet;
    pnlPrecoCusto: TPanel;
    gbxVendedor: TRzGroupBox;
    DBCheckBox175: TDBCheckBox;
    DBCheckBox176: TDBCheckBox;
    DBCheckBox177: TDBCheckBox;
    DBCheckBox178: TDBCheckBox;
    DBCheckBox179: TDBCheckBox;
    RzGroupBox4: TRzGroupBox;
    DBCheckBox180: TDBCheckBox;
    DBCheckBox181: TDBCheckBox;
    DBCheckBox182: TDBCheckBox;
    DBCheckBox183: TDBCheckBox;
    DBCheckBox184: TDBCheckBox;
    RzGroupBox5: TRzGroupBox;
    DBCheckBox185: TDBCheckBox;
    DBCheckBox186: TDBCheckBox;
    DBCheckBox187: TDBCheckBox;
    DBCheckBox188: TDBCheckBox;
    DBCheckBox189: TDBCheckBox;
    DBCheckBox192: TDBCheckBox;
    DBCheckBox193: TDBCheckBox;
    DBCheckBox194: TDBCheckBox;
    DBCheckBox196: TDBCheckBox;
    DBCheckBox197: TDBCheckBox;
    DBCheckBox198: TDBCheckBox;
    DBCheckBox199: TDBCheckBox;
    DBCheckBox200: TDBCheckBox;
    DBCheckBox201: TDBCheckBox;
    DBCheckBox202: TDBCheckBox;
    DBCheckBox204: TDBCheckBox;
    Label291: TLabel;
    DBEdit43: TDBEdit;
    DBCheckBox205: TDBCheckBox;
    DBCheckBox206: TDBCheckBox;
    DBCheckBox207: TDBCheckBox;
    RzGroupBox6: TRzGroupBox;
    DBCheckBox208: TDBCheckBox;
    DBCheckBox209: TDBCheckBox;
    DBCheckBox210: TDBCheckBox;
    Label292: TLabel;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    Label293: TLabel;
    Label294: TLabel;
    Label295: TLabel;
    DBCheckBox213: TDBCheckBox;
    DBCheckBox214: TDBCheckBox;
    DBCheckBox215: TDBCheckBox;
    DBCheckBox216: TDBCheckBox;
    DBCheckBox217: TDBCheckBox;
    Label296: TLabel;
    DBCheckBox219: TDBCheckBox;
    DBCheckBox221: TDBCheckBox;
    DBCheckBox222: TDBCheckBox;
    DBCheckBox223: TDBCheckBox;
    DBCheckBox225: TDBCheckBox;
    DBCheckBox226: TDBCheckBox;
    Label297: TLabel;
    RxDBComboBox169: TRxDBComboBox;
    DBCheckBox229: TDBCheckBox;
    DBCheckBox230: TDBCheckBox;
    DBCheckBox231: TDBCheckBox;
    DBCheckBox232: TDBCheckBox;
    DBCheckBox238: TDBCheckBox;
    DBCheckBox237: TDBCheckBox;
    Label298: TLabel;
    DBEdit8: TDBEdit;
    DBCheckBox239: TDBCheckBox;
    Label299: TLabel;
    DBEdit46: TDBEdit;
    DBCheckBox241: TDBCheckBox;
    DBCheckBox242: TDBCheckBox;
    DBCheckBox243: TDBCheckBox;
    DBCheckBox245: TDBCheckBox;
    Label300: TLabel;
    RxDBComboBox171: TRxDBComboBox;
    Label301: TLabel;
    DBEdit47: TDBEdit;
    NxButton1: TNxButton;
    Label302: TLabel;
    RxDBLookupCombo34: TRxDBLookupCombo;
    DBCheckBox247: TDBCheckBox;
    DBCheckBox248: TDBCheckBox;
    RzPageControl4: TRzPageControl;
    TabSheet8: TRzTabSheet;
    TabSheet9: TRzTabSheet;
    Label52: TLabel;
    Label43: TLabel;
    Label7: TLabel;
    Label64: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label71: TLabel;
    Label74: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label104: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label192: TLabel;
    Label199: TLabel;
    Label200: TLabel;
    Label180: TLabel;
    Label276: TLabel;
    Label283: TLabel;
    RxDBComboBox24: TRxDBComboBox;
    RxDBComboBox23: TRxDBComboBox;
    RxDBComboBox7: TRxDBComboBox;
    RxDBComboBox36: TRxDBComboBox;
    RxDBComboBox38: TRxDBComboBox;
    RxDBComboBox39: TRxDBComboBox;
    RxDBComboBox40: TRxDBComboBox;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBComboBox42: TRxDBComboBox;
    RxDBComboBox45: TRxDBComboBox;
    RxDBComboBox49: TRxDBComboBox;
    RxDBComboBox50: TRxDBComboBox;
    RxDBComboBox63: TRxDBComboBox;
    dbEdtSenha_Pedido: TDBEdit;
    RxDBComboBox92: TRxDBComboBox;
    RxDBLookupCombo13: TRxDBLookupCombo;
    RxDBComboBox127: TRxDBComboBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    RxDBLookupCombo22: TRxDBLookupCombo;
    RxDBLookupCombo23: TRxDBLookupCombo;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    RxDBLookupCombo25: TRxDBLookupCombo;
    DBCheckBox55: TDBCheckBox;
    DBCheckBox60: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    DBCheckBox66: TDBCheckBox;
    DBCheckBox94: TDBCheckBox;
    DBCheckBox100: TDBCheckBox;
    DBCheckBox106: TDBCheckBox;
    DBCheckBox107: TDBCheckBox;
    DBCheckBox111: TDBCheckBox;
    DBCheckBox114: TDBCheckBox;
    DBCheckBox121: TDBCheckBox;
    DBCheckBox122: TDBCheckBox;
    DBCheckBox123: TDBCheckBox;
    DBCheckBox129: TDBCheckBox;
    DBCheckBox130: TDBCheckBox;
    DBCheckBox136: TDBCheckBox;
    RxDBComboBox157: TRxDBComboBox;
    DBEdit42: TDBEdit;
    DBCheckBox149: TDBCheckBox;
    DBCheckBox150: TDBCheckBox;
    DBCheckBox156: TDBCheckBox;
    DBCheckBox157: TDBCheckBox;
    DBCheckBox162: TDBCheckBox;
    DBCheckBox163: TDBCheckBox;
    DBCheckBox169: TDBCheckBox;
    DBCheckBox170: TDBCheckBox;
    DBCheckBox191: TDBCheckBox;
    DBCheckBox195: TDBCheckBox;
    DBCheckBox203: TDBCheckBox;
    DBCheckBox212: TDBCheckBox;
    DBCheckBox116: TDBCheckBox;
    DBCheckBox224: TDBCheckBox;
    DBCheckBox233: TDBCheckBox;
    DBCheckBox234: TDBCheckBox;
    DBCheckBox235: TDBCheckBox;
    DBCheckBox240: TDBCheckBox;
    DBCheckBox246: TDBCheckBox;
    DBMemo7: TDBMemo;
    Label303: TLabel;
    TabSheet10: TRzTabSheet;
    Panel8: TPanel;
    DBCheckBox101: TDBCheckBox;
    DBCheckBox102: TDBCheckBox;
    DBCheckBox103: TDBCheckBox;
    DBCheckBox249: TDBCheckBox;
    Label177: TLabel;
    RxDBComboBox60: TRxDBComboBox;
    Label206: TLabel;
    RxDBComboBox132: TRxDBComboBox;
    DBCheckBox57: TDBCheckBox;
    DBCheckBox74: TDBCheckBox;
    DBCheckBox128: TDBCheckBox;
    Label55: TLabel;
    RxDBComboBox170: TRxDBComboBox;
    Label73: TLabel;
    RxDBComboBox44: TRxDBComboBox;
    DBCheckBox250: TDBCheckBox;
    DBCheckBox251: TDBCheckBox;
    DBCheckBox252: TDBCheckBox;
    DBCheckBox253: TDBCheckBox;
    DBCheckBox254: TDBCheckBox;
    Label172: TLabel;
    DBEdit48: TDBEdit;
    DBCheckBox256: TDBCheckBox;
    DBCheckBox257: TDBCheckBox;
    DBCheckBox258: TDBCheckBox;
    DBCheckBox259: TDBCheckBox;
    DBCheckBox260: TDBCheckBox;
    RzPageControl3: TRzPageControl;
    TS_NFE_Geral: TRzTabSheet;
    TS_NFE_Imp: TRzTabSheet;
    TS_NFE_Obs: TRzTabSheet;
    Label106: TLabel;
    RxDBLookupCombo15: TRxDBLookupCombo;
    DBMemo1: TDBMemo;
    Label13: TLabel;
    Label202: TLabel;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    Label223: TLabel;
    Label28: TLabel;
    RxDBComboBox82: TRxDBComboBox;
    DBEdit2: TDBEdit;
    Label23: TLabel;
    DBEdit18: TDBEdit;
    Label27: TLabel;
    Label25: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label26: TLabel;
    Label3: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label195: TLabel;
    DBEdit11: TDBEdit;
    DBEdit20: TDBEdit;
    Label196: TLabel;
    DBCheckBox227: TDBCheckBox;
    DBCheckBox56: TDBCheckBox;
    DBCheckBox63: TDBCheckBox;
    Label227: TLabel;
    RxDBComboBox145: TRxDBComboBox;
    DBCheckBox190: TDBCheckBox;
    DBCheckBox228: TDBCheckBox;
    DBCheckBox261: TDBCheckBox;
    DBCheckBox262: TDBCheckBox;
    DBCheckBox263: TDBCheckBox;
    DBCheckBox59: TDBCheckBox;
    Label39: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label6: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    DBCheckBox264: TDBCheckBox;
    Label31: TLabel;
    Label44: TLabel;
    DBEdit19: TDBEdit;
    DBEdit7: TDBEdit;
    Label30: TLabel;
    Label16: TLabel;
    Label42: TLabel;
    DirectoryEdit2: TDirectoryEdit;
    DirectoryEdit3: TDirectoryEdit;
    DirectoryEdit1: TDirectoryEdit;
    DBCheckBox81: TDBCheckBox;
    DBCheckBox220: TDBCheckBox;
    DBCheckBox244: TDBCheckBox;
    RxDBComboBox64: TRxDBComboBox;
    Label105: TLabel;
    DBCheckBox265: TDBCheckBox;
    DBCheckBox266: TDBCheckBox;
    DBCheckBox267: TDBCheckBox;
    DBCheckBox268: TDBCheckBox;
    DBCheckBox236: TDBCheckBox;
    DBCheckBox218: TDBCheckBox;
    DBCheckBox211: TDBCheckBox;
    DBCheckBox159: TDBCheckBox;
    DBCheckBox91: TDBCheckBox;
    DBCheckBox79: TDBCheckBox;
    DBCheckBox65: TDBCheckBox;
    DBCheckBox64: TDBCheckBox;
    Label1: TLabel;
    DBEdit49: TDBEdit;
    DBCheckBox269: TDBCheckBox;
    Label8: TLabel;
    DBEdit50: TDBEdit;
    Label9: TLabel;
    Label18: TLabel;
    RxDBLookupCombo35: TRxDBLookupCombo;
    Label78: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    DBCheckBox255: TDBCheckBox;
    DBCheckBox270: TDBCheckBox;
    Label60: TLabel;
    RxDBComboBox8: TRxDBComboBox;
    DBCheckBox271: TDBCheckBox;
    Label173: TLabel;
    RxDBComboBox9: TRxDBComboBox;
    Label201: TLabel;
    DBEdit51: TDBEdit;
    DBCheckBox272: TDBCheckBox;
    DBCheckBox273: TDBCheckBox;
    DBCheckBox274: TDBCheckBox;
    DBCheckBox275: TDBCheckBox;
    DBCheckBox276: TDBCheckBox;
    DBCheckBox277: TDBCheckBox;
    DBCheckBox278: TDBCheckBox;
    DBCheckBox279: TDBCheckBox;
    DBCheckBox280: TDBCheckBox;
    DBCheckBox281: TDBCheckBox;
    DBCheckBox282: TDBCheckBox;
    DBCheckBox283: TDBCheckBox;
    DBCheckBox284: TDBCheckBox;
    Label304: TLabel;
    DBEdit52: TDBEdit;
    Label305: TLabel;
    RxDBComboBox14: TRxDBComboBox;
    DBCheckBox285: TDBCheckBox;
    DBCheckBox286: TDBCheckBox;
    Label306: TLabel;
    DBEdit53: TDBEdit;
    DBCheckBox287: TDBCheckBox;
    Label307: TLabel;
    RxDBLookupCombo36: TRxDBLookupCombo;
    DBCheckBox288: TDBCheckBox;
    DBCheckBox289: TDBCheckBox;
    Label309: TLabel;
    DirectoryEdit14: TDirectoryEdit;
    dbchkVerificaEntPedido: TDBCheckBox;
    DBCheckBox290: TDBCheckBox;
    Label308: TLabel;
    RxDBComboBox32: TRxDBComboBox;
    DBCheckBox291: TDBCheckBox;
    DBCheckBox292: TDBCheckBox;
    DBCheckBox293: TDBCheckBox;
    DBCheckBox294: TDBCheckBox;
    DBCheckBox295: TDBCheckBox;
    DBCheckBox296: TDBCheckBox;
    DBCheckBox297: TDBCheckBox;
    RxDBComboBox48: TRxDBComboBox;
    Label310: TLabel;
    DBCheckBox298: TDBCheckBox;
    DBCheckBox299: TDBCheckBox;
    Label311: TLabel;
    RxDBLookupCombo37: TRxDBLookupCombo;
    Label312: TLabel;
    RxDBComboBox116: TRxDBComboBox;
    DBCheckBox300: TDBCheckBox;
    DBCheckBox301: TDBCheckBox;
    DBCheckBox302: TDBCheckBox;
    DBCheckBox303: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure RxDBLookupCombo11Enter(Sender: TObject);
    procedure RxDBComboBox52Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit10Exit(Sender: TObject);
    procedure RzPageControl2Change(Sender: TObject);
    procedure RxDBComboBox53Exit(Sender: TObject);
    procedure RxDBL_ContaServicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBL_ContaComissaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBL_ContaJurosRecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBL_ContaJurosPagKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBL_ContaTaxaBancariaKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure RxDBL_ContaDespesaBancRecKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure RxDBL_ContaDespesaBancPagKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure Panel7Enter(Sender: TObject);
    procedure btnNFeClick(Sender: TObject);
    procedure DBCheckBox17Click(Sender: TObject);
    procedure RxDBComboBox27Change(Sender: TObject);
    procedure RxDBComboBox18Change(Sender: TObject);
    procedure rxdbControlarEstoqueSaidaChange(Sender: TObject);
    procedure DBCheckBox34Click(Sender: TObject);
    procedure DBMemo3KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBL_ReceitaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBL_DespesaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboBox143Change(Sender: TObject);
    procedure DBCheckBox30Click(Sender: TObject);
    procedure RxDBComboBox139Click(Sender: TObject);
    procedure DBMemo4KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox75Click(Sender: TObject);
    procedure DBMemo6KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBComboBox149Click(Sender: TObject);
    procedure RxDBComboBox151Click(Sender: TObject);
    procedure RxDBComboBox12Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBComboBox102Click(Sender: TObject);
    procedure RxDBComboBox161Change(Sender: TObject);
    procedure RxDBComboBox160KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboBox161KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCheckBox55Click(Sender: TObject);
    procedure DBCheckBox204Click(Sender: TObject);
    procedure DBCheckBox19Click(Sender: TObject);
    procedure DBCheckBox27Click(Sender: TObject);
    procedure DBCheckBox232Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure DBCheckBox137Click(Sender: TObject);
    procedure DBCheckBox270Click(Sender: TObject);
    procedure DBCheckBox294Exit(Sender: TObject);
  private
    { Private declarations }
    fDMCadParametros: TDMCadParametros;
    fdmFuncionario: TDmCadFuncionario;
    vEnd_Arq_FCI : String;

    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Chamar_Form_ContaOrc(Nome: String);
    procedure prc_Configurar_Imp;

  public
    { Public declarations }
  end;

var
  frmCadParametros: TfrmCadParametros;

implementation

uses DmdDatabase, rsDBUtils, UCadFolhaEncargo, uUtilPadrao, USel_ContaOrc;

{$R *.dfm}

procedure TfrmCadParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin                       
  Action := Cafree;
end;

procedure TfrmCadParametros.prc_Gravar_Registro;
var
  vAux : String;
begin
  if StrToFloat(FormatFloat('0.00', fDMCadParametros.cdsParametrosPERC_COMISSAO_PAGA_NOTA.AsFloat)) >= 100 then
  begin
    MessageDlg('*** campo "% Comissão (Parte na Nota):" não pode ser 100% ou mais!', mtError, [mbOk], 0);
    exit;
  end;
  if (fDMCadParametros.cdsParametros_PedINF_CONSUMIDOR_AUT.AsString = 'S') and (fDMCadParametros.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger <= 0) then
  begin
    MessageDlg('*** Foi marcado o campo para inserir automático o consumidor no pedido, ' + #13 +
               ', mas não foi informado o campo "ID do Consumidor para Cupom Fiscal" que fica na aba "Geral" !', mtError, [mbOk], 0);
    exit;
  end;
  if (fDMCadParametros.cdsParametros_Etiq.Active) and (fDMCadParametros.cdsParametros_EtiqTIPO_IMPRESSORA.AsString = 'HONEYWEEL') then
  begin
    vAux := Monta_Texto(fDMCadParametros.cdsParametros_EtiqVELOCIDADE.AsString,0);
    if (trim(vAux) = '') or (StrToInt(vAux) <= 0) then
    begin
      MessageDlg('*** Impresso de etiqueta Honeyweel não foi informada a velocidade!', mtError, [mbOk], 0);
      exit;
    end;
  end;
  if (fDMCadParametros.cdsParametros_Etiq.Active) and (fDMCadParametros.cdsParametros_EtiqTIPO_IMPRESSORA.AsString = 'ARGOX') then
  begin
    if (fDMCadParametros.cdsParametros_EtiqVELOCIDADE.AsString <> 'A') and (fDMCadParametros.cdsParametros_EtiqVELOCIDADE.AsString <> 'B')
      and (fDMCadParametros.cdsParametros_EtiqVELOCIDADE.AsString <> 'C') and (fDMCadParametros.cdsParametros_EtiqVELOCIDADE.AsString <> 'D')
      and (fDMCadParametros.cdsParametros_EtiqVELOCIDADE.AsString <> 'E') then
    begin
      MessageDlg('*** Impresso de etiqueta Argox não foi informada a velocidade!', mtError, [mbOk], 0);
      exit;
    end;
  end;
  fDMCadParametros.cdsParametrosENDXMLNFE.Value          := DirectoryEdit2.Text;
  fDMCadParametros.cdsParametrosENDPDFNFE.Value          := DirectoryEdit3.Text;
  fDMCadParametros.cdsParametrosENDXML_NOTAENTRADA.Value := DirectoryEdit1.Text;
  fDMCadParametros.cdsParametrosENDXMLNFSE.Value         := DirectoryEdit4.Text;
  fDMCadParametros.cdsParametrosENDPDFNFSE.Value         := DirectoryEdit5.Text;
  if fDMCadParametros.cdsParametros_ProdUSA_CONSTRUCAO.AsString = 'S' then
    fDMCadParametros.cdsParametrosMOSTRAR_LINHA_PROD.AsString := 'N';
    
  if fDMCadParametros.cdsParametros_EstEND_SALVAR_ARQ.AsString <> DirectoryEdit12.Text then
  begin
    if not(fDMCadParametros.cdsParametros_Est.State in [dsEdit,dsInsert]) then
      fDMCadParametros.cdsParametros_Est.Edit;
    fDMCadParametros.cdsParametros_EstEND_SALVAR_ARQ.AsString := DirectoryEdit12.Text;
  end;

  if fDMCadParametros.cdsParametros_NFeEND_ARQUIVO_SUFRAMA.AsString <> DirectoryEdit14.Text then
  begin
    if not(fDMCadParametros.cdsParametros_NFe.State in [dsEdit,dsInsert]) then
      fDMCadParametros.cdsParametros_NFe.Edit;
    fDMCadParametros.cdsParametros_NFeEND_ARQUIVO_SUFRAMA.AsString := DirectoryEdit14.Text;
  end;

  if (DirectoryEdit10.Text <> fDMCadParametros.cdsParametros_MDFeENDXMLMDFE.AsString) or (DirectoryEdit11.Text <> fDMCadParametros.cdsParametros_MDFeENDPDFMDFE.AsString) then
  begin
    if not(fDMCadParametros.cdsParametros_MDFe.State in [dsEdit,dsInsert]) then
      fDMCadParametros.cdsParametros_MDFe.Edit;
    fDMCadParametros.cdsParametros_MDFeENDXMLMDFE.AsString := DirectoryEdit10.Text;
    fDMCadParametros.cdsParametros_MDFeENDPDFMDFE.AsString := DirectoryEdit11.Text;
  end;

  if DirectoryEdit8.Text <> vEnd_Arq_FCI then
  begin
    if not(fDMCadParametros.cdsParametros_FCI.State in [dsEdit,dsInsert]) then
    begin
      if fDMCadParametros.cdsParametros_FCI.IsEmpty then
        fDMCadParametros.cdsParametros_FCI.Insert
      else
        fDMCadParametros.cdsParametros_FCI.Edit;
    end;
   fDMCadParametros.cdsParametros_FCIENDERECO_ARQ.AsString := DirectoryEdit8.Text;
  end;

  fDMCadParametros.cdsParametrosEND_SALVAR_EXCEL_EXP.Value := FilenameEdit1.Text;

  if fDMCadParametros.cdsParametrosGRAVAR_NA_REF_CODPRODFORN.AsString <> 'S' then
    fDMCadParametros.cdsParametrosPROCURAR_POR_REF_XML.AsString := 'N';

  //if not(fDMCadParametros.cdsParametros.State in [dsEdit,dsInsert]) then
  //  fDMCadParametros.cdsParametros.Edit;

  if fDMCadParametros.cdsParametros_GeralENDGRIDS.Value <> DirectoryEdit6.Text then
  begin
    if not(fDMCadParametros.cdsParametros_Geral.State in [dsEdit,dsInsert]) then
      fDMCadParametros.cdsParametros_Geral.Edit;
    fDMCadParametros.cdsParametros_GeralENDGRIDS.Value     := DirectoryEdit6.Text;
  end;

  if (fDMCadParametros.cdsParametros_GeralEND_ARQ_INT_CONTABIL.Value <> DirectoryEdit7.Text) then
  begin
    if not(fDMCadParametros.cdsParametros_Geral.State in [dsEdit,dsInsert]) then
      fDMCadParametros.cdsParametros_Geral.Edit;
    fDMCadParametros.cdsParametros_GeralEND_ARQ_INT_CONTABIL.Value := DirectoryEdit7.Text;
  end;

  if (fDMCadParametros.cdsParametros_GeralEND_ARQ_PERDCOMP.Value <> DirectoryEdit9.Text) or
     (fDMCadParametros.cdsParametros_GeralEND_ARQ_EDI.Value <> DirectoryEdit13.Text)  then
  begin
    if not(fDMCadParametros.cdsParametros_Geral.State in [dsEdit,dsInsert]) then
      fDMCadParametros.cdsParametros_Geral.Edit;
    if (fDMCadParametros.cdsParametros_GeralEND_ARQ_PERDCOMP.Value <> DirectoryEdit9.Text) then
      fDMCadParametros.cdsParametros_GeralEND_ARQ_PERDCOMP.Value := DirectoryEdit9.Text;
    if (fDMCadParametros.cdsParametros_GeralEND_ARQ_EDI.Value <> DirectoryEdit13.Text) then
      fDMCadParametros.cdsParametros_GeralEND_ARQ_EDI.Value := DirectoryEdit13.Text;
  end;

  if trim(fDMCadParametros.cdsParametros_LoteUSA_LOTE_PEDIDO.AsString) <> 'S' then
  begin
    if not(fDMCadParametros.cdsParametros_Lote.State in [dsEdit,dsInsert]) then
      fDMCadParametros.cdsParametros_Lote.Edit;
    fDMCadParametros.cdsParametros_LoteUSA_LOTE_PED_SPROC.AsString := 'N';
  end;

  fDMCadParametros.prc_Gravar;
  if fDMCadParametros.cdsParametros.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadParametros.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  pnlGeral.Enabled           := not(pnlGeral.Enabled);
  pnlNFe.Enabled             := not(pnlNFe.Enabled);
  pnlNotaFiscal.Enabled      := not(pnlNotaFiscal.Enabled);
  pnlProduto.Enabled         := not(pnlProduto.Enabled);
  pnlPedido.Enabled          := not(pnlPedido.Enabled);
  pnlLote.Enabled            := not(pnlLote.Enabled);
  pnlConta_Orcamento.Enabled := not(pnlConta_Orcamento.Enabled);
  pnlComissao.Enabled        := not(pnlComissao.Enabled);
  pnlExcel.Enabled           := not(pnlExcel.Enabled);
  pnlSped.Enabled            := not(pnlSped.Enabled);
  pnlFinanceiro.Enabled      := not(pnlFinanceiro.Enabled);
  pnlServico.Enabled         := not(pnlServico.Enabled);
  btnConfirmar.Enabled       := not(btnConfirmar.Enabled);
  btnAlterar.Enabled         := not(btnAlterar.Enabled);
  Panel2.Enabled             := not(Panel2.Enabled);
  Panel3.Enabled             := not(Panel3.Enabled);
  Panel4.Enabled             := not(Panel4.Enabled);
  Panel5.Enabled             := not(Panel5.Enabled);
  Panel6.Enabled             := not(Panel6.Enabled);
  Panel7.Enabled             := not(Panel7.Enabled);
  SMDBGrid1.Enabled          := not(SMDBGrid1.Enabled);
  pnlFCI.Enabled             := not(pnlFCI.Enabled);
  pnlMDFe.Enabled            := not(pnlMDFe.Enabled);
  pnlEtiqueta.Enabled        := not(pnlEtiqueta.Enabled);
  pnlPedido_Proc.Enabled     := not(pnlPedido_Proc.Enabled);
  pnlPrecoCusto.Enabled      := not(pnlPrecoCusto.Enabled);
  Panel8.Enabled             := not(Panel8.Enabled);
end;

procedure TfrmCadParametros.FormShow(Sender: TObject);
begin
  fDMCadParametros := TDMCadParametros.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadParametros);

  prc_Consultar;

  DirectoryEdit2.Text := fDMCadParametros.cdsParametrosENDXMLNFE.AsString;
  DirectoryEdit3.Text := fDMCadParametros.cdsParametrosENDPDFNFE.AsString;
  DirectoryEdit1.Text := fDMCadParametros.cdsParametrosENDXML_NOTAENTRADA.Value;

  DirectoryEdit4.Text := fDMCadParametros.cdsParametrosENDXMLNFSE.AsString;
  DirectoryEdit5.Text := fDMCadParametros.cdsParametrosENDPDFNFSE.AsString;
  FilenameEdit1.Text  := fDMCadParametros.cdsParametrosEND_SALVAR_EXCEL_EXP.Value;

  DirectoryEdit6.Text  := fDMCadParametros.cdsParametros_GeralENDGRIDS.AsString;
  DirectoryEdit7.Text  := fDMCadParametros.cdsParametros_GeralEND_ARQ_INT_CONTABIL.AsString;
  DirectoryEdit8.Text  := fDMCadParametros.cdsParametros_FCIENDERECO_ARQ.AsString;
  DirectoryEdit9.Text  := fDMCadParametros.cdsParametros_GeralEND_ARQ_PERDCOMP.AsString;
  DirectoryEdit13.Text := fDMCadParametros.cdsParametros_GeralEND_ARQ_EDI.AsString;

  DirectoryEdit10.Text := fDMCadParametros.cdsParametros_MDFeENDXMLMDFE.AsString;
  DirectoryEdit11.Text := fDMCadParametros.cdsParametros_MDFeENDPDFMDFE.AsString;

  DirectoryEdit12.Text := fDMCadParametros.cdsParametros_EstEND_SALVAR_ARQ.AsString;
  DirectoryEdit14.Text := fDMCadParametros.cdsParametros_NFeEND_ARQUIVO_SUFRAMA.AsString;

  if not TS_Usuario.Enabled then
  begin
    SMDBGrid2.Visible := False;
    Panel7.Visible    := False;
  end;
  Label232.Visible       := (fDMCadParametros.cdsParametros_GeralMOSTRAR_COD_CONTABIL.AsString = 'S');
  DirectoryEdit7.Visible := (fDMCadParametros.cdsParametros_GeralMOSTRAR_COD_CONTABIL.AsString = 'S');

  vEnd_Arq_FCI           := fDMCadParametros.cdsParametros_FCIENDERECO_ARQ.AsString;

  DBCheckBox118.Visible := (fDMCadParametros.cdsParametrosUSA_VENDEDOR.AsString = 'S');
  DBCheckBox132.Visible := ((fDMCadParametros.cdsParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadParametros.cdsParametrosINFORMAR_COR_PROD.AsString = 'B'));
  DBCheckBox137.Visible := (fDMCadParametros.cdsParametrosINFORMAR_COR_PROD.AsString = 'B');

  DBCheckBox206.Visible := (fDMCadParametros.cdsParametrosUSA_COD_BARRAS_PROPRIO.AsString = 'S');
end;

procedure TfrmCadParametros.prc_Consultar;
begin
  fDMCadParametros.cdsParametros.Close;
  fDMCadParametros.sdsParametros.CommandText := fDMCadParametros.ctCommand
                                             + ' WHERE ID = 1 ';
  fDMCadParametros.cdsParametros.Open;
  if fDMCadParametros.cdsParametros.IsEmpty then
  begin
    fDMCadParametros.cdsParametros.Insert;
    fDMCadParametros.cdsParametrosID.AsInteger := 1;
    btnAlterarClick(nil);
  end;
  fDMCadParametros.cdsFolhaEncargos.Open;
end;

procedure TfrmCadParametros.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadParametros.cdsParametros.State in [dsBrowse]) or not(fDMCadParametros.cdsParametros.Active) then
    exit;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadParametros.cdsParametros.CancelUpdates;
  pnlGeral.Enabled           := not(pnlGeral.Enabled);
  pnlNFe.Enabled             := not(pnlNFe.Enabled);
  btnConfirmar.Enabled       := not(btnConfirmar.Enabled);
  pnlProduto.Enabled         := not(pnlProduto.Enabled);
  pnlPedido.Enabled          := not(pnlPedido.Enabled);
  pnlLote.Enabled            := not(pnlLote.Enabled);
  pnlConta_Orcamento.Enabled := not(pnlConta_Orcamento.Enabled);
  pnlComissao.Enabled        := not(pnlComissao.Enabled);
  pnlExcel.Enabled           := not(pnlExcel.Enabled);
  pnlSped.Enabled            := not(pnlSped.Enabled);
  pnlFinanceiro.Enabled      := not(pnlFinanceiro.Enabled);
  pnlServico.Enabled         := not(pnlServico.Enabled);
  Panel2.Enabled             := not(Panel2.Enabled);
  Panel3.Enabled             := not(Panel3.Enabled);
  Panel4.Enabled             := not(Panel4.Enabled);
  Panel5.Enabled             := not(Panel5.Enabled);
  Panel6.Enabled             := not(Panel6.Enabled);
  Panel7.Enabled             := not(Panel7.Enabled);
  SMDBGrid1.Enabled          := not(SMDBGrid1.Enabled);
  btnAlterar.Enabled         := not(btnAlterar.Enabled);
  pnlFCI.Enabled             := not(pnlFCI.Enabled);
  pnlMDFe.Enabled            := not(pnlMDFe.Enabled);
  pnlEtiqueta.Enabled        := not(pnlEtiqueta.Enabled);
  pnlPedido_Proc.Enabled     := not(pnlPedido_Proc.Enabled);
  pnlPrecoCusto.Enabled      := not(pnlPrecoCusto.Enabled);
  Panel8.Enabled             := not(Panel8.Enabled);
end;

procedure TfrmCadParametros.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadParametros.cdsParametros.IsEmpty) or not(fDMCadParametros.cdsParametros.Active) or (fDMCadParametros.cdsParametrosID.AsInteger < 1) then
    exit;

  fDMCadParametros.cdsParametros.Edit;

  btnAlterar.Enabled    := False;
  btnConfirmar.Enabled  := True;
  pnlGeral.Enabled      := True;
  pnlNFe.Enabled        := True;
  pnlNotaFiscal.Enabled := True;
  pnlProduto.Enabled    := True;
  pnlPedido.Enabled     := True;
  pnlLote.Enabled            := True;
  pnlConta_Orcamento.Enabled := True;
  pnlComissao.Enabled        := True;
  pnlExcel.Enabled           := True;
  pnlSped.Enabled            := True;
  pnlFinanceiro.Enabled      := True;
  pnlServico.Enabled         := True;
  Panel2.Enabled             := True;
  Panel3.Enabled             := True;
  Panel4.Enabled             := True;
  Panel5.Enabled             := True;
  Panel6.Enabled             := True;
  Panel7.Enabled             := True;
  SMDBGrid1.Enabled          := True;
  pnlFCI.Enabled             := True;
  pnlMDFe.Enabled            := True;
  pnlEtiqueta.Enabled        := True;
  pnlPedido_Proc.Enabled     := True;
  pnlPrecoCusto.Enabled      := True;
  Panel8.Enabled             := True;
end;

procedure TfrmCadParametros.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadParametros.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadParametros);
end;

procedure TfrmCadParametros.btnInserirClick(Sender: TObject);
begin
  fDMCadParametros.prc_InserirFEncargos;
  frmCadFolhaEncargo := TfrmCadFolhaEncargo.Create(Self);
  frmCadFolhaEncargo.fDMCadParametros := fDMCadParametros;
  frmCadFolhaEncargo.ShowModal;
end;

procedure TfrmCadParametros.btnExcluirClick(Sender: TObject);
begin
  if (not fDMCadParametros.cdsFolhaEncargos.Active) or (fDMCadParametros.cdsFolhaEncargos.IsEmpty) then
    Exit;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  fDMCadParametros.cdsFolhaEncargos.Delete;
  fDMCadParametros.cdsFolhaEncargos.ApplyUpdates(0);  
end;

procedure TfrmCadParametros.BitBtn1Click(Sender: TObject);
var
  vAnt: Currency;
  vItemAux: Integer;
begin
  if not Assigned(fdmFuncionario) then
    fdmFuncionario := TdmCadFuncionario.Create(Self);

  fdmFuncionario.sdsFuncionario.CommandText := fdmFuncionario.sdsFuncionario.CommandText +
                                               ' WHERE INATIVO = ''N'' AND DTDEMISSAO IS NULL';
  fdmFuncionario.cdsFuncionario.Open;
  while not fdmFuncionario.cdsFuncionario.Eof do
  begin
    if fdmFuncionario.cdsFuncionarioINATIVO.AsString <> 'S' then
    begin
      fdmFuncionario.cdsFuncionario.Edit;
      vAnt := fdmFuncionario.cdsFuncionarioVLR_SALARIO.AsCurrency;
      fdmFuncionario.cdsFuncionarioVLR_SALARIO.AsCurrency := fdmFuncionario.cdsFuncionarioVLR_SALARIO.AsCurrency *
                                                             (1 + CurrencyEdit1.Value / 100);
      fdmFuncionario.cdsFuncionario.Post;
      fdmFuncionario.cdsFuncionario_Consulta.Last;
      vItemAux := fdmFuncionario.cdsFuncionario_ReajusteITEM.AsInteger;
      fdmFuncionario.cdsFuncionario_Reajuste.Insert;
      fdmFuncionario.cdsFuncionario_ReajusteCODIGO.AsInteger := fdmFuncionario.cdsFuncionarioCODIGO.AsInteger;
      fdmFuncionario.cdsFuncionario_ReajusteITEM.AsInteger   := vItemAux + 1;
      fdmFuncionario.cdsFuncionario_ReajusteDATA.AsDateTime  := DateEdit1.Date;
      fdmFuncionario.cdsFuncionario_ReajusteVALOR.AsCurrency := fdmFuncionario.cdsFuncionarioVLR_SALARIO.AsCurrency;
      fdmFuncionario.cdsFuncionario_ReajusteMOTIVO.AsString  := 'Dissídio (Salário Anterior: ' + FormatFloat('R$ 0.00',vAnt)+ ')';
      fdmFuncionario.cdsFuncionario_Reajuste.Post;
      fdmFuncionario.cdsFuncionario.ApplyUpdates(0);
    end;
    fdmFuncionario.cdsFuncionario.Next;
  end;
  if fdmFuncionario.Owner.ClassName  = Self.ClassName then
    FreeAndNil(fdmFuncionario);
end;

procedure TfrmCadParametros.SMDBGrid1DblClick(Sender: TObject);
begin
  frmCadFolhaEncargo := TfrmCadFolhaEncargo.Create(Self);
  frmCadFolhaEncargo.fDMCadParametros := fDMCadParametros;
  fDMCadParametros.cdsFolhaEncargos.Edit;
  frmCadFolhaEncargo.ShowModal;
end;

procedure TfrmCadParametros.DBCheckBox5Click(Sender: TObject);
begin
  DBCheckBox137.Visible := ((RxDBComboBox102.ItemIndex = 1) and (DBCheckBox5.Checked));
end;

procedure TfrmCadParametros.RxDBLookupCombo11Enter(Sender: TObject);
begin
  fDMCadParametros.cdsNCM.IndexFieldNames := 'NCM';
end;

procedure TfrmCadParametros.RxDBComboBox52Change(Sender: TObject);
begin
  TS_Conta_Orcamento.TabVisible := (RxDBComboBox52.ItemIndex = 0);
end;

procedure TfrmCadParametros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then //W
  begin
    DBCheckBox10.Visible  := True;
    DBCheckBox11.Visible  := True;
    DBCheckBox17.Visible  := True;
    DBCheckBox26.Visible  := True;
    DBCheckBox29.Visible  := True;
    DBCheckBox137.Visible := True;
  end
  else
  if (Shift = [ssCtrl]) and (Key = 83) then //S
  begin
    DBCheckBox31.Visible := True;
    DBCheckBox32.Visible := True;
    DBCheckBox35.Visible := True;
    DBCheckBox44.Visible := True;
    DBCheckBox47.Visible := True;
    DBCheckBox48.Visible := True;
    DBCheckBox91.Enabled := True;
  end;
end;

procedure TfrmCadParametros.DBEdit10Exit(Sender: TObject);
begin
  if (fDMCadParametros.cdsParametrosALTURA_ETIQ_ROT.AsInteger > 0) and (fDMCadParametros.cdsParametrosALTURA_ETIQ_ROT.AsInteger < 90) then
  begin
    ShowMessage('Altura não pode ser menor que 90mm!');
    exit;
  end;
end;

procedure TfrmCadParametros.RzPageControl2Change(Sender: TObject);
begin
  if RzPageControl2.ActivePage = TS_Comissao then
  begin                                     
    Label219.Visible        := (fDMCadParametros.cdsParametros_GeralUSA_PONTOS_LOCACAO.AsString = 'S');
    RxDBComboBox142.Visible := (fDMCadParametros.cdsParametros_GeralUSA_PONTOS_LOCACAO.AsString = 'S');
  end
  else
  if RzPageControl2.ActivePage = TabSheet2 then
  begin
    Label106.Visible          := (fDMCadParametros.cdsParametrosUSA_SPED.AsString = 'S');
    RxDBLookupCombo15.Visible := (fDMCadParametros.cdsParametrosUSA_SPED.AsString = 'S');
  end
  else
  if RzPageControl2.ActivePage = TabSheet6 then
  begin
    RxDBComboBox101.Visible   := (fDMCadParametros.cdsParametrosGRAVAR_NA_REF_CODPRODFORN.AsString = 'S');
    Label155.Visible          := (fDMCadParametros.cdsParametrosGRAVAR_NA_REF_CODPRODFORN.AsString = 'S');
    Label198.Visible          := (fDMCadParametros.cdsParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
    RxDBLookupCombo21.Visible := (fDMCadParametros.cdsParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
    Label203.Visible          := (fDMCadParametros.cdsParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
    RxDBLookupCombo24.Visible := (fDMCadParametros.cdsParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  end
  else
  if RzPageControl2.ActivePage = TabSheet4 then
  begin
    Label156.Visible        := (fDMCadParametros.cdsParametrosEMPRESA_CONTABIL.AsString = 'S');
    DBEdit12.Visible        := (fDMCadParametros.cdsParametrosEMPRESA_CONTABIL.AsString = 'S');
    RxDBComboBox101.Visible := (fDMCadParametros.cdsParametrosGRAVAR_NA_REF_CODPRODFORN.AsString = 'S');
    Label155.Visible        := (fDMCadParametros.cdsParametrosGRAVAR_NA_REF_CODPRODFORN.AsString = 'S');
  end
  else
  if RzPageControl2.ActivePage = TS_Estoque then
  begin
    Label176.Visible                 := (rxdbControlarEstoqueSaida.ItemIndex = 0);
    dbedtSenhaLiberarEstoque.Visible := (rxdbControlarEstoqueSaida.ItemIndex = 0);
  end
  else
  if RzPageControl2.ActivePage = TS_Produto then
  begin
    Label193.Visible          := (fDMCadParametros.cdsParametrosEMPRESA_SUCATA.AsString = 'S');
    RxDBLookupCombo20.Visible := (fDMCadParametros.cdsParametrosEMPRESA_SUCATA.AsString = 'S');
    Label291.Visible          := (fDMCadParametros.cdsParametros_ProdGERAR_REF_GRUPO.AsString = 'S');
    DBEdit43.Visible          := (fDMCadParametros.cdsParametros_ProdGERAR_REF_GRUPO.AsString = 'S');
    DBCheckBox252.Visible     := (fDMCadParametros.cdsParametros_ProdUSA_CONSUMO_COMB.AsString = 'S');
    DBCheckBox301.Visible     := (fDMCadParametros.cdsParametros_LoteLOTE_TEXTIL.AsString = 'S');
  end
  else
  if RzPageControl2.ActivePage = TS_Usuario then
  begin
    Label205.Visible        := (fDMCadParametros.cdsParametros_FinCONTROLAR_DUP_USUARIO.AsString = 'S');
    RxDBComboBox131.Visible := (fDMCadParametros.cdsParametros_FinCONTROLAR_DUP_USUARIO.AsString = 'S');
    RxDBComboBox69.Enabled  := (fDMCadParametros.cdsParametros_FinCONTROLE_DIG_PRECO.AsString = 'S');
    DBCheckBox196.Visible   := (fDMCadParametros.cdsParametros_PedUSA_FINANCEIRO_CONF.AsString = 'S');
    DBCheckBox197.Visible   := (fDMCadParametros.cdsParametros_PedUSA_FINANCEIRO_CONF.AsString = 'S');
    DBCheckBox243.Visible   := (fDMCadParametros.cdsParametros_FinUSA_APROVA_DUP.AsString = 'S');
  end
  else
  if RzPageControl2.ActivePage = TS_Financeiro then
  begin
    Label220.Visible    := (fDMCadParametros.cdsParametros_FinENVIAR_EMAIL_TITULOS_ATR.AsString = 'S');
    DBDateEdit1.Visible := (fDMCadParametros.cdsParametros_FinENVIAR_EMAIL_TITULOS_ATR.AsString = 'S');
    Label114.Visible    := (fDMCadParametros.cdsParametros_GeralEMPRESA_VAREJO.AsString = 'S');
    Label251.Visible    := (fDMCadParametros.cdsParametros_GeralEMPRESA_VAREJO.AsString = 'S');
    Label252.Visible    := (fDMCadParametros.cdsParametros_GeralEMPRESA_VAREJO.AsString = 'S');
    RxDBLookupCombo31.Visible := (fDMCadParametros.cdsParametros_GeralEMPRESA_VAREJO.AsString = 'S');
    RxDBLookupCombo32.Visible := (fDMCadParametros.cdsParametros_GeralEMPRESA_VAREJO.AsString = 'S');
    RxDBLookupCombo33.Visible := (fDMCadParametros.cdsParametros_GeralEMPRESA_VAREJO.AsString = 'S');
  end
  else
  if RzPageControl2.ActivePage = TS_Pedido then
  begin
    DBCheckBox30Click(Sender);
    DBCheckBox121.Visible := (fDMCadParametros.cdsParametrosUSA_VENDEDOR.AsString = 'S');
    DBCheckBox55Click(Sender);
  end
  else
  if RzPageControl2.ActivePage = TS_NotaFiscal then
  begin
    Label225.Visible        := (fDMCadParametros.cdsParametros_NFeSOMAR_IPI_NO_ICMS.AsString = 'S');
    RxDBComboBox120.Visible := (fDMCadParametros.cdsParametros_NFeSOMAR_IPI_NO_ICMS.AsString = 'S');
    RxDBComboBox151Click(Sender);
  end
  else
  if RzPageControl2.ActivePage = TS_NotaEntrada then
  begin
    DBCheckBox92.Visible  := (fDMCadParametros.cdsParametros_NTEATUALIZAR_CUSTO.AsString = 'S');
    DBCheckBox93.Visible  := (fDMCadParametros.cdsParametros_NTEATUALIZAR_CUSTO.AsString = 'S');
    DBCheckBox124.Visible := (fDMCadParametros.cdsParametros_NTEATUALIZAR_CUSTO.AsString = 'S');
    DBCheckBox173.Visible := (fDMCadParametros.cdsParametros_NTEATUALIZAR_CUSTO.AsString = 'S');
    DBCheckBox174.Visible := (fDMCadParametros.cdsParametros_NTEATUALIZAR_CUSTO.AsString = 'S');
  end
  else
  if RzPageControl2.ActivePage = TS_Etiqueta then
    prc_Configurar_Imp
  else
  if RzPageControl2.ActivePage = TS_Servico then
    DBCheckBox281.Visible := (fDMCadParametros.cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S');
end;

procedure TfrmCadParametros.RxDBComboBox53Exit(Sender: TObject);
begin
  if RxDBComboBox53.ItemIndex = 2 then
    fDMCadParametros.cdsParametrosLEI_TRANSPARENCIA_SERVICO.AsString := 'P2';
end;

procedure TfrmCadParametros.RxDBL_ContaServicoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chamar_Form_ContaOrc('ContaServico');
end;

procedure TfrmCadParametros.prc_Chamar_Form_ContaOrc(Nome: String);
begin
  vID_ContaOrcamento_Pos := 0;
  if TRxDBLookupCombo(FindComponent('RxDBL_'+Nome)).Text <> '' then
    vID_ContaOrcamento_Pos := TRxDBLookupCombo(FindComponent('RxDBL_'+Nome)).KeyValue;

  frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
  frmSel_ContaOrc.ShowModal;
  if vID_ContaOrcamento_Pos > 0 then
    TRxDBLookupCombo(FindComponent('RxDBL_'+Nome)).KeyValue := vID_ContaOrcamento_Pos;
end;

procedure TfrmCadParametros.RxDBL_ContaComissaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chamar_Form_ContaOrc('ContaComissao');
end;

procedure TfrmCadParametros.RxDBL_ContaJurosRecKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chamar_Form_ContaOrc('ContaJurosRec');
end;

procedure TfrmCadParametros.RxDBL_ContaJurosPagKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chamar_Form_ContaOrc('ContaJurosPag');
end;

procedure TfrmCadParametros.RxDBL_ContaTaxaBancariaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chamar_Form_ContaOrc('ContaTaxaBancaria');
end;

procedure TfrmCadParametros.RxDBL_ContaDespesaBancRecKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chamar_Form_ContaOrc('ContaDespesaBancRec');
end;

procedure TfrmCadParametros.RxDBL_ContaDespesaBancPagKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chamar_Form_ContaOrc('ontaDespesaBancPag');
end;

procedure TfrmCadParametros.Panel7Enter(Sender: TObject);
begin
  if (fDMCadParametros.cdsParametros_Usuario.IsEmpty) then
    RxDBLookupCombo12.SetFocus;
end;

procedure TfrmCadParametros.btnNFeClick(Sender: TObject);
begin
  if (RxDBLookupCombo12.Text) = '' then
  begin
    MessageDlg('*** Não foi informado o usuário', mtError, [mbOk], 0);
    RxDBLookupCombo12.SetFocus;
    exit;
  end;
  //if fDMCadParametros.cdsParametros_Usuario.Locate('Usuario',RxDBLookupCombo12.Text,([Locaseinsensitive])) then
  if fDMCadParametros.cdsParametros_Usuario.Locate('Usuario',RxDBLookupCombo12.Text,([])) then
  begin
    MessageDlg('*** Usuário já lançado nos parametros!', mtError, [mbOk], 0);
    RxDBLookupCombo12.ClearValue;
    RxDBLookupCombo12.SetFocus;
    exit;
  end;
  fDMCadParametros.cdsParametros_Usuario.Insert;
  fDMCadParametros.cdsParametros_UsuarioID.AsInteger     := fDMCadParametros.cdsParametrosID.AsInteger;
  fDMCadParametros.cdsParametros_UsuarioUSUARIO.AsString := RxDBLookupCombo12.Text;
  fDMCadParametros.cdsParametros_Usuario.Post;
end;

procedure TfrmCadParametros.DBCheckBox17Click(Sender: TObject);
begin
  Label147.Visible          := DBCheckBox17.Checked;
  RxDBLookupCombo16.Visible := DBCheckBox17.Checked;
end;

procedure TfrmCadParametros.RxDBComboBox27Change(Sender: TObject);
begin
  RxDBComboBox101.Visible := (RxDBComboBox27.ItemIndex = 0);
  Label155.Visible        := (RxDBComboBox27.ItemIndex = 0);
end;

procedure TfrmCadParametros.RxDBComboBox18Change(Sender: TObject);
begin
  DBCheckBox19.Visible := (RxDBComboBox18.ItemIndex = 0);
end;

procedure TfrmCadParametros.rxdbControlarEstoqueSaidaChange(Sender: TObject);
begin
  Label176.Visible                 := (rxdbControlarEstoqueSaida.ItemIndex = 0);
  dbedtSenhaLiberarEstoque.Visible := (rxdbControlarEstoqueSaida.ItemIndex = 0);
end;

procedure TfrmCadParametros.DBCheckBox34Click(Sender: TObject);
begin
  Label199.Visible := DBCheckBox34.Checked;
  RxDBLookupCombo23.Visible := DBCheckBox34.Checked;
  Label200.Visible := DBCheckBox34.Checked;
  RxDBLookupCombo22.Visible := DBCheckBox34.Checked;
end;

procedure TfrmCadParametros.DBMemo3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) or (Key = #10) then
    Key := ' ';
end;

procedure TfrmCadParametros.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) or (Key = #10) then
    Key := ' ';
end;

procedure TfrmCadParametros.RxDBL_ReceitaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chamar_Form_ContaOrc('Receita');
end;

procedure TfrmCadParametros.RxDBL_DespesaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chamar_Form_ContaOrc('Despesa');
end;

procedure TfrmCadParametros.RxDBComboBox143Change(Sender: TObject);
begin
  label220.Visible    := (RxDBComboBox143.ItemIndex = 0);
  DBDateEdit1.Visible := (RxDBComboBox143.ItemIndex = 0);
end;

procedure TfrmCadParametros.DBCheckBox30Click(Sender: TObject);
begin
  Label180.Visible          := DBCheckBox30.Checked;
  RxDBLookupCombo25.Visible := DBCheckBox30.Checked;
end;

procedure TfrmCadParametros.RxDBComboBox139Click(Sender: TObject);
begin
  Label225.Visible        := (RxDBComboBox139.ItemIndex = 0);
  RxDBComboBox120.Visible := (RxDBComboBox139.ItemIndex = 0);
end;

procedure TfrmCadParametros.DBMemo4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) or (Key = #10) then
    Key := ' ';
end;

procedure TfrmCadParametros.DBCheckBox75Click(Sender: TObject);
begin
  Label232.Visible       := (DBCheckBox75.Checked);
  DirectoryEdit7.Visible := (DBCheckBox75.Checked);
end;

procedure TfrmCadParametros.DBMemo6KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) or (Key = #10) then
    Key := ' ';
end;

procedure TfrmCadParametros.RxDBComboBox149Click(Sender: TObject);
begin
  DBCheckBox92.Visible  := (RxDBComboBox149.ItemIndex = 0);
  DBCheckBox93.Visible  := (RxDBComboBox149.ItemIndex = 0);
  DBCheckBox124.Visible := (RxDBComboBox149.ItemIndex = 0);
  DBCheckBox173.Visible := (RxDBComboBox149.ItemIndex = 0);
  DBCheckBox174.Visible := (RxDBComboBox149.ItemIndex = 0);
end;

procedure TfrmCadParametros.RxDBComboBox151Click(Sender: TObject);
begin
  Label250.Visible        := (RxDBComboBox151.ItemIndex = 0);
  RxDBComboBox152.Visible := (RxDBComboBox151.ItemIndex = 0);
end;

procedure TfrmCadParametros.RxDBComboBox12Exit(Sender: TObject);
begin
  DBCheckBox118.Visible := (fDMCadParametros.cdsParametrosUSA_VENDEDOR.AsString = 'S');
end;

procedure TfrmCadParametros.BitBtn2Click(Sender: TObject);
begin
  OpenPictureDialog1.Execute;
  if not(fDMCadParametros.cdsParametros_Geral.State in [dsEdit]) then
  begin
    fDMCadParametros.cdsParametros_Geral.Edit;
    fDMCadParametros.cdsParametros_GeralEND_ASSINATURA.AsString := OpenPictureDialog1.FileName;
  end;
end;

procedure TfrmCadParametros.RxDBComboBox102Click(Sender: TObject);
begin
  DBCheckBox132.Visible := ((RxDBComboBox102.ItemIndex = 0) or (RxDBComboBox102.ItemIndex = 1));

  DBCheckBox137.Visible := ((RxDBComboBox102.ItemIndex = 1) and (fDMCadParametros.cdsParametros_LoteLOTE_TEXTIL.AsString = 'S'));
end;

procedure TfrmCadParametros.RxDBComboBox161Change(Sender: TObject);
begin
  prc_Configurar_Imp;
end;

procedure TfrmCadParametros.prc_Configurar_Imp;
begin
  Label266.Visible := (RxDBComboBox161.ItemIndex = 0);
  DBEdit36.Visible := (RxDBComboBox161.ItemIndex = 0);
  Label267.Visible := (RxDBComboBox161.ItemIndex = 0);
  DBEdit37.Visible := (RxDBComboBox161.ItemIndex = 0);
  Label270.Visible := (RxDBComboBox161.ItemIndex = 0);
  Label271.Visible := (RxDBComboBox161.ItemIndex = 0);

  Label293.Visible  := (RxDBComboBox161.ItemIndex = 0);
  DBEdit45.Visible  := (RxDBComboBox161.ItemIndex = 0);
  Label294.Visible  := (RxDBComboBox161.ItemIndex = 0);

  Label292.Visible  := (RxDBComboBox161.ItemIndex = 1);
  DBEdit44.Visible  := (RxDBComboBox161.ItemIndex = 1);
  Label295.Visible  := (RxDBComboBox161.ItemIndex = 1);

  if RxDBComboBox161.ItemIndex = 0 then
  begin
    Label272.Caption := 'valores válidos: de 0 a 20     (Padrão 10)';
    Label273.Caption := 'valores válidos: de A a E    (Padrão C)';
  end
  else
  if RxDBComboBox161.ItemIndex = 1 then
  begin
    Label272.Caption := 'valores válidos: de 1 a 30     (Padrão 20)';
    Label273.Caption := 'valores válidos: de 1 a 6    (Padrão 3)';
  end;
end;

procedure TfrmCadParametros.RxDBComboBox160KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 27) then //ESC
    RxDBComboBox160.ItemIndex := -1;
end;

procedure TfrmCadParametros.RxDBComboBox161KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 27) then //ESC
    RxDBComboBox161.ItemIndex := -1;
end;

procedure TfrmCadParametros.DBCheckBox55Click(Sender: TObject);
begin
  Label283.Visible := (DBCheckBox55.Checked);
  DBEdit42.Visible := (DBCheckBox55.Checked);
end;

procedure TfrmCadParametros.DBCheckBox204Click(Sender: TObject);
begin
  Label291.Visible := (DBCheckBox204.Checked);
  DBEdit43.Visible := (DBCheckBox204.Checked);
end;

procedure TfrmCadParametros.DBCheckBox19Click(Sender: TObject);
begin
  DBCheckBox206.Visible := (DBCheckBox19.Checked);
end;

procedure TfrmCadParametros.DBCheckBox27Click(Sender: TObject);
begin
  if (DBCheckBox27.Checked) and (fDMCadParametros.cdsParametros_Lote.State in [dsEdit]) then
    fDMCadParametros.cdsParametros_LoteLOTE_PROCESSO.AsString := 'N';
  Label311.Visible          := DBCheckBox27.Checked;
  RxDBLookupCombo37.Visible := DBCheckBox27.Checked;
end;

procedure TfrmCadParametros.DBCheckBox232Click(Sender: TObject);
begin
  if (DBCheckBox32.Checked) and (fDMCadParametros.cdsParametros_Lote.State in [dsEdit]) and (fDMCadParametros.cdsParametros_LoteLOTE_TEXTIL.AsString = 'S') then
    MessageDlg('*** Verificar o campo "Usa Lote Textil" esta marcado!', mtInformation, [mbOk], 0);
end;

procedure TfrmCadParametros.NxButton1Click(Sender: TObject);
begin
  MessageDlg('Senha que controla a alteração do Produto depois de calculado o Custo!', mtConfirmation, [mbOk], 0);
end;

procedure TfrmCadParametros.DBCheckBox137Click(Sender: TObject);
begin
  DBCheckBox252.Visible := DBCheckBox137.Checked;
end;

procedure TfrmCadParametros.DBCheckBox270Click(Sender: TObject);
begin
  DBCheckBox298.Visible := DBCheckBox270.Checked;
end;

procedure TfrmCadParametros.DBCheckBox294Exit(Sender: TObject);
begin
  Label161.Visible        := not(DBCheckBox294.Checked);
  RxDBComboBox106.Visible := not(DBCheckBox294.Checked);
  if (fDMCadParametros.cdsParametros.State in [dsEdit,dsInsert]) and (DBCheckBox294.Checked) then
    fDMCadParametros.cdsParametrosMOSTRAR_LINHA_PROD.AsString := 'N';
end;

end.
