//<23703256??180018375>952412125834:

unit UCadDuplicata_Cheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadDuplicata, Grids, 
  StdCtrls, Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, UCadContas, UCadTipoCobranca, CurrEdit,
  DBGrids, SMDBGrid;

type
  TfrmCadDuplicata_Cheque = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Edit1: TEdit;
    Edit2: TEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label4: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label13: TLabel;
    DtPagamento: TDateEdit;
    Panel4: TPanel;
    Label1: TLabel;
    cbxEmitidoPor: TComboBox;
    Panel5: TPanel;
    Label8: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    CurrencyEdit3: TCurrencyEdit;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel6: TPanel;
    Label10: TLabel;
    Edit3: TEdit;
    Label11: TLabel;
    Edit4: TEdit;
    Label12: TLabel;
    Edit5: TEdit;
    Label14: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure cbxEmitidoPorChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cbxEmitidoPorExit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ffrmCadContas: TfrmCadContas;
    ffrmCadTipoCobranca: TfrmCadTipoCobranca;
    vConfirmar : Boolean;

    procedure prc_Monta_Banco;
    function fnc_Erro: Boolean;
    
  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
  end;

var
  frmCadDuplicata_Cheque: TfrmCadDuplicata_Cheque;

implementation

uses rsDBUtils, uUtilPadrao, UDMUtil, DmdDatabase, UCadDuplicata;

{$R *.dfm}

procedure TfrmCadDuplicata_Cheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not vConfirmar then
  begin
    fDMCadDuplicata.vDtPgtoSel       := 0;
    fDMCadDuplicata.vID_ContaPgtoSel := 0;
  end;
  Action := Cafree;
end;

procedure TfrmCadDuplicata_Cheque.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadDuplicata);
  vConfirmar := False;
  if fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'S' then
  begin
    cbxEmitidoPor.Items.Add('POR MIM');
    cbxEmitidoPor.ItemIndex   := 2;
    RxDBLookupCombo3.KeyValue := fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger;
  end;
  CurrencyEdit3.Value := fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat;
  fDMCadDuplicata.mCheque.First;
  while not fDMCadDuplicata.mCheque.Eof do
  begin
    CurrencyEdit3.Value := StrToFloat(FormatFloat('0.00',CurrencyEdit3.Value - fDMCadDuplicata.mChequeVlr_Cheque.AsFloat));
    fDMCadDuplicata.mCheque.Next;
  end;

  RxDBLookupCombo2.KeyValue := fDMCadDuplicata.cdsDuplicataID_PESSOA.AsInteger;
  CurrencyEdit2.Value       := CurrencyEdit3.Value;
end;

procedure TfrmCadDuplicata_Cheque.BitBtn1Click(Sender: TObject);
var
  vMsgAux :String;
  vAux : Real;
begin
  vMsgAux := '';
  if cbxEmitidoPor.ItemIndex < 0 then
    vMsgAux := vMsgAux + #13 + '*** Emitido Por não informado!';
  if DtPagamento.Date < 10 then
    vMsgAux := vMsgAux + #13 + '*** Data "Bom Para" não informado!';
  if CurrencyEdit1.AsInteger <= 0 then
    vMsgAux := vMsgAux + #13 + '*** Nº do Cheque não informado!';
  if CurrencyEdit2.Value <= 0 then
    vMsgAux := vMsgAux + #13 + '*** Valor do Cheque não informado!';
  if trim(RxDBLookupCombo1.Text) = '' then
    vMsgAux := vMsgAux + #13 + '*** Banco não informado!';
  if trim(vMsgAux) <> '' then
  begin
    MessageDlg(vMsgAux, mtError, [mbOk], 0);
    exit;
  end;
  vConfirmar := True;

  fDMCadDuplicata.mCheque.Insert;
  fDMCadDuplicata.mChequeNum_Cheque.AsInteger := CurrencyEdit1.AsInteger;
  fDMCadDuplicata.mChequeID_Banco.AsInteger := RxDBLookupCombo1.KeyValue;
  if fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger > 0 then
    fDMCadDuplicata.mChequeID_Conta.AsInteger := fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger; 
  fDMCadDuplicata.mChequeVlr_Cheque.AsFloat := CurrencyEdit2.Value;
  fDMCadDuplicata.mChequeDtBomPara.AsDateTime  := DtPagamento.Date;
  fDMCadDuplicata.mChequeTitular.AsString      := Edit1.Text;
  fDMCadDuplicata.mChequeFone_Titular.AsString := Edit2.Text;
  if fDMCadDuplicata.cdsDuplicataID_PESSOA.AsInteger > 0 then
    fDMCadDuplicata.mChequeRecebido_De.AsInteger := fDMCadDuplicata.cdsDuplicataID_PESSOA.AsInteger;
  fDMCadDuplicata.mChequeNome_Recebido.AsString  := RxDBLookupCombo2.Text;
  fDMCadDuplicata.mChequeEmitido_Por.AsString := IntToStr(cbxEmitidoPor.ItemIndex + 2);
  fDMCadDuplicata.mChequeID_Cheque.AsInteger := 0;
  fDMCadDuplicata.mChequeAgencia.AsString    := Edit4.Text;
  fDMCadDuplicata.mChequeNumConta.AsString   := Edit5.Text;
  fDMCadDuplicata.mChequeCodCompensacao.AsInteger := CurrencyEdit4.AsInteger;
  fDMCadDuplicata.mCheque.Post;

  CurrencyEdit3.Value := CurrencyEdit3.Value - CurrencyEdit2.Value;
  CurrencyEdit2.Value := CurrencyEdit3.Value;

  cbxEmitidoPor.SetFocus;
  CurrencyEdit1.Clear;
  Edit1.Clear;
  Edit2.Clear;
