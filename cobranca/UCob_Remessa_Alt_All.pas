unit UCob_Remessa_Alt_All;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxDBComb, ExtCtrls, UDMCob_Eletronica, RxLookup,
  DBCtrls;

type
  TfrmCobAlteraCarteira = class(TForm)
    pnlAlteraCarteira: TPanel;
    lblCarteira: TLabel;
    btnConfirma: TBitBtn;
    btnCancela: TBitBtn;
    RxDBLookupCombo1: TRxDBLookupCombo;
    chkIntrucaoProtesto1: TCheckBox;
    procedure btnCancelaClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    fDMCob_Eletronica: TDMCob_Eletronica;
    { Public declarations }
  end;

var
  frmCobAlteraCarteira: TfrmCobAlteraCarteira;

implementation


{$R *.dfm}

procedure TfrmCobAlteraCarteira.btnCancelaClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCobAlteraCarteira.btnConfirmaClick(Sender: TObject);
var
  vGerar: Boolean;
  msaux: string;
begin
  if fDMCob_Eletronica.btnDesabilita = 1 then
  begin
    if (RxDBLookupCombo1.KeyValue <> '') and (RxDBLookupCombo1.KeyValue <> Null) then
      fDMCob_Eletronica.vID_Carteira := RxDBLookupCombo1.KeyValue;
    msaux := 'Carteira?'
  end
  else
  begin
    if chkIntrucaoProtesto1.Checked then
    begin
      fDMCob_Eletronica.vIntrucao_Protesto := 'S';
    end
    else
    begin
      fDMCob_Eletronica.vIntrucao_Protesto := 'N';
    end;
    msaux := 'Instrução de Protesto?';
  end;
  if MessageDlg('Confirmar alteração da ' + msaux, mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  Close;
end;

procedure TfrmCobAlteraCarteira.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCobAlteraCarteira.FormShow(Sender: TObject);
begin
  if fDMCob_Eletronica.btnDesabilita = 1 then
  begin
    chkIntrucaoProtesto1.Enabled := False;
    chkIntrucaoProtesto1.Visible := False;
  end
  else
  begin
    RxDBLookupCombo1.Enabled := False;
    RxDBLookupCombo1.Visible := False;
    lblCarteira.Visible := False;
  end;
end;

end.

