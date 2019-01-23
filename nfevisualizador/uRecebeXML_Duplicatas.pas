unit uRecebeXML_Duplicatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, CurrEdit, ToolEdit, Mask, DBCtrls,
  RXDBCtrl, UDMRecebeXML, RxLookup;

type
  TfrmRecebeXML_Duplicatas = class(TForm)
    pnlPrincipal: TPanel;
    pnlRodape: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    Label7: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label8: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    function fnc_Erro : Boolean;
    { Private declarations }
  public
    fDMRecebeXML : TDMRecebeXML;
    { Public declarations }
  end;

var
  frmRecebeXML_Duplicatas: TfrmRecebeXML_Duplicatas;

implementation


{$R *.dfm}

procedure TfrmRecebeXML_Duplicatas.btnConfirmarClick(Sender: TObject);
var
  vFlagErro: Boolean;
begin
  if fnc_Erro then
    exit;
  vFlagErro := False;
  try
    fDMRecebeXML.mParc.Post;
  except
    on E: exception do
    begin
      vFlagErro := True;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  if not vFlagErro then
    Close;
end;

function TfrmRecebeXML_Duplicatas.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMRecebeXML.mParcDtVencimento.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data Duplicata não informado!';
  if fDMRecebeXML.mParcVlrVencimento.AsFloat = 0 then
    vMsgErro := vMsgErro + #13 + '*** Valor Duplicata não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmRecebeXML_Duplicatas.btnCancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMRecebeXML.mParc.Cancel;
  Close;
end;

end.