end;

function TfrmCadDuplicata_Cheque.fnc_Erro: Boolean;
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

procedure TfrmCadDuplicata_Cheque.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    Edit1.Text := RxDBLookupCombo2.Text;
end;

procedure TfrmCadDuplicata_Cheque.cbxEmitidoPorChange(Sender: TObject);
begin
  //Panel5.Visible  := (cbxEmitidoPor.ItemIndex = 0);
  //Panel5.TabOrder := 1;
end;

procedure TfrmCadDuplicata_Cheque.BitBtn2Click(Sender: TObject);
begin
  if fDMCadDuplicata.mCheque.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o cheque?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  CurrencyEdit3.Value := StrToFloat(FormatFloat('0.00',CurrencyEdit3.Value + fDMCadDuplicata.mChequeVlr_Cheque.AsFloat));
  CurrencyEdit2.Value := CurrencyEdit3.Value;
  fDMCadDuplicata.mCheque.Delete;
end;

procedure TfrmCadDuplicata_Cheque.BitBtn3Click(Sender: TObject);
begin
  if fDMCadDuplicata.mCheque.IsEmpty then
    if MessageDlg('Não foi informado nenhum cheque.'+#13+'Deseja sair da tela?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  if not fDMCadDuplicata.mCheque.IsEmpty then
    if MessageDlg('Deseja finalizar o processos dos cheques?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  Close;
end;

procedure TfrmCadDuplicata_Cheque.cbxEmitidoPorExit(Sender: TObject);
begin
  if cbxEmitidoPor.ItemIndex = 0 then
  begin
    Edit1.Text := fDMCadDuplicata.cdsPessoaNOME.AsString;
    Edit2.Text := fDMCadDuplicata.cdsPessoaDDDFONE1.AsString + ' ' + fDMCadDuplicata.cdsPessoaTELEFONE1.AsString;
  end
  else
  begin
    Edit1.Clear;
    Edit2.Clear;
  end;
end;

procedure TfrmCadDuplicata_Cheque.Edit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = VK_RETURN) then
  begin
    if (Length(Edit3.Text) >= 2) and (Length(Edit3.Text) < 33) then
    begin
      MessageDlg('*** Erro na leitura!', mtError, [mbOk], 0);
      Edit3.SetFocus;
      Edit3.SelectAll;
    end
    else
    if (Length(Edit3.Text) >= 33) then
    begin
      prc_Monta_Banco;
      CurrencyEdit2.SetFocus;
    end;
  end;
end;

procedure TfrmCadDuplicata_Cheque.prc_Monta_Banco;
var
  vAux : String;
  vNumAux : Int64;
begin
  vAux := copy(Edit3.Text,2,3);
  if fDMCadDuplicata.cdsBanco.Locate('CODIGO',vAux,([Locaseinsensitive])) then
    RxDBLookupCombo1.KeyValue := fDMCadDuplicata.cdsBancoID.AsInteger
  else
    RxDBLookupCombo1.ClearValue;

  vNumAux := 0;
  Edit5.Text := Monta_Numero(copy(Edit3.Text,26,7),0);
  if trim(Edit5.Text) <> '' then
    vNumAux := StrToInt64(Edit5.Text);
  Edit5.Text := FormatFloat('0',vNumAux);
  Edit4.Text := copy(Edit3.Text,5,4);
  vAux := Monta_Numero(copy(Edit3.Text,11,3),0);
  if trim(vAux) <> '' then
    CurrencyEdit4.AsInteger := StrToInt(vAux)
  else
    CurrencyEdit4.AsInteger := 0;
  vAux := Monta_Numero(copy(Edit3.Text,14,6),0);
  CurrencyEdit1.AsInteger := StrToInt(vAux);
  
//<23703256??180018375>952412125834:
//123456789.123456789.123456789.1234
//<23703256??180018375>952412125834:
//123456789.123456789.123456789.1234
//<74814266<0180000785>000009540048
//123456789.123456789.123456789.123

end;

end.
