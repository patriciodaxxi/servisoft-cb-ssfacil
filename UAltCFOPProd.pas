unit UAltCFOPProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsProduto, RxLookup, StdCtrls, Mask, DBCtrls, ExtCtrls,
  NxCollection;

type
  TfrmAltCFOPProd = class(TForm)
    Label23: TLabel;
    DBEdit10: TDBEdit;
    Label161: TLabel;
    RxDBLookupCombo20: TRxDBLookupCombo;
    Label35: TLabel;
    Label112: TLabel;
    RxDBLookupCombo17: TRxDBLookupCombo;
    Label253: TLabel;
    DBEdit162: TDBEdit;
    RxDBLookupCombo25: TRxDBLookupCombo;
    Label243: TLabel;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    NxButton2: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMConsProduto: TDMConsProduto;
    vID_Produto_Loc : Integer;

  end;

var
  frmAltCFOPProd: TfrmAltCFOPProd;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfrmAltCFOPProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmAltCFOPProd.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMConsProduto);
  fDMConsProduto.cdsProduto.Close;
  fDMConsProduto.sdsProduto.ParamByName('ID').AsInteger := vID_Produto_Loc;
  fDMConsProduto.cdsProduto.Open;
  if not fDMConsProduto.cdsProduto.IsEmpty then
    fDMConsProduto.cdsProduto.Edit;
  btnConfirmar.Enabled := (fDMConsProduto.cdsProduto.State in [dsEdit]);
end;

procedure TfrmAltCFOPProd.NxButton2Click(Sender: TObject);
begin
  fDMConsProduto.cdsProduto.Cancel;
  Close;
end;

procedure TfrmAltCFOPProd.btnConfirmarClick(Sender: TObject);
begin
  fDMConsProduto.cdsProduto.Post;
  if fDMConsProduto.cdsProduto.ChangeCount > 0 then
  begin
    fDMConsProduto.cdsProduto.ApplyUpdates(0);
    fDMConsProduto.vAltProd := True;
  end;
  Close;
end;

end.
