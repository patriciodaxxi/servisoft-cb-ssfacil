unit UCadDuplicata_Pag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadDuplicata, RzPanel, 
  StdCtrls, Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, UCadContas, CurrEdit, UCadTipoCobranca,
  NxCollection, Menus, dbXpress;

type
  TfrmCadDuplicata_Pag = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    DBEdit10: TDBEdit;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    cePagamento: TCurrencyEdit;
    ceJuros: TCurrencyEdit;
    Label2: TLabel;
    ceDespesas: TCurrencyEdit;
    ckCartorio: TCheckBox;
    Edit1: TEdit;
    DtPagamento: TDateEdit;
    Label6: TLabel;
    Label8: TLabel;
    ceDesconto: TCurrencyEdit;
    Label18: TLabel;
    DBEdit2: TDBEdit;
    Edit2: TEdit;
    Label19: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton3: TSpeedButton;
    gbxCheque: TRzGroupBox;
    Label21: TLabel;
    Label27: TLabel;
    DateEdit1: TDateEdit;
    ceNumCheque: TCurrencyEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    ceJuros_Calculado: TCurrencyEdit;
    Label24: TLabel;
    Label25: TLabel;
    ceTaxaBancaria: TCurrencyEdit;
    Label1: TLabel;
    ceMulta: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cePagamentoExit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cePagamentoKeyPress(Sender: TObject; var Key: Char);
    procedure ceDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure ceJurosKeyPress(Sender: TObject; var Key: Char);
    procedure ceDespesasKeyPress(Sender: TObject; var Key: Char);
    procedure cePagamentoEnter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure gbxChequeExit(Sender: TObject);
    procedure gbxChequeEnter(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure DtPagamentoExit(Sender: TObject);
    procedure ceDescontoExit(Sender: TObject);
    procedure ceJurosExit(Sender: TObject);
    procedure ceDespesasExit(Sender: TObject);
    procedure ceTaxaBancariaExit(Sender: TObject);
    procedure ceTaxaBancariaKeyPress(Sender: TObject; var Key: Char);
    procedure ceMultaExit(Sender: TObject);
  private
    { Private declarations }
    ffrmCadContas: TfrmCadContas;
    ffrmCadTipoCobranca: TfrmCadTipoCobranca;

    function fnc_Erro: Boolean;
    procedure prc_Calcular_Total;

  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
  end;

var
  frmCadDuplicata_Pag: TfrmCadDuplicata_Pag;

implementation

uses rsDBUtils, uUtilPadrao, UDMUtil, DmdDatabase;

{$R *.dfm}

procedure TfrmCadDuplicata_Pag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadDuplicata.cdsDuplicata.State in [dsEdit,dsInsert] then
    fDMCadDuplicata.cdsDuplicata.Cancel;
  Action := Cafree;
end;

procedure TfrmCadDuplicata_Pag.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);
  fDMCadDuplicata.mCheque.EmptyDataSet;
  if fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger > 0 then
    RxDBLookupCombo1.KeyValue := fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger;
  if (fDMCadDuplicata.cdsDuplicataID_VENDEDOR.AsInteger > 0) and (fDMCadDuplicata.cdsVendedor.Locate('CODIGO',fDMCadDuplicata.cdsDuplicataID_VENDEDOR.AsInteger,[loCaseInsensitive])) then
    Edit2.Text := fDMCadDuplicata.cdsVendedorNOME.AsString;
  fDMCadDuplicata.mCheque.EmptyDataSet;
  cePagamento.Value := fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat;
  prc_Calcular_Total;
  Label25.Visible        := (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E');
  ceTaxaBancaria.Visible := (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E');
  if (fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger <= 0) and (fDMCadDuplicata.cdsDuplicataID_CONTA_BOLETO.AsInteger > 0) then
  begin
    fDMCadDuplicata.cdsDuplicata.Edit;
    fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger := fDMCadDuplicata.cdsDuplicataID_CONTA_BOLETO.AsInteger;
  end;
  Label1.Visible  := (fDMCadDuplicata.qParametros_FinMOSTRAR_VLR_MULTA_DUP.AsString = 'S');
  ceMulta.Visible := (fDMCadDuplicata.qParametros_FinMOSTRAR_VLR_MULTA_DUP.AsString = 'S');
end;

procedure TfrmCadDuplicata_Pag.BitBtn1Click(Sender: TObject);
var
  ID: TTransactionDesc;
  vIDAux: Integer;
  vGravar_Fin: Boolean;
  vComDesconto: String;
begin
  if fnc_Erro then
    exit;
  if (StrToFloat(FormatFloat('0.00',cePagamento.Value)) < StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat))) and
     (StrToFloat(FormatFloat('0.00',ceDesconto.Value)) > 0) then
    if MessageDlg('Confirmar duplicata com desconto?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;

  ID.TransactionID  := 2;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    if not(fDMCadDuplicata.cdsDuplicata.State in [dsEdit,dsInsert]) then
      fDMCadDuplicata.cdsDuplicata.Edit;
    if fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger <> fDMCadDuplicata.cdsContasID.AsInteger then
      fDMCadDuplicata.cdsContas.Locate('ID',fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger,[loCaseInsensitive]);
    if fDMCadDuplicata.cdsContasID_BANCO.AsInteger > 0 then
      fDMCadDuplicata.cdsDuplicataID_BANCO.AsInteger := fDMCadDuplicata.cdsContasID_BANCO.AsInteger
    else                                              
      fDMCadDuplicata.cdsDuplicataID_BANCO.Clear;
    fDMCadDuplicata.cdsDuplicataDTULTPAGAMENTO.AsDateTime := DtPagamento.Date;
    fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat          := StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat + cePagamento.Value));
    fDMCadDuplicata.cdsDuplicataVLR_JUROSPAGOS.AsFloat    := StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_JUROSPAGOS.AsFloat + ceJuros.Value));
    fDMCadDuplicata.cdsDuplicataVLR_DESCONTO.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_DESCONTO.AsFloat + ceDesconto.Value));
    fDMCadDuplicata.cdsDuplicataVLR_DESPESAS.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_DESPESAS.AsFloat + ceDespesas.Value));
    fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat - cePagamento.Value - ceDesconto.Value));
    fDMCadDuplicata.cdsDuplicataVLR_TAXA_BANCARIA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_TAXA_BANCARIA.AsFloat + ceTaxaBancaria.Value));
    fDMCadDuplicata.cdsDuplicataVLR_MULTA.AsFloat         := StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_MULTA.AsFloat + ceMulta.Value));

    if ckCartorio.Checked then
      fDMCadDuplicata.cdsDuplicataPAGO_CARTORIO.AsString := 'S'
    else
      fDMCadDuplicata.cdsDuplicataPAGO_CARTORIO.AsString := 'N';
    fDMCadDuplicata.cdsDuplicata.Post;
    if RxDBLookupCombo1.Text <> '' then
      vIDAux := RxDBLookupCombo1.KeyValue
    else
      vIDAux := 0;
    fDMCadDuplicata.prc_Gravar_Dupicata_Hist('PAG',Edit1.Text,cePagamento.Value,ceJuros.Value,ceDesconto.Value,ceDespesas.Value,ceTaxaBancaria.Value,ceMulta.Value,vIDAux);

    //Foi incluida na versão .390
    if fDMCadDuplicata.mCheque.RecordCount <= 0 then
    begin
      vComDesconto := '';
      if ceDesconto.Value > 0 then
        vComDesconto := 'S';
      if cePagamento.Value > 0 then
        fDMCadDuplicata.prc_Gravar_Financeiro(cePagamento.Value,'P',vIDAux,vComDesconto);
      if ceJuros.Value > 0 then
        fDMCadDuplicata.prc_Gravar_Financeiro(ceJuros.Value,'J',vIDAux);
      if ceMulta.Value > 0 then
        fDMCadDuplicata.prc_Gravar_Financeiro(ceMulta.Value,'M',vIDAux);
      if ceDespesas.Value > 0 then
        fDMCadDuplicata.prc_Gravar_Financeiro(ceDespesas.Value,'D',vIDAux);
      if ceTaxaBancaria.Value > 0 then
        fDMCadDuplicata.prc_Gravar_Financeiro(ceTaxaBancaria.Value,'T',vIDAux);
    end;

    if fDMCadDuplicata.cdsDuplicata.State in [dsEdit,dsInsert] then
      fDMCadDuplicata.cdsDuplicata.Post;
    fDMCadDuplicata.cdsDuplicata.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;

  Close;
