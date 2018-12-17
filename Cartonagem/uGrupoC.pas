unit uGrupoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, uDmGrupo,
  uDmAcabamento, Grids, DBGrids, SMDBGrid, rsDBUtils;

type
  TfGrupoC = class(TForm)
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
    fDmGrupo: TDmGrupo;
  public
    { Public declarations }
  end;

var
  fGrupoC: TfGrupoC;

implementation

uses uDmDatabase, uGrupo;

{$R *.dfm}

procedure TfGrupoC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfGrupoC.BitBtn4Click(Sender: TObject);
begin
  fGrupo := TfGrupo.Create(Self);
  fGrupo.fDmGrupo := fDmGrupo;
  fDmGrupo.cdsGrupo.Insert;
  fDmGrupo.cdsGrupoID.AsInteger := dmDatabase.ProximaSequencia('Grupo',0);
  fGrupo.ShowModal;
end;

procedure TfGrupoC.FormCreate(Sender: TObject);
begin
  if not Assigned(fDmGrupo) then
    fDmGrupo := TDmGrupo.Create(Self);
end;

procedure TfGrupoC.BitBtn1Click(Sender: TObject);
begin
  fDmGrupo.cdsGrupo.Close;
  fDmGrupo.cdsGrupo.Open;
end;

procedure TfGrupoC.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmGrupo);
  fDmGrupo.cdsGrupo.Open;
end;

procedure TfGrupoC.SMDBGrid1DblClick(Sender: TObject);
begin
  if fDmGrupo.cdsGrupo.IsEmpty then
    Exit;

  fGrupo := TfGrupo.Create(Self);
  fGrupo.fDmGrupo := fDmGrupo;
  fDmGrupo.cdsGrupo.Edit;
  fGrupo.ShowModal;
end;

procedure TfGrupoC.BitBtn5Click(Sender: TObject);
begin
  if not fdmGrupo.cdsGrupo.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      fDmGrupo.cdsGrupo.Delete;
      fDmGrupo.cdsGrupo.ApplyUpdates(0);
    end;
end;

end.
