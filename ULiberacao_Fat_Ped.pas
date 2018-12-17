unit ULiberacao_Fat_Ped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConferencia, StdCtrls, RxLookup, Grids, DBGrids, SMDBGrid,
  NxCollection;

type
  TfrmLiberacao_Fat_Ped = class(TForm)
    SMDBGrid2: TSMDBGrid;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    Edit1: TEdit;
    btnConsultar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure prc_Consultar;

  public
    { Public declarations }
    fDMConferencia: TDMConferencia;

  end;

var
  frmLiberacao_Fat_Ped: TfrmLiberacao_Fat_Ped;

implementation

uses uUtilPadrao, rsDBUtils;

{$R *.dfm}

procedure TfrmLiberacao_Fat_Ped.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmLiberacao_Fat_Ped.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMConferencia);
  fDMConferencia.cdsFilial.First;
  if (fDMConferencia.cdsFilial.RecordCount < 2) and (fDMConferencia.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConferencia.cdsFilialID.AsInteger;
  Edit1.SetFocus;
end;

procedure TfrmLiberacao_Fat_Ped.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmLiberacao_Fat_Ped.prc_Consultar;
var
  vComando : String;
begin
  vComando := '';
  fDMConferencia.cdsPedido.Close;
  if RxDBLookupCombo1.KeyValue > 0 then
    vComando := ' AND P.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if trim(Edit1.Text) <> '' then
    vComando := ' AND P.NUM_PEDIDO = ' + Edit1.Text;
  fDMConferencia.sdsPedido.CommandText := fDMConferencia.ctPedido + vComando;
  fDMConferencia.cdsPedido.Open;
  fDMConferencia.cdsPedido.Last;
  SMDBGrid2.SetFocus;
end;

procedure TfrmLiberacao_Fat_Ped.SMDBGrid2DblClick(Sender: TObject);
begin
  if (fDMConferencia.cdsPedido.Active) and (fDMConferencia.cdsPedidoID.AsInteger > 0) then
  begin
    fDMConferencia.vID_Pedido_Fat  := fDMConferencia.cdsPedidoID.AsInteger;
    fDMConferencia.vNum_Pedido_Fat := fDMConferencia.cdsPedidoNUM_PEDIDO.AsInteger;
    Close;
  end;
end;

procedure TfrmLiberacao_Fat_Ped.SMDBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if (fDMConferencia.cdsPedido.Active) and (fDMConferencia.cdsPedidoID.AsInteger > 0) then
    begin
      fDMConferencia.vID_Pedido_Fat  := fDMConferencia.cdsPedidoID.AsInteger;
      fDMConferencia.vNum_Pedido_Fat := fDMConferencia.cdsPedidoNUM_PEDIDO.AsInteger;
      Close;
    end;
  end;
end;

procedure TfrmLiberacao_Fat_Ped.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

end.