end;

function TfrmCadDuplicata_Pag.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if RxDBLookupCombo3.Text = '' then
    vMsgErro := vMsgErro + #13 + '*** Conta não informada!';
  //if DateEdit1.Date < 10 then
  //  vMsgErro := vMsgErro + #13 + '*** Data do pagamento não informada!';
  if (cePagamento.Value <= 0) and (ceDesconto.Value <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Valor do pagamento não informado!';
  if DtPagamento.Date < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data Pagamento não informada!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadDuplicata_Pag.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadDuplicata_Pag.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadContas := TfrmCadContas.Create(self);
  ffrmCadContas.ShowModal;

  FreeAndNil(ffrmCadContas);
  SpeedButton6Click(Sender);
end;

procedure TfrmCadDuplicata_Pag.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;


procedure TfrmCadDuplicata_Pag.cePagamentoExit(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.00',cePagamento.Value)) < StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat)) then
    ceDesconto.Value := StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat - cePagamento.Value))
  else
  if StrToFloat(FormatFloat('0.00',cePagamento.Value)) > StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat)) then
  begin
    ceJuros.Value     := StrToFloat(FormatFloat('0.00',cePagamento.Value - fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat));
    cePagamento.Value := StrToFloat(FormatFloat('0.00',cePagamento.Value - ceJuros.Value));
  end
  else
  if StrToFloat(FormatFloat('0.00',fDMCadDuplicata.qParametrosPERC_JUROS_PADRAO.AsFloat)) <= 0 then
    ceJuros.Value     := StrToFloat(FormatFloat('0.00',0))
  else
    ceJuros.Value     := StrToFloat(FormatFloat('0.00',ceJuros_Calculado.Value));

  prc_Calcular_Total;
