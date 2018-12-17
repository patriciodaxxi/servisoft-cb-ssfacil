unit uXMLNFe3_10;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, UDMCadNotaFiscal, uDMNFe, enviNFe_v310, DateUtils, Variants;

  procedure prc_Gerar_XML_310(fDMCadNotaFiscal: TDMCadNotaFiscal ; fDMNFe : TDMNFe ; AStrings: TStrings);
  procedure prc_Monta_Cabecalho(fDMCadNotaFiscal: TDMCadNotaFiscal ; fDMNFe : TDMNFe);
  procedure prc_Monta_Detalhe(fDMCadNotaFiscal: TDMCadNotaFiscal ; fDMNFe : TDMNFe);
  procedure prc_Monta_Rodape(fDMCadNotaFiscal: TDMCadNotaFiscal ; fDMNFe : TDMNFe);
  procedure prc_Monta_Transportadora(fDMCadNotaFiscal: TDMCadNotaFiscal ; fDMNFe : TDMNFe);
  //Notas Referenciadas
  procedure prc_Le_mNotaDevolvidaNFe(fDMNFe : TDMNFe);
  procedure prc_Monta_B13(fDMNFe : TDMNFe);
  procedure prc_Monta_B14(fDMNFe : TDMNFe);
  procedure prc_Monta_B20j(fDMNFe : TDMNFe);
  procedure prc_Monta_B20a(fDMNFe : TDMNFe);
  procedure prc_Monta_CTeRef(fDMNFe : TDMNFe);
  //********************
  //Imposto ICMS
  procedure prc_Monta_ICMS00(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMS10(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
  procedure prc_Monta_ICMS20(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMS30(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
  procedure prc_Monta_ICMS40(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMS51(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMS60(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMS70(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
  procedure prc_Monta_ICMS90(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
  procedure prc_Monta_ICMSSN101(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Simples : Real);
  procedure prc_Monta_ICMSSN102(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMSSN201(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno, Perc_Simples : Real);
  procedure prc_Monta_ICMSSN202(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
  procedure prc_Monta_ICMSSN500(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
  procedure prc_Monta_ICMSSN900(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno, Perc_Simples : Real);
  //******  0
  procedure prc_Monta_PIS(fDMNFe : TDMNFe);
  procedure prc_Monta_COFINS(fDMNFe : TDMNFe);

  //08/12/2015
  procedure prc_Monta_ICMS_UF_Destino(fDMNFe : TDMNFe);
  //****

  function fnc_Posicionar_Cidade(fDMNFe : TDMNFe ; ID : Integer) : Boolean;
  procedure prc_Monta_parcela(Data : TDateTime ; Valor : Real ; Parcela, NumNota : Integer ; Tipo_Cond : String); //P= A Prazo  V= A Vista

var
  EnviNfe: IXMLTEnviNFe;
  NfeXML: IXMLTNFe;
  DetXML  : IXMLTNFe_infNFe_Det;
  RefNfeXML : IXMLTNFe_infNFe_ide_NFref;
  TranspXML : IXMLTNFe_infNFe_Transp;
  TransportaXML : IXMLTNFe_infNFe_transp_Transporta;
  CobrXML : IXMLTNFe_infNFe_cobr;
  DupXML : IXMLTNFe_infNFe_cobr_dup;
  LacreXML : IXMLTNFe_infNFe_transp_vol_lacres;
  DetDIXML : IXMLTNFe_infNFe_det_prod_DI;
  DetADIXML : IXMLTNFe_infNFe_det_prod_DI_adi;

  DetExport    : IXMLTNFe_infNFe_det_prod_detExport;

  AutXML : IXMLTNFe_infNFe_autXML;
  VolXML : IXMLTNFe_infNFe_transp_vol;
  ReboqueXML : IXMLTNFe_infNFe_Transp;
  DIXML : IXMLTNFe_infNFe_det_prod_DI;


  //ReboqueXML : ixml

  vTipo_Emissao_NFe : String;
  vTipo_Ambiente_NFe : String;
  vFinalidade_NFe : String;
  vProcesso_Emissao_NFe : String;
  vChave_XML : String;
  //12/08/2016 Criado para imprimir o número da MS para a empresa do Ramiro
  vObs_MS_Item : WideString;

implementation

uses DB, uUtilPadrao;

function fnc_Posicionar_Cidade(fDMNFe : TDMNFe ; ID : Integer) : Boolean;
begin
  Result := True;
  fDMNFe.qCidade.Close;
  fDMNFe.qCidade.ParamByName('ID').AsInteger := ID;
  fDMNFe.qCidade.Open;
  if fDMNFe.qCidade.IsEmpty then
    Result := False;
end;

procedure prc_Gerar_XML_310(fDMCadNotaFiscal: TDMCadNotaFiscal ; fDMNFe : TDMNFe ; AStrings: TStrings);
begin
  AStrings.Clear;

  EnviNfe := NewenviNFe;
  NfeXML  := EnviNfe.NFe.Add;

  prc_Monta_Cabecalho(fDMCadNotaFiscal,fDMNFe);

  if fDMCadNotaFiscal.cdsUFUF.AsString <>  fDMCadNotaFiscal.cdsClienteUF.AsString then
    fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,([Locaseinsensitive]));

  fDMCadNotaFiscal.cdsNotaFiscal_Imp.First;
  fDMNFe.mItensNFe.First;
  while not fDMNFe.mItensNFe.Eof do
  begin
    prc_Monta_Detalhe(fDMCadNotaFiscal,fDMNFe);
    fDMNFe.mItensNFe.Next;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.Next;
  end;

  prc_Monta_Rodape(fDMCadNotaFiscal,fDMNFe);

  AStrings.Text := '<?xml version="1.0" encoding="utf-8"?>'+NfeXML.XML;
  //Memo1.lines.Text := '<?xml version="1.0" encoding="utf-8"?>'+NfeXML.XML;
  //AStrings.Text := vTextoEnvio.Text;
end;

procedure prc_Monta_B13(fDMNFe : TDMNFe);
begin
  //NfeXML.InfNFe.Ide.NFref.Add.RefNFe := fDMNFe.mNotaDevolvidaNFeNFeChaveAcesso.AsString;
  RefNfeXML.RefNFe := fDMNFe.mNotaDevolvidaNFeNFeChaveAcesso.AsString;
end;

procedure prc_Monta_B14(fDMNFe : TDMNFe);
begin
  {NfeXML.InfNFe.Ide.NFref.Add.RefNF.CUF   := fDMNFe.mNotaDevolvidaNFeCodUF.AsString;
  NfeXML.InfNFe.Ide.NFref.Add.RefNF.AAMM  := FormatFloat('00',fDMNFe.mNotaDevolvidaNFeAnoEmissao.AsInteger) + FormatFloat('00',fDMNFe.mNotaDevolvidaNFeMesEmissao.AsInteger);
  NfeXML.InfNFe.Ide.NFref.Add.RefNF.CNPJ  := Monta_Texto(fDMNFe.mNotaDevolvidaNFeCNPJ.AsString,14);
  NfeXML.InfNFe.Ide.NFref.Add.RefNF.Mod_  := fDMNFe.mNotaDevolvidaNFeModelo.AsString;
  if (fDMNFe.mNotaDevolvidaNFeSerie.AsString = 'UN') or (fDMNFe.mNotaDevolvidaNFeSerie.AsString = 'UNI') then
    NfeXML.InfNFe.Ide.NFref.Add.RefNF.Serie := '1'
  else
    NfeXML.InfNFe.Ide.NFref.Add.RefNF.Serie := fDMNFe.mNotaDevolvidaNFeSerie.AsString;
  NfeXML.InfNFe.Ide.NFref.Add.RefNF.NNF := fDMNFe.mNotaDevolvidaNFeNumNota.AsString;}

  RefNfeXML.RefNF.CUF   := fDMNFe.mNotaDevolvidaNFeCodUF.AsString;
  RefNfeXML.RefNF.AAMM  := FormatFloat('00',fDMNFe.mNotaDevolvidaNFeAnoEmissao.AsInteger) + FormatFloat('00',fDMNFe.mNotaDevolvidaNFeMesEmissao.AsInteger);
  RefNfeXML.RefNF.CNPJ  := Monta_Texto(fDMNFe.mNotaDevolvidaNFeCNPJ.AsString,14);
  RefNfeXML.RefNF.Mod_  := fDMNFe.mNotaDevolvidaNFeModelo.AsString;
  if (fDMNFe.mNotaDevolvidaNFeSerie.AsString = 'UN') or (fDMNFe.mNotaDevolvidaNFeSerie.AsString = 'UNI') then
    RefNfeXML.RefNF.Serie := '1'
  else
    RefNfeXML.RefNF.Serie := fDMNFe.mNotaDevolvidaNFeSerie.AsString;
  RefNfeXML.RefNF.NNF := fDMNFe.mNotaDevolvidaNFeNumNota.AsString;
end;

procedure prc_Monta_B20j(fDMNFe : TDMNFe);
begin
  {NfeXML.InfNFe.Ide.NFref.Add.RefECF.Mod_ := fDMNFe.mNotaDevolvidaNFeCupomModelo.AsString;
  NfeXML.InfNFe.Ide.NFref.Add.RefECF.NECF := fDMNFe.mNotaDevolvidaNFeCupomNumECF.AsString;
  NfeXML.InfNFe.Ide.NFref.Add.RefECF.NCOO := fDMNFe.mNotaDevolvidaNFeCupomNumCOO.AsString;}
  RefNfeXML.RefECF.Mod_ := fDMNFe.mNotaDevolvidaNFeCupomModelo.AsString;
  RefNfeXML.RefECF.NECF := fDMNFe.mNotaDevolvidaNFeCupomNumECF.AsString;
  RefNfeXML.RefECF.NCOO := fDMNFe.mNotaDevolvidaNFeCupomNumCOO.AsString;
end;

procedure prc_Monta_B20a(fDMNFe : TDMNFe);
begin
  {NfeXML.InfNFe.Ide.NFref.Add.RefNFP.CUF  := fDMNFe.mNotaDevolvidaNFeCodUF.AsString;
  NfeXML.InfNFe.Ide.NFref.Add.RefNFP.AAMM := FormatFloat('00',fDMNFe.mNotaDevolvidaNFeAnoEmissao.AsInteger) + FormatFloat('00',fDMNFe.mNotaDevolvidaNFeMesEmissao.AsInteger);
  if Length(fDMNFe.mNotaDevolvidaNFeCNPJ.AsString) > 12 then
    NfeXML.InfNFe.Ide.NFref.Add.RefNFP.CNPJ := Monta_Texto(fDMNFe.mNotaDevolvidaNFeCNPJ.AsString,14)
  else
    NfeXML.InfNFe.Ide.NFref.Add.RefNFP.CPF := Monta_Texto(fDMNFe.mNotaDevolvidaNFeCNPJ.AsString,11);
  NfeXML.InfNFe.Ide.NFref.Add.RefNFP.IE    := fDMNFe.mNotaDevolvidaNFeIE.AsString;
  NfeXML.InfNFe.Ide.NFref.Add.RefNFP.Mod_  := fDMNFe.mNotaDevolvidaNFeModelo.AsString;
  if (fDMNFe.mNotaDevolvidaNFeSerie.AsString = 'UN') or (fDMNFe.mNotaDevolvidaNFeSerie.AsString = 'UNI') then
    NfeXML.InfNFe.Ide.NFref.Add.RefNFP.Serie := '1'
  else
    NfeXML.InfNFe.Ide.NFref.Add.RefNFP.Serie := fDMNFe.mNotaDevolvidaNFeSerie.AsString;
  NfeXML.InfNFe.Ide.NFref.Add.RefNFP.NNF := fDMNFe.mNotaDevolvidaNFeNumNota.AsString;}

  RefNfeXML.RefNFP.CUF  := fDMNFe.mNotaDevolvidaNFeCodUF.AsString;
  RefNfeXML.RefNFP.AAMM := FormatFloat('00',fDMNFe.mNotaDevolvidaNFeAnoEmissao.AsInteger) + FormatFloat('00',fDMNFe.mNotaDevolvidaNFeMesEmissao.AsInteger);
  if Length(fDMNFe.mNotaDevolvidaNFeCNPJ.AsString) > 12 then
    RefNfeXML.RefNFP.CNPJ := Monta_Texto(fDMNFe.mNotaDevolvidaNFeCNPJ.AsString,14)
  else
    RefNfeXML.RefNFP.CPF := Monta_Texto(fDMNFe.mNotaDevolvidaNFeCNPJ.AsString,11);
  RefNfeXML.RefNFP.IE    := Monta_Numero(fDMNFe.mNotaDevolvidaNFeIE.AsString,0);
  RefNfeXML.RefNFP.Mod_  := fDMNFe.mNotaDevolvidaNFeModelo.AsString;
  if (fDMNFe.mNotaDevolvidaNFeSerie.AsString = 'UN') or (fDMNFe.mNotaDevolvidaNFeSerie.AsString = 'UNI') then
    RefNfeXML.RefNFP.Serie := '1'
  else
    RefNfeXML.RefNFP.Serie := fDMNFe.mNotaDevolvidaNFeSerie.AsString;
  RefNfeXML.RefNFP.NNF := fDMNFe.mNotaDevolvidaNFeNumNota.AsString;
end;

procedure prc_Monta_CTeRef(fDMNFe : TDMNFe);
begin
  //NfeXML.InfNFe.Ide.NFref.Add.RefCTe := fDMNFe.mNotaDevolvidaNFeCTeChaveAcesso.AsString;
  RefNfeXML.RefCTe  := fDMNFe.mNotaDevolvidaNFeCTeChaveAcesso.AsString;
end;

procedure prc_Le_mNotaDevolvidaNFe(fDMNFe : TDMNFe);
begin
  if fDMNFe.mNotaDevolvidaNFe.IsEmpty then
    exit;

  //DetXML := NfeXML.InfNFe.Det.Add;
  //aqui 04/12/2015
  //RefNfeXML := NfeXML.InfNFe.Ide.NFref.Add;
  //RefNfeXML.RefNFe := fDMNFe.mNotaDevolvidaNFeNFeChaveAcesso.AsString;

  fDMNFe.mNotaDevolvidaNFe.First;
  while not fDMNFe.mNotaDevolvidaNFe.Eof do
  begin
    RefNfeXML := NfeXML.InfNFe.Ide.NFref.Add;
    if fDMNFe.mNotaDevolvidaNFeTipo.AsString = '13' then
      prc_Monta_B13(fDMNFe)
    else
    if fDMNFe.mNotaDevolvidaNFeTipo.AsString = '14' then
      prc_Monta_B14(fDMNFe)
    else
    if fDMNFe.mNotaDevolvidaNFeTipo.AsString = '20j' then
      prc_Monta_B20j(fDMNFe)
    else
    if fDMNFe.mNotaDevolvidaNFeTipo.AsString = '20a' then
      prc_Monta_B20a(fDMNFe)
    else
      prc_Monta_CTeRef(fDMNFe);
    fDMNFe.mNotaDevolvidaNFe.Next;
  end;
end;

procedure prc_Monta_ICMS00(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
begin
  {NfeXML.InfNFe.Det.Add.Imposto.ICMS.ICMS00.Orig  := Origem;
  NfeXML.InfNFe.Det.Add.Imposto.ICMS.ICMS00.CST   := CodSitTrib;
  NfeXML.InfNFe.Det.Add.Imposto.ICMS.ICMS00.ModBC := '0';
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat)) > 0 then
    NfeXML.InfNFe.Det.Add.Imposto.ICMS.ICMS00.VBC := Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat) ,',','.')
  else
  if StrToFloat(FormatFloat('0.0000',fDMNFe.mItensNFeAliqIcms.AsFloat)) > 0 then
    NfeXML.InfNFe.Det.Add.Imposto.ICMS.ICMS00.VBC := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrTotal.AsFloat) ,',','.')
  else
    NfeXML.InfNFe.Det.Add.Imposto.ICMS.ICMS00.VBC := Replace(FormatFloat('0.00',0) ,',','.');
  NfeXML.InfNFe.Det.Add.Imposto.ICMS.ICMS00.PICMS := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeAliqIcms.AsFloat) ,',','.');
  NfeXML.InfNFe.Det.Add.Imposto.ICMS.ICMS00.VICMS := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat) ,',','.');}

  //DetXML.Imposto.ICMS. AddChild('modBC').Text := '3';
  //DetXML.Imposto.ICMS.ICMS00. AddChild('modBC').Text := '3';

  DetXML.Imposto.ICMS.ICMS00.Orig  := Origem;
  DetXML.Imposto.ICMS.ICMS00.CST   := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS00.ModBC := '0';
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS00.VBC := Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat) ,',','.')
  else
  if StrToFloat(FormatFloat('0.0000',fDMNFe.mItensNFeAliqIcms.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS00.VBC := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrTotal.AsFloat) ,',','.')
  else
    DetXML.Imposto.ICMS.ICMS00.VBC := Replace(FormatFloat('0.00',0) ,',','.');
  DetXML.Imposto.ICMS.ICMS00.PICMS := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeAliqIcms.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS00.VICMS := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat) ,',','.');
