unit UConsPessoa_Fat_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, UDMConsPessoa,
  RzPanel;

type
  TfrmConsPessoa_Fat_Itens = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    gbxProdutos: TRzGroupBox;
    gbxServico: TRzGroupBox;
    SMDBGrid3: TSMDBGrid;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    fDMConsPessoa: TDMConsPessoa;
    vTipo_Nota : String; //P=Produto  S=Serviço

  end;

var
  frmConsPessoa_Fat_Itens: TfrmConsPessoa_Fat_Itens;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsPessoa_Fat_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsPessoa_Fat_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMConsPessoa);
  if vTipo_Nota = 'S' then
  begin
    fDMConsPessoa.cdsNotaServico_Itens.Close;
    fDMConsPessoa.sdsNotaServico_Itens.ParamByName('ID').AsInteger := fDMConsPessoa.cdsNotaServicoID.AsInteger;
    fDMConsPessoa.cdsNotaServico_Itens.Open;
  end
  else
  begin
    fDMConsPessoa.cdsNotaFiscal_Itens.Close;
    fDMConsPessoa.sdsNotaFiscal_Itens.ParamByName('ID').AsInteger := fDMConsPessoa.cdsNotaFiscalID.AsInteger;
    fDMConsPessoa.cdsNotaFiscal_Itens.Open;
  end;
end;

end.
