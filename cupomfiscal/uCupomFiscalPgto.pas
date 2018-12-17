unit uCupomFiscalPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RxLookup, StdCtrls, Buttons, Mask,
  DB, DBTables, RxDBComb, DBCtrls, ExtCtrls, UDMCupomFiscal, rsDBUtils, uDmMovimento, uDmParametros, ACBrBase, DBGrids,
  Grids, SMDBGrid, RzTabs, NxCollection, dbXPress, SqlExpr, ToolEdit, CurrEdit, StrUtils, Math;

type
  TfCupomFiscalPgto = class(TForm)
    Panel1: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Panel5: TPanel;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    brCancelar: TNxButton;
    btConfirmar: TNxButton;
    btGaveta: TNxButton;
    Label13: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    btnGerarParcelas: TNxButton;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    ceCodCliente: TCurrencyEdit;
    Label11: TLabel;
    ComboVendedor: TRxDBLookupCombo;
    Panel4: TPanel;
    Label2: TLabel;
    Label10: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Edit1: TEdit;
    ceFormaPgto: TCurrencyEdit;
    cbNFCe: TComboBox;
    Panel6: TPanel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Panel7: TPanel;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    btCliente: TSpeedButton;
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    btnParcelas: TSpeedButton;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    SpeedButton2: TSpeedButton;
    CurrencyEdit1: TCurrencyEdit;
    Label16: TLabel;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    Label17: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Panel8: TPanel;
    Label18: TLabel;
    DBEdit10: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btConfirmarClick(Sender: TObject);
    procedure brCancelarClick(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure btnGerarParcelasClick(Sender: TObject);
    procedure btnParcelasClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure ceFormaPgtoExit(Sender: TObject);
    procedure ceFormaPgtoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboVendedorEnter(Sender: TObject);
    procedure ComboVendedorExit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceCodClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceCodClienteExit(Sender: TObject);
    procedure btClienteClick(Sender: TObject);
    procedure btGavetaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure ComboVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9Exit(Sender: TObject);
    procedure cbNFCeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure Panel7Enter(Sender: TObject);
    procedure Panel4Exit(Sender: TObject);
    procedure ComboVendedorChange(Sender: TObject);
  private
    { Private declarations }
    vPercJuros, vVlrDesconto_Ant: Real;
    vCpfOk: Boolean;
    vQtdParcelas: Word;
    procedure Gerar_Parcelas(vVlrParcelado, vTxJuros: Real;vQtdParc: Word);
    procedure Gravar_CupomFiscalParc(Data: TDateTime; Valor: Real);
    function Calcula_Troco: Boolean;
    function fncVerificaParc(vTotal: Currency): Boolean;
    procedure prc_EditaTodas(vRestante: Currency; vQtdParc: Word);
    procedure prc_EditaPrimeira(vRestante: Currency; vQtdParc: Word);
    procedure prc_AtualizaPrecos(vVlrProdutos, vVlrTotal: Currency);
    procedure prc_ControleParcelas(vVlrParcelado, vVlrTxJuros: Real; vQtdParc: Word);
    function fnc_CalulaJuros(vVlrEntrada,vVlrFinanciado,vPercJuros: Real; vParcelas: Word): Real;

  public
    { Public declarations }
    vSenhaVendedor: String;
    fDmCupomFiscal: TDmCupomFiscal;
    fDmMovimento: TDmMovimento;
    fDmParametros: TDmParametros;
    vTeste: Boolean;
  end;

var
  fCupomFiscalPgto: TfCupomFiscalPgto;

implementation

//---------------TROCAR IMPRESSORA
uses UCupomFiscalCli, UCupomFiscalC, ACBrECF, DmdDatabase, uUtilPadrao, uCupomFiscalParcela, uUtilCliente, USel_Pessoa,
  uCalculo_CupomFiscal, UConsPessoa_Fin, uCupomCliente, uCupomDadosCli, UCupomFiscal, USenha;

{$R *.dfm}

procedure TfCupomFiscalPgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfCupomFiscalPgto.DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    Calcula_Troco;
end;

procedure TfCupomFiscalPgto.Gerar_Parcelas(vVlrParcelado, vTxJuros: Real; vQtdParc: Word);
var
  vVlrParcelas: Real;
  vVlrRestante: Real;
  vDataAux: TDateTime;
  i: Word;
begin
  fDmCupomFiscal.vSomaParcelas := 0;
  if fDmCupomFiscal.cdsCupomFiscalTIPO_PGTO.AsString = 'V' then
    Gravar_CupomFiscalParc(fDmCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime,fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat)
  else
  begin
    if vTxJuros > 0 then
    begin
      vVlrParcelas := StrToFloat(FormatFloat('0.00',vVlrParcelado * ((vTxJuros / 100)/ (1 - (Power(1 + (vTxJuros / 100),vQtdParc * -1))))));
      vVlrRestante := StrToFloat(FormatFloat('0.00',vVlrParcelas * vQtdParc));
    end
    else
    begin
      vVlrParcelas := StrToFloat(FormatFloat('0.00',vVlrParcelado / vQtdParc));
      vVlrRestante := StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsCurrency - fDmCupomFiscal.vVlrEntrada));
    end;
  end;
  fDmCupomFiscal.vSomaParcelas := vVlrRestante;

  if (fDmCupomFiscal.cdsCondPgto.Locate('ID',RxDBLookupCombo2.KeyValue,[loCaseInsensitive])) then
  begin
    if fDmCupomFiscal.cdsCondPgtoTIPO_CONDICAO.AsString = 'V' then
    begin
      vVlrRestante := StrToFloat(FormatFloat('0.00',vVlrParcelas * vQtdParc));

      vDataAux := fDmCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime;
      fDmCupomFiscal.cdsCondPgto_Dia.First;
      while not fDmCupomFiscal.cdsCondPgto_Dia.Eof do
      begin
        if (fDmCupomFiscal.cdsCondPgto_Dia.RecordCount = fDmCupomFiscal.cdsCondPgto_Dia.RecNo) and
           (StrToFloat(FormatFloat('0.00',vVlrParcelas)) <> StrToFloat(FormatFloat('0.00',vVlrRestante))) then
          vVlrParcelas := StrToFloat(FormatFloat('0.00',vVlrRestante));

        vDataAux := vDataAux + fDmCupomFiscal.cdsCondPgto_DiaQtdDias.AsInteger;
        Gravar_CupomFiscalParc(vDataAux,vVlrParcelas);
        vVlrRestante := StrToFloat(FormatFloat('0.00',vVlrRestante - vVlrParcelas));

        if StrToFloat(FormatFloat('0.00',vVlrRestante)) <= 0 then
          fDmCupomFiscal.cdsCondPgto_Dia.Last;
        fDmCupomFiscal.cdsCondPgto_Dia.Next;
      end
    end
    else
    begin
      vDataAux := fDmCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime;
      {if fDmCupomFiscal.cdsCondPgtoENTRADA.AsString = 'S' then
      begin
        vVlrParcelas := StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat / (fDmCupomFiscal.cdsCondPgtoQTD_PARCELA.AsFloat + 1)));
        Gravar_CupomFiscalParc(vDataAux,vVlrParcelas);
        vVlrRestante := StrToFloat(FormatFloat('0.00',vVlrRestante - vVlrParcelas));
      end
      else
        vVlrParcelas := StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat / fDmCupomFiscal.cdsCondPgtoQTD_PARCELA.AsFloat));
      }
      for i := 1 to fDmCupomFiscal.cdsCondPgtoQTD_PARCELA.AsInteger do
      begin
        if StrToFloat(FormatFloat('0.00',vVlrParcelas)) > StrToFloat(FormatFloat('0.00',vVlrRestante)) then
          vVlrParcelas := StrToFloat(FormatFloat('0.00',vVlrRestante));
        if (i = fDmCupomFiscal.cdsCondPgtoQTD_PARCELA.AsInteger) and
           (StrToFloat(FormatFloat('0.00',vVlrParcelas)) < StrToFloat(FormatFloat('0.00',vVlrRestante))) then
          vVlrParcelas := vVlrParcelas + (vVlrRestante - vVlrParcelas);
        vDataAux := IncMonth(vDataAux,1);
        Gravar_CupomFiscalParc(vDataAux,vVlrParcelas);
        vVlrRestante := StrToFloat(FormatFloat('0.00',vVlrRestante - vVlrParcelas));
      end
    end;
  end;
