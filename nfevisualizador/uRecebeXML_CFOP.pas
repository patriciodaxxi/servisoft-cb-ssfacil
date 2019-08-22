unit uRecebeXML_CFOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DB, DBClient, NxCollection, UDMRecebeXML,
  StdCtrls, DBCtrls, RxLookup, RxDBComb;

type
  TfrmRecebeXML_CFOP = class(TForm)
    pnlPrincipal: TPanel;
    Label121: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    NxButton1: TNxButton;
    RxDBComboBox1: TRxDBComboBox;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    fDMRecebeXML : TDMRecebeXML;
    { Public declarations }
  end;

var
  frmRecebeXML_CFOP: TfrmRecebeXML_CFOP;

implementation

uses Math;

{$R *.dfm}

procedure TfrmRecebeXML_CFOP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmRecebeXML_CFOP.NxButton1Click(Sender: TObject);
begin
  if fDMRecebeXML.mItensNota.State in [dsedit] then
    fDMRecebeXML.mItensNota.Post;
  Close;
end;

end.
