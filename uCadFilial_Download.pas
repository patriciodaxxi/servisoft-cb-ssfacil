unit uCadFilial_Download;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, ToolEdit, RxDBComb, UDMCadFilial, RxLookup;

type
  TfrmCadFilial_Download = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadFilial: TDMCadFilial;
  end;

var
  frmCadFilial_Download: TfrmCadFilial_Download;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadFilial_Download.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfrmCadFilial_Download.BitBtn2Click(Sender: TObject);
begin
  fDMCadFilial.cdsFilial_Download.Cancel;
  Close;
end;

procedure TfrmCadFilial_Download.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadFilial);
end;

procedure TfrmCadFilial_Download.BitBtn1Click(Sender: TObject);
var
  vAux: String;
begin
  fDmCadFilial.vMsgFilial := '';
  vAux := Monta_Numero(fDMCadFilial.cdsFilial_DownloadCNPJ_CPF.AsString,0);
  if trim(vAux) = '' then
    fDmCadFilial.vMsgFilial := fDmCadFilial.vMsgFilial + #13 + '*** CNPJ/CPF não informado!';
  if (fDMCadFilial.cdsFilial_DownloadPESSOA.AsString <> 'J') and (fDMCadFilial.cdsFilial_DownloadPESSOA.AsString <> 'F') then
    fDmCadFilial.vMsgFilial := fDmCadFilial.vMsgFilial + #13 + '*** Tipo não informado!';
  if trim(fDmCadFilial.vMsgFilial) <> '' then
  begin
    MessageDlg(fDmCadFilial.vMsgFilial, mtError, [mbOk], 0);
    exit;
  end;
  try
    fDmCadFilial.cdsFilial_Download.Post;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  Close;
end;

procedure TfrmCadFilial_Download.DBEdit2Exit(Sender: TObject);
var
  vAux: String;

begin
  vAux := Monta_Numero(DBEdit2.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  vAux := '';
  if (fDMCadFilial.cdsFilial_DownloadPESSOA.AsString = 'J') and not(ValidaCNPJ(DBEdit2.Text)) then
    vAux := 'CNPJ incorreto!'
  else
  if (fDMCadFilial.cdsFilial_DownloadPESSOA.AsString = 'F') and not(ValidaCPF(DBEdit2.Text)) then
    vAux := 'CPF incorreto!';
  if trim(vAux) <> '' then
  begin
    ShowMessage('CPF incorreto!');
    fDMCadFilial.cdsFilial_DownloadCNPJ_CPF.Clear;
    DBEdit2.SetFocus;
  end;
end;

procedure TfrmCadFilial_Download.DBEdit2Enter(Sender: TObject);
begin
  fdmCadFilial.cdsFilial_DownloadCNPJ_CPF.EditMask := '00.000.000/0000-00';
  if (fdmCadFilial.cdsFilial_DownloadPESSOA.AsString = 'F') or (RxDBComboBox1.ItemIndex = 1) then
    fdmCadFilial.cdsFilial_DownloadCNPJ_CPF.EditMask := '000.000.000-00';
end;

end.
