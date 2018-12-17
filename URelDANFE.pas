unit URelDanfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, DB, RLBarcode, jpeg,
  UDMCadNotaFiscal, UDMNFe;

type
  TfRelDANFE = class(TForm)
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
    RLImage1: TRLImage;
    RLLabel67: TRLLabel;
    RLDraw49: TRLDraw;
    RLLabel68: TRLLabel;
    rlbcChaveAcesso1: TRLBarcode;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
    rllbSaidaEntrada1: TRLLabel;
    RLDraw50: TRLDraw;
    rllbEnd1: TRLLabel;
    rllbCidade1: TRLLabel;
    rllbFone1: TRLLabel;
    rllbCep1: TRLLabel;
    rllbHome1: TRLLabel;
    RLLabel74: TRLLabel;
    RLDBText49: TRLDBText;
    rllbPagina: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel75: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLDraw51: TRLDraw;
    rllbNatOperacao1: TRLLabel;
    RLLabel76: TRLLabel;
    RLDraw52: TRLDraw;
    RLLabel77: TRLLabel;
    RLDraw53: TRLDraw;
    RLLabel78: TRLLabel;
    RLDraw54: TRLDraw;
    RLLabel79: TRLLabel;
    RLDraw55: TRLDraw;
    RLLabel23: TRLLabel;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    rllbNumNota1: TRLLabel;
    rllbVecto1: TRLLabel;
    rllbValor1: TRLLabel;
    rllbNumNota2: TRLLabel;
    rllbVecto2: TRLLabel;
    rllbValor2: TRLLabel;
    rllbNumNota3: TRLLabel;
    rllbVecto3: TRLLabel;
    rllbValor3: TRLLabel;
    rllbNumNota4: TRLLabel;
    rllbVecto4: TRLLabel;
    rllbValor4: TRLLabel;
    rllbNumNota5: TRLLabel;
    rllbVecto5: TRLLabel;
    rllbValor5: TRLLabel;
    rllbNumNota6: TRLLabel;
    rllbVecto6: TRLLabel;
    rllbValor6: TRLLabel;
    rllbNumNota7: TRLLabel;
    rllbVecto7: TRLLabel;
    rllbValor7: TRLLabel;
    rllbNumNota8: TRLLabel;
    rllbVecto8: TRLLabel;
    rllbValor8: TRLLabel;
    rllbNumNota9: TRLLabel;
    rllbVecto9: TRLLabel;
    rllbValor9: TRLLabel;
    RLBand2: TRLBand;
    RLLabel12: TRLLabel;
    RLDraw20: TRLDraw;
    RLLabel32: TRLLabel;
    RLDBText24: TRLDBText;
    RLDraw26: TRLDraw;
    RLLabel33: TRLLabel;
    RLDBText25: TRLDBText;
    RLDraw27: TRLDraw;
    RLLabel34: TRLLabel;
    RLDraw28: TRLDraw;
    RLLabel36: TRLLabel;
    RLDraw30: TRLDraw;
    RLLabel37: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel35: TRLLabel;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDraw6: TRLDraw;
    RLDraw29: TRLDraw;
    RLDBText30: TRLDBText;
    RLLabel40: TRLLabel;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDBText29: TRLDBText;
    RLLabel42: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel16: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw34: TRLDraw;
    RLLabel43: TRLLabel;
    RLDBText32: TRLDBText;
    RLDraw36: TRLDraw;
    RLDBText34: TRLDBText;
    RLLabel45: TRLLabel;
    RLDraw37: TRLDraw;
    RLLabel46: TRLLabel;
    RLDraw38: TRLDraw;
    RLLabel47: TRLLabel;
    RLDraw40: TRLDraw;
    RLLabel49: TRLLabel;
    RLDraw41: TRLDraw;
    RLLabel50: TRLLabel;
    RLDraw42: TRLDraw;
    RLDBText39: TRLDBText;
    RLLabel53: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel55: TRLLabel;
    RLDBText33: TRLDBText;
    RLDraw35: TRLDraw;
    RLLabel56: TRLLabel;
    RLDBText40: TRLDBText;
    RLDraw39: TRLDraw;
    RLLabel48: TRLLabel;
    RLDBText35: TRLDBText;
    RLDraw43: TRLDraw;
    RLLabel51: TRLLabel;
    RLDBText38: TRLDBText;
    RLDraw44: TRLDraw;
    RLLabel52: TRLLabel;
    RLDBText41: TRLDBText;
    RLDraw45: TRLDraw;
    RLLabel57: TRLLabel;
    RLDBText42: TRLDBText;
    RLDraw46: TRLDraw;
    RLLabel58: TRLLabel;
    RLDBText43: TRLDBText;
    RLDraw47: TRLDraw;
    RLLabel59: TRLLabel;
    RLDBText44: TRLDBText;
    RLDraw48: TRLDraw;
    RLLabel60: TRLLabel;
    RLDBText45: TRLDBText;
    RLLabel17: TRLLabel;
    RLDraw66: TRLDraw;
    RLLabel18: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel20: TRLLabel;
    RLDraw67: TRLDraw;
    RLLabel41: TRLLabel;
    RLDraw68: TRLDraw;
    RLLabel61: TRLLabel;
    RLDraw69: TRLDraw;
    RLLabel62: TRLLabel;
    RLDraw70: TRLDraw;
    RLLabel63: TRLLabel;
    rlmNomeProduto: TRLMemo;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand8: TRLBand;
    RLDraw57: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText53: TRLDBText;
    RLDBText54: TRLDBText;
    RLLabel80: TRLLabel;
    RLLabel81: TRLLabel;
    RLDraw56: TRLDraw;
    RLLabel82: TRLLabel;
    RLDraw58: TRLDraw;
    RLDBText56: TRLDBText;
    RLLabel83: TRLLabel;
    RLDraw59: TRLDraw;
    RLLabel84: TRLLabel;
    RLDraw60: TRLDraw;
    RLDBText57: TRLDBText;
    RLLabel85: TRLLabel;
    RLDraw61: TRLDraw;
    RLDBText58: TRLDBText;
    RLLabel86: TRLLabel;
    RLDraw62: TRLDraw;
    RLLabel87: TRLLabel;
    RLDraw63: TRLDraw;
    RLLabel88: TRLLabel;
    rllbFoneCliente: TRLLabel;
    RLDraw64: TRLDraw;
    RLLabel89: TRLLabel;
    RLDBText59: TRLDBText;
    RLDraw65: TRLDraw;
    RLDBText60: TRLDBText;
    RLLabel90: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel19: TRLLabel;
    RLBand9: TRLBand;
    RLDraw78: TRLDraw;
    RLDraw79: TRLDraw;
    RLLabel64: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel91: TRLLabel;
    RLLabel92: TRLLabel;
    RLLabel94: TRLLabel;
    RLDraw80: TRLDraw;
    RLDraw81: TRLDraw;
    RLLabel95: TRLLabel;
    RLLabel96: TRLLabel;
    RLDraw82: TRLDraw;
    RLLabel97: TRLLabel;
    RLDBText19: TRLDBText;
    RLDraw83: TRLDraw;
    rllbTextoA1: TRLLabel;
    rllbTextoB1: TRLLabel;
    RLDraw84: TRLDraw;
    rllbTextoProt1: TRLLabel;
    rllbProtocolo1: TRLLabel;
    rlbcContingencia1: TRLBarcode;
    RLBand10: TRLBand;
    RLLabel101: TRLLabel;
    RLDraw85: TRLDraw;
    rllbInscrEstadual1: TRLLabel;
    rllbCNPJ1: TRLLabel;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand11: TRLBand;
    RLDraw16: TRLDraw;
    rlVlrTotalItens: TRLLabel;
    rlVlrTotalNota: TRLLabel;
    rllbChaveAcesso1: TRLLabel;
    RLBand6: TRLBand;
    RLDraw76: TRLDraw;
    RLLabel65: TRLLabel;
    RLDraw77: TRLDraw;
    RLLabel66: TRLLabel;
    rlmDadosAdicionais: TRLMemo;
    RLBand5: TRLBand;
    RLLabel38: TRLLabel;
    RLDraw31: TRLDraw;
    RLBand12: TRLBand;
    RLDraw17: TRLDraw;
    RLImage2: TRLImage;
    RLLabel39: TRLLabel;
    RLDraw18: TRLDraw;
    RLLabel54: TRLLabel;
    rlbcChaveAcesso2: TRLBarcode;
    RLLabel102: TRLLabel;
    RLLabel103: TRLLabel;
    RLLabel104: TRLLabel;
    RLLabel105: TRLLabel;
    RLLabel106: TRLLabel;
    rllbSaidaEntrada2: TRLLabel;
    rllbEnd2: TRLLabel;
    rllbCidade2: TRLLabel;
    rllbFone2: TRLLabel;
    rllbCep2: TRLLabel;
    rllbHome2: TRLLabel;
    RLLabel113: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel114: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel115: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLDraw19: TRLDraw;
    rllbNatOperacao2: TRLLabel;
    RLLabel117: TRLLabel;
    RLDraw21: TRLDraw;
    RLLabel118: TRLLabel;
    RLDraw22: TRLDraw;
    RLLabel119: TRLLabel;
    RLDraw23: TRLDraw;
    RLLabel120: TRLLabel;
    RLDraw24: TRLDraw;
    RLLabel121: TRLLabel;
    RLLabel122: TRLLabel;
    RLDBText23: TRLDBText;
    RLDraw25: TRLDraw;
    rllbTextoA2: TRLLabel;
    rllbTextoB2: TRLLabel;
    RLDraw71: TRLDraw;
    rllbTextoProt2: TRLLabel;
    rllbProtocolo2: TRLLabel;
    rlbcContingencia2: TRLBarcode;
    rllbInscrEstadual2: TRLLabel;
    rllbCNPJ2: TRLLabel;
    rllbChaveAcesso2: TRLLabel;
    rllbNomeCliente: TRLLabel;
    rllbNumNota10: TRLLabel;
    rllbVecto10: TRLLabel;
    rllbValor10: TRLLabel;
    rllbNumNota11: TRLLabel;
    rllbVecto11: TRLLabel;
    rllbValor11: TRLLabel;
    rllbNumNota12: TRLLabel;
    rllbVecto12: TRLLabel;
    rllbValor12: TRLLabel;
    rllbEmpresa1: TRLLabel;
    rllbEmpresa2: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLBand13: TRLBand;
    rlmNomeProduto2: TRLMemo;
    RLDBText37: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText51: TRLDBText;
    RLDBText52: TRLDBText;
    RLDBText55: TRLDBText;
    RLDBText61: TRLDBText;
    RLDBText62: TRLDBText;
    RLDBText63: TRLDBText;
    RLDBText64: TRLDBText;
    RLDBMemo2: TRLDBMemo;
    RLBand14: TRLBand;
    RLDraw72: TRLDraw;
    RLDraw73: TRLDraw;
    RLDraw74: TRLDraw;
    RLDraw75: TRLDraw;
    RLDraw86: TRLDraw;
    RLDraw87: TRLDraw;
    RLDraw88: TRLDraw;
    RLDraw89: TRLDraw;
    RLDraw90: TRLDraw;
    RLDraw91: TRLDraw;
    RLLabel93: TRLLabel;
    RLLabel98: TRLLabel;
    RLLabel99: TRLLabel;
    RLLabel100: TRLLabel;
    RLLabel107: TRLLabel;
    RLLabel108: TRLLabel;
    RLLabel109: TRLLabel;
    RLLabel110: TRLLabel;
    RLLabel111: TRLLabel;
    RLLabel112: TRLLabel;
    RLDraw92: TRLDraw;
    RLLabel116: TRLLabel;
    RLDraw93: TRLDraw;
    RLLabel123: TRLLabel;
    RLDraw94: TRLDraw;
    RLLabel124: TRLLabel;
    RLDraw95: TRLDraw;
    RLLabel125: TRLLabel;
    RLDraw96: TRLDraw;
    RLLabel126: TRLLabel;
    RLLabel127: TRLLabel;
    RLLabel128: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand13BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand14BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }

    procedure Monta_Faturas(Prazo: String; Posicao: Integer);

    procedure Monta_Cabecalho(Posicao: Integer);
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    fDMNFe: TDMNFE;

    vAmbiente: String;

    procedure prc_Mudar_DataSet;

  end;

