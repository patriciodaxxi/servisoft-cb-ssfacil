unit UCadRecibo;

interface

uses                                                                                                                                         
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadRecibo, DB, RzEdit,
  DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, Menus, RXDBCtrl,
  RzDBEdit, UEscolhe_Filial, UCBase, dbXPress, NxCollection, NxEdit, StrUtils, DateUtils, UCadRecibo_Itens, ComCtrls, UDMMovimento,
  USel_Servico_Extra, RzButton, RzPanel;

type
  TfrmCadRecibo = class(TForm)
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
    Label16: TLabel;
    pnlCliente: TPanel;
    Panel11: TPanel;
    lblTipo_Prazo: TLabel;
    rxcbTipo_Prazo: TRxDBComboBox;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    ZerarDuplicata1: TMenuItem;
    GerarVlrDuplicata1: TMenuItem;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    gbxDuplicata: TRzGroupBox;
    Label72: TLabel;
    SpeedButton6: TSpeedButton;
    SMDBGrid_Dupl2: TSMDBGrid;
    rxdbCondicaoPgto: TRxDBLookupCombo;
    UCControls1: TUCControls;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    Label22: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnRecalcular: TRzBitBtn;
    Label44: TLabel;
    rxdbConta_Orcamento: TRxDBLookupCombo;
    Label45: TLabel;
    rxdbVendedor: TRxDBLookupCombo;
    Label60: TLabel;
    dbPerc_Comissao: TDBEdit;
    Label74: TLabel;
    rxdbTipoCobranca: TRxDBLookupCombo;
    Label75: TLabel;
    rxdbConta: TRxDBLookupCombo;
    btnGerarParcelas: TNxButton;
    btnExcluirParcelas: TNxButton;
    Label62: TLabel;
    dbVlr_Entrada: TDBEdit;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    Panel4: TPanel;
    btnInserir_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnGerar_Automatico: TNxButton;
    btnImprimir_NFSe: TNxButton;
    Label39: TLabel;
    DBEdit19: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBText2: TDBText;
    DBEdit6: TDBEdit;
    pnlServico_Extra: TPanel;
    btnCopiar_ServicoExtra: TNxButton;
    PopupMenu3: TPopupMenu;
    Padro1: TMenuItem;
    Personalizado1: TMenuItem;
    SMDBGrid4: TSMDBGrid;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Boleto1: TMenuItem;
    Recibo1: TMenuItem;
    Apenaslista1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure pnlClienteExit(Sender: TObject);
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
    procedure ZerarDuplicata1Click(Sender: TObject);
    procedure GerarVlrDuplicata1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure btnGerar_AutomaticoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnRecalcularClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure rxdbVendedorExit(Sender: TObject);
    procedure rxdbVendedorEnter(Sender: TObject);
    procedure btnExcluirParcelasClick(Sender: TObject);
    procedure btnGerarParcelasClick(Sender: TObject);
    procedure dbVlr_EntradaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxdbConta_OrcamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxdbVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxdbCondicaoPgtoEnter(Sender: TObject);
    procedure rxdbTipoCobrancaEnter(Sender: TObject);
    procedure rxdbConta_OrcamentoEnter(Sender: TObject);
    procedure Panel5Enter(Sender: TObject);
    procedure btnCopiar_ServicoExtraClick(Sender: TObject);
    procedure Personalizado1Click(Sender: TObject);
    procedure Padro1Click(Sender: TObject);
    procedure pnlClienteEnter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure Boleto1Click(Sender: TObject);
    procedure Apenaslista1Click(Sender: TObject);
  private
    { Private declarations }
    vID_Cliente_Ant: Integer;
    vDadosCorpoEmail: WideString;
    vEmail_NFe: WideString;
    vFilial_Sel: Integer;
    vID_Vendedor_Ant: Integer;
    vPerc_Desc_Ant, vVlr_Desc_Ant: Real;

    ffrmCadRecibo_Itens: TfrmCadRecibo_Itens;
    fDMCadRecibo: TDMCadRecibo;
    fDMMovimento: TDMMovimento;
//    fDmCadOrdemServico: TDmCadOrdemServico;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmSel_Servico_Extra: TfrmSel_Servico_Extra;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_Recibo;
    procedure prc_Posicionar_Cliente;
    procedure prc_Habilitar_CamposNota;
    procedure prc_Opcao_Prazo;

    procedure prc_Gerar_Servico_Int;
    function GetTempDirectory: String;

    function Replace(Str, Ant, Novo: string): string;

    procedure prc_Limpar_Edit_Consulta;

    procedure prc_Gravar_Itens(ID_Servico: Integer; Vlr_Unitario: Real);

    procedure prc_Imprimir_Danfe(Tipo: String); //E= Envio   I=Imprimir
    procedure prc_Posiciona_Imp;

  public
    { Public declarations }
    cTXTStream: TMemoryStream;
    cXMLStream: TMemoryStream;
    sXMLNFSe: TMemoryStream;
  end;

var
  frmCadRecibo: TfrmCadRecibo;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, USel_Pessoa, uNFeComandos, URelRecibo,
  USel_ContaOrc, uUtilCobranca;

{$R *.dfm}

procedure TfrmCadRecibo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  FreeAndNil(fDMMovimento);
  //FreeAndNil(fDMCadRecibo);
  Action := Cafree;
end;

