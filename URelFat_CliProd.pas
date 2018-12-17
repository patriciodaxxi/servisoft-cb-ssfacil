unit URelFat_CliProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsFaturamento, UDMRel;

type
  TfRelFat_CliProd = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    rllbOpcao: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLLabel9: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText4: TRLDBText;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLBand4: TRLBand;
    RLLabel10: TRLLabel;
    RLDBText5: TRLDBText;
    RLReport2: TRLReport;
    RLBand5: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel13: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel14: TRLLabel;
    rllbOpcao2: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDraw3: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLGroup2: TRLGroup;
    RLBand6: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDraw4: TRLDraw;
    RLBand7: TRLBand;
    RLLabel24: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLBand8: TRLBand;
    RLLabel25: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLReport3: TRLReport;
    RLBand9: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel19: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel23: TRLLabel;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel26: TRLLabel;
    rllbOpcao3: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLDraw5: TRLDraw;
    RLSubDetail3: TRLSubDetail;
    RLBand10: TRLBand;
    RLDBText9: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDraw6: TRLDraw;
    RLBand11: TRLBand;
    RLLabel31: TRLLabel;
    rllbVlr_Faturamento3: TRLLabel;
    RLLabel33: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLLabel34: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel35: TRLLabel;
    RLBand12: TRLBand;
    RLLabel37: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLLabel3: TRLLabel;
    rllbVlr_Faturamento: TRLLabel;
    RLBand13: TRLBand;
    RLLabel38: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLLabel20: TRLLabel;
    rllbVlr_Faturamento2: TRLLabel;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLLabel15: TRLLabel;
    RLDBResult6: TRLDBResult;
    RLLabel27: TRLLabel;
    RLDBResult7: TRLDBResult;
    RLLabel32: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBResult8: TRLDBResult;
    RLLabel42: TRLLabel;
    RLDBResult9: TRLDBResult;
    RLLabel43: TRLLabel;
    RLDBResult10: TRLDBResult;
    RLLabel44: TRLLabel;
    RLDBResult11: TRLDBResult;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLDBResult12: TRLDBResult;
    RLLabel48: TRLLabel;
    RLDBResult13: TRLDBResult;
    RLLabel49: TRLLabel;
    RLDBResult14: TRLDBResult;
    RLLabel50: TRLLabel;
    RLDBResult15: TRLDBResult;
    RLLabel51: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel52: TRLLabel;
    RLDBResult16: TRLDBResult;
    RLLabel53: TRLLabel;
    RLDBResult17: TRLDBResult;
    RLLabel54: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel55: TRLLabel;
    RLDBResult18: TRLDBResult;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand13BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMConsFaturamento: TDMConsFaturamento;
    vOrdenar : Integer;
  end;

var
  fRelFat_CliProd: TfRelFat_CliProd;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelFat_CliProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFat_CliProd.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption  := fDMConsFaturamento.vDescOpcao_Rel;
  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
  begin
    RLLabel1.Caption  := 'Relatório de Faturamento - Clientes / Produtos';
    RLLabel10.Caption := 'Cliente:';
    RLLabel3.Caption  := 'Vlr.Faturamento:';
  end
  else
  if fDMConsFaturamento.vTipo_Reg = 'NTE' then
  begin
    RLLabel1.Caption  := 'Relatório de Compras - Fornecedores / Produtos';
    RLLabel10.Caption := 'Fornecedor:';
    RLLabel3.Caption  := 'Vlr.Compras:';
  end;
end;

procedure TfRelFat_CliProd.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsFaturamento);
end;

procedure TfRelFat_CliProd.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbVlr_Faturamento3.Caption := FormatFloat('###,###,###,##0.00',fDMConsFaturamento.vVlrFaturamento);
end;

procedure TfRelFat_CliProd.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbVlr_Faturamento.Caption := FormatFloat('###,###,###,##0.00',fDMConsFaturamento.vVlrFaturamento);
end;

procedure TfRelFat_CliProd.RLBand13BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbVlr_Faturamento2.Caption := FormatFloat('###,###,###,##0.00',fDMConsFaturamento.vVlrFaturamento);
end;

procedure TfRelFat_CliProd.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao2.Caption  := fDMConsFaturamento.vDescOpcao_Rel;
  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
  begin
    RLLabel11.Caption := 'Relatório de Faturamento - Clientes / Produtos';
    RLLabel16.Caption := 'Cliente';
    RLLabel20.Caption := 'Vlr.Faturamento:';
  end
  else
  if fDMConsFaturamento.vTipo_Reg = 'NTE' then
  begin
    RLLabel11.Caption := 'Relatório de Compras - Fornecedores / Produtos';
    RLLabel16.Caption := 'Fornecedor';
    RLLabel20.Caption := 'Vlr.Compras:';
  end;
end;

procedure TfRelFat_CliProd.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao3.Caption  := fDMConsFaturamento.vDescOpcao_Rel;
  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
  begin
    RLLabel4.Caption   := 'Relatório de Faturamento - Clientes / Produtos';
    RLLabel28.Caption  := 'Cliente';
    RLLabel31.Caption  := 'Vlr.Faturamento:';
  end
  else
  if fDMConsFaturamento.vTipo_Reg = 'NTE' then
  begin
    RLLabel4.Caption   := 'Relatório de Compras - Fornecedores / Produtos';
    RLLabel28.Caption  := 'Fornecedor';
    RLLabel31.Caption  := 'Vlr.Compras:';
  end;
end;

procedure TfRelFat_CliProd.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMConsFaturamento.vTipo_Reg = 'NTE' then
    RLLabel32.Caption := 'Compra'
  else
  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
  begin
    if fDMConsFaturamento.cdsNotaFiscal_CliProdTIPO_MOV.AsString = 'NOT' then
      RLLabel32.Caption := 'Venda'
    else
      RLLabel32.Caption := 'Serviço';
  end
end;

procedure TfRelFat_CliProd.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMConsFaturamento.vTipo_Reg = 'NTE' then
    RLLabel39.Caption := 'Compra'
  else
  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
  begin
    if fDMConsFaturamento.cdsNotaFiscal_CliProdTIPO_MOV.AsString = 'NOT' then
      RLLabel39.Caption := 'Venda'
    else
      RLLabel39.Caption := 'Serviço';
  end
end;

procedure TfRelFat_CliProd.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMConsFaturamento.vTipo_Reg = 'NTE' then
    RLLabel39.Caption := 'Compra'
  else
  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
  begin
    if fDMConsFaturamento.cdsNotaFiscal_CliProdTIPO_MOV.AsString = 'NOT' then
      RLLabel39.Caption := 'Venda'
    else
      RLLabel39.Caption := 'Serviço';
  end;
end;

procedure TfRelFat_CliProd.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelFat_CliProd.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
