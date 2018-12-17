unit uRecebeXML_Duplicatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, CurrEdit, ToolEdit, Mask, DBCtrls,
  RXDBCtrl, UDMRecebeXML;

type
  TfrmRecebeXML_Duplicatas = class(TForm)
    pnlPrincipal: TPanel;
    pnlRodape: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    dbedtItem: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
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
    fDMRecebeXML.cdsParcelas.Post;
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
  if trim(fDMRecebeXML.cdsParcelasnDup.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Número Duplicata não informado!';
  if fDMRecebeXML.cdsParcelasdVenc.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data Duplicata não informado!';
  if fDMRecebeXML.cdsParcelasvDup.AsFloat = 0 then
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
  fDMRecebeXML.cdsParcelas.Cancel;
  Close;
end;

end.