var
  fRelDANFE: TfRelDANFE;

implementation

uses rsDBUtils, SendMailOptions;

{$R *.dfm}

procedure TfRelDANFE.Monta_Faturas(Prazo: String; Posicao: Integer);
begin
  if Prazo = 'OM' then
  begin
    fDMNFe.mParcelaNFe.First;
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(Posicao))).Visible := True;
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(Posicao))).Caption := 'Total de parcelas ' + IntToStr(fDMNFe.mParcelaNFe.RecordCount);
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(4))).Visible       := True;
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(4))).Caption       := 'Primeiro Vencimento ' + fDMNFe.mParcelaNFeDtVencimento.AsString
                                                                      + ' no valor de R$ ' + FormatFloat('0.00',fDMNFe.mParcelaNFeValor.AsFloat);
  end
  else
  if Prazo = 'OT' then
  begin
    fDMNFe.mParcelaNFe.First;
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(Posicao))).Visible := True;
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(Posicao))).Caption := 'Total de parcelas ' + IntToStr(fDMNFe.mParcelaNFe.RecordCount);
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(4))).Visible       := True;
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(4))).Caption       := 'Primeiro Vencimento ' + fDMNFe.mParcelaNFeDtVencimento.AsString
                                                                      + ' no valor de R$ ' + FormatFloat('0.00',fDMNFe.mParcelaNFeValor.AsFloat);
  end
  else
  if Prazo = 'M' then
  begin
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(Posicao))).Visible := True;
    TRLLabel(FindComponent('rllbVecto'+IntToStr(Posicao))).Visible   := True;
    TRLLabel(FindComponent('rllbValor'+IntToStr(Posicao))).Visible   := True;
    if fDMNFe.cdsNotaFiscalTIPO_PRAZO.AsString = 'V' then
      TRLLabel(FindComponent('rllbNumNota'+IntToStr(Posicao))).Caption := fDMNFe.mParcelaNFeNumNota.AsString
    else
    begin
      TRLLabel(FindComponent('rllbNumNota'+IntToStr(Posicao))).Caption := fDMNFe.mParcelaNFeNumNota.AsString + '/' + fDMNFe.mParcelaNFeParcela.AsString;
      if fDMNFe.mParcelaNFeParcela.AsInteger < 1 then
        TRLLabel(FindComponent('rllbNumNota'+IntToStr(Posicao))).Caption := TRLLabel(FindComponent('rllbNumNota'+IntToStr(Posicao))).Caption + 'ENT';
    end;
    TRLLabel(FindComponent('rllbVecto'+IntToStr(Posicao))).Caption   := fDMNFe.mParcelaNFeDtVencimento.AsString;
    TRLLabel(FindComponent('rllbValor'+IntToStr(Posicao))).Caption   := FormatFloat('###,###,##0.00',fDMNFe.mParcelaNFeValor.AsFloat);
  end
  else
  if Prazo = 'V' then
  begin
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(Posicao))).Visible := True;
    TRLLabel(FindComponent('rllbVecto'+IntToStr(Posicao))).Visible   := True;
    TRLLabel(FindComponent('rllbValor'+IntToStr(Posicao))).Visible   := True;
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(Posicao))).Caption := fDMNFe.cdsNotaFiscalNUMNOTA.AsString;
    TRLLabel(FindComponent('rllbVecto'+IntToStr(Posicao))).Caption   := 'A Vista';
    TRLLabel(FindComponent('rllbValor'+IntToStr(Posicao))).Caption   := FormatFloat('###,###,##0.00',fDMNFe.cdsNotaFiscalVLR_DUPLICATA.AsFloat);
  end
  else
  if Prazo = 'PE' then
  begin
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(Posicao))).Visible := True;
    TRLLabel(FindComponent('rllbVecto'+IntToStr(Posicao))).Visible   := True;
    TRLLabel(FindComponent('rllbValor'+IntToStr(Posicao))).Visible   := True;
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(Posicao))).Caption := fDMNFe.cdsNotaFiscalNUMNOTA.AsString + '/ENT';
    TRLLabel(FindComponent('rllbVecto'+IntToStr(Posicao))).Caption   := fDMNFe.cdsNotaFiscalDTINICIO_DUPLICATA.AsString;
    TRLLabel(FindComponent('rllbValor'+IntToStr(Posicao))).Caption   := FormatFloat('###,###,##0.00',fDMNFe.cdsNotaFiscalVLR_ENTRADA.AsFloat);
  end;
