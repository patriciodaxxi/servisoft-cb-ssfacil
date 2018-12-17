unit uXMLNFCe3_10;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, UDMCupomFiscal, uDMNFCe, enviNFe_v310, DateUtils, Variants;

  procedure prc_Gerar_XML_310(fDMCupomFiscal: TDMCupomFiscal ; fDMNFCe : TDMNFCe ; AStrings: TStrings);
  procedure prc_Monta_Cabecalho(fDMCupomFiscal: TDMCupomFiscal ; fDMNFCe : TDMNFCe);
  procedure prc_Monta_Detalhe(fDMCupomFiscal: TDMCupomFiscal ; fDMNFCe : TDMNFCe);
  procedure prc_Monta_Rodape(fDMCupomFiscal: TDMCupomFiscal ; fDMNFCe : TDMNFCe);
  //Imposto ICMS
  procedure prc_Monta_ICMS00(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMS10(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
  procedure prc_Monta_ICMS20(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMS30(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
  procedure prc_Monta_ICMS40(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMS51(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMS60(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMS70(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
  procedure prc_Monta_ICMS90(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
  procedure prc_Monta_ICMSSN101(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Simples : Real);
  procedure prc_Monta_ICMSSN102(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMSSN201(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno, Perc_Simples : Real);
  procedure prc_Monta_ICMSSN202(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
  procedure prc_Monta_ICMSSN500(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMSSN900(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno, Perc_Simples : Real);
  //******  0
  procedure prc_Monta_PIS(fDMNFCe : TDMNFCe);
  procedure prc_Monta_COFINS(fDMNFCe : TDMNFCe);

  function fnc_Posicionar_Cidade(fDMNFCe : TDMNFCe ; ID : Integer) : Boolean;
  procedure prc_Monta_parcela(Data : TDateTime ; Valor : Real ; Parcela, NumNota : Integer ; Tipo_Cond : String); //P= A Prazo  V= A Vista

var
  EnviNfe: IXMLTEnviNFe;
  NfeXML: IXMLTNFe;
  DetXML  : IXMLDet;
  RefNfeXML : IXMLNFref;
  TranspXML : IXMLTransp;
  TransportaXML : IXMLTransporta;
  CobrXML : IXMLCobr;
  PagXml : IXMLPag;
  DupXML : IXMLDup;
  LacreXML : IXMLLacres;
  DetDIXML : IXMLDI;
  DetADIXML : IXMLAdi;
  DetExportXML : IXMLDetExport;
  AutXML : IXMLAutXML;
  VolXML : IXMLVol;
  ReboqueXML : IXMLTransp;
  DIXML : IXMLDI;
  vVlr_Desconto_NFCe : Real;

  //ReboqueXML : ixml

  vTipo_Emissao_NFe : String;
  vTipo_Ambiente_NFe : String;
  vFinalidade_NFe : String;
  vProcesso_Emissao_NFe : String;
  vChave_XML : String;

implementation

uses DB, uUtilPadrao;

function fnc_Posicionar_Cidade(fDMNFCe : TDMNFCe ; ID : Integer) : Boolean;
begin
  Result := True;
  fDMNFCe.qCidade.Close;
  fDMNFCe.qCidade.ParamByName('ID').AsInteger := ID;
  fDMNFCe.qCidade.Open;
  if fDMNFCe.qCidade.IsEmpty then
    Result := False;
end;

procedure prc_Gerar_XML_310(fDMCupomFiscal: TDMCupomFiscal ; fDMNFCe : TDMNFCe ; AStrings: TStrings);
begin
  AStrings.Clear;
  vVlr_Desconto_NFCe := 0;

  EnviNfe := NewenviNFe;
  NfeXML  := EnviNfe.NFe.Add;

  prc_Monta_Cabecalho(fDMCupomFiscal,fDMNFCe);

  fDMCupomFiscal.qUF.Close;
  fDMCupomFiscal.qUF.ParamByName('UF').AsString := fDMCupomFiscal.cdsPessoaUF.AsString;
  fDMCupomFiscal.qUF.Open;

  fDMNFCe.mItensNFe.First;
  while not fDMNFCe.mItensNFe.Eof do
  begin
    prc_Monta_Detalhe(fDMCupomFiscal,fDMNFCe);
    vVlr_Desconto_NFCe := vVlr_Desconto_NFCe + fDMNFCe.mItensNFeVlrDesconto.AsFloat;
    fDMNFCe.mItensNFe.Next;
  end;

  prc_Monta_Rodape(fDMCupomFiscal,fDMNFCe);

  AStrings.Text := '<?xml version="1.0" encoding="utf-8"?>'+NfeXML.XML;
  //Memo1.lines.Text := '<?xml version="1.0" encoding="utf-8"?>'+NfeXML.XML;
  //AStrings.Text := vTextoEnvio.Text;
end;

procedure prc_Monta_ICMS00(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
begin
  DetXML.Imposto.ICMS.ICMS00.Orig  := Origem;
  DetXML.Imposto.ICMS.ICMS00.CST   := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS00.ModBC := '0';
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeBaseICMS.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS00.VBC := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeBaseICMS.AsFloat) ,',','.')
  else
  if StrToFloat(FormatFloat('0.0000',fDMNFCe.mItensNFeAliqIcms.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS00.VBC := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrTotal.AsFloat) ,',','.')
  else
    DetXML.Imposto.ICMS.ICMS00.VBC := Replace(FormatFloat('0.00',0) ,',','.');
  DetXML.Imposto.ICMS.ICMS00.PICMS := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFeAliqIcms.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS00.VICMS := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcms.AsFloat) ,',','.');
end;

procedure prc_Monta_ICMS10(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
begin
  DetXML.Imposto.ICMS.ICMS10.Orig  := Origem;
  DetXML.Imposto.ICMS.ICMS10.CST   := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS10.ModBC := '0';
  DetXML.Imposto.ICMS.ICMS10.VBC   := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeBaseICMS.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS10.PICMS := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFeAliqIcms.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS10.VICMS := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcms.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS10.ModBCST  := '4';
  DetXML.Imposto.ICMS.ICMS10.PMVAST   := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFeMVA.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFePercRedICMSSubst.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS10.PRedBCST := Replace(FormatFloat('0.00',fDMNFCe.mItensNFePercRedICMSSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS10.VBCST    := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS10.PICMSST  := Replace(FormatFloat('0.00##',Perc_Interno) ,',','.');
  DetXML.Imposto.ICMS.ICMS10.VICMSST  := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
end;

procedure prc_Monta_ICMS20(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
begin
  DetXML.Imposto.ICMS.ICMS20.Orig   := Origem;
  DetXML.Imposto.ICMS.ICMS20.CST    := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS20.ModBC  := '0';
  DetXML.Imposto.ICMS.ICMS20.PRedBC := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFePercRedICMS.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS20.VBC    := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeBaseICMS.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS20.PICMS  := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFeAliqIcms.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS20.VICMS  := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcms.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsDesonerado.AsFloat)) > 0 then
  begin
    DetXML.Imposto.ICMS.ICMS20.VICMSDeson := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsDesonerado.AsFloat) ,',','.');
    DetXML.Imposto.ICMS.ICMS20.MotDesICMS := fDMNFCe.mItensNFeCodMotivoDesonerado.AsString;
  end;
end;

procedure prc_Monta_ICMS30(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
begin
  DetXML.Imposto.ICMS.ICMS30.Orig     := Origem;
  DetXML.Imposto.ICMS.ICMS30.CST      := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS30.ModBCST  := '4';
  DetXML.Imposto.ICMS.ICMS30.PMVAST   := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFeMVA.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00##',fDMNFCe.mItensNFePercRedICMSSubst.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS30.PRedBCST := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFePercRedICMSSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS30.VBCST    := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS30.PICMSST  := Replace(FormatFloat('0.00##',Perc_Interno) ,',','.');
  DetXML.Imposto.ICMS.ICMS30.VICMSST  := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsDesonerado.AsFloat)) > 0 then
  begin
    DetXML.Imposto.ICMS.ICMS30.VICMSDeson := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsDesonerado.AsFloat) ,',','.');
    DetXML.Imposto.ICMS.ICMS30.MotDesICMS := fDMNFCe.mItensNFeCodMotivoDesonerado.AsString;
  end;
end;

procedure prc_Monta_ICMS40(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
begin
  DetXML.Imposto.ICMS.ICMS40.Orig  := Origem;
  DetXML.Imposto.ICMS.ICMS40.CST   := CodSitTrib;
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsDesonerado.AsFloat)) > 0 then
  begin
    DetXML.Imposto.ICMS.ICMS40.VICMSDeson := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsDesonerado.AsFloat) ,',','.');
    DetXML.Imposto.ICMS.ICMS40.MotDesICMS := fDMNFCe.mItensNFeCodMotivoDesonerado.AsString;
  end;
end;

procedure prc_Monta_ICMS51(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
var
  vVlrAux : Real;
begin
  DetXML.Imposto.ICMS.ICMS51.Orig     := Origem;
  DetXML.Imposto.ICMS.ICMS51.CST      := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS51.ModBC    := '0';
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFePercRedICMS.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS51.PRedBC   := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFePercRedICMS.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMS51.VBC      := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeBaseICMS.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMS51.PICMS    := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFeAliqIcms.AsFloat),',','.');
  //3.10
  if (StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsOperacao.AsFloat)) > 0) and (fDMNFCe.qParametrosUSA_ICMSOPERACAO_CST51.AsString = 'S') then
  begin
    DetXML.Imposto.ICMS.ICMS51.VICMSOp  := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsOperacao.AsFloat),',','.');
    if StrToFloat(FormatFloat('0.0000',fDMNFCe.mItensNFePercTribIcms.AsFloat)) <= 0 then
      vVlrAux := StrToFloat(FormatFloat('0.0000',100))
    else
      vVlrAux := StrToFloat(FormatFloat('0.0000',100 - fDMNFCe.mItensNFePercTribIcms.AsFloat));
    DetXML.Imposto.ICMS.ICMS51.PDif     := Replace(FormatFloat('0.00##',vVlrAux),',','.');
    if fDMNFCe.mItensNFeVlrIcms.AsFloat > fDMNFCe.mItensNFeVlrIcmsOperacao.AsFloat then
      vVlrAux := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcms.AsFloat - fDMNFCe.mItensNFeVlrIcmsOperacao.AsFloat))
    else
      vVlrAux := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsOperacao.AsFloat - fDMNFCe.mItensNFeVlrIcms.AsFloat));
    DetXML.Imposto.ICMS.ICMS51.VICMSDif := Replace(FormatFloat('0.00',vVlrAux),',','.');
  end;
  //*******
  DetXML.Imposto.ICMS.ICMS51.VICMS    := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcms.AsFloat),',','.');
