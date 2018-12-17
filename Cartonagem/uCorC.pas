unit uCorC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, uDmCor,
  uDmAcabamento, Grids, DBGrids, SMDBGrid, rsDBUtils;

type
  TfCorC = class(TForm)
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    fDmCor: TDmCor;
  public
    { Public declarations }
  end;

var
  fCorC: TfCorC;

implementation

uses uDmDatabase, uCor;

{$R *.dfm}

procedure TfCorC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfCorC.BitBtn4Click(Sender: TObject);
begin
  fCor := TfCor.Create(Self);
  fCor.fDmCor := fDmCor;
  fDmCor.cdsCor.Insert;
  fDmCor.cdsCorID.AsInteger := dmDatabase.ProximaSequencia('Cor',0);
  fCor.ShowModal;
end;

procedure TfCorC.FormCreate(Sender: TObject);
begin
  if not Assigned(fDmCor) then
    fDmCor := TDmCor.Create(Self);
end;

procedure TfCorC.BitBtn1Click(Sender: TObject);
begin
  fDmCor.cdsCor.Close;
  fDmCor.cdsCor.Open;
end;

procedure TfCorC.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCor);
  fDmCor.cdsCor.Open;
end;

procedure TfCorC.SMDBGrid1DblClick(Sender: TObject);
begin
  if fDmCor.cdsCor.IsEmpty then
    Exit;

  fCor := TfCor.Create(Self);
  fCor.fDmCor := fDmCor;
  fDmCor.cdsCor.Edit;
  fCor.ShowModal;
end;

procedure TfCorC.BitBtn5Click(Sender: TObject);
begin
  if not fdmCor.cdsCor.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      fDmCor.cdsCor.Delete;
      fDmCor.cdsCor.ApplyUpdates(0);
    end;
end;

end.
