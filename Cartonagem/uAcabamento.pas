unit uAcabamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uDmAcabamento, Dialogs, StdCtrls, Buttons,
  db, ExtCtrls, Mask, DBCtrls, rsDBUtils, RxDBComb;

type
  TfAcabamento = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmAcabamento: TDmAcabamento;
  end;

var
  fAcabamento: TfAcabamento;

implementation

{$R *.dfm}

procedure TfAcabamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfAcabamento.BitBtn1Click(Sender: TObject);
begin
  fDmAcabamento.cdsAcabamento.Post;
  fDmAcabamento.cdsAcabamento.ApplyUpdates(0);
  Close;
end;

procedure TfAcabamento.BitBtn2Click(Sender: TObject);
begin
  fDmAcabamento.cdsAcabamento.Cancel;
  Close;
end;

procedure TfAcabamento.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmAcabamento);
end;

procedure TfAcabamento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmAcabamento.cdsAcabamento.State in [dsEdit,dsInsert] then
    BitBtn2Click(Sender);
end;

end.
