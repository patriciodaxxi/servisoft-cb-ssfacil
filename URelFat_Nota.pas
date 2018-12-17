unit URelFat_Nota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMConsFaturamento, UDMRel;

type
  TfRelFat_Nota = class(TForm)
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
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
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
  fRelFat_Nota: TfRelFat_Nota;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelFat_Nota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFat_Nota.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption  := fDMConsFaturamento.vDescOpcao_Rel;
  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
  begin
    RLLabel1.Caption   := 'Relatório de Faturamento - Notas';
    RLLabel3.Caption   := 'Vlr.Faturamento:';
  end
  else
  if fDMConsFaturamento.vTipo_Reg = 'NTE' then
  begin
    RLLabel1.Caption   := 'Relatório de Compras - Notas';
    RLLabel3.Caption   := 'Vlr.Compras:';
  end;
end;

procedure TfRelFat_Nota.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsFaturamento);
end;

procedure TfRelFat_Nota.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel4.Caption  := FormatFloat('###,###,###,##0.00',fDMConsFaturamento.vVlrFaturamento);
  RLLabel18.Caption := FormatFloat('###,###,###,##0.00',fDMConsFaturamento.vVlrFrete);
  RLLabel20.Caption := FormatFloat('###,###,###,##0.00',fDMConsFaturamento.vVlrIPI);
  RLLabel24.Caption := FormatFloat('###,###,###,##0.00',fDMConsFaturamento.vVlrDevol);
  RLLabel26.Caption := FormatFloat('###,###,###,##0.00',fDMConsFaturamento.vVlrLiq);
end;

procedure TfRelFat_Nota.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelFat_Nota.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
