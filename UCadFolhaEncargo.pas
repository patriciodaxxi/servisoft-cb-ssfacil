unit UCadFolhaEncargo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, UDMCadparametros, Controls, Forms, StdCtrls, RxDBComb, Mask,
  DBCtrls, Buttons, ExtCtrls, db, Dialogs;

type
  TfrmCadFolhaEncargo = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    function  fnc_Erro: Boolean;
  public
    { Public declarations }
    fDMCadparametros: TDMCadparametros;
  end;

var
  frmCadFolhaEncargo: TfrmCadFolhaEncargo;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadFolhaEncargo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDmCadParametros.cdsFolhaEncargos.State in [dsEdit,dsInsert] then
    fDmCadParametros.cdsFolhaEncargos.Cancel;
  Action := Cafree;
end;

procedure TfrmCadFolhaEncargo.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCadParametros);
end;

procedure TfrmCadFolhaEncargo.BitBtn1Click(Sender: TObject);
var
  vFlagErro, vEditar, vGravacao_Ok: Boolean;
begin
  if fnc_Erro then
    Exit;

  if fDmCadParametros.cdsFolhaEncargos.State in [dsEdit] then
    vEditar := True
  else
    vEditar := False;                
  vFlagErro := False;

  try
    fDmCadParametros.cdsFolhaEncargos.Post;
    vGravacao_Ok := True;
  except
    on E: exception do
    begin
      vGravacao_Ok := False;
      vFlagErro    := True;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  if not vFlagErro then
    Close;
end;

function TfrmCadFolhaEncargo.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  //Verificação de erros para não deixar gravar o item
  Result := True;
  vMsgErro := '';
  if fDmCadParametros.cdsFolhaEncargosNOME.IsNull then
    vMsgErro := vMsgErro + #13 + '*** Nome do encargo não informado!';
  if fDmCadParametros.cdsFolhaEncargosVALOR_PERC.IsNull then
    vMsgErro := vMsgErro + #13 + '*** Percentual do encargo não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadFolhaEncargo.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  Close;
end;

end.
