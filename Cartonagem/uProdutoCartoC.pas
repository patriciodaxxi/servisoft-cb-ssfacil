unit uProdutoCartoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Grids, DBGrids,
  SMDBGrid, ExtCtrls, uDmProdutoCarto, rsDBUtils, DB, DBTables, FMTBcd, DBClient, Provider, SqlExpr;

type
  TfProdutoCartoC = class(TForm)
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
    fDmProdutoCarto: TdmProdutoCarto;
  public
    { Public declarations }
  end;

var
  fProdutoCartoC: TfProdutoCartoC;

implementation

uses uProdutoCarto, uProdutoCartoR;

{$R *.dfm}

procedure TfProdutoCartoC.BitBtn4Click(Sender: TObject);
begin
  fDmProdutoCarto.prc_Inserir;
  fDmProdutoCarto.cdsProdutoTIPO_REG.AsString  := 'P';
  fDmProdutoCarto.cdsProdutoInativo.AsString   := 'N';
  fDmProdutoCarto.cdsProdutoCarto.Insert;
  fdmProdutoCarto.cdsProdutoCartoFACA.AsString := '0';

  fProdutoCarto := TfProdutoCarto.Create(Self);
  fProdutoCarto.fdmProdutoCarto := fdmProdutoCarto;

  fProdutoCarto.ShowModal;
  fDmProdutoCarto.cdsConsProduto.Close;
  fDmProdutoCarto.cdsConsProduto.Open;
end;

procedure TfProdutoCartoC.SMDBGrid1DblClick(Sender: TObject);
begin
  fdmProdutoCarto.prc_Localizar(fdmProdutoCarto.cdsConsProdutoID.AsInteger);
  fdmProdutoCarto.cdsProduto.Edit;

  fProdutoCarto := TfProdutoCarto.Create(Self);
  fProdutoCarto.fdmProdutoCarto := fdmProdutoCarto;
  fdmProdutoCarto.cdsProdutoCarto.Edit;
  fProdutoCarto.ShowModal;

  fDmProdutoCarto.cdsConsProduto.Close;
  fDmProdutoCarto.cdsConsProduto.Open;
end;

procedure TfProdutoCartoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDmProdutoCarto.Owner.ClassName = Self.ClassName then
    FreeAndNil(fDmProdutoCarto);
  Action := caFree;
end;

procedure TfProdutoCartoC.FormCreate(Sender: TObject);
begin
  fDmProdutoCarto := TDmProdutoCarto.Create(Self);
end;

procedure TfProdutoCartoC.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    fDmProdutoCarto.prc_Excluir(fDmProdutoCarto.cdsConsProdutoID.AsInteger);
    BitBtn1.Click;
  end;
end;

procedure TfProdutoCartoC.BitBtn3Click(Sender: TObject);
var
  vCod: Integer;
begin
{  vCod := fDmProdutoCarto.cdsProdutoCODIGO.AsInteger;
  fProdutoCartoR := TfProdutoCartoR.Create(Self);
  fProdutoCartoR.dmProdutoCarto := fdmProdutoCarto;
  fProdutoCartoR.RLReport1.Preview;
  fdmProdutoCarto.cdsProduto.Close;
  fdmProdutoCarto.cdsProduto.Open;
  fdmProdutoCarto.cdsProduto.IndexFieldNames := 'CODIGO';
  fdmProdutoCarto.cdsProduto.FindKey([vCod]);}
end;

procedure TfProdutoCartoC.BitBtn1Click(Sender: TObject);
begin
  fDmProdutoCarto.cdsConsProduto.Close;
  fDmProdutoCarto.cdsConsProduto.Open;
end;

end.