end;

procedure TfCupomFiscalPgto.Gravar_CupomFiscalParc(Data: TDateTime; Valor: Real);
var
  vParcelaAux: Integer;
begin
  fDmCupomFiscal.cdsCupom_Parc.Last;
  if (Data = Date) and (fDmCupomFiscal.cdsCondPgtoENTRADA.AsString = 'S') then
    vParcelaAux := -1
  else
    vParcelaAux := fDmCupomFiscal.cdsCupom_ParcPARCELA.AsInteger;

  fDmCupomFiscal.cdsCupom_Parc.Insert;
  fDmCupomFiscal.cdsCupom_ParcID.AsInteger            := fDmCupomFiscal.cdsCupomFiscalID.AsInteger;
  fDmCupomFiscal.cdsCupom_ParcPARCELA.AsInteger       := vParcelaAux + 1;
  fDmCupomFiscal.cdsCupom_ParcDTVENCIMENTO.AsDateTime := Data;
  fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsFloat  := Valor;
  if fDmCupomFiscal.cdsCupom_ParcPARCELA.AsInteger = 0 then
  begin
    fDmCupomFiscal.qTipoDinheiro.Open;
    fDmCupomFiscal.cdsCupom_ParcID_TIPOCOBRANCA.AsInteger := fDmCupomFiscal.qTipoDinheiro.FieldByName('ID').AsInteger;
    fDmCupomFiscal.cdsCupom_ParcTIPO_COBRANCA.AsString    := fDmCupomFiscal.qTipoDinheiro.FieldByName('NOME').AsString;
    fDmCupomFiscal.qTipoDinheiro.Close;
  end
  else
  begin
    fDmCupomFiscal.cdsCupom_ParcID_TIPOCOBRANCA.AsInteger := fDmCupomFiscal.cdsCupomFiscalID_TIPOCOBRANCA.AsInteger;
    fDmCupomFiscal.cdsCupom_ParcTIPO_COBRANCA.AsString    := RxDBLookupCombo3.Text;
  end;
  fDmCupomFiscal.cdsCupom_ParcEDITADA.AsString := 'N';
  fDmCupomFiscal.cdsCupom_Parc.Post;
end;

procedure TfCupomFiscalPgto.DBEdit1Exit(Sender: TObject);
begin
  if not Calcula_Troco then
  begin
    ShowMessage('Valor pago deve ser informado!');
    Exit;
  end;
  if fDmCupomFiscal.cdsTipoCobrancaABRE_GAVETA.AsString = 'S' then
    prc_AbreGaveta(1);
end;

function TfCupomFiscalPgto.Calcula_Troco: Boolean;
var
  vVlrRecebidoAux: Real;
begin
  Result := True;
  vVlrRecebidoAux := StrToFloat(DBEdit1.Text);
  fDmCupomFiscal.cdsCupomFiscalVLR_TROCO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  if (StrToFloat(FormatFloat('0.00',vVlrRecebidoAux)) > 0) and
     (StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat)) > StrToFloat(FormatFloat('0.00',vVlrRecebidoAux))) then
  begin
    RzPageControl1.ActivePageIndex := 0;
    DBEdit1.SetFocus;
    Raise Exception.Create('Valor recebido não pode ser menor que valor total!');
  end;
  if (StrToFloat(FormatFloat('0.00',vVlrRecebidoAux)) > 0) then
  begin
    fDmCupomFiscal.cdsCupomFiscalVLR_TROCO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrRecebidoAux -
                                                      fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat));

    if (fDmCupomFiscal.cdsCupomParametrosEXIGE_VENDEDOR.AsString = 'S') and
       ((fDmCupomFiscal.cdsCupomFiscalID_VENDEDOR.IsNull) or (fDmCupomFiscal.cdsCupomFiscalID_VENDEDOR.AsInteger = 0)) and
       (fDmCupomFiscal.cdsParametrosUSA_VENDEDOR.AsString = 'S') then
       ComboVendedor.SetFocus
    else
    if (fDmCupomFiscal.cdsTipoCobrancaEXIGE_CLIENTE.AsString = 'S') and
       ((fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsString = '') or
       (fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsString = '0') or
       (fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger = 99999)) then
    begin
      rzPageControl1.ActivePageIndex := 0;
      ceCodCliente.SetFocus;
    end
    else
      btConfirmar.SetFocus;

    Result := True;
  end
  else
  if (StrToFloat(FormatFloat('0.00',vVlrRecebidoAux)) <= 0) then
  begin
    RzPageControl1.ActivePageIndex := 0;
    DBEdit1.SetFocus;
    Result := False;
  end;
end;

