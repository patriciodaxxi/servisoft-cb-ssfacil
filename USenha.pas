unit USenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmSenha = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    vControlaSenha: Boolean;
    vSenha_Param: String;
    vSenha_Param_Usuario: String;
  end;

var
  frmSenha: TfrmSenha;

implementation

uses uUtilPadrao, uUtilCliente;

{$R *.dfm}

procedure TfrmSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  vControlaSenha := False;
  Action := Cafree;
end;

procedure TfrmSenha.btnConfirmarClick(Sender: TObject);
begin
  vSenha := Edit1.Text;
  vSenha_Cliente := Edit1.Text;
  if (vControlaSenha) and (vSenha <> vSenha_Param) then
  begin
    if trim(vSenha_Param_Usuario) <> '' then
    begin
      if vSenha <> vSenha_Param_Usuario then
        MessageDlg('*** Senha incorreta!', mtInformation, [mbOk], 0);
    end
    else
      MessageDlg('*** Senha incorreta!', mtInformation, [mbOk], 0);
  end
  else
    Close;
end;

procedure TfrmSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F10) or (Key = 27) then
    btnCancelarClick(Sender);
end;

procedure TfrmSenha.btnCancelarClick(Sender: TObject);
begin
  vSenha         := 'z\';
  vSenha_Cliente := '';
  Close;
end;

procedure TfrmSenha.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    btnConfirmarClick(Sender);
end;

end.
