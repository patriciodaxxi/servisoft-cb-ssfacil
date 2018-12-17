unit UCadNotaFiscal_Obs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadNotaFiscal, Buttons, RxLookup,
  StdCtrls, UCadObs_Aux, DBCtrls, ExtCtrls, DB;

type
  TfrmCadNotaFiscal_Obs = class(TForm)
    Label23: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    SpeedButton7: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ffrmCadObs_Aux: TfrmCadObs_Aux;

  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
  end;

var
  frmCadNotaFiscal_Obs: TfrmCadNotaFiscal_Obs;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Obs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Obs.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
end;

procedure TfrmCadNotaFiscal_Obs.SpeedButton3Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsObs_Aux.Close;
  fDMCadNotaFiscal.cdsObs_Aux.Open;
end;

procedure TfrmCadNotaFiscal_Obs.SpeedButton7Click(Sender: TObject);
begin
  ffrmCadObs_Aux := TfrmCadObs_Aux.Create(self);
  ffrmCadObs_Aux.ShowModal;

  FreeAndNil(ffrmCadObs_Aux);

  SpeedButton3Click(Sender);
end;

procedure TfrmCadNotaFiscal_Obs.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo7.Text = '' then
    exit;
  Memo1.Lines.Clear;
  Memo1.Lines.Text := fDMCadNotaFiscal.cdsObs_AuxOBS.AsString;
  Memo1.SetFocus;
end;

procedure TfrmCadNotaFiscal_Obs.Memo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) or (Key = #10) then
    Key := ' ';
end;

procedure TfrmCadNotaFiscal_Obs.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar e voltar a tela da nota?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  Close;
end;

procedure TfrmCadNotaFiscal_Obs.BitBtn2Click(Sender: TObject);
begin
  if trim(Memo1.Lines.Text) = '' then
    exit;
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsBrowse] then
    fDMCadNotaFiscal.cdsNotaFiscal.Edit;
  fDMCadNotaFiscal.cdsNotaFiscalDADOS_ADICIONAIS.Value := fDMCadNotaFiscal.cdsNotaFiscalDADOS_ADICIONAIS.Value + '(' + Memo1.Lines.Text + ')';
  Close;
end;

procedure TfrmCadNotaFiscal_Obs.RxDBLookupCombo7KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    BitBtn1Click(Sender);
end;

procedure TfrmCadNotaFiscal_Obs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn3Click(Sender);
end;

end.
