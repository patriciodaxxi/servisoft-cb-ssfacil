unit UCadPedido_Custo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, ExtCtrls, NxCollection, Grids, DBGrids, SMDBGrid,DB,
  StdCtrls, DBCtrls;

type
  TfrmCadPedido_Custo = class(TForm)
    Panel1: TPanel;
    NxButton1: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    btnRecalcular: TNxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    NxButton2: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton1Click(Sender: TObject);
    procedure SMDBGrid1Exit(Sender: TObject);
    procedure btnRecalcularClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
    vVlr_Unitario, vPerc_Margem : Real;
    vCalculou : Boolean;
    vVlrCusto : Real;
    vVlrCustoAnt : Real;
    procedure prc_AfterPost(DataSet: TDataSet);
    procedure prc_BeforeEdit(DataSet: TDataSet);
    procedure prc_scroll(DataSet: TDataSet);
    procedure prc_Calcular;

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
  end;

var
  frmCadPedido_Custo: TfrmCadPedido_Custo;

implementation

uses rsDBUtils, uCalculo_Pedido;

{$R *.dfm}

procedure TfrmCadPedido_Custo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMCadPedido.cdsPedido_Itens.AfterPost    := nil;
  fDMCadPedido.cdsPedido_Itens.BeforeEdit   := nil;
  fDMCadPedido.cdsPedido_Itens.BeforeScroll := nil;

  Action := Cafree;
end;

procedure TfrmCadPedido_Custo.FormShow(Sender: TObject);
var
  i : Integer;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);

  if fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert] then
  begin
    fDMCadPedido.cdsPedido_Itens.AfterPost    := prc_AfterPost;
    fDMCadPedido.cdsPedido_Itens.BeforeEdit   := prc_BeforeEdit;
    fDMCadPedido.cdsPedido_Itens.BeforeScroll := prc_scroll;
  end;

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'VLR_UNITARIO') or (SMDBGrid1.Columns[i].FieldName = 'PERC_MARGEM2') then
      SMDBGrid1.Columns[i].ReadOnly := not(fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]);
  end;

  btnRecalcularClick(Sender);
end;

procedure TfrmCadPedido_Custo.prc_BeforeEdit(DataSet: TDataSet);
begin
  vVlr_Unitario := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
  vPerc_Margem  := StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ItensPERC_MARGEM2.AsFloat));
  vVlrCustoAnt  := StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ItensclVlr_Total_Custo.AsFloat));
end;

procedure TfrmCadPedido_Custo.prc_AfterPost(DataSet: TDataSet);
begin
  if (StrToFloat(FormatFloat('0.0000',vVlr_Unitario)) = StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat))) and
     (StrToFloat(FormatFloat('0.000',vPerc_Margem)) = StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ItensPERC_MARGEM2.AsFloat))) then
    exit;
  if StrToFloat(FormatFloat('0.0000',vVlr_Unitario)) <> StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)) then
    UCalculo_Pedido.prc_Calcular_Lucratividade(fDMCadPedido,'V')
  else
  if StrToFloat(FormatFloat('0.000',vPerc_Margem)) <> StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ItensPERC_MARGEM2.AsFloat)) then
    UCalculo_Pedido.prc_Calcular_Lucratividade(fDMCadPedido,'M');
  vCalculou := True;
  vVlr_Unitario := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
  vPerc_Margem  := StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ItensPERC_MARGEM2.AsFloat));

  vVlrCusto := StrToFloat(FormatFloat('0.00',(vVlrCusto - vVlrCustoAnt) + fDMCadPedido.cdsPedido_ItensclVlr_Total_Custo.AsFloat));

  //UCalculo_Pedido.prc_Calculo_GeralItem(fDMCadPedido,fDMCadPedido.cdsPedido_ItensQTD.AsFloat,fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
    //                                    fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat,
      //                                  fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat);
end;

procedure TfrmCadPedido_Custo.SMDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]) then
  begin
    //if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
    //  fDMCadPedido.cdsPedido_Itens.Post;
    //if vCalculou then
      prc_Calcular;
  end;
end;

procedure TfrmCadPedido_Custo.NxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadPedido_Custo.prc_scroll(DataSet: TDataSet);
begin
  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit] then
    prc_Calcular;
end;

procedure TfrmCadPedido_Custo.prc_Calcular;
var
  vItem : Integer;
  vAux : Real;
begin
  vItem := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  vCalculou := False;
  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit] then
    fDMCadPedido.cdsPedido_Itens.Post;

  if vCalculou then
  begin
    SMDBGrid1.DisableScroll;
    uCalculo_Pedido.prc_Calcular_Desconto_Novo(fDMCadPedido,False);
    SMDBGrid1.EnableScroll;
  end;
  fDMCadPedido.cdsPedido_Itens.Locate('ITEM',vItem,[loCaseInsensitive]);
  vAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat - vVlrCusto));
  Label6.Caption := FormatFloat('###,###,##0.00',vAux);

  vCalculou := False;
end;

procedure TfrmCadPedido_Custo.SMDBGrid1Exit(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit] then
    prc_Calcular;
end;

procedure TfrmCadPedido_Custo.btnRecalcularClick(Sender: TObject);
var
  vAux : Real;
begin
  SMDBGrid1.DisableScroll;
  vVlrCusto := 0;
  fDMCadPedido.cdsPedido_Itens.First;
  while not fDMCadPedido.cdsPedido_Itens.Eof do
  begin
    vVlrCusto := StrToFloat(FormatFloat('0.00',vVlrCusto + fDMCadPedido.cdsPedido_ItensclVlr_Total_Custo.AsFloat));
    fDMCadPedido.cdsPedido_Itens.Next;
  end;
  Label2.Caption := FormatFloat('###,###,##0.00',vVlrCusto);
  vAux           := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat - vVlrCusto));
  Label6.Caption := FormatFloat('###,###,##0.00',vAux);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadPedido_Custo.NxButton2Click(Sender: TObject);
begin
  fDMCadPedido.cdsPedido_Itens.First;
  while not fDMCadPedido.cdsPedido_Itens.Eof do
  begin
    if (fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat = 0) then
    begin
      fDMCadPedido.cdsPedido_Itens.Edit;
      fDMCadPedido.prc_Abrir_qProduto(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger);
      fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat := fDMCadPedido.qProdutoPRECO_CUSTO.AsFloat;
      fDMCadPedido.cdsPedido_Itens.Post;
    end;
    fDMCadPedido.cdsPedido_Itens.Next;
  end;
end;

end.
