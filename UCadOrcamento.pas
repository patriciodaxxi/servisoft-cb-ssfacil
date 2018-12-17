unit UCadOrcamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPedido, DB, SqlExpr, 
  DBGrids, ExtCtrls, StdCtrls, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, RXDBCtrl, UCadOrcamento_Itens, UEscolhe_Filial,
  UCBase, Menus, NxEdit, NxCollection, UDMRel, UCadOrcamento_Aprov, Variants, Mask, RzTabs, RzPanel, UCadPedido_Desconto, ComObj,
  UCadPedido_Ace, uCadObs_Aux, UCadPedido_ItensRed;

type
  TfrmCadOrcamento = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    lblCliente: TLabel;
    edtCliente: TEdit;
    StaticText1: TStaticText;
    lblNumNota: TLabel;
    cePedInterno: TCurrencyEdit;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    pnlCliente: TPanel;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label22: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Panel10: TPanel;
    Label76: TLabel;
    Label80: TLabel;
    DBEdit47: TDBEdit;
    DBEdit52: TDBEdit;
    Panel11: TPanel;
    SpeedButton1: TSpeedButton;
    pnlNota: TPanel;
    Label16: TLabel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    UCControls1: TUCControls;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton4: TSpeedButton;
    Label11: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label38: TLabel;
    DBEdit14: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnImprimir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label33: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    Shape2: TShape;
    Label8: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label13: TLabel;
    PopupMenu1: TPopupMenu;
    Normal1: TMenuItem;
    amanho1: TMenuItem;
    amanhoSemMaterial1: TMenuItem;
    ckMeiaFolha: TCheckBox;
    ckImpFoto: TCheckBox;
    Label43: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label19: TLabel;
    DBEdit3: TDBEdit;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    pnlItem: TPanel;
    Shape5: TShape;
    Label14: TLabel;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    pnlMaterial: TPanel;
    SMDBGrid3: TSMDBGrid;
    SMDBGrid4: TSMDBGrid;
    pnlTipoItem: TPanel;
    SMDBGrid6: TSMDBGrid;
    TabSheet1: TRzTabSheet;
    pnlServico: TPanel;
    btnInserir_Serv: TNxButton;
    btnAlterar_Serv: TNxButton;
    btnExcluir_Serv: TNxButton;
    SMDBGrid5: TSMDBGrid;
    DBMemo2: TDBMemo;
    RzTabSheet2: TRzTabSheet;
    pnlTransporte_Geral: TPanel;
    RzGroupBox1: TRzGroupBox;
    DBMemo1: TDBMemo;
    TS_Valores: TRzTabSheet;
    btnCalcular_Valores: TBitBtn;
    btnDesconto: TBitBtn;
    DBEdit6: TDBEdit;
    DBEdit19: TDBEdit;
    gbxIcms: TGroupBox;
    Label29: TLabel;
    Label40: TLabel;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    gbxSubstituicao: TGroupBox;
    Label46: TLabel;
    Label53: TLabel;
    DBEdit18: TDBEdit;
    DBEdit33: TDBEdit;
    gbxTransfIcms: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    pnlValores: TPanel;
    Label24: TLabel;
    Label26: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label27: TLabel;
    Label39: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    cbxTipo: TComboBox;
    Label21: TLabel;
    DBEdit10: TDBEdit;
    ckImpPeso: TCheckBox;
    pnlVidro: TPanel;
    SMDBGrid7: TSMDBGrid;
    pnlPorta: TPanel;
    SMDBGrid8: TSMDBGrid;
    TS_Trilhos: TRzTabSheet;
    Label23: TLabel;
    DBEdit11: TDBEdit;
    Panel3: TPanel;
    btnInserir_Trilhos: TNxButton;
    btnAlterar_Trilhos: TNxButton;
    btnExcluir_Trilhos: TNxButton;
    SMDBGrid9: TSMDBGrid;
    TS_Roldanas: TRzTabSheet;
    Panel4: TPanel;
    btnInserir_Roldanas: TNxButton;
    btnAlterar_Roldanas: TNxButton;
    btnExcluir_Roldanas: TNxButton;
    SMDBGrid10: TSMDBGrid;
    pnlAcessorios: TPanel;
    Label25: TLabel;
    Label31: TLabel;
    DBEdit16: TDBEdit;
    DBEdit21: TDBEdit;
    gbImpressao: TGroupBox;
    cbPorta: TCheckBox;
    cbVidro: TCheckBox;
    ckImpPreco: TCheckBox;
    Label28: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label30: TLabel;
    DBEdit17: TDBEdit;
    btnLucratividade: TNxButton;
    Label32: TLabel;
    DBEdit20: TDBEdit;
    Label34: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Excel1: TMenuItem;
    N1: TMenuItem;
    btnLimparOrc: TNxButton;
    Label35: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label36: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label37: TLabel;
    DBDateEdit4: TDBDateEdit;
    pnlObservacao: TPanel;
    Label81: TLabel;
    RxDBLookupCombo11: TRxDBLookupCombo;
    SpeedButton8: TSpeedButton;
    BitBtn2: TBitBtn;
    Personalizado1: TMenuItem;
    Label41: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pnlClienteEnter(Sender: TObject);
    procedure edtPedClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cePedInternoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure btnCalcular_ValoresClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Normal1Click(Sender: TObject);
    procedure amanho1Click(Sender: TObject);
    procedure amanhoSemMaterial1Click(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure btnInserir_ServClick(Sender: TObject);
    procedure btnDescontoClick(Sender: TObject);
    procedure btnAlterar_ServClick(Sender: TObject);
    procedure btnInserir_TrilhosClick(Sender: TObject);
    procedure btnAlterar_TrilhosClick(Sender: TObject);
    procedure btnExcluir_TrilhosClick(Sender: TObject);
    procedure btnInserir_RoldanasClick(Sender: TObject);
    procedure btnAlterar_RoldanasClick(Sender: TObject);
    procedure btnExcluir_RoldanasClick(Sender: TObject);
    procedure btnExcluir_ServClick(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure btnLucratividadeClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Excel1Click(Sender: TObject);
    procedure btnLimparOrcClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure pnlObservacaoEnter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    vVlrFreteAnt: Real;
    vID_ClienteAnt: Integer;
    fDMCadPedido: TDMCadPedido;
    fLista : TStringList;
    ffrmCadOrcamento_Itens: TfrmCadOrcamento_Itens;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmCadOrcamento_Aprov: TfrmCadOrcamento_Aprov;
    ffrmCadPedido_Desconto: TfrmCadPedido_Desconto;
    ffrmCadPedido_Ace: TfrmCadPedido_Ace;
    ffrmCadPedido_ItensRed: TfrmCadPedido_ItensRed;
    ffrmCadObs_Aux: TfrmCadObs_Aux;
    procedure ItemClick(Sender:TObject);
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_Pedido;
    procedure prc_Posicionar_Cliente;

    procedure prc_Habilitar_CamposNota;

    function fnc_Verifica_Registro: Boolean;

    procedure prc_Limpar_Edit_Consulta;

    function fnc_Posicionar_Orcamento: Boolean;

    procedure prc_Posiciona_Imp;
    procedure prc_Opcao_Consumidor;
    //procedure prc_Monta_Itens_Imp;
    procedure prc_scroll(DataSet: TDataSet);
    procedure prc_CriaExcel(vDados: TDataSource);
    procedure prc_Abre_Filial_Menu(Empresa : Integer; Tipo : Integer);    
  public
    { Public declarations }
    function fnc_verificar_CFOP(ID: Integer): Boolean;
    function tbKeyIsDown(const Key: integer): boolean;
  end;

var
  frmCadOrcamento: TfrmCadOrcamento;

implementation

uses DateUtils, DmdDatabase, rsDBUtils, uUtilPadrao, uRelOrcamento, USel_Pessoa, URelPedido_Tam, URelPedido_Tam2, uUtilCliente,
  uRelOrcamento_JW, UCadOrcamento_Servicos, uCalculo_Pedido, UCadPedido_Custo, UCadPedido_Copia, UConsHist_Chapa,
  uGrava_Pedido;

{$R *.dfm}

procedure TfrmCadOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMCadPedido);
  Action := Cafree;
end;

procedure TfrmCadOrcamento.btnExcluirClick(Sender: TObject);
var
  vMsgAux: String;
begin
  if not fnc_Verifica_Registro then
    Exit;

{  if tbKeyIsDown(VK_CONTROL) then
  begin
  end;
}
  prc_Posiciona_Pedido;
  if fDMCadPedido.cdsPedido.IsEmpty then
    exit;
  vMsgAux := '';
  fDMCadPedido.cdsPedido_Itens.First;
  while not fDMCadPedido.cdsPedido_Itens.Eof do
  begin
    if (fDMCadPedido.cdsPedido_ItensAPROVADO_ORC.AsString = 'A') then
      vMSGAux := vMSGAux + #13 + '*** Item foi Aprovado!';
    if (fDMCadPedido.cdsPedido_ItensAPROVADO_ORC.AsString = 'N') then
      vMSGAux := vMSGAux + #13 + '*** Item foi Reprovado!';
    if trim(vMsgAux) <> '' then
      fDMCadPedido.cdsPedido_Itens.Last;
    fDMCadPedido.cdsPedido_Itens.Next;
  end;
  if Trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux, mtInformation, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  prc_Excluir_Registro;
  btnConsultarClick(Sender);
end;

procedure TfrmCadOrcamento.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadOrcamento.prc_Excluir_Registro;
begin
  uGrava_Pedido.prc_Excluir_Pedido(fDMCadPedido);
end;

procedure TfrmCadOrcamento.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vParcelaAux: Integer;
begin
  uGrava_Pedido.prc_Gravar(fDMCadPedido,'ORC');
  vIDAux := fDMCadPedido.cdsPedidoID.AsInteger;
  if fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadPedido.vMSGErro, mtError, [mbOk], 0);
    exit;
  end;

  TS_Consulta.TabEnabled    := True;
  prc_Habilitar_CamposNota;
  
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Consultar(vIDAux);
  prc_Posiciona_Pedido;
