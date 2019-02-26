unit UCadProduto_ST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxCollection, UCBase, StdCtrls, Mask,
  DBCtrls, ToolEdit, RXDBCtrl, RxLookup, Buttons, RzPanel, RxDBComb, DB,
  FMTBcd, SqlExpr, DmdDatabase, DBClient, Provider;

type
  TfrmCadProduto_ST = class(TForm)
    Panel2: TPanel;
    Label5: TLabel;
    DBDateEdit1: TDBDateEdit;
    gbxVendedor: TRzGroupBox;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    sdsProdST: TSQLDataSet;
    dspProdST: TDataSetProvider;
    cdsProdST: TClientDataSet;
    cdsProdSTDTEMISSAO: TDateField;
    cdsProdSTID_PRODUTO: TIntegerField;
    cdsProdSTBASE_ST: TFloatField;
    cdsProdSTBASE_ST_RET: TFloatField;
    cdsProdSTVLR_ST: TFloatField;
    dsProdST: TDataSource;
    cdsProdSTVLR_ST_RET: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
   procedure prc_Abrir_ProdST;

  public
    { Public declarations }

    vID_Produto_Local : Integer;
    
  end;

var
  frmCadProduto_ST: TfrmCadProduto_ST;

implementation


{$R *.dfm}

procedure TfrmCadProduto_ST.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadProduto_ST.FormShow(Sender: TObject);
begin
  prc_Abrir_ProdST;
end;

procedure TfrmCadProduto_ST.prc_Abrir_ProdST;
begin
  cdsProdST.Close;
  sdsProdST.ParamByName('ID_PRODUTO').AsInteger := vID_Produto_Local;
  cdsProdST.Open;
end;

end.