procedure TfrmCadRecibo.btnExcluirClick(Sender: TObject);
begin
  prc_Posiciona_Recibo;
                               
  if fDMCadRecibo.cdsRecibo.IsEmpty then
    exit;

  if fDMCadRecibo.fnc_Duplicata_Paga then
  begin
    MessageDlg('*** Recibo já foi pago ou enviado ao banco!', mtWarning, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadRecibo.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadRecibo.prc_Excluir_Registro;
begin
  fDMCadRecibo.prc_Excluir;
end;

procedure TfrmCadRecibo.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vID_Mov: Integer;
  //vID_ExtComissao: Integer;
  ID: TTransactionDesc;
  sds: TSQLDataSet;
begin

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 '
                     + ' WHERE TABELA = ' + QuotedStr('RECIBO');
    sds.ExecSQL();

    try
      if fDMCadRecibo.cdsReciboNUM_RECIBO.AsInteger <= 0 then
      begin
        fDMCadRecibo.qProximo_Num.Close;
        fDMCadRecibo.qProximo_Num.Open;
        vIDAux := fDMCadRecibo.qProximo_NumNUM_RECIBO.AsInteger;
        vIDAux := vIDAux + 1;
        fDMCadRecibo.cdsReciboNUM_RECIBO.AsInteger := vIDAux;
      end;
      fDMCadRecibo.cdsReciboVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsReciboVLR_TOTAL.AsFloat));
      if fDMCadRecibo.cdsRecibo_Parc.RecordCount > 0 then
        fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString := 'P'
      else
      if StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsReciboVLR_DUPLICATA.AsFloat)) > 0 then
        fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString := 'V'
      else
        fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString := 'N';
      fDMCadRecibo.prc_Gravar;

      fDMCadRecibo.prc_Excluir_Duplicata;
      fDMCadRecibo.Excluir_ExtComissao;
      fDMCadRecibo.prc_Excluir_Financeiro;
      fDMCadRecibo.prc_Excluir_Movimento;

      fDMCadRecibo.prc_Gravar_Comissao('');
        
      if fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString = 'P' then
      begin
        fDMCadRecibo.cdsRecibo_Parc.First;
        while not fDMCadRecibo.cdsRecibo_Parc.Eof do
        begin
          if (fDMCadRecibo.CDSRecibo_ParcITEM.AsInteger = 0) and
             (StrToFloat(FormatFloat('0.00',fDMCadRecibo.CDSRecibo_ParcVLR_VENCIMENTO.AsFloat)) <>
             StrToFloat(FormatFloat('0.00',fDMCadRecibo.CDSReciboVLR_ENTRADA.AsFloat))) then
          begin
            if not(fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert]) then
              fDMCadRecibo.cdsRecibo.Edit;
            fDMCadRecibo.cdsReciboVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadRecibo.CDSRecibo_ParcVLR_VENCIMENTO.AsFloat));
          end;
          fDMCadRecibo.Gravar_Duplicata('R','N',fDMCadRecibo.cdsRecibo_ParcITEM.AsInteger,fDMCadRecibo.cdsRecibo_ParcVLR_VENCIMENTO.AsFloat,fDMCadRecibo.cdsRecibo_ParcDTVENCIMENTO.AsDateTime,'');
          fDMCadRecibo.cdsRecibo_Parc.Next;
        end;
      end
      else
      if fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString = 'V' then
        fDMCadRecibo.Gravar_Duplicata('R','N',1,fDMCadRecibo.cdsReciboVLR_DUPLICATA.AsFloat,fDMCadRecibo.cdsReciboDTEMISSAO.AsDateTime,'AVI');
    except
      on e: Exception do
        raise Exception.Create('Erro ao gravar a Duplicata: ' + #13 + e.Message);
    end;

    try
      fDMCadRecibo.cdsRecibo_Itens.First;
      while not fDMCadRecibo.cdsRecibo_Itens.Eof do
      begin
        vID_Mov := fDMMovimento.fnc_Gravar_Movimento(fDMCadRecibo.cdsRecibo_ItensID_MOVIMENTO.AsInteger,
                                                     fDMCadRecibo.cdsReciboFILIAL.AsInteger,fDMCadRecibo.cdsRecibo_ItensITEM.AsInteger,
                                                     0,fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger,
                                                     0,0,fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger,0,
                                                     fDMCadRecibo.cdsReciboNUM_RECIBO.AsInteger,0,'REC','REC','S','REC',
                                                     fDMCadRecibo.cdsRecibo_ItensVLR_UNITARIO.AsFloat,
                                                     fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat,0,0,0,0,0,
                                                     0,0,0,0,0,0,fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat,
                                                     0,0,0,0,0,0,0,0,0,0,0,0,fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat,0,0,0,0,0,0,
                                                     fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat,0,
                                                     'N','N','UN','',
                                                     fDMCadRecibo.cdsRecibo_ItensNOME_SERVICO_INT.AsString,
                                                     'SER.'+fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsString,
                                                     fDMCadRecibo.cdsReciboDTEMISSAO.AsDateTime,
                                                     fDMCadRecibo.cdsReciboDTEMISSAO.AsDateTime,'',
                                                     fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString,
                                                     fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger,
                                                     fDMCadRecibo.cdsReciboID.AsInteger,
                                                     fDMCadRecibo.cdsReciboID_VENDEDOR.AsInteger,0,
                                                     fDMCadRecibo.cdsReciboPERC_COMISSAO.AsFloat,0,0,1,0,'N');


        if vID_Mov <> fDMCadRecibo.cdsReciboID_MOVIMENTO.AsInteger then
        begin
          fDMCadRecibo.cdsRecibo_Itens.Edit;
          fDMCadRecibo.cdsRecibo_ItensID_MOVIMENTO.AsInteger := vID_Mov;
          fDMCadRecibo.cdsRecibo_Itens.Post;
        end;

        fDMCadRecibo.cdsRecibo_Itens.Next;
      end;
      {if vID_Mov <> fDMCadRecibo.cdsReciboID_MOVIMENTO.AsInteger then
      begin
        fDMCadRecibo.cdsRecibo.Edit;
        fDMCadRecibo.cdsReciboID_MOVIMENTO.AsInteger := vID_Mov;
        fDMCadRecibo.cdsRecibo.Post;
      end;}

      fDMCadRecibo.cdsRecibo_Itens.First;
      while not fDMCadRecibo.cdsRecibo_Itens.Eof do
      begin

        //Atualiza Status do pedido
        //Cleomar
        {if (fDMCadRecibo.cdsRecibo_ItensID_PEDIDO.AsInteger > 0) and not(fDMCadRecibo.mPedidoAux.FindKey([fDMCadRecibo.cdsRecibo_ItensID_PEDIDO.AsInteger])) then
        begin
          fDMCadRecibo.mPedidoAux.Insert;
          fDMCadRecibo.mPedidoAuxID_Pedido.AsInteger := fDMCadRecibo.cdsRecibo_ItensID_PEDIDO.AsInteger;
          fDMCadRecibo.mPedidoAux.Post;
        end;}
        //****************

        fDMCadRecibo.cdsRecibo_Itens.Next;
      end;

      //Atualiza Status do pedido
      //Cleomar
      {fDMCadRecibo.mPedidoAux.First;
      while not fDMCadRecibo.mPedidoAux.Eof do
      begin
        fDMCadRecibo.sdsPrc_Atualiza_Status_Ped.Close;
        fDMCadRecibo.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMCadRecibo.mPedidoAuxID_Pedido.AsInteger;
        fDMCadRecibo.sdsPrc_Atualiza_Status_Ped.ExecSQL;
        fDMCadRecibo.mPedidoAux.Next;
      end;}

      fDMCadRecibo.cdsRecibo.ApplyUpdates(0);

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
  prc_Posiciona_Recibo;
end;

procedure TfrmCadRecibo.prc_Inserir_Registro;
begin
  fDMCadRecibo.cdsParametros.Close;
  fDMCadRecibo.cdsParametros.Open;
  if fDMCadRecibo.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadRecibo.cdsFilial.Last;
    vFilial      := fDMCadRecibo.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadRecibo.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDMCadRecibo.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  fDMCadRecibo.prc_Inserir('');
  lblNome_Filial.Caption := vFilial_Nome;

  if fDMCadRecibo.cdsRecibo.State in [dsBrowse] then
    exit;

  prc_Habilitar_CamposNota;

  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;

  {if fDMCadRecibo.cdsFilialID_SERVICO_PAD.AsInteger > 0 then
    fDMCadRecibo.cdsReciboID_SERVICO.AsInteger := fDMCadRecibo.cdsFilialID_SERVICO_PAD.AsInteger;}
  RxDBLookupCombo3.SetFocus;
end;

procedure TfrmCadRecibo.FormShow(Sender: TObject);
var
  vData: TDateTime;
  i: Integer;
begin
  fDMCadRecibo       := TDMCadRecibo.Create(Self);
  
  oDBUtils.SetDataSourceProperties(Self, fDMCadRecibo);
  fDMMovimento := TDMMovimento.Create(Self);
  fDMCadRecibo.prc_Abrir_cdsCliente('');

  vFilial_Sel           := 0;
  //ckHomologacao.Visible := (fDMCadRecibo.cdsFilialNFSE_HOMOLOGACAO.AsString = 'S');

  vData          := EncodeDate(YearOf(Date),MonthOf(Date),01);
  //vData          := Date - 30;
  NxDatePicker1.Date := vData;
  NxDatePicker2.Date := Date;
  fDMCadRecibo.cdsRecibo_Consulta.IndexFieldNames := 'DTEMISSAO';
  btnConsultar.Click;

  //Vendedor
  Label45.Visible           := (fDMCadRecibo.cdsParametrosUSA_VENDEDOR.AsString = 'S');
  Label60.Visible           := (fDMCadRecibo.cdsParametrosUSA_VENDEDOR.AsString = 'S');
  rxdbVendedor.Visible      := (fDMCadRecibo.cdsParametrosUSA_VENDEDOR.AsString = 'S');
  dbPerc_Comissao.Visible   := (fDMCadRecibo.cdsParametrosUSA_VENDEDOR.AsString = 'S');

  //Contrato
  DBEdit6.Visible := (fDMCadRecibo.cdsParametrosUSA_ANO_CONTRATO.AsString = 'S');

  Label3.Visible    := (fDMCadRecibo.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString <> 'S');
  DBEdit6.Visible   := ((fDMCadRecibo.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString <> 'S'));
  DBEdit2.Visible   := (fDMCadRecibo.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString <> 'S');
  SMDBGrid4.Visible := (fDMCadRecibo.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString = 'S');
  Label4.Visible    := (fDMCadRecibo.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString <> 'S');
  DBEdit5.Visible   := (fDMCadRecibo.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString <> 'S');
end;

procedure TfrmCadRecibo.prc_Consultar(ID: Integer);
begin
  fDMCadRecibo.cdsRecibo_Consulta.Close;
  fDMCadRecibo.sdsRecibo_Consulta.CommandText := fDMCadRecibo.ctConsulta;
  if ID > 0 then
    fDMCadRecibo.sdsRecibo_Consulta.CommandText := fDMCadRecibo.sdsRecibo_Consulta.CommandText +
                                                           ' WHERE REC.ID = ' + IntToStr(ID)
  else
  begin
    fDMCadRecibo.sdsRecibo_Consulta.CommandText := fDMCadRecibo.sdsRecibo_Consulta.CommandText + ' WHERE 0 = 0 ';
    if not(RxDBLookupCombo1.Text = '') then
      fDMCadRecibo.sdsRecibo_Consulta.CommandText := fDMCadRecibo.sdsRecibo_Consulta.CommandText +
                                                             ' AND REC.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if CurrencyEdit1.AsInteger > 0 then
      fDMCadRecibo.sdsRecibo_Consulta.CommandText := fDMCadRecibo.sdsRecibo_Consulta.CommandText +
                                                             ' AND REC.NUM_RECIBO = ' + CurrencyEdit1.Text;
    if NxDatePicker1.Text <> '' then
      fDMCadRecibo.sdsRecibo_Consulta.CommandText := fDMCadRecibo.sdsRecibo_Consulta.CommandText
                          + ' AND REC.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
    if NxDatePicker2.Text <> '' then
      fDMCadRecibo.sdsRecibo_Consulta.CommandText := fDMCadRecibo.sdsRecibo_Consulta.CommandText
                          + ' AND REC.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));
    if Trim(Edit2.Text) <> '' then
      fDMCadRecibo.sdsRecibo_Consulta.CommandText := fDMCadRecibo.sdsRecibo_Consulta.CommandText
                                      + ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')'
                                      + ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';
  end;
  fDMCadRecibo.cdsRecibo_Consulta.Open;
end;

procedure TfrmCadRecibo.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadRecibo.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadRecibo.cdsRecibo.State in [dsBrowse]) or not(fDMCadRecibo.cdsRecibo.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadRecibo.cdsRecibo.CancelUpdates;

  prc_Habilitar_CamposNota;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadRecibo.btnAlterarClick(Sender: TObject);
var
  vCodAux: String;
begin
  fDMCadRecibo.cdsParametros.Close;
  fDMCadRecibo.cdsParametros.Open;

  if (fDMCadRecibo.cdsRecibo.IsEmpty) or not(fDMCadRecibo.cdsRecibo.Active) or (fDMCadRecibo.cdsReciboID.AsInteger < 1) then
    exit;

  if fDMCadRecibo.fnc_Duplicata_Paga then
  begin
    MessageDlg('*** Recibo já foi pago ou enviado ao banco!', mtWarning, [mbOk], 0);
    exit;
  end;

  fDMCadRecibo.cdsRecibo.Edit;

  prc_Posicionar_Cliente;

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_CamposNota;
end;

procedure TfrmCadRecibo.btnConfirmarClick(Sender: TObject);
var
  vIDAux: Integer;
  cData: String;
begin
  if (fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger > 0) and
     (fDMCadRecibo.cdsCondPgto.Locate('ID',fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger,([Locaseinsensitive]))) then
  begin
    if (fDMCadRecibo.cdsCondPgtoENTRADA.AsString = 'N') then
      fDMCadRecibo.cdsReciboVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',0));
  end;
  if ((fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString = 'V') or (StrToFloat(formatFloat('0.00',fDMCadRecibo.cdsReciboVLR_ENTRADA.AsFloat)) > 0)) and
     (fDMCadRecibo.cdsReciboID_CONTA.AsInteger <= 0) then
    fDMCadRecibo.cdsReciboID_CONTA.AsInteger := fDMCadRecibo.cdsParametrosID_CONTA_PADRAO.AsInteger;
  if ((fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString = 'V') or (StrToFloat(formatFloat('0.00',fDMCadRecibo.cdsReciboVLR_ENTRADA.AsFloat)) > 0)) and
     (fDMCadRecibo.cdsReciboID_TIPO_COBRANCA.AsInteger <= 0) then
    fDMCadRecibo.cdsReciboID_TIPO_COBRANCA.AsInteger := fDMCadRecibo.cdsParametrosID_TIPO_COBRANCA_PADRAO.AsInteger;
  if (fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString = 'V') and not(fDMCadRecibo.cdsRecibo_Parc.IsEmpty) then
  begin
    fDMCadRecibo.cdsRecibo_Parc.First;
    while not fDMCadRecibo.cdsRecibo_Parc.Eof do
      fDMCadRecibo.cdsRecibo_Parc.Delete;
  end;
  if ((fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString = 'V') or (StrToFloat(formatFloat('0.00',fDMCadRecibo.cdsReciboVLR_ENTRADA.AsFloat)) > 0)) and
     (fDMCadRecibo.cdsReciboID_CONTA.AsInteger <= 0) then
    fDMCadRecibo.cdsReciboID_CONTA.AsInteger := fDMCadRecibo.cdsParametrosID_CONTA_PADRAO.AsInteger;
  if ((fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString = 'V') or (StrToFloat(formatFloat('0.00',fDMCadRecibo.cdsReciboVLR_ENTRADA.AsFloat)) > 0)) and
     (fDMCadRecibo.cdsReciboID_TIPO_COBRANCA.AsInteger <= 0) then
    fDMCadRecibo.cdsReciboID_TIPO_COBRANCA.AsInteger := fDMCadRecibo.cdsParametrosID_TIPO_COBRANCA_PADRAO.AsInteger;

  if fDMCadRecibo.fnc_Possui_Erro then
  begin
    MessageDlg(fDMCadRecibo.vMSGRecibo, mtError, [mbOk], 0);
    exit;
  end;

  vIDAux := fDMCadRecibo.cdsReciboID.AsInteger;
  prc_Gravar_Registro;
  prc_Consultar(vIDAux);
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadRecibo.prc_Posiciona_Recibo;
begin
  fDMCadRecibo.prc_Localizar(fDMCadRecibo.cdsRecibo_ConsultaID.AsInteger);
  fDMCadRecibo.cdsRecibo_Itens.Close;
  fDMCadRecibo.cdsRecibo_Itens.Open;
  fDMCadRecibo.cdsRecibo_Parc.Close;
  fDMCadRecibo.cdsRecibo_Parc.Open;
  vFilial      := fDMCadRecibo.cdsReciboFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadRecibo.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadRecibo.cdsFilialNOME_INTERNO.AsString;
  if fDMCadRecibo.cdsClienteCODIGO.AsInteger <> fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger then
    fDMCadRecibo.cdsCliente.Locate('CODIGO',fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger,[loCaseInsensitive]);
  lblNome_Filial.Caption := vFilial_Nome;
end;

procedure TfrmCadRecibo.pnlClienteExit(Sender: TObject);
begin
  prc_Posicionar_Cliente;
  if vID_Cliente_Ant <> fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger then
  begin
    fDMCadRecibo.cdsReciboID_TIPO_COBRANCA.AsInteger := fDMCadRecibo.cdsClienteID_TIPOCOBRANCA.AsInteger;
    fDMCadRecibo.cdsReciboID_CONTA.AsInteger         := fDMCadRecibo.cdsClienteID_CONTABOLETO.AsInteger;
  end;
end;

procedure TfrmCadRecibo.prc_Posicionar_Cliente;
begin
  if fDMCadRecibo.cdsClienteCODIGO.AsInteger <> fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger then
    fDMCadRecibo.cdsCliente.Locate('CODIGO',fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if (fDMCadRecibo.cdsFilialID.AsInteger <> fDMCadRecibo.cdsReciboFILIAL.AsInteger) then
    fDMCadRecibo.cdsFilial.Locate('ID',fDMCadRecibo.cdsReciboFILIAL.AsInteger,[loCaseInsensitive]);
end;

procedure TfrmCadRecibo.prc_Habilitar_CamposNota;
begin
  btnConfirmar.Enabled       := not(btnConfirmar.Enabled);
  Boleto1.Enabled            := not(Boleto1.Enabled);
  btnAlterar.Enabled         := not(btnAlterar.Enabled);

  DBMemo1.ReadOnly           := not(DBMemo1.ReadOnly);
  pnlCadastro.Enabled        := not(pnlCadastro.Enabled);

  SMDBGrid_Dupl2.ReadOnly    := not(SMDBGrid_Dupl2.ReadOnly);

  btnGerarParcelas.Enabled   := not(btnGerarParcelas.Enabled);
  btnExcluirParcelas.Enabled := not(btnExcluirParcelas.Enabled);

  rxdbCondicaoPgto.ReadOnly  := not(rxdbCondicaoPgto.ReadOnly);
  rxdbConta_Orcamento.ReadOnly := not(rxdbConta_Orcamento.ReadOnly);
  rxdbConta.ReadOnly         := not(rxdbConta.ReadOnly);
  rxdbTipoCobranca.ReadOnly  := not(rxdbTipoCobranca.ReadOnly);

  rxdbVendedor.ReadOnly      := not(rxdbVendedor.ReadOnly);
  dbPerc_Comissao.ReadOnly   := not(dbPerc_Comissao.ReadOnly);

  dbVlr_Entrada.ReadOnly     := not(dbVlr_Entrada.ReadOnly);

  btnInserir_Itens.Enabled   := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled   := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled   := not(btnExcluir_Itens.Enabled);
  btnGerar_Automatico.Enabled := not(btnGerar_Automatico.Enabled);
  btnRecalcular.Enabled      := not(btnRecalcular.Enabled);
end;

procedure TfrmCadRecibo.SpeedButton1Click(Sender: TObject);
begin
  fDMCadRecibo.cdsCliente.Close;
  fDMCadRecibo.cdsCliente.Open;
end;

procedure TfrmCadRecibo.SpeedButton6Click(Sender: TObject);
begin
  fDMCadRecibo.cdsCondPgto.Close;
  fDMCadRecibo.cdsCondPgto.Open;
end;

procedure TfrmCadRecibo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadRecibo.cdsRecibo);
end;

procedure TfrmCadRecibo.edtSerieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadRecibo.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadRecibo.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadRecibo.RxDBLookupCombo3Exit(Sender: TObject);
var
  vAux: Real;
begin
  if trim(RxDBLookupCombo3.Text) = '' then
    exit;
  if fDMCadRecibo.cdsClienteCODIGO.AsInteger <> RxDBLookupCombo3.KeyValue then
    fDMCadRecibo.cdsCliente.Locate('CODIGO',RxDBLookupCombo3.KeyValue,[loCaseInsensitive]);
  if (fDMCadRecibo.cdsRecibo.State in [dsInsert]) or (fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger <> vID_Cliente_Ant) then
  begin
    if fDMCadRecibo.cdsClienteID_CONDPGTO.AsInteger > 0 then
      fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger := fDMCadRecibo.cdsClienteID_CONDPGTO.AsInteger;
    if fDMCadRecibo.cdsClienteID_TIPOCOBRANCA.AsInteger > 0 then
      fDMCadRecibo.cdsReciboID_TIPO_COBRANCA.AsInteger := fDMCadRecibo.cdsClienteID_TIPOCOBRANCA.AsInteger;
    if fDMCadRecibo.cdsClienteID_CONTABOLETO.AsInteger > 0 then
      fDMCadRecibo.cdsReciboID_CONTA.AsInteger := fDMCadRecibo.cdsClienteID_CONTABOLETO.AsInteger;
    //if fDMCadRecibo.cdsClienteID_SERVICO.AsInteger > 0 then
      //fDMCadRecibo.cdsReciboID_SERVICO.AsInteger := fDMCadRecibo.cdsClienteID_SERVICO.AsInteger;
    if fDMCadRecibo.cdsFilialID.AsInteger <> fDMCadRecibo.cdsReciboFILIAL.AsInteger then
      fDMCadRecibo.cdsFilial.Locate('ID',fDMCadRecibo.cdsReciboFILIAL.AsInteger,[loCaseInsensitive]);
    if fDMCadRecibo.cdsClienteCLIENTE_CONTA_ID.AsInteger > 0 then
      fDMCadRecibo.cdsReciboID_CONTA_ORCAMENTO.AsInteger := fDMCadRecibo.cdsClienteCLIENTE_CONTA_ID.AsInteger
    else
    if fDMCadRecibo.cdsParametrosID_CONTA_ORC_SERVICO.AsInteger > 0 then
      fDMCadRecibo.cdsReciboID_CONTA_ORCAMENTO.AsInteger := fDMCadRecibo.cdsParametrosID_CONTA_ORC_SERVICO.AsInteger;
    //Vendedor
    if fDMCadRecibo.cdsParametrosUSA_VENDEDOR.AsString = 'S' then
    begin
      if fDMCadRecibo.cdsClienteID_VENDEDOR.AsInteger > 0 then
        fDMCadRecibo.cdsReciboID_VENDEDOR.AsInteger := fDMCadRecibo.cdsClienteID_VENDEDOR.AsInteger;
      if StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsClientePERC_COMISSAO.AsFloat)) > 0 then
        fDMCadRecibo.cdsReciboPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsClientePERC_COMISSAO.AsFloat))
      else
      if (fDMCadRecibo.cdsReciboID_VENDEDOR.AsInteger > 0) and (fDMCadRecibo.cdsVendedor.Locate('CODIGO',fDMCadRecibo.cdsReciboID_VENDEDOR.AsInteger,[loCaseInsensitive])) then
      begin
        if StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsVendedorPERC_COMISSAO_VEND.AsFloat)) > 0 then
          fDMCadRecibo.cdsReciboPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsVendedorPERC_COMISSAO_VEND.AsFloat));
      end;
    end;
  end;
  //*******