end;

procedure prc_Monta_ICMS60(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
begin
  DetXML.Imposto.ICMS.ICMS60.Orig       := Origem;
  DetXML.Imposto.ICMS.ICMS60.CST        := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS60.VBCSTRet   := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS60.VICMSSTRet := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
end;

procedure prc_Monta_ICMS70(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
begin
  DetXML.Imposto.ICMS.ICMS70.Orig     := Origem;
  DetXML.Imposto.ICMS.ICMS70.CST      := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS70.ModBC    := '0';
  if StrToFloat(FormatFloat('0.00##',fDMNFCe.mItensNFePercRedICMS.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS70.PRedBC   := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFePercRedICMS.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.VBC      := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeBaseICMS.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.PICMS    := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFeAliqIcms.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.VICMS    := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcms.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.ModBCST  := '4';
  DetXML.Imposto.ICMS.ICMS70.PMVAST   := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFeMVA.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00##',fDMNFCe.mItensNFePercRedICMSSubst.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS70.PRedBCST := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFePercRedICMSSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.VBCST    := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.PICMSST  := Replace(FormatFloat('0.00##',Perc_Interno) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.VICMSST  := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsDesonerado.AsFloat)) > 0 then
  begin
    DetXML.Imposto.ICMS.ICMS70.VICMSDeson := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsDesonerado.AsFloat) ,',','.');
    DetXML.Imposto.ICMS.ICMS70.MotDesICMS := fDMNFCe.mItensNFeCodMotivoDesonerado.AsString;
  end;
end;

procedure prc_Monta_ICMS90(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
begin
  DetXML.Imposto.ICMS.ICMS90.Orig  := Origem;
  DetXML.Imposto.ICMS.ICMS90.CST   := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS90.ModBC := '0';
  DetXML.Imposto.ICMS.ICMS90.VBC   := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeBaseICMS.AsFloat),',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFePercRedICMS.AsFloat)) = 100 then
    DetXML.Imposto.ICMS.ICMS90.PRedBC := Replace(FormatFloat('0.00',0),',','.')
  else
    DetXML.Imposto.ICMS.ICMS90.PRedBC := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFePercRedICMS.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMS90.PICMS := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFeAliqIcms.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMS90.VICMS := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcms.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMS90.ModBCST := '4';
  DetXML.Imposto.ICMS.ICMS90.PMVAST := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFeMVA.AsFloat),',','.');
  if StrToFloat(FormatFloat('0.00##',fDMNFCe.mItensNFePercRedICMSSubst.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS90.PRedBCST := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFePercRedICMSSubst.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMS90.VBCST    := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsBaseSubst.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMS90.PICMSST  := Replace(FormatFloat('0.00##',Perc_Interno),',','.');
  DetXML.Imposto.ICMS.ICMS90.VICMSST  := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsVlrSubst.AsFloat),',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsDesonerado.AsFloat)) > 0 then
  begin
    DetXML.Imposto.ICMS.ICMS90.VICMSDeson := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsDesonerado.AsFloat) ,',','.');
    DetXML.Imposto.ICMS.ICMS90.MotDesICMS := fDMNFCe.mItensNFeCodMotivoDesonerado.AsString;
  end;
end;

procedure prc_Monta_ICMSSN101(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Simples : Real);
begin
  DetXML.Imposto.ICMS.ICMSSN101.Orig        := Origem;
  DetXML.Imposto.ICMS.ICMSSN101.CSOSN       := CodSitTrib;
  DetXML.Imposto.ICMS.ICMSSN101.PCredSN     := Replace(FormatFloat('0.00##',Perc_Simples),',','.');
  DetXML.Imposto.ICMS.ICMSSN101.VCredICMSSN := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsSimples.AsFloat),',','.');
end;