end;

procedure prc_Monta_ICMS10(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
begin
  DetXML.Imposto.ICMS.ICMS10.Orig  := Origem;
  DetXML.Imposto.ICMS.ICMS10.CST   := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS10.ModBC := '0';
  DetXML.Imposto.ICMS.ICMS10.VBC   := Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS10.PICMS := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeAliqIcms.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS10.VICMS := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS10.ModBCST  := '4';
  DetXML.Imposto.ICMS.ICMS10.PMVAST   := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeMVA.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMSSubst.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS10.PRedBCST := Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMSSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS10.VBCST    := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS10.PICMSST  := Replace(FormatFloat('0.00##',Perc_Interno) ,',','.');
  DetXML.Imposto.ICMS.ICMS10.VICMSST  := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
end;

procedure prc_Monta_ICMS20(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
begin
  DetXML.Imposto.ICMS.ICMS20.Orig   := Origem;
  DetXML.Imposto.ICMS.ICMS20.CST    := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS20.ModBC  := '0';
  DetXML.Imposto.ICMS.ICMS20.PRedBC := Replace(FormatFloat('0.00##',fDMNFe.mItensNFePercRedICMS.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS20.VBC    := Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS20.PICMS  := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeAliqIcms.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS20.VICMS  := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsDesonerado.AsFloat)) > 0 then
  begin
    DetXML.Imposto.ICMS.ICMS20.VICMSDeson := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsDesonerado.AsFloat) ,',','.');
    DetXML.Imposto.ICMS.ICMS20.MotDesICMS := fDMNFe.mItensNFeCodMotivoDesonerado.AsString;
  end;
end;

procedure prc_Monta_ICMS30(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
begin
  DetXML.Imposto.ICMS.ICMS30.Orig     := Origem;
  DetXML.Imposto.ICMS.ICMS30.CST      := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS30.ModBCST  := '4';
  DetXML.Imposto.ICMS.ICMS30.PMVAST   := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeMVA.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00##',fDMNFe.mItensNFePercRedICMSSubst.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS30.PRedBCST := Replace(FormatFloat('0.00##',fDMNFe.mItensNFePercRedICMSSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS30.VBCST    := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS30.PICMSST  := Replace(FormatFloat('0.00##',Perc_Interno) ,',','.');
  DetXML.Imposto.ICMS.ICMS30.VICMSST  := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsDesonerado.AsFloat)) > 0 then
  begin
    DetXML.Imposto.ICMS.ICMS30.VICMSDeson := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsDesonerado.AsFloat) ,',','.');
    DetXML.Imposto.ICMS.ICMS30.MotDesICMS := fDMNFe.mItensNFeCodMotivoDesonerado.AsString;
  end;
end;

procedure prc_Monta_ICMS40(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
begin
  DetXML.Imposto.ICMS.ICMS40.Orig  := Origem;
  DetXML.Imposto.ICMS.ICMS40.CST   := CodSitTrib;
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsDesonerado.AsFloat)) > 0 then
  begin
    DetXML.Imposto.ICMS.ICMS40.VICMSDeson := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsDesonerado.AsFloat) ,',','.');
    DetXML.Imposto.ICMS.ICMS40.MotDesICMS := fDMNFe.mItensNFeCodMotivoDesonerado.AsString;
  end;
end;

procedure prc_Monta_ICMS51(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
var
  vVlrAux : Real;
begin
  DetXML.Imposto.ICMS.ICMS51.Orig     := Origem;
  DetXML.Imposto.ICMS.ICMS51.CST      := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS51.ModBC    := '3';
  //if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMS.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS51.PRedBC   := Replace(FormatFloat('0.00##',fDMNFe.mItensNFePercRedICMS.AsFloat),',','.');

  DetXML.Imposto.ICMS.ICMS51.VBC      := Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMS51.PICMS    := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeAliqIcms.AsFloat),',','.');
  //if (StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsOperacao.AsFloat)) > 0) and (fDMNFe.qParametrosUSA_ICMSOPERACAO_CST51.AsString = 'S') then
  if (StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsOperacao.AsFloat)) > 0) then
  begin
    DetXML.Imposto.ICMS.ICMS51.VICMSOp  := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsOperacao.AsFloat),',','.');
    DetXML.Imposto.ICMS.ICMS51.PDif     := Replace(FormatFloat('0.00##',fDMNFe.mItensNFePercDiferimento.AsFloat),',','.');
    DetXML.Imposto.ICMS.ICMS51.VICMSDif := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsDiferido.AsFloat),',','.');
  end;
  //*******
  DetXML.Imposto.ICMS.ICMS51.VICMS    := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat),',','.');
end;

procedure prc_Monta_ICMS60(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
begin
  DetXML.Imposto.ICMS.ICMS60.Orig       := Origem;
  DetXML.Imposto.ICMS.ICMS60.CST        := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS60.VBCSTRet   := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS60.VICMSSTRet := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
end;

procedure prc_Monta_ICMS70(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
begin
  DetXML.Imposto.ICMS.ICMS70.Orig     := Origem;
  DetXML.Imposto.ICMS.ICMS70.CST      := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS70.ModBC    := '0';
  if StrToFloat(FormatFloat('0.00##',fDMNFe.mItensNFePercRedICMS.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS70.PRedBC := Replace(FormatFloat('0.00##',fDMNFe.mItensNFePercRedICMS.AsFloat) ,',','.')
  else
    DetXML.Imposto.ICMS.ICMS70.PRedBC := Replace(FormatFloat('0.00##',0) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.VBC      := Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.PICMS    := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeAliqIcms.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.VICMS    := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.ModBCST  := '4';
  DetXML.Imposto.ICMS.ICMS70.PMVAST   := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeMVA.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00##',fDMNFe.mItensNFePercRedICMSSubst.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS70.PRedBCST := Replace(FormatFloat('0.00##',fDMNFe.mItensNFePercRedICMSSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.VBCST    := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.PICMSST  := Replace(FormatFloat('0.00##',Perc_Interno) ,',','.');
  DetXML.Imposto.ICMS.ICMS70.VICMSST  := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsDesonerado.AsFloat)) > 0 then
  begin
    DetXML.Imposto.ICMS.ICMS70.VICMSDeson := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsDesonerado.AsFloat) ,',','.');
    DetXML.Imposto.ICMS.ICMS70.MotDesICMS := fDMNFe.mItensNFeCodMotivoDesonerado.AsString;
  end;
end;

procedure prc_Monta_ICMS90(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
begin
  DetXML.Imposto.ICMS.ICMS90.Orig  := Origem;
  DetXML.Imposto.ICMS.ICMS90.CST   := CodSitTrib;
  DetXML.Imposto.ICMS.ICMS90.ModBC := '0';
  DetXML.Imposto.ICMS.ICMS90.VBC   := Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat),',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMS.AsFloat)) = 100 then
    DetXML.Imposto.ICMS.ICMS90.PRedBC := Replace(FormatFloat('0.00',0),',','.')
  else
    DetXML.Imposto.ICMS.ICMS90.PRedBC := Replace(FormatFloat('0.00##',fDMNFe.mItensNFePercRedICMS.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMS90.PICMS := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeAliqIcms.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMS90.VICMS := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMS90.ModBCST := '4';
  DetXML.Imposto.ICMS.ICMS90.PMVAST := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeMVA.AsFloat),',','.');
  if StrToFloat(FormatFloat('0.00##',fDMNFe.mItensNFePercRedICMSSubst.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMS90.PRedBCST := Replace(FormatFloat('0.00##',fDMNFe.mItensNFePercRedICMSSubst.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMS90.VBCST    := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMS90.PICMSST  := Replace(FormatFloat('0.00##',Perc_Interno),',','.');
  DetXML.Imposto.ICMS.ICMS90.VICMSST  := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat),',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsDesonerado.AsFloat)) > 0 then
  begin
    DetXML.Imposto.ICMS.ICMS90.VICMSDeson := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsDesonerado.AsFloat) ,',','.');
    DetXML.Imposto.ICMS.ICMS90.MotDesICMS := fDMNFe.mItensNFeCodMotivoDesonerado.AsString;
  end;
end;

procedure prc_Monta_ICMSSN101(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Simples : Real);
begin
  DetXML.Imposto.ICMS.ICMSSN101.Orig        := Origem;
  DetXML.Imposto.ICMS.ICMSSN101.CSOSN       := CodSitTrib;
  DetXML.Imposto.ICMS.ICMSSN101.PCredSN     := Replace(FormatFloat('0.0000',Perc_Simples),',','.');
  DetXML.Imposto.ICMS.ICMSSN101.VCredICMSSN := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsSimples.AsFloat),',','.');
