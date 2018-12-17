unit uCadFilial_Email;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, ToolEdit, RxDBComb, UDMCadFilial, RxLookup;

type
  TfrmCadFilial_Email = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton4: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadFilial: TDMCadFilial;
  end;

var
  frmCadFilial_Email: TfrmCadFilial_Email;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadFilial_Email.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadFilial_Email.BitBtn2Click(Sender: TObject);
begin
  fDMCadFilial.cdsFilial_Email.Cancel;
  Close;
end;

procedure TfrmCadFilial_Email.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadFilial);
  fDMCadFilial.cdsConfig_Email.Close;
  fDMCadFilial.cdsConfig_Email.Open;
end;

procedure TfrmCadFilial_Email.BitBtn1Click(Sender: TObject);
begin
  fDmCadFilial.vMsgFilial := '';
  if (fDMCadFilial.cdsFilial_EmailTIPO_REG.AsInteger <= 0) or (fDMCadFilial.cdsFilial_EmailTIPO_REG.IsNull) then
    fDmCadFilial.vMsgFilial := fDmCadFilial.vMsgFilial + #13 + '*** Tipo não selecionado!';
  if (fDMCadFilial.cdsFilial_EmailID_CONFIG_EMAIL.AsInteger <= 0) or (fDMCadFilial.cdsFilial_EmailID_CONFIG_EMAIL.IsNull) then
    fDmCadFilial.vMsgFilial := fDmCadFilial.vMsgFilial + #13 + '*** Email não informado!';
  if trim(fDmCadFilial.vMsgFilial) <> '' then
  begin
    MessageDlg(fDmCadFilial.vMsgFilial, mtError, [mbOk], 0);
    exit;
  end;
  
  try
    fDmCadFilial.cdsFilial_Email.Post;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  Close;
end;

procedure TfrmCadFilial_Email.SpeedButton4Click(Sender: TObject);
begin
  fDMCadFilial.cdsConfig_Email.Close;
  fDMCadFilial.cdsConfig_Email.Open;
end;

end.
