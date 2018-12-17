unit UCadNotaEntrada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadNotaFiscal,
  DB, DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb,
  RXDBCtrl, RzEdit, RzDBEdit, UCadNotaEntrada_Itens, UCadNotaFiscal_Desconto, UCadNotaFiscal_OutrasDesp, DateUtils,
  UEscolhe_Filial, UCBase, UDMEstoque, Menus, NxCollection, dbXPress, USel_Pedido, UDMMovimento, UNFe, UDMNFe, RzButton,
  uDmConsPedido, uEtiq_Individual, UDMCadProduto_Lote;

type
  TfrmCadNotaEntrada = class(TForm)
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
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    pnlNota: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    pnlCliente: TPanel;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    lblDtSaida: TLabel;
    DBDateEdit2: TDBDateEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label21: TLabel;
    Label22: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    pnlItem: TPanel;
    TabSheet3: TRzTabSheet;
    Label27: TLabel;
    Label28: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    pnlValores: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit19: TDBEdit;
    gbxIcms: TGroupBox;
    Label29: TLabel;
    Label40: TLabel;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    btnDesconto: TBitBtn;
    btnOutrosValores: TBitBtn;
    btnCalcular_Valores: TBitBtn;
    gbxSubstituicao: TGroupBox;
    Label46: TLabel;
    Label53: TLabel;
    DBEdit18: TDBEdit;
    DBEdit33: TDBEdit;
    ts_Duplicata: TRzTabSheet;
    pnlDuplicata: TPanel;
    Label72: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    btnParcelas: TBitBtn;
    SMDBGrid_Dupl: TSMDBGrid;
    Panel10: TPanel;
    Label76: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    DBEdit47: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    Panel11: TPanel;
    lblTipo_Prazo: TLabel;
    rxcbTipo_Prazo: TRxDBComboBox;
    btnExcluir_Parcela: TBitBtn;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    lblDtEntradaIni: TLabel;
    dtedtEntradaIni: TDateEdit;
    lblDtEntradaFin: TLabel;
    dtedtEntradaFin: TDateEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    lblNumNota: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    TabSheet1: TRzTabSheet;
    Panel8: TPanel;
    Label56: TLabel;
    Label61: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    DBText3: TDBText;
    Label68: TLabel;
    DBText2: TDBText;
    Label70: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit42: TDBEdit;
    GroupBox5: TGroupBox;
    SMDBGrid3: TSMDBGrid;
    UCControls1: TUCControls;
    Label11: TLabel;
    PopupMenu1: TPopupMenu;
    ZerarDuplicata1: TMenuItem;
    GerarVlrDuplicata1: TMenuItem;
    RzMenuToolbarButton1: TRzMenuToolbarButton;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    Panel3: TPanel;
    btnCopiarNotaDevolucao: TBitBtn;
    btnCopiarPedido: TBitBtn;
    Label62: TLabel;
    rxdbConta_Orcamento: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    btnImp_Nota: TNxButton;
    Label7: TLabel;
    pnlLocalEstoque: TPanel;
    Label94: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    PopupMenu2: TPopupMenu;
    Nota1: TMenuItem;
    Etiquetas1: TMenuItem;
    btnAjusteCusto: TNxButton;
    Label102: TLabel;
    Label103: TLabel;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    btnAjustaItens: TBitBtn;
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
    procedure btnDescontoClick(Sender: TObject);
    procedure btnParcelasClick(Sender: TObject);
    procedure btnExcluir_ParcelaClick(Sender: TObject);
    procedure btnOutrosValoresClick(Sender: TObject);
    procedure btnCalcular_ValoresClick(Sender: TObject);
    procedure pnlClienteExit(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pnlClienteEnter(Sender: TObject);
    procedure edtSerieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure ZerarDuplicata1Click(Sender: TObject);
    procedure GerarVlrDuplicata1Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnCopiarPedidoClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxdbConta_OrcamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Nota1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure ImpEtiquetasAnt;
    procedure btnAjusteCustoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAjustaItensClick(Sender: TObject);
    procedure SMDBGrid2TitleClick(Column: TColumn);
  private
    { Private declarations }

    fDMCadNotaFiscal: TDMCadNotaFiscal;
    fDMEstoque: TDMEstoque;
    fDMMovimento: TDMMovimento;
    fDMNFe: TDMNFe;
    fDMConsPedido: TDMConsPedido;
    fDMCadProduto_Lote: TDMCadProduto_Lote;
    frmEtiq_Individual: TfrmEtiq_Individual;

    ffrmCadNotaEntrada_Itens: TfrmCadNotaEntrada_Itens;
    ffrmCadNotaFiscal_OutrasDesp: TfrmCadNotaFiscal_OutrasDesp;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmCadNotaFiscal_Desconto: TfrmCadNotaFiscal_Desconto;
    ffrmSel_Pedido: TfrmSel_Pedido;
    ffNFe: TfNFe;

    vID_Estoque, vID_Mov: Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_NotaFiscal;
    procedure prc_Posicionar_Cliente;

    procedure prc_Gravar_NotaFiscal_Parc(Parcela: Integer; Data: TDateTime; Valor: Real);

    procedure prc_Habilitar_CamposNota;

    procedure prc_Abrir_CSTICMS(Tipo: String);

    function fnc_Verifica_Registro(Tipo: String): Boolean; //E=Exclui  A=Alterar

    function fnc_Nota_Existe: Boolean;

    procedure prc_Limpar_Edit_Consulta;

    //03/07/2018
    procedure prc_Estoque(vlrDesconto : Real);
    procedure prc_Movimento(vlrDesconto : Real);
    //*************

    //procedure Atualiza_Preco;

    procedure Abrir_produto;

    //procedure prc_Aplicar_Margem;

  public
    { Public declarations }
    vTipo_Reg: String; //NTS = Nota Fiscal   NTE = Nota Entrada    PED = Pedido
  end;

var
  frmCadNotaEntrada: TfrmCadNotaEntrada;

implementation

uses rsDBUtils, uUtilPadrao, USel_Pessoa, uCalculo_NotaFiscal, URelNotaEnt, DmdDatabase, USel_ContaOrc,
  uGrava_NotaFiscal, UCadNotaFiscal_Custo, UCadNotaEntrada_Itens_Ajuste;

{$R *.dfm}

procedure TfrmCadNotaEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMEstoque);
  FreeAndNil(fDMMovimento);
  Action := Cafree;
end;