end;

procedure TfrmCadRecibo.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end;
end;

procedure TfrmCadRecibo.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadRecibo.cdsRecibo_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadRecibo.rxdbCondicaoPgtoChange(Sender: TObject);
begin
  if (fDMCadRecibo.cdsReciboNUM_CONTRATO.AsInteger <= 0) or (fDMCadRecibo.cdsReciboNUM_CONTRATO.IsNull) then
  begin
    prc_Opcao_Prazo;
    if fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert] then
      btnGerarParcelasClick(Sender);
  end;
end;

procedure TfrmCadRecibo.prc_Opcao_Prazo;
var
  vMostrarAux: String;
begin
  vMostrarAux := 'N';
  if rxdbCondicaoPgto.Text <> '' then
  begin
    if fDMCadRecibo.cdsCondPgto.Locate('ID',rxdbCondicaoPgto.KeyValue,[loCaseInsensitive]) then
      vMostrarAux := fDMCadRecibo.cdsCondPgtoTIPO.AsString;
  end;
  btnGerarParcelas.Visible   := (vMostrarAux = 'P');
  btnExcluirParcelas.Visible := (vMostrarAux = 'P');

  Label62.Visible            := ((vMostrarAux = 'P') and (fDMCadRecibo.cdsCondPgtoENTRADA.AsString = 'S'));
  dbVlr_Entrada.Visible      := ((vMostrarAux = 'P') and (fDMCadRecibo.cdsCondPgtoENTRADA.AsString = 'S'));

  SMDBGrid_Dupl2.Visible     := (vMostrarAux = 'P');
  if fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert] then
  begin
    fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString := vMostrarAux;
    if vMostrarAux = 'P' then
      rxcbTipo_Prazo.ItemIndex := 0
    else
    if vMostrarAux = 'V' then
      rxcbTipo_Prazo.ItemIndex := 1
    else
    if vMostrarAux = 'N' then
      rxcbTipo_Prazo.ItemIndex := 2;
  end;
  rxdbTipoCobranca.Visible    := (fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger > 0);
  rxdbConta.Visible           := (fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger > 0);
  rxdbConta_Orcamento.Visible := ((fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger > 0) and (fDMCadRecibo.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S'));
  Label74.Visible             := (fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger > 0);
  Label75.Visible             := (fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger > 0);
  Label44.Visible             := ((fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger > 0) and (fDMCadRecibo.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S'));
end;

procedure TfrmCadRecibo.ZerarDuplicata1Click(Sender: TObject);
begin
  if not (fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert]) then
    exit;
  SMDBGrid2.DisableScroll;
  fDMCadRecibo.prc_Le_Itens('Z');
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadRecibo.GerarVlrDuplicata1Click(Sender: TObject);
begin
  if not (fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert]) then
    exit;
  SMDBGrid2.DisableScroll;
  fDMCadRecibo.prc_Le_Itens('G');
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadRecibo.SMDBGrid1DblClick(Sender: TObject);
begin
  prc_Posiciona_Recibo;
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadRecibo.btnInserir_ItensClick(Sender: TObject);
begin
  if fDMCadRecibo.cdsParametrosIMPRESSAO_MATRICIAL.AsString = 'S' then
    if fDMCadRecibo.cdsRecibo_Itens.RecordCount > 3 then
    begin
      ShowMessage('Limitado a 4 serviços por recibo!');
      Exit; 
    end;
  fDMCadRecibo.prc_Inserir_Itens;

  fDMCadRecibo.vVlrTotal_NFSe          := 0;

  ffrmCadRecibo_Itens := TfrmCadRecibo_Itens.Create(self);
  ffrmCadRecibo_Itens.fDMCadRecibo := fDMCadRecibo;
  ffrmCadRecibo_Itens.ShowModal;

  FreeAndNil(ffrmCadRecibo_Itens);

  btnRecalcularClick(Sender);
end;

procedure TfrmCadRecibo.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDMCadRecibo.cdsRecibo_Itens.IsEmpty) or (fDMCadRecibo.cdsRecibo_ItensITEM.AsInteger <= 0) then
    exit;

  fDMCadRecibo.cdsRecibo_Itens.Edit;

  fDMCadRecibo.vVlrTotal_NFSe      := StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat));

  ffrmCadRecibo_Itens := TfrmCadRecibo_Itens.Create(self);
  ffrmCadRecibo_Itens.fDMCadRecibo       := fDMCadRecibo;
  ffrmCadRecibo_Itens.ShowModal;
  FreeAndNil(ffrmCadRecibo_Itens);

  btnRecalcularClick(Sender);
