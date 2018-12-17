unit UCadUnidade_Conv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadUnidade, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb;

type
  TfrmCadUnidade_Conv = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    SpeedButton5: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboBox1Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
    vGravacao_Ok : Boolean;
    
    function  fnc_Erro : Boolean;
  public
    { Public declarations }
    fDMCadUnidade : TDMCadUnidade;

  end;

var
  frmCadUnidade_Conv: TfrmCadUnidade_Conv;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadUnidade_Conv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadUnidade.cdsUnidade_Conv.State in [dsEdit,dsInsert] then
    fDMCadUnidade.cdsUnidade_Conv.Cancel;
  Action := Cafree;
end;

procedure TfrmCadUnidade_Conv.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadUnidade);
end;

procedure TfrmCadUnidade_Conv.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar : Boolean;
begin
  vGravacao_Ok := False;

  if fnc_Erro then
    exit;

  if fDMCadUnidade.cdsUnidade_Conv.State in [dsEdit] then
    vEditar := True
  else
    vEditar := False;

  vFlagErro := False;  

  try
    if (fDMCadUnidade.cdsUnidade_ConvTIPO_CONVERSOR.AsString = 'L') or (fDMCadUnidade.cdsUnidade_ConvTIPO_CONVERSOR.AsString = 'B') then
      fDMCadUnidade.cdsUnidade_ConvQTD.AsFloat := 0;
    fDMCadUnidade.cdsUnidade_Conv.Post;
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
  begin
    if vEditar then
      Close
    else
    begin
      fDMCadUnidade.prc_Inserir_Itens;
      RxDBLookupCombo3.SetFocus;
    end;
  end;
end;

function TfrmCadUnidade_Conv.fnc_Erro: Boolean;
var
  vMsgErro : String;
begin
  Result := True;
  vMsgErro := '';
  if (trim(fDMCadUnidade.cdsUnidade_ConvTIPO_CONVERSOR.AsString) = '') or (fDMCadUnidade.cdsUnidade_ConvTIPO_CONVERSOR.IsNull) then
    vMsgErro := vMsgErro + #13 + '*** Tipo da conversão não informada!';
  if (trim(fDMCadUnidade.cdsUnidade_ConvUNIDADE_CONV.AsString) = '') and (fDMCadUnidade.cdsUnidade_ConvTIPO_CONVERSOR.AsString = 'C') then
    vMsgErro := vMsgErro + #13 + '*** Unidade de conversão não informada!';

  if (fDMCadUnidade.cdsUnidade_ConvTIPO_CONVERSOR.AsString <> 'L') and (fDMCadUnidade.cdsUnidade_ConvTIPO_CONVERSOR.AsString <> 'B') then
  begin
    if StrToFloat(FormatFloat('0.0000',fDMCadUnidade.cdsUnidade_ConvQTD.AsFloat)) <= 0 then
      vMsgErro := vMsgErro + #13 + '*** Quantidade de conversão não informada!';
  end;
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadUnidade_Conv.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadUnidade_Conv.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

procedure TfrmCadUnidade_Conv.RxDBComboBox1Change(Sender: TObject);
begin
  Label1.Visible  := (RxDBComboBox1.ItemIndex > 1);
  DBEdit2.Visible := (RxDBComboBox1.ItemIndex > 1);
end;

procedure TfrmCadUnidade_Conv.SpeedButton5Click(Sender: TObject);
begin
  fDMCadUnidade.cdsUnidade2.Close;
  fDMCadUnidade.cdsUnidade2.Open;
end;

end.