end;

procedure TfRelDANFE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelDANFE.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMCadNotaFiscal.cdsParametrosIMP_NFE_REF_PROD.AsString <> 'R');
  if not PrintIt then
    exit;
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
  RLDBText12.Height := RLBand4.Height;
  RLDBText13.Height := RLBand4.Height;
  RLDBText15.Height := RLBand4.Height;
  RLDBText16.Height := RLBand4.Height;
  RLDBText17.Height := RLBand4.Height;
end;

procedure TfRelDANFE.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMNFe.qParametrosTIPOLOGONFE.AsString <> 'R');
  if not PrintIt then
    exit;
  Monta_Cabecalho(1);
end;

procedure TfRelDANFE.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i: Integer;
begin
  PrintIt := (fDMNFe.cdsNotaFiscalTIPO_PRAZO.AsString <> 'N');

  for i := 1 to 12 do
  begin
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(i))).Visible := False;
    TRLLabel(FindComponent('rllbVecto'+IntToStr(i))).Visible   := False;
    TRLLabel(FindComponent('rllbValor'+IntToStr(i))).Visible   := False;
    TRLLabel(FindComponent('rllbNumNota'+IntToStr(i))).Caption := '';
    TRLLabel(FindComponent('rllbVecto'+IntToStr(i))).Caption   := '';
    TRLLabel(FindComponent('rllbValor'+IntToStr(i))).Caption   := '';
  end;

  if not PrintIt then
    exit;

  i := 1;
  if not fDMNFe.mParcelaNFe.IsEmpty then
  begin
    i := 0;
    if fDMNFe.mParcelaNFe.RecordCount > 12 then
      Monta_Faturas('OM',1)
    else
    begin
      fDMNFe.mParcelaNFe.First;
      while not fDMNFe.mParcelaNFe.Eof do
      begin
        inc(i);
        Monta_Faturas('M',i);
        fDMNFe.mParcelaNFe.Next;
      end;
    end;
  end
  else
  if fDMNFe.cdsNotaFiscalTIPO_PRAZO.AsString = 'V' then
    Monta_Faturas('V',1);
  RLBand1.Height := 29;
  if ((i > 3) and (i < 7)) or (fDMNFe.mParcelaNFe.RecordCount > 12) then
    RLBand1.Height := 41
  else
  if (i > 6) and (i < 10) then
    RLBand1.Height := 54
  else
  if i > 9 then
    RLBand1.Height := 60;