end;

procedure TfrmCadRecibo.btnExcluir_ItensClick(Sender: TObject);
begin
  if not(fDMCadRecibo.cdsRecibo_Itens.Active) and (fDMCadRecibo.cdsRecibo_Itens.IsEmpty) or (fDMCadRecibo.cdsRecibo_ItensITEM.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadRecibo.prc_Excluir_Item;

  btnRecalcularClick(Sender);
end;

procedure TfrmCadRecibo.btnGerar_AutomaticoClick(Sender: TObject);
begin
  prc_Gerar_Servico_Int;
end;

procedure TfrmCadRecibo.prc_Gerar_Servico_Int;
begin
  if fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger <= 0 then
  begin
    ShowMessage('*** Cliente não informado!');
    exit;
  end;
  if not fDMCadRecibo.cdsCliente.Locate('CODIGO',fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger,[loCaseInsensitive]) then
    exit;
  if not fDMCadRecibo.cdsRecibo_Itens.IsEmpty then
    exit;

  fDMCadRecibo.vVlrTotal_NFSe          := 0;

  if (fDMCadRecibo.cdsClienteID_SERVICO_INT.AsInteger > 0) then
    prc_Gravar_Itens(fDMCadRecibo.cdsClienteID_SERVICO_INT.AsInteger,fDMCadRecibo.cdsClienteVLR_SERVICO.AsFloat);

  fDMCadRecibo.cdsPessoa_Servico_Int.Close;
  fDMCadRecibo.sdsPessoa_Servico_Int.ParamByName('CODIGO').AsInteger := fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger;
  fDMCadRecibo.cdsPessoa_Servico_Int.Open;
  fDMCadRecibo.cdsPessoa_Servico_Int.First;
  while not fDMCadRecibo.cdsPessoa_Servico_Int.Eof do
  begin
    prc_Gravar_Itens(fDMCadRecibo.cdsPessoa_Servico_IntID_SERVICO_INT.AsInteger,fDMCadRecibo.cdsPessoa_Servico_IntVLR_SERVICO.AsFloat);
    fDMCadRecibo.cdsPessoa_Servico_Int.Next;
  end;

  fDMCadRecibo.prc_Recalcular;
end;

function TfrmCadRecibo.GetTempDirectory: String;
var
  tempFolder: array[0..MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @tempFolder);
  result := StrPas(tempFolder);
end;

procedure TfrmCadRecibo.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if not pnlPesquisa.Visible then
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadRecibo.prc_Limpar_Edit_Consulta;
begin
  CurrencyEdit1.Clear;
  NxDatePicker1.Clear;
  NxDatePicker2.Clear;
  Edit2.Clear;
end;

procedure TfrmCadRecibo.prc_Imprimir_Danfe(Tipo: String);
begin
  fDMCadRecibo.mImpNota.EmptyDataSet;
  if Tipo = 'I' then
  begin
    fDMCadRecibo.cdsRecibo_Consulta.First;
    while not fDMCadRecibo.cdsRecibo_Consulta.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
      begin
        fDMCadRecibo.mImpNota.Insert;
        fDMCadRecibo.mImpNotaID_Nota.AsInteger := fDMCadRecibo.cdsRecibo_ConsultaID.AsInteger;
        fDMCadRecibo.mImpNota.Post;
      end;
      fDMCadRecibo.cdsRecibo_Consulta.Next;
    end;
  end;
  fDMCadRecibo.cdsReciboImp.Close;

  if fDMCadRecibo.mImpNota.IsEmpty then
  begin
    MessageDlg('*** Nenhum recibo selecionado para a impressão!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadRecibo.mImpNota.First;
  fRelRecibo              := TfRelRecibo.Create(Self);
  fRelRecibo.fDMCadRecibo := fDMCadRecibo;
  fRelRecibo.RLReport1.PreviewModal;
  FreeAndNil(fRelRecibo);
end;

procedure TfrmCadRecibo.prc_Gravar_Itens(ID_Servico: Integer; Vlr_Unitario: Real);
begin
  fDMCadRecibo.prc_Inserir_Itens;
  fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger    := ID_Servico;
  fDMCadRecibo.cdsRecibo_ItensQTD.AsInteger               := 1;
  fDMCadRecibo.cdsRecibo_ItensVLR_UNITARIO.AsFloat        := Vlr_Unitario;
  fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat           := StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsRecibo_ItensVLR_UNITARIO.AsFloat * fDMCadRecibo.cdsRecibo_ItensQTD.AsInteger));
  if fDMCadRecibo.cdsServico_Int.Locate('ID',fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger,[loCaseInsensitive]) then
    fDMCadRecibo.cdsRecibo_ItensNOME_SERVICO_INT.AsString := fDMCadRecibo.cdsServico_IntNOME.AsString;
  fDMCadRecibo.cdsRecibo_Itens.Post;