end;

procedure TfrmCadOrcamento.prc_Inserir_Registro;
begin
  if fDMCadPedido.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadPedido.cdsFilial.Last;
    vFilial      := fDMCadPedido.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadPedido.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDMCadPedido.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  fDMCadPedido.prc_Inserir;
  lblNome_Filial.Caption := vFilial_Nome;
  fDMCadPedido.cdsPedidoTIPO_REG.AsString := 'O';

  if fDMCadPedido.cdsPedido.State in [dsBrowse] then
    exit;

  prc_Habilitar_CamposNota;

  if fDMCadPedido.cdsFilialSIMPLES.AsString = 'S' then
    fDMCadPedido.prc_Abrir_CSTICMS('S')
  else
    fDMCadPedido.prc_Abrir_CSTICMS('N');

  if (fDMCadPedido.cdsParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadPedido.qParametros_PedUSAR_VEND_USUARIO.AsString = 'S') then
  begin
    fDMCadPedido.qUsuario.Close;
    fDMCadPedido.qUsuario.ParamByName('USUARIO_LOG').AsString := vUsuario;
    fDMCadPedido.qUsuario.Open;
    if fDMCadPedido.qUsuarioCODIGO.AsInteger > 0 then
      fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger := fDMCadPedido.qUsuarioCODIGO.AsInteger;
  end;


  fDMCadPedido.cdsPedidoID_REGIMETRIB.AsInteger := fDMCadPedido.cdsFilialID_REGIME_TRIB.AsInteger;
  fDMCadPedido.cdsPedidoSIMPLES_FILIAL.AsString := fDMCadPedido.cdsFilialSIMPLES.AsString;

  RzPageControl1.ActivePage := TS_Cadastro;

  fDMCadPedido.prc_Abrir_cdsCFOP('S');
end;

procedure TfrmCadOrcamento.FormShow(Sender: TObject);
var
  i: Integer;
  vTexto: String;
