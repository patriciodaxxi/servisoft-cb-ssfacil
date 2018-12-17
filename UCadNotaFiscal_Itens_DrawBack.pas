unit UCadNotaFiscal_Itens_DrawBack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RxLookup, ToolEdit, RXDBCtrl, DB, 
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, CurrEdit, Grids, DBGrids, SMDBGrid, UDMCadNotaFiscal;

type
  TfrmCadNotaFiscal_Itens_DrawBack = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadNotaFiscal : TDMCadNotaFiscal;

  end;

var
  frmCadNotaFiscal_Itens_DrawBack: TfrmCadNotaFiscal_Itens_DrawBack;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Itens_DrawBack.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.Cancel;
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Itens_DrawBack.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
end;

procedure TfrmCadNotaFiscal_Itens_DrawBack.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadNotaFiscal_Itens_DrawBack.BitBtn1Click(Sender: TObject);
var
  vMsgAux : String;
begin
  vMsgAux := '';
  if Trim(fDMCadNotaFiscal.cdsNotaFiscal_DrawBackNUM_REG_EXPORTACAO.AsString) = '' then
    vMsgAux := '*** Número do Registro de Exportação não informado';
  //if Trim(fDMCadNotaFiscal.cdsNotaFiscal_DrawBackNUM_CHAVE_ACESSO_NFE.AsString) = '' then
   // vMsgAux := '*** Chave NFe não informada';
  //if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_DrawBackQTD.AsFloat)) <= 0 then
  //  vMsgAux := '*** Quantidade não informada';
  if trim(vMsgAux) <> '' then
  begin
    MessageDlg(vMsgAux, mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.Post;
  Close;
end;

end.