end;

procedure TfrmCadRecibo.btnRecalcularClick(Sender: TObject);
begin
  fDMCadRecibo.prc_Recalcular;
end;

procedure TfrmCadRecibo.RzPageControl1Change(Sender: TObject);
begin
  if fDMCadRecibo.cdsRecibo.State in [dsEdit, dsInsert] then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
      prc_Opcao_Prazo;
  end
  else
  if not(fDMCadRecibo.cdsRecibo.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadRecibo.cdsRecibo_Consulta.Active) or (fDMCadRecibo.cdsRecibo_Consulta.IsEmpty) or (fDMCadRecibo.cdsRecibo_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_Recibo;
      prc_Opcao_Prazo;
    end;
  end;
end;

procedure TfrmCadRecibo.rxdbVendedorExit(Sender: TObject);
begin
  if not fDMCadRecibo.cdsVendedor.Active then
    exit;
  if (rxdbVendedor.Text <> '') and ((vID_Vendedor_Ant <> rxdbVendedor.KeyValue) or (StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsReciboPERC_COMISSAO.AsFloat)) <= 0)) then
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsVendedorPERC_COMISSAO_VEND.AsFloat)) > 0) then
      fDMCadRecibo.cdsReciboPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsVendedorPERC_COMISSAO_VEND.AsFloat));
  end;
