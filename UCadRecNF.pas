unit UCadRecNF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadNotaFiscal,
  RXDBCtrl, RzEdit, RzDBEdit, RzButton, UCadRecNF_Itens, UDMEstoque, TlHelp32, DB, DBGrids, ExtCtrls, StdCtrls, FMTBcd,
  SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, UCBase, UEscolhe_Filial, USel_Pedido,
  RzPanel, Menus, dbXPress, DateUtils, UDMMovimento, NxEdit, NxCollection, Variants, UDMCadNotaFiscal_MP;

type
  TfrmCadRecNF = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    lblCliente: TLabel;
    Edit2: TEdit;
    StaticText1: TStaticText;
    lblNumNota: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    pnlNota: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    pnlCliente: TPanel;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    pnlItem: TPanel;
    Panel10: TPanel;
    Label76: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    DBEdit47: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    Panel11: TPanel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    UCControls1: TUCControls;
    TabSheet2: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    DBMemo1: TDBMemo;
    gbxDuplicata: TRzGroupBox;
    SMDBGrid_Dupl2: TSMDBGrid;
    Panel4: TPanel;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label22: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Label72: TLabel;
    rxdbCondicaoPgto: TRxDBLookupCombo;
    SpeedButton6: TSpeedButton;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    Panel3: TPanel;
    btnCopiarPedido: TBitBtn;
    Label58: TLabel;
    rxdbTipoCobranca: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    Label59: TLabel;
    rxdbConta: TRxDBLookupCombo;
    btnGerarParcelas: TNxButton;
    btnExcluirParcelas: TNxButton;
    Label62: TLabel;
    rxdbConta_Orcamento: TRxDBLookupCombo;
    StaticText2: TStaticText;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    pnlLocalEstoque: TPanel;
    Label94: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Label99: TLabel;
    DBEdit59: TDBEdit;
    SpeedButton7: TSpeedButton;
    Label1: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    Label82: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    Label83: TLabel;
    DBEdit53: TDBEdit;
    SpeedButton5: TSpeedButton;
    Label2: TLabel;
    Label71: TLabel;
    btnRecibo: TNxButton;
    PopupMenu1: TPopupMenu;
    Recibo1: TMenuItem;
    Detalhado1: TMenuItem;
    DetalhadoPorVendedor1: TMenuItem;
    btnCopiarVale: TBitBtn;
    RzGroupBox2: TRzGroupBox;
    btnDesconto: TBitBtn;
    btnCalcular_Valores: TBitBtn;
    Label28: TLabel;
    DBEdit10: TDBEdit;
    Label27: TLabel;
    DBEdit9: TDBEdit;
    btnCancelar_Rec: TNxButton;
    Label3: TLabel;
    DBText2: TDBText;
    RadioGroup1: TRadioGroup;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCopiarPedidoClick(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel4Exit(Sender: TObject);
    procedure Panel4Enter(Sender: TObject);
    procedure rxdbCondicaoPgtoChange(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnGerarParcelasClick(Sender: TObject);
    procedure btnExcluirParcelasClick(Sender: TObject);
    procedure rxdbConta_OrcamentoEnter(Sender: TObject);
    procedure rxdbConta_OrcamentoExit(Sender: TObject);
    procedure rxdbConta_OrcamentoCloseUp(Sender: TObject);
    procedure rxdbConta_OrcamentoDropDown(Sender: TObject);
    procedure rxdbConta_OrcamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxdbCondicaoPgtoEnter(Sender: TObject);
    procedure rxdbContaChange(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Recibo1Click(Sender: TObject);
    procedure Detalhado1Click(Sender: TObject);
    procedure DetalhadoPorVendedor1Click(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnCopiarValeClick(Sender: TObject);
    procedure btnDescontoClick(Sender: TObject);
    procedure btnCalcular_ValoresClick(Sender: TObject);
    procedure btnCancelar_RecClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);

  private
    { Private declarations }
    vID_Cliente_Ant: Integer;

    fDMCadNotaFiscal: TDMCadNotaFiscal;
    fDMCadNotaFiscal_MP: TDMCadNotaFiscal_MP;

    ffrmCadRecNF_Itens: TfrmCadRecNF_Itens;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmSel_Pedido: TfrmSel_Pedido;

    fDMEstoque: TDMEstoque;
    fDMMovimento: TDMMovimento;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);
    procedure prc_Posiciona_NotaFiscal;
    procedure prc_Posicionar_Cliente;
    procedure prc_Habilitar_CamposNota;
    procedure prc_Opcao_Prazo;
    procedure prc_Funcao_Inserir;

    function fnc_Verifica_Registro: Boolean;

    //function fnc_Gravar_ExtComissao(Prazo: String = ''): Integer;

    procedure prc_Limpar_Edit_Consulta;

    procedure prc_Voltar_Vale;
    procedure prc_Gravar_mItensAlt;
    procedure prc_ReGravar_DuplicataAux(Percentual: Real);
    procedure prc_Cancelamento(Cancelar: Boolean); //True = Cancelamento   False = Denegada

    function fnc_Controla_Est(Tipo: String; Qtd: Real): Integer; //Tipo I=Lendo Tabela Itens   T=Lendo tabela de tamanhos

    function fnc_Busca_Cond_AVista : Integer;

  public
    { Public declarations }
    vTipo_Reg: String; //NTS = Nota Fiscal   NTE = Nota Entrada     RNF = Recibo da nota  SP
  end;

var
  frmCadRecNF: TfrmCadRecNF;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, USel_Pessoa, uCalculo_NotaFiscal, uUtilCliente, uUtilCobranca, UDMAprovacao_Ped,
  UConsPessoa_Fin, UConsPedido_Senha, UDMRecNF, USel_ContaOrc, USenha, uGrava_NotaFiscal, USel_Vale, UMenu, UCadNotaFiscal_Desconto,
  UCadNotaFiscal_Canc, uMenu1;

{$R *.dfm}

procedure TfrmCadRecNF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fMenu1.prc_Verifica_Nota_Dupl('N');
  FreeAndNil(fDMEstoque);
  FreeAndNil(fDMMovimento);
  Action := Cafree;
end;

procedure TfrmCadRecNF.btnExcluirClick(Sender: TObject);
var
  ffrmSenha: TfrmSenha;
  vExcluir: Boolean;
begin
  if not fnc_Verifica_Registro then
    exit;
  vExcluir := True;
  prc_Posiciona_NotaFiscal;

  if fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty then
  begin
    MessageDlg('*** Nota não encontrada!' , mtInformation, [mbOk], 0);
    exit;
  end;

  if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFEAMBIENTE.AsString) = '1') and (trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) <> '') then
  begin
    MessageDlg('*** Nota não pode ser excluida, já possui chave de acesso!' , mtInformation, [mbOk], 0);
    exit;
  end;

  if fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'S' then
  begin
    MessageDlg('*** Recibo cancelado, não pode ser excluido!' , mtInformation, [mbOk], 0);
    exit;
  end;

  if trim(fDMCadNotaFiscal.qParametros_FinSENHA_RECIBO.AsString) <> '' then
  begin
    ffrmSenha := TfrmSenha.Create(self);
    ffrmSenha.Label2.Caption := 'Para excluir o Recibo ...';
    ffrmSenha.Label3.Caption := 'Informe a senha';
    ffrmSenha.Label4.Caption := '';

    ffrmSenha.ShowModal;
    FreeAndNil(ffrmSenha);
    if (trim(vSenha) <> trim(fDMCadNotaFiscal.qParametros_FinSENHA_RECIBO.AsString)) then
    begin
      MessageDlg('*** Senha incorreta para exclusão!', mtWarning, [mbOk], 0);
      exit;
    end;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadRecNF.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadRecNF.prc_Excluir_Registro;
begin
  fDMCadNotaFiscal.prc_Excluir;
end;

procedure TfrmCadRecNF.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vID_Estoque, vID_Mov: Integer;
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vMotivo_CD: String;
  vDescAux: Real;
  vPedAux: Integer;
  vFonte, vVersao, vIBPT_Chave: String;
  vQtdAux: Real;
  vUnidade: String;
  vVlrAux: Real;
  vPercAux: Real;
  fDMAprovacao_Ped: TDMAprovacao_Ped;