end;

procedure TfRelDANFE.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vVlrAux1, vVlrAux2: Real;
  vTexto : String;  
begin
  vVlrAux1 := fDMNFe.cdsNotaFiscalVLR_ITENS.AsFloat + fDMNFe.cdsNotaFiscalVLR_DESCONTO.AsFloat;
  vVlrAux2 := fDMNFe.cdsNotaFiscalVLR_NOTA.AsFloat;
  if fDMNFe.qParametrosSOMARNOPROD_FRETE.AsString = 'S' then
    vVlrAux1 := vVlrAux1 + fDMNFe.cdsNotaFiscalVLR_FRETE.AsFloat;
  if fDMNFe.qParametrosSOMARNOPROD_OUTRASDESP.AsString = 'S' then
    vVlrAux1 := vVlrAux1 + fDMNFe.cdsNotaFiscalVLR_OUTRASDESP.AsFloat;
  if fDMNFe.qParametrosSOMARNOPROD_SEGURO.AsString = 'S' then
    vVlrAux1 := vVlrAux1 + fDMNFe.cdsNotaFiscalVLR_SEGURO.AsFloat;
    
  rlVlrTotalItens.Caption := FormatFloat('###,###,###,##0.00',vVlrAux1);
  rlVlrTotalNota.Caption  := FormatFloat('###,###,###,##0.00',vVlrAux2);
  //NFe 2.00
  RLLabel17.Caption := fDMNFe.cdsNotaFiscalTIPO_FRETE.AsString;
  if fDMNFe.cdsNotaFiscalTIPO_FRETE.AsString = '1' then
    RLLabel17.Caption := RLLabel17.Caption + ' - Emitente'
  else
  if fDMNFe.cdsNotaFiscalTIPO_FRETE.AsString = '2' then
    RLLabel17.Caption := RLLabel17.Caption + ' - Destinatário'
  else
  if fDMNFe.cdsNotaFiscalTIPO_FRETE.AsString = '3' then
    RLLabel17.Caption := RLLabel17.Caption + ' - Terceiros'
  else
  if fDMNFe.cdsNotaFiscalTIPO_FRETE.AsString = '9' then
    RLLabel17.Caption := RLLabel17.Caption + ' - Sem Frete';

  vTexto := fDMNFe.cdsNotaFiscalENDERECO_TRANSP.AsString + ',' + fDMNFe.cdsNotaFiscalNUM_END_TRANSP.AsString;
  if trim(fDMNFe.cdsNotaFiscalCOMPLEMENTO_END_TRANSP.AsString) <> '' then
    vTexto := vTexto + ' ' + fDMNFe.cdsNotaFiscalCOMPLEMENTO_END_TRANSP.AsString;
  RLLabel128.Caption := vTexto;
