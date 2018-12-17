unit UCadDuplicata_Pag_Sel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadDuplicata, Mask,
  StdCtrls, Buttons, RxLookup, DBCtrls, DB, RxDBComb, ToolEdit, RXDBCtrl, CurrEdit, NxCollection, RzPanel, uCadContas,
  uCadTipoCobranca;

type
  TfrmCadDuplicata_Pag_Sel = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label13: TLabel;
    DtPagamento: TDateEdit;
    gbxCheque: TRzGroupBox;
    Label21: TLabel;
    Label27: TLabel;
    DateEdit1: TDateEdit;
    ceNumCheque: TCurrencyEdit;
    Panel1: TPanel;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure ceNumChequeExit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure gbxChequeExit(Sender: TObject);
  private
    { Private declarations }
    ffrmCadContas: TfrmCadContas;
    ffrmCadTipoCobranca: TfrmCadTipoCobranca;
    vConfirmar: Boolean;

    function fnc_Erro: Boolean;
  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
    vTipo_ES: String;
  end;

var
  frmCadDuplicata_Pag_Sel: TfrmCadDuplicata_Pag_Sel;

implementation

uses rsDBUtils, uUtilPadrao, UDMUtil, DmdDatabase, UCadDuplicata;

{$R *.dfm}

procedure TfrmCadDuplicata_Pag_Sel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not vConfirmar then
  begin
    fDMCadDuplicata.vDtPgtoSel       := 0;
    fDMCadDuplicata.vID_ContaPgtoSel :=0;
  end;
  Action := Cafree;
end;

procedure TfrmCadDuplicata_Pag_Sel.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadDuplicata);
  vConfirmar := False;
  fDMCadDuplicata.mCheque.EmptyDataSet;
end;

procedure TfrmCadDuplicata_Pag_Sel.BitBtn1Click(Sender: TObject);
begin
  if DtPagamento.Date < 10 then
  begin
    MessageDlg('*** Data de pagamento não informada!', mtError, [mbOk], 0);
    exit;
  end;
  if (gbxCheque.Visible) and (ceNumCheque.AsInteger > 0) and (DateEdit1.Date < 10) then
  begin
    MessageDlg('*** Não foi informada a data do cheque!', mtError, [mbOk], 0);
    exit;
  end;

  vConfirmar := True;

  fDMCadDuplicata.vDtPgtoSel       := DtPagamento.Date;
  fDMCadDuplicata.vID_ContaPgtoSel := RxDBLookupCombo1.KeyValue;
  if RxDBLookupCombo2.Text <> '' then
    fDMCadDuplicata.vID_FormaPgto := RxDBLookupCombo2.KeyValue
  else
    fDMCadDuplicata.vID_FormaPgto := 0;
  fDMCadDuplicata.vNum_Cheque := 0;
  fDMCadDuplicata.vDtCheque   := 0;
  if (ceNumCheque.AsInteger > 0) and (gbxCheque.Visible) then
  begin
    fDMCadDuplicata.vNum_Cheque := ceNumCheque.AsInteger;
    fDMCadDuplicata.vDtCheque   := DateEdit1.Date;
  end;
  Close;
end;

function TfrmCadDuplicata_Pag_Sel.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if RxDBLookupCombo1.Text = '' then
    vMsgErro := vMsgErro + #13 + '*** Conta não informada!';
  if DtPagamento.Date < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data Pagamento não informada!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadDuplicata_Pag_Sel.BitBtn4Click(Sender: TObject);
begin
  fDMCadDuplicata.vID_ContaPgtoSel := 0;
  fDMCadDuplicata.vID_FormaPgto    := 0;
  fDMCadDuplicata.vDtPgtoSel       := 0;
  fDMCadDuplicata.vNum_Cheque      := 0;
  fDMCadDuplicata.vDtCheque        := 0;
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadDuplicata_Pag_Sel.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadContas := TfrmCadContas.Create(self);
  ffrmCadContas.ShowModal;

  FreeAndNil(ffrmCadContas);
  SpeedButton6Click(Sender);
end;

procedure TfrmCadDuplicata_Pag_Sel.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

procedure TfrmCadDuplicata_Pag_Sel.SpeedButton6Click(Sender: TObject);
begin
  fDMCadDuplicata.cdsContas.Close;
  fDMCadDuplicata.cdsContas.Open;
end;