end;

procedure prc_Monta_ICMSSN102(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
begin
  DetXML.Imposto.ICMS.ICMSSN102.Orig  := Origem;
  DetXML.Imposto.ICMS.ICMSSN102.CSOSN := CodSitTrib;
end;

procedure prc_Monta_ICMSSN201(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno, Perc_Simples : Real);
begin
  DetXML.Imposto.ICMS.ICMSSN201.Orig        := Origem;
  DetXML.Imposto.ICMS.ICMSSN201.CSOSN       := CodSitTrib;
  DetXML.Imposto.ICMS.ICMSSN201.ModBCST     := '4';
  DetXML.Imposto.ICMS.ICMSSN201.PMVAST      := Replace(FormatFloat('0.00',fDMNFe.mItensNFeMVA.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.0000',fDMNFe.mItensNFePercRedICMSSubst.AsFloat)) > 0 then
    DetXML.Imposto.ICMS.ICMSSN201.PRedBCST    := Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMSSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN201.VBCST       := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN201.PICMSST     := Replace(FormatFloat('0.00',Perc_Interno) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN201.VICMSST     := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN201.PCredSN     := Replace(FormatFloat('0.00',Perc_Simples) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN201.VCredICMSSN := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsSimples.AsFloat) ,',','.');
end;

procedure prc_Monta_ICMSSN202(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno : Real);
begin
  DetXML.Imposto.ICMS.ICMSSN202.Orig     := Origem;
  DetXML.Imposto.ICMS.ICMSSN202.CSOSN    := CodSitTrib;
  DetXML.Imposto.ICMS.ICMSSN202.ModBCST  := '4';
  DetXML.Imposto.ICMS.ICMSSN202.PMVAST   := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeMVA.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN202.PRedBCST := Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMSSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN202.VBCST    := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN202.PICMSST  := Replace(FormatFloat('0.00##',Perc_Interno) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN202.VICMSST  := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
end;                                                    

procedure prc_Monta_ICMSSN500(fDMNFe : TDMNFe ; Origem, CodSitTrib : String);
begin
  DetXML.Imposto.ICMS.ICMSSN500.Orig       := Origem;
  DetXML.Imposto.ICMS.ICMSSN500.CSOSN      := CodSitTrib;
  DetXML.Imposto.ICMS.ICMSSN500.VBCSTRet   := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN500.VICMSSTRet := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
end;

procedure prc_Monta_ICMSSN900(fDMNFe : TDMNFe ; Origem, CodSitTrib : String ; Perc_Interno, Perc_Simples : Real);
begin
  DetXML.Imposto.ICMS.ICMSSN900.Orig  := Origem;
  DetXML.Imposto.ICMS.ICMSSN900.CSOSN := CodSitTrib;
  DetXML.Imposto.ICMS.ICMSSN900.ModBC := '3';
  DetXML.Imposto.ICMS.ICMSSN900.VBC   := Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat),',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMS.AsFloat)) = 100 then
    DetXML.Imposto.ICMS.ICMSSN900.PRedBC := Replace(FormatFloat('0.00',0),',','.')
  else
    DetXML.Imposto.ICMS.ICMSSN900.PRedBC := Replace(FormatFloat('0.00##',fDMNFe.mItensNFePercRedICMS.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMSSN900.PICMS := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeAliqIcms.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMSSN900.VICMS := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMSSN900.ModBCST := '4';
  DetXML.Imposto.ICMS.ICMSSN900.PMVAST      := Replace(FormatFloat('0.00##',fDMNFe.mItensNFeMVA.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMSSN900.PRedBCST    := Replace(FormatFloat('0.00##',fDMNFe.mItensNFePercRedICMSSubst.AsFloat),',','.');
  DetXML.Imposto.ICMS.ICMSSN900.VBCST       := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN900.PICMSST     := Replace(FormatFloat('0.00##',Perc_Interno) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN900.VICMSST     := Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN900.PCredSN     := Replace(FormatFloat('0.00##',Perc_Simples) ,',','.');
  DetXML.Imposto.ICMS.ICMSSN900.VCredICMSSN := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsSimples.AsFloat) ,',','.');
end;

procedure prc_Monta_PIS(fDMNFe : TDMNFe);
var
  vVlrAux : Real;
  vQtdAux : Real;
begin
  {if (fDMNFe.mItensNFeCodPis.AsString = '01') or (fDMNFe.mItensNFeCodPis.AsString = '02') then
  begin
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISAliq.CST := fDMNFe.mItensNFeCodPis.AsString;
    vVlrAux := 0;
    if fDMNFe.mItensNFeVlrPis.AsFloat > 0 then
      vVlrAux := fDMNFe.mItensNFeVlrTotal.AsFloat;
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISAliq.VBC  := Replace(FormatFloat('0.00',vVlrAux),',','.');
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISAliq.PPIS := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqPis.AsFloat),',','.');
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISAliq.VPIS := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrPis.AsFloat),',','.');
  end
  else
  if (fDMNFe.mItensNFeCodPis.AsString = '03') then
  begin
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISQtde.CST := fDMNFe.mItensNFeCodPis.AsString;
    vVlrAux := 0;
    if fDMNFe.mItensNFeVlrPis.AsFloat > 0 then
      vVlrAux := fDMNFe.mItensNFeQtd.AsFloat;
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISQtde.QBCProd   := Replace(FormatFloat('0.0000',vVlrAux),',','.');
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISQtde.VAliqProd := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqPis.AsFloat),',','.');
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISQtde.VPIS      := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrPis.AsFloat),',','.');
  end
  else
  if (fDMNFe.mItensNFeCodPis.AsString = '04') or (fDMNFe.mItensNFeCodPis.AsString = '06') or (fDMNFe.mItensNFeCodPis.AsString = '07') or
     (fDMNFe.mItensNFeCodPis.AsString = '08') or (fDMNFe.mItensNFeCodPis.AsString = '09') then
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.PIS.PISNT.CST := fDMNFe.mItensNFeCodPis.AsString;
    DetXML.Imposto.PIS.PISNT.AddChild('CST').Text := fDMNFe.mItensNFeCodPis.AsString;
  end
  else
  begin
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.CST := fDMNFe.mItensNFeCodPis.AsString;
    vVlrAux := 0;
    vQtdAux := 0;
    if fDMNFe.mItensNFeVlrPis.AsFloat > 0 then
    begin
      vVlrAux := fDMNFe.mItensNFeVlrTotal.AsFloat;
      vQtdAux := fDMNFe.mItensNFeQtd.AsFloat;
    end;
    if fDMNFe.mItensNFeTipoPis.AsString = 'V' then
    begin
      NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.QBCProd   := Replace(FormatFloat('0.0000',vQtdAux),',','.');
      NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.VAliqProd := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqPis.AsFloat),',','.');
    end
    else
    begin
      NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.VBC  := Replace(FormatFloat('0.00',vVlrAux),',','.');
      NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.PPIS := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqPis.AsFloat),',','.');
    end;
    NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.VPIS := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrPis.AsFloat),',','.');
  end;}

  if (fDMNFe.mItensNFeCodPis.AsString = '01') or (fDMNFe.mItensNFeCodPis.AsString = '02') then
  begin
    DetXML.Imposto.PIS.PISAliq.CST := fDMNFe.mItensNFeCodPis.AsString;
    vVlrAux := 0;
    if fDMNFe.mItensNFeVlrPis.AsFloat > 0 then
      vVlrAux := fDMNFe.mItensNFeVlrTotal.AsFloat;
    DetXML.Imposto.PIS.PISAliq.VBC  := Replace(FormatFloat('0.00',vVlrAux),',','.');
    DetXML.Imposto.PIS.PISAliq.PPIS := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqPis.AsFloat),',','.');
    DetXML.Imposto.PIS.PISAliq.VPIS := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrPis.AsFloat),',','.');
  end
  else
  if (fDMNFe.mItensNFeCodPis.AsString = '03') then
  begin
    DetXML.Imposto.PIS.PISQtde.CST := fDMNFe.mItensNFeCodPis.AsString;
    vVlrAux := 0;
    if fDMNFe.mItensNFeVlrPis.AsFloat > 0 then
      vVlrAux := fDMNFe.mItensNFeQtd.AsFloat;
    DetXML.Imposto.PIS.PISQtde.QBCProd   := Replace(FormatFloat('0.0000',vVlrAux),',','.');
    DetXML.Imposto.PIS.PISQtde.VAliqProd := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqPis.AsFloat),',','.');
    DetXML.Imposto.PIS.PISQtde.VPIS      := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrPis.AsFloat),',','.');
  end
  else
  if (fDMNFe.mItensNFeCodPis.AsString = '04') or (fDMNFe.mItensNFeCodPis.AsString = '05') or (fDMNFe.mItensNFeCodPis.AsString = '06') or
     (fDMNFe.mItensNFeCodPis.AsString = '07') or (fDMNFe.mItensNFeCodPis.AsString = '08') or (fDMNFe.mItensNFeCodPis.AsString = '09') then
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.PIS.PISNT.CST := fDMNFe.mItensNFeCodPis.AsString;
    DetXML.Imposto.PIS.PISNT.CST := fDMNFe.mItensNFeCodPis.AsString;
  end
  else
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.PIS.PISOutr.CST := fDMNFe.mItensNFeCodPis.AsString;
    DetXML.Imposto.PIS.PISOutr.CST := fDMNFe.mItensNFeCodPis.AsString;
    vVlrAux := 0;
    vQtdAux := 0;
    if fDMNFe.mItensNFeVlrPis.AsFloat > 0 then
    begin
      vVlrAux := fDMNFe.mItensNFeVlrTotal.AsFloat;
      vQtdAux := fDMNFe.mItensNFeQtd.AsFloat;
    end;
    if fDMNFe.mItensNFeTipoPis.AsString = 'V' then
    begin
      DetXML.Imposto.PIS.PISOutr.QBCProd   := Replace(FormatFloat('0.0000',vQtdAux),',','.');
      DetXML.Imposto.PIS.PISOutr.VAliqProd := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqPis.AsFloat),',','.');
    end
    else
    begin
      DetXML.Imposto.PIS.PISOutr.VBC  := Replace(FormatFloat('0.00',vVlrAux),',','.');
      DetXML.Imposto.PIS.PISOutr.PPIS := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqPis.AsFloat),',','.');
    end;
    DetXML.Imposto.PIS.PISOutr.VPIS := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrPis.AsFloat),',','.');
  end;
end;

procedure prc_Monta_COFINS(fDMNFe : TDMNFe);
var
  vVlrAux : Real;
  vQtdAux : Real;
