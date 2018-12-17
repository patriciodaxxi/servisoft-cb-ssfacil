unit UCadFechamento_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadFechamento, ExtCtrls, Mask,
  StdCtrls, RxLookup, DBCtrls, Buttons, DB, RzCmboBx, RzDBCmbo, RxDBComb, RzTabs;

type
  TfrmCadFechamento_Itens = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadFechamento: TDMCadFechamento;
  end;

var
  frmCadFechamento_Itens: TfrmCadFechamento_Itens;

implementation

uses rsDBUtils, uUtilPadrao, Math;

{$R *.dfm}

procedure TfrmCadFechamento_Itens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDMCadFechamento.cdsFechamento_Itens.State in [dsEdit,dsInsert] then
    fDMCadFechamento.cdsFechamento_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadFechamento_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadFechamento);
end;

procedure TfrmCadFechamento_Itens.BitBtn1Click(Sender: TObject);
begin
  fDMCadFechamento.vMsgErro := '';
  if fDMCadFechamento.cdsFechamento_ItensID_TIPOCOBRANCA.AsInteger <= 0 then
    fDMCadFechamento.vMsgErro := fDMCadFechamento.vMsgErro + #13 + '*** Forma de pagamento não informada!';
  if StrToFloat(FormatFloat('0.00',fDMCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsFloat)) <= 0 then
    fDMCadFechamento.vMsgErro := fDMCadFechamento.vMsgErro + #13 + '*** Valor da entrada não informada!';
  if trim(fDMCadFechamento.vMsgErro) <> '' then
  begin
    MessageDlg(fDMCadFechamento.vMsgErro, mtError, [mbOK], 0);
    exit;
  end;
  fDMCadFechamento.cdsFechamento_Itens.Post;
  if not(fDMCadFechamento.cdsFechamento.State in [dsEdit,dsInsert]) then
    fDMCadFechamento.cdsFechamento.Edit;
  fDMCadFechamento.cdsFechamentoVLR_ENTRADA.AsFloat := fDMCadFechamento.cdsFechamentoVLR_ENTRADA.AsFloat + fDMCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsFloat;
  fDMCadFechamento.cdsFechamentoVLR_SAIDA.AsFloat   := fDMCadFechamento.cdsFechamentoVLR_SAIDA.AsFloat + fDMCadFechamento.cdsFechamento_ItensVLR_SAIDA.AsFloat;
  fDMCadFechamento.cdsFechamentoVLR_SALDO.AsFloat   := fDMCadFechamento.cdsFechamentoVLR_ENTRADA.AsFloat - fDMCadFechamento.cdsFechamentoVLR_SAIDA.AsFloat;
  Close;
end;

procedure TfrmCadFechamento_Itens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
