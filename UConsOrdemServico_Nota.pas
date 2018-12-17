unit UConsOrdemServico_Nota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadOrdemServico, RzButton, Grids, DBGrids, SMDBGrid, ExtCtrls,
  RzPanel, UCBase, SqlExpr, dbXPress;

type
  TfrmConsOrdemServico_Nota = class(TForm)
    RzGroupBox2: TRzGroupBox;
    SMDBGrid3: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;

    vTipo_RegAux : String; //P= Pedido Cliente  C= Ordem de Compra Fornecedor
    
  end;

var
  frmConsOrdemServico_Nota: TfrmConsOrdemServico_Nota;

implementation

uses rsDBUtils, UMenu, DmdDatabase;

{$R *.dfm}

procedure TfrmConsOrdemServico_Nota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsOrdemServico_Nota.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
end;

end.
