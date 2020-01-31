unit UConsProduto_Custo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsProduto, ExtCtrls, NxCollection, Grids, DBGrids, SMDBGrid,
  StdCtrls, DB;

type
  TfrmConsProduto_Custo = class(TForm)
    Panel1: TPanel;
    btnAjusteCusto: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    NxButton1: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAjusteCustoClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure NxButton1Click(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMConsProduto: TDMConsProduto;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsProduto_Custo: TfrmConsProduto_Custo;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsProduto_Custo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fDMConsProduto);
  Action := Cafree;
end;

procedure TfrmConsProduto_Custo.FormShow(Sender: TObject);
begin
  fDMConsProduto := TDMConsProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsProduto);
end;

procedure TfrmConsProduto_Custo.btnAjusteCustoClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsProduto_Custo.prc_Consultar;
begin
  fDMConsProduto.cdsProduto_Custo.Close;
  fDMConsProduto.sdsProduto_Custo.CommandText := fDMConsProduto.ctProduto_Custo;
  fDMConsProduto.cdsProduto_Custo.Open;
  fDMConsProduto.cdsProduto_Custo.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmConsProduto_Custo.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.000000',fDMConsProduto.cdsProduto_CustoPRECO_CUSTO_TOTAL.AsFloat)) <> StrToFloat(FormatFloat('0.000000',fDMConsProduto.cdsProduto_CustoPRECO_CUSTO_CALC.AsFloat)) then
  begin
    Background  := clYellow;
    AFont.Color := clBlack;
  end
  else
  if fDMConsProduto.cdsProduto_CustoCONTADOR.AsInteger > 0 then
  begin
    Background  := $008080FF;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsProduto_Custo.NxButton1Click(Sender: TObject);
var
  vContador : Integer;
begin
  if MessageDlg('Deseja atualizar o Preço de Custo dos Produtos conforme o Preço de Consumo ?' +#13 + #13 + ' (vai atualizar os selecionados)' ,mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  SMDBGrid1.DisableScroll;
  vContador :=  0;
  try
    fDMConsProduto.cdsProduto_Custo.First;
    while not fDMConsProduto.cdsProduto_Custo.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (StrToFloat(FormatFloat('0.0000',fDMConsProduto.cdsProduto_CustoPRECO_CUSTO_CALC.AsFloat)) > 0) then
      begin
        fDMConsProduto.cdsProduto.Close;
        fDMConsProduto.sdsProduto.ParamByName('ID').AsInteger := fDMConsProduto.cdsProduto_CustoID.AsInteger;
        fDMConsProduto.cdsProduto.Open;
        if not fDMConsProduto.cdsProduto.IsEmpty then
        begin
          fDMConsProduto.cdsProduto.Edit;
          fDMConsProduto.cdsProdutoPRECO_CUSTO.AsFloat       := StrToFloat(FormatFloat('0.0000',fDMConsProduto.cdsProduto_CustoPRECO_CUSTO_CALC.AsFloat));
          fDMConsProduto.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.0000',fDMConsProduto.cdsProduto_CustoPRECO_CUSTO_CALC.AsFloat));
          fDMConsProduto.cdsProduto.Post;
          fDMConsProduto.cdsProduto.ApplyUpdates(0);
          vContador := vContador + 1;
        end;
      end;
      fDMConsProduto.cdsProduto_Custo.Next;
    end;
  finally
    SMDBGrid1.DisableScroll;
    MessageDlg('*** Foi atualizado  ' + IntToStr(vContador) + '  Produto(s)!' , mtConfirmation, [mbOk], 0);
  end;
end;

procedure TfrmConsProduto_Custo.SMDBGrid1TitleClick(Column: TColumn);
begin
  fDMConsProduto.cdsProduto_Custo.IndexFieldNames := Column.FieldName;
end;

end.
