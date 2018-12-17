unit URelFat_Prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsFaturamento, UDMRel;

type
  TfRelFat_Prod = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    rllbOpcao: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBText4: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel43: TRLLabel;
    RLDBResult10: TRLDBResult;
    RLLabel44: TRLLabel;
    RLDBResult11: TRLDBResult;
    RLLabel11: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBResult2: TRLDBResult;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMConsFaturamento: TDMConsFaturamento;
  end;

var
  fRelFat_Prod: TfRelFat_Prod;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelFat_Prod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFat_Prod.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption  := fDMConsFaturamento.vDescOpcao_Rel;
  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
  begin
    RLLabel1.Caption   := 'Relatório de Faturamento - Produtos';
    RLLabel3.Caption   := 'Vlr.Faturamento:';
  end
  else
  if fDMConsFaturamento.vTipo_Reg = 'NTE' then
  begin
    RLLabel1.Caption   := 'Relatório de Compras - Produtos';
    RLLabel3.Caption   := 'Vlr.Compras:';
  end;
end;

procedure TfRelFat_Prod.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsFaturamento);
end;

procedure TfRelFat_Prod.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel4.Caption := FormatFloat('###,###,###,##0.00',fDMConsFaturamento.vVlrFaturamento);
end;

procedure TfRelFat_Prod.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMConsFaturamento.vTipo_Reg = 'NTE' then
    RLLabel39.Caption := 'Compra'
  else
  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
  begin
    if fDMConsFaturamento.cdsNotaFiscal_ProdTIPO_MOV.AsString = 'NOT' then
      RLLabel39.Caption := 'Venda'
    else
      RLLabel39.Caption := 'Serviço';
  end
end;

procedure TfRelFat_Prod.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelFat_Prod.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
