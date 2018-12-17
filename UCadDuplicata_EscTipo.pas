unit UCadDuplicata_EscTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadDuplicata, StdCtrls, NxCollection, ExtCtrls;

type
  TfrmCadDuplicata_EscTipo = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
  end;

var
  frmCadDuplicata_EscTipo: TfrmCadDuplicata_EscTipo;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadDuplicata_EscTipo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACtion := Cafree;
end;

procedure TfrmCadDuplicata_EscTipo.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);
end;

procedure TfrmCadDuplicata_EscTipo.btnCancelarClick(Sender: TObject);
begin
  fDMCadDuplicata.vTipo_RP := '';
  Close;
end;

procedure TfrmCadDuplicata_EscTipo.btnConfirmarClick(Sender: TObject);
begin
  if ComboBox1.ItemIndex < 0 then
  begin
    MessageDlg('*** Não foi infomado o tipo do registro!', mtError, [mbOk], 0);
    exit;
  end;
  case ComboBox1.ItemIndex of
    0: fDMCadDuplicata.vTipo_RP := 'R';
    1: fDMCadDuplicata.vTipo_RP := 'P';
  end;
  Close;
end;

procedure TfrmCadDuplicata_EscTipo.ComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (ComboBox1.ItemIndex >= 0) then
    btnConfirmarClick(Sender);
end;

end.