procedure prc_Monta_ICMSSN102(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
begin
  DetXML.Imposto.ICMS.ICMSSN102.Orig  := Origem;
  DetXML.Imposto.ICMS.ICMSSN102.CSOSN := CodSitTrib;
end;

procedure prc_Monta_ICMSSN201(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno, Perc_Simples : Real);
begin
  DetXML.Imposto.ICMS.ICMSSN201.Orig        := Origem;
  DetXML.Imposto.ICMS.ICMSSN201.CSOSN       := CodSitTrib;
  DetXML.Imposto.ICMS.ICMSSN201.ModBCST     := '4';
  DetXML.Imposto.ICMS.ICMSSN201.PMVAST      := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeMVA.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.0000',fDMNFCe.mItensNFePercRedICMSSubst.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMSSN201.PRedBCST    := Replace(FormatFloat('0.00',fDMNFCe.mItensNFePercRedICMSSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN201.VBCST       := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN201.PICMSST     := Replace(FormatFloat('0.00',Perc_Interno) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN201.VICMSST     := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN201.PCredSN     := Replace(FormatFloat('0.00',Perc_Simples) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN201.VCredICMSSN := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsSimples.AsFloat) ,',','.');
end;

procedure prc_Monta_ICMSSN202(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
begin
  DetXML.Imposto.ICMS.ICMSSN202.Orig     := Origem;
  DetXML.Imposto.ICMS.ICMSSN202.CSOSN    := CodSitTrib;
  DetXML.Imposto.ICMS.ICMSSN202.ModBCST  := '4';
  DetXML.Imposto.ICMS.ICMSSN202.PMVAST   := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFeMVA.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN202.PRedBCST := Replace(FormatFloat('0.00',fDMNFCe.mItensNFePercRedICMSSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN202.VBCST    := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN202.PICMSST  := Replace(FormatFloat('0.00##',Perc_Interno) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN202.VICMSST  := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
end;                                                    

procedure prc_Monta_ICMSSN500(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String);
begin
  DetXML.Imposto.ICMS.ICMSSN500.Orig       := Origem;
  DetXML.Imposto.ICMS.ICMSSN500.CSOSN      := CodSitTrib;
  DetXML.Imposto.ICMS.ICMSSN500.VBCSTRet   := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN500.VICMSSTRet := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
end;

procedure prc_Monta_ICMSSN900(fDMNFCe : TDMNFCe ; Origem, CodSitTrib : String ; Perc_Interno, Perc_Simples : Real);
begin
  DetXML.Imposto.ICMS.ICMSSN900.Orig  := Origem;
  DetXML.Imposto.ICMS.ICMSSN900.CSOSN := CodSitTrib;
  DetXML.Imposto.ICMS.ICMSSN900.ModBC := '3';
  DetXML.Imposto.ICMS.ICMSSN900.VBC   := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeBaseICMS.AsFloat),',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFePercRedICMS.AsFloat)) = 100 then
    DetXML.Imposto.ICMS.ICMSSN900.PRedBC := Replace(FormatFloat('0.00',0),',','.')
  else
    DetXML.Imposto.ICMS.ICMSSN900.PRedBC := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFePercRedICMS.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMSSN900.PICMS := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFeAliqIcms.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMSSN900.VICMS := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcms.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMSSN900.ModBCST := '4';
  DetXML.Imposto.ICMS.ICMSSN900.PMVAST      := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFeMVA.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMSSN900.PRedBCST    := Replace(FormatFloat('0.00##',fDMNFCe.mItensNFePercRedICMSSubst.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMSSN900.VBCST       := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN900.PICMSST     := Replace(FormatFloat('0.00##',Perc_Interno) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN900.VICMSST     := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN900.PCredSN     := Replace(FormatFloat('0.00##',Perc_Simples) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN900.VCredICMSSN := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsSimples.AsFloat) ,',','.');
end;

procedure prc_Monta_PIS(fDMNFCe : TDMNFCe);
var
  vVlrAux : Real;
  vQtdAux : Real;
begin
  {if (fDMNFCe.mItensNFeCodPis.AsString = '01') or (fDMNFCe.mItensNFeCodPis.AsString = '02') then
  begin
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISAliq.CST := fDMNFCe.mItensNFeCodPis.AsString;
    vVlrAux := 0;
    if fDMNFCe.mItensNFeVlrPis.AsFloat > 0 then
      vVlrAux := fDMNFCe.mItensNFeVlrTotal.AsFloat;
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISAliq.VBC  := Replace(FormatFloat('0.00',vVlrAux),',','.');
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISAliq.PPIS := Replace(FormatFloat('0.0000',fDMNFCe.mItensNFeAliqPis.AsFloat),',','.');
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISAliq.VPIS := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrPis.AsFloat),',','.');
  end
  else
  if (fDMNFCe.mItensNFeCodPis.AsString = '03') then
  begin
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISQtde.CST := fDMNFCe.mItensNFeCodPis.AsString;
    vVlrAux := 0;
    if fDMNFCe.mItensNFeVlrPis.AsFloat > 0 then
      vVlrAux := fDMNFCe.mItensNFeQtd.AsFloat;
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISQtde.QBCProd   := Replace(FormatFloat('0.0000',vVlrAux),',','.');
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISQtde.VAliqProd := Replace(FormatFloat('0.0000',fDMNFCe.mItensNFeAliqPis.AsFloat),',','.');
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISQtde.VPIS      := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrPis.AsFloat),',','.');
  end
  else
  if (fDMNFCe.mItensNFeCodPis.AsString = '04') or (fDMNFCe.mItensNFeCodPis.AsString = '06') or (fDMNFCe.mItensNFeCodPis.AsString = '07') or
     (fDMNFCe.mItensNFeCodPis.AsString = '08') or (fDMNFCe.mItensNFeCodPis.AsString = '09') then
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.PIS.PISNT.CST := fDMNFCe.mItensNFeCodPis.AsString;
    DetXML.Imposto.PIS.PISNT.AddChild('CST').Text := fDMNFCe.mItensNFeCodPis.AsString;
  end
  else
  begin
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.CST := fDMNFCe.mItensNFeCodPis.AsString;
    vVlrAux := 0;
    vQtdAux := 0;
    if fDMNFCe.mItensNFeVlrPis.AsFloat > 0 then
    begin
      vVlrAux := fDMNFCe.mItensNFeVlrTotal.AsFloat;
      vQtdAux := fDMNFCe.mItensNFeQtd.AsFloat;
    end;
    if fDMNFCe.mItensNFeTipoPis.AsString = 'V' then
    begin
      NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.QBCProd   := Replace(FormatFloat('0.0000',vQtdAux),',','.');
      NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.VAliqProd := Replace(FormatFloat('0.0000',fDMNFCe.mItensNFeAliqPis.AsFloat),',','.');
    end
    else
    begin
      NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.VBC  := Replace(FormatFloat('0.00',vVlrAux),',','.');
      NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.PPIS := Replace(FormatFloat('0.0000',fDMNFCe.mItensNFeAliqPis.AsFloat),',','.');
    end;
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.VPIS := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrPis.AsFloat),',','.');
  end;}

  if (fDMNFCe.mItensNFeCodPis.AsString = '01') or (fDMNFCe.mItensNFeCodPis.AsString = '02') then
  begin
    DetXML.Imposto.PIS.PISAliq.CST := fDMNFCe.mItensNFeCodPis.AsString;
    vVlrAux := 0;
    if fDMNFCe.mItensNFeVlrPis.AsFloat > 0 then
      vVlrAux := fDMNFCe.mItensNFeVlrTotal.AsFloat;
    DetXML.Imposto.PIS.PISAliq.VBC  := Replace(FormatFloat('0.00',vVlrAux),',','.');
    DetXML.Imposto.PIS.PISAliq.PPIS := Replace(FormatFloat('0.0000',fDMNFCe.mItensNFeAliqPis.AsFloat),',','.');
    DetXML.Imposto.PIS.PISAliq.VPIS := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrPis.AsFloat),',','.');
  end
  else
  if (fDMNFCe.mItensNFeCodPis.AsString = '03') then
  begin
    DetXML.Imposto.PIS.PISQtde.CST := fDMNFCe.mItensNFeCodPis.AsString;
    vVlrAux := 0;
    if fDMNFCe.mItensNFeVlrPis.AsFloat > 0 then
      vVlrAux := fDMNFCe.mItensNFeQtd.AsFloat;
    DetXML.Imposto.PIS.PISQtde.QBCProd   := Replace(FormatFloat('0.0000',vVlrAux),',','.');
    DetXML.Imposto.PIS.PISQtde.VAliqProd := Replace(FormatFloat('0.0000',fDMNFCe.mItensNFeAliqPis.AsFloat),',','.');
    DetXML.Imposto.PIS.PISQtde.VPIS      := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrPis.AsFloat),',','.');
  end
  else
  if (fDMNFCe.mItensNFeCodPis.AsString = '04') or (fDMNFCe.mItensNFeCodPis.AsString = '05') or (fDMNFCe.mItensNFeCodPis.AsString = '06') or
     (fDMNFCe.mItensNFeCodPis.AsString = '07') or (fDMNFCe.mItensNFeCodPis.AsString = '08') or (fDMNFCe.mItensNFeCodPis.AsString = '09') then
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.PIS.PISNT.CST := fDMNFCe.mItensNFeCodPis.AsString;
    DetXML.Imposto.PIS.PISNT.CST := fDMNFCe.mItensNFeCodPis.AsString;
  end
  else
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.CST := fDMNFCe.mItensNFeCodPis.AsString;
    DetXML.Imposto.PIS.PISOutr.CST := fDMNFCe.mItensNFeCodPis.AsString;
    vVlrAux := 0;
    vQtdAux := 0;
    if fDMNFCe.mItensNFeVlrPis.AsFloat > 0 then
    begin
      vVlrAux := fDMNFCe.mItensNFeVlrTotal.AsFloat;
      vQtdAux := fDMNFCe.mItensNFeQtd.AsFloat;
    end;
    if fDMNFCe.mItensNFeTipoPis.AsString = 'V' then
    begin
      DetXML.Imposto.PIS.PISOutr.QBCProd   := Replace(FormatFloat('0.0000',vQtdAux),',','.');
      DetXML.Imposto.PIS.PISOutr.VAliqProd := Replace(FormatFloat('0.0000',fDMNFCe.mItensNFeAliqPis.AsFloat),',','.');
    end
    else
    begin
      DetXML.Imposto.PIS.PISOutr.VBC  := Replace(FormatFloat('0.00',vVlrAux),',','.');
      DetXML.Imposto.PIS.PISOutr.PPIS := Replace(FormatFloat('0.0000',fDMNFCe.mItensNFeAliqPis.AsFloat),',','.');
    end;
    DetXML.Imposto.PIS.PISOutr.VPIS := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrPis.AsFloat),',','.');
  end;