procedure TfrmCadNotaEntrada.btnExcluirClick(Sender: TObject);
begin
  if not fnc_Verifica_Registro('E') then
  begin
    MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal, mtError, [mbOk], 0);
    exit;
  end;

  prc_Posiciona_NotaFiscal;

  if fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadNotaEntrada.btnInserirClick(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsPedido.Close;
  prc_Inserir_Registro;
end;

procedure TfrmCadNotaEntrada.prc_Excluir_Registro;
begin
  fDMCadNotaFiscal.prc_Excluir;
end;

procedure TfrmCadNotaEntrada.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vParcelaAux: Integer;
  ID: TTransactionDesc;
  vDescAux: Real;
  vID_LocalAux: Integer;
begin
  //fDMCadNotaFiscal.prc_Gravar;
  if (fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger <= 0) and (fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S') then
  begin
    if fDMCadNotaFiscal.cdsParametrosID_LOCAL_ESTOQUE_NTE.AsInteger > 0 then
      vID_LocalAux := fDMCadNotaFiscal.cdsParametrosID_LOCAL_ESTOQUE_NTE.AsInteger
    else
    begin
      vID_LocalAux := fnc_Verificar_Local(fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString);
      if vID_LocalAux <= 0 then
        vID_LocalAux := 1;
    end;
    fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger := vID_LocalAux;
  end;

  vIDAux := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal, mtError, [mbOk], 0);
    exit;
  end;

  fDMCadProduto_Lote := TDMCadProduto_Lote.Create(Self);

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    try
      fDMCadNotaFiscal.Excluir_Duplicata;

      vParcelaAux := 0;
      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'P' then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
        while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
        begin
          UGrava_NotaFiscal.Gravar_Duplicata(fDMCadNotaFiscal,'P','N',fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger,
                                             fDMCadNotaFiscal.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat,
                                             fDMCadNotaFiscal.cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime,'',100);
          vParcelaAux := fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger;

          fDMCadNotaFiscal.cdsNotaFiscal_Parc.Next;
        end;
      end
      else
      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V' then
      begin
        vParcelaAux := 1;
        UGrava_NotaFiscal.Gravar_Duplicata(fDMCadNotaFiscal,'P','N',1,fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat,
                                          fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,'',100);
      end;
    except
      on e: Exception do
        raise Exception.Create('Erro ao gravar a Duplicata: ' + #13 + e.Message);
    end;

    try
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
      while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
      begin
        vID_Estoque := 0;
        vID_Mov     := 0;
        vDescAux    := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat));
        //03/07/2018
        if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString = 'S' then
          prc_Estoque(StrToFloat(FormatFloat('0.0000',vDescAux)));
        if (fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive])) and (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString <> 'N') then
          prc_Movimento(StrToFloat(FormatFloat('0.0000',vDescAux)));
        //Dia 30/05/2013 foi passado para baixo das gravações de estoque e movimento
        if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger <> vID_Estoque) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger <> vID_Mov) or
           (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat))  <> StrToFloat(FormatFloat('0.00000',uCalculo_NotaFiscal.vVlrCusto_Total)))  then
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger   := vID_Estoque;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger    := vID_Mov;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00000',uCalculo_NotaFiscal.vVlrCusto_Total));
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
        end;

        //13/11/2017
        //Atualiza_Preco;
        uCalculo_NotaFiscal.Atualiza_Preco2(fDMCadNotaFiscal);
        //***************

        //Atualiza Status do pedido
        if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) and not(fDMCadNotaFiscal.mPedidoAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger])) then
        begin
          fDMCadNotaFiscal.mPedidoAux.Insert;
          fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
          fDMCadNotaFiscal.mPedidoAux.Post;
        end;
        //****************
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
      end;

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

      dmDatabase.scoDados.Commit(ID);

    except
      on e: Exception do
        raise Exception.Create('Erro ao gravar o estoque: ' + #13 + e.Message);
    end;
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
      //Raise Exception.Create('Ocorreu o seguinte erro ao gravar a nota: ' + #13 + e.Message);
    end
  end;

  FreeAndNil(fDMCadProduto_Lote);

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Habilitar_CamposNota;

  prc_Consultar(vIDAux);
end;

procedure TfrmCadNotaEntrada.prc_Inserir_Registro;
var
  vID_LocalAux: Integer;
begin
  vID_LocalAux := fnc_Verificar_Local(fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString);
  if vID_LocalAux <= 0 then
    exit;
    
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

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_CamposNota;

  fDMCadNotaFiscal.cdsNotaFiscalID_REGIMETRIB.AsInteger    := fDMCadNotaFiscal.cdsFilialID_REGIME_TRIB.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscalSIMPLES_FILIAL.AsString    := fDMCadNotaFiscal.cdsFilialSIMPLES.AsString;
  fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger := vID_LocalAux;

  prc_Abrir_CSTICMS('');

  RzPageControl1.ActivePage := TS_Cadastro;

  fDMCadNotaFiscal.cdsNotaFiscalESPECIE.AsString := fDMCadNotaFiscal.cdsParametrosESPECIE_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString   := fDMCadNotaFiscal.cdsParametrosMARCA_NOTA.AsString;

  if (fDMCadNotaFiscal.qParametros_GeralUSAR_PESSOA_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Abrir_cdsCliente(vTipo_Reg,fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger);

  fDMCadNotaFiscal.prc_Abrir_cdsCFOP('E');
  DBEdit2.SetFocus;
end;

procedure TfrmCadNotaEntrada.FormShow(Sender: TObject);
var
  vData: TDateTime;
  i: Integer;
begin
  fDMCadNotaFiscal := TDMCadNotaFiscal.Create(Self);
  fDMEstoque       := TDMEstoque.Create(Self);
  fDMMovimento     := TDMMovimento.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
  SMDBGrid1.ClearFilter;

  vTipo_Reg := 'NTE';
  if (fDMCadNotaFiscal.qParametros_GeralUSAR_PESSOA_FILIAL.AsString <> 'S') then
    fDMCadNotaFiscal.prc_Abrir_cdsCliente(vTipo_Reg,0);
  Abrir_produto;

  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IndexFieldNames := 'DTEMISSAO';
  //DateEdit1.Date := Date - 30;
  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  DateEdit1.Date := vData;

  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString <> 'S') and (SMDBGrid2.Columns[i].FieldName = 'TAMANHO') then
      SMDBGrid2.Columns[i].Visible := False;
    if (SMDBGrid2.Columns[i].FieldName = 'NOME_COR_COMBINACAO') then
      SMDBGrid2.Columns[i].Visible := ((fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'B'));
    if (fDMCadNotaFiscal.cdsParametrosUSA_LOTE_CONTROLE.AsString <> 'S') and (SMDBGrid2.Columns[i].FieldName = 'NUM_LOTE_CONTROLE') then
      SMDBGrid2.Columns[i].Visible := False;
  end;
  btnConsultar.Click;
  RxDBLookupCombo4.Visible    := (fDMCadNotaFiscal.qParametros_GeralUSA_TRIANGULAR.AsString = 'S'); 
  Label2.Visible              := (fDMCadNotaFiscal.qParametros_GeralUSA_TRIANGULAR.AsString = 'S');
  Label62.Visible             := (fDMCadNotaFiscal.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  rxdbConta_Orcamento.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  SpeedButton2.Visible        := (fDMCadNotaFiscal.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  btnAjusteCusto.Visible      := (fDMCadNotaFiscal.qParametros_GeralUSA_AJUSTE_CUSTO.AsString = 'S');
end;

procedure TfrmCadNotaEntrada.prc_Consultar(ID: Integer);
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
    if CurrencyEdit1.AsInteger > 0 then
      fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText + ' AND NT.NUMNOTA = ' + CurrencyEdit1.Text
    else
    begin
      if not(RxDBLookupCombo1.Text = '') then
        fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                               ' AND NT.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
      if Trim(edtSerie.Text) <> '' then
        fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                               ' AND SERIE = ' + QuotedStr(edtSerie.Text);

      if DateEdit1.Date > 10 then
        fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText
                            + ' AND NT.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
      if DateEdit2.Date > 10 then
        fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText
                            + ' AND NT.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
      if Trim(Edit2.Text) <> '' then
        fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText
                                        + ' AND CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%');
      if dtedtEntradaIni.Date > 10 then
        fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText
                            + ' AND NT.DTSAIDAENTRADA >=  ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtedtEntradaIni.date));
      if dtedtEntradaFin.Date > 10 then
        fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText
                            + ' AND NT.DTSAIDAENTRADA <=  ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dtedtEntradaFin.date));
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Open;
end;

procedure TfrmCadNotaEntrada.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadNotaEntrada.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsBrowse]) or not(fDMCadNotaFiscal.cdsNotaFiscal.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert])  then
    if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;

  fDMCadNotaFiscal.cdsNotaFiscal.CancelUpdates;
  
  prc_Habilitar_CamposNota;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadNotaEntrada.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadNotaEntrada.btnAlterarClick(Sender: TObject);