procedure TfCupomFiscalPgto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCupomFiscal);

  if not fdmCupomFiscal.cdsTipoCobranca.Active then
    fDmCupomFiscal.cdsTipoCobranca.Open;

  if not vTeste then
  begin
    if fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsString = '4' then
      fDmParametros.ACBrECF1.CarregaFormasPagamento;
  end;

  vCpfOk := True;

  DBEdit5.Clear;
  if fDmCupomFiscal.vClienteID > 0 then
  begin
    ceCodCliente.Value := fDmCupomFiscal.vClienteID;
    ceCodClienteExit(Sender);
    fDmCupomFiscal.cdsPessoa.IndexFieldNames := 'CODIGO';
    fDmCupomFiscal.cdsPessoa.FindKey([fDmCupomFiscal.vClienteID]);
    if (fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger <> fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger) and
       ((fDmCupomFiscal.cdsPessoaCNPJ_CPF.AsString <> '000.000.000-00') and (fDmCupomFiscal.cdsPessoaCNPJ_CPF.AsString <> '')) then
      fDmCupomFiscal.cdsCupomFiscalCPF.AsString := fDmCupomFiscal.cdsPessoaCNPJ_CPF.AsString;
  end;

  Panel6.Visible := (fDmCupomFiscal.cdsCupomParametrosUSA_DESCONTO.AsString = 'T') or
                    (fDmCupomFiscal.cdsCupomParametrosUSA_DESCONTO.AsString = 'A');
  if Panel6.Visible then
    Height := 710
  else
    Height := 590;

  if (not fDmCupomFiscal.cdsCupomFiscalID_TIPOCOBRANCA.IsNull) and (fDmCupomFiscal.cdsCupomFiscalID_TIPOCOBRANCA.AsInteger > 0) then
  begin
    ceFormaPgto.Text := fDmCupomFiscal.cdsCupomFiscalID_TIPOCOBRANCA.AsString;
    RxDBLookupCombo3Change(Sender);
  end;
  ceFormaPgto.SetFocus;

  Label3.Visible           := (fDmCupomFiscal.cdsCupomParametrosMOSTRAR_CONDPGTO.AsString = 'S');
  RxDBLookupCombo2.Visible := (fDmCupomFiscal.cdsCupomParametrosMOSTRAR_CONDPGTO.AsString = 'S');
  btnParcelas.Visible      := (fDmCupomFiscal.cdsCupomParametrosMOSTRAR_CONDPGTO.AsString = 'S');

  //04/02/2017
  if fDmCupomFiscal.cdsCupomFiscalID_CONDPGTO.AsInteger <= 0 then
    fDmCupomFiscal.cdsCupomFiscalID_CONDPGTO.AsInteger := fDmCupomFiscal.cdsCupomParametrosID_CONDPGTO_PADRAO.AsInteger;

  Label14.Visible := (fDmCupomFiscal.cdsCupomParametrosUSA_QTD_PESSOA.AsString = 'S');
  DBEdit6.Visible := (fDmCupomFiscal.cdsCupomParametrosUSA_QTD_PESSOA.AsString = 'S');

  ComboVendedor.Visible := fDmCupomFiscal.cdsParametrosUSA_VENDEDOR.AsString = 'S';
  Label11.Visible       := fDmCupomFiscal.cdsParametrosUSA_VENDEDOR.AsString = 'S';

  if (ComboVendedor.Visible) and (vId_Vendedor > 0) and (fDmCupomFiscal.cdsCupomParametrosREPETE_VENDEDOR.AsString = 'S') then
  begin
    ComboVendedor.KeyValue := vId_Vendedor;
    ComboVendedorExit(Sender);
  end;
end;

procedure TfCupomFiscalPgto.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDmCupomFiscal.cdsCondPgto.IndexFieldNames := 'NOME';
end;

procedure TfCupomFiscalPgto.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDmCupomFiscal.cdsTipoCobranca.IndexFieldNames := 'NOME';
end;

procedure TfCupomFiscalPgto.RxDBLookupCombo2Change(Sender: TObject);
begin
  fDmCupomFiscal.cdsCupomFiscalTIPO_PGTO.AsString := fdmCupomFiscal.cdsCondPgtoTIPO.AsString;
  vQtdParcelas := fDmCupomFiscal.cdsCondPgtoQTD_PARCELA.AsInteger;
end;

procedure TfCupomFiscalPgto.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDmCupomFiscal.cdsPessoa.IndexFieldNames := 'NOME';
end;

procedure TfCupomFiscalPgto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    Edit1.Visible := not (Edit1.Visible);
  end;
  if (Key = Vk_F8) then
    btGavetaClick(Sender)
  else
  if (Key = Vk_F6) then
    SpeedButton1Click(Sender)
  else
  if (Key = Vk_F4) then
    SpeedButton2Click(Sender)
  else
  if (Key = Vk_F10) then
    btConfirmarClick(Sender);
end;

procedure TfCupomFiscalPgto.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F5) then
  begin
    fDmCupomFiscal.cdsTipoCobranca.Close;
    fDmCupomFiscal.cdsTipoCobranca.Open;
  end;
end;

procedure TfCupomFiscalPgto.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F5) then
    fDmCupomFiscal.prc_Abrir_CondPgto;
end;

procedure TfCupomFiscalPgto.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F5) then
  begin
    fDmCupomFiscal.cdsPessoa.Close;
    fDmCupomFiscal.cdsPessoa.Open;
  end;
end;

procedure TfCupomFiscalPgto.btConfirmarClick(Sender: TObject);
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vGravar_Aux: Boolean;
  vGeraNFCe: Boolean;
  vAux: Integer;
  vIdCupom: Integer;
  Flag: Boolean;
  vMSGAux: String;