begin
  if (fDMNFe.mItensNFeCodCofins.AsString = '01') or (fDMNFe.mItensNFeCodCofins.AsString = '02') then
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.COFINS.COFINSAliq.CST := fDMNFe.mItensNFeCodCofins.AsString;
    DetXML.Imposto.COFINS.COFINSAliq.CST := fDMNFe.mItensNFeCodCofins.AsString;
    vVlrAux := 0;
    if fDMNFe.mItensNFeVlrCofins.AsFloat > 0 then
      vVlrAux := fDMNFe.mItensNFeVlrTotal.AsFloat;
    DetXML.Imposto.COFINS.COFINSAliq.VBC     := Replace(FormatFloat('0.00',vVlrAux),',','.');
    DetXML.Imposto.COFINS.COFINSAliq.PCOFINS := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqCofins.AsFloat),',','.');
    DetXML.Imposto.COFINS.COFINSAliq.VCOFINS := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrCofins.AsFloat),',','.');
  end
  else
  if (fDMNFe.mItensNFeCodCofins.AsString = '03') then
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.COFINS.COFINSQtde.CST := fDMNFe.mItensNFeCodCofins.AsString;
    DetXML.Imposto.COFINS.COFINSQtde.CST := fDMNFe.mItensNFeCodCofins.AsString;
    vQtdAux := 0;
    if fDMNFe.mItensNFeVlrCofins.AsFloat > 0 then
      vQtdAux := fDMNFe.mItensNFeQtd.AsFloat;
    DetXML.Imposto.COFINS.COFINSQtde.QBCProd   := Replace(FormatFloat('0.0000',vQtdAux),',','.');
    DetXML.Imposto.COFINS.COFINSQtde.VAliqProd := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqCofins.AsFloat),',','.');
    DetXML.Imposto.COFINS.COFINSQtde.VCOFINS   := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrCofins.AsFloat),',','.');
  end
  else
  if (fDMNFe.mItensNFeCodCofins.AsString = '04') or (fDMNFe.mItensNFeCodCofins.AsString = '05') or (fDMNFe.mItensNFeCodCofins.AsString = '06') or
     (fDMNFe.mItensNFeCodCofins.AsString = '07') or (fDMNFe.mItensNFeCodCofins.AsString = '08') or (fDMNFe.mItensNFeCodCofins.AsString = '09') then
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.COFINS.COFINSNT.CST := fDMNFe.mItensNFeCodCofins.AsString;
    DetXML.Imposto.COFINS.COFINSNT.CST := fDMNFe.mItensNFeCodCofins.AsString;
  end
  else
  begin
    //NfeXML.InfNFe.Det.Add.Imposto.COFINS.COFINSOutr.CST := fDMNFe.mItensNFeCodCofins.AsString;
    DetXML.Imposto.COFINS.COFINSOutr.CST := fDMNFe.mItensNFeCodCofins.AsString;
    vVlrAux := 0;
    vQtdAux := 0;
    if fDMNFe.mItensNFeVlrCofins.AsFloat > 0 then
    begin
      vVlrAux := fDMNFe.mItensNFeVlrTotal.AsFloat;
      vQtdAux := fDMNFe.mItensNFeQtd.AsFloat;
    end;
    if fDMNFe.mItensNFeTipoCofins.AsString = 'V' then
    begin
      DetXML.Imposto.COFINS.COFINSOutr.QBCProd   := Replace(FormatFloat('0.0000',vQtdAux),',','.');
      DetXML.Imposto.COFINS.COFINSOutr.VAliqProd := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqCofins.AsFloat),',','.');
    end
    else
    begin
      DetXML.Imposto.COFINS.COFINSOutr.VBC     := Replace(FormatFloat('0.00',vVlrAux),',','.');
      DetXML.Imposto.COFINS.COFINSOutr.PCOFINS := Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqCofins.AsFloat),',','.');
    end;
    DetXML.Imposto.COFINS.COFINSOutr.VCOFINS := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrCofins.AsFloat),',','.');
  end;
end;

procedure prc_Monta_Transportadora(fDMCadNotaFiscal: TDMCadNotaFiscal ; fDMNFe : TDMNFe);
var
  texto2, vInscTransp : string;
  vCNPJTransp : String;
begin
  TranspXML := NfeXML.InfNFe.Transp;

  fDMNFe.qTransportadora.Close;
  fDMNFe.qTransportadora.ParamByName('CODIGO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger;
  fDMNFe.qTransportadora.Open;
  if fDMNFe.qTransportadoraCODIGO.AsInteger > 0 then
  begin
    if fDMNFe.qTransportadoraPESSOA.AsString = 'F' then
      NfeXML.InfNFe.Transp.Transporta.CPF  := Monta_Texto(fDMNFe.qTransportadoraCNPJ_CPF.AsString,11)
    else
    if fDMNFe.qTransportadoraPESSOA.AsString = 'J' then
      NfeXML.InfNFe.Transp.Transporta.CNPJ := Monta_Texto(fDMNFe.qTransportadoraCNPJ_CPF.AsString,14);
    NfeXML.InfNFe.Transp.Transporta.XNome  := TirarAcento(fDMNFe.qTransportadoraNOME.AsString);
    if trim(fDMNFe.qTransportadoraINSCR_EST.AsString) <> '' then
      NfeXML.InfNFe.Transp.Transporta.IE     := Monta_Texto(fDMNFe.qTransportadoraINSCR_EST.AsString,0);
    NfeXML.InfNFe.Transp.Transporta.XEnder := trim(TirarAcento(fDMNFe.qTransportadoraENDERECO.AsString + ', ' + fDMNFe.qTransportadoraNUM_END.AsString));
    if trim(fDMNFe.qTransportadoraCOMPLEMENTO_END.AsString) <> '' then
      NfeXML.InfNFe.Transp.Transporta.XEnder := trim(TirarAcento(NfeXML.InfNFe.Transp.Transporta.XEnder + ' ' + fDMNFe.qTransportadoraCOMPLEMENTO_END.AsString));
    if fnc_Posicionar_Cidade(fDMNFe,fDMNFe.qTransportadoraID_CIDADE.AsInteger) then
      NfeXML.InfNFe.Transp.Transporta.XMun := TirarAcento(fDMNFe.qCidadeNOME.AsString);
    NfeXML.InfNFe.Transp.Transporta.UF := fDMNFe.qTransportadoraUF.AsString;
  end;

  //Grupo de retenção do ICMS Transporte não foi implementado

  //Veiculo
  if trim(fDMCadNotaFiscal.cdsNotaFiscalPLACA.AsString) <> '' then
  begin
    NfeXML.InfNFe.Transp.VeicTransp.Placa := fDMCadNotaFiscal.cdsNotaFiscalPLACA.AsString;
    NfeXML.InfNFe.Transp.VeicTransp.UF    := fDMCadNotaFiscal.cdsNotaFiscalUFPLACA.AsString;
    if trim(fDMCadNotaFiscal.cdsNotaFiscalRNTC.AsString) <> '' then
      NfeXML.InfNFe.Transp.VeicTransp.RNTC  := fDMCadNotaFiscal.cdsNotaFiscalRNTC.AsString;
  end;

  //Reboque
  fDMCadNotaFiscal.cdsNotaFiscal_Reboque.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Reboque.Eof do
  begin
    TranspXML.Reboque.AddChild('Placa').Text := fDMCadNotaFiscal.cdsNotaFiscal_ReboquePLACA.AsString;
    TranspXML.Reboque.AddChild('UF').Text    := fDMCadNotaFiscal.cdsNotaFiscal_ReboqueUF.AsString;
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_ReboqueRNTC.AsString) <> '' then
      TranspXML.Reboque.AddChild('RNTC').Text  := fDMCadNotaFiscal.cdsNotaFiscal_ReboqueRNTC.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_Reboque.Next;
  end;
  //Identificação do Vagão ou Balsa
  if fDMCadNotaFiscal.cdsNotaFiscalVAGAOBALSA_TIPOIDENTIF.AsString = 'V' then
    TranspXML.Vagao := fDMCadNotaFiscal.cdsNotaFiscalVAGAOBALSA_IDENTIF.AsString
  else
  if fDMCadNotaFiscal.cdsNotaFiscalVAGAOBALSA_TIPOIDENTIF.AsString = 'B' then
    TranspXML.Balsa := fDMCadNotaFiscal.cdsNotaFiscalVAGAOBALSA_IDENTIF.AsString;
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

procedure prc_Monta_Rodape(fDMCadNotaFiscal: TDMCadNotaFiscal ; fDMNFe : TDMNFe);
var
  vVlrOutrasDespAcess : Real;
  vAux : Real;
begin
{* W  Total da NF-e }

//Letra W - Totais - Grupo de Valores Totais referentes ao ICMS
  vVlrOutrasDespAcess := fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat;
  if fDMCadNotaFiscal.cdsNotaFiscalPISCOFINS_SOMAROUTRASDESP.AsString = 'S' then
    vVlrOutrasDespAcess := vVlrOutrasDespAcess - fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat -
                           fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat;

  NfeXML.InfNFe.Total.ICMSTot.VBC        := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VICMS      := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VICMSDeson := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsFloat),',','.');
  //08/12/2015
  NfeXML.InfNFe.Total.ICMSTot.VFCPUFDest   := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VICMSUFDest  := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VICMSUFRemet := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat),',','.');
  //********************

  NfeXML.InfNFe.Total.ICMSTot.VBCST      := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VST        := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat),',','.');
  vAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat));
  NfeXML.InfNFe.Total.ICMSTot.VProd      := Replace(FormatFloat('0.00',vAux),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VFrete     := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VSeg       := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VDesc      := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VII        := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VIPI       := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VPIS       := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VCOFINS    := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VOutro     := Replace(FormatFloat('0.00',vVlrOutrasDespAcess),',','.');
  //30/09/2016
  vAux := fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat;
  if (fDMNFe.qParametrosUSA_DESONERACAO.AsString = 'S') AND (fDMNFe.qParametros_NFeDESC_ICMS_DESONERADO.AsString = 'S') then
    vAux := StrToFloat(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsFloat));
  NfeXML.InfNFe.Total.ICMSTot.VNF        := Replace(FormatFloat('0.00',vAux),',','.');
  NfeXML.InfNFe.Total.ICMSTot.VTotTrib   := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat),',','.');

{* W01  Total da NF-e / ISSQN }
  //Tag não implementada

{* W02  Total da NF-e / Retenção de Tributos }
  //Tag não implementada

{* X  Informações do transporte da NF-e }  //4.00 teve campos novos
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '1' then
    NfeXML.InfNFe.Transp.ModFrete := '0'
  else
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '2' then
    NfeXML.InfNFe.Transp.ModFrete := '1'
  else
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '3' then
    NfeXML.InfNFe.Transp.ModFrete := '2'
  else
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '9' then
    NfeXML.InfNFe.Transp.ModFrete := '9';

  //Transportadora dados
  if (fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger > 0) or (trim(fDMCadNotaFiscal.cdsNotaFiscalPLACA.AsString) <> '') then
    prc_Monta_Transportadora(fDMCadNotaFiscal,fDMNFe);

  //Volumes
  if (fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsInteger > 0) or (trim(fDMCadNotaFiscal.cdsNotaFiscalESPECIE.AsString) <> '') or
     (trim(fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString) <> '') or (trim(fDMCadNotaFiscal.cdsNotaFiscalNUMEROVOLUME.AsString) <> '') or
     (StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat)) > 0) or
     (StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat)) > 0) then
  begin
    VolXML := NfeXML.InfNFe.Transp.Vol.Add;
    if trim(fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsString) <> '' then
      VolXML.QVol  := TirarAcento(fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsString);
    if (fDMCadNotaFiscal.cdsNotaFiscalESPECIE.AsString) <> '' then
      VolXML.Esp   := TirarAcento(fDMCadNotaFiscal.cdsNotaFiscalESPECIE.AsString);
    if trim(fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString) <> '' then
      VolXML.Marca := TirarAcento(fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString);
    if trim(fDMCadNotaFiscal.cdsNotaFiscalNUMEROVOLUME.AsString) <> '' then
      VolXML.NVol  := fDMCadNotaFiscal.cdsNotaFiscalNUMEROVOLUME.AsString;
    if StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat)) > 0 then
      VolXML.PesoL := Replace(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat),',','.');
    if StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat)) > 0 then
      VolXML.PesoB := Replace(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat),',','.');
  end;

  //Lacre
  fDMCadNotaFiscal.cdsNotaFiscal_Lacre.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Lacre.Eof do
  begin
    //NfeXML.InfNFe.Transp.Vol.Add.Lacres.Add.NLacre := fDMCadNotaFiscal.cdsNotaFiscal_LacreNUMLACRE.AsString;
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_LacreNUMLACRE.AsString) <> '' then
      LacreXML.NLacre := fDMCadNotaFiscal.cdsNotaFiscal_LacreNUMLACRE.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_Lacre.Next;
  end;

  //Letra Y - Cobrança
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString <> 'N' then
  begin
    CobrXML := NfeXML.InfNFe.Cobr;

    CobrXML.Fat.NFat  := fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString;
    CobrXML.Fat.VOrig := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat),',','.');
    CobrXML.Fat.VLiq  := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat),',','.');

    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V' then
      prc_Monta_parcela(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat,1,fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger,'V')
    else
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
      if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat)) > 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger > 0) then
        prc_Monta_parcela(fDMCadNotaFiscal.cdsNotaFiscalDTINICIO_DUPLICATA.AsDateTime,fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat,0,fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger,'P');
      fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
      while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
      begin
        prc_Monta_parcela(fDMCadNotaFiscal.cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime,fDMCadNotaFiscal.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger,fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger,'P');
        fDMCadNotaFiscal.cdsNotaFiscal_Parc.Next;
      end;
    end;
  end;