begin
    fDMCadNotaFiscal.cdsPedido.Close;
  if (fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty) or not(fDMCadNotaFiscal.cdsNotaFiscal.Active) or (fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger < 1) then
    exit;

  if not fnc_Verifica_Registro('A') then
  begin
    MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal, mtError, [mbOk], 0);
    exit;
  end;

  fDMCadNotaFiscal.cdsNotaFiscal.Edit;
  TS_Consulta.TabEnabled := False;
  prc_Habilitar_CamposNota;

  prc_Abrir_CSTICMS(fDMCadNotaFiscal.cdsNotaFiscalSIMPLES_FILIAL.AsString);
  fDMCadNotaFiscal.prc_Abrir_cdsCFOP(fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString);
end;

procedure TfrmCadNotaEntrada.btnConfirmarClick(Sender: TObject);
begin
  fDMCadNotaFiscal.mPedidoAux.EmptyDataSet;
  fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString        := vTipo_Reg;
  fDMCadNotaFiscal.cdsNotaFiscalQTDTOTAL_ITENS.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount;
  if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger <= 0 then
    fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger;
    
  if fDMCadNotaFiscal.fnc_Possui_Erro then
  begin
    MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal, mtError, [mbOk], 0);
    exit;
  end;

  uGrava_NotaFiscal.prc_Gravar(fDMCadNotaFiscal);

  prc_Gravar_Registro;
end;

procedure TfrmCadNotaEntrada.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadNotaFiscal);
end;

procedure TfrmCadNotaEntrada.prc_Posiciona_NotaFiscal;
begin
  fDMCadNotaFiscal.prc_Localizar(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger);
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Close;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Open;

  vFilial      := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadNotaFiscal.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadNotaFiscal.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;

  if fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger > 0 then
  begin
    if (fDMCadNotaFiscal.cdsCFOP.Active) then
    begin
      fDMCadNotaFiscal.cdsCFOP.First;
      if fDMCadNotaFiscal.cdsCFOPENTRADASAIDA.AsString <> fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString then
        fDMCadNotaFiscal.prc_Abrir_cdsCFOP(fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString);
    end
    else
      fDMCadNotaFiscal.prc_Abrir_cdsCFOP(fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString);
  end;
end;

function TfrmCadNotaEntrada.fnc_Verifica_Registro(Tipo: String): Boolean;
var
  vID: Integer;
begin
  Result := False;
  if Tipo = 'E' then
  begin
    if not(fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) or
          (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger < 1) then
      exit;
  end;
  fDMCadNotaFiscal.vMSGNotaFiscal := '';
  if Tipo = 'E' then
    vID := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger
  else
    vID := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;

  fDMCadNotaFiscal.qVerificaNEDevol.Close;
  fDMCadNotaFiscal.qVerificaNEDevol.ParamByName('ID').AsInteger := vID;
  fDMCadNotaFiscal.qVerificaNEDevol.Open;
  if not(fDMCadNotaFiscal.qVerificaNEDevol.IsEmpty) or (fDMCadNotaFiscal.qVerificaNEDevolID.AsInteger > 0) then
    fDMCadNotaFiscal.vMSGNotaFiscal := fDMCadNotaFiscal.vMSGNotaFiscal + #13 + '*** Nota possui devolução';

  fDMCadNotaFiscal.qVerificaDupl.Close;
  fDMCadNotaFiscal.qVerificaDupl.ParamByName('ID_NOTA').AsInteger := vID;
  fDMCadNotaFiscal.qVerificaDupl.Open;
  if not(fDMCadNotaFiscal.qVerificaDupl.IsEmpty) or (fDMCadNotaFiscal.qVerificaDuplID.AsInteger > 0) then
    fDMCadNotaFiscal.vMSGNotaFiscal := fDMCadNotaFiscal.vMSGNotaFiscal + #13 + '*** Nota possui pagamento';

  if trim(fDMCadNotaFiscal.vMSGNotaFiscal) <> '' then
    exit;

  Result := True;
end;

procedure TfrmCadNotaEntrada.btnExcluir_ItensClick(Sender: TObject);
begin
  if not(fDMCadNotaFiscal.cdsNotaFiscal_Itens.Active) and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNotaFiscal.vState_Item := '';
  fDMCadNotaFiscal.prc_Excluir_Item;

  btnCalcular_ValoresClick(Sender);

  fDMCadNotaFiscal.cdsNotaFiscalQTDTOTAL_ITENS.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount;
end;

procedure TfrmCadNotaEntrada.btnInserir_ItensClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger < 1 then
  begin
    MessageDlg('*** Fornecedor não informado!', mtError, [mbOk], 0);
    Exit;
  end;
  fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if trim(fDMCadNotaFiscal.cdsClienteUF.AsString) = '' then
  begin
    MessageDlg('*** Fornecedor sem UF!', mtError, [mbOk], 0);
    Exit;
  end;

  //02/06/2016  incluido a filial
  if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente(True);
  //********************

  fDMCadNotaFiscal.prc_Inserir_Itens;

  ffrmCadNotaEntrada_Itens := TfrmCadNotaEntrada_Itens.Create(self);
  ffrmCadNotaEntrada_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaEntrada_Itens.ShowModal;

  FreeAndNil(ffrmCadNotaEntrada_Itens);
end;

procedure TfrmCadNotaEntrada.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_NotaFiscal;
      if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S' then
        prc_Abrir_CSTICMS('S')
      else
        prc_Abrir_CSTICMS('N');
      //04/08/2016
      if fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger > 0 then
        if (fDMCadNotaFiscal.qParametros_GeralUSAR_PESSOA_FILIAL.AsString = 'S') then
          fDMCadNotaFiscal.prc_Abrir_cdsCliente(vTipo_Reg,fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger);
      //04/08/2016
      if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
        fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente;
    end;
  end;
end;

procedure TfrmCadNotaEntrada.btnAlterar_ItensClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger <= 0) then
    exit;

  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;

  //02/06/2016  incluido a filial
  if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente(True);
  //********************

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
  fDMCadNotaFiscal.vState_Item := '';

  ffrmCadNotaEntrada_Itens := TfrmCadNotaEntrada_Itens.Create(self);
  ffrmCadNotaEntrada_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaEntrada_Itens.ShowModal;

  FreeAndNil(ffrmCadNotaEntrada_Itens);

  SMDBGrid2.DisableScroll;
  btnCalcular_ValoresClick(Sender);
  SMDBGrid2.EnableScroll;

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Locate('ITEM',vItemAux,[loCaseInsensitive]);
end;

