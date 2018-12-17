unit uOrcamentoR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, uDmOrcamento;

type
  TfOrcamentoR = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText8: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel24: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel41: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel42: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel43: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel44: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel45: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel46: TRLLabel;
    RLDraw10: TRLDraw;
    RLLabel47: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel48: TRLLabel;
    RLDraw12: TRLDraw;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel57: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel58: TRLLabel;
    RLDraw14: TRLDraw;
    RLLabel59: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel60: TRLLabel;
    RLDraw16: TRLDraw;
    RLLabel61: TRLLabel;
    RLDraw17: TRLDraw;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel64: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLSubDetail4: TRLSubDetail;
    RLBand4: TRLBand;
    RLLabel73: TRLLabel;
    RLDBText40: TRLDBText;
    RLLabel74: TRLLabel;
    RLDBText41: TRLDBText;
    RLLabel75: TRLLabel;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLLabel78: TRLLabel;
    RLLabel79: TRLLabel;
    RLLabel82: TRLLabel;
    RLLabel83: TRLLabel;
    RLDBText44: TRLDBText;
    RLLabel84: TRLLabel;
    RLLabel85: TRLLabel;
    RLLabel86: TRLLabel;
    RLLabel87: TRLLabel;
    RLLabel88: TRLLabel;
    RLLabel89: TRLLabel;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLLabel90: TRLLabel;
    RLDraw22: TRLDraw;
    RLLabel93: TRLLabel;
    RLDraw25: TRLDraw;
    RLLabel94: TRLLabel;
    RLDraw26: TRLDraw;
    RLLabel95: TRLLabel;
    RLDraw27: TRLDraw;
    RLLabel96: TRLLabel;
    RLDraw28: TRLDraw;
    RLLabel97: TRLLabel;
    RLDraw29: TRLDraw;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText51: TRLDBText;
    RLDBText52: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText54: TRLDBText;
    RLLabel98: TRLLabel;
    RLLabel99: TRLLabel;
    RLLabel100: TRLLabel;
    RLLabel101: TRLLabel;
    RLLabel102: TRLLabel;
    RLLabel103: TRLLabel;
    RLLabel104: TRLLabel;
    RLLabel105: TRLLabel;
    RLLabel106: TRLLabel;
    RLDraw30: TRLDraw;
    RLLabel107: TRLLabel;
    RLDraw31: TRLDraw;
    RLLabel108: TRLLabel;
    RLDraw32: TRLDraw;
    RLLabel109: TRLLabel;
    RLDraw33: TRLDraw;
    RLLabel110: TRLLabel;
    RLDraw34: TRLDraw;
    RLLabel111: TRLLabel;
    RLLabel112: TRLLabel;
    RLLabel113: TRLLabel;
    RLLabel114: TRLLabel;
    RLLabel115: TRLLabel;
    RLLabel116: TRLLabel;
    RLLabel117: TRLLabel;
    RLLabel118: TRLLabel;
    RLLabel120: TRLLabel;
    RLLabel121: TRLLabel;
    RLLabel122: TRLLabel;
    RLLabel123: TRLLabel;
    RLLabel124: TRLLabel;
    RLLabel125: TRLLabel;
    RLLabel126: TRLLabel;
    RLLabel127: TRLLabel;
    RLLabel128: TRLLabel;
    RLLabel129: TRLLabel;
    RLDBText55: TRLDBText;
    RLSubDetail5: TRLSubDetail;
    RLBand5: TRLBand;
    RLLabel12: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText56: TRLDBText;
    RLLabel132: TRLLabel;
    RLLabel133: TRLLabel;
    RLLabel136: TRLLabel;
    RLLabel137: TRLLabel;
    RLDBText57: TRLDBText;
    RLLabel138: TRLLabel;
    RLLabel139: TRLLabel;
    RLLabel140: TRLLabel;
    RLLabel141: TRLLabel;
    RLLabel142: TRLLabel;
    RLLabel143: TRLLabel;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLLabel144: TRLLabel;
    RLDraw39: TRLDraw;
    RLLabel147: TRLLabel;
    RLDraw42: TRLDraw;
    RLLabel148: TRLLabel;
    RLDraw43: TRLDraw;
    RLLabel149: TRLLabel;
    RLDraw44: TRLDraw;
    RLLabel150: TRLLabel;
    RLDraw45: TRLDraw;
    RLLabel151: TRLLabel;
    RLDraw46: TRLDraw;
    RLDBText58: TRLDBText;
    RLDBText59: TRLDBText;
    RLDBText60: TRLDBText;
    RLDBText61: TRLDBText;
    RLDBText62: TRLDBText;
    RLDBText63: TRLDBText;
    RLDBText64: TRLDBText;
    RLDBText65: TRLDBText;
    RLDBText66: TRLDBText;
    RLDBText67: TRLDBText;
    RLLabel152: TRLLabel;
    RLLabel153: TRLLabel;
    RLLabel154: TRLLabel;
    RLLabel155: TRLLabel;
    RLLabel156: TRLLabel;
    RLLabel157: TRLLabel;
    RLLabel158: TRLLabel;
    RLLabel159: TRLLabel;
    RLLabel160: TRLLabel;
    RLDraw47: TRLDraw;
    RLLabel161: TRLLabel;
    RLDraw48: TRLDraw;
    RLLabel162: TRLLabel;
    RLDraw49: TRLDraw;
    RLLabel163: TRLLabel;
    RLDraw50: TRLDraw;
    RLLabel164: TRLLabel;
    RLDraw51: TRLDraw;
    RLLabel165: TRLLabel;
    RLLabel166: TRLLabel;
    RLLabel167: TRLLabel;
    RLLabel168: TRLLabel;
    RLLabel169: TRLLabel;
    RLLabel170: TRLLabel;
    RLLabel171: TRLLabel;
    RLLabel172: TRLLabel;
    RLLabel173: TRLLabel;
    RLLabel174: TRLLabel;
    RLLabel175: TRLLabel;
    RLLabel119: TRLLabel;
    RLLabel77: TRLLabel;
    RLLabel81: TRLLabel;
    RLLabel91: TRLLabel;
    RLLabel92: TRLLabel;
    RLLabel131: TRLLabel;
    RLLabel135: TRLLabel;
    RLLabel145: TRLLabel;
    RLLabel146: TRLLabel;
    RLLabel176: TRLLabel;
    RLLabel177: TRLLabel;
    RLLabel178: TRLLabel;
    RLLabel179: TRLLabel;
    RLLabel180: TRLLabel;
    RLLabel181: TRLLabel;
    RLLabel182: TRLLabel;
    RLLabel183: TRLLabel;
    RLDBText68: TRLDBText;
    RLDBText69: TRLDBText;
    RLDBText70: TRLDBText;
    RLDBText71: TRLDBText;
    RLLabel76: TRLLabel;
    RLLabel80: TRLLabel;
    RLLabel130: TRLLabel;
    RLLabel134: TRLLabel;
    RLLabel184: TRLLabel;
    RLDBText72: TRLDBText;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmOrcamento: TDmOrcamento;
  end;

