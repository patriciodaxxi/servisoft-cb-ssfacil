unit UCadFeriado_Dig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, ExtCtrls, ToolEdit, RXDBCtrl, StdCtrls, RxDBComb,
  Mask, DBCtrls, UDMCadFeriado, DB;

type
  TfrmCadFeriado_Dig = class(TForm)
    Panel1: TPanel;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnExcluir: TNxButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label38: TLabel;
    DBEdit7: TDBEdit;
    DBEdit4: TDBEdit;
    RxDBComboBox2: TRxDBComboBox;
    DBDateEdit1: TDBDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Gravar_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Habilita;
  public
    { Public declarations }
    fDMCadFeriado: TDMCadFeriado;
  end;

var
  frmCadFeriado_Dig: TfrmCadFeriado_Dig;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadFeriado_Dig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadFeriado_Dig.prc_Gravar_Registro;
begin
  fDMCadFeriado.prc_Gravar;
  if fDMCadFeriado.cdsFeriado.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadFeriado.vMsgFeriado, mtError, [mbOk], 0);
    exit;
  end;
  Close;
end;

procedure TfrmCadFeriado_Dig.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
  if not(fDMCadFeriado.cdsFeriado.State in [dsEdit,dsInsert]) then
    Close;
end;

procedure TfrmCadFeriado_Dig.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadFeriado);
  if fDMCadFeriado.cdsFeriado.State in [dsInsert] then
  begin
    prc_Habilita;
    DBEdit7.SetFocus;
  end;
end;

procedure TfrmCadFeriado_Dig.prc_Habilita;
begin
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnExcluir.Enabled   := not(btnExcluir.Enabled);
  btnConfirmar.Enabled := not(btnExcluir.Enabled);
end;

procedure TfrmCadFeriado_Dig.btnAlterarClick(Sender: TObject);
begin
  if fDMCadFeriado.cdsFeriado.IsEmpty then
    exit;
  prc_Habilita;
  DBDateEdit1.ReadOnly := True;
  fDMCadFeriado.cdsFeriado.Edit;
  DBEdit7.SetFocus;
end;

procedure TfrmCadFeriado_Dig.btnCancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar alteração/inclusão da data?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadFeriado.cdsFeriado.CancelUpdates;
  Close;
end;

procedure TfrmCadFeriado_Dig.btnExcluirClick(Sender: TObject);
begin
  if fDMCadFeriado.cdsFeriado.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  try
    prc_Excluir_Registro;
    close;
  except
  end;
end;

procedure TfrmCadFeriado_Dig.prc_Excluir_Registro;
begin
  fDMCadFeriado.prc_Excluir;
end;

end.
