unit USel_OP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  SMDBGrid, UDMCadOP;

type
  TfrmSel_OP = class(TForm)
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadOP: TDMCadOP;

    vID_Produto_OP: Integer;
  end;

var
  frmSel_OP: TfrmSel_OP;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmSel_OP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_OP.SMDBGrid1DblClick(Sender: TObject);
begin
  if not fDMCadOP.cdsSel_OP.IsEmpty then
  begin
    fDMCadOP.vNum_OP  := fDMCadOP.cdsSel_OPNUM_OP.AsInteger;
    fDMCadOP.vItem_OP := fDMCadOP.cdsSel_OPITEM.AsInteger;
    fDMCadOP.vQtd_OP  := fDMCadOP.cdsSel_OPQTD_APRODUZIR.AsInteger;
    fDMCadOP.vQtd_OP_Prod := fDMCadOP.cdsSel_OPQTD_PRODUZIDO.AsInteger;
    fDMCadOP.vQtd_Saldo   := fDMCadOP.cdsSel_OPSALDO.AsInteger;
    fDMCadOP.vID_OP       := fDMCadOP.cdsSel_OPID.AsInteger;
    Close;
  end;
end;

procedure TfrmSel_OP.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and not(fDMCadOP.cdsSel_OP.IsEmpty) then
  begin
    fDMCadOP.vNum_OP  := fDMCadOP.cdsSel_OPNUM_OP.AsInteger;
    fDMCadOP.vItem_OP := fDMCadOP.cdsSel_OPITEM.AsInteger;
    fDMCadOP.vQtd_OP  := fDMCadOP.cdsSel_OPQTD_APRODUZIR.AsInteger;
    fDMCadOP.vID_OP   := fDMCadOP.cdsSel_OPID.AsInteger;
    fDMCadOP.vQtd_OP_Prod := fDMCadOP.cdsSel_OPQTD_PRODUZIDO.AsInteger;
    fDMCadOP.vQtd_Saldo   := fDMCadOP.cdsSel_OPSALDO.AsInteger;
    Close;
  end;
end;

procedure TfrmSel_OP.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOP);
end;

end.