begin
  if RxDBLookupCombo3.Value = '' then
  begin
    MessageDlg('*** Forma de pagamento obrigatória!', mtInformation, [mbOk], 0);
    RxDBLookupCombo3.SetFocus;
    exit;
  end;
  if trim(Edit1.Text) = '' then
  begin
    ShowMessage('Forma de pagamento da impressora não cadastrada!' + #13 +
                'Cod. forma = ' + fDmCupomFiscal.cdsCupomFiscalID_TIPOCOBRANCA.AsString);
    Exit;
  end;

  if (fDmCupomFiscal.cdsTipoCobrancaEXIGE_CLIENTE.AsString = 'S') and
     ((fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsString = '') or (fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger = 99999)) then
  begin
    MessageDlg('*** Esta forma de pagamento exige identificar o cliente!', mtInformation, [mbOk], 0);
    RzPageControl1.ActivePageIndex := 0;
    ceCodCliente.SetFocus;
    Exit;
  end;

  if (StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_RECEBIDO.AsFloat)) <= 0) then
  begin
    if (StrToFloat(DBEdit1.Text) > 0) then
      fDmCupomFiscal.cdsCupomFiscalVLR_RECEBIDO.AsString := DBEdit1.Text
    else
    begin
      MessageDlg('*** Valor recebido não informado!', mtInformation, [mbOk], 0);
      RzPageControl1.ActivePageIndex := 0;
      DBEdit1.SetFocus;
      exit;
    end;
  end;

  if ((fDmCupomFiscal.cdsCupomFiscalTIPO_PGTO.AsString = 'P') or
     (StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_RECEBIDO.AsFloat)) <= 0)) and
     (RxDBLookupCombo2.Text = '')  then
    Raise Exception.Create('Condição de pagamento obrigatória!');

  if (fDmCupomFiscal.cdsCupomFiscalTIPO_PGTO.AsString = 'V') and
     (fDmCupomFiscal.cdsTipoCobrancaCREDITO_LOJA.AsString = 'S') then
    Raise Exception.Create('Condição de pagamento não pode ser à vista para crédito!');

  if (fDmCupomFiscal.cdsCupomParametrosEXIGE_VENDEDOR.AsString = 'S') and (ComboVendedor.Text = '') then
  begin
    Raise Exception.Create('Nome do vendedor obrigatório!');
    rzPageControl1.ActivePageIndex := 0;
    ComboVendedor.SetFocus;
    Exit;
  end
  else
  if (ComboVendedor.Text <> '') and (fDmCupomFiscal.cdsCupomFiscalPERC_VENDEDOR.AsCurrency = 0) then
    ComboVendedorExit(Sender);

  if not vCpfOk then
  begin
    if MessageDlg('CPF ou CNPJ incorreto! Deseja corrigir?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      fDmCupomFiscal.cdsCupomFiscalCPF.Clear
    else
    begin
      DBEdit5.SetFocus;
      Exit;
    end;
  end;

  //******************
  if fDmCupomFiscal.cdsCupom_Parc.IsEmpty then
    prc_ControleParcelas(0,0,0);
  //***********************

  if (fDmCupomFiscal.cdsCupomFiscalTIPO_PGTO.AsString = 'P') then
  begin
    if not fncVerificaParc(fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency) then
      Raise Exception.Create('Soma das parcelas diferente do total da venda!');
  end;

  if fDmCupomFiscal.cdsPessoaCODIGO.AsInteger <> fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger then
    fDmCupomFiscal.cdsPessoa.Locate('CODIGO',fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);

  vExcluir_Cupom := False;

  //Alertar valores em atraso  12/05/2015
  if (fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger <> fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger) and
     (fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger > 0) then
  begin
    vGravar_Aux := fnc_Controle_Financeiro(fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat,
                                           fDmCupomFiscal.cdsPessoaVLR_LIMITE_CREDITO.AsFloat,
                                           fDmCupomFiscal.cdsParametrosUSA_LIMITE_CREDITO.AsString,
                                           fDmCupomFiscal.cdsParametrosSENHA_CREDITO.AsString,
                                           fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger);
    if not vGravar_Aux then
    begin
      vExcluir_Cupom := True;
      exit;
    end;
  end;
  //////////////////

  if (ComboVendedor.KeyValue > 0) and (fDmCupomFiscal.cdsCupomParametrosREPETE_VENDEDOR.AsString = 'S') then
    vID_Vendedor := ComboVendedor.KeyValue;

  fDmCupomFiscal.vNome_Consumidor := '';

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('CUPOMFISCAL');
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

    vGeraNFCe := False;
    if (fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S') and
       (fDmCupomFiscal.cdsTipoCobranca.Locate('ID',fDmCupomFiscal.cdsCupomFiscalID_TIPOCOBRANCA.AsInteger,[loCaseInsensitive])) then
      vGeraNFCe := cbNFCe.ItemIndex = 0;

    if (fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S') and
       ((fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger <= 0) or (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'COM') or
       (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'ORC') or (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString = 'PED')) then
    begin
      fDmCupomFiscal.qProximoCupom.Close;
      fDmCupomFiscal.qProximoCupom.ParamByName('FILIAL').AsInteger := fDmCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;

      if vGeraNFCe then
      begin
        vAux := dmDatabase.ProximaSequencia('NUM_NFC',vFilial);
        fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger := vAux;
        fDmCupomFiscal.cdsCupomFiscalSERIE.AsString := fDmCupomFiscal.cdsFilialSERIE_NFCE.AsString;
        fDmCupomFiscal.cdsCupomFiscalTIPO.AsString  := 'NFC';
      end
      else
      begin
        vAux := dmDatabase.ProximaSequencia('NUM_CNF',vFilial);
        fDmCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger := vAux;
        fDmCupomFiscal.cdsCupomFiscalSERIE.Clear;
        fDmCupomFiscal.cdsCupomFiscalTIPO.AsString := 'CNF';
      end;
    end;

  //---------------TROCAR IMPRESSORA
    if not vTeste then
      case fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsInteger of
        4: begin
             if fDmCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsCurrency > 0 then
               fDmParametros.ACBrECF1.SubtotalizaCupom((fDmCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsCurrency * -1),'')
             else
               fDmParametros.ACBrECF1.SubtotalizaCupom(0,'');
             fDmParametros.ACBrECF1.EfetuaPagamento( Edit1.Text,fDmCupomFiscal.cdsCupomFiscalVLR_RECEBIDO.AsCurrency,'',False,1);
             fDmParametros.ACBrECF1.TotalTroco;
           end;
      end;

    fDmCupomFiscal.vEncerrado := True;

    if fDmCupomFiscal.cdsCupomFiscal.State in [dsEdit,dsInsert] then
      fDmCupomFiscal.cdsCupomFiscal.Post;
    fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);

    if fDmCupomFiscal.cdsParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S' then
      fDmCupomFiscal.cdsCupomFiscal_ProdPrincipal.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao gravar cupom: ' + #13 + e.Message +
                             //#13 + #13 'Feche o programa e abra novamente!');
                             #13 + #13 + 'Favor confirmar novamente e verificar se o cupom foi enviado corretamente!');
    end;
  end;

  vIdCupom := fDmCupomFiscal.cdsCupomFiscalID.AsInteger;
  fdmCupomFiscal.cdsCupomFiscal.Close;
  fDmCupomFiscal.prcLocalizar(vIdCupom);

  //Atualiza os pedidos   02/05/2018
  if fDmCupomFiscal.cdsCupomParametrosUSA_COPIA_PEDIDO_CF.AsString = 'S' then
  begin
    fDmCupomFiscal.cdsCupom_Itens.First;
    while not fDmCupomFiscal.cdsCupom_Itens.Eof do
    begin
      if fDmCupomFiscal.cdsCupom_ItensID_PEDIDO.AsInteger > 0 then
      begin
        if not fDmCupomFiscal.mPedidoAux.Locate('ID_Pedido',fDmCupomFiscal.cdsCupom_ItensID_PEDIDO.AsInteger,[loCaseInsensitive]) then
        begin
          fDmCupomFiscal.mPedidoAux.Insert;
          fDmCupomFiscal.mPedidoAuxID_Pedido.AsInteger := fDmCupomFiscal.cdsCupom_ItensID_PEDIDO.AsInteger;
          fDmCupomFiscal.mPedidoAux.Post;
        end;
      end;
      fDmCupomFiscal.cdsCupom_Itens.Next;
    end;
    fDmCupomFiscal.mPedidoAux.First;
    while not fDmCupomFiscal.mPedidoAux.Eof do
    begin
      fDmCupomFiscal.sdsPrc_Atualiza_Status_Ped.Close;
      fDmCupomFiscal.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDmCupomFiscal.mPedidoAuxID_Pedido.AsInteger;
      fDmCupomFiscal.sdsPrc_Atualiza_Status_Ped.ExecSQL;
      fDmCupomFiscal.mPedidoAux.Delete;
    end;
  end;
  //**********************************

  FreeAndNil(sds);
  Close;
  //***********
end;

procedure TfCupomFiscalPgto.brCancelarClick(Sender: TObject);
begin
  fdmCupomFiscal.cdsCupom_Parc.EmptyDataSet;
  Close;
end;

procedure TfCupomFiscalPgto.DBEdit5Exit(Sender: TObject);
var
  vAux: String;
begin
  vAux := Monta_Numero(DBEdit5.Text,0);
  if Length(vAux) > 10 then
  begin
    if Length(vAux) > 11 then
      vAux := copy(vAux,1,2) + '.' + copy(vAux,3,3) + '.' + copy(vAux,6,3) + '/' + copy(vAux,9,4) + '-' + copy(vAux,13,2)
    else
      vAux := copy(vAux,1,3) + '.' + copy(vAux,4,3) + '.' + copy(vAux,7,3) + '-' + copy(vAux,10,2);
  end;
  
  if not ValidaCPF(DBEdit5.Text) then
    if not ValidaCNPJ(DBEdit5.Text) then
    begin
      ShowMessage('CPF/CNPJ inválido!');
      vCpfOk := False;
    end;
  if (vAux <> '') and (vAux <> '000.000.000-00') and (vAux <> '00.000.000/0000-00') then
  begin
    fDmCupomFiscal.cdsCupomFiscalCPF.AsString := vAux;
    fDmCupomFiscal.qCliente.ParamByName('C1').AsString := vAux;
    fDmCupomFiscal.qCliente.Open;
    if not fDmCupomFiscal.qCliente.IsEmpty then
    begin
      ceCodCliente.Text := fDmCupomFiscal.qClienteCODIGO.AsString;
      ceCodClienteExit(Sender);
    end;
    fDmCupomFiscal.qCliente.Close;
  end;
end;

procedure TfCupomFiscalPgto.btnGerarParcelasClick(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat)) <= 0 then
  begin
    fDmCupomFiscal.cdsCupom_Parc.First;
    while not fDmCupomFiscal.cdsCupom_Parc.Eof do
      fDmCupomFiscal.cdsCupom_Parc.Delete;
  end;
end;

procedure TfCupomFiscalPgto.btnParcelasClick(Sender: TObject);
var
  vVlrParcelado, vVlrTotal, vVlrProdutos: Real;
begin
  if RxDBLookupCombo3.Value = '' then
    Raise Exception.Create('Forma de pagamento obrigatória!');

  if ((fDmCupomFiscal.cdsCupomFiscalTIPO_PGTO.AsString = 'P') or
     (StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_RECEBIDO.AsFloat)) <= 0)) and
     (RxDBLookupCombo2.Text = '')  then
    Raise Exception.Create('Condição de pagamento obrigatória!');

  while not fDmCupomFiscal.cdsCupom_Parc.IsEmpty do
    fDmCupomFiscal.cdsCupom_Parc.Delete;

  fDmCupomFiscal.vVlrEntrada := 0;
  if fDmCupomFiscal.cdsCondPgtoENTRADA.AsString = 'S' then
  begin
    fDmCupomFiscal.cdsCupom_Parc.Insert;
    fDmCupomFiscal.cdsCupom_ParcID.AsInteger            := fDmCupomFiscal.cdsCupomFiscalID.AsInteger;
    fDmCupomFiscal.cdsCupom_ParcDTVENCIMENTO.AsDateTime := Date;
    fDmCupomFiscal.cdsCupom_ParcPARCELA.AsInteger       := 0;

    fDmCupomFiscal.qTipoDinheiro.Open;
    fDmCupomFiscal.cdsCupom_ParcID_TIPOCOBRANCA.AsInteger := fDmCupomFiscal.qTipoDinheiro.FieldByName('ID').AsInteger;
    fDmCupomFiscal.qTipoDinheiro.Close;

    fCupomFiscalParcela := TfCupomFiscalParcela.Create(Self);
    fCupomFiscalParcela.fDmCupomFiscal := fDmCupomFiscal;
    fCupomFiscalParcela.ShowModal;
  end;

  vVlrParcelado := fDmCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsCurrency - fDmCupomFiscal.vVlrEntrada;

  prc_ControleParcelas(vVlrParcelado,vPercJuros,vQtdParcelas);

  vVlrTotal    := fDmCupomFiscal.vVlrEntrada + fDmCupomFiscal.vSomaParcelas;
  vVlrProdutos := fDmCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsCurrency;

  prc_AtualizaPrecos(vVlrProdutos,vVlrTotal);
  fDmCupomFiscal.cdsCupomFiscalVLR_RECEBIDO.AsCurrency := fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency;

  RzPageControl1.ActivePageIndex := 1;
