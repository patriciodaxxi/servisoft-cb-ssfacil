unit uRelOSSimples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCadOrdemServico,
  rlTypes, rsDBUtils;

type
  TfRelOSSimples = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    lbTipo: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText15: TRLDBText;
    RLDraw1: TRLDraw;
    RLDBText16: TRLDBText;
    RLLabel1: TRLLabel;
    lbEndFilial: TRLLabel;
    lbFone: TRLLabel;
    RLBand3: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    lbVlrEntrada: TRLLabel;
    lbVlrTotal: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel10: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText13: TRLDBText;
    lbNumOS: TRLLabel;
    RLImage1: TRLImage;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBMemo3: TRLDBMemo;
    RLBand5: TRLBand;
    RLDBText8: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel18: TRLLabel;
    lbEndCliente: TRLLabel;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vVlrEntr, vVlrTot: Currency;
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
  end;

var
  fRelOSSimples: TfRelOSSimples;

implementation

uses uUtilPadrao;

{$R *.dfm}

procedure TfRelOSSimples.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  i: Byte;
begin
  lbEndFilial.Caption := fDMCadOrdemServico.cdsFilialENDERECO.AsString + ', '+
                         fDMCadOrdemServico.cdsFilialNUM_END.AsString + ' - ';
  if fDMCadOrdemServico.cdsFilialCOMPLEMENTO_END.AsString <> '' then
    lbEndFilial.Caption := lbEndFilial.Caption + fDMCadOrdemServico.cdsFilialCOMPLEMENTO_END.AsString + ' - ';
  lbEndFilial.Caption := lbEndFilial.Caption + fDMCadOrdemServico.cdsFilialCIDADE.AsString + ' - ' +
                         fDMCadOrdemServico.cdsFilialUF.AsString;
  lbFone.Caption := '(' + fDMCadOrdemServico.cdsFilialDDD1.AsString + ') '+
                    fDMCadOrdemServico.cdsFilialFONE.AsString + ' - '+
//                    fDMCadOrdemServico.cdsFilialEMAIL.AsString + ' - ' +
                    fDMCadOrdemServico.cdsFilialHOMEPAGE.AsString;

  lbNumOS.Caption := fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsString;
  for i := 1 to 5 - Length(fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsString) do
    lbNumOS.Caption := '0' + lbNumOS.Caption;

  case fDMCadOrdemServico.cdsOrdemServicoTP_ORCAMENTO.AsInteger of
    1: lbTipo.Caption := 'ORDEM DE SERVIÇO:';
    2: lbTipo.Caption := 'ORÇAMENTO:';
    3: lbTipo.Caption := 'ORDEM DE SERVIÇO:';
  end;

  vVlrEntr := fDMCadOrdemServico.cdsOrdemServicoVLR_ENTRADA.AsCurrency;
  vVlrTot  := fDMCadOrdemServico.cdsOrdemServicoVLR_TOTAL.AsCurrency;

  if not (fDMCadOrdemServico.cdsFilialENDLOGO.IsNull) then
    if FileExists(fDMCadOrdemServico.cdsFilialENDLOGO.AsString) then
      RLImage1.Picture.LoadFromFile(fDMCadOrdemServico.cdsFilialENDLOGO.AsString);

  lbEndCliente.Caption := fDMCadOrdemServico.cdsOrdemServicoENDERECO.AsString + ', ' +
                          fDMCadOrdemServico.cdsOrdemServicoNUM_END.AsString + ' - ' +
                          fDMCadOrdemServico.cdsOrdemServicoCOMPLEMENTO_END.AsString + ' - ' +
                          fDMCadOrdemServico.cdsOrdemServicoCIDADE.AsString + '/' +
                          fDMCadOrdemServico.cdsOrdemServicoUF.AsString;
end;

procedure TfRelOSSimples.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lbVlrEntrada.Caption := FormatFloat('0.00',vVlrEntr);
  lbVlrTotal.Caption   := FormatFloat('0.00',vVlrTot);
end;

procedure TfRelOSSimples.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadOrdemServico);
//  RLReport1. fDMCadOrdemServico.cdsOSParametrosIMPRIMIR_VIAS.AsInteger;

end;

procedure TfRelOSSimples.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fDMCadOrdemServico.cdsOrdemServico_SimplesDESCRICAO.AsString <> '';
end;

end.
