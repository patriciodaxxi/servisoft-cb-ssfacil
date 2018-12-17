unit uPasta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uDmPastaCarto, Dialogs, StdCtrls, Buttons, db,
  ExtCtrls, Mask, DBCtrls, rsDBUtils, RxDBComb;

type
  TfPasta = class(TForm)
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
    fDmPasta: TDmPasta;
  end;

var
  fPasta: TfPasta;

implementation

{$R *.dfm}

procedure TfPasta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfPasta.BitBtn1Click(Sender: TObject);
begin
  fDmPasta.cdsPasta.Post;
  fDmPasta.cdsPasta.ApplyUpdates(0);
  Close;
end;

procedure TfPasta.BitBtn2Click(Sender: TObject);
begin
  fDmPasta.cdsPasta.Cancel;
  Close;
end;

procedure TfPasta.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmPasta);
end;

procedure TfPasta.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmPasta.cdsPasta.State in [dsEdit,dsInsert] then
    BitBtn2Click(Sender);
end;

end.
