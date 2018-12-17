unit UImpEtiq_Emb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMPedidoImp, ExtCtrls, NxCollection, Grids, DBGrids, SMDBGrid;

type
  TfrmImpEtiq_Emb = class(TForm)
    Panel1: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    SMDBGrid1: TSMDBGrid;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMPedidoImp: TDMPedidoImp;

  end;

var
  frmImpEtiq_Emb: TfrmImpEtiq_Emb;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmImpEtiq_Emb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmImpEtiq_Emb.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMPedidoImp);
end;

procedure TfrmImpEtiq_Emb.NxButton2Click(Sender: TObject);
begin
  fDMPedidoImp.vImp_Etiqueta := False;
  Close;
end;

procedure TfrmImpEtiq_Emb.NxButton1Click(Sender: TObject);
begin
  fDMPedidoImp.vImp_Etiqueta := True;
  Close;
end;

procedure TfrmImpEtiq_Emb.SMDBGrid1DblClick(Sender: TObject);
begin
  if fDMPedidoImp.cdsPedEmbITEM.AsInteger <= 0 then
    exit;
  fDMPedidoImp.cdsPedEmb.Edit;
  if fDMPedidoImp.cdsPedEmbSELECIONADO.AsString = 'S' then
    fDMPedidoImp.cdsPedEmbSELECIONADO.AsString := 'N'
  else
    fDMPedidoImp.cdsPedEmbSELECIONADO.AsString := 'S';
  fDMPedidoImp.cdsPedEmb.Post;
end;

procedure TfrmImpEtiq_Emb.NxButton3Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  fDMPedidoImp.cdsPedEmb.First;
  while not fDMPedidoImp.cdsPedEmb.Eof do
  begin
    fDMPedidoImp.cdsPedEmb.Edit;
    fDMPedidoImp.cdsPedEmbSELECIONADO.AsString := 'S';
    fDMPedidoImp.cdsPedEmb.Post;
    fDMPedidoImp.cdsPedEmb.Next;
  end;
  SMDBGrid1.EnableScroll;
  fDMPedidoImp.cdsPedEmb.First;
end;

procedure TfrmImpEtiq_Emb.NxButton4Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  fDMPedidoImp.cdsPedEmb.First;
  while not fDMPedidoImp.cdsPedEmb.Eof do
  begin
    fDMPedidoImp.cdsPedEmb.Edit;
    fDMPedidoImp.cdsPedEmbSELECIONADO.AsString := 'N';
    fDMPedidoImp.cdsPedEmb.Post;
    fDMPedidoImp.cdsPedEmb.Next;
  end;
  SMDBGrid1.EnableScroll;
  fDMPedidoImp.cdsPedEmb.First;
end;

end.