begin
  fDMCadNotaFiscal.mPedidoAux.EmptyDataSet;
  vIDAux := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal, mtError, [mbOk], 0);
    exit;
  end;

  if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and ((fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') or
     (fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString = 'S')) and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'RNF') then
    fDMCadNotaFiscal_MP := TDMCadNotaFiscal_MP.Create(Self);

  if fDMCadNotaFiscal.qParametros_PedUSA_PROCESSO.AsString = 'S' then
    fDMAprovacao_Ped := TDMAprovacao_Ped.Create(Self);

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 ' +
                         'WHERE TABELA = ' + QuotedStr('NOTAFISCAL');
    sds.ExecSQL();

    try
      fDMCadNotaFiscal.Excluir_Duplicata;
      fDMCadNotaFiscal.Excluir_ExtComissao;
      fDMCadNotaFiscal.prc_Excluir_Financeiro;
      fDMCadNotaFiscal.prc_Excluir_Movimento;
      if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') and
         (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'RNF') then
        fDMCadNotaFiscal.prc_Excluir_NotaFiscal_MP;

      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S' then
        uGrava_NotaFiscal.prc_Gravar_Comissao(fDMCadNotaFiscal,'');

      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S' then
      begin
        if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat)) > 0 then
          uGrava_NotaFiscal.Gravar_Duplicata(fDMCadNotaFiscal,'R','S',1,fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat,fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,'',100);
        if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'P' then
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
          while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
          begin
            if (fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger = 0) and
               (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat)) <>
               StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat))) then
            begin
              if not(fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert]) then
                fDMCadNotaFiscal.cdsNotaFiscal.Edit;
              fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat));
            end;

            uGrava_NotaFiscal.Gravar_Duplicata(fDMCadNotaFiscal,'R','N',fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat,
                                              fDMCadNotaFiscal.cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime,'',fDMCadNotaFiscal.cdsNotaFiscal_ParcPERC_BASE_COMISSAO.AsFloat);
            fDMCadNotaFiscal.cdsNotaFiscal_Parc.Next;
          end;
        end
        else
        if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V') then
        begin
          vPercAux := StrToFloat(FormatFloat('0.00',100));
          if (fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S') then
          begin
            if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat)) > 0 then
              vPercAux := StrToFloat(FormatFloat('0.00000',(fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat / fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat) * 100));
          end;
          uGrava_NotaFiscal.Gravar_Duplicata(fDMCadNotaFiscal,'R','N',1,fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat,fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,'AVI',vPercAux);
        end;
      end;

    except
      on e: Exception do
        raise Exception.Create('Erro ao gravar a Duplicata: ' + #13 + e.Message);
    end;

    try
      vMotivo_CD  := '';
      vFonte      := '';
      vVersao     := '';
      vIBPT_Chave := '';
      fDMCadNotaFiscal.vPerc_Comissao_Rateio := 0;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
      while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
      begin
        vID_Estoque := 0;
        vID_Mov     := 0;
        vDescAux    := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat +
                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat));

        if (trim(vFonte) = '') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensFONTE_TRIBUTO.AsString) <> '') then
          vFonte := fDMCadNotaFiscal.cdsNotaFiscal_ItensFONTE_TRIBUTO.AsString;
        if (trim(vVersao) = '') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensVERSAO_TRIBUTO.AsString) <> '') then
          vVersao := fDMCadNotaFiscal.cdsNotaFiscal_ItensVERSAO_TRIBUTO.AsString;
        if (trim(vIBPT_Chave) = '') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensIBPT_CHAVE.AsString) <> '') then
          vIBPT_Chave := fDMCadNotaFiscal.cdsNotaFiscal_ItensIBPT_CHAVE.AsString;

        if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString = 'S' then
        begin
          if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and ((fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') or
             (fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString = 'S')) and
            (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'RNF') then
          begin
            //verificar se vai
            //if (fDMCadNotaFiscal.cdsCFOPGERAR_ESTOQUE_MP.AsString = 'S') or (fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString = 'S') then
            begin
              fDMCadNotaFiscal_MP.fDMCadNotaFiscal := fDMCadNotaFiscal;
              fDMCadNotaFiscal_MP.prc_Abrir_NotaFiscal_MP(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger);
              fDMCadNotaFiscal_MP.fDMEstoque       := fDMEstoque;
              fDMCadNotaFiscal_MP.prc_Le_Produto_Consumo;
              //fDMCadNotaFiscal_MP.prc_Le_mMaterial;
            end;
          end;
          if (fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString = 'S') and not(fDMCadNotaFiscal.cdsNotaFiscal_Tam.IsEmpty) then
          begin
            fDMCadNotaFiscal.cdsNotaFiscal_Tam.First;
            while not fDMCadNotaFiscal.cdsNotaFiscal_Tam.Eof do
            begin
              vID_Estoque := fnc_Controla_Est('T',StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat)));
              fDMCadNotaFiscal.cdsNotaFiscal_Tam.Edit;
              fDMCadNotaFiscal.cdsNotaFiscal_TamID_MOVESTOQUE.AsInteger := vID_Estoque;
              fDMCadNotaFiscal.cdsNotaFiscal_Tam.Post;
              fDMCadNotaFiscal.cdsNotaFiscal_Tam.Next;
            end;
            vID_Estoque := 0;
          end
          else
            vID_Estoque := fnc_Controla_Est('I',vQtdAux);
        end;
        //11/11/2015
        if fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I' then
          vPercAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.vPerc_Comissao_Rateio))
        else
          vPercAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat));
        //****
        if (fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive])) and
           (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString <> 'N') then
        begin
          vID_Mov := fDMMovimento.fnc_Gravar_Movimento(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,0,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger,
                                                       0,
                                                       fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger,0,'RNF',
                                                       fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString,'RNF',
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat,
                                                       vDescAux,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSIMPLES.AsFloat,0,0,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat,0,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat,0,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat,
                                                       0,0,0,0,fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSIMPLES.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat,0,0,0,
                                                       fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString,
                                                       vMotivo_CD,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,
                                                       fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger,0,fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger,vPercAux,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat,1,0,'N');
        end;
        if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger <> vID_Estoque) or
           (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger <> vID_Mov) then
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger := vID_Estoque;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger  := vID_Mov;
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
        end;

        //Atualiza Status do pedido
        //29/11/2014 foi alterado para gravar o pedido futuro também
        vPedAux := 0;
        if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0 then
          vPedAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger
        else
        if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger > 0 then
          vPedAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger;
        //if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) and
        if (vPedAux > 0) and not(fDMCadNotaFiscal.mPedidoAux.FindKey([vPedAux])) then
        begin
          fDMCadNotaFiscal.mPedidoAux.Insert;
          //fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
          fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger := vPedAux;
          fDMCadNotaFiscal.mPedidoAux.Post;
        end;
        //****************
        //Vale 18/06/2014
        if (fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger > 0) then
        begin
          if not(fDMCadNotaFiscal.mValeAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger])) then
          begin
            fDMCadNotaFiscal.mValeAux.Insert;
            fDMCadNotaFiscal.mValeAuxID_Vale.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger;
            fDMCadNotaFiscal.mValeAux.Post;
          end;
        end;

        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
      end;
      {if not(fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert]) then
        fDMCadNotaFiscal.cdsNotaFiscal.Edit;
      fDMCadNotaFiscal.cdsNotaFiscalFONTE_TRIBUTOS.AsString  := vFonte;
      fDMCadNotaFiscal.cdsNotaFiscalVERSAO_TRIBUTOS.AsString := vVersao;
      fDMCadNotaFiscal.cdsNotaFiscal.Post;}

      //25/01/2014 aqui
      if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and ((fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') or
         (fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString = 'S')) and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'RNF') then
        fDMCadNotaFiscal_MP.prc_Le_mMaterial;

      //Atualiza Status do pedido
      fDMCadNotaFiscal.mPedidoAux.First;
      while not fDMCadNotaFiscal.mPedidoAux.Eof do
      begin
        fDMCadNotaFiscal.sdsPrc_Atualiza_Status_Ped.Close;
        fDMCadNotaFiscal.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger;
        fDMCadNotaFiscal.sdsPrc_Atualiza_Status_Ped.ExecSQL;

        //aqui araujo 23/04/2016
        if (fDMCadNotaFiscal.qParametros_PedUSA_PROCESSO.AsString = 'S')  then
          fDMAprovacao_Ped.prc_Gravar_Pedido_Processo('',fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger,fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger,
                                                      'F','','',fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime);
        //******

        fDMCadNotaFiscal.mPedidoAux.Next;
      end;

      //Vale 18/06/2014
      if fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S' then
      begin
        fDMCadNotaFiscal.mValeAux.First;
        while not fDMCadNotaFiscal.mValeAux.Eof do
        begin
          fDMCadNotaFiscal.prc_Atualiza_Vale(fDMCadNotaFiscal.mValeAuxID_Vale.AsInteger);
          fDMCadNotaFiscal.mValeAux.Next;
        end;
      end;

      if fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S' then
        fDMCadNotaFiscal.mValeAux.EmptyDataSet;

      fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);

      if (fDMCadNotaFiscal.cdsParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipal.Active) then
        fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipal.ApplyUpdates(0);

    except
      on e: Exception do
        raise Exception.Create('Erro ao gravar o estoque: ' + #13 + e.Message);
    end;

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
  if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and ((fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') or
     (fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString = 'S')) and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'RNF') then
    FreeAndNil(fDMCadNotaFiscal_MP);
  TS_Consulta.TabEnabled    := True;
  prc_Habilitar_CamposNota;

  NxDatePicker1.Date    := fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime;
  prc_Consultar(0);
end;

procedure TfrmCadRecNF.prc_Inserir_Registro;
var
  vID_LocalAux: Integer;
begin
  vID_LocalAux := fnc_Verificar_Local(fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString);
  if vID_LocalAux <= 0 then
    exit;

  if fDMCadNotaFiscal.cdsParametrosCONTROLAR_ESTOQUE_SAIDA.AsString = 'S' then
    fDMCadNotaFiscal.mItensAlt.EmptyDataSet;
  fDMCadNotaFiscal.cdsPedido.Close;
  fDMCadNotaFiscal.vCopia_Igual := False;
  vTerminal := 0;
  fDMCadNotaFiscal.vExcluir_Com_Est := False;
  fDMCadNotaFiscal.vExcluir_Dup_Est := False;
  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;
  if fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S' then
    fDMCadNotaFiscal.mValeAux.EmptyDataSet;
  if fDMCadNotaFiscal.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadNotaFiscal.cdsFilial.Last;
    vFilial      := fDMCadNotaFiscal.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadNotaFiscal.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDMCadNotaFiscal.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  fDMCadNotaFiscal.prc_Inserir(vTipo_Reg);
  lblNome_Filial.Caption := vFilial_Nome;

  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsBrowse] then
    exit;

  fDMCadNotaFiscal.prc_Excluir_cdsNotaFiscal_ItensAux(0);

  fDMCadNotaFiscal.cdsNotaFiscalESPECIE.AsString := fDMCadNotaFiscal.cdsParametrosESPECIE_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString   := fDMCadNotaFiscal.cdsParametrosMARCA_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger := vID_LocalAux;

  prc_Funcao_Inserir;
  fDMCadNotaFiscal.cdsPedido_Tam.Close;
  fDMCadNotaFiscal.cdsPedido.Close;
  fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger := fnc_Busca_Cond_AVista;
  fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString    := 'S';
  fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString        := 'RNF';
  if (fDMCadNotaFiscal.qParametros_GeralUSAR_PESSOA_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Abrir_cdsCliente(vTipo_Reg,fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger);
end;

procedure TfrmCadRecNF.FormShow(Sender: TObject);
var
  vData: TDateTime;
begin
  fDMCadNotaFiscal := TDMCadNotaFiscal.Create(Self);
  fDMEstoque       := TDMEstoque.Create(Self);
  fDMMovimento     := TDMMovimento.Create(Self);

  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
  vTipo_Reg := 'RNF';
  //IF incluido no dia 04/08/2016
  if (fDMCadNotaFiscal.qParametros_GeralUSAR_PESSOA_FILIAL.AsString <> 'S') then
    fDMCadNotaFiscal.prc_Abrir_cdsCliente(vTipo_Reg,0);

  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  NxDatePicker1.Date := vData;
  NxDatePicker2.Date := Date;
  btnConsultarClick(Sender);

  Label99.Visible     := ((fDMCadNotaFiscal.cdsParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S'));
  DBEdit59.Visible    := ((fDMCadNotaFiscal.cdsParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S'));

  pnlLocalEstoque.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
end;

procedure TfrmCadRecNF.prc_Consultar(ID: Integer);
begin                                                                                
  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Close;
  fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.ctConsulta;
  if ID > 0 then
    fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                           ' WHERE NT.ID = ' + IntToStr(ID)
  else
  begin
    fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                           ' WHERE TIPO_REG = ' + QuotedStr(vTipo_Reg);
    if not(RxDBLookupCombo1.Text = '') then
      fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                             ' AND NT.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                         ' AND SERIE = ' + QuotedStr('RNF');
    if CurrencyEdit1.AsInteger > 0 then
      fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                           ' AND NT.NUMNOTA = ' + CurrencyEdit1.Text;

    if NxDatePicker1.Text <> '' then
    
      fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText
                          + ' AND NT.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
    if NxDatePicker2.Text <> '' then
      fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText
                          + ' AND NT.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));
    if Trim(Edit2.Text) <> '' then
      fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                          ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')' +
                                                          ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';
    case RadioGroup1.ItemIndex of
      1 : fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText + ' AND NT.CANCELADA = ' + QuotedStr('S');
      2 : fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText + ' AND NT.CANCELADA = ' + QuotedStr('N');
    end;
    
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Open;
end;

procedure TfrmCadRecNF.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadRecNF.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsBrowse]) or not(fDMCadNotaFiscal.cdsNotaFiscal.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal.CancelUpdates;

  prc_Habilitar_CamposNota;

  fDMCadNotaFiscal.mSenha.EmptyDataSet;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadRecNF.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadRecNF.btnAlterarClick(Sender: TObject);
var
  vCodAux: String;
  vExcluir: boolean;
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty) or not(fDMCadNotaFiscal.cdsNotaFiscal.Active) or
     (fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger < 1) then
    exit;

  if trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) <> '' then
  begin
    MessageDlg('*** Nota não pode ser alterada pois já possui chave de acesso!' , mtError, [mbOk], 0);
    exit;
  end;

  vExcluir := True;

  fDMCadNotaFiscal.mSenha.EmptyDataSet;

  fDMCadNotaFiscal.vExcluir_Com_Est := False;
  fDMCadNotaFiscal.vExcluir_Dup_Est := False;

  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;

  if fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S' then
    fDMCadNotaFiscal.mValeAux.EmptyDataSet;

  fDMCadNotaFiscal.cdsNotaEntrada.Close;

  fDMCadNotaFiscal.prc_Excluir_cdsNotaFiscal_ItensAux(0);

  if (fDMCadNotaFiscal.cdsParametrosCONTROLAR_ESTOQUE_SAIDA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') then
  begin
    fDMCadNotaFiscal.mItensAlt.EmptyDataSet;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
    begin
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString = 'S' then
      begin
        prc_Gravar_mItensAlt;
        uCalculo_NotaFiscal.prc_Gravar_cdsNotaFiscal_ItensAux(fDMCadNotaFiscal);
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
    end;
  end;
    
  fDMCadNotaFiscal.cdsNotaFiscal.Edit;

  prc_Posicionar_Cliente;

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_CamposNota;

  if fDMCadNotaFiscal.cdsParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S' then
    fDMCadNotaFiscal.prc_Abrir_NotaFiscal_ProdPrincipal(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,0);
  fDMCadNotaFiscal.cdsPedido_Tam.Close;
  fDMCadNotaFiscal.cdsPedido.Close;
end;

procedure TfrmCadRecNF.btnConfirmarClick(Sender: TObject);
var
  vIDAux: Integer;
  vAux: Real;
  vID_LocalAux: Integer;
  vFlag: Boolean;
  vNaoContDupl : Boolean;
  vAuxLim : Real;
  sds: TSQLDataSet;
  vNumAux : Integer;
begin
  if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString) = '') or (fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.IsNull) then
    fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString := 'N';
  if (fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger <= 0) and (fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S') then
  begin
    vID_LocalAux := fnc_Verificar_Local(fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString);
    if vID_LocalAux <= 0 then
      vID_LocalAux := 1;
    fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger := 1;
  end;
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) <= 0) and (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.Clear;
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'RNF' then
  begin
    if (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0) and
       (fDMCadNotaFiscal.cdsCondPgto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger,([Locaseinsensitive]))) then
    begin
      if (fDMCadNotaFiscal.cdsCondPgtoENTRADA.AsString = 'N') then
        fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',0));
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString := fDMCadNotaFiscal.cdsCondPgtoTIPO.AsString;
    end;
  end;

  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'RNF') and
     (fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V') and
     (fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger <= 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger := fDMCadNotaFiscal.cdsParametrosID_CONTA_PADRAO.AsInteger;

  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'RNF') and
     (fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V') and
     (fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger <= 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger := fDMCadNotaFiscal.cdsParametrosID_TIPO_COBRANCA_PADRAO.AsInteger;

  if fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger < 1 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA.AsFloat := 0;
  end;
  fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString := vTipo_Reg;
  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V') and not(fDMCadNotaFiscal.cdsNotaFiscal_Parc.IsEmpty) then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
      fDMCadNotaFiscal.cdsNotaFiscal_Parc.Delete;
  end;
  fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if fDMCadNotaFiscal.cdsFilialID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger then
    fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,[loCaseInsensitive]);
  fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 1;

  //23/07/2016
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_CONSUMIDOR.IsNull then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_CONSUMIDOR.AsInteger := fDMCadNotaFiscal.cdsClienteTIPO_CONSUMIDOR.AsInteger;

  //Verifica a conta nas parcelas
  if (fDMCadNotaFiscal.qParametros_FinCONTROLAR_BANCO_REM_DEP.AsString = 'S') then
  begin
    vFlag := True;
    fDMCadNotaFiscal.vMsgErroParc := '';
    fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
    begin
      if (fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger) and (fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger > 0) then
      begin
        if MessageDlg('Nas parcelas tem o banco diferente, confirmar?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        begin
          vFlag := False;
          fDMCadNotaFiscal.cdsNotaFiscal_Parc.Last;
        end;
      end
      else
      begin
        fDMCadNotaFiscal.vMSGNotaFiscal := '';
        if fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger <> fDMCadNotaFiscal.cdsTipoCobrancaID.AsInteger then
          fDMCadNotaFiscal.cdsTipoCobranca.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger,[loCaseInsensitive]);
        if fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger > 0 then
        begin
          if fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger <> fDMCadNotaFiscal.cdsContasID.AsInteger then
            fDMCadNotaFiscal.cdsContas.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger,[loCaseInsensitive]);
          if (fDMCadNotaFiscal.cdsTipoCobrancaGERARBOLETO.AsString = 'S') and (fDMCadNotaFiscal.cdsContasGERAR_BOLETO.AsString <> 'S') then
            fDMCadNotaFiscal.vMSGNotaFiscal := '*** Banco ' + fDMCadNotaFiscal.cdsContasNOME.AsString + ', não esta marcado para gerar boleto!'
          else
          if (fDMCadNotaFiscal.cdsTipoCobrancaDEPOSITO.AsString = 'S') and (fDMCadNotaFiscal.cdsContasGERAR_DEPOSITO.AsString <> 'S') then
            fDMCadNotaFiscal.vMSGNotaFiscal := '*** Banco ' + fDMCadNotaFiscal.cdsContasNOME.AsString + ', não esta marcado para usar o tipo de cobrança depósito!';
          if (fDMCadNotaFiscal.cdsClienteID_CONTABOLETO.AsInteger > 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger <> fDMCadNotaFiscal.cdsClienteID_CONTABOLETO.AsInteger) then
            fDMCadNotaFiscal.vMsgErroParc   := '*** Banco do cliente diferente do especificado na nota, ';
        end;
        if trim(fDMCadNotaFiscal.vMSGNotaFiscal) <> '' then
        begin
          vFlag := False;
          MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal, mtError, [mbOk], 0);
          fDMCadNotaFiscal.cdsNotaFiscal_Parc.Last;
        end;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_Parc.Next;
    end;
    if not vFlag then
      exit
    else
    if trim(fDMCadNotaFiscal.vMsgErroParc) <> '' then
    begin
      if MessageDlg(fDMCadNotaFiscal.vMsgErroParc +  ' confirmar nota?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        exit;
    end;
  end;

  fDMCadNotaFiscal.mMaterialConsumo.EmptyDataSet;
  fDMCadNotaFiscal.mMaterialConsumo.IndexFieldNames := 'ID_Material';
  if trim(fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString) = '' then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString := 'N';

  vNaoContDupl := False;
  //if not ckTotalDup.Visible then
  //  vNaoContDupl := False;

  if fDMCadNotaFiscal.fnc_Possui_Erro(vNaoContDupl) then
  begin
    MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal, mtError, [mbOk], 0);
    exit;
  end;

  //30/07/2014
  if (fDMCadNotaFiscal.cdsParametrosUSA_CONSUMO.AsString = 'S') and (fDMCadNotaFiscal.vExiste_MObra = 'S') then
  begin
    fDMCadNotaFiscal.vMSGNotaFiscal := '';
    fDMCadNotaFiscal.mMaterialConsumo.First;
    while not fDMCadNotaFiscal.mMaterialConsumo.Eof do
    begin
      if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdConsumo.AsFloat)) <> StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat)) then
        fDMCadNotaFiscal.vMSGNotaFiscal := fDMCadNotaFiscal.vMSGNotaFiscal + #13 + '*** Material com consumo informado diferente do calculado (' + fDMCadNotaFiscal.mMaterialConsumoNomeMaterial.AsString + ')';
      fDMCadNotaFiscal.mMaterialConsumo.Next;
    end;
    if trim(fDMCadNotaFiscal.vMSGNotaFiscal) <> '' then
    begin
      if MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal + #13 + #13 + ' Confirma?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        exit;
    end;
  end;

  //Gravar número do recibo
  sds := TSQLDataSet.Create(nil);
  try
    if fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger <= 0 then
    begin
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'SELECT MAX(NUMNOTA) NUMNOTA FROM NOTAFISCAL '
                          + ' WHERE FILIAL = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger)
                          + '   AND SERIE = ' + QuotedStr('RNF');
      sds.Open;
      vNumAux := sds.FieldByName('NUMNOTA').AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger := vNumAux + 1;
    end;
  finally
    FreeAndNil(sds);
  end;
  //**************

  vIDAux := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;

  uGrava_NotaFiscal.prc_Gravar(fDMCadNotaFiscal);

  try
    fDMCadNotaFiscal.cdsNotaFiscal.Locate('ID',vIDAux,[loCaseInsensitive]);
    prc_Gravar_Registro;
    RzPageControl1.ActivePage := TS_Consulta;
    if vIDAux > 0 then
      fDMCadNotaFiscal.prc_Localizar(vIDAux);
    fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Locate('ID',vIDAux,[loCaseInsensitive]);
  except
    on e: Exception do
    begin
      fDMCadNotaFiscal.cdsNotaFiscal.Edit;
      raise;
    end;
  end;
