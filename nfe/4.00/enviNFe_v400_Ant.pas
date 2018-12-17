
{********************************************************************************************************************************}
{                                                                                                                                }
{                                                        XML Data Binding                                                        }
{                                                                                                                                }
{         Generated on: 11/06/2018 17:32:21                                                                                      }
{       Generated from: C:\Users\SouthSystem\Google Drive\!desenvolvimento\cleomar\FlexDocs\NFe_Util\Schemas\enviNFe_v4.00.xsd   }
{                                                                                                                                }
{********************************************************************************************************************************}

unit enviNFe_v400;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward Decls }

  IXMLTEnviNFe = interface;
  IXMLTNFe = interface;
  IXMLTNFeList = interface;
  IXMLInfNFe = interface;
  IXMLIde = interface;
  IXMLNFref = interface;
  IXMLNFrefList = interface;
  IXMLRefNF = interface;
  IXMLRefNFP = interface;
  IXMLRefECF = interface;
  IXMLEmit = interface;
  IXMLTEnderEmi = interface;
  IXMLAvulsa = interface;
  IXMLDest = interface;
  IXMLTEndereco = interface;
  IXMLTLocal = interface;
  IXMLAutXML = interface;
  IXMLAutXMLList = interface;
  IXMLDet = interface;
  IXMLDetList = interface;
  IXMLProd = interface;
  IXMLDI = interface;
  IXMLDIList = interface;
  IXMLAdi = interface;
  IXMLAdiList = interface;
  IXMLDetExport = interface;
  IXMLDetExportList = interface;
  IXMLExportInd = interface;
  IXMLRastro = interface;
  IXMLRastroList = interface;
  IXMLVeicProd = interface;
  IXMLMed = interface;
  IXMLArma = interface;
  IXMLArmaList = interface;
  IXMLComb = interface;
  IXMLCIDE = interface;
  IXMLEncerrante = interface;
  IXMLImposto = interface;
  IXMLICMS = interface;
  IXMLICMS00 = interface;
  IXMLICMS10 = interface;
  IXMLICMS20 = interface;
  IXMLICMS30 = interface;
  IXMLICMS40 = interface;
  IXMLICMS51 = interface;
  IXMLICMS60 = interface;
  IXMLICMS70 = interface;
  IXMLICMS90 = interface;
  IXMLICMSPart = interface;
  IXMLICMSST = interface;
  IXMLICMSSN101 = interface;
  IXMLICMSSN102 = interface;
  IXMLICMSSN201 = interface;
  IXMLICMSSN202 = interface;
  IXMLICMSSN500 = interface;
  IXMLICMSSN900 = interface;
  IXMLTIpi = interface;
  IXMLIPITrib = interface;
  IXMLIPINT = interface;
  IXMLII = interface;
  IXMLISSQN = interface;
  IXMLPIS = interface;
  IXMLPISAliq = interface;
  IXMLPISQtde = interface;
  IXMLPISNT = interface;
  IXMLPISOutr = interface;
  IXMLPISST = interface;
  IXMLCOFINS = interface;
  IXMLCOFINSAliq = interface;
  IXMLCOFINSQtde = interface;
  IXMLCOFINSNT = interface;
  IXMLCOFINSOutr = interface;
  IXMLCOFINSST = interface;
  IXMLICMSUFDest = interface;
  IXMLImpostoDevol = interface;
  IXMLIPI = interface;
  IXMLTotal = interface;
  IXMLICMSTot = interface;
  IXMLISSQNtot = interface;
  IXMLRetTrib = interface;
  IXMLTransp = interface;
  IXMLTransporta = interface;
  IXMLRetTransp = interface;
  IXMLTVeiculo = interface;
  IXMLTVeiculoList = interface;
  IXMLVol = interface;
  IXMLVolList = interface;
  IXMLLacres = interface;
  IXMLLacresList = interface;
  IXMLCobr = interface;
  IXMLFat = interface;
  IXMLDup = interface;
  IXMLDupList = interface;
  IXMLPag = interface;
  IXMLDetPag = interface;
  IXMLDetPagList = interface;
  IXMLCard = interface;
  IXMLInfAdic = interface;
  IXMLObsCont = interface;
  IXMLObsContList = interface;
  IXMLObsFisco = interface;
  IXMLObsFiscoList = interface;
  IXMLProcRef = interface;
  IXMLProcRefList = interface;
  IXMLExporta = interface;
  IXMLCompra = interface;
  IXMLCana = interface;
  IXMLForDia = interface;
  IXMLForDiaList = interface;
  IXMLDeduc = interface;
  IXMLDeducList = interface;
  IXMLInfNFeSupl = interface;
  IXMLSignatureType_ds = interface;
  IXMLSignedInfoType_ds = interface;
  IXMLCanonicalizationMethod_ds = interface;
  IXMLSignatureMethod_ds = interface;
  IXMLReferenceType_ds = interface;
  IXMLTransformsType_ds = interface;
  IXMLTransformType_ds = interface;
  IXMLDigestMethod_ds = interface;
  IXMLSignatureValueType_ds = interface;
  IXMLKeyInfoType_ds = interface;
  IXMLX509DataType_ds = interface;
  IXMLTProtNFe = interface;
  IXMLTProtNFeList = interface;
  IXMLInfProt = interface;
  IXMLTRetEnviNFe = interface;
  IXMLInfRec = interface;
  IXMLTConsReciNFe = interface;
  IXMLTRetConsReciNFe = interface;
  IXMLTNfeProc = interface;
  IXMLNVEList = interface;

{ IXMLTEnviNFe }

  IXMLTEnviNFe = interface(IXMLNode)
    ['{E16D7BB4-0B7F-412C-B123-FBC913CC818F}']
    { Property Accessors }
    function Get_Versao: UnicodeString;
    function Get_IdLote: UnicodeString;
    function Get_IndSinc: UnicodeString;
    function Get_NFe: IXMLTNFeList;
    procedure Set_Versao(Value: UnicodeString);
    procedure Set_IdLote(Value: UnicodeString);
    procedure Set_IndSinc(Value: UnicodeString);
    { Methods & Properties }
    property Versao: UnicodeString read Get_Versao write Set_Versao;
    property IdLote: UnicodeString read Get_IdLote write Set_IdLote;
    property IndSinc: UnicodeString read Get_IndSinc write Set_IndSinc;
    property NFe: IXMLTNFeList read Get_NFe;
  end;

{ IXMLTNFe }

  IXMLTNFe = interface(IXMLNode)
    ['{6AF1CB49-E621-4303-A358-88E658FD013D}']
    { Property Accessors }
    function Get_InfNFe: IXMLInfNFe;
    function Get_InfNFeSupl: IXMLInfNFeSupl;
    function Get_Signature: IXMLSignatureType_ds;
    { Methods & Properties }
    property InfNFe: IXMLInfNFe read Get_InfNFe;
    property InfNFeSupl: IXMLInfNFeSupl read Get_InfNFeSupl;
    property Signature: IXMLSignatureType_ds read Get_Signature;
  end;

{ IXMLTNFeList }

  IXMLTNFeList = interface(IXMLNodeCollection)
    ['{8866FA91-DCB0-4A92-BA8D-E684EDD4D855}']
    { Methods & Properties }
    function Add: IXMLTNFe;
    function Insert(const Index: Integer): IXMLTNFe;

    function Get_Item(Index: Integer): IXMLTNFe;
    property Items[Index: Integer]: IXMLTNFe read Get_Item; default;
  end;

{ IXMLInfNFe }

  IXMLInfNFe = interface(IXMLNode)
    ['{9873DE7E-320D-46DB-9A01-9F6FCDF78FC4}']
    { Property Accessors }
    function Get_Versao: UnicodeString;
    function Get_Id: UnicodeString;
    function Get_Ide: IXMLIde;
    function Get_Emit: IXMLEmit;
    function Get_Avulsa: IXMLAvulsa;
    function Get_Dest: IXMLDest;
    function Get_Retirada: IXMLTLocal;
    function Get_Entrega: IXMLTLocal;
    function Get_AutXML: IXMLAutXMLList;
    function Get_Det: IXMLDetList;
    function Get_Total: IXMLTotal;
    function Get_Transp: IXMLTransp;
    function Get_Cobr: IXMLCobr;
    function Get_Pag: IXMLPag;
    function Get_InfAdic: IXMLInfAdic;
    function Get_Exporta: IXMLExporta;
    function Get_Compra: IXMLCompra;
    function Get_Cana: IXMLCana;
    procedure Set_Versao(Value: UnicodeString);
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Versao: UnicodeString read Get_Versao write Set_Versao;
    property Id: UnicodeString read Get_Id write Set_Id;
    property Ide: IXMLIde read Get_Ide;
    property Emit: IXMLEmit read Get_Emit;
    property Avulsa: IXMLAvulsa read Get_Avulsa;
    property Dest: IXMLDest read Get_Dest;
    property Retirada: IXMLTLocal read Get_Retirada;
    property Entrega: IXMLTLocal read Get_Entrega;
    property AutXML: IXMLAutXMLList read Get_AutXML;
    property Det: IXMLDetList read Get_Det;
    property Total: IXMLTotal read Get_Total;
    property Transp: IXMLTransp read Get_Transp;
    property Cobr: IXMLCobr read Get_Cobr;
    property Pag: IXMLPag read Get_Pag;
    property InfAdic: IXMLInfAdic read Get_InfAdic;
    property Exporta: IXMLExporta read Get_Exporta;
    property Compra: IXMLCompra read Get_Compra;
    property Cana: IXMLCana read Get_Cana;
  end;

{ IXMLIde }

  IXMLIde = interface(IXMLNode)
    ['{B0A9EDD9-01AA-440A-94CD-488A1281D611}']
    { Property Accessors }
    function Get_CUF: UnicodeString;
    function Get_CNF: UnicodeString;
    function Get_NatOp: UnicodeString;
    function Get_Mod_: UnicodeString;
    function Get_Serie: UnicodeString;
    function Get_NNF: UnicodeString;
    function Get_DhEmi: UnicodeString;
    function Get_DhSaiEnt: UnicodeString;
    function Get_TpNF: UnicodeString;
    function Get_IdDest: UnicodeString;
    function Get_CMunFG: UnicodeString;
    function Get_TpImp: UnicodeString;
    function Get_TpEmis: UnicodeString;
    function Get_CDV: UnicodeString;
    function Get_TpAmb: UnicodeString;
    function Get_FinNFe: UnicodeString;
    function Get_IndFinal: UnicodeString;
    function Get_IndPres: UnicodeString;
    function Get_ProcEmi: UnicodeString;
    function Get_VerProc: UnicodeString;
    function Get_DhCont: UnicodeString;
    function Get_XJust: UnicodeString;
    function Get_NFref: IXMLNFrefList;
    procedure Set_CUF(Value: UnicodeString);
    procedure Set_CNF(Value: UnicodeString);
    procedure Set_NatOp(Value: UnicodeString);
    procedure Set_Mod_(Value: UnicodeString);
    procedure Set_Serie(Value: UnicodeString);
    procedure Set_NNF(Value: UnicodeString);
    procedure Set_DhEmi(Value: UnicodeString);
    procedure Set_DhSaiEnt(Value: UnicodeString);
    procedure Set_TpNF(Value: UnicodeString);
    procedure Set_IdDest(Value: UnicodeString);
    procedure Set_CMunFG(Value: UnicodeString);
    procedure Set_TpImp(Value: UnicodeString);
    procedure Set_TpEmis(Value: UnicodeString);
    procedure Set_CDV(Value: UnicodeString);
    procedure Set_TpAmb(Value: UnicodeString);
    procedure Set_FinNFe(Value: UnicodeString);
    procedure Set_IndFinal(Value: UnicodeString);
    procedure Set_IndPres(Value: UnicodeString);
    procedure Set_ProcEmi(Value: UnicodeString);
    procedure Set_VerProc(Value: UnicodeString);
    procedure Set_DhCont(Value: UnicodeString);
    procedure Set_XJust(Value: UnicodeString);
    { Methods & Properties }
    property CUF: UnicodeString read Get_CUF write Set_CUF;
    property CNF: UnicodeString read Get_CNF write Set_CNF;
    property NatOp: UnicodeString read Get_NatOp write Set_NatOp;
    property Mod_: UnicodeString read Get_Mod_ write Set_Mod_;
    property Serie: UnicodeString read Get_Serie write Set_Serie;
    property NNF: UnicodeString read Get_NNF write Set_NNF;
    property DhEmi: UnicodeString read Get_DhEmi write Set_DhEmi;
    property DhSaiEnt: UnicodeString read Get_DhSaiEnt write Set_DhSaiEnt;
    property TpNF: UnicodeString read Get_TpNF write Set_TpNF;
    property IdDest: UnicodeString read Get_IdDest write Set_IdDest;
    property CMunFG: UnicodeString read Get_CMunFG write Set_CMunFG;
    property TpImp: UnicodeString read Get_TpImp write Set_TpImp;
    property TpEmis: UnicodeString read Get_TpEmis write Set_TpEmis;
    property CDV: UnicodeString read Get_CDV write Set_CDV;
    property TpAmb: UnicodeString read Get_TpAmb write Set_TpAmb;
    property FinNFe: UnicodeString read Get_FinNFe write Set_FinNFe;
    property IndFinal: UnicodeString read Get_IndFinal write Set_IndFinal;
    property IndPres: UnicodeString read Get_IndPres write Set_IndPres;
    property ProcEmi: UnicodeString read Get_ProcEmi write Set_ProcEmi;
    property VerProc: UnicodeString read Get_VerProc write Set_VerProc;
    property DhCont: UnicodeString read Get_DhCont write Set_DhCont;
    property XJust: UnicodeString read Get_XJust write Set_XJust;
    property NFref: IXMLNFrefList read Get_NFref;
  end;

{ IXMLNFref }

  IXMLNFref = interface(IXMLNode)
    ['{8995A181-3B89-45B9-9902-9C50668D243B}']
    { Property Accessors }
    function Get_RefNFe: UnicodeString;
    function Get_RefNF: IXMLRefNF;
    function Get_RefNFP: IXMLRefNFP;
    function Get_RefCTe: UnicodeString;
    function Get_RefECF: IXMLRefECF;
    procedure Set_RefNFe(Value: UnicodeString);
    procedure Set_RefCTe(Value: UnicodeString);
    { Methods & Properties }
    property RefNFe: UnicodeString read Get_RefNFe write Set_RefNFe;
    property RefNF: IXMLRefNF read Get_RefNF;
    property RefNFP: IXMLRefNFP read Get_RefNFP;
    property RefCTe: UnicodeString read Get_RefCTe write Set_RefCTe;
    property RefECF: IXMLRefECF read Get_RefECF;
  end;

{ IXMLNFrefList }

  IXMLNFrefList = interface(IXMLNodeCollection)
    ['{185D2ED8-C990-4784-94D4-D5E240BE38A0}']
    { Methods & Properties }
    function Add: IXMLNFref;
    function Insert(const Index: Integer): IXMLNFref;

    function Get_Item(Index: Integer): IXMLNFref;
    property Items[Index: Integer]: IXMLNFref read Get_Item; default;
  end;

{ IXMLRefNF }

  IXMLRefNF = interface(IXMLNode)
    ['{A4DBB65C-0799-488C-A66E-5B85C6A89092}']
    { Property Accessors }
    function Get_CUF: UnicodeString;
    function Get_AAMM: UnicodeString;
    function Get_CNPJ: UnicodeString;
    function Get_Mod_: UnicodeString;
    function Get_Serie: UnicodeString;
    function Get_NNF: UnicodeString;
    procedure Set_CUF(Value: UnicodeString);
    procedure Set_AAMM(Value: UnicodeString);
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_Mod_(Value: UnicodeString);
    procedure Set_Serie(Value: UnicodeString);
    procedure Set_NNF(Value: UnicodeString);
    { Methods & Properties }
    property CUF: UnicodeString read Get_CUF write Set_CUF;
    property AAMM: UnicodeString read Get_AAMM write Set_AAMM;
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property Mod_: UnicodeString read Get_Mod_ write Set_Mod_;
    property Serie: UnicodeString read Get_Serie write Set_Serie;
    property NNF: UnicodeString read Get_NNF write Set_NNF;
  end;

{ IXMLRefNFP }

  IXMLRefNFP = interface(IXMLNode)
    ['{3F368A29-43C9-4666-A03F-821ED8A07246}']
    { Property Accessors }
    function Get_CUF: UnicodeString;
    function Get_AAMM: UnicodeString;
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    function Get_IE: UnicodeString;
    function Get_Mod_: UnicodeString;
    function Get_Serie: UnicodeString;
    function Get_NNF: UnicodeString;
    procedure Set_CUF(Value: UnicodeString);
    procedure Set_AAMM(Value: UnicodeString);
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
    procedure Set_IE(Value: UnicodeString);
    procedure Set_Mod_(Value: UnicodeString);
    procedure Set_Serie(Value: UnicodeString);
    procedure Set_NNF(Value: UnicodeString);
    { Methods & Properties }
    property CUF: UnicodeString read Get_CUF write Set_CUF;
    property AAMM: UnicodeString read Get_AAMM write Set_AAMM;
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property CPF: UnicodeString read Get_CPF write Set_CPF;
    property IE: UnicodeString read Get_IE write Set_IE;
    property Mod_: UnicodeString read Get_Mod_ write Set_Mod_;
    property Serie: UnicodeString read Get_Serie write Set_Serie;
    property NNF: UnicodeString read Get_NNF write Set_NNF;
  end;

{ IXMLRefECF }

  IXMLRefECF = interface(IXMLNode)
    ['{ABA3FB9E-9164-4EAD-9B35-7F0D455C6B81}']
    { Property Accessors }
    function Get_Mod_: UnicodeString;
    function Get_NECF: UnicodeString;
    function Get_NCOO: UnicodeString;
    procedure Set_Mod_(Value: UnicodeString);
    procedure Set_NECF(Value: UnicodeString);
    procedure Set_NCOO(Value: UnicodeString);
    { Methods & Properties }
    property Mod_: UnicodeString read Get_Mod_ write Set_Mod_;
    property NECF: UnicodeString read Get_NECF write Set_NECF;
    property NCOO: UnicodeString read Get_NCOO write Set_NCOO;
  end;

{ IXMLEmit }

  IXMLEmit = interface(IXMLNode)
    ['{377F6B2E-664E-4ADE-B6D7-55BA5FA6088D}']
    { Property Accessors }
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    function Get_XNome: UnicodeString;
    function Get_XFant: UnicodeString;
    function Get_EnderEmit: IXMLTEnderEmi;
    function Get_IE: UnicodeString;
    function Get_IEST: UnicodeString;
    function Get_IM: UnicodeString;
    function Get_CNAE: UnicodeString;
    function Get_CRT: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
    procedure Set_XNome(Value: UnicodeString);
    procedure Set_XFant(Value: UnicodeString);
    procedure Set_IE(Value: UnicodeString);
    procedure Set_IEST(Value: UnicodeString);
    procedure Set_IM(Value: UnicodeString);
    procedure Set_CNAE(Value: UnicodeString);
    procedure Set_CRT(Value: UnicodeString);
    { Methods & Properties }
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property CPF: UnicodeString read Get_CPF write Set_CPF;
    property XNome: UnicodeString read Get_XNome write Set_XNome;
    property XFant: UnicodeString read Get_XFant write Set_XFant;
    property EnderEmit: IXMLTEnderEmi read Get_EnderEmit;
    property IE: UnicodeString read Get_IE write Set_IE;
    property IEST: UnicodeString read Get_IEST write Set_IEST;
    property IM: UnicodeString read Get_IM write Set_IM;
    property CNAE: UnicodeString read Get_CNAE write Set_CNAE;
    property CRT: UnicodeString read Get_CRT write Set_CRT;
  end;

{ IXMLTEnderEmi }

  IXMLTEnderEmi = interface(IXMLNode)
    ['{3DBCB37B-7E6D-4671-A58A-ADECF60EBA67}']
    { Property Accessors }
    function Get_XLgr: UnicodeString;
    function Get_Nro: UnicodeString;
    function Get_XCpl: UnicodeString;
    function Get_XBairro: UnicodeString;
    function Get_CMun: UnicodeString;
    function Get_XMun: UnicodeString;
    function Get_UF: UnicodeString;
    function Get_CEP: UnicodeString;
    function Get_CPais: UnicodeString;
    function Get_XPais: UnicodeString;
    function Get_Fone: UnicodeString;
    procedure Set_XLgr(Value: UnicodeString);
    procedure Set_Nro(Value: UnicodeString);
    procedure Set_XCpl(Value: UnicodeString);
    procedure Set_XBairro(Value: UnicodeString);
    procedure Set_CMun(Value: UnicodeString);
    procedure Set_XMun(Value: UnicodeString);
    procedure Set_UF(Value: UnicodeString);
    procedure Set_CEP(Value: UnicodeString);
    procedure Set_CPais(Value: UnicodeString);
    procedure Set_XPais(Value: UnicodeString);
    procedure Set_Fone(Value: UnicodeString);
    { Methods & Properties }
    property XLgr: UnicodeString read Get_XLgr write Set_XLgr;
    property Nro: UnicodeString read Get_Nro write Set_Nro;
    property XCpl: UnicodeString read Get_XCpl write Set_XCpl;
    property XBairro: UnicodeString read Get_XBairro write Set_XBairro;
    property CMun: UnicodeString read Get_CMun write Set_CMun;
    property XMun: UnicodeString read Get_XMun write Set_XMun;
    property UF: UnicodeString read Get_UF write Set_UF;
    property CEP: UnicodeString read Get_CEP write Set_CEP;
    property CPais: UnicodeString read Get_CPais write Set_CPais;
    property XPais: UnicodeString read Get_XPais write Set_XPais;
    property Fone: UnicodeString read Get_Fone write Set_Fone;
  end;

{ IXMLAvulsa }

  IXMLAvulsa = interface(IXMLNode)
    ['{55B6C5E6-A8B4-4111-8A4F-0DE857BBBC33}']
    { Property Accessors }
    function Get_CNPJ: UnicodeString;
    function Get_XOrgao: UnicodeString;
    function Get_Matr: UnicodeString;
    function Get_XAgente: UnicodeString;
    function Get_Fone: UnicodeString;
    function Get_UF: UnicodeString;
    function Get_NDAR: UnicodeString;
    function Get_DEmi: UnicodeString;
    function Get_VDAR: UnicodeString;
    function Get_RepEmi: UnicodeString;
    function Get_DPag: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_XOrgao(Value: UnicodeString);
    procedure Set_Matr(Value: UnicodeString);
    procedure Set_XAgente(Value: UnicodeString);
    procedure Set_Fone(Value: UnicodeString);
    procedure Set_UF(Value: UnicodeString);
    procedure Set_NDAR(Value: UnicodeString);
    procedure Set_DEmi(Value: UnicodeString);
    procedure Set_VDAR(Value: UnicodeString);
    procedure Set_RepEmi(Value: UnicodeString);
    procedure Set_DPag(Value: UnicodeString);
    { Methods & Properties }
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property XOrgao: UnicodeString read Get_XOrgao write Set_XOrgao;
    property Matr: UnicodeString read Get_Matr write Set_Matr;
    property XAgente: UnicodeString read Get_XAgente write Set_XAgente;
    property Fone: UnicodeString read Get_Fone write Set_Fone;
    property UF: UnicodeString read Get_UF write Set_UF;
    property NDAR: UnicodeString read Get_NDAR write Set_NDAR;
    property DEmi: UnicodeString read Get_DEmi write Set_DEmi;
    property VDAR: UnicodeString read Get_VDAR write Set_VDAR;
    property RepEmi: UnicodeString read Get_RepEmi write Set_RepEmi;
    property DPag: UnicodeString read Get_DPag write Set_DPag;
  end;

{ IXMLDest }

  IXMLDest = interface(IXMLNode)
    ['{7637DBCC-6ACF-4BE2-B9D2-2881BA4234B7}']
    { Property Accessors }
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    function Get_IdEstrangeiro: UnicodeString;
    function Get_XNome: UnicodeString;
    function Get_EnderDest: IXMLTEndereco;
    function Get_IndIEDest: UnicodeString;
    function Get_IE: UnicodeString;
    function Get_ISUF: UnicodeString;
    function Get_IM: UnicodeString;
    function Get_Email: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
    procedure Set_IdEstrangeiro(Value: UnicodeString);
    procedure Set_XNome(Value: UnicodeString);
    procedure Set_IndIEDest(Value: UnicodeString);
    procedure Set_IE(Value: UnicodeString);
    procedure Set_ISUF(Value: UnicodeString);
    procedure Set_IM(Value: UnicodeString);
    procedure Set_Email(Value: UnicodeString);
    { Methods & Properties }
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property CPF: UnicodeString read Get_CPF write Set_CPF;
    property IdEstrangeiro: UnicodeString read Get_IdEstrangeiro write Set_IdEstrangeiro;
    property XNome: UnicodeString read Get_XNome write Set_XNome;
    property EnderDest: IXMLTEndereco read Get_EnderDest;
    property IndIEDest: UnicodeString read Get_IndIEDest write Set_IndIEDest;
    property IE: UnicodeString read Get_IE write Set_IE;
    property ISUF: UnicodeString read Get_ISUF write Set_ISUF;
    property IM: UnicodeString read Get_IM write Set_IM;
    property Email: UnicodeString read Get_Email write Set_Email;
  end;

{ IXMLTEndereco }

  IXMLTEndereco = interface(IXMLNode)
    ['{7AE120A0-E40B-45D4-8BD9-ECD502E8B8E2}']
    { Property Accessors }
    function Get_XLgr: UnicodeString;
    function Get_Nro: UnicodeString;
    function Get_XCpl: UnicodeString;
    function Get_XBairro: UnicodeString;
    function Get_CMun: UnicodeString;
    function Get_XMun: UnicodeString;
    function Get_UF: UnicodeString;
    function Get_CEP: UnicodeString;
    function Get_CPais: UnicodeString;
    function Get_XPais: UnicodeString;
    function Get_Fone: UnicodeString;
    procedure Set_XLgr(Value: UnicodeString);
    procedure Set_Nro(Value: UnicodeString);
    procedure Set_XCpl(Value: UnicodeString);
    procedure Set_XBairro(Value: UnicodeString);
    procedure Set_CMun(Value: UnicodeString);
    procedure Set_XMun(Value: UnicodeString);
    procedure Set_UF(Value: UnicodeString);
    procedure Set_CEP(Value: UnicodeString);
    procedure Set_CPais(Value: UnicodeString);
    procedure Set_XPais(Value: UnicodeString);
    procedure Set_Fone(Value: UnicodeString);
    { Methods & Properties }
    property XLgr: UnicodeString read Get_XLgr write Set_XLgr;
    property Nro: UnicodeString read Get_Nro write Set_Nro;
    property XCpl: UnicodeString read Get_XCpl write Set_XCpl;
    property XBairro: UnicodeString read Get_XBairro write Set_XBairro;
    property CMun: UnicodeString read Get_CMun write Set_CMun;
    property XMun: UnicodeString read Get_XMun write Set_XMun;
    property UF: UnicodeString read Get_UF write Set_UF;
    property CEP: UnicodeString read Get_CEP write Set_CEP;
    property CPais: UnicodeString read Get_CPais write Set_CPais;
    property XPais: UnicodeString read Get_XPais write Set_XPais;
    property Fone: UnicodeString read Get_Fone write Set_Fone;
  end;

{ IXMLTLocal }

  IXMLTLocal = interface(IXMLNode)
    ['{8124B734-AE1D-49CD-890A-19AD8BF1AEAC}']
    { Property Accessors }
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    function Get_XLgr: UnicodeString;
    function Get_Nro: UnicodeString;
    function Get_XCpl: UnicodeString;
    function Get_XBairro: UnicodeString;
    function Get_CMun: UnicodeString;
    function Get_XMun: UnicodeString;
    function Get_UF: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
    procedure Set_XLgr(Value: UnicodeString);
    procedure Set_Nro(Value: UnicodeString);
    procedure Set_XCpl(Value: UnicodeString);
    procedure Set_XBairro(Value: UnicodeString);
    procedure Set_CMun(Value: UnicodeString);
    procedure Set_XMun(Value: UnicodeString);
    procedure Set_UF(Value: UnicodeString);
    { Methods & Properties }
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property CPF: UnicodeString read Get_CPF write Set_CPF;
    property XLgr: UnicodeString read Get_XLgr write Set_XLgr;
    property Nro: UnicodeString read Get_Nro write Set_Nro;
    property XCpl: UnicodeString read Get_XCpl write Set_XCpl;
    property XBairro: UnicodeString read Get_XBairro write Set_XBairro;
    property CMun: UnicodeString read Get_CMun write Set_CMun;
    property XMun: UnicodeString read Get_XMun write Set_XMun;
    property UF: UnicodeString read Get_UF write Set_UF;
  end;

{ IXMLAutXML }

  IXMLAutXML = interface(IXMLNode)
    ['{62DBF733-9F96-400E-9E99-97A1B9480649}']
    { Property Accessors }
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
    { Methods & Properties }
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property CPF: UnicodeString read Get_CPF write Set_CPF;
  end;

{ IXMLAutXMLList }

  IXMLAutXMLList = interface(IXMLNodeCollection)
    ['{892F5857-6A61-40C6-8903-CBB8F10AADBE}']
    { Methods & Properties }
    function Add: IXMLAutXML;
    function Insert(const Index: Integer): IXMLAutXML;

    function Get_Item(Index: Integer): IXMLAutXML;
    property Items[Index: Integer]: IXMLAutXML read Get_Item; default;
  end;

{ IXMLDet }

  IXMLDet = interface(IXMLNode)
    ['{C9E95CCD-8B29-48D9-B264-CDF3E5158BB9}']
    { Property Accessors }
    function Get_NItem: UnicodeString;
    function Get_Prod: IXMLProd;
    function Get_Imposto: IXMLImposto;
    function Get_ImpostoDevol: IXMLImpostoDevol;
    function Get_InfAdProd: UnicodeString;
    procedure Set_NItem(Value: UnicodeString);
    procedure Set_InfAdProd(Value: UnicodeString);
    { Methods & Properties }
    property NItem: UnicodeString read Get_NItem write Set_NItem;
    property Prod: IXMLProd read Get_Prod;
    property Imposto: IXMLImposto read Get_Imposto;
    property ImpostoDevol: IXMLImpostoDevol read Get_ImpostoDevol;
    property InfAdProd: UnicodeString read Get_InfAdProd write Set_InfAdProd;
  end;

{ IXMLDetList }

  IXMLDetList = interface(IXMLNodeCollection)
    ['{FC2E6A82-36FE-4897-A97B-BEC7841A4A42}']
    { Methods & Properties }
    function Add: IXMLDet;
    function Insert(const Index: Integer): IXMLDet;

    function Get_Item(Index: Integer): IXMLDet;
    property Items[Index: Integer]: IXMLDet read Get_Item; default;
  end;

{ IXMLProd }

  IXMLProd = interface(IXMLNode)
    ['{DADD1C4F-F424-4DBF-94BD-11F2B66B805C}']
    { Property Accessors }
    function Get_CProd: UnicodeString;
    function Get_CEAN: UnicodeString;
    function Get_XProd: UnicodeString;
    function Get_NCM: UnicodeString;
    function Get_NVE: IXMLNVEList;
    function Get_CEST: UnicodeString;
    function Get_IndEscala: UnicodeString;
    function Get_CNPJFab: UnicodeString;
    function Get_CBenef: UnicodeString;
    function Get_EXTIPI: UnicodeString;
    function Get_CFOP: UnicodeString;
    function Get_UCom: UnicodeString;
    function Get_QCom: UnicodeString;
    function Get_VUnCom: UnicodeString;
    function Get_VProd: UnicodeString;
    function Get_CEANTrib: UnicodeString;
    function Get_UTrib: UnicodeString;
    function Get_QTrib: UnicodeString;
    function Get_VUnTrib: UnicodeString;
    function Get_VFrete: UnicodeString;
    function Get_VSeg: UnicodeString;
    function Get_VDesc: UnicodeString;
    function Get_VOutro: UnicodeString;
    function Get_IndTot: UnicodeString;
    function Get_DI: IXMLDIList;
    function Get_DetExport: IXMLDetExportList;
    function Get_XPed: UnicodeString;
    function Get_NItemPed: UnicodeString;
    function Get_NFCI: UnicodeString;
    function Get_Rastro: IXMLRastroList;
    function Get_VeicProd: IXMLVeicProd;
    function Get_Med: IXMLMed;
    function Get_Arma: IXMLArmaList;
    function Get_Comb: IXMLComb;
    function Get_NRECOPI: UnicodeString;
    procedure Set_CProd(Value: UnicodeString);
    procedure Set_CEAN(Value: UnicodeString);
    procedure Set_XProd(Value: UnicodeString);
    procedure Set_NCM(Value: UnicodeString);
    procedure Set_CEST(Value: UnicodeString);
    procedure Set_IndEscala(Value: UnicodeString);
    procedure Set_CNPJFab(Value: UnicodeString);
    procedure Set_CBenef(Value: UnicodeString);
    procedure Set_EXTIPI(Value: UnicodeString);
    procedure Set_CFOP(Value: UnicodeString);
    procedure Set_UCom(Value: UnicodeString);
    procedure Set_QCom(Value: UnicodeString);
    procedure Set_VUnCom(Value: UnicodeString);
    procedure Set_VProd(Value: UnicodeString);
    procedure Set_CEANTrib(Value: UnicodeString);
    procedure Set_UTrib(Value: UnicodeString);
    procedure Set_QTrib(Value: UnicodeString);
    procedure Set_VUnTrib(Value: UnicodeString);
    procedure Set_VFrete(Value: UnicodeString);
    procedure Set_VSeg(Value: UnicodeString);
    procedure Set_VDesc(Value: UnicodeString);
    procedure Set_VOutro(Value: UnicodeString);
    procedure Set_IndTot(Value: UnicodeString);
    procedure Set_XPed(Value: UnicodeString);
    procedure Set_NItemPed(Value: UnicodeString);
    procedure Set_NFCI(Value: UnicodeString);
    procedure Set_NRECOPI(Value: UnicodeString);
    { Methods & Properties }
    property CProd: UnicodeString read Get_CProd write Set_CProd;
    property CEAN: UnicodeString read Get_CEAN write Set_CEAN;
    property XProd: UnicodeString read Get_XProd write Set_XProd;
    property NCM: UnicodeString read Get_NCM write Set_NCM;
    property NVE: IXMLNVEList read Get_NVE;
    property CEST: UnicodeString read Get_CEST write Set_CEST;
    property IndEscala: UnicodeString read Get_IndEscala write Set_IndEscala;
    property CNPJFab: UnicodeString read Get_CNPJFab write Set_CNPJFab;
    property CBenef: UnicodeString read Get_CBenef write Set_CBenef;
    property EXTIPI: UnicodeString read Get_EXTIPI write Set_EXTIPI;
    property CFOP: UnicodeString read Get_CFOP write Set_CFOP;
    property UCom: UnicodeString read Get_UCom write Set_UCom;
    property QCom: UnicodeString read Get_QCom write Set_QCom;
    property VUnCom: UnicodeString read Get_VUnCom write Set_VUnCom;
    property VProd: UnicodeString read Get_VProd write Set_VProd;
    property CEANTrib: UnicodeString read Get_CEANTrib write Set_CEANTrib;
    property UTrib: UnicodeString read Get_UTrib write Set_UTrib;
    property QTrib: UnicodeString read Get_QTrib write Set_QTrib;
    property VUnTrib: UnicodeString read Get_VUnTrib write Set_VUnTrib;
    property VFrete: UnicodeString read Get_VFrete write Set_VFrete;
    property VSeg: UnicodeString read Get_VSeg write Set_VSeg;
    property VDesc: UnicodeString read Get_VDesc write Set_VDesc;
    property VOutro: UnicodeString read Get_VOutro write Set_VOutro;
    property IndTot: UnicodeString read Get_IndTot write Set_IndTot;
    property DI: IXMLDIList read Get_DI;
    property DetExport: IXMLDetExportList read Get_DetExport;
    property XPed: UnicodeString read Get_XPed write Set_XPed;
    property NItemPed: UnicodeString read Get_NItemPed write Set_NItemPed;
    property NFCI: UnicodeString read Get_NFCI write Set_NFCI;
    property Rastro: IXMLRastroList read Get_Rastro;
    property VeicProd: IXMLVeicProd read Get_VeicProd;
    property Med: IXMLMed read Get_Med;
    property Arma: IXMLArmaList read Get_Arma;
    property Comb: IXMLComb read Get_Comb;
    property NRECOPI: UnicodeString read Get_NRECOPI write Set_NRECOPI;
  end;

{ IXMLDI }

  IXMLDI = interface(IXMLNode)
    ['{32125290-727A-4447-A75D-B5B3BA29D9FA}']
    { Property Accessors }
    function Get_NDI: UnicodeString;
    function Get_DDI: UnicodeString;
    function Get_XLocDesemb: UnicodeString;
    function Get_UFDesemb: UnicodeString;
    function Get_DDesemb: UnicodeString;
    function Get_TpViaTransp: UnicodeString;
    function Get_VAFRMM: UnicodeString;
    function Get_TpIntermedio: UnicodeString;
    function Get_CNPJ: UnicodeString;
    function Get_UFTerceiro: UnicodeString;
    function Get_CExportador: UnicodeString;
    function Get_Adi: IXMLAdiList;
    procedure Set_NDI(Value: UnicodeString);
    procedure Set_DDI(Value: UnicodeString);
    procedure Set_XLocDesemb(Value: UnicodeString);
    procedure Set_UFDesemb(Value: UnicodeString);
    procedure Set_DDesemb(Value: UnicodeString);
    procedure Set_TpViaTransp(Value: UnicodeString);
    procedure Set_VAFRMM(Value: UnicodeString);
    procedure Set_TpIntermedio(Value: UnicodeString);
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_UFTerceiro(Value: UnicodeString);
    procedure Set_CExportador(Value: UnicodeString);
    { Methods & Properties }
    property NDI: UnicodeString read Get_NDI write Set_NDI;
    property DDI: UnicodeString read Get_DDI write Set_DDI;
    property XLocDesemb: UnicodeString read Get_XLocDesemb write Set_XLocDesemb;
    property UFDesemb: UnicodeString read Get_UFDesemb write Set_UFDesemb;
    property DDesemb: UnicodeString read Get_DDesemb write Set_DDesemb;
    property TpViaTransp: UnicodeString read Get_TpViaTransp write Set_TpViaTransp;
    property VAFRMM: UnicodeString read Get_VAFRMM write Set_VAFRMM;
    property TpIntermedio: UnicodeString read Get_TpIntermedio write Set_TpIntermedio;
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property UFTerceiro: UnicodeString read Get_UFTerceiro write Set_UFTerceiro;
    property CExportador: UnicodeString read Get_CExportador write Set_CExportador;
    property Adi: IXMLAdiList read Get_Adi;
  end;

{ IXMLDIList }

  IXMLDIList = interface(IXMLNodeCollection)
    ['{5C7897ED-895E-4844-AF6F-E935842DF520}']
    { Methods & Properties }
    function Add: IXMLDI;
    function Insert(const Index: Integer): IXMLDI;

    function Get_Item(Index: Integer): IXMLDI;
    property Items[Index: Integer]: IXMLDI read Get_Item; default;
  end;

{ IXMLAdi }

  IXMLAdi = interface(IXMLNode)
    ['{97A109FE-79A1-4D8D-9F38-87BD8A6AFF2C}']
    { Property Accessors }
    function Get_NAdicao: UnicodeString;
    function Get_NSeqAdic: UnicodeString;
    function Get_CFabricante: UnicodeString;
    function Get_VDescDI: UnicodeString;
    function Get_NDraw: UnicodeString;
    procedure Set_NAdicao(Value: UnicodeString);
    procedure Set_NSeqAdic(Value: UnicodeString);
    procedure Set_CFabricante(Value: UnicodeString);
    procedure Set_VDescDI(Value: UnicodeString);
    procedure Set_NDraw(Value: UnicodeString);
    { Methods & Properties }
    property NAdicao: UnicodeString read Get_NAdicao write Set_NAdicao;
    property NSeqAdic: UnicodeString read Get_NSeqAdic write Set_NSeqAdic;
    property CFabricante: UnicodeString read Get_CFabricante write Set_CFabricante;
    property VDescDI: UnicodeString read Get_VDescDI write Set_VDescDI;
    property NDraw: UnicodeString read Get_NDraw write Set_NDraw;
  end;

{ IXMLAdiList }

  IXMLAdiList = interface(IXMLNodeCollection)
    ['{290AA456-C8AE-4D54-ABF6-C8B41DDEEEF2}']
    { Methods & Properties }
    function Add: IXMLAdi;
    function Insert(const Index: Integer): IXMLAdi;

    function Get_Item(Index: Integer): IXMLAdi;
    property Items[Index: Integer]: IXMLAdi read Get_Item; default;
  end;

{ IXMLDetExport }

  IXMLDetExport = interface(IXMLNode)
    ['{B3DA58F0-5A35-440D-9E69-B32DFDFA98F8}']
    { Property Accessors }
    function Get_NDraw: UnicodeString;
    function Get_ExportInd: IXMLExportInd;
    procedure Set_NDraw(Value: UnicodeString);
    { Methods & Properties }
    property NDraw: UnicodeString read Get_NDraw write Set_NDraw;
    property ExportInd: IXMLExportInd read Get_ExportInd;
  end;

{ IXMLDetExportList }

  IXMLDetExportList = interface(IXMLNodeCollection)
    ['{F1EEF09F-768F-4D4B-B63E-974B2527B268}']
    { Methods & Properties }
    function Add: IXMLDetExport;
    function Insert(const Index: Integer): IXMLDetExport;

    function Get_Item(Index: Integer): IXMLDetExport;
    property Items[Index: Integer]: IXMLDetExport read Get_Item; default;
  end;

{ IXMLExportInd }

  IXMLExportInd = interface(IXMLNode)
    ['{B011D1FF-BE29-4ABB-97E0-E054DD246C20}']
    { Property Accessors }
    function Get_NRE: UnicodeString;
    function Get_ChNFe: UnicodeString;
    function Get_QExport: UnicodeString;
    procedure Set_NRE(Value: UnicodeString);
    procedure Set_ChNFe(Value: UnicodeString);
    procedure Set_QExport(Value: UnicodeString);
    { Methods & Properties }
    property NRE: UnicodeString read Get_NRE write Set_NRE;
    property ChNFe: UnicodeString read Get_ChNFe write Set_ChNFe;
    property QExport: UnicodeString read Get_QExport write Set_QExport;
  end;

{ IXMLRastro }

  IXMLRastro = interface(IXMLNode)
    ['{CCDA9324-484D-4478-8334-B91619DB5649}']
    { Property Accessors }
    function Get_NLote: UnicodeString;
    function Get_QLote: UnicodeString;
    function Get_DFab: UnicodeString;
    function Get_DVal: UnicodeString;
    function Get_CAgreg: UnicodeString;
    procedure Set_NLote(Value: UnicodeString);
    procedure Set_QLote(Value: UnicodeString);
    procedure Set_DFab(Value: UnicodeString);
    procedure Set_DVal(Value: UnicodeString);
    procedure Set_CAgreg(Value: UnicodeString);
    { Methods & Properties }
    property NLote: UnicodeString read Get_NLote write Set_NLote;
    property QLote: UnicodeString read Get_QLote write Set_QLote;
    property DFab: UnicodeString read Get_DFab write Set_DFab;
    property DVal: UnicodeString read Get_DVal write Set_DVal;
    property CAgreg: UnicodeString read Get_CAgreg write Set_CAgreg;
  end;

{ IXMLRastroList }

  IXMLRastroList = interface(IXMLNodeCollection)
    ['{8CE6E479-5CF0-49F2-8951-E5CF6CD0880C}']
    { Methods & Properties }
    function Add: IXMLRastro;
    function Insert(const Index: Integer): IXMLRastro;

    function Get_Item(Index: Integer): IXMLRastro;
    property Items[Index: Integer]: IXMLRastro read Get_Item; default;
  end;

{ IXMLVeicProd }

  IXMLVeicProd = interface(IXMLNode)
    ['{B1D78678-078E-4D63-91BC-B2B7397A8D53}']
    { Property Accessors }
    function Get_TpOp: UnicodeString;
    function Get_Chassi: UnicodeString;
    function Get_CCor: UnicodeString;
    function Get_XCor: UnicodeString;
    function Get_Pot: UnicodeString;
    function Get_Cilin: UnicodeString;
    function Get_PesoL: UnicodeString;
    function Get_PesoB: UnicodeString;
    function Get_NSerie: UnicodeString;
    function Get_TpComb: UnicodeString;
    function Get_NMotor: UnicodeString;
    function Get_CMT: UnicodeString;
    function Get_Dist: UnicodeString;
    function Get_AnoMod: UnicodeString;
    function Get_AnoFab: UnicodeString;
    function Get_TpPint: UnicodeString;
    function Get_TpVeic: UnicodeString;
    function Get_EspVeic: UnicodeString;
    function Get_VIN: UnicodeString;
    function Get_CondVeic: UnicodeString;
    function Get_CMod: UnicodeString;
    function Get_CCorDENATRAN: UnicodeString;
    function Get_Lota: UnicodeString;
    function Get_TpRest: UnicodeString;
    procedure Set_TpOp(Value: UnicodeString);
    procedure Set_Chassi(Value: UnicodeString);
    procedure Set_CCor(Value: UnicodeString);
    procedure Set_XCor(Value: UnicodeString);
    procedure Set_Pot(Value: UnicodeString);
    procedure Set_Cilin(Value: UnicodeString);
    procedure Set_PesoL(Value: UnicodeString);
    procedure Set_PesoB(Value: UnicodeString);
    procedure Set_NSerie(Value: UnicodeString);
    procedure Set_TpComb(Value: UnicodeString);
    procedure Set_NMotor(Value: UnicodeString);
    procedure Set_CMT(Value: UnicodeString);
    procedure Set_Dist(Value: UnicodeString);
    procedure Set_AnoMod(Value: UnicodeString);
    procedure Set_AnoFab(Value: UnicodeString);
    procedure Set_TpPint(Value: UnicodeString);
    procedure Set_TpVeic(Value: UnicodeString);
    procedure Set_EspVeic(Value: UnicodeString);
    procedure Set_VIN(Value: UnicodeString);
    procedure Set_CondVeic(Value: UnicodeString);
    procedure Set_CMod(Value: UnicodeString);
    procedure Set_CCorDENATRAN(Value: UnicodeString);
    procedure Set_Lota(Value: UnicodeString);
    procedure Set_TpRest(Value: UnicodeString);
    { Methods & Properties }
    property TpOp: UnicodeString read Get_TpOp write Set_TpOp;
    property Chassi: UnicodeString read Get_Chassi write Set_Chassi;
    property CCor: UnicodeString read Get_CCor write Set_CCor;
    property XCor: UnicodeString read Get_XCor write Set_XCor;
    property Pot: UnicodeString read Get_Pot write Set_Pot;
    property Cilin: UnicodeString read Get_Cilin write Set_Cilin;
    property PesoL: UnicodeString read Get_PesoL write Set_PesoL;
    property PesoB: UnicodeString read Get_PesoB write Set_PesoB;
    property NSerie: UnicodeString read Get_NSerie write Set_NSerie;
    property TpComb: UnicodeString read Get_TpComb write Set_TpComb;
    property NMotor: UnicodeString read Get_NMotor write Set_NMotor;
    property CMT: UnicodeString read Get_CMT write Set_CMT;
    property Dist: UnicodeString read Get_Dist write Set_Dist;
    property AnoMod: UnicodeString read Get_AnoMod write Set_AnoMod;
    property AnoFab: UnicodeString read Get_AnoFab write Set_AnoFab;
    property TpPint: UnicodeString read Get_TpPint write Set_TpPint;
    property TpVeic: UnicodeString read Get_TpVeic write Set_TpVeic;
    property EspVeic: UnicodeString read Get_EspVeic write Set_EspVeic;
    property VIN: UnicodeString read Get_VIN write Set_VIN;
    property CondVeic: UnicodeString read Get_CondVeic write Set_CondVeic;
    property CMod: UnicodeString read Get_CMod write Set_CMod;
    property CCorDENATRAN: UnicodeString read Get_CCorDENATRAN write Set_CCorDENATRAN;
    property Lota: UnicodeString read Get_Lota write Set_Lota;
    property TpRest: UnicodeString read Get_TpRest write Set_TpRest;
  end;

{ IXMLMed }

  IXMLMed = interface(IXMLNode)
    ['{431A8775-5A90-4E22-8308-B9BBF7BEB690}']
    { Property Accessors }
    function Get_CProdANVISA: UnicodeString;
    function Get_VPMC: UnicodeString;
    procedure Set_CProdANVISA(Value: UnicodeString);
    procedure Set_VPMC(Value: UnicodeString);
    { Methods & Properties }
    property CProdANVISA: UnicodeString read Get_CProdANVISA write Set_CProdANVISA;
    property VPMC: UnicodeString read Get_VPMC write Set_VPMC;
  end;

{ IXMLArma }

  IXMLArma = interface(IXMLNode)
    ['{B0A350C1-3BD8-476D-A4BE-24CBED8E9426}']
    { Property Accessors }
    function Get_TpArma: UnicodeString;
    function Get_NSerie: UnicodeString;
    function Get_NCano: UnicodeString;
    function Get_Descr: UnicodeString;
    procedure Set_TpArma(Value: UnicodeString);
    procedure Set_NSerie(Value: UnicodeString);
    procedure Set_NCano(Value: UnicodeString);
    procedure Set_Descr(Value: UnicodeString);
    { Methods & Properties }
    property TpArma: UnicodeString read Get_TpArma write Set_TpArma;
    property NSerie: UnicodeString read Get_NSerie write Set_NSerie;
    property NCano: UnicodeString read Get_NCano write Set_NCano;
    property Descr: UnicodeString read Get_Descr write Set_Descr;
  end;

{ IXMLArmaList }

  IXMLArmaList = interface(IXMLNodeCollection)
    ['{4173FB3E-68F0-42AF-BAC1-9B7B1FC1FA59}']
    { Methods & Properties }
    function Add: IXMLArma;
    function Insert(const Index: Integer): IXMLArma;

    function Get_Item(Index: Integer): IXMLArma;
    property Items[Index: Integer]: IXMLArma read Get_Item; default;
  end;

{ IXMLComb }

  IXMLComb = interface(IXMLNode)
    ['{1B1AB5D1-4B02-4310-87DE-0E75BA7F52A6}']
    { Property Accessors }
    function Get_CProdANP: UnicodeString;
    function Get_DescANP: UnicodeString;
    function Get_PGLP: UnicodeString;
    function Get_PGNn: UnicodeString;
    function Get_PGNi: UnicodeString;
    function Get_VPart: UnicodeString;
    function Get_CODIF: UnicodeString;
    function Get_QTemp: UnicodeString;
    function Get_UFCons: UnicodeString;
    function Get_CIDE: IXMLCIDE;
    function Get_Encerrante: IXMLEncerrante;
    procedure Set_CProdANP(Value: UnicodeString);
    procedure Set_DescANP(Value: UnicodeString);
    procedure Set_PGLP(Value: UnicodeString);
    procedure Set_PGNn(Value: UnicodeString);
    procedure Set_PGNi(Value: UnicodeString);
    procedure Set_VPart(Value: UnicodeString);
    procedure Set_CODIF(Value: UnicodeString);
    procedure Set_QTemp(Value: UnicodeString);
    procedure Set_UFCons(Value: UnicodeString);
    { Methods & Properties }
    property CProdANP: UnicodeString read Get_CProdANP write Set_CProdANP;
    property DescANP: UnicodeString read Get_DescANP write Set_DescANP;
    property PGLP: UnicodeString read Get_PGLP write Set_PGLP;
    property PGNn: UnicodeString read Get_PGNn write Set_PGNn;
    property PGNi: UnicodeString read Get_PGNi write Set_PGNi;
    property VPart: UnicodeString read Get_VPart write Set_VPart;
    property CODIF: UnicodeString read Get_CODIF write Set_CODIF;
    property QTemp: UnicodeString read Get_QTemp write Set_QTemp;
    property UFCons: UnicodeString read Get_UFCons write Set_UFCons;
    property CIDE: IXMLCIDE read Get_CIDE;
    property Encerrante: IXMLEncerrante read Get_Encerrante;
  end;

{ IXMLCIDE }

  IXMLCIDE = interface(IXMLNode)
    ['{5ACAF5B9-9F79-4FF0-A6D8-B2B7E8426873}']
    { Property Accessors }
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VCIDE: UnicodeString;
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VCIDE(Value: UnicodeString);
    { Methods & Properties }
    property QBCProd: UnicodeString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: UnicodeString read Get_VAliqProd write Set_VAliqProd;
    property VCIDE: UnicodeString read Get_VCIDE write Set_VCIDE;
  end;

{ IXMLEncerrante }

  IXMLEncerrante = interface(IXMLNode)
    ['{E47B17CF-0DD4-4E76-A876-D2CB27EAE4CC}']
    { Property Accessors }
    function Get_NBico: UnicodeString;
    function Get_NBomba: UnicodeString;
    function Get_NTanque: UnicodeString;
    function Get_VEncIni: UnicodeString;
    function Get_VEncFin: UnicodeString;
    procedure Set_NBico(Value: UnicodeString);
    procedure Set_NBomba(Value: UnicodeString);
    procedure Set_NTanque(Value: UnicodeString);
    procedure Set_VEncIni(Value: UnicodeString);
    procedure Set_VEncFin(Value: UnicodeString);
    { Methods & Properties }
    property NBico: UnicodeString read Get_NBico write Set_NBico;
    property NBomba: UnicodeString read Get_NBomba write Set_NBomba;
    property NTanque: UnicodeString read Get_NTanque write Set_NTanque;
    property VEncIni: UnicodeString read Get_VEncIni write Set_VEncIni;
    property VEncFin: UnicodeString read Get_VEncFin write Set_VEncFin;
  end;

{ IXMLImposto }

  IXMLImposto = interface(IXMLNode)
    ['{F5F8E8FE-3E5B-4B87-894B-A9DBE4EE234F}']
    { Property Accessors }
    function Get_VTotTrib: UnicodeString;
    function Get_ICMS: IXMLICMS;
    function Get_IPI: IXMLTIpi;
    function Get_II: IXMLII;
    function Get_ISSQN: IXMLISSQN;
    function Get_PIS: IXMLPIS;
    function Get_PISST: IXMLPISST;
    function Get_COFINS: IXMLCOFINS;
    function Get_COFINSST: IXMLCOFINSST;
    function Get_ICMSUFDest: IXMLICMSUFDest;
    procedure Set_VTotTrib(Value: UnicodeString);
    { Methods & Properties }
    property VTotTrib: UnicodeString read Get_VTotTrib write Set_VTotTrib;
    property ICMS: IXMLICMS read Get_ICMS;
    property IPI: IXMLTIpi read Get_IPI;
    property II: IXMLII read Get_II;
    property ISSQN: IXMLISSQN read Get_ISSQN;
    property PIS: IXMLPIS read Get_PIS;
    property PISST: IXMLPISST read Get_PISST;
    property COFINS: IXMLCOFINS read Get_COFINS;
    property COFINSST: IXMLCOFINSST read Get_COFINSST;
    property ICMSUFDest: IXMLICMSUFDest read Get_ICMSUFDest;
  end;

{ IXMLICMS }

  IXMLICMS = interface(IXMLNode)
    ['{7A741593-BEF0-4106-BC40-E6332AEFBC32}']
    { Property Accessors }
    function Get_ICMS00: IXMLICMS00;
    function Get_ICMS10: IXMLICMS10;
    function Get_ICMS20: IXMLICMS20;
    function Get_ICMS30: IXMLICMS30;
    function Get_ICMS40: IXMLICMS40;
    function Get_ICMS51: IXMLICMS51;
    function Get_ICMS60: IXMLICMS60;
    function Get_ICMS70: IXMLICMS70;
    function Get_ICMS90: IXMLICMS90;
    function Get_ICMSPart: IXMLICMSPart;
    function Get_ICMSST: IXMLICMSST;
    function Get_ICMSSN101: IXMLICMSSN101;
    function Get_ICMSSN102: IXMLICMSSN102;
    function Get_ICMSSN201: IXMLICMSSN201;
    function Get_ICMSSN202: IXMLICMSSN202;
    function Get_ICMSSN500: IXMLICMSSN500;
    function Get_ICMSSN900: IXMLICMSSN900;
    { Methods & Properties }
    property ICMS00: IXMLICMS00 read Get_ICMS00;
    property ICMS10: IXMLICMS10 read Get_ICMS10;
    property ICMS20: IXMLICMS20 read Get_ICMS20;
    property ICMS30: IXMLICMS30 read Get_ICMS30;
    property ICMS40: IXMLICMS40 read Get_ICMS40;
    property ICMS51: IXMLICMS51 read Get_ICMS51;
    property ICMS60: IXMLICMS60 read Get_ICMS60;
    property ICMS70: IXMLICMS70 read Get_ICMS70;
    property ICMS90: IXMLICMS90 read Get_ICMS90;
    property ICMSPart: IXMLICMSPart read Get_ICMSPart;
    property ICMSST: IXMLICMSST read Get_ICMSST;
    property ICMSSN101: IXMLICMSSN101 read Get_ICMSSN101;
    property ICMSSN102: IXMLICMSSN102 read Get_ICMSSN102;
    property ICMSSN201: IXMLICMSSN201 read Get_ICMSSN201;
    property ICMSSN202: IXMLICMSSN202 read Get_ICMSSN202;
    property ICMSSN500: IXMLICMSSN500 read Get_ICMSSN500;
    property ICMSSN900: IXMLICMSSN900 read Get_ICMSSN900;
  end;

{ IXMLICMS00 }

  IXMLICMS00 = interface(IXMLNode)
    ['{81AF535E-DA39-413F-8462-C2E3B1A28EF3}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_PFCP: UnicodeString;
    function Get_VFCP: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_PFCP(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CST: UnicodeString read Get_CST write Set_CST;
    property ModBC: UnicodeString read Get_ModBC write Set_ModBC;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PICMS: UnicodeString read Get_PICMS write Set_PICMS;
    property VICMS: UnicodeString read Get_VICMS write Set_VICMS;
    property PFCP: UnicodeString read Get_PFCP write Set_PFCP;
    property VFCP: UnicodeString read Get_VFCP write Set_VFCP;
  end;

{ IXMLICMS10 }

  IXMLICMS10 = interface(IXMLNode)
    ['{ECFBF470-4D16-4E6D-B881-E60C6376E506}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_VBCFCP: UnicodeString;
    function Get_PFCP: UnicodeString;
    function Get_VFCP: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_VBCFCP(Value: UnicodeString);
    procedure Set_PFCP(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CST: UnicodeString read Get_CST write Set_CST;
    property ModBC: UnicodeString read Get_ModBC write Set_ModBC;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PICMS: UnicodeString read Get_PICMS write Set_PICMS;
    property VICMS: UnicodeString read Get_VICMS write Set_VICMS;
    property VBCFCP: UnicodeString read Get_VBCFCP write Set_VBCFCP;
    property PFCP: UnicodeString read Get_PFCP write Set_PFCP;
    property VFCP: UnicodeString read Get_VFCP write Set_VFCP;
    property ModBCST: UnicodeString read Get_ModBCST write Set_ModBCST;
    property PMVAST: UnicodeString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: UnicodeString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: UnicodeString read Get_VBCST write Set_VBCST;
    property PICMSST: UnicodeString read Get_PICMSST write Set_PICMSST;
    property VICMSST: UnicodeString read Get_VICMSST write Set_VICMSST;
    property VBCFCPST: UnicodeString read Get_VBCFCPST write Set_VBCFCPST;
    property PFCPST: UnicodeString read Get_PFCPST write Set_PFCPST;
    property VFCPST: UnicodeString read Get_VFCPST write Set_VFCPST;
  end;

{ IXMLICMS20 }

  IXMLICMS20 = interface(IXMLNode)
    ['{49A4BA1D-1F54-405B-A649-F837B4EC8960}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_PRedBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_VBCFCP: UnicodeString;
    function Get_PFCP: UnicodeString;
    function Get_VFCP: UnicodeString;
    function Get_VICMSDeson: UnicodeString;
    function Get_MotDesICMS: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_PRedBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_VBCFCP(Value: UnicodeString);
    procedure Set_PFCP(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
    procedure Set_VICMSDeson(Value: UnicodeString);
    procedure Set_MotDesICMS(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CST: UnicodeString read Get_CST write Set_CST;
    property ModBC: UnicodeString read Get_ModBC write Set_ModBC;
    property PRedBC: UnicodeString read Get_PRedBC write Set_PRedBC;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PICMS: UnicodeString read Get_PICMS write Set_PICMS;
    property VICMS: UnicodeString read Get_VICMS write Set_VICMS;
    property VBCFCP: UnicodeString read Get_VBCFCP write Set_VBCFCP;
    property PFCP: UnicodeString read Get_PFCP write Set_PFCP;
    property VFCP: UnicodeString read Get_VFCP write Set_VFCP;
    property VICMSDeson: UnicodeString read Get_VICMSDeson write Set_VICMSDeson;
    property MotDesICMS: UnicodeString read Get_MotDesICMS write Set_MotDesICMS;
  end;

{ IXMLICMS30 }

  IXMLICMS30 = interface(IXMLNode)
    ['{0F0A6118-B549-4A7F-A135-77A6CADB5684}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    function Get_VICMSDeson: UnicodeString;
    function Get_MotDesICMS: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    procedure Set_VICMSDeson(Value: UnicodeString);
    procedure Set_MotDesICMS(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CST: UnicodeString read Get_CST write Set_CST;
    property ModBCST: UnicodeString read Get_ModBCST write Set_ModBCST;
    property PMVAST: UnicodeString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: UnicodeString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: UnicodeString read Get_VBCST write Set_VBCST;
    property PICMSST: UnicodeString read Get_PICMSST write Set_PICMSST;
    property VICMSST: UnicodeString read Get_VICMSST write Set_VICMSST;
    property VBCFCPST: UnicodeString read Get_VBCFCPST write Set_VBCFCPST;
    property PFCPST: UnicodeString read Get_PFCPST write Set_PFCPST;
    property VFCPST: UnicodeString read Get_VFCPST write Set_VFCPST;
    property VICMSDeson: UnicodeString read Get_VICMSDeson write Set_VICMSDeson;
    property MotDesICMS: UnicodeString read Get_MotDesICMS write Set_MotDesICMS;
  end;

{ IXMLICMS40 }

  IXMLICMS40 = interface(IXMLNode)
    ['{A4CD2BD6-53F2-4EE6-B54F-ACCA84028908}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_VICMSDeson: UnicodeString;
    function Get_MotDesICMS: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VICMSDeson(Value: UnicodeString);
    procedure Set_MotDesICMS(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CST: UnicodeString read Get_CST write Set_CST;
    property VICMSDeson: UnicodeString read Get_VICMSDeson write Set_VICMSDeson;
    property MotDesICMS: UnicodeString read Get_MotDesICMS write Set_MotDesICMS;
  end;

{ IXMLICMS51 }

  IXMLICMS51 = interface(IXMLNode)
    ['{59967C15-AC7C-4000-AF98-BF7728AA7369}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_PRedBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMSOp: UnicodeString;
    function Get_PDif: UnicodeString;
    function Get_VICMSDif: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_VBCFCP: UnicodeString;
    function Get_PFCP: UnicodeString;
    function Get_VFCP: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_PRedBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMSOp(Value: UnicodeString);
    procedure Set_PDif(Value: UnicodeString);
    procedure Set_VICMSDif(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_VBCFCP(Value: UnicodeString);
    procedure Set_PFCP(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CST: UnicodeString read Get_CST write Set_CST;
    property ModBC: UnicodeString read Get_ModBC write Set_ModBC;
    property PRedBC: UnicodeString read Get_PRedBC write Set_PRedBC;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PICMS: UnicodeString read Get_PICMS write Set_PICMS;
    property VICMSOp: UnicodeString read Get_VICMSOp write Set_VICMSOp;
    property PDif: UnicodeString read Get_PDif write Set_PDif;
    property VICMSDif: UnicodeString read Get_VICMSDif write Set_VICMSDif;
    property VICMS: UnicodeString read Get_VICMS write Set_VICMS;
    property VBCFCP: UnicodeString read Get_VBCFCP write Set_VBCFCP;
    property PFCP: UnicodeString read Get_PFCP write Set_PFCP;
    property VFCP: UnicodeString read Get_VFCP write Set_VFCP;
  end;

{ IXMLICMS60 }

  IXMLICMS60 = interface(IXMLNode)
    ['{DEA67F41-CF1C-4062-A8F3-007481CF662C}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_VBCSTRet: UnicodeString;
    function Get_PST: UnicodeString;
    function Get_VICMSSTRet: UnicodeString;
    function Get_VBCFCPSTRet: UnicodeString;
    function Get_PFCPSTRet: UnicodeString;
    function Get_VFCPSTRet: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBCSTRet(Value: UnicodeString);
    procedure Set_PST(Value: UnicodeString);
    procedure Set_VICMSSTRet(Value: UnicodeString);
    procedure Set_VBCFCPSTRet(Value: UnicodeString);
    procedure Set_PFCPSTRet(Value: UnicodeString);
    procedure Set_VFCPSTRet(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CST: UnicodeString read Get_CST write Set_CST;
    property VBCSTRet: UnicodeString read Get_VBCSTRet write Set_VBCSTRet;
    property PST: UnicodeString read Get_PST write Set_PST;
    property VICMSSTRet: UnicodeString read Get_VICMSSTRet write Set_VICMSSTRet;
    property VBCFCPSTRet: UnicodeString read Get_VBCFCPSTRet write Set_VBCFCPSTRet;
    property PFCPSTRet: UnicodeString read Get_PFCPSTRet write Set_PFCPSTRet;
    property VFCPSTRet: UnicodeString read Get_VFCPSTRet write Set_VFCPSTRet;
  end;

{ IXMLICMS70 }

  IXMLICMS70 = interface(IXMLNode)
    ['{17679920-E3AE-46B9-9D00-4B7D03DF2DFF}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_PRedBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_VBCFCP: UnicodeString;
    function Get_PFCP: UnicodeString;
    function Get_VFCP: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    function Get_VICMSDeson: UnicodeString;
    function Get_MotDesICMS: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_PRedBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_VBCFCP(Value: UnicodeString);
    procedure Set_PFCP(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    procedure Set_VICMSDeson(Value: UnicodeString);
    procedure Set_MotDesICMS(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CST: UnicodeString read Get_CST write Set_CST;
    property ModBC: UnicodeString read Get_ModBC write Set_ModBC;
    property PRedBC: UnicodeString read Get_PRedBC write Set_PRedBC;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PICMS: UnicodeString read Get_PICMS write Set_PICMS;
    property VICMS: UnicodeString read Get_VICMS write Set_VICMS;
    property VBCFCP: UnicodeString read Get_VBCFCP write Set_VBCFCP;
    property PFCP: UnicodeString read Get_PFCP write Set_PFCP;
    property VFCP: UnicodeString read Get_VFCP write Set_VFCP;
    property ModBCST: UnicodeString read Get_ModBCST write Set_ModBCST;
    property PMVAST: UnicodeString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: UnicodeString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: UnicodeString read Get_VBCST write Set_VBCST;
    property PICMSST: UnicodeString read Get_PICMSST write Set_PICMSST;
    property VICMSST: UnicodeString read Get_VICMSST write Set_VICMSST;
    property VBCFCPST: UnicodeString read Get_VBCFCPST write Set_VBCFCPST;
    property PFCPST: UnicodeString read Get_PFCPST write Set_PFCPST;
    property VFCPST: UnicodeString read Get_VFCPST write Set_VFCPST;
    property VICMSDeson: UnicodeString read Get_VICMSDeson write Set_VICMSDeson;
    property MotDesICMS: UnicodeString read Get_MotDesICMS write Set_MotDesICMS;
  end;

{ IXMLICMS90 }

  IXMLICMS90 = interface(IXMLNode)
    ['{1651E64F-F177-4378-A638-7682FA2DC482}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PRedBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_VBCFCP: UnicodeString;
    function Get_PFCP: UnicodeString;
    function Get_VFCP: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    function Get_VICMSDeson: UnicodeString;
    function Get_MotDesICMS: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PRedBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_VBCFCP(Value: UnicodeString);
    procedure Set_PFCP(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    procedure Set_VICMSDeson(Value: UnicodeString);
    procedure Set_MotDesICMS(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CST: UnicodeString read Get_CST write Set_CST;
    property ModBC: UnicodeString read Get_ModBC write Set_ModBC;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PRedBC: UnicodeString read Get_PRedBC write Set_PRedBC;
    property PICMS: UnicodeString read Get_PICMS write Set_PICMS;
    property VICMS: UnicodeString read Get_VICMS write Set_VICMS;
    property VBCFCP: UnicodeString read Get_VBCFCP write Set_VBCFCP;
    property PFCP: UnicodeString read Get_PFCP write Set_PFCP;
    property VFCP: UnicodeString read Get_VFCP write Set_VFCP;
    property ModBCST: UnicodeString read Get_ModBCST write Set_ModBCST;
    property PMVAST: UnicodeString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: UnicodeString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: UnicodeString read Get_VBCST write Set_VBCST;
    property PICMSST: UnicodeString read Get_PICMSST write Set_PICMSST;
    property VICMSST: UnicodeString read Get_VICMSST write Set_VICMSST;
    property VBCFCPST: UnicodeString read Get_VBCFCPST write Set_VBCFCPST;
    property PFCPST: UnicodeString read Get_PFCPST write Set_PFCPST;
    property VFCPST: UnicodeString read Get_VFCPST write Set_VFCPST;
    property VICMSDeson: UnicodeString read Get_VICMSDeson write Set_VICMSDeson;
    property MotDesICMS: UnicodeString read Get_MotDesICMS write Set_MotDesICMS;
  end;

{ IXMLICMSPart }

  IXMLICMSPart = interface(IXMLNode)
    ['{700B78D0-6F08-4BA9-B87D-FAEDF69AD8FC}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PRedBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_PBCOp: UnicodeString;
    function Get_UFST: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PRedBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_PBCOp(Value: UnicodeString);
    procedure Set_UFST(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CST: UnicodeString read Get_CST write Set_CST;
    property ModBC: UnicodeString read Get_ModBC write Set_ModBC;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PRedBC: UnicodeString read Get_PRedBC write Set_PRedBC;
    property PICMS: UnicodeString read Get_PICMS write Set_PICMS;
    property VICMS: UnicodeString read Get_VICMS write Set_VICMS;
    property ModBCST: UnicodeString read Get_ModBCST write Set_ModBCST;
    property PMVAST: UnicodeString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: UnicodeString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: UnicodeString read Get_VBCST write Set_VBCST;
    property PICMSST: UnicodeString read Get_PICMSST write Set_PICMSST;
    property VICMSST: UnicodeString read Get_VICMSST write Set_VICMSST;
    property PBCOp: UnicodeString read Get_PBCOp write Set_PBCOp;
    property UFST: UnicodeString read Get_UFST write Set_UFST;
  end;

{ IXMLICMSST }

  IXMLICMSST = interface(IXMLNode)
    ['{4E69CAE6-FF6A-42DA-8A19-135585DA515B}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_VBCSTRet: UnicodeString;
    function Get_VICMSSTRet: UnicodeString;
    function Get_VBCSTDest: UnicodeString;
    function Get_VICMSSTDest: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBCSTRet(Value: UnicodeString);
    procedure Set_VICMSSTRet(Value: UnicodeString);
    procedure Set_VBCSTDest(Value: UnicodeString);
    procedure Set_VICMSSTDest(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CST: UnicodeString read Get_CST write Set_CST;
    property VBCSTRet: UnicodeString read Get_VBCSTRet write Set_VBCSTRet;
    property VICMSSTRet: UnicodeString read Get_VICMSSTRet write Set_VICMSSTRet;
    property VBCSTDest: UnicodeString read Get_VBCSTDest write Set_VBCSTDest;
    property VICMSSTDest: UnicodeString read Get_VICMSSTDest write Set_VICMSSTDest;
  end;

{ IXMLICMSSN101 }

  IXMLICMSSN101 = interface(IXMLNode)
    ['{584D0334-A52C-41B8-8C46-3F0F7AEAA40C}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CSOSN: UnicodeString;
    function Get_PCredSN: UnicodeString;
    function Get_VCredICMSSN: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CSOSN(Value: UnicodeString);
    procedure Set_PCredSN(Value: UnicodeString);
    procedure Set_VCredICMSSN(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CSOSN: UnicodeString read Get_CSOSN write Set_CSOSN;
    property PCredSN: UnicodeString read Get_PCredSN write Set_PCredSN;
    property VCredICMSSN: UnicodeString read Get_VCredICMSSN write Set_VCredICMSSN;
  end;

{ IXMLICMSSN102 }

  IXMLICMSSN102 = interface(IXMLNode)
    ['{F1C3B411-D596-4950-B771-CA992A0524F4}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CSOSN: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CSOSN(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CSOSN: UnicodeString read Get_CSOSN write Set_CSOSN;
  end;

{ IXMLICMSSN201 }

  IXMLICMSSN201 = interface(IXMLNode)
    ['{C6894643-BDB3-4AB6-B142-B4CCDAC1EE15}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CSOSN: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    function Get_PCredSN: UnicodeString;
    function Get_VCredICMSSN: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CSOSN(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    procedure Set_PCredSN(Value: UnicodeString);
    procedure Set_VCredICMSSN(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CSOSN: UnicodeString read Get_CSOSN write Set_CSOSN;
    property ModBCST: UnicodeString read Get_ModBCST write Set_ModBCST;
    property PMVAST: UnicodeString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: UnicodeString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: UnicodeString read Get_VBCST write Set_VBCST;
    property PICMSST: UnicodeString read Get_PICMSST write Set_PICMSST;
    property VICMSST: UnicodeString read Get_VICMSST write Set_VICMSST;
    property VBCFCPST: UnicodeString read Get_VBCFCPST write Set_VBCFCPST;
    property PFCPST: UnicodeString read Get_PFCPST write Set_PFCPST;
    property VFCPST: UnicodeString read Get_VFCPST write Set_VFCPST;
    property PCredSN: UnicodeString read Get_PCredSN write Set_PCredSN;
    property VCredICMSSN: UnicodeString read Get_VCredICMSSN write Set_VCredICMSSN;
  end;

{ IXMLICMSSN202 }

  IXMLICMSSN202 = interface(IXMLNode)
    ['{BCBE07B3-0AEB-433C-A428-D4BB678F7F7C}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CSOSN: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CSOSN(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CSOSN: UnicodeString read Get_CSOSN write Set_CSOSN;
    property ModBCST: UnicodeString read Get_ModBCST write Set_ModBCST;
    property PMVAST: UnicodeString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: UnicodeString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: UnicodeString read Get_VBCST write Set_VBCST;
    property PICMSST: UnicodeString read Get_PICMSST write Set_PICMSST;
    property VICMSST: UnicodeString read Get_VICMSST write Set_VICMSST;
    property VBCFCPST: UnicodeString read Get_VBCFCPST write Set_VBCFCPST;
    property PFCPST: UnicodeString read Get_PFCPST write Set_PFCPST;
    property VFCPST: UnicodeString read Get_VFCPST write Set_VFCPST;
  end;

{ IXMLICMSSN500 }

  IXMLICMSSN500 = interface(IXMLNode)
    ['{D77309DA-1ADE-4CCE-AD7A-B264C019C9C7}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CSOSN: UnicodeString;
    function Get_VBCSTRet: UnicodeString;
    function Get_PST: UnicodeString;
    function Get_VICMSSTRet: UnicodeString;
    function Get_VBCFCPSTRet: UnicodeString;
    function Get_PFCPSTRet: UnicodeString;
    function Get_VFCPSTRet: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CSOSN(Value: UnicodeString);
    procedure Set_VBCSTRet(Value: UnicodeString);
    procedure Set_PST(Value: UnicodeString);
    procedure Set_VICMSSTRet(Value: UnicodeString);
    procedure Set_VBCFCPSTRet(Value: UnicodeString);
    procedure Set_PFCPSTRet(Value: UnicodeString);
    procedure Set_VFCPSTRet(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CSOSN: UnicodeString read Get_CSOSN write Set_CSOSN;
    property VBCSTRet: UnicodeString read Get_VBCSTRet write Set_VBCSTRet;
    property PST: UnicodeString read Get_PST write Set_PST;
    property VICMSSTRet: UnicodeString read Get_VICMSSTRet write Set_VICMSSTRet;
    property VBCFCPSTRet: UnicodeString read Get_VBCFCPSTRet write Set_VBCFCPSTRet;
    property PFCPSTRet: UnicodeString read Get_PFCPSTRet write Set_PFCPSTRet;
    property VFCPSTRet: UnicodeString read Get_VFCPSTRet write Set_VFCPSTRet;
  end;

{ IXMLICMSSN900 }

  IXMLICMSSN900 = interface(IXMLNode)
    ['{794F5089-36CC-4BB1-8722-814C1D5A2486}']
    { Property Accessors }
    function Get_Orig: UnicodeString;
    function Get_CSOSN: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PRedBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    function Get_PCredSN: UnicodeString;
    function Get_VCredICMSSN: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CSOSN(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PRedBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    procedure Set_PCredSN(Value: UnicodeString);
    procedure Set_VCredICMSSN(Value: UnicodeString);
    { Methods & Properties }
    property Orig: UnicodeString read Get_Orig write Set_Orig;
    property CSOSN: UnicodeString read Get_CSOSN write Set_CSOSN;
    property ModBC: UnicodeString read Get_ModBC write Set_ModBC;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PRedBC: UnicodeString read Get_PRedBC write Set_PRedBC;
    property PICMS: UnicodeString read Get_PICMS write Set_PICMS;
    property VICMS: UnicodeString read Get_VICMS write Set_VICMS;
    property ModBCST: UnicodeString read Get_ModBCST write Set_ModBCST;
    property PMVAST: UnicodeString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: UnicodeString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: UnicodeString read Get_VBCST write Set_VBCST;
    property PICMSST: UnicodeString read Get_PICMSST write Set_PICMSST;
    property VICMSST: UnicodeString read Get_VICMSST write Set_VICMSST;
    property VBCFCPST: UnicodeString read Get_VBCFCPST write Set_VBCFCPST;
    property PFCPST: UnicodeString read Get_PFCPST write Set_PFCPST;
    property VFCPST: UnicodeString read Get_VFCPST write Set_VFCPST;
    property PCredSN: UnicodeString read Get_PCredSN write Set_PCredSN;
    property VCredICMSSN: UnicodeString read Get_VCredICMSSN write Set_VCredICMSSN;
  end;

{ IXMLTIpi }

  IXMLTIpi = interface(IXMLNode)
    ['{F60E9D7E-718B-4015-86FD-4AFD95F408CE}']
    { Property Accessors }
    function Get_CNPJProd: UnicodeString;
    function Get_CSelo: UnicodeString;
    function Get_QSelo: UnicodeString;
    function Get_CEnq: UnicodeString;
    function Get_IPITrib: IXMLIPITrib;
    function Get_IPINT: IXMLIPINT;
    procedure Set_CNPJProd(Value: UnicodeString);
    procedure Set_CSelo(Value: UnicodeString);
    procedure Set_QSelo(Value: UnicodeString);
    procedure Set_CEnq(Value: UnicodeString);
    { Methods & Properties }
    property CNPJProd: UnicodeString read Get_CNPJProd write Set_CNPJProd;
    property CSelo: UnicodeString read Get_CSelo write Set_CSelo;
    property QSelo: UnicodeString read Get_QSelo write Set_QSelo;
    property CEnq: UnicodeString read Get_CEnq write Set_CEnq;
    property IPITrib: IXMLIPITrib read Get_IPITrib;
    property IPINT: IXMLIPINT read Get_IPINT;
  end;

{ IXMLIPITrib }

  IXMLIPITrib = interface(IXMLNode)
    ['{0DF43993-5D57-4B95-8DE3-A8FDB1081B92}']
    { Property Accessors }
    function Get_CST: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PIPI: UnicodeString;
    function Get_QUnid: UnicodeString;
    function Get_VUnid: UnicodeString;
    function Get_VIPI: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PIPI(Value: UnicodeString);
    procedure Set_QUnid(Value: UnicodeString);
    procedure Set_VUnid(Value: UnicodeString);
    procedure Set_VIPI(Value: UnicodeString);
    { Methods & Properties }
    property CST: UnicodeString read Get_CST write Set_CST;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PIPI: UnicodeString read Get_PIPI write Set_PIPI;
    property QUnid: UnicodeString read Get_QUnid write Set_QUnid;
    property VUnid: UnicodeString read Get_VUnid write Set_VUnid;
    property VIPI: UnicodeString read Get_VIPI write Set_VIPI;
  end;

{ IXMLIPINT }

  IXMLIPINT = interface(IXMLNode)
    ['{211445BC-5E59-45E6-A144-B247880466FB}']
    { Property Accessors }
    function Get_CST: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    { Methods & Properties }
    property CST: UnicodeString read Get_CST write Set_CST;
  end;

{ IXMLII }

  IXMLII = interface(IXMLNode)
    ['{167AAAC6-5760-4151-9632-172BDA3A61A8}']
    { Property Accessors }
    function Get_VBC: UnicodeString;
    function Get_VDespAdu: UnicodeString;
    function Get_VII: UnicodeString;
    function Get_VIOF: UnicodeString;
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_VDespAdu(Value: UnicodeString);
    procedure Set_VII(Value: UnicodeString);
    procedure Set_VIOF(Value: UnicodeString);
    { Methods & Properties }
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property VDespAdu: UnicodeString read Get_VDespAdu write Set_VDespAdu;
    property VII: UnicodeString read Get_VII write Set_VII;
    property VIOF: UnicodeString read Get_VIOF write Set_VIOF;
  end;

{ IXMLISSQN }

  IXMLISSQN = interface(IXMLNode)
    ['{B36B4545-4494-4AD6-A4F6-C5AA4CAC2A31}']
    { Property Accessors }
    function Get_VBC: UnicodeString;
    function Get_VAliq: UnicodeString;
    function Get_VISSQN: UnicodeString;
    function Get_CMunFG: UnicodeString;
    function Get_CListServ: UnicodeString;
    function Get_VDeducao: UnicodeString;
    function Get_VOutro: UnicodeString;
    function Get_VDescIncond: UnicodeString;
    function Get_VDescCond: UnicodeString;
    function Get_VISSRet: UnicodeString;
    function Get_IndISS: UnicodeString;
    function Get_CServico: UnicodeString;
    function Get_CMun: UnicodeString;
    function Get_CPais: UnicodeString;
    function Get_NProcesso: UnicodeString;
    function Get_IndIncentivo: UnicodeString;
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_VAliq(Value: UnicodeString);
    procedure Set_VISSQN(Value: UnicodeString);
    procedure Set_CMunFG(Value: UnicodeString);
    procedure Set_CListServ(Value: UnicodeString);
    procedure Set_VDeducao(Value: UnicodeString);
    procedure Set_VOutro(Value: UnicodeString);
    procedure Set_VDescIncond(Value: UnicodeString);
    procedure Set_VDescCond(Value: UnicodeString);
    procedure Set_VISSRet(Value: UnicodeString);
    procedure Set_IndISS(Value: UnicodeString);
    procedure Set_CServico(Value: UnicodeString);
    procedure Set_CMun(Value: UnicodeString);
    procedure Set_CPais(Value: UnicodeString);
    procedure Set_NProcesso(Value: UnicodeString);
    procedure Set_IndIncentivo(Value: UnicodeString);
    { Methods & Properties }
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property VAliq: UnicodeString read Get_VAliq write Set_VAliq;
    property VISSQN: UnicodeString read Get_VISSQN write Set_VISSQN;
    property CMunFG: UnicodeString read Get_CMunFG write Set_CMunFG;
    property CListServ: UnicodeString read Get_CListServ write Set_CListServ;
    property VDeducao: UnicodeString read Get_VDeducao write Set_VDeducao;
    property VOutro: UnicodeString read Get_VOutro write Set_VOutro;
    property VDescIncond: UnicodeString read Get_VDescIncond write Set_VDescIncond;
    property VDescCond: UnicodeString read Get_VDescCond write Set_VDescCond;
    property VISSRet: UnicodeString read Get_VISSRet write Set_VISSRet;
    property IndISS: UnicodeString read Get_IndISS write Set_IndISS;
    property CServico: UnicodeString read Get_CServico write Set_CServico;
    property CMun: UnicodeString read Get_CMun write Set_CMun;
    property CPais: UnicodeString read Get_CPais write Set_CPais;
    property NProcesso: UnicodeString read Get_NProcesso write Set_NProcesso;
    property IndIncentivo: UnicodeString read Get_IndIncentivo write Set_IndIncentivo;
  end;

{ IXMLPIS }

  IXMLPIS = interface(IXMLNode)
    ['{8741C38F-E78F-4CD4-9431-70188205A282}']
    { Property Accessors }
    function Get_PISAliq: IXMLPISAliq;
    function Get_PISQtde: IXMLPISQtde;
    function Get_PISNT: IXMLPISNT;
    function Get_PISOutr: IXMLPISOutr;
    { Methods & Properties }
    property PISAliq: IXMLPISAliq read Get_PISAliq;
    property PISQtde: IXMLPISQtde read Get_PISQtde;
    property PISNT: IXMLPISNT read Get_PISNT;
    property PISOutr: IXMLPISOutr read Get_PISOutr;
  end;

{ IXMLPISAliq }

  IXMLPISAliq = interface(IXMLNode)
    ['{FB0D841F-3352-495F-B97D-1F82E21FC241}']
    { Property Accessors }
    function Get_CST: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PPIS: UnicodeString;
    function Get_VPIS: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PPIS(Value: UnicodeString);
    procedure Set_VPIS(Value: UnicodeString);
    { Methods & Properties }
    property CST: UnicodeString read Get_CST write Set_CST;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PPIS: UnicodeString read Get_PPIS write Set_PPIS;
    property VPIS: UnicodeString read Get_VPIS write Set_VPIS;
  end;

{ IXMLPISQtde }

  IXMLPISQtde = interface(IXMLNode)
    ['{042C7647-D710-4B30-9F42-4334C890D4AC}']
    { Property Accessors }
    function Get_CST: UnicodeString;
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VPIS: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VPIS(Value: UnicodeString);
    { Methods & Properties }
    property CST: UnicodeString read Get_CST write Set_CST;
    property QBCProd: UnicodeString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: UnicodeString read Get_VAliqProd write Set_VAliqProd;
    property VPIS: UnicodeString read Get_VPIS write Set_VPIS;
  end;

{ IXMLPISNT }

  IXMLPISNT = interface(IXMLNode)
    ['{7129C945-A120-4EAE-8168-0FA60856F34A}']
    { Property Accessors }
    function Get_CST: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    { Methods & Properties }
    property CST: UnicodeString read Get_CST write Set_CST;
  end;

{ IXMLPISOutr }

  IXMLPISOutr = interface(IXMLNode)
    ['{772971D8-1F23-4104-96DD-DE35642705BD}']
    { Property Accessors }
    function Get_CST: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PPIS: UnicodeString;
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VPIS: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PPIS(Value: UnicodeString);
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VPIS(Value: UnicodeString);
    { Methods & Properties }
    property CST: UnicodeString read Get_CST write Set_CST;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PPIS: UnicodeString read Get_PPIS write Set_PPIS;
    property QBCProd: UnicodeString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: UnicodeString read Get_VAliqProd write Set_VAliqProd;
    property VPIS: UnicodeString read Get_VPIS write Set_VPIS;
  end;

{ IXMLPISST }

  IXMLPISST = interface(IXMLNode)
    ['{B060E8EC-B4AB-46DD-A0B8-F4BC48E7A88E}']
    { Property Accessors }
    function Get_VBC: UnicodeString;
    function Get_PPIS: UnicodeString;
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VPIS: UnicodeString;
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PPIS(Value: UnicodeString);
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VPIS(Value: UnicodeString);
    { Methods & Properties }
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PPIS: UnicodeString read Get_PPIS write Set_PPIS;
    property QBCProd: UnicodeString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: UnicodeString read Get_VAliqProd write Set_VAliqProd;
    property VPIS: UnicodeString read Get_VPIS write Set_VPIS;
  end;

{ IXMLCOFINS }

  IXMLCOFINS = interface(IXMLNode)
    ['{DA49DC5D-D084-4797-BE53-21CA81CC7837}']
    { Property Accessors }
    function Get_COFINSAliq: IXMLCOFINSAliq;
    function Get_COFINSQtde: IXMLCOFINSQtde;
    function Get_COFINSNT: IXMLCOFINSNT;
    function Get_COFINSOutr: IXMLCOFINSOutr;
    { Methods & Properties }
    property COFINSAliq: IXMLCOFINSAliq read Get_COFINSAliq;
    property COFINSQtde: IXMLCOFINSQtde read Get_COFINSQtde;
    property COFINSNT: IXMLCOFINSNT read Get_COFINSNT;
    property COFINSOutr: IXMLCOFINSOutr read Get_COFINSOutr;
  end;

{ IXMLCOFINSAliq }

  IXMLCOFINSAliq = interface(IXMLNode)
    ['{E917D563-4497-4BFC-B367-32091DFCCC61}']
    { Property Accessors }
    function Get_CST: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PCOFINS: UnicodeString;
    function Get_VCOFINS: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PCOFINS(Value: UnicodeString);
    procedure Set_VCOFINS(Value: UnicodeString);
    { Methods & Properties }
    property CST: UnicodeString read Get_CST write Set_CST;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PCOFINS: UnicodeString read Get_PCOFINS write Set_PCOFINS;
    property VCOFINS: UnicodeString read Get_VCOFINS write Set_VCOFINS;
  end;

{ IXMLCOFINSQtde }

  IXMLCOFINSQtde = interface(IXMLNode)
    ['{734032B9-141A-46F0-97D3-9B95C5D619CC}']
    { Property Accessors }
    function Get_CST: UnicodeString;
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VCOFINS: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VCOFINS(Value: UnicodeString);
    { Methods & Properties }
    property CST: UnicodeString read Get_CST write Set_CST;
    property QBCProd: UnicodeString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: UnicodeString read Get_VAliqProd write Set_VAliqProd;
    property VCOFINS: UnicodeString read Get_VCOFINS write Set_VCOFINS;
  end;

{ IXMLCOFINSNT }

  IXMLCOFINSNT = interface(IXMLNode)
    ['{90A337E1-98AC-4AA2-A9B8-E206859D027C}']
    { Property Accessors }
    function Get_CST: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    { Methods & Properties }
    property CST: UnicodeString read Get_CST write Set_CST;
  end;

{ IXMLCOFINSOutr }

  IXMLCOFINSOutr = interface(IXMLNode)
    ['{0A703977-EFB9-40F2-8623-809086A1DB37}']
    { Property Accessors }
    function Get_CST: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PCOFINS: UnicodeString;
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VCOFINS: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PCOFINS(Value: UnicodeString);
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VCOFINS(Value: UnicodeString);
    { Methods & Properties }
    property CST: UnicodeString read Get_CST write Set_CST;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PCOFINS: UnicodeString read Get_PCOFINS write Set_PCOFINS;
    property QBCProd: UnicodeString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: UnicodeString read Get_VAliqProd write Set_VAliqProd;
    property VCOFINS: UnicodeString read Get_VCOFINS write Set_VCOFINS;
  end;

{ IXMLCOFINSST }

  IXMLCOFINSST = interface(IXMLNode)
    ['{7290577C-2F9C-45F3-8E3C-22DC4B0C6E43}']
    { Property Accessors }
    function Get_VBC: UnicodeString;
    function Get_PCOFINS: UnicodeString;
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VCOFINS: UnicodeString;
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PCOFINS(Value: UnicodeString);
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VCOFINS(Value: UnicodeString);
    { Methods & Properties }
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property PCOFINS: UnicodeString read Get_PCOFINS write Set_PCOFINS;
    property QBCProd: UnicodeString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: UnicodeString read Get_VAliqProd write Set_VAliqProd;
    property VCOFINS: UnicodeString read Get_VCOFINS write Set_VCOFINS;
  end;

{ IXMLICMSUFDest }

  IXMLICMSUFDest = interface(IXMLNode)
    ['{2085EE2A-F400-4CC1-8BA2-950BB2340191}']
    { Property Accessors }
    function Get_VBCUFDest: UnicodeString;
    function Get_VBCFCPUFDest: UnicodeString;
    function Get_PFCPUFDest: UnicodeString;
    function Get_PICMSUFDest: UnicodeString;
    function Get_PICMSInter: UnicodeString;
    function Get_PICMSInterPart: UnicodeString;
    function Get_VFCPUFDest: UnicodeString;
    function Get_VICMSUFDest: UnicodeString;
    function Get_VICMSUFRemet: UnicodeString;
    procedure Set_VBCUFDest(Value: UnicodeString);
    procedure Set_VBCFCPUFDest(Value: UnicodeString);
    procedure Set_PFCPUFDest(Value: UnicodeString);
    procedure Set_PICMSUFDest(Value: UnicodeString);
    procedure Set_PICMSInter(Value: UnicodeString);
    procedure Set_PICMSInterPart(Value: UnicodeString);
    procedure Set_VFCPUFDest(Value: UnicodeString);
    procedure Set_VICMSUFDest(Value: UnicodeString);
    procedure Set_VICMSUFRemet(Value: UnicodeString);
    { Methods & Properties }
    property VBCUFDest: UnicodeString read Get_VBCUFDest write Set_VBCUFDest;
    property VBCFCPUFDest: UnicodeString read Get_VBCFCPUFDest write Set_VBCFCPUFDest;
    property PFCPUFDest: UnicodeString read Get_PFCPUFDest write Set_PFCPUFDest;
    property PICMSUFDest: UnicodeString read Get_PICMSUFDest write Set_PICMSUFDest;
    property PICMSInter: UnicodeString read Get_PICMSInter write Set_PICMSInter;
    property PICMSInterPart: UnicodeString read Get_PICMSInterPart write Set_PICMSInterPart;
    property VFCPUFDest: UnicodeString read Get_VFCPUFDest write Set_VFCPUFDest;
    property VICMSUFDest: UnicodeString read Get_VICMSUFDest write Set_VICMSUFDest;
    property VICMSUFRemet: UnicodeString read Get_VICMSUFRemet write Set_VICMSUFRemet;
  end;

{ IXMLImpostoDevol }

  IXMLImpostoDevol = interface(IXMLNode)
    ['{932FBCC7-FF1D-44BF-9C03-86EF763811FE}']
    { Property Accessors }
    function Get_PDevol: UnicodeString;
    function Get_IPI: IXMLIPI;
    procedure Set_PDevol(Value: UnicodeString);
    { Methods & Properties }
    property PDevol: UnicodeString read Get_PDevol write Set_PDevol;
    property IPI: IXMLIPI read Get_IPI;
  end;

{ IXMLIPI }

  IXMLIPI = interface(IXMLNode)
    ['{CAF5F7F1-632D-45AF-80CA-BA7FD333576D}']
    { Property Accessors }
    function Get_VIPIDevol: UnicodeString;
    procedure Set_VIPIDevol(Value: UnicodeString);
    { Methods & Properties }
    property VIPIDevol: UnicodeString read Get_VIPIDevol write Set_VIPIDevol;
  end;

{ IXMLTotal }

  IXMLTotal = interface(IXMLNode)
    ['{CC2EEA5E-D9CF-448B-82D9-1D3A3D648FB2}']
    { Property Accessors }
    function Get_ICMSTot: IXMLICMSTot;
    function Get_ISSQNtot: IXMLISSQNtot;
    function Get_RetTrib: IXMLRetTrib;
    { Methods & Properties }
    property ICMSTot: IXMLICMSTot read Get_ICMSTot;
    property ISSQNtot: IXMLISSQNtot read Get_ISSQNtot;
    property RetTrib: IXMLRetTrib read Get_RetTrib;
  end;

{ IXMLICMSTot }

  IXMLICMSTot = interface(IXMLNode)
    ['{DDA4E710-BDB7-4AE5-ADAB-7E877A7976BA}']
    { Property Accessors }
    function Get_VBC: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_VICMSDeson: UnicodeString;
    function Get_VFCPUFDest: UnicodeString;
    function Get_VICMSUFDest: UnicodeString;
    function Get_VICMSUFRemet: UnicodeString;
    function Get_VFCP: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_VST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    function Get_VFCPSTRet: UnicodeString;
    function Get_VProd: UnicodeString;
    function Get_VFrete: UnicodeString;
    function Get_VSeg: UnicodeString;
    function Get_VDesc: UnicodeString;
    function Get_VII: UnicodeString;
    function Get_VIPI: UnicodeString;
    function Get_VIPIDevol: UnicodeString;
    function Get_VPIS: UnicodeString;
    function Get_VCOFINS: UnicodeString;
    function Get_VOutro: UnicodeString;
    function Get_VNF: UnicodeString;
    function Get_VTotTrib: UnicodeString;
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_VICMSDeson(Value: UnicodeString);
    procedure Set_VFCPUFDest(Value: UnicodeString);
    procedure Set_VICMSUFDest(Value: UnicodeString);
    procedure Set_VICMSUFRemet(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_VST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    procedure Set_VFCPSTRet(Value: UnicodeString);
    procedure Set_VProd(Value: UnicodeString);
    procedure Set_VFrete(Value: UnicodeString);
    procedure Set_VSeg(Value: UnicodeString);
    procedure Set_VDesc(Value: UnicodeString);
    procedure Set_VII(Value: UnicodeString);
    procedure Set_VIPI(Value: UnicodeString);
    procedure Set_VIPIDevol(Value: UnicodeString);
    procedure Set_VPIS(Value: UnicodeString);
    procedure Set_VCOFINS(Value: UnicodeString);
    procedure Set_VOutro(Value: UnicodeString);
    procedure Set_VNF(Value: UnicodeString);
    procedure Set_VTotTrib(Value: UnicodeString);
    { Methods & Properties }
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property VICMS: UnicodeString read Get_VICMS write Set_VICMS;
    property VICMSDeson: UnicodeString read Get_VICMSDeson write Set_VICMSDeson;
    property VFCPUFDest: UnicodeString read Get_VFCPUFDest write Set_VFCPUFDest;
    property VICMSUFDest: UnicodeString read Get_VICMSUFDest write Set_VICMSUFDest;
    property VICMSUFRemet: UnicodeString read Get_VICMSUFRemet write Set_VICMSUFRemet;
    property VFCP: UnicodeString read Get_VFCP write Set_VFCP;
    property VBCST: UnicodeString read Get_VBCST write Set_VBCST;
    property VST: UnicodeString read Get_VST write Set_VST;
    property VFCPST: UnicodeString read Get_VFCPST write Set_VFCPST;
    property VFCPSTRet: UnicodeString read Get_VFCPSTRet write Set_VFCPSTRet;
    property VProd: UnicodeString read Get_VProd write Set_VProd;
    property VFrete: UnicodeString read Get_VFrete write Set_VFrete;
    property VSeg: UnicodeString read Get_VSeg write Set_VSeg;
    property VDesc: UnicodeString read Get_VDesc write Set_VDesc;
    property VII: UnicodeString read Get_VII write Set_VII;
    property VIPI: UnicodeString read Get_VIPI write Set_VIPI;
    property VIPIDevol: UnicodeString read Get_VIPIDevol write Set_VIPIDevol;
    property VPIS: UnicodeString read Get_VPIS write Set_VPIS;
    property VCOFINS: UnicodeString read Get_VCOFINS write Set_VCOFINS;
    property VOutro: UnicodeString read Get_VOutro write Set_VOutro;
    property VNF: UnicodeString read Get_VNF write Set_VNF;
    property VTotTrib: UnicodeString read Get_VTotTrib write Set_VTotTrib;
  end;

{ IXMLISSQNtot }

  IXMLISSQNtot = interface(IXMLNode)
    ['{2C1232E3-4B7A-4710-9CAB-06040E95470B}']
    { Property Accessors }
    function Get_VServ: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_VISS: UnicodeString;
    function Get_VPIS: UnicodeString;
    function Get_VCOFINS: UnicodeString;
    function Get_DCompet: UnicodeString;
    function Get_VDeducao: UnicodeString;
    function Get_VOutro: UnicodeString;
    function Get_VDescIncond: UnicodeString;
    function Get_VDescCond: UnicodeString;
    function Get_VISSRet: UnicodeString;
    function Get_CRegTrib: UnicodeString;
    procedure Set_VServ(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_VISS(Value: UnicodeString);
    procedure Set_VPIS(Value: UnicodeString);
    procedure Set_VCOFINS(Value: UnicodeString);
    procedure Set_DCompet(Value: UnicodeString);
    procedure Set_VDeducao(Value: UnicodeString);
    procedure Set_VOutro(Value: UnicodeString);
    procedure Set_VDescIncond(Value: UnicodeString);
    procedure Set_VDescCond(Value: UnicodeString);
    procedure Set_VISSRet(Value: UnicodeString);
    procedure Set_CRegTrib(Value: UnicodeString);
    { Methods & Properties }
    property VServ: UnicodeString read Get_VServ write Set_VServ;
    property VBC: UnicodeString read Get_VBC write Set_VBC;
    property VISS: UnicodeString read Get_VISS write Set_VISS;
    property VPIS: UnicodeString read Get_VPIS write Set_VPIS;
    property VCOFINS: UnicodeString read Get_VCOFINS write Set_VCOFINS;
    property DCompet: UnicodeString read Get_DCompet write Set_DCompet;
    property VDeducao: UnicodeString read Get_VDeducao write Set_VDeducao;
    property VOutro: UnicodeString read Get_VOutro write Set_VOutro;
    property VDescIncond: UnicodeString read Get_VDescIncond write Set_VDescIncond;
    property VDescCond: UnicodeString read Get_VDescCond write Set_VDescCond;
    property VISSRet: UnicodeString read Get_VISSRet write Set_VISSRet;
    property CRegTrib: UnicodeString read Get_CRegTrib write Set_CRegTrib;
  end;

{ IXMLRetTrib }

  IXMLRetTrib = interface(IXMLNode)
    ['{50CBFEDB-4B20-4C24-87D8-4334188AEC99}']
    { Property Accessors }
    function Get_VRetPIS: UnicodeString;
    function Get_VRetCOFINS: UnicodeString;
    function Get_VRetCSLL: UnicodeString;
    function Get_VBCIRRF: UnicodeString;
    function Get_VIRRF: UnicodeString;
    function Get_VBCRetPrev: UnicodeString;
    function Get_VRetPrev: UnicodeString;
    procedure Set_VRetPIS(Value: UnicodeString);
    procedure Set_VRetCOFINS(Value: UnicodeString);
    procedure Set_VRetCSLL(Value: UnicodeString);
    procedure Set_VBCIRRF(Value: UnicodeString);
    procedure Set_VIRRF(Value: UnicodeString);
    procedure Set_VBCRetPrev(Value: UnicodeString);
    procedure Set_VRetPrev(Value: UnicodeString);
    { Methods & Properties }
    property VRetPIS: UnicodeString read Get_VRetPIS write Set_VRetPIS;
    property VRetCOFINS: UnicodeString read Get_VRetCOFINS write Set_VRetCOFINS;
    property VRetCSLL: UnicodeString read Get_VRetCSLL write Set_VRetCSLL;
    property VBCIRRF: UnicodeString read Get_VBCIRRF write Set_VBCIRRF;
    property VIRRF: UnicodeString read Get_VIRRF write Set_VIRRF;
    property VBCRetPrev: UnicodeString read Get_VBCRetPrev write Set_VBCRetPrev;
    property VRetPrev: UnicodeString read Get_VRetPrev write Set_VRetPrev;
  end;

{ IXMLTransp }

  IXMLTransp = interface(IXMLNode)
    ['{E96CA053-1BBE-42C1-8324-DD41BA75CAFE}']
    { Property Accessors }
    function Get_ModFrete: UnicodeString;
    function Get_Transporta: IXMLTransporta;
    function Get_RetTransp: IXMLRetTransp;
    function Get_VeicTransp: IXMLTVeiculo;
    function Get_Reboque: IXMLTVeiculoList;
    function Get_Vagao: UnicodeString;
    function Get_Balsa: UnicodeString;
    function Get_Vol: IXMLVolList;
    procedure Set_ModFrete(Value: UnicodeString);
    procedure Set_Vagao(Value: UnicodeString);
    procedure Set_Balsa(Value: UnicodeString);
    { Methods & Properties }
    property ModFrete: UnicodeString read Get_ModFrete write Set_ModFrete;
    property Transporta: IXMLTransporta read Get_Transporta;
    property RetTransp: IXMLRetTransp read Get_RetTransp;
    property VeicTransp: IXMLTVeiculo read Get_VeicTransp;
    property Reboque: IXMLTVeiculoList read Get_Reboque;
    property Vagao: UnicodeString read Get_Vagao write Set_Vagao;
    property Balsa: UnicodeString read Get_Balsa write Set_Balsa;
    property Vol: IXMLVolList read Get_Vol;
  end;

{ IXMLTransporta }

  IXMLTransporta = interface(IXMLNode)
    ['{D1DE975E-4DB6-4377-A6F8-300F850DAF89}']
    { Property Accessors }
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    function Get_XNome: UnicodeString;
    function Get_IE: UnicodeString;
    function Get_XEnder: UnicodeString;
    function Get_XMun: UnicodeString;
    function Get_UF: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
    procedure Set_XNome(Value: UnicodeString);
    procedure Set_IE(Value: UnicodeString);
    procedure Set_XEnder(Value: UnicodeString);
    procedure Set_XMun(Value: UnicodeString);
    procedure Set_UF(Value: UnicodeString);
    { Methods & Properties }
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property CPF: UnicodeString read Get_CPF write Set_CPF;
    property XNome: UnicodeString read Get_XNome write Set_XNome;
    property IE: UnicodeString read Get_IE write Set_IE;
    property XEnder: UnicodeString read Get_XEnder write Set_XEnder;
    property XMun: UnicodeString read Get_XMun write Set_XMun;
    property UF: UnicodeString read Get_UF write Set_UF;
  end;

{ IXMLRetTransp }

  IXMLRetTransp = interface(IXMLNode)
    ['{DEF70442-7FA6-4B72-9479-9E4078FF5F64}']
    { Property Accessors }
    function Get_VServ: UnicodeString;
    function Get_VBCRet: UnicodeString;
    function Get_PICMSRet: UnicodeString;
    function Get_VICMSRet: UnicodeString;
    function Get_CFOP: UnicodeString;
    function Get_CMunFG: UnicodeString;
    procedure Set_VServ(Value: UnicodeString);
    procedure Set_VBCRet(Value: UnicodeString);
    procedure Set_PICMSRet(Value: UnicodeString);
    procedure Set_VICMSRet(Value: UnicodeString);
    procedure Set_CFOP(Value: UnicodeString);
    procedure Set_CMunFG(Value: UnicodeString);
    { Methods & Properties }
    property VServ: UnicodeString read Get_VServ write Set_VServ;
    property VBCRet: UnicodeString read Get_VBCRet write Set_VBCRet;
    property PICMSRet: UnicodeString read Get_PICMSRet write Set_PICMSRet;
    property VICMSRet: UnicodeString read Get_VICMSRet write Set_VICMSRet;
    property CFOP: UnicodeString read Get_CFOP write Set_CFOP;
    property CMunFG: UnicodeString read Get_CMunFG write Set_CMunFG;
  end;

{ IXMLTVeiculo }

  IXMLTVeiculo = interface(IXMLNode)
    ['{A51E8DD2-BB57-4EBC-949B-E14F25477197}']
    { Property Accessors }
    function Get_Placa: UnicodeString;
    function Get_UF: UnicodeString;
    function Get_RNTC: UnicodeString;
    procedure Set_Placa(Value: UnicodeString);
    procedure Set_UF(Value: UnicodeString);
    procedure Set_RNTC(Value: UnicodeString);
    { Methods & Properties }
    property Placa: UnicodeString read Get_Placa write Set_Placa;
    property UF: UnicodeString read Get_UF write Set_UF;
    property RNTC: UnicodeString read Get_RNTC write Set_RNTC;
  end;

{ IXMLTVeiculoList }

  IXMLTVeiculoList = interface(IXMLNodeCollection)
    ['{10ABFC8C-87A7-4E86-BE6C-ABBCFB66A4E9}']
    { Methods & Properties }
    function Add: IXMLTVeiculo;
    function Insert(const Index: Integer): IXMLTVeiculo;

    function Get_Item(Index: Integer): IXMLTVeiculo;
    property Items[Index: Integer]: IXMLTVeiculo read Get_Item; default;
  end;

{ IXMLVol }

  IXMLVol = interface(IXMLNode)
    ['{41E5BD91-53E3-4236-92F4-B794F34D97B4}']
    { Property Accessors }
    function Get_QVol: UnicodeString;
    function Get_Esp: UnicodeString;
    function Get_Marca: UnicodeString;
    function Get_NVol: UnicodeString;
    function Get_PesoL: UnicodeString;
    function Get_PesoB: UnicodeString;
    function Get_Lacres: IXMLLacresList;
    procedure Set_QVol(Value: UnicodeString);
    procedure Set_Esp(Value: UnicodeString);
    procedure Set_Marca(Value: UnicodeString);
    procedure Set_NVol(Value: UnicodeString);
    procedure Set_PesoL(Value: UnicodeString);
    procedure Set_PesoB(Value: UnicodeString);
    { Methods & Properties }
    property QVol: UnicodeString read Get_QVol write Set_QVol;
    property Esp: UnicodeString read Get_Esp write Set_Esp;
    property Marca: UnicodeString read Get_Marca write Set_Marca;
    property NVol: UnicodeString read Get_NVol write Set_NVol;
    property PesoL: UnicodeString read Get_PesoL write Set_PesoL;
    property PesoB: UnicodeString read Get_PesoB write Set_PesoB;
    property Lacres: IXMLLacresList read Get_Lacres;
  end;

{ IXMLVolList }

  IXMLVolList = interface(IXMLNodeCollection)
    ['{CA32BE88-87C3-45C6-AD8C-BAC539893C1C}']
    { Methods & Properties }
    function Add: IXMLVol;
    function Insert(const Index: Integer): IXMLVol;

    function Get_Item(Index: Integer): IXMLVol;
    property Items[Index: Integer]: IXMLVol read Get_Item; default;
  end;

{ IXMLLacres }

  IXMLLacres = interface(IXMLNode)
    ['{D72502FE-5A55-41C7-BECE-B49C106A3F98}']
    { Property Accessors }
    function Get_NLacre: UnicodeString;
    procedure Set_NLacre(Value: UnicodeString);
    { Methods & Properties }
    property NLacre: UnicodeString read Get_NLacre write Set_NLacre;
  end;

{ IXMLLacresList }

  IXMLLacresList = interface(IXMLNodeCollection)
    ['{C1BDBE41-D883-4361-9F6D-DCDB456A7A51}']
    { Methods & Properties }
    function Add: IXMLLacres;
    function Insert(const Index: Integer): IXMLLacres;

    function Get_Item(Index: Integer): IXMLLacres;
    property Items[Index: Integer]: IXMLLacres read Get_Item; default;
  end;

{ IXMLCobr }

  IXMLCobr = interface(IXMLNode)
    ['{52EA9193-929D-445E-A27A-5ED0E0E0222C}']
    { Property Accessors }
    function Get_Fat: IXMLFat;
    function Get_Dup: IXMLDupList;
    { Methods & Properties }
    property Fat: IXMLFat read Get_Fat;
    property Dup: IXMLDupList read Get_Dup;
  end;

{ IXMLFat }

  IXMLFat = interface(IXMLNode)
    ['{A4F8CE55-F776-4FE4-82C7-C6FB7AB1B4EB}']
    { Property Accessors }
    function Get_NFat: UnicodeString;
    function Get_VOrig: UnicodeString;
    function Get_VDesc: UnicodeString;
    function Get_VLiq: UnicodeString;
    procedure Set_NFat(Value: UnicodeString);
    procedure Set_VOrig(Value: UnicodeString);
    procedure Set_VDesc(Value: UnicodeString);
    procedure Set_VLiq(Value: UnicodeString);
    { Methods & Properties }
    property NFat: UnicodeString read Get_NFat write Set_NFat;
    property VOrig: UnicodeString read Get_VOrig write Set_VOrig;
    property VDesc: UnicodeString read Get_VDesc write Set_VDesc;
    property VLiq: UnicodeString read Get_VLiq write Set_VLiq;
  end;

{ IXMLDup }

  IXMLDup = interface(IXMLNode)
    ['{C441B7E0-0E86-49BF-A0F4-5692CCCE2C90}']
    { Property Accessors }
    function Get_NDup: UnicodeString;
    function Get_DVenc: UnicodeString;
    function Get_VDup: UnicodeString;
    procedure Set_NDup(Value: UnicodeString);
    procedure Set_DVenc(Value: UnicodeString);
    procedure Set_VDup(Value: UnicodeString);
    { Methods & Properties }
    property NDup: UnicodeString read Get_NDup write Set_NDup;
    property DVenc: UnicodeString read Get_DVenc write Set_DVenc;
    property VDup: UnicodeString read Get_VDup write Set_VDup;
  end;

{ IXMLDupList }

  IXMLDupList = interface(IXMLNodeCollection)
    ['{21253D33-8DAF-4A11-A0E8-BF5708EDF41B}']
    { Methods & Properties }
    function Add: IXMLDup;
    function Insert(const Index: Integer): IXMLDup;

    function Get_Item(Index: Integer): IXMLDup;
    property Items[Index: Integer]: IXMLDup read Get_Item; default;
  end;

{ IXMLPag }

  IXMLPag = interface(IXMLNode)
    ['{BABD1FCE-73F0-43F0-A182-56BA16FF4339}']
    { Property Accessors }
    function Get_DetPag: IXMLDetPagList;
    function Get_VTroco: UnicodeString;
    procedure Set_VTroco(Value: UnicodeString);
    { Methods & Properties }
    property DetPag: IXMLDetPagList read Get_DetPag;
    property VTroco: UnicodeString read Get_VTroco write Set_VTroco;
  end;

{ IXMLDetPag }

  IXMLDetPag = interface(IXMLNode)
    ['{84A44C4D-F27E-49A1-9B41-3E73B08E3AC0}']
    { Property Accessors }
    function Get_IndPag: UnicodeString;
    function Get_TPag: UnicodeString;
    function Get_VPag: UnicodeString;
    function Get_Card: IXMLCard;
    procedure Set_IndPag(Value: UnicodeString);
    procedure Set_TPag(Value: UnicodeString);
    procedure Set_VPag(Value: UnicodeString);
    { Methods & Properties }
    property IndPag: UnicodeString read Get_IndPag write Set_IndPag;
    property TPag: UnicodeString read Get_TPag write Set_TPag;
    property VPag: UnicodeString read Get_VPag write Set_VPag;
    property Card: IXMLCard read Get_Card;
  end;

{ IXMLDetPagList }

  IXMLDetPagList = interface(IXMLNodeCollection)
    ['{35DA6B56-4530-491E-99A0-026B2661C5BD}']
    { Methods & Properties }
    function Add: IXMLDetPag;
    function Insert(const Index: Integer): IXMLDetPag;

    function Get_Item(Index: Integer): IXMLDetPag;
    property Items[Index: Integer]: IXMLDetPag read Get_Item; default;
  end;

{ IXMLCard }

  IXMLCard = interface(IXMLNode)
    ['{C8F5D1EB-99F2-4E3C-8D61-16412A499D09}']
    { Property Accessors }
    function Get_TpIntegra: UnicodeString;
    function Get_CNPJ: UnicodeString;
    function Get_TBand: UnicodeString;
    function Get_CAut: UnicodeString;
    procedure Set_TpIntegra(Value: UnicodeString);
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_TBand(Value: UnicodeString);
    procedure Set_CAut(Value: UnicodeString);
    { Methods & Properties }
    property TpIntegra: UnicodeString read Get_TpIntegra write Set_TpIntegra;
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property TBand: UnicodeString read Get_TBand write Set_TBand;
    property CAut: UnicodeString read Get_CAut write Set_CAut;
  end;

{ IXMLInfAdic }

  IXMLInfAdic = interface(IXMLNode)
    ['{CFCC125B-A195-4416-8900-CA8AB212C338}']
    { Property Accessors }
    function Get_InfAdFisco: UnicodeString;
    function Get_InfCpl: UnicodeString;
    function Get_ObsCont: IXMLObsContList;
    function Get_ObsFisco: IXMLObsFiscoList;
    function Get_ProcRef: IXMLProcRefList;
    procedure Set_InfAdFisco(Value: UnicodeString);
    procedure Set_InfCpl(Value: UnicodeString);
    { Methods & Properties }
    property InfAdFisco: UnicodeString read Get_InfAdFisco write Set_InfAdFisco;
    property InfCpl: UnicodeString read Get_InfCpl write Set_InfCpl;
    property ObsCont: IXMLObsContList read Get_ObsCont;
    property ObsFisco: IXMLObsFiscoList read Get_ObsFisco;
    property ProcRef: IXMLProcRefList read Get_ProcRef;
  end;

{ IXMLObsCont }

  IXMLObsCont = interface(IXMLNode)
    ['{53420F97-211F-4D1A-BFC5-310F84615DAB}']
    { Property Accessors }
    function Get_XCampo: UnicodeString;
    function Get_XTexto: UnicodeString;
    procedure Set_XCampo(Value: UnicodeString);
    procedure Set_XTexto(Value: UnicodeString);
    { Methods & Properties }
    property XCampo: UnicodeString read Get_XCampo write Set_XCampo;
    property XTexto: UnicodeString read Get_XTexto write Set_XTexto;
  end;

{ IXMLObsContList }

  IXMLObsContList = interface(IXMLNodeCollection)
    ['{2E39055A-8FB6-4754-9850-5C306A2CBFE4}']
    { Methods & Properties }
    function Add: IXMLObsCont;
    function Insert(const Index: Integer): IXMLObsCont;

    function Get_Item(Index: Integer): IXMLObsCont;
    property Items[Index: Integer]: IXMLObsCont read Get_Item; default;
  end;

{ IXMLObsFisco }

  IXMLObsFisco = interface(IXMLNode)
    ['{21226C99-002C-4C18-8389-A992D4275B76}']
    { Property Accessors }
    function Get_XCampo: UnicodeString;
    function Get_XTexto: UnicodeString;
    procedure Set_XCampo(Value: UnicodeString);
    procedure Set_XTexto(Value: UnicodeString);
    { Methods & Properties }
    property XCampo: UnicodeString read Get_XCampo write Set_XCampo;
    property XTexto: UnicodeString read Get_XTexto write Set_XTexto;
  end;

{ IXMLObsFiscoList }

  IXMLObsFiscoList = interface(IXMLNodeCollection)
    ['{F583F57F-7FDE-4BA1-A20A-71A263A1F88A}']
    { Methods & Properties }
    function Add: IXMLObsFisco;
    function Insert(const Index: Integer): IXMLObsFisco;

    function Get_Item(Index: Integer): IXMLObsFisco;
    property Items[Index: Integer]: IXMLObsFisco read Get_Item; default;
  end;

{ IXMLProcRef }

  IXMLProcRef = interface(IXMLNode)
    ['{EBD7D878-B8A6-4BC2-8C7C-37536619400D}']
    { Property Accessors }
    function Get_NProc: UnicodeString;
    function Get_IndProc: UnicodeString;
    procedure Set_NProc(Value: UnicodeString);
    procedure Set_IndProc(Value: UnicodeString);
    { Methods & Properties }
    property NProc: UnicodeString read Get_NProc write Set_NProc;
    property IndProc: UnicodeString read Get_IndProc write Set_IndProc;
  end;

{ IXMLProcRefList }

  IXMLProcRefList = interface(IXMLNodeCollection)
    ['{640F7C97-47D4-4D82-B5F2-BFF20E04D034}']
    { Methods & Properties }
    function Add: IXMLProcRef;
    function Insert(const Index: Integer): IXMLProcRef;

    function Get_Item(Index: Integer): IXMLProcRef;
    property Items[Index: Integer]: IXMLProcRef read Get_Item; default;
  end;

{ IXMLExporta }

  IXMLExporta = interface(IXMLNode)
    ['{3E632AC3-A46B-4908-9292-989AA6AFBFD4}']
    { Property Accessors }
    function Get_UFSaidaPais: UnicodeString;
    function Get_XLocExporta: UnicodeString;
    function Get_XLocDespacho: UnicodeString;
    procedure Set_UFSaidaPais(Value: UnicodeString);
    procedure Set_XLocExporta(Value: UnicodeString);
    procedure Set_XLocDespacho(Value: UnicodeString);
    { Methods & Properties }
    property UFSaidaPais: UnicodeString read Get_UFSaidaPais write Set_UFSaidaPais;
    property XLocExporta: UnicodeString read Get_XLocExporta write Set_XLocExporta;
    property XLocDespacho: UnicodeString read Get_XLocDespacho write Set_XLocDespacho;
  end;

{ IXMLCompra }

  IXMLCompra = interface(IXMLNode)
    ['{B5C37D98-06F0-4DF5-A375-7AE20A834D90}']
    { Property Accessors }
    function Get_XNEmp: UnicodeString;
    function Get_XPed: UnicodeString;
    function Get_XCont: UnicodeString;
    procedure Set_XNEmp(Value: UnicodeString);
    procedure Set_XPed(Value: UnicodeString);
    procedure Set_XCont(Value: UnicodeString);
    { Methods & Properties }
    property XNEmp: UnicodeString read Get_XNEmp write Set_XNEmp;
    property XPed: UnicodeString read Get_XPed write Set_XPed;
    property XCont: UnicodeString read Get_XCont write Set_XCont;
  end;

{ IXMLCana }

  IXMLCana = interface(IXMLNode)
    ['{A40ED631-3769-4699-B51B-D0AED6A8DCBF}']
    { Property Accessors }
    function Get_Safra: UnicodeString;
    function Get_Ref: UnicodeString;
    function Get_ForDia: IXMLForDiaList;
    function Get_QTotMes: UnicodeString;
    function Get_QTotAnt: UnicodeString;
    function Get_QTotGer: UnicodeString;
    function Get_Deduc: IXMLDeducList;
    function Get_VFor: UnicodeString;
    function Get_VTotDed: UnicodeString;
    function Get_VLiqFor: UnicodeString;
    procedure Set_Safra(Value: UnicodeString);
    procedure Set_Ref(Value: UnicodeString);
    procedure Set_QTotMes(Value: UnicodeString);
    procedure Set_QTotAnt(Value: UnicodeString);
    procedure Set_QTotGer(Value: UnicodeString);
    procedure Set_VFor(Value: UnicodeString);
    procedure Set_VTotDed(Value: UnicodeString);
    procedure Set_VLiqFor(Value: UnicodeString);
    { Methods & Properties }
    property Safra: UnicodeString read Get_Safra write Set_Safra;
    property Ref: UnicodeString read Get_Ref write Set_Ref;
    property ForDia: IXMLForDiaList read Get_ForDia;
    property QTotMes: UnicodeString read Get_QTotMes write Set_QTotMes;
    property QTotAnt: UnicodeString read Get_QTotAnt write Set_QTotAnt;
    property QTotGer: UnicodeString read Get_QTotGer write Set_QTotGer;
    property Deduc: IXMLDeducList read Get_Deduc;
    property VFor: UnicodeString read Get_VFor write Set_VFor;
    property VTotDed: UnicodeString read Get_VTotDed write Set_VTotDed;
    property VLiqFor: UnicodeString read Get_VLiqFor write Set_VLiqFor;
  end;

{ IXMLForDia }

  IXMLForDia = interface(IXMLNode)
    ['{4B029A65-3813-4F46-9C77-80B477DC6BC5}']
    { Property Accessors }
    function Get_Dia: UnicodeString;
    function Get_Qtde: UnicodeString;
    procedure Set_Dia(Value: UnicodeString);
    procedure Set_Qtde(Value: UnicodeString);
    { Methods & Properties }
    property Dia: UnicodeString read Get_Dia write Set_Dia;
    property Qtde: UnicodeString read Get_Qtde write Set_Qtde;
  end;

{ IXMLForDiaList }

  IXMLForDiaList = interface(IXMLNodeCollection)
    ['{3470DAC2-2502-400B-8815-1F577372F6D5}']
    { Methods & Properties }
    function Add: IXMLForDia;
    function Insert(const Index: Integer): IXMLForDia;

    function Get_Item(Index: Integer): IXMLForDia;
    property Items[Index: Integer]: IXMLForDia read Get_Item; default;
  end;

{ IXMLDeduc }

  IXMLDeduc = interface(IXMLNode)
    ['{F963817E-31B2-4A05-94BC-329EC967FFCF}']
    { Property Accessors }
    function Get_XDed: UnicodeString;
    function Get_VDed: UnicodeString;
    procedure Set_XDed(Value: UnicodeString);
    procedure Set_VDed(Value: UnicodeString);
    { Methods & Properties }
    property XDed: UnicodeString read Get_XDed write Set_XDed;
    property VDed: UnicodeString read Get_VDed write Set_VDed;
  end;

{ IXMLDeducList }

  IXMLDeducList = interface(IXMLNodeCollection)
    ['{92599F45-64EE-45E9-998A-FCA0AFD854D8}']
    { Methods & Properties }
    function Add: IXMLDeduc;
    function Insert(const Index: Integer): IXMLDeduc;

    function Get_Item(Index: Integer): IXMLDeduc;
    property Items[Index: Integer]: IXMLDeduc read Get_Item; default;
  end;

{ IXMLInfNFeSupl }

  IXMLInfNFeSupl = interface(IXMLNode)
    ['{E62A0D31-9A4C-4F7B-8D8A-04D2A893184A}']
    { Property Accessors }
    function Get_QrCode: UnicodeString;
    function Get_UrlChave: UnicodeString;
    procedure Set_QrCode(Value: UnicodeString);
    procedure Set_UrlChave(Value: UnicodeString);
    { Methods & Properties }
    property QrCode: UnicodeString read Get_QrCode write Set_QrCode;
    property UrlChave: UnicodeString read Get_UrlChave write Set_UrlChave;
  end;

{ IXMLSignatureType_ds }

  IXMLSignatureType_ds = interface(IXMLNode)
    ['{BCEC8F4F-6D57-4B4B-87A6-54C32E94928C}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_SignedInfo: IXMLSignedInfoType_ds;
    function Get_SignatureValue: IXMLSignatureValueType_ds;
    function Get_KeyInfo: IXMLKeyInfoType_ds;
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property SignedInfo: IXMLSignedInfoType_ds read Get_SignedInfo;
    property SignatureValue: IXMLSignatureValueType_ds read Get_SignatureValue;
    property KeyInfo: IXMLKeyInfoType_ds read Get_KeyInfo;
  end;

{ IXMLSignedInfoType_ds }

  IXMLSignedInfoType_ds = interface(IXMLNode)
    ['{6FFA29AC-1968-4CAB-BD6C-5C518F472019}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_CanonicalizationMethod: IXMLCanonicalizationMethod_ds;
    function Get_SignatureMethod: IXMLSignatureMethod_ds;
    function Get_Reference: IXMLReferenceType_ds;
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property CanonicalizationMethod: IXMLCanonicalizationMethod_ds read Get_CanonicalizationMethod;
    property SignatureMethod: IXMLSignatureMethod_ds read Get_SignatureMethod;
    property Reference: IXMLReferenceType_ds read Get_Reference;
  end;

{ IXMLCanonicalizationMethod_ds }

  IXMLCanonicalizationMethod_ds = interface(IXMLNode)
    ['{C72EF73C-362E-40AB-9FC3-D605C4752259}']
    { Property Accessors }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    { Methods & Properties }
    property Algorithm: UnicodeString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignatureMethod_ds }

  IXMLSignatureMethod_ds = interface(IXMLNode)
    ['{4D325DFD-CA2F-42AB-B90F-263F9E496963}']
    { Property Accessors }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    { Methods & Properties }
    property Algorithm: UnicodeString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLReferenceType_ds }

  IXMLReferenceType_ds = interface(IXMLNode)
    ['{EB0DCAE8-9AD2-4C0B-99BF-B3F1F4F16C73}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_URI: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_Transforms: IXMLTransformsType_ds;
    function Get_DigestMethod: IXMLDigestMethod_ds;
    function Get_DigestValue: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_URI(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
    procedure Set_DigestValue(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property URI: UnicodeString read Get_URI write Set_URI;
    property Type_: UnicodeString read Get_Type_ write Set_Type_;
    property Transforms: IXMLTransformsType_ds read Get_Transforms;
    property DigestMethod: IXMLDigestMethod_ds read Get_DigestMethod;
    property DigestValue: UnicodeString read Get_DigestValue write Set_DigestValue;
  end;

{ IXMLTransformsType_ds }

  IXMLTransformsType_ds = interface(IXMLNodeCollection)
    ['{273CC01D-63CA-475A-AB7F-96559DE6CDC4}']
    { Property Accessors }
    function Get_Transform(Index: Integer): IXMLTransformType_ds;
    { Methods & Properties }
    function Add: IXMLTransformType_ds;
    function Insert(const Index: Integer): IXMLTransformType_ds;
    property Transform[Index: Integer]: IXMLTransformType_ds read Get_Transform; default;
  end;

{ IXMLTransformType_ds }

  IXMLTransformType_ds = interface(IXMLNodeCollection)
    ['{439AE75B-69AF-47CE-A4F5-BF932EFFB250}']
    { Property Accessors }
    function Get_Algorithm: UnicodeString;
    function Get_XPath(Index: Integer): UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    { Methods & Properties }
    function Add(const XPath: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const XPath: UnicodeString): IXMLNode;
    property Algorithm: UnicodeString read Get_Algorithm write Set_Algorithm;
    property XPath[Index: Integer]: UnicodeString read Get_XPath; default;
  end;

{ IXMLDigestMethod_ds }

  IXMLDigestMethod_ds = interface(IXMLNode)
    ['{8C5BF088-E2A2-4BAC-BFB7-0A5B67915A5A}']
    { Property Accessors }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    { Methods & Properties }
    property Algorithm: UnicodeString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignatureValueType_ds }

  IXMLSignatureValueType_ds = interface(IXMLNode)
    ['{435DA4AE-4A23-49A7-93FE-306CC7B8A73E}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
  end;

{ IXMLKeyInfoType_ds }

  IXMLKeyInfoType_ds = interface(IXMLNode)
    ['{87C65BA1-0D09-4F2D-9B6E-090C024FEC9C}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_X509Data: IXMLX509DataType_ds;
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property X509Data: IXMLX509DataType_ds read Get_X509Data;
  end;

{ IXMLX509DataType_ds }

  IXMLX509DataType_ds = interface(IXMLNode)
    ['{FAA73955-16A6-4EDF-AF7B-E8DEE15DC5EC}']
    { Property Accessors }
    function Get_X509Certificate: UnicodeString;
    procedure Set_X509Certificate(Value: UnicodeString);
    { Methods & Properties }
    property X509Certificate: UnicodeString read Get_X509Certificate write Set_X509Certificate;
  end;

{ IXMLTProtNFe }

  IXMLTProtNFe = interface(IXMLNode)
    ['{216FEB85-E0E4-4635-8C21-D32289C23866}']
    { Property Accessors }
    function Get_Versao: UnicodeString;
    function Get_InfProt: IXMLInfProt;
    function Get_Signature: IXMLSignatureType_ds;
    procedure Set_Versao(Value: UnicodeString);
    { Methods & Properties }
    property Versao: UnicodeString read Get_Versao write Set_Versao;
    property InfProt: IXMLInfProt read Get_InfProt;
    property Signature: IXMLSignatureType_ds read Get_Signature;
  end;

{ IXMLTProtNFeList }

  IXMLTProtNFeList = interface(IXMLNodeCollection)
    ['{9FB9124D-58B1-4E5E-87FD-0D9975067C20}']
    { Methods & Properties }
    function Add: IXMLTProtNFe;
    function Insert(const Index: Integer): IXMLTProtNFe;

    function Get_Item(Index: Integer): IXMLTProtNFe;
    property Items[Index: Integer]: IXMLTProtNFe read Get_Item; default;
  end;

{ IXMLInfProt }

  IXMLInfProt = interface(IXMLNode)
    ['{AAEA2BCE-C191-4DE1-A8E3-DEDB18452D7F}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_TpAmb: UnicodeString;
    function Get_VerAplic: UnicodeString;
    function Get_ChNFe: UnicodeString;
    function Get_DhRecbto: UnicodeString;
    function Get_NProt: UnicodeString;
    function Get_DigVal: UnicodeString;
    function Get_CStat: UnicodeString;
    function Get_XMotivo: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_TpAmb(Value: UnicodeString);
    procedure Set_VerAplic(Value: UnicodeString);
    procedure Set_ChNFe(Value: UnicodeString);
    procedure Set_DhRecbto(Value: UnicodeString);
    procedure Set_NProt(Value: UnicodeString);
    procedure Set_DigVal(Value: UnicodeString);
    procedure Set_CStat(Value: UnicodeString);
    procedure Set_XMotivo(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property TpAmb: UnicodeString read Get_TpAmb write Set_TpAmb;
    property VerAplic: UnicodeString read Get_VerAplic write Set_VerAplic;
    property ChNFe: UnicodeString read Get_ChNFe write Set_ChNFe;
    property DhRecbto: UnicodeString read Get_DhRecbto write Set_DhRecbto;
    property NProt: UnicodeString read Get_NProt write Set_NProt;
    property DigVal: UnicodeString read Get_DigVal write Set_DigVal;
    property CStat: UnicodeString read Get_CStat write Set_CStat;
    property XMotivo: UnicodeString read Get_XMotivo write Set_XMotivo;
  end;

{ IXMLTRetEnviNFe }

  IXMLTRetEnviNFe = interface(IXMLNode)
    ['{3FF76681-D469-45E2-B0EF-A2AA370E6BD9}']
    { Property Accessors }
    function Get_Versao: UnicodeString;
    function Get_TpAmb: UnicodeString;
    function Get_VerAplic: UnicodeString;
    function Get_CStat: UnicodeString;
    function Get_XMotivo: UnicodeString;
    function Get_CUF: UnicodeString;
    function Get_DhRecbto: UnicodeString;
    function Get_InfRec: IXMLInfRec;
    function Get_ProtNFe: IXMLTProtNFe;
    procedure Set_Versao(Value: UnicodeString);
    procedure Set_TpAmb(Value: UnicodeString);
    procedure Set_VerAplic(Value: UnicodeString);
    procedure Set_CStat(Value: UnicodeString);
    procedure Set_XMotivo(Value: UnicodeString);
    procedure Set_CUF(Value: UnicodeString);
    procedure Set_DhRecbto(Value: UnicodeString);
    { Methods & Properties }
    property Versao: UnicodeString read Get_Versao write Set_Versao;
    property TpAmb: UnicodeString read Get_TpAmb write Set_TpAmb;
    property VerAplic: UnicodeString read Get_VerAplic write Set_VerAplic;
    property CStat: UnicodeString read Get_CStat write Set_CStat;
    property XMotivo: UnicodeString read Get_XMotivo write Set_XMotivo;
    property CUF: UnicodeString read Get_CUF write Set_CUF;
    property DhRecbto: UnicodeString read Get_DhRecbto write Set_DhRecbto;
    property InfRec: IXMLInfRec read Get_InfRec;
    property ProtNFe: IXMLTProtNFe read Get_ProtNFe;
  end;

{ IXMLInfRec }

  IXMLInfRec = interface(IXMLNode)
    ['{7E8B9993-A4A4-46D3-91F3-6F17DE615B1C}']
    { Property Accessors }
    function Get_NRec: UnicodeString;
    function Get_TMed: UnicodeString;
    procedure Set_NRec(Value: UnicodeString);
    procedure Set_TMed(Value: UnicodeString);
    { Methods & Properties }
    property NRec: UnicodeString read Get_NRec write Set_NRec;
    property TMed: UnicodeString read Get_TMed write Set_TMed;
  end;

{ IXMLTConsReciNFe }

  IXMLTConsReciNFe = interface(IXMLNode)
    ['{FBC59A7C-CF45-4615-8AF3-D74F97A26144}']
    { Property Accessors }
    function Get_Versao: UnicodeString;
    function Get_TpAmb: UnicodeString;
    function Get_NRec: UnicodeString;
    procedure Set_Versao(Value: UnicodeString);
    procedure Set_TpAmb(Value: UnicodeString);
    procedure Set_NRec(Value: UnicodeString);
    { Methods & Properties }
    property Versao: UnicodeString read Get_Versao write Set_Versao;
    property TpAmb: UnicodeString read Get_TpAmb write Set_TpAmb;
    property NRec: UnicodeString read Get_NRec write Set_NRec;
  end;

{ IXMLTRetConsReciNFe }

  IXMLTRetConsReciNFe = interface(IXMLNode)
    ['{F746037A-9B4E-465C-8A1E-81737FB7342A}']
    { Property Accessors }
    function Get_Versao: UnicodeString;
    function Get_TpAmb: UnicodeString;
    function Get_VerAplic: UnicodeString;
    function Get_NRec: UnicodeString;
    function Get_CStat: UnicodeString;
    function Get_XMotivo: UnicodeString;
    function Get_CUF: UnicodeString;
    function Get_DhRecbto: UnicodeString;
    function Get_CMsg: UnicodeString;
    function Get_XMsg: UnicodeString;
    function Get_ProtNFe: IXMLTProtNFeList;
    procedure Set_Versao(Value: UnicodeString);
    procedure Set_TpAmb(Value: UnicodeString);
    procedure Set_VerAplic(Value: UnicodeString);
    procedure Set_NRec(Value: UnicodeString);
    procedure Set_CStat(Value: UnicodeString);
    procedure Set_XMotivo(Value: UnicodeString);
    procedure Set_CUF(Value: UnicodeString);
    procedure Set_DhRecbto(Value: UnicodeString);
    procedure Set_CMsg(Value: UnicodeString);
    procedure Set_XMsg(Value: UnicodeString);
    { Methods & Properties }
    property Versao: UnicodeString read Get_Versao write Set_Versao;
    property TpAmb: UnicodeString read Get_TpAmb write Set_TpAmb;
    property VerAplic: UnicodeString read Get_VerAplic write Set_VerAplic;
    property NRec: UnicodeString read Get_NRec write Set_NRec;
    property CStat: UnicodeString read Get_CStat write Set_CStat;
    property XMotivo: UnicodeString read Get_XMotivo write Set_XMotivo;
    property CUF: UnicodeString read Get_CUF write Set_CUF;
    property DhRecbto: UnicodeString read Get_DhRecbto write Set_DhRecbto;
    property CMsg: UnicodeString read Get_CMsg write Set_CMsg;
    property XMsg: UnicodeString read Get_XMsg write Set_XMsg;
    property ProtNFe: IXMLTProtNFeList read Get_ProtNFe;
  end;

{ IXMLTNfeProc }

  IXMLTNfeProc = interface(IXMLNode)
    ['{6116800C-6C6C-41EB-AFE9-B261AF2F3B0A}']
    { Property Accessors }
    function Get_Versao: UnicodeString;
    function Get_NFe: IXMLTNFe;
    function Get_ProtNFe: IXMLTProtNFe;
    procedure Set_Versao(Value: UnicodeString);
    { Methods & Properties }
    property Versao: UnicodeString read Get_Versao write Set_Versao;
    property NFe: IXMLTNFe read Get_NFe;
    property ProtNFe: IXMLTProtNFe read Get_ProtNFe;
  end;

{ IXMLNVEList }

  IXMLNVEList = interface(IXMLNodeCollection)
    ['{53EA71CD-720B-49AC-96FB-9FF7340B8AFD}']
    { Methods & Properties }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLTEnviNFe = class;
  TXMLTNFe = class;
  TXMLTNFeList = class;
  TXMLInfNFe = class;
  TXMLIde = class;
  TXMLNFref = class;
  TXMLNFrefList = class;
  TXMLRefNF = class;
  TXMLRefNFP = class;
  TXMLRefECF = class;
  TXMLEmit = class;
  TXMLTEnderEmi = class;
  TXMLAvulsa = class;
  TXMLDest = class;
  TXMLTEndereco = class;
  TXMLTLocal = class;
  TXMLAutXML = class;
  TXMLAutXMLList = class;
  TXMLDet = class;
  TXMLDetList = class;
  TXMLProd = class;
  TXMLDI = class;
  TXMLDIList = class;
  TXMLAdi = class;
  TXMLAdiList = class;
  TXMLDetExport = class;
  TXMLDetExportList = class;
  TXMLExportInd = class;
  TXMLRastro = class;
  TXMLRastroList = class;
  TXMLVeicProd = class;
  TXMLMed = class;
  TXMLArma = class;
  TXMLArmaList = class;
  TXMLComb = class;
  TXMLCIDE = class;
  TXMLEncerrante = class;
  TXMLImposto = class;
  TXMLICMS = class;
  TXMLICMS00 = class;
  TXMLICMS10 = class;
  TXMLICMS20 = class;
  TXMLICMS30 = class;
  TXMLICMS40 = class;
  TXMLICMS51 = class;
  TXMLICMS60 = class;
  TXMLICMS70 = class;
  TXMLICMS90 = class;
  TXMLICMSPart = class;
  TXMLICMSST = class;
  TXMLICMSSN101 = class;
  TXMLICMSSN102 = class;
  TXMLICMSSN201 = class;
  TXMLICMSSN202 = class;
  TXMLICMSSN500 = class;
  TXMLICMSSN900 = class;
  TXMLTIpi = class;
  TXMLIPITrib = class;
  TXMLIPINT = class;
  TXMLII = class;
  TXMLISSQN = class;
  TXMLPIS = class;
  TXMLPISAliq = class;
  TXMLPISQtde = class;
  TXMLPISNT = class;
  TXMLPISOutr = class;
  TXMLPISST = class;
  TXMLCOFINS = class;
  TXMLCOFINSAliq = class;
  TXMLCOFINSQtde = class;
  TXMLCOFINSNT = class;
  TXMLCOFINSOutr = class;
  TXMLCOFINSST = class;
  TXMLICMSUFDest = class;
  TXMLImpostoDevol = class;
  TXMLIPI = class;
  TXMLTotal = class;
  TXMLICMSTot = class;
  TXMLISSQNtot = class;
  TXMLRetTrib = class;
  TXMLTransp = class;
  TXMLTransporta = class;
  TXMLRetTransp = class;
  TXMLTVeiculo = class;
  TXMLTVeiculoList = class;
  TXMLVol = class;
  TXMLVolList = class;
  TXMLLacres = class;
  TXMLLacresList = class;
  TXMLCobr = class;
  TXMLFat = class;
  TXMLDup = class;
  TXMLDupList = class;
  TXMLPag = class;
  TXMLDetPag = class;
  TXMLDetPagList = class;
  TXMLCard = class;
  TXMLInfAdic = class;
  TXMLObsCont = class;
  TXMLObsContList = class;
  TXMLObsFisco = class;
  TXMLObsFiscoList = class;
  TXMLProcRef = class;
  TXMLProcRefList = class;
  TXMLExporta = class;
  TXMLCompra = class;
  TXMLCana = class;
  TXMLForDia = class;
  TXMLForDiaList = class;
  TXMLDeduc = class;
  TXMLDeducList = class;
  TXMLInfNFeSupl = class;
  TXMLSignatureType_ds = class;
  TXMLSignedInfoType_ds = class;
  TXMLCanonicalizationMethod_ds = class;
  TXMLSignatureMethod_ds = class;
  TXMLReferenceType_ds = class;
  TXMLTransformsType_ds = class;
  TXMLTransformType_ds = class;
  TXMLDigestMethod_ds = class;
  TXMLSignatureValueType_ds = class;
  TXMLKeyInfoType_ds = class;
  TXMLX509DataType_ds = class;
  TXMLTProtNFe = class;
  TXMLTProtNFeList = class;
  TXMLInfProt = class;
  TXMLTRetEnviNFe = class;
  TXMLInfRec = class;
  TXMLTConsReciNFe = class;
  TXMLTRetConsReciNFe = class;
  TXMLTNfeProc = class;
  TXMLNVEList = class;

{ TXMLTEnviNFe }

  TXMLTEnviNFe = class(TXMLNode, IXMLTEnviNFe)
  private
    FNFe: IXMLTNFeList;
  protected
    { IXMLTEnviNFe }
    function Get_Versao: UnicodeString;
    function Get_IdLote: UnicodeString;
    function Get_IndSinc: UnicodeString;
    function Get_NFe: IXMLTNFeList;
    procedure Set_Versao(Value: UnicodeString);
    procedure Set_IdLote(Value: UnicodeString);
    procedure Set_IndSinc(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe }

  TXMLTNFe = class(TXMLNode, IXMLTNFe)
  protected
    { IXMLTNFe }
    function Get_InfNFe: IXMLInfNFe;
    function Get_InfNFeSupl: IXMLInfNFeSupl;
    function Get_Signature: IXMLSignatureType_ds;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFeList }

  TXMLTNFeList = class(TXMLNodeCollection, IXMLTNFeList)
  protected
    { IXMLTNFeList }
    function Add: IXMLTNFe;
    function Insert(const Index: Integer): IXMLTNFe;

    function Get_Item(Index: Integer): IXMLTNFe;
  end;

{ TXMLInfNFe }

  TXMLInfNFe = class(TXMLNode, IXMLInfNFe)
  private
    FAutXML: IXMLAutXMLList;
    FDet: IXMLDetList;
  protected
    { IXMLInfNFe }
    function Get_Versao: UnicodeString;
    function Get_Id: UnicodeString;
    function Get_Ide: IXMLIde;
    function Get_Emit: IXMLEmit;
    function Get_Avulsa: IXMLAvulsa;
    function Get_Dest: IXMLDest;
    function Get_Retirada: IXMLTLocal;
    function Get_Entrega: IXMLTLocal;
    function Get_AutXML: IXMLAutXMLList;
    function Get_Det: IXMLDetList;
    function Get_Total: IXMLTotal;
    function Get_Transp: IXMLTransp;
    function Get_Cobr: IXMLCobr;
    function Get_Pag: IXMLPag;
    function Get_InfAdic: IXMLInfAdic;
    function Get_Exporta: IXMLExporta;
    function Get_Compra: IXMLCompra;
    function Get_Cana: IXMLCana;
    procedure Set_Versao(Value: UnicodeString);
    procedure Set_Id(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIde }

  TXMLIde = class(TXMLNode, IXMLIde)
  private
    FNFref: IXMLNFrefList;
  protected
    { IXMLIde }
    function Get_CUF: UnicodeString;
    function Get_CNF: UnicodeString;
    function Get_NatOp: UnicodeString;
    function Get_Mod_: UnicodeString;
    function Get_Serie: UnicodeString;
    function Get_NNF: UnicodeString;
    function Get_DhEmi: UnicodeString;
    function Get_DhSaiEnt: UnicodeString;
    function Get_TpNF: UnicodeString;
    function Get_IdDest: UnicodeString;
    function Get_CMunFG: UnicodeString;
    function Get_TpImp: UnicodeString;
    function Get_TpEmis: UnicodeString;
    function Get_CDV: UnicodeString;
    function Get_TpAmb: UnicodeString;
    function Get_FinNFe: UnicodeString;
    function Get_IndFinal: UnicodeString;
    function Get_IndPres: UnicodeString;
    function Get_ProcEmi: UnicodeString;
    function Get_VerProc: UnicodeString;
    function Get_DhCont: UnicodeString;
    function Get_XJust: UnicodeString;
    function Get_NFref: IXMLNFrefList;
    procedure Set_CUF(Value: UnicodeString);
    procedure Set_CNF(Value: UnicodeString);
    procedure Set_NatOp(Value: UnicodeString);
    procedure Set_Mod_(Value: UnicodeString);
    procedure Set_Serie(Value: UnicodeString);
    procedure Set_NNF(Value: UnicodeString);
    procedure Set_DhEmi(Value: UnicodeString);
    procedure Set_DhSaiEnt(Value: UnicodeString);
    procedure Set_TpNF(Value: UnicodeString);
    procedure Set_IdDest(Value: UnicodeString);
    procedure Set_CMunFG(Value: UnicodeString);
    procedure Set_TpImp(Value: UnicodeString);
    procedure Set_TpEmis(Value: UnicodeString);
    procedure Set_CDV(Value: UnicodeString);
    procedure Set_TpAmb(Value: UnicodeString);
    procedure Set_FinNFe(Value: UnicodeString);
    procedure Set_IndFinal(Value: UnicodeString);
    procedure Set_IndPres(Value: UnicodeString);
    procedure Set_ProcEmi(Value: UnicodeString);
    procedure Set_VerProc(Value: UnicodeString);
    procedure Set_DhCont(Value: UnicodeString);
    procedure Set_XJust(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLNFref }

  TXMLNFref = class(TXMLNode, IXMLNFref)
  protected
    { IXMLNFref }
    function Get_RefNFe: UnicodeString;
    function Get_RefNF: IXMLRefNF;
    function Get_RefNFP: IXMLRefNFP;
    function Get_RefCTe: UnicodeString;
    function Get_RefECF: IXMLRefECF;
    procedure Set_RefNFe(Value: UnicodeString);
    procedure Set_RefCTe(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLNFrefList }

  TXMLNFrefList = class(TXMLNodeCollection, IXMLNFrefList)
  protected
    { IXMLNFrefList }
    function Add: IXMLNFref;
    function Insert(const Index: Integer): IXMLNFref;

    function Get_Item(Index: Integer): IXMLNFref;
  end;

{ TXMLRefNF }

  TXMLRefNF = class(TXMLNode, IXMLRefNF)
  protected
    { IXMLRefNF }
    function Get_CUF: UnicodeString;
    function Get_AAMM: UnicodeString;
    function Get_CNPJ: UnicodeString;
    function Get_Mod_: UnicodeString;
    function Get_Serie: UnicodeString;
    function Get_NNF: UnicodeString;
    procedure Set_CUF(Value: UnicodeString);
    procedure Set_AAMM(Value: UnicodeString);
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_Mod_(Value: UnicodeString);
    procedure Set_Serie(Value: UnicodeString);
    procedure Set_NNF(Value: UnicodeString);
  end;

{ TXMLRefNFP }

  TXMLRefNFP = class(TXMLNode, IXMLRefNFP)
  protected
    { IXMLRefNFP }
    function Get_CUF: UnicodeString;
    function Get_AAMM: UnicodeString;
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    function Get_IE: UnicodeString;
    function Get_Mod_: UnicodeString;
    function Get_Serie: UnicodeString;
    function Get_NNF: UnicodeString;
    procedure Set_CUF(Value: UnicodeString);
    procedure Set_AAMM(Value: UnicodeString);
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
    procedure Set_IE(Value: UnicodeString);
    procedure Set_Mod_(Value: UnicodeString);
    procedure Set_Serie(Value: UnicodeString);
    procedure Set_NNF(Value: UnicodeString);
  end;

{ TXMLRefECF }

  TXMLRefECF = class(TXMLNode, IXMLRefECF)
  protected
    { IXMLRefECF }
    function Get_Mod_: UnicodeString;
    function Get_NECF: UnicodeString;
    function Get_NCOO: UnicodeString;
    procedure Set_Mod_(Value: UnicodeString);
    procedure Set_NECF(Value: UnicodeString);
    procedure Set_NCOO(Value: UnicodeString);
  end;

{ TXMLEmit }

  TXMLEmit = class(TXMLNode, IXMLEmit)
  protected
    { IXMLEmit }
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    function Get_XNome: UnicodeString;
    function Get_XFant: UnicodeString;
    function Get_EnderEmit: IXMLTEnderEmi;
    function Get_IE: UnicodeString;
    function Get_IEST: UnicodeString;
    function Get_IM: UnicodeString;
    function Get_CNAE: UnicodeString;
    function Get_CRT: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
    procedure Set_XNome(Value: UnicodeString);
    procedure Set_XFant(Value: UnicodeString);
    procedure Set_IE(Value: UnicodeString);
    procedure Set_IEST(Value: UnicodeString);
    procedure Set_IM(Value: UnicodeString);
    procedure Set_CNAE(Value: UnicodeString);
    procedure Set_CRT(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTEnderEmi }

  TXMLTEnderEmi = class(TXMLNode, IXMLTEnderEmi)
  protected
    { IXMLTEnderEmi }
    function Get_XLgr: UnicodeString;
    function Get_Nro: UnicodeString;
    function Get_XCpl: UnicodeString;
    function Get_XBairro: UnicodeString;
    function Get_CMun: UnicodeString;
    function Get_XMun: UnicodeString;
    function Get_UF: UnicodeString;
    function Get_CEP: UnicodeString;
    function Get_CPais: UnicodeString;
    function Get_XPais: UnicodeString;
    function Get_Fone: UnicodeString;
    procedure Set_XLgr(Value: UnicodeString);
    procedure Set_Nro(Value: UnicodeString);
    procedure Set_XCpl(Value: UnicodeString);
    procedure Set_XBairro(Value: UnicodeString);
    procedure Set_CMun(Value: UnicodeString);
    procedure Set_XMun(Value: UnicodeString);
    procedure Set_UF(Value: UnicodeString);
    procedure Set_CEP(Value: UnicodeString);
    procedure Set_CPais(Value: UnicodeString);
    procedure Set_XPais(Value: UnicodeString);
    procedure Set_Fone(Value: UnicodeString);
  end;

{ TXMLAvulsa }

  TXMLAvulsa = class(TXMLNode, IXMLAvulsa)
  protected
    { IXMLAvulsa }
    function Get_CNPJ: UnicodeString;
    function Get_XOrgao: UnicodeString;
    function Get_Matr: UnicodeString;
    function Get_XAgente: UnicodeString;
    function Get_Fone: UnicodeString;
    function Get_UF: UnicodeString;
    function Get_NDAR: UnicodeString;
    function Get_DEmi: UnicodeString;
    function Get_VDAR: UnicodeString;
    function Get_RepEmi: UnicodeString;
    function Get_DPag: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_XOrgao(Value: UnicodeString);
    procedure Set_Matr(Value: UnicodeString);
    procedure Set_XAgente(Value: UnicodeString);
    procedure Set_Fone(Value: UnicodeString);
    procedure Set_UF(Value: UnicodeString);
    procedure Set_NDAR(Value: UnicodeString);
    procedure Set_DEmi(Value: UnicodeString);
    procedure Set_VDAR(Value: UnicodeString);
    procedure Set_RepEmi(Value: UnicodeString);
    procedure Set_DPag(Value: UnicodeString);
  end;

{ TXMLDest }

  TXMLDest = class(TXMLNode, IXMLDest)
  protected
    { IXMLDest }
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    function Get_IdEstrangeiro: UnicodeString;
    function Get_XNome: UnicodeString;
    function Get_EnderDest: IXMLTEndereco;
    function Get_IndIEDest: UnicodeString;
    function Get_IE: UnicodeString;
    function Get_ISUF: UnicodeString;
    function Get_IM: UnicodeString;
    function Get_Email: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
    procedure Set_IdEstrangeiro(Value: UnicodeString);
    procedure Set_XNome(Value: UnicodeString);
    procedure Set_IndIEDest(Value: UnicodeString);
    procedure Set_IE(Value: UnicodeString);
    procedure Set_ISUF(Value: UnicodeString);
    procedure Set_IM(Value: UnicodeString);
    procedure Set_Email(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTEndereco }

  TXMLTEndereco = class(TXMLNode, IXMLTEndereco)
  protected
    { IXMLTEndereco }
    function Get_XLgr: UnicodeString;
    function Get_Nro: UnicodeString;
    function Get_XCpl: UnicodeString;
    function Get_XBairro: UnicodeString;
    function Get_CMun: UnicodeString;
    function Get_XMun: UnicodeString;
    function Get_UF: UnicodeString;
    function Get_CEP: UnicodeString;
    function Get_CPais: UnicodeString;
    function Get_XPais: UnicodeString;
    function Get_Fone: UnicodeString;
    procedure Set_XLgr(Value: UnicodeString);
    procedure Set_Nro(Value: UnicodeString);
    procedure Set_XCpl(Value: UnicodeString);
    procedure Set_XBairro(Value: UnicodeString);
    procedure Set_CMun(Value: UnicodeString);
    procedure Set_XMun(Value: UnicodeString);
    procedure Set_UF(Value: UnicodeString);
    procedure Set_CEP(Value: UnicodeString);
    procedure Set_CPais(Value: UnicodeString);
    procedure Set_XPais(Value: UnicodeString);
    procedure Set_Fone(Value: UnicodeString);
  end;

{ TXMLTLocal }

  TXMLTLocal = class(TXMLNode, IXMLTLocal)
  protected
    { IXMLTLocal }
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    function Get_XLgr: UnicodeString;
    function Get_Nro: UnicodeString;
    function Get_XCpl: UnicodeString;
    function Get_XBairro: UnicodeString;
    function Get_CMun: UnicodeString;
    function Get_XMun: UnicodeString;
    function Get_UF: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
    procedure Set_XLgr(Value: UnicodeString);
    procedure Set_Nro(Value: UnicodeString);
    procedure Set_XCpl(Value: UnicodeString);
    procedure Set_XBairro(Value: UnicodeString);
    procedure Set_CMun(Value: UnicodeString);
    procedure Set_XMun(Value: UnicodeString);
    procedure Set_UF(Value: UnicodeString);
  end;

{ TXMLAutXML }

  TXMLAutXML = class(TXMLNode, IXMLAutXML)
  protected
    { IXMLAutXML }
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
  end;

{ TXMLAutXMLList }

  TXMLAutXMLList = class(TXMLNodeCollection, IXMLAutXMLList)
  protected
    { IXMLAutXMLList }
    function Add: IXMLAutXML;
    function Insert(const Index: Integer): IXMLAutXML;

    function Get_Item(Index: Integer): IXMLAutXML;
  end;

{ TXMLDet }

  TXMLDet = class(TXMLNode, IXMLDet)
  protected
    { IXMLDet }
    function Get_NItem: UnicodeString;
    function Get_Prod: IXMLProd;
    function Get_Imposto: IXMLImposto;
    function Get_ImpostoDevol: IXMLImpostoDevol;
    function Get_InfAdProd: UnicodeString;
    procedure Set_NItem(Value: UnicodeString);
    procedure Set_InfAdProd(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDetList }

  TXMLDetList = class(TXMLNodeCollection, IXMLDetList)
  protected
    { IXMLDetList }
    function Add: IXMLDet;
    function Insert(const Index: Integer): IXMLDet;

    function Get_Item(Index: Integer): IXMLDet;
  end;

{ TXMLProd }

  TXMLProd = class(TXMLNode, IXMLProd)
  private
    FNVE: IXMLNVEList;
    FDI: IXMLDIList;
    FDetExport: IXMLDetExportList;
    FRastro: IXMLRastroList;
    FArma: IXMLArmaList;
  protected
    { IXMLProd }
    function Get_CProd: UnicodeString;
    function Get_CEAN: UnicodeString;
    function Get_XProd: UnicodeString;
    function Get_NCM: UnicodeString;
    function Get_NVE: IXMLNVEList;
    function Get_CEST: UnicodeString;
    function Get_IndEscala: UnicodeString;
    function Get_CNPJFab: UnicodeString;
    function Get_CBenef: UnicodeString;
    function Get_EXTIPI: UnicodeString;
    function Get_CFOP: UnicodeString;
    function Get_UCom: UnicodeString;
    function Get_QCom: UnicodeString;
    function Get_VUnCom: UnicodeString;
    function Get_VProd: UnicodeString;
    function Get_CEANTrib: UnicodeString;
    function Get_UTrib: UnicodeString;
    function Get_QTrib: UnicodeString;
    function Get_VUnTrib: UnicodeString;
    function Get_VFrete: UnicodeString;
    function Get_VSeg: UnicodeString;
    function Get_VDesc: UnicodeString;
    function Get_VOutro: UnicodeString;
    function Get_IndTot: UnicodeString;
    function Get_DI: IXMLDIList;
    function Get_DetExport: IXMLDetExportList;
    function Get_XPed: UnicodeString;
    function Get_NItemPed: UnicodeString;
    function Get_NFCI: UnicodeString;
    function Get_Rastro: IXMLRastroList;
    function Get_VeicProd: IXMLVeicProd;
    function Get_Med: IXMLMed;
    function Get_Arma: IXMLArmaList;
    function Get_Comb: IXMLComb;
    function Get_NRECOPI: UnicodeString;
    procedure Set_CProd(Value: UnicodeString);
    procedure Set_CEAN(Value: UnicodeString);
    procedure Set_XProd(Value: UnicodeString);
    procedure Set_NCM(Value: UnicodeString);
    procedure Set_CEST(Value: UnicodeString);
    procedure Set_IndEscala(Value: UnicodeString);
    procedure Set_CNPJFab(Value: UnicodeString);
    procedure Set_CBenef(Value: UnicodeString);
    procedure Set_EXTIPI(Value: UnicodeString);
    procedure Set_CFOP(Value: UnicodeString);
    procedure Set_UCom(Value: UnicodeString);
    procedure Set_QCom(Value: UnicodeString);
    procedure Set_VUnCom(Value: UnicodeString);
    procedure Set_VProd(Value: UnicodeString);
    procedure Set_CEANTrib(Value: UnicodeString);
    procedure Set_UTrib(Value: UnicodeString);
    procedure Set_QTrib(Value: UnicodeString);
    procedure Set_VUnTrib(Value: UnicodeString);
    procedure Set_VFrete(Value: UnicodeString);
    procedure Set_VSeg(Value: UnicodeString);
    procedure Set_VDesc(Value: UnicodeString);
    procedure Set_VOutro(Value: UnicodeString);
    procedure Set_IndTot(Value: UnicodeString);
    procedure Set_XPed(Value: UnicodeString);
    procedure Set_NItemPed(Value: UnicodeString);
    procedure Set_NFCI(Value: UnicodeString);
    procedure Set_NRECOPI(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDI }

  TXMLDI = class(TXMLNode, IXMLDI)
  private
    FAdi: IXMLAdiList;
  protected
    { IXMLDI }
    function Get_NDI: UnicodeString;
    function Get_DDI: UnicodeString;
    function Get_XLocDesemb: UnicodeString;
    function Get_UFDesemb: UnicodeString;
    function Get_DDesemb: UnicodeString;
    function Get_TpViaTransp: UnicodeString;
    function Get_VAFRMM: UnicodeString;
    function Get_TpIntermedio: UnicodeString;
    function Get_CNPJ: UnicodeString;
    function Get_UFTerceiro: UnicodeString;
    function Get_CExportador: UnicodeString;
    function Get_Adi: IXMLAdiList;
    procedure Set_NDI(Value: UnicodeString);
    procedure Set_DDI(Value: UnicodeString);
    procedure Set_XLocDesemb(Value: UnicodeString);
    procedure Set_UFDesemb(Value: UnicodeString);
    procedure Set_DDesemb(Value: UnicodeString);
    procedure Set_TpViaTransp(Value: UnicodeString);
    procedure Set_VAFRMM(Value: UnicodeString);
    procedure Set_TpIntermedio(Value: UnicodeString);
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_UFTerceiro(Value: UnicodeString);
    procedure Set_CExportador(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDIList }

  TXMLDIList = class(TXMLNodeCollection, IXMLDIList)
  protected
    { IXMLDIList }
    function Add: IXMLDI;
    function Insert(const Index: Integer): IXMLDI;

    function Get_Item(Index: Integer): IXMLDI;
  end;

{ TXMLAdi }

  TXMLAdi = class(TXMLNode, IXMLAdi)
  protected
    { IXMLAdi }
    function Get_NAdicao: UnicodeString;
    function Get_NSeqAdic: UnicodeString;
    function Get_CFabricante: UnicodeString;
    function Get_VDescDI: UnicodeString;
    function Get_NDraw: UnicodeString;
    procedure Set_NAdicao(Value: UnicodeString);
    procedure Set_NSeqAdic(Value: UnicodeString);
    procedure Set_CFabricante(Value: UnicodeString);
    procedure Set_VDescDI(Value: UnicodeString);
    procedure Set_NDraw(Value: UnicodeString);
  end;

{ TXMLAdiList }

  TXMLAdiList = class(TXMLNodeCollection, IXMLAdiList)
  protected
    { IXMLAdiList }
    function Add: IXMLAdi;
    function Insert(const Index: Integer): IXMLAdi;

    function Get_Item(Index: Integer): IXMLAdi;
  end;

{ TXMLDetExport }

  TXMLDetExport = class(TXMLNode, IXMLDetExport)
  protected
    { IXMLDetExport }
    function Get_NDraw: UnicodeString;
    function Get_ExportInd: IXMLExportInd;
    procedure Set_NDraw(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDetExportList }

  TXMLDetExportList = class(TXMLNodeCollection, IXMLDetExportList)
  protected
    { IXMLDetExportList }
    function Add: IXMLDetExport;
    function Insert(const Index: Integer): IXMLDetExport;

    function Get_Item(Index: Integer): IXMLDetExport;
  end;

{ TXMLExportInd }

  TXMLExportInd = class(TXMLNode, IXMLExportInd)
  protected
    { IXMLExportInd }
    function Get_NRE: UnicodeString;
    function Get_ChNFe: UnicodeString;
    function Get_QExport: UnicodeString;
    procedure Set_NRE(Value: UnicodeString);
    procedure Set_ChNFe(Value: UnicodeString);
    procedure Set_QExport(Value: UnicodeString);
  end;

{ TXMLRastro }

  TXMLRastro = class(TXMLNode, IXMLRastro)
  protected
    { IXMLRastro }
    function Get_NLote: UnicodeString;
    function Get_QLote: UnicodeString;
    function Get_DFab: UnicodeString;
    function Get_DVal: UnicodeString;
    function Get_CAgreg: UnicodeString;
    procedure Set_NLote(Value: UnicodeString);
    procedure Set_QLote(Value: UnicodeString);
    procedure Set_DFab(Value: UnicodeString);
    procedure Set_DVal(Value: UnicodeString);
    procedure Set_CAgreg(Value: UnicodeString);
  end;

{ TXMLRastroList }

  TXMLRastroList = class(TXMLNodeCollection, IXMLRastroList)
  protected
    { IXMLRastroList }
    function Add: IXMLRastro;
    function Insert(const Index: Integer): IXMLRastro;

    function Get_Item(Index: Integer): IXMLRastro;
  end;

{ TXMLVeicProd }

  TXMLVeicProd = class(TXMLNode, IXMLVeicProd)
  protected
    { IXMLVeicProd }
    function Get_TpOp: UnicodeString;
    function Get_Chassi: UnicodeString;
    function Get_CCor: UnicodeString;
    function Get_XCor: UnicodeString;
    function Get_Pot: UnicodeString;
    function Get_Cilin: UnicodeString;
    function Get_PesoL: UnicodeString;
    function Get_PesoB: UnicodeString;
    function Get_NSerie: UnicodeString;
    function Get_TpComb: UnicodeString;
    function Get_NMotor: UnicodeString;
    function Get_CMT: UnicodeString;
    function Get_Dist: UnicodeString;
    function Get_AnoMod: UnicodeString;
    function Get_AnoFab: UnicodeString;
    function Get_TpPint: UnicodeString;
    function Get_TpVeic: UnicodeString;
    function Get_EspVeic: UnicodeString;
    function Get_VIN: UnicodeString;
    function Get_CondVeic: UnicodeString;
    function Get_CMod: UnicodeString;
    function Get_CCorDENATRAN: UnicodeString;
    function Get_Lota: UnicodeString;
    function Get_TpRest: UnicodeString;
    procedure Set_TpOp(Value: UnicodeString);
    procedure Set_Chassi(Value: UnicodeString);
    procedure Set_CCor(Value: UnicodeString);
    procedure Set_XCor(Value: UnicodeString);
    procedure Set_Pot(Value: UnicodeString);
    procedure Set_Cilin(Value: UnicodeString);
    procedure Set_PesoL(Value: UnicodeString);
    procedure Set_PesoB(Value: UnicodeString);
    procedure Set_NSerie(Value: UnicodeString);
    procedure Set_TpComb(Value: UnicodeString);
    procedure Set_NMotor(Value: UnicodeString);
    procedure Set_CMT(Value: UnicodeString);
    procedure Set_Dist(Value: UnicodeString);
    procedure Set_AnoMod(Value: UnicodeString);
    procedure Set_AnoFab(Value: UnicodeString);
    procedure Set_TpPint(Value: UnicodeString);
    procedure Set_TpVeic(Value: UnicodeString);
    procedure Set_EspVeic(Value: UnicodeString);
    procedure Set_VIN(Value: UnicodeString);
    procedure Set_CondVeic(Value: UnicodeString);
    procedure Set_CMod(Value: UnicodeString);
    procedure Set_CCorDENATRAN(Value: UnicodeString);
    procedure Set_Lota(Value: UnicodeString);
    procedure Set_TpRest(Value: UnicodeString);
  end;

{ TXMLMed }

  TXMLMed = class(TXMLNode, IXMLMed)
  protected
    { IXMLMed }
    function Get_CProdANVISA: UnicodeString;
    function Get_VPMC: UnicodeString;
    procedure Set_CProdANVISA(Value: UnicodeString);
    procedure Set_VPMC(Value: UnicodeString);
  end;

{ TXMLArma }

  TXMLArma = class(TXMLNode, IXMLArma)
  protected
    { IXMLArma }
    function Get_TpArma: UnicodeString;
    function Get_NSerie: UnicodeString;
    function Get_NCano: UnicodeString;
    function Get_Descr: UnicodeString;
    procedure Set_TpArma(Value: UnicodeString);
    procedure Set_NSerie(Value: UnicodeString);
    procedure Set_NCano(Value: UnicodeString);
    procedure Set_Descr(Value: UnicodeString);
  end;

{ TXMLArmaList }

  TXMLArmaList = class(TXMLNodeCollection, IXMLArmaList)
  protected
    { IXMLArmaList }
    function Add: IXMLArma;
    function Insert(const Index: Integer): IXMLArma;

    function Get_Item(Index: Integer): IXMLArma;
  end;

{ TXMLComb }

  TXMLComb = class(TXMLNode, IXMLComb)
  protected
    { IXMLComb }
    function Get_CProdANP: UnicodeString;
    function Get_DescANP: UnicodeString;
    function Get_PGLP: UnicodeString;
    function Get_PGNn: UnicodeString;
    function Get_PGNi: UnicodeString;
    function Get_VPart: UnicodeString;
    function Get_CODIF: UnicodeString;
    function Get_QTemp: UnicodeString;
    function Get_UFCons: UnicodeString;
    function Get_CIDE: IXMLCIDE;
    function Get_Encerrante: IXMLEncerrante;
    procedure Set_CProdANP(Value: UnicodeString);
    procedure Set_DescANP(Value: UnicodeString);
    procedure Set_PGLP(Value: UnicodeString);
    procedure Set_PGNn(Value: UnicodeString);
    procedure Set_PGNi(Value: UnicodeString);
    procedure Set_VPart(Value: UnicodeString);
    procedure Set_CODIF(Value: UnicodeString);
    procedure Set_QTemp(Value: UnicodeString);
    procedure Set_UFCons(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCIDE }

  TXMLCIDE = class(TXMLNode, IXMLCIDE)
  protected
    { IXMLCIDE }
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VCIDE: UnicodeString;
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VCIDE(Value: UnicodeString);
  end;

{ TXMLEncerrante }

  TXMLEncerrante = class(TXMLNode, IXMLEncerrante)
  protected
    { IXMLEncerrante }
    function Get_NBico: UnicodeString;
    function Get_NBomba: UnicodeString;
    function Get_NTanque: UnicodeString;
    function Get_VEncIni: UnicodeString;
    function Get_VEncFin: UnicodeString;
    procedure Set_NBico(Value: UnicodeString);
    procedure Set_NBomba(Value: UnicodeString);
    procedure Set_NTanque(Value: UnicodeString);
    procedure Set_VEncIni(Value: UnicodeString);
    procedure Set_VEncFin(Value: UnicodeString);
  end;

{ TXMLImposto }

  TXMLImposto = class(TXMLNode, IXMLImposto)
  protected
    { IXMLImposto }
    function Get_VTotTrib: UnicodeString;
    function Get_ICMS: IXMLICMS;
    function Get_IPI: IXMLTIpi;
    function Get_II: IXMLII;
    function Get_ISSQN: IXMLISSQN;
    function Get_PIS: IXMLPIS;
    function Get_PISST: IXMLPISST;
    function Get_COFINS: IXMLCOFINS;
    function Get_COFINSST: IXMLCOFINSST;
    function Get_ICMSUFDest: IXMLICMSUFDest;
    procedure Set_VTotTrib(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLICMS }

  TXMLICMS = class(TXMLNode, IXMLICMS)
  protected
    { IXMLICMS }
    function Get_ICMS00: IXMLICMS00;
    function Get_ICMS10: IXMLICMS10;
    function Get_ICMS20: IXMLICMS20;
    function Get_ICMS30: IXMLICMS30;
    function Get_ICMS40: IXMLICMS40;
    function Get_ICMS51: IXMLICMS51;
    function Get_ICMS60: IXMLICMS60;
    function Get_ICMS70: IXMLICMS70;
    function Get_ICMS90: IXMLICMS90;
    function Get_ICMSPart: IXMLICMSPart;
    function Get_ICMSST: IXMLICMSST;
    function Get_ICMSSN101: IXMLICMSSN101;
    function Get_ICMSSN102: IXMLICMSSN102;
    function Get_ICMSSN201: IXMLICMSSN201;
    function Get_ICMSSN202: IXMLICMSSN202;
    function Get_ICMSSN500: IXMLICMSSN500;
    function Get_ICMSSN900: IXMLICMSSN900;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLICMS00 }

  TXMLICMS00 = class(TXMLNode, IXMLICMS00)
  protected
    { IXMLICMS00 }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_PFCP: UnicodeString;
    function Get_VFCP: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_PFCP(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
  end;

{ TXMLICMS10 }

  TXMLICMS10 = class(TXMLNode, IXMLICMS10)
  protected
    { IXMLICMS10 }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_VBCFCP: UnicodeString;
    function Get_PFCP: UnicodeString;
    function Get_VFCP: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_VBCFCP(Value: UnicodeString);
    procedure Set_PFCP(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
  end;

{ TXMLICMS20 }

  TXMLICMS20 = class(TXMLNode, IXMLICMS20)
  protected
    { IXMLICMS20 }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_PRedBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_VBCFCP: UnicodeString;
    function Get_PFCP: UnicodeString;
    function Get_VFCP: UnicodeString;
    function Get_VICMSDeson: UnicodeString;
    function Get_MotDesICMS: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_PRedBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_VBCFCP(Value: UnicodeString);
    procedure Set_PFCP(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
    procedure Set_VICMSDeson(Value: UnicodeString);
    procedure Set_MotDesICMS(Value: UnicodeString);
  end;

{ TXMLICMS30 }

  TXMLICMS30 = class(TXMLNode, IXMLICMS30)
  protected
    { IXMLICMS30 }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    function Get_VICMSDeson: UnicodeString;
    function Get_MotDesICMS: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    procedure Set_VICMSDeson(Value: UnicodeString);
    procedure Set_MotDesICMS(Value: UnicodeString);
  end;

{ TXMLICMS40 }

  TXMLICMS40 = class(TXMLNode, IXMLICMS40)
  protected
    { IXMLICMS40 }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_VICMSDeson: UnicodeString;
    function Get_MotDesICMS: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VICMSDeson(Value: UnicodeString);
    procedure Set_MotDesICMS(Value: UnicodeString);
  end;

{ TXMLICMS51 }

  TXMLICMS51 = class(TXMLNode, IXMLICMS51)
  protected
    { IXMLICMS51 }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_PRedBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMSOp: UnicodeString;
    function Get_PDif: UnicodeString;
    function Get_VICMSDif: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_VBCFCP: UnicodeString;
    function Get_PFCP: UnicodeString;
    function Get_VFCP: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_PRedBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMSOp(Value: UnicodeString);
    procedure Set_PDif(Value: UnicodeString);
    procedure Set_VICMSDif(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_VBCFCP(Value: UnicodeString);
    procedure Set_PFCP(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
  end;

{ TXMLICMS60 }

  TXMLICMS60 = class(TXMLNode, IXMLICMS60)
  protected
    { IXMLICMS60 }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_VBCSTRet: UnicodeString;
    function Get_PST: UnicodeString;
    function Get_VICMSSTRet: UnicodeString;
    function Get_VBCFCPSTRet: UnicodeString;
    function Get_PFCPSTRet: UnicodeString;
    function Get_VFCPSTRet: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBCSTRet(Value: UnicodeString);
    procedure Set_PST(Value: UnicodeString);
    procedure Set_VICMSSTRet(Value: UnicodeString);
    procedure Set_VBCFCPSTRet(Value: UnicodeString);
    procedure Set_PFCPSTRet(Value: UnicodeString);
    procedure Set_VFCPSTRet(Value: UnicodeString);
  end;

{ TXMLICMS70 }

  TXMLICMS70 = class(TXMLNode, IXMLICMS70)
  protected
    { IXMLICMS70 }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_PRedBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_VBCFCP: UnicodeString;
    function Get_PFCP: UnicodeString;
    function Get_VFCP: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    function Get_VICMSDeson: UnicodeString;
    function Get_MotDesICMS: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_PRedBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_VBCFCP(Value: UnicodeString);
    procedure Set_PFCP(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    procedure Set_VICMSDeson(Value: UnicodeString);
    procedure Set_MotDesICMS(Value: UnicodeString);
  end;

{ TXMLICMS90 }

  TXMLICMS90 = class(TXMLNode, IXMLICMS90)
  protected
    { IXMLICMS90 }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PRedBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_VBCFCP: UnicodeString;
    function Get_PFCP: UnicodeString;
    function Get_VFCP: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    function Get_VICMSDeson: UnicodeString;
    function Get_MotDesICMS: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PRedBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_VBCFCP(Value: UnicodeString);
    procedure Set_PFCP(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    procedure Set_VICMSDeson(Value: UnicodeString);
    procedure Set_MotDesICMS(Value: UnicodeString);
  end;

{ TXMLICMSPart }

  TXMLICMSPart = class(TXMLNode, IXMLICMSPart)
  protected
    { IXMLICMSPart }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PRedBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_PBCOp: UnicodeString;
    function Get_UFST: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PRedBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_PBCOp(Value: UnicodeString);
    procedure Set_UFST(Value: UnicodeString);
  end;

{ TXMLICMSST }

  TXMLICMSST = class(TXMLNode, IXMLICMSST)
  protected
    { IXMLICMSST }
    function Get_Orig: UnicodeString;
    function Get_CST: UnicodeString;
    function Get_VBCSTRet: UnicodeString;
    function Get_VICMSSTRet: UnicodeString;
    function Get_VBCSTDest: UnicodeString;
    function Get_VICMSSTDest: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBCSTRet(Value: UnicodeString);
    procedure Set_VICMSSTRet(Value: UnicodeString);
    procedure Set_VBCSTDest(Value: UnicodeString);
    procedure Set_VICMSSTDest(Value: UnicodeString);
  end;

{ TXMLICMSSN101 }

  TXMLICMSSN101 = class(TXMLNode, IXMLICMSSN101)
  protected
    { IXMLICMSSN101 }
    function Get_Orig: UnicodeString;
    function Get_CSOSN: UnicodeString;
    function Get_PCredSN: UnicodeString;
    function Get_VCredICMSSN: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CSOSN(Value: UnicodeString);
    procedure Set_PCredSN(Value: UnicodeString);
    procedure Set_VCredICMSSN(Value: UnicodeString);
  end;

{ TXMLICMSSN102 }

  TXMLICMSSN102 = class(TXMLNode, IXMLICMSSN102)
  protected
    { IXMLICMSSN102 }
    function Get_Orig: UnicodeString;
    function Get_CSOSN: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CSOSN(Value: UnicodeString);
  end;

{ TXMLICMSSN201 }

  TXMLICMSSN201 = class(TXMLNode, IXMLICMSSN201)
  protected
    { IXMLICMSSN201 }
    function Get_Orig: UnicodeString;
    function Get_CSOSN: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    function Get_PCredSN: UnicodeString;
    function Get_VCredICMSSN: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CSOSN(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    procedure Set_PCredSN(Value: UnicodeString);
    procedure Set_VCredICMSSN(Value: UnicodeString);
  end;

{ TXMLICMSSN202 }

  TXMLICMSSN202 = class(TXMLNode, IXMLICMSSN202)
  protected
    { IXMLICMSSN202 }
    function Get_Orig: UnicodeString;
    function Get_CSOSN: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CSOSN(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
  end;

{ TXMLICMSSN500 }

  TXMLICMSSN500 = class(TXMLNode, IXMLICMSSN500)
  protected
    { IXMLICMSSN500 }
    function Get_Orig: UnicodeString;
    function Get_CSOSN: UnicodeString;
    function Get_VBCSTRet: UnicodeString;
    function Get_PST: UnicodeString;
    function Get_VICMSSTRet: UnicodeString;
    function Get_VBCFCPSTRet: UnicodeString;
    function Get_PFCPSTRet: UnicodeString;
    function Get_VFCPSTRet: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CSOSN(Value: UnicodeString);
    procedure Set_VBCSTRet(Value: UnicodeString);
    procedure Set_PST(Value: UnicodeString);
    procedure Set_VICMSSTRet(Value: UnicodeString);
    procedure Set_VBCFCPSTRet(Value: UnicodeString);
    procedure Set_PFCPSTRet(Value: UnicodeString);
    procedure Set_VFCPSTRet(Value: UnicodeString);
  end;

{ TXMLICMSSN900 }

  TXMLICMSSN900 = class(TXMLNode, IXMLICMSSN900)
  protected
    { IXMLICMSSN900 }
    function Get_Orig: UnicodeString;
    function Get_CSOSN: UnicodeString;
    function Get_ModBC: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PRedBC: UnicodeString;
    function Get_PICMS: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_ModBCST: UnicodeString;
    function Get_PMVAST: UnicodeString;
    function Get_PRedBCST: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_PICMSST: UnicodeString;
    function Get_VICMSST: UnicodeString;
    function Get_VBCFCPST: UnicodeString;
    function Get_PFCPST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    function Get_PCredSN: UnicodeString;
    function Get_VCredICMSSN: UnicodeString;
    procedure Set_Orig(Value: UnicodeString);
    procedure Set_CSOSN(Value: UnicodeString);
    procedure Set_ModBC(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PRedBC(Value: UnicodeString);
    procedure Set_PICMS(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_ModBCST(Value: UnicodeString);
    procedure Set_PMVAST(Value: UnicodeString);
    procedure Set_PRedBCST(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_PICMSST(Value: UnicodeString);
    procedure Set_VICMSST(Value: UnicodeString);
    procedure Set_VBCFCPST(Value: UnicodeString);
    procedure Set_PFCPST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    procedure Set_PCredSN(Value: UnicodeString);
    procedure Set_VCredICMSSN(Value: UnicodeString);
  end;

{ TXMLTIpi }

  TXMLTIpi = class(TXMLNode, IXMLTIpi)
  protected
    { IXMLTIpi }
    function Get_CNPJProd: UnicodeString;
    function Get_CSelo: UnicodeString;
    function Get_QSelo: UnicodeString;
    function Get_CEnq: UnicodeString;
    function Get_IPITrib: IXMLIPITrib;
    function Get_IPINT: IXMLIPINT;
    procedure Set_CNPJProd(Value: UnicodeString);
    procedure Set_CSelo(Value: UnicodeString);
    procedure Set_QSelo(Value: UnicodeString);
    procedure Set_CEnq(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIPITrib }

  TXMLIPITrib = class(TXMLNode, IXMLIPITrib)
  protected
    { IXMLIPITrib }
    function Get_CST: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PIPI: UnicodeString;
    function Get_QUnid: UnicodeString;
    function Get_VUnid: UnicodeString;
    function Get_VIPI: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PIPI(Value: UnicodeString);
    procedure Set_QUnid(Value: UnicodeString);
    procedure Set_VUnid(Value: UnicodeString);
    procedure Set_VIPI(Value: UnicodeString);
  end;

{ TXMLIPINT }

  TXMLIPINT = class(TXMLNode, IXMLIPINT)
  protected
    { IXMLIPINT }
    function Get_CST: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
  end;

{ TXMLII }

  TXMLII = class(TXMLNode, IXMLII)
  protected
    { IXMLII }
    function Get_VBC: UnicodeString;
    function Get_VDespAdu: UnicodeString;
    function Get_VII: UnicodeString;
    function Get_VIOF: UnicodeString;
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_VDespAdu(Value: UnicodeString);
    procedure Set_VII(Value: UnicodeString);
    procedure Set_VIOF(Value: UnicodeString);
  end;

{ TXMLISSQN }

  TXMLISSQN = class(TXMLNode, IXMLISSQN)
  protected
    { IXMLISSQN }
    function Get_VBC: UnicodeString;
    function Get_VAliq: UnicodeString;
    function Get_VISSQN: UnicodeString;
    function Get_CMunFG: UnicodeString;
    function Get_CListServ: UnicodeString;
    function Get_VDeducao: UnicodeString;
    function Get_VOutro: UnicodeString;
    function Get_VDescIncond: UnicodeString;
    function Get_VDescCond: UnicodeString;
    function Get_VISSRet: UnicodeString;
    function Get_IndISS: UnicodeString;
    function Get_CServico: UnicodeString;
    function Get_CMun: UnicodeString;
    function Get_CPais: UnicodeString;
    function Get_NProcesso: UnicodeString;
    function Get_IndIncentivo: UnicodeString;
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_VAliq(Value: UnicodeString);
    procedure Set_VISSQN(Value: UnicodeString);
    procedure Set_CMunFG(Value: UnicodeString);
    procedure Set_CListServ(Value: UnicodeString);
    procedure Set_VDeducao(Value: UnicodeString);
    procedure Set_VOutro(Value: UnicodeString);
    procedure Set_VDescIncond(Value: UnicodeString);
    procedure Set_VDescCond(Value: UnicodeString);
    procedure Set_VISSRet(Value: UnicodeString);
    procedure Set_IndISS(Value: UnicodeString);
    procedure Set_CServico(Value: UnicodeString);
    procedure Set_CMun(Value: UnicodeString);
    procedure Set_CPais(Value: UnicodeString);
    procedure Set_NProcesso(Value: UnicodeString);
    procedure Set_IndIncentivo(Value: UnicodeString);
  end;

{ TXMLPIS }

  TXMLPIS = class(TXMLNode, IXMLPIS)
  protected
    { IXMLPIS }
    function Get_PISAliq: IXMLPISAliq;
    function Get_PISQtde: IXMLPISQtde;
    function Get_PISNT: IXMLPISNT;
    function Get_PISOutr: IXMLPISOutr;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPISAliq }

  TXMLPISAliq = class(TXMLNode, IXMLPISAliq)
  protected
    { IXMLPISAliq }
    function Get_CST: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PPIS: UnicodeString;
    function Get_VPIS: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PPIS(Value: UnicodeString);
    procedure Set_VPIS(Value: UnicodeString);
  end;

{ TXMLPISQtde }

  TXMLPISQtde = class(TXMLNode, IXMLPISQtde)
  protected
    { IXMLPISQtde }
    function Get_CST: UnicodeString;
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VPIS: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VPIS(Value: UnicodeString);
  end;

{ TXMLPISNT }

  TXMLPISNT = class(TXMLNode, IXMLPISNT)
  protected
    { IXMLPISNT }
    function Get_CST: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
  end;

{ TXMLPISOutr }

  TXMLPISOutr = class(TXMLNode, IXMLPISOutr)
  protected
    { IXMLPISOutr }
    function Get_CST: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PPIS: UnicodeString;
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VPIS: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PPIS(Value: UnicodeString);
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VPIS(Value: UnicodeString);
  end;

{ TXMLPISST }

  TXMLPISST = class(TXMLNode, IXMLPISST)
  protected
    { IXMLPISST }
    function Get_VBC: UnicodeString;
    function Get_PPIS: UnicodeString;
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VPIS: UnicodeString;
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PPIS(Value: UnicodeString);
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VPIS(Value: UnicodeString);
  end;

{ TXMLCOFINS }

  TXMLCOFINS = class(TXMLNode, IXMLCOFINS)
  protected
    { IXMLCOFINS }
    function Get_COFINSAliq: IXMLCOFINSAliq;
    function Get_COFINSQtde: IXMLCOFINSQtde;
    function Get_COFINSNT: IXMLCOFINSNT;
    function Get_COFINSOutr: IXMLCOFINSOutr;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCOFINSAliq }

  TXMLCOFINSAliq = class(TXMLNode, IXMLCOFINSAliq)
  protected
    { IXMLCOFINSAliq }
    function Get_CST: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PCOFINS: UnicodeString;
    function Get_VCOFINS: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PCOFINS(Value: UnicodeString);
    procedure Set_VCOFINS(Value: UnicodeString);
  end;

{ TXMLCOFINSQtde }

  TXMLCOFINSQtde = class(TXMLNode, IXMLCOFINSQtde)
  protected
    { IXMLCOFINSQtde }
    function Get_CST: UnicodeString;
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VCOFINS: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VCOFINS(Value: UnicodeString);
  end;

{ TXMLCOFINSNT }

  TXMLCOFINSNT = class(TXMLNode, IXMLCOFINSNT)
  protected
    { IXMLCOFINSNT }
    function Get_CST: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
  end;

{ TXMLCOFINSOutr }

  TXMLCOFINSOutr = class(TXMLNode, IXMLCOFINSOutr)
  protected
    { IXMLCOFINSOutr }
    function Get_CST: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_PCOFINS: UnicodeString;
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VCOFINS: UnicodeString;
    procedure Set_CST(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PCOFINS(Value: UnicodeString);
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VCOFINS(Value: UnicodeString);
  end;

{ TXMLCOFINSST }

  TXMLCOFINSST = class(TXMLNode, IXMLCOFINSST)
  protected
    { IXMLCOFINSST }
    function Get_VBC: UnicodeString;
    function Get_PCOFINS: UnicodeString;
    function Get_QBCProd: UnicodeString;
    function Get_VAliqProd: UnicodeString;
    function Get_VCOFINS: UnicodeString;
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_PCOFINS(Value: UnicodeString);
    procedure Set_QBCProd(Value: UnicodeString);
    procedure Set_VAliqProd(Value: UnicodeString);
    procedure Set_VCOFINS(Value: UnicodeString);
  end;

{ TXMLICMSUFDest }

  TXMLICMSUFDest = class(TXMLNode, IXMLICMSUFDest)
  protected
    { IXMLICMSUFDest }
    function Get_VBCUFDest: UnicodeString;
    function Get_VBCFCPUFDest: UnicodeString;
    function Get_PFCPUFDest: UnicodeString;
    function Get_PICMSUFDest: UnicodeString;
    function Get_PICMSInter: UnicodeString;
    function Get_PICMSInterPart: UnicodeString;
    function Get_VFCPUFDest: UnicodeString;
    function Get_VICMSUFDest: UnicodeString;
    function Get_VICMSUFRemet: UnicodeString;
    procedure Set_VBCUFDest(Value: UnicodeString);
    procedure Set_VBCFCPUFDest(Value: UnicodeString);
    procedure Set_PFCPUFDest(Value: UnicodeString);
    procedure Set_PICMSUFDest(Value: UnicodeString);
    procedure Set_PICMSInter(Value: UnicodeString);
    procedure Set_PICMSInterPart(Value: UnicodeString);
    procedure Set_VFCPUFDest(Value: UnicodeString);
    procedure Set_VICMSUFDest(Value: UnicodeString);
    procedure Set_VICMSUFRemet(Value: UnicodeString);
  end;

{ TXMLImpostoDevol }

  TXMLImpostoDevol = class(TXMLNode, IXMLImpostoDevol)
  protected
    { IXMLImpostoDevol }
    function Get_PDevol: UnicodeString;
    function Get_IPI: IXMLIPI;
    procedure Set_PDevol(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIPI }

  TXMLIPI = class(TXMLNode, IXMLIPI)
  protected
    { IXMLIPI }
    function Get_VIPIDevol: UnicodeString;
    procedure Set_VIPIDevol(Value: UnicodeString);
  end;

{ TXMLTotal }

  TXMLTotal = class(TXMLNode, IXMLTotal)
  protected
    { IXMLTotal }
    function Get_ICMSTot: IXMLICMSTot;
    function Get_ISSQNtot: IXMLISSQNtot;
    function Get_RetTrib: IXMLRetTrib;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLICMSTot }

  TXMLICMSTot = class(TXMLNode, IXMLICMSTot)
  protected
    { IXMLICMSTot }
    function Get_VBC: UnicodeString;
    function Get_VICMS: UnicodeString;
    function Get_VICMSDeson: UnicodeString;
    function Get_VFCPUFDest: UnicodeString;
    function Get_VICMSUFDest: UnicodeString;
    function Get_VICMSUFRemet: UnicodeString;
    function Get_VFCP: UnicodeString;
    function Get_VBCST: UnicodeString;
    function Get_VST: UnicodeString;
    function Get_VFCPST: UnicodeString;
    function Get_VFCPSTRet: UnicodeString;
    function Get_VProd: UnicodeString;
    function Get_VFrete: UnicodeString;
    function Get_VSeg: UnicodeString;
    function Get_VDesc: UnicodeString;
    function Get_VII: UnicodeString;
    function Get_VIPI: UnicodeString;
    function Get_VIPIDevol: UnicodeString;
    function Get_VPIS: UnicodeString;
    function Get_VCOFINS: UnicodeString;
    function Get_VOutro: UnicodeString;
    function Get_VNF: UnicodeString;
    function Get_VTotTrib: UnicodeString;
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_VICMS(Value: UnicodeString);
    procedure Set_VICMSDeson(Value: UnicodeString);
    procedure Set_VFCPUFDest(Value: UnicodeString);
    procedure Set_VICMSUFDest(Value: UnicodeString);
    procedure Set_VICMSUFRemet(Value: UnicodeString);
    procedure Set_VFCP(Value: UnicodeString);
    procedure Set_VBCST(Value: UnicodeString);
    procedure Set_VST(Value: UnicodeString);
    procedure Set_VFCPST(Value: UnicodeString);
    procedure Set_VFCPSTRet(Value: UnicodeString);
    procedure Set_VProd(Value: UnicodeString);
    procedure Set_VFrete(Value: UnicodeString);
    procedure Set_VSeg(Value: UnicodeString);
    procedure Set_VDesc(Value: UnicodeString);
    procedure Set_VII(Value: UnicodeString);
    procedure Set_VIPI(Value: UnicodeString);
    procedure Set_VIPIDevol(Value: UnicodeString);
    procedure Set_VPIS(Value: UnicodeString);
    procedure Set_VCOFINS(Value: UnicodeString);
    procedure Set_VOutro(Value: UnicodeString);
    procedure Set_VNF(Value: UnicodeString);
    procedure Set_VTotTrib(Value: UnicodeString);
  end;

{ TXMLISSQNtot }

  TXMLISSQNtot = class(TXMLNode, IXMLISSQNtot)
  protected
    { IXMLISSQNtot }
    function Get_VServ: UnicodeString;
    function Get_VBC: UnicodeString;
    function Get_VISS: UnicodeString;
    function Get_VPIS: UnicodeString;
    function Get_VCOFINS: UnicodeString;
    function Get_DCompet: UnicodeString;
    function Get_VDeducao: UnicodeString;
    function Get_VOutro: UnicodeString;
    function Get_VDescIncond: UnicodeString;
    function Get_VDescCond: UnicodeString;
    function Get_VISSRet: UnicodeString;
    function Get_CRegTrib: UnicodeString;
    procedure Set_VServ(Value: UnicodeString);
    procedure Set_VBC(Value: UnicodeString);
    procedure Set_VISS(Value: UnicodeString);
    procedure Set_VPIS(Value: UnicodeString);
    procedure Set_VCOFINS(Value: UnicodeString);
    procedure Set_DCompet(Value: UnicodeString);
    procedure Set_VDeducao(Value: UnicodeString);
    procedure Set_VOutro(Value: UnicodeString);
    procedure Set_VDescIncond(Value: UnicodeString);
    procedure Set_VDescCond(Value: UnicodeString);
    procedure Set_VISSRet(Value: UnicodeString);
    procedure Set_CRegTrib(Value: UnicodeString);
  end;

{ TXMLRetTrib }

  TXMLRetTrib = class(TXMLNode, IXMLRetTrib)
  protected
    { IXMLRetTrib }
    function Get_VRetPIS: UnicodeString;
    function Get_VRetCOFINS: UnicodeString;
    function Get_VRetCSLL: UnicodeString;
    function Get_VBCIRRF: UnicodeString;
    function Get_VIRRF: UnicodeString;
    function Get_VBCRetPrev: UnicodeString;
    function Get_VRetPrev: UnicodeString;
    procedure Set_VRetPIS(Value: UnicodeString);
    procedure Set_VRetCOFINS(Value: UnicodeString);
    procedure Set_VRetCSLL(Value: UnicodeString);
    procedure Set_VBCIRRF(Value: UnicodeString);
    procedure Set_VIRRF(Value: UnicodeString);
    procedure Set_VBCRetPrev(Value: UnicodeString);
    procedure Set_VRetPrev(Value: UnicodeString);
  end;

{ TXMLTransp }

  TXMLTransp = class(TXMLNode, IXMLTransp)
  private
    FReboque: IXMLTVeiculoList;
    FVol: IXMLVolList;
  protected
    { IXMLTransp }
    function Get_ModFrete: UnicodeString;
    function Get_Transporta: IXMLTransporta;
    function Get_RetTransp: IXMLRetTransp;
    function Get_VeicTransp: IXMLTVeiculo;
    function Get_Reboque: IXMLTVeiculoList;
    function Get_Vagao: UnicodeString;
    function Get_Balsa: UnicodeString;
    function Get_Vol: IXMLVolList;
    procedure Set_ModFrete(Value: UnicodeString);
    procedure Set_Vagao(Value: UnicodeString);
    procedure Set_Balsa(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransporta }

  TXMLTransporta = class(TXMLNode, IXMLTransporta)
  protected
    { IXMLTransporta }
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    function Get_XNome: UnicodeString;
    function Get_IE: UnicodeString;
    function Get_XEnder: UnicodeString;
    function Get_XMun: UnicodeString;
    function Get_UF: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
    procedure Set_XNome(Value: UnicodeString);
    procedure Set_IE(Value: UnicodeString);
    procedure Set_XEnder(Value: UnicodeString);
    procedure Set_XMun(Value: UnicodeString);
    procedure Set_UF(Value: UnicodeString);
  end;

{ TXMLRetTransp }

  TXMLRetTransp = class(TXMLNode, IXMLRetTransp)
  protected
    { IXMLRetTransp }
    function Get_VServ: UnicodeString;
    function Get_VBCRet: UnicodeString;
    function Get_PICMSRet: UnicodeString;
    function Get_VICMSRet: UnicodeString;
    function Get_CFOP: UnicodeString;
    function Get_CMunFG: UnicodeString;
    procedure Set_VServ(Value: UnicodeString);
    procedure Set_VBCRet(Value: UnicodeString);
    procedure Set_PICMSRet(Value: UnicodeString);
    procedure Set_VICMSRet(Value: UnicodeString);
    procedure Set_CFOP(Value: UnicodeString);
    procedure Set_CMunFG(Value: UnicodeString);
  end;

{ TXMLTVeiculo }

  TXMLTVeiculo = class(TXMLNode, IXMLTVeiculo)
  protected
    { IXMLTVeiculo }
    function Get_Placa: UnicodeString;
    function Get_UF: UnicodeString;
    function Get_RNTC: UnicodeString;
    procedure Set_Placa(Value: UnicodeString);
    procedure Set_UF(Value: UnicodeString);
    procedure Set_RNTC(Value: UnicodeString);
  end;

{ TXMLTVeiculoList }

  TXMLTVeiculoList = class(TXMLNodeCollection, IXMLTVeiculoList)
  protected
    { IXMLTVeiculoList }
    function Add: IXMLTVeiculo;
    function Insert(const Index: Integer): IXMLTVeiculo;

    function Get_Item(Index: Integer): IXMLTVeiculo;
  end;

{ TXMLVol }

  TXMLVol = class(TXMLNode, IXMLVol)
  private
    FLacres: IXMLLacresList;
  protected
    { IXMLVol }
    function Get_QVol: UnicodeString;
    function Get_Esp: UnicodeString;
    function Get_Marca: UnicodeString;
    function Get_NVol: UnicodeString;
    function Get_PesoL: UnicodeString;
    function Get_PesoB: UnicodeString;
    function Get_Lacres: IXMLLacresList;
    procedure Set_QVol(Value: UnicodeString);
    procedure Set_Esp(Value: UnicodeString);
    procedure Set_Marca(Value: UnicodeString);
    procedure Set_NVol(Value: UnicodeString);
    procedure Set_PesoL(Value: UnicodeString);
    procedure Set_PesoB(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLVolList }

  TXMLVolList = class(TXMLNodeCollection, IXMLVolList)
  protected
    { IXMLVolList }
    function Add: IXMLVol;
    function Insert(const Index: Integer): IXMLVol;

    function Get_Item(Index: Integer): IXMLVol;
  end;

{ TXMLLacres }

  TXMLLacres = class(TXMLNode, IXMLLacres)
  protected
    { IXMLLacres }
    function Get_NLacre: UnicodeString;
    procedure Set_NLacre(Value: UnicodeString);
  end;

{ TXMLLacresList }

  TXMLLacresList = class(TXMLNodeCollection, IXMLLacresList)
  protected
    { IXMLLacresList }
    function Add: IXMLLacres;
    function Insert(const Index: Integer): IXMLLacres;

    function Get_Item(Index: Integer): IXMLLacres;
  end;

{ TXMLCobr }

  TXMLCobr = class(TXMLNode, IXMLCobr)
  private
    FDup: IXMLDupList;
  protected
    { IXMLCobr }
    function Get_Fat: IXMLFat;
    function Get_Dup: IXMLDupList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLFat }

  TXMLFat = class(TXMLNode, IXMLFat)
  protected
    { IXMLFat }
    function Get_NFat: UnicodeString;
    function Get_VOrig: UnicodeString;
    function Get_VDesc: UnicodeString;
    function Get_VLiq: UnicodeString;
    procedure Set_NFat(Value: UnicodeString);
    procedure Set_VOrig(Value: UnicodeString);
    procedure Set_VDesc(Value: UnicodeString);
    procedure Set_VLiq(Value: UnicodeString);
  end;

{ TXMLDup }

  TXMLDup = class(TXMLNode, IXMLDup)
  protected
    { IXMLDup }
    function Get_NDup: UnicodeString;
    function Get_DVenc: UnicodeString;
    function Get_VDup: UnicodeString;
    procedure Set_NDup(Value: UnicodeString);
    procedure Set_DVenc(Value: UnicodeString);
    procedure Set_VDup(Value: UnicodeString);
  end;

{ TXMLDupList }

  TXMLDupList = class(TXMLNodeCollection, IXMLDupList)
  protected
    { IXMLDupList }
    function Add: IXMLDup;
    function Insert(const Index: Integer): IXMLDup;

    function Get_Item(Index: Integer): IXMLDup;
  end;

{ TXMLPag }

  TXMLPag = class(TXMLNode, IXMLPag)
  private
    FDetPag: IXMLDetPagList;
  protected
    { IXMLPag }
    function Get_DetPag: IXMLDetPagList;
    function Get_VTroco: UnicodeString;
    procedure Set_VTroco(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDetPag }

  TXMLDetPag = class(TXMLNode, IXMLDetPag)
  protected
    { IXMLDetPag }
    function Get_IndPag: UnicodeString;
    function Get_TPag: UnicodeString;
    function Get_VPag: UnicodeString;
    function Get_Card: IXMLCard;
    procedure Set_IndPag(Value: UnicodeString);
    procedure Set_TPag(Value: UnicodeString);
    procedure Set_VPag(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDetPagList }

  TXMLDetPagList = class(TXMLNodeCollection, IXMLDetPagList)
  protected
    { IXMLDetPagList }
    function Add: IXMLDetPag;
    function Insert(const Index: Integer): IXMLDetPag;

    function Get_Item(Index: Integer): IXMLDetPag;
  end;

{ TXMLCard }

  TXMLCard = class(TXMLNode, IXMLCard)
  protected
    { IXMLCard }
    function Get_TpIntegra: UnicodeString;
    function Get_CNPJ: UnicodeString;
    function Get_TBand: UnicodeString;
    function Get_CAut: UnicodeString;
    procedure Set_TpIntegra(Value: UnicodeString);
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_TBand(Value: UnicodeString);
    procedure Set_CAut(Value: UnicodeString);
  end;

{ TXMLInfAdic }

  TXMLInfAdic = class(TXMLNode, IXMLInfAdic)
  private
    FObsCont: IXMLObsContList;
    FObsFisco: IXMLObsFiscoList;
    FProcRef: IXMLProcRefList;
  protected
    { IXMLInfAdic }
    function Get_InfAdFisco: UnicodeString;
    function Get_InfCpl: UnicodeString;
    function Get_ObsCont: IXMLObsContList;
    function Get_ObsFisco: IXMLObsFiscoList;
    function Get_ProcRef: IXMLProcRefList;
    procedure Set_InfAdFisco(Value: UnicodeString);
    procedure Set_InfCpl(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLObsCont }

  TXMLObsCont = class(TXMLNode, IXMLObsCont)
  protected
    { IXMLObsCont }
    function Get_XCampo: UnicodeString;
    function Get_XTexto: UnicodeString;
    procedure Set_XCampo(Value: UnicodeString);
    procedure Set_XTexto(Value: UnicodeString);
  end;

{ TXMLObsContList }

  TXMLObsContList = class(TXMLNodeCollection, IXMLObsContList)
  protected
    { IXMLObsContList }
    function Add: IXMLObsCont;
    function Insert(const Index: Integer): IXMLObsCont;

    function Get_Item(Index: Integer): IXMLObsCont;
  end;

{ TXMLObsFisco }

  TXMLObsFisco = class(TXMLNode, IXMLObsFisco)
  protected
    { IXMLObsFisco }
    function Get_XCampo: UnicodeString;
    function Get_XTexto: UnicodeString;
    procedure Set_XCampo(Value: UnicodeString);
    procedure Set_XTexto(Value: UnicodeString);
  end;

{ TXMLObsFiscoList }

  TXMLObsFiscoList = class(TXMLNodeCollection, IXMLObsFiscoList)
  protected
    { IXMLObsFiscoList }
    function Add: IXMLObsFisco;
    function Insert(const Index: Integer): IXMLObsFisco;

    function Get_Item(Index: Integer): IXMLObsFisco;
  end;

{ TXMLProcRef }

  TXMLProcRef = class(TXMLNode, IXMLProcRef)
  protected
    { IXMLProcRef }
    function Get_NProc: UnicodeString;
    function Get_IndProc: UnicodeString;
    procedure Set_NProc(Value: UnicodeString);
    procedure Set_IndProc(Value: UnicodeString);
  end;

{ TXMLProcRefList }

  TXMLProcRefList = class(TXMLNodeCollection, IXMLProcRefList)
  protected
    { IXMLProcRefList }
    function Add: IXMLProcRef;
    function Insert(const Index: Integer): IXMLProcRef;

    function Get_Item(Index: Integer): IXMLProcRef;
  end;

{ TXMLExporta }

  TXMLExporta = class(TXMLNode, IXMLExporta)
  protected
    { IXMLExporta }
    function Get_UFSaidaPais: UnicodeString;
    function Get_XLocExporta: UnicodeString;
    function Get_XLocDespacho: UnicodeString;
    procedure Set_UFSaidaPais(Value: UnicodeString);
    procedure Set_XLocExporta(Value: UnicodeString);
    procedure Set_XLocDespacho(Value: UnicodeString);
  end;

{ TXMLCompra }

  TXMLCompra = class(TXMLNode, IXMLCompra)
  protected
    { IXMLCompra }
    function Get_XNEmp: UnicodeString;
    function Get_XPed: UnicodeString;
    function Get_XCont: UnicodeString;
    procedure Set_XNEmp(Value: UnicodeString);
    procedure Set_XPed(Value: UnicodeString);
    procedure Set_XCont(Value: UnicodeString);
  end;

{ TXMLCana }

  TXMLCana = class(TXMLNode, IXMLCana)
  private
    FForDia: IXMLForDiaList;
    FDeduc: IXMLDeducList;
  protected
    { IXMLCana }
    function Get_Safra: UnicodeString;
    function Get_Ref: UnicodeString;
    function Get_ForDia: IXMLForDiaList;
    function Get_QTotMes: UnicodeString;
    function Get_QTotAnt: UnicodeString;
    function Get_QTotGer: UnicodeString;
    function Get_Deduc: IXMLDeducList;
    function Get_VFor: UnicodeString;
    function Get_VTotDed: UnicodeString;
    function Get_VLiqFor: UnicodeString;
    procedure Set_Safra(Value: UnicodeString);
    procedure Set_Ref(Value: UnicodeString);
    procedure Set_QTotMes(Value: UnicodeString);
    procedure Set_QTotAnt(Value: UnicodeString);
    procedure Set_QTotGer(Value: UnicodeString);
    procedure Set_VFor(Value: UnicodeString);
    procedure Set_VTotDed(Value: UnicodeString);
    procedure Set_VLiqFor(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLForDia }

  TXMLForDia = class(TXMLNode, IXMLForDia)
  protected
    { IXMLForDia }
    function Get_Dia: UnicodeString;
    function Get_Qtde: UnicodeString;
    procedure Set_Dia(Value: UnicodeString);
    procedure Set_Qtde(Value: UnicodeString);
  end;

{ TXMLForDiaList }

  TXMLForDiaList = class(TXMLNodeCollection, IXMLForDiaList)
  protected
    { IXMLForDiaList }
    function Add: IXMLForDia;
    function Insert(const Index: Integer): IXMLForDia;

    function Get_Item(Index: Integer): IXMLForDia;
  end;

{ TXMLDeduc }

  TXMLDeduc = class(TXMLNode, IXMLDeduc)
  protected
    { IXMLDeduc }
    function Get_XDed: UnicodeString;
    function Get_VDed: UnicodeString;
    procedure Set_XDed(Value: UnicodeString);
    procedure Set_VDed(Value: UnicodeString);
  end;

{ TXMLDeducList }

  TXMLDeducList = class(TXMLNodeCollection, IXMLDeducList)
  protected
    { IXMLDeducList }
    function Add: IXMLDeduc;
    function Insert(const Index: Integer): IXMLDeduc;

    function Get_Item(Index: Integer): IXMLDeduc;
  end;

{ TXMLInfNFeSupl }

  TXMLInfNFeSupl = class(TXMLNode, IXMLInfNFeSupl)
  protected
    { IXMLInfNFeSupl }
    function Get_QrCode: UnicodeString;
    function Get_UrlChave: UnicodeString;
    procedure Set_QrCode(Value: UnicodeString);
    procedure Set_UrlChave(Value: UnicodeString);
  end;

{ TXMLSignatureType_ds }

  TXMLSignatureType_ds = class(TXMLNode, IXMLSignatureType_ds)
  protected
    { IXMLSignatureType_ds }
    function Get_Id: UnicodeString;
    function Get_SignedInfo: IXMLSignedInfoType_ds;
    function Get_SignatureValue: IXMLSignatureValueType_ds;
    function Get_KeyInfo: IXMLKeyInfoType_ds;
    procedure Set_Id(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSignedInfoType_ds }

  TXMLSignedInfoType_ds = class(TXMLNode, IXMLSignedInfoType_ds)
  protected
    { IXMLSignedInfoType_ds }
    function Get_Id: UnicodeString;
    function Get_CanonicalizationMethod: IXMLCanonicalizationMethod_ds;
    function Get_SignatureMethod: IXMLSignatureMethod_ds;
    function Get_Reference: IXMLReferenceType_ds;
    procedure Set_Id(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCanonicalizationMethod_ds }

  TXMLCanonicalizationMethod_ds = class(TXMLNode, IXMLCanonicalizationMethod_ds)
  protected
    { IXMLCanonicalizationMethod_ds }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
  end;

{ TXMLSignatureMethod_ds }

  TXMLSignatureMethod_ds = class(TXMLNode, IXMLSignatureMethod_ds)
  protected
    { IXMLSignatureMethod_ds }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
  end;

{ TXMLReferenceType_ds }

  TXMLReferenceType_ds = class(TXMLNode, IXMLReferenceType_ds)
  protected
    { IXMLReferenceType_ds }
    function Get_Id: UnicodeString;
    function Get_URI: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_Transforms: IXMLTransformsType_ds;
    function Get_DigestMethod: IXMLDigestMethod_ds;
    function Get_DigestValue: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_URI(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
    procedure Set_DigestValue(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransformsType_ds }

  TXMLTransformsType_ds = class(TXMLNodeCollection, IXMLTransformsType_ds)
  protected
    { IXMLTransformsType_ds }
    function Get_Transform(Index: Integer): IXMLTransformType_ds;
    function Add: IXMLTransformType_ds;
    function Insert(const Index: Integer): IXMLTransformType_ds;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransformType_ds }

  TXMLTransformType_ds = class(TXMLNodeCollection, IXMLTransformType_ds)
  protected
    { IXMLTransformType_ds }
    function Get_Algorithm: UnicodeString;
    function Get_XPath(Index: Integer): UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    function Add(const XPath: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const XPath: UnicodeString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDigestMethod_ds }

  TXMLDigestMethod_ds = class(TXMLNode, IXMLDigestMethod_ds)
  protected
    { IXMLDigestMethod_ds }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
  end;

{ TXMLSignatureValueType_ds }

  TXMLSignatureValueType_ds = class(TXMLNode, IXMLSignatureValueType_ds)
  protected
    { IXMLSignatureValueType_ds }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
  end;

{ TXMLKeyInfoType_ds }

  TXMLKeyInfoType_ds = class(TXMLNode, IXMLKeyInfoType_ds)
  protected
    { IXMLKeyInfoType_ds }
    function Get_Id: UnicodeString;
    function Get_X509Data: IXMLX509DataType_ds;
    procedure Set_Id(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLX509DataType_ds }

  TXMLX509DataType_ds = class(TXMLNode, IXMLX509DataType_ds)
  protected
    { IXMLX509DataType_ds }
    function Get_X509Certificate: UnicodeString;
    procedure Set_X509Certificate(Value: UnicodeString);
  end;

{ TXMLTProtNFe }

  TXMLTProtNFe = class(TXMLNode, IXMLTProtNFe)
  protected
    { IXMLTProtNFe }
    function Get_Versao: UnicodeString;
    function Get_InfProt: IXMLInfProt;
    function Get_Signature: IXMLSignatureType_ds;
    procedure Set_Versao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTProtNFeList }

  TXMLTProtNFeList = class(TXMLNodeCollection, IXMLTProtNFeList)
  protected
    { IXMLTProtNFeList }
    function Add: IXMLTProtNFe;
    function Insert(const Index: Integer): IXMLTProtNFe;

    function Get_Item(Index: Integer): IXMLTProtNFe;
  end;

{ TXMLInfProt }

  TXMLInfProt = class(TXMLNode, IXMLInfProt)
  protected
    { IXMLInfProt }
    function Get_Id: UnicodeString;
    function Get_TpAmb: UnicodeString;
    function Get_VerAplic: UnicodeString;
    function Get_ChNFe: UnicodeString;
    function Get_DhRecbto: UnicodeString;
    function Get_NProt: UnicodeString;
    function Get_DigVal: UnicodeString;
    function Get_CStat: UnicodeString;
    function Get_XMotivo: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_TpAmb(Value: UnicodeString);
    procedure Set_VerAplic(Value: UnicodeString);
    procedure Set_ChNFe(Value: UnicodeString);
    procedure Set_DhRecbto(Value: UnicodeString);
    procedure Set_NProt(Value: UnicodeString);
    procedure Set_DigVal(Value: UnicodeString);
    procedure Set_CStat(Value: UnicodeString);
    procedure Set_XMotivo(Value: UnicodeString);
  end;

{ TXMLTRetEnviNFe }

  TXMLTRetEnviNFe = class(TXMLNode, IXMLTRetEnviNFe)
  protected
    { IXMLTRetEnviNFe }
    function Get_Versao: UnicodeString;
    function Get_TpAmb: UnicodeString;
    function Get_VerAplic: UnicodeString;
    function Get_CStat: UnicodeString;
    function Get_XMotivo: UnicodeString;
    function Get_CUF: UnicodeString;
    function Get_DhRecbto: UnicodeString;
    function Get_InfRec: IXMLInfRec;
    function Get_ProtNFe: IXMLTProtNFe;
    procedure Set_Versao(Value: UnicodeString);
    procedure Set_TpAmb(Value: UnicodeString);
    procedure Set_VerAplic(Value: UnicodeString);
    procedure Set_CStat(Value: UnicodeString);
    procedure Set_XMotivo(Value: UnicodeString);
    procedure Set_CUF(Value: UnicodeString);
    procedure Set_DhRecbto(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInfRec }

  TXMLInfRec = class(TXMLNode, IXMLInfRec)
  protected
    { IXMLInfRec }
    function Get_NRec: UnicodeString;
    function Get_TMed: UnicodeString;
    procedure Set_NRec(Value: UnicodeString);
    procedure Set_TMed(Value: UnicodeString);
  end;

{ TXMLTConsReciNFe }

  TXMLTConsReciNFe = class(TXMLNode, IXMLTConsReciNFe)
  protected
    { IXMLTConsReciNFe }
    function Get_Versao: UnicodeString;
    function Get_TpAmb: UnicodeString;
    function Get_NRec: UnicodeString;
    procedure Set_Versao(Value: UnicodeString);
    procedure Set_TpAmb(Value: UnicodeString);
    procedure Set_NRec(Value: UnicodeString);
  end;

{ TXMLTRetConsReciNFe }

  TXMLTRetConsReciNFe = class(TXMLNode, IXMLTRetConsReciNFe)
  private
    FProtNFe: IXMLTProtNFeList;
  protected
    { IXMLTRetConsReciNFe }
    function Get_Versao: UnicodeString;
    function Get_TpAmb: UnicodeString;
    function Get_VerAplic: UnicodeString;
    function Get_NRec: UnicodeString;
    function Get_CStat: UnicodeString;
    function Get_XMotivo: UnicodeString;
    function Get_CUF: UnicodeString;
    function Get_DhRecbto: UnicodeString;
    function Get_CMsg: UnicodeString;
    function Get_XMsg: UnicodeString;
    function Get_ProtNFe: IXMLTProtNFeList;
    procedure Set_Versao(Value: UnicodeString);
    procedure Set_TpAmb(Value: UnicodeString);
    procedure Set_VerAplic(Value: UnicodeString);
    procedure Set_NRec(Value: UnicodeString);
    procedure Set_CStat(Value: UnicodeString);
    procedure Set_XMotivo(Value: UnicodeString);
    procedure Set_CUF(Value: UnicodeString);
    procedure Set_DhRecbto(Value: UnicodeString);
    procedure Set_CMsg(Value: UnicodeString);
    procedure Set_XMsg(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNfeProc }

  TXMLTNfeProc = class(TXMLNode, IXMLTNfeProc)
  protected
    { IXMLTNfeProc }
    function Get_Versao: UnicodeString;
    function Get_NFe: IXMLTNFe;
    function Get_ProtNFe: IXMLTProtNFe;
    procedure Set_Versao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLNVEList }

  TXMLNVEList = class(TXMLNodeCollection, IXMLNVEList)
  protected
    { IXMLNVEList }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
  end;

implementation

uses Xml.xmlutil;

{ TXMLTEnviNFe }

procedure TXMLTEnviNFe.AfterConstruction;
begin
  RegisterChildNode('NFe', TXMLTNFe);
  FNFe := CreateCollection(TXMLTNFeList, IXMLTNFe, 'NFe') as IXMLTNFeList;
  inherited;
end;

function TXMLTEnviNFe.Get_Versao: UnicodeString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTEnviNFe.Set_Versao(Value: UnicodeString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTEnviNFe.Get_IdLote: UnicodeString;
begin
  Result := ChildNodes['idLote'].Text;
end;

procedure TXMLTEnviNFe.Set_IdLote(Value: UnicodeString);
begin
  ChildNodes['idLote'].NodeValue := Value;
end;

function TXMLTEnviNFe.Get_IndSinc: UnicodeString;
begin
  Result := ChildNodes['indSinc'].Text;
end;

procedure TXMLTEnviNFe.Set_IndSinc(Value: UnicodeString);
begin
  ChildNodes['indSinc'].NodeValue := Value;
end;

function TXMLTEnviNFe.Get_NFe: IXMLTNFeList;
begin
  Result := FNFe;
end;

{ TXMLTNFe }

procedure TXMLTNFe.AfterConstruction;
begin
  RegisterChildNode('infNFe', TXMLInfNFe);
  RegisterChildNode('infNFeSupl', TXMLInfNFeSupl);
  RegisterChildNode('Signature', TXMLSignatureType_ds);
  inherited;
end;

function TXMLTNFe.Get_InfNFe: IXMLInfNFe;
begin
  Result := ChildNodes['infNFe'] as IXMLInfNFe;
end;

function TXMLTNFe.Get_InfNFeSupl: IXMLInfNFeSupl;
begin
  Result := ChildNodes['infNFeSupl'] as IXMLInfNFeSupl;
end;

function TXMLTNFe.Get_Signature: IXMLSignatureType_ds;
begin
  Result := ChildNodes['Signature'] as IXMLSignatureType_ds;
end;

{ TXMLTNFeList }

function TXMLTNFeList.Add: IXMLTNFe;
begin
  Result := AddItem(-1) as IXMLTNFe;
end;

function TXMLTNFeList.Insert(const Index: Integer): IXMLTNFe;
begin
  Result := AddItem(Index) as IXMLTNFe;
end;

function TXMLTNFeList.Get_Item(Index: Integer): IXMLTNFe;
begin
  Result := List[Index] as IXMLTNFe;
end;

{ TXMLInfNFe }

procedure TXMLInfNFe.AfterConstruction;
begin
  RegisterChildNode('ide', TXMLIde);
  RegisterChildNode('emit', TXMLEmit);
  RegisterChildNode('avulsa', TXMLAvulsa);
  RegisterChildNode('dest', TXMLDest);
  RegisterChildNode('retirada', TXMLTLocal);
  RegisterChildNode('entrega', TXMLTLocal);
  RegisterChildNode('autXML', TXMLAutXML);
  RegisterChildNode('det', TXMLDet);
  RegisterChildNode('total', TXMLTotal);
  RegisterChildNode('transp', TXMLTransp);
  RegisterChildNode('cobr', TXMLCobr);
  RegisterChildNode('pag', TXMLPag);
  RegisterChildNode('infAdic', TXMLInfAdic);
  RegisterChildNode('exporta', TXMLExporta);
  RegisterChildNode('compra', TXMLCompra);
  RegisterChildNode('cana', TXMLCana);
  FAutXML := CreateCollection(TXMLAutXMLList, IXMLAutXML, 'autXML') as IXMLAutXMLList;
  FDet := CreateCollection(TXMLDetList, IXMLDet, 'det') as IXMLDetList;
  inherited;
end;

function TXMLInfNFe.Get_Versao: UnicodeString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLInfNFe.Set_Versao(Value: UnicodeString);
begin
  SetAttribute('versao', Value);
end;

function TXMLInfNFe.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLInfNFe.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLInfNFe.Get_Ide: IXMLIde;
begin
  Result := ChildNodes['ide'] as IXMLIde;
end;

function TXMLInfNFe.Get_Emit: IXMLEmit;
begin
  Result := ChildNodes['emit'] as IXMLEmit;
end;

function TXMLInfNFe.Get_Avulsa: IXMLAvulsa;
begin
  Result := ChildNodes['avulsa'] as IXMLAvulsa;
end;

function TXMLInfNFe.Get_Dest: IXMLDest;
begin
  Result := ChildNodes['dest'] as IXMLDest;
end;

function TXMLInfNFe.Get_Retirada: IXMLTLocal;
begin
  Result := ChildNodes['retirada'] as IXMLTLocal;
end;

function TXMLInfNFe.Get_Entrega: IXMLTLocal;
begin
  Result := ChildNodes['entrega'] as IXMLTLocal;
end;

function TXMLInfNFe.Get_AutXML: IXMLAutXMLList;
begin
  Result := FAutXML;
end;

function TXMLInfNFe.Get_Det: IXMLDetList;
begin
  Result := FDet;
end;

function TXMLInfNFe.Get_Total: IXMLTotal;
begin
  Result := ChildNodes['total'] as IXMLTotal;
end;

function TXMLInfNFe.Get_Transp: IXMLTransp;
begin
  Result := ChildNodes['transp'] as IXMLTransp;
end;

function TXMLInfNFe.Get_Cobr: IXMLCobr;
begin
  Result := ChildNodes['cobr'] as IXMLCobr;
end;

function TXMLInfNFe.Get_Pag: IXMLPag;
begin
  Result := ChildNodes['pag'] as IXMLPag;
end;

function TXMLInfNFe.Get_InfAdic: IXMLInfAdic;
begin
  Result := ChildNodes['infAdic'] as IXMLInfAdic;
end;

function TXMLInfNFe.Get_Exporta: IXMLExporta;
begin
  Result := ChildNodes['exporta'] as IXMLExporta;
end;

function TXMLInfNFe.Get_Compra: IXMLCompra;
begin
  Result := ChildNodes['compra'] as IXMLCompra;
end;

function TXMLInfNFe.Get_Cana: IXMLCana;
begin
  Result := ChildNodes['cana'] as IXMLCana;
end;

{ TXMLIde }

procedure TXMLIde.AfterConstruction;
begin
  RegisterChildNode('NFref', TXMLNFref);
  FNFref := CreateCollection(TXMLNFrefList, IXMLNFref, 'NFref') as IXMLNFrefList;
  inherited;
end;

function TXMLIde.Get_CUF: UnicodeString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLIde.Set_CUF(Value: UnicodeString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLIde.Get_CNF: UnicodeString;
begin
  Result := ChildNodes['cNF'].Text;
end;

procedure TXMLIde.Set_CNF(Value: UnicodeString);
begin
  ChildNodes['cNF'].NodeValue := Value;
end;

function TXMLIde.Get_NatOp: UnicodeString;
begin
  Result := ChildNodes['natOp'].Text;
end;

procedure TXMLIde.Set_NatOp(Value: UnicodeString);
begin
  ChildNodes['natOp'].NodeValue := Value;
end;

function TXMLIde.Get_Mod_: UnicodeString;
begin
  Result := ChildNodes['mod'].Text;
end;

procedure TXMLIde.Set_Mod_(Value: UnicodeString);
begin
  ChildNodes['mod'].NodeValue := Value;
end;

function TXMLIde.Get_Serie: UnicodeString;
begin
  Result := ChildNodes['serie'].Text;
end;

procedure TXMLIde.Set_Serie(Value: UnicodeString);
begin
  ChildNodes['serie'].NodeValue := Value;
end;

function TXMLIde.Get_NNF: UnicodeString;
begin
  Result := ChildNodes['nNF'].Text;
end;

procedure TXMLIde.Set_NNF(Value: UnicodeString);
begin
  ChildNodes['nNF'].NodeValue := Value;
end;

function TXMLIde.Get_DhEmi: UnicodeString;
begin
  Result := ChildNodes['dhEmi'].Text;
end;

procedure TXMLIde.Set_DhEmi(Value: UnicodeString);
begin
  ChildNodes['dhEmi'].NodeValue := Value;
end;

function TXMLIde.Get_DhSaiEnt: UnicodeString;
begin
  Result := ChildNodes['dhSaiEnt'].Text;
end;

procedure TXMLIde.Set_DhSaiEnt(Value: UnicodeString);
begin
  ChildNodes['dhSaiEnt'].NodeValue := Value;
end;

function TXMLIde.Get_TpNF: UnicodeString;
begin
  Result := ChildNodes['tpNF'].Text;
end;

procedure TXMLIde.Set_TpNF(Value: UnicodeString);
begin
  ChildNodes['tpNF'].NodeValue := Value;
end;

function TXMLIde.Get_IdDest: UnicodeString;
begin
  Result := ChildNodes['idDest'].Text;
end;

procedure TXMLIde.Set_IdDest(Value: UnicodeString);
begin
  ChildNodes['idDest'].NodeValue := Value;
end;

function TXMLIde.Get_CMunFG: UnicodeString;
begin
  Result := ChildNodes['cMunFG'].Text;
end;

procedure TXMLIde.Set_CMunFG(Value: UnicodeString);
begin
  ChildNodes['cMunFG'].NodeValue := Value;
end;

function TXMLIde.Get_TpImp: UnicodeString;
begin
  Result := ChildNodes['tpImp'].Text;
end;

procedure TXMLIde.Set_TpImp(Value: UnicodeString);
begin
  ChildNodes['tpImp'].NodeValue := Value;
end;

function TXMLIde.Get_TpEmis: UnicodeString;
begin
  Result := ChildNodes['tpEmis'].Text;
end;

procedure TXMLIde.Set_TpEmis(Value: UnicodeString);
begin
  ChildNodes['tpEmis'].NodeValue := Value;
end;

function TXMLIde.Get_CDV: UnicodeString;
begin
  Result := ChildNodes['cDV'].Text;
end;

procedure TXMLIde.Set_CDV(Value: UnicodeString);
begin
  ChildNodes['cDV'].NodeValue := Value;
end;

function TXMLIde.Get_TpAmb: UnicodeString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLIde.Set_TpAmb(Value: UnicodeString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLIde.Get_FinNFe: UnicodeString;
begin
  Result := ChildNodes['finNFe'].Text;
end;

procedure TXMLIde.Set_FinNFe(Value: UnicodeString);
begin
  ChildNodes['finNFe'].NodeValue := Value;
end;

function TXMLIde.Get_IndFinal: UnicodeString;
begin
  Result := ChildNodes['indFinal'].Text;
end;

procedure TXMLIde.Set_IndFinal(Value: UnicodeString);
begin
  ChildNodes['indFinal'].NodeValue := Value;
end;

function TXMLIde.Get_IndPres: UnicodeString;
begin
  Result := ChildNodes['indPres'].Text;
end;

procedure TXMLIde.Set_IndPres(Value: UnicodeString);
begin
  ChildNodes['indPres'].NodeValue := Value;
end;

function TXMLIde.Get_ProcEmi: UnicodeString;
begin
  Result := ChildNodes['procEmi'].Text;
end;

procedure TXMLIde.Set_ProcEmi(Value: UnicodeString);
begin
  ChildNodes['procEmi'].NodeValue := Value;
end;

function TXMLIde.Get_VerProc: UnicodeString;
begin
  Result := ChildNodes['verProc'].Text;
end;

procedure TXMLIde.Set_VerProc(Value: UnicodeString);
begin
  ChildNodes['verProc'].NodeValue := Value;
end;

function TXMLIde.Get_DhCont: UnicodeString;
begin
  Result := ChildNodes['dhCont'].Text;
end;

procedure TXMLIde.Set_DhCont(Value: UnicodeString);
begin
  ChildNodes['dhCont'].NodeValue := Value;
end;

function TXMLIde.Get_XJust: UnicodeString;
begin
  Result := ChildNodes['xJust'].Text;
end;

procedure TXMLIde.Set_XJust(Value: UnicodeString);
begin
  ChildNodes['xJust'].NodeValue := Value;
end;

function TXMLIde.Get_NFref: IXMLNFrefList;
begin
  Result := FNFref;
end;

{ TXMLNFref }

procedure TXMLNFref.AfterConstruction;
begin
  RegisterChildNode('refNF', TXMLRefNF);
  RegisterChildNode('refNFP', TXMLRefNFP);
  RegisterChildNode('refECF', TXMLRefECF);
  inherited;
end;

function TXMLNFref.Get_RefNFe: UnicodeString;
begin
  Result := ChildNodes['refNFe'].Text;
end;

procedure TXMLNFref.Set_RefNFe(Value: UnicodeString);
begin
  ChildNodes['refNFe'].NodeValue := Value;
end;

function TXMLNFref.Get_RefNF: IXMLRefNF;
begin
  Result := ChildNodes['refNF'] as IXMLRefNF;
end;

function TXMLNFref.Get_RefNFP: IXMLRefNFP;
begin
  Result := ChildNodes['refNFP'] as IXMLRefNFP;
end;

function TXMLNFref.Get_RefCTe: UnicodeString;
begin
  Result := ChildNodes['refCTe'].Text;
end;

procedure TXMLNFref.Set_RefCTe(Value: UnicodeString);
begin
  ChildNodes['refCTe'].NodeValue := Value;
end;

function TXMLNFref.Get_RefECF: IXMLRefECF;
begin
  Result := ChildNodes['refECF'] as IXMLRefECF;
end;

{ TXMLNFrefList }

function TXMLNFrefList.Add: IXMLNFref;
begin
  Result := AddItem(-1) as IXMLNFref;
end;

function TXMLNFrefList.Insert(const Index: Integer): IXMLNFref;
begin
  Result := AddItem(Index) as IXMLNFref;
end;

function TXMLNFrefList.Get_Item(Index: Integer): IXMLNFref;
begin
  Result := List[Index] as IXMLNFref;
end;

{ TXMLRefNF }

function TXMLRefNF.Get_CUF: UnicodeString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLRefNF.Set_CUF(Value: UnicodeString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLRefNF.Get_AAMM: UnicodeString;
begin
  Result := ChildNodes['AAMM'].Text;
end;

procedure TXMLRefNF.Set_AAMM(Value: UnicodeString);
begin
  ChildNodes['AAMM'].NodeValue := Value;
end;

function TXMLRefNF.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLRefNF.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLRefNF.Get_Mod_: UnicodeString;
begin
  Result := ChildNodes['mod'].Text;
end;

procedure TXMLRefNF.Set_Mod_(Value: UnicodeString);
begin
  ChildNodes['mod'].NodeValue := Value;
end;

function TXMLRefNF.Get_Serie: UnicodeString;
begin
  Result := ChildNodes['serie'].Text;
end;

procedure TXMLRefNF.Set_Serie(Value: UnicodeString);
begin
  ChildNodes['serie'].NodeValue := Value;
end;

function TXMLRefNF.Get_NNF: UnicodeString;
begin
  Result := ChildNodes['nNF'].Text;
end;

procedure TXMLRefNF.Set_NNF(Value: UnicodeString);
begin
  ChildNodes['nNF'].NodeValue := Value;
end;

{ TXMLRefNFP }

function TXMLRefNFP.Get_CUF: UnicodeString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLRefNFP.Set_CUF(Value: UnicodeString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLRefNFP.Get_AAMM: UnicodeString;
begin
  Result := ChildNodes['AAMM'].Text;
end;

procedure TXMLRefNFP.Set_AAMM(Value: UnicodeString);
begin
  ChildNodes['AAMM'].NodeValue := Value;
end;

function TXMLRefNFP.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLRefNFP.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLRefNFP.Get_CPF: UnicodeString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLRefNFP.Set_CPF(Value: UnicodeString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLRefNFP.Get_IE: UnicodeString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLRefNFP.Set_IE(Value: UnicodeString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLRefNFP.Get_Mod_: UnicodeString;
begin
  Result := ChildNodes['mod'].Text;
end;

procedure TXMLRefNFP.Set_Mod_(Value: UnicodeString);
begin
  ChildNodes['mod'].NodeValue := Value;
end;

function TXMLRefNFP.Get_Serie: UnicodeString;
begin
  Result := ChildNodes['serie'].Text;
end;

procedure TXMLRefNFP.Set_Serie(Value: UnicodeString);
begin
  ChildNodes['serie'].NodeValue := Value;
end;

function TXMLRefNFP.Get_NNF: UnicodeString;
begin
  Result := ChildNodes['nNF'].Text;
end;

procedure TXMLRefNFP.Set_NNF(Value: UnicodeString);
begin
  ChildNodes['nNF'].NodeValue := Value;
end;

{ TXMLRefECF }

function TXMLRefECF.Get_Mod_: UnicodeString;
begin
  Result := ChildNodes['mod'].Text;
end;

procedure TXMLRefECF.Set_Mod_(Value: UnicodeString);
begin
  ChildNodes['mod'].NodeValue := Value;
end;

function TXMLRefECF.Get_NECF: UnicodeString;
begin
  Result := ChildNodes['nECF'].Text;
end;

procedure TXMLRefECF.Set_NECF(Value: UnicodeString);
begin
  ChildNodes['nECF'].NodeValue := Value;
end;

function TXMLRefECF.Get_NCOO: UnicodeString;
begin
  Result := ChildNodes['nCOO'].Text;
end;

procedure TXMLRefECF.Set_NCOO(Value: UnicodeString);
begin
  ChildNodes['nCOO'].NodeValue := Value;
end;

{ TXMLEmit }

procedure TXMLEmit.AfterConstruction;
begin
  RegisterChildNode('enderEmit', TXMLTEnderEmi);
  inherited;
end;

function TXMLEmit.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLEmit.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLEmit.Get_CPF: UnicodeString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLEmit.Set_CPF(Value: UnicodeString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLEmit.Get_XNome: UnicodeString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLEmit.Set_XNome(Value: UnicodeString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLEmit.Get_XFant: UnicodeString;
begin
  Result := ChildNodes['xFant'].Text;
end;

procedure TXMLEmit.Set_XFant(Value: UnicodeString);
begin
  ChildNodes['xFant'].NodeValue := Value;
end;

function TXMLEmit.Get_EnderEmit: IXMLTEnderEmi;
begin
  Result := ChildNodes['enderEmit'] as IXMLTEnderEmi;
end;

function TXMLEmit.Get_IE: UnicodeString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLEmit.Set_IE(Value: UnicodeString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLEmit.Get_IEST: UnicodeString;
begin
  Result := ChildNodes['IEST'].Text;
end;

procedure TXMLEmit.Set_IEST(Value: UnicodeString);
begin
  ChildNodes['IEST'].NodeValue := Value;
end;

function TXMLEmit.Get_IM: UnicodeString;
begin
  Result := ChildNodes['IM'].Text;
end;

procedure TXMLEmit.Set_IM(Value: UnicodeString);
begin
  ChildNodes['IM'].NodeValue := Value;
end;

function TXMLEmit.Get_CNAE: UnicodeString;
begin
  Result := ChildNodes['CNAE'].Text;
end;

procedure TXMLEmit.Set_CNAE(Value: UnicodeString);
begin
  ChildNodes['CNAE'].NodeValue := Value;
end;

function TXMLEmit.Get_CRT: UnicodeString;
begin
  Result := ChildNodes['CRT'].Text;
end;

procedure TXMLEmit.Set_CRT(Value: UnicodeString);
begin
  ChildNodes['CRT'].NodeValue := Value;
end;

{ TXMLTEnderEmi }

function TXMLTEnderEmi.Get_XLgr: UnicodeString;
begin
  Result := ChildNodes['xLgr'].Text;
end;

procedure TXMLTEnderEmi.Set_XLgr(Value: UnicodeString);
begin
  ChildNodes['xLgr'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_Nro: UnicodeString;
begin
  Result := ChildNodes['nro'].Text;
end;

procedure TXMLTEnderEmi.Set_Nro(Value: UnicodeString);
begin
  ChildNodes['nro'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_XCpl: UnicodeString;
begin
  Result := ChildNodes['xCpl'].Text;
end;

procedure TXMLTEnderEmi.Set_XCpl(Value: UnicodeString);
begin
  ChildNodes['xCpl'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_XBairro: UnicodeString;
begin
  Result := ChildNodes['xBairro'].Text;
end;

procedure TXMLTEnderEmi.Set_XBairro(Value: UnicodeString);
begin
  ChildNodes['xBairro'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_CMun: UnicodeString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTEnderEmi.Set_CMun(Value: UnicodeString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_XMun: UnicodeString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTEnderEmi.Set_XMun(Value: UnicodeString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_UF: UnicodeString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTEnderEmi.Set_UF(Value: UnicodeString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_CEP: UnicodeString;
begin
  Result := ChildNodes['CEP'].Text;
end;

procedure TXMLTEnderEmi.Set_CEP(Value: UnicodeString);
begin
  ChildNodes['CEP'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_CPais: UnicodeString;
begin
  Result := ChildNodes['cPais'].Text;
end;

procedure TXMLTEnderEmi.Set_CPais(Value: UnicodeString);
begin
  ChildNodes['cPais'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_XPais: UnicodeString;
begin
  Result := ChildNodes['xPais'].Text;
end;

procedure TXMLTEnderEmi.Set_XPais(Value: UnicodeString);
begin
  ChildNodes['xPais'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_Fone: UnicodeString;
begin
  Result := ChildNodes['fone'].Text;
end;

procedure TXMLTEnderEmi.Set_Fone(Value: UnicodeString);
begin
  ChildNodes['fone'].NodeValue := Value;
end;

{ TXMLAvulsa }

function TXMLAvulsa.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLAvulsa.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLAvulsa.Get_XOrgao: UnicodeString;
begin
  Result := ChildNodes['xOrgao'].Text;
end;

procedure TXMLAvulsa.Set_XOrgao(Value: UnicodeString);
begin
  ChildNodes['xOrgao'].NodeValue := Value;
end;

function TXMLAvulsa.Get_Matr: UnicodeString;
begin
  Result := ChildNodes['matr'].Text;
end;

procedure TXMLAvulsa.Set_Matr(Value: UnicodeString);
begin
  ChildNodes['matr'].NodeValue := Value;
end;

function TXMLAvulsa.Get_XAgente: UnicodeString;
begin
  Result := ChildNodes['xAgente'].Text;
end;

procedure TXMLAvulsa.Set_XAgente(Value: UnicodeString);
begin
  ChildNodes['xAgente'].NodeValue := Value;
end;

function TXMLAvulsa.Get_Fone: UnicodeString;
begin
  Result := ChildNodes['fone'].Text;
end;

procedure TXMLAvulsa.Set_Fone(Value: UnicodeString);
begin
  ChildNodes['fone'].NodeValue := Value;
end;

function TXMLAvulsa.Get_UF: UnicodeString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLAvulsa.Set_UF(Value: UnicodeString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLAvulsa.Get_NDAR: UnicodeString;
begin
  Result := ChildNodes['nDAR'].Text;
end;

procedure TXMLAvulsa.Set_NDAR(Value: UnicodeString);
begin
  ChildNodes['nDAR'].NodeValue := Value;
end;

function TXMLAvulsa.Get_DEmi: UnicodeString;
begin
  Result := ChildNodes['dEmi'].Text;
end;

procedure TXMLAvulsa.Set_DEmi(Value: UnicodeString);
begin
  ChildNodes['dEmi'].NodeValue := Value;
end;

function TXMLAvulsa.Get_VDAR: UnicodeString;
begin
  Result := ChildNodes['vDAR'].Text;
end;

procedure TXMLAvulsa.Set_VDAR(Value: UnicodeString);
begin
  ChildNodes['vDAR'].NodeValue := Value;
end;

function TXMLAvulsa.Get_RepEmi: UnicodeString;
begin
  Result := ChildNodes['repEmi'].Text;
end;

procedure TXMLAvulsa.Set_RepEmi(Value: UnicodeString);
begin
  ChildNodes['repEmi'].NodeValue := Value;
end;

function TXMLAvulsa.Get_DPag: UnicodeString;
begin
  Result := ChildNodes['dPag'].Text;
end;

procedure TXMLAvulsa.Set_DPag(Value: UnicodeString);
begin
  ChildNodes['dPag'].NodeValue := Value;
end;

{ TXMLDest }

procedure TXMLDest.AfterConstruction;
begin
  RegisterChildNode('enderDest', TXMLTEndereco);
  inherited;
end;

function TXMLDest.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLDest.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLDest.Get_CPF: UnicodeString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLDest.Set_CPF(Value: UnicodeString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLDest.Get_IdEstrangeiro: UnicodeString;
begin
  Result := ChildNodes['idEstrangeiro'].Text;
end;

procedure TXMLDest.Set_IdEstrangeiro(Value: UnicodeString);
begin
  ChildNodes['idEstrangeiro'].NodeValue := Value;
end;

function TXMLDest.Get_XNome: UnicodeString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLDest.Set_XNome(Value: UnicodeString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLDest.Get_EnderDest: IXMLTEndereco;
begin
  Result := ChildNodes['enderDest'] as IXMLTEndereco;
end;

function TXMLDest.Get_IndIEDest: UnicodeString;
begin
  Result := ChildNodes['indIEDest'].Text;
end;

procedure TXMLDest.Set_IndIEDest(Value: UnicodeString);
begin
  ChildNodes['indIEDest'].NodeValue := Value;
end;

function TXMLDest.Get_IE: UnicodeString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLDest.Set_IE(Value: UnicodeString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLDest.Get_ISUF: UnicodeString;
begin
  Result := ChildNodes['ISUF'].Text;
end;

procedure TXMLDest.Set_ISUF(Value: UnicodeString);
begin
  ChildNodes['ISUF'].NodeValue := Value;
end;

function TXMLDest.Get_IM: UnicodeString;
begin
  Result := ChildNodes['IM'].Text;
end;

procedure TXMLDest.Set_IM(Value: UnicodeString);
begin
  ChildNodes['IM'].NodeValue := Value;
end;

function TXMLDest.Get_Email: UnicodeString;
begin
  Result := ChildNodes['email'].Text;
end;

procedure TXMLDest.Set_Email(Value: UnicodeString);
begin
  ChildNodes['email'].NodeValue := Value;
end;

{ TXMLTEndereco }

function TXMLTEndereco.Get_XLgr: UnicodeString;
begin
  Result := ChildNodes['xLgr'].Text;
end;

procedure TXMLTEndereco.Set_XLgr(Value: UnicodeString);
begin
  ChildNodes['xLgr'].NodeValue := Value;
end;

function TXMLTEndereco.Get_Nro: UnicodeString;
begin
  Result := ChildNodes['nro'].Text;
end;

procedure TXMLTEndereco.Set_Nro(Value: UnicodeString);
begin
  ChildNodes['nro'].NodeValue := Value;
end;

function TXMLTEndereco.Get_XCpl: UnicodeString;
begin
  Result := ChildNodes['xCpl'].Text;
end;

procedure TXMLTEndereco.Set_XCpl(Value: UnicodeString);
begin
  ChildNodes['xCpl'].NodeValue := Value;
end;

function TXMLTEndereco.Get_XBairro: UnicodeString;
begin
  Result := ChildNodes['xBairro'].Text;
end;

procedure TXMLTEndereco.Set_XBairro(Value: UnicodeString);
begin
  ChildNodes['xBairro'].NodeValue := Value;
end;

function TXMLTEndereco.Get_CMun: UnicodeString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTEndereco.Set_CMun(Value: UnicodeString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTEndereco.Get_XMun: UnicodeString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTEndereco.Set_XMun(Value: UnicodeString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTEndereco.Get_UF: UnicodeString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTEndereco.Set_UF(Value: UnicodeString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLTEndereco.Get_CEP: UnicodeString;
begin
  Result := ChildNodes['CEP'].Text;
end;

procedure TXMLTEndereco.Set_CEP(Value: UnicodeString);
begin
  ChildNodes['CEP'].NodeValue := Value;
end;

function TXMLTEndereco.Get_CPais: UnicodeString;
begin
  Result := ChildNodes['cPais'].Text;
end;

procedure TXMLTEndereco.Set_CPais(Value: UnicodeString);
begin
  ChildNodes['cPais'].NodeValue := Value;
end;

function TXMLTEndereco.Get_XPais: UnicodeString;
begin
  Result := ChildNodes['xPais'].Text;
end;

procedure TXMLTEndereco.Set_XPais(Value: UnicodeString);
begin
  ChildNodes['xPais'].NodeValue := Value;
end;

function TXMLTEndereco.Get_Fone: UnicodeString;
begin
  Result := ChildNodes['fone'].Text;
end;

procedure TXMLTEndereco.Set_Fone(Value: UnicodeString);
begin
  ChildNodes['fone'].NodeValue := Value;
end;

{ TXMLTLocal }

function TXMLTLocal.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTLocal.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTLocal.Get_CPF: UnicodeString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLTLocal.Set_CPF(Value: UnicodeString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLTLocal.Get_XLgr: UnicodeString;
begin
  Result := ChildNodes['xLgr'].Text;
end;

procedure TXMLTLocal.Set_XLgr(Value: UnicodeString);
begin
  ChildNodes['xLgr'].NodeValue := Value;
end;

function TXMLTLocal.Get_Nro: UnicodeString;
begin
  Result := ChildNodes['nro'].Text;
end;

procedure TXMLTLocal.Set_Nro(Value: UnicodeString);
begin
  ChildNodes['nro'].NodeValue := Value;
end;

function TXMLTLocal.Get_XCpl: UnicodeString;
begin
  Result := ChildNodes['xCpl'].Text;
end;

procedure TXMLTLocal.Set_XCpl(Value: UnicodeString);
begin
  ChildNodes['xCpl'].NodeValue := Value;
end;

function TXMLTLocal.Get_XBairro: UnicodeString;
begin
  Result := ChildNodes['xBairro'].Text;
end;

procedure TXMLTLocal.Set_XBairro(Value: UnicodeString);
begin
  ChildNodes['xBairro'].NodeValue := Value;
end;

function TXMLTLocal.Get_CMun: UnicodeString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTLocal.Set_CMun(Value: UnicodeString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTLocal.Get_XMun: UnicodeString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTLocal.Set_XMun(Value: UnicodeString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTLocal.Get_UF: UnicodeString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTLocal.Set_UF(Value: UnicodeString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

{ TXMLAutXML }

function TXMLAutXML.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLAutXML.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLAutXML.Get_CPF: UnicodeString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLAutXML.Set_CPF(Value: UnicodeString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

{ TXMLAutXMLList }

function TXMLAutXMLList.Add: IXMLAutXML;
begin
  Result := AddItem(-1) as IXMLAutXML;
end;

function TXMLAutXMLList.Insert(const Index: Integer): IXMLAutXML;
begin
  Result := AddItem(Index) as IXMLAutXML;
end;

function TXMLAutXMLList.Get_Item(Index: Integer): IXMLAutXML;
begin
  Result := List[Index] as IXMLAutXML;
end;

{ TXMLDet }

procedure TXMLDet.AfterConstruction;
begin
  RegisterChildNode('prod', TXMLProd);
  RegisterChildNode('imposto', TXMLImposto);
  RegisterChildNode('impostoDevol', TXMLImpostoDevol);
  inherited;
end;

function TXMLDet.Get_NItem: UnicodeString;
begin
  Result := AttributeNodes['nItem'].Text;
end;

procedure TXMLDet.Set_NItem(Value: UnicodeString);
begin
  SetAttribute('nItem', Value);
end;

function TXMLDet.Get_Prod: IXMLProd;
begin
  Result := ChildNodes['prod'] as IXMLProd;
end;

function TXMLDet.Get_Imposto: IXMLImposto;
begin
  Result := ChildNodes['imposto'] as IXMLImposto;
end;

function TXMLDet.Get_ImpostoDevol: IXMLImpostoDevol;
begin
  Result := ChildNodes['impostoDevol'] as IXMLImpostoDevol;
end;

function TXMLDet.Get_InfAdProd: UnicodeString;
begin
  Result := ChildNodes['infAdProd'].Text;
end;

procedure TXMLDet.Set_InfAdProd(Value: UnicodeString);
begin
  ChildNodes['infAdProd'].NodeValue := Value;
end;

{ TXMLDetList }

function TXMLDetList.Add: IXMLDet;
begin
  Result := AddItem(-1) as IXMLDet;
end;

function TXMLDetList.Insert(const Index: Integer): IXMLDet;
begin
  Result := AddItem(Index) as IXMLDet;
end;

function TXMLDetList.Get_Item(Index: Integer): IXMLDet;
begin
  Result := List[Index] as IXMLDet;
end;

{ TXMLProd }

procedure TXMLProd.AfterConstruction;
begin
  RegisterChildNode('DI', TXMLDI);
  RegisterChildNode('detExport', TXMLDetExport);
  RegisterChildNode('rastro', TXMLRastro);
  RegisterChildNode('veicProd', TXMLVeicProd);
  RegisterChildNode('med', TXMLMed);
  RegisterChildNode('arma', TXMLArma);
  RegisterChildNode('comb', TXMLComb);
  FNVE := CreateCollection(TXMLNVEList, IXMLNode, 'NVE') as IXMLNVEList;
  FDI := CreateCollection(TXMLDIList, IXMLDI, 'DI') as IXMLDIList;
  FDetExport := CreateCollection(TXMLDetExportList, IXMLDetExport, 'detExport') as IXMLDetExportList;
  FRastro := CreateCollection(TXMLRastroList, IXMLRastro, 'rastro') as IXMLRastroList;
  FArma := CreateCollection(TXMLArmaList, IXMLArma, 'arma') as IXMLArmaList;
  inherited;
end;

function TXMLProd.Get_CProd: UnicodeString;
begin
  Result := ChildNodes['cProd'].Text;
end;

procedure TXMLProd.Set_CProd(Value: UnicodeString);
begin
  ChildNodes['cProd'].NodeValue := Value;
end;

function TXMLProd.Get_CEAN: UnicodeString;
begin
  Result := ChildNodes['cEAN'].Text;
end;

procedure TXMLProd.Set_CEAN(Value: UnicodeString);
begin
  ChildNodes['cEAN'].NodeValue := Value;
end;

function TXMLProd.Get_XProd: UnicodeString;
begin
  Result := ChildNodes['xProd'].Text;
end;

procedure TXMLProd.Set_XProd(Value: UnicodeString);
begin
  ChildNodes['xProd'].NodeValue := Value;
end;

function TXMLProd.Get_NCM: UnicodeString;
begin
  Result := ChildNodes['NCM'].Text;
end;

procedure TXMLProd.Set_NCM(Value: UnicodeString);
begin
  ChildNodes['NCM'].NodeValue := Value;
end;

function TXMLProd.Get_NVE: IXMLNVEList;
begin
  Result := FNVE;
end;

function TXMLProd.Get_CEST: UnicodeString;
begin
  Result := ChildNodes['CEST'].Text;
end;

procedure TXMLProd.Set_CEST(Value: UnicodeString);
begin
  ChildNodes['CEST'].NodeValue := Value;
end;

function TXMLProd.Get_IndEscala: UnicodeString;
begin
  Result := ChildNodes['indEscala'].Text;
end;

procedure TXMLProd.Set_IndEscala(Value: UnicodeString);
begin
  ChildNodes['indEscala'].NodeValue := Value;
end;

function TXMLProd.Get_CNPJFab: UnicodeString;
begin
  Result := ChildNodes['CNPJFab'].Text;
end;

procedure TXMLProd.Set_CNPJFab(Value: UnicodeString);
begin
  ChildNodes['CNPJFab'].NodeValue := Value;
end;

function TXMLProd.Get_CBenef: UnicodeString;
begin
  Result := ChildNodes['cBenef'].Text;
end;

procedure TXMLProd.Set_CBenef(Value: UnicodeString);
begin
  ChildNodes['cBenef'].NodeValue := Value;
end;

function TXMLProd.Get_EXTIPI: UnicodeString;
begin
  Result := ChildNodes['EXTIPI'].Text;
end;

procedure TXMLProd.Set_EXTIPI(Value: UnicodeString);
begin
  ChildNodes['EXTIPI'].NodeValue := Value;
end;

function TXMLProd.Get_CFOP: UnicodeString;
begin
  Result := ChildNodes['CFOP'].Text;
end;

procedure TXMLProd.Set_CFOP(Value: UnicodeString);
begin
  ChildNodes['CFOP'].NodeValue := Value;
end;

function TXMLProd.Get_UCom: UnicodeString;
begin
  Result := ChildNodes['uCom'].Text;
end;

procedure TXMLProd.Set_UCom(Value: UnicodeString);
begin
  ChildNodes['uCom'].NodeValue := Value;
end;

function TXMLProd.Get_QCom: UnicodeString;
begin
  Result := ChildNodes['qCom'].Text;
end;

procedure TXMLProd.Set_QCom(Value: UnicodeString);
begin
  ChildNodes['qCom'].NodeValue := Value;
end;

function TXMLProd.Get_VUnCom: UnicodeString;
begin
  Result := ChildNodes['vUnCom'].Text;
end;

procedure TXMLProd.Set_VUnCom(Value: UnicodeString);
begin
  ChildNodes['vUnCom'].NodeValue := Value;
end;

function TXMLProd.Get_VProd: UnicodeString;
begin
  Result := ChildNodes['vProd'].Text;
end;

procedure TXMLProd.Set_VProd(Value: UnicodeString);
begin
  ChildNodes['vProd'].NodeValue := Value;
end;

function TXMLProd.Get_CEANTrib: UnicodeString;
begin
  Result := ChildNodes['cEANTrib'].Text;
end;

procedure TXMLProd.Set_CEANTrib(Value: UnicodeString);
begin
  ChildNodes['cEANTrib'].NodeValue := Value;
end;

function TXMLProd.Get_UTrib: UnicodeString;
begin
  Result := ChildNodes['uTrib'].Text;
end;

procedure TXMLProd.Set_UTrib(Value: UnicodeString);
begin
  ChildNodes['uTrib'].NodeValue := Value;
end;

function TXMLProd.Get_QTrib: UnicodeString;
begin
  Result := ChildNodes['qTrib'].Text;
end;

procedure TXMLProd.Set_QTrib(Value: UnicodeString);
begin
  ChildNodes['qTrib'].NodeValue := Value;
end;

function TXMLProd.Get_VUnTrib: UnicodeString;
begin
  Result := ChildNodes['vUnTrib'].Text;
end;

procedure TXMLProd.Set_VUnTrib(Value: UnicodeString);
begin
  ChildNodes['vUnTrib'].NodeValue := Value;
end;

function TXMLProd.Get_VFrete: UnicodeString;
begin
  Result := ChildNodes['vFrete'].Text;
end;

procedure TXMLProd.Set_VFrete(Value: UnicodeString);
begin
  ChildNodes['vFrete'].NodeValue := Value;
end;

function TXMLProd.Get_VSeg: UnicodeString;
begin
  Result := ChildNodes['vSeg'].Text;
end;

procedure TXMLProd.Set_VSeg(Value: UnicodeString);
begin
  ChildNodes['vSeg'].NodeValue := Value;
end;

function TXMLProd.Get_VDesc: UnicodeString;
begin
  Result := ChildNodes['vDesc'].Text;
end;

procedure TXMLProd.Set_VDesc(Value: UnicodeString);
begin
  ChildNodes['vDesc'].NodeValue := Value;
end;

function TXMLProd.Get_VOutro: UnicodeString;
begin
  Result := ChildNodes['vOutro'].Text;
end;

procedure TXMLProd.Set_VOutro(Value: UnicodeString);
begin
  ChildNodes['vOutro'].NodeValue := Value;
end;

function TXMLProd.Get_IndTot: UnicodeString;
begin
  Result := ChildNodes['indTot'].Text;
end;

procedure TXMLProd.Set_IndTot(Value: UnicodeString);
begin
  ChildNodes['indTot'].NodeValue := Value;
end;

function TXMLProd.Get_DI: IXMLDIList;
begin
  Result := FDI;
end;

function TXMLProd.Get_DetExport: IXMLDetExportList;
begin
  Result := FDetExport;
end;

function TXMLProd.Get_XPed: UnicodeString;
begin
  Result := ChildNodes['xPed'].Text;
end;

procedure TXMLProd.Set_XPed(Value: UnicodeString);
begin
  ChildNodes['xPed'].NodeValue := Value;
end;

function TXMLProd.Get_NItemPed: UnicodeString;
begin
  Result := ChildNodes['nItemPed'].Text;
end;

procedure TXMLProd.Set_NItemPed(Value: UnicodeString);
begin
  ChildNodes['nItemPed'].NodeValue := Value;
end;

function TXMLProd.Get_NFCI: UnicodeString;
begin
  Result := ChildNodes['nFCI'].Text;
end;

procedure TXMLProd.Set_NFCI(Value: UnicodeString);
begin
  ChildNodes['nFCI'].NodeValue := Value;
end;

function TXMLProd.Get_Rastro: IXMLRastroList;
begin
  Result := FRastro;
end;

function TXMLProd.Get_VeicProd: IXMLVeicProd;
begin
  Result := ChildNodes['veicProd'] as IXMLVeicProd;
end;

function TXMLProd.Get_Med: IXMLMed;
begin
  Result := ChildNodes['med'] as IXMLMed;
end;

function TXMLProd.Get_Arma: IXMLArmaList;
begin
  Result := FArma;
end;

function TXMLProd.Get_Comb: IXMLComb;
begin
  Result := ChildNodes['comb'] as IXMLComb;
end;

function TXMLProd.Get_NRECOPI: UnicodeString;
begin
  Result := ChildNodes['nRECOPI'].Text;
end;

procedure TXMLProd.Set_NRECOPI(Value: UnicodeString);
begin
  ChildNodes['nRECOPI'].NodeValue := Value;
end;

{ TXMLDI }

procedure TXMLDI.AfterConstruction;
begin
  RegisterChildNode('adi', TXMLAdi);
  FAdi := CreateCollection(TXMLAdiList, IXMLAdi, 'adi') as IXMLAdiList;
  inherited;
end;

function TXMLDI.Get_NDI: UnicodeString;
begin
  Result := ChildNodes['nDI'].Text;
end;

procedure TXMLDI.Set_NDI(Value: UnicodeString);
begin
  ChildNodes['nDI'].NodeValue := Value;
end;

function TXMLDI.Get_DDI: UnicodeString;
begin
  Result := ChildNodes['dDI'].Text;
end;

procedure TXMLDI.Set_DDI(Value: UnicodeString);
begin
  ChildNodes['dDI'].NodeValue := Value;
end;

function TXMLDI.Get_XLocDesemb: UnicodeString;
begin
  Result := ChildNodes['xLocDesemb'].Text;
end;

procedure TXMLDI.Set_XLocDesemb(Value: UnicodeString);
begin
  ChildNodes['xLocDesemb'].NodeValue := Value;
end;

function TXMLDI.Get_UFDesemb: UnicodeString;
begin
  Result := ChildNodes['UFDesemb'].Text;
end;

procedure TXMLDI.Set_UFDesemb(Value: UnicodeString);
begin
  ChildNodes['UFDesemb'].NodeValue := Value;
end;

function TXMLDI.Get_DDesemb: UnicodeString;
begin
  Result := ChildNodes['dDesemb'].Text;
end;

procedure TXMLDI.Set_DDesemb(Value: UnicodeString);
begin
  ChildNodes['dDesemb'].NodeValue := Value;
end;

function TXMLDI.Get_TpViaTransp: UnicodeString;
begin
  Result := ChildNodes['tpViaTransp'].Text;
end;

procedure TXMLDI.Set_TpViaTransp(Value: UnicodeString);
begin
  ChildNodes['tpViaTransp'].NodeValue := Value;
end;

function TXMLDI.Get_VAFRMM: UnicodeString;
begin
  Result := ChildNodes['vAFRMM'].Text;
end;

procedure TXMLDI.Set_VAFRMM(Value: UnicodeString);
begin
  ChildNodes['vAFRMM'].NodeValue := Value;
end;

function TXMLDI.Get_TpIntermedio: UnicodeString;
begin
  Result := ChildNodes['tpIntermedio'].Text;
end;

procedure TXMLDI.Set_TpIntermedio(Value: UnicodeString);
begin
  ChildNodes['tpIntermedio'].NodeValue := Value;
end;

function TXMLDI.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLDI.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLDI.Get_UFTerceiro: UnicodeString;
begin
  Result := ChildNodes['UFTerceiro'].Text;
end;

procedure TXMLDI.Set_UFTerceiro(Value: UnicodeString);
begin
  ChildNodes['UFTerceiro'].NodeValue := Value;
end;

function TXMLDI.Get_CExportador: UnicodeString;
begin
  Result := ChildNodes['cExportador'].Text;
end;

procedure TXMLDI.Set_CExportador(Value: UnicodeString);
begin
  ChildNodes['cExportador'].NodeValue := Value;
end;

function TXMLDI.Get_Adi: IXMLAdiList;
begin
  Result := FAdi;
end;

{ TXMLDIList }

function TXMLDIList.Add: IXMLDI;
begin
  Result := AddItem(-1) as IXMLDI;
end;

function TXMLDIList.Insert(const Index: Integer): IXMLDI;
begin
  Result := AddItem(Index) as IXMLDI;
end;

function TXMLDIList.Get_Item(Index: Integer): IXMLDI;
begin
  Result := List[Index] as IXMLDI;
end;

{ TXMLAdi }

function TXMLAdi.Get_NAdicao: UnicodeString;
begin
  Result := ChildNodes['nAdicao'].Text;
end;

procedure TXMLAdi.Set_NAdicao(Value: UnicodeString);
begin
  ChildNodes['nAdicao'].NodeValue := Value;
end;

function TXMLAdi.Get_NSeqAdic: UnicodeString;
begin
  Result := ChildNodes['nSeqAdic'].Text;
end;

procedure TXMLAdi.Set_NSeqAdic(Value: UnicodeString);
begin
  ChildNodes['nSeqAdic'].NodeValue := Value;
end;

function TXMLAdi.Get_CFabricante: UnicodeString;
begin
  Result := ChildNodes['cFabricante'].Text;
end;

procedure TXMLAdi.Set_CFabricante(Value: UnicodeString);
begin
  ChildNodes['cFabricante'].NodeValue := Value;
end;

function TXMLAdi.Get_VDescDI: UnicodeString;
begin
  Result := ChildNodes['vDescDI'].Text;
end;

procedure TXMLAdi.Set_VDescDI(Value: UnicodeString);
begin
  ChildNodes['vDescDI'].NodeValue := Value;
end;

function TXMLAdi.Get_NDraw: UnicodeString;
begin
  Result := ChildNodes['nDraw'].Text;
end;

procedure TXMLAdi.Set_NDraw(Value: UnicodeString);
begin
  ChildNodes['nDraw'].NodeValue := Value;
end;

{ TXMLAdiList }

function TXMLAdiList.Add: IXMLAdi;
begin
  Result := AddItem(-1) as IXMLAdi;
end;

function TXMLAdiList.Insert(const Index: Integer): IXMLAdi;
begin
  Result := AddItem(Index) as IXMLAdi;
end;

function TXMLAdiList.Get_Item(Index: Integer): IXMLAdi;
begin
  Result := List[Index] as IXMLAdi;
end;

{ TXMLDetExport }

procedure TXMLDetExport.AfterConstruction;
begin
  RegisterChildNode('exportInd', TXMLExportInd);
  inherited;
end;

function TXMLDetExport.Get_NDraw: UnicodeString;
begin
  Result := ChildNodes['nDraw'].Text;
end;

procedure TXMLDetExport.Set_NDraw(Value: UnicodeString);
begin
  ChildNodes['nDraw'].NodeValue := Value;
end;

function TXMLDetExport.Get_ExportInd: IXMLExportInd;
begin
  Result := ChildNodes['exportInd'] as IXMLExportInd;
end;

{ TXMLDetExportList }

function TXMLDetExportList.Add: IXMLDetExport;
begin
  Result := AddItem(-1) as IXMLDetExport;
end;

function TXMLDetExportList.Insert(const Index: Integer): IXMLDetExport;
begin
  Result := AddItem(Index) as IXMLDetExport;
end;

function TXMLDetExportList.Get_Item(Index: Integer): IXMLDetExport;
begin
  Result := List[Index] as IXMLDetExport;
end;

{ TXMLExportInd }

function TXMLExportInd.Get_NRE: UnicodeString;
begin
  Result := ChildNodes['nRE'].Text;
end;

procedure TXMLExportInd.Set_NRE(Value: UnicodeString);
begin
  ChildNodes['nRE'].NodeValue := Value;
end;

function TXMLExportInd.Get_ChNFe: UnicodeString;
begin
  Result := ChildNodes['chNFe'].Text;
end;

procedure TXMLExportInd.Set_ChNFe(Value: UnicodeString);
begin
  ChildNodes['chNFe'].NodeValue := Value;
end;

function TXMLExportInd.Get_QExport: UnicodeString;
begin
  Result := ChildNodes['qExport'].Text;
end;

procedure TXMLExportInd.Set_QExport(Value: UnicodeString);
begin
  ChildNodes['qExport'].NodeValue := Value;
end;

{ TXMLRastro }

function TXMLRastro.Get_NLote: UnicodeString;
begin
  Result := ChildNodes['nLote'].Text;
end;

procedure TXMLRastro.Set_NLote(Value: UnicodeString);
begin
  ChildNodes['nLote'].NodeValue := Value;
end;

function TXMLRastro.Get_QLote: UnicodeString;
begin
  Result := ChildNodes['qLote'].Text;
end;

procedure TXMLRastro.Set_QLote(Value: UnicodeString);
begin
  ChildNodes['qLote'].NodeValue := Value;
end;

function TXMLRastro.Get_DFab: UnicodeString;
begin
  Result := ChildNodes['dFab'].Text;
end;

procedure TXMLRastro.Set_DFab(Value: UnicodeString);
begin
  ChildNodes['dFab'].NodeValue := Value;
end;

function TXMLRastro.Get_DVal: UnicodeString;
begin
  Result := ChildNodes['dVal'].Text;
end;

procedure TXMLRastro.Set_DVal(Value: UnicodeString);
begin
  ChildNodes['dVal'].NodeValue := Value;
end;

function TXMLRastro.Get_CAgreg: UnicodeString;
begin
  Result := ChildNodes['cAgreg'].Text;
end;

procedure TXMLRastro.Set_CAgreg(Value: UnicodeString);
begin
  ChildNodes['cAgreg'].NodeValue := Value;
end;

{ TXMLRastroList }

function TXMLRastroList.Add: IXMLRastro;
begin
  Result := AddItem(-1) as IXMLRastro;
end;

function TXMLRastroList.Insert(const Index: Integer): IXMLRastro;
begin
  Result := AddItem(Index) as IXMLRastro;
end;

function TXMLRastroList.Get_Item(Index: Integer): IXMLRastro;
begin
  Result := List[Index] as IXMLRastro;
end;

{ TXMLVeicProd }

function TXMLVeicProd.Get_TpOp: UnicodeString;
begin
  Result := ChildNodes['tpOp'].Text;
end;

procedure TXMLVeicProd.Set_TpOp(Value: UnicodeString);
begin
  ChildNodes['tpOp'].NodeValue := Value;
end;

function TXMLVeicProd.Get_Chassi: UnicodeString;
begin
  Result := ChildNodes['chassi'].Text;
end;

procedure TXMLVeicProd.Set_Chassi(Value: UnicodeString);
begin
  ChildNodes['chassi'].NodeValue := Value;
end;

function TXMLVeicProd.Get_CCor: UnicodeString;
begin
  Result := ChildNodes['cCor'].Text;
end;

procedure TXMLVeicProd.Set_CCor(Value: UnicodeString);
begin
  ChildNodes['cCor'].NodeValue := Value;
end;

function TXMLVeicProd.Get_XCor: UnicodeString;
begin
  Result := ChildNodes['xCor'].Text;
end;

procedure TXMLVeicProd.Set_XCor(Value: UnicodeString);
begin
  ChildNodes['xCor'].NodeValue := Value;
end;

function TXMLVeicProd.Get_Pot: UnicodeString;
begin
  Result := ChildNodes['pot'].Text;
end;

procedure TXMLVeicProd.Set_Pot(Value: UnicodeString);
begin
  ChildNodes['pot'].NodeValue := Value;
end;

function TXMLVeicProd.Get_Cilin: UnicodeString;
begin
  Result := ChildNodes['cilin'].Text;
end;

procedure TXMLVeicProd.Set_Cilin(Value: UnicodeString);
begin
  ChildNodes['cilin'].NodeValue := Value;
end;

function TXMLVeicProd.Get_PesoL: UnicodeString;
begin
  Result := ChildNodes['pesoL'].Text;
end;

procedure TXMLVeicProd.Set_PesoL(Value: UnicodeString);
begin
  ChildNodes['pesoL'].NodeValue := Value;
end;

function TXMLVeicProd.Get_PesoB: UnicodeString;
begin
  Result := ChildNodes['pesoB'].Text;
end;

procedure TXMLVeicProd.Set_PesoB(Value: UnicodeString);
begin
  ChildNodes['pesoB'].NodeValue := Value;
end;

function TXMLVeicProd.Get_NSerie: UnicodeString;
begin
  Result := ChildNodes['nSerie'].Text;
end;

procedure TXMLVeicProd.Set_NSerie(Value: UnicodeString);
begin
  ChildNodes['nSerie'].NodeValue := Value;
end;

function TXMLVeicProd.Get_TpComb: UnicodeString;
begin
  Result := ChildNodes['tpComb'].Text;
end;

procedure TXMLVeicProd.Set_TpComb(Value: UnicodeString);
begin
  ChildNodes['tpComb'].NodeValue := Value;
end;

function TXMLVeicProd.Get_NMotor: UnicodeString;
begin
  Result := ChildNodes['nMotor'].Text;
end;

procedure TXMLVeicProd.Set_NMotor(Value: UnicodeString);
begin
  ChildNodes['nMotor'].NodeValue := Value;
end;

function TXMLVeicProd.Get_CMT: UnicodeString;
begin
  Result := ChildNodes['CMT'].Text;
end;

procedure TXMLVeicProd.Set_CMT(Value: UnicodeString);
begin
  ChildNodes['CMT'].NodeValue := Value;
end;

function TXMLVeicProd.Get_Dist: UnicodeString;
begin
  Result := ChildNodes['dist'].Text;
end;

procedure TXMLVeicProd.Set_Dist(Value: UnicodeString);
begin
  ChildNodes['dist'].NodeValue := Value;
end;

function TXMLVeicProd.Get_AnoMod: UnicodeString;
begin
  Result := ChildNodes['anoMod'].Text;
end;

procedure TXMLVeicProd.Set_AnoMod(Value: UnicodeString);
begin
  ChildNodes['anoMod'].NodeValue := Value;
end;

function TXMLVeicProd.Get_AnoFab: UnicodeString;
begin
  Result := ChildNodes['anoFab'].Text;
end;

procedure TXMLVeicProd.Set_AnoFab(Value: UnicodeString);
begin
  ChildNodes['anoFab'].NodeValue := Value;
end;

function TXMLVeicProd.Get_TpPint: UnicodeString;
begin
  Result := ChildNodes['tpPint'].Text;
end;

procedure TXMLVeicProd.Set_TpPint(Value: UnicodeString);
begin
  ChildNodes['tpPint'].NodeValue := Value;
end;

function TXMLVeicProd.Get_TpVeic: UnicodeString;
begin
  Result := ChildNodes['tpVeic'].Text;
end;

procedure TXMLVeicProd.Set_TpVeic(Value: UnicodeString);
begin
  ChildNodes['tpVeic'].NodeValue := Value;
end;

function TXMLVeicProd.Get_EspVeic: UnicodeString;
begin
  Result := ChildNodes['espVeic'].Text;
end;

procedure TXMLVeicProd.Set_EspVeic(Value: UnicodeString);
begin
  ChildNodes['espVeic'].NodeValue := Value;
end;

function TXMLVeicProd.Get_VIN: UnicodeString;
begin
  Result := ChildNodes['VIN'].Text;
end;

procedure TXMLVeicProd.Set_VIN(Value: UnicodeString);
begin
  ChildNodes['VIN'].NodeValue := Value;
end;

function TXMLVeicProd.Get_CondVeic: UnicodeString;
begin
  Result := ChildNodes['condVeic'].Text;
end;

procedure TXMLVeicProd.Set_CondVeic(Value: UnicodeString);
begin
  ChildNodes['condVeic'].NodeValue := Value;
end;

function TXMLVeicProd.Get_CMod: UnicodeString;
begin
  Result := ChildNodes['cMod'].Text;
end;

procedure TXMLVeicProd.Set_CMod(Value: UnicodeString);
begin
  ChildNodes['cMod'].NodeValue := Value;
end;

function TXMLVeicProd.Get_CCorDENATRAN: UnicodeString;
begin
  Result := ChildNodes['cCorDENATRAN'].Text;
end;

procedure TXMLVeicProd.Set_CCorDENATRAN(Value: UnicodeString);
begin
  ChildNodes['cCorDENATRAN'].NodeValue := Value;
end;

function TXMLVeicProd.Get_Lota: UnicodeString;
begin
  Result := ChildNodes['lota'].Text;
end;

procedure TXMLVeicProd.Set_Lota(Value: UnicodeString);
begin
  ChildNodes['lota'].NodeValue := Value;
end;

function TXMLVeicProd.Get_TpRest: UnicodeString;
begin
  Result := ChildNodes['tpRest'].Text;
end;

procedure TXMLVeicProd.Set_TpRest(Value: UnicodeString);
begin
  ChildNodes['tpRest'].NodeValue := Value;
end;

{ TXMLMed }

function TXMLMed.Get_CProdANVISA: UnicodeString;
begin
  Result := ChildNodes['cProdANVISA'].Text;
end;

procedure TXMLMed.Set_CProdANVISA(Value: UnicodeString);
begin
  ChildNodes['cProdANVISA'].NodeValue := Value;
end;

function TXMLMed.Get_VPMC: UnicodeString;
begin
  Result := ChildNodes['vPMC'].Text;
end;

procedure TXMLMed.Set_VPMC(Value: UnicodeString);
begin
  ChildNodes['vPMC'].NodeValue := Value;
end;

{ TXMLArma }

function TXMLArma.Get_TpArma: UnicodeString;
begin
  Result := ChildNodes['tpArma'].Text;
end;

procedure TXMLArma.Set_TpArma(Value: UnicodeString);
begin
  ChildNodes['tpArma'].NodeValue := Value;
end;

function TXMLArma.Get_NSerie: UnicodeString;
begin
  Result := ChildNodes['nSerie'].Text;
end;

procedure TXMLArma.Set_NSerie(Value: UnicodeString);
begin
  ChildNodes['nSerie'].NodeValue := Value;
end;

function TXMLArma.Get_NCano: UnicodeString;
begin
  Result := ChildNodes['nCano'].Text;
end;

procedure TXMLArma.Set_NCano(Value: UnicodeString);
begin
  ChildNodes['nCano'].NodeValue := Value;
end;

function TXMLArma.Get_Descr: UnicodeString;
begin
  Result := ChildNodes['descr'].Text;
end;

procedure TXMLArma.Set_Descr(Value: UnicodeString);
begin
  ChildNodes['descr'].NodeValue := Value;
end;

{ TXMLArmaList }

function TXMLArmaList.Add: IXMLArma;
begin
  Result := AddItem(-1) as IXMLArma;
end;

function TXMLArmaList.Insert(const Index: Integer): IXMLArma;
begin
  Result := AddItem(Index) as IXMLArma;
end;

function TXMLArmaList.Get_Item(Index: Integer): IXMLArma;
begin
  Result := List[Index] as IXMLArma;
end;

{ TXMLComb }

procedure TXMLComb.AfterConstruction;
begin
  RegisterChildNode('CIDE', TXMLCIDE);
  RegisterChildNode('encerrante', TXMLEncerrante);
  inherited;
end;

function TXMLComb.Get_CProdANP: UnicodeString;
begin
  Result := ChildNodes['cProdANP'].Text;
end;

procedure TXMLComb.Set_CProdANP(Value: UnicodeString);
begin
  ChildNodes['cProdANP'].NodeValue := Value;
end;

function TXMLComb.Get_DescANP: UnicodeString;
begin
  Result := ChildNodes['descANP'].Text;
end;

procedure TXMLComb.Set_DescANP(Value: UnicodeString);
begin
  ChildNodes['descANP'].NodeValue := Value;
end;

function TXMLComb.Get_PGLP: UnicodeString;
begin
  Result := ChildNodes['pGLP'].Text;
end;

procedure TXMLComb.Set_PGLP(Value: UnicodeString);
begin
  ChildNodes['pGLP'].NodeValue := Value;
end;

function TXMLComb.Get_PGNn: UnicodeString;
begin
  Result := ChildNodes['pGNn'].Text;
end;

procedure TXMLComb.Set_PGNn(Value: UnicodeString);
begin
  ChildNodes['pGNn'].NodeValue := Value;
end;

function TXMLComb.Get_PGNi: UnicodeString;
begin
  Result := ChildNodes['pGNi'].Text;
end;

procedure TXMLComb.Set_PGNi(Value: UnicodeString);
begin
  ChildNodes['pGNi'].NodeValue := Value;
end;

function TXMLComb.Get_VPart: UnicodeString;
begin
  Result := ChildNodes['vPart'].Text;
end;

procedure TXMLComb.Set_VPart(Value: UnicodeString);
begin
  ChildNodes['vPart'].NodeValue := Value;
end;

function TXMLComb.Get_CODIF: UnicodeString;
begin
  Result := ChildNodes['CODIF'].Text;
end;

procedure TXMLComb.Set_CODIF(Value: UnicodeString);
begin
  ChildNodes['CODIF'].NodeValue := Value;
end;

function TXMLComb.Get_QTemp: UnicodeString;
begin
  Result := ChildNodes['qTemp'].Text;
end;

procedure TXMLComb.Set_QTemp(Value: UnicodeString);
begin
  ChildNodes['qTemp'].NodeValue := Value;
end;

function TXMLComb.Get_UFCons: UnicodeString;
begin
  Result := ChildNodes['UFCons'].Text;
end;

procedure TXMLComb.Set_UFCons(Value: UnicodeString);
begin
  ChildNodes['UFCons'].NodeValue := Value;
end;

function TXMLComb.Get_CIDE: IXMLCIDE;
begin
  Result := ChildNodes['CIDE'] as IXMLCIDE;
end;

function TXMLComb.Get_Encerrante: IXMLEncerrante;
begin
  Result := ChildNodes['encerrante'] as IXMLEncerrante;
end;

{ TXMLCIDE }

function TXMLCIDE.Get_QBCProd: UnicodeString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLCIDE.Set_QBCProd(Value: UnicodeString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLCIDE.Get_VAliqProd: UnicodeString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLCIDE.Set_VAliqProd(Value: UnicodeString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLCIDE.Get_VCIDE: UnicodeString;
begin
  Result := ChildNodes['vCIDE'].Text;
end;

procedure TXMLCIDE.Set_VCIDE(Value: UnicodeString);
begin
  ChildNodes['vCIDE'].NodeValue := Value;
end;

{ TXMLEncerrante }

function TXMLEncerrante.Get_NBico: UnicodeString;
begin
  Result := ChildNodes['nBico'].Text;
end;

procedure TXMLEncerrante.Set_NBico(Value: UnicodeString);
begin
  ChildNodes['nBico'].NodeValue := Value;
end;

function TXMLEncerrante.Get_NBomba: UnicodeString;
begin
  Result := ChildNodes['nBomba'].Text;
end;

procedure TXMLEncerrante.Set_NBomba(Value: UnicodeString);
begin
  ChildNodes['nBomba'].NodeValue := Value;
end;

function TXMLEncerrante.Get_NTanque: UnicodeString;
begin
  Result := ChildNodes['nTanque'].Text;
end;

procedure TXMLEncerrante.Set_NTanque(Value: UnicodeString);
begin
  ChildNodes['nTanque'].NodeValue := Value;
end;

function TXMLEncerrante.Get_VEncIni: UnicodeString;
begin
  Result := ChildNodes['vEncIni'].Text;
end;

procedure TXMLEncerrante.Set_VEncIni(Value: UnicodeString);
begin
  ChildNodes['vEncIni'].NodeValue := Value;
end;

function TXMLEncerrante.Get_VEncFin: UnicodeString;
begin
  Result := ChildNodes['vEncFin'].Text;
end;

procedure TXMLEncerrante.Set_VEncFin(Value: UnicodeString);
begin
  ChildNodes['vEncFin'].NodeValue := Value;
end;

{ TXMLImposto }

procedure TXMLImposto.AfterConstruction;
begin
  RegisterChildNode('ICMS', TXMLICMS);
  RegisterChildNode('IPI', TXMLTIpi);
  RegisterChildNode('II', TXMLII);
  RegisterChildNode('ISSQN', TXMLISSQN);
  RegisterChildNode('PIS', TXMLPIS);
  RegisterChildNode('PISST', TXMLPISST);
  RegisterChildNode('COFINS', TXMLCOFINS);
  RegisterChildNode('COFINSST', TXMLCOFINSST);
  RegisterChildNode('ICMSUFDest', TXMLICMSUFDest);
  inherited;
end;

function TXMLImposto.Get_VTotTrib: UnicodeString;
begin
  Result := ChildNodes['vTotTrib'].Text;
end;

procedure TXMLImposto.Set_VTotTrib(Value: UnicodeString);
begin
  ChildNodes['vTotTrib'].NodeValue := Value;
end;

function TXMLImposto.Get_ICMS: IXMLICMS;
begin
  Result := ChildNodes['ICMS'] as IXMLICMS;
end;

function TXMLImposto.Get_IPI: IXMLTIpi;
begin
  Result := ChildNodes['IPI'] as IXMLTIpi;
end;

function TXMLImposto.Get_II: IXMLII;
begin
  Result := ChildNodes['II'] as IXMLII;
end;

function TXMLImposto.Get_ISSQN: IXMLISSQN;
begin
  Result := ChildNodes['ISSQN'] as IXMLISSQN;
end;

function TXMLImposto.Get_PIS: IXMLPIS;
begin
  Result := ChildNodes['PIS'] as IXMLPIS;
end;

function TXMLImposto.Get_PISST: IXMLPISST;
begin
  Result := ChildNodes['PISST'] as IXMLPISST;
end;

function TXMLImposto.Get_COFINS: IXMLCOFINS;
begin
  Result := ChildNodes['COFINS'] as IXMLCOFINS;
end;

function TXMLImposto.Get_COFINSST: IXMLCOFINSST;
begin
  Result := ChildNodes['COFINSST'] as IXMLCOFINSST;
end;

function TXMLImposto.Get_ICMSUFDest: IXMLICMSUFDest;
begin
  Result := ChildNodes['ICMSUFDest'] as IXMLICMSUFDest;
end;

{ TXMLICMS }

procedure TXMLICMS.AfterConstruction;
begin
  RegisterChildNode('ICMS00', TXMLICMS00);
  RegisterChildNode('ICMS10', TXMLICMS10);
  RegisterChildNode('ICMS20', TXMLICMS20);
  RegisterChildNode('ICMS30', TXMLICMS30);
  RegisterChildNode('ICMS40', TXMLICMS40);
  RegisterChildNode('ICMS51', TXMLICMS51);
  RegisterChildNode('ICMS60', TXMLICMS60);
  RegisterChildNode('ICMS70', TXMLICMS70);
  RegisterChildNode('ICMS90', TXMLICMS90);
  RegisterChildNode('ICMSPart', TXMLICMSPart);
  RegisterChildNode('ICMSST', TXMLICMSST);
  RegisterChildNode('ICMSSN101', TXMLICMSSN101);
  RegisterChildNode('ICMSSN102', TXMLICMSSN102);
  RegisterChildNode('ICMSSN201', TXMLICMSSN201);
  RegisterChildNode('ICMSSN202', TXMLICMSSN202);
  RegisterChildNode('ICMSSN500', TXMLICMSSN500);
  RegisterChildNode('ICMSSN900', TXMLICMSSN900);
  inherited;
end;

function TXMLICMS.Get_ICMS00: IXMLICMS00;
begin
  Result := ChildNodes['ICMS00'] as IXMLICMS00;
end;

function TXMLICMS.Get_ICMS10: IXMLICMS10;
begin
  Result := ChildNodes['ICMS10'] as IXMLICMS10;
end;

function TXMLICMS.Get_ICMS20: IXMLICMS20;
begin
  Result := ChildNodes['ICMS20'] as IXMLICMS20;
end;

function TXMLICMS.Get_ICMS30: IXMLICMS30;
begin
  Result := ChildNodes['ICMS30'] as IXMLICMS30;
end;

function TXMLICMS.Get_ICMS40: IXMLICMS40;
begin
  Result := ChildNodes['ICMS40'] as IXMLICMS40;
end;

function TXMLICMS.Get_ICMS51: IXMLICMS51;
begin
  Result := ChildNodes['ICMS51'] as IXMLICMS51;
end;

function TXMLICMS.Get_ICMS60: IXMLICMS60;
begin
  Result := ChildNodes['ICMS60'] as IXMLICMS60;
end;

function TXMLICMS.Get_ICMS70: IXMLICMS70;
begin
  Result := ChildNodes['ICMS70'] as IXMLICMS70;
end;

function TXMLICMS.Get_ICMS90: IXMLICMS90;
begin
  Result := ChildNodes['ICMS90'] as IXMLICMS90;
end;

function TXMLICMS.Get_ICMSPart: IXMLICMSPart;
begin
  Result := ChildNodes['ICMSPart'] as IXMLICMSPart;
end;

function TXMLICMS.Get_ICMSST: IXMLICMSST;
begin
  Result := ChildNodes['ICMSST'] as IXMLICMSST;
end;

function TXMLICMS.Get_ICMSSN101: IXMLICMSSN101;
begin
  Result := ChildNodes['ICMSSN101'] as IXMLICMSSN101;
end;

function TXMLICMS.Get_ICMSSN102: IXMLICMSSN102;
begin
  Result := ChildNodes['ICMSSN102'] as IXMLICMSSN102;
end;

function TXMLICMS.Get_ICMSSN201: IXMLICMSSN201;
begin
  Result := ChildNodes['ICMSSN201'] as IXMLICMSSN201;
end;

function TXMLICMS.Get_ICMSSN202: IXMLICMSSN202;
begin
  Result := ChildNodes['ICMSSN202'] as IXMLICMSSN202;
end;

function TXMLICMS.Get_ICMSSN500: IXMLICMSSN500;
begin
  Result := ChildNodes['ICMSSN500'] as IXMLICMSSN500;
end;

function TXMLICMS.Get_ICMSSN900: IXMLICMSSN900;
begin
  Result := ChildNodes['ICMSSN900'] as IXMLICMSSN900;
end;

{ TXMLICMS00 }

function TXMLICMS00.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS00.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS00.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS00.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS00.Get_ModBC: UnicodeString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMS00.Set_ModBC(Value: UnicodeString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMS00.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMS00.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMS00.Get_PICMS: UnicodeString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMS00.Set_PICMS(Value: UnicodeString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMS00.Get_VICMS: UnicodeString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMS00.Set_VICMS(Value: UnicodeString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMS00.Get_PFCP: UnicodeString;
begin
  Result := ChildNodes['pFCP'].Text;
end;

procedure TXMLICMS00.Set_PFCP(Value: UnicodeString);
begin
  ChildNodes['pFCP'].NodeValue := Value;
end;

function TXMLICMS00.Get_VFCP: UnicodeString;
begin
  Result := ChildNodes['vFCP'].Text;
end;

procedure TXMLICMS00.Set_VFCP(Value: UnicodeString);
begin
  ChildNodes['vFCP'].NodeValue := Value;
end;

{ TXMLICMS10 }

function TXMLICMS10.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS10.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS10.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS10.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS10.Get_ModBC: UnicodeString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMS10.Set_ModBC(Value: UnicodeString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMS10.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMS10.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMS10.Get_PICMS: UnicodeString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMS10.Set_PICMS(Value: UnicodeString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMS10.Get_VICMS: UnicodeString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMS10.Set_VICMS(Value: UnicodeString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMS10.Get_VBCFCP: UnicodeString;
begin
  Result := ChildNodes['vBCFCP'].Text;
end;

procedure TXMLICMS10.Set_VBCFCP(Value: UnicodeString);
begin
  ChildNodes['vBCFCP'].NodeValue := Value;
end;

function TXMLICMS10.Get_PFCP: UnicodeString;
begin
  Result := ChildNodes['pFCP'].Text;
end;

procedure TXMLICMS10.Set_PFCP(Value: UnicodeString);
begin
  ChildNodes['pFCP'].NodeValue := Value;
end;

function TXMLICMS10.Get_VFCP: UnicodeString;
begin
  Result := ChildNodes['vFCP'].Text;
end;

procedure TXMLICMS10.Set_VFCP(Value: UnicodeString);
begin
  ChildNodes['vFCP'].NodeValue := Value;
end;

function TXMLICMS10.Get_ModBCST: UnicodeString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMS10.Set_ModBCST(Value: UnicodeString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMS10.Get_PMVAST: UnicodeString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMS10.Set_PMVAST(Value: UnicodeString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMS10.Get_PRedBCST: UnicodeString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMS10.Set_PRedBCST(Value: UnicodeString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMS10.Get_VBCST: UnicodeString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMS10.Set_VBCST(Value: UnicodeString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMS10.Get_PICMSST: UnicodeString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMS10.Set_PICMSST(Value: UnicodeString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMS10.Get_VICMSST: UnicodeString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMS10.Set_VICMSST(Value: UnicodeString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMS10.Get_VBCFCPST: UnicodeString;
begin
  Result := ChildNodes['vBCFCPST'].Text;
end;

procedure TXMLICMS10.Set_VBCFCPST(Value: UnicodeString);
begin
  ChildNodes['vBCFCPST'].NodeValue := Value;
end;

function TXMLICMS10.Get_PFCPST: UnicodeString;
begin
  Result := ChildNodes['pFCPST'].Text;
end;

procedure TXMLICMS10.Set_PFCPST(Value: UnicodeString);
begin
  ChildNodes['pFCPST'].NodeValue := Value;
end;

function TXMLICMS10.Get_VFCPST: UnicodeString;
begin
  Result := ChildNodes['vFCPST'].Text;
end;

procedure TXMLICMS10.Set_VFCPST(Value: UnicodeString);
begin
  ChildNodes['vFCPST'].NodeValue := Value;
end;

{ TXMLICMS20 }

function TXMLICMS20.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS20.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS20.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS20.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS20.Get_ModBC: UnicodeString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMS20.Set_ModBC(Value: UnicodeString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMS20.Get_PRedBC: UnicodeString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLICMS20.Set_PRedBC(Value: UnicodeString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLICMS20.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMS20.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMS20.Get_PICMS: UnicodeString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMS20.Set_PICMS(Value: UnicodeString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMS20.Get_VICMS: UnicodeString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMS20.Set_VICMS(Value: UnicodeString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMS20.Get_VBCFCP: UnicodeString;
begin
  Result := ChildNodes['vBCFCP'].Text;
end;

procedure TXMLICMS20.Set_VBCFCP(Value: UnicodeString);
begin
  ChildNodes['vBCFCP'].NodeValue := Value;
end;

function TXMLICMS20.Get_PFCP: UnicodeString;
begin
  Result := ChildNodes['pFCP'].Text;
end;

procedure TXMLICMS20.Set_PFCP(Value: UnicodeString);
begin
  ChildNodes['pFCP'].NodeValue := Value;
end;

function TXMLICMS20.Get_VFCP: UnicodeString;
begin
  Result := ChildNodes['vFCP'].Text;
end;

procedure TXMLICMS20.Set_VFCP(Value: UnicodeString);
begin
  ChildNodes['vFCP'].NodeValue := Value;
end;

function TXMLICMS20.Get_VICMSDeson: UnicodeString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLICMS20.Set_VICMSDeson(Value: UnicodeString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLICMS20.Get_MotDesICMS: UnicodeString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLICMS20.Set_MotDesICMS(Value: UnicodeString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLICMS30 }

function TXMLICMS30.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS30.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS30.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS30.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS30.Get_ModBCST: UnicodeString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMS30.Set_ModBCST(Value: UnicodeString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMS30.Get_PMVAST: UnicodeString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMS30.Set_PMVAST(Value: UnicodeString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMS30.Get_PRedBCST: UnicodeString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMS30.Set_PRedBCST(Value: UnicodeString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMS30.Get_VBCST: UnicodeString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMS30.Set_VBCST(Value: UnicodeString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMS30.Get_PICMSST: UnicodeString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMS30.Set_PICMSST(Value: UnicodeString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMS30.Get_VICMSST: UnicodeString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMS30.Set_VICMSST(Value: UnicodeString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMS30.Get_VBCFCPST: UnicodeString;
begin
  Result := ChildNodes['vBCFCPST'].Text;
end;

procedure TXMLICMS30.Set_VBCFCPST(Value: UnicodeString);
begin
  ChildNodes['vBCFCPST'].NodeValue := Value;
end;

function TXMLICMS30.Get_PFCPST: UnicodeString;
begin
  Result := ChildNodes['pFCPST'].Text;
end;

procedure TXMLICMS30.Set_PFCPST(Value: UnicodeString);
begin
  ChildNodes['pFCPST'].NodeValue := Value;
end;

function TXMLICMS30.Get_VFCPST: UnicodeString;
begin
  Result := ChildNodes['vFCPST'].Text;
end;

procedure TXMLICMS30.Set_VFCPST(Value: UnicodeString);
begin
  ChildNodes['vFCPST'].NodeValue := Value;
end;

function TXMLICMS30.Get_VICMSDeson: UnicodeString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLICMS30.Set_VICMSDeson(Value: UnicodeString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLICMS30.Get_MotDesICMS: UnicodeString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLICMS30.Set_MotDesICMS(Value: UnicodeString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLICMS40 }

function TXMLICMS40.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS40.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS40.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS40.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS40.Get_VICMSDeson: UnicodeString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLICMS40.Set_VICMSDeson(Value: UnicodeString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLICMS40.Get_MotDesICMS: UnicodeString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLICMS40.Set_MotDesICMS(Value: UnicodeString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLICMS51 }

function TXMLICMS51.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS51.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS51.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS51.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS51.Get_ModBC: UnicodeString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMS51.Set_ModBC(Value: UnicodeString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMS51.Get_PRedBC: UnicodeString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLICMS51.Set_PRedBC(Value: UnicodeString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLICMS51.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMS51.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMS51.Get_PICMS: UnicodeString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMS51.Set_PICMS(Value: UnicodeString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMS51.Get_VICMSOp: UnicodeString;
begin
  Result := ChildNodes['vICMSOp'].Text;
end;

procedure TXMLICMS51.Set_VICMSOp(Value: UnicodeString);
begin
  ChildNodes['vICMSOp'].NodeValue := Value;
end;

function TXMLICMS51.Get_PDif: UnicodeString;
begin
  Result := ChildNodes['pDif'].Text;
end;

procedure TXMLICMS51.Set_PDif(Value: UnicodeString);
begin
  ChildNodes['pDif'].NodeValue := Value;
end;

function TXMLICMS51.Get_VICMSDif: UnicodeString;
begin
  Result := ChildNodes['vICMSDif'].Text;
end;

procedure TXMLICMS51.Set_VICMSDif(Value: UnicodeString);
begin
  ChildNodes['vICMSDif'].NodeValue := Value;
end;

function TXMLICMS51.Get_VICMS: UnicodeString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMS51.Set_VICMS(Value: UnicodeString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMS51.Get_VBCFCP: UnicodeString;
begin
  Result := ChildNodes['vBCFCP'].Text;
end;

procedure TXMLICMS51.Set_VBCFCP(Value: UnicodeString);
begin
  ChildNodes['vBCFCP'].NodeValue := Value;
end;

function TXMLICMS51.Get_PFCP: UnicodeString;
begin
  Result := ChildNodes['pFCP'].Text;
end;

procedure TXMLICMS51.Set_PFCP(Value: UnicodeString);
begin
  ChildNodes['pFCP'].NodeValue := Value;
end;

function TXMLICMS51.Get_VFCP: UnicodeString;
begin
  Result := ChildNodes['vFCP'].Text;
end;

procedure TXMLICMS51.Set_VFCP(Value: UnicodeString);
begin
  ChildNodes['vFCP'].NodeValue := Value;
end;

{ TXMLICMS60 }

function TXMLICMS60.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS60.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS60.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS60.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS60.Get_VBCSTRet: UnicodeString;
begin
  Result := ChildNodes['vBCSTRet'].Text;
end;

procedure TXMLICMS60.Set_VBCSTRet(Value: UnicodeString);
begin
  ChildNodes['vBCSTRet'].NodeValue := Value;
end;

function TXMLICMS60.Get_PST: UnicodeString;
begin
  Result := ChildNodes['pST'].Text;
end;

procedure TXMLICMS60.Set_PST(Value: UnicodeString);
begin
  ChildNodes['pST'].NodeValue := Value;
end;

function TXMLICMS60.Get_VICMSSTRet: UnicodeString;
begin
  Result := ChildNodes['vICMSSTRet'].Text;
end;

procedure TXMLICMS60.Set_VICMSSTRet(Value: UnicodeString);
begin
  ChildNodes['vICMSSTRet'].NodeValue := Value;
end;

function TXMLICMS60.Get_VBCFCPSTRet: UnicodeString;
begin
  Result := ChildNodes['vBCFCPSTRet'].Text;
end;

procedure TXMLICMS60.Set_VBCFCPSTRet(Value: UnicodeString);
begin
  ChildNodes['vBCFCPSTRet'].NodeValue := Value;
end;

function TXMLICMS60.Get_PFCPSTRet: UnicodeString;
begin
  Result := ChildNodes['pFCPSTRet'].Text;
end;

procedure TXMLICMS60.Set_PFCPSTRet(Value: UnicodeString);
begin
  ChildNodes['pFCPSTRet'].NodeValue := Value;
end;

function TXMLICMS60.Get_VFCPSTRet: UnicodeString;
begin
  Result := ChildNodes['vFCPSTRet'].Text;
end;

procedure TXMLICMS60.Set_VFCPSTRet(Value: UnicodeString);
begin
  ChildNodes['vFCPSTRet'].NodeValue := Value;
end;

{ TXMLICMS70 }

function TXMLICMS70.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS70.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS70.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS70.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS70.Get_ModBC: UnicodeString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMS70.Set_ModBC(Value: UnicodeString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMS70.Get_PRedBC: UnicodeString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLICMS70.Set_PRedBC(Value: UnicodeString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLICMS70.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMS70.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMS70.Get_PICMS: UnicodeString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMS70.Set_PICMS(Value: UnicodeString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMS70.Get_VICMS: UnicodeString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMS70.Set_VICMS(Value: UnicodeString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMS70.Get_VBCFCP: UnicodeString;
begin
  Result := ChildNodes['vBCFCP'].Text;
end;

procedure TXMLICMS70.Set_VBCFCP(Value: UnicodeString);
begin
  ChildNodes['vBCFCP'].NodeValue := Value;
end;

function TXMLICMS70.Get_PFCP: UnicodeString;
begin
  Result := ChildNodes['pFCP'].Text;
end;

procedure TXMLICMS70.Set_PFCP(Value: UnicodeString);
begin
  ChildNodes['pFCP'].NodeValue := Value;
end;

function TXMLICMS70.Get_VFCP: UnicodeString;
begin
  Result := ChildNodes['vFCP'].Text;
end;

procedure TXMLICMS70.Set_VFCP(Value: UnicodeString);
begin
  ChildNodes['vFCP'].NodeValue := Value;
end;

function TXMLICMS70.Get_ModBCST: UnicodeString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMS70.Set_ModBCST(Value: UnicodeString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMS70.Get_PMVAST: UnicodeString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMS70.Set_PMVAST(Value: UnicodeString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMS70.Get_PRedBCST: UnicodeString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMS70.Set_PRedBCST(Value: UnicodeString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMS70.Get_VBCST: UnicodeString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMS70.Set_VBCST(Value: UnicodeString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMS70.Get_PICMSST: UnicodeString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMS70.Set_PICMSST(Value: UnicodeString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMS70.Get_VICMSST: UnicodeString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMS70.Set_VICMSST(Value: UnicodeString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMS70.Get_VBCFCPST: UnicodeString;
begin
  Result := ChildNodes['vBCFCPST'].Text;
end;

procedure TXMLICMS70.Set_VBCFCPST(Value: UnicodeString);
begin
  ChildNodes['vBCFCPST'].NodeValue := Value;
end;

function TXMLICMS70.Get_PFCPST: UnicodeString;
begin
  Result := ChildNodes['pFCPST'].Text;
end;

procedure TXMLICMS70.Set_PFCPST(Value: UnicodeString);
begin
  ChildNodes['pFCPST'].NodeValue := Value;
end;

function TXMLICMS70.Get_VFCPST: UnicodeString;
begin
  Result := ChildNodes['vFCPST'].Text;
end;

procedure TXMLICMS70.Set_VFCPST(Value: UnicodeString);
begin
  ChildNodes['vFCPST'].NodeValue := Value;
end;

function TXMLICMS70.Get_VICMSDeson: UnicodeString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLICMS70.Set_VICMSDeson(Value: UnicodeString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLICMS70.Get_MotDesICMS: UnicodeString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLICMS70.Set_MotDesICMS(Value: UnicodeString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLICMS90 }

function TXMLICMS90.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS90.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS90.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS90.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS90.Get_ModBC: UnicodeString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMS90.Set_ModBC(Value: UnicodeString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMS90.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMS90.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMS90.Get_PRedBC: UnicodeString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLICMS90.Set_PRedBC(Value: UnicodeString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLICMS90.Get_PICMS: UnicodeString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMS90.Set_PICMS(Value: UnicodeString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMS90.Get_VICMS: UnicodeString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMS90.Set_VICMS(Value: UnicodeString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMS90.Get_VBCFCP: UnicodeString;
begin
  Result := ChildNodes['vBCFCP'].Text;
end;

procedure TXMLICMS90.Set_VBCFCP(Value: UnicodeString);
begin
  ChildNodes['vBCFCP'].NodeValue := Value;
end;

function TXMLICMS90.Get_PFCP: UnicodeString;
begin
  Result := ChildNodes['pFCP'].Text;
end;

procedure TXMLICMS90.Set_PFCP(Value: UnicodeString);
begin
  ChildNodes['pFCP'].NodeValue := Value;
end;

function TXMLICMS90.Get_VFCP: UnicodeString;
begin
  Result := ChildNodes['vFCP'].Text;
end;

procedure TXMLICMS90.Set_VFCP(Value: UnicodeString);
begin
  ChildNodes['vFCP'].NodeValue := Value;
end;

function TXMLICMS90.Get_ModBCST: UnicodeString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMS90.Set_ModBCST(Value: UnicodeString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMS90.Get_PMVAST: UnicodeString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMS90.Set_PMVAST(Value: UnicodeString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMS90.Get_PRedBCST: UnicodeString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMS90.Set_PRedBCST(Value: UnicodeString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMS90.Get_VBCST: UnicodeString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMS90.Set_VBCST(Value: UnicodeString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMS90.Get_PICMSST: UnicodeString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMS90.Set_PICMSST(Value: UnicodeString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMS90.Get_VICMSST: UnicodeString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMS90.Set_VICMSST(Value: UnicodeString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMS90.Get_VBCFCPST: UnicodeString;
begin
  Result := ChildNodes['vBCFCPST'].Text;
end;

procedure TXMLICMS90.Set_VBCFCPST(Value: UnicodeString);
begin
  ChildNodes['vBCFCPST'].NodeValue := Value;
end;

function TXMLICMS90.Get_PFCPST: UnicodeString;
begin
  Result := ChildNodes['pFCPST'].Text;
end;

procedure TXMLICMS90.Set_PFCPST(Value: UnicodeString);
begin
  ChildNodes['pFCPST'].NodeValue := Value;
end;

function TXMLICMS90.Get_VFCPST: UnicodeString;
begin
  Result := ChildNodes['vFCPST'].Text;
end;

procedure TXMLICMS90.Set_VFCPST(Value: UnicodeString);
begin
  ChildNodes['vFCPST'].NodeValue := Value;
end;

function TXMLICMS90.Get_VICMSDeson: UnicodeString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLICMS90.Set_VICMSDeson(Value: UnicodeString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLICMS90.Get_MotDesICMS: UnicodeString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLICMS90.Set_MotDesICMS(Value: UnicodeString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLICMSPart }

function TXMLICMSPart.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSPart.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSPart.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMSPart.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_ModBC: UnicodeString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMSPart.Set_ModBC(Value: UnicodeString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMSPart.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMSPart.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMSPart.Get_PRedBC: UnicodeString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLICMSPart.Set_PRedBC(Value: UnicodeString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLICMSPart.Get_PICMS: UnicodeString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMSPart.Set_PICMS(Value: UnicodeString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMSPart.Get_VICMS: UnicodeString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMSPart.Set_VICMS(Value: UnicodeString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMSPart.Get_ModBCST: UnicodeString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMSPart.Set_ModBCST(Value: UnicodeString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_PMVAST: UnicodeString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMSPart.Set_PMVAST(Value: UnicodeString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_PRedBCST: UnicodeString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMSPart.Set_PRedBCST(Value: UnicodeString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_VBCST: UnicodeString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMSPart.Set_VBCST(Value: UnicodeString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_PICMSST: UnicodeString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMSPart.Set_PICMSST(Value: UnicodeString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_VICMSST: UnicodeString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMSPart.Set_VICMSST(Value: UnicodeString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_PBCOp: UnicodeString;
begin
  Result := ChildNodes['pBCOp'].Text;
end;

procedure TXMLICMSPart.Set_PBCOp(Value: UnicodeString);
begin
  ChildNodes['pBCOp'].NodeValue := Value;
end;

function TXMLICMSPart.Get_UFST: UnicodeString;
begin
  Result := ChildNodes['UFST'].Text;
end;

procedure TXMLICMSPart.Set_UFST(Value: UnicodeString);
begin
  ChildNodes['UFST'].NodeValue := Value;
end;

{ TXMLICMSST }

function TXMLICMSST.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSST.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSST.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMSST.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMSST.Get_VBCSTRet: UnicodeString;
begin
  Result := ChildNodes['vBCSTRet'].Text;
end;

procedure TXMLICMSST.Set_VBCSTRet(Value: UnicodeString);
begin
  ChildNodes['vBCSTRet'].NodeValue := Value;
end;

function TXMLICMSST.Get_VICMSSTRet: UnicodeString;
begin
  Result := ChildNodes['vICMSSTRet'].Text;
end;

procedure TXMLICMSST.Set_VICMSSTRet(Value: UnicodeString);
begin
  ChildNodes['vICMSSTRet'].NodeValue := Value;
end;

function TXMLICMSST.Get_VBCSTDest: UnicodeString;
begin
  Result := ChildNodes['vBCSTDest'].Text;
end;

procedure TXMLICMSST.Set_VBCSTDest(Value: UnicodeString);
begin
  ChildNodes['vBCSTDest'].NodeValue := Value;
end;

function TXMLICMSST.Get_VICMSSTDest: UnicodeString;
begin
  Result := ChildNodes['vICMSSTDest'].Text;
end;

procedure TXMLICMSST.Set_VICMSSTDest(Value: UnicodeString);
begin
  ChildNodes['vICMSSTDest'].NodeValue := Value;
end;

{ TXMLICMSSN101 }

function TXMLICMSSN101.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSSN101.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSSN101.Get_CSOSN: UnicodeString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLICMSSN101.Set_CSOSN(Value: UnicodeString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLICMSSN101.Get_PCredSN: UnicodeString;
begin
  Result := ChildNodes['pCredSN'].Text;
end;

procedure TXMLICMSSN101.Set_PCredSN(Value: UnicodeString);
begin
  ChildNodes['pCredSN'].NodeValue := Value;
end;

function TXMLICMSSN101.Get_VCredICMSSN: UnicodeString;
begin
  Result := ChildNodes['vCredICMSSN'].Text;
end;

procedure TXMLICMSSN101.Set_VCredICMSSN(Value: UnicodeString);
begin
  ChildNodes['vCredICMSSN'].NodeValue := Value;
end;

{ TXMLICMSSN102 }

function TXMLICMSSN102.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSSN102.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSSN102.Get_CSOSN: UnicodeString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLICMSSN102.Set_CSOSN(Value: UnicodeString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

{ TXMLICMSSN201 }

function TXMLICMSSN201.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSSN201.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_CSOSN: UnicodeString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLICMSSN201.Set_CSOSN(Value: UnicodeString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_ModBCST: UnicodeString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMSSN201.Set_ModBCST(Value: UnicodeString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_PMVAST: UnicodeString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMSSN201.Set_PMVAST(Value: UnicodeString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_PRedBCST: UnicodeString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMSSN201.Set_PRedBCST(Value: UnicodeString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_VBCST: UnicodeString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMSSN201.Set_VBCST(Value: UnicodeString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_PICMSST: UnicodeString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMSSN201.Set_PICMSST(Value: UnicodeString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_VICMSST: UnicodeString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMSSN201.Set_VICMSST(Value: UnicodeString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_VBCFCPST: UnicodeString;
begin
  Result := ChildNodes['vBCFCPST'].Text;
end;

procedure TXMLICMSSN201.Set_VBCFCPST(Value: UnicodeString);
begin
  ChildNodes['vBCFCPST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_PFCPST: UnicodeString;
begin
  Result := ChildNodes['pFCPST'].Text;
end;

procedure TXMLICMSSN201.Set_PFCPST(Value: UnicodeString);
begin
  ChildNodes['pFCPST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_VFCPST: UnicodeString;
begin
  Result := ChildNodes['vFCPST'].Text;
end;

procedure TXMLICMSSN201.Set_VFCPST(Value: UnicodeString);
begin
  ChildNodes['vFCPST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_PCredSN: UnicodeString;
begin
  Result := ChildNodes['pCredSN'].Text;
end;

procedure TXMLICMSSN201.Set_PCredSN(Value: UnicodeString);
begin
  ChildNodes['pCredSN'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_VCredICMSSN: UnicodeString;
begin
  Result := ChildNodes['vCredICMSSN'].Text;
end;

procedure TXMLICMSSN201.Set_VCredICMSSN(Value: UnicodeString);
begin
  ChildNodes['vCredICMSSN'].NodeValue := Value;
end;

{ TXMLICMSSN202 }

function TXMLICMSSN202.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSSN202.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_CSOSN: UnicodeString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLICMSSN202.Set_CSOSN(Value: UnicodeString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_ModBCST: UnicodeString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMSSN202.Set_ModBCST(Value: UnicodeString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_PMVAST: UnicodeString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMSSN202.Set_PMVAST(Value: UnicodeString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_PRedBCST: UnicodeString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMSSN202.Set_PRedBCST(Value: UnicodeString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_VBCST: UnicodeString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMSSN202.Set_VBCST(Value: UnicodeString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_PICMSST: UnicodeString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMSSN202.Set_PICMSST(Value: UnicodeString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_VICMSST: UnicodeString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMSSN202.Set_VICMSST(Value: UnicodeString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_VBCFCPST: UnicodeString;
begin
  Result := ChildNodes['vBCFCPST'].Text;
end;

procedure TXMLICMSSN202.Set_VBCFCPST(Value: UnicodeString);
begin
  ChildNodes['vBCFCPST'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_PFCPST: UnicodeString;
begin
  Result := ChildNodes['pFCPST'].Text;
end;

procedure TXMLICMSSN202.Set_PFCPST(Value: UnicodeString);
begin
  ChildNodes['pFCPST'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_VFCPST: UnicodeString;
begin
  Result := ChildNodes['vFCPST'].Text;
end;

procedure TXMLICMSSN202.Set_VFCPST(Value: UnicodeString);
begin
  ChildNodes['vFCPST'].NodeValue := Value;
end;

{ TXMLICMSSN500 }

function TXMLICMSSN500.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSSN500.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSSN500.Get_CSOSN: UnicodeString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLICMSSN500.Set_CSOSN(Value: UnicodeString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLICMSSN500.Get_VBCSTRet: UnicodeString;
begin
  Result := ChildNodes['vBCSTRet'].Text;
end;

procedure TXMLICMSSN500.Set_VBCSTRet(Value: UnicodeString);
begin
  ChildNodes['vBCSTRet'].NodeValue := Value;
end;

function TXMLICMSSN500.Get_PST: UnicodeString;
begin
  Result := ChildNodes['pST'].Text;
end;

procedure TXMLICMSSN500.Set_PST(Value: UnicodeString);
begin
  ChildNodes['pST'].NodeValue := Value;
end;

function TXMLICMSSN500.Get_VICMSSTRet: UnicodeString;
begin
  Result := ChildNodes['vICMSSTRet'].Text;
end;

procedure TXMLICMSSN500.Set_VICMSSTRet(Value: UnicodeString);
begin
  ChildNodes['vICMSSTRet'].NodeValue := Value;
end;

function TXMLICMSSN500.Get_VBCFCPSTRet: UnicodeString;
begin
  Result := ChildNodes['vBCFCPSTRet'].Text;
end;

procedure TXMLICMSSN500.Set_VBCFCPSTRet(Value: UnicodeString);
begin
  ChildNodes['vBCFCPSTRet'].NodeValue := Value;
end;

function TXMLICMSSN500.Get_PFCPSTRet: UnicodeString;
begin
  Result := ChildNodes['pFCPSTRet'].Text;
end;

procedure TXMLICMSSN500.Set_PFCPSTRet(Value: UnicodeString);
begin
  ChildNodes['pFCPSTRet'].NodeValue := Value;
end;

function TXMLICMSSN500.Get_VFCPSTRet: UnicodeString;
begin
  Result := ChildNodes['vFCPSTRet'].Text;
end;

procedure TXMLICMSSN500.Set_VFCPSTRet(Value: UnicodeString);
begin
  ChildNodes['vFCPSTRet'].NodeValue := Value;
end;

{ TXMLICMSSN900 }

function TXMLICMSSN900.Get_Orig: UnicodeString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSSN900.Set_Orig(Value: UnicodeString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_CSOSN: UnicodeString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLICMSSN900.Set_CSOSN(Value: UnicodeString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_ModBC: UnicodeString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMSSN900.Set_ModBC(Value: UnicodeString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMSSN900.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_PRedBC: UnicodeString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLICMSSN900.Set_PRedBC(Value: UnicodeString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_PICMS: UnicodeString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMSSN900.Set_PICMS(Value: UnicodeString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_VICMS: UnicodeString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMSSN900.Set_VICMS(Value: UnicodeString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_ModBCST: UnicodeString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMSSN900.Set_ModBCST(Value: UnicodeString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_PMVAST: UnicodeString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMSSN900.Set_PMVAST(Value: UnicodeString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_PRedBCST: UnicodeString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMSSN900.Set_PRedBCST(Value: UnicodeString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_VBCST: UnicodeString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMSSN900.Set_VBCST(Value: UnicodeString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_PICMSST: UnicodeString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMSSN900.Set_PICMSST(Value: UnicodeString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_VICMSST: UnicodeString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMSSN900.Set_VICMSST(Value: UnicodeString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_VBCFCPST: UnicodeString;
begin
  Result := ChildNodes['vBCFCPST'].Text;
end;

procedure TXMLICMSSN900.Set_VBCFCPST(Value: UnicodeString);
begin
  ChildNodes['vBCFCPST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_PFCPST: UnicodeString;
begin
  Result := ChildNodes['pFCPST'].Text;
end;

procedure TXMLICMSSN900.Set_PFCPST(Value: UnicodeString);
begin
  ChildNodes['pFCPST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_VFCPST: UnicodeString;
begin
  Result := ChildNodes['vFCPST'].Text;
end;

procedure TXMLICMSSN900.Set_VFCPST(Value: UnicodeString);
begin
  ChildNodes['vFCPST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_PCredSN: UnicodeString;
begin
  Result := ChildNodes['pCredSN'].Text;
end;

procedure TXMLICMSSN900.Set_PCredSN(Value: UnicodeString);
begin
  ChildNodes['pCredSN'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_VCredICMSSN: UnicodeString;
begin
  Result := ChildNodes['vCredICMSSN'].Text;
end;

procedure TXMLICMSSN900.Set_VCredICMSSN(Value: UnicodeString);
begin
  ChildNodes['vCredICMSSN'].NodeValue := Value;
end;

{ TXMLTIpi }

procedure TXMLTIpi.AfterConstruction;
begin
  RegisterChildNode('IPITrib', TXMLIPITrib);
  RegisterChildNode('IPINT', TXMLIPINT);
  inherited;
end;

function TXMLTIpi.Get_CNPJProd: UnicodeString;
begin
  Result := ChildNodes['CNPJProd'].Text;
end;

procedure TXMLTIpi.Set_CNPJProd(Value: UnicodeString);
begin
  ChildNodes['CNPJProd'].NodeValue := Value;
end;

function TXMLTIpi.Get_CSelo: UnicodeString;
begin
  Result := ChildNodes['cSelo'].Text;
end;

procedure TXMLTIpi.Set_CSelo(Value: UnicodeString);
begin
  ChildNodes['cSelo'].NodeValue := Value;
end;

function TXMLTIpi.Get_QSelo: UnicodeString;
begin
  Result := ChildNodes['qSelo'].Text;
end;

procedure TXMLTIpi.Set_QSelo(Value: UnicodeString);
begin
  ChildNodes['qSelo'].NodeValue := Value;
end;

function TXMLTIpi.Get_CEnq: UnicodeString;
begin
  Result := ChildNodes['cEnq'].Text;
end;

procedure TXMLTIpi.Set_CEnq(Value: UnicodeString);
begin
  ChildNodes['cEnq'].NodeValue := Value;
end;

function TXMLTIpi.Get_IPITrib: IXMLIPITrib;
begin
  Result := ChildNodes['IPITrib'] as IXMLIPITrib;
end;

function TXMLTIpi.Get_IPINT: IXMLIPINT;
begin
  Result := ChildNodes['IPINT'] as IXMLIPINT;
end;

{ TXMLIPITrib }

function TXMLIPITrib.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLIPITrib.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLIPITrib.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLIPITrib.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLIPITrib.Get_PIPI: UnicodeString;
begin
  Result := ChildNodes['pIPI'].Text;
end;

procedure TXMLIPITrib.Set_PIPI(Value: UnicodeString);
begin
  ChildNodes['pIPI'].NodeValue := Value;
end;

function TXMLIPITrib.Get_QUnid: UnicodeString;
begin
  Result := ChildNodes['qUnid'].Text;
end;

procedure TXMLIPITrib.Set_QUnid(Value: UnicodeString);
begin
  ChildNodes['qUnid'].NodeValue := Value;
end;

function TXMLIPITrib.Get_VUnid: UnicodeString;
begin
  Result := ChildNodes['vUnid'].Text;
end;

procedure TXMLIPITrib.Set_VUnid(Value: UnicodeString);
begin
  ChildNodes['vUnid'].NodeValue := Value;
end;

function TXMLIPITrib.Get_VIPI: UnicodeString;
begin
  Result := ChildNodes['vIPI'].Text;
end;

procedure TXMLIPITrib.Set_VIPI(Value: UnicodeString);
begin
  ChildNodes['vIPI'].NodeValue := Value;
end;

{ TXMLIPINT }

function TXMLIPINT.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLIPINT.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

{ TXMLII }

function TXMLII.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLII.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLII.Get_VDespAdu: UnicodeString;
begin
  Result := ChildNodes['vDespAdu'].Text;
end;

procedure TXMLII.Set_VDespAdu(Value: UnicodeString);
begin
  ChildNodes['vDespAdu'].NodeValue := Value;
end;

function TXMLII.Get_VII: UnicodeString;
begin
  Result := ChildNodes['vII'].Text;
end;

procedure TXMLII.Set_VII(Value: UnicodeString);
begin
  ChildNodes['vII'].NodeValue := Value;
end;

function TXMLII.Get_VIOF: UnicodeString;
begin
  Result := ChildNodes['vIOF'].Text;
end;

procedure TXMLII.Set_VIOF(Value: UnicodeString);
begin
  ChildNodes['vIOF'].NodeValue := Value;
end;

{ TXMLISSQN }

function TXMLISSQN.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLISSQN.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLISSQN.Get_VAliq: UnicodeString;
begin
  Result := ChildNodes['vAliq'].Text;
end;

procedure TXMLISSQN.Set_VAliq(Value: UnicodeString);
begin
  ChildNodes['vAliq'].NodeValue := Value;
end;

function TXMLISSQN.Get_VISSQN: UnicodeString;
begin
  Result := ChildNodes['vISSQN'].Text;
end;

procedure TXMLISSQN.Set_VISSQN(Value: UnicodeString);
begin
  ChildNodes['vISSQN'].NodeValue := Value;
end;

function TXMLISSQN.Get_CMunFG: UnicodeString;
begin
  Result := ChildNodes['cMunFG'].Text;
end;

procedure TXMLISSQN.Set_CMunFG(Value: UnicodeString);
begin
  ChildNodes['cMunFG'].NodeValue := Value;
end;

function TXMLISSQN.Get_CListServ: UnicodeString;
begin
  Result := ChildNodes['cListServ'].Text;
end;

procedure TXMLISSQN.Set_CListServ(Value: UnicodeString);
begin
  ChildNodes['cListServ'].NodeValue := Value;
end;

function TXMLISSQN.Get_VDeducao: UnicodeString;
begin
  Result := ChildNodes['vDeducao'].Text;
end;

procedure TXMLISSQN.Set_VDeducao(Value: UnicodeString);
begin
  ChildNodes['vDeducao'].NodeValue := Value;
end;

function TXMLISSQN.Get_VOutro: UnicodeString;
begin
  Result := ChildNodes['vOutro'].Text;
end;

procedure TXMLISSQN.Set_VOutro(Value: UnicodeString);
begin
  ChildNodes['vOutro'].NodeValue := Value;
end;

function TXMLISSQN.Get_VDescIncond: UnicodeString;
begin
  Result := ChildNodes['vDescIncond'].Text;
end;

procedure TXMLISSQN.Set_VDescIncond(Value: UnicodeString);
begin
  ChildNodes['vDescIncond'].NodeValue := Value;
end;

function TXMLISSQN.Get_VDescCond: UnicodeString;
begin
  Result := ChildNodes['vDescCond'].Text;
end;

procedure TXMLISSQN.Set_VDescCond(Value: UnicodeString);
begin
  ChildNodes['vDescCond'].NodeValue := Value;
end;

function TXMLISSQN.Get_VISSRet: UnicodeString;
begin
  Result := ChildNodes['vISSRet'].Text;
end;

procedure TXMLISSQN.Set_VISSRet(Value: UnicodeString);
begin
  ChildNodes['vISSRet'].NodeValue := Value;
end;

function TXMLISSQN.Get_IndISS: UnicodeString;
begin
  Result := ChildNodes['indISS'].Text;
end;

procedure TXMLISSQN.Set_IndISS(Value: UnicodeString);
begin
  ChildNodes['indISS'].NodeValue := Value;
end;

function TXMLISSQN.Get_CServico: UnicodeString;
begin
  Result := ChildNodes['cServico'].Text;
end;

procedure TXMLISSQN.Set_CServico(Value: UnicodeString);
begin
  ChildNodes['cServico'].NodeValue := Value;
end;

function TXMLISSQN.Get_CMun: UnicodeString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLISSQN.Set_CMun(Value: UnicodeString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLISSQN.Get_CPais: UnicodeString;
begin
  Result := ChildNodes['cPais'].Text;
end;

procedure TXMLISSQN.Set_CPais(Value: UnicodeString);
begin
  ChildNodes['cPais'].NodeValue := Value;
end;

function TXMLISSQN.Get_NProcesso: UnicodeString;
begin
  Result := ChildNodes['nProcesso'].Text;
end;

procedure TXMLISSQN.Set_NProcesso(Value: UnicodeString);
begin
  ChildNodes['nProcesso'].NodeValue := Value;
end;

function TXMLISSQN.Get_IndIncentivo: UnicodeString;
begin
  Result := ChildNodes['indIncentivo'].Text;
end;

procedure TXMLISSQN.Set_IndIncentivo(Value: UnicodeString);
begin
  ChildNodes['indIncentivo'].NodeValue := Value;
end;

{ TXMLPIS }

procedure TXMLPIS.AfterConstruction;
begin
  RegisterChildNode('PISAliq', TXMLPISAliq);
  RegisterChildNode('PISQtde', TXMLPISQtde);
  RegisterChildNode('PISNT', TXMLPISNT);
  RegisterChildNode('PISOutr', TXMLPISOutr);
  inherited;
end;

function TXMLPIS.Get_PISAliq: IXMLPISAliq;
begin
  Result := ChildNodes['PISAliq'] as IXMLPISAliq;
end;

function TXMLPIS.Get_PISQtde: IXMLPISQtde;
begin
  Result := ChildNodes['PISQtde'] as IXMLPISQtde;
end;

function TXMLPIS.Get_PISNT: IXMLPISNT;
begin
  Result := ChildNodes['PISNT'] as IXMLPISNT;
end;

function TXMLPIS.Get_PISOutr: IXMLPISOutr;
begin
  Result := ChildNodes['PISOutr'] as IXMLPISOutr;
end;

{ TXMLPISAliq }

function TXMLPISAliq.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLPISAliq.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLPISAliq.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLPISAliq.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLPISAliq.Get_PPIS: UnicodeString;
begin
  Result := ChildNodes['pPIS'].Text;
end;

procedure TXMLPISAliq.Set_PPIS(Value: UnicodeString);
begin
  ChildNodes['pPIS'].NodeValue := Value;
end;

function TXMLPISAliq.Get_VPIS: UnicodeString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLPISAliq.Set_VPIS(Value: UnicodeString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

{ TXMLPISQtde }

function TXMLPISQtde.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLPISQtde.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLPISQtde.Get_QBCProd: UnicodeString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLPISQtde.Set_QBCProd(Value: UnicodeString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLPISQtde.Get_VAliqProd: UnicodeString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLPISQtde.Set_VAliqProd(Value: UnicodeString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLPISQtde.Get_VPIS: UnicodeString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLPISQtde.Set_VPIS(Value: UnicodeString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

{ TXMLPISNT }

function TXMLPISNT.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLPISNT.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

{ TXMLPISOutr }

function TXMLPISOutr.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLPISOutr.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLPISOutr.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLPISOutr.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLPISOutr.Get_PPIS: UnicodeString;
begin
  Result := ChildNodes['pPIS'].Text;
end;

procedure TXMLPISOutr.Set_PPIS(Value: UnicodeString);
begin
  ChildNodes['pPIS'].NodeValue := Value;
end;

function TXMLPISOutr.Get_QBCProd: UnicodeString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLPISOutr.Set_QBCProd(Value: UnicodeString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLPISOutr.Get_VAliqProd: UnicodeString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLPISOutr.Set_VAliqProd(Value: UnicodeString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLPISOutr.Get_VPIS: UnicodeString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLPISOutr.Set_VPIS(Value: UnicodeString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

{ TXMLPISST }

function TXMLPISST.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLPISST.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLPISST.Get_PPIS: UnicodeString;
begin
  Result := ChildNodes['pPIS'].Text;
end;

procedure TXMLPISST.Set_PPIS(Value: UnicodeString);
begin
  ChildNodes['pPIS'].NodeValue := Value;
end;

function TXMLPISST.Get_QBCProd: UnicodeString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLPISST.Set_QBCProd(Value: UnicodeString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLPISST.Get_VAliqProd: UnicodeString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLPISST.Set_VAliqProd(Value: UnicodeString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLPISST.Get_VPIS: UnicodeString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLPISST.Set_VPIS(Value: UnicodeString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

{ TXMLCOFINS }

procedure TXMLCOFINS.AfterConstruction;
begin
  RegisterChildNode('COFINSAliq', TXMLCOFINSAliq);
  RegisterChildNode('COFINSQtde', TXMLCOFINSQtde);
  RegisterChildNode('COFINSNT', TXMLCOFINSNT);
  RegisterChildNode('COFINSOutr', TXMLCOFINSOutr);
  inherited;
end;

function TXMLCOFINS.Get_COFINSAliq: IXMLCOFINSAliq;
begin
  Result := ChildNodes['COFINSAliq'] as IXMLCOFINSAliq;
end;

function TXMLCOFINS.Get_COFINSQtde: IXMLCOFINSQtde;
begin
  Result := ChildNodes['COFINSQtde'] as IXMLCOFINSQtde;
end;

function TXMLCOFINS.Get_COFINSNT: IXMLCOFINSNT;
begin
  Result := ChildNodes['COFINSNT'] as IXMLCOFINSNT;
end;

function TXMLCOFINS.Get_COFINSOutr: IXMLCOFINSOutr;
begin
  Result := ChildNodes['COFINSOutr'] as IXMLCOFINSOutr;
end;

{ TXMLCOFINSAliq }

function TXMLCOFINSAliq.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLCOFINSAliq.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLCOFINSAliq.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLCOFINSAliq.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLCOFINSAliq.Get_PCOFINS: UnicodeString;
begin
  Result := ChildNodes['pCOFINS'].Text;
end;

procedure TXMLCOFINSAliq.Set_PCOFINS(Value: UnicodeString);
begin
  ChildNodes['pCOFINS'].NodeValue := Value;
end;

function TXMLCOFINSAliq.Get_VCOFINS: UnicodeString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLCOFINSAliq.Set_VCOFINS(Value: UnicodeString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

{ TXMLCOFINSQtde }

function TXMLCOFINSQtde.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLCOFINSQtde.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLCOFINSQtde.Get_QBCProd: UnicodeString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLCOFINSQtde.Set_QBCProd(Value: UnicodeString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLCOFINSQtde.Get_VAliqProd: UnicodeString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLCOFINSQtde.Set_VAliqProd(Value: UnicodeString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLCOFINSQtde.Get_VCOFINS: UnicodeString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLCOFINSQtde.Set_VCOFINS(Value: UnicodeString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

{ TXMLCOFINSNT }

function TXMLCOFINSNT.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLCOFINSNT.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

{ TXMLCOFINSOutr }

function TXMLCOFINSOutr.Get_CST: UnicodeString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLCOFINSOutr.Set_CST(Value: UnicodeString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLCOFINSOutr.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLCOFINSOutr.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLCOFINSOutr.Get_PCOFINS: UnicodeString;
begin
  Result := ChildNodes['pCOFINS'].Text;
end;

procedure TXMLCOFINSOutr.Set_PCOFINS(Value: UnicodeString);
begin
  ChildNodes['pCOFINS'].NodeValue := Value;
end;

function TXMLCOFINSOutr.Get_QBCProd: UnicodeString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLCOFINSOutr.Set_QBCProd(Value: UnicodeString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLCOFINSOutr.Get_VAliqProd: UnicodeString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLCOFINSOutr.Set_VAliqProd(Value: UnicodeString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLCOFINSOutr.Get_VCOFINS: UnicodeString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLCOFINSOutr.Set_VCOFINS(Value: UnicodeString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

{ TXMLCOFINSST }

function TXMLCOFINSST.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLCOFINSST.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLCOFINSST.Get_PCOFINS: UnicodeString;
begin
  Result := ChildNodes['pCOFINS'].Text;
end;

procedure TXMLCOFINSST.Set_PCOFINS(Value: UnicodeString);
begin
  ChildNodes['pCOFINS'].NodeValue := Value;
end;

function TXMLCOFINSST.Get_QBCProd: UnicodeString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLCOFINSST.Set_QBCProd(Value: UnicodeString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLCOFINSST.Get_VAliqProd: UnicodeString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLCOFINSST.Set_VAliqProd(Value: UnicodeString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLCOFINSST.Get_VCOFINS: UnicodeString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLCOFINSST.Set_VCOFINS(Value: UnicodeString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

{ TXMLICMSUFDest }

function TXMLICMSUFDest.Get_VBCUFDest: UnicodeString;
begin
  Result := ChildNodes['vBCUFDest'].Text;
end;

procedure TXMLICMSUFDest.Set_VBCUFDest(Value: UnicodeString);
begin
  ChildNodes['vBCUFDest'].NodeValue := Value;
end;

function TXMLICMSUFDest.Get_VBCFCPUFDest: UnicodeString;
begin
  Result := ChildNodes['vBCFCPUFDest'].Text;
end;

procedure TXMLICMSUFDest.Set_VBCFCPUFDest(Value: UnicodeString);
begin
  ChildNodes['vBCFCPUFDest'].NodeValue := Value;
end;

function TXMLICMSUFDest.Get_PFCPUFDest: UnicodeString;
begin
  Result := ChildNodes['pFCPUFDest'].Text;
end;

procedure TXMLICMSUFDest.Set_PFCPUFDest(Value: UnicodeString);
begin
  ChildNodes['pFCPUFDest'].NodeValue := Value;
end;

function TXMLICMSUFDest.Get_PICMSUFDest: UnicodeString;
begin
  Result := ChildNodes['pICMSUFDest'].Text;
end;

procedure TXMLICMSUFDest.Set_PICMSUFDest(Value: UnicodeString);
begin
  ChildNodes['pICMSUFDest'].NodeValue := Value;
end;

function TXMLICMSUFDest.Get_PICMSInter: UnicodeString;
begin
  Result := ChildNodes['pICMSInter'].Text;
end;

procedure TXMLICMSUFDest.Set_PICMSInter(Value: UnicodeString);
begin
  ChildNodes['pICMSInter'].NodeValue := Value;
end;

function TXMLICMSUFDest.Get_PICMSInterPart: UnicodeString;
begin
  Result := ChildNodes['pICMSInterPart'].Text;
end;

procedure TXMLICMSUFDest.Set_PICMSInterPart(Value: UnicodeString);
begin
  ChildNodes['pICMSInterPart'].NodeValue := Value;
end;

function TXMLICMSUFDest.Get_VFCPUFDest: UnicodeString;
begin
  Result := ChildNodes['vFCPUFDest'].Text;
end;

procedure TXMLICMSUFDest.Set_VFCPUFDest(Value: UnicodeString);
begin
  ChildNodes['vFCPUFDest'].NodeValue := Value;
end;

function TXMLICMSUFDest.Get_VICMSUFDest: UnicodeString;
begin
  Result := ChildNodes['vICMSUFDest'].Text;
end;

procedure TXMLICMSUFDest.Set_VICMSUFDest(Value: UnicodeString);
begin
  ChildNodes['vICMSUFDest'].NodeValue := Value;
end;

function TXMLICMSUFDest.Get_VICMSUFRemet: UnicodeString;
begin
  Result := ChildNodes['vICMSUFRemet'].Text;
end;

procedure TXMLICMSUFDest.Set_VICMSUFRemet(Value: UnicodeString);
begin
  ChildNodes['vICMSUFRemet'].NodeValue := Value;
end;

{ TXMLImpostoDevol }

procedure TXMLImpostoDevol.AfterConstruction;
begin
  RegisterChildNode('IPI', TXMLIPI);
  inherited;
end;

function TXMLImpostoDevol.Get_PDevol: UnicodeString;
begin
  Result := ChildNodes['pDevol'].Text;
end;

procedure TXMLImpostoDevol.Set_PDevol(Value: UnicodeString);
begin
  ChildNodes['pDevol'].NodeValue := Value;
end;

function TXMLImpostoDevol.Get_IPI: IXMLIPI;
begin
  Result := ChildNodes['IPI'] as IXMLIPI;
end;

{ TXMLIPI }

function TXMLIPI.Get_VIPIDevol: UnicodeString;
begin
  Result := ChildNodes['vIPIDevol'].Text;
end;

procedure TXMLIPI.Set_VIPIDevol(Value: UnicodeString);
begin
  ChildNodes['vIPIDevol'].NodeValue := Value;
end;

{ TXMLTotal }

procedure TXMLTotal.AfterConstruction;
begin
  RegisterChildNode('ICMSTot', TXMLICMSTot);
  RegisterChildNode('ISSQNtot', TXMLISSQNtot);
  RegisterChildNode('retTrib', TXMLRetTrib);
  inherited;
end;

function TXMLTotal.Get_ICMSTot: IXMLICMSTot;
begin
  Result := ChildNodes['ICMSTot'] as IXMLICMSTot;
end;

function TXMLTotal.Get_ISSQNtot: IXMLISSQNtot;
begin
  Result := ChildNodes['ISSQNtot'] as IXMLISSQNtot;
end;

function TXMLTotal.Get_RetTrib: IXMLRetTrib;
begin
  Result := ChildNodes['retTrib'] as IXMLRetTrib;
end;

{ TXMLICMSTot }

function TXMLICMSTot.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMSTot.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VICMS: UnicodeString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMSTot.Set_VICMS(Value: UnicodeString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VICMSDeson: UnicodeString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLICMSTot.Set_VICMSDeson(Value: UnicodeString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VFCPUFDest: UnicodeString;
begin
  Result := ChildNodes['vFCPUFDest'].Text;
end;

procedure TXMLICMSTot.Set_VFCPUFDest(Value: UnicodeString);
begin
  ChildNodes['vFCPUFDest'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VICMSUFDest: UnicodeString;
begin
  Result := ChildNodes['vICMSUFDest'].Text;
end;

procedure TXMLICMSTot.Set_VICMSUFDest(Value: UnicodeString);
begin
  ChildNodes['vICMSUFDest'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VICMSUFRemet: UnicodeString;
begin
  Result := ChildNodes['vICMSUFRemet'].Text;
end;

procedure TXMLICMSTot.Set_VICMSUFRemet(Value: UnicodeString);
begin
  ChildNodes['vICMSUFRemet'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VFCP: UnicodeString;
begin
  Result := ChildNodes['vFCP'].Text;
end;

procedure TXMLICMSTot.Set_VFCP(Value: UnicodeString);
begin
  ChildNodes['vFCP'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VBCST: UnicodeString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMSTot.Set_VBCST(Value: UnicodeString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VST: UnicodeString;
begin
  Result := ChildNodes['vST'].Text;
end;

procedure TXMLICMSTot.Set_VST(Value: UnicodeString);
begin
  ChildNodes['vST'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VFCPST: UnicodeString;
begin
  Result := ChildNodes['vFCPST'].Text;
end;

procedure TXMLICMSTot.Set_VFCPST(Value: UnicodeString);
begin
  ChildNodes['vFCPST'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VFCPSTRet: UnicodeString;
begin
  Result := ChildNodes['vFCPSTRet'].Text;
end;

procedure TXMLICMSTot.Set_VFCPSTRet(Value: UnicodeString);
begin
  ChildNodes['vFCPSTRet'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VProd: UnicodeString;
begin
  Result := ChildNodes['vProd'].Text;
end;

procedure TXMLICMSTot.Set_VProd(Value: UnicodeString);
begin
  ChildNodes['vProd'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VFrete: UnicodeString;
begin
  Result := ChildNodes['vFrete'].Text;
end;

procedure TXMLICMSTot.Set_VFrete(Value: UnicodeString);
begin
  ChildNodes['vFrete'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VSeg: UnicodeString;
begin
  Result := ChildNodes['vSeg'].Text;
end;

procedure TXMLICMSTot.Set_VSeg(Value: UnicodeString);
begin
  ChildNodes['vSeg'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VDesc: UnicodeString;
begin
  Result := ChildNodes['vDesc'].Text;
end;

procedure TXMLICMSTot.Set_VDesc(Value: UnicodeString);
begin
  ChildNodes['vDesc'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VII: UnicodeString;
begin
  Result := ChildNodes['vII'].Text;
end;

procedure TXMLICMSTot.Set_VII(Value: UnicodeString);
begin
  ChildNodes['vII'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VIPI: UnicodeString;
begin
  Result := ChildNodes['vIPI'].Text;
end;

procedure TXMLICMSTot.Set_VIPI(Value: UnicodeString);
begin
  ChildNodes['vIPI'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VIPIDevol: UnicodeString;
begin
  Result := ChildNodes['vIPIDevol'].Text;
end;

procedure TXMLICMSTot.Set_VIPIDevol(Value: UnicodeString);
begin
  ChildNodes['vIPIDevol'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VPIS: UnicodeString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLICMSTot.Set_VPIS(Value: UnicodeString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VCOFINS: UnicodeString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLICMSTot.Set_VCOFINS(Value: UnicodeString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VOutro: UnicodeString;
begin
  Result := ChildNodes['vOutro'].Text;
end;

procedure TXMLICMSTot.Set_VOutro(Value: UnicodeString);
begin
  ChildNodes['vOutro'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VNF: UnicodeString;
begin
  Result := ChildNodes['vNF'].Text;
end;

procedure TXMLICMSTot.Set_VNF(Value: UnicodeString);
begin
  ChildNodes['vNF'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VTotTrib: UnicodeString;
begin
  Result := ChildNodes['vTotTrib'].Text;
end;

procedure TXMLICMSTot.Set_VTotTrib(Value: UnicodeString);
begin
  ChildNodes['vTotTrib'].NodeValue := Value;
end;

{ TXMLISSQNtot }

function TXMLISSQNtot.Get_VServ: UnicodeString;
begin
  Result := ChildNodes['vServ'].Text;
end;

procedure TXMLISSQNtot.Set_VServ(Value: UnicodeString);
begin
  ChildNodes['vServ'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VBC: UnicodeString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLISSQNtot.Set_VBC(Value: UnicodeString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VISS: UnicodeString;
begin
  Result := ChildNodes['vISS'].Text;
end;

procedure TXMLISSQNtot.Set_VISS(Value: UnicodeString);
begin
  ChildNodes['vISS'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VPIS: UnicodeString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLISSQNtot.Set_VPIS(Value: UnicodeString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VCOFINS: UnicodeString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLISSQNtot.Set_VCOFINS(Value: UnicodeString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_DCompet: UnicodeString;
begin
  Result := ChildNodes['dCompet'].Text;
end;

procedure TXMLISSQNtot.Set_DCompet(Value: UnicodeString);
begin
  ChildNodes['dCompet'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VDeducao: UnicodeString;
begin
  Result := ChildNodes['vDeducao'].Text;
end;

procedure TXMLISSQNtot.Set_VDeducao(Value: UnicodeString);
begin
  ChildNodes['vDeducao'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VOutro: UnicodeString;
begin
  Result := ChildNodes['vOutro'].Text;
end;

procedure TXMLISSQNtot.Set_VOutro(Value: UnicodeString);
begin
  ChildNodes['vOutro'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VDescIncond: UnicodeString;
begin
  Result := ChildNodes['vDescIncond'].Text;
end;

procedure TXMLISSQNtot.Set_VDescIncond(Value: UnicodeString);
begin
  ChildNodes['vDescIncond'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VDescCond: UnicodeString;
begin
  Result := ChildNodes['vDescCond'].Text;
end;

procedure TXMLISSQNtot.Set_VDescCond(Value: UnicodeString);
begin
  ChildNodes['vDescCond'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VISSRet: UnicodeString;
begin
  Result := ChildNodes['vISSRet'].Text;
end;

procedure TXMLISSQNtot.Set_VISSRet(Value: UnicodeString);
begin
  ChildNodes['vISSRet'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_CRegTrib: UnicodeString;
begin
  Result := ChildNodes['cRegTrib'].Text;
end;

procedure TXMLISSQNtot.Set_CRegTrib(Value: UnicodeString);
begin
  ChildNodes['cRegTrib'].NodeValue := Value;
end;

{ TXMLRetTrib }

function TXMLRetTrib.Get_VRetPIS: UnicodeString;
begin
  Result := ChildNodes['vRetPIS'].Text;
end;

procedure TXMLRetTrib.Set_VRetPIS(Value: UnicodeString);
begin
  ChildNodes['vRetPIS'].NodeValue := Value;
end;

function TXMLRetTrib.Get_VRetCOFINS: UnicodeString;
begin
  Result := ChildNodes['vRetCOFINS'].Text;
end;

procedure TXMLRetTrib.Set_VRetCOFINS(Value: UnicodeString);
begin
  ChildNodes['vRetCOFINS'].NodeValue := Value;
end;

function TXMLRetTrib.Get_VRetCSLL: UnicodeString;
begin
  Result := ChildNodes['vRetCSLL'].Text;
end;

procedure TXMLRetTrib.Set_VRetCSLL(Value: UnicodeString);
begin
  ChildNodes['vRetCSLL'].NodeValue := Value;
end;

function TXMLRetTrib.Get_VBCIRRF: UnicodeString;
begin
  Result := ChildNodes['vBCIRRF'].Text;
end;

procedure TXMLRetTrib.Set_VBCIRRF(Value: UnicodeString);
begin
  ChildNodes['vBCIRRF'].NodeValue := Value;
end;

function TXMLRetTrib.Get_VIRRF: UnicodeString;
begin
  Result := ChildNodes['vIRRF'].Text;
end;

procedure TXMLRetTrib.Set_VIRRF(Value: UnicodeString);
begin
  ChildNodes['vIRRF'].NodeValue := Value;
end;

function TXMLRetTrib.Get_VBCRetPrev: UnicodeString;
begin
  Result := ChildNodes['vBCRetPrev'].Text;
end;

procedure TXMLRetTrib.Set_VBCRetPrev(Value: UnicodeString);
begin
  ChildNodes['vBCRetPrev'].NodeValue := Value;
end;

function TXMLRetTrib.Get_VRetPrev: UnicodeString;
begin
  Result := ChildNodes['vRetPrev'].Text;
end;

procedure TXMLRetTrib.Set_VRetPrev(Value: UnicodeString);
begin
  ChildNodes['vRetPrev'].NodeValue := Value;
end;

{ TXMLTransp }

procedure TXMLTransp.AfterConstruction;
begin
  RegisterChildNode('transporta', TXMLTransporta);
  RegisterChildNode('retTransp', TXMLRetTransp);
  RegisterChildNode('veicTransp', TXMLTVeiculo);
  RegisterChildNode('reboque', TXMLTVeiculo);
  RegisterChildNode('vol', TXMLVol);
  FReboque := CreateCollection(TXMLTVeiculoList, IXMLTVeiculo, 'reboque') as IXMLTVeiculoList;
  FVol := CreateCollection(TXMLVolList, IXMLVol, 'vol') as IXMLVolList;
  inherited;
end;

function TXMLTransp.Get_ModFrete: UnicodeString;
begin
  Result := ChildNodes['modFrete'].Text;
end;

procedure TXMLTransp.Set_ModFrete(Value: UnicodeString);
begin
  ChildNodes['modFrete'].NodeValue := Value;
end;

function TXMLTransp.Get_Transporta: IXMLTransporta;
begin
  Result := ChildNodes['transporta'] as IXMLTransporta;
end;

function TXMLTransp.Get_RetTransp: IXMLRetTransp;
begin
  Result := ChildNodes['retTransp'] as IXMLRetTransp;
end;

function TXMLTransp.Get_VeicTransp: IXMLTVeiculo;
begin
  Result := ChildNodes['veicTransp'] as IXMLTVeiculo;
end;

function TXMLTransp.Get_Reboque: IXMLTVeiculoList;
begin
  Result := FReboque;
end;

function TXMLTransp.Get_Vagao: UnicodeString;
begin
  Result := ChildNodes['vagao'].Text;
end;

procedure TXMLTransp.Set_Vagao(Value: UnicodeString);
begin
  ChildNodes['vagao'].NodeValue := Value;
end;

function TXMLTransp.Get_Balsa: UnicodeString;
begin
  Result := ChildNodes['balsa'].Text;
end;

procedure TXMLTransp.Set_Balsa(Value: UnicodeString);
begin
  ChildNodes['balsa'].NodeValue := Value;
end;

function TXMLTransp.Get_Vol: IXMLVolList;
begin
  Result := FVol;
end;

{ TXMLTransporta }

function TXMLTransporta.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTransporta.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTransporta.Get_CPF: UnicodeString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLTransporta.Set_CPF(Value: UnicodeString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLTransporta.Get_XNome: UnicodeString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLTransporta.Set_XNome(Value: UnicodeString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLTransporta.Get_IE: UnicodeString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLTransporta.Set_IE(Value: UnicodeString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLTransporta.Get_XEnder: UnicodeString;
begin
  Result := ChildNodes['xEnder'].Text;
end;

procedure TXMLTransporta.Set_XEnder(Value: UnicodeString);
begin
  ChildNodes['xEnder'].NodeValue := Value;
end;

function TXMLTransporta.Get_XMun: UnicodeString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTransporta.Set_XMun(Value: UnicodeString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTransporta.Get_UF: UnicodeString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTransporta.Set_UF(Value: UnicodeString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

{ TXMLRetTransp }

function TXMLRetTransp.Get_VServ: UnicodeString;
begin
  Result := ChildNodes['vServ'].Text;
end;

procedure TXMLRetTransp.Set_VServ(Value: UnicodeString);
begin
  ChildNodes['vServ'].NodeValue := Value;
end;

function TXMLRetTransp.Get_VBCRet: UnicodeString;
begin
  Result := ChildNodes['vBCRet'].Text;
end;

procedure TXMLRetTransp.Set_VBCRet(Value: UnicodeString);
begin
  ChildNodes['vBCRet'].NodeValue := Value;
end;

function TXMLRetTransp.Get_PICMSRet: UnicodeString;
begin
  Result := ChildNodes['pICMSRet'].Text;
end;

procedure TXMLRetTransp.Set_PICMSRet(Value: UnicodeString);
begin
  ChildNodes['pICMSRet'].NodeValue := Value;
end;

function TXMLRetTransp.Get_VICMSRet: UnicodeString;
begin
  Result := ChildNodes['vICMSRet'].Text;
end;

procedure TXMLRetTransp.Set_VICMSRet(Value: UnicodeString);
begin
  ChildNodes['vICMSRet'].NodeValue := Value;
end;

function TXMLRetTransp.Get_CFOP: UnicodeString;
begin
  Result := ChildNodes['CFOP'].Text;
end;

procedure TXMLRetTransp.Set_CFOP(Value: UnicodeString);
begin
  ChildNodes['CFOP'].NodeValue := Value;
end;

function TXMLRetTransp.Get_CMunFG: UnicodeString;
begin
  Result := ChildNodes['cMunFG'].Text;
end;

procedure TXMLRetTransp.Set_CMunFG(Value: UnicodeString);
begin
  ChildNodes['cMunFG'].NodeValue := Value;
end;

{ TXMLTVeiculo }

function TXMLTVeiculo.Get_Placa: UnicodeString;
begin
  Result := ChildNodes['placa'].Text;
end;

procedure TXMLTVeiculo.Set_Placa(Value: UnicodeString);
begin
  ChildNodes['placa'].NodeValue := Value;
end;

function TXMLTVeiculo.Get_UF: UnicodeString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTVeiculo.Set_UF(Value: UnicodeString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLTVeiculo.Get_RNTC: UnicodeString;
begin
  Result := ChildNodes['RNTC'].Text;
end;

procedure TXMLTVeiculo.Set_RNTC(Value: UnicodeString);
begin
  ChildNodes['RNTC'].NodeValue := Value;
end;

{ TXMLTVeiculoList }

function TXMLTVeiculoList.Add: IXMLTVeiculo;
begin
  Result := AddItem(-1) as IXMLTVeiculo;
end;

function TXMLTVeiculoList.Insert(const Index: Integer): IXMLTVeiculo;
begin
  Result := AddItem(Index) as IXMLTVeiculo;
end;

function TXMLTVeiculoList.Get_Item(Index: Integer): IXMLTVeiculo;
begin
  Result := List[Index] as IXMLTVeiculo;
end;

{ TXMLVol }

procedure TXMLVol.AfterConstruction;
begin
  RegisterChildNode('lacres', TXMLLacres);
  FLacres := CreateCollection(TXMLLacresList, IXMLLacres, 'lacres') as IXMLLacresList;
  inherited;
end;

function TXMLVol.Get_QVol: UnicodeString;
begin
  Result := ChildNodes['qVol'].Text;
end;

procedure TXMLVol.Set_QVol(Value: UnicodeString);
begin
  ChildNodes['qVol'].NodeValue := Value;
end;

function TXMLVol.Get_Esp: UnicodeString;
begin
  Result := ChildNodes['esp'].Text;
end;

procedure TXMLVol.Set_Esp(Value: UnicodeString);
begin
  ChildNodes['esp'].NodeValue := Value;
end;

function TXMLVol.Get_Marca: UnicodeString;
begin
  Result := ChildNodes['marca'].Text;
end;

procedure TXMLVol.Set_Marca(Value: UnicodeString);
begin
  ChildNodes['marca'].NodeValue := Value;
end;

function TXMLVol.Get_NVol: UnicodeString;
begin
  Result := ChildNodes['nVol'].Text;
end;

procedure TXMLVol.Set_NVol(Value: UnicodeString);
begin
  ChildNodes['nVol'].NodeValue := Value;
end;

function TXMLVol.Get_PesoL: UnicodeString;
begin
  Result := ChildNodes['pesoL'].Text;
end;

procedure TXMLVol.Set_PesoL(Value: UnicodeString);
begin
  ChildNodes['pesoL'].NodeValue := Value;
end;

function TXMLVol.Get_PesoB: UnicodeString;
begin
  Result := ChildNodes['pesoB'].Text;
end;

procedure TXMLVol.Set_PesoB(Value: UnicodeString);
begin
  ChildNodes['pesoB'].NodeValue := Value;
end;

function TXMLVol.Get_Lacres: IXMLLacresList;
begin
  Result := FLacres;
end;

{ TXMLVolList }

function TXMLVolList.Add: IXMLVol;
begin
  Result := AddItem(-1) as IXMLVol;
end;

function TXMLVolList.Insert(const Index: Integer): IXMLVol;
begin
  Result := AddItem(Index) as IXMLVol;
end;

function TXMLVolList.Get_Item(Index: Integer): IXMLVol;
begin
  Result := List[Index] as IXMLVol;
end;

{ TXMLLacres }

function TXMLLacres.Get_NLacre: UnicodeString;
begin
  Result := ChildNodes['nLacre'].Text;
end;

procedure TXMLLacres.Set_NLacre(Value: UnicodeString);
begin
  ChildNodes['nLacre'].NodeValue := Value;
end;

{ TXMLLacresList }

function TXMLLacresList.Add: IXMLLacres;
begin
  Result := AddItem(-1) as IXMLLacres;
end;

function TXMLLacresList.Insert(const Index: Integer): IXMLLacres;
begin
  Result := AddItem(Index) as IXMLLacres;
end;

function TXMLLacresList.Get_Item(Index: Integer): IXMLLacres;
begin
  Result := List[Index] as IXMLLacres;
end;

{ TXMLCobr }

procedure TXMLCobr.AfterConstruction;
begin
  RegisterChildNode('fat', TXMLFat);
  RegisterChildNode('dup', TXMLDup);
  FDup := CreateCollection(TXMLDupList, IXMLDup, 'dup') as IXMLDupList;
  inherited;
end;

function TXMLCobr.Get_Fat: IXMLFat;
begin
  Result := ChildNodes['fat'] as IXMLFat;
end;

function TXMLCobr.Get_Dup: IXMLDupList;
begin
  Result := FDup;
end;

{ TXMLFat }

function TXMLFat.Get_NFat: UnicodeString;
begin
  Result := ChildNodes['nFat'].Text;
end;

procedure TXMLFat.Set_NFat(Value: UnicodeString);
begin
  ChildNodes['nFat'].NodeValue := Value;
end;

function TXMLFat.Get_VOrig: UnicodeString;
begin
  Result := ChildNodes['vOrig'].Text;
end;

procedure TXMLFat.Set_VOrig(Value: UnicodeString);
begin
  ChildNodes['vOrig'].NodeValue := Value;
end;

function TXMLFat.Get_VDesc: UnicodeString;
begin
  Result := ChildNodes['vDesc'].Text;
end;

procedure TXMLFat.Set_VDesc(Value: UnicodeString);
begin
  ChildNodes['vDesc'].NodeValue := Value;
end;

function TXMLFat.Get_VLiq: UnicodeString;
begin
  Result := ChildNodes['vLiq'].Text;
end;

procedure TXMLFat.Set_VLiq(Value: UnicodeString);
begin
  ChildNodes['vLiq'].NodeValue := Value;
end;

{ TXMLDup }

function TXMLDup.Get_NDup: UnicodeString;
begin
  Result := ChildNodes['nDup'].Text;
end;

procedure TXMLDup.Set_NDup(Value: UnicodeString);
begin
  ChildNodes['nDup'].NodeValue := Value;
end;

function TXMLDup.Get_DVenc: UnicodeString;
begin
  Result := ChildNodes['dVenc'].Text;
end;

procedure TXMLDup.Set_DVenc(Value: UnicodeString);
begin
  ChildNodes['dVenc'].NodeValue := Value;
end;

function TXMLDup.Get_VDup: UnicodeString;
begin
  Result := ChildNodes['vDup'].Text;
end;

procedure TXMLDup.Set_VDup(Value: UnicodeString);
begin
  ChildNodes['vDup'].NodeValue := Value;
end;

{ TXMLDupList }

function TXMLDupList.Add: IXMLDup;
begin
  Result := AddItem(-1) as IXMLDup;
end;

function TXMLDupList.Insert(const Index: Integer): IXMLDup;
begin
  Result := AddItem(Index) as IXMLDup;
end;

function TXMLDupList.Get_Item(Index: Integer): IXMLDup;
begin
  Result := List[Index] as IXMLDup;
end;

{ TXMLPag }

procedure TXMLPag.AfterConstruction;
begin
  RegisterChildNode('detPag', TXMLDetPag);
  FDetPag := CreateCollection(TXMLDetPagList, IXMLDetPag, 'detPag') as IXMLDetPagList;
  inherited;
end;

function TXMLPag.Get_DetPag: IXMLDetPagList;
begin
  Result := FDetPag;
end;

function TXMLPag.Get_VTroco: UnicodeString;
begin
  Result := ChildNodes['vTroco'].Text;
end;

procedure TXMLPag.Set_VTroco(Value: UnicodeString);
begin
  ChildNodes['vTroco'].NodeValue := Value;
end;

{ TXMLDetPag }

procedure TXMLDetPag.AfterConstruction;
begin
  RegisterChildNode('card', TXMLCard);
  inherited;
end;

function TXMLDetPag.Get_IndPag: UnicodeString;
begin
  Result := ChildNodes['indPag'].Text;
end;

procedure TXMLDetPag.Set_IndPag(Value: UnicodeString);
begin
  ChildNodes['indPag'].NodeValue := Value;
end;

function TXMLDetPag.Get_TPag: UnicodeString;
begin
  Result := ChildNodes['tPag'].Text;
end;

procedure TXMLDetPag.Set_TPag(Value: UnicodeString);
begin
  ChildNodes['tPag'].NodeValue := Value;
end;

function TXMLDetPag.Get_VPag: UnicodeString;
begin
  Result := ChildNodes['vPag'].Text;
end;

procedure TXMLDetPag.Set_VPag(Value: UnicodeString);
begin
  ChildNodes['vPag'].NodeValue := Value;
end;

function TXMLDetPag.Get_Card: IXMLCard;
begin
  Result := ChildNodes['card'] as IXMLCard;
end;

{ TXMLDetPagList }

function TXMLDetPagList.Add: IXMLDetPag;
begin
  Result := AddItem(-1) as IXMLDetPag;
end;

function TXMLDetPagList.Insert(const Index: Integer): IXMLDetPag;
begin
  Result := AddItem(Index) as IXMLDetPag;
end;

function TXMLDetPagList.Get_Item(Index: Integer): IXMLDetPag;
begin
  Result := List[Index] as IXMLDetPag;
end;

{ TXMLCard }

function TXMLCard.Get_TpIntegra: UnicodeString;
begin
  Result := ChildNodes['tpIntegra'].Text;
end;

procedure TXMLCard.Set_TpIntegra(Value: UnicodeString);
begin
  ChildNodes['tpIntegra'].NodeValue := Value;
end;

function TXMLCard.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLCard.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLCard.Get_TBand: UnicodeString;
begin
  Result := ChildNodes['tBand'].Text;
end;

procedure TXMLCard.Set_TBand(Value: UnicodeString);
begin
  ChildNodes['tBand'].NodeValue := Value;
end;

function TXMLCard.Get_CAut: UnicodeString;
begin
  Result := ChildNodes['cAut'].Text;
end;

procedure TXMLCard.Set_CAut(Value: UnicodeString);
begin
  ChildNodes['cAut'].NodeValue := Value;
end;

{ TXMLInfAdic }

procedure TXMLInfAdic.AfterConstruction;
begin
  RegisterChildNode('obsCont', TXMLObsCont);
  RegisterChildNode('obsFisco', TXMLObsFisco);
  RegisterChildNode('procRef', TXMLProcRef);
  FObsCont := CreateCollection(TXMLObsContList, IXMLObsCont, 'obsCont') as IXMLObsContList;
  FObsFisco := CreateCollection(TXMLObsFiscoList, IXMLObsFisco, 'obsFisco') as IXMLObsFiscoList;
  FProcRef := CreateCollection(TXMLProcRefList, IXMLProcRef, 'procRef') as IXMLProcRefList;
  inherited;
end;

function TXMLInfAdic.Get_InfAdFisco: UnicodeString;
begin
  Result := ChildNodes['infAdFisco'].Text;
end;

procedure TXMLInfAdic.Set_InfAdFisco(Value: UnicodeString);
begin
  ChildNodes['infAdFisco'].NodeValue := Value;
end;

function TXMLInfAdic.Get_InfCpl: UnicodeString;
begin
  Result := ChildNodes['infCpl'].Text;
end;

procedure TXMLInfAdic.Set_InfCpl(Value: UnicodeString);
begin
  ChildNodes['infCpl'].NodeValue := Value;
end;

function TXMLInfAdic.Get_ObsCont: IXMLObsContList;
begin
  Result := FObsCont;
end;

function TXMLInfAdic.Get_ObsFisco: IXMLObsFiscoList;
begin
  Result := FObsFisco;
end;

function TXMLInfAdic.Get_ProcRef: IXMLProcRefList;
begin
  Result := FProcRef;
end;

{ TXMLObsCont }

function TXMLObsCont.Get_XCampo: UnicodeString;
begin
  Result := AttributeNodes['xCampo'].Text;
end;

procedure TXMLObsCont.Set_XCampo(Value: UnicodeString);
begin
  SetAttribute('xCampo', Value);
end;

function TXMLObsCont.Get_XTexto: UnicodeString;
begin
  Result := ChildNodes['xTexto'].Text;
end;

procedure TXMLObsCont.Set_XTexto(Value: UnicodeString);
begin
  ChildNodes['xTexto'].NodeValue := Value;
end;

{ TXMLObsContList }

function TXMLObsContList.Add: IXMLObsCont;
begin
  Result := AddItem(-1) as IXMLObsCont;
end;

function TXMLObsContList.Insert(const Index: Integer): IXMLObsCont;
begin
  Result := AddItem(Index) as IXMLObsCont;
end;

function TXMLObsContList.Get_Item(Index: Integer): IXMLObsCont;
begin
  Result := List[Index] as IXMLObsCont;
end;

{ TXMLObsFisco }

function TXMLObsFisco.Get_XCampo: UnicodeString;
begin
  Result := AttributeNodes['xCampo'].Text;
end;

procedure TXMLObsFisco.Set_XCampo(Value: UnicodeString);
begin
  SetAttribute('xCampo', Value);
end;

function TXMLObsFisco.Get_XTexto: UnicodeString;
begin
  Result := ChildNodes['xTexto'].Text;
end;

procedure TXMLObsFisco.Set_XTexto(Value: UnicodeString);
begin
  ChildNodes['xTexto'].NodeValue := Value;
end;

{ TXMLObsFiscoList }

function TXMLObsFiscoList.Add: IXMLObsFisco;
begin
  Result := AddItem(-1) as IXMLObsFisco;
end;

function TXMLObsFiscoList.Insert(const Index: Integer): IXMLObsFisco;
begin
  Result := AddItem(Index) as IXMLObsFisco;
end;

function TXMLObsFiscoList.Get_Item(Index: Integer): IXMLObsFisco;
begin
  Result := List[Index] as IXMLObsFisco;
end;

{ TXMLProcRef }

function TXMLProcRef.Get_NProc: UnicodeString;
begin
  Result := ChildNodes['nProc'].Text;
end;

procedure TXMLProcRef.Set_NProc(Value: UnicodeString);
begin
  ChildNodes['nProc'].NodeValue := Value;
end;

function TXMLProcRef.Get_IndProc: UnicodeString;
begin
  Result := ChildNodes['indProc'].Text;
end;

procedure TXMLProcRef.Set_IndProc(Value: UnicodeString);
begin
  ChildNodes['indProc'].NodeValue := Value;
end;

{ TXMLProcRefList }

function TXMLProcRefList.Add: IXMLProcRef;
begin
  Result := AddItem(-1) as IXMLProcRef;
end;

function TXMLProcRefList.Insert(const Index: Integer): IXMLProcRef;
begin
  Result := AddItem(Index) as IXMLProcRef;
end;

function TXMLProcRefList.Get_Item(Index: Integer): IXMLProcRef;
begin
  Result := List[Index] as IXMLProcRef;
end;

{ TXMLExporta }

function TXMLExporta.Get_UFSaidaPais: UnicodeString;
begin
  Result := ChildNodes['UFSaidaPais'].Text;
end;

procedure TXMLExporta.Set_UFSaidaPais(Value: UnicodeString);
begin
  ChildNodes['UFSaidaPais'].NodeValue := Value;
end;

function TXMLExporta.Get_XLocExporta: UnicodeString;
begin
  Result := ChildNodes['xLocExporta'].Text;
end;

procedure TXMLExporta.Set_XLocExporta(Value: UnicodeString);
begin
  ChildNodes['xLocExporta'].NodeValue := Value;
end;

function TXMLExporta.Get_XLocDespacho: UnicodeString;
begin
  Result := ChildNodes['xLocDespacho'].Text;
end;

procedure TXMLExporta.Set_XLocDespacho(Value: UnicodeString);
begin
  ChildNodes['xLocDespacho'].NodeValue := Value;
end;

{ TXMLCompra }

function TXMLCompra.Get_XNEmp: UnicodeString;
begin
  Result := ChildNodes['xNEmp'].Text;
end;

procedure TXMLCompra.Set_XNEmp(Value: UnicodeString);
begin
  ChildNodes['xNEmp'].NodeValue := Value;
end;

function TXMLCompra.Get_XPed: UnicodeString;
begin
  Result := ChildNodes['xPed'].Text;
end;

procedure TXMLCompra.Set_XPed(Value: UnicodeString);
begin
  ChildNodes['xPed'].NodeValue := Value;
end;

function TXMLCompra.Get_XCont: UnicodeString;
begin
  Result := ChildNodes['xCont'].Text;
end;

procedure TXMLCompra.Set_XCont(Value: UnicodeString);
begin
  ChildNodes['xCont'].NodeValue := Value;
end;

{ TXMLCana }

procedure TXMLCana.AfterConstruction;
begin
  RegisterChildNode('forDia', TXMLForDia);
  RegisterChildNode('deduc', TXMLDeduc);
  FForDia := CreateCollection(TXMLForDiaList, IXMLForDia, 'forDia') as IXMLForDiaList;
  FDeduc := CreateCollection(TXMLDeducList, IXMLDeduc, 'deduc') as IXMLDeducList;
  inherited;
end;

function TXMLCana.Get_Safra: UnicodeString;
begin
  Result := ChildNodes['safra'].Text;
end;

procedure TXMLCana.Set_Safra(Value: UnicodeString);
begin
  ChildNodes['safra'].NodeValue := Value;
end;

function TXMLCana.Get_Ref: UnicodeString;
begin
  Result := ChildNodes['ref'].Text;
end;

procedure TXMLCana.Set_Ref(Value: UnicodeString);
begin
  ChildNodes['ref'].NodeValue := Value;
end;

function TXMLCana.Get_ForDia: IXMLForDiaList;
begin
  Result := FForDia;
end;

function TXMLCana.Get_QTotMes: UnicodeString;
begin
  Result := ChildNodes['qTotMes'].Text;
end;

procedure TXMLCana.Set_QTotMes(Value: UnicodeString);
begin
  ChildNodes['qTotMes'].NodeValue := Value;
end;

function TXMLCana.Get_QTotAnt: UnicodeString;
begin
  Result := ChildNodes['qTotAnt'].Text;
end;

procedure TXMLCana.Set_QTotAnt(Value: UnicodeString);
begin
  ChildNodes['qTotAnt'].NodeValue := Value;
end;

function TXMLCana.Get_QTotGer: UnicodeString;
begin
  Result := ChildNodes['qTotGer'].Text;
end;

procedure TXMLCana.Set_QTotGer(Value: UnicodeString);
begin
  ChildNodes['qTotGer'].NodeValue := Value;
end;

function TXMLCana.Get_Deduc: IXMLDeducList;
begin
  Result := FDeduc;
end;

function TXMLCana.Get_VFor: UnicodeString;
begin
  Result := ChildNodes['vFor'].Text;
end;

procedure TXMLCana.Set_VFor(Value: UnicodeString);
begin
  ChildNodes['vFor'].NodeValue := Value;
end;

function TXMLCana.Get_VTotDed: UnicodeString;
begin
  Result := ChildNodes['vTotDed'].Text;
end;

procedure TXMLCana.Set_VTotDed(Value: UnicodeString);
begin
  ChildNodes['vTotDed'].NodeValue := Value;
end;

function TXMLCana.Get_VLiqFor: UnicodeString;
begin
  Result := ChildNodes['vLiqFor'].Text;
end;

procedure TXMLCana.Set_VLiqFor(Value: UnicodeString);
begin
  ChildNodes['vLiqFor'].NodeValue := Value;
end;

{ TXMLForDia }

function TXMLForDia.Get_Dia: UnicodeString;
begin
  Result := AttributeNodes['dia'].Text;
end;

procedure TXMLForDia.Set_Dia(Value: UnicodeString);
begin
  SetAttribute('dia', Value);
end;

function TXMLForDia.Get_Qtde: UnicodeString;
begin
  Result := ChildNodes['qtde'].Text;
end;

procedure TXMLForDia.Set_Qtde(Value: UnicodeString);
begin
  ChildNodes['qtde'].NodeValue := Value;
end;

{ TXMLForDiaList }

function TXMLForDiaList.Add: IXMLForDia;
begin
  Result := AddItem(-1) as IXMLForDia;
end;

function TXMLForDiaList.Insert(const Index: Integer): IXMLForDia;
begin
  Result := AddItem(Index) as IXMLForDia;
end;

function TXMLForDiaList.Get_Item(Index: Integer): IXMLForDia;
begin
  Result := List[Index] as IXMLForDia;
end;

{ TXMLDeduc }

function TXMLDeduc.Get_XDed: UnicodeString;
begin
  Result := ChildNodes['xDed'].Text;
end;

procedure TXMLDeduc.Set_XDed(Value: UnicodeString);
begin
  ChildNodes['xDed'].NodeValue := Value;
end;

function TXMLDeduc.Get_VDed: UnicodeString;
begin
  Result := ChildNodes['vDed'].Text;
end;

procedure TXMLDeduc.Set_VDed(Value: UnicodeString);
begin
  ChildNodes['vDed'].NodeValue := Value;
end;

{ TXMLDeducList }

function TXMLDeducList.Add: IXMLDeduc;
begin
  Result := AddItem(-1) as IXMLDeduc;
end;

function TXMLDeducList.Insert(const Index: Integer): IXMLDeduc;
begin
  Result := AddItem(Index) as IXMLDeduc;
end;

function TXMLDeducList.Get_Item(Index: Integer): IXMLDeduc;
begin
  Result := List[Index] as IXMLDeduc;
end;

{ TXMLInfNFeSupl }

function TXMLInfNFeSupl.Get_QrCode: UnicodeString;
begin
  Result := ChildNodes['qrCode'].Text;
end;

procedure TXMLInfNFeSupl.Set_QrCode(Value: UnicodeString);
begin
  ChildNodes['qrCode'].NodeValue := Value;
end;

function TXMLInfNFeSupl.Get_UrlChave: UnicodeString;
begin
  Result := ChildNodes['urlChave'].Text;
end;

procedure TXMLInfNFeSupl.Set_UrlChave(Value: UnicodeString);
begin
  ChildNodes['urlChave'].NodeValue := Value;
end;

{ TXMLSignatureType_ds }

procedure TXMLSignatureType_ds.AfterConstruction;
begin
  RegisterChildNode('SignedInfo', TXMLSignedInfoType_ds);
  RegisterChildNode('SignatureValue', TXMLSignatureValueType_ds);
  RegisterChildNode('KeyInfo', TXMLKeyInfoType_ds);
  inherited;
end;

function TXMLSignatureType_ds.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignatureType_ds.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLSignatureType_ds.Get_SignedInfo: IXMLSignedInfoType_ds;
begin
  Result := ChildNodes['SignedInfo'] as IXMLSignedInfoType_ds;
end;

function TXMLSignatureType_ds.Get_SignatureValue: IXMLSignatureValueType_ds;
begin
  Result := ChildNodes['SignatureValue'] as IXMLSignatureValueType_ds;
end;

function TXMLSignatureType_ds.Get_KeyInfo: IXMLKeyInfoType_ds;
begin
  Result := ChildNodes['KeyInfo'] as IXMLKeyInfoType_ds;
end;

{ TXMLSignedInfoType_ds }

procedure TXMLSignedInfoType_ds.AfterConstruction;
begin
  RegisterChildNode('CanonicalizationMethod', TXMLCanonicalizationMethod_ds);
  RegisterChildNode('SignatureMethod', TXMLSignatureMethod_ds);
  RegisterChildNode('Reference', TXMLReferenceType_ds);
  inherited;
end;

function TXMLSignedInfoType_ds.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignedInfoType_ds.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLSignedInfoType_ds.Get_CanonicalizationMethod: IXMLCanonicalizationMethod_ds;
begin
  Result := ChildNodes['CanonicalizationMethod'] as IXMLCanonicalizationMethod_ds;
end;

function TXMLSignedInfoType_ds.Get_SignatureMethod: IXMLSignatureMethod_ds;
begin
  Result := ChildNodes['SignatureMethod'] as IXMLSignatureMethod_ds;
end;

function TXMLSignedInfoType_ds.Get_Reference: IXMLReferenceType_ds;
begin
  Result := ChildNodes['Reference'] as IXMLReferenceType_ds;
end;

{ TXMLCanonicalizationMethod_ds }

function TXMLCanonicalizationMethod_ds.Get_Algorithm: UnicodeString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLCanonicalizationMethod_ds.Set_Algorithm(Value: UnicodeString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLSignatureMethod_ds }

function TXMLSignatureMethod_ds.Get_Algorithm: UnicodeString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLSignatureMethod_ds.Set_Algorithm(Value: UnicodeString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLReferenceType_ds }

procedure TXMLReferenceType_ds.AfterConstruction;
begin
  RegisterChildNode('Transforms', TXMLTransformsType_ds);
  RegisterChildNode('DigestMethod', TXMLDigestMethod_ds);
  inherited;
end;

function TXMLReferenceType_ds.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLReferenceType_ds.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLReferenceType_ds.Get_URI: UnicodeString;
begin
  Result := AttributeNodes['URI'].Text;
end;

procedure TXMLReferenceType_ds.Set_URI(Value: UnicodeString);
begin
  SetAttribute('URI', Value);
end;

function TXMLReferenceType_ds.Get_Type_: UnicodeString;
begin
  Result := AttributeNodes['Type'].Text;
end;

procedure TXMLReferenceType_ds.Set_Type_(Value: UnicodeString);
begin
  SetAttribute('Type', Value);
end;

function TXMLReferenceType_ds.Get_Transforms: IXMLTransformsType_ds;
begin
  Result := ChildNodes['Transforms'] as IXMLTransformsType_ds;
end;

function TXMLReferenceType_ds.Get_DigestMethod: IXMLDigestMethod_ds;
begin
  Result := ChildNodes['DigestMethod'] as IXMLDigestMethod_ds;
end;

function TXMLReferenceType_ds.Get_DigestValue: UnicodeString;
begin
  Result := ChildNodes['DigestValue'].Text;
end;

procedure TXMLReferenceType_ds.Set_DigestValue(Value: UnicodeString);
begin
  ChildNodes['DigestValue'].NodeValue := Value;
end;

{ TXMLTransformsType_ds }

procedure TXMLTransformsType_ds.AfterConstruction;
begin
  RegisterChildNode('Transform', TXMLTransformType_ds);
  ItemTag := 'Transform';
  ItemInterface := IXMLTransformType_ds;
  inherited;
end;

function TXMLTransformsType_ds.Get_Transform(Index: Integer): IXMLTransformType_ds;
begin
  Result := List[Index] as IXMLTransformType_ds;
end;

function TXMLTransformsType_ds.Add: IXMLTransformType_ds;
begin
  Result := AddItem(-1) as IXMLTransformType_ds;
end;

function TXMLTransformsType_ds.Insert(const Index: Integer): IXMLTransformType_ds;
begin
  Result := AddItem(Index) as IXMLTransformType_ds;
end;

{ TXMLTransformType_ds }

procedure TXMLTransformType_ds.AfterConstruction;
begin
  ItemTag := 'XPath';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLTransformType_ds.Get_Algorithm: UnicodeString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLTransformType_ds.Set_Algorithm(Value: UnicodeString);
begin
  SetAttribute('Algorithm', Value);
end;

function TXMLTransformType_ds.Get_XPath(Index: Integer): UnicodeString;
begin
  Result := List[Index].Text;
end;

function TXMLTransformType_ds.Add(const XPath: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := XPath;
end;

function TXMLTransformType_ds.Insert(const Index: Integer; const XPath: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := XPath;
end;

{ TXMLDigestMethod_ds }

function TXMLDigestMethod_ds.Get_Algorithm: UnicodeString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLDigestMethod_ds.Set_Algorithm(Value: UnicodeString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLSignatureValueType_ds }

function TXMLSignatureValueType_ds.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignatureValueType_ds.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

{ TXMLKeyInfoType_ds }

procedure TXMLKeyInfoType_ds.AfterConstruction;
begin
  RegisterChildNode('X509Data', TXMLX509DataType_ds);
  inherited;
end;

function TXMLKeyInfoType_ds.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLKeyInfoType_ds.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLKeyInfoType_ds.Get_X509Data: IXMLX509DataType_ds;
begin
  Result := ChildNodes['X509Data'] as IXMLX509DataType_ds;
end;

{ TXMLX509DataType_ds }

function TXMLX509DataType_ds.Get_X509Certificate: UnicodeString;
begin
  Result := ChildNodes['X509Certificate'].Text;
end;

procedure TXMLX509DataType_ds.Set_X509Certificate(Value: UnicodeString);
begin
  ChildNodes['X509Certificate'].NodeValue := Value;
end;

{ TXMLTProtNFe }

procedure TXMLTProtNFe.AfterConstruction;
begin
  RegisterChildNode('infProt', TXMLInfProt);
  RegisterChildNode('Signature', TXMLSignatureType_ds);
  inherited;
end;

function TXMLTProtNFe.Get_Versao: UnicodeString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTProtNFe.Set_Versao(Value: UnicodeString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTProtNFe.Get_InfProt: IXMLInfProt;
begin
  Result := ChildNodes['infProt'] as IXMLInfProt;
end;

function TXMLTProtNFe.Get_Signature: IXMLSignatureType_ds;
begin
  Result := ChildNodes['Signature'] as IXMLSignatureType_ds;
end;

{ TXMLTProtNFeList }

function TXMLTProtNFeList.Add: IXMLTProtNFe;
begin
  Result := AddItem(-1) as IXMLTProtNFe;
end;

function TXMLTProtNFeList.Insert(const Index: Integer): IXMLTProtNFe;
begin
  Result := AddItem(Index) as IXMLTProtNFe;
end;

function TXMLTProtNFeList.Get_Item(Index: Integer): IXMLTProtNFe;
begin
  Result := List[Index] as IXMLTProtNFe;
end;

{ TXMLInfProt }

function TXMLInfProt.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLInfProt.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLInfProt.Get_TpAmb: UnicodeString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLInfProt.Set_TpAmb(Value: UnicodeString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLInfProt.Get_VerAplic: UnicodeString;
begin
  Result := ChildNodes['verAplic'].Text;
end;

procedure TXMLInfProt.Set_VerAplic(Value: UnicodeString);
begin
  ChildNodes['verAplic'].NodeValue := Value;
end;

function TXMLInfProt.Get_ChNFe: UnicodeString;
begin
  Result := ChildNodes['chNFe'].Text;
end;

procedure TXMLInfProt.Set_ChNFe(Value: UnicodeString);
begin
  ChildNodes['chNFe'].NodeValue := Value;
end;

function TXMLInfProt.Get_DhRecbto: UnicodeString;
begin
  Result := ChildNodes['dhRecbto'].Text;
end;

procedure TXMLInfProt.Set_DhRecbto(Value: UnicodeString);
begin
  ChildNodes['dhRecbto'].NodeValue := Value;
end;

function TXMLInfProt.Get_NProt: UnicodeString;
begin
  Result := ChildNodes['nProt'].Text;
end;

procedure TXMLInfProt.Set_NProt(Value: UnicodeString);
begin
  ChildNodes['nProt'].NodeValue := Value;
end;

function TXMLInfProt.Get_DigVal: UnicodeString;
begin
  Result := ChildNodes['digVal'].Text;
end;

procedure TXMLInfProt.Set_DigVal(Value: UnicodeString);
begin
  ChildNodes['digVal'].NodeValue := Value;
end;

function TXMLInfProt.Get_CStat: UnicodeString;
begin
  Result := ChildNodes['cStat'].Text;
end;

procedure TXMLInfProt.Set_CStat(Value: UnicodeString);
begin
  ChildNodes['cStat'].NodeValue := Value;
end;

function TXMLInfProt.Get_XMotivo: UnicodeString;
begin
  Result := ChildNodes['xMotivo'].Text;
end;

procedure TXMLInfProt.Set_XMotivo(Value: UnicodeString);
begin
  ChildNodes['xMotivo'].NodeValue := Value;
end;

{ TXMLTRetEnviNFe }

procedure TXMLTRetEnviNFe.AfterConstruction;
begin
  RegisterChildNode('infRec', TXMLInfRec);
  RegisterChildNode('protNFe', TXMLTProtNFe);
  inherited;
end;

function TXMLTRetEnviNFe.Get_Versao: UnicodeString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTRetEnviNFe.Set_Versao(Value: UnicodeString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTRetEnviNFe.Get_TpAmb: UnicodeString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLTRetEnviNFe.Set_TpAmb(Value: UnicodeString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLTRetEnviNFe.Get_VerAplic: UnicodeString;
begin
  Result := ChildNodes['verAplic'].Text;
end;

procedure TXMLTRetEnviNFe.Set_VerAplic(Value: UnicodeString);
begin
  ChildNodes['verAplic'].NodeValue := Value;
end;

function TXMLTRetEnviNFe.Get_CStat: UnicodeString;
begin
  Result := ChildNodes['cStat'].Text;
end;

procedure TXMLTRetEnviNFe.Set_CStat(Value: UnicodeString);
begin
  ChildNodes['cStat'].NodeValue := Value;
end;

function TXMLTRetEnviNFe.Get_XMotivo: UnicodeString;
begin
  Result := ChildNodes['xMotivo'].Text;
end;

procedure TXMLTRetEnviNFe.Set_XMotivo(Value: UnicodeString);
begin
  ChildNodes['xMotivo'].NodeValue := Value;
end;

function TXMLTRetEnviNFe.Get_CUF: UnicodeString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLTRetEnviNFe.Set_CUF(Value: UnicodeString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLTRetEnviNFe.Get_DhRecbto: UnicodeString;
begin
  Result := ChildNodes['dhRecbto'].Text;
end;

procedure TXMLTRetEnviNFe.Set_DhRecbto(Value: UnicodeString);
begin
  ChildNodes['dhRecbto'].NodeValue := Value;
end;

function TXMLTRetEnviNFe.Get_InfRec: IXMLInfRec;
begin
  Result := ChildNodes['infRec'] as IXMLInfRec;
end;

function TXMLTRetEnviNFe.Get_ProtNFe: IXMLTProtNFe;
begin
  Result := ChildNodes['protNFe'] as IXMLTProtNFe;
end;

{ TXMLInfRec }

function TXMLInfRec.Get_NRec: UnicodeString;
begin
  Result := ChildNodes['nRec'].Text;
end;

procedure TXMLInfRec.Set_NRec(Value: UnicodeString);
begin
  ChildNodes['nRec'].NodeValue := Value;
end;

function TXMLInfRec.Get_TMed: UnicodeString;
begin
  Result := ChildNodes['tMed'].Text;
end;

procedure TXMLInfRec.Set_TMed(Value: UnicodeString);
begin
  ChildNodes['tMed'].NodeValue := Value;
end;

{ TXMLTConsReciNFe }

function TXMLTConsReciNFe.Get_Versao: UnicodeString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTConsReciNFe.Set_Versao(Value: UnicodeString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTConsReciNFe.Get_TpAmb: UnicodeString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLTConsReciNFe.Set_TpAmb(Value: UnicodeString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLTConsReciNFe.Get_NRec: UnicodeString;
begin
  Result := ChildNodes['nRec'].Text;
end;

procedure TXMLTConsReciNFe.Set_NRec(Value: UnicodeString);
begin
  ChildNodes['nRec'].NodeValue := Value;
end;

{ TXMLTRetConsReciNFe }

procedure TXMLTRetConsReciNFe.AfterConstruction;
begin
  RegisterChildNode('protNFe', TXMLTProtNFe);
  FProtNFe := CreateCollection(TXMLTProtNFeList, IXMLTProtNFe, 'protNFe') as IXMLTProtNFeList;
  inherited;
end;

function TXMLTRetConsReciNFe.Get_Versao: UnicodeString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_Versao(Value: UnicodeString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTRetConsReciNFe.Get_TpAmb: UnicodeString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_TpAmb(Value: UnicodeString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_VerAplic: UnicodeString;
begin
  Result := ChildNodes['verAplic'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_VerAplic(Value: UnicodeString);
begin
  ChildNodes['verAplic'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_NRec: UnicodeString;
begin
  Result := ChildNodes['nRec'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_NRec(Value: UnicodeString);
begin
  ChildNodes['nRec'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_CStat: UnicodeString;
begin
  Result := ChildNodes['cStat'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_CStat(Value: UnicodeString);
begin
  ChildNodes['cStat'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_XMotivo: UnicodeString;
begin
  Result := ChildNodes['xMotivo'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_XMotivo(Value: UnicodeString);
begin
  ChildNodes['xMotivo'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_CUF: UnicodeString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_CUF(Value: UnicodeString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_DhRecbto: UnicodeString;
begin
  Result := ChildNodes['dhRecbto'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_DhRecbto(Value: UnicodeString);
begin
  ChildNodes['dhRecbto'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_CMsg: UnicodeString;
begin
  Result := ChildNodes['cMsg'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_CMsg(Value: UnicodeString);
begin
  ChildNodes['cMsg'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_XMsg: UnicodeString;
begin
  Result := ChildNodes['xMsg'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_XMsg(Value: UnicodeString);
begin
  ChildNodes['xMsg'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_ProtNFe: IXMLTProtNFeList;
begin
  Result := FProtNFe;
end;

{ TXMLTNfeProc }

procedure TXMLTNfeProc.AfterConstruction;
begin
  RegisterChildNode('NFe', TXMLTNFe);
  RegisterChildNode('protNFe', TXMLTProtNFe);
  inherited;
end;

function TXMLTNfeProc.Get_Versao: UnicodeString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTNfeProc.Set_Versao(Value: UnicodeString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTNfeProc.Get_NFe: IXMLTNFe;
begin
  Result := ChildNodes['NFe'] as IXMLTNFe;
end;

function TXMLTNfeProc.Get_ProtNFe: IXMLTProtNFe;
begin
  Result := ChildNodes['protNFe'] as IXMLTProtNFe;
end;

{ TXMLNVEList }

function TXMLNVEList.Add(const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLNVEList.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLNVEList.Get_Item(Index: Integer): UnicodeString;
begin
  Result := List[Index].NodeValue;
end;

end.