unit UCadPessoa_Servico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadPessoa, ExtCtrls, StdCtrls,
  Mask, DBCtrls, RxLookup, Buttons, ToolEdit, CurrEdit, Grids, DBGrids, SMDBGrid, DB;

type
  TfrmCadPessoa_Servico = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    fDMCadPessoa: TDMCadPessoa;
  end;

var
  frmCadPessoa_Servico: TfrmCadPessoa_Servico;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadPessoa_Servico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPessoa_Servico.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPessoa);
end;

procedure TfrmCadPessoa_Servico.BitBtn1Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Serviço não informado', mtError, [mbOk], 0);
    exit;
  end;
  if CurrencyEdit1.Value <= 0 then
  begin
    MessageDlg('*** % do ISS não informado', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadPessoa.cdsPessoa_Servico.Locate('ID_SERVICO',RxDBLookupCombo1.KeyValue,([Locaseinsensitive])) then
  begin
    MessageDlg('*** Serviço já lançado', mtError, [mbOk], 0);
    exit;
  end;

  try
    fDMCadPessoa.prc_Gravar_Pessoa_Servico(RxDBLookupCombo1.KeyValue,CurrencyEdit1.Value);
    RxDBLookupCombo1.ClearValue;
    CurrencyEdit1.Clear;
    RxDBLookupCombo1.SetFocus;
  except
    on e: Exception do
      ShowMessage('*** Erro ao gravar o serviço no cliente: ' + #13 + e.Message);
  end;
end;

procedure TfrmCadPessoa_Servico.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o serviço selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPessoa.cdsPessoa_Servico.Delete;
  fDMCadPessoa.cdsPessoa_Servico.ApplyUpdates(0);
end;

end.