end;

procedure TfrmCadRecNF.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadNotaFiscal);
end;

procedure TfrmCadRecNF.prc_Posiciona_NotaFiscal;
begin
  fDMCadNotaFiscal.prc_Localizar(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger);
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Close;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Open;
  fDMCadNotaFiscal.cdsNotaFiscal_Tam.Close;
  fDMCadNotaFiscal.cdsNotaFiscal_Tam.Open;
  fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.Close;
  fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.Open;
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.Close;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.Open;
  end;

  vFilial      := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadNotaFiscal.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadNotaFiscal.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;
end;

function TfrmCadRecNF.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) or
        (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger < 1) then
    exit;
  if fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFEAMBIENTE.AsString = '2' then
  begin
    Result := True;
    exit;
  end;
  if Trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFECHAVEACESSO.AsString) <> '' then
    exit;
  if Trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFECODBARRA_CONTINGENCIA.AsString) <> '' then
    exit;
  Result := True;
end;

procedure TfrmCadRecNF.btnExcluir_ItensClick(Sender: TObject);
begin
  if not (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Active) and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.IsEmpty) or
         (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger < 1) then
    exit;

  if (fDMCadNotaFiscal.cdsParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger > 0) then
  begin
    if not fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipal.Locate('ITEM_ORIGINAL',fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger,[loCaseInsensitive]) then
    begin
      MessageDlg('*** Produto (Sacola) não encontrado!' , mtError, [mbOk], 0);
      exit;
    end;
    if not fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipalID_PRODUTO.AsInteger,[loCaseInsensitive]) then
      exit;
  end;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  if (fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger > 0) then
  begin
    if not(fDMCadNotaFiscal.mValeAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger])) then
    begin
      fDMCadNotaFiscal.mValeAux.Insert;
      fDMCadNotaFiscal.mValeAuxID_Vale.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger;
      fDMCadNotaFiscal.mValeAux.Post;
    end;
  end;

  fDMCadNotaFiscal.prc_Excluir_Item;
  SMDBGrid2.DisableScroll;
  prc_Calcular_Desconto_RNF(fDMCadNotaFiscal,False);
  SMDBGrid2.EnableScroll;

  //30/07/2013
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    btnGerarParcelasClick(Sender);
  fDMCadNotaFiscal.cdsNotaEntrada.Close;