procedure TfrmCadNotaEntrada.btnDescontoClick(Sender: TObject);
begin
  ffrmCadNotaFiscal_Desconto := TfrmCadNotaFiscal_Desconto.Create(self);
  ffrmCadNotaFiscal_Desconto.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Desconto.ShowModal;

  FreeAndNil(ffrmCadNotaFiscal_Desconto);
end;

procedure TfrmCadNotaEntrada.btnParcelasClick(Sender: TObject);
var
  vDataAux: TDateTime;
  vDataOri: TDateTime;
  vValorParc, vValorOri: Real;
  i: Integer;
  vQtdParc: Integer;
  vMsgErroParc: String;
begin
  vMsgErroParc := '';
  if fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger > 0 then
  begin
    if (fDMCadNotaFiscal.cdsContaOrcamento.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger,[loCaseInsensitive])) then
    begin
      if fDMCadNotaFiscal.cdsContaOrcamentoTIPO.AsString <> 'A' then
        vMsgErroParc := vMsgErroParc + #13 + '*** Conta Previsão/Orçamento não é analítica!';
    end;
  end;
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString <> 'P' then
    vMsgErroParc := vMsgErroParc + #13 + '*** Para gerar parcelas o prazo precisa ser "A Prazo"!';
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) <= 0 then
    vMsgErroParc := vMsgErroParc + #13 + '*** Valor duplicata zerado!';
  if fDMCadNotaFiscal.cdsCondPgto_Dia.RecordCount <= 0 then
    vMsgErroParc := vMsgErroParc + #13 + '*** Não existem dias informados no cadastro de condição de pagamento!';
  if fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger <= 0 then
    vMsgErroParc := vMsgErroParc + #13 + '*** Condição de pagamento não informada!';

  if vMsgErroParc <> '' then
  begin
    MessageDlg(vMsgErroParc, mtError, [mbOk], 0);
    Exit;
  end;

  fDMCadNotaFiscal.cdsCondPgto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger,[loCaseInsensitive]);

  fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
    fDMCadNotaFiscal.cdsNotaFiscal_Parc.Delete;

  if fDMCadNotaFiscal.cdsNotaFiscalDTINICIO_DUPLICATA.AsDateTime < 10 then
    fDMCadNotaFiscal.cdsNotaFiscalDTINICIO_DUPLICATA.AsDateTime := fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime;
  if fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat > 0 then
    prc_Gravar_NotaFiscal_Parc(0,fDMCadNotaFiscal.cdsNotaFiscalDTINICIO_DUPLICATA.AsDateTime,fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat);
  vDataOri   := fDMCadNotaFiscal.cdsNotaFiscalDTINICIO_DUPLICATA.AsDateTime;
  vQtdParc   := fDMCadNotaFiscal.cdsCondPgto_Dia.RecordCount;
  vValorParc := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat / vQtdParc));
  vValorOri  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat));

  i := 0;
  fDMCadNotaFiscal.cdsCondPgto_Dia.First;
  while not fDMCadNotaFiscal.cdsCondPgto_Dia.Eof do
  begin
    i := i + 1;
    if i = vQtdParc then
      vValorParc := StrToFloat(FormatFloat('0.00',vValorOri));
    vDataAux := vDataOri + fDMCadNotaFiscal.cdsCondPgto_DiaQTDDIAS.AsInteger;
    prc_Gravar_NotaFiscal_Parc(i,vDataAux,vValorParc);
    vValorOri := StrToFloat(FormatFloat('0.00',vValorOri - vValorParc)); 
    fDMCadNotaFiscal.cdsCondPgto_Dia.Next;
  end;
end;

procedure TfrmCadNotaEntrada.prc_Gravar_NotaFiscal_Parc(Parcela: Integer; Data: TDateTime; Valor: Real);
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Parc.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_ParcID.AsInteger              := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger            := Parcela;
  fDMCadNotaFiscal.cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime   := Data;
  fDMCadNotaFiscal.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat    := Valor;
  fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger        := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_Parc.Post;
end;

