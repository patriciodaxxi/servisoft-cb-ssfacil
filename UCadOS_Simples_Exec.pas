unit UCadOS_Simples_Exec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, ExtCtrls,
  StdCtrls, RxLookup, Mask, DBCtrls, Buttons, DB, RXDBCtrl, ToolEdit, RzEdit, RzDBEdit;

type
  TfrmCadOS_Simples_Exec = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label10: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    rzHoraIni: TRzDBDateTimeEdit;
    rzHoraFim: TRzDBDateTimeEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
    vExecutando: Boolean;
  end;

var
  frmCadOS_Simples_Exec: TfrmCadOS_Simples_Exec;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadOS_Simples_Exec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDMCadOrdemServico.cdsOS_Exec.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOS_Exec.Cancel;
  Action := Cafree;
end;

procedure TfrmCadOS_Simples_Exec.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadOrdemServico);
end;

procedure TfrmCadOS_Simples_Exec.BitBtn1Click(Sender: TObject);
begin
  fDMCadOrdemServico.vMsgOS := '';
  if fDMCadOrdemServico.cdsOS_ExecID_TECNICO.IsNull then
    fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Técnico não selecionado!';
  if fDMCadOrdemServico.cdsOS_ExecDT_INICIO.IsNull then
    fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Data de início não selecionada!';
  if fDMCadOrdemServico.cdsOS_ExecHR_INICIO.IsNull then
    fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Hora de início não selecionada!';

  if trim(fDMCadOrdemServico.vMsgOS) <> '' then
  begin
    MessageDlg(fDMCadOrdemServico.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;
  try
    fDMCadOrdemServico.cdsOS_Exec.Post;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  Close;
end;

procedure TfrmCadOS_Simples_Exec.BitBtn2Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOS_Exec.Cancel;

  Close;
end;

procedure TfrmCadOS_Simples_Exec.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadOrdemServico.cdsFuncionario.IndexFieldNames := 'NOME';
end;

procedure TfrmCadOS_Simples_Exec.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F5) then
  begin
    fDMCadOrdemServico.cdsFuncionario.Close;
    fDMCadOrdemServico.cdsFuncionario.Open;
  end;
end;

end.
