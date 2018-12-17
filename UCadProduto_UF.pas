unit UCadProduto_UF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, DBCtrls, Mask, RxLookup, db;

type
  TfrmCadProduto_UF = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
  private
    { Private declarations }

    function fnc_Erro: Boolean;

  public
    { Public declarations }
    fDMCadProduto : TDMCadProduto;

  end;

var
  frmCadProduto_UF: TfrmCadProduto_UF;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadProduto_UF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_UF.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_UF.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_UF.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  if fDMCadProduto.cdsProduto_UF.State in [dsEdit] then
    RxDBLookupCombo1.Enabled := False;
end;

procedure TfrmCadProduto_UF.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
begin
  if fnc_Erro then
    exit;
  vFlagErro := False;
  try
    fDMCadProduto.cdsProduto_UF.Post;
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

function TfrmCadProduto_UF.fnc_Erro: Boolean;
var
  vMsgErro : String;
begin
  Result   := True;
  vMsgErro := '';
  if trim(fDMCadProduto.cdsProduto_UFUF.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** UF não informada!';
  if fDMCadProduto.cdsProduto_UFPERC_ICMS.AsFloat <= 0 then
    vMsgErro := vMsgErro + #13 + '*** % ICMS não informado!';
  if fDMCadProduto.cdsProduto_UFPERC_ICMS_INTERNO.AsFloat <= 0 then
    vMsgErro := vMsgErro + #13 + '*** % ICMS interno não informado!';
  if StrToFloat(FormatFloat('0.00',fDMCadProduto.cdsProduto_UFPERC_REDUCAO_ST.AsFloat)) >= 100 then
    vMsgErro := vMsgErro + #13 + '*** % de Redução inválido!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_UF.BitBtn4Click(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_UF.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  Close;
end;

procedure TfrmCadProduto_UF.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

procedure TfrmCadProduto_UF.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    fDMCadProduto.cdsUF.Locate('UF',RxDBLookupCombo1.Text,([Locaseinsensitive]));
    if fDMCadProduto.cdsProduto_UF.State in [dsInsert] then
    begin
      fDMCadProduto.cdsProduto_UFPERC_ICMS.AsFloat         := fDMCadProduto.cdsUFPERC_ICMS.AsFloat;
      fDMCadProduto.cdsProduto_UFPERC_ICMS_INTERNO.AsFloat := fDMCadProduto.cdsUFPERC_ICMS_INTERNO.AsFloat;
    end;
  end;
end;

end.