{* Z  Informações do transporte da NF-e }
  fDMNFe.mDadosAdicionaisNFe.First;
  if trim(fDMNFe.mDadosAdicionaisNFeObs.Value) <> '' then
    NfeXML.InfNFe.InfAdic.InfCpl := TirarAcento(fDMNFe.mDadosAdicionaisNFeObs.Value);

  //Indicador de processo não implementado

{* ZA  Informações de Comércio Exterior }
  //Informação de Exportação
  if fDMCadNotaFiscal.cdsNotaFiscalUFEMBEXPORTACAO.AsString <> '' then
  begin
    NfeXML.InfNFe.Exporta.UFSaidaPais  := fDMCadNotaFiscal.cdsNotaFiscalUFEMBEXPORTACAO.AsString;
    NfeXML.InfNFe.Exporta.XLocExporta  := trim(TirarAcento(fDMCadNotaFiscal.cdsNotaFiscalLOCALEMBEXPORTACAO.AsString));
    NfeXML.InfNFe.Exporta.XLocDespacho := trim(TirarAcento(fDMCadNotaFiscal.cdsNotaFiscalLOCALDESPEXPORTACAO.AsString));
  end;
{* ZB  Informações de Compras }
  //Não implementado
end;

procedure prc_Monta_Detalhe(fDMCadNotaFiscal: TDMCadNotaFiscal ; fDMNFe : TDMNFe);
var
  vItemAdicao : Integer;
  vCodSitTrib, vOrigem : String;
  vPerc_Interno : Real;
  vCodCSTIPI : String;
  texto2 : String;
  Det: IXMLTNFe_infNFe_det;
  Exp: IXMLTNFe_infNFe_det_prod_detExport;
begin
{* H  Detalhamento de Produtos e Serviços da NF-e }
  DetXML := NfeXML.InfNFe.Det.Add;
  DetXML.NItem := fDMNFe.mItensNFeItemNota.AsString;

  DetXML.Prod.CProd := fDMNFe.mItensNFeCodProduto.AsString;
  DetXML.Prod.CEAN   := Trim(fDMNFe.mItensNFeCodBarra.AsString);
  DetXML.Prod.XProd  := TirarAcento(fDMNFe.mItensNFeNomeProduto.AsString);
  DetXML.Prod.NCM    := Replace(fDMNFe.mItensNFeClasFiscal.AsString,'.','');
  //NfeXML.InfNFe.Det.Add.Prod.NVE    := Replace(fDMNFe.mItensNFeClasFiscal.AsString,'.',''); //aqui ver
  //24/11/2015  Nova
  if trim(fDMNFe.mItensNFeCod_Cest.AsString) <> '' then
    DetXML.Prod.CEST := fDMNFe.mItensNFeCod_Cest.AsString;
  //**************
  if trim(fDMNFe.mItensNFeNCM_EX.AsString) <> '' then
    DetXML.Prod.EXTIPI := fDMNFe.mItensNFeNCM_EX.AsString;
  DetXML.Prod.CFOP     := fDMNFe.mItensNFeCodNatOper.AsString;

  DetXML.Prod.UCom     := fDMNFe.mItensNFeUnidade.AsString;
  DetXML.Prod.QCom     := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeQtd.AsFloat) ,',','.');
  DetXML.Prod.VUnCom   := Replace(FormatFloat('0.0000######',fDMNFe.mItensNFeVlrUnitario.AsFloat) ,',','.');
  DetXML.Prod.VProd    := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrTotal.AsFloat) ,',','.');
  DetXML.Prod.CEANTrib := Trim(fDMNFe.mItensNFeCodBarra.AsString);
  //04/07/2017
  if trim(fDMNFe.mItensNFeUnidade_Trib.AsString) <> '' then
    DetXML.Prod.UTrib := fDMNFe.mItensNFeUnidade_Trib.AsString
  else
    DetXML.Prod.UTrib := fDMNFe.mItensNFeUnidade.AsString;
  if StrToFloat(FormatFloat('0.0000',fDMNFe.mItensNFeQtd_Trib.AsFloat)) > 0 then
    DetXML.Prod.QTrib    := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeQtd_Trib.AsFloat) ,',','.')
  else
    DetXML.Prod.QTrib    := Replace(FormatFloat('0.0000',fDMNFe.mItensNFeQtd.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.0000000000',fDMNFe.mItensNFeVlr_Unitario_Trib.AsFloat)) > 0 then
    DetXML.Prod.VUnTrib  := Replace(FormatFloat('0.0000######',fDMNFe.mItensNFeVlr_Unitario_Trib.AsFloat) ,',','.')
  else
    DetXML.Prod.VUnTrib  := Replace(FormatFloat('0.0000######',fDMNFe.mItensNFeVlrUnitario.AsFloat) ,',','.');
  //************

  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrFrete.AsFloat)) > 0 then
    DetXML.Prod.VFrete   := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrFrete.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrSeguro.AsFloat)) > 0 then
    DetXML.Prod.VSeg     := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrSeguro.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrDesconto.AsFloat)) > 0 then
    DetXML.Prod.VDesc    := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrDesconto.AsFloat) ,',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrOutrasDespesas.AsFloat)) > 0 then
    DetXML.Prod.VOutro    := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrOutrasDespesas.AsFloat) ,',','.');
  if fDMNFe.mItensNFeSomaVlrTotalProd.AsBoolean then
    DetXML.Prod.IndTot := '1'
  else
    DetXML.Prod.IndTot := '0';

{* I01  Produtos e Serviços / Declaração de Importação }
  if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Locate('ID;Item',VarArrayOf([fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,fDMNFe.mItensNFeItemOriginal.AsInteger]),[locaseinsensitive])) then
  begin
    if not fDMCadNotaFiscal.cdsNotaFiscal_Imp.IsEmpty then
      DIXML  := DetXML.Prod.DI.Add;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.Close;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.Open;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Imp.Eof do
    begin
      vItemAdicao := 0;

      {NfeXML.InfNFe.Det.Add.Prod.DI.Add.NDI := Monta_Texto(fDMCadNotaFiscal.cdsNotaFiscal_ImpNUMDI.AsString,0);
      NfeXML.InfNFe.Det.Add.Prod.DI.Add.DDI := FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsDateTime)) + '-'
                                             + FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsDateTime)) + '-'
                                             + FormatFloat('00',DayOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsDateTime));
      NfeXML.InfNFe.Det.Add.Prod.DI.Add.XLocDesemb := TirarAcento(fDMCadNotaFiscal.cdsNotaFiscal_ImpLOCAL_DESEMBARACO.AsString);
      NfeXML.InfNFe.Det.Add.Prod.DI.Add.UFDesemb   := fDMCadNotaFiscal.cdsNotaFiscal_ImpUF.AsString;
      NfeXML.InfNFe.Det.Add.Prod.DI.Add.DDesemb    := FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsDateTime)) + '-'
                                                    + FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsDateTime)) + '-'
                                                    + FormatFloat('00',DayOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsDateTime));
      NfeXML.InfNFe.Det.Add.Prod.DI.Add.TpViaTransp := fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_VIA_TRANSORTE.AsString;
      if fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_VIA_TRANSORTE.AsInteger = 1 then
        NfeXML.InfNFe.Det.Add.Prod.DI.Add.VAFRMM := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ImpVLR_AFRMM.AsFloat) ,',','.');
      NfeXML.InfNFe.Det.Add.Prod.DI.Add.TpIntermedio := fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_INTERMEDIO.AsString;
      if fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_INTERMEDIO.AsInteger > 1 then
      begin
        NfeXML.InfNFe.Det.Add.Prod.DI.Add.CNPJ       := Monta_Texto(fDMCadNotaFiscal.cdsNotaFiscal_ImpCNPJ.AsString,14);
        NfeXML.InfNFe.Det.Add.Prod.DI.Add.UFTerceiro := fDMCadNotaFiscal.cdsNotaFiscal_ImpUF_TERCEIRO.AsString;
      end;
      NfeXML.InfNFe.Det.Add.Prod.DI.Add.CExportador     := fDMCadNotaFiscal.cdsNotaFiscal_ImpCODEXPORTADOR.AsString;
      NfeXML.InfNFe.Det.Add.Prod.DI.Add.Adi.Add.NAdicao := fDMCadNotaFiscal.cdsNotaFiscal_ImpCODEXPORTADOR.AsString;}

      {DetXML.Prod.DI.AddChild('NDI').Text := Monta_Texto(fDMCadNotaFiscal.cdsNotaFiscal_ImpNUMDI.AsString,0);
      DetXML.Prod.DI.AddChild('DDI').Text := FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsDateTime)) + '-'
                                             + FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsDateTime)) + '-'
                                             + FormatFloat('00',DayOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsDateTime));
      DetXML.Prod.DI.AddChild('XLocDesemb').Text := TirarAcento(fDMCadNotaFiscal.cdsNotaFiscal_ImpLOCAL_DESEMBARACO.AsString);
      DetXML.Prod.DI.AddChild('UFDesemb').Text   := fDMCadNotaFiscal.cdsNotaFiscal_ImpUF.AsString;
      DetXML.Prod.DI.AddChild('DDesemb').Text    := FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsDateTime)) + '-'
                                                    + FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsDateTime)) + '-'
                                                    + FormatFloat('00',DayOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsDateTime));
      DetXML.Prod.DI.AddChild('TpViaTransp').Text := fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_VIA_TRANSORTE.AsString;
      if fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_VIA_TRANSORTE.AsInteger = 1 then
        DetXML.Prod.DI.AddChild('VAFRMM').Text := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ImpVLR_AFRMM.AsFloat) ,',','.');
      DetXML.Prod.DI.AddChild('TpIntermedio').Text := fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_INTERMEDIO.AsString;
      if fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_INTERMEDIO.AsInteger > 1 then
      begin
        DetXML.Prod.DI.AddChild('CNPJ').Text       := Monta_Texto(fDMCadNotaFiscal.cdsNotaFiscal_ImpCNPJ.AsString,14);
        DetXML.Prod.DI.AddChild('UFTerceiro').Text := fDMCadNotaFiscal.cdsNotaFiscal_ImpUF_TERCEIRO.AsString;
      end;
      DetXML.Prod.DI.AddChild('CExportador').Text := fDMCadNotaFiscal.cdsNotaFiscal_ImpCODEXPORTADOR.AsString;}
      //tirado dia 12/02/2015
      //DIXML  := DetXML.Prod.DI.Add;
      //DetXML := NfeXML.InfNFe.Det.Add;


      DIXML.NDI := Monta_Texto(fDMCadNotaFiscal.cdsNotaFiscal_ImpNUMDI.AsString,0);
      DIXML.DDI := FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsDateTime)) + '-'
                                             + FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsDateTime)) + '-'
                                             + FormatFloat('00',DayOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsDateTime));
      DIXML.XLocDesemb := TirarAcento(fDMCadNotaFiscal.cdsNotaFiscal_ImpLOCAL_DESEMBARACO.AsString);
      DIXML.UFDesemb   := fDMCadNotaFiscal.cdsNotaFiscal_ImpUF.AsString;
      DIXML.DDesemb    := FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsDateTime)) + '-'
                                                    + FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsDateTime)) + '-'
                                                    + FormatFloat('00',DayOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsDateTime));
      DIXML.TpViaTransp := fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_VIA_TRANSORTE.AsString;
      if fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_VIA_TRANSORTE.AsInteger = 1 then
        DIXML.VAFRMM := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ImpVLR_AFRMM.AsFloat) ,',','.');
      DIXML.TpIntermedio := fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_INTERMEDIO.AsString;
      if fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_INTERMEDIO.AsInteger > 1 then
      begin
        DIXML.CNPJ := Monta_Texto(fDMCadNotaFiscal.cdsNotaFiscal_ImpCNPJ.AsString,14);
        DIXML.UFTerceiro := fDMCadNotaFiscal.cdsNotaFiscal_ImpUF_TERCEIRO.AsString;
      end;
      DIXML.CExportador := fDMCadNotaFiscal.cdsNotaFiscal_ImpCODEXPORTADOR.AsString;

      vItemAdicao := 0;

      //DIXML  := DetXML.Prod.DI.Add;
      //DetXML.Prod. aaaaaaaaa
      DetADIXML := DIXML.Adi.Add;
      //DetADIXML :=
      fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.First;
      while not fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Eof do
      begin
        if fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_SEQ.AsInteger > 0 then
          vItemAdicao := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_SEQ.AsInteger
        else
          vItemAdicao := vItemAdicao + 1;
        {NfeXML.InfNFe.Det.Add.Prod.DI.Add.Adi.Add.NAdicao     := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUMADICAO.AsString;
        NfeXML.InfNFe.Det.Add.Prod.DI.Add.Adi.Add.NSeqAdic    := IntToStr(vItemAdicao);
        NfeXML.InfNFe.Det.Add.Prod.DI.Add.Adi.Add.CFabricante := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdCODFABRICANTE.AsString;
        NfeXML.InfNFe.Det.Add.Prod.DI.Add.Adi.Add.VDescDI     := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdVLR_DESCONTO_DI.AsFloat),',','.');
        NfeXML.InfNFe.Det.Add.Prod.DI.Add.Adi.Add.NDraw       := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_DRAWBACK.AsString;}

        DetADIXML.NAdicao     := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUMADICAO.AsString;
        DetADIXML.NSeqAdic    := IntToStr(vItemAdicao);
        DetADIXML.CFabricante := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdCODFABRICANTE.AsString;
        if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdVLR_DESCONTO_DI.AsFloat)) > 0 then
          DetADIXML.VDescDI     := Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdVLR_DESCONTO_DI.AsFloat),',','.');
        if trim(fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_DRAWBACK.AsString) <> '' then
          DetADIXML.NDraw       := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_DRAWBACK.AsString;
        fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Next;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_Imp.Next;
    end;
{* I03  Produtos e Serviços / Grupo de Exportação }
    fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.Close;
    fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.Open;
    fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.First;

    while not fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.Eof do
    begin
      {NfeXML.InfNFe.Det.Add.Prod.DetExport.Add.NDraw             := fDMCadNotaFiscal.cdsNotaFiscal_DrawBackNUM_DRAWBACK.AsString;
      NfeXML.InfNFe.Det.Add.Prod.DetExport.Add.ExportInd.NRE     := fDMCadNotaFiscal.cdsNotaFiscal_DrawBackNUM_REG_EXPORTACAO.AsString;
      NfeXML.InfNFe.Det.Add.Prod.DetExport.Add.ExportInd.ChNFe   := fDMCadNotaFiscal.cdsNotaFiscal_DrawBackNUM_CHAVE_ACESSO_NFE.AsString;
      NfeXML.InfNFe.Det.Add.Prod.DetExport.Add.ExportInd.QExport := Replace(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_DrawBackQTD.AsFloat),',','.');}


      //aqui 11/12/2015 deletar
      //edson inicio
      //na verdade esse comando aqui vai ficar dentro do while que esta abaixo na linha vermelha, mas estou testando fora primeiro
      Exp := DetXML.Prod.DetExport.Add;
      {Exp.NDraw := '';

      Exp.ExportInd.NRE     := '';
      Exp.ExportInd.ChNFe   := '';
      Exp.ExportInd.QExport := '';}
      //edson final
      //********

      //aqui habilitar
      if trim(fDMCadNotaFiscal.cdsNotaFiscal_DrawBackNUM_DRAWBACK.AsString) <> '' then
        Exp.NDraw             := fDMCadNotaFiscal.cdsNotaFiscal_DrawBackNUM_DRAWBACK.AsString;
      Exp.ExportInd.NRE     := fDMCadNotaFiscal.cdsNotaFiscal_DrawBackNUM_REG_EXPORTACAO.AsString;

      if fDMCadNotaFiscal.vNaoMostrarCampoVazio then
      begin
        if trim(fDMCadNotaFiscal.cdsNotaFiscal_DrawBackNUM_CHAVE_ACESSO_NFE.AsString) <> '' then
          Exp.ExportInd.ChNFe   := fDMCadNotaFiscal.cdsNotaFiscal_DrawBackNUM_CHAVE_ACESSO_NFE.AsString;
        if StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsNotaFiscal_DrawBackQTD.AsFloat)) > 0 then
          Exp.ExportInd.QExport := Replace(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_DrawBackQTD.AsFloat),',','.');
      end
      else
      begin
        Exp.ExportInd.ChNFe   := fDMCadNotaFiscal.cdsNotaFiscal_DrawBackNUM_CHAVE_ACESSO_NFE.AsString;
        Exp.ExportInd.QExport := Replace(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_DrawBackQTD.AsFloat),',','.');
      end;

      fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.Next;
    end;
  end;