end;

procedure TfrmCadRecNF.btnInserir_ItensClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    Exit;
  end;
  fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if trim(fDMCadNotaFiscal.cdsClienteUF.AsString) = '' then
  begin
    MessageDlg('*** Cliente sem UF!', mtError, [mbOk], 0);
    Exit;
  end;
  fDMCadNotaFiscal.cdsTab_NCM.Close;
  fDMCadNotaFiscal.cdsTab_NCM.Open;
  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;

  fDMCadNotaFiscal.prc_Inserir_Itens;
  fDMCadNotaFiscal.vState_Item := 'I';

////////////// testa se produto é filtrado por cliente
  //02/06/2016  incluido a filial
  if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente;
/////////////////////////////////////

  ffrmCadRecNF_Itens := TfrmCadRecNF_Itens.Create(self);
  ffrmCadRecNF_Itens.fDMCadNotaFiscal       := fDMCadNotaFiscal;
  ffrmCadRecNF_Itens.ShowModal;
  FreeAndNil(ffrmCadRecNF_Itens);

  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <= 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger > 0) then
    fDMCadNotaFiscal.prc_Excluir_Item;

  SMDBGrid2.DisableScroll;
  prc_Calcular_Desconto_RNF(fDMCadNotaFiscal,False);
  SMDBGrid2.EnableScroll;
  //30/07/2013
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    btnGerarParcelasClick(Sender);
end;

