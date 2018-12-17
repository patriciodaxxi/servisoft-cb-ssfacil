unit uRelOSSimplesB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCadOrdemServico,
  rsDBUtils, rlTypes;

type
  TfRelOSSimplesB = class(TForm)
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
    RLLabel15: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText13: TRLDBText;
    lbNumOS: TRLLabel;
    RLImage1: TRLImage;
    RLDBMemo3: TRLDBMemo;
    RLBand5: TRLBand;
    RLDBText8: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLLabel18: TRLLabel;
    lbUsuario: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel20: TRLLabel;
    lbEndCliente: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel22: TRLLabel;
    RLLabel24: TRLLabel;
    lbCEP: TRLLabel;
    RLLabel25: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel23: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel30: TRLLabel;
    lbAgente1: TRLLabel;
    lbAgente2: TRLLabel;
    lbAgente3: TRLLabel;
    lbAgente4: TRLLabel;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLDraw2: TRLDraw;
    lbConselho: TRLLabel;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vVlrEntr, vVlrTot: Currency;
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
  end;

var
  fRelOSSimplesB: TfRelOSSimplesB;

implementation

uses uUtilPadrao;

{$R *.dfm}

procedure TfRelOSSimplesB.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  i: Byte;
begin
  lbEndFilial.Caption := fDMCadOrdemServico.cdsFilialENDERECO.AsString + ', '+
                         fDMCadOrdemServico.cdsFilialNUM_END.AsString + ' - ';
  if fDMCadOrdemServico.cdsFilialCOMPLEMENTO_END.AsString <> '' then
    lbEndFilial.Caption := lbEndFilial.Caption + fDMCadOrdemServico.cdsFilialCOMPLEMENTO_END.AsString + ' - ';
  lbEndFilial.Caption := lbEndFilial.Caption + fDMCadOrdemServico.cdsFilialCIDADE.AsString +
                         ' / ' + fDMCadOrdemServico.cdsFilialUF.AsString;
  lbFone.Caption := '(' + fDMCadOrdemServico.cdsFilialDDD1.AsString + ') '+
                    fDMCadOrdemServico.cdsFilialFONE.AsString + ' - '+
//                    fDMCadOrdemServico.cdsFilialEMAIL.AsString + ' - ' +
                    fDMCadOrdemServico.cdsFilialHOMEPAGE.AsString;
  lbUsuario.Caption := vUsuario;

  lbNumOS.Caption := fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsString;
  for i := 1 to 5 - Length(fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsString) do
    lbNumOS.Caption := '0' + lbNumOS.Caption;

  case fDMCadOrdemServico.cdsOrdemServicoTP_ORCAMENTO.AsInteger of
    1: lbTipo.Caption := 'ORDEM DE SERVIÇO:';
    2: lbTipo.Caption := 'ORÇAMENTO:';
  end;

  vVlrEntr := fDMCadOrdemServico.cdsOrdemServicoVLR_ENTRADA.AsCurrency;
  vVlrTot  := fDMCadOrdemServico.cdsOrdemServicoVLR_TOTAL.AsCurrency;

  if not (fDMCadOrdemServico.cdsFilialENDLOGO.IsNull) then
    if FileExists(fDMCadOrdemServico.cdsFilialENDLOGO.AsString) then
      RLImage1.Picture.LoadFromFile(fDMCadOrdemServico.cdsFilialENDLOGO.AsString);

  fDMCadOrdemServico.cdsCliente.IndexFieldNames := 'CODIGO';
  if fDMCadOrdemServico.cdsCliente.FindKey([fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger]) then
  begin
    lbEndCliente.Caption := fDMCadOrdemServico.cdsClienteENDERECO.AsString + ', ' +
                            fDMCadOrdemServico.cdsClienteNUM_END.AsString + ' - ';
    if fDMCadOrdemServico.cdsClienteCOMPLEMENTO_END.AsString <> '' then
      lbEndCliente.Caption := lbEndCliente.Caption +
                              fDMCadOrdemServico.cdsClienteCOMPLEMENTO_END.AsString + ' - ';
    lbEndCliente.Caption := lbEndCliente.Caption +
                            fDMCadOrdemServico.cdsClienteCIDADE.AsString;
    lbCEP.Caption        := fDMCadOrdemServico.cdsClienteCEP.AsString + ' / ' + fDMCadOrdemServico.cdsClienteUF.AsString;
  end;
end;

procedure TfRelOSSimplesB.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i: Byte;
begin
  lbVlrEntrada.Caption := FormatFloat('0.00',vVlrEntr);
  lbVlrTotal.Caption   := FormatFloat('0.00',vVlrTot);

  fDMCadOrdemServico.cdsFuncionario.IndexFieldNames := 'CODIGO';
  for i := 1 to 4 do
  begin
    TRLLabel(FindComponent('lbAgente' + IntToStr(i))).Caption := '';
    if fDMCadOrdemServico.cdsOrdemServico.FieldByName('AGENTE' + IntToStr(i)).AsString <> '' then
    begin
      fDMCadOrdemServico.cdsFuncionario.FindKey([fDMCadOrdemServico.cdsOrdemServico.FieldByName('AGENTE' + IntToStr(i)).AsInteger]);
      TRLLabel(FindComponent('lbAgente' + IntToStr(i))).Caption := fDMCadOrdemServico.cdsFuncionarioNOME.AsString;
    end;
  end;
end;

procedure TfRelOSSimplesB.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadOrdemServico);

  if fDMCadOrdemServico.qParametrosIMP_MEIA_FOLHA_PED.AsString = 'S' then
  begin
    RLReport1.PageSetup.PaperSize   := fpCustom;    //rlTypes
    RLReport1.PageSetup.PaperHeight := 148;
    RLReport1.PageSetup.PaperWidth  := 210;
  end
  else
    RLReport1.PageSetup.PaperSize   := fpA4;
end;

procedure TfRelOSSimplesB.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lbConselho.Caption := fDMCadOrdemServico.cdsFuncionarioCONSELHO.AsString + ': ' +
                        fDMCadOrdemServico.cdsFuncionarioNUM_CONSELHO.AsString;
end;

end.