end;

procedure prc_Monta_COFINS(fDMNFCe : TDMNFCe);
var
  vVlrAux : Real;
  vQtdAux : Real;
begin
  if (fDMNFCe.mItensNFeCodCofins.AsString = '01') or (fDMNFCe.mItensNFeCodCofins.AsString = '02') then
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.COFINS.COFINSAliq.CST := fDMNFCe.mItensNFeCodCofins.AsString;
    DetXML.Imposto.COFINS.COFINSAliq.CST := fDMNFCe.mItensNFeCodCofins.AsString;
    vVlrAux := 0;
    if fDMNFCe.mItensNFeVlrCofins.AsFloat > 0 then
      vVlrAux := fDMNFCe.mItensNFeVlrTotal.AsFloat;
    DetXML.Imposto.COFINS.COFINSAliq.VBC     := Replace(FormatFloat('0.00',vVlrAux),',','.');
    DetXML.Imposto.COFINS.COFINSAliq.PCOFINS := Replace(FormatFloat('0.0000',fDMNFCe.mItensNFeAliqCofins.AsFloat),',','.');
    DetXML.Imposto.COFINS.COFINSAliq.VCOFINS := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrCofins.AsFloat),',','.');
  end
  else
  if (fDMNFCe.mItensNFeCodCofins.AsString = '03') then
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.COFINS.COFINSQtde.CST := fDMNFCe.mItensNFeCodCofins.AsString;
    DetXML.Imposto.COFINS.COFINSQtde.CST := fDMNFCe.mItensNFeCodCofins.AsString;
    vQtdAux := 0;
    if fDMNFCe.mItensNFeVlrCofins.AsFloat > 0 then
      vQtdAux := fDMNFCe.mItensNFeQtd.AsFloat;
    DetXML.Imposto.COFINS.COFINSQtde.QBCProd   := Replace(FormatFloat('0.0000',vQtdAux),',','.');
    DetXML.Imposto.COFINS.COFINSQtde.VAliqProd := Replace(FormatFloat('0.0000',fDMNFCe.mItensNFeAliqCofins.AsFloat),',','.');
    DetXML.Imposto.COFINS.COFINSQtde.VCOFINS   := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrCofins.AsFloat),',','.');
  end
  else
  if (fDMNFCe.mItensNFeCodCofins.AsString = '04') or (fDMNFCe.mItensNFeCodCofins.AsString = '05') or (fDMNFCe.mItensNFeCodCofins.AsString = '06') or
     (fDMNFCe.mItensNFeCodCofins.AsString = '07') or (fDMNFCe.mItensNFeCodCofins.AsString = '08') or (fDMNFCe.mItensNFeCodCofins.AsString = '09') then
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.COFINS.COFINSNT.CST := fDMNFCe.mItensNFeCodCofins.AsString;
    DetXML.Imposto.COFINS.COFINSNT.CST := fDMNFCe.mItensNFeCodCofins.AsString;
  end
  else
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.COFINS.COFINSOutr.CST := fDMNFCe.mItensNFeCodCofins.AsString;
    DetXML.Imposto.COFINS.COFINSOutr.CST := fDMNFCe.mItensNFeCodCofins.AsString;
    vVlrAux := 0;
    vQtdAux := 0;
    if fDMNFCe.mItensNFeVlrCofins.AsFloat > 0 then
    begin
      vVlrAux := fDMNFCe.mItensNFeVlrTotal.AsFloat;
      vQtdAux := fDMNFCe.mItensNFeQtd.AsFloat;
    end;
    if fDMNFCe.mItensNFeTipoCofins.AsString = 'V' then
    begin
      DetXML.Imposto.COFINS.COFINSOutr.QBCProd   := Replace(FormatFloat('0.0000',vQtdAux),',','.');
      DetXML.Imposto.COFINS.COFINSOutr.VAliqProd := Replace(FormatFloat('0.0000',fDMNFCe.mItensNFeAliqCofins.AsFloat),',','.');
    end
    else
    begin
      DetXML.Imposto.COFINS.COFINSOutr.VBC     := Replace(FormatFloat('0.00',vVlrAux),',','.');
      DetXML.Imposto.COFINS.COFINSOutr.PCOFINS := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeAliqCofins.AsFloat),',','.');
    end;
    DetXML.Imposto.COFINS.COFINSOutr.VCOFINS := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrCofins.AsFloat),',','.');
  end;
end;

procedure prc_Monta_parcela(Data : TDateTime ; Valor : Real ; Parcela, NumNota : Integer ; Tipo_Cond : String); //P= A Prazo  V= A Vista
begin
  DupXML  := NfeXML.InfNFe.Cobr.Dup.Add;
  if Tipo_Cond = 'V' then
  begin
    //DupXML.NDup  := '';
    //DupXML.DVenc := 'A  V I S T A';
    DupXML.NDup  := 'A  V I S T A';
    //DupXML.DVenc := '';
  end
  else
  begin
    if Parcela < 1 then
      DupXML.NDup := InTToStr(NumNota) + '/' + 'ENT'
    else
      DupXML.NDup := InTToStr(NumNota) + '/' + IntToStr(Parcela);
     DupXML.DVenc := FormatFloat('0000',YearOf(Data)) + '-' + FormatFloat('00',MonthOf(Data)) + '-' + FormatFloat('00',DayOf(Data));
  end;
  DupXML.VDup  := Replace(FormatFloat('0.00',Valor),',','.');
end;

procedure prc_Monta_Rodape(fDMCupomFiscal: TDMCupomFiscal ; fDMNFCe : TDMNFCe);
var
  vVlrOutrasDespAcess : Real;
  vAux : Real;
begin
{* W  Total da NF-e }

