unit uFacaSel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, RzTabs,
  ExtCtrls, RzPanel, RzDlgBtn, uDmFaca;

type
  TfFacaSel = class(TForm)
    RzPageControl1: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    RzTabSheet2: TRzTabSheet;
    RzTabSheet3: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid3: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid3DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmFaca: TDmFaca;
  end;

var
  fFacaSel: TfFacaSel;

implementation

{$R *.dfm}

procedure TfFacaSel.SMDBGrid1DblClick(Sender: TObject);
begin
  fDmFaca.cdsCartoFacaFACA_FD.AsInteger := fDmFaca.cdsFacaFDID.AsInteger;
  Close;
end;

procedure TfFacaSel.SMDBGrid2DblClick(Sender: TObject);
begin
  fDmFaca.cdsCartoFacaFACA_TP.AsInteger := fDmFaca.cdsFacaTPID.AsInteger;
  Close;
end;

procedure TfFacaSel.SMDBGrid3DblClick(Sender: TObject);
begin
//  fDmFaca.cdsCartoFacaFACA_SP.AsInteger := fDmFaca.cdsFacaSPID.AsInteger;
  Close;
end;

procedure TfFacaSel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
       