procedure TfrmCadRecNF.RzPageControl1Change(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit, dsInsert] then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      prc_Opcao_Prazo;
      fDMCadNotaFiscal.prc_Excluir_Auxiliar_Retorno;
      pnlLocalEstoque.Enabled := (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E');
    end;
  end
  else
  if not(fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) or
             (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_NotaFiscal;
      prc_Opcao_Prazo;
      fDMCadNotaFiscal.prc_Excluir_Auxiliar_Retorno;
      pnlLocalEstoque.Enabled := (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E');
      if fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger > 0 then
        if (fDMCadNotaFiscal.qParametros_GeralUSAR_PESSOA_FILIAL.AsString = 'S') then
          fDMCadNotaFiscal.prc_Abrir_cdsCliente(vTipo_Reg,fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger);
      if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
        fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente;

      Label3.Visible  := (fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'S');
      DBText2.Visible := (fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'S');
    end;
  end;
end;

procedure TfrmCadRecNF.btnAlterar_ItensClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger <= 0) then
    exit;

  if (fDMCadNotaFiscal.cdsParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger > 0) then
  begin
    if not fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipal.Locate('ITEM_ORIGINAL',fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger,[loCaseInsensitive]) then
    begin
      MessageDlg('*** Produto (Sacola) não encontrado!' , mtError, [mbOk], 0);
      exit;
    end;
    if not fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipalID_PRODUTO.AsInteger,[loCaseInsensitive]) then
      exit;
    MessageDlg('*** Item não pode ser alterado, pois pertence a sacola: ' + fDMCadNotaFiscal.cdsProdutoNOME.AsString, mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadNotaFiscal.cdsTab_NCM.Close;
  fDMCadNotaFiscal.cdsTab_NCM.Open;
  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
  fDMCadNotaFiscal.vState_Item := 'E';

////////////// testa se produto é filtrado por cliente
  //02/06/2016  incluido a filial
  if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente;
/////////////////////////////////////

  ffrmCadRecNF_Itens := TfrmCadRecNF_Itens.Create(self);

  ffrmCadRecNF_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_NTE.AsInteger > 0 then
    ffrmCadRecNF_Itens.DBEdit2.ReadOnly := True
  else
    ffrmCadRecNF_Itens.DBEdit2.ReadOnly := False;
  ffrmCadRecNF_Itens.ShowModal;

  FreeAndNil(ffrmCadRecNF_Itens);
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
  SMDBGrid2.DisableScroll;
  prc_Calcular_Desconto_RNF(fDMCadNotaFiscal,False);
  SMDBGrid2.EnableScroll;

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Locate('ID;Item',VarArrayOf([fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,vItemAux]),[locaseinsensitive]);

  //30/07/2013
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    btnGerarParcelasClick(Sender);
end;

procedure TfrmCadRecNF.prc_Posicionar_Cliente;
begin
  fDMCadNotaFiscal.vSiglaUF  := '';
  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if fDMCadNotaFiscal.cdsUFUF.AsString  <> fDMCadNotaFiscal.cdsClienteUF.AsString then
    fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,[loCaseInsensitive]);
  if (fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger > 0) and (fDMCadNotaFiscal.cdsVendedorCODIGO.AsInteger <>
      fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger) then
    fDMCadNotaFiscal.cdsVendedor.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger,[loCaseInsensitive]);
  if (fDMCadNotaFiscal.cdsFilialID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger) then
    fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,[loCaseInsensitive]);
  fDMCadNotaFiscal.vSiglaUF  := fDMCadNotaFiscal.cdsClienteUF.AsString;
end;

procedure TfrmCadRecNF.prc_Habilitar_CamposNota;
begin
  //btnSubstTributaria.Visible := False;

  pnlItem.Enabled            := not(pnlItem.Enabled);

  //btnCalcular_Valores.Enabled := not(btnCalcular_Valores.Enabled);
  btnConfirmar.Enabled        := not(btnConfirmar.Enabled);
  btnAlterar.Enabled          := not(btnAlterar.Enabled);

  btnInserir_Itens.Enabled    := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled    := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled    := not(btnExcluir_Itens.Enabled);

  rxdbCondicaoPgto.Enabled    := not(rxdbCondicaoPgto.Enabled);
  rxdbTipoCobranca.Enabled    := not(rxdbTipoCobranca.Enabled);
  rxdbConta.Enabled           := not(rxdbConta.Enabled);
  rxdbConta_Orcamento.Enabled := not(rxdbConta_Orcamento.Enabled);
  //DBEdit5.Enabled             := not(DBEdit5.Enabled);
  //DBEdit55.Enabled            := not(DBEdit55.Enabled);

  DBMemo1.ReadOnly            := not(DBMemo1.ReadOnly);

  SMDBGrid_Dupl2.ReadOnly     := not(SMDBGrid_Dupl2.ReadOnly);

  btnCopiarPedido.Enabled     := not(btnCopiarPedido.Enabled);
  btnCopiarVale.Enabled       := not(btnCopiarVale.Enabled);

  btnGerarParcelas.Enabled    := not(btnGerarParcelas.Enabled);
  btnExcluirParcelas.Enabled  := not(btnExcluirParcelas.Enabled);

  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);

  btnDesconto.Enabled         := not(btnDesconto.Enabled);
  btnCalcular_Valores.Enabled := not(btnCalcular_Valores.Enabled);
end;

procedure TfrmCadRecNF.SpeedButton1Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCliente.Close;
  fDMCadNotaFiscal.cdsCliente.Open;
end;

procedure TfrmCadRecNF.SpeedButton2Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsTransportadora.Close;
  fDMCadNotaFiscal.cdsTransportadora.Open;
end;

procedure TfrmCadRecNF.SpeedButton5Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsVendedor.Close;
  fDMCadNotaFiscal.cdsVendedor.Open;
end;

procedure TfrmCadRecNF.SpeedButton6Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCondPgto.Close;
  fDMCadNotaFiscal.cdsCondPgto.Open;
end;

procedure TfrmCadRecNF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadNotaFiscal.cdsNotaFiscal);
end;