//Letra W - Totais - Grupo de Valores Totais referentes ao ICMS
  vVlrOutrasDespAcess := 0;

  NfeXML.InfNFe.Total.ICMSTot.VBC        := Replace(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalBASE_ICMS.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VICMS      := Replace(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_ICMS.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VICMSDeson := Replace(FormatFloat('0.00',0),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VBCST      := Replace(FormatFloat('0.00',0),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VST        := Replace(FormatFloat('0.00',0),',','.');
  //vAux := StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsFloat + fDMCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsFloat));
  vAux := StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsFloat + vVlr_Desconto_NFCe));
  NfeXML.InfNFe.Total.ICMSTot.VProd      := Replace(FormatFloat('0.00',vAux),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VFrete     := Replace(FormatFloat('0.00',0),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VSeg       := Replace(FormatFloat('0.00',0),',','.');
  //NfeXML.InfNFe.Total.ICMSTot.VDesc      := Replace(FormatFloat('0.00',0),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VDesc      := Replace(FormatFloat('0.00',vVlr_Desconto_NFCe),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VII        := Replace(FormatFloat('0.00',0),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VIPI       := Replace(FormatFloat('0.00',0),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VPIS       := Replace(FormatFloat('0.00',0),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VCOFINS    := Replace(FormatFloat('0.00',0),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VOutro     := Replace(FormatFloat('0.00',vVlrOutrasDespAcess),',','.');
  vAux := fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat;
  //if fDMNFCe.qParametrosUSA_DESONERACAO.AsString = 'S' then
  //  vAux := StrToFloat(FormatCurr('0.00',fDMCupomFiscal.cdsNotaFiscalVLR_NOTA.AsFloat - fDMCupomFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsFloat));
  NfeXML.InfNFe.Total.ICMSTot.VNF        := Replace(FormatFloat('0.00',vAux),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VTotTrib   := Replace(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsFloat),',','.');

{* W01  Total da NF-e / ISSQN }
  //Tag não implementada

{* W02  Total da NF-e / Retenção de Tributos }
  //Tag não implementada

{* X  Informações do transporte da NF-e }
  NfeXML.InfNFe.Transp.ModFrete := '9';

  //NFCe foi tirado os volumes, ver se vai precisar   26/04/2015
  //Volumes
  {if (fDMCupomFiscal.cdsNotaFiscalQTDVOLUME.AsInteger > 0) or (trim(fDMCupomFiscal.cdsNotaFiscalESPECIE.AsString) <> '') or
     (trim(fDMCupomFiscal.cdsNotaFiscalMARCA.AsString) <> '') or (trim(fDMCupomFiscal.cdsNotaFiscalNUMEROVOLUME.AsString) <> '') or
     (StrToFloat(FormatFloat('0.000',fDMCupomFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat)) > 0) or
     (StrToFloat(FormatFloat('0.000',fDMCupomFiscal.cdsNotaFiscalPESOBRUTO.AsFloat)) > 0) then
  begin
    VolXML := NfeXML.InfNFe.Transp.Vol.Add;
    if trim(fDMCupomFiscal.cdsNotaFiscalQTDVOLUME.AsString) <> '' then
      VolXML.QVol  := TirarAcento(fDMCupomFiscal.cdsNotaFiscalQTDVOLUME.AsString);
    if (fDMCupomFiscal.cdsNotaFiscalESPECIE.AsString) <> '' then
      VolXML.Esp   := TirarAcento(fDMCupomFiscal.cdsNotaFiscalESPECIE.AsString);
    if trim(fDMCupomFiscal.cdsNotaFiscalMARCA.AsString) <> '' then
      VolXML.Marca := TirarAcento(fDMCupomFiscal.cdsNotaFiscalMARCA.AsString);
    if trim(fDMCupomFiscal.cdsNotaFiscalNUMEROVOLUME.AsString) <> '' then
      VolXML.NVol  := fDMCupomFiscal.cdsNotaFiscalNUMEROVOLUME.AsString;
    if StrToFloat(FormatFloat('0.000',fDMCupomFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat)) > 0 then
      VolXML.PesoL := Replace(FormatFloat('0.000',fDMCupomFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat),',','.');
    if StrToFloat(FormatFloat('0.000',fDMCupomFiscal.cdsNotaFiscalPESOBRUTO.AsFloat)) > 0 then
      VolXML.PesoB := Replace(FormatFloat('0.000',fDMCupomFiscal.cdsNotaFiscalPESOBRUTO.AsFloat),',','.');
  end;}

  //Letra Y - Cobrança
  if fDMCupomFiscal.cdsCupomFiscalTIPO_PGTO.AsString <> 'N' then
  begin
    PagXml  := NfeXML.InfNFe.Pag.Add;

    PagXml.TPag := fDMCupomFiscal.cdsCupomFiscalFORMAPGTO_CODIGO.AsString;
    PagXml.VPag := Replace(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat),',','.');
//aqui cobrança com tpag
    //NFCe  27/04/2015
    //CobrXML := NfeXML.InfNFe.Cobr;
    {CobrXML.Fat.NFat  := fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsString;
    CobrXML.Fat.VOrig := Replace(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat),',','.');
    CobrXML.Fat.VLiq  := Replace(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat),',','.');
    if fDMCupomFiscal.cdsCupomFiscalTIPO_PGTO.AsString = 'V' then
      prc_Monta_parcela(fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime,fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat,1,fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger,'V')
    else
    begin
      fDMCupomFiscal.cdsCupom_Parc.First;
      fDMCupomFiscal.cdsCupom_Parc.First;
      while not fDMCupomFiscal.cdsCupom_Parc.Eof do
      begin
        prc_Monta_parcela(fDMCupomFiscal.cdsCupom_ParcDTVENCIMENTO.AsDateTime,fDMCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsFloat,fDMCupomFiscal.cdsCupom_ParcPARCELA.AsInteger,fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger,'P');
        fDMCupomFiscal.cdsCupom_Parc.Next;
      end;
    end;}
  end;

{* Z  Informações do transporte da NF-e }
  fDMNFCe.mDadosAdicionaisNFe.First;
  if trim(fDMNFCe.mDadosAdicionaisNFeObs.Value) <> '' then
    NfeXML.InfNFe.InfAdic.InfCpl := TirarAcento(fDMNFCe.mDadosAdicionaisNFeObs.Value);

  //Indicador de processo não implementado

{* ZA  Informações de Comércio Exterior }

{* ZB  Informações de Compras }
  //Não implementado
end;

procedure prc_Monta_Detalhe(fDMCupomFiscal: TDMCupomFiscal ; fDMNFCe : TDMNFCe);
var
  vItemAdicao : Integer;
  vCodSitTrib, vOrigem : String;
  vPerc_Interno : Real;
  vCodCSTIPI : String;
  texto2 : String;
begin
{* H  Detalhamento de Produtos e Serviços da NF-e }
  DetXML       := NfeXML.InfNFe.Det.Add;
  DetXML.NItem := fDMNFCe.mItensNFeItemNota.AsString;

  DetXML.Prod.CProd  := fDMNFCe.mItensNFeCodProduto.AsString;
  DetXML.Prod.CEAN   := Trim(fDMNFCe.mItensNFeCodBarra.AsString);
  if (fDMNFCe.mItensNFeItemNota.AsInteger = 1) and (vTipo_Ambiente_NFe = '2') then
    DetXML.Prod.XProd := 'NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'
  else
    DetXML.Prod.XProd  := TirarAcento(fDMNFCe.mItensNFeNomeProduto.AsString);
  DetXML.Prod.NCM    := Replace(fDMNFCe.mItensNFeClasFiscal.AsString,'.','');
  if trim(fDMNFCe.mItensNFeNCM_EX.AsString) <> '' then
    DetXML.Prod.EXTIPI := fDMNFCe.mItensNFeNCM_EX.AsString;
  DetXML.Prod.CFOP     := fDMNFCe.mItensNFeCodNatOper.AsString;
  DetXML.Prod.UCom     := fDMNFCe.mItensNFeUnidade.AsString;
  DetXML.Prod.QCom     := Replace(FormatFloat('0.0000',fDMNFCe.mItensNFeQtd.AsFloat) ,',','.');
  DetXML.Prod.VUnCom   := Replace(FormatFloat('0.0000######',fDMNFCe.mItensNFeVlrUnitario.AsFloat) ,',','.');
  DetXML.Prod.VProd    := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrTotal.AsFloat) ,',','.');
  DetXML.Prod.CEANTrib := Trim(fDMNFCe.mItensNFeCodBarra.AsString);
  DetXML.Prod.UTrib    := fDMNFCe.mItensNFeUnidade.AsString;
  DetXML.Prod.QTrib    := Replace(FormatFloat('0.0000',fDMNFCe.mItensNFeQtd.AsFloat) ,',','.');
  DetXML.Prod.VUnTrib  := Replace(FormatFloat('0.0000######',fDMNFCe.mItensNFeVlrUnitario.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrFrete.AsFloat)) > 0 then
    DetXML.Prod.VFrete   := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrFrete.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrSeguro.AsFloat)) > 0 then
    DetXML.Prod.VSeg     := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrSeguro.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrDesconto.AsFloat)) > 0 then
    DetXML.Prod.VDesc    := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrDesconto.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrOutrasDespesas.AsFloat)) > 0 then
    DetXML.Prod.VOutro    := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrOutrasDespesas.AsFloat) ,',','.');
  if fDMNFCe.mItensNFeSomaVlrTotalProd.AsBoolean then
    DetXML.Prod.IndTot := '1'
  else
    DetXML.Prod.IndTot := '0';