var
  fOrcamentoR: TfOrcamentoR;

implementation

{$R *.dfm}

procedure TfOrcamentoR.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if not fdmOrcamento.cdsProdutoCartoFD_TIPO_MAT.IsNull then
    case fdmOrcamento.cdsProdutoCartoFD_TIPO_MAT.AsInteger of
      1: RLLabel11.Caption := 'DUPLEX';
      2: RLLabel11.Caption := 'MICRO';
      3: RLLabel11.Caption := 'CARTÃO / CARTÃO';
      4: RLLabel11.Caption := 'MICRO / ABAS INTERNAS';
    end;
  if not fdmOrcamento.cdsProdutoCartoTP_TIPO_MAT.IsNull then
    case fdmOrcamento.cdsProdutoCartoTP_TIPO_MAT.AsInteger of
      1: RLLabel9.Caption := 'DUPLEX';
      2: RLLabel9.Caption := 'MICRO';
      3: RLLabel9.Caption := 'CARTÃO / CARTÃO';
      4: RLLabel9.Caption := 'MICRO / ABAS INTERNAS';
    end;
  if not fdmOrcamento.cdsProdutoCartoSP_TIPO_MAT.IsNull then
    case fdmOrcamento.cdsProdutoCartoSP_TIPO_MAT.AsInteger of
      1: RLLabel10.Caption := 'DUPLEX';
      2: RLLabel10.Caption := 'MICRO';
      3: RLLabel10.Caption := 'CARTÃO / CARTÃO';
      4: RLLabel10.Caption := 'MICRO / ABAS INTERNAS';
    end;
end;

