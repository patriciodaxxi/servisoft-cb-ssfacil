unit URelProduto_Grupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadProduto, UDMRel;

type
  TfRelProduto_Grupo = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLLabel5: TRLLabel;
    RLLabel8: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText8: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand4: TRLBand;
    RLLabel9: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLSubDetail3: TRLSubDetail;
    RLBand5: TRLBand;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand6: TRLBand;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDraw2: TRLDraw;
    RLBand7: TRLBand;
    RLDraw3: TRLDraw;
    RLBand8: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;

    vTotal_Reg : Integer;
    vTotal_Custo : Real;
    vTotal_Venda : Real;
    vTotal_Estoque : Real;

    vVlr_Custo : Real;
    vVlr_Venda : Real;
    vQtd_Estoque : Real;

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
    vImpPrecoCusto : Boolean;
    vImpPreco : Boolean;
    vImpConsumo : Boolean;
  end;

var
  fRelProduto_Grupo: TfRelProduto_Grupo;

implementation

uses DB;

{$R *.dfm}

procedure TfRelProduto_Grupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelProduto_Grupo.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel7.Visible := vImpPrecoCusto;
  RLLabel8.Visible := vImpPreco;

  RLLabel15.Visible := vImpPrecoCusto;
  RLLabel16.Visible := vImpPrecoCusto;
  RLLabel17.Visible := vImpPrecoCusto;
  RLLabel18.Visible := vImpPrecoCusto;
  RLLabel23.Visible := vImpPrecoCusto;
  RLLabel24.Visible := vImpPrecoCusto;
  RLLabel25.Visible := vImpPreco;
  RLLabel26.Visible := vImpPreco;
end;

procedure TfRelProduto_Grupo.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBText7.Visible := vImpPrecoCusto;
  RLDBText5.Visible := vImpPreco;
  fDMCadProduto.cdsConsumo_Imp.Close;
  if vImpConsumo then
  begin
    fDMCadProduto.sdsConsumo_Imp.ParamByName('ID').AsInteger := fDMCadProduto.mGrupo_ProdutoID_Produto.AsInteger;
    fDMCadProduto.cdsConsumo_Imp.Open;
  end;
  vTotal_Reg := vTotal_Reg + 1;
  if StrToFloat(FormatFloat('0.0000',fDMCadProduto.mGrupo_ProdutoSaldo_Estoque.AsFloat)) > 0 then
  begin
    vVlr_Custo   := StrToFloat(FormatFloat('0.00',vVlr_Custo + (fDMCadProduto.mGrupo_ProdutoSaldo_Estoque.AsFloat * fDMCadProduto.mGrupo_ProdutoPreco_Custo.AsFloat)));
    vVlr_Venda   := StrToFloat(FormatFloat('0.00',vVlr_Venda + (fDMCadProduto.mGrupo_ProdutoSaldo_Estoque.AsFloat * fDMCadProduto.mGrupo_ProdutoPreco_Venda.AsFloat)));
    vQtd_Estoque := StrToFloat(FormatFloat('0.0000',vQtd_Estoque + fDMCadProduto.mGrupo_ProdutoSaldo_Estoque.AsFloat));

    vTotal_Custo   := StrToFloat(FormatFloat('0.00',vTotal_Custo + vVlr_Custo));
    vTotal_Venda   := StrToFloat(FormatFloat('0.00',vTotal_Venda + vVlr_Venda));
    vTotal_Estoque := StrToFloat(FormatFloat('0.0000',vTotal_Estoque + vQtd_Estoque));
  end;
end;

procedure TfRelProduto_Grupo.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelProduto_Grupo.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelProduto_Grupo.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  fDMCadProduto.mGrupo_Produto.Filtered := False;
  fDMCadProduto.mGrupo_Produto.Filter   := 'ID_Grupo = '''+fDMCadProduto.mGrupoID_Grupo.AsString+'''';
  fDMCadProduto.mGrupo_Produto.Filtered := True;
end;

procedure TfRelProduto_Grupo.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel20.Caption := FormatFloat('###,###,##0.00##',vQtd_Estoque);
  RLLabel16.Caption := FormatFloat('###,###,##0.00',vVlr_Custo);
  RLLabel18.Caption := FormatFloat('###,###,##0.00',vVlr_Venda);

  vQtd_Estoque := 0;
  vVlr_Custo   := 0;
  vVlr_Venda   := 0;
end;

procedure TfRelProduto_Grupo.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not(fDMCadProduto.cdsConsumo_Imp.IsEmpty);
end;

procedure TfRelProduto_Grupo.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if vImpConsumo then
  begin
    fDMCadProduto.cdsConsumo_Imp_Tam.Close;
    fDMCadProduto.sdsConsumo_Imp_Tam.ParamByName('ID').AsInteger   := fDMCadProduto.cdsConsumo_ImpID.AsInteger;
    fDMCadProduto.sdsConsumo_Imp_Tam.ParamByName('ITEM').AsInteger := fDMCadProduto.cdsConsumo_ImpITEM.AsInteger;
    fDMCadProduto.cdsConsumo_Imp_Tam.Open;
  end;
end;

procedure TfRelProduto_Grupo.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vTotal_Reg := 0;
  vTotal_Custo := 0;
  vTotal_Venda := 0;
  vTotal_Estoque := 0;

  vVlr_Custo := 0;
  vVlr_Venda := 0;
  vQtd_Estoque := 0;
end;

procedure TfRelProduto_Grupo.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel14.Caption := FormatFloat('###,###,##0',vTotal_Reg);
  RLLabel28.Caption := FormatFloat('###,###,##0.00##',vTotal_Estoque);
  RLLabel24.Caption := FormatFloat('###,###,##0.00',vTotal_Custo);
  RLLabel26.Caption := FormatFloat('###,###,##0.00',vTotal_Venda);

  vTotal_Reg     := 0;
  vTotal_Estoque := 0;
  vTotal_Custo   := 0;
  vTotal_Venda   := 0;
end;

end.