{* I05  Produtos e Serviços / Pedido de Compra }
  if trim(fDMNFCe.mItensNFePedidoCliente.AsString) <> '' then
  begin
    DetXML.Prod.XPed     := fDMNFCe.mItensNFePedidoCliente.AsString;
    if fDMNFCe.mItensNFeItemPedido.AsInteger > 0 then
      DetXML.Prod.NItemPed := fDMNFCe.mItensNFeItemPedido.AsString;
  end;

{* M  Tributos incidentes no Produto ou Serviço }
  vOrigem     := Copy(fDMNFCe.mItensNFeCodSitTrib.AsString,1,1);
  vCodSitTrib := Copy(fDMNFCe.mItensNFeCodSitTrib.AsString,2,Length(fDMNFCe.mItensNFeCodSitTrib.AsString) - 1);
  //NfeXML.InfNFe.Det.Add.Imposto.VTotTrib := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrTributos.AsFloat),',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrTributos.AsFloat)) > 0 then
    DetXML.Imposto.VTotTrib := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrTributos.AsFloat),',','.');

{* N  ICMS Normal e ST }
  if StrToFloat(FormatFloat('0.0000',fDMNFCe.mItensNFePercIcmsSubstInterno.AsFloat)) > 0 then
    vPerc_Interno := StrToFloat(FormatFloat('0.0000',fDMNFCe.mItensNFePercIcmsSubstInterno.AsFloat))
  else
    vPerc_Interno := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.qUFPERC_ICMS_INTERNO.AsFloat));

  if vCodSitTrib = '00' then
    prc_Monta_ICMS00(fDMNFCe,vOrigem,vCodSitTrib)
  else
  if vCodSitTrib = '10' then
    prc_Monta_ICMS10(fDMNFCe,vOrigem,vCodSitTrib,vPerc_Interno)
  else
  if vCodSitTrib = '20' then
    prc_Monta_ICMS20(fDMNFCe,vOrigem,vCodSitTrib)
  else
  if vCodSitTrib = '30' then
    prc_Monta_ICMS30(fDMNFCe,vOrigem,vCodSitTrib,vPerc_Interno)
  else
  if (vCodSitTrib = '40') or (vCodSitTrib = '41') or (vCodSitTrib = '50') then
    prc_Monta_ICMS40(fDMNFCe,vOrigem,vCodSitTrib)
  else
  if (vCodSitTrib = '51') then
    prc_Monta_ICMS51(fDMNFCe,vOrigem,vCodSitTrib)
  else
  if (vCodSitTrib = '60') then
    prc_Monta_ICMS60(fDMNFCe,vOrigem,vCodSitTrib)
  else
  if (vCodSitTrib = '70') then
    prc_Monta_ICMS70(fDMNFCe,vOrigem,vCodSitTrib,vPerc_Interno)
  else
  if (vCodSitTrib = '90') then
    prc_Monta_ICMS90(fDMNFCe,vOrigem,vCodSitTrib,vPerc_Interno)
  else
  if (vCodSitTrib = '101') then
    //prc_Monta_ICMSSN101(fDMNFCe,vOrigem,vCodSitTrib,fDMCupomFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat)
    prc_Monta_ICMSSN101(fDMNFCe,vOrigem,vCodSitTrib,0)
  else
  if (vCodSitTrib = '102') or (vCodSitTrib = '103') or (vCodSitTrib = '300') or (vCodSitTrib = '400') then
    prc_Monta_ICMSSN102(fDMNFCe,vOrigem,vCodSitTrib)
  else
  if vCodSitTrib = '201' then
    //prc_Monta_ICMSSN201(fDMNFCe,vOrigem,vCodSitTrib,vPerc_Interno,fDMCupomFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat)
    prc_Monta_ICMSSN201(fDMNFCe,vOrigem,vCodSitTrib,vPerc_Interno,0)
  else
  if (vCodSitTrib = '202') or (vCodSitTrib = '203') then
    prc_Monta_ICMSSN202(fDMNFCe,vOrigem,vCodSitTrib,vPerc_Interno)
  else
  if vCodSitTrib = '500' then
    prc_Monta_ICMSSN500(fDMNFCe,vOrigem,vCodSitTrib)
  else
  if vCodSitTrib = '900' then
    //prc_Monta_ICMSSN900(fDMNFCe,vOrigem,vCodSitTrib,vPerc_Interno,fDMCupomFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat);
    prc_Monta_ICMSSN900(fDMNFCe,vOrigem,vCodSitTrib,vPerc_Interno,0);

{* O  Imposto sobre Produtos Industrializados }
  vCodCSTIPI := fDMNFCe.mItensNFeCodCSTIPI.AsString;
  if vCodCSTIPI <> EmptyStr then
  begin
    DetXML.Imposto.IPI.CEnq := '999';
    if ((fDMNFCe.mItensNFeVlrIpi.AsFloat > 0) and (fDMNFCe.mItensNFeAliqIpi.AsFloat > 0)) or
       (fDMNFCe.mItensNFeCodCSTIPI.AsString = '99') or (fDMNFCe.mItensNFeCodCSTIPI.AsString = '49') or
       (fDMNFCe.mItensNFeCodCSTIPI.AsString = '50') or (fDMNFCe.mItensNFeCodCSTIPI.AsString = '00') then
    begin
      DetXML.Imposto.IPI.IPITrib.AddChild('CST').Text  := vCodCSTIPI;
      DetXML.Imposto.IPI.IPITrib.AddChild('vBC').Text  := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrTotal.AsFloat),',','.');
      DetXML.Imposto.IPI.IPITrib.AddChild('pIPI').Text := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeAliqIpi.AsFloat),',','.');
      DetXML.Imposto.IPI.IPITrib.AddChild('vIPI').Text  := Replace(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIpi.AsFloat),',','.');
    end
    else
      DetXML.Imposto.IPI.IPINT.AddChild('CST').Text  := vCodCSTIPI;
  end;

{* Q  PIS }
  prc_Monta_Pis(fDMNFCe);

{* R  PIS ST }
  //Tag não implementada

{* S  COFINS }
  prc_Monta_Cofins(fDMNFCe);

{* R  COFINS ST }
  //Tag não implementada

{* U  ISSQN }
  //Tag não implementada

{* UA  Tributos Devolvidos (para o item da NF-e) }
  //Tag não implementada