end;

procedure TfrmCadDuplicata_Pag.SpeedButton6Click(Sender: TObject);
begin
  fDMCadDuplicata.cdsContas.Close;
  fDMCadDuplicata.cdsContas.Open;
end;

procedure TfrmCadDuplicata_Pag.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadTipoCobranca := TfrmCadTipoCobranca.Create(self);
  ffrmCadTipoCobranca.ShowModal;

  FreeAndNil(ffrmCadTipoCobranca);
  SpeedButton6Click(Sender);
end;

procedure TfrmCadDuplicata_Pag.SpeedButton3Click(Sender: TObject);
begin
  fDMCadDuplicata.cdsTipoCobranca.Close;
  fDMCadDuplicata.cdsTipoCobranca.Open;
end;

procedure TfrmCadDuplicata_Pag.cePagamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = '.' then
    key := ',';
end;

procedure TfrmCadDuplicata_Pag.ceDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = '.' then
    key := ',';
end;

procedure TfrmCadDuplicata_Pag.ceJurosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = '.' then
    key := ',';
end;

procedure TfrmCadDuplicata_Pag.ceDespesasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = '.' then
    key := ',';
end;

procedure TfrmCadDuplicata_Pag.cePagamentoEnter(Sender: TObject);
begin
  cePagamento.ReadOnly := not(fDMCadDuplicata.mCheque.IsEmpty);
end;

procedure TfrmCadDuplicata_Pag.RxDBLookupCombo1Exit(Sender: TObject);
var
  vFlag: Boolean;
begin
  vFlag := False;
  if fDMCadDuplicata.cdsDuplicata.State in [dsEdit] then
    fDMCadDuplicata.cdsDuplicataID_BANCO.AsInteger := 0;
  if (RxDBLookupCombo1.Text <> '') and (fDMCadDuplicata.cdsTipoCobranca.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive])) then
    vFlag := (fDMCadDuplicata.cdsTipoCobrancaCHEQUE.AsString = 'S');
  if (vFlag) and (RxDBLookupCombo3.Text <> '') and (fDMCadDuplicata.cdsContas.Locate('ID',RxDBLookupCombo3.KeyValue,[loCaseInsensitive])) then
    vFlag := (fDMCadDuplicata.cdsContasTIPO_CONTA.AsString = 'B');
  if (vFlag) and (fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString <> 'S') then
    vFlag := False;
  gbxCheque.Visible := (vFlag);
end;

procedure TfrmCadDuplicata_Pag.gbxChequeExit(Sender: TObject);
begin
  if (ceNumCheque.AsInteger <= 0) and not(fDMCadDuplicata.mCheque.IsEmpty) then
  begin
    fDMCadDuplicata.mCheque.EmptyDataSet;
    DateEdit1.Clear;
  end
  else
  if (ceNumCheque.AsInteger > 0) and (RxDBLookupCombo3.Text <> '') then
  begin
    if DateEdit1.Date < 10 then
      DateEdit1.Date := Date;

    if fDMCadDuplicata.mCheque.IsEmpty then
      fDMCadDuplicata.mCheque.Insert
    else
      fDMCadDuplicata.mCheque.Edit;
    fDMCadDuplicata.mChequeNum_Cheque.AsInteger := ceNumCheque.AsInteger;
    fDMCadDuplicata.mChequeVlr_Cheque.AsFloat   := cePagamento.Value;
    fDMCadDuplicata.mChequeID_Banco.AsInteger   := RxDBLookupCombo3.KeyValue;
    fDMCadDuplicata.mChequeID_Conta.AsInteger   := RxDBLookupCombo3.KeyValue;
    fDMCadDuplicata.mChequeDtBomPara.AsDateTime := DateEdit1.Date;
    fDMCadDuplicata.mChequeTitular.AsString     := fDMCadDuplicata.cdsFilialNOME.AsString;
    fDMCadDuplicata.mChequeEmitido_Por.AsString := '1';
    fDMCadDuplicata.mCheque.Post;

    Edit1.Text := 'PAGAMENTO COM CHEQUE Nº ' + fDMCadDuplicata.mChequeNum_Cheque.AsString;
  end;
