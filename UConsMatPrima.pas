unit UConsMatPrima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsMaterial, StdCtrls, Mask, ToolEdit, CurrEdit,
  NxCollection, ExtCtrls, Grids, DBGrids, SMDBGrid;

type
  TfrmConsMatPrima = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    btnConsultar: TNxButton;
    Label2: TLabel;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label4: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    Label5: TLabel;
    btnCalcular: TNxButton;
    Label6: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsMaterial: TDMConsMaterial;

  public
    { Public declarations }
  end;

var
  frmConsMatPrima: TfrmConsMatPrima;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsMatPrima.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsMatPrima.FormShow(Sender: TObject);
begin
  fDMConsMaterial := TDMConsMaterial.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsMaterial);
  CurrencyEdit4.Value := 1;
end;

procedure TfrmConsMatPrima.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := 0;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    FreeAndNil(frmSel_Produto);
    if vCodProduto_Pos > 0 then
    begin
      CurrencyEdit1.AsInteger := vCodProduto_Pos;
      CurrencyEdit1.SetFocus;
    end;
  end;
end;

procedure TfrmConsMatPrima.btnConsultarClick(Sender: TObject);
begin
  fDMConsMaterial.cdsConsMatPrima.Close;
  fDMConsMaterial.sdsConsMatPrima.ParamByName('ID_MATERIAL').AsInteger := CurrencyEdit1.AsInteger;
  fDMConsMaterial.cdsConsMatPrima.Open;
  btnCalcularClick(Sender);
end;

procedure TfrmConsMatPrima.btnCalcularClick(Sender: TObject);
var
  vQtdItem : Integer;
  vConsumo : Real;
begin
  vQtdItem := 0;
  vConsumo := 0;
  SMDBGrid1.DisableScroll;
  fDMConsMaterial.cdsConsMatPrima.First;
  while not fDMConsMaterial.cdsConsMatPrima.Eof do
  begin
    vQtdItem := vQtdItem + 1;
    vConsumo := vConsumo + StrToFloat(FormatFloat('0.0000',(fDMConsMaterial.cdsConsMatPrimaQTD_CONSUMO.AsFloat * CurrencyEdit4.Value)));
    fDMConsMaterial.cdsConsMatPrima.Next;
  end;
  SMDBGrid1.EnableScroll;
  CurrencyEdit3.Value := vQtdItem;
  CurrencyEdit2.Value := vConsumo;

  fDMConsMaterial.qEstoque.Close;
  fDMConsMaterial.qEstoque.ParamByName('ID_PRODUTO').AsInteger := CurrencyEdit1.AsInteger;
  fDMConsMaterial.qEstoque.Open;
  CurrencyEdit5.Value := StrToFloat(FormatFloat('0.00###',fDMConsMaterial.qEstoqueQTD.AsFloat));
end;

end.