end;

procedure TfCupomFiscalPgto.SMDBGrid1DblClick(Sender: TObject);
var
  vRestante, vVlrOriginal: Real;
  vQtdParc: Word;
begin
  fCupomFiscalParcela := TfCupomFiscalParcela.Create(Self);
  fCupomFiscalParcela.fdmCupomFiscal := fDmCupomFiscal;
  vVlrOriginal        := fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency;
  fDmCupomFiscal.cdsCupom_Parc.Edit;
  fCupomFiscalParcela.ShowModal;

  if vVlrOriginal <> fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency then
  begin
    fDmCupomFiscal.cdsCupom_Parc.Edit;
    fDmCupomFiscal.cdsCupom_ParcEDITADA.AsString := 'S';
    fDmCupomFiscal.cdsCupom_Parc.Post;
    fDmCupomFiscal.vPgtoEditado := True;
  end;
  vRestante := fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency;
  vQtdParc  := fDmCupomFiscal.cdsCupom_Parc.RecordCount;

  if fDmCupomFiscal.cdsCupomParametrosRACHAR_CONTA.AsString = 'S' then
    prc_EditaTodas(vRestante,vQtdParc)
  else
    prc_EditaPrimeira(vRestante,vQtdParc);
end;

procedure TfCupomFiscalPgto.DBEdit4Exit(Sender: TObject);
begin
  if DBEdit4.Text <> '0,00' then
  begin
    fDmCupomFiscal.cdsCupomFiscalTIPO_DESCONTO.AsString := 'N';
    CurrencyEdit1.Value := (fDmCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsCurrency *
                           100 / fDmCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsCurrency);
    prc_Calcular_Geral(fDmCupomFiscal);
  end
  else
    CurrencyEdit1.Value := 0;
end;

procedure TfCupomFiscalPgto.ceFormaPgtoExit(Sender: TObject);
begin
  if ceFormaPgto.AsInteger > 0 then
  begin
    fDmCupomFiscal.cdsTipoCobranca.IndexFieldNames := 'ID';
    if fDmCupomFiscal.cdsTipoCobranca.FindKey([ceFormaPgto.AsInteger]) then
    begin
      RxDBLookupCombo3.KeyValue := ceFormaPgto.AsInteger;
      RxDBLookupCombo3Change(Sender);
    end
    else
    begin
      ShowMessage('Forma de pagamento não localizada!');
      ceFormaPgto.SelectAll;
    end;
  end;
end;

procedure TfCupomFiscalPgto.ceFormaPgtoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    ceFormaPgtoExit(Sender);
end;

