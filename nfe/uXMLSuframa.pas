unit uXMLSuframa;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, NFeFepam, DateUtils, Variants, UDMCadNotaFiscal;

  procedure prc_Gerar_XML(fDMCadNotaFiscal: TDMCadNotaFiscal ; AStrings: TStrings);
  procedure prc_Monta_Notas(fDMCadNotaFiscal: TDMCadNotaFiscal);

var

  CabXML : IXMLLote;
  NFeXML : IXMLLote_notasFiscais;
  DetXML : IXMLLote_notasFiscais_notaFiscal;

implementation

uses DB, uUtilPadrao;

procedure prc_Gerar_XML(fDMCadNotaFiscal: TDMCadNotaFiscal ; AStrings: TStrings);
begin
  AStrings.Clear;
  CabXML := Newlote;
  prc_Monta_Notas(fDMCadNotaFiscal);

  AStrings.Text := '<?xml version="1.0" encoding="utf-8"?>'+CabXML.XML;
  //Memo1.lines.Text := '<?xml version="1.0" encoding="utf-8"?>'+NfeXML.XML;
  //AStrings.Text := vTextoEnvio.Text;
end;


procedure prc_Monta_Notas(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vCNPJTransp : String;
begin
  CabXML.Nro := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNUMNOTA.AsInteger;
  CabXML.Versao_sw := fDMCadNotaFiscal.qParametros_NFeVERSAO_SUFRAMA.AsString;
  CabXML.DtEmissao := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaDTEMISSAO.AsString;
  CabXML.CnpjDestinatario := Monta_Numero(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaCNPJ_CPF_CLIENTE.AsString,0);

  vCNPJTransp := '';
  if (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID_TRANSPORTADORA.AsInteger > 0) and
     (fDMCadNotaFiscal.cdsTransportadora.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger,([Locaseinsensitive]))) then
    vCNPJTransp := Monta_Numero(fDMCadNotaFiscal.cdsTransportadoraCNPJ_CPF.AsString,0);
  CabXML.CnpjTransp := vCNPJTransp;
  CabXML.InscSufDestinatario := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaINSC_SUFRAMA_CLIENTE.AsString;
  CabXML.UfDestino           := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaUF_CLIENTE.AsString;

  if (fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,([Locaseinsensitive]))) then
    CabXML.UfOrigem := fDMCadNotaFiscal.cdsFilialUF.AsString
  else
    CabXML.UfOrigem := '';
  CabXML.QtdeNF := 1;

  NFeXML.Add;
  DetXML := CabXML.NotasFiscais.Add;

  DetXML.ChaveAcesso := fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString;
end;

end.
