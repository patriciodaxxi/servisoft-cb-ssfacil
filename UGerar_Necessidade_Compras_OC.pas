unit UGerar_Necessidade_Compras_OC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RxLookup,
  StdCtrls, NxCollection, ExtCtrls, Buttons, UDMCadNecessidade_Compras,
  Grids, DBGrids, SMDBGrid;

type
  TfrmGerar_Necessidade_Compras_OC = class(TForm)
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    fDMCadNecessidade_Compras: TDMCadNecessidade_Compras;
    vNum_Ordem_Loc, vItem_Loc : Integer;
    
  end;

var
  frmGerar_Necessidade_Compras_OC: TfrmGerar_Necessidade_Compras_OC;

implementation

uses USel_Pessoa, uUtilPadrao;

{$R *.dfm}

procedure TfrmGerar_Necessidade_Compras_OC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmGerar_Necessidade_Compras_OC.btnConfirmarClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir a reserva referente a OC?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDMCadNecessidade_Compras.cdsLote_Mat_OC.Close;
  fDMCadNecessidade_Compras.sdsLote_Mat_OC.ParamByName('NUM_ORDEM').AsInteger := fDMCadNecessidade_Compras.cdsConsLote_Mat_OCNUM_ORDEM.AsInteger;
  fDMCadNecessidade_Compras.sdsLote_Mat_OC.ParamByName('ITEM').AsInteger      := fDMCadNecessidade_Compras.cdsConsLote_Mat_OCITEM.AsInteger;
  fDMCadNecessidade_Compras.cdsLote_Mat_OC.Open;

  if not fDMCadNecessidade_Compras.cdsLote_Mat_OC.IsEmpty then
    fDMCadNecessidade_Compras.cdsLote_Mat_OC.Delete;

  Close;
end;

procedure TfrmGerar_Necessidade_Compras_OC.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGerar_Necessidade_Compras_OC.FormShow(Sender: TObject);
begin
  fDMCadNecessidade_Compras.cdsConsLote_Mat_OC.Close;
  fDMCadNecessidade_Compras.sdsConsLote_Mat_OC.ParamByName('NUM_ORDEM').AsInteger := vNum_Ordem_Loc;
  fDMCadNecessidade_Compras.sdsConsLote_Mat_OC.ParamByName('ITEM').AsInteger      := vItem_Loc;
  fDMCadNecessidade_Compras.cdsConsLote_Mat_OC.Open;
end;

end.