procedure TfCupomFiscalPgto.RxDBLookupCombo3Change(Sender: TObject);
begin
  ceFormaPgto.AsInteger := RxDBLookupCombo3.KeyValue;

  vPercJuros := 0;
  Label17.Visible       := False;
  CurrencyEdit2.Visible := False;
  if fDmCupomFiscal.cdsTipoCobrancaPERC_JUROS.AsFloat > 0 then
  begin
    vPercJuros := fDmCupomFiscal.cdsTipoCobrancaPERC_JUROS.AsFloat;
    Label17.Visible       := True;
    CurrencyEdit2.Visible := True;
    CurrencyEdit2.Value   := vPercJuros;
  end;

  case AnsiIndexStr(fDmCupomFiscal.cdsTipoCobrancaGERAR_NFCE.AsString,['S','N','O']) of
    0: begin
         Label10.Visible := False;
         cbNFCe.ItemIndex := 0;
         cbNFCe.Visible  := False;
       end;
    1: begin
         Label10.Visible := False;
         cbNFCe.ItemIndex := 1;
         cbNFCe.Visible  := False;
       end;
    2: begin
         Label10.Visible := True;
         cbNFCe.Visible  := True;
         cbNFCe.ItemIndex := 1;
       end;
  end;

  if fDmCupomFiscal.cdsTipoCobrancaDINHEIRO.AsString = 'S' then
  begin
    fDmCupomFiscal.cdsCondPgto.IndexFieldNames := 'TIPO';
    fDmCupomFiscal.cdsCondPgto.FindKey(['V']);
    fDmCupomFiscal.cdsCupomFiscalID_CONDPGTO.AsInteger := fDmCupomFiscal.cdsCondPgtoID.AsInteger;
    RxDBLookupCombo2Change(Sender);
  end
  else
  if fDmCupomFiscal.cdsTipoCobrancaCREDITO_LOJA.AsString = 'S' then
    if not fDmCupomFiscal.cdsCupomParametrosID_CONDPGTO_PRAZO.IsNull then
    begin
      fDmCupomFiscal.cdsCondPgto.IndexFieldNames := 'ID';
      fDmCupomFiscal.cdsCondPgto.FindKey([fDmCupomFiscal.cdsCupomParametrosID_CONDPGTO_PRAZO.AsInteger]);
      if fDmCupomFiscal.cdsCupomFiscalID_CONDPGTO.AsInteger <= 0 then
        fDmCupomFiscal.cdsCupomFiscalID_CONDPGTO.AsInteger := fDmCupomFiscal.cdsCupomParametrosID_CONDPGTO_PRAZO.AsInteger;
      RxDBLookupCombo2Change(Sender);
    end;

  Edit1.Text := fDmCupomFiscal.cdsTipoCobrancaCOD_IMP_FISCAL.AsString;

  if fDmCupomFiscal.cdsTipoCobrancaDINHEIRO.AsString = 'S' then
    fDmCupomFiscal.cdsCupomFiscalVLR_RECEBIDO.AsFloat := 0
  else
  begin
    fDmCupomFiscal.cdsCupomFiscalVLR_RECEBIDO.AsString := FormatFloat('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency);
    DBEdit1.Text := DBEdit7.Text;
  end;


{  if cbNFCe.Visible then
    cbNFCe.SetFocus
  else
    if Panel6.Visible then
      DBEdit4.SetFocus
    else
    begin
      RzPageControl1.ActivePageIndex := 0;
      DBEdit1.SetFocus;
    end;
}
end;

procedure TfCupomFiscalPgto.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    fDmCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsCurrency := StrToFloat(DBEdit4.Text);
    DBEdit4Exit(Sender);
    dbEdit1.SetFocus;
  end;
end;

procedure TfCupomFiscalPgto.ComboVendedorEnter(Sender: TObject);
begin
  fDmCupomFiscal.cdsVendedor.IndexFieldNames := 'NOME';
end;

procedure TfCupomFiscalPgto.ComboVendedorExit(Sender: TObject);
begin
  if ComboVendedor.Text <> '' then
    fDmCupomFiscal.cdsCupomFiscalPERC_VENDEDOR.AsFloat := StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsVendedorPERC_COMISSAO_VEND.AsFloat))
  else
    fDmCupomFiscal.cdsCupomFiscalPERC_VENDEDOR.AsFloat := StrToFloat(FormatFloat('0.00',0));
  if fDmCupomFiscal.cdsCupomParametrosAUTENTICA_VENDEDOR.AsString = 'S' then
  begin
    frmSenha := TfrmSenha.Create(Self);
    frmSenha.Label2.Caption := 'Autenticar Vendedor';
    frmSenha.Label3.Caption := '';
    frmSenha.Label4.Caption := 'Informe a Senha';

    frmSenha.vSenha_Param := vSenhaVendedor;
    frmSenha.ShowModal;
    if vSenha <> vSenhaVendedor then
    begin
      ShowMessage('Senha inválida!');
      ComboVendedor.ClearValue;
      ComboVendedor.SetFocus;
    end;
  end;
end;

procedure TfCupomFiscalPgto.DBEdit4Enter(Sender: TObject);
begin
  vVlrDesconto_Ant := StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsFloat));
  DBEdit4.SelectAll;
end;

procedure TfCupomFiscalPgto.DBEdit1Enter(Sender: TObject);
begin
  if DBEdit1.Text = '0,00' then
    DBEdit1.Text := DBEdit7.Text;
  DBEdit1.SelectAll;
end;

procedure TfCupomFiscalPgto.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//var
//  vCodPessoa_Pos: Integer;
begin
  if (Key = Vk_F2) then
    btClienteClick(Sender)
  else
  if (Key = Vk_Return) then
    btConfirmar.SetFocus;
end;

procedure TfCupomFiscalPgto.ceCodClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    DbEdit8.SetFocus;
  end
  else
  if (Key = Vk_F2) then
  begin
    if not fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.isnull then
      vCodPessoa_Pos := fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger;
    btClienteClick(Sender);
  end;
end;

procedure TfCupomFiscalPgto.ceCodClienteExit(Sender: TObject);
begin
  if ceCodCliente.AsInteger = 0 then
  begin
    DBEdit8.Clear;
    fDmCupomFiscal.vClienteID := 0;
    Exit;
  end;

  if ceCodCliente.AsInteger > 0 then
  begin
    fDmCupomFiscal.cdsPessoa.Close;
    fDmCupomFiscal.cdsPessoa.IndexFieldNames := 'CODIGO';
    fDmCupomFiscal.cdsPessoa.Open;
    if fDmCupomFiscal.cdsPessoa.FindKey([ceCodCliente.AsInteger]) then
    begin
//////////////////////
      RxDBLookupCombo2.Visible := True;
      Label3.Visible           := True;
      btnParcelas.Visible      := True;
