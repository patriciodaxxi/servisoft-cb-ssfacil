unit uGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uDmGrupo, Dialogs, StdCtrls, Buttons,
  db, ExtCtrls, Mask, DBCtrls, rsDBUtils, RxDBComb;

type
  TfGrupo = class(TForm)
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
    fDmGrupo: TDmGrupo;
  end;

var
  fGrupo: TfGrupo;

implementation

{$R *.dfm}

procedure TfGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfGrupo.BitBtn1Click(Sender: TObject);
begin
  fDmGrupo.cdsGrupo.Post;
  fDmGrupo.cdsGrupo.ApplyUpdates(0);
  Close;
end;

procedure TfGrupo.BitBtn2Click(Sender: TObject);
begin
  fDmGrupo.cdsGrupo.Cancel;
  Close;
end;

procedure TfGrupo.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmGrupo);
end;

procedure TfGrupo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmGrupo.cdsGrupo.State in [dsEdit,dsInsert] then
    BitBtn2Click(Sender);
end;

end.