{* I05  Produtos e Serviços / Pedido de Compra }
  if trim(fDMNFe.mItensNFePedidoCliente.AsString) <> '' then
  begin
    {NfeXML.InfNFe.Det.Add.Prod.XPed     := fDMNFe.mItensNFePedidoCliente.AsString;
    NfeXML.InfNFe.Det.Add.Prod.NItemPed := fDMNFe.mItensNFeItemPedido.AsString;}

    DetXML.Prod.XPed     := fDMNFe.mItensNFePedidoCliente.AsString;
    if fDMNFe.mItensNFeItemPedido.AsInteger > 0 then
      DetXML.Prod.NItemPed := fDMNFe.mItensNFeItemPedido.AsString;
  end;

{* I07  Produtos e Serviços / Grupo Diversos }
  if (fDMNFe.qParametrosUSA_FCI.AsString = 'S') and (trim(fDMNFe.mItensNFeNFCI.AsString) <> '') then
    //NfeXML.InfNFe.Det.Add.Prod.NFCI := fDMNFe.mItensNFeNFCI.AsString;
    DetXML.Prod.NFCI := fDMNFe.mItensNFeNFCI.AsString;

{* M  Tributos incidentes no Produto ou Serviço }
  vOrigem     := Copy(fDMNFe.mItensNFeCodSitTrib.AsString,1,1);
  vCodSitTrib := Copy(fDMNFe.mItensNFeCodSitTrib.AsString,2,Length(fDMNFe.mItensNFeCodSitTrib.AsString) - 1);
  //NfeXML.InfNFe.Det.Add.Imposto.VTotTrib := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos.AsFloat),',','.');
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos.AsFloat)) > 0 then
    DetXML.Imposto.VTotTrib := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos.AsFloat),',','.');

{* N  ICMS Normal e ST }
  if StrToFloat(FormatFloat('0.0000',fDMNFe.mItensNFePercIcmsSubstInterno.AsFloat)) > 0 then
    vPerc_Interno := StrToFloat(FormatFloat('0.0000',fDMNFe.mItensNFePercIcmsSubstInterno.AsFloat))
  else
    vPerc_Interno := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat));

  if vCodSitTrib = '00' then
    prc_Monta_ICMS00(fDMNFe,vOrigem,vCodSitTrib)
  else
  if vCodSitTrib = '10' then
    prc_Monta_ICMS10(fDMNFe,vOrigem,vCodSitTrib,vPerc_Interno)
  else
  if vCodSitTrib = '20' then
    prc_Monta_ICMS20(fDMNFe,vOrigem,vCodSitTrib)
  else
  if vCodSitTrib = '30' then
    prc_Monta_ICMS30(fDMNFe,vOrigem,vCodSitTrib,vPerc_Interno)
  else
  if (vCodSitTrib = '40') or (vCodSitTrib = '41') or (vCodSitTrib = '50') then
    prc_Monta_ICMS40(fDMNFe,vOrigem,vCodSitTrib)
  else
  if (vCodSitTrib = '51') then
    prc_Monta_ICMS51(fDMNFe,vOrigem,vCodSitTrib)
  else
  if (vCodSitTrib = '60') then
    prc_Monta_ICMS60(fDMNFe,vOrigem,vCodSitTrib)
  else
  if (vCodSitTrib = '70') then
    prc_Monta_ICMS70(fDMNFe,vOrigem,vCodSitTrib,vPerc_Interno)
  else
  if (vCodSitTrib = '90') then
    prc_Monta_ICMS90(fDMNFe,vOrigem,vCodSitTrib,vPerc_Interno)
  else
  if (vCodSitTrib = '101') then
    prc_Monta_ICMSSN101(fDMNFe,vOrigem,vCodSitTrib,fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat)
  else
  if (vCodSitTrib = '102') or (vCodSitTrib = '103') or (vCodSitTrib = '300') or (vCodSitTrib = '400') then
    prc_Monta_ICMSSN102(fDMNFe,vOrigem,vCodSitTrib)
  else
  if vCodSitTrib = '201' then
    prc_Monta_ICMSSN201(fDMNFe,vOrigem,vCodSitTrib,vPerc_Interno,fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat)
  else
  if (vCodSitTrib = '202') or (vCodSitTrib = '203') then
    prc_Monta_ICMSSN202(fDMNFe,vOrigem,vCodSitTrib,vPerc_Interno)
  else
  if vCodSitTrib = '500' then
    prc_Monta_ICMSSN500(fDMNFe,vOrigem,vCodSitTrib)
  else
  if vCodSitTrib = '900' then
    prc_Monta_ICMSSN900(fDMNFe,vOrigem,vCodSitTrib,vPerc_Interno,fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat);

{* O  Imposto sobre Produtos Industrializados }
  vCodCSTIPI := fDMNFe.mItensNFeCodCSTIPI.AsString;
  //24/11/2015  Nova                
  //NfeXML.InfNFe.Det.Add.Imposto.IPI.CEnq := '999';
  if trim(fDMNFe.mItensNFeCod_EnqIPI.AsString) <> '' then
    DetXML.Imposto.IPI.CEnq := fDMNFe.mItensNFeCod_EnqIPI.AsString
  else
    DetXML.Imposto.IPI.CEnq := '999';
  //******
  if ((fDMNFe.mItensNFeVlrIpi.AsFloat > 0) and (fDMNFe.mItensNFeAliqIpi.AsFloat > 0)) or
     (fDMNFe.mItensNFeCodCSTIPI.AsString = '99') or (fDMNFe.mItensNFeCodCSTIPI.AsString = '49') or
     (fDMNFe.mItensNFeCodCSTIPI.AsString = '50') or (fDMNFe.mItensNFeCodCSTIPI.AsString = '00') then
  begin
    {NfeXML.InfNFe.Det.Add.Imposto.IPI.IPITrib.CST  := vCodCSTIPI;
    NfeXML.InfNFe.Det.Add.Imposto.IPI.IPITrib.VBC  := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrTotal.AsFloat),',','.');
    NfeXML.InfNFe.Det.Add.Imposto.IPI.IPITrib.PIPI := Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqIpi.AsFloat),',','.');
    //NfeXML.InfNFe.Det.Add.Imposto.IPI.IPITrib.QUnid := ''; //Ver aqui
    //NfeXML.InfNFe.Det.Add.Imposto.IPI.IPITrib.VUnid := ''; //Ver aqui
    NfeXML.InfNFe.Det.Add.Imposto.IPI.IPITrib.VIPI := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIpi.AsFloat),',','.');}

    DetXML.Imposto.IPI.IPITrib.AddChild('CST').Text  := vCodCSTIPI;
    DetXML.Imposto.IPI.IPITrib.AddChild('vBC').Text  := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrTotal.AsFloat),',','.');
    DetXML.Imposto.IPI.IPITrib.AddChild('pIPI').Text := Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqIpi.AsFloat),',','.');
    //NfeXML.InfNFe.Det.Add.Imposto.IPI.IPITrib.QUnid := ''; //Ver aqui
    //NfeXML.InfNFe.Det.Add.Imposto.IPI.IPITrib.VUnid := ''; //Ver aqui
    DetXML.Imposto.IPI.IPITrib.AddChild('vIPI').Text  := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIpi.AsFloat),',','.');
  end
  else
    //NfeXML.InfNFe.Det.Add.Imposto.IPI.IPITrib.CST  := vCodCSTIPI;
    DetXML.Imposto.IPI.IPINT.AddChild('CST').Text  := vCodCSTIPI;

