unit UCadNotaFiscal_Canc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadNotaFiscal,
  StdCtrls, Buttons;

type
  TfrmCadNotaFiscal_Canc = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
  end;

var
  frmCadNotaFiscal_Canc: TfrmCadNotaFiscal_Canc;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Canc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Canc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
end;

procedure TfrmCadNotaFiscal_Canc.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar o procedimento?',mtWarning,[mbOK,mbNO],0) = mrNo then
    exit;

  fDMCadNotaFiscal.vMotivoCancelamento := '';
  Close;
end;

procedure TfrmCadNotaFiscal_Canc.BitBtn1Click(Sender: TObject);
begin
  if Length(Edit1.Text) < 15 then
  begin
    ShowMessage('Motivo deve conter mais de 15 caracteres!');
    exit;
  end;
  fDMCadNotaFiscal.vMotivoCancelamento := Edit1.Text;
  Close;
end;

end.