procedure TfOrcamentoR.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if not fdmOrcamento.cdsProdutoCartoFDPINCA.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoFDPINCA.AsString = 'S' then
      RlDraw5.Brush.Color := clBlack
  end
  else
    RlDraw5.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoFDTRAVA.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoFDTRAVA.AsString = 'S' then
      RlDraw6.Brush.Color := clBlack
  end
  else
    RlDraw6.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoFDDISPLAY.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoFDDISPLAY.AsString = 'S' then
      RlDraw7.Brush.Color := clBlack
  end
  else
    RlDraw7.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoFDREVEST_FT_ATRITO.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoFDREVEST_FT_ATRITO.AsString = 'S' then
      RlDraw1.Brush.Color := clBlack
  end
  else
    RlDraw1.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoFDREVEST_VS_ATRITO.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoFDREVEST_VS_ATRITO.AsString = 'S' then
      RlDraw2.Brush.Color := clBlack
  end
  else
    RlDraw2.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoFDREVEST_FT_LUZ.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoFDREVEST_FT_LUZ.AsString = 'S' then
      RlDraw4.Brush.Color := clBlack
  end
  else
    RlDraw4.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoFDREVEST_VS_LUZ.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoFDREVEST_VS_LUZ.AsString = 'S' then
      RlDraw3.Brush.Color := clBlack
  end
  else
    RlDraw3.Brush.Color := clWhite;


  if not fdmOrcamento.cdsProdutoCartoFDREVEST_FT.IsNull then
    case fdmOrcamento.cdsProdutoCartoFDREVEST_FT.AsInteger of
      0: RLLabel33.Caption := 'NÃO';
      1: RLLabel33.Caption := 'VERNIZ';
      2: RLLabel33.Caption := 'BARREIRA ALIMENTAÇÃO';
      3: RLLabel33.Caption := 'PLÁSTICO';
      4: RLLabel33.Caption := 'PROLAN';
    end;
  if not fdmOrcamento.cdsProdutoCartoFDREVEST_VS.IsNull then
    case fdmOrcamento.cdsProdutoCartoFDREVEST_VS.AsInteger of
      0: RLLabel34.Caption := 'NÃO';
      1: RLLabel34.Caption := 'VERNIZ';
      2: RLLabel34.Caption := 'BARREIRA ALIMENTAÇÃO';
      3: RLLabel34.Caption := 'PLÁSTICO';
      4: RLLabel34.Caption := 'PROLAN';
    end;
  if not fdmOrcamento.cdsProdutoCartoFDFECHAMENTO.IsNull then
    case fdmOrcamento.cdsProdutoCartoFDFECHAMENTO.AsInteger of
      1: RLLabel31.Caption := 'AUTO ADESIVO NORMAL';
      2: RLLabel31.Caption := 'AUTO ADESIVO COM ABAS LATERAIS COLADAS';
      3: RLLabel31.Caption := 'ENCAIXE SEM COLA';
      4: RLLabel31.Caption := 'ENCAIXE COM ABAS LATERAIS COLADAS';
      5: RLLabel31.Caption := 'ACOPLADA';
    end;
  if not fdmOrcamento.cdsProdutoCartoFDFECHAMENTO_CT.IsNull then
    case fdmOrcamento.cdsProdutoCartoFDFECHAMENTO_CT.AsInteger of
      1: RLLabel32.Caption := 'FUNDO NORMAL - FN';
      2: RLLabel32.Caption := 'FUNDO AUTOMÁTICO - FA';
      3: RLLabel32.Caption := 'FUNDO AMERICANO - FAM';
      4: RLLabel32.Caption := 'ENCAIXE SEM COLA';
      5: RLLabel32.Caption := 'ENCAIXE COM COLA';
      6: RLLabel32.Caption := '4 PONTOS';
      7: RLLabel32.Caption := '6 PONTOS';
      8: RLLabel32.Caption := 'DISPLAY';
      9: RLLabel32.Caption := 'ENVOLTÓRIO';
    end;
  if not fdmOrcamento.cdsProdutoCartoFDREVEST_FT_BRIL.IsNull then
    case fdmOrcamento.cdsProdutoCartoFDREVEST_FT_BRIL.AsInteger of
      1: RLLabel35.Caption := 'BRILHO';
      2: RLLabel35.Caption := 'FOSCO';
      3: RLLabel35.Caption := 'ALTO BRILHO';
    end;
  if not fdmOrcamento.cdsProdutoCartoFDREVEST_VS_BRIL.IsNull then
    case fdmOrcamento.cdsProdutoCartoFDREVEST_VS_BRIL.AsInteger of
      1: RLLabel36.Caption := 'BRILHO';
      2: RLLabel36.Caption := 'FOSCO';
      3: RLLabel36.Caption := 'ALTO BRILHO';
    end;

  if fdmOrcamento.cdsProdutoCartoFDAR.AsString = 'S' then
  begin
    RLLabel51.Visible   := True;
    RLDraw8.Brush.Color := clBlack;
    if not fdmOrcamento.cdsProdutoCartoFDAR_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoFDAR_LOCAL.AsInteger of
        1: RLLabel51.Caption := 'CABECEIRA';
        2: RLLabel51.Caption := 'LATERAL';
        3: RLLabel51.Caption := 'FUNDO DO FUNDO';
        4: RLLabel51.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw8.Brush.Color := clWhite;
    RLLabel51.Visible   := False;
  end;

  if fdmOrcamento.cdsProdutoCartoFDBR.AsString = 'S' then
  begin
    RLLabel52.Visible   := True;
    RLDraw9.Brush.Color := clBlack;
    if not fdmOrcamento.cdsProdutoCartoFDBR_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoFDBR_LOCAL.AsInteger of
        1: RLLabel52.Caption := 'CABECEIRA';
        2: RLLabel52.Caption := 'LATERAL';
        3: RLLabel52.Caption := 'FUNDO DO FUNDO';
        4: RLLabel52.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw9.Brush.Color := clWhite;
    RLLabel52.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoFDHS.AsString = 'S' then
  begin
    RLDraw10.Brush.Color := clBlack;
    RLLabel54.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoFDHS_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoFDHS_LOCAL.AsInteger of
        1: RLLabel54.Caption := 'CABECEIRA';
        2: RLLabel54.Caption := 'LATERAL';
        3: RLLabel54.Caption := 'FUNDO DO FUNDO';
        4: RLLabel54.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw10.Brush.Color := clWhite;
    RLLabel54.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoFDVISOR.AsString = 'S' then
  begin
    RLDraw11.Brush.Color := clBlack;
    RLLabel53.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoFDVISOR_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoFDVISOR_LOCAL.AsInteger of
        1: RLLabel53.Caption := 'CABECEIRA';
        2: RLLabel53.Caption := 'LATERAL';
        3: RLLabel53.Caption := 'FUNDO DO FUNDO';
        4: RLLabel53.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw11.Brush.Color := clWhite;
    RLLabel53.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoFDVERNIZUV.AsString = 'S' then
  begin
    RLDraw12.Brush.Color := clBlack;
    RLLabel56.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoFDVERNIZUV_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoFDVERNIZUV_LOCAL.AsInteger of
        1: RLLabel56.Caption := 'CABECEIRA';
        2: RLLabel56.Caption := 'LATERAL';
        3: RLLabel56.Caption := 'FUNDO DO FUNDO';
        4: RLLabel56.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw12.Brush.Color := clWhite;
    RLLabel56.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoFDPICOTE.AsString = 'S' then
  begin
    RLDraw13.Brush.Color := clBlack;
    RLLabel62.Visible    := True;
    RLLabel66.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoFDPICOTE_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoFDPICOTE_LOCAL.AsInteger of
        1: RLLabel62.Caption := 'CABECEIRA';
        2: RLLabel62.Caption := 'LATERAL';
        3: RLLabel62.Caption := 'FUNDO DO FUNDO';
        4: RLLabel62.Caption := 'EM CIMA DA TAMPA';
      end;
    if not fdmOrcamento.cdsProdutoCartoFDPICOTE_TIPO.IsNull then
      case fdmOrcamento.cdsProdutoCartoFDPICOTE_TIPO.AsInteger of
        1: RLLabel66.Caption := 'MICRO SERRILHA';
        2: RLLabel66.Caption := '0.5 POR 0.5';
      end;
  end
  else
  begin
    RLDraw13.Brush.Color := clWhite;
    RLLabel62.Visible    := False;
    RLLabel66.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoFDPASSAFITA.AsString = 'S' then
  begin
    RLDraw14.Brush.Color := clBlack;
    RLLabel63.Visible    := True;
    RLLabel67.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoFDPASSAFITA_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoFDPASSAFITA_LOCAL.AsInteger of
        1: RLLabel63.Caption := 'CABECEIRA';
        2: RLLabel63.Caption := 'LATERAL';
        3: RLLabel63.Caption := 'FUNDO DO FUNDO';
        4: RLLabel63.Caption := 'EM CIMA DA TAMPA';
      end;
    if not fdmOrcamento.cdsProdutoCartoFDPASSAFITA_TIPO.IsNull then
      case fdmOrcamento.cdsProdutoCartoFDPASSAFITA_TIPO.AsInteger of
        1: RLLabel67.Caption := 'REDONDO';
        2: RLLabel67.Caption := 'OVAL';
        3: RLLabel67.Caption := 'RETANGULAR';
      end;
  end
  else
  begin
    RLDraw14.Brush.Color := clWhite;
    RLLabel63.Visible    := False;
    RLLabel67.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoFDALCA.AsString = 'S' then
  begin
    RLDraw15.Brush.Color := clBlack;
    RLLabel65.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoFDALCA_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoFDALCA_LOCAL.AsInteger of
        1: RLLabel65.Caption := 'CABECEIRA';
        2: RLLabel65.Caption := 'LATERAL';
        3: RLLabel65.Caption := 'FUNDO DO FUNDO';
        4: RLLabel65.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw15.Brush.Color := clWhite;
    RLLabel65.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoFDILHOS.AsString = 'S' then
  begin
    RLDraw16.Brush.Color := clBlack;
    RLLabel64.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoFDILHOS_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoFDILHOS_LOCAL.AsInteger of
        1: RLLabel64.Caption := 'CABECEIRA';
        2: RLLabel64.Caption := 'LATERAL';
        3: RLLabel64.Caption := 'FUNDO DO FUNDO';
        4: RLLabel64.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw16.Brush.Color := clWhite;
    RLLabel64.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoFDVERNIZUV_TOTAL.AsString = 'S' then
    RLDraw17.Brush.Color := clBlack
  else
    RLDraw17.Brush.Color := clWhite;
