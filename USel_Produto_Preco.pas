unit USel_Produto_Preco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Grids, DBGrids, SMDBGrid;

type
  TfrmSel_Produto_Preco = class(TForm)
    Label1: TLabel;
    SMDBGrid1: TSMDBGrid;
    mPreco: TClientDataSet;
    mPrecoNome: TStringField;
    mPrecoPreco: TFloatField;
    dsmPreco: TDataSource;
    mPrecoItem: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSel_Produto_Preco: TfrmSel_Produto_Preco;

implementation

uses uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Produto_Preco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Produto_Preco.SMDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 27 then
    Close
  else
  if Key = VK_RETURN then
  begin
    vPreco_Pos := StrToFloat(FormatFloat('0.00###',mPrecoPreco.AsFloat));
    Close;
  end;
end;

procedure TfrmSel_Produto_Preco.SMDBGrid1DblClick(Sender: TObject);
begin
  vPreco_Pos := StrToFloat(FormatFloat('0.00###',mPrecoPreco.AsFloat));
  Close;
end;

end.