end;

procedure TfrmCadDuplicata_Pag.gbxChequeEnter(Sender: TObject);
begin
  if RxDBLookupCombo3.Text = '' then
  begin
    MessageDlg('*** Conta/Banco não foi informado!', mtInformation, [mbOk], 0);
    RxDBLookupCombo3.SetFocus;
  end;
end;

procedure TfrmCadDuplicata_Pag.Panel1Exit(Sender: TObject);
begin
  if fDMCadDuplicata.cdsDuplicata.State in [dsEdit] then
  begin
    fDMCadDuplicata.cdsDuplicataID_BANCO.Clear;
    if (fDMCadDuplicata.cdsContasID.AsInteger <> fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger) then
      fDMCadDuplicata.cdsContas.Locate('ID',fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger,[loCaseInsensitive]);
    if (fDMCadDuplicata.cdsContasTIPO_CONTA.AsString = 'B') and (fDMCadDuplicata.cdsContasID_BANCO.AsInteger > 0) then
      fDMCadDuplicata.cdsDuplicataID_BANCO.AsInteger := fDMCadDuplicata.cdsContasID_BANCO.AsInteger;
  end;
end;

procedure TfrmCadDuplicata_Pag.DtPagamentoExit(Sender: TObject);
var
  vQtd_Dias: Integer;
  vVlr_Juros_Aux: Real;
begin
  vQtd_Dias := fDMCadDuplicata.fnc_Qtd_Dias(fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime,DtPagamento.date);
  if vQtd_Dias > 0 then
    vVlr_Juros_Aux := StrToFloat(FormatFloat('0.00',fDMCadDuplicata.fnc_Calcular_Juros(vQtd_Dias,fDMCadDuplicata.qParametrosPERC_JUROS_PADRAO.AsFloat,fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat)))
  else
    vVlr_Juros_Aux := StrToFloat(FormatFloat('0.00',0));
  ceJuros.Value           := vVlr_Juros_Aux;
  ceJuros_Calculado.Value := vVlr_Juros_Aux;
  ceMulta.Value           := 0;
  if vQtd_Dias > 0 then
    Label20.Caption := IntToStr(vQtd_Dias) + ' Dia(s) em atraso     ' + FormatFloat('0.00',fDMCadDuplicata.qParametrosPERC_JUROS_PADRAO.AsFloat) + '% de juros';
  Label20.Visible := (vQtd_Dias >  0);
  prc_Calcular_Total;
end;

procedure TfrmCadDuplicata_Pag.prc_Calcular_Total;
var
  vAux: Real;
begin
  //vAux            := cePagamento.Value + ceJuros.Value + ceDespesas.Value - ceDesconto.Value - ceTaxaBancaria.Value;
  vAux            := cePagamento.Value + ceJuros.Value + ceMulta.Value + ceDespesas.Value - ceTaxaBancaria.Value;
  Label24.Caption := FormatFloat('###,##0.00',vAux);
end;

procedure TfrmCadDuplicata_Pag.ceDescontoExit(Sender: TObject);
begin
  prc_Calcular_Total;
end;

procedure TfrmCadDuplicata_Pag.ceJurosExit(Sender: TObject);
begin
  prc_Calcular_Total;
end;

procedure TfrmCadDuplicata_Pag.ceDespesasExit(Sender: TObject);
begin
  prc_Calcular_Total;
end;

procedure TfrmCadDuplicata_Pag.ceTaxaBancariaExit(Sender: TObject);
begin
  prc_Calcular_Total;
end;

procedure TfrmCadDuplicata_Pag.ceTaxaBancariaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = '.' then
    key := ',';
end;

procedure TfrmCadDuplicata_Pag.ceMultaExit(Sender: TObject);
begin
  prc_Calcular_Total;
end;

end.

