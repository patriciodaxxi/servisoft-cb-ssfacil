unit URelEtiqueta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadPedido;

type
  TfRelEtiqueta = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel3: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDBMemo1: TRLDBMemo;
    RLDraw4: TRLDraw;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLDraw5: TRLDraw;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLDraw6: TRLDraw;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    
  end;

var
  fRelEtiqueta: TfRelEtiqueta;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelEtiqueta.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
end;

end.
