unit uProcessoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  uDmProcesso, Grids, DBGrids, SMDBGrid, rsDBUtils;

type
  TfProcessoC = class(TForm)
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
    fDmProcesso: TDmProcesso;
  public
    { Public declarations }
  end;

var
  fProcessoC: TfProcessoC;

implementation

uses uProcesso, udmDatabase;

{$R *.dfm}

procedure TfProcessoC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfProcessoC.BitBtn4Click(Sender: TObject);
begin
  if not fDmProcesso.cdsProcesso.Active then
    fdmProcesso.prc_Localizar(-1);
  fProcesso := TfProcesso.Create(Self);
  fProcesso.fDmProcesso := fDmProcesso;
  fDmProcesso.cdsProcesso.Insert;
  fDmProcesso.cdsProcessoID.AsInteger := dmDatabase.ProximaSequencia('PROCESSO',0);
  fProcesso.ShowModal;
  BitBtn1Click(Sender);
end;

procedure TfProcessoC.FormCreate(Sender: TObject);
begin
  if not Assigned(fDmProcesso) then
    fDmProcesso := TDmProcesso.Create(Self);
end;

procedure TfProcessoC.BitBtn1Click(Sender: TObject);
begin
  fDmProcesso.cdsProcessoCons.Close;
  fDmProcesso.cdsProcessoCons.Open;
end;

procedure TfProcessoC.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmProcesso);
  fDmProcesso.cdsProcessoCons.Open;
end;

procedure TfProcessoC.SMDBGrid1DblClick(Sender: TObject);
begin
  fDmProcesso.prc_Localizar(fDmProcesso.cdsProcessoConsID.AsInteger);
  fProcesso := TfProcesso.Create(Self);
  fProcesso.fDmProcesso := fDmProcesso;
  fDmProcesso.cdsProcesso.Edit;
  fProcesso.ShowModal;
  BitBtn1Click(Sender);
end;

procedure TfProcessoC.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    fDmProcesso.cdsProcesso.Delete;
    fDmProcesso.cdsProcesso.ApplyUpdates(0);
  end;
end;

end.