///////////////////////
      fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger  := ceCodCliente.AsInteger;
      if (fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger = fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger) and
         (trim(fDmCupomFiscal.vNome_Consumidor) <> '') then
        fDmCupomFiscal.cdsCupomFiscalCLIENTE_NOME.AsString := Trim(fDmCupomFiscal.vNome_Consumidor)
      else
      begin
        fDmCupomFiscal.cdsCupomFiscalCLIENTE_NOME.AsString := Trim(fDmCupomFiscal.cdsPessoaNOME.AsString);
        //20/01/2017
        fDmCupomFiscal.cdsCupomFiscalCLIENTE_FONE.AsString := '';
        if trim(fDmCupomFiscal.cdsPessoaTELEFONE1.AsString) <> '' then
        begin
          if trim(fDmCupomFiscal.cdsPessoaDDDFONE1.AsString) <> '' then
            fDmCupomFiscal.cdsCupomFiscalCLIENTE_FONE.AsString := fDmCupomFiscal.cdsPessoaDDDFONE1.AsString + '.';
          fDmCupomFiscal.cdsCupomFiscalCLIENTE_FONE.AsString := Trim(fDmCupomFiscal.cdsCupomFiscalCLIENTE_FONE.AsString +
                                                                fDmCupomFiscal.cdsPessoaTELEFONE1.AsString);
        end;
        //*****************
      end;
      if not(fDmCupomFiscal.cdsPessoaENDERECO.IsNull) and (trim(fDmCupomFiscal.cdsPessoaENDERECO.AsString) <> '') then
      begin
        fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsPessoaENDERECO.AsString + ', ' +
                                                                  fDmCupomFiscal.cdsPessoaNUM_END.AsString + ' - ' +
                                                                  fDmCupomFiscal.cdsPessoaCOMPLEMENTO_END.AsString + ' - ' +
                                                                  fDmCupomFiscal.cdsPessoaBAIRRO.AsString + ' - ' +
                                                                  fDmCupomFiscal.cdsPessoaCIDADE.AsString;
      end;
      if (fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger <> fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger) and
         (fDmCupomFiscal.cdsPessoaID_CONDPGTO.AsInteger > 0) then
      begin
        fDmCupomFiscal.cdsCupomFiscalID_CONDPGTO.AsInteger := fDmCupomFiscal.cdsPessoaID_CONDPGTO.AsInteger;
        fDmCupomFiscal.cdsCupomFiscalTIPO_PGTO.AsString    := fdmCupomFiscal.cdsCondPgtoTIPO.AsString;
        if not fDmCupomFiscal.vPgtoEditado then
          btnParcelasClick(Sender);
      end
      else
        RxDBLookupCombo2.SetFocus;
    end
    else
    begin
      ShowMessage('Cliente não localizado!');
      ceCodCliente.Text := '0';
      ceCodCliente.SelectAll;
    end;
  end;
end;

procedure TfCupomFiscalPgto.btClienteClick(Sender: TObject);
begin
  if not fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.isnull then
    vCodPessoa_Pos := fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger;
  frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
  frmSel_Pessoa.vTipo_Pessoa := 'C';
  frmSel_Pessoa.ShowModal;
  ceCodCliente.AsInteger := vCodPessoa_Pos;
  ceCodClienteExit(Sender);
  DBEdit8.SetFocus;

  fDmCupomFiscal.cdsCupomFiscalCLIENTE_NOME.AsString := Trim(fDmCupomFiscal.cdsPessoaNOME.AsString);
  if (not fDmCupomFiscal.cdsPessoaCNPJ_CPF.IsNull) and (fDmCupomFiscal.cdsPessoaCNPJ_CPF.AsString <> '000.000.000-00') then
  begin
    DBEdit5.Text                              := fDmCupomFiscal.cdsPessoaCNPJ_CPF.AsString;
    fDmCupomFiscal.cdsCupomFiscalCPF.AsString := fDmCupomFiscal.cdsPessoaCNPJ_CPF.AsString;
  end;
end;

procedure TfCupomFiscalPgto.btGavetaClick(Sender: TObject);
begin
  prc_AbreGaveta(1);
end;

procedure TfCupomFiscalPgto.SpeedButton1Click(Sender: TObject);
begin
  frmConsPessoa_Fin := TfrmConsPessoa_Fin.Create(self);
  frmConsPessoa_Fin.vID_Pessoa_Cons := fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger;
  frmConsPessoa_Fin.Label2.Caption  := fDmCupomFiscal.cdsCupomFiscalCLIENTE_NOME.AsString;
  frmConsPessoa_Fin.ShowModal;
end;

procedure TfCupomFiscalPgto.SpeedButton2Click(Sender: TObject);
var
  ffrmCupomDadosCli: TfrmCupomDadosCli;
begin
  if (ceCodCliente.AsInteger > 0) and (ceCodCliente.AsInteger <> fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger) then
    MessageDlg('*** Consumidor já identificado no cadastro!', mtInformation, [mbOk], 0)
  else
  begin
    ffrmCupomDadosCli := TfrmCupomDadosCli.Create(Self);
    ffrmCupomDadosCli.fDmCupomFiscal := fDmCupomFiscal;
    ffrmCupomDadosCli.ShowModal;
    FreeAndNil(ffrmCupomDadosCli);
  end;
end;

procedure TfCupomFiscalPgto.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.Value > 0 then
  begin
    fDmCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsCurrency := fdmCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsCurrency *
                                                            CurrencyEdit1.Value / 100;
    fdmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency    := fdmCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsCurrency -
                                                            fdmCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsCurrency;
  end;
end;

procedure TfCupomFiscalPgto.ComboVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F5) then
  begin
    fDmCupomFiscal.cdsVendedor.Close;
    fDmCupomFiscal.cdsVendedor.Open;
  end;
  if Key = VK_RETURN then
    SelectNext(Sender as TWinControl, True, True);
end;

procedure TfCupomFiscalPgto.DBEdit9Exit(Sender: TObject);
begin
  fdmCupomFiscal.cdsCupomFiscalCLIENTE_OBS.AsString := Trim(fdmCupomFiscal.cdsCupomFiscalCLIENTE_OBS.AsString);
end;

function TfCupomFiscalPgto.fncVerificaParc(vTotal: Currency): Boolean;
var
  vTot: Currency;
begin
  vTot := 0;
  fDmCupomFiscal.cdsCupom_Parc.First;
  while not fDmCupomFiscal.cdsCupom_Parc.Eof do
  begin
    vTot := vTot + fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency;
    fDmCupomFiscal.cdsCupom_Parc.Next;
  end;
  Result := True;
  if FormatFloat('0.00',vTot) <> FormatFloat('0.00',vTotal) then
    Result := False;
end;

procedure TfCupomFiscalPgto.cbNFCeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    SelectNext(Sender as TWinControl, True, True);
end;

procedure TfCupomFiscalPgto.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    SelectNext(Sender as TWinControl, True, True);
end;

procedure TfCupomFiscalPgto.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    SelectNext(Sender as TWinControl, True, True);
end;

procedure TfCupomFiscalPgto.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    DbEdit5Exit(Sender);
//    SelectNext(Sender as TWinControl, True, True);}
end;

procedure TfCupomFiscalPgto.CurrencyEdit1Enter(Sender: TObject);
begin
  CurrencyEdit1.SelectAll;
end;

procedure TfCupomFiscalPgto.prc_EditaTodas(vRestante: Currency; vQtdParc: Word);
var
  vParcMexida: Word;
  vDiferenca, vSoma: Real;
