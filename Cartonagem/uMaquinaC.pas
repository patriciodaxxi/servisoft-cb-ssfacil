unit uMaquinaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  uDmMaquina, Grids, DBGrids, SMDBGrid, rsDBUtils;

type
  TfMaquinaC = class(TForm)
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    fDmMaquina: TDmMaquina;
  public
    { Public declarations }
  end;

var
  fMaquinaC: TfMaquinaC;

implementation

uses uMaquina;

{$R *.dfm}

procedure TfMaquinaC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  if fDmMaquina.Owner.ClassName = Self.ClassName then
    FreeAndNil(fDmMaquina);
  Action := caFree;
end;

procedure TfMaquinaC.BitBtn4Click(Sender: TObject);
begin
  fMaquina := TfMaquina.Create(Self);
  fMaquina.fDmMaquina := fDmMaquina;
  fDmMaquina.cdsMaquina.Insert;
  fMaquina.ShowModal;
end;

procedure TfMaquinaC.FormCreate(Sender: TObject);
begin
  if not Assigned(fDmMaquina) then
    fDmMaquina := TDmMaquina.Create(Self);
end;

procedure TfMaquinaC.BitBtn1Click(Sender: TObject);
begin
  fDmMaquina.cdsMaquina.Close;
  fDmMaquina.cdsMaquina.Open;
end;

procedure TfMaquinaC.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmMaquina);
  fDmMaquina.cdsMaquina.Open;
  fDmMaquina.cdsMaquinaOper.Close;
end;

procedure TfMaquinaC.SMDBGrid1DblClick(Sender: TObject);
begin
  if fDmMaquina.cdsMaquina.IsEmpty then
    Exit;

  fMaquina := TfMaquina.Create(Self);
  fMaquina.fDmMaquina := fDmMaquina;
  fDmMaquina.cdsMaquina.Edit;
  fMaquina.ShowModal;
end;

procedure TfMaquinaC.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    fDmMaquina.cdsMaquina.Delete;
    fDmMaquina.cdsMaquina.ApplyUpdates(0);
  end;
end;

end.