end;

procedure TfOrcamentoR.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if not fdmOrcamento.cdsProdutoCartoTPPINCA.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoTPPINCA.AsString = 'S' then
      RlDraw22.Brush.Color := clBlack
  end
  else
    RlDraw22.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoTPREVEST_FT_ATRITO.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoTPREVEST_FT_ATRITO.AsString = 'S' then
      RlDraw18.Brush.Color := clBlack
  end
  else
    RlDraw18.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoTPREVEST_VS_ATRITO.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoTPREVEST_VS_ATRITO.AsString = 'S' then
      RlDraw19.Brush.Color := clBlack
  end
  else
    RlDraw19.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoTPREVEST_FT_LUZ.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoTPREVEST_FT_LUZ.AsString = 'S' then
      RlDraw21.Brush.Color := clBlack
  end
  else
    RlDraw21.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoTPREVEST_VS_LUZ.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoTPREVEST_VS_LUZ.AsString = 'S' then
      RlDraw20.Brush.Color := clBlack
  end
  else
    RlDraw20.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoTPREVEST_FT.IsNull then
    case fdmOrcamento.cdsProdutoCartoTPREVEST_FT.AsInteger of
      0: RLLabel82.Caption := 'NÃO';
      1: RLLabel82.Caption := 'VERNIZ';
      2: RLLabel82.Caption := 'BARREIRA ALIMENTAÇÃO';
      3: RLLabel82.Caption := 'PLÁSTICO';
      4: RLLabel82.Caption := 'PROLAN';
    end;
  if not fdmOrcamento.cdsProdutoCartoTPREVEST_VS.IsNull then
    case fdmOrcamento.cdsProdutoCartoTPREVEST_VS.AsInteger of
      0: RLLabel83.Caption := 'NÃO';
      1: RLLabel83.Caption := 'VERNIZ';
      2: RLLabel83.Caption := 'BARREIRA ALIMENTAÇÃO';
      3: RLLabel83.Caption := 'PLÁSTICO';
      4: RLLabel83.Caption := 'PROLAN';
    end;

  if not fdmOrcamento.cdsProdutoCartoTPFECHAMENTO.IsNull then
    case fdmOrcamento.cdsProdutoCartoTPFECHAMENTO.AsInteger of
      1: RLLabel80.Caption := 'AUTO ADESIVO NORMAL';
      2: RLLabel80.Caption := 'AUTO ADESIVO COM ABAS LATERAIS COLADAS';
      3: RLLabel80.Caption := 'ENCAIXE SEM COLA';
      4: RLLabel80.Caption := 'ENCAIXE COM ABAS LATERAIS COLADAS';
    end
  else
    RLLabel80.Caption := '';

  if not fdmOrcamento.cdsProdutoCartoTPREVEST_FT_BRIL.IsNull then
    case fdmOrcamento.cdsProdutoCartoTPREVEST_FT_BRIL.AsInteger of
      1: RLLabel84.Caption := 'BRILHO';
      2: RLLabel84.Caption := 'FOSCO';
      3: RLLabel84.Caption := 'ALTO BRILHO';
    end
  else
    RLLabel84.Caption := '';
  if not fdmOrcamento.cdsProdutoCartoTPREVEST_VS_BRIL.IsNull then
    case fdmOrcamento.cdsProdutoCartoTPREVEST_VS_BRIL.AsInteger of
      1: RLLabel85.Caption := 'BRILHO';
      2: RLLabel85.Caption := 'FOSCO';
      3: RLLabel85.Caption := 'ALTO BRILHO';
    end
  else
    RLLabel85.Caption := '';

  if fdmOrcamento.cdsProdutoCartoTPAR.AsString = 'S' then
  begin
    RLLabel100.Visible   := True;
    RLDraw25.Brush.Color := clBlack;
    if not fdmOrcamento.cdsProdutoCartoTPAR_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoTPAR_LOCAL.AsInteger of
        1: RLLabel100.Caption := 'CABECEIRA';
        2: RLLabel100.Caption := 'LATERAL';
        3: RLLabel100.Caption := 'FUNDO DO FUNDO';
        4: RLLabel100.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw25.Brush.Color := clWhite;
    RLLabel100.Visible   := False;
  end;

  if fdmOrcamento.cdsProdutoCartoTPBR.AsString = 'S' then
  begin
    RLLabel101.Visible   := True;
    RLDraw26.Brush.Color := clBlack;
    if not fdmOrcamento.cdsProdutoCartoTPBR_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoTPBR_LOCAL.AsInteger of
        1: RLLabel101.Caption := 'CABECEIRA';
        2: RLLabel101.Caption := 'LATERAL';
        3: RLLabel101.Caption := 'FUNDO DO FUNDO';
        4: RLLabel101.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw26.Brush.Color := clWhite;
    RLLabel101.Visible   := False;
  end;

  if fdmOrcamento.cdsProdutoCartoTPHS.AsString = 'S' then
  begin
    RLDraw27.Brush.Color := clBlack;
    RLLabel103.Visible   := True;
    if not fdmOrcamento.cdsProdutoCartoTPHS_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoTPHS_LOCAL.AsInteger of
        1: RLLabel103.Caption := 'CABECEIRA';
        2: RLLabel103.Caption := 'LATERAL';
        3: RLLabel103.Caption := 'FUNDO DO FUNDO';
        4: RLLabel103.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw27.Brush.Color := clWhite;
    RLLabel103.Visible   := False;
  end;

  if fdmOrcamento.cdsProdutoCartoTPVISOR.AsString = 'S' then
  begin
    RLDraw28.Brush.Color := clBlack;
    RLLabel102.Visible   := True;
    if not fdmOrcamento.cdsProdutoCartoTPVISOR_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoTPVISOR_LOCAL.AsInteger of
        1: RLLabel102.Caption := 'CABECEIRA';
        2: RLLabel102.Caption := 'LATERAL';
        3: RLLabel102.Caption := 'FUNDO DO FUNDO';
        4: RLLabel102.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw28.Brush.Color := clWhite;
    RLLabel102.Visible   := False;
  end;

  if fdmOrcamento.cdsProdutoCartoTPVERNIZUV.AsString = 'S' then
  begin
    RLDraw29.Brush.Color := clBlack;
    RLLabel104.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoTPVERNIZUV_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoTPVERNIZUV_LOCAL.AsInteger of
        1: RLLabel104.Caption := 'CABECEIRA';
        2: RLLabel104.Caption := 'LATERAL';
        3: RLLabel104.Caption := 'FUNDO DO FUNDO';
        4: RLLabel104.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw29.Brush.Color := clWhite;
    RLLabel104.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoTPPICOTE.AsString = 'S' then
  begin
    RLDraw30.Brush.Color := clBlack;
    RLLabel111.Visible    := True;
    RLLabel115.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoTPPICOTE_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoTPPICOTE_LOCAL.AsInteger of
        1: RLLabel111.Caption := 'CABECEIRA';
        2: RLLabel111.Caption := 'LATERAL';
        3: RLLabel111.Caption := 'FUNDO DO FUNDO';
        4: RLLabel111.Caption := 'EM CIMA DA TAMPA';
      end;
    if not fdmOrcamento.cdsProdutoCartoTPPICOTE_TIPO.IsNull then
      case fdmOrcamento.cdsProdutoCartoTPPICOTE_TIPO.AsInteger of
        1: RLLabel115.Caption := 'MICRO SERRILHA';
        2: RLLabel115.Caption := '0.5 POR 0.5';
      end;
  end
  else
  begin
    RLDraw30.Brush.Color := clWhite;
    RLLabel111.Visible    := False;
    RLLabel115.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoTPPASSAFITA.AsString = 'S' then
  begin
    RLDraw31.Brush.Color := clBlack;
    RLLabel112.Visible    := True;
    RLLabel116.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoTPPASSAFITA_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoTPPASSAFITA_LOCAL.AsInteger of
        1: RLLabel112.Caption := 'CABECEIRA';
        2: RLLabel112.Caption := 'LATERAL';
        3: RLLabel112.Caption := 'FUNDO DO FUNDO';
        4: RLLabel112.Caption := 'EM CIMA DA TAMPA';
      end;
    if not fdmOrcamento.cdsProdutoCartoTPPASSAFITA_TIPO.IsNull then
      case fdmOrcamento.cdsProdutoCartoTPPASSAFITA_TIPO.AsInteger of
        1: RLLabel116.Caption := 'REDONDO';
        2: RLLabel116.Caption := 'OVAL';
        3: RLLabel116.Caption := 'RETANGULAR';
      end;
  end
  else
  begin
    RLDraw31.Brush.Color := clWhite;
    RLLabel112.Visible    := False;
    RLLabel116.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoTPALCA.AsString = 'S' then
  begin
    RLDraw32.Brush.Color := clBlack;
    RLLabel114.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoTPALCA_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoTPALCA_LOCAL.AsInteger of
        1: RLLabel114.Caption := 'CABECEIRA';
        2: RLLabel114.Caption := 'LATERAL';
        3: RLLabel114.Caption := 'FUNDO DO FUNDO';
        4: RLLabel114.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw32.Brush.Color := clWhite;
    RLLabel114.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoTPILHOS.AsString = 'S' then
  begin
    RLDraw33.Brush.Color := clBlack;
    RLLabel113.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoTPILHOS_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoTPILHOS_LOCAL.AsInteger of
        1: RLLabel113.Caption := 'CABECEIRA';
        2: RLLabel113.Caption := 'LATERAL';
        3: RLLabel113.Caption := 'FUNDO DO FUNDO';
        4: RLLabel113.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw33.Brush.Color := clWhite;
    RLLabel113.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoTPVERNIZUV_TOTAL.AsString = 'S' then
    RLDraw34.Brush.Color := clBlack
  else
    RLDraw34.Brush.Color := clWhite;