{* V  Informações adicionais (para o item da NF-e) }
  //NfeXML.InfNFe.Det.Add.InfAdProd := fDMNFCe.mItensNFeInfAdicionais.Value;
  texto2 := trim(fDMNFCe.mItensNFeInfAdicionais.Value);
  if trim(texto2) <> '' then
    DetXML.InfAdProd := fDMNFCe.mItensNFeInfAdicionais.Value;
end;

procedure prc_Monta_Cabecalho(fDMCupomFiscal: TDMCupomFiscal ; fDMNFCe : TDMNFCe);
var
  Texto2, Texto : String;
  i: Integer;
  vNatureza : String;
begin
{* A  Dados da Nota Fiscal Eletrônica}
  NfeXML.InfNFe.Versao   := fDMNFCe.qParametrosVERSAONFE.AsString;
  NfeXML.InfNFe.Id       := 'NFe' + vChave_XML;

  fDMNFCe.Posiciona_CidadeUF(fDMNFCe.qFilialID_CIDADE.AsInteger,1);
  fDMCupomFiscal.cdsCFOP.IndexFieldNames := 'ID';
  vNatureza := fDMCupomFiscal.vDescricao_Operacao;
  //Tirado na NFCe 26/04/2015
  {if fDMCupomFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger > 0 then
  begin
    fDMNFCe.Posiciona_Operacao_Nota(fDMCupomFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger);
    if trim(fDMNFCe.qOperacao_NotaNATUREZA_NOTA.AsString) = '' then
      vNatureza := fDMNFCe.qOperacao_NotaNOME.AsString
    else
      vNatureza := fDMNFCe.qOperacao_NotaNATUREZA_NOTA.AsString;
  end;
  if trim(vNatureza) = '' then
    if fDMCupomFiscal.cdsCFOP.FindKey([fDMCupomFiscal.cdsNotaFiscalID_CFOP.AsInteger]) then
      vNatureza := fDMCupomFiscal.cdsCFOPNOME.AsString;}