procedure TfrmCadRecNF.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadRecNF.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadRecNF.btnCopiarPedidoClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    Exit;
  end;

  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount;
  ffrmCadRecNF_Itens := TfrmCadRecNF_Itens.Create(self);
  ffrmCadRecNF_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;

  ffrmSel_Pedido := TfrmSel_Pedido.Create(self);
  ffrmSel_Pedido.vTipo              := 'RNF';  //para distinguir do vale 'VAL' e da nota 'RNF'
  ffrmSel_Pedido.vTipo_RegPed       := 'P';
  ffrmSel_Pedido.vCodCliente        := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  ffrmSel_Pedido.fDMCadNotaFiscal   := fDMCadNotaFiscal;
  ffrmSel_Pedido.ffrmCadRecNF_Itens := ffrmCadRecNF_Itens;
  ffrmSel_Pedido.ShowModal;
  FreeAndNil(ffrmSel_Pedido);

  FreeAndNil(ffrmCadRecNF_Itens);
  SMDBGrid2.DisableScroll;
  prc_Calcular_Desconto_RNF(fDMCadNotaFiscal,False);
  SMDBGrid2.EnableScroll;
  prc_Opcao_Prazo;
  btnGerarParcelasClick(Sender);
end;

procedure TfrmCadRecNF.RxDBLookupCombo3Exit(Sender: TObject);
begin
  StaticText2.Visible := False;
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <> fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <> RxDBLookupCombo3.Tag) then
  begin
    if (trim(fDMCadNotaFiscal.cdsClienteCARIMBO.AsString) <> '') then
      fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString := fDMCadNotaFiscal.cdsClienteCARIMBO.AsString
    else
      fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString := fDMCadNotaFiscal.cdsParametrosMARCA_NOTA.AsString;
  end;
end;

procedure TfrmCadRecNF.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  ffrmConsPessoa_Fin: TfrmConsPessoa_Fin;
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end
  else
  if (Key = Vk_F5) and (RxDBLookupCombo3.Text <> '') then
  begin
    ffrmConsPessoa_Fin := TfrmConsPessoa_Fin.Create(self);
    ffrmConsPessoa_Fin.vID_Pessoa_Cons := RxDBLookupCombo3.KeyValue;
    ffrmConsPessoa_Fin.Label2.Caption  := RxDBLookupCombo3.Text;
    ffrmConsPessoa_Fin.ShowModal;
    FreeAndNil(ffrmConsPessoa_Fin);
  end;
end;

procedure TfrmCadRecNF.Panel4Exit(Sender: TObject);
var
  vID_Aux: Integer;
  vFlag: Boolean;
begin
  if not(fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert]) then
    exit;

  prc_Posicionar_Cliente;

  if (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsInsert]) or (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <> vID_Cliente_Ant) then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger := fDMCadNotaFiscal.cdsClienteID_TIPOCOBRANCA.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger         := fDMCadNotaFiscal.cdsClienteID_CONTABOLETO.AsInteger;

    if fDMCadNotaFiscal.cdsClienteCLIENTE_CONTA_ID.AsInteger > 0 then
      fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger := fDMCadNotaFiscal.cdsClienteCLIENTE_CONTA_ID.AsInteger;
    vFlag := True;
    if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount > 0) and (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger = vID_Cliente_Ant) then
    begin
      SMDBGrid2.DisableScroll;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
      while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
      begin
        if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0 then
        begin
          vFlag := False;
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;
        end;
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
      end;
      SMDBGrid2.EnableScroll;
    end;
    if vFlag then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat := 0;
      fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger := fDMCadNotaFiscal.cdsClienteID_VENDEDOR.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA.AsFloat := StrToFloat(FormatFloat('0.00',0));
      if fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger > 0 then
      begin
        if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsClientePERC_COMISSAO.AsFloat)) > 0 then
          fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat := fDMCadNotaFiscal.cdsClientePERC_COMISSAO.AsFloat
        else
          fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat := fDMCadNotaFiscal.cdsVendedorPERC_COMISSAO_VEND.AsFloat;
        if fDMCadNotaFiscal.cdsVendedorTIPO_COMISSAO.AsString = 'P' then
          fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsParametrosPERC_COMISSAO_PAGA_NOTA.AsFloat));
      end;
    end;
    fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger := fDMCadNotaFiscal.cdsClienteID_TRANSPORTADORA.AsInteger;
  end;

  if (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsInsert]) or (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <> vID_Cliente_Ant) then
    prc_Opcao_Prazo;
end;

procedure TfrmCadRecNF.Panel4Enter(Sender: TObject);
begin
  vID_Cliente_Ant := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
end;

procedure TfrmCadRecNF.rxdbCondicaoPgtoChange(Sender: TObject);
begin
  prc_Opcao_Prazo;
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    btnGerarParcelasClick(Sender);
end;

procedure TfrmCadRecNF.prc_Opcao_Prazo;
var
  vMostrarAux: String;
  vMostrarEntrada: String;
  vTipoCondicao: String;
