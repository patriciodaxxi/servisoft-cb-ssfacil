unit uProdutoAtualizaPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, uDmCadProduto, rsDBUtils,
  Buttons, Mask, ToolEdit, CurrEdit, FMTBcd, DB, SqlExpr;

type
  TfrmProdutoAtualizaPreco = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vIdProd: Integer;
    fDmCadProduto: TDmCadProduto;
  public
    { Public declarations }
  end;

var
  frmProdutoAtualizaPreco: TfrmProdutoAtualizaPreco;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmProdutoAtualizaPreco.FormShow(Sender: TObject);
begin
  fDMCadProduto := TDMCadProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
end;

procedure TfrmProdutoAtualizaPreco.BitBtn1Click(Sender: TObject);
begin
  if CurrencyEdit2.Value > 0 then
  begin
    fDMCadProduto.qAtualizaPreco.ParamByName('ID1').AsInteger := vIdProd;
    fDMCadProduto.qAtualizaPreco.ParamByName('P1').AsCurrency := CurrencyEdit2.Value;
    fDMCadProduto.qAtualizaPreco.ExecSQL();
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    CurrencyEdit1.Clear;
    CurrencyEdit2.Clear;
    Edit1.SetFocus;
  end;
end;

procedure TfrmProdutoAtualizaPreco.Edit1Exit(Sender: TObject);
begin
  fDMCadProduto.cdsProduto_Consulta.Close;
  fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.ctConsulta;
  if Length(Edit1.Text) < 5 then
    fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText +
                                                     ' WHERE PRO.ID =  ' + Edit1.Text
  else
  if Edit1.Text <> '' then
    fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText +
                                                     ' WHERE PRO.COD_BARRA = ' + QuotedStr(Edit1.Text);
  fDMCadProduto.cdsProduto_Consulta.Open;
  if not fDMCadProduto.cdsProduto_Consulta.IsEmpty then
  begin
    vIdProd    := fDmCadProduto.cdsProduto_ConsultaID.AsInteger;
    Edit2.Text := fDmCadProduto.cdsProduto_ConsultaNOME.AsString;
    Edit3.Text := fDmCadProduto.cdsProduto_ConsultaREFERENCIA.AsString;
    CurrencyEdit1.Value := fDmCadProduto.cdsProduto_ConsultaPRECO_VENDA.AsCurrency;
    CurrencyEdit2.SetFocus;
  end
  else
    ShowMessage('Produto não localizado!')
end;

procedure TfrmProdutoAtualizaPreco.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    Edit1Exit(Sender);
  end;
end;

end.
