unit uCupomDevolucao_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls,
  Buttons, NxCollection, ExtCtrls, uDmDevolucao;

type
  TfCupomDevolucao_Itens = class(TForm)
    Panel2: TPanel;
    btnCopiar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCopiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmDevolucao: TDmDevolucao;
  end;

var
  fCupomDevolucao_Itens: TfCupomDevolucao_Itens;

implementation

uses DB;

{$R *.dfm}

procedure TfCupomDevolucao_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfCupomDevolucao_Itens.btnCopiarClick(Sender: TObject);
var
  vItem: Word;
begin
  vItem := 0;
  fDmDevolucao.mItensDevolucao.First;
  while not fDmDevolucao.mItensDevolucao.Eof do
  begin
    if fDmDevolucao.mItensDevolucaoQTD_DEVOLVER.AsFloat > 0 then
    begin
      inc(vItem);
      fDmDevolucao.cdsDevolucaoItens.Insert;
      fDmDevolucao.cdsDevolucaoItensID.AsInteger            := fDmDevolucao.cdsDevolucaoID.AsInteger;
      fDmDevolucao.cdsDevolucaoItensID_CUPOM.AsInteger      := fDmDevolucao.qCupomFiscalID.AsInteger;
      fDmDevolucao.cdsDevolucaoItensID_CUPOM_ITEM.AsInteger := fDmDevolucao.mItensDevolucaoITEM.AsInteger;
      fDmDevolucao.cdsDevolucaoItensITEM.AsInteger          := vItem;
      fDmDevolucao.cdsDevolucaoItensQTD.AsFloat             := fDmDevolucao.mItensDevolucaoQTD_DEVOLVER.AsFloat;
      fDmDevolucao.cdsDevolucaoItensVLR_CREDITO.AsCurrency  := fDmDevolucao.mItensDevolucaoVLR_UNITARIO.AsCurrency;
      fDmDevolucao.cdsDevolucaoItensVLR_CREDITO.AsCurrency  := fDmDevolucao.mItensDevolucaoVLR_UNITARIO.AsCurrency;
      fDmDevolucao.cdsDevolucaoItensID_PRODUTO.AsInteger    := fDmDevolucao.mItensDevolucaoID_PRODUTO.AsInteger;
      fDmDevolucao.cdsDevolucaoItensNOME_PRODUTO.AsString   := fDmDevolucao.mItensDevolucaoNOME_PRODUTO.AsString;
      fDmDevolucao.cdsDevolucaoItensUNIDADE.AsString        := fDmDevolucao.mItensDevolucaoUNIDADE.AsString;
      fDmDevolucao.cdsDevolucaoItensTAMANHO.AsString        := fDmDevolucao.mItensDevolucaoTAMANHO.AsString;
      fDmDevolucao.cdsDevolucaoItensID_MOVESTOQUE.AsInteger := 0;
      fDmDevolucao.cdsDevolucaoItensID_MOVIMENTO.AsInteger  := 0;
      fDmDevolucao.cdsDevolucaoItens.Post;

      fDmDevolucao.cdsDevolucaoVLR_CREDITO.AsCurrency := fDmDevolucao.cdsDevolucaoVLR_CREDITO.AsCurrency +
                                                         (fDmDevolucao.mItensDevolucaoQTD_DEVOLVER.AsFloat *
                                                         fDmDevolucao.mItensDevolucaoVLR_UNITARIO.AsCurrency);
    end;
    fDmDevolucao.mItensDevolucao.Next;
  end;
  Close;
end;

end.