procedure TfrmCadNotaEntrada.btnExcluir_ParcelaClick(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_Parc.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_ParcID.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal_Parc.Delete;
end;

procedure TfrmCadNotaEntrada.btnOutrosValoresClick(Sender: TObject);
begin
  ffrmCadNotaFiscal_OutrasDesp := TfrmCadNotaFiscal_OutrasDesp.Create(self);
  ffrmCadNotaFiscal_OutrasDesp.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_OutrasDesp.TS_NotaFiscal.TabVisible := False;
  ffrmCadNotaFiscal_OutrasDesp.RzPageControl1.ActivePage := ffrmCadNotaFiscal_OutrasDesp.TS_NotaEntrada;
  ffrmCadNotaFiscal_OutrasDesp.ShowModal;

  FreeAndNil(ffrmCadNotaFiscal_OutrasDesp);

  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadNotaEntrada.btnCalcular_ValoresClick(Sender: TObject);
begin
  prc_Calcular_Desconto_Novo(fDMCadNotaFiscal,False);
end;

procedure TfrmCadNotaEntrada.pnlClienteExit(Sender: TObject);
var
  vCalcICMSSimples: Boolean;
  vPercSimples: Real;
begin
  prc_Posicionar_Cliente;
  
  if fnc_Nota_Existe then
  begin
    MessageDlg('*** Nota já digitada!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger := fDMCadNotaFiscal.cdsClienteID_VENDEDOR.AsInteger;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsClientePERC_COMISSAO.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat := fDMCadNotaFiscal.cdsClientePERC_COMISSAO.AsFloat
  else
    fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat := fDMCadNotaFiscal.cdsVendedorPERC_COMISSAO.AsFloat;

  if trim(fDMCadNotaFiscal.cdsClienteENDERECO_ENT.AsString) <> '' then
    fDMCadNotaFiscal.cdsNotaFiscalLOCALENTREGA.AsString := 'E';
  fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger := fDMCadNotaFiscal.cdsClienteID_TRANSPORTADORA.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscalID_REDESPACHO.AsInteger     := fDMCadNotaFiscal.cdsClienteID_REDESPACHO.AsInteger;
  if fDMCadNotaFiscal.cdsClienteID_CONDPGTO.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger  := fDMCadNotaFiscal.cdsClienteID_CONDPGTO.AsInteger;
  if fDMCadNotaFiscal.cdsClienteFORNECEDOR_CONTA_ID.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger  := fDMCadNotaFiscal.cdsClienteFORNECEDOR_CONTA_ID.AsInteger
  else
    fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.Clear;
  vPercSimples     := 0;
  vCalcICMSSimples := (fDMCadNotaFiscal.cdsCFOPGERAR_ICMS_SIMPLES.AsString = 'S');
  if (vCalcICMSSimples) and (fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger > 0) and (fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S') then
  begin
    fDMCadNotaFiscal.qRegime_Trib.Close;
    fDMCadNotaFiscal.qRegime_Trib.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger;
    fDMCadNotaFiscal.qRegime_Trib.Open;
    if fDMCadNotaFiscal.qRegime_TribCODIGO.AsInteger > 2 then
      vCalcICMSSimples := True;
  end;
  if vCalcICMSSimples then
  begin
    fDMCadNotaFiscal.qPercentual_Simples.Close;
    fDMCadNotaFiscal.qPercentual_Simples.ParamByName('FILIAL').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
    fDMCadNotaFiscal.qPercentual_Simples.ParamByName('ANO').AsInteger    := YearOf(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime);
    fDMCadNotaFiscal.qPercentual_Simples.ParamByName('MES').AsInteger    := MonthOf(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime);
    fDMCadNotaFiscal.qPercentual_Simples.Open;
    if (fDMCadNotaFiscal.qPercentual_Simples.IsEmpty) or (fDMCadNotaFiscal.qPercentual_SimplesID.AsInteger <= 0) then
      MessageDlg('% do ICMS Simples não informado, o sistema não vai gerar o % do Simples', mtError, [mbOk], 0)
    else
      fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat := fDMCadNotaFiscal.qPercentual_SimplesPERCENTUAL.AsFloat;
  end;
end;

procedure TfrmCadNotaEntrada.prc_Posicionar_Cliente;
begin
  fDMCadNotaFiscal.vAliqIcms := 0;
  fDMCadNotaFiscal.vSiglaUF  := '';
  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if fDMCadNotaFiscal.cdsUFUF.AsString  <> fDMCadNotaFiscal.cdsClienteUF.AsString then
    fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,[loCaseInsensitive]);
  if (fDMCadNotaFiscal.cdsFilialID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger) then
    fDMCadNotaFiscal.cdsFilial.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,[loCaseInsensitive]);
  fDMCadNotaFiscal.vAliqIcms := fDMCadNotaFiscal.cdsUFPERC_ICMS.AsFloat;
  fDMCadNotaFiscal.vSiglaUF  := fDMCadNotaFiscal.cdsClienteUF.AsString;
end;

procedure TfrmCadNotaEntrada.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCliente.IndexFieldNames := 'NOME';
end;

procedure TfrmCadNotaEntrada.prc_Habilitar_CamposNota;
begin
  pnlItem.Enabled          := not(pnlItem.Enabled);
  pnlDuplicata.Enabled     := not(pnlDuplicata.Enabled);

  btnDesconto.Enabled      := not(btnDesconto.Enabled);
  btnCalcular_Valores.Enabled := not(btnCalcular_Valores.Enabled);
  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  btnAlterar.Enabled       := not(btnAlterar.Enabled);
  btnAjusteCusto.Enabled   := not(btnAjusteCusto.Enabled);

  gbxIcms.Enabled          := not(gbxIcms.Enabled);
  gbxSubstituicao.Enabled  := not(gbxSubstituicao.Enabled);

  pnlCadastro.Enabled      := not(pnlCadastro.Enabled);
  TabSheet3.Enabled        := not(TabSheet3.Enabled);

  SMDBGrid_Dupl.ReadOnly   := not(SMDBGrid_Dupl.ReadOnly);
  RzMenuToolbarButton1.Enabled := not(RzMenuToolbarButton1.Enabled);

  btnCopiarPedido.Enabled  := not(btnCopiarPedido.Enabled);

  btnInserir_Itens.Enabled := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled := not(btnExcluir_Itens.Enabled);
end;

procedure TfrmCadNotaEntrada.prc_Abrir_CSTICMS(Tipo: String);
begin
  fDMCadNotaFiscal.cdsTab_CSTICMS.Close;
  fDMCadNotaFiscal.sdsTab_CSTICMS.CommandText := 'SELECT * FROM TAB_CSTICMS ';
  if Tipo <> '' then
    fDMCadNotaFiscal.sdsTab_CSTICMS.CommandText := fDMCadNotaFiscal.sdsTab_CSTICMS.CommandText
                                                 + ' WHERE TIPO = ' + QuotedStr(Tipo);
  fDMCadNotaFiscal.cdsTab_CSTICMS.Open;
end;

procedure TfrmCadNotaEntrada.SpeedButton1Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCliente.Close;
  fDMCadNotaFiscal.cdsCliente.Open;
end;

procedure TfrmCadNotaEntrada.SpeedButton4Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCFOP.Close;
  fDMCadNotaFiscal.cdsCFOP.Open;
end;

procedure TfrmCadNotaEntrada.SpeedButton6Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCondPgto.Close;
  fDMCadNotaFiscal.cdsCondPgto.Open;
end;

procedure TfrmCadNotaEntrada.SpeedButton8Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsContas.Close;
  fDMCadNotaFiscal.cdsContas.Open;
end;

procedure TfrmCadNotaEntrada.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadNotaFiscal.cdsNotaFiscal);
end;

procedure TfrmCadNotaEntrada.pnlClienteEnter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCFOP.IndexFieldNames := 'CODCFOP';
end;

function TfrmCadNotaEntrada.fnc_Nota_Existe: Boolean;
begin
  Result := False;
  if fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger <= 0 then
    exit;
  fDMCadNotaFiscal.qVerificaNota.Close;
  fDMCadNotaFiscal.qVerificaNota.ParamByName('SERIE').AsString       := fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString;
  fDMCadNotaFiscal.qVerificaNota.ParamByName('NUMNOTA').AsInteger    := fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger;
  fDMCadNotaFiscal.qVerificaNota.ParamByName('ID_CLIENTE').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  fDMCadNotaFiscal.qVerificaNota.Open;
  if not(fDMCadNotaFiscal.qVerificaNota.IsEmpty) and (fDMCadNotaFiscal.qVerificaNotaID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger) then
  begin
    Result := True;
    fDMCadNotaFiscal.qVerificaNota.Close;
    exit;
  end;
end;

procedure TfrmCadNotaEntrada.edtSerieKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadNotaEntrada.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadNotaEntrada.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadNotaEntrada.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'F';
    frmSel_Pessoa.ShowModal;
    fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end;
end;

procedure TfrmCadNotaEntrada.SMDBGrid1TitleClick(Column: TColumn);
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

procedure TfrmCadNotaEntrada.ZerarDuplicata1Click(Sender: TObject);
begin
  if not (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert]) then
    exit;
  SMDBGrid2.DisableScroll;
  fDMCadNotaFiscal.prc_Le_Itens(fDMCadNotaFiscal,'Z');
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadNotaEntrada.GerarVlrDuplicata1Click(Sender: TObject);
begin
  if not (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert]) then
    exit;
  SMDBGrid2.DisableScroll;
  fDMCadNotaFiscal.prc_Le_Itens(fDMCadNotaFiscal,'G');
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadNotaEntrada.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtSerie.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadNotaEntrada.prc_Limpar_Edit_Consulta;
begin
  RxDBLookupCombo1.ClearValue;
  edtSerie.Clear;
  CurrencyEdit1.Clear;
  Edit2.Clear;
  DateEdit1.Clear;
  DateEdit2.Clear;
  dtedtEntradaIni.Clear;
  dtedtEntradaFin.Clear;
end;

