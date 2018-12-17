unit UCadSetor_Proc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadSetor, RxLookup, StdCtrls, Mask, DBCtrls, Buttons,
  ExtCtrls;

type
  TfrmCadSetor_Proc = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadSetor: TDMCadSetor;
  end;

var
  frmCadSetor_Proc: TfrmCadSetor_Proc;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadSetor_Proc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMCadSetor.cdsProcesso.IndexFieldNames := 'ID';
  Action := Cafree;
end;

procedure TfrmCadSetor_Proc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadSetor);
  fDMCadSetor.cdsProcesso.IndexFieldNames := 'NOME';
end;

procedure TfrmCadSetor_Proc.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadSetor_Proc.BitBtn1Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Processo não informado!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadSetor.cdsSetor_ProcORDEM.AsInteger := fDMCadSetor.cdsSetor_ProcITEM.AsInteger;
  fDMCadSetor.cdsSetor_Proc.Post;
  Close;
end;

end.
