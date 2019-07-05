unit uRateioItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DB, DBClient, NxCollection, UDMRecebeXML,
  StdCtrls, DBCtrls;

type
  TfrmRateio_Itens = class(TForm)
    pnlTopo: TPanel;
    pnlPrincipal: TPanel;
    DBGrid1: TDBGrid;
    btnExcluir: TNxButton;
    btnFechar: TNxButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lblNome: TLabel;
    lblQtde: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    function fnc_Valida_Qtde : Boolean;
    { Private declarations }
  public
    Qtde_Item : Real;
    fDMRecebeXML : TDMRecebeXML;
    { Public declarations }
  end;

var
  frmRateio_Itens: TfrmRateio_Itens;

implementation

uses Math, URecebeXML;

{$R *.dfm}

procedure TfrmRateio_Itens.btnExcluirClick(Sender: TObject);
begin
  if not fDMRecebeXML.mRateioItens.IsEmpty then
    fDMRecebeXML.mRateioItens.Delete;
end;

function TfrmRateio_Itens.fnc_Valida_Qtde: Boolean;
var
  vQtde : Real;
begin
  if fDMRecebeXML.mRateioItens.IsEmpty then
  begin
    Result := True;
    Exit;
  end;
  vQtde := 0;
  fDMRecebeXML.mRateioItens.First;
  while not fDMRecebeXML.mRateioItens.Eof do
  begin
    vQtde := vQtde + fDMRecebeXML.mRateioItensQuantidade.AsFloat;
    fDMRecebeXML.mRateioItens.Next;
  end;
  Result := FormatFloat('0.0000',Qtde_Item) = FormatFloat('0.0000',vQtde);
end;

procedure TfrmRateio_Itens.btnFecharClick(Sender: TObject);
begin
  if fnc_Valida_Qtde then
  begin
    fDMRecebeXML.mRateioGeral.First;
    while not fDMRecebeXML.mRateioGeral.Eof do
    begin
      if fDMRecebeXML.mRateioGeralItem.AsInteger = fDMRecebeXML.mItensNotaItem.AsInteger then
        fDMRecebeXML.mRateioGeral.Delete
      else
        fDMRecebeXML.mRateioGeral.Next;
    end;

    fDMRecebeXML.mRateioItens.First;
    while not fDMRecebeXML.mRateioItens.Eof do
    begin
      fDMRecebeXML.mRateioGeral.Insert;
      fDMRecebeXML.mRateioGeralItem.AsInteger := fDMRecebeXML.mRateioItensItem.AsInteger;
      fDMRecebeXML.mRateioGeralItem_Rateio.AsInteger := fDMRecebeXML.mRateioItensItem_Rateio.AsInteger;
      fDMRecebeXML.mRateioGeralComprimento.AsFloat := fDMRecebeXML.mRateioItensComprimento.AsFloat;
      fDMRecebeXML.mRateioGeralLargura.AsFloat := fDMRecebeXML.mRateioItensLargura.AsFloat;
      fDMRecebeXML.mRateioGeralEspessura.AsFloat := fDMRecebeXML.mRateioItensEspessura.AsFloat;
      fDMRecebeXML.mRateioGeralQuantidade.AsFloat := fDMRecebeXML.mRateioItensQuantidade.AsFloat;
      fDMRecebeXML.mRateioGeral.Post;
      fDMRecebeXML.mRateioItens.Next;
    end;
    close;
    if not fDMRecebeXML.mRateioItens.IsEmpty then
      ModalResult := mrOk;
  end
  else
    MessageDlg('Quantidade total dos itens do rateio deve ser igual a quantidade do item|',mtError,[mbOK],0);
end;

end.
