unit URelNotaEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport,
  UDMCadNotaFiscal, UDMNFe;

type
  TfRelNotaEnt = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLBand4: TRLBand;
    RLBand7: TRLBand;
    RLDraw50: TRLDraw;
    rllbEnd1: TRLLabel;
    rllbCidade1: TRLLabel;
    rllbFone1: TRLLabel;
    rllbCep1: TRLLabel;
    RLLabel74: TRLLabel;
    RLDBText49: TRLDBText;
    RLLabel77: TRLLabel;
    RLLabel79: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel20: TRLLabel;
    RLDraw70: TRLDraw;
    RLLabel63: TRLLabel;
    rlmNomeProduto: TRLMemo;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLLabel19: TRLLabel;
    RLLabel97: TRLLabel;
    RLDBText19: TRLDBText;
    rllbInscrEstadual1: TRLLabel;
    rllbCNPJ1: TRLLabel;
    RLDBText4: TRLDBText;
    RLBand11: TRLBand;
    RLDraw16: TRLDraw;
    rllbEmpresa1: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel23: TRLLabel;
    RLLabel82: TRLLabel;
    RLLabel83: TRLLabel;
    RLDBText56: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw1: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText5: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLBand2: TRLBand;
    RLBand8: TRLBand;
    RLLabel12: TRLLabel;
    RLDraw20: TRLDraw;
    RLLabel32: TRLLabel;
    RLDraw26: TRLDraw;
    RLLabel33: TRLLabel;
    RLDraw27: TRLDraw;
    RLLabel34: TRLLabel;
    RLDraw28: TRLDraw;
    RLLabel36: TRLLabel;
    RLDraw30: TRLDraw;
    RLLabel37: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel35: TRLLabel;
    RLDraw6: TRLDraw;
    RLDraw29: TRLDraw;
    RLLabel40: TRLLabel;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLLabel42: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel16: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }

    procedure Monta_Cabecalho(Posicao: Integer);
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    fDMNFe: TDMNFE;

    vAmbiente: String;

    procedure prc_Mudar_DataSet;

  end;

var
  fRelNotaEnt: TfRelNotaEnt;

implementation

uses rsDBUtils, SendMailOptions;

{$R *.dfm}

procedure TfRelNotaEnt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelNotaEnt.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rlmNomeProduto.Lines.Clear;
  rlmNomeProduto.Lines.Text := fDMNFe.mItensNFeNomeProduto.AsString;
  if fDMNFe.mItensNFeInfAdicionais.Value <> '' then
    rlmNomeProduto.Lines.Text := rlmNomeProduto.Lines.Text + fDMNFe.mItensNFeInfAdicionais.Value;

  RLDBText4.Height  := RLBand4.Height;
  RLDBText6.Height  := RLBand4.Height;
  RLDBText7.Height  := RLBand4.Height;
  RLDBText8.Height  := RLBand4.Height;
  RLDBText9.Height  := RLBand4.Height;
  RLDBText10.Height := RLBand4.Height;
  RLDBText11.Height := RLBand4.Height;
  RLDBText16.Height := RLBand4.Height;
  RLDBText17.Height := RLBand4.Height;
end;

procedure TfRelNotaEnt.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Monta_Cabecalho(1);
end;

procedure TfRelNotaEnt.Monta_Cabecalho(Posicao: Integer);
begin
  fDMNFe.Posiciona_CidadeUF(fDMNFe.qFilialID_CIDADE.AsInteger,1);

  TRLLabel(FindComponent('rllbEmpresa'+IntToStr(Posicao))).Caption  := fDMNFe.qFilialNOME.AsString;
  TRLLabel(FindComponent('rllbEnd'+IntToStr(Posicao))).Caption      := fDMNFe.qFilialENDERECO.AsString + ', ' + fDMNFe.qFilialNUM_END.AsString + ' -' + fDMNFe.qFilialCOMPLEMENTO_END.AsString;
  TRLLabel(FindComponent('rllbCep'+IntToStr(Posicao))).Caption      := 'CEP: ' + fDMNFe.qFilialCEP.AsString + ' - ' + fDMNFe.qFilialBAIRRO.AsString;
  TRLLabel(FindComponent('rllbCidade'+IntToStr(Posicao))).Caption   := fDMNFe.qCidadeNOME.AsString + ' - ' + fDMNFe.qCidadeUF.AsString;
  TRLLabel(FindComponent('rllbFone'+IntToStr(Posicao))).Caption     := fDMNFe.qFilialDDD1.AsString + ' ' + fDMNFe.qFilialFONE.AsString;
  TRLLabel(FindComponent('rllbInscrEstadual'+IntToStr(Posicao))).Caption := fDMNFe.qFilialINSCR_EST.AsString;
  TRLLabel(FindComponent('rllbCNPJ'+IntToStr(Posicao))).Caption     := fDMNFe.qFilialCNPJ_CPF.AsString;
end;

procedure TfRelNotaEnt.prc_Mudar_DataSet;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMNFe);
end;

procedure TfRelNotaEnt.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMNFe);
end;

procedure TfRelNotaEnt.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not(fDMNFe.mParcelaNFe.IsEmpty);
end;

procedure TfRelNotaEnt.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel38.Caption := FormatFloat('###,###,##0.00',fDMNFe.cdsNotaFiscalVLR_ITENS.AsFloat);
  RLLabel44.Caption := FormatFloat('###,###,##0.00',fDMNFe.cdsNotaFiscalVLR_NOTA.AsFloat);
  RLLabel53.Caption := FormatFloat('###,###,##0.00',fDMNFe.cdsNotaFiscalVLR_ICMSSUBST.AsFloat);
  RLLabel52.Caption := FormatFloat('###,###,##0.00',fDMNFe.cdsNotaFiscalBASE_ICMSSUBST.AsFloat);
  RLLabel51.Caption := FormatFloat('###,###,##0.00',fDMNFe.cdsNotaFiscalVLR_ICMS.AsFloat);
  RLLabel50.Caption := FormatFloat('###,###,##0.00',fDMNFe.cdsNotaFiscalBASE_ICMS.AsFloat);
  RLLabel49.Caption := FormatFloat('###,###,##0.00',fDMNFe.cdsNotaFiscalVLR_FRETE.AsFloat);
  RLLabel48.Caption := FormatFloat('###,###,##0.00',fDMNFe.cdsNotaFiscalVLR_SEGURO.AsFloat);
  RLLabel47.Caption := FormatFloat('###,###,##0.00',fDMNFe.cdsNotaFiscalVLR_DESCONTO.AsFloat);
  RLLabel46.Caption := FormatFloat('###,###,##0.00',fDMNFe.cdsNotaFiscalVLR_OUTRASDESP.AsFloat);
  RLLabel45.Caption := FormatFloat('###,###,##0.00',fDMNFe.cdsNotaFiscalVLR_IPI.AsFloat);
end;

end.