{* P  Imposto de Importação }
  if (StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrBaseImportacao.AsFloat)) > 0) or
     (StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrImportacao.AsFloat)) > 0) or
     (StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrDespAduaneira.AsFloat)) > 0) or
     (StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrIOF.AsFloat)) > 0) then
  begin
    {NfeXML.InfNFe.Det.Add.Imposto.II.VBC      := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrBaseImportacao.AsFloat),',','.');
    NfeXML.InfNFe.Det.Add.Imposto.II.VDespAdu := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrDespAduaneira.AsFloat),',','.');
    NfeXML.InfNFe.Det.Add.Imposto.II.VII      := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrImportacao.AsFloat),',','.');
    NfeXML.InfNFe.Det.Add.Imposto.II.VIOF     := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIOF.AsFloat),',','.');}

    DetXML.Imposto.II.VBC      := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrBaseImportacao.AsFloat),',','.');
    DetXML.Imposto.II.VDespAdu := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrDespAduaneira.AsFloat),',','.');
    DetXML.Imposto.II.VII      := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrImportacao.AsFloat),',','.');
    DetXML.Imposto.II.VIOF     := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIOF.AsFloat),',','.');
  end;

{* Q  PIS }
  prc_Monta_Pis(fDMNFe);

{* R  PIS ST }
  //Tag não implementada

{* S  COFINS }
  prc_Monta_Cofins(fDMNFe);

{* R  COFINS ST }
  //Tag não implementada

{* U  ISSQN }
  //Tag não implementada

{* UA  Tributos Devolvidos (para o item da NF-e) }
  //Tag não implementada

{* NA Grupo de Tributação do ICMS para a UF de destino }
  prc_Monta_ICMS_UF_Destino(fDMNFe);

{* V  Informações adicionais (para o item da NF-e) }
  //NfeXML.InfNFe.Det.Add.InfAdProd := fDMNFe.mItensNFeInfAdicionais.Value;
  texto2 := trim(fDMNFe.mItensNFeInfAdicionais.Value);
  if trim(texto2) <> '' then
    DetXML.InfAdProd := fDMNFe.mItensNFeInfAdicionais.Value;
end;

procedure prc_Monta_Cabecalho(fDMCadNotaFiscal: TDMCadNotaFiscal ; fDMNFe : TDMNFe);
var
  Texto2, Texto : String;
  i: Integer;
  vNatureza : String;
begin
{* A  Dados da Nota Fiscal Eletrônica}
  NfeXML.InfNFe.Versao   := fDMNFe.qParametrosVERSAONFE.AsString;
  NfeXML.InfNFe.Id       := 'NFe' + vChave_XML;

  fDMNFe.Posiciona_CidadeUF(fDMNFe.qFilialID_CIDADE.AsInteger,1);
  fDMCadNotaFiscal.cdsCFOP.IndexFieldNames := 'ID';
  vNatureza := '';
  if fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger > 0 then
  begin
    fDMNFe.Posiciona_Operacao_Nota(fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger);
    if trim(fDMNFe.qOperacao_NotaNATUREZA_NOTA.AsString) = '' then
      vNatureza := fDMNFe.qOperacao_NotaNOME.AsString
    else
      vNatureza := fDMNFe.qOperacao_NotaNATUREZA_NOTA.AsString;
  end;
  if trim(vNatureza) = '' then
    if fDMCadNotaFiscal.cdsCFOP.FindKey([fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger]) then
      vNatureza := fDMCadNotaFiscal.cdsCFOPNOME.AsString;

{* B  Identificação da Nota Eletrônica}
  //NfeXML.InfNFe.Ide.CUF   := fDMNFe.qCidadeUF.AsString;
  NfeXML.InfNFe.Ide.CUF   := fDMNFe.qUFCODUF.AsString;
  i := Length(vChave_XML) + 1 - 9;
  NfeXML.InfNFe.Ide.CNF   := copy(vChave_XML,i,8);
  NfeXML.InfNFe.Ide.NatOp := vNatureza;
  NfeXML.InfNFe.Ide.Mod_  := '55';
  NfeXML.InfNFe.Ide.Serie := fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString;
  NfeXML.InfNFe.Ide.NNF   := fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString;
  if (fDMNFe.vHrEmissaoNFe_Inf <> null) and (fDMNFe.vHrEmissaoNFe_Inf > 0) then
    vHrEmissaoNFe := fDMNFe.vHrEmissaoNFe_Inf
  else
  if not(fDMCadNotaFiscal.cdsNotaFiscalHREMISSAO.IsNull) then
    vHrEmissaoNFe := fDMCadNotaFiscal.cdsNotaFiscalHREMISSAO.AsDateTime
  else
    vHrEmissaoNFe := Now;
  //19/10/2015 Vai verificar o horário de verão automático
  //Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + PegaTimeZone;
  if fnc_HorarioVerao then
  begin
    if trim(fDMNFe.qParametrosFUSOHORARIO_VERAO.AsString) <> '' then
      Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + fDMNFe.qParametrosFUSOHORARIO_VERAO.AsString
    else
      Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + PegaTimeZone;
  end
  else
  begin
    if trim(fDMNFe.qParametrosFUSOHORARIO.AsString) <> '' then
      Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + fDMNFe.qParametrosFUSOHORARIO.AsString
    else
      Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + PegaTimeZone;
  end;
  NfeXML.InfNFe.Ide.DhEmi := Texto;

  if fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime > 1 then
  begin
    {Texto := Texto + FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime)) + '-' +
                     FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime)) + '-' +
                     FormatFloat('00',DayOf(fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime));
    Texto := Texto + 'T' + fDMCadNotaFiscal.cdsNotaFiscalHRSAIDAENTRADA.AsString + '-03:00'; //aqui  -03}

    //19/10/2015
    //Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMCadNotaFiscal.cdsNotaFiscalHRSAIDAENTRADA.AsDateTime) + PegaTimeZone;
    if fnc_HorarioVerao then
    begin
      if trim(fDMNFe.qParametrosFUSOHORARIO_VERAO.AsString) <> '' then
        Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMCadNotaFiscal.cdsNotaFiscalHRSAIDAENTRADA.AsDateTime) + fDMNFe.qParametrosFUSOHORARIO_VERAO.AsString
      else
        Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMCadNotaFiscal.cdsNotaFiscalHRSAIDAENTRADA.AsDateTime) + PegaTimeZone;
    end
    else
    begin
      if trim(fDMNFe.qParametrosFUSOHORARIO.AsString) <> '' then
        Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMCadNotaFiscal.cdsNotaFiscalHRSAIDAENTRADA.AsDateTime) + fDMNFe.qParametrosFUSOHORARIO.AsString
      else
        Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMCadNotaFiscal.cdsNotaFiscalHRSAIDAENTRADA.AsDateTime) + PegaTimeZone;
    end;
    NfeXML.InfNFe.Ide.DhSaiEnt := Texto;
  end;
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S' then
    NfeXML.InfNFe.Ide.TpNF := '1'
  else
    NfeXML.InfNFe.Ide.TpNF := '0';
  NfeXML.InfNFe.Ide.IdDest   := fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESTINO_OPERACAO.AsString;
  NfeXML.InfNFe.Ide.CMunFG   := fDMNFe.qCidadeCODMUNICIPIO.AsString;
  NfeXML.InfNFe.Ide.TpImp    := '1';
  NfeXML.InfNFe.Ide.TpEmis   := vTipo_Emissao_NFe;
  NfeXML.InfNFe.Ide.CDV      := copy(vChave_XML,Length(vChave_XML),1);
  NfeXML.InfNFe.Ide.TpAmb    := vTipo_Ambiente_NFe;
  NfeXML.InfNFe.Ide.FinNFe   := vFinalidade_NFe;
  //NfeXML.InfNFe.Ide.IndFinal := fDMCadNotaFiscal.cdsNotaFiscalTIPO_CONSUMIDOR.AsString;
  NfeXML.InfNFe.Ide.IndFinal := fDMCadNotaFiscal.cdsClienteTIPO_CONSUMIDOR.AsString;

  NfeXML.InfNFe.Ide.IndPres  := fDMCadNotaFiscal.cdsNotaFiscalTIPO_ATENDIMENTO.AsString;
  NfeXML.InfNFe.Ide.ProcEmi  := vProcesso_Emissao_NFe;
  NfeXML.InfNFe.Ide.VerProc  := fDMNFe.qParametrosVERSAOEMISSAONFE.AsString;
  if (vTipo_Emissao_NFe = '2') or (vTipo_Emissao_NFe = '3') or (vTipo_Emissao_NFe = '5') then
  begin
    {NfeXML.InfNFe.Ide.DhCont := FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscalDTCONTINGENCIA.AsDateTime)) + '-'
                              + FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscalDTCONTINGENCIA.AsDateTime)) + '-'
                              + FormatFloat('00',DayOf(fDMCadNotaFiscal.cdsNotaFiscalDTCONTINGENCIA.AsDateTime)) + 'T'
                              + fDMCadNotaFiscal.cdsNotaFiscalHRCONTINGENCIA.AsString + '-03:00';}
    //19/10/2015
    //Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTCONTINGENCIA.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMCadNotaFiscal.cdsNotaFiscalHRCONTINGENCIA.AsDateTime) + PegaTimeZone;
    if fnc_HorarioVerao then
    begin
      if trim(fDMNFe.qParametrosFUSOHORARIO_VERAO.AsString) <> '' then
        Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTCONTINGENCIA.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMCadNotaFiscal.cdsNotaFiscalHRCONTINGENCIA.AsDateTime) + fDMNFe.qParametrosFUSOHORARIO_VERAO.AsString
      else
        Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTCONTINGENCIA.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMCadNotaFiscal.cdsNotaFiscalHRCONTINGENCIA.AsDateTime) + PegaTimeZone;
    end
    else
    begin
      if trim(fDMNFe.qParametrosFUSOHORARIO.AsString) <> '' then
        Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTCONTINGENCIA.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMCadNotaFiscal.cdsNotaFiscalHRCONTINGENCIA.AsDateTime) + fDMNFe.qParametrosFUSOHORARIO.AsString
      else
        Texto := FormatDateTime('YYYY-MM-DD',fDMCadNotaFiscal.cdsNotaFiscalDTCONTINGENCIA.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMCadNotaFiscal.cdsNotaFiscalHRCONTINGENCIA.AsDateTime) + PegaTimeZone;
    end;
    NfeXML.InfNFe.Ide.DhCont := Texto;
    NfeXML.InfNFe.Ide.XJust  := fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_CONTINGENCIA.AsString;
  end;

{* BA  Documento Fiscal Referenciado}
  prc_Le_mNotaDevolvidaNFe(fDMNFe);

