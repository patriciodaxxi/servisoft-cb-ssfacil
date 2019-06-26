unit uConsProdutoPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, SMDBGrid, FMTBcd, SqlExpr,
  Provider;

type
  TfrmConsultaProduto = class(TForm)
    SMDBGrid1: TSMDBGrid;
    cdsProduto: TClientDataSet;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    dsProduto: TDataSource;
    cdsProdutoID: TIntegerField;
    cdsProdutoNOME: TStringField;
    cdsProdutoESPESSURA: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaProduto: TfrmConsultaProduto;

implementation

uses
  DmdDatabase;

{$R *.dfm}

procedure TfrmConsultaProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmConsultaProduto.SMDBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmConsultaProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ModalResult := mrOk;
end;

end.