{procedure TfrmCadNotaEntrada.Atualiza_Preco;
var
  vVlrAux: Real;
  vUnidadeAux: String;
  sds: TSQLDataSet;
  Texto, Texto2: String;
  vVlrIPIAux : Real;
  vVlrFreteAux : Real;
  vVlrSTAux : Real;
  vVlrCusto : Real;
  vVlrCusto_Total : Real;
  vTexto : String;
begin
  if fDMCadNotaFiscal.cdsParametrosATUALIZAR_PRECO.AsString <> 'S' then
    exit;

  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger <> fDMCadNotaFiscal.cdsCFOPID.AsInteger then
    fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,[loCaseInsensitive]);

  if fDMCadNotaFiscal.cdsCFOPALT_NCM_CUSTO.AsString <> 'S' then
    exit;

  if not fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,([LocaseInsensitive])) then
    exit;


  vUnidadeAux  := fDMCadNotaFiscal.cdsProdutoUNIDADE.AsString;
  vVlrIPIAux   := StrToFloat(FormatFloat('0.00',0));
  vVlrFreteAux := StrToFloat(FormatFloat('0.00',0));
  vVlrSTAux    := StrToFloat(FormatFloat('0.00',0));
  vVlrAux      := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat;

  if (fDMCadNotaFiscal.qParametros_NTESOMAR_IPI_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat)) > 0) then
    vVlrIPIAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
  if (fDMCadNotaFiscal.qParametros_NTESOMAR_FRETE_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat)) > 0) then
    vVlrFreteAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
  if (fDMCadNotaFiscal.qParametros_NTESOMAR_ST_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat)) > 0) then
    vVlrSTAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
  if (vUnidadeAux <> fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString) and
     (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) > 0) then
  begin
    vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
    if (fDMCadNotaFiscal.qParametros_NTESOMAR_IPI_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat)) > 0) then
      vVlrIPIAux := StrToFloat(FormatFloat('0.00000',vVlrIPIAux / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
    if (fDMCadNotaFiscal.qParametros_NTESOMAR_FRETE_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat)) > 0) then
      vVlrFreteAux := StrToFloat(FormatFloat('0.00000',vVlrFreteAux / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
    if (fDMCadNotaFiscal.qParametros_NTESOMAR_ST_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat)) > 0) then
      vVlrSTAux := StrToFloat(FormatFloat('0.00000',vVlrSTAux / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
  end;

  vVlrCusto       := 0;
  vVlrCusto_Total := 0;
  if fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime >= fDMCadNotaFiscal.cdsProdutoDT_ALTPRECO.AsDateTime then
  begin
    fDMCadNotaFiscal.cdsProduto.Edit;
    fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat    := StrToFloat(FormatFloat('0.00000',vVlrAux));
    fDMCadNotaFiscal.cdsProdutoDT_ALTPRECO.AsDateTime := fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime;
    vVlrCusto := StrToFloat(FormatFloat('0.00000',vVlrAux));
  end;
  if fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime >= fDMCadNotaFiscal.cdsProdutoDT_ALT_PRECOCUSTO.AsDateTime then
  begin
    if not(fDMCadNotaFiscal.cdsProduto.State in [dsEdit]) then
      fDMCadNotaFiscal.cdsProduto.Edit;
    vVlrAux := StrToFloat(FormatFloat('0.00000',vVlrAux + vVlrIPIAux + vVlrFreteAux + vVlrSTAux));
    vVlrCusto_Total := StrToFloat(FormatFloat('0.00000',vVlrAux));
    fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00000',vVlrAux));
    fDMCadNotaFiscal.cdsProdutoDT_ALT_PRECOCUSTO.AsDateTime := fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime;
  end;
  if fDMCadNotaFiscal.cdsProduto.State in [dsEdit] then
  begin
    prc_Aplicar_Margem;
    fDMCadNotaFiscal.cdsProduto.Post;
    //28/10/2017
    if (fDMCadNotaFiscal.qParametros_ProdUSA_LOTE_PROD.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString) <> '')  then
    begin
      if fDMCadNotaFiscal.qParametros_ProdOPCAO_APLICAR_MARGEM.AsString <> 'C' then
        fDMCadProduto_Lote.prc_Gravar(fDMCadNotaFiscal.cdsProdutoID.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString,
                                      fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat,fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsFloat,0)
      else
        fDMCadProduto_Lote.prc_Gravar(fDMCadNotaFiscal.cdsProdutoID.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString,
                                      fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat,fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsFloat,0);
    end;
    //********

    fDMCadNotaFiscal.cdsProduto.ApplyUpdates(0);

    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    Texto  := FormatFloat('0.00000',vVlrCusto);
    Texto  := StringReplace(Texto, ',', '.',[rfReplaceAll, rfIgnoreCase]);
    Texto2 := FormatFloat('0.00000',vVlrCusto_Total);
    Texto2 := StringReplace(Texto, ',', '.',[rfReplaceAll, rfIgnoreCase]);

    vTexto := '';
    if StrToFloat(FormatFloat('0.00000',vVlrCusto)) > 0 then
      vTexto := vTexto + 'PRECO_CUSTO = ' + Texto;
    if StrToFloat(FormatFloat('0.00000',vVlrCusto_Total)) > 0 then
    begin
      if trim(vTexto) <> '' then
        vTexto := vTexto + ', PRECO_CUSTO_TOTAL = ' + Texto2
      else
        vTexto := vTexto + ' PRECO_CUSTO_TOTAL = ' + Texto2;
    end;
    vTexto := 'UPDATE PRODUTO_FORN SET ' + vTexto;
    //sds.CommandText   := 'UPDATE PRODUTO_FORN  SET PRECO_CUSTO = ' + Texto
    sds.CommandText   := vTexto
                       + ' WHERE ID = ' + IntToStr(fDMCadNotaFiscal.cdsProdutoID.AsInteger)
                       + '   AND ID_FORNECEDOR = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger);
    sds.ExecSQL;

    FreeAndNil(sds);
  end;
end;}

procedure TfrmCadNotaEntrada.Abrir_produto;
begin
  fDMCadNotaFiscal.cdsProduto.Close;
  fDMCadNotaFiscal.sdsProduto.CommandText := fDMCadNotaFiscal.ctProduto;
  if (fDMCadNotaFiscal.cdsParametrosNOTA_ENTRADA_MOSTRAR_PROD.AsString = 'M') or (fDMCadNotaFiscal.cdsParametrosNOTA_ENTRADA_MOSTRAR_PROD.AsString = 'P') then
    fDMCadNotaFiscal.sdsProduto.CommandText := fDMCadNotaFiscal.sdsProduto.CommandText + ' AND ((TIPO_REG = ' + QuotedStr(fDMCadNotaFiscal.cdsParametrosNOTA_ENTRADA_MOSTRAR_PROD.AsString) + ')'
                                             + ' OR (TIPO_REG = ' + QuotedStr('S') + '))';
  fDMCadNotaFiscal.cdsProduto.Open;
end;

procedure TfrmCadNotaEntrada.btnCopiarPedidoClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Fornecedor não informado!', mtError, [mbOk], 0);
    exit;
  end;

  //02/06/2016  incluido a filial
  if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente(True);
  //********************

  ffrmCadNotaEntrada_Itens := TfrmCadNotaEntrada_Itens.Create(self);
  ffrmCadNotaEntrada_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;

  ffrmSel_Pedido := TfrmSel_Pedido.Create(self);
  ffrmSel_Pedido.vTipo        := 'NTS';
  ffrmSel_Pedido.vTipo_RegPed := 'C';
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger > 0 then
    ffrmSel_Pedido.vCodCliente := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger
  else
    ffrmSel_Pedido.vCodCliente := 0;
  ffrmSel_Pedido.fDMCadNotaFiscal         := fDMCadNotaFiscal;
  ffrmSel_Pedido.ffrmCadNotaEntrada_Itens := ffrmCadNotaEntrada_Itens;
  ffrmSel_Pedido.ShowModal;

  FreeAndNil(frmSel_Pedido);
  FreeAndNil(ffrmCadNotaEntrada_Itens);

  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadNotaEntrada.SpeedButton2Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsContaOrcamento.Close;
  fDMCadNotaFiscal.cdsContaOrcamento.Open;