end;

procedure TfrmCadRecibo.rxdbVendedorEnter(Sender: TObject);
begin
  FDMCadRecibo.cdsVendedor.IndexFieldNames := 'NOME';
  vID_Vendedor_Ant := 0;
  if rxdbVendedor.Text <> '' then
    vID_Vendedor_Ant := rxdbVendedor.KeyValue;
end;

procedure TfrmCadRecibo.btnExcluirParcelasClick(Sender: TObject);
begin
  if (fDMCadRecibo.cdsRecibo_Parc.IsEmpty) or (fDMCadRecibo.cdsRecibo_ParcID.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadRecibo.cdsRecibo_Parc.Delete;
end;

procedure TfrmCadRecibo.btnGerarParcelasClick(Sender: TObject);
begin
  if not fDMCadRecibo.fnc_Gerar_Recibo_Parc then
    MessageDlg(fDMCadRecibo.vMsgErroParc, mtError, [mbOk], 0);
end;

procedure TfrmCadRecibo.dbVlr_EntradaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    if trim(dbVlr_Entrada.Text) <> '' then
      fDMCadRecibo.cdsReciboVLR_ENTRADA.AsFloat := StrToFloat(dbVlr_Entrada.Text)
    else
      fDMCadRecibo.cdsReciboVLR_ENTRADA.AsFloat := 0;
    btnGerarParcelasClick(Sender);
  end;
end;

procedure TfrmCadRecibo.rxdbConta_OrcamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadRecibo.cdsReciboID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ShowModal;
    fDMCadRecibo.cdsReciboID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos;
    FreeAndNil(frmSel_ContaOrc);
  end;
end;

procedure TfrmCadRecibo.rxdbVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadRecibo.cdsReciboID_VENDEDOR.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'V';
    frmSel_Pessoa.ShowModal;
    fDMCadRecibo.cdsReciboID_VENDEDOR.AsInteger := vCodPessoa_Pos;
    rxdbVendedor.SetFocus;
  end;
end;

procedure TfrmCadRecibo.rxdbCondicaoPgtoEnter(Sender: TObject);
begin
  fDMCadRecibo.cdsCondPgto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadRecibo.rxdbTipoCobrancaEnter(Sender: TObject);
begin
  fDMCadRecibo.cdsTipoCobranca.IndexFieldNames := 'NOME';
end;

procedure TfrmCadRecibo.rxdbConta_OrcamentoEnter(Sender: TObject);
begin
  fDMCadRecibo.cdsContaOrcamento.IndexFieldNames := 'NOME_AUX';
end;

procedure TfrmCadRecibo.Panel5Enter(Sender: TObject);
begin
  vID_Cliente_Ant := fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger;
end;

function TfrmCadRecibo.Replace(Str, Ant, Novo: string): string;
var
  iPos: Integer;
begin
  while Pos(Ant, Str) > 0 do
  begin
    iPos := Pos(Ant, Str);
    Str := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

procedure TfrmCadRecibo.btnCopiar_ServicoExtraClick(Sender: TObject);
begin
  vID_Cliente_Ant := fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger;
  ffrmCadRecibo_Itens := TfrmCadRecibo_Itens.Create(self);
  ffrmCadRecibo_Itens.fDMCadRecibo := fDMCadRecibo;

  ffrmSel_Servico_Extra := TfrmSel_Servico_Extra.Create(self);
  ffrmSel_Servico_Extra.vCodCliente         := fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger;
  ffrmSel_Servico_Extra.fDMCadRecibo        := fDMCadRecibo;
  ffrmSel_Servico_Extra.ffrmCadRecibo_Itens := ffrmCadRecibo_Itens;
  ffrmSel_Servico_Extra.ShowModal;

  FreeAndNil(ffrmSel_Servico_Extra);
  FreeAndNil(ffrmCadRecibo_Itens);

  if vID_Cliente_Ant <> fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger then
    RxDBLookupCombo3Exit(Sender);
  btnRecalcularClick(Sender);

  prc_Opcao_Prazo;
  if fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert] then
    btnGerarParcelasClick(Sender);