procedure TfrmCadDuplicata_Pag_Sel.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadTipoCobranca := TfrmCadTipoCobranca.Create(self);
  ffrmCadTipoCobranca.ShowModal;

  FreeAndNil(ffrmCadTipoCobranca);
  SpeedButton3Click(Sender);
end;

procedure TfrmCadDuplicata_Pag_Sel.SpeedButton3Click(Sender: TObject);
begin
  fDMCadDuplicata.cdsTipoCobranca.Close;
  fDMCadDuplicata.cdsTipoCobranca.Open;
end;

procedure TfrmCadDuplicata_Pag_Sel.RxDBLookupCombo2Exit(Sender: TObject);
var
  vFlag: Boolean;
begin
  vFlag := False;
  if (RxDBLookupCombo2.Text <> '') and (fDMCadDuplicata.cdsTipoCobranca.Locate('ID',RxDBLookupCombo2.KeyValue,[loCaseInsensitive])) then
    vFlag := (fDMCadDuplicata.cdsTipoCobrancaCHEQUE.AsString = 'S');
  if (vFlag) and (RxDBLookupCombo1.Text <> '') and (fDMCadDuplicata.cdsContas.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive])) then
    vFlag := (fDMCadDuplicata.cdsContasTIPO_CONTA.AsString = 'B');
  if (vFlag) and (vTipo_ES <> 'S') then
    vFlag := False;
  gbxCheque.Visible := (vFlag);
end;

procedure TfrmCadDuplicata_Pag_Sel.ceNumChequeExit(Sender: TObject);
begin
  if (ceNumCheque.AsInteger > 10) and (DateEdit1.Date < 10) then
    DateEdit1.Date := DtPagamento.Date;
end;

procedure TfrmCadDuplicata_Pag_Sel.Panel1Exit(Sender: TObject);
begin
  fDMCadDuplicata.vID_Banco_Cheque := 0;
  if RxDBLookupCombo1.Text = '' then
    exit;
  if (fDMCadDuplicata.cdsContasID.AsInteger <> RxDBLookupCombo1.KeyValue) then
    fDMCadDuplicata.cdsContas.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);
  if (fDMCadDuplicata.cdsContasTIPO_CONTA.AsString = 'B') and (fDMCadDuplicata.cdsContasID_BANCO.AsInteger > 0) then
    fDMCadDuplicata.vID_Banco_Cheque := fDMCadDuplicata.cdsContasID_BANCO.AsInteger;
end;

procedure TfrmCadDuplicata_Pag_Sel.gbxChequeExit(Sender: TObject);
begin
  if (ceNumCheque.AsInteger <= 0) and not(fDMCadDuplicata.mCheque.IsEmpty) then
  begin
    fDMCadDuplicata.mCheque.EmptyDataSet;
    DateEdit1.Clear;
  end
  else
  if (ceNumCheque.AsInteger > 0) and (RxDBLookupCombo1.Text <> '') then
  begin
    if DateEdit1.Date < 10 then
      DateEdit1.Date := Date;

    if fDMCadDuplicata.mCheque.IsEmpty then
      fDMCadDuplicata.mCheque.Insert
    else
      fDMCadDuplicata.mCheque.Edit;
    fDMCadDuplicata.mChequeNum_Cheque.AsInteger := ceNumCheque.AsInteger;
    fDMCadDuplicata.mChequeVlr_Cheque.AsFloat   := 0;
    fDMCadDuplicata.mChequeID_Banco.AsInteger   := fDMCadDuplicata.vNum_Cheque;
    fDMCadDuplicata.mChequeID_Conta.AsInteger   := RxDBLookupCombo1.KeyValue;
    fDMCadDuplicata.mChequeDtBomPara.AsDateTime := DateEdit1.Date;
    if fDMCadDuplicata.cdsFilialID.AsInteger <> fDMCadDuplicata.cdsContasFILIAL.AsInteger then
      fDMCadDuplicata.cdsFilial.Locate('ID',fDMCadDuplicata.cdsContasFILIAL.AsInteger,[loCaseInsensitive]);
    fDMCadDuplicata.mChequeTitular.AsString     := fDMCadDuplicata.cdsFilialNOME.AsString;
    fDMCadDuplicata.mChequeEmitido_Por.AsString := '1';
    fDMCadDuplicata.mCheque.Post;
  end;
end;

end.
