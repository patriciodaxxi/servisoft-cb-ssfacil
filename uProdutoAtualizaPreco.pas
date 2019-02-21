unit uProdutoAtualizaPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, uDmCadProduto, rsDBUtils;

type
  TfrmProdutoAtualizaPreco = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fDmCadProduto: TDmCadProduto;
  public
    { Public declarations }
  end;

var
  frmProdutoAtualizaPreco: TfrmProdutoAtualizaPreco;

implementation

{$R *.dfm}

procedure TfrmProdutoAtualizaPreco.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
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
      Edit2.Text := fDmCadProduto.cdsProduto_ConsultaNOME.AsString;
      Edit3.Text := fDmCadProduto.cdsProduto_ConsultaREFERENCIA.AsString;
      Edit4.Text := fDmCadProduto.cdsProduto_ConsultaPRECO_VENDA.AsString;
    end
    else
      ShowMessage('Produto não localizado!')
  end;
end;

procedure TfrmProdutoAtualizaPreco.FormShow(Sender: TObject);
begin
  fDMCadProduto := TDMCadProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
end;

end.
