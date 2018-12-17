unit URecebeXML_ConsItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, UDMRecebeXML;

type
  TfrmRecebeXML_ConsItens = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    dgCabecalho: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMRecebeXML: TDMRecebeXML;

  end;

var
  frmRecebeXML_ConsItens: TfrmRecebeXML_ConsItens;

implementation

uses rsDBUtils;


{$R *.dfm}

procedure TfrmRecebeXML_ConsItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmRecebeXML_ConsItens.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmRecebeXML_ConsItens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMRecebeXML);
end;

end.
