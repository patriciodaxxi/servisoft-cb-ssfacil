unit URelFat_DT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsFaturamento, UDMRel;

type
  TfRelFat_DT = class(TForm)
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
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel43: TRLLabel;
    RLDBResult10: TRLDBResult;
    RLLabel44: TRLLabel;
    RLDBResult11: TRLDBResult;
    RLLabel16: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBResult2: TRLDBResult;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
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
  fRelFat_DT: TfRelFat_DT;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelFat_DT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFat_DT.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption  := fDMConsFaturamento.vDescOpcao_Rel;
  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
  begin
    RLLabel1.Caption  := 'Relatório de Faturamento - Data de Emissão';
    RLLabel3.Caption  := 'Vlr.Faturamento:';
    RLLabel14.Caption := 'Faturamento';
    RLLabel15.Caption := 'Faturamento';
  end
  else
  if fDMConsFaturamento.vTipo_Reg = 'NTE' then
  begin
    RLLabel1.Caption := 'Relatório de Compras - Data de Emissão';
    RLLabel3.Caption := 'Vlr.Compras:';
    RLLabel14.Caption := 'Compras';
    RLLabel15.Caption := 'Compras';
  end;
end;

procedure TfRelFat_DT.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsFaturamento);
end;

procedure TfRelFat_DT.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel4.Caption := FormatFloat('###,###,###,##0.00',fDMConsFaturamento.vVlrFaturamento);
end;

procedure TfRelFat_DT.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelFat_DT.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