begin
  vMostrarAux     := 'N';
  vMostrarEntrada := 'N';
  vTipoCondicao   := '';
  if ((rxdbCondicaoPgto.Text <> '') and (rxdbCondicaoPgto.Text <> '[..Nenhuma..]')) and (fDMCadNotaFiscal.cdsCondPgto.Locate('ID',rxdbCondicaoPgto.KeyValue,[loCaseInsensitive])) then
  begin
    vMostrarAux     := fDMCadNotaFiscal.cdsCondPgtoTIPO.AsString;
    vMostrarEntrada := fDMCadNotaFiscal.cdsCondPgtoENTRADA.AsString;
    vTipoCondicao   := fDMCadNotaFiscal.cdsCondPgtoTIPO_CONDICAO.AsString;
  end;
  btnGerarParcelas.Visible   := (vMostrarAux = 'P');
  btnExcluirParcelas.Visible := (vMostrarAux = 'P');
  SMDBGrid_Dupl2.Visible     := (vMostrarAux = 'P');
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString := vMostrarAux;
  rxdbTipoCobranca.Visible    := (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0);
  SpeedButton3.Visible        := (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0);
  SpeedButton7.Visible        := (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0);
  rxdbConta.Visible           := (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0);
  rxdbConta_Orcamento.Visible := ((fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0) and (fDMCadNotaFiscal.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S'));
  Label58.Visible             := (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0);
  Label59.Visible             := (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0);
  Label62.Visible             := ((fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0) and (fDMCadNotaFiscal.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S'));
end;

procedure TfrmCadRecNF.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if not pnlPesquisa.Visible then
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadRecNF.prc_Limpar_Edit_Consulta;
begin
  CurrencyEdit1.Clear;
  Edit2.Clear;
end;

procedure TfrmCadRecNF.SpeedButton3Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsTipoCobranca.Close;
  fDMCadNotaFiscal.cdsTipoCobranca.Open;
end;

procedure TfrmCadRecNF.btnGerarParcelasClick(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) <= 0 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
      fDMCadNotaFiscal.cdsNotaFiscal_Parc.Delete;
  end
  else
  if not fnc_Gerar_NotaFiscal_Parc(fDMCadNotaFiscal) then
    MessageDlg(fDMCadNotaFiscal.vMsgErroParc, mtError, [mbOk], 0);
end;

procedure TfrmCadRecNF.btnExcluirParcelasClick(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_Parc.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_ParcID.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal_Parc.Delete;
end;

procedure TfrmCadRecNF.rxdbConta_OrcamentoEnter(Sender: TObject);
begin
  StaticText2.Visible := True;
end;

procedure TfrmCadRecNF.rxdbConta_OrcamentoExit(Sender: TObject);
begin
  StaticText2.Visible := False;
end;

procedure TfrmCadRecNF.rxdbConta_OrcamentoCloseUp(Sender: TObject);
begin
  rxdbConta_Orcamento.LookupDisplay := 'DESCRICAO';
end;

procedure TfrmCadRecNF.rxdbConta_OrcamentoDropDown(Sender: TObject);
begin
  rxdbConta_Orcamento.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadRecNF.rxdbConta_OrcamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ShowModal;
    fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos;
  end;
end;

procedure TfrmCadRecNF.prc_Funcao_Inserir;
begin
  fDMCadNotaFiscal.cdsNotaEntrada.Close;
  prc_Habilitar_CamposNota;
  fDMCadNotaFiscal.cdsNotaFiscalID_REGIMETRIB.AsInteger := fDMCadNotaFiscal.cdsFilialID_REGIME_TRIB.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscalSIMPLES_FILIAL.AsString := fDMCadNotaFiscal.cdsFilialSIMPLES.AsString;
  fDMCadNotaFiscal.cdsNotaFiscalHREMISSAO.Clear;
  fDMCadNotaFiscal.cdsNotaFiscalTIPO_ATENDIMENTO.AsInteger := 1;
  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;
  fDMCadNotaFiscal.vVlr_Entrada     := 0;
  fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString := 'S';
end;

procedure TfrmCadRecNF.rxdbCondicaoPgtoEnter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCondPgto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadRecNF.prc_Voltar_Vale;
var
  sds: TSQLDataSet;
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText := ' UPDATE VALE_ITENS SET FATURADO = ' + QuotedStr('N')
                   + ' WHERE ID = ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsString
                   + ' AND ITEM = ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_VALE.AsString;
  sds.ExecSQL();
  FreeAndNil(sds);
end;

procedure TfrmCadRecNF.prc_Gravar_mItensAlt;
var
  vIDCor: Integer;
  vTamanho: String;
begin
  vIDCor   := 0;
  vTamanho := '';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger > 0 then
    vIDCor := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger;
  if (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '') then
    vTamanho := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
  if fDMCadNotaFiscal.mItensAlt.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,vIDCor,vTamanho]) then
    fDMCadNotaFiscal.mItensAlt.Edit
  else
  begin
    fDMCadNotaFiscal.mItensAlt.Insert;
    fDMCadNotaFiscal.mItensAltID_Produto.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
    fDMCadNotaFiscal.mItensAltID_Cor.AsInteger     := vIDCor;
    fDMCadNotaFiscal.mItensAltTamanho.AsString     := vTamanho;
    fDMCadNotaFiscal.mItensAltQtd.AsFloat          := 0;
  end;
  fDMCadNotaFiscal.mItensAltQtd.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mItensAltQtd.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
  fDMCadNotaFiscal.mItensAlt.Post;
end;

procedure TfrmCadRecNF.prc_ReGravar_DuplicataAux(Percentual: Real);
begin
  fDMCadNotaFiscal.cdsDuplicata.Close;
  fDMCadNotaFiscal.sdsDuplicata.CommandText := 'SELECT * FROM DUPLICATA WHERE ID_NOTA = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger);
  fDMCadNotaFiscal.cdsDuplicata.Open;
  fDMCadNotaFiscal.cdsDuplicata.First;
  while not fDMCadNotaFiscal.cdsDuplicata.Eof do
  begin
    fDMCadNotaFiscal.cdsDuplicata.Edit;
    fDMCadNotaFiscal.cdsDuplicataPERC_BASE_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00000',Percentual));
    fDMCadNotaFiscal.cdsDuplicata.Post;
    fDMCadNotaFiscal.cdsDuplicata.Next;
  end;
  fDMCadNotaFiscal.cdsDuplicata.ApplyUpdates(0);
end;

procedure TfrmCadRecNF.rxdbContaChange(Sender: TObject);
begin
  if not fDMCadNotaFiscal.cdsNotaFiscal_Parc.IsEmpty then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
    begin
      if (fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger) or
         (fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger) then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_Parc.Edit;
        if (fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger) then
        begin
          if fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger > 0 then
            fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger
          else
            fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.Clear;
        end;
        if (fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger) then
        begin
          if fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger > 0 then
            fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger
          else
            fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.Clear;
        end;
        fDMCadNotaFiscal.cdsNotaFiscal_Parc.Post;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_Parc.Next;
    end;
  end;
end;

procedure TfrmCadRecNF.SpeedButton7Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsContas.Close;
  fDMCadNotaFiscal.cdsContas.Open;
end;

function TfrmCadRecNF.fnc_Controla_Est(Tipo: String ; Qtd: Real): Integer; //Tipo I=Lendo Tabela Itens   T=Lendo tabela de tamanhos
var
  vID: Integer;
  vUnidade: String;
  vVlrAux: Real;
  vQtdAux: Real;
  vDescAux: Real;
  vAux2: Real;
  vTamAux: String;
begin
  vDescAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat +
              fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat));
  vUnidade := fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString;
  vVlrAux  := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));
  if (fDMCadNotaFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE.AsFloat)) > 0) then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <> fDMCadNotaFiscal.cdsProdutoID.AsInteger then
      fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    vUnidade := fDMCadNotaFiscal.cdsProdutoUNIDADE.AsString;
    vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE.AsFloat));
    vVlrAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat));
  end
  else
  begin
    vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if fDMCadNotaFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString = 'S' then
    begin
      vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_DESC_ESTOQUE.AsFloat));
      if StrToFloat(FormatFloat('0.0000',vQtdAux)) <= 0 then
        vQtdAux := StrToFloat(FormatFloat('0.0000',0));
    end;
  end;

  if Tipo = 'T' then
  begin
    vTamAux := fDMCadNotaFiscal.cdsNotaFiscal_TamTAMANHO.AsString;
    vID     := fDMCadNotaFiscal.cdsNotaFiscal_TamID_MOVESTOQUE.AsInteger;
    vQtdAux := fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat;
    vVlrAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));
    if StrToFloat(FormatFloat('0.0000',vDescAux)) > 0 then
    begin
      vAux2 := StrToFloat(FormatFloat('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat) * 100));
      vAux2 := StrToFloat(FormatFloat('0.0000',(vDescAux * vAux2) / 100));
      vDescAux := vAux2;
    end;
  end
  else
  begin
    vTamAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
    vID     := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger;
  end;

  Result := fDMEstoque.fnc_Gravar_Estoque(vID,
                                               fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,0,
                                               fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString,'RNF',
                                               vUnidade,
                                               vUnidade,
                                               fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString,
                                               vTamAux,
                                               fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,
                                               vVlrAux,
                                               vQtdAux,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat,
                                               vDescAux,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat,
                                               vQtdAux,
                                               vVlrAux,
                                               vDescAux,fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat,'',
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString,'N',0);  //ver aqui sobre Lote Controle  04/11/2015

end;

function TfrmCadRecNF.fnc_Busca_Cond_AVista: Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT C.ID, C.nome, C.tipo FROM condpgto C WHERE C.TIPO = ' + QuotedStr('V');
    sds.Open;
    Result := sds.FieldByName('ID').AsInteger;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmCadRecNF.Recibo1Click(Sender: TObject);
var
  fDMRecNF: TDMRecNF;
  vArq : String;
  vObsAux : String;
begin
  if not (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) or
         (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger < 1) then
  begin
    MessageDlg('*** Não existe nota selecionada!', mtError, [mbOk], 0);
    exit;
  end;

  vTipo_Config_Email := 1;
  prc_Posiciona_NotaFiscal;

  if (fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger < 1) then
  begin
    MessageDlg('*** Não existe nota selecionada!', mtError, [mbOk], 0);
    exit;
  end;

  fDMRecNF := TDMRecNF.Create(Self);
  fDMRecNF.cdsNotaFiscal.Close;
  fDMRecNF.sdsNotaFiscal.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMRecNF.cdsNotaFiscal.Open;

  fDMRecNF.cdsNotaFiscal_Itens.Close;
  fDMRecNF.sdsNotaFiscal_Itens.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMRecNF.cdsNotaFiscal_Itens.Open;

  fDMRecNF.cdsNotaFiscal_Parc.Close;
  fDMRecNF.sdsNotaFiscal_Parc.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMRecNF.cdsNotaFiscal_Parc.Open;

  fDMRecNF.cdsNumOC.Close;
  fDMRecNF.sdsNumOC.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMRecNF.cdsNumOC.Open;
  vObsAux := '';
  fDMRecNF.cdsNumOC.First;
  while not fDMRecNF.cdsNumOC.Eof do
  begin
    if trim(vObsAux) = '' then
      vObsAux := fDMRecNF.cdsNumOCNUMERO_OC.AsString
    else
      vObsAux := vObsAux + ', ' + fDMRecNF.cdsNumOCNUMERO_OC.AsString;
    fDMRecNF.cdsNumOC.Next;
  end;
  if trim(vObsAux) <> '' then
    vObsAux := '(OC: ' + vObsAux + ') ';
  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;
  vFilial := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;

  fDMRecNF.qFilialRel.Close;
  fDMRecNF.qFilialRel.ParamByName('ID').AsInteger      := vFilial;
  fDMRecNF.qFilialRel.ParamByName('TIPO').AsInteger    := 13;
  fDMRecNF.qFilialRel.ParamByName('POSICAO').AsInteger := 1;
  fDMRecNF.qFilialRel.Open;
  if (fDMRecNF.qFilialRel.IsEmpty) or (fDMRecNF.qFilialRelCAMINHO.IsNull) then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\RecNF.fr3'
  else
    vArq := fDMRecNF.qFilialRelCAMINHO.AsString;
  
  if not(FileExists(vArq)) and (trim(vArq) <> '') then
  begin
    MessageDlg('*** Relatório ' + vArq + ', não encontrado!', mtInformation, [mbOk], 0);
    Exit;
  end;
  fDMRecNF.frxReport1.Report.LoadFromFile(vArq);
  fDMRecNF.frxReport1.variables['NumOC'] := QuotedStr(vObsAux);
  fDMRecNF.frxReport1.ShowReport;
  FreeAndNil(fDMRecNF);
end;

procedure TfrmCadRecNF.Detalhado1Click(Sender: TObject);
var
  vArq : String;
begin
  if not (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) then
  begin
    MessageDlg('*** Não existe recibos para imprimir!', mtError, [mbOk], 0);
    exit;
  end;

  vTipo_Config_Email := 1;

  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;
  vFilial := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\ReciboNF_Det.fr3';
  if not(FileExists(vArq)) and (trim(vArq) <> '') then
  begin
    MessageDlg('*** Relatório ' + vArq + ' não encontrado!', mtInformation, [mbOk], 0);
    Exit;
  end;
  fDMCadNotaFiscal.frxReport1.Report.LoadFromFile(vArq);
  fDMCadNotaFiscal.frxReport1.ShowReport;

  //FreeAndNil(fDMRecNF);
end;

procedure TfrmCadRecNF.DetalhadoPorVendedor1Click(Sender: TObject);
var
  vArq : String;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IndexFieldNames := 'NOME_VENDEDOR;SERIE;NUMNOTA';

  if not (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) then
  begin
    MessageDlg('*** Não existe recibos para imprimir!', mtError, [mbOk], 0);
    exit;
  end;

  vTipo_Config_Email := 1;

  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;
  vFilial := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\ReciboNF_Det_Vend.fr3';
  if not(FileExists(vArq)) and (trim(vArq) <> '') then
  begin
    MessageDlg('*** Relatório ' + vArq + ' não encontrado!', mtInformation, [mbOk], 0);
    Exit;
  end;
  fDMCadNotaFiscal.frxReport1.Report.LoadFromFile(vArq);
  fDMCadNotaFiscal.frxReport1.ShowReport;

  //FreeAndNil(fDMRecNF);
end;

procedure TfrmCadRecNF.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadRecNF.btnCopiarValeClick(Sender: TObject);
var
  ffrmSel_Vale: TfrmSel_Vale;
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    Exit;
  end;

  ffrmCadRecNF_Itens := TfrmCadRecNF_Itens.Create(self);
  ffrmCadRecNF_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;

  ffrmSel_Vale := TfrmSel_Vale.Create(self);
  ffrmSel_Vale.vCodCliente := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  ffrmSel_Vale.vID_CFOP := 0;
  ffrmSel_Vale.vTipo    := 'RNF';
  ffrmSel_Vale.fDMCadNotaFiscal   := fDMCadNotaFiscal;
  ffrmSel_Vale.ffrmCadRecNF_Itens := ffrmCadRecNF_Itens;
  ffrmSel_Vale.ShowModal;

  FreeAndNil(ffrmSel_Vale);
  FreeAndNil(ffrmCadRecNF_Itens);
  prc_Calcular_Desconto_RNF(fDMCadNotaFiscal,False);
  prc_Opcao_Prazo; 
end;

procedure TfrmCadRecNF.btnDescontoClick(Sender: TObject);
var
  ffrmCadNotaFiscal_Desconto: TfrmCadNotaFiscal_Desconto;
begin
  ffrmCadNotaFiscal_Desconto := TfrmCadNotaFiscal_Desconto.Create(self);
  ffrmCadNotaFiscal_Desconto.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Desconto.ShowModal;
  FreeAndNil(ffrmCadNotaFiscal_Desconto);
  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadRecNF.btnCalcular_ValoresClick(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsTab_NCM.Close;
  fDMCadNotaFiscal.cdsTab_NCM.Open;
  SMDBGrid2.DisableScroll;
  prc_Calcular_Desconto_RNF(fDMCadNotaFiscal,False);
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadRecNF.btnCancelar_RecClick(Sender: TObject);
var
  ffrmCadNotaFiscal_Canc: TfrmCadNotaFiscal_Canc;
  vIDAux : Integer;
begin
  if not fnc_Verifica_Registro then
    exit;
  prc_Posiciona_NotaFiscal;

  if (fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty) then
    exit;

  if (fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'S') then
  begin
    MessageDlg('*** Recibo já Cancelado!' , mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja Cancelar o Recibo?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vIDAux := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;

  ffrmCadNotaFiscal_Canc := TfrmCadNotaFiscal_Canc.Create(Self);
  ffrmCadNotaFiscal_Canc.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Canc.ShowModal;
  FreeAndNil(ffrmCadNotaFiscal_Canc);
  if trim(fDMCadNotaFiscal.vMotivoCancelamento) = '' then
    exit;

  prc_Cancelamento(True);
  prc_Consultar(0);

  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Locate('ID',vIDAux,[loCaseInsensitive]);
end;

procedure TfrmCadRecNF.prc_Cancelamento(Cancelar: Boolean);
var
  vPedAux: Integer;
  vID_CliAux: Integer;
begin
  vID_CliAux := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  fDMCadNotaFiscal.mPedidoAux.EmptyDataSet;
  if fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S' then
    fDMCadNotaFiscal.mValeAux.EmptyDataSet;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.eof do
  begin
    vPedAux := 0;
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0 then
      vPedAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger
    else
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger > 0 then
      vPedAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger;
    if (vPedAux > 0) and not (fDMCadNotaFiscal.mPedidoAux.FindKey([vPedAux])) then
    begin
      fDMCadNotaFiscal.mPedidoAux.Insert;
      fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger := vPedAux;
      fDMCadNotaFiscal.mPedidoAux.Post;
    end;
    if (fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger > 0) then
    begin
      if not(fDMCadNotaFiscal.mValeAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger])) then
      begin
        fDMCadNotaFiscal.mValeAux.Insert;
        fDMCadNotaFiscal.mValeAuxID_Vale.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger;
        fDMCadNotaFiscal.mValeAux.Post;
      end;
    end;
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger > 0 then
      prc_Voltar_Vale;

    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
  end;

  fDMCadNotaFiscal.cdsNotaFiscal.Edit;
  fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString              := 'S';
  fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_CANCELADA.AsString       := fDMCadNotaFiscal.vMotivoCancelamento;
  fDMCadNotaFiscal.cdsNotaFiscal.Post;
  fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);

  //Atualiza Status do pedido
  fDMCadNotaFiscal.mPedidoAux.First;
  while not fDMCadNotaFiscal.mPedidoAux.Eof do
  begin
    fDMCadNotaFiscal.sdsPrc_Atualiza_Status_Ped.Close;
    fDMCadNotaFiscal.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger;
    fDMCadNotaFiscal.sdsPrc_Atualiza_Status_Ped.ExecSQL;
    fDMCadNotaFiscal.mPedidoAux.Next;
  end;

  if fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S' then
  begin
    fDMCadNotaFiscal.mValeAux.First;
    while not fDMCadNotaFiscal.mValeAux.Eof do
    begin
      fDMCadNotaFiscal.prc_Atualiza_Vale(fDMCadNotaFiscal.mValeAuxID_Vale.AsInteger);
      fDMCadNotaFiscal.mValeAux.Next;
    end;
  end;

end;

procedure TfrmCadRecNF.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaCANCELADA.AsString) = 'S' then
  begin
    Background  := clRed;
    AFont.Color := clWhite
  end
  else
  if trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaREC_COPIADO.AsString) = 'S' then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end;
end;

end.



