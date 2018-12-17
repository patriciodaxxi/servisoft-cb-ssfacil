unit UCadProduto_Processo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, UCadUnidade;

type
  TfrmCadProduto_Processo = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label8: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    SpeedButton3: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    SpeedButton4: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    ffrmCadUnidade: TfrmCadUnidade;
    function fnc_Erro: Boolean;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
  end;

var
  frmCadProduto_Processo: TfrmCadProduto_Processo;

implementation

uses rsDBUtils, uUtilPadrao, UCadProcesso, UCadSetor, UCadPosicao;

{$R *.dfm}

procedure TfrmCadProduto_Processo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProdutoProcesso.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProdutoProcesso.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Processo.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  fDMCadProduto.prc_Abrir_Processo;
  Panel1.Visible           := (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString = 'C');
  Label6.Visible           := (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString = 'L');
  RxDBLookupCombo4.Visible := (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString = 'L');
  SpeedButton4.Visible     := (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString = 'L');
end;

procedure TfrmCadProduto_Processo.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vQtd: Real;
  vAux: String;
begin
  if (fDMCadProduto.cdsProdutoProcesso.State in [dsEdit,dsInsert]) then
    fDMCadProduto.cdsProdutoProcesso.Post;

  if not(fDMCadProduto.cdsProdutoProcesso.State in [dsEdit,dsInsert]) then
    fDMCadProduto.cdsProdutoProcesso.Edit;

  if fnc_Erro then
    exit;

  vFlagErro := False;

  try
    fDMCadProduto.cdsProcesso.Locate('ID',RxDBLookupCombo2.KeyValue,([Locaseinsensitive]));
    fDMCadProduto.cdsProdutoProcessoVLR_UNIT.AsFloat      := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProdutoProcessoVLR_UNIT.AsFloat));
    fDMCadProduto.cdsProdutoProcessoVLR_TOTAL.AsFloat     := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProdutoProcessoVLR_TOTAL.AsFloat));
    fDMCadProduto.cdsProdutoProcesso.Post;
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

function TfrmCadProduto_Processo.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProdutoProcessoID_PROCESSO.AsInteger < 1 then
    vMsgErro := vMsgErro + #13 + '*** Processo não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Processo.BitBtn4Click(Sender: TObject);
begin
  if fDMCadProduto.cdsProdutoProcesso.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      Exit;
  Close;
end;

procedure TfrmCadProduto_Processo.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
end;

procedure TfrmCadProduto_Processo.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadProduto.cdsProcesso.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto_Processo.SpeedButton1Click(Sender: TObject);
begin
  frmCadProcesso := TfrmCadProcesso.Create(self);
  frmCadProcesso.ShowModal;
  FreeAndNil(frmCadProcesso);

  fDMCadProduto.cdsProcesso.Close;
  fDMCadProduto.cdsProcesso.Open;
end;

procedure TfrmCadProduto_Processo.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadProduto.cdsSetor.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto_Processo.SpeedButton2Click(Sender: TObject);
begin
  frmCadSetor := TfrmCadSetor.Create(self);
  frmCadSetor.ShowModal;
  FreeAndNil(frmCadSetor);

  fDMCadProduto.cdsSetor.Close;
  fDMCadProduto.cdsSetor.Open;
end;

procedure TfrmCadProduto_Processo.SpeedButton3Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;
  FreeAndNil(ffrmCadUnidade);

  fDMCadProduto.cdsUnidade.Close;
  fDMCadProduto.cdsUnidade.Open;
end;

procedure TfrmCadProduto_Processo.DBEdit3Enter(Sender: TObject);
begin
  fDMCadProduto.cdsProdutoProcessoVLR_TOTAL.AsCurrency := fDMCadProduto.cdsProdutoProcessoVLR_UNIT.AsCurrency *
                                                          fDMCadProduto.cdsProdutoProcessoQTD.AsFloat;
end;

procedure TfrmCadProduto_Processo.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadProduto.cdsPosicao.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto_Processo.SpeedButton4Click(Sender: TObject);
begin
  frmCadPosicao := TfrmCadPosicao.Create(self);
  frmCadPosicao.ShowModal;
  FreeAndNil(frmCadPosicao);
  fDMCadProduto.cdsPosicao.Close;
  fDMCadProduto.cdsPosicao.Open;
end;

end.
