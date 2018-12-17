unit uCupomFiscalC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, UNFCe,
  NxCollection, uDmCupomFiscal, RxLookup, StdCtrls, Mask, ToolEdit, rsDBUtils, dateUtils, db, StrUtils, uDmParametros, Menus, 
  ACBrDevice, Buttons, CurrEdit, UCupomFiscal_Canc, DBCtrls, UCBase, uDmEstoque, uDmMovimento, dbXPress, SqlExpr;

type
  TfCupomFiscalC = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel11: TPanel;
    btnInserir: TNxButton;
    btnCancelar: TNxButton;
    btnPesquisar: TNxButton;
    pnlPesquisa: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    ckTeste: TCheckBox;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel1: TPanel;
    Shape1: TShape;
    Label5: TLabel;
    Shape2: TShape;
    Label6: TLabel;
    Edit1: TEdit;
    cbCancelado: TCheckBox;
    cbPago: TCheckBox;
    pnlEnvio_Novo: TPanel;
    btnCancelar_Nota2: TNxButton;
    btnEnvio: TNxButton;
    btnOutras: TNxButton;
    Shape4: TShape;
    Label13: TLabel;
    Shape3: TShape;
    Label9: TLabel;
    PopupMenu2: TPopupMenu;
    Imprimir_Off_Line: TMenuItem;
    Enviarnomtodoantigo1: TMenuItem;
    Panel2: TPanel;
    ceDin: TCurrencyEdit;
    ceVM: TCurrencyEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    ceQtd: TCurrencyEdit;
    Label11: TLabel;
    ceOut: TCurrencyEdit;
    Shape5: TShape;
    Label12: TLabel;
    ComboBox1: TComboBox;
    Label14: TLabel;
    btGaveta: TNxButton;
    Shape6: TShape;
    Label15: TLabel;
    pnlCliente: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    btComissao: TBitBtn;
    btnNaoFiscal: TNxButton;
    btnCarne: TNxButton;
    btnMultiPgto: TNxButton;
    btnComanda: TNxButton;
    PopupMenu1: TPopupMenu;
    Nofiscal1: TMenuItem;
    Fiscal1: TMenuItem;
    Label20: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    UCControls1: TUCControls;
    btEstoque: TBitBtn;
    ConverterparaFiscal1: TMenuItem;
    Coferncia1: TMenuItem;
    N1: TMenuItem;
    cbNEnviados: TCheckBox;
    btnRecalcular: TBitBtn;
    btnAjustarICMS: TBitBtn;
    ckMostrar_Zerados: TCheckBox;
    Label21: TLabel;
    DBMemo3: TDBMemo;
    ckMsg: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCarneClick(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnComandaClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnMultiPgtoClick(Sender: TObject);
    procedure btnEnvioClick(Sender: TObject);
    procedure Enviarnomtodoantigo1Click(Sender: TObject);
    procedure btnCancelar_Nota2Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure btComissaoClick(Sender: TObject);
    procedure Nofiscal1Click(Sender: TObject);
    procedure Fiscal1Click(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btEstoqueClick(Sender: TObject);
    procedure Coferncia1Click(Sender: TObject);
    procedure ConverterparaFiscal1Click(Sender: TObject);
    procedure cbNEnviadosClick(Sender: TObject);
    procedure btnRecalcularClick(Sender: TObject);
    procedure btnAjustarICMSClick(Sender: TObject);
  private
    { Private declarations }
    fDmCupomFiscal: TDmCupomFiscal;
    fDmEstoque: TDmEstoque;
    fDmMovimento: TDmMovimento;
    ffNFCe: TfNFCe;
    ffCupomFiscal_Canc: TfCupomFiscal_Canc;
    ctCupomFiscal: String;
    vPosicionar: Boolean;
    vEstoqueOK, vFinanceiroOK: String;

    procedure Monta_sqlCupom_Cons(vCartao: Integer; ID: Integer);
    procedure prc_Posiciona_CupomFiscal(ID: Integer);
    procedure prc_scroll(DataSet: TDataSet);
    procedure prc_ImpConferencia;
    procedure prc_Move_Itens_Ajuste;
    procedure prc_Controle_Gravar_Diversos(Financeiro, Estoque: Boolean);
    procedure Le_CupomFiscalParc;
    procedure Gravar_Estoque(vFinanceiro: Boolean);
    procedure prc_PosicionaFormaPgto(vId: Integer);
    procedure Gravar_CReceber;
  public
    { Public declarations }
    fDmParametros: TDmParametros;
  end;

const
  ECFTeste_VERSAO = '2.01';
  Estados: array[TACBrECFEstado] of string = ('Não Inicializada', 'Desconhecido', 'Livre', 'Venda',
                                             'Pagamento', 'Relatório', 'Bloqueada', 'Requer Z',
                                             'Requer X', 'Nao Fiscal');
var
  fCupomFiscalC: TfCupomFiscalC;

implementation

uses UEscolhe_Filial, uUtilPadrao, UCupomFiscalCli, UCupomFiscal, ACBrECF, uComandaR, uCartao, uCupomFiscalPgtoMulti, uMenu,
  DmdDatabase, uCalculo_CupomFiscal, UDMCadCupomFiscal_MP, uAlteraDt_NFCe, UDMNFCe,
  uGrava_Erro;

{$R *.dfm}

procedure TfCupomFiscalC.FormShow(Sender: TObject);
begin
  if not Assigned(fDmCupomFiscal) then
    fDmCupomFiscal := TdmCupomFiscal.Create(Self);

  fDmCupomFiscal.vID_Fechamento := 0;
  fDmCupomFiscal.cdsTerminal.Active := True;
  RxDBLookupCombo1.KeyValue := vTerminal;

  fDmCupomFiscal.cdsVendedor.Open;
  fDmParametros := TdmParametros.Create(Self);
  fDmCupomFiscal.cdsCupom_Cons.AFTERSCROLL := prc_scroll;
  if vTipo_Dig_Cupom = 'I' then
  begin
    pnlEnvio_Novo.Visible := False;
    pnlPesquisa.Visible   := False;
    Panel1.Visible        := False;
    Panel2.Visible        := False;
    Panel11.Visible       := False;
    SMDBGrid1.Visible     := False;
  end
  else
  if vTipo_Dig_Cupom = 'Cons' then
  begin
    btnInserir.Visible    := False;
    ckTeste.Visible       := False;
    BitBtn1.Visible       := False;
    btnRecalcular.Visible := False;
    btnAjustarICMS.Visible := False;
  end;
  pnlCliente.Visible := (fDmCupomFiscal.cdsCupomParametrosUSA_PEDIDO.AsString = 'S') or
                        (fDmCupomFiscal.cdsCupomParametrosUSA_ORCAMENTO.AsString = 'S');

  SMDBGrid1.Columns.Items[11].Visible := pnlCliente.Visible;

  ctCupomFiscal := fDmCupomFiscal.sdsCupom_Cons.CommandText;
  oDBUtils.SetDataSourceProperties(Self,fDmCupomFiscal);

  fDmCupomFiscal.vCancelar := False;
  fDmCupomFiscal.cdsPessoa.Open;
  fDmCupomFiscal.cdsParametros.Open;
  fDmCupomFiscal.cdsFilial.Open;

  fDmCupomFiscal.cdsCupomParametros.Close;
  fDmCupomFiscal.cdsCupomParametros.Open;

  if (fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString <> 'S') and
     (fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsInteger = 4) then
  begin
    case AnsiIndexStr(fDmCupomFiscal.cdsCupomParametrosACBR_MODELO.AsString,['ecfFiscNet','ecfDaruma','ecfBematech','ecfNaoFsical']) of
      0: fDmParametros.ACBrECF1.Modelo := ecfFiscNet;
      1: fDmParametros.ACBrECF1.Modelo := ecfDaruma;
      2: fDmParametros.ACBrECF1.Modelo := ecfBematech;
      3: fDmParametros.ACBrECF1.Modelo := ecfNaoFiscal;
    end;
    fDmParametros.ACBrECF1.Porta       := vPorta;
    fDmParametros.ACBrECF1.Device.Baud := StrToInt(vVelocidade);
    fDmCupomFiscal.vTipoCupom := 'CFI';
  end;
  if (fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S') then
    fDmCupomFiscal.vTipoCupom := 'NFC'
  else
    fDmCupomFiscal.vTipoCupom := 'CNF';

  Coferncia1.Visible := (fDmCupomFiscal.cdsCupomParametrosIMPRIME_NFISCAL_CONFERENCIA.AsString = 'S');

  DateEdit1.Date := Date; //EncodeDate(YearOf(Date),MonthOf(Date),01);
  DateEdit2.Date := Date;

  if fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsInteger = 0 then
    ckTeste.Checked := True;

  Panel2.Visible := ((fDmCupomFiscal.cdsCupomParametrosUSA_CARTAO_COMANDA.AsString = 'S') or
                    (fDmCupomFiscal.cdsCupomParametrosMOSTRAR_BARRA_TOTAL.AsString = 'S'));

  if fDmCupomFiscal.cdsCupomParametrosUSA_CARTAO_COMANDA.AsString = 'S' then
    ComboBox1.ItemIndex := 5
  else
    ComboBox1.ItemIndex := 0;

  pnlPesquisa.Height := 106;
  if fDmCupomFiscal.cdsCupomParametrosUSA_CARTAO_COMANDA.AsString = 'N' then
  begin
    SMDBGrid1.Columns.Items[2].Visible := False;
    CurrencyEdit1.Visible              := False;
    Label4.Visible                     := False;
    btnComanda.Visible                 := False;
    btnMultiPgto.Visible               := False;
    cbPago.Visible := False;
    pnlPesquisa.Height := 87;
    cbPago.Checked := not cbPago.Visible;

    Label5.Visible := False;
    Shape1.Visible := False;
  end;
  btnCarne.Visible   := fDmCupomFiscal.cdsCupomParametrosUSA_CARNE.AsString = 'S';
  btnComanda.Visible := fDmCupomFiscal.cdsCupomParametrosUSA_CARTAO_COMANDA.AsString = 'S';

  fDmCupomFiscal.qFilial.Close;
  fDmCupomFiscal.qFilial.Open;
  SMDBGrid1.Columns.Items[6].Visible  := fDmCupomFiscal.qFilialCONTADOR.AsInteger > 1;
  SMDBGrid1.Columns.Items[9].Visible  := fDmCupomFiscal.cdsParametrosUSA_VENDEDOR.AsString = 'S';
  SMDBGrid1.Columns.Items[12].Visible := fDmCupomFiscal.cdsCupomParametrosEXIGE_CAIXA_ABERTO.AsString = 'S';
  SMDBGrid1.Columns.Items[14].Visible := False;
  SMDBGrid1.Columns.Items[15].Visible := False;

  Label14.Visible   := (fDmCupomFiscal.cdsCupomParametrosIMPRIME_FISCAL_NFISCAL.AsString = 'S') or
                       (fDmCupomFiscal.cdsCupomParametrosUSA_ORCAMENTO.AsString = 'S') or
                       (fDmCupomFiscal.cdsCupomParametrosUSA_PEDIDO.AsString = 'S');
  ComboBox1.Visible := Label14.Visible;

  if vTipo_Dig_Cupom <> 'I' then
  begin
    pnlEnvio_Novo.Visible := (fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S');
    btnPesquisarClick(Sender);
    vPosicionar := True;
  end;

//  vFilial := 0; tirado em 20/12/2017
  if vTipo_Dig_Cupom = 'I' then
  begin
    fDmCupomFiscal.vSair_Tela := False;
    while not fDmCupomFiscal.vSair_Tela do
    begin
      btnInserirClick(Sender);
    end;
    Close;
  end;
end;

procedure TfCupomFiscalC.btnConsultarClick(Sender: TObject);
begin
  if (DateEdit1.Date < 10) or (DateEdit2.Date < 10) then
  begin
    ShowMessage('É obrigatório informar a data inicial e final!');
    exit;
  end;
  Monta_sqlCupom_Cons(0,0);
  fdmCupomFiscal.cdsCupom_Cons.First;
  vPosicionar := True;
end;

procedure TfCupomFiscalC.Monta_sqlCupom_Cons(vCartao: Integer; ID: Integer);
var
  vTotal, vDin, vOut: Currency;
  vQtd: Word;
  vComando: String;
begin
  vTotal := 0;
  vQtd   := 0;
  vDin   := 0;
  vOut   := 0;

  vComando := '';
  fDmCupomFiscal.cdsCupom_Cons.Close;
  case ComboBox1.ItemIndex of
    -1, 0: vComando := ' WHERE 0 = 0 ';
    1: vComando := ' WHERE CF.TIPO = ' + QuotedStr('CNF');
    2: vComando := ' WHERE CF.TIPO = ' + QuotedStr('NFC');
    3: vComando := ' WHERE CF.TIPO = ' + QuotedStr('PED');
    4: vComando := ' WHERE CF.TIPO = ' + QuotedStr('ORC');
    5: vComando := ' WHERE CF.TIPO = ' + QuotedStr('COM');
    6: vComando := ' WHERE CF.TIPO IN (''PED' + ',' + 'ORC'')';
    else
      vComando := ' WHERE CF.TIPO = ' + QuotedStr(fDmCupomFiscal.vTipoCupom);
  end;

  if vCartao > 0 then
  begin
    vComando := vComando + ' AND CF.NUM_CARTAO = ' + IntToStr(vCartao) + ' AND CF.ID_TIPOCOBRANCA IS NULL';
  end
  else
  if ID > 0 then
  begin
    vComando := vComando + ' AND CF.ID = ' + IntToStr(ID);
  end
  else
  begin
    if Edit1.Text <> '' then
      vComando := vComando + ' AND CF.CLIENTE_NOME LIKE ''%' + Edit1.Text + '%''';
    if not cbPago.Checked then
      vComando := vComando + ' AND CF.ID_TIPOCOBRANCA IS NULL';
    if cbCancelado.Checked then
      vComando := vComando + ' AND CF.CANCELADO = ''S'''
    else
      vComando := vComando + ' AND CF.CANCELADO = ''N''';
    vComando := vComando + ' AND CF.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    vComando := vComando + ' AND CF.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  end;
  if RxDBLookupCombo1.KeyValue > 0 then
    vComando := vComando + ' AND TERMINAL_ID = ' + RxDBLookupCombo1.Value;
  if cbNEnviados.Checked then
    vComando := vComando + ' AND NFECHAVEACESSO IS NULL';
  if not ckMostrar_Zerados.Checked then
    vComando := vComando + ' AND CF.NUMCUPOM > 0 ';
  fDmCupomFiscal.sdsCupom_Cons.CommandText := ctCupomFiscal + vComando + ' ORDER BY DTEMISSAO DESC, ID DESC';
  fDmCupomFiscal.cdsCupom_Cons.Open;

  if Panel2.Visible then
  begin
    SMDBGrid1.DisableScroll;
    while not fDmCupomFiscal.cdsCupom_Cons.Eof do
    begin
      if fDmCupomFiscal.cdsCupom_ConsCANCELADO.AsString = 'S' then
      begin
        fDmCupomFiscal.cdsCupom_Cons.Next;
        Continue;
      end;
      fDmCupomFiscal.cdsCupom_Cons_Parc.Close;
      fDmCupomFiscal.sdsCupom_Cons_Parc.ParamByName('ID').AsInteger := fDmCupomFiscal.cdsCupom_ConsID.AsInteger;
      fDmCupomFiscal.cdsCupom_Cons_Parc.Open;
      if not fDmCupomFiscal.cdsCupom_Cons_Parc.IsEmpty then
      begin
        fDmCupomFiscal.cdsCupom_Cons_Parc.First;
        while not fDmCupomFiscal.cdsCupom_Cons_Parc.Eof do
        begin
          if fDmCupomFiscal.cdsCupom_Cons_ParcDINHEIRO.AsString = 'S' then
            vDin := vDin + fDmCupomFiscal.cdsCupom_Cons_ParcVALOR.AsCurrency
          else
            vOut := vOut + fDmCupomFiscal.cdsCupom_Cons_ParcVALOR.AsCurrency;
          fDmCupomFiscal.cdsCupom_Cons_Parc.Next;
        end;
      end
      else
      begin
        if fDmCupomFiscal.cdsCupom_ConsDINHEIRO.AsString = 'S' then
          vDin := vDin + fDmCupomFiscal.cdsCupom_ConsVLR_TOTAL.AsCurrency
        else
          vOut := vOut + fDmCupomFiscal.cdsCupom_ConsVLR_TOTAL.AsCurrency;
      end;
      vTotal := vTotal + fDmCupomFiscal.cdsCupom_ConsVLR_TOTAL.AsCurrency;
      //14/06/2016
      //Inc(vQtd);
      vQtd := vQtd + fDmCupomFiscal.cdsCupom_ConsQTD_PESSOA.AsInteger;
      fDmCupomFiscal.cdsCupom_Cons.Next;
    end;
    if vQtd > 0 then
    begin
      ceQtd.Value := vQtd;
      ceVM.Value  := vTotal / vQtd;
      ceDin.Value := vDin;
      ceOut.Value := vOut;
    end;
    SMDBGrid1.EnableScroll;
  end;
end;

procedure TfCupomFiscalC.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    btnConsultarClick(Sender);
end;

procedure TfCupomFiscalC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDmParametros.ACBrECF1.Ativo then
    fDmParametros.ACBrECF1.Desativar;
  fDmCupomFiscal.cdsCupomParametros.Close;
  if fDmCupomFiscal.Owner.ClassName = Self.ClassName then
    FreeAndNil(fDmCupomFiscal);
  vTipo_Dig_Cupom := '';
  Action := caFree;
end;

procedure TfCupomFiscalC.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDmCupomFiscal.cdsPessoa.IndexFieldNames := 'NOME';
end;

procedure TfCupomFiscalC.btnInserirClick(Sender: TObject);
var
  iRetorno: Integer;
  NCupom, vEst: String;
  vIDPosicao: Integer;
  vArq: String;
begin
  fDmCupomFiscal.cdsTipoCobranca.Open;
  fDmCupomFiscal.prc_Abrir_CondPgto;
  fDmCupomFiscal.cdsVendedor.Open;

  fDmCupomFiscal.mPedidoAux.EmptyDataSet;
  vPosicionar    := True;
  vExcluir_Cupom := False;
  //fDmCupomFiscal.vID_Fechamento := 0;
  if fDmCupomFiscal.cdsCupomParametrosEXIGE_CAIXA_ABERTO.AsString = 'S' then
  begin
    fDmParametros.qCaixaAberto.Close;
    fDmParametros.qCaixaAberto.ParamByName('T1').AsInteger := vTerminal;
    fDmParametros.qCaixaAberto.ParamByName('D1').AsDate    := Date;
    fDmParametros.qCaixaAberto.Open;
    if fDmParametros.qCaixaAberto.IsEmpty then
    begin
      ShowMessage('Não existe caixa aberto para efetuar venda!');
      fDmParametros.qCaixaAberto.Close;
      fDmCupomFiscal.vSair_Tela := True;
      Exit;
    end
    else
    if (fDmParametros.qCaixaAbertoDATA.AsDateTime < Date) then
    begin
      if (fDmParametros.qCaixaAbertoDATA2.AsDateTime > fDmParametros.qCaixaAbertoDATA.AsDateTime) then
      begin
        MessageDlg('*** Caixa aberto com data: ' + fDmParametros.qCaixaAbertoDATA.AsString +
                   ', mas já existe caixa com data superior pendente de conferência ou já encerrado!' +
                   #13 + ' FAVOR VERIFICAR!' , mtInformation, [mbOk], 0);
        fDmParametros.qCaixaAberto.Close;
        fDmCupomFiscal.vSair_Tela := True;
        Exit;
      end;
      if fDmCupomFiscal.vID_Fechamento <> fDmParametros.qCaixaAbertoID.AsInteger then
      begin
        if (MessageDlg('Caixa aberto com data de ' + fDmParametros.qCaixaAbertoDATA.AsString +
                       ', usar este mesmo caixa?',mtConfirmation,[mbYes,mbNo],0) = mrNo) then
        begin
          fDmParametros.qCaixaAberto.Close;
          fDmCupomFiscal.vSair_Tela := True;
          Exit;
        end
      end;
    end;
    fDmCupomFiscal.vID_Fechamento := fDmParametros.qCaixaAbertoID.AsInteger;
    fDmParametros.qCaixaAberto.Close;
  end;

  fDmCupomFiscal.cdsPessoa.IndexFieldNames := 'CODIGO';
  if not fDmCupomFiscal.cdsPessoa.FindKey([fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger]) then
  begin
    ShowMessage('Não existe Cliente Consumidor código ' + fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsString + '!');
    Exit;
  end;

  fDmCupomFiscal.vID_Cupom_Pos := 0;
  fDmCupomFiscal.vCancelar     := False;
  fDmCupomFiscal.vEncerrado    := False;
  iRetorno := 1;
  if not ckTeste.Checked then
  begin
//---------------TROCAR IMPRESSORA
    case fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsInteger of
      4: begin
           if not fDmParametros.cdsParametros.Active then
             fDmParametros.cdsParametros.Open;
           if not fDmParametros.cdsCupomParametros.Active then
             fDmParametros.cdsCupomParametros.Open;

           case AnsiIndexStr(fDmParametros.cdsCupomParametrosACBR_MODELO.AsString,['ecfFiscNet','ecfDaruma',
                                                                                   'ecfBematech','ecfNaoFiscal']) of
             0: fDmParametros.ACBrECF1.Modelo := ecfFiscNet;
             1: fDmParametros.ACBrECF1.Modelo := ecfDaruma;
             2: fDmParametros.ACBrECF1.Modelo := ecfBematech;
             3: fDmParametros.ACBrECF1.Modelo := ecfNaoFiscal;
           end;
           fDmParametros.ACBrECF1.Porta       := vPorta;
           fDmParametros.ACBrECF1.Device.Baud := StrToInt(vVelocidade);
           if (vPorta = '') or (vVelocidade = '') then
           begin
             ShowMessage('Porta e velocidade da impressora devem ser configuradas!');
             Exit;
           end;

           iRetorno := 1;
           fDmParametros.ACBrECF1.Ativar;
           fDmParametros.ACBrECF1.CorrigeEstadoErro();
           if iRetorno <> 1 then
           begin
             ShowMessage('Impressora desligada!');
             Exit;
           end;

           if fDmParametros.ACBrECF1.Modelo = ecfNaoFiscal then
             Exit;

           vEst := Estados[fDmParametros.ACBrECF1.Estado];
           try
             fDmParametros.ACBrECF1.TestaPodeAbrirCupom;
           except
             ShowMessage('Não pode abrir cupom pois estado atual é ' + vEst);
             Raise;
           end;
         end;
      5, 6: begin
            end;
    end;
    if iRetorno <> 1 then
    begin
      ShowMessage('Impressora desligada!');
      Exit;
    end;
  end;

/////////// Seleção de filial
  if (vFilial > 0) and (vTipo_Dig_Cupom = 'I') then
  else
  begin
    fDmCupomFiscal.qFilial.Close;
    fDmCupomFiscal.qFilial.Open;
    if fDmCupomFiscal.qFilialCONTADOR.AsInteger > 1 then
    begin
      frmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
      frmEscolhe_Filial.ShowModal;
      FreeAndNil(frmEscolhe_Filial);
    end
    else
    begin
      fDmCupomFiscal.cdsFilial.Last;
      vFilial      := fDmCupomFiscal.cdsFilialID.AsInteger;
      vFilial_Nome := fDmCupomFiscal.cdsFilialNOME.AsString;
    end;
  end;

  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada ou não configurada para usar cupom!');
    exit;
  end;

  fDmCupomFiscal.cdsFilial.IndexFieldNames := 'ID';
  fDmCupomFiscal.cdsFilial.FindKey([vFilial]);

  if (fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S') and (trim(fDmCupomFiscal.cdsFilialSERIE_NFCE.AsString) = '') then
  begin
    ShowMessage('Série da NFCe não informada na Filial!');
    if vTipo_Dig_Cupom <> 'I' then
      Exit;
  end;

  if fDmCupomFiscal.cdsPedido.Active then
    fDmCupomFiscal.cdsPedido.Close;

  fDmCupomFiscal.prc_Abrir_CSTICMS(fDmCupomFiscal.cdsFilialSIMPLES.AsString);

  if fDmCupomFiscal.vClienteID = 0 then
    fDmCupomFiscal.vClienteID := fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger;

  fDmCupomFiscal.cdsPessoa.IndexFieldNames := 'CODIGO';
  fDmCupomFiscal.cdsPessoa.FindKey([fDmCupomFiscal.vClienteId]);

  if fDmCupomFiscal.cdsCupomParametrosUSA_CARTAO_COMANDA.AsString = 'S' then
  begin
    fDmCupomFiscal.vNumCartao := 0;
    fCartao := TfCartao.Create(Self);
    fCartao.fDmCupomFiscal := fDmCupomFiscal;
    fCartao.ShowModal;
    Monta_sqlCupom_Cons(fDmCupomFiscal.vNumCartao,0);
    if fdmCupomFiscal.cdsCupom_Cons.IsEmpty then
    begin
      fDmCupomFiscal.prcInserir(0,fDmCupomFiscal.vClienteId);
      fDmCupomFiscal.cdsCupomFiscalNUM_CARTAO.AsInteger := fDmCupomFiscal.vNumCartao;
    end
    else
    begin
      SMDBGrid1DblClick(Sender);
      exit;
    end;
  end
  else
  begin
    fDmCupomFiscal.prcInserir(0,fDmCupomFiscal.vClienteId);
  end;
  vIDPosicao := 0;
  if fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S' then
  begin
    fDmCupomFiscal.cdsCupomFiscalTIPO.AsString := 'NFC';
    if fDmCupomFiscal.cdsCupomParametrosCAIXA_NUMERA_COMANDA.AsString = 'S' then
      fDmCupomFiscal.cdsCupomFiscalNUM_CARTAO.AsInteger := fDmCupomFiscal.fnc_IncrementaCartao(vTerminal);
    fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger := fDmCupomFiscal.vClienteID;
    fDmCupomFiscal.cdsCupomFiscalTIPO_DESTINO_OPERACAO.AsInteger := 1;
    fDMCupomFiscal.cdsCupomFiscalTIPO_ATENDIMENTO.AsInteger      := 1;
    fDMCupomFiscal.cdsCupomFiscalTIPO_ENVIONFE.AsString          := '1-NORMAL';
    fDmCupomFiscal.cdsCupomFiscalSERIE.AsString                  := fDmCupomFiscal.cdsFilialSERIE_NFCE.AsString;
    vIDPosicao                                                   := fDmCupomFiscal.cdsCupomFiscalID.AsInteger;

    fDmCupomFiscal.cdsCupomFiscal.Post;
    fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
    fDmCupomFiscal.cdsCupomFiscal.Edit;
  end
  else
  if not(ckTeste.Checked) then
  begin
//---------------TROCAR IMPRESSORA
    case fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsInteger of
      4: begin
           fDmParametros.ACBrECF1.AbreCupom('','','',False); //informar o cliente depois
           fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsString := fDmParametros.ACBrECF1.NumCupom;
           fDmCupomFiscal.cdsCupomFiscalTIPO.AsString     := 'CFI';
           fDmCupomFiscal.cdsCupomFiscal.Post;
           fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
           fDmCupomFiscal.cdsCupomFiscal.Edit;
         end;
      5: begin
           fDmCupomFiscal.prcNumNaoFiscal;
           fDmCupomFiscal.cdsCupomFiscalTIPO.AsString := 'CNF';
           if fDmCupomFiscal.cdsCupomParametrosCAIXA_NUMERA_COMANDA.AsString = 'S' then
             fDmCupomFiscal.cdsCupomFiscalNUM_CARTAO.AsInteger := fDmCupomFiscal.fnc_IncrementaCartao(vTerminal);
           fDmCupomFiscal.cdsCupomFiscal.Post;
           fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
           fDmCupomFiscal.cdsCupomFiscal.Edit;
         end;
      6: begin
           fDmCupomFiscal.prcNumNaoFiscal;
           fDmCupomFiscal.cdsCupomFiscalTIPO.AsString := 'CNF';
           if fDmCupomFiscal.cdsCupomParametrosCAIXA_NUMERA_COMANDA.AsString = 'S' then
             fDmCupomFiscal.cdsCupomFiscalNUM_CARTAO.AsInteger := fDmCupomFiscal.fnc_IncrementaCartao(vTerminal);
           fDmCupomFiscal.cdsCupomFiscal.Post;
           fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
           fDmCupomFiscal.cdsCupomFiscal.Edit;
         end;
    end;
  end
  else
  begin
    fDmCupomFiscal.qUltimo.Close;
    fDmCupomFiscal.qUltimo.Open;

    fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsString := IntToStr(fDmCupomFiscal.qUltimoULT.AsInteger + 1);
    if fDmCupomFiscal.cdsCupomParametrosCAIXA_NUMERA_COMANDA.AsString = 'N' then
      fDmCupomFiscal.cdsCupomFiscalNUM_CARTAO.AsInteger := fDmCupomFiscal.fnc_IncrementaCartao(vTerminal);
    fDmCupomFiscal.cdsCupomFiscal.Post;
    fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
    fDmCupomFiscal.cdsCupomFiscal.Edit;
  end;

  //foi tirado do ffcrupomfiscal e colocado só fcupomfiscal 16/07/2018
  fCupomFiscal := TfCupomFiscal.Create(Self);
  fCupomFiscal.Position    := poDefault;
  fCupomFiscal.WindowState := wsMaximized;
  fCupomFiscal.fDmParametros  := fDmParametros;
  fCupomFiscal.fDmCupomFiscal := fDmCupomFiscal;
  fCupomFiscal.vTeste := ckTeste.Checked;
  fCupomFiscal.Tag    := 1;
  fCupomFiscal.ShowModal;
  FreeAndNil(fCupomFiscal);

//*****************************************************************************************************
//*****************************************************************************************************
//*****************************************************************************************************
//                 A PARTIR DAQUI, É DEPOIS DE FECHAR A TELA DA VENDA
//*****************************************************************************************************
//*****************************************************************************************************
//*****************************************************************************************************

  if vExcluir_Cupom then
  begin
    //12/05/2015 para excluir quando a venda não foi autorizada
    fDmCupomFiscal.Excluir_Duplicata;
    fDmCupomFiscal.Excluir_ExtComissao;
    fDmCupomFiscal.prc_Excluir_Financeiro;
    fDmCupomFiscal.prc_Excluir_Movimento;
    fDmCupomFiscal.prcExcluir;
    Exit;
  end
  else
  if (fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S') and (vIDPosicao > 0) and not(fDmCupomFiscal.vCancelar)  then
  begin
    try
      if fDmCupomFiscal.vEncerrado then
      begin
        vPosicionar := False;
        prc_Posiciona_CupomFiscal(vIDPosicao);
        if fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'NFC' then
          btnEnvioClick(fCupomFiscalC);
      end
    except
      on E: Exception do
        ShowMessage('Não foi possível enviar o CUPOM!' + #13 + E.Message + '! Clique para continuar!');
    end;
    vPosicionar := True;
  end;

//*****************************************************************************************************
//*****************************************************************************************************
//                 A PARTIR DAQUI, É DEPOIS DE ENVIAR A NOTA
//*****************************************************************************************************
//*****************************************************************************************************

  if fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString <> 'S' then
  begin
    case fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsInteger of
      4: begin
           fDmParametros.ACBrECF1.Desativar;
         end;
    end;
  end;
  
  //**********  02/05/2018
  if not(fDmCupomFiscal.vCancelar) and not(vExcluir_Cupom) and (vIDPosicao > 0) then
  begin
    if ckMsg.Checked then
      ShowMessage('Parte 1 - Antes de Posicionar Cupom Fiscal');
    prc_Posiciona_CupomFiscal(vIDPosicao);
    if ckMsg.Checked then
      ShowMessage('Parte 2 - Antes do prc_Controle_Gravar_Diversos');
    if (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'NFC') or
       (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'CNF') then
      prc_Controle_Gravar_Diversos(True,True)
    else
    if (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'ORC') then
      prc_Controle_Gravar_Diversos(False,False)
    else
      prc_Controle_Gravar_Diversos(False,True);
    if ckMsg.Checked then
      ShowMessage('Parte 3 - Depois do prc_Controle_Gravar_Diversos');

    if vIDPosicao <> fDmCupomFiscal.cdsCupomFiscalID.AsInteger then
      fDmCupomFiscal.prcLocalizar(vIDPosicao);
    if ckMsg.Checked then
      ShowMessage('Parte 4 - Depois do prcLocalizar');

    fDmCupomFiscal.cdsCupomFiscal.Edit;
    fDmCupomFiscal.cdsCupomFiscalESTOQUE_OK.AsString    := vEstoqueOK;
    fDmCupomFiscal.cdsCupomFiscalFINANCEIRO_OK.AsString := vFinanceiroOK;
    fDmCupomFiscal.cdsCupomFiscal.Post;
    fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
    if ckMsg.Checked then
      ShowMessage('Parte 5 - Depois do Apply do Cupom Fiscal ');

  end;
  //*************

  if fDmCupomFiscal.cdsTipoCobrancaIMPRIME_CARNE.AsString = 'S' then
    if MessageDlg('Deseja imprimir carnê de pagamento?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      if fDmCupomFiscal.cdsCupomParametrosCARNE_RELATORIO.AsString <> '' then
        vArq := fDmCupomFiscal.cdsCupomParametrosCARNE_RELATORIO.AsString
      else
        vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\CarnePgto1.fr3';

      if FileExists(vArq) then
      begin
        fDmCupomFiscal.frxReport1.Report.LoadFromFile(vArq);
        if fDmCupomFiscal.cdsCupomParametrosUSA_PREVIEW_CARNE.AsString = 'S' then
          fDmCupomFiscal.frxReport1.ShowReport
        else
          fDmCupomFiscal.frxReport1.Print;
      end
      else
        ShowMessage('Relatório não localizado! ' + vArq);
    end;

  if ckMsg.Checked then
    ShowMessage('Parte 6 - Posiciona  Monta_sqlCupom_Cons ');

  if fDmCupomFiscal.vID_Cupom_Pos > 0 then
    Monta_sqlCupom_Cons(0,fDmCupomFiscal.vID_Cupom_Pos);
  if ckMsg.Checked then
    ShowMessage('Parte 7 - Depois do Posiciona  Monta_sqlCupom_Cons ');

  if fDmCupomFiscal.vCancelar then
    btnCancelarClick(Sender);

  if ckMsg.Checked then
    ShowMessage('Parte 8 - Antes do btnConsultar ');
  if vTipo_Dig_Cupom <> 'I' then
    btnConsultar.Click;
  if ckMsg.Checked then
    ShowMessage('Parte 9 - Depois do btnConsultar ');

  fDmCupomFiscal.cdsCondPgto.Close;
  fDmCupomFiscal.cdsTipoCobranca.Close;
  fDmCupomFiscal.cdsVendedor.Close;
end;

procedure TfCupomFiscalC.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  AFont.Color := clWindowText;
  if fDmCupomFiscal.cdsCupom_ConsCONTADOR_ITENS.AsInteger <= 0 then
  begin
    AFont.Color := $00404080;
    AFont.Style := [fsBold]; 
  end
  else
  if ((fDmCupomFiscal.cdsCupomParametrosUSA_CARTAO_COMANDA.AsString = 'S') and
     (fDmCupomFiscal.cdsCupom_ConsID_TIPOCOBRANCA.IsNull)) then
    AFont.Color := clBlue;
  if fDmCupomFiscal.cdsCupom_ConsCANCELADO.AsString = 'S' then
    AFont.Color := clRed
  else
  if trim(fDmCupomFiscal.cdsCupom_ConsNFEDENEGADA.AsString) = 'S' then
  begin
    //Background  := $000080FF;
    //AFont.Color := clWhite;
    AFont.Color := $000080FF;
  end
  else
  if ((fDmCupomFiscal.cdsCupom_Cons.Active) and not (fDmCupomFiscal.cdsCupom_Cons.IsEmpty)) or
     ((fDmCupomFiscal.cdsCupom_ConsTIPO.AsString = 'ORC') or (fDmCupomFiscal.cdsCupom_ConsTIPO.AsString = 'PED')) then
  begin
    if fDmCupomFiscal.cdsCupom_ConsTIPO.AsString = 'NFC' then
    begin
      if trim(fDmCupomFiscal.cdsCupom_ConsNFECHAVEACESSO.AsString) = '' then
        Background := clYellow
      else
      if fDmCupomFiscal.cdsCupom_ConsNFEAMBIENTE.AsString <> '1' then
      begin
        Background  := clGreen;
        AFont.Color := clWhite;
      end;
    end
    else
    if (fDmCupomFiscal.cdsCupom_ConsTIPO.AsString = 'ORC') then
    begin
      Background := $00FF80FF;//        AFont.Color := clGreen;
    end
    else
    if (fDmCupomFiscal.cdsCupom_ConsTIPO.AsString = 'PED') then
    begin
      Background := $0000D7D7;
    end;
  end;
end;

procedure TfCupomFiscalC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    ckTeste.Visible        := not(ckTeste.Visible);
    ckMsg.Visible          := not(ckMsg.Visible);
    BitBtn1.Visible        := not(bitbtn1.Visible);
    BtComissao.Visible     := not(BtComissao.Visible);
    BtEstoque.Visible      := not(BtEstoque.Visible);
    btnRecalcular.Visible  := not(btnRecalcular.Visible);
    btnAjustarICMS.Visible := not(btnAjustarICMS.Visible);
    SMDBGrid1.Columns.Items[14].Visible := not(SMDBGrid1.Columns.Items[14].Visible);
    SMDBGrid1.Columns.Items[15].Visible := not(SMDBGrid1.Columns.Items[15].Visible);
  end;
end;

procedure TfCupomFiscalC.btnCancelarClick(Sender: TObject);
var
  iRetorno, vNumCupomAux: Integer;
begin
  vPosicionar := True;
  if not(fDmCupomFiscal.vCancelar) then
    if fDmCupomFiscal.cdsCupom_Cons.IsEmpty then
      Exit;

  if (not fDmCupomFiscal.cdsCupom_ConsDTFECHAMENTO.IsNull) and (not fDmCupomFiscal.cdsCupom_ConsID_TIPOCOBRANCA.IsNull) then
  begin
    MessageDlg('*** Cupom se encontra no fechamento ' + fDmCupomFiscal.cdsCupom_ConsID_FECHAMENTO.AsString +
               ' do dia ' + fDmCupomFiscal.cdsCupom_ConsDTFECHAMENTO.AsString + '!', mtInformation, [mbOk], 0);
    Exit;
  end;

  iRetorno     := 1;
  vNumCupomAux := 0;

  if not(fDmCupomFiscal.vCancelar) then
    prc_Posiciona_CupomFiscal(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);

  if fDmCupomFiscal.cdsCupom_ConsCONTADOR_ITENS.AsInteger <= 0 then
  begin
    prc_Posiciona_CupomFiscal(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
    if not fDmCupomFiscal.cdsCupomFiscal.IsEmpty then
    begin
      fDmCupomFiscal.Excluir_Duplicata;
      fDmCupomFiscal.Excluir_ExtComissao;
      fDmCupomFiscal.prc_Excluir_Financeiro;
      fDmCupomFiscal.prc_Excluir_Movimento;
      fDmCupomFiscal.prcExcluir;
      Monta_sqlCupom_Cons(0,0);
    end;
    Exit;
  end;

  if (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'NFC') and (fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger > 0) and
     (trim(fDmCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString) <> '') and (fDmCupomFiscal.cdsCupom_ConsNFEAMBIENTE.AsString = '1')  then
  begin
    fDmCupomFiscal.vCancelar := False;
    MessageDlg('*** Cupom não pode ser cancelado por esta opção!', mtInformation, [mbOk], 0);
    Exit;
  end
  else
  if (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'NFC') or
     (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'CNF') or
     (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'PED') or
     (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'COM') or
     (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'ORC') then
  begin
    //10/06/2015  foi colocado o if para verificar se a variavel é cancelada true para excluir direto sem perguntar
    if not fDmCupomFiscal.vCancelar then
    begin
      fDmCupomFiscal.vCancelar := False;
      if (MessageDlg('Deseja excluir o Cupom (Nº ' + fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsString + ')?',mtConfirmation,[mbOK,mbNo],0) = mrNo) then
        Exit;
    end;
    vNumCupomAux := fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger;

    if vNumCupomAux > 0 then
    begin
      fDmCupomFiscal.qUltimo_NFCe.Close;
      fDmCupomFiscal.qUltimo_NFCe.ParamByName('FILIAL').AsInteger := fDmCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;
      fDmCupomFiscal.qUltimo_NFCe.Open;
      if  vNumCupomAux = fDmCupomFiscal.qUltimo_NFCeULT.AsInteger then
      begin

      end;
//        Raise Exception.Create('Cupom Fiscal não é o último!');
    end;

    fDmCupomFiscal.Excluir_Duplicata;
    fDmCupomFiscal.Excluir_ExtComissao;
    fDmCupomFiscal.prc_Excluir_Financeiro;
    fDmCupomFiscal.prc_Excluir_Movimento;

    fDmCupomFiscal.prcExcluir;

    Monta_sqlCupom_Cons(0,0);

    exit;
  end;

  if not ckTeste.Checked then
  begin
//---------------TROCAR IMPRESSORA
    case fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsInteger of
//      1: iRetorno := rVerificarImpressoraLigada_ECF_Daruma();
//      2: iRetorno := VerificaImpressoraLigada();
//      3: iRetorno := Bematech_FI_VerificaImpressoraLigada();
      4: begin
           if not fDmParametros.cdsParametros.Active then
             fDmParametros.cdsParametros.Open;
           if not fDmParametros.cdsCupomParametros.Active then
             fDmParametros.cdsCupomParametros.Open;

           case AnsiIndexStr(fDmParametros.cdsCupomParametrosACBR_MODELO.AsString,['ecfFiscNet','ecfDaruma',
                                                                                  'ecfBematech','ecfNaoFiscal']) of
             0: fDmParametros.ACBrECF1.Modelo := ecfFiscNet;
             1: fDmParametros.ACBrECF1.Modelo := ecfDaruma;
             2: fDmParametros.ACBrECF1.Modelo := ecfBematech;
             3: fDmParametros.ACBrECF1.Modelo := ecfNaoFiscal;
           end;
           fDmParametros.ACBrECF1.Porta       := vPorta;
           fDmParametros.ACBrECF1.Device.Baud := StrToInt(vVelocidade);
           if (vPorta = '') or (vVelocidade = '') then
           begin
             ShowMessage('Porta e velocidade da impressora devem ser configuradas!');
             Exit;
           end;
         end;
    end;
    if iRetorno <> 1 then
    begin
      ShowMessage('Impressora desligada!');
      Exit;
    end;
  end;

  if fDmCupomFiscal.vCancelar then
    Monta_sqlCupom_Cons(0,fDmCupomFiscal.cdsCupomFiscalID.AsInteger);

  if not (fDmCupomFiscal.vCancelar) then
    if (MessageDlg('Deseja cancelar o ÚLTIMO cupom (Nº ' + fDmCupomFiscal.cdsCupom_ConsNUMCUPOM.AsString + ')?',
        mtConfirmation,[mbYes,mbNo],0) = mrNo) then
      Exit;
  fDmCupomFiscal.cdsCupom_Cons.First;
  if fDmCupomFiscal.cdsCupom_ConsCANCELADO.AsString = 'S' then
  begin
    ShowMessage('Cupom já está cancelado!');
    Exit;
  end;

  if not ckTeste.Checked then
  begin
//---------------TROCAR IMPRESSORA
    case fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsInteger of
      1: begin
//            vNumCupomAux := StrToInt(fnc_Busca_Ultimo_Cupom_Daruma);
//            if vNumCupomAux <= 0 then
//              Raise Exception.Create('Não encontrou cupom fiscal!');
          end;
      2: ;//vNumCupomAux := NumeroCupom(NCupom);
      3: begin
{           vNumCupomAux := fnc_Bematech_Ultimo_Cupom;
           if vNumCupomAux <= 0 then
             Raise Exception.Create('Não encontrou cupom fiscal!');}
         end;
      4: vNumCupomAux := StrToINt(fDmParametros.ACBrECF1.NumCupom);
      5, 6: vNumCupomAux := fDmCupomFiscal.cdsCupom_ConsNUMCUPOM.AsInteger;
      8: begin
           if fDmCupomFiscal.cdsCupom_ConsTIPO.AsString = 'CNF' then
             vNumCupomAux := fDmCupomFiscal.cdsCupom_ConsNUMCUPOM.AsInteger;
         end;
    end;
  end
  else
    vNumCupomAux := fDmCupomFiscal.cdsCupom_ConsNUMCUPOM.AsInteger;

  fDmCupomFiscal.qUltimo.Close;
  fDmCupomFiscal.qUltimo.Open;

  if (vNumCupomAux <> fDmCupomFiscal.qUltimoULT.AsInteger) and (fDmCupomFiscal.cdsCupom_ConsTIPO.AsString = 'NFC') then
    Raise Exception.Create('Cupom Fiscal não é o último!');

  if not ckTeste.Checked then
  begin
//---------------TROCAR IMPRESSORA
    case fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsInteger of
      4: begin
         fDmParametros.ACBrECF1.CancelaCupom;
         vNumCupomAux := StrToInt(fDmParametros.ACBrECF1.NumCupom);
         fDmParametros.ACBrECF1.Desativar;
       end;
      5: ;//if not vExcluir_Cupom then
          // fDmCupomFiscal.ImpNaoFiscal('Cancelamento',IntToStr(vNumCupomAux),'','','','','');
      6: begin
         end;
    end;
  end;

  //22/12/2016
  fDmCupomFiscal.qCupomPed.Close;
  fDmCupomFiscal.qCupomPed.ParamByName('ID').AsInteger := fDmCupomFiscal.cdsCupomFiscalID.AsInteger;
  fDmCupomFiscal.qCupomPed.Open;
  //************

  fDmCupomFiscal.prcLocalizar(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
  fDmCupomFiscal.cdsCupomFiscal.Edit;
  fDmCupomFiscal.cdsCupomFiscalCANCELADO.AsString := 'S';
  fDmCupomFiscal.cdsCupomFiscal.Post;
  fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);

  try
    fDmCupomFiscal.Excluir_Duplicata;
    fDmCupomFiscal.Excluir_ExtComissao;
    fDmCupomFiscal.prc_Excluir_Financeiro;
    fDmCupomFiscal.prc_Excluir_Movimento;
  except
    on E: Exception do
      ShowMessage('Não foi possível cancelar!' + #13 + E.Message + '! Clique para continuar!');
  end;
  vNumCupomAux := fDmCupomFiscal.cdsCupom_ConsID.AsInteger;
  Monta_sqlCupom_Cons(0,0);
  fDmCupomFiscal.cdsCupom_Cons.Locate('ID',vNumCupomAux ,[loCaseInsensitive]);
  fDmCupomFiscal.mPedidoAux.EmptyDataSet;

  //22/12/2016
  //Atualiza Status do pedido
  while not fDmCupomFiscal.qCupomPed.Eof do
  begin
    fDmCupomFiscal.sdsPrc_Atualiza_Status_Ped.Close;
    fDmCupomFiscal.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDmCupomFiscal.qCupomPedID_PEDIDO.AsInteger;
    fDmCupomFiscal.sdsPrc_Atualiza_Status_Ped.ExecSQL;
    fDmCupomFiscal.qCupomPed.Next;
  end;
end;

procedure TfCupomFiscalC.SMDBGrid1DblClick(Sender: TObject);
var
  vIDPosicao: Integer;
  vEdicao: Boolean;
begin
  fDmCupomFiscal.prcLocalizar(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
  fDmCupomFiscal.vPosicao := 5;
  vIDPosicao := fDmCupomFiscal.cdsCupomFiscalID.AsInteger;

  fCupomFiscal := TfCupomFiscal.Create(Self);
  fCupomFiscal.fDmCupomFiscal := fDmCupomFiscal;
  fCupomFiscal.Tag := 100; //serve só para consulta
  fDmCupomFiscal.cdsVendedor.Open;
  if ((fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'NFC') OR
    (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'CNF')) AND
    (fDmCupomFiscal.cdsCupomFiscalID_TIPOCOBRANCA.AsInteger > 1) then
  begin
    vEdicao := False;
    fCupomFiscal.Panel2.Enabled := False;
    fCupomFiscal.Panel3.Enabled := False;
    fCupomFiscal.Panel4.Enabled := False;
    fCupomFiscal.PnlParcial.Enabled := False;
    fCupomFiscal.Panel5.Visible  := True;
    fCupomFiscal.Label10.Visible := True;
    fCupomFiscal.DBEdit5.Visible := True;
    if fDmCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString <> '' then
      fCupomFiscal.DBEdit4.ReadOnly := True;
    fCupomFiscal.Panel6.Enabled := False;
    fCupomFiscal.Panel7.Enabled := False;
    fCupomFiscal.Panel8.Enabled := False;
    fCupomFiscal.Panel9.Enabled := False;
    fCupomFiscal.SMDBGrid2.Visible  := True;
    fCupomFiscal.SMDBGrid2.ReadOnly := True;
  end
  else
  begin
    vEdicao := True;
    fDmCupomFiscal.cdsCupomFiscal.Edit;
    vFilial := fDmCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;
    fDmCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime := Date;
    fDmCupomFiscal.cdsCupomFiscalHREMISSAO.AsDateTime := Now;
  end;
  fCupomFiscal.ShowModal;
  FreeAndNil(fCupomFiscal);

    //**********  11/05/2018
  if vEdicao then
  begin
    prc_Posiciona_CupomFiscal(vIDPosicao);
    if (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'NFC') or
       (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'CNF') then
      prc_Controle_Gravar_Diversos(True,True)
    else
    if (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'ORC') then
      prc_Controle_Gravar_Diversos(False,False)
    else
      prc_Controle_Gravar_Diversos(False,True);

    if vIDPosicao <> fDmCupomFiscal.cdsCupomFiscalID.AsInteger then
      fDmCupomFiscal.prcLocalizar(vIDPosicao);

    fDmCupomFiscal.cdsCupomFiscal.Edit;
    fDmCupomFiscal.cdsCupomFiscalESTOQUE_OK.AsString    := vEstoqueOK;
    fDmCupomFiscal.cdsCupomFiscalFINANCEIRO_OK.AsString := vFinanceiroOK;
    fDmCupomFiscal.cdsCupomFiscal.Post;
    fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
  end;
//*************

  if vTipo_Dig_Cupom <> 'I' then
    btnConsultar.Click;
end;

procedure TfCupomFiscalC.BitBtn1Click(Sender: TObject);
begin
  fDmCupomFiscal.ImpNaoFiscalC('','','','','','','');
end;

procedure TfCupomFiscalC.btnCarneClick(Sender: TObject);
var
  vArq: String;
begin
  if fDmCupomFiscal.cdsCupom_Cons.IsEmpty then
    Exit
  else
  begin
    if fDmCupomFiscal.cdsCupomParametrosCARNE_RELATORIO.AsString <> '' then
      vArq := fDmCupomFiscal.cdsCupomParametrosCARNE_RELATORIO.AsString
    else
      vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\CarnePgto1.fr3';
    if FileExists(vArq) then
      fDmCupomFiscal.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatório não localizado! ' + vArq);
      Exit;
    end;
    fDmCupomFiscal.prcLocalizar(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
    fDmCupomFiscal.frxReport1.ShowReport;
  end;
end;

procedure TfCupomFiscalC.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    if Length(CurrencyEdit1.Text) = 13 then
      CurrencyEdit1.Text := Copy(CurrencyEdit1.Text,2,11);
    Monta_sqlCupom_Cons(CurrencyEdit1.AsInteger,0);
    if fdmCupomFiscal.cdsCupom_Cons.IsEmpty then
      ShowMessage('Comanda não localizada!')
    else
      SMDBGrid1DblClick(Sender);
    CurrencyEdit1.Clear;
    btnConsultarClick(Sender);
  end;
end;

procedure TfCupomFiscalC.btnComandaClick(Sender: TObject);
begin
  fDmCupomFiscal.cdsComandaRel.Close;
  fDmCupomFiscal.sdsComandaRel.ParamByName('ID').AsInteger := fDmCupomFiscal.cdsCupom_ConsID.AsInteger;
  fDmCupomFiscal.cdsComandaRel.Open;

  fDmCupomFiscal.cdsComandaItem_Rel.Close;
  fDmCupomFiscal.sdsComandaItem_Rel.ParamByName('ID').AsInteger := fDmCupomFiscal.cdsCupom_ConsID.AsInteger;
  fDmCupomFiscal.cdsComandaItem_Rel.Open;

  fComandaR := TfComandaR.Create(Self);
  fComandaR.fDmCupomFiscal := fDmCupomFiscal;
  fComandaR.RLReport1.PrintDialog := False;
  fComandaR.RLReport1.Print;
end;

procedure TfCupomFiscalC.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    btnConsultar.Click;
end;

procedure TfCupomFiscalC.btnMultiPgtoClick(Sender: TObject);
begin
  fDmCupomFiscal.cdsCupom_Cons.Close;
  fDmCupomFiscal.sdsCupom_Cons.CommandText := ctCupomFiscal;
  
  fCupomFiscalPgtoMulti := TfCupomFiscalPgtoMulti.Create(Self);
  fCupomFiscalPgtoMulti.fDmCupomFiscal := fDmCupomFiscal;
  fCupomFiscalPgtoMulti.ShowModal;

  btnConsultar.Click;
end;

procedure TfCupomFiscalC.prc_Posiciona_CupomFiscal(ID: Integer);
begin
  if id <= 0 then
    fDmCupomFiscal.prcLocalizar(fDmCupomFiscal.cdsCupom_ConsID.AsInteger)
  else
    fDmCupomFiscal.prcLocalizar(ID);
  fDmCupomFiscal.cdsCupom_Itens.Close;
  fDmCupomFiscal.cdsCupom_Itens.Open;
  fDmCupomFiscal.cdsCupom_Parc.Close;
  fDmCupomFiscal.cdsCupom_Parc.Open;

  vFilial      := fDmCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDmCupomFiscal.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDmCupomFiscal.cdsFilialNOME_INTERNO.AsString;

  fDmCupomFiscal.cdsPessoa.Locate('CODIGO',fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);

// juka 07/11/16
//  if not fDmCupomFiscal.cdsProduto.Active then
//    fDmCupomFiscal.prc_Abrir_Produto;

  fDmCupomFiscal.prc_Abrir_CSTICMS(fDmCupomFiscal.cdsFilialSIMPLES.AsString);
end;

procedure TfCupomFiscalC.btnEnvioClick(Sender: TObject);
var
  vIDAux: Integer;
  vChaveNFe: String;
  vAlt: Boolean;
begin
  if vPosicionar then
    prc_Posiciona_CupomFiscal(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
  if (fDmCupomFiscal.cdsCupomFiscal.IsEmpty) or (fDmCupomFiscal.cdsCupomFiscalID.AsInteger <= 0) then
  begin
    MessageDlg('*** Não existe cupom selecionado!', mtError, [mbOk], 0);
    exit;
  end;
  if fDmCupomFiscal.cdsCupomFiscalTIPO.AsString <> 'NFC' then
  begin
    MessageDlg('*** Cupom não é eletrônico!', mtError, [mbOk], 0);
    exit;
  end;
  if fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger <= 0 then
  begin
    MessageDlg('*** Nº do cupom não gerado!', mtError, [mbOk], 0);
    exit;
  end;

  if trim(fDmCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString) <> '' then
  begin
    MessageDlg('*** Cupom já enviado!', mtError, [mbOk], 0);
    exit;
  end;

//Inácio 09/06/17
  vIDAux := fDmCupomFiscal.cdsCupomFiscalID.AsInteger;

  ffNFCe := TfNFCe.Create(fNFCe);
  ffNfCe.fDMCupomFiscal := fDMCupomFiscal;
  ffNFCe.prc_Configura_Tela;
  try
    //18/09/2018
    if fDmCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime <> Date then
    begin
      vAlt := true;
      ffNFCe.vGerar_Chave_Antiga := 'N';
      ffNFCe.Gera_Chave(False,False);
      vChaveNFe := ffNFCe.lbChaveAcesso.Caption;
      try
        ffNFCe.Button7Click(ffNFCe);
        if trim(ffNFCe.lbNroProtocolo.Caption) <> '' then
          vAlt := False;
      except
      end;
      if vAlt then
      begin
        frmAlteraDt_NFCe := TfrmAlteraDt_NFCe.Create(self);
        frmAlteraDt_NFCe.fDmCupomFiscal := fDmCupomFiscal;
        frmAlteraDt_NFCe.ShowModal;
        FreeAndNil(frmAlteraDt_NFCe);
      end;
    end;
    //******************************

    if fDmCupomFiscal.cdsCupomParametrosUSA_MODO_SINCRONO.AsString = 'S' then
      ffNFCe.btEnviarSincronoClick(ffNFCe)
    else
      ffNFCe.btEnviarNovoClick(ffNFCe);

    //28/12/2016  Incluido para imprimir o documento não fiscal para conferência
    if (fDmCupomFiscal.cdsCupomParametrosIMPRIME_NFISCAL_CONFERENCIA.AsString = 'S') then
      prc_ImpConferencia;
    //***********************

    fDmCupomFiscal.qVer.Close;
    fDmCupomFiscal.qVer.ParamByName('ID').AsInteger := vIDAux;
    fDmCupomFiscal.qVer.Open;
//    if (trim(fDmCupomFiscal.qVerNFECHAVEACESSO.AsString) = '') or (fDmCupomFiscal.qVerNFECHAVEACESSO.IsNull) then
//      MessageDlg('*** Cupom não enviado, favor verificar na tela de consulta', mtInformation, [mbOk], 0);
    fDmCupomFiscal.qVer.Close;

  if vTipo_Dig_Cupom <> 'I' then
     btnConsultarClick(Sender);
  finally
    FreeAndNil(ffNfCe);
  end                         
end;

procedure TfCupomFiscalC.Enviarnomtodoantigo1Click(Sender: TObject);
var
  vIDAux : Integer;
begin
  if vPosicionar then
    prc_Posiciona_CupomFiscal(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
  if (fDmCupomFiscal.cdsCupomFiscal.IsEmpty) or (fDmCupomFiscal.cdsCupomFiscalID.AsInteger <= 0) then
  begin
    MessageDlg('*** Não existe cupom selecionado!', mtError, [mbOk], 0);
    exit;
  end;

  vIDAux := fDmCupomFiscal.cdsCupomFiscalID.AsInteger;

  ffNFCe := TfNFCe.Create(fNFCe);
  try
    ffNfCe.fDMCupomFiscal := fDMCupomFiscal;
    vFilial               := fDmCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;
    ffNFCe.ShowModal;
  finally
    FreeAndNil(ffNFCe);
  end;

  btnConsultarClick(Sender);

  fDmCupomFiscal.cdsCupom_Cons.Locate('ID',vIDAux ,[loCaseInsensitive]);
end;

procedure TfCupomFiscalC.prc_scroll(DataSet: TDataSet);
begin
  if fDmCupomFiscal.cdsCupom_ConsCONTADOR_ITENS.AsInteger <= 0 then
  begin
    btnCancelar.Caption := 'Excluir';
    btnCancelar.Enabled := True;
  end
  else
  begin
    btnCancelar.Caption := 'Cancelar';
    if fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S' then
    begin
      btnEnvio.Enabled := (trim(fDmCupomFiscal.cdsCupom_ConsNFECHAVEACESSO.AsString) = '');
      if fDmCupomFiscal.cdsCupom_ConsTIPO.AsString = 'NFC' then
      begin
        btnCancelar.Enabled := ((trim(fDmCupomFiscal.cdsCupom_ConsNFECHAVEACESSO.AsString) = '') or (fDmCupomFiscal.cdsCupom_ConsNFEAMBIENTE.AsString = '2'));
        if (trim(fDmCupomFiscal.cdsCupom_ConsNFECHAVEACESSO.AsString) = '') or (fDmCupomFiscal.cdsCupom_ConsNFEAMBIENTE.AsString = '2') then
          btnCancelar.Caption := 'Excluir'
        else
          btnCancelar.Caption := 'Cancelar';
      end
      else
      begin
        btnEnvio.Enabled := False;
        btnCancelar.Caption := 'Cancelar';
        btnCancelar.Enabled := True;
      end;
    end;
  end;
  btnCancelar_Nota2.Enabled := ((trim(fDmCupomFiscal.cdsCupom_ConsNFECHAVEACESSO.AsString) <> '') and (fDmCupomFiscal.cdsCupom_ConsCANCELADO.AsString <> 'S'));
  Imprimir_Off_Line.Enabled := (trim(fDmCupomFiscal.cdsCupom_ConsNFECHAVEACESSO.AsString) = '');
end;

procedure TfCupomFiscalC.btnCancelar_Nota2Click(Sender: TObject);
begin
  if fDmCupomFiscal.cdsCupom_Cons.IsEmpty then
    exit;
  if trim(fDmCupomFiscal.cdsCupom_ConsNFECHAVEACESSO.AsString) = '' then
    exit;

  prc_Posiciona_CupomFiscal(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
  if (fDmCupomFiscal.cdsCupomFiscal.IsEmpty) or (fDmCupomFiscal.cdsCupomFiscalID.AsInteger <= 0) then
  begin
    MessageDlg('*** Não existe cupom selecionado!', mtError, [mbOk], 0);
    Exit;
  end;

  if trim(fDmCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString) = '' then
  begin
    MessageDlg('*** Cupom não enviado!', mtInformation, [mbOk], 0);
    Exit;
  end;

  if MessageDlg('Deseja realmente cancelar este Cupom Fiscal (NFCe) ?',mtWarning,[mbOK,mbNO],0) = mrNo then
    Exit;
  if MessageDlg('                                  ATENÇÃO'
                  +#13#13+
                  'Após cancelado, esta operação não mais poderá ser desfeita!'+#13+
                  '  Clique no botão OK para cancelar o Cupom Fiscal.',mtInformation,
                  [mbOK,mbNO],0) = mrNo then
    exit;
  ffCupomFiscal_Canc := TfCupomFiscal_Canc.Create(fCupomFiscal_Canc);
  ffCupomFiscal_Canc.fDmCupomFiscal := fDmCupomFiscal;
  ffCupomFiscal_Canc.ShowModal;
  FreeAndNil(ffCupomFiscal_Canc);
  if trim(fDmCupomFiscal.vMotivoCancelamento) = '' then
    Exit;

  ffNFCe := TfNFCe.Create(fNFCe);
  ffNfCe.fDMCupomFiscal := fDMCupomFiscal;
  ffNFCe.prc_Configura_Tela;
  try
    ffNFCe.btCancelarClick(ffNFCe);
  finally
    FreeAndNil(ffNfCe);
  end
end;

procedure TfCupomFiscalC.ComboBox1Exit(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    1: fDmCupomFiscal.vTipoCupom := 'CNF';
    2: fDmCupomFiscal.vTipoCupom := 'NFC';
    3: fDmCupomFiscal.vTipoCupom := 'PED';
    4: fDmCupomFiscal.vTipoCupom := 'ORC';
    5: fDmCupomFiscal.vTipoCupom := 'COM';
  end;
end;

procedure TfCupomFiscalC.prc_ImpConferencia;
begin
  if (fDmCupomFiscal.cdsCupomParametrosIMPRIME_NFISCAL_CONFERENCIA.AsString <> 'S') then
    exit;  

///////////////// removido em 25/06/2018 Juca
{  if (trim(fDmCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString) = '') or (fDmCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.IsNull) then
  begin
    MessageDlg('*** Cupom não enviado para a Receita!', mtInformation, [mbOk], 0);
    exit;
  end;}
/////////////////////

  if (fDmCupomFiscal.cdsCupomFiscalNFEDENEGADA.AsString = 'S') or (fDmCupomFiscal.cdsCupomFiscalCANCELADO.AsString = 'S') then
  begin
    MessageDlg('*** Cupom Denegado/Cancelado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsInteger = 5 then
    fDmCupomFiscal.ChamaNaoFiscal(fDmCupomFiscal.cdsCupomFiscalID.AsInteger,'modWrite')
  else
    fDmCupomFiscal.ChamaNaoFiscal(fDmCupomFiscal.cdsCupomFiscalID.AsInteger,'modCanvas');
  //******************
end;

procedure TfCupomFiscalC.btComissaoClick(Sender: TObject);
begin
  fDmCupomFiscal.cdsVendedor.Open;

  fDmCupomFiscal.cdsCupom_Cons.First;
  while not fDmCupomFiscal.cdsCupom_Cons.Eof do
  begin
    fDmCupomFiscal.qComissao.ParamByName('IC').AsInteger := fDmCupomFiscal.cdsCupom_ConsID.AsInteger;
    fDmCupomFiscal.qComissao.Open;
    if fDmCupomFiscal.qComissao.IsEmpty then
    begin
      fDmCupomFiscal.prcLocalizar(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
      fDmCupomFiscal.prc_Gravar_Comissao();
    end;
    fDmCupomFiscal.qComissao.Close;
    fDmCupomFiscal.cdsCupom_Cons.Next;
  end;
  fDmCupomFiscal.cdsVendedor.Close;
end;

procedure TfCupomFiscalC.Nofiscal1Click(Sender: TObject);
begin
  if fDmCupomFiscal.cdsCupom_Cons.IsEmpty then
    Exit
  else
  if fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsInteger = 5 then
    fDmCupomFiscal.ChamaNaoFiscal(fDmCupomFiscal.cdsCupom_ConsID.AsInteger,'modWrite')
  else
    fDmCupomFiscal.ChamaNaoFiscal(fDmCupomFiscal.cdsCupom_ConsID.AsInteger,'modCanvas')
end;

procedure TfCupomFiscalC.Fiscal1Click(Sender: TObject);
begin
  fDmCupomFiscal.prcLocalizar(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
  ffNFCe := TfNFCe.Create(fNFCe);
  try
    ffNFCe.CheckBox1.Checked := True;
    ffNfCe.fDMCupomFiscal := fDMCupomFiscal;
    vFilial               := fDmCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;
    ffNFCe.prc_Configura_Tela;
    ffNFCe.btDanfeClick(Sender);
  finally
    FreeAndNil(ffNFCe);
  end;
end;

procedure TfCupomFiscalC.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fdmCupomFiscal.cdsCupom_Cons.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfCupomFiscalC.btEstoqueClick(Sender: TObject);
begin
  fDmEstoque   := TDmEstoque.Create(Self);
  fDmMovimento := TDMMovimento.Create(Self);

  fDmCupomFiscal.cdsCupom_Cons.First;
  while not fDmCupomFiscal.cdsCupom_Cons.Eof do
  begin
    fDmCupomFiscal.prcLocalizar(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
    fDmCupomFiscal.cdsCupom_Itens.First;
    while not fDmCupomFiscal.cdsCupom_Itens.Eof do
    begin
      if fDmCupomFiscal.cdsCupom_ItensID_MOVESTOQUE.AsInteger > 0 then
      begin
        fDmCupomFiscal.cdsCupom_Itens.Next;
        Continue;
      end;
      fDmCupomFiscal.cdsCupom_Itens.Edit;
      fDmCupomFiscal.cdsCupom_ItensID_MOVESTOQUE.AsInteger := fDMEstoque.fnc_Gravar_Estoque(fDmCupomFiscal.cdsCupom_ItensID_MOVESTOQUE.AsInteger,
                                                 fDmCupomFiscal.cdsCupomFiscalFILIAL.AsInteger,
                                                 vLocalEstoque,
                                                 fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger,
                                                 fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger,
                                                 fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger,
                                                 fDmCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger,
                                                 fDmCupomFiscal.cdsCupomFiscalID.AsInteger,0,
                                                 'S','CFI',
                                                 fDmCupomFiscal.cdsCupom_ItensUNIDADE.AsString,
                                                 fDmCupomFiscal.cdsCupom_ItensUNIDADE.AsString,
                                                 fDmCupomFiscal.cdsCupomFiscalSERIE.AsString,
                                                 fDmCupomFiscal.cdsCupom_ItensTAMANHO.AsString,
                                                 fDmCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime,
                                                 fDmCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat,
                                                 fDmCupomFiscal.cdsCupom_ItensQTD.AsFloat,
                                                 fDmCupomFiscal.cdsCupom_ItensPERC_ICMS.AsFloat,
                                                 0,
                                                 0,
                                                 0,
                                                 0,
                                                 fDmCupomFiscal.cdsCupom_ItensQTD.AsFloat,
                                                 fDmCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat,
                                                 0,0,'',
                                                 fDmCupomFiscal.cdsCupom_ItensID_COR_COMBINACO.AsInteger,'','N',0);

      fDmCupomFiscal.cdsCupom_ItensID_MOVIMENTO.AsInteger := fDMMovimento.fnc_Gravar_Movimento(0,
                                                   fDMCupomFiscal.cdsCupomFiscalFILIAL.AsInteger,
                                                   fDMCupomFiscal.cdsCupom_ItensITEM.AsInteger,
                                                   fDMCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger,
                                                   0,
                                                   fDMCupomFiscal.cdsCupom_ItensID.AsInteger,
                                                   fDMCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger,
                                                   fDMCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger,
                                                   0,
                                                   fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger,0,
                                                   'CFI',
                                                   fDmCupomFiscal.cdsCupomFiscalSERIE.AsString,//Série
                                                   'S','CFI',
                                                   fDMCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat,
                                                   fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat,
                                                   0,
                                                   0,
                                                   fDMCupomFiscal.cdsCupom_ItensVLR_ICMS.AsFloat,
                                                   0,
                                                   0,0,0,
                                                   0,0,
                                                   0,
                                                   0,
                                                   fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat,0,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   0,0,0,0,fDMCupomFiscal.cdsCupom_ItensBASE_ICMS.AsFloat,
                                                   0,
                                                   0,
                                                   fDMCupomFiscal.cdsCupom_ItensQTD.AsFloat,
                                                   0,
                                                   fDMCupomFiscal.cdsCupom_ItensPERC_ICMS.AsFloat,
                                                   0,
                                                   0,
                                                   0,0,0,0,
                                                   fDMCupomFiscal.cdsCupom_ItensCANCELADO.AsString,
                                                   '',
                                                   fDMCupomFiscal.cdsCupom_ItensUNIDADE.AsString,
                                                   '',
                                                   fDMCupomFiscal.cdsCupom_ItensNOMEPRODUTO.AsString,
                                                   fDmCupomFiscal.cdsProdutoREFERENCIA.AsString,
                                                   fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime,
                                                   fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime,
                                                   fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString,
                                                   '',
                                                   fDMCupomFiscal.cdsCupomFiscalID_CONDPGTO.AsInteger,0,
                                                   fDmCupomFiscal.cdsCupomFiscalID_VENDEDOR.AsInteger,
                                                   fDmCupomFiscal.cdsCupom_ItensID_COR_COMBINACO.AsInteger,
                                                   fDmCupomFiscal.cdsCupomFiscalPERC_VENDEDOR.AsFloat,0,0,vTerminal,0,'N');
      fDmCupomFiscal.cdsCupom_Itens.Post;
      fDmCupomFiscal.cdsCupom_Itens.ApplyUpdates(0);
    end;
    fDmCupomFiscal.cdsCupom_Cons.Next;
  end;
  if fDmEstoque.Owner.ClassName = Self.ClassName then
    FreeAndNil(fDmEstoque);
  if fDmMovimento.Owner.ClassName = Self.ClassName then
    FreeAndNil(fDmMovimento);
end;

procedure TfCupomFiscalC.Coferncia1Click(Sender: TObject);
begin
  //28/12/2016  Incluido para imprimir o documento não fiscal para conferência
  if not(fDmCupomFiscal.cdsCupom_Cons.Active) or (fDmCupomFiscal.cdsCupom_Cons.IsEmpty) then
    exit;
  fDmCupomFiscal.prcLocalizar(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
  prc_ImpConferencia;
  //***********************
end;

procedure TfCupomFiscalC.ConverterparaFiscal1Click(Sender: TObject);
var
  vAux: Integer;
begin
  if fDmCupomFiscal.cdsCupom_ConsTIPO.AsString = 'CNF' then
  begin
    fDmCupomFiscal.prcLocalizar(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
    fDmCupomFiscal.cdsCupomFiscal.Edit;
    vAux := dmDatabase.ProximaSequencia('NUM_NFC',vFilial);
    fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger := vAux;
    fDmCupomFiscal.cdsCupomFiscalSERIE.AsString := fDmCupomFiscal.cdsFilialSERIE_NFCE.AsString;
    fDmCupomFiscal.cdsCupomFiscalTIPO.AsString  := 'NFC';
    fDmCupomFiscal.cdsCupomFiscal.Post;
    fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
    btnEnvioClick(Sender);
  end;
end;

procedure TfCupomFiscalC.cbNEnviadosClick(Sender: TObject);
begin
  if cbNEnviados.Checked then
    ComboBox1.ItemIndex := 2;
end;

procedure TfCupomFiscalC.btnRecalcularClick(Sender: TObject);
begin
  if MessageDlg('Atenção: este procedimento irá repetir gravação de estoque e financeiro!' + #13 +
                'Deseja prosseguir?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  fDmCupomFiscal.cdsCupom_Cons.First;
  while not fDmCupomFiscal.cdsCupom_Cons.Eof do
  begin
    if (fDmCupomFiscal.cdsCupom_ConsTIPO.AsString = 'NFC') and (trim(fDmCupomFiscal.cdsCupom_ConsNFECHAVEACESSO.AsString) = '') then
    begin
      prc_Posiciona_CupomFiscal(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
      if not fDmCupomFiscal.cdsCupomFiscal.IsEmpty then
      begin
        prc_Calcular_Geral(fDmCupomFiscal);
        fDmCupomFiscal.cdsCupomFiscal.Post;
      end;
    end;

    prc_Posiciona_CupomFiscal(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
    if (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'NFC') or
       (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'CNF') then
      prc_Controle_Gravar_Diversos(True,True)
    else
    if (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'ORC') then
      prc_Controle_Gravar_Diversos(False,False)
    else
      prc_Controle_Gravar_Diversos(False,True);
    fDmCupomFiscal.cdsCupomFiscal.Edit;
    fDmCupomFiscal.cdsCupomFiscalESTOQUE_OK.AsString    := vEstoqueOK;
    fDmCupomFiscal.cdsCupomFiscalFINANCEIRO_OK.AsString := vFinanceiroOK;
    fDmCupomFiscal.cdsCupomFiscal.Post;
    fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
    fDmCupomFiscal.cdsCupom_Cons.Next;
  end;

  ShowMessage('Concluído!');
end;

procedure TfCupomFiscalC.btnAjustarICMSClick(Sender: TObject);
begin
  fDmCupomFiscal.cdsCupom_Cons.First;
  while not fDmCupomFiscal.cdsCupom_Cons.Eof do
  begin
    if (fDmCupomFiscal.cdsCupom_ConsTIPO.AsString = 'NFC') and (trim(fDmCupomFiscal.cdsCupom_ConsNFECHAVEACESSO.AsString) = '') then
    begin
      prc_Posiciona_CupomFiscal(fDmCupomFiscal.cdsCupom_ConsID.AsInteger);
      if not fDmCupomFiscal.cdsCupomFiscal.IsEmpty then
      begin
        fDmCupomFiscal.cdsCupomFiscal.Edit;
        fDmCupomFiscal.cdsCupomFiscalVLR_PIS.AsFloat    := 0;
        fDmCupomFiscal.cdsCupomFiscalVLR_COFINS.AsFloat := 0;
        fDmCupomFiscal.cdsCupomFiscalBASE_ICMS.AsFloat  := 0;
        fDmCupomFiscal.cdsCupomFiscalVLR_ICMS.AsFloat   := 0;
        fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat  := 0;
        fDmCupomFiscal.cdsCupomFiscalVLR_IPI.AsFloat    := 0;
        fDmCupomFiscal.cdsCupomFiscalVLR_PIS.AsFloat    := 0;
        fDmCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsFloat := 0;
        fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat    := 0;
        fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsFloat  := 0;
        fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_ESTADUAL.AsFloat  := 0;
        fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_FEDERAL.AsFloat   := 0;
        fDmCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_MUNICIPAL.AsFloat := 0;

        fDmCupomFiscal.cdsCupom_Itens.First;
        while not fDmCupomFiscal.cdsCupom_Itens.Eof do
        begin
          fDmCupomFiscal.cdsCupom_Itens.Edit;
          fDmCupomFiscal.vID_CFOP     := fDmCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger;
          fDmCupomFiscal.vID_Variacao := fDmCupomFiscal.cdsCupom_ItensID_VARIACAO.AsInteger;
          prc_Move_Itens_Ajuste;

          if fDmCupomFiscal.vID_CFOP > 0 then
          begin
            fDmCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger := fDmCupomFiscal.vID_CFOP;
            if fDmCupomFiscal.vID_Variacao > 0 then
              fDmCupomFiscal.cdsCupom_ItensID_VARIACAO.AsInteger := fDmCupomFiscal.vID_Variacao;
          end;

          if fDmCupomFiscal.vID_Pis > 0 then
            fDmCupomFiscal.cdsCupom_ItensID_PIS.AsInteger := fDmCupomFiscal.vID_Pis;
          if fDmCupomFiscal.vID_Cofins > 0 then
            fDmCupomFiscal.cdsCupom_ItensID_COFINS.AsInteger := fDmCupomFiscal.vID_Cofins;
          if fDmCupomFiscal.vID_CSTICMS > 0 then
            fDmCupomFiscal.cdsCupom_ItensID_CSTICMS.AsInteger := fDmCupomFiscal.vID_CSTICMS;

          fDmCupomFiscal.cdsCupom_ItensTIPO_PIS.AsString     := fDmCupomFiscal.vTipo_Pis;
          fDmCupomFiscal.cdsCupom_ItensTIPO_COFINS.AsString  := fDmCupomFiscal.vTipo_Cofins;
          fDmCupomFiscal.cdsCupom_ItensPERC_PIS.AsFloat      := fDmCupomFiscal.vPerc_Pis;
          fDmCupomFiscal.cdsCupom_ItensPERC_COFINS.AsFloat   := fDmCupomFiscal.vPerc_Cofins;
          fDmCupomFiscal.cdsCupom_ItensPERC_TRIBICMS.AsFloat := fDmCupomFiscal.vPerc_TribICMS;
          fDmCupomFiscal.cdsCupom_ItensPERC_ICMS.AsFloat     := fDmCupomFiscal.vPerc_ICMS;
          fDmCupomFiscal.cdsCupom_ItensPERC_IPI.AsFloat      := fDmCupomFiscal.vPerc_IPI;

          prc_Calculo_GeralItem(fDmCupomFiscal,fDmCupomFiscal.cdsCupom_ItensQTD.AsFloat,fDmCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat,
                                             fDmCupomFiscal.cdsCupom_ItensVLR_DESCONTO.AsFloat,fDmCupomFiscal.cdsCupom_ItensPERC_DESCONTO.AsFloat,
                                             fDmCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat,0,'S',0);
          fDmCupomFiscal.cdsCupom_Itens.Post;
          fDmCupomFiscal.cdsCupom_Itens.Next;
        end;

        fDmCupomFiscal.cdsCupomFiscal.Post;
        fDmCupomFiscal.cdsCupom_Itens.ApplyUpdates(0);
        fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
      end;                                            
    end;
    fDmCupomFiscal.cdsCupom_Cons.Next;
  end;
end;

procedure TfCupomFiscalC.prc_Move_Itens_Ajuste;
var
  vGeraIcms: Boolean;
begin
  if (fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString <> 'S') then
    exit;

  fDmCupomFiscal.prc_Abrir_Produto('ID',fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsString);

  if fDmCupomFiscal.cdsProdutoID.AsInteger <> fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger  then
    fDmCupomFiscal.cdsProduto.Locate('ID',fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);

  fDmCupomFiscal.vID_NCM := fDmCupomFiscal.cdsProdutoID_NCM.AsInteger;
  if fDmCupomFiscal.vID_NCM > 0 then
    fDmCupomFiscal.cdsTab_NCM.Locate('ID',fDmCupomFiscal.vID_NCM,[loCaseInsensitive]);

  if fDmCupomFiscal.cdsProdutoID_CFOP_NFCE.AsInteger > 0 then
    fDmCupomFiscal.vID_CFOP := fDmCupomFiscal.cdsProdutoID_CFOP_NFCE.AsInteger
  else
  if (fDmCupomFiscal.cdsTab_NCMID_CFOP.AsInteger > 0) and (fDmCupomFiscal.cdsTab_NCMID.AsInteger = fDmCupomFiscal.cdsCupom_ItensID_NCM.AsInteger) then
    fDmCupomFiscal.vID_CFOP := fDmCupomFiscal.cdsTab_NCMID_CFOP.AsInteger
  else
  if fDmCupomFiscal.cdsFilialID_CFOP_NFCE_PADRAO.AsInteger > 0 then
    fDmCupomFiscal.vID_CFOP := fDmCupomFiscal.cdsFilialID_CFOP_NFCE_PADRAO.AsInteger;
  if fDmCupomFiscal.vID_CFOP > 0 then
  begin
    fDmCupomFiscal.cdsCFOP.Locate('ID',fDmCupomFiscal.vID_CFOP,[loCaseInsensitive]);
    vGeraIcms := fDmCupomFiscal.cdsCFOPGERAR_ICMS.AsString = 'S';
  end;
  fDmCupomFiscal.vID_Variacao := 0;
  if fDmCupomFiscal.vID_CFOP > 0 then
    fDmCupomFiscal.vID_Variacao := fDmCupomFiscal.fnc_Buscar_Regra_CFOP(fDmCupomFiscal.vID_CFOP);
  if fDmCupomFiscal.vID_Variacao = 0 then
    ShowMessage('Variação da CFOP não localizada para a operação!' + #13 +
                'Cupom fiscal não será validado!')
  else
    fDmCupomFiscal.prc_Mover_CST;
end;

procedure TfCupomFiscalC.prc_Controle_Gravar_Diversos(Financeiro, Estoque: Boolean);
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  Flag: Boolean;
  vMSGAux: String;
begin
  sds     := TSQLDataSet.Create(nil);
  vMSGAux := '';
  vFinanceiroOK := 'N';
  vEstoqueOK    := 'N';
  if Financeiro then
  begin
    ID.TransactionID  := 70;
    ID.IsolationLevel := xilREADCOMMITTED;
    dmDatabase.scoDados.StartTransaction(ID);
    try
      try
        if ckMsg.Checked then
          ShowMessage('Parte 100 ');

        sds.SQLConnection := dmDatabase.scoDados;
        sds.NoMetadata    := True;
        sds.GetMetadata   := False;
        sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('FINANCEIRO');
        Flag := False;
        while not Flag do
        begin
          try
            sds.Close;
            sds.ExecSQL;
            Flag := True;
          except
            on E: Exception do
            begin
              Flag := False;
            end;
          end;
        end;
      except
        raise
      end;
      if ckMsg.Checked then
        ShowMessage('Parte 101 ');

      //Gravar Contas a Receber    02/05/2018
      if fDmCupomFiscal.cdsCupomFiscalTIPO_PGTO.AsString = 'P' then
      begin
        if ckMsg.Checked then
          ShowMessage('Parte 103 - Antes do Le_CupomFiscalParc ');
        Le_CupomFiscalParc;
        if ckMsg.Checked then
          ShowMessage('Parte 104 - Depois do Le_CupomFiscalParc ');

        if (fDmCupomFiscal.cdsCupomFiscalID_VENDEDOR.AsInteger > 0) and
           (StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupomFiscalPERC_VENDEDOR.AsFloat)) > 0) then
        begin
          if ckMsg.Checked then
            ShowMessage('Parte 105 - Antes prc_Gravar_Comissao');
          fDmCupomFiscal.cdsVendedor.Locate('CODIGO',fDmCupomFiscal.cdsCupomFiscalID_VENDEDOR.AsInteger,[loCaseInsensitive]);
          if fDmCupomFiscal.cdsVendedorTIPO_COMISSAO.AsString = 'N' then
            fDmCupomFiscal.prc_Gravar_Comissao('AVI');  //aqui, comissão a prazo
          if ckMsg.Checked then
            ShowMessage('Parte 106 - Depois prc_Gravar_Comissao');
        end;
      end
      else
      begin
        if ckMsg.Checked then
          ShowMessage('Parte 107 - Posiciona o Tipo de Cobrança');
        fDmCupomFiscal.cdsTipoCobranca.Open;
        fDmCupomFiscal.cdsTipoCobranca.FindKey([fDmCupomFiscal.cdsCupomFiscalID_TIPOCOBRANCA.AsInteger]);
        if ckMsg.Checked then
          ShowMessage('Parte 108 - Antes do prc_Gravar_Financeiro');
        fDmCupomFiscal.prc_Gravar_Financeiro_Cupom(0,fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency);
        if ckMsg.Checked then
          ShowMessage('Parte 109 - Depois do prc_Gravar_Financeiro');
        if ckMsg.Checked then
          ShowMessage('Parte 110 - Antes do prc_Gravar_Comissao');
        fDmCupomFiscal.prc_Gravar_Comissao('AVI');  //aqui, comissão a vista
        if ckMsg.Checked then
          ShowMessage('Parte 111 - Depois do prc_Gravar_Comissao');
      end;
      if ckMsg.Checked then
        ShowMessage('Parte 112 - Antes do commit');
      dmDatabase.scoDados.Commit(ID);
      if ckMsg.Checked then
        ShowMessage('Parte 113 - Depois do commit');
      vFinanceiroOK := 'S';
    except
      on e: Exception do
      begin
        vFinanceiroOK := 'N';
        vMSGAux := 'Erro ao gravar Comissão/Contas Receber: ' + #13 + e.Message;
        uGrava_Erro.prc_Gravar('Financeiro,Estoque,Comissão','fCupomFiscalC',vMSGAux,DateToStr(Date),TimeToStr(Now));
        dmDatabase.scoDados.Rollback(ID);
      end;
    end;
  end;

  if Estoque then
  begin
    fDmEstoque   := TDmEstoque.Create(Self);
    fDmMovimento := TDMMovimento.Create(Self);
    ID.TransactionID  := 71;
    ID.IsolationLevel := xilREADCOMMITTED;
    dmDatabase.scoDados.StartTransaction(ID);
    try
      try
        if ckMsg.Checked then
          ShowMessage('Parte 114');
        sds.SQLConnection := dmDatabase.scoDados;
        sds.NoMetadata    := True;
        sds.GetMetadata   := False;
        sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('ESTOQUE_MOV');
        Flag := False;
        while not Flag do
        begin
          try
            sds.Close;
            sds.ExecSQL;
            Flag := True;
          except
            on E: Exception do
            begin
              Flag := False;
            end;
          end;
        end;
      except
        raise
      end;
      if ckMsg.Checked then
        ShowMessage('Parte 115 - Antes Gravar_Estoque');
      Gravar_Estoque(Financeiro);
      if ckMsg.Checked then
        ShowMessage('Parte 116 - Depois Gravar_Estoque');
      dmDatabase.scoDados.Commit(ID);
      if ckMsg.Checked then
        ShowMessage('Parte 117 - Depois Commit');
      vEstoqueOK := 'S';
    except
      on e: Exception do
      begin
        vEstoqueOK := 'N';
        dmDatabase.scoDados.Rollback(ID);
        vMSGAux := vMSGAux + #13+ #13+  'Erro ao gravar Estoque: ' + #13 + e.Message;
      end;
    end;
    if ckMsg.Checked then
      ShowMessage('Parte 118 - FreeAndNil(sds)');
    FreeAndNil(sds);
    if ckMsg.Checked then
      ShowMessage('Parte 119 - FreeAndNil(fDmEstoque)');
    FreeAndNil(fDmEstoque);
    if ckMsg.Checked then
      ShowMessage('Parte 120 - FreeAndNil(fDmMovimento)');
    FreeAndNil(fDmMovimento);
    if ckMsg.Checked then
      ShowMessage('Parte 121');
  end;

  if trim(vMSGAux) <> '' then
    MessageDlg(vMSGAux, mtInformation, [mbOk], 0);
end;

procedure TfCupomFiscalC.Le_CupomFiscalParc;
begin
  fDmCupomFiscal.cdsCupom_Parc.First;
  while not fDmCupomFiscal.cdsCupom_Parc.Eof do
  begin
    prc_PosicionaFormaPgto(fDmCupomFiscal.cdsCupom_ParcID_TIPOCOBRANCA.AsInteger);
    if fDmCupomFiscal.cdsTipoCobrancaCREDITO_LOJA.AsString = 'S' then
      Gravar_CReceber
    else
      fDmCupomFiscal.prc_Gravar_Financeiro_Cupom(fDmCupomFiscal.cdsCupom_ParcPARCELA.AsInteger,
                                                 fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency);
    fDmCupomFiscal.cdsCupom_Parc.Next;
  end;
end;

procedure TfCupomFiscalC.Gravar_Estoque(vFinanceiro: Boolean);
var
  vID_Estoque,
  vID_Mov: Integer;
  vDescAux: Real;
  fDMCadCupomFiscal_MP: TDMCadCupomFiscal_MP;
begin
  if fDmCupomFiscal.cdsCupomParametrosBAIXAR_CONSUMO.AsString = 'S' then
  begin
    fDMCadCupomFiscal_MP := TDMCadCupomFiscal_MP.Create(Self);
    fDMCadCupomFiscal_MP.mMaterial.EmptyDataSet;
  end;

  SMDBGrid1.DisableScroll;
  fDmCupomFiscal.cdsCupom_Itens.First;
  while not fDmCupomFiscal.cdsCupom_Itens.Eof do
  begin
    vID_Mov  := 0;
    vDescAux := StrToFloat(FormatFloat('0.0000',fDmCupomFiscal.cdsCupom_ItensVLR_DESCONTO.AsFloat));

    if fDmCupomFiscal.cdsCupom_ItensCANCELADO.AsString = 'S' then
    begin
      fDmCupomFiscal.cdsCupom_Itens.Next;
      Continue;
    end;

    fDmCupomFiscal.prc_Abrir_Produto('ID',fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsString);

    vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(fDmCupomFiscal.cdsCupom_ItensID_MOVESTOQUE.AsInteger,
                                                 fDmCupomFiscal.cdsCupomFiscalFILIAL.AsInteger,
                                                 vLocalEstoque,
                                                 fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger,
                                                 fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger,
                                                 fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger,
                                                 fDmCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger,
                                                 fDmCupomFiscal.cdsCupomFiscalID.AsInteger,0,
                                                 'S','CFI',
                                                 fDmCupomFiscal.cdsCupom_ItensUNIDADE.AsString,
                                                 fDmCupomFiscal.cdsCupom_ItensUNIDADE.AsString,
                                                 fDmCupomFiscal.cdsCupomFiscalSERIE.AsString,
                                                 fDmCupomFiscal.cdsCupom_ItensTAMANHO.AsString,
                                                 fDmCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime,
                                                 fDmCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat,
                                                 fDmCupomFiscal.cdsCupom_ItensQTD.AsFloat,
                                                 fDmCupomFiscal.cdsCupom_ItensPERC_ICMS.AsFloat,
                                                 0,
                                                 vDescAux,
                                                 0,
                                                 0,
                                                 fDmCupomFiscal.cdsCupom_ItensQTD.AsFloat,
                                                 fDmCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat,
                                                 vDescAux,0,'',
                                                 fDmCupomFiscal.cdsCupom_ItensID_COR_COMBINACO.AsInteger,'','N',0);

    if (not fDmCupomFiscal.cdsProduto.IsEmpty) and
       (fDmCupomFiscal.cdsProdutoTIPO_REG.AsString <> 'N') and (vFinanceiro) then
    begin
      vID_Mov := fDMMovimento.fnc_Gravar_Movimento(0,
                                                   fDMCupomFiscal.cdsCupomFiscalFILIAL.AsInteger,
                                                   fDMCupomFiscal.cdsCupom_ItensITEM.AsInteger,
                                                   fDMCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger,
                                                   0,
                                                   fDMCupomFiscal.cdsCupom_ItensID.AsInteger,
                                                   fDMCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger,
                                                   fDMCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger,
                                                   0,
                                                   fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger,0,
                                                   'CFI',
                                                   fDmCupomFiscal.cdsCupomFiscalSERIE.AsString,//Série
                                                   'S','CFI',
                                                   fDMCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat,
                                                   fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat,
                                                   0,
                                                   0,
                                                   fDMCupomFiscal.cdsCupom_ItensVLR_ICMS.AsFloat,
                                                   0,
                                                   0,0,0,
                                                   0,0,
                                                   0,
                                                   0,
                                                   fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat,0,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   0,0,0,0,fDMCupomFiscal.cdsCupom_ItensBASE_ICMS.AsFloat,
                                                   0,
                                                   0,
                                                   fDMCupomFiscal.cdsCupom_ItensQTD.AsFloat,
                                                   0,
                                                   fDMCupomFiscal.cdsCupom_ItensPERC_ICMS.AsFloat,
                                                   0,
                                                   0,
                                                   0,0,0,0,
                                                   fDMCupomFiscal.cdsCupom_ItensCANCELADO.AsString,
                                                   '',
                                                   fDMCupomFiscal.cdsCupom_ItensUNIDADE.AsString,
                                                   '',
                                                   fDMCupomFiscal.cdsCupom_ItensNOMEPRODUTO.AsString,
                                                   fDmCupomFiscal.cdsProdutoREFERENCIA.AsString,
                                                   fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime,
                                                   fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime,
                                                   fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString,
                                                   '',
                                                   fDMCupomFiscal.cdsCupomFiscalID_CONDPGTO.AsInteger,0,
                                                   fDmCupomFiscal.cdsCupomFiscalID_VENDEDOR.AsInteger,
                                                   fDmCupomFiscal.cdsCupom_ItensID_COR_COMBINACO.AsInteger,
                                                   fDmCupomFiscal.cdsCupomFiscalPERC_VENDEDOR.AsFloat,0,0,vTerminal,0,'N');
    end;
    if (fDmCupomFiscal.cdsCupom_ItensID_MOVESTOQUE.AsInteger <> vID_Estoque) or (fDmCupomFiscal.cdsCupom_ItensID_MOVIMENTO.AsInteger <> vID_Mov) then
    begin
      fDmCupomFiscal.cdsCupom_Itens.Edit;
      fDmCupomFiscal.cdsCupom_ItensID_MOVESTOQUE.AsInteger := vID_Estoque;
      fDmCupomFiscal.cdsCupom_ItensID_MOVIMENTO.AsInteger  := vID_Mov;
      fDmCupomFiscal.cdsCupom_Itens.Post;
    end;

    if fdmCupomFiscal.cdsCupomParametrosBAIXAR_CONSUMO.AsString = 'S' then
    begin
      fDMCadCupomFiscal_MP.fDMCupomFiscal := fDMCupomFiscal;
      fDMCadCupomFiscal_MP.prc_Abrir_CupomFiscal_MP(fDmCupomFiscal.cdsCupomFiscalID.AsInteger);
      fDMCadCupomFiscal_MP.fDMEstoque     := fDMEstoque;
      fDMCadCupomFiscal_MP.prc_Le_Produto_Consumo;
    end;
    fDmCupomFiscal.cdsCupom_Itens.Next;
  end;
  SMDBGrid1.EnableScroll;
  if fDmCupomFiscal.cdsCupomParametrosBAIXAR_CONSUMO.AsString = 'S' then
  begin
    fDMCadCupomFiscal_MP.prc_Le_mMaterial;
    FreeAndNil(fDMCadCupomFiscal_MP);
  end;
end;

procedure TfCupomFiscalC.prc_PosicionaFormaPgto(vId: Integer);
begin
  if not fDmCupomFiscal.cdsTipoCobranca.Active then
    fDmCupomFiscal.cdsTipoCobranca.Open;
  fDmCupomFiscal.cdsTipoCobranca.IndexFieldNames := 'ID';
  fDmCupomFiscal.cdsTipoCobranca.FindKey([vID]);
end;

procedure TfCupomFiscalC.Gravar_CReceber;
begin
  fDmCupomFiscal.cdsCupom_Parc.Edit;
  fDmCupomFiscal.cdsCupom_ParcID_DUPLICATA.AsInteger := fDmCupomFiscal.Gravar_Duplicata('R','N',fDmCupomFiscal.cdsCupom_ParcPARCELA.AsInteger,
                                                                                        fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsFloat,
                                                                                        fDmCupomFiscal.cdsCupom_ParcDTVENCIMENTO.AsDateTime,'');
  fDmCupomFiscal.cdsCupom_Parc.Post;
end;


end.