end;

procedure TfRelDANFE.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rlmDadosAdicionais.Lines.Clear;
  rlmDadosAdicionais.Lines.Text := fDMNFe.mDadosAdicionaisNFeObs.Value;

  if rlmDadosAdicionais.Height < 43 then
    rlmDadosAdicionais.Height := 43;
end;

procedure TfRelDANFE.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbFoneCliente.Caption := '';
  if fDMNFe.cdsNotaFiscalTELEFONE1_CLI.AsString <> '' then
    rllbFoneCliente.Caption := fDMNFe.cdsNotaFiscalDDDFONE1_CLI.AsString + ' ' + fDMNFe.cdsNotaFiscalTELEFONE1_CLI.AsString
  else
  if fDMNFe.cdsNotaFiscalTELEFONE2_CLI.AsString <> '' then
    rllbFoneCliente.Caption := fDMNFe.cdsNotaFiscalDDDFONE2_CLI.AsString + ' ' + fDMNFe.cdsNotaFiscalTELEFONE2_CLI.AsString;
  if fDMNFe.cdsNotaFiscalFAX_CLI.AsString <> '' then
    rllbFoneCliente.Caption := rllbFoneCliente.Caption + ' / ' + fDMNFe.cdsNotaFiscalDDDFAX_CLI.AsString + ' ' + fDMNFe.cdsNotaFiscalFAX_CLI.AsString;

  RLLabel13.Visible := (fDMNFe.cdsNotaFiscalTIPO_PRAZO.AsString <> 'N');
  if vAmbiente = '2' then
    rllbNomeCliente.Caption := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'
  else
    rllbNomeCliente.Caption := fDMNFe.cdsNotaFiscalNOME_CLI.AsString;