{* C  Identificação do Emitente da Ntoa Fiscal Eletrônica }
  if fDMNFe.qFilialPESSOA.AsString = 'J' then
    NfeXML.InfNFe.Emit.CNPJ := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14)
  else
    NfeXML.InfNFe.Emit.CPF := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11);
  NfeXML.InfNFe.Emit.XNome := TirarAcento(fDMNFe.qFilialNOME.AsString);
  if trim(fDMNFe.qFilialNOME_INTERNO.AsString) <> '' then
    NfeXML.InfNFe.Emit.XFant := TirarAcento(fDMNFe.qFilialNOME_INTERNO.AsString);
  NfeXML.InfNFe.Emit.EnderEmit.XLgr := trim(TirarAcento(fDMNFe.qFilialENDERECO.AsString));
  NfeXML.InfNFe.Emit.EnderEmit.Nro  := trim(fDMNFe.qFilialNUM_END.AsString);
  if trim(fDMNFe.qFilialCOMPLEMENTO_END.AsString) <> '' then
    NfeXML.InfNFe.Emit.EnderEmit.XCpl := trim(TirarAcento(fDMNFe.qFilialCOMPLEMENTO_END.AsString));
  NfeXML.InfNFe.Emit.EnderEmit.XBairro := trim(TirarAcento(fDMNFe.qFilialBAIRRO.AsString));
  NfeXML.InfNFe.Emit.EnderEmit.CMun  := fDMNFe.qCidadeCODMUNICIPIO.AsString;
  NfeXML.InfNFe.Emit.EnderEmit.XMun  := TirarAcento(fDMNFe.qCidadeNOME.AsString);
  NfeXML.InfNFe.Emit.EnderEmit.UF    := fDMNFe.qCidadeUF.AsString;
  NfeXML.InfNFe.Emit.EnderEmit.CEP   := Monta_Texto(fDMNFe.qFilialCEP.AsString,8);
  NfeXML.InfNFe.Emit.EnderEmit.CPais := fDMNFe.qPaisCODPAIS.AsString;
  NfeXML.InfNFe.Emit.EnderEmit.XPais := TirarAcento(fDMNFe.qPaisNOME.AsString);
  //09/03/2015
  Texto2 := Monta_Texto(fDMNFe.qFilialDDD1.AsString + fDMNFe.qFilialFONE.AsString,0);
  if (trim(Texto2) <> '') and (Length(Texto2) > 6) then
    NfeXML.InfNFe.Emit.EnderEmit.Fone  := Monta_Texto(fDMNFe.qFilialDDD1.AsString + fDMNFe.qFilialFONE.AsString,0);
  NfeXML.InfNFe.Emit.IE              := Monta_Numero(fDMNFe.qFilialINSCR_EST.AsString,0);
  // NfeXML.InfNFe.Emit.IEST :=  esse campo verificar
  if fDMNFe.qFilialINSCMUNICIPAL.AsString <> '' then
    NfeXML.InfNFe.Emit.IM := Monta_Texto(fDMNFe.qFilialINSCMUNICIPAL.AsString,0);
  if trim(fDMNFe.qFilialCNAE.AsString) <> '' then
    NfeXML.InfNFe.Emit.CNAE := fDMNFe.qFilialCNAE.AsString;
  NfeXML.InfNFe.Emit.CRT  := fDMCadNotaFiscal.cdsNotaFiscalID_REGIMETRIB.AsString;

{* D  Identificação do Fisco Emitente da NFe }
  //aqui Verificar

{* E  Identificação do Destinatário da Nota Fiscal Eletrônica }
  fDMNFe.Posiciona_CidadeUF(fDMCadNotaFiscal.cdsClienteID_CIDADE.AsInteger,fDMCadNotaFiscal.cdsClienteID_PAIS.AsInteger);

  if fDMCadNotaFiscal.cdsClientePESSOA.AsString = 'E' then
    NfeXML.InfNFe.Dest.IdEstrangeiro := Monta_Texto(fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString,0)
  else
  if fDMCadNotaFiscal.cdsClientePESSOA.AsString = 'J' then
    NfeXML.InfNFe.Dest.CNPJ := Monta_Texto(fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString,14)
  else
  if fDMCadNotaFiscal.cdsClientePESSOA.AsString = 'F' then
    NfeXML.InfNFe.Dest.CPF := Monta_Texto(fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString,11);
  if vTipo_Ambiente_NFe = '2' then
    NfeXML.InfNFe.Dest.XNome := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'
  else
    NfeXML.InfNFe.Dest.XNome := TirarAcento(fDMCadNotaFiscal.cdsClienteNOME.AsString);
  NfeXML.InfNFe.Dest.EnderDest.XLgr    := trim(TirarAcento(fDMCadNotaFiscal.cdsClienteENDERECO.AsString));
  NfeXML.InfNFe.Dest.EnderDest.Nro     := trim(fDMCadNotaFiscal.cdsClienteNUM_END.AsString);
  if trim(fDMCadNotaFiscal.cdsClienteCOMPLEMENTO_END.AsString) <> '' then
    NfeXML.InfNFe.Dest.EnderDest.XCpl    := trim(TirarAcento(fDMCadNotaFiscal.cdsClienteCOMPLEMENTO_END.AsString));
  NfeXML.InfNFe.Dest.EnderDest.XBairro := trim(TirarAcento(fDMCadNotaFiscal.cdsClienteBAIRRO.AsString));
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger = 3 then
  begin
    NfeXML.InfNFe.Dest.EnderDest.CMun := '9999999';
    NfeXML.InfNFe.Dest.EnderDest.XMun := 'EXTERIOR';
    NfeXML.InfNFe.Dest.EnderDest.UF   := 'EX';
  end
  else
  begin
    NfeXML.InfNFe.Dest.EnderDest.CMun := fDMNFe.qCidadeCODMUNICIPIO.AsString;
    NfeXML.InfNFe.Dest.EnderDest.XMun := TirarAcento(fDMNFe.qCidadeNOME.AsString);
    NfeXML.InfNFe.Dest.EnderDest.UF   := fDMNFe.qUFUF.AsString;
  end;
  NfeXML.InfNFe.Dest.EnderDest.CEP   := Monta_Texto(fDMCadNotaFiscal.cdsClienteCEP.AsString,8);
  NfeXML.InfNFe.Dest.EnderDest.CPais := fDMNFe.qPaisCODPAIS.AsString;
  NfeXML.InfNFe.Dest.EnderDest.XPais := TirarAcento(fDMNFe.qPaisNOME.AsString);
  Texto2 := Monta_Texto(fDMCadNotaFiscal.cdsClienteTELEFONE1.AsString,0);
  if trim(Texto2) <> '' then
    NfeXML.InfNFe.Dest.EnderDest.Fone  := fDMCadNotaFiscal.cdsClienteDDDFONE1.AsString + Monta_Texto(fDMCadNotaFiscal.cdsClienteTELEFONE1.AsString,0);
  NfeXML.InfNFe.Dest.IndIEDest       := fDMCadNotaFiscal.cdsClienteTIPO_CONTRIBUINTE.AsString;
  if trim(fDMCadNotaFiscal.cdsClienteINSCR_EST.AsString) <> '' then
    NfeXML.InfNFe.Dest.IE := Monta_Texto(fDMCadNotaFiscal.cdsClienteINSCR_EST.AsString,0);
  if (trim(fDMCadNotaFiscal.cdsClienteINSC_SUFRAMA.AsString) <> '') and not(fDMCadNotaFiscal.cdsClienteINSC_SUFRAMA.IsNull) then
    NfeXML.InfNFe.Dest.ISUF := Monta_Texto(fDMCadNotaFiscal.cdsClienteINSC_SUFRAMA.AsString,0);
  if (trim(fDMCadNotaFiscal.cdsClienteINSC_MUNICIPAL.AsString) <> '') and not(fDMCadNotaFiscal.cdsClienteINSC_MUNICIPAL.IsNull) then
    NfeXML.InfNFe.Dest.IM := Monta_Texto(fDMCadNotaFiscal.cdsClienteINSC_MUNICIPAL.AsString,0);
  if trim(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString) <> '' then
    NfeXML.InfNFe.Dest.Email := Copy(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,1,60);

{* F  Identificação do Local de retirada }
  //Ver aqui

{* G  Identificação do Local de Entrega }
  if (fDMCadNotaFiscal.cdsNotaFiscalLOCALENTREGA.AsString = 'E') and (fDMCadNotaFiscal.cdsParametrosMOSTRAR_END_ENTREGA_DADOS_ADI.AsString <> 'S') then
  begin
    if fDMCadNotaFiscal.cdsClientePESSOA_ENT.AsString = 'J' then
      NfeXML.InfNFe.Entrega.CNPJ := Monta_Texto(fDMCadNotaFiscal.cdsClienteCNPJ_CPF_ENT.AsString,14)
    else
      NfeXML.InfNFe.Entrega.CPF := Monta_Texto(fDMCadNotaFiscal.cdsClienteCNPJ_CPF_ENT.AsString,11);
    NfeXML.InfNFe.Entrega.XLgr := trim(TirarAcento(fDMCadNotaFiscal.cdsClienteENDERECO_ENT.AsString));
    NfeXML.InfNFe.Entrega.Nro  := trim(fDMCadNotaFiscal.cdsClienteNUM_END_ENT.AsString);
    if trim(fDMCadNotaFiscal.cdsClienteCOMPLEMENTO_END_ENT.AsString) <> '' then
      NfeXML.InfNFe.Entrega.XCpl := trim(TirarAcento(fDMCadNotaFiscal.cdsClienteCOMPLEMENTO_END_ENT.AsString));
    NfeXML.InfNFe.Entrega.XBairro := TirarAcento(fDMCadNotaFiscal.cdsClienteBAIRRO_ENT.AsString);
    fDMNFe.Posiciona_CidadeUF(fDMCadNotaFiscal.cdsClienteID_CIDADE_ENT.AsInteger,fDMCadNotaFiscal.cdsClienteID_PAIS.AsInteger);
    if (fDMNFe.qPaisCODPAIS.AsString = '1058') then
    begin
      NfeXML.InfNFe.Entrega.CMun := fDMNFe.qCidadeCODMUNICIPIO.AsString;
      NfeXML.InfNFe.Entrega.XMun := TirarAcento(fDMNFe.qCidadeNOME.AsString);
      NfeXML.InfNFe.Entrega.UF   := fDMNFe.qUFUF.AsString;
    end
    else
    begin
      NfeXML.InfNFe.Entrega.CMun := '9999999';
      NfeXML.InfNFe.Entrega.XMun := 'EXTERIOR';
      NfeXML.InfNFe.Entrega.UF   := 'EX';
    end;
  end;

{* GA  Autorização para obter XML }
  fDMNFe.qFilial_Download.Close;
  fDMNFe.qFilial_Download.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
  fDMNFe.qFilial_Download.Open;
  if not fDMNFe.qFilial_Download.IsEmpty then
  begin
    AutXML := NfeXML.InfNFe.AutXML.Add;
    fDMNFe.qFilial_Download.First;
    while not fDMNFe.qFilial_Download.Eof do
    begin
      if fDMNFe.qFilial_DownloadPESSOA.AsString = 'J' then
        AutXML.CNPJ := Monta_Texto(fDMNFe.qFilial_DownloadCNPJ_CPF.AsString,14)
      else
        AutXML.CPF := Monta_Texto(fDMNFe.qFilial_DownloadCNPJ_CPF.AsString,11);
      fDMNFe.qFilial_Download.Next;
    end;
  end;
end;

procedure prc_Monta_ICMS_UF_Destino(fDMNFe : TDMNFe);
begin
  //08/12/2015
  if (StrToFloat(FormatFloat('0.000',fDMNFe.mItensNFePerc_ICMS_FCP.AsFloat)) > 0) or (StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlr_ICMS_UF_Dest.AsFloat)) > 0)
    or (StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFePerc_ICMS_UF_Dest.AsFloat)) > 0) then
  begin
    DetXML.Imposto.ICMSUFDest.VBCUFDest      := Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat),',','.');
    DetXML.Imposto.ICMSUFDest.PFCPUFDest     := Replace(FormatFloat('0.00',fDMNFe.mItensNFePerc_ICMS_FCP.AsFloat),',','.');
    DetXML.Imposto.ICMSUFDest.PICMSUFDest    := Replace(FormatFloat('0.00',fDMNFe.mItensNFePerc_ICMS_UF_Dest.AsFloat),',','.');
    if StrToFloat(FormatFloat('0.000',fDMNFe.mItensNFeAliqIcms.AsFloat)) > 0 then
      DetXML.Imposto.ICMSUFDest.PICMSInter     := Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqIcms.AsFloat),',','.')
    else
      DetXML.Imposto.ICMSUFDest.PICMSInter     := Replace(FormatFloat('0.00',fDMNFe.mItensNFePerc_ICMS_Inter.AsFloat),',','.');

    DetXML.Imposto.ICMSUFDest.PICMSInterPart := Replace(FormatFloat('0.00',fDMNFe.mItensNFePerc_ICMS_Partilha.AsFloat),',','.');
    DetXML.Imposto.ICMSUFDest.PICMSInterPart := Replace(FormatFloat('0.00',fDMNFe.mItensNFePerc_ICMS_Partilha.AsFloat),',','.');
    DetXML.Imposto.ICMSUFDest.VFCPUFDest     := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlr_ICMS_FCP.AsFloat),',','.');
    DetXML.Imposto.ICMSUFDest.VICMSUFDest    := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlr_ICMS_UF_Dest.AsFloat),',','.');
    DetXML.Imposto.ICMSUFDest.VICMSUFRemet   := Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlr_ICMS_UF_Remet.AsFloat),',','.');
  end;
  //**************
end;

end.
