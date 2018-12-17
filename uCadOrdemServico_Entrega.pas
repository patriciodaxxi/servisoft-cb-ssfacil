unit uCadOrdemServico_Entrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, ToolEdit, Buttons,
  ExtCtrls, UDMCadOrdemServico;

type
  TfrmCadOrdemServico_Entrega = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label13: TLabel;
    DtEntrega: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCadOrdemServico: TDmCadOrdemServico;
  end;

var
  frmCadOrdemServico_Entrega: TfrmCadOrdemServico_Entrega;

implementation

{$R *.dfm}

procedure TfrmCadOrdemServico_Entrega.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadOrdemServico_Entrega.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadOrdemServico_Entrega.BitBtn1Click(Sender: TObject);
begin
  fDmCadOrdemServico.cdsOrdemServico.Edit;
  fDmCadOrdemServico.cdsOrdemServicoDTENTREGA.AsDateTime := DtEntrega.Date;
  fDmCadOrdemServico.cdsOrdemServicoSTATUS.AsInteger     := 9;
  fDmCadOrdemServico.cdsOrdemServico.Post;
  fDmCadOrdemServico.cdsOrdemServico.ApplyUpdates(0);
  Close;
end;

end.