end;

procedure TfRelDANFE.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (RLReport1.PageNumber < 2);
  RLLabel94.Caption := 'Recebemos de ' + fDMNFe.qFilialNOME.AsString +  ' os produtos constantes da Nota Fiscal ao lado';
  RLLabel96.Caption := 'Identificação e Assinatura do Recebedor    (' + fDMNFe.cdsNotaFiscalNOME_CLI.AsString + ')';
end;

procedure TfRelDANFE.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  PrintIt := ((Copy(fDMNFe.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '2') or (Copy(fDMNFe.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '5')
              or (Trim(fDMNFe.cdsNotaFiscalNFECHAVEACESSO.AsString) = '')
              or ((Trim(fDMNFe.cdsNotaFiscalNFECHAVEACESSO.AsString) <> '') and (Trim(fDMNFe.cdsNotaFiscalNFEPROTOCOLO.AsString) = ''))
              or (fDMNFe.cdsNotaFiscalNFEPROTOCOLO_CANCELADA.AsString <> '') or (vAmbiente = '2')
              or (fDMNFe.cdsNotaFiscalNFEDENEGADA.AsString = 'S'));
  if fDMNFe.cdsNotaFiscalNFEDENEGADA.AsString = 'S' then
    RLLabel101.Caption := 'NOTA  DENEGADA - ' + fDMNFe.cdsNotaFiscalMOTIVO_DENEGADA.AsString
  else
  if Trim(fDMNFe.cdsNotaFiscalNFEPROTOCOLO_CANCELADA.AsString) <> '' then
    RLLabel101.Caption := ' N O T A   C A N C E L A D A '
  else
  if vAmbiente = '2' then
    RLLabel101.Caption := 'DANFE MODO TESTE (SEM VALOR FISCAL)'
  else
  if Trim(fDMNFe.cdsNotaFiscalNFECHAVEACESSO.AsString) = '' then
    RLLabel101.Caption := 'DANFE MODO TESTE (SEM VALOR FISCAL)'
  else
  if Trim(fDMNFe.cdsNotaFiscalNFEPROTOCOLO.AsString) = '' then
    RLLabel101.Caption := 'NOTA FALTANDO O PROTOCOLO, REGULARIZAR ANTES DE ENVIAR AO CLIENTE'
  else
  if (Copy(fDMNFe.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '2') or (Copy(fDMNFe.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '3') or (Copy(fDMNFe.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '5') then
    RLLabel101.Caption := 'DANFE em Contingência - Impresso em decorrência de problemas técnicos';
end;

procedure TfRelDANFE.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMCadNotaFiscal.cdsParametrosIMP_NFE_REF_PROD.AsString <> 'R');
  if not PrintIt then
    exit;
  if (fDMNFe.qFilialID_REGIME_TRIB.AsInteger = 1) or (fDMNFe.qFilialID_REGIME_TRIB.AsInteger = 2) then
    RLLabel63.Caption := 'CSOSN'
  else
    RLLabel63.Caption := 'CST';
end;

procedure TfRelDANFE.Monta_Cabecalho(Posicao: Integer);
var
  vTexto: String;
  i: Integer;
begin
  TRLBarcode(FindComponent('rlbcChaveAcesso'+IntToStr(posicao))).Caption  := fDMNFe.cdsNotaFiscalNFECHAVEACESSO.AsString;
  TRLBarcode(FindComponent('rlbcContingencia'+IntToStr(posicao))).Caption := '';

  if fDMNFe.cdsNotaFiscalTIPO_NOTA.AsString = 'S' then
    TRLLabel(FindComponent('rllbSaidaEntrada'+IntToStr(Posicao))).Caption := '1'
  else
    TRLLabel(FindComponent('rllbSaidaEntrada'+IntToStr(Posicao))).Caption := '0';

  TRLImage(FindComponent('RLImage'+IntToStr(Posicao))).Stretch := (fDMNFe.qParametrosAJUSTELOGONFEAUTOMATICO.AsString = 'S');

  if FileExists(fDMNFe.qFilialENDLOGO.AsString) then
    TRLImage(FindComponent('RLImage'+IntToStr(Posicao))).Picture.LoadFromFile(fDMNFe.qFilialENDLOGO.AsString)
  else
    TRLImage(FindComponent('RLImage'+IntToStr(Posicao))).Picture := nil;

  fDMNFe.Posiciona_CidadeUF(fDMNFe.qFilialID_CIDADE.AsInteger,1);

  TRLLabel(FindComponent('rllbEmpresa'+IntToStr(Posicao))).Caption  := fDMNFe.qFilialNOME.AsString;
  TRLLabel(FindComponent('rllbEnd'+IntToStr(Posicao))).Caption      := fDMNFe.qFilialENDERECO.AsString + ', ' + fDMNFe.qFilialNUM_END.AsString + ' -' + fDMNFe.qFilialCOMPLEMENTO_END.AsString;
  TRLLabel(FindComponent('rllbCep'+IntToStr(Posicao))).Caption      := 'CEP: ' + fDMNFe.qFilialCEP.AsString + ' - ' + fDMNFe.qFilialBAIRRO.AsString;
  TRLLabel(FindComponent('rllbCidade'+IntToStr(Posicao))).Caption   := fDMNFe.qCidadeNOME.AsString + ' - ' + fDMNFe.qCidadeUF.AsString;
  TRLLabel(FindComponent('rllbFone'+IntToStr(Posicao))).Caption     := fDMNFe.qFilialDDD1.AsString + ' ' + fDMNFe.qFilialFONE.AsString;
  TRLLabel(FindComponent('rllbHome'+IntToStr(Posicao))).Caption     := fDMNFe.qFilialHOMEPAGE.AsString;
  TRLLabel(FindComponent('rllbInscrEstadual'+IntToStr(Posicao))).Caption := fDMNFe.qFilialINSCR_EST.AsString;
  TRLLabel(FindComponent('rllbCNPJ'+IntToStr(Posicao))).Caption     := fDMNFe.qFilialCNPJ_CPF.AsString;

  fDMCadNotaFiscal.qNatOper.Close;
  fDMCadNotaFiscal.qNatOper.ParamByName('ID').AsInteger := fDMNFe.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.qNatOper.Open;
  i := 0;
  while not fDMCadNotaFiscal.qNatOper.Eof do
  begin
    i := i + 1;
    fDMCadNotaFiscal.qNatOper.Next;
  end;
  //if fDMCadNotaFiscal.qNatOper.RecordCount > 1 then
  //if i > 1 then
  //  TRLLabel(FindComponent('rllbNatOperacao'+IntToStr(Posicao))).Caption := 'VIDE ABAIXO'
  //else
  //begin
    fDMNFe.qTab_CFOP.Close;
    fDMNFe.qTab_CFOP.ParamByName('ID').AsInteger := fDMNFe.cdsNotaFiscalID_CFOP.AsInteger;
    fDMNFe.qTab_CFOP.Open;
    TRLLabel(FindComponent('rllbNatOperacao'+IntToStr(Posicao))).Caption := fDMNFe.qTab_CFOPCODCFOP.AsString + ' - ' + fDMNFe.qTab_CFOPNOME.AsString;
  //end;
  TRLLabel(FindComponent('rllbTextoA'+IntToStr(Posicao))).Visible := ((Copy( fDMNFe.cdsNotaFiscalTipo_ENVIONFE.AsString,1,1) <> '2') and
                                                                     (Copy(fDMNFe.cdsNotaFiscalTipo_ENVIONFE.AsString,1,1) <> '5'));
  TRLLabel(FindComponent('rllbTextoB'+IntToStr(Posicao))).Visible := ((Copy(fDMNFe.cdsNotaFiscalTipo_ENVIONFE.AsString,1,1) <> '2') and
                                                                     (Copy(fDMNFe.cdsNotaFiscalTipo_ENVIONFE.AsString,1,1) <> '5'));
  TRLBarcode(FindComponent('rlbcContingencia'+IntToStr(Posicao))).Visible := ((Copy(fDMNFe.cdsNotaFiscalTipo_ENVIONFE.AsString,1,1) = '2') or
                                                                             (Copy(fDMNFe.cdsNotaFiscalTipo_ENVIONFE.AsString,1,1) = '5'));
  if (Copy(fDMNFe.cdsNotaFiscalTipo_ENVIONFE.AsString,1,1) = '2') or (Copy(fDMNFe.cdsNotaFiscalTipo_ENVIONFE.AsString,1,1) = '5') then
    TRLBarcode(FindComponent('rlbcContingencia'+IntToStr(Posicao))).Caption := fDMNFe.cdsNotaFiscalNFECODBARRA_CONTINGENCIA.AsString;

  //NFe 2.00
  TRLLabel(FindComponent('rllbChaveAcesso'+IntToStr(Posicao))).Caption := '';
  vTexto := fDMNFe.cdsNotaFiscalNFECHAVEACESSO.AsString;
  i := 1;
  while i < 44 do
  begin
    if i > 1 then
      TRLLabel(FindComponent('rllbChaveAcesso'+IntToStr(Posicao))).Caption := TRLLabel(FindComponent('rllbChaveAcesso'+IntToStr(Posicao))).Caption + ' ';
    TRLLabel(FindComponent('rllbChaveAcesso'+IntToStr(Posicao))).Caption   := TRLLabel(FindComponent('rllbChaveAcesso'+IntToStr(Posicao))).Caption + copy(vTexto,i,4);
    i := i + 4;
  end;
  //************

  if (Copy(fDMNFe.cdsNotaFiscalTipo_ENVIONFE.AsString,1,1) <> '2') and (Copy(fDMNFe.cdsNotaFiscalTipo_ENVIONFE.AsString,1,1) <> '5') then
    begin
      TRLLabel(FindComponent('rllbTextoProt'+IntToStr(Posicao))).Caption := 'PROTOCOLO DE AUTORIZAÇÃO DE USO';
      TRLLabel(FindComponent('rllbProtocolo'+IntToStr(Posicao))).Caption := fDMNFe.cdsNotaFiscalNFEPROTOCOLO.AsString;
      //if Length(fDMNFe.cdsNotaFiscalNFEPROTOCOLO.AsString) < 20 then
      //  TRLLabel(FindComponent('rllbProtocolo'+IntToStr(Posicao))).Caption := fDMNFe.cdsNotaFiscalNFEPROTOCOLO.AsString + '  ' + fDMNFe.cdsNotaFiscaldt DM1.tNotaFiscalDtCad.AsString + '  ' + DM1.tNotaFiscalHrCad.AsString;
    end
  else
    begin
      TRLLabel(FindComponent('rllbTextoProt'+IntToStr(Posicao))).Caption    := 'DADOS DA NF-E';
      TRLLabel(FindComponent('rllbProtocolo'+IntToStr(Posicao))).Caption := '';
      vTexto := fDMNFe.cdsNotaFiscalNFECODBARRA_CONTINGENCIA.AsString;
      i := 1;
      while i < 36 do
      begin
        if i > 1 then
          TRLLabel(FindComponent('rllbProtocolo'+IntToStr(Posicao))).Caption := TRLLabel(FindComponent('rllbProtocolo'+IntToStr(Posicao))).Caption + ' ';
        TRLLabel(FindComponent('rllbProtocolo'+IntToStr(Posicao))).Caption := TRLLabel(FindComponent('rllbProtocolo'+IntToStr(Posicao))).Caption + copy(vTexto,i,4);
        i := i + 4;
      end;
    end;
end;

procedure TfRelDANFE.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMNFe.qParametrosTIPOLOGONFE.AsString <> 'Q');
  if not PrintIt then
    exit;
  Monta_Cabecalho(2);
end;

procedure TfRelDANFE.prc_Mudar_DataSet;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMNFe);
end;

procedure TfRelDANFE.RLBand13BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMCadNotaFiscal.cdsParametrosIMP_NFE_REF_PROD.AsString = 'R');
  if not PrintIt then
    exit;

  rlmNomeProduto2.Lines.Clear;
  rlmNomeProduto2.Lines.Text := fDMNFe.mItensNFeNomeProduto.AsString;
  if fDMNFe.mItensNFeInfAdicionais.Value <> '' then
    rlmNomeProduto2.Lines.Text := rlmNomeProduto2.Lines.Text + fDMNFe.mItensNFeInfAdicionais.Value;

  RLDBText64.Height := RLBand13.Height;
  RLDBText37.Height := RLBand13.Height;
  RLDBText46.Height := RLBand13.Height;
  RLDBText47.Height := RLBand13.Height;
  RLDBText48.Height := RLBand13.Height;
  RLDBText50.Height := RLBand13.Height;
  RLDBText51.Height := RLBand13.Height;
  RLDBText52.Height := RLBand13.Height;
  RLDBText55.Height := RLBand13.Height;
  RLDBText61.Height := RLBand13.Height;
  RLDBText62.Height := RLBand13.Height;
  RLDBText63.Height := RLBand13.Height;
end;

procedure TfRelDANFE.RLBand14BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMCadNotaFiscal.cdsParametrosIMP_NFE_REF_PROD.AsString = 'R');
  if not PrintIt then
    exit;
  if (fDMNFe.qFilialID_REGIME_TRIB.AsInteger = 1) or (fDMNFe.qFilialID_REGIME_TRIB.AsInteger = 2) then
    RLLabel126.Caption := 'CSOSN'
  else
    RLLabel126.Caption := 'CST';
end;

end.
