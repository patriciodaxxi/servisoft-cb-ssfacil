unit uAcabPosicaoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  uDmAcabPosicao, Grids, DBGrids, SMDBGrid, rsDBUtils;

type
  TfAcabPosicaoC = class(TForm)
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    fDmAcabPosicao: TDmAcabPosicao;
  public
    { Public declarations }
  end;

var
  fAcabPosicaoC: TfAcabPosicaoC;

implementation

uses uAcabPosicao, uDmDatabase;

{$R *.dfm}

procedure TfAcabPosicaoC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfAcabPosicaoC.BitBtn4Click(Sender: TObject);
begin
  fAcabPosicao := TfAcabPosicao.Create(Self);
  fAcabPosicao.fDmAcabPosicao := fDmAcabPosicao;
  fDmAcabPosicao.cdsAcabPosicao.Insert;
  fDmAcabPosicao.cdsAcabPosicaoID.AsInteger := dmDatabase.ProximaSequencia('AcabPosicao',0);
  fAcabPosicao.ShowModal;
end;

procedure TfAcabPosicaoC.BitBtn1Click(Sender: TObject);
begin
  fDmAcabPosicao.cdsAcabPosicao.Close;
  fDmAcabPosicao.cdsAcabPosicao.Open;
end;

procedure TfAcabPosicaoC.FormShow(Sender: TObject);
begin
  if not Assigned(fDmAcabPosicao) then
    fDmAcabPosicao := TDmAcabPosicao.Create(Self);

  oDBUtils.SetDataSourceProperties(Self,fDmAcabPosicao);
  fDmAcabPosicao.cdsAcabPosicao.Open;
end;

procedure TfAcabPosicaoC.SMDBGrid1DblClick(Sender: TObject);
begin
  fAcabPosicao := TfAcabPosicao.Create(Self);
  fAcabPosicao.fDmAcabPosicao := fDmAcabPosicao;
  fDmAcabPosicao.cdsAcabPosicao.Edit;
  fAcabPosicao.ShowModal;
end;

procedure TfAcabPosicaoC.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    fDmAcabPosicao.cdsAcabPosicao.Delete;
    fDmAcabPosicao.cdsAcabPosicao.ApplyUpdates(0);
  end;
end;

end.
