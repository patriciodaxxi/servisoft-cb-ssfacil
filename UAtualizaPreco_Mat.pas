unit UAtualizaPreco_Mat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBClient, Provider, DB, SqlExpr, Grids, DBGrids,
  SMDBGrid, StdCtrls, Mask, DBCtrls, NxCollection;

type
  TfrmAtualizaPreco_Mat = class(TForm)
    sdsMat: TSQLDataSet;
    dspMat: TDataSetProvider;
    cdsMat: TClientDataSet;
    dsMat: TDataSource;
    SMDBGrid1: TSMDBGrid;
    cdsMatID: TIntegerField;
    cdsMatNOME: TStringField;
    cdsMatPRECO_CUSTO: TFloatField;
    cdsMatPRECO_CUSTO_TOTAL: TFloatField;
    sdsConsumo: TSQLDataSet;
    dspConsumo: TDataSetProvider;
    cdsConsumo: TClientDataSet;
    dsConsumo: TDataSource;
    cdsConsumoID: TIntegerField;
    cdsConsumoITEM: TIntegerField;
    cdsConsumoID_MATERIAL: TIntegerField;
    cdsConsumoQTD_CONSUMO: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    btnConfirmar: TNxButton;
    sdsMatID: TIntegerField;
    sdsMatNOME: TStringField;
    sdsMatPRECO_CUSTO: TFloatField;
    sdsMatPRECO_CUSTO_TOTAL: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cdsConsumoAfterScroll(DataSet: TDataSet);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    vID_Material_Local : String;
  public
    { Public declarations }
    vID_Produto_Local : Integer;
  end;

var
  frmAtualizaPreco_Mat: TfrmAtualizaPreco_Mat;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmAtualizaPreco_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmAtualizaPreco_Mat.FormShow(Sender: TObject);
begin
  cdsConsumo.Close;
  sdsConsumo.ParamByName('ID').AsInteger := vID_Produto_Local;
  cdsConsumo.Open;
  cdsConsumo.First;
  cdsConsumo.Last;
  cdsConsumo.First;
end;

procedure TfrmAtualizaPreco_Mat.cdsConsumoAfterScroll(DataSet: TDataSet);
begin
  cdsMat.Close;
  sdsMat.ParamByName('ID').AsInteger := cdsConsumoID_MATERIAL.AsInteger;
  cdsMat.Open;
end;

procedure TfrmAtualizaPreco_Mat.btnConfirmarClick(Sender: TObject);
begin
  if MessageDlg('Confirmar a Alteração do Preço de Custo?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    cdsMat.Post;
    cdsMat.ApplyUpdates(0);
    Close;
  end;
end;

end.