end;

procedure TfrmCadNotaEntrada.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'F';
    frmSel_Pessoa.ShowModal;
    fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo4.SetFocus;
  end;
end;

procedure TfrmCadNotaEntrada.rxdbConta_OrcamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ComboBox2.ItemIndex := 1;
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Pos > 0 then
      fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos
    else
      fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.Clear;
  end;
end;

procedure TfrmCadNotaEntrada.Nota1Click(Sender: TObject);
begin
  if not(fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) and (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) then
    exit;
  fDMCadNotaFiscal.prc_Abrir_cdsCFOP('E');
  if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S' then
    prc_Abrir_CSTICMS('S')
  else
    prc_Abrir_CSTICMS('N');
  prc_Posiciona_NotaFiscal;
  prc_Posicionar_Cliente;

  //02/06/2016  incluido a filial
  if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente(True);
  //********************

  fDMNFe := TDMNFe.Create(Self);
  fDMNFe.cdsNotaFiscal.Close;
  fDMNFe.sdsNotaFiscal.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMNFe.cdsNotaFiscal.Open;

  fDMNFe.qFilial.Close;
  fDMNFe.qFilial.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
  fDMNFe.qFilial.Open;

  ffNFe := TfNFe.Create(self);
  ffNFe.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffNFe.fDMNFe := fDMNFe;
  ffNFe.Gera_NFe('NTE');

  vEmail_Fortes         := fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString;
  vEmail_Assunto_Fortes := 'Nota Nº ' +  fDMNFe.cdsNotaFiscalNUMNOTA.AsString;
  vEmail_Fortes_Corpo   := 'Em anexo Nota Nº ' + fDMNFe.cdsNotaFiscalNUMNOTA.AsString + #13;
  vTipo_Config_Email    := 1;
  vFilial			          := fDMNFe.cdsNotaFiscalFILIAL.AsInteger;

  fRelNotaEnt := TfRelNotaEnt.Create(Self);
  fRelNotaEnt.fDMCadNotaFiscal := fDMCadNotaFiscal;
  fRelNotaEnt.fDMNFe           := ffNFe.fDMNFe;
  fRelNotaEnt.RLReport1.PreviewModal;
  FreeAndNil(fRelNotaEnt);
  FreeAndNil(ffNFe);
  FreeAndNil(fDMNFe);
end;

procedure TfrmCadNotaEntrada.Etiquetas1Click(Sender: TObject);
var
  vItemAux, i: Integer;
begin
  prc_Posiciona_NotaFiscal;
  vItemAux := 0;
//  ImpEtiquetasAnt;

  vTipo_Pedido := '';
  frmEtiq_Individual := TfrmEtiq_Individual.Create(self);
  frmEtiq_Individual.fDMConsPedido := TDMConsPedido.Create(Self);
  frmEtiq_Individual.RzPageControl1.ActivePageIndex := 1;

  if not fDMCadNotaFiscal.cdsProduto.Active then
    fDMCadNotaFiscal.cdsProduto.Open;
  fDMCadNotaFiscal.cdsProduto.IndexFieldNames := 'ID';

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
  begin
    for i := 1 to fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsInteger do
    begin
      frmEtiq_Individual.fDMConsPedido.mEtiq_Individual.Insert;
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualID_Produto.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualReferencia.AsString    := fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString;
      fDMCadNotaFiscal.cdsProduto.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger]);
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualPreco_Produto.AsString := FormatFloat('0.00',fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsCurrency);
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualNome_Produto.AsString  := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString;
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualPreco_Produto.AsString := FormatFloat('0.00',fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsCurrency);
      if (fDMCadNotaFiscal.qParametros_ProdUSA_TAM_INDIVIDUAL.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsProdutoTAMANHO.AsString) <> '') then
        frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualTamanho.AsString := fDMCadNotaFiscal.cdsProdutoTAMANHO.AsString;

      if not fDMCadNotaFiscal.cdsProdutoID_MARCA.IsNull then
      begin
        frmEtiq_Individual.fDMConsPedido.cdsMarca.Open;
        frmEtiq_Individual.fDMConsPedido.cdsMarca.IndexFieldNames := 'ID';
        frmEtiq_Individual.fDMConsPedido.cdsMarca.FindKey([fDMCadNotaFiscal.cdsProdutoID_MARCA.AsInteger]);
        frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualMarca.AsString := frmEtiq_Individual.fdmconsPedido.cdsMarcaNOME.AsString;
      end;

      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualItem_Pedido.AsInteger  := 0;
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualID_Pedido.AsInteger    := 0;
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualNum_Pedido.AsInteger   := 0;
      frmEtiq_Individual.fDMConsPedido.mEtiq_Individual.Post;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
  end;

  frmEtiq_Individual.ShowModal;
  FreeAndNil(frmEtiq_Individual);
end;

{procedure TfrmCadNotaEntrada.prc_Aplicar_Margem;
var
  vVlrAux : Real;
begin
  if fDMCadNotaFiscal.qParametros_ProdOPCAO_APLICAR_MARGEM.AsString <> 'C' then
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat)) > 0) then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat * fDMCadNotaFiscal.cdsProdutoPERC_MARGEMLUCRO.AsFloat / 100));
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat + vVlrAux));
      fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.0000',vVlrAux));
    end;
  end
  else
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat)) > 0) then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat * fDMCadNotaFiscal.cdsProdutoPERC_MARGEMLUCRO.AsFloat / 100));
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat + vVlrAux));
      fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.0000',vVlrAux));
    end;
  end;
end;}

procedure TfrmCadNotaEntrada.ImpEtiquetasAnt;
var
  vQtd: String;
  i: Word;
  vArq: String;
  vItemAux : Integer;
begin
  vQtd := InputBox('Etiquetas em branco','Quantidade:','0');

  //if not fDMCadNotaFiscal.mEtiquetas.Active then
  //  fDMCadNotaFiscal.mEtiquetas.CreateDataSet;
  fDMCadNotaFiscal.mEtiquetas.EmptyDataSet;
  fDMCadNotaFiscal.mEtiquetas.IndexFieldNames := 'ITEM';
  vItemAux := 0;
  for i := 1 to StrToInt(vQtd) do
  begin
    vItemAux := vItemAux + 1;
    fDMCadNotaFiscal.mEtiquetas.Insert;
    fDMCadNotaFiscal.mEtiquetasITEM.AsInteger := vItemAux;
    fDmCadNotaFiscal.mEtiquetas.Post;
  end;

  if not fDMCadNotaFiscal.cdsProduto.Active then
    fDMCadNotaFiscal.cdsProduto.Open;
  fDMCadNotaFiscal.cdsProduto.IndexFieldNames := 'ID';

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
  begin
    for i := 1 to fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsInteger do
    begin
      vItemAux := vItemAux + 1;
      fDMCadNotaFiscal.mEtiquetas.Insert;
      fDMCadNotaFiscal.mEtiquetasITEM.AsInteger := vItemAux;
      fDMCadNotaFiscal.mEtiquetasREFERENCIA.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString;
      fDMCadNotaFiscal.mEtiquetasNOME.AsString       := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString;
      fDMCadNotaFiscal.cdsProduto.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger]);
      fDMCadNotaFiscal.mEtiquetasPRECO.AsCurrency    := fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsCurrency;
      fDMCadNotaFiscal.mEtiquetasID.AsInteger        := fDMCadNotaFiscal.cdsProdutoID.AsInteger;
      fDmCadNotaFiscal.mEtiquetas.Post;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
  end;
  if not fDMCadNotaFiscal.mEtiquetas.IsEmpty then
  begin
    vArq := '';
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Etiqueta_Compras.fr3';
    if (FileExists(vArq)) and (trim(vArq) <> '') then
      fDMCadNotaFiscal.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatório não localizado! ' + vArq);
      Exit;
    end;
    fDMCadNotaFiscal.frxReport1.ShowReport;
  end;
