unit uAcabamentoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  uDmAcabamento, Grids, DBGrids, SMDBGrid, rsDBUtils;

type
  TfAcabamentoC = class(TForm)
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
    fDmAcabamento: TDmAcabamento;
  public
    { Public declarations }
  end;

var
  fAcabamentoC: TfAcabamentoC;

implementation

uses uDmDatabase, uAcabamento;

{$R *.dfm}

procedure TfAcabamentoC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfAcabamentoC.BitBtn4Click(Sender: TObject);
begin
  fAcabamento := TfAcabamento.Create(Self);
  fAcabamento.fDmAcabamento := fDmAcabamento;
  fDmAcabamento.cdsAcabamento.Insert;
  fDmAcabamento.cdsAcabamentoID.AsInteger := dmDatabase.ProximaSequencia('ACABAMENTO',0);
  fAcabamento.ShowModal;
end;

procedure TfAcabamentoC.FormCreate(Sender: TObject);
begin
  if not Assigned(fDmAcabamento) then
    fDmAcabamento := TDmAcabamento.Create(Self);
end;

procedure TfAcabamentoC.BitBtn1Click(Sender: TObject);
begin
  fDmAcabamento.cdsAcabamento.Close;
  fDmAcabamento.cdsAcabamento.Open;
end;

procedure TfAcabamentoC.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmAcabamento);
  fDmAcabamento.cdsAcabamento.Open;
end;

procedure TfAcabamentoC.SMDBGrid1DblClick(Sender: TObject);
begin
  if fDmAcabamento.cdsAcabamento.IsEmpty then
    Exit;

  fAcabamento := TfAcabamento.Create(Self);
  fAcabamento.fDmAcabamento := fDmAcabamento;
  fDmAcabamento.cdsAcabamento.Edit;
  fAcabamento.ShowModal;
end;

procedure TfAcabamentoC.BitBtn5Click(Sender: TObject);
begin
  if not fdmAcabamento.cdsAcabamento.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      fDmAcabamento.cdsAcabamento.Delete;
      fDmAcabamento.cdsAcabamento.ApplyUpdates(0);
    end;
end;

end.
