unit uPastaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  uDmPastaCarto, Grids, DBGrids, SMDBGrid, rsDBUtils;

type
  TfPastaC = class(TForm)
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
    fDmPasta: TDmPasta;
  public
    { Public declarations }
  end;

var
  fPastaC: TfPastaC;

implementation

uses uDmDatabase, uPasta;

{$R *.dfm}

procedure TfPastaC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfPastaC.BitBtn4Click(Sender: TObject);
begin
  fPasta := TfPasta.Create(Self);
  fPasta.fDmPasta := fDmPasta;
  fDmPasta.cdsPasta.Insert;
  fDmPasta.cdsPastaID.AsInteger := dmDatabase.ProximaSequencia('Pasta',0);
  fPasta.ShowModal;
end;

procedure TfPastaC.FormCreate(Sender: TObject);
begin
  if not Assigned(fDmPasta) then
    fDmPasta := TDmPasta.Create(Self);
end;

procedure TfPastaC.BitBtn1Click(Sender: TObject);
begin
  fDmPasta.cdsPasta.Close;
  fDmPasta.cdsPasta.Open;
end;

procedure TfPastaC.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmPasta);
  fDmPasta.cdsPasta.Open;
end;

procedure TfPastaC.SMDBGrid1DblClick(Sender: TObject);
begin
  if fDmPasta.cdsPasta.IsEmpty then
    Exit;

  fPasta := TfPasta.Create(Self);
  fPasta.fDmPasta := fDmPasta;
  fDmPasta.cdsPasta.Edit;
  fPasta.ShowModal;
end;

procedure TfPastaC.BitBtn5Click(Sender: TObject);
begin
  if not fdmPasta.cdsPasta.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      fDmPasta.cdsPasta.Delete;
      fDmPasta.cdsPasta.ApplyUpdates(0);
    end;
end;

end.