{* B  Identificação da Nota Eletrônica}
  //NfeXML.InfNFe.Ide.CUF   := fDMNFCe.qCidadeUF.AsString;
  NfeXML.InfNFe.Ide.CUF   := fDMNFCe.qUFCODUF.AsString;
  i := Length(vChave_XML) + 1 - 9;
  NfeXML.InfNFe.Ide.CNF   := copy(vChave_XML,i,8);
  NfeXML.InfNFe.Ide.NatOp := vNatureza;
  if fDMCupomFiscal.cdsCupomFiscalTIPO_PGTO.AsString = 'P' then
    NfeXML.InfNFe.Ide.IndPag := '1'
  else
  if fDMCupomFiscal.cdsCupomFiscalTIPO_PGTO.AsString = 'V' then
    NfeXML.InfNFe.Ide.IndPag := '0'
  else
    NfeXML.InfNFe.Ide.IndPag := '2';
  NfeXML.InfNFe.Ide.Mod_  := '65';
  NfeXML.InfNFe.Ide.Serie := fDMCupomFiscal.cdsCupomFiscalSERIE.AsString;
  NfeXML.InfNFe.Ide.NNF   := fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsString;
  vHrEmissaoNFe := Now;
  //19/10/2015
  //Texto := FormatDateTime('YYYY-MM-DD',fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + PegaTimeZone;
  if (fnc_HorarioVerao) then
  begin
    if trim(fDMNFCe.qParametrosFUSOHORARIO_VERAO.AsString) <> '' then
      Texto := FormatDateTime('YYYY-MM-DD',fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + fDMNFCe.qParametrosFUSOHORARIO_VERAO.AsString
    else
      Texto := FormatDateTime('YYYY-MM-DD',fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + PegaTimeZone;
  end
  else
  begin
    if trim(fDMNFCe.qParametrosFUSOHORARIO.AsString) <> '' then
      Texto := FormatDateTime('YYYY-MM-DD',fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + fDMNFCe.qParametrosFUSOHORARIO.AsString
    else
      Texto := FormatDateTime('YYYY-MM-DD',fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + PegaTimeZone;
  end;

  NfeXML.InfNFe.Ide.DhEmi := Texto;

  NfeXML.InfNFe.Ide.TpNF := '1'; //Nota Saida
  NfeXML.InfNFe.Ide.IdDest   := fDMCupomFiscal.cdsCupomFiscalTIPO_DESTINO_OPERACAO.AsString;
  NfeXML.InfNFe.Ide.CMunFG   := fDMNFCe.qCidadeCODMUNICIPIO.AsString;
  NfeXML.InfNFe.Ide.TpImp    := '4';
  NfeXML.InfNFe.Ide.TpEmis   := vTipo_Emissao_NFe;
  NfeXML.InfNFe.Ide.CDV      := copy(vChave_XML,Length(vChave_XML),1);
  NfeXML.InfNFe.Ide.TpAmb    := vTipo_Ambiente_NFe;
  NfeXML.InfNFe.Ide.FinNFe   := vFinalidade_NFe;
  NfeXML.InfNFe.Ide.IndFinal := fDMCupomFiscal.cdsPessoaTIPO_CONSUMIDOR.AsString;
  NfeXML.InfNFe.Ide.IndPres  := fDMCupomFiscal.cdsCupomFiscalTIPO_ATENDIMENTO.AsString;
  NfeXML.InfNFe.Ide.ProcEmi  := vProcesso_Emissao_NFe;
  NfeXML.InfNFe.Ide.VerProc  := fDMNFCe.qParametrosVERSAOEMISSAONFE.AsString;
  //Ver aqui NFCe 26/04/2015
  {if (vTipo_Emissao_NFe = '5') or (vTipo_Emissao_NFe = '9') then
  begin
    Texto := FormatDateTime('YYYY-MM-DD',fDMCupomFiscal.cdsNotaFiscalDTCONTINGENCIA.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMCupomFiscal.cdsNotaFiscalHRCONTINGENCIA.AsDateTime) + PegaTimeZone;
    NfeXML.InfNFe.Ide.DhCont := Texto;
    NfeXML.InfNFe.Ide.XJust  := fDMCupomFiscal.cdsNotaFiscalMOTIVO_CONTINGENCIA.AsString;
  end;}

{* C  Identificação do Emitente da Ntoa Fiscal Eletrônica }
  if fDMNFCe.qFilialPESSOA.AsString = 'J' then
    NfeXML.InfNFe.Emit.CNPJ := Monta_Texto(fDMNFCe.qFilialCNPJ_CPF.AsString,14)
  else
    NfeXML.InfNFe.Emit.CPF := Monta_Texto(fDMNFCe.qFilialCNPJ_CPF.AsString,11);
  NfeXML.InfNFe.Emit.XNome := TirarAcento(fDMNFCe.qFilialNOME.AsString);
  if trim(fDMNFCe.qFilialNOME_INTERNO.AsString) <> '' then
    NfeXML.InfNFe.Emit.XFant := TirarAcento(fDMNFCe.qFilialNOME_INTERNO.AsString);
  NfeXML.InfNFe.Emit.EnderEmit.XLgr := TirarAcento(fDMNFCe.qFilialENDERECO.AsString);
  NfeXML.InfNFe.Emit.EnderEmit.Nro  := fDMNFCe.qFilialNUM_END.AsString;
  if trim(fDMNFCe.qFilialCOMPLEMENTO_END.AsString) <> '' then
    NfeXML.InfNFe.Emit.EnderEmit.XCpl := TirarAcento(fDMNFCe.qFilialCOMPLEMENTO_END.AsString);
  NfeXML.InfNFe.Emit.EnderEmit.XBairro := TirarAcento(fDMNFCe.qFilialBAIRRO.AsString);
  NfeXML.InfNFe.Emit.EnderEmit.CMun  := fDMNFCe.qCidadeCODMUNICIPIO.AsString;
  NfeXML.InfNFe.Emit.EnderEmit.XMun  := TirarAcento(fDMNFCe.qCidadeNOME.AsString);
  NfeXML.InfNFe.Emit.EnderEmit.UF    := fDMNFCe.qCidadeUF.AsString;
  NfeXML.InfNFe.Emit.EnderEmit.CEP   := Monta_Texto(fDMNFCe.qFilialCEP.AsString,8);
  NfeXML.InfNFe.Emit.EnderEmit.CPais := fDMNFCe.qPaisCODPAIS.AsString;
  NfeXML.InfNFe.Emit.EnderEmit.XPais := TirarAcento(fDMNFCe.qPaisNOME.AsString);
  Texto2 := Monta_Texto(fDMNFCe.qFilialDDD1.AsString + fDMNFCe.qFilialFONE.AsString,0);
  if (trim(Texto2) <> '') and (Length(Texto2) > 6) then
    NfeXML.InfNFe.Emit.EnderEmit.Fone  := Monta_Texto(fDMNFCe.qFilialDDD1.AsString + fDMNFCe.qFilialFONE.AsString,0);
  NfeXML.InfNFe.Emit.IE              := Monta_Numero(fDMNFCe.qFilialINSCR_EST.AsString,0);
  if fDMNFCe.qFilialINSCMUNICIPAL.AsString <> '' then
    NfeXML.InfNFe.Emit.IM := Monta_Texto(fDMNFCe.qFilialINSCMUNICIPAL.AsString,0);
  if trim(fDMNFCe.qFilialCNAE.AsString) <> '' then
    NfeXML.InfNFe.Emit.CNAE := fDMNFCe.qFilialCNAE.AsString;
  //Ver NFCe  26/04/2015  
  //NfeXML.InfNFe.Emit.CRT  := fDMCupomFiscal.cdsNotaFiscalID_REGIMETRIB.AsString;
  NfeXML.InfNFe.Emit.CRT  := fDMCupomFiscal.cdsFilialID_REGIME_TRIB.AsString;

{* D  Identificação do Fisco Emitente da NFe }

{* E  Identificação do Destinatário da Nota Fiscal Eletrônica }
  //NFCe  foi colocado o if para ver se o cliente é diferente do consumidor   26/04/2015
  if fDMCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger <> fDMCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger then
  begin
    fDMNFCe.Posiciona_CidadeUF(fDMCupomFiscal.cdsPessoaID_CIDADE.AsInteger,fDMCupomFiscal.cdsPessoaID_PAIS.AsInteger);
    if fDMCupomFiscal.cdsPessoaPESSOA.AsString = 'E' then
      NfeXML.InfNFe.Dest.IdEstrangeiro := Monta_Texto(fDMCupomFiscal.cdsPessoaCNPJ_CPF.AsString,0)
    else
    if fDMCupomFiscal.cdsPessoaPESSOA.AsString = 'J' then
      NfeXML.InfNFe.Dest.CNPJ := Monta_Texto(fDMCupomFiscal.cdsPessoaCNPJ_CPF.AsString,14)
    else
    if fDMCupomFiscal.cdsPessoaPESSOA.AsString = 'F' then
      NfeXML.InfNFe.Dest.CPF := Monta_Texto(fDMCupomFiscal.cdsPessoaCNPJ_CPF.AsString,11);
    if vTipo_Ambiente_NFe = '2' then
      NfeXML.InfNFe.Dest.XNome := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'
    else
      NfeXML.InfNFe.Dest.XNome := TirarAcento(fDMCupomFiscal.cdsPessoaNOME.AsString);
    NfeXML.InfNFe.Dest.EnderDest.XLgr    := TirarAcento(fDMCupomFiscal.cdsPessoaENDERECO.AsString);
    NfeXML.InfNFe.Dest.EnderDest.Nro     := fDMCupomFiscal.cdsPessoaNUM_END.AsString;
    if trim(fDMCupomFiscal.cdsPessoaCOMPLEMENTO_END.AsString) <> '' then
      NfeXML.InfNFe.Dest.EnderDest.XCpl    := TirarAcento(fDMCupomFiscal.cdsPessoaCOMPLEMENTO_END.AsString);
    NfeXML.InfNFe.Dest.EnderDest.XBairro := TirarAcento(fDMCupomFiscal.cdsPessoaBAIRRO.AsString);
    NfeXML.InfNFe.Dest.EnderDest.CMun := fDMNFCe.qCidadeCODMUNICIPIO.AsString;
    NfeXML.InfNFe.Dest.EnderDest.XMun := TirarAcento(fDMNFCe.qCidadeNOME.AsString);
    NfeXML.InfNFe.Dest.EnderDest.UF   := fDMNFCe.qUFUF.AsString;
    NfeXML.InfNFe.Dest.EnderDest.CEP   := Monta_Texto(fDMCupomFiscal.cdsPessoaCEP.AsString,8);
    NfeXML.InfNFe.Dest.EnderDest.CPais := fDMNFCe.qPaisCODPAIS.AsString;
    NfeXML.InfNFe.Dest.EnderDest.XPais := TirarAcento(fDMNFCe.qPaisNOME.AsString);
    Texto2 := Monta_Texto(fDMCupomFiscal.cdsPessoaTELEFONE1.AsString,0);
    if trim(Texto2) <> '' then
      NfeXML.InfNFe.Dest.EnderDest.Fone  := fDMCupomFiscal.cdsPessoaDDDFONE1.AsString + Monta_Texto(fDMCupomFiscal.cdsPessoaTELEFONE1.AsString,0);
    NfeXML.InfNFe.Dest.IndIEDest       := fDMCupomFiscal.cdsPessoaTIPO_CONTRIBUINTE.AsString;
    if trim(fDMCupomFiscal.cdsPessoaINSCR_EST.AsString) <> '' then
      NfeXML.InfNFe.Dest.IE := Monta_Texto(fDMCupomFiscal.cdsPessoaINSCR_EST.AsString,0);
    if (trim(fDMCupomFiscal.cdsPessoaINSC_SUFRAMA.AsString) <> '') and not(fDMCupomFiscal.cdsPessoaINSC_SUFRAMA.IsNull) then
      NfeXML.InfNFe.Dest.ISUF := Monta_Texto(fDMCupomFiscal.cdsPessoaINSC_SUFRAMA.AsString,0);
    if (trim(fDMCupomFiscal.cdsPessoaINSC_MUNICIPAL.AsString) <> '') and not(fDMCupomFiscal.cdsPessoaINSC_MUNICIPAL.IsNull) then
      NfeXML.InfNFe.Dest.IM := Monta_Texto(fDMCupomFiscal.cdsPessoaINSC_MUNICIPAL.AsString,0);
    if trim(fDMCupomFiscal.cdsPessoaEMAIL_NFE.AsString) <> '' then
      NfeXML.InfNFe.Dest.Email := Copy(fDMCupomFiscal.cdsPessoaEMAIL_NFE.AsString,1,60);
  end;

{* GA  Autorização para obter XML }
  fDMNFCe.qFilial_Download.Close;
  fDMNFCe.qFilial_Download.ParamByName('ID').AsInteger := fDMCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;
  fDMNFCe.qFilial_Download.Open;
  if not fDMNFCe.qFilial_Download.IsEmpty then
  begin
    AutXML := NfeXML.InfNFe.AutXML.Add;
    fDMNFCe.qFilial_Download.First;
    while not fDMNFCe.qFilial_Download.Eof do
    begin
      if fDMNFCe.qFilial_DownloadPESSOA.AsString = 'J' then
        AutXML.CNPJ := Monta_Texto(fDMNFCe.qFilial_DownloadCNPJ_CPF.AsString,14)
      else
        AutXML.CPF := Monta_Texto(fDMNFCe.qFilial_DownloadCNPJ_CPF.AsString,11);
      fDMNFCe.qFilial_Download.Next;
    end;
  end;
end;

end.