end;

procedure TfrmCadRecibo.Personalizado1Click(Sender: TObject);
var
  vArq: String;
  i: Integer;
begin
  prc_Posiciona_Imp;

  if not fDMCadRecibo.cdsReciboImp.Active then
    exit;

  fDMCadRecibo.cdsReciboImp.First;
  fDMCadRecibo.cdsFilial.Locate('ID',fDMCadRecibo.cdsReciboImpFILIAL.AsInteger,[loCaseInsensitive]);

  if fDMCadRecibo.cdsFilialRelatorios.Locate('TIPO',9,([loCaseInsensitive])) then //tipo 9 = Recibo
  begin
    vArq := fDMCadRecibo.cdsFilialRelatoriosCAMINHO.AsString;
    fDMCadRecibo.frxReport1.Report.LoadFromFile(vArq);
    if FileExists(vArq) then
    begin
      i := 0;
      fDMCadRecibo.cdsReciboImp_Parc.First;
      while not fDMCadRecibo.cdsReciboImp_Parc.Eof do
      begin
        i := i + 1;
        if i < 4 then
        begin
          fDMCadRecibo.frxReport1.variables['Vencimento'+IntToStr(i)] := fDMCadRecibo.cdsReciboImp_ParcDTVENCIMENTO.Value;
          fDMCadRecibo.frxReport1.variables['Valor'+IntToStr(i)]      := fDMCadRecibo.cdsReciboImp_ParcVLR_VENCIMENTO.Value;
        end
        else
          fDMCadRecibo.cdsReciboImp_Parc.Last;
        fDMCadRecibo.cdsReciboImp_Parc.Next;
      end;
    end
    else
    begin
      ShowMessage('Relatorio não localizado! ' + vArq);
      Exit;
    end;
    fDMCadRecibo.frxReport1.ShowReport;
  end
  else
  begin
    ShowMessage('Relatório não definido no cadastro da empresa (filial)!');
  end;
