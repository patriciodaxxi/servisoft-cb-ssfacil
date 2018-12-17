unit uOrcamentoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Grids, DBGrids,
  SMDBGrid, ExtCtrls, uDmOrcamento, rsDBUtils, DB, DBTables, FMTBcd, DBClient, Provider, SqlExpr;

type
  TfOrcamentoC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    fDmOrcamento: TDmOrcamento;
  public
    { Public declarations }
  end;

var
  fOrcamentoC: TfOrcamentoC;

implementation

uses uOrcamentoR, uOrcamento;

{$R *.dfm}

procedure TfOrcamentoC.BitBtn4Click(Sender: TObject);
begin
  fDmOrcamento.prc_Inserir;
  fDmOrcamento.cdsProdutoTIPO_REG.AsString  := 'P';
  fDmOrcamento.cdsProdutoInativo.AsString   := 'N';
  fDmOrcamento.cdsProdutoCarto.Insert;
  fdmOrcamento.cdsProdutoCartoFACA.AsString := '0';

  fOrcamento := TfOrcamento.Create(Self);
  fOrcamento.fdmOrcamento := fdmOrcamento;

  fOrcamento.ShowModal;
  fDmOrcamento.cdsConsProduto.Close;
  fDmOrcamento.cdsConsProduto.Open;
end;

procedure TfOrcamentoC.SMDBGrid1DblClick(Sender: TObject);
begin
  fdmOrcamento.prc_Localizar(fdmOrcamento.cdsConsProdutoID.AsInteger);
  fdmOrcamento.cdsProduto.Edit;

  fOrcamento := TfOrcamento.Create(Self);
  fOrcamento.fDmOrcamento := fDmOrcamento;
  fdmOrcamento.cdsProdutoCarto.Edit;
  fOrcamento.ShowModal;

  fDmOrcamento.cdsConsProduto.Close;
  fDmOrcamento.cdsConsProduto.Open;
end;

procedure TfOrcamentoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDmOrcamento.Owner.ClassName = Self.ClassName then
    FreeAndNil(fDmOrcamento);
  Action := caFree;
end;

procedure TfOrcamentoC.FormCreate(Sender: TObject);
begin
  fDmOrcamento := TDmOrcamento.Create(Self);
end;

procedure TfOrcamentoC.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    fDmOrcamento.prc_Excluir(fDmOrcamento.cdsConsProdutoID.AsInteger);
    BitBtn1.Click;
  end;
end;

procedure TfOrcamentoC.BitBtn3Click(Sender: TObject);
var
  vCod: Integer;
begin
{  vCod := fDmOrcamento.cdsProdutoCODIGO.AsInteger;
  fOrcamentoR := TfOrcamentoR.Create(Self);
  fOrcamentoR.dmProdutoCarto := fdmProdutoCarto;
  fOrcamentoR.RLReport1.Preview;
  fdmOrcamento.cdsProduto.Close;
  fdmOrcamento.cdsProduto.Open;
  fdmOrcamento.cdsProduto.IndexFieldNames := 'CODIGO';
  fdmOrcamento.cdsProduto.FindKey([vCod]);}
end;

procedure TfOrcamentoC.BitBtn1Click(Sender: TObject);
begin
  fDmOrcamento.cdsConsProduto.Close;
  fDmOrcamento.cdsConsProduto.Open;
end;

end.
