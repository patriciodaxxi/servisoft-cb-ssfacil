unit uCor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uDmCor, Dialogs, StdCtrls, Buttons,
  db, ExtCtrls, Mask, DBCtrls, rsDBUtils, RxDBComb;

type
  TfCor = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCor: TDmCor;
  end;

var
  fCor: TfCor;

implementation

{$R *.dfm}

procedure TfCor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfCor.BitBtn1Click(Sender: TObject);
begin
  fDmCor.cdsCor.Post;
  fDmCor.cdsCor.ApplyUpdates(0);
  Close;
end;

procedure TfCor.BitBtn2Click(Sender: TObject);
begin
  fDmCor.cdsCor.Cancel;
  Close;
end;

procedure TfCor.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCor);
end;

procedure TfCor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmCor.cdsCor.State in [dsEdit,dsInsert] then
    BitBtn2Click(Sender);
end;

end.