begin
  vParcMexida := 0;

  fDmCupomFiscal.cdsCupom_Parc.First;
  while not fDmCupomFiscal.cdsCupom_Parc.Eof do
  begin
    if (fDmCupomFiscal.cdsCupom_ParcEDITADA.AsString = 'S') then
    begin
      vRestante := vRestante - fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency;
      Inc(vParcMexida);
    end
    else
    begin
      fDmCupomFiscal.cdsCupom_Parc.Edit;
      fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency := StrToFloat(FormatFloat('0.00',vRestante / (vQtdParc - vParcMexida)));
      fDmCupomFiscal.cdsCupom_Parc.Post;
    end;
    fDmCupomFiscal.cdsCupom_Parc.Next;
  end;

  vSoma      := 0;
  vDiferenca := 0;
  fDmCupomFiscal.cdsCupom_Parc.First;
  while not fDmCupomFiscal.cdsCupom_Parc.Eof do
  begin
    vSoma := vSoma + fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency;
    fDmCupomFiscal.cdsCupom_Parc.Next;
  end;

  vDiferenca := StrToFloat(FormatFloat('0.00',fdmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency - vSoma));
  if vDiferenca <> 0 then
  begin
    fDmCupomFiscal.cdsCupom_Parc.Edit;
    fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency := fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency + vDiferenca;
    fDmCupomFiscal.cdsCupom_Parc.Post;
  end;
end;

procedure TfCupomFiscalPgto.prc_EditaPrimeira(vRestante: Currency; vQtdParc: Word);
var
  vParcMexida: Word;
  vSoma, vDiferenca: Real;
begin
  vParcMexida := 0;

  fDmCupomFiscal.cdsCupom_Parc.First;
  while not fDmCupomFiscal.cdsCupom_Parc.Eof do
  begin
    if (fDmCupomFiscal.cdsCupom_ParcPARCELA.AsInteger = 0) then
    begin
      vRestante := vRestante - fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency;
      Inc(vParcMexida);
    end
    else
    if (fDmCupomFiscal.cdsCupom_ParcPARCELA.AsInteger = 1) and (fDmCupomFiscal.cdsCupom_ParcEDITADA.AsString = 'S') then
    begin
      vRestante := vRestante - fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency;
      Inc(vParcMexida);
    end
    else
    begin
      fDmCupomFiscal.cdsCupom_Parc.Edit;
      fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency := StrToFloat(FormatFloat('0.00',vRestante / (vQtdParc - vParcMexida)));
      fDmCupomFiscal.cdsCupom_Parc.Post;
    end;
    fDmCupomFiscal.cdsCupom_Parc.Next;
  end;

  vSoma      := 0;
  vDiferenca := 0;
  fDmCupomFiscal.cdsCupom_Parc.First;
  while not fDmCupomFiscal.cdsCupom_Parc.Eof do
  begin
    vSoma := vSoma + fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency;
    fDmCupomFiscal.cdsCupom_Parc.Next;
  end;

  vDiferenca := StrToFloat(FormatFloat('0.00',fdmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency - vSoma));
  if vDiferenca <> 0 then
  begin
    fDmCupomFiscal.cdsCupom_Parc.Edit;
    fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency := fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency + vDiferenca;
    fDmCupomFiscal.cdsCupom_Parc.Post;
  end;
end;

procedure TfCupomFiscalPgto.prc_AtualizaPrecos(vVlrProdutos, vVlrTotal: Currency);
begin
  fDmCupomFiscal.cdsCupom_Itens.First;
  while not fDmCupomFiscal.cdsCupom_Itens.Eof do
  begin
    fDmCupomFiscal.cdsProduto.Close;
    fDmCupomFiscal.sdsProduto.CommandText := fdmCupomFiscal.ctProduto + ' AND ID = ' + fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsString;
    fDmCupomFiscal.cdsProduto.Open;
    fDmCupomFiscal.cdsCupom_Itens.Edit;
    fDmCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsCurrency := StrToFloat(FormatFloat('0.00',(fDmCupomFiscal.cdsProdutoPRECO_VENDA.AsCurrency *
                                                                                           vVlrTotal / vVlrProdutos)));
    fDmCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsCurrency    := StrToFloat(FormatFloat('0.00',(fDmCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsCurrency *
                                                            fDmCupomFiscal.cdsCupom_ItensQTD.AsCurrency)));
    prc_Calculo_GeralItem(fDmCupomFiscal,fDmCupomFiscal.cdsCupom_ItensQTD.AsFloat,fDmCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat,
                                         fDmCupomFiscal.cdsCupom_ItensVLR_DESCONTO.AsFloat,fDmCupomFiscal.cdsCupom_ItensPERC_DESCONTO.AsFloat,
                                         fDmCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat,0,'S',0);
    fDmCupomFiscal.prc_Busca_IBPT;
    fDmCupomFiscal.cdsCupom_Itens.Post;
    fDmCupomFiscal.cdsCupom_Itens.Next;
  end;
end;

procedure TfCupomFiscalPgto.prc_ControleParcelas(vVlrParcelado, vVlrTxJuros: Real; vQtdParc: Word);
begin
  fDmCupomFiscal.cdsCupom_Parc.First;
  while not fDmCupomFiscal.cdsCupom_Parc.Eof do
  begin
  if fDmCupomFiscal.cdsCupom_ParcPARCELA.AsInteger = 0 then
    fDmCupomFiscal.cdsCupom_Parc.Next
  else
    fDmCupomFiscal.cdsCupom_Parc.Delete;
  end;
  Gerar_Parcelas(vVlrParcelado,vVlrTxJuros,vQtdParc);
  fDmCupomFiscal.vPgtoEditado := False;
end;

procedure TfCupomFiscalPgto.Panel7Enter(Sender: TObject);
begin
  if fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S' then
    if StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsFloat)) <>
       StrToFloat(FormatFloat('0.00',vVlrDesconto_Ant)) then
      prc_Calcular_Geral(fDmCupomFiscal);

  if fDmCupomFiscal.cdsCupomFiscal.State in [dsBrowse] then
    fDmCupomFiscal.cdsCupomFiscal.Edit;

  fDmCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency := fDmCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsCurrency -
                                                       fDmCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsCurrency;
  DBEdit1.Text := DBEdit7.Text;
end;

procedure TfCupomFiscalPgto.Panel4Exit(Sender: TObject);
begin
//  SpeedButton2.Visible := fDmCupomFiscal.cdsTipoCobrancaCREDITO_LOJA.AsString = 'S';
end;

procedure TfCupomFiscalPgto.ComboVendedorChange(Sender: TObject);
begin
  vSenhaVendedor := fDmCupomFiscal.cdsVendedorSENHA.AsString;
end;

function TfCupomFiscalPgto.fnc_CalulaJuros(vVlrEntrada, vVlrFinanciado, vPercJuros: Real; vParcelas: Word): Real;
begin
  Result := StrToFloat(FormatFloat('0.00',vVlrFinanciado /((1 - power((1 + vPercJuros / 100),
                      (-1 * vParcelas)))/(vPercJuros / 100)) * vParcelas));
  Result := Result + vVlrEntrada;
end;

end.
