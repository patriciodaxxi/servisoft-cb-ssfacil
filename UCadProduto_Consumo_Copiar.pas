unit UCadProduto_Consumo_Copiar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadProduto, Grids, DBGrids, SMDBGrid, ExtCtrls, NxCollection, DB;

type
  TfrmCadProduto_Consumo_Copiar = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
    
  end;

var
  frmCadProduto_Consumo_Copiar: TfrmCadProduto_Consumo_Copiar;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadProduto_Consumo_Copiar.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  SMDBGrid1.SelectAllClick(Sender);
end;

procedure TfrmCadProduto_Consumo_Copiar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadProduto_Consumo_Copiar.btnConfirmarClick(Sender: TObject);
var
  vCont : Integer;
begin
  vCont := 0;
  fDMCadProduto.cdsProduto_Comb.First;
  while not fDMCadProduto.cdsProduto_Comb.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      fDMCadProduto.prc_Gravar_Comb_Mat_Consumo;
      vCont := vCont + 1;
    end;
    fDMCadProduto.cdsProduto_Comb.Next;
  end;
  if vCont > 0 then
    MessageDlg('*** Total de ' + IntToStr(vCont) + ' Combinações que foi gravado o Material!', mtInformation, [mbOk], 0);
  Close;
end;

end.
