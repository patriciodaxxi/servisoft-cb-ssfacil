unit UCadCheque_Comp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, NxCollection, UDMCadCheque;

type
  TfrmCadCheque_Comp = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label2: TLabel;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCadCheque: TDmCadCheque;
  end;

var
  frmCadCheque_Comp: TfrmCadCheque_Comp;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadCheque_Comp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCheque_Comp.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCadCheque);
end;

procedure TfrmCadCheque_Comp.btnCancelarClick(Sender: TObject);
begin
  fDmCadCheque.vDtCompensado := 0;
  fDmCadCheque.vMotivo_Comp  := '';
  Close;
end;

procedure TfrmCadCheque_Comp.btnConfirmarClick(Sender: TObject);
begin
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data não informada!',mtError,[mbOk],0);
    exit;
  end;

  fDmCadCheque.vDtCompensado := DateEdit1.Date;
  fDmCadCheque.vMotivo_Comp  := Memo1.Text;
  Close;
end;

procedure TfrmCadCheque_Comp.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key = #13) or (Key = #10)) then
    Key := ' ';
end;

end.