end;

procedure TfOrcamentoR.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if not fdmOrcamento.cdsProdutoCartoSPPINCA.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoSPPINCA.AsString = 'S' then
      RlDraw39.Brush.Color := clBlack
  end
  else
    RlDraw39.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoSPREVEST_FT_ATRITO.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoSPREVEST_FT_ATRITO.AsString = 'S' then
      RlDraw35.Brush.Color := clBlack
  end
  else
    RlDraw35.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoSPREVEST_VS_ATRITO.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoSPREVEST_VS_ATRITO.AsString = 'S' then
      RlDraw36.Brush.Color := clBlack
  end
  else
    RlDraw36.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoSPREVEST_FT_LUZ.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoSPREVEST_FT_LUZ.AsString = 'S' then
      RlDraw38.Brush.Color := clBlack
  end
  else
    RlDraw38.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoSPREVEST_VS_LUZ.IsNull then
  begin
    if fdmOrcamento.cdsProdutoCartoSPREVEST_VS_LUZ.AsString = 'S' then
      RlDraw37.Brush.Color := clBlack
  end
  else
    RlDraw37.Brush.Color := clWhite;

  if not fdmOrcamento.cdsProdutoCartoSPREVEST_FT.IsNull then
    case fdmOrcamento.cdsProdutoCartoSPREVEST_FT.AsInteger of
      0: RLLabel136.Caption := 'NÃO';
      1: RLLabel136.Caption := 'VERNIZ';
      2: RLLabel136.Caption := 'BARREIRA ALIMENTAÇÃO';
      3: RLLabel136.Caption := 'PLÁSTICO';
      4: RLLabel136.Caption := 'PROLAN';
    end;
  if not fdmOrcamento.cdsProdutoCartoSPREVEST_VS.IsNull then
    case fdmOrcamento.cdsProdutoCartoSPREVEST_VS.AsInteger of
      0: RLLabel137.Caption := 'NÃO';
      1: RLLabel137.Caption := 'VERNIZ';
      2: RLLabel137.Caption := 'BARREIRA ALIMENTAÇÃO';
      3: RLLabel137.Caption := 'PLÁSTICO';
      4: RLLabel137.Caption := 'PROLAN';
    end;

  if not fdmOrcamento.cdsProdutoCartoSPFECHAMENTO.IsNull then
    case fdmOrcamento.cdsProdutoCartoSPFECHAMENTO.AsInteger of
      1: RLLabel134.Caption := 'AUTO ADESIVO NORMAL';
      2: RLLabel134.Caption := 'AUTO ADESIVO COM ABAS LATERAIS COLADAS';
      3: RLLabel134.Caption := 'ENCAIXE SEM COLA';
      4: RLLabel134.Caption := 'ENCAIXE COM ABAS LATERAIS COLADAS';
    end
  else
    RLLabel134.Caption := '';

  if not fdmOrcamento.cdsProdutoCartoSPREVEST_FT_BRIL.IsNull then
    case fdmOrcamento.cdsProdutoCartoSPREVEST_FT_BRIL.AsInteger of
      1: RLLabel138.Caption := 'BRILHO';
      2: RLLabel138.Caption := 'FOSCO';
      3: RLLabel138.Caption := 'ALTO BRILHO';
    end
  else
    RLLabel138.Caption := '';
  if not fdmOrcamento.cdsProdutoCartoSPREVEST_VS_BRIL.IsNull then
    case fdmOrcamento.cdsProdutoCartoSPREVEST_VS_BRIL.AsInteger of
      1: RLLabel139.Caption := 'BRILHO';
      2: RLLabel139.Caption := 'FOSCO';
      3: RLLabel139.Caption := 'ALTO BRILHO';
    end
  else
    RLLabel139.Caption := '';

  if fdmOrcamento.cdsProdutoCartoSPAR.AsString = 'S' then
  begin
    RLLabel154.Visible   := True;
    RLDraw42.Brush.Color := clBlack;
    if not fdmOrcamento.cdsProdutoCartoSPAR_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoSPAR_LOCAL.AsInteger of
        1: RLLabel154.Caption := 'CABECEIRA';
        2: RLLabel154.Caption := 'LATERAL';
        3: RLLabel154.Caption := 'FUNDO DO FUNDO';
        4: RLLabel154.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw42.Brush.Color := clWhite;
    RLLabel154.Visible   := False;
  end;

  if fdmOrcamento.cdsProdutoCartoSPBR.AsString = 'S' then
  begin
    RLLabel155.Visible   := True;
    RLDraw43.Brush.Color := clBlack;
    if not fdmOrcamento.cdsProdutoCartoSPBR_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoSPBR_LOCAL.AsInteger of
        1: RLLabel155.Caption := 'CABECEIRA';
        2: RLLabel155.Caption := 'LATERAL';
        3: RLLabel155.Caption := 'FUNDO DO FUNDO';
        4: RLLabel155.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw43.Brush.Color := clWhite;
    RLLabel155.Visible   := False;
  end;

  if fdmOrcamento.cdsProdutoCartoSPHS.AsString = 'S' then
  begin
    RLDraw44.Brush.Color := clBlack;
    RLLabel157.Visible   := True;
    if not fdmOrcamento.cdsProdutoCartoSPHS_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoSPHS_LOCAL.AsInteger of
        1: RLLabel157.Caption := 'CABECEIRA';
        2: RLLabel157.Caption := 'LATERAL';
        3: RLLabel157.Caption := 'FUNDO DO FUNDO';
        4: RLLabel157.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw44.Brush.Color := clWhite;
    RLLabel157.Visible   := False;
  end;

  if fdmOrcamento.cdsProdutoCartoSPVISOR.AsString = 'S' then
  begin
    RLDraw45.Brush.Color := clBlack;
    RLLabel156.Visible   := True;
    if not fdmOrcamento.cdsProdutoCartoSPVISOR_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoSPVISOR_LOCAL.AsInteger of
        1: RLLabel156.Caption := 'CABECEIRA';
        2: RLLabel156.Caption := 'LATERAL';
        3: RLLabel156.Caption := 'FUNDO DO FUNDO';
        4: RLLabel156.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw45.Brush.Color := clWhite;
    RLLabel156.Visible   := False;
  end;

  if fdmOrcamento.cdsProdutoCartoSPVERNIZUV.AsString = 'S' then
  begin
    RLDraw46.Brush.Color := clBlack;
    RLLabel158.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoSPVERNIZUV_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoSPVERNIZUV_LOCAL.AsInteger of
        1: RLLabel158.Caption := 'CABECEIRA';
        2: RLLabel158.Caption := 'LATERAL';
        3: RLLabel158.Caption := 'FUNDO DO FUNDO';
        4: RLLabel158.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw46.Brush.Color := clWhite;
    RLLabel158.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoSPPICOTE.AsString = 'S' then
  begin
    RLDraw47.Brush.Color := clBlack;
    RLLabel165.Visible    := True;
    RLLabel169.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoSPPICOTE_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoSPPICOTE_LOCAL.AsInteger of
        1: RLLabel165.Caption := 'CABECEIRA';
        2: RLLabel165.Caption := 'LATERAL';
        3: RLLabel165.Caption := 'FUNDO DO FUNDO';
        4: RLLabel165.Caption := 'EM CIMA DA TAMPA';
      end;
    if not fdmOrcamento.cdsProdutoCartoSPPICOTE_TIPO.IsNull then
      case fdmOrcamento.cdsProdutoCartoSPPICOTE_TIPO.AsInteger of
        1: RLLabel169.Caption := 'MICRO SERRILHA';
        2: RLLabel169.Caption := '0.5 POR 0.5';
      end;
  end
  else
  begin
    RLDraw47.Brush.Color := clWhite;
    RLLabel165.Visible   := False;
    RLLabel169.Visible   := False;
  end;

  if fdmOrcamento.cdsProdutoCartoSPPASSAFITA.AsString = 'S' then
  begin
    RLDraw48.Brush.Color := clBlack;
    RLLabel166.Visible    := True;
    RLLabel170.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoSPPASSAFITA_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoSPPASSAFITA_LOCAL.AsInteger of
        1: RLLabel166.Caption := 'CABECEIRA';
        2: RLLabel166.Caption := 'LATERAL';
        3: RLLabel166.Caption := 'FUNDO DO FUNDO';
        4: RLLabel166.Caption := 'EM CIMA DA TAMPA';
      end;
    if not fdmOrcamento.cdsProdutoCartoSPPASSAFITA_TIPO.IsNull then
      case fdmOrcamento.cdsProdutoCartoSPPASSAFITA_TIPO.AsInteger of
        1: RLLabel170.Caption := 'REDONDO';
        2: RLLabel170.Caption := 'OVAL';
        3: RLLabel170.Caption := 'RETANGULAR';
      end;
  end
  else
  begin
    RLDraw48.Brush.Color := clWhite;
    RLLabel166.Visible   := False;
    RLLabel170.Visible   := False;
  end;

  if fdmOrcamento.cdsProdutoCartoSPALCA.AsString = 'S' then
  begin
    RLDraw49.Brush.Color := clBlack;
    RLLabel168.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoSPALCA_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoSPALCA_LOCAL.AsInteger of
        1: RLLabel168.Caption := 'CABECEIRA';
        2: RLLabel168.Caption := 'LATERAL';
        3: RLLabel168.Caption := 'FUNDO DO FUNDO';
        4: RLLabel168.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw49.Brush.Color := clWhite;
    RLLabel168.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoSPILHOS.AsString = 'S' then
  begin
    RLDraw50.Brush.Color := clBlack;
    RLLabel167.Visible    := True;
    if not fdmOrcamento.cdsProdutoCartoSPILHOS_LOCAL.IsNull then
      case fdmOrcamento.cdsProdutoCartoSPILHOS_LOCAL.AsInteger of
        1: RLLabel167.Caption := 'CABECEIRA';
        2: RLLabel167.Caption := 'LATERAL';
        3: RLLabel167.Caption := 'FUNDO DO FUNDO';
        4: RLLabel167.Caption := 'EM CIMA DA TAMPA';
      end;
  end
  else
  begin
    RLDraw50.Brush.Color := clWhite;
    RLLabel167.Visible    := False;
  end;

  if fdmOrcamento.cdsProdutoCartoSPVERNIZUV_TOTAL.AsString = 'S' then
    RLDraw51.Brush.Color := clBlack
  else
    RLDraw51.Brush.Color := clWhite;
end;

end.