end;

procedure TfrmCadRecibo.Padro1Click(Sender: TObject);
begin
  prc_Posiciona_Recibo;
  vTipo_Config_Email := 2;

  if not(fDMCadRecibo.cdsRecibo_Consulta.Active) or (fDMCadRecibo.cdsRecibo_Consulta.IsEmpty) then
    Exit;
  prc_Imprimir_Danfe('I');
end;

procedure TfrmCadRecibo.prc_Posiciona_Imp;
var
  vIDRec: String;
  vComandoAux, vComandoAux2: String;
  i: Integer;
begin
  fDMCadRecibo.cdsReciboImp.Close;
  vIDRec := '';
  fDMCadRecibo.cdsRecibo_Consulta.First;
  while not fDMCadRecibo.cdsRecibo_Consulta.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      if trim(vIDRec) = '' then
        vIDRec := fDMCadRecibo.cdsRecibo_ConsultaID.AsString
      else
        vIDRec := vIDRec + ',' + fDMCadRecibo.cdsRecibo_ConsultaID.AsString;
    end;
    fDMCadRecibo.cdsRecibo_Consulta.Next;
  end;
  if trim(vIDRec) = '' then
  begin
    MessageDlg('*** Nenhum registro selecionado para a impressão!', mtWarning, [mbOk], 0);
    Exit;
  end;
  vIDRec := '(' + vIDRec + ')';
  i := PosEx('WHERE',fDMCadRecibo.ctRecibo_Imp,0);
  vComandoAux2 := copy(fDMCadRecibo.ctRecibo_Imp,1,i-1);
  vComandoAux  := ' WHERE REC.ID IN ' + vIDRec;
  fDMCadRecibo.cdsReciboImp.Close;
  fDMCadRecibo.sdsReciboImp.CommandText := vComandoAux2 + vComandoAux;
  fDMCadRecibo.cdsReciboImp.Open;

  i := PosEx('WHERE',fDMCadRecibo.ctRecibo_Imp_Itens,0);
  vComandoAux2 := copy(fDMCadRecibo.ctRecibo_Imp_Itens,1,i-1);
  vComandoAux  := ' WHERE ID IN ' + vIDRec;
  fDMCadRecibo.cdsReciboImp_Itens.Close;
  fDMCadRecibo.sdsReciboImp_Itens.CommandText := vComandoAux2 + vComandoAux;
  fDMCadRecibo.cdsReciboImp_Itens.Open;

  i := PosEx('WHERE',fDMCadRecibo.ctRecibo_Imp_Parc,0);
  vComandoAux2 := copy(fDMCadRecibo.ctRecibo_Imp_Parc,1,i-1);
  vComandoAux  := ' WHERE ID IN ' + vIDRec;
  fDMCadRecibo.cdsReciboImp_Parc.Close;
  fDMCadRecibo.sdsReciboImp_Parc.CommandText := vComandoAux2 + vComandoAux;
  fDMCadRecibo.cdsReciboImp_Parc.Open;
end;

procedure TfrmCadRecibo.pnlClienteEnter(Sender: TObject);
begin
  vID_Cliente_Ant := fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger;
end;

procedure TfrmCadRecibo.DBEdit7Enter(Sender: TObject);
begin
  vPerc_Desc_Ant := StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsReciboPERC_DESCONTO.AsFloat));
end;

procedure TfrmCadRecibo.DBEdit7Exit(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.00',vPerc_Desc_Ant)) <> StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsReciboPERC_DESCONTO.AsFloat)) then
  begin
    fDMCadRecibo.cdsReciboVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
    btnRecalcularClick(Sender);
  end;
end;

procedure TfrmCadRecibo.DBEdit8Enter(Sender: TObject);
begin
  vVlr_Desc_Ant := StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsReciboVLR_DESCONTO.AsFloat));
end;

procedure TfrmCadRecibo.DBEdit8Exit(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.00',vVlr_Desc_Ant)) <> StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsReciboVLR_DESCONTO.AsFloat)) then
    btnRecalcularClick(Sender);
end;

procedure TfrmCadRecibo.Boleto1Click(Sender: TObject);
begin
  if not(fDMCadRecibo.cdsRecibo_Consulta.Active) or (fDMCadRecibo.cdsRecibo_Consulta.IsEmpty) or (fDMCadRecibo.cdsRecibo_ConsultaID.AsInteger <= 0) then
  begin
    MessageDlg('*** Não existe recibo selecionado!', mtError, [mbOk], 0);
    exit;
  end;

  prc_Posiciona_Recibo;
  vTipo_Config_Email := 3;

  if (fDMCadRecibo.cdsRecibo.IsEmpty) or (fDMCadRecibo.cdsReciboID.AsInteger < 1) then
  begin
    MessageDlg('*** Recibo selecionado não encontrado na base!', mtError, [mbOk], 0);
    exit;
  end;

  vEmail_Fortes := fDMCadRecibo.cdsClienteEMAIL_PGTO.AsString;

  if fDMCadRecibo.cdsParametrosUSA_BOLETO_ACBR.AsString = 'S' then
    prc_Chama_CobRemessa(0,fDMCadRecibo.cdsReciboFILIAL.AsInteger,fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger,
                         fDMCadRecibo.cdsReciboID_CONTA.AsInteger,'RCB.'+fDMCadRecibo.cdsReciboNUM_RECIBO.AsString);
end;

procedure TfrmCadRecibo.Apenaslista1Click(Sender: TObject);
var
  vArq: string;
begin
  vArq := ExtractFilePath(Application.ExeName) + '\Relatorios\Rel_Recibo_Lista.fr3';
  fDMCadRecibo.frxReport1.Report.LoadFromFile(vArq);
  if FileExists(vArq) then
  begin
    fDMCadRecibo.frxReport1.Report.LoadFromFile(vArq);
    fDMCadRecibo.frxReport1.Variables['DtIni'] := QuotedStr(FormatDateTime('DD/MM/YYYY',NxDatePicker1.Date));
    fDMCadRecibo.frxReport1.Variables['DtFim'] := QuotedStr(FormatDateTime('DD/MM/YYYY',NxDatePicker2.Date));
    fDMCadRecibo.frxReport1.ShowReport;
  end
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
end;

end.