end;

procedure TfrmCadNotaEntrada.btnAjusteCustoClick(Sender: TObject);
var
  ffrmCadNotaFiscal_Custo: TfrmCadNotaFiscal_Custo;
  vVlrAnt: Real;
  vVlrNovo: Real;
  vVlrFrete: Real;
begin
  if (fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger <= 0) then
    exit;

  vVlrAnt := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_AJUSTE_CUSTO.AsFloat));
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_AJUSTE_CUSTO.AsString = '-' then
    vVlrAnt := StrToFloat(FormatFloat('0.00',vVlrAnt *-1));

  fDMCadNotaFiscal.vMSGNotaFiscal := '';
  ffrmCadNotaFiscal_Custo := TfrmCadNotaFiscal_Custo.Create(self);
  ffrmCadNotaFiscal_Custo.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Custo.ShowModal;
  FreeAndNil(ffrmCadNotaFiscal_Custo);

  if trim(fDMCadNotaFiscal.vMSGNotaFiscal) <> 'OK' then
    exit;

  vVlrNovo  := StrToFloat(FormatFloat('0.00',0));
  vVlrFrete := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsNotaFiscal_Custo.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Custo.Eof do
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_CustoSD.AsString = '-' then
      vVlrNovo := StrToFloat(FormatFloat('0.00',vVlrNovo - fDMCadNotaFiscal.cdsNotaFiscal_CustoVALOR.AsFloat))
    else
      vVlrNovo := StrToFloat(FormatFloat('0.00',vVlrNovo + fDMCadNotaFiscal.cdsNotaFiscal_CustoVALOR.AsFloat));
    if fDMCadNotaFiscal.cdsNotaFiscal_CustoFRETE.AsString = 'S' then
      vVlrFrete := vVlrFrete + StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_CustoVALOR.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscal_Custo.Next;
  end;
  if (StrToFloat(FormatFloat('0.00',vVlrAnt)) <> StrToFloat(FormatFloat('0.00',vVlrNovo))) or
     (StrToFloat(FormatFloat('0.00',vVlrFrete)) <> StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE_CUSTO.AsFloat))) then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal.Edit;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_AJUSTE_CUSTO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrNovo));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_AJUSTE_CUSTO.AsFloat)) < 0 then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_AJUSTE_CUSTO.AsString := '-';
      fDMCadNotaFiscal.cdsNotaFiscalVLR_AJUSTE_CUSTO.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_AJUSTE_CUSTO.AsFloat * -1));
    end
    else
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_AJUSTE_CUSTO.AsString := '+';
    fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE_CUSTO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrFrete));
    prc_Calcular_Ajuste_Custo(fDMCadNotaFiscal);
    fDMCadNotaFiscal.cdsNotaFiscal.Post;
    fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);
  end;
end;

procedure TfrmCadNotaEntrada.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 83) then //CTRL S
    btnAjustaItens.Visible := not(btnAjustaItens.Visible);
end;

procedure TfrmCadNotaEntrada.btnAjustaItensClick(Sender: TObject);
var
  vIDProd : Integer;
  vQtdPac : Real;
  vQtd : Real;
  vDescAux : Real;
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger <= 0 then
    exit;
  vIDProd := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
  vQtdPac := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
  vQtd    := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
  frmCadNotaEntrada_Itens_Ajuste := TfrmCadNotaEntrada_Itens_Ajuste.Create(self);
  frmCadNotaEntrada_Itens_Ajuste.fDMCadNotaFiscal := fDMCadNotaFiscal;
  frmCadNotaEntrada_Itens_Ajuste.ShowModal;
  FreeAndNil(frmCadNotaEntrada_Itens_Ajuste);

  if (vIDProd <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger) or
    (StrToFloat(FormatFloat('0.0000',vQtdPac)) <> StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat))) or
    (StrToFloat(FormatFloat('0.0000',vQtd)) <> StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat))) then
  begin
    vID_Estoque := 0;
    vID_Mov     := 0;
    vDescAux    := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat));
    //03/07/2018
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString = 'S' then
      prc_Estoque(StrToFloat(FormatFloat('0.0000',vDescAux)));
    if (fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive])) and (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString <> 'N') then
      prc_Movimento(StrToFloat(FormatFloat('0.0000',vDescAux)));
    //Dia 30/05/2013 foi passado para baixo das gravações de estoque e movimento
    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger <> vID_Estoque) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger <> vID_Mov) or
       (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat))  <> StrToFloat(FormatFloat('0.00000',uCalculo_NotaFiscal.vVlrCusto_Total)))  then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger   := vID_Estoque;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger    := vID_Mov;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00000',uCalculo_NotaFiscal.vVlrCusto_Total));
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.ApplyUpdates(0);
    end;
  end;
end;

procedure TfrmCadNotaEntrada.prc_Estoque(vlrDesconto: Real);
var
  vGerarCusto : String;
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger <> fDMCadNotaFiscal.cdsCFOPID.AsInteger then
    fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,[loCaseInsensitive]);
  if fDMCadNotaFiscal.cdsProdutoID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger then
    fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
  vGerarCusto := fDMCadNotaFiscal.cdsCFOPGERAR_CUSTO_MEDIO.AsString;
  if vGerarCusto <> 'N' then
    vGerarCusto := 'S';
  uCalculo_NotaFiscal.prc_Calcular_Custo_Total(fDMCadNotaFiscal);

  vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,0,'E','NTE',
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString,
                                               fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString,
                                               fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat,
                                               vlrDesconto,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat,
                                               vlrDesconto,fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat,'',
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString,vGerarCusto,
                                               uCalculo_NotaFiscal.vVlrCusto_Total);   //ver aqui sobre Lote Controle  04/11/2015

end;

procedure TfrmCadNotaEntrada.prc_Movimento(vlrDesconto: Real);
begin
  vID_Mov := fDMMovimento.fnc_Gravar_Movimento(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,0,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger,0,'NTE',
                                               fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString,
                                               fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString,'NOT',
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat,
                                               vlrDesconto,
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
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString,'',
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString,
                                               fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,
                                               fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString,
                                               fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString,
                                               fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger,0,fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger,fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat,
                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat,1,
                                               uCalculo_NotaFiscal.vVlrCusto_Total,'N');

end;

procedure TfrmCadNotaEntrada.SMDBGrid2TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