begin
  fDMCadPedido := TDMCadPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);

  DateEdit2.Date := Date;
  if fDMCadPedido.qParametros_PedCONS_PREENCHER_DTINI.AsString = 'S' then
    DateEdit1.Date := EncodeDate(YearOf(Date),MonthOf(Date),01)
  else
    DateEdit1.Clear;

  fDMCadPedido.prc_Abrir_cdsCliente;
  fDMCadPedido.cdsTab_CSTICMS.Open;
  fDMCadPedido.cdsTab_CSTIPI.Open;

  pnlMaterial.Visible := (fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S');
  pnlTipoItem.Visible := (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S');
  ckMeiaFolha.Visible := ((amanho1.Enabled) and (amanho1.Visible));
  if ckMeiaFolha.Visible then
    ckMeiaFolha.Checked := (fDMCadPedido.cdsParametrosEMPRESA_NAVALHA.AsString = 'S');
  fDMCadPedido.prc_Abrir_cdsCFOP('S');
  ckMeiaFolha.Visible := (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString <> 'S');
  ckImpFoto.Visible   := (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S');
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    vTexto := SMDBGrid1.Columns[i].FieldName;
    if vTexto = 'NOME_CONSUMIDOR' then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger > 0);
  end;

  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'PERC_COMISSAO') then
      SMDBGrid2.Columns[i].Visible := (fDMCadPedido.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I');
  end;

  ckImpPeso.Visible := (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S');
  fDMCadPedido.cdsPedido_Itens.AfterScroll := prc_scroll;
  TS_Trilhos.TabVisible  := (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S');
  TS_Roldanas.TabVisible := (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S');
  pnlAcessorios.Visible  := (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S');
  gbImpressao.Visible    := (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S');
  ckImpPreco.Visible     := True;// (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S');
  Label28.Visible        := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P');
  DBDateEdit2.Visible    := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P');

  Label7.Visible           := (fDMCadPedido.cdsParametrosUSA_VENDEDOR.AsString = 'S');
  RxDBLookupCombo6.Visible := (fDMCadPedido.cdsParametrosUSA_VENDEDOR.AsString = 'S');
  Label30.Visible          := (fDMCadPedido.cdsParametrosUSA_VENDEDOR.AsString = 'S');
  DBEdit17.Visible         := (fDMCadPedido.cdsParametrosUSA_VENDEDOR.AsString = 'S');

  btnLucratividade.Visible := (fDMCadPedido.qParametros_PedINF_LUCRATIVIDADE.AsString = 'S');
  Label32.Visible          := (fDMCadPedido.qParametros_PedUSA_EMAIL_NO_PED.AsString = 'S');
  DBEdit20.Visible         := (fDMCadPedido.qParametros_PedUSA_EMAIL_NO_PED.AsString = 'S');

  Label34.Visible          := ((fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') or (fDMCadPedido.qParametros_PedMOSTRAR_FONE.AsString = 'S'));
  DBEdit22.Visible         := ((fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') or (fDMCadPedido.qParametros_PedMOSTRAR_FONE.AsString = 'S'));
  DBEdit23.Visible         := ((fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') or (fDMCadPedido.qParametros_PedMOSTRAR_FONE.AsString = 'S'));

  Label35.Visible     := (fDMCadPedido.qParametros_PedMOSTRAR_DT_REC.AsString = 'S');
  DBDateEdit3.Visible := (fDMCadPedido.qParametros_PedMOSTRAR_DT_REC.AsString = 'S');

  Label36.Visible := (fDMCadPedido.qParametros_PedMOSTRAR_GRUPO_PESSOA.AsString = 'S');
  RxDBLookupCombo5.Visible := (fDMCadPedido.qParametros_PedMOSTRAR_GRUPO_PESSOA.AsString = 'S');
  if fDMCadPedido.qParametros_PedMOSTRAR_GRUPO_PESSOA.AsString <> 'S' then
  begin
    SpeedButton4.Left      := 433;
    RxDBLookupCombo2.Width := 357;
  end
  else
  begin
    SpeedButton4.Left      := 265;
    RxDBLookupCombo2.Width := 187;
  end;
  Label2.Visible      := ((fDMCadPedido.qParametros_PedUSA_DTVALIDADE.AsString = 'N') or (fDMCadPedido.qParametros_PedUSA_DTVALIDADE.IsNull));
  DBEdit2.Visible     := ((fDMCadPedido.qParametros_PedUSA_DTVALIDADE.AsString = 'N') or (fDMCadPedido.qParametros_PedUSA_DTVALIDADE.IsNull));
  Label37.Visible     := (fDMCadPedido.qParametros_PedUSA_DTVALIDADE.AsString = 'S');
  DBDateEdit4.Visible := (fDMCadPedido.qParametros_PedUSA_DTVALIDADE.AsString = 'S');
  prc_Abre_Filial_Menu(1,1);
end;

procedure TfrmCadOrcamento.prc_Consultar(ID: Integer);
begin
  fDMCadPedido.cdsPedido_Consulta.Close;
  fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.ctConsulta + ' WHERE PED.TIPO_REG = ' + QuotedStr('O');
  if (cePedInterno.AsInteger > 0) then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.NUM_ORCAMENTO = ' + cePedInterno.Text
  else
  if ID > 0 then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.ID = ' + IntToStr(ID)
  else
  begin
    if not(RxDBLookupCombo1.Text = '') then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                     ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if DateEdit1.Date > 10 then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.DTEMISSAO >= ' +
                                                     QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.DTEMISSAO <= ' +
                                                     QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    if Trim(edtCliente.Text) <> '' then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText
                                                     + ' AND CLI.NOME LIKE ' + QuotedStr('%'+edtCliente.Text+'%');
    if cbxTipo.ItemIndex = 0 then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND (APROVADO_ORC = ' + QuotedStr('R')
                                                   + ' OR APROVADO_ORC = ' + QuotedStr('P') + ')'
    else
    if cbxTipo.ItemIndex = 1 then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND (APROVADO_ORC = ' + QuotedStr('A') + ')'
    else
    if cbxTipo.ItemIndex = 2 then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND (APROVADO_ORC = ' + QuotedStr('N') + ')';
  end;
  fDMCadPedido.cdsPedido_Consulta.Open;
end;

procedure TfrmCadOrcamento.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadOrcamento.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido.State in [dsBrowse]) or not(fDMCadPedido.cdsPedido.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPedido.cdsPedido.CancelUpdates;

  prc_Habilitar_CamposNota;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadOrcamento.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadOrcamento.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido.IsEmpty) or not(fDMCadPedido.cdsPedido.Active) or (fDMCadPedido.cdsPedidoID.AsInteger < 1) then
    exit;

  fDMCadPedido.cdsPedido.Edit;
  TS_Consulta.TabEnabled := False;
  prc_Habilitar_CamposNota;

  prc_Posicionar_Cliente;    

  fDMCadPedido.prc_Abrir_cdsCFOP('S');

  if fDMCadPedido.cdsFilialSIMPLES.AsString = 'S' then
    fDMCadPedido.prc_Abrir_CSTICMS('S')
  else
    fDMCadPedido.prc_Abrir_CSTICMS('N');
end;

procedure TfrmCadOrcamento.btnConfirmarClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger < 1 then
    fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := 0;
  prc_Gravar_Registro;
end;

procedure TfrmCadOrcamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPedido);
end;

procedure TfrmCadOrcamento.prc_Posiciona_Pedido;
begin
  fDMCadPedido.prc_Localizar(fDMCadPedido.cdsPedido_ConsultaID.AsInteger);
  fDMCadPedido.cdsPedido_Itens.Close;
  fDMCadPedido.cdsPedido_Itens.Open;
  vFilial      := fDMCadPedido.cdsPedidoFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadPedido.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadPedido.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;
end;

function TfrmCadOrcamento.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or
        (fDMCadPedido.cdsPedido_ConsultaID.AsInteger < 1) then
    Exit;
  Result := True;
end;

procedure TfrmCadOrcamento.btnExcluir_ItensClick(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Itens.Active) and (fDMCadPedido.cdsPedido_Itens.IsEmpty) or (fDMCadPedido.cdsPedido_ItensITEM.AsInteger < 1) then
    exit;
  if fDMCadPedido.cdsPedido_ItensAPROVADO_ORC.AsString = 'A' then
  begin
    MessageDlg('Item do orçamento esta aprovado, não pode ser excluido!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadPedido.cdsPedido_ItensAPROVADO_ORC.AsString = 'A' then
  begin
    MessageDlg('Item do orçamento esta reprovado, não pode ser excluido!', mtError, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  uGrava_Pedido.prc_Excluir_Item_Ped(fDMCadPedido);

  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadOrcamento.btnInserir_ItensClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger > 0 then
  begin
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
    if trim(fDMCadPedido.cdsClienteUF.AsString) = '' then
    begin
      MessageDlg('*** Cliente sem UF!', mtError, [mbOk], 0);
      Exit;
    end;
  end;

  fDMCadPedido.prc_Inserir_Itens;

  if fDMCadPedido.qParametros_PedUSA_ITEM_RED.AsString = 'S' then
  begin
    ffrmCadPedido_ItensRed := TfrmCadPedido_ItensRed.Create(self);
    ffrmCadPedido_ItensRed.fDMCadPedido   := fDMCadPedido;
    ffrmCadPedido_ItensRed.vMostrar_Preco := True;
    ffrmCadPedido_ItensRed.ShowModal;
    FreeAndNil(ffrmCadPedido_ItensRed);
  end
  else
  begin
    ffrmCadOrcamento_Itens := TfrmCadOrcamento_Itens.Create(self);
    ffrmCadOrcamento_Itens.fDMCadPedido := fDMCadPedido;
    ffrmCadOrcamento_Itens.ShowModal;
    FreeAndNil(ffrmCadOrcamento_Itens);
  end;
  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadOrcamento.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_Pedido;
      prc_Opcao_Consumidor;
    end;
  end;
end;

procedure TfrmCadOrcamento.btnAlterar_ItensClick(Sender: TObject);
var
  vMSGAux: String;
begin
  vMSGAux := '';
  if (fDMCadPedido.cdsPedido_Itens.IsEmpty) or (fDMCadPedido.cdsPedido_ItensITEM.AsInteger <= 0) then
    exit;
  if (fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat > 0) then
    vMSGAux := vMSGAux + #13 + '*** Item já possui quantidade faturada!';
  if (fDMCadPedido.cdsPedido_ItensQTD_CANCELADO.AsFloat > 0) then
    vMSGAux := vMSGAux + #13 + '*** Item quantidade cancelada!';
  if (fDMCadPedido.cdsPedido_ItensAPROVADO_ORC.AsString = 'A') then
    vMSGAux := vMSGAux + #13 + '*** Item foi Aprovado!';
  if (fDMCadPedido.cdsPedido_ItensAPROVADO_ORC.AsString = 'N') then
    vMSGAux := vMSGAux + #13 + '*** Item foi Reprovado!';
  if Trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux, mtError, [mbOk], 0);
    exit;
  end;

  fDMCadPedido.cdsPedido_Itens.Edit;

  if fDMCadPedido.qParametros_PedUSA_ITEM_RED.AsString = 'S' then
  begin
    ffrmCadPedido_ItensRed := TfrmCadPedido_ItensRed.Create(self);
    ffrmCadPedido_ItensRed.fDMCadPedido   := fDMCadPedido;
    ffrmCadPedido_ItensRed.vMostrar_Preco := True;
    ffrmCadPedido_ItensRed.ShowModal;
    FreeAndNil(ffrmCadPedido_ItensRed);
  end
  else
  begin
    ffrmCadOrcamento_Itens := TfrmCadOrcamento_Itens.Create(self);
    ffrmCadOrcamento_Itens.fDMCadPedido := fDMCadPedido;
    ffrmCadOrcamento_Itens.ShowModal;
    FreeAndNil(ffrmCadOrcamento_Itens);
  end;

  btnCalcular_ValoresClick(Sender);
end;

function TfrmCadOrcamento.fnc_verificar_CFOP(ID: Integer): Boolean;
var
  vCodigo: String;
  vMsgErroAux: String;
begin
  Result := False;
  if fDMCadPedido.cdsPedidoID_CFOP.AsInteger <= 0 then
    exit;
  if fDMCadPedido.cdsPedidoID_CFOP.AsInteger <> ID then
    fDMCadPedido.cdsCFOP.Locate('ID',fDMCadPedido.cdsPedidoID_CFOP.AsInteger,[loCaseInsensitive]);
  vCodigo     := fDMCadPedido.cdsCFOPCODCFOP.AsString;
  vMsgErroAux := '';
  if vCodigo <> '' then
  begin
    if ((Copy(vCodigo,1,1) = '5') or (Copy(vCodigo,1,1) = '6') or (Copy(vCodigo,1,1) = '7')) then
      vMsgErroAux := vMsgErroAux + #13 + 'Natureza é de saída!'
    else
    if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger > 0 then
    begin
      if (fDMCadPedido.vSiglaUF <> fDMCadPedido.cdsFilialUF.AsString) and ((Copy(vCodigo,1,1) = '1') or (Copy(vCodigo,1,1) = '5')) then
        vMsgErroAux := vMsgErroAux + #13 + 'Natureza inválida para o estado!'
      else
      if (fDMCadPedido.vSiglaUF = fDMCadPedido.cdsFilialUF.AsString) and ((Copy(vCodigo,1,1) <> '5') and (Copy(vCodigo,1,1) <> '1')) then
        vMsgErroAux := vMsgErroAux + #13 + 'Natureza inválida para o estado!';
    end;
  end;
  if trim(vMsgErroAux) <> '' then
  begin
    MessageDlg(vMsgErroAux, mtError, [mbOk], 0);
    exit;
  end;
  Result := True;
end;

procedure TfrmCadOrcamento.prc_Posicionar_Cliente;
begin
  fDMCadPedido.vAliqIcms := 0;
  fDMCadPedido.vSiglaUF  := '';
  if fDMCadPedido.cdsClienteCODIGO.AsInteger <> fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if fDMCadPedido.cdsUFUF.AsString  <> fDMCadPedido.cdsClienteUF.AsString then
    fDMCadPedido.cdsUF.Locate('UF',fDMCadPedido.cdsClienteUF.AsString,[loCaseInsensitive]);
  if (fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger > 0) and (fDMCadPedido.cdsVendedorCODIGO.AsInteger <>
      fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger) then
    fDMCadPedido.cdsVendedor.Locate('CODIGO',fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger,[loCaseInsensitive]);
  if (fDMCadPedido.cdsFilialID.AsInteger <> fDMCadPedido.cdsPedidoFILIAL.AsInteger) then
    fDMCadPedido.cdsFilial.Locate('CODIGO',fDMCadPedido.cdsPedidoFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadPedido.vAliqIcms := fDMCadPedido.cdsUFPERC_ICMS.AsFloat;
  fDMCadPedido.vSiglaUF  := fDMCadPedido.cdsClienteUF.AsString;
end;

procedure TfrmCadOrcamento.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMCadPedido.cdsCliente.IndexFieldNames := 'NOME';
  vID_ClienteAnt := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
end;

procedure TfrmCadOrcamento.prc_Habilitar_CamposNota;
begin
  pnlItem.Enabled          := not(pnlItem.Enabled);
  pnlServico.Enabled       := not(pnlServico.Enabled);

  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  btnAlterar.Enabled       := not(btnAlterar.Enabled);

  btnInserir_Itens.Enabled := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled := not(btnExcluir_Itens.Enabled);

  btnInserir_Serv.Enabled := not(btnInserir_Serv.Enabled);
  btnAlterar_Serv.Enabled := not(btnAlterar_Serv.Enabled);
  btnExcluir_Serv.Enabled := not(btnExcluir_Serv.Enabled);

  btnInserir_Trilhos.Enabled := not(btnInserir_Trilhos.Enabled);
  btnAlterar_Trilhos.Enabled := not(btnAlterar_Trilhos.Enabled);
  btnExcluir_Trilhos.Enabled := not(btnExcluir_Trilhos.Enabled);

  btnInserir_Roldanas.Enabled := not(btnInserir_Roldanas.Enabled);
  btnAlterar_Roldanas.Enabled := not(btnAlterar_Roldanas.Enabled);
  btnExcluir_Roldanas.Enabled := not(btnExcluir_Roldanas.Enabled);

  DBMemo1.ReadOnly         := not(DBMemo1.ReadOnly);
  pnlCadastro.Enabled      := not(pnlCadastro.Enabled);
  pnlObservacao.Enabled    := not(pnlObservacao.Enabled);

  btnCalcular_Valores.Enabled := not(btnCalcular_Valores.Enabled);
  btnDesconto.Enabled         := not(btnDesconto.Enabled);
  TS_Valores.Enabled          := not(TS_Valores.Enabled);
end;

procedure TfrmCadOrcamento.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadPedido.cdsPedido_Consulta.IsEmpty then
    exit;

  if fDMCadPedido.cdsPedido_ConsultaAPROVADO_ORC.AsString = 'P' then
    Background := clYellow
  else
  if fDMCadPedido.cdsPedido_ConsultaAPROVADO_ORC.AsString = 'A' then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if fDMCadPedido.cdsPedido_ConsultaAPROVADO_ORC.AsString = 'N' then
  begin
    Background  := clRed;
    AFont.Color := clWhite
  end
  else
  if fDMCadPedido.cdsPedido_ConsultaAPROVADO_ORC.AsString = 'R' then
    Background  := clAqua;
end;

procedure TfrmCadOrcamento.SpeedButton1Click(Sender: TObject);
begin
  fDMCadPedido.cdsCliente.Close;
  fDMCadPedido.cdsCliente.Open;
end;

procedure TfrmCadOrcamento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadPedido.cdsPedido);
end;

procedure TfrmCadOrcamento.pnlClienteEnter(Sender: TObject);
begin
  fDMCadPedido.cdsCFOP.IndexFieldNames := 'CODCFOP';
end;

procedure TfrmCadOrcamento.edtPedClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOrcamento.cePedInternoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOrcamento.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOrcamento.SpeedButton3Click(Sender: TObject);
begin
  fDMCadPedido.cdsVendedor.Close;
  fDMCadPedido.cdsVendedor.Open;
end;

procedure TfrmCadOrcamento.SpeedButton4Click(Sender: TObject);
begin
  fDMCadPedido.cdsCondPgto.Close;
  fDMCadPedido.cdsCondPgto.Open;
end;

procedure TfrmCadOrcamento.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end;
end;

procedure TfrmCadOrcamento.RxDBLookupCombo3Exit(Sender: TObject);
var
  vCalcICMSSimples: Boolean;
  vPercSimples: Real;
begin
  if (vID_ClienteAnt <= 0) and ((RxDBLookupCombo3.Text <> '') and (RxDBLookupCombo3.KeyValue = fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger)) then
    fDMCadPedido.cdsPedidoNOME_CONSUMIDOR.AsString := fDMCadPedido.cdsPedidoNOME_CLIENTE.AsString;
  if RxDBLookupCombo3.Text <> '' then
    fDMCadPedido.cdsPedidoNOME_CLIENTE.AsString := RxDBLookupCombo3.Text;
  if trim(RxDBLookupCombo3.Text) = '' then
    exit;
  prc_Posicionar_Cliente;
  prc_Verifica_Limite(fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,0,fDMCadPedido.cdsClienteVLR_LIMITE_CREDITO.AsFloat);

  if fDMCadPedido.cdsClienteID_GRUPO.AsString <> '' then
  begin
    fDMCadPedido.qGrupoPessoa.Close;
    fDMCadPedido.qGrupoPessoa.ParamByName('ID1').AsInteger := fDMCadPedido.cdsClienteID_GRUPO.AsInteger;
    fDMCadPedido.qGrupoPessoa.Open;
    fDMCadPedido.cdsPedidoOBS.AsString := fDMCadPedido.qGrupoPessoaNOME.AsString;
  end;

  if (vID_ClienteAnt = fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger) or (fDMCadPedido.cdsPedido.State in [dsEdit]) then
    exit;

  if fDMCadPedido.cdsPedidoEMAIL_COMPRAS.AsString = '' then
  begin
    if fDMCadPedido.cdsClienteEMAIL_COMPRAS.AsString <> '' then
      fDMCadPedido.cdsPedidoEMAIL_COMPRAS.AsString := fDMCadPedido.cdsClienteEMAIL_COMPRAS.asstring;
  end;

  if fDMCadPedido.cdsClienteID_GRUPO.AsInteger > 0 then
    fDMCadPedido.cdsPedidoID_GRUPO_PESSOA.AsInteger := fDMCadPedido.cdsClienteID_GRUPO.AsInteger
  else
    fDMCadPedido.cdsPedidoID_GRUPO_PESSOA.Clear;

  if fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S' then
  begin
    if fDMCadPedido.cdsPedidoFONE.AsString = '' then
    begin
      if fDMCadPedido.cdsClienteCELULAR.AsString <> '' then
      begin
       fDMCadPedido.cdsPedidoFONE.AsString := fDMCadPedido.cdsClienteCELULAR.asstring;
       fDMCadPedido.cdsPedidoDDD.AsInteger := fDMCadPedido.cdsClienteDDDCELULAR.AsInteger;
      end;
    end;
  end;

  fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := 0;
  if fDMCadPedido.qParametros_PedUSAR_VEND_USUARIO.AsString <> 'S' then
    fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger := fDMCadPedido.cdsClienteID_VENDEDOR.AsInteger;
  if fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger > 0 then
  begin
    fDMCadPedido.cdsVendedor.Locate('CODIGO',fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger,[loCaseInsensitive]);
    if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsClientePERC_COMISSAO.AsFloat)) > 0 then
      fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := fDMCadPedido.cdsClientePERC_COMISSAO.AsFloat
    else
      fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := fDMCadPedido.cdsVendedorPERC_COMISSAO_VEND.AsFloat;
  end;
  if trim(fDMCadPedido.cdsClienteENDERECO_ENT.AsString) <> '' then
    fDMCadPedido.cdsPedidoLOCALENTREGA.AsString := 'E';
  fDMCadPedido.cdsPedidoID_TRANSPORTADORA.AsInteger := fDMCadPedido.cdsClienteID_TRANSPORTADORA.AsInteger;
  fDMCadPedido.cdsPedidoID_REDESPACHO.AsInteger     := fDMCadPedido.cdsClienteID_REDESPACHO.AsInteger;
  if fDMCadPedido.cdsClienteID_CONDPGTO.AsInteger > 0 then
    fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger  := fDMCadPedido.cdsClienteID_CONDPGTO.AsInteger;
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger > 0 then
    fDMCadPedido.vSiglaUF := fDMCadPedido.cdsClienteUF.AsString;
end;

procedure TfrmCadOrcamento.DBEdit1Enter(Sender: TObject);
begin
  DBEdit1.ReadOnly := (RxDBLookupCombo3.Text <> '');
end;

procedure TfrmCadOrcamento.DBEdit14Enter(Sender: TObject);
begin
  vVlrFreteAnt := fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat;
end;

procedure TfrmCadOrcamento.DBEdit14Exit(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat)) <> StrToFloat(FormatFloat('0.00',vVlrFreteAnt)) then
    btnCalcular_ValoresClick(Sender);
  //fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat := fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat - vVlrFreteAnt;
end;

procedure TfrmCadOrcamento.btnCalcular_ValoresClick(Sender: TObject);
begin
  SMDBGrid2.DisableScroll;
  uCalculo_Pedido.prc_Calcular_Desconto_Novo(fDMCadPedido,False);
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadOrcamento.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    cePedInterno.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadOrcamento.prc_Limpar_Edit_Consulta;
begin
  cePedInterno.Clear;
  edtCliente.Clear;
  DateEdit1.Clear;
  DateEdit2.Clear;
end;

procedure TfrmCadOrcamento.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  vID: Integer;  
begin
  if (Key = Vk_F9) and (fDMCadPedido.cdsPedido_Consulta.Active) and (fDMCadPedido.cdsPedido_ConsultaID.AsInteger > 0) then
  begin
    if fnc_Posicionar_Orcamento then
    begin
      vID := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
      ffrmCadOrcamento_Aprov              := TfrmCadOrcamento_Aprov.Create(self);
      ffrmCadOrcamento_Aprov.fDMCadPedido := fDMCadPedido;
      ffrmCadOrcamento_Aprov.ShowModal;
      FreeAndNil(ffrmCadOrcamento_Aprov);
      btnConsultarClick(Sender);
      fDMCadPedido.cdsPedido_Consulta.Locate('ID',vID,[loCaseInsensitive]);
    end;
  end;
end;

function TfrmCadOrcamento.fnc_Posicionar_Orcamento: Boolean;
begin
  Result := False;
  fDMCadPedido.cdsOrcamento.Close;
  fDMCadPedido.sdsOrcamento.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsOrcamento.Open;
  if not(fDMCadPedido.cdsOrcamento.IsEmpty) and (fDMCadPedido.cdsOrcamentoCANCELADO.AsString = 'N') and (fDMCadPedido.cdsOrcamentoAPROVADO_ORC.AsString <> 'A') then
  begin
    fDMCadPedido.cdsOrcamento_Itens.Close;
    fDMCadPedido.sdsOrcamento_Itens.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    fDMCadPedido.cdsOrcamento_Itens.Open;
    if not fDMCadPedido.cdsOrcamento_Itens.IsEmpty then
      Result := True;
  end;
end;

procedure TfrmCadOrcamento.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMCadPedido.cdsPedido_ItensAPROVADO_ORC.AsString = 'P') and (fDMCadPedido.cdsPedido_ItensGRAVACAO_COM_ERRO.AsString = 'CST') and (fDMCadPedido.cdsParametrosCONTROLAR_NOTIFICACAO.AsString = 'S') then
  begin
    Background  := clMaroon;
    AFont.Color := clWhite;
  end
  else
  if fDMCadPedido.cdsPedido_ItensAPROVADO_ORC.AsString = 'P' then
    Background := clYellow
  else
  if fDMCadPedido.cdsPedido_ItensAPROVADO_ORC.AsString = 'A' then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if fDMCadPedido.cdsPedido_ItensAPROVADO_ORC.AsString = 'N' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmCadOrcamento.Normal1Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Imp;

  if fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S' then
  begin
    fRelOrcamento_JW              := TfRelOrcamento_JW.Create(Self);
    fRelOrcamento_JW.vImp_Foto    := ckImpFoto.Checked;
    fRelOrcamento_JW.vImp_Peso    := ckImpPeso.Checked;
    fRelOrcamento_JW.fDMCadPedido := fDMCadPedido;
    fRelOrcamento_JW.RLReport1.PreviewModal;
    fRelOrcamento_JW.RLReport1.Free;
    FreeAndNil(fRelOrcamento_JW);
  end
  else
  begin
    fRelOrcamento              := TfRelOrcamento.Create(Self);
    fRelOrcamento.fDMCadPedido := fDMCadPedido;
    fRelOrcamento.RLReport1.PreviewModal;
    fRelOrcamento.RLReport1.Free;
    FreeAndNil(fRelOrcamento);
  end;
end;

procedure TfrmCadOrcamento.prc_Posiciona_Imp;
begin
  fDMCadPedido.cdsFilial.Locate('ID',fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadPedido.cdsPedidoImp.Close;
  fDMCadPedido.sdsPedidoImp.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp.Open;

  fDMCadPedido.cdsPedidoImp_Itens.Close;
  fDMCadPedido.sdsPedidoImp_Itens.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp_Itens.Open;

  fDMCadPedido.cdsPedidoImp_Serv.Close;
  fDMCadPedido.sdsPedidoImp_Serv.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp_Serv.Open;

  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    fDMCadPedido.cdsPedidoImp_Tipo.Close;
    fDMCadPedido.sdsPedidoImp_Tipo.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    fDMCadPedido.sdsPedidoImp_Tipo.ParamByName('ITEM').AsInteger := fDMCadPedido.cdsPedidoImp_ItensITEM.AsInteger;
    fDMCadPedido.cdsPedidoImp_Tipo.Open;

    fDMCadPedido.cdsPedidoImp_Ace.Close;
    fDMCadPedido.sdsPedidoImp_Ace.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    fDMCadPedido.cdsPedidoImp_Ace.Open;

    fDMCadPedido.cdsPedidoImp_Rol.Close;
    fDMCadPedido.sdsPedidoImp_Rol.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    fDMCadPedido.cdsPedidoImp_Rol.Open;
  end;

  if fDMCadPedido.cdsClienteCODIGO.AsInteger <> fDMCadPedido.cdsPedidoImpID_CLIENTE.AsInteger then
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoImpID_CLIENTE.AsInteger,[loCaseInsensitive]);

  vEmail_Fortes         := fDMCadPedido.cdsClienteEMAIL_COMPRAS.AsString;
  vEmail_Assunto_Fortes := 'Orçamento Nº ' + fDMCadPedido.cdsPedidoImpNUM_ORCAMENTO.AsString;
  vEmail_Fortes_Corpo   := 'Em anexo Orçamento Nº ' + fDMCadPedido.cdsPedidoImpNUM_ORCAMENTO.AsString + #13;
  vTipo_Config_Email    := 5;
  vFilial			          := fDMCadPedido.cdsPedidoImpFILIAL.AsInteger;
end;

procedure TfrmCadOrcamento.amanho1Click(Sender: TObject);
begin
  if not (fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or
         (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Imp;
  //fDMCadPedido.prc_Monta_Itens_Imp;
  uCalculo_Pedido.prc_Monta_Itens_Imp(fDMCadPedido);

  if ckMeiaFolha.Checked then
  begin
    fRelPedido_Tam2              := TfRelPedido_Tam2.Create(Self);
    fRelPedido_Tam2.vImpPreco    := True;
    fRelPedido_Tam2.fDMCadPedido := fDMCadPedido;
    fRelPedido_Tam2.vTipo_Reg    := 'OS';
    fRelPedido_Tam2.RLReport1.PreviewModal;
    fRelPedido_Tam2.RLReport1.Free;
    FreeAndNil(fRelPedido_Tam2);
  end
  else
  begin
    fRelPedido_Tam              := TfRelPedido_Tam.Create(Self);
    fRelPedido_Tam.vImpPreco    := True;
    fRelPedido_Tam.fDMCadPedido := fDMCadPedido;
    fRelPedido_Tam.vTipo_Reg    := 'OS';
    fRelPedido_Tam.RLReport1.PreviewModal;
    fRelPedido_Tam.RLReport1.Free;
    FreeAndNil(fRelPedido_Tam);
  end;
end;

{procedure TfrmCadOrcamento.prc_Monta_Itens_Imp;
var
  vItem: Integer;
begin
  fDMCadPedido.mItensImp.First;
  while not fDMCadPedido.mItensImp.Eof do
  begin
    fDMCadPedido.mItensImp_Tam.First;
    while not fDMCadPedido.mItensImp_Tam.Eof do
      fDMCadPedido.mItensImp_Tam.Delete;
    fDMCadPedido.mItensImp_Mat.First;
    while not fDMCadPedido.mItensImp_Mat.Eof do
      fDMCadPedido.mItensImp_Mat.Delete;
    fDMCadPedido.mItensImp.Delete;
  end;

  vItem := 0;
  fDMCadPedido.cdsPedidoImp_Itens.First;
  while not fDMCadPedido.cdsPedidoImp_Itens.Eof do
  begin
    if fDMCadPedido.mItensImp.Locate('ID_Produto',fDMCadPedido.cdsPedidoImp_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
      fDMCadPedido.mItensImp.Edit
    else
    begin
      vItem := vItem + 1;
      fDMCadPedido.mItensImp.Insert;
      fDMCadPedido.mItensImpItem.AsInteger        := vItem;
      fDMCadPedido.mItensImpID_Produto.AsInteger  := fDMCadPedido.cdsPedidoImp_ItensID_PRODUTO.AsInteger;
      fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedidoImp_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
      fDMCadPedido.mItensImpNome_Produto.AsString := fDMCadPedido.cdsProdutoNOME.AsString;
      fDMCadPedido.mItensImpReferencia.AsString   := fDMCadPedido.cdsProdutoREFERENCIA.AsString;
      fDMCadPedido.mItensImpVlr_Unitario.AsFloat  := fDMCadPedido.cdsPedidoImp_ItensVLR_UNITARIO.AsFloat;
      fDMCadPedido.mItensImpOBS.Clear;
      if fDMCadPedido.cdsPedidoImp_ItensDTENTREGA.AsDateTime > 10 then
        fDMCadPedido.mItensImpDtEntrega.AsDateTime := fDMCadPedido.cdsPedidoImp_ItensDTENTREGA.AsDateTime
      else
      if fDMCadPedido.cdsPedidoImpDTENTREGA.AsDateTime > 10 then
        fDMCadPedido.mItensImpDtEntrega.AsDateTime := fDMCadPedido.cdsPedidoImpDTENTREGA.AsDateTime;
      fDMCadPedido.mItensImpUnidade.AsString := fDMCadPedido.cdsPedidoImp_ItensUNIDADE.AsString;
      fDMCadPedido.mItensImpNumOS.AsString   := fDMCadPedido.cdsPedidoImp_ItensNUMOS.AsString;
      //Material
      if fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S' then
      begin
        fDMCadPedido.cdsPedidoImp_Mat.Close;
        fDMCadPedido.sdsPedidoImp_Mat.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedidoImp_ItensID.AsInteger;
        fDMCadPedido.sdsPedidoImp_Mat.ParamByName('ITEM').AsInteger := fDMCadPedido.cdsPedidoImp_ItensITEM.AsInteger;
        fDMCadPedido.cdsPedidoImp_Mat.Open;
        fDMCadPedido.cdsPedidoImp_Mat.First;
        while not fDMCadPedido.cdsPedidoImp_Mat.Eof do
        begin
          fDMCadPedido.mItensImp_Mat.Insert;
          fDMCadPedido.mItensImp_MatItem.AsInteger         := vItem;
          fDMCadPedido.mItensImp_MatID_Material.AsInteger  := fDMCadPedido.cdsPedidoImp_MatID_PRODUTO.AsInteger;
          fDMCadPedido.mItensImp_MatNome_Material.AsString := fDMCadPedido.cdsPedidoImp_MatNOME_MATERIAL.AsString;
          fDMCadPedido.mItensImp_MatQtd_Consumo.AsFloat    := fDMCadPedido.cdsPedidoImp_MatQTD_CONSUMO.AsFloat;
          fDMCadPedido.mItensImp_MatVlr_Unitario.AsFloat   := fDMCadPedido.cdsPedidoImp_MatVLR_UNITARIO.AsFloat;
          fDMCadPedido.mItensImp_MatVlr_Total.AsFloat      := fDMCadPedido.cdsPedidoImp_MatVLR_TOTAL.AsFloat;
          fDMCadPedido.mItensImp_Mat.Post;
          fDMCadPedido.cdsPedidoImp_Mat.Next;
        end;
      end;
    end;
    fDMCadPedido.mItensImpQtd.AsFloat       := fDMCadPedido.mItensImpQtd.AsFloat + fDMCadPedido.cdsPedidoImp_ItensQTD.AsFloat;
    fDMCadPedido.mItensImpVlr_Ipi.AsFloat   := fDMCadPedido.mItensImpVlr_Ipi.AsFloat + fDMCadPedido.cdsPedidoImp_ItensVLR_IPI.AsFloat;
    fDMCadPedido.mItensImpVlr_Total.AsFloat := fDMCadPedido.mItensImpVlr_Total.AsFloat + fDMCadPedido.cdsPedidoImp_ItensVLR_TOTAL.AsFloat;
    if trim(fDMCadPedido.cdsPedidoImp_ItensOBS.Value) <> '' then
      fDMCadPedido.mItensImpOBS.Value       := fDMCadPedido.cdsPedidoImp_ItensOBS.Value;
    fDMCadPedido.mItensImp.Post;

    if trim(fDMCadPedido.cdsPedidoImp_ItensTAMANHO.AsString) <> '' then
    begin
      if fDMCadPedido.mItensImp_Tam.Locate('Item;Tamanho',VarArrayOf([fDMCadPedido.mItensImpItem.AsInteger,fDMCadPedido.cdsPedidoImp_ItensTAMANHO.AsString]),[locaseinsensitive]) then
        fDMCadPedido.mItensImp_Tam.Edit
      else
      begin
        fDMCadPedido.mItensImp_Tam.Insert;
        fDMCadPedido.mItensImp_TamItem.AsInteger   := fDMCadPedido.mItensImpItem.AsInteger;
        fDMCadPedido.mItensImp_TamTamanho.AsString := fDMCadPedido.cdsPedidoImp_ItensTAMANHO.AsString;
      end;
      fDMCadPedido.mItensImp_TamQtd.AsFloat := fDMCadPedido.mItensImp_TamQtd.AsFloat + fDMCadPedido.cdsPedidoImp_ItensQTD.AsFloat;
      fDMCadPedido.mItensImp_Tam.Post;
    end;
    fDMCadPedido.cdsPedidoImp_Itens.Next;
  end;
end;}

procedure TfrmCadOrcamento.amanhoSemMaterial1Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Imp;
  //fDMCadPedido.prc_Monta_Itens_Imp;
  uCalculo_Pedido.prc_Monta_Itens_Imp(fDMCadPedido);

  if ckMeiaFolha.Checked then
  begin
    fRelPedido_Tam2              := TfRelPedido_Tam2.Create(Self);
    fRelPedido_Tam2.vImpPreco    := True;
    fRelPedido_Tam2.fDMCadPedido := fDMCadPedido;
    fRelPedido_Tam2.vTipo_Reg    := 'ON';
    fRelPedido_Tam2.RLReport1.PreviewModal;
    fRelPedido_Tam2.RLReport1.Free;
    FreeAndNil(fRelPedido_Tam2);
  end
  else
  begin
    fRelPedido_Tam              := TfRelPedido_Tam.Create(Self);
    fRelPedido_Tam.vImpPreco    := True;
    fRelPedido_Tam.fDMCadPedido := fDMCadPedido;
    fRelPedido_Tam.vTipo_Reg    := 'ON';
    fRelPedido_Tam.RLReport1.PreviewModal;
    fRelPedido_Tam.RLReport1.Free;
    FreeAndNil(fRelPedido_Tam);
  end;
end;

procedure TfrmCadOrcamento.RxDBLookupCombo3Change(Sender: TObject);
begin
  prc_Opcao_Consumidor;
end;

procedure TfrmCadOrcamento.prc_Opcao_Consumidor;
begin
  Label43.Visible  := (((RxDBLookupCombo3.Text <> '') and (RxDBLookupCombo3.KeyValue = fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger)) or (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S'));
  DBEdit12.Visible := (((RxDBLookupCombo3.Text <> '') and (RxDBLookupCombo3.KeyValue = fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger)) or (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S'));
end;

procedure TfrmCadOrcamento.btnInserir_ServClick(Sender: TObject);
begin
  fDMCadPedido.prc_Inserir_Servicos;

  frmCadOrcamento_Servicos := TfrmCadOrcamento_Servicos.Create(self);
  frmCadOrcamento_Servicos.fDMCadPedido := fDMCadPedido;
  frmCadOrcamento_Servicos.ShowModal;

  FreeAndNil(frmCadOrcamento_Servicos);
end;

procedure TfrmCadOrcamento.btnDescontoClick(Sender: TObject);
begin
  ffrmCadPedido_Desconto := TfrmCadPedido_Desconto.Create(self);
  ffrmCadPedido_Desconto.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Desconto.ShowModal;

  FreeAndNil(ffrmCadPedido_Desconto);
  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadOrcamento.btnAlterar_ServClick(Sender: TObject);
begin
  fDMCadPedido.cdsPedidoServico.Edit;

  frmCadOrcamento_Servicos := TfrmCadOrcamento_Servicos.Create(self);
  frmCadOrcamento_Servicos.fDMCadPedido := fDMCadPedido;
  frmCadOrcamento_Servicos.ShowModal;
end;

procedure TfrmCadOrcamento.prc_scroll(DataSet: TDataSet);
begin
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    pnlPorta.Visible := fDMCadPedido.cdsPedido_ItensTIPO_ORCAMENTO.AsString = 'P';
    pnlVidro.Visible := fDMCadPedido.cdsPedido_ItensTIPO_ORCAMENTO.AsString = 'V';
  end;
end;

procedure TfrmCadOrcamento.btnInserir_TrilhosClick(Sender: TObject);
begin
  fDMCadPedido.prc_Inserir_Trilhos;

  ffrmCadpedido_Ace := TfrmCadpedido_Ace.Create(self);
  ffrmCadpedido_Ace.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Ace.TS_Roldanas.TabVisible := False;
  ffrmCadpedido_Ace.ShowModal;

  FreeAndNil(ffrmCadpedido_Ace);
  uCalculo_Pedido.prc_Calcular_Trilhos(fDMCadPedido);
end;

procedure TfrmCadOrcamento.btnAlterar_TrilhosClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Ace.IsEmpty then
    exit;

  fDMCadPedido.cdsPedido_Ace.Edit;

  ffrmCadpedido_Ace := TfrmCadpedido_Ace.Create(self);
  ffrmCadpedido_Ace.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Ace.TS_Roldanas.TabVisible := False;
  ffrmCadpedido_Ace.ShowModal;
  FreeAndNil(ffrmCadpedido_Ace);
  uCalculo_Pedido.prc_Calcular_Trilhos(fDMCadPedido);
end;

procedure TfrmCadOrcamento.btnExcluir_TrilhosClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Ace.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadPedido.cdsPedido_Ace.Delete;
  uCalculo_Pedido.prc_Calcular_Trilhos(fDMCadPedido);
end;

procedure TfrmCadOrcamento.btnInserir_RoldanasClick(Sender: TObject);
begin
  fDMCadPedido.prc_Inserir_Roldanas;

  ffrmCadpedido_Ace := TfrmCadpedido_Ace.Create(self);
  ffrmCadpedido_Ace.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Ace.TS_Trilhos.TabVisible := False;
  ffrmCadpedido_Ace.ShowModal;

  FreeAndNil(ffrmCadpedido_Ace);
  uCalculo_Pedido.prc_Calcular_Roldanas(fDMCadPedido);
end;

procedure TfrmCadOrcamento.btnAlterar_RoldanasClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Rol.IsEmpty then
    exit;

  fDMCadPedido.cdsPedido_Rol.Edit;

  ffrmCadpedido_Ace := TfrmCadpedido_Ace.Create(self);
  ffrmCadpedido_Ace.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Ace.TS_Trilhos.TabVisible := False;
  ffrmCadpedido_Ace.ShowModal;
  FreeAndNil(ffrmCadpedido_Ace);
  uCalculo_Pedido.prc_Calcular_Roldanas(fDMCadPedido);
end;

procedure TfrmCadOrcamento.btnExcluir_RoldanasClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Rol.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadPedido.cdsPedido_Rol.Delete;
  uCalculo_Pedido.prc_Calcular_Roldanas(fDMCadPedido);
end;

procedure TfrmCadOrcamento.btnExcluir_ServClick(Sender: TObject);
begin
  if not fDmCadPedido.cdsPedidoServico.IsEmpty then
    if MessageDlg('Deseja realmente excluir este serviço?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
      fDMCadPedido.cdsPedidoServico.Delete;
end;

procedure TfrmCadOrcamento.DBEdit6Enter(Sender: TObject);
begin
  vVlrFreteAnt := fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat;
end;

procedure TfrmCadOrcamento.DBEdit6Exit(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat)) <> StrToFloat(FormatFloat('0.00',vVlrFreteAnt)) then
    btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadOrcamento.btnLucratividadeClick(Sender: TObject);
var
  ffrmCadPedido_Custo: TfrmCadPedido_Custo;
begin
  ffrmCadPedido_Custo := TfrmCadPedido_Custo.Create(self);
  ffrmCadPedido_Custo.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Custo.ShowModal;
  FreeAndNil(ffrmCadPedido_Custo);
  fDMCadPedido.cdsPedido_Itens.AfterScroll := prc_scroll;
end;

procedure TfrmCadOrcamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmCadPedido_Copia: TfrmCadPedido_Copia;
  ffrmConsHist_Chapa: TfrmConsHist_Chapa;
begin
  if (Key = Vk_F5) and (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]) and (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S') then
  begin
    ffrmCadPedido_Copia := TfrmCadPedido_Copia.Create(self);
    ffrmCadPedido_Copia.fDMCadPedido := fDMCadPedido;
    ffrmCadPedido_Copia.fDMCopiaPedido.mAux.EmptyDataSet;
    ffrmConsHist_Chapa := TfrmConsHist_Chapa.Create(self);
    ffrmConsHist_Chapa.fDMCopiaPedido := ffrmCadPedido_Copia.fDMCopiaPedido;
    ffrmConsHist_Chapa.vID_Cliente := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
    ffrmConsHist_Chapa.ShowModal;
    ffrmCadPedido_Copia.prc_Le_Aux;
    FreeAndNil(ffrmConsHist_Chapa);
    FreeAndNil(ffrmCadPedido_Copia);
    btnCalcular_ValoresClick(Sender);
  end;
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    btnLimparOrc.Visible := not(btnLimparOrc.Visible);
  end;
end;

procedure TfrmCadOrcamento.Excel1Click(Sender: TObject);
begin
  if not fDMCadPedido.cdsPedido_Consulta.IsEmpty then
    prc_CriaExcel(SMDBGrid1.DataSource);
end;

procedure TfrmCadOrcamento.prc_CriaExcel(vDados: TDataSource);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  vTexto := ExtractFilePath(Application.ExeName) + 'Excel\';
  vTexto := vTexto + 'Orc_' + FormatDateTime('yyyy-mm-dd',DateEdit1.Date) + '_' + FormatDateTime('yyyy-mm-dd',DateEdit2.Date);

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := true;

  prc_Preencher_Excel(planilha, vDados);

  planilha.columns.Autofit;

  Planilha.ActiveWorkBook.SaveAs(vTexto);
  Screen.Cursor := crDefault;
end;

function TfrmCadOrcamento.tbKeyIsDown(const Key: integer): boolean;
begin
  Result := GetKeyState(Key) and 128 > 0;
end;

procedure TfrmCadOrcamento.btnLimparOrcClick(Sender: TObject);
begin
  ShowMessage('Este procedimento irá excluir todos os orçamentos listados abaixo!');
  if MessageDlg('Deseja realmente excluir todos os orçamentos?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  fDMCadPedido.cdsPedido_Consulta.First;
  if not fDMCadPedido.cdsPedido_Consulta.IsEmpty then
    prc_CriaExcel(SMDBGrid1.DataSource);

  fDMCadPedido.cdsPedido_Consulta.First;
  while not fDMCadPedido.cdsPedido_Consulta.Eof do
  begin
    prc_Posiciona_Pedido;
    prc_Excluir_Registro;
    fDMCadPedido.cdsPedido_Consulta.Next;
  end;
  btnConsultarClick(Sender);
end;

procedure TfrmCadOrcamento.SpeedButton8Click(Sender: TObject);
begin
  ffrmCadObs_Aux := TfrmCadObs_Aux.Create(self);
  ffrmCadObs_Aux.ShowModal;
  FreeAndNil(ffrmCadObs_Aux);
  fDMCadPedido.cdsObs_Aux.Close;
  fDMCadPedido.cdsObs_Aux.Open;
end;

procedure TfrmCadOrcamento.pnlObservacaoEnter(Sender: TObject);
begin
  fDMCadPedido.cdsObs_Aux.Close;
  fDMCadPedido.cdsObs_Aux.Open;
end;

procedure TfrmCadOrcamento.BitBtn2Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo11.Text) = '' then
  begin
    MessageDlg('*** Observação não informada!', mtError, [mbOk], 0);
    exit;
  end;
  if trim(fDMCadPedido.cdsPedidoOBS.Value) = '' then
    fDMCadPedido.cdsPedidoOBS.Value := fDMCadPedido.cdsObs_AuxOBS_PEDIDO.AsString
  else
    fDMCadPedido.cdsPedidoOBS.Value := fDMCadPedido.cdsPedidoOBS.Value + #13 + fDMCadPedido.cdsObs_AuxOBS_PEDIDO.AsString;
  RxDBLookupCombo11.ClearValue;
  RxDBLookupCombo11.SetFocus;
end;

procedure TfrmCadOrcamento.prc_Abre_Filial_Menu(Empresa, Tipo: Integer);
var
  i : integer;
  item : TMenuItem;
begin
  fLista := TStringList.Create;
  i := 0;
  fLista.Clear;
  fDMCadPedido.qFilial_Relatorio_Menu.Close;
  fDMCadPedido.qFilial_Relatorio_Menu.ParamByName('ID').AsInteger := Empresa;
  fDMCadPedido.qFilial_Relatorio_Menu.ParamByName('TIPO').AsInteger := Tipo;
  fDMCadPedido.qFilial_Relatorio_Menu.Open;
  fDMCadPedido.qFilial_Relatorio_Menu.First;
  while not fDMCadPedido.qFilial_Relatorio_Menu.eof do
  begin
    if fDMCadPedido.qFilial_Relatorio_MenuDESCRICAO.AsString <> '' then
    begin
        item := TMenuItem.Create(Self);
        item.Caption := fDMCadPedido.qFilial_Relatorio_MenuDESCRICAO.AsString;
        item.onClick := ItemClick;
        item.Tag := i;
        i := i + 1;
        PopupMenu1.Items[3].Add(item);
        fLista.Add(fDMCadPedido.qFilial_Relatorio_MenuCAMINHO.AsString);
    end;
    fDMCadPedido.qFilial_Relatorio_Menu.Next
  end;
end;

procedure TfrmCadOrcamento.ItemClick(Sender: TObject);
var
  vArq, x : String;
begin
  prc_Posiciona_Imp;
  fDMCadPedido.cdsPedidoServicoImp.Close;
  fDMCadPedido.sdsPedidoServicoImp.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoServicoImp.Open;

  fDMCadPedido.vImpPreco := ckImpPreco.Checked;
  x := StringReplace(TMenuItem(Sender).Caption,'&','',[rfReplaceAll]);
  fDMCadPedido.qFilial_Relatorio_Menu.Locate('DESCRICAO',x,[loCaseInsensitive]);

  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    if (not cbPorta.Checked) and (not cbVidro.Checked) then
    begin
      ShowMessage('Tipo de impressão (Porta ou Vidro) deve estar selecionado!');
      Exit;
    end;
    fDMCadPedido.cdsPedidoImp_Itens.Filtered := True;
    fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := 'ID;DESCRICAO_TIPO';
    fDMCadPedido.cdsPedidoImp_Itens.Filter   := '1 = 0 ';
    if cbVidro.Checked then
      fDMCadPedido.cdsPedidoImp_Itens.Filter := fDMCadPedido.cdsPedidoImp_Itens.Filter + 'OR DESCRICAO_TIPO = ''VIDRO''';
    if cbPorta.Checked then
      fDMCadPedido.cdsPedidoImp_Itens.Filter := fDMCadPedido.cdsPedidoImp_Itens.Filter + 'OR DESCRICAO_TIPO = ''PORTA''';
    fDMCadPedido.cdsPedidoImp_Itens.Filtered := True;
  end;

  if fDMCadPedido.cdsFilialRelatorios.Locate('TIPO',1,([loCaseInsensitive])) then //tipo 1 = orçamento
  begin

    vArq := fDMCadPedido.qFilial_Relatorio_MenuCAMINHO.AsString;
    if FileExists(vArq) then
      fDMCadPedido.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatório não localizado! ' + vArq);
      Exit;
    end;
    if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
    begin
      if ckImpPreco.Checked then
        fDMCadPedido.frxReport1.variables['ImpPreco'] := QuotedStr('S')
      else
        fDMCadPedido.frxReport1.variables['ImpPreco'] := QuotedStr('N');
    end;
    fDMCadPedido.frxReport1.ShowReport;
  end
  else
  begin
    ShowMessage('Relatório não definido no cadastro da empresa (filial)!');
  end;
end;

end.
