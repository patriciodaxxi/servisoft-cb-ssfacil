
{******************************************************************************************************}
{                                                                                                      }
{                                           XML Data Binding                                           }
{                                                                                                      }
{         Generated on: 24/09/2014 21:19:23                                                            }
{       Generated from: C:\Users\Edson\Documents\!desenv\flexdocs\NFe_Util\Schemas\enviNFe_v3.10.xsd   }
{                                                                                                      }
{******************************************************************************************************}

unit enviNFe_v310;

interface

uses xmldom, XMLDoc, XMLIntf;

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
  IXMLVeicProd = interface;
  IXMLMed = interface;
  IXMLMedList = interface;
  IXMLArma = interface;
  IXMLArmaList = interface;
  IXMLComb = interface;
  IXMLCIDE = interface;
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
  IXMLPagList = interface;
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
    ['{E4FBF4EF-E2A2-4BAD-9C4A-E220E3BCD0A3}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_IdLote: WideString;
    function Get_IndSinc: WideString;
    function Get_NFe: IXMLTNFeList;
    procedure Set_Versao(Value: WideString);
    procedure Set_IdLote(Value: WideString);
    procedure Set_IndSinc(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property IdLote: WideString read Get_IdLote write Set_IdLote;
    property IndSinc: WideString read Get_IndSinc write Set_IndSinc;
    property NFe: IXMLTNFeList read Get_NFe;
  end;

{ IXMLTNFe }

  IXMLTNFe = interface(IXMLNode)
    ['{9238E2EA-1DD3-49F1-B1D0-3F4D8419BABD}']
    { Property Accessors }
    function Get_InfNFe: IXMLInfNFe;
    function Get_Signature: IXMLSignatureType_ds;
    { Methods & Properties }
    property InfNFe: IXMLInfNFe read Get_InfNFe;
    property Signature: IXMLSignatureType_ds read Get_Signature;
  end;

{ IXMLTNFeList }

  IXMLTNFeList = interface(IXMLNodeCollection)
    ['{74E48672-C9E6-4BF5-97A5-DF74C98FEF61}']
    { Methods & Properties }
    function Add: IXMLTNFe;
    function Insert(const Index: Integer): IXMLTNFe;

    function Get_Item(Index: Integer): IXMLTNFe;
    property Items[Index: Integer]: IXMLTNFe read Get_Item; default;
  end;

{ IXMLInfNFe }

  IXMLInfNFe = interface(IXMLNode)
    ['{8B51C6E5-B9BD-4822-B88F-320614B54FDE}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_Id: WideString;
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
    function Get_Pag: IXMLPagList;
    function Get_InfAdic: IXMLInfAdic;
    function Get_Exporta: IXMLExporta;
    function Get_Compra: IXMLCompra;
    function Get_Cana: IXMLCana;
    procedure Set_Versao(Value: WideString);
    procedure Set_Id(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property Id: WideString read Get_Id write Set_Id;
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
    property Pag: IXMLPagList read Get_Pag;
    property InfAdic: IXMLInfAdic read Get_InfAdic;
    property Exporta: IXMLExporta read Get_Exporta;
    property Compra: IXMLCompra read Get_Compra;
    property Cana: IXMLCana read Get_Cana;
  end;

{ IXMLIde }

  IXMLIde = interface(IXMLNode)
    ['{60E52856-6E6A-422A-8C17-88FBB9F21CEB}']
    { Property Accessors }
    function Get_CUF: WideString;
    function Get_CNF: WideString;
    function Get_NatOp: WideString;
    function Get_IndPag: WideString;
    function Get_Mod_: WideString;
    function Get_Serie: WideString;
    function Get_NNF: WideString;
    function Get_DhEmi: WideString;
    function Get_DhSaiEnt: WideString;
    function Get_TpNF: WideString;
    function Get_IdDest: WideString;
    function Get_CMunFG: WideString;
    function Get_TpImp: WideString;
    function Get_TpEmis: WideString;
    function Get_CDV: WideString;
    function Get_TpAmb: WideString;
    function Get_FinNFe: WideString;
    function Get_IndFinal: WideString;
    function Get_IndPres: WideString;
    function Get_ProcEmi: WideString;
    function Get_VerProc: WideString;
    function Get_DhCont: WideString;
    function Get_XJust: WideString;
    function Get_NFref: IXMLNFrefList;
    procedure Set_CUF(Value: WideString);
    procedure Set_CNF(Value: WideString);
    procedure Set_NatOp(Value: WideString);
    procedure Set_IndPag(Value: WideString);
    procedure Set_Mod_(Value: WideString);
    procedure Set_Serie(Value: WideString);
    procedure Set_NNF(Value: WideString);
    procedure Set_DhEmi(Value: WideString);
    procedure Set_DhSaiEnt(Value: WideString);
    procedure Set_TpNF(Value: WideString);
    procedure Set_IdDest(Value: WideString);
    procedure Set_CMunFG(Value: WideString);
    procedure Set_TpImp(Value: WideString);
    procedure Set_TpEmis(Value: WideString);
    procedure Set_CDV(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_FinNFe(Value: WideString);
    procedure Set_IndFinal(Value: WideString);
    procedure Set_IndPres(Value: WideString);
    procedure Set_ProcEmi(Value: WideString);
    procedure Set_VerProc(Value: WideString);
    procedure Set_DhCont(Value: WideString);
    procedure Set_XJust(Value: WideString);
    { Methods & Properties }
    property CUF: WideString read Get_CUF write Set_CUF;
    property CNF: WideString read Get_CNF write Set_CNF;
    property NatOp: WideString read Get_NatOp write Set_NatOp;
    property IndPag: WideString read Get_IndPag write Set_IndPag;
    property Mod_: WideString read Get_Mod_ write Set_Mod_;
    property Serie: WideString read Get_Serie write Set_Serie;
    property NNF: WideString read Get_NNF write Set_NNF;
    property DhEmi: WideString read Get_DhEmi write Set_DhEmi;
    property DhSaiEnt: WideString read Get_DhSaiEnt write Set_DhSaiEnt;
    property TpNF: WideString read Get_TpNF write Set_TpNF;
    property IdDest: WideString read Get_IdDest write Set_IdDest;
    property CMunFG: WideString read Get_CMunFG write Set_CMunFG;
    property TpImp: WideString read Get_TpImp write Set_TpImp;
    property TpEmis: WideString read Get_TpEmis write Set_TpEmis;
    property CDV: WideString read Get_CDV write Set_CDV;
    property TpAmb: WideString read Get_TpAmb write Set_TpAmb;
    property FinNFe: WideString read Get_FinNFe write Set_FinNFe;
    property IndFinal: WideString read Get_IndFinal write Set_IndFinal;
    property IndPres: WideString read Get_IndPres write Set_IndPres;
    property ProcEmi: WideString read Get_ProcEmi write Set_ProcEmi;
    property VerProc: WideString read Get_VerProc write Set_VerProc;
    property DhCont: WideString read Get_DhCont write Set_DhCont;
    property XJust: WideString read Get_XJust write Set_XJust;
    property NFref: IXMLNFrefList read Get_NFref;
  end;

{ IXMLNFref }

  IXMLNFref = interface(IXMLNode)
    ['{82AABA88-6527-422D-A832-3D5275D1A317}']
    { Property Accessors }
    function Get_RefNFe: WideString;
    function Get_RefNF: IXMLRefNF;
    function Get_RefNFP: IXMLRefNFP;
    function Get_RefCTe: WideString;
    function Get_RefECF: IXMLRefECF;
    procedure Set_RefNFe(Value: WideString);
    procedure Set_RefCTe(Value: WideString);
    { Methods & Properties }
    property RefNFe: WideString read Get_RefNFe write Set_RefNFe;
    property RefNF: IXMLRefNF read Get_RefNF;
    property RefNFP: IXMLRefNFP read Get_RefNFP;
    property RefCTe: WideString read Get_RefCTe write Set_RefCTe;
    property RefECF: IXMLRefECF read Get_RefECF;
  end;

{ IXMLNFrefList }

  IXMLNFrefList = interface(IXMLNodeCollection)
    ['{7E6FAA57-8F35-4122-9D7B-19F5160D7617}']
    { Methods & Properties }
    function Add: IXMLNFref;
    function Insert(const Index: Integer): IXMLNFref;

    function Get_Item(Index: Integer): IXMLNFref;
    property Items[Index: Integer]: IXMLNFref read Get_Item; default;
  end;

{ IXMLRefNF }

  IXMLRefNF = interface(IXMLNode)
    ['{AA13F60A-D7CD-4045-A30A-09FA2AA30D14}']
    { Property Accessors }
    function Get_CUF: WideString;
    function Get_AAMM: WideString;
    function Get_CNPJ: WideString;
    function Get_Mod_: WideString;
    function Get_Serie: WideString;
    function Get_NNF: WideString;
    procedure Set_CUF(Value: WideString);
    procedure Set_AAMM(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_Mod_(Value: WideString);
    procedure Set_Serie(Value: WideString);
    procedure Set_NNF(Value: WideString);
    { Methods & Properties }
    property CUF: WideString read Get_CUF write Set_CUF;
    property AAMM: WideString read Get_AAMM write Set_AAMM;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property Mod_: WideString read Get_Mod_ write Set_Mod_;
    property Serie: WideString read Get_Serie write Set_Serie;
    property NNF: WideString read Get_NNF write Set_NNF;
  end;

{ IXMLRefNFP }

  IXMLRefNFP = interface(IXMLNode)
    ['{CD25980C-8468-42F7-B896-F57DABCFF341}']
    { Property Accessors }
    function Get_CUF: WideString;
    function Get_AAMM: WideString;
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_IE: WideString;
    function Get_Mod_: WideString;
    function Get_Serie: WideString;
    function Get_NNF: WideString;
    procedure Set_CUF(Value: WideString);
    procedure Set_AAMM(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_Mod_(Value: WideString);
    procedure Set_Serie(Value: WideString);
    procedure Set_NNF(Value: WideString);
    { Methods & Properties }
    property CUF: WideString read Get_CUF write Set_CUF;
    property AAMM: WideString read Get_AAMM write Set_AAMM;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property CPF: WideString read Get_CPF write Set_CPF;
    property IE: WideString read Get_IE write Set_IE;
    property Mod_: WideString read Get_Mod_ write Set_Mod_;
    property Serie: WideString read Get_Serie write Set_Serie;
    property NNF: WideString read Get_NNF write Set_NNF;
  end;

{ IXMLRefECF }

  IXMLRefECF = interface(IXMLNode)
    ['{CA5844E4-3A97-405E-8B1F-57F2AF67397D}']
    { Property Accessors }
    function Get_Mod_: WideString;
    function Get_NECF: WideString;
    function Get_NCOO: WideString;
    procedure Set_Mod_(Value: WideString);
    procedure Set_NECF(Value: WideString);
    procedure Set_NCOO(Value: WideString);
    { Methods & Properties }
    property Mod_: WideString read Get_Mod_ write Set_Mod_;
    property NECF: WideString read Get_NECF write Set_NECF;
    property NCOO: WideString read Get_NCOO write Set_NCOO;
  end;

{ IXMLEmit }

  IXMLEmit = interface(IXMLNode)
    ['{0AC25D39-FF25-4550-A49C-D5BBFB5F4349}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_XNome: WideString;
    function Get_XFant: WideString;
    function Get_EnderEmit: IXMLTEnderEmi;
    function Get_IE: WideString;
    function Get_IEST: WideString;
    function Get_IM: WideString;
    function Get_CNAE: WideString;
    function Get_CRT: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_XFant(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_IEST(Value: WideString);
    procedure Set_IM(Value: WideString);
    procedure Set_CNAE(Value: WideString);
    procedure Set_CRT(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property CPF: WideString read Get_CPF write Set_CPF;
    property XNome: WideString read Get_XNome write Set_XNome;
    property XFant: WideString read Get_XFant write Set_XFant;
    property EnderEmit: IXMLTEnderEmi read Get_EnderEmit;
    property IE: WideString read Get_IE write Set_IE;
    property IEST: WideString read Get_IEST write Set_IEST;
    property IM: WideString read Get_IM write Set_IM;
    property CNAE: WideString read Get_CNAE write Set_CNAE;
    property CRT: WideString read Get_CRT write Set_CRT;
  end;

{ IXMLTEnderEmi }

  IXMLTEnderEmi = interface(IXMLNode)
    ['{B5B769C8-36F7-4142-AE9B-9C250F753E69}']
    { Property Accessors }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_UF: WideString;
    function Get_CEP: WideString;
    function Get_CPais: WideString;
    function Get_XPais: WideString;
    function Get_Fone: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_CPais(Value: WideString);
    procedure Set_XPais(Value: WideString);
    procedure Set_Fone(Value: WideString);
    { Methods & Properties }
    property XLgr: WideString read Get_XLgr write Set_XLgr;
    property Nro: WideString read Get_Nro write Set_Nro;
    property XCpl: WideString read Get_XCpl write Set_XCpl;
    property XBairro: WideString read Get_XBairro write Set_XBairro;
    property CMun: WideString read Get_CMun write Set_CMun;
    property XMun: WideString read Get_XMun write Set_XMun;
    property UF: WideString read Get_UF write Set_UF;
    property CEP: WideString read Get_CEP write Set_CEP;
    property CPais: WideString read Get_CPais write Set_CPais;
    property XPais: WideString read Get_XPais write Set_XPais;
    property Fone: WideString read Get_Fone write Set_Fone;
  end;

{ IXMLAvulsa }

  IXMLAvulsa = interface(IXMLNode)
    ['{F1878F79-08C8-4D32-B314-972B0891841B}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_XOrgao: WideString;
    function Get_Matr: WideString;
    function Get_XAgente: WideString;
    function Get_Fone: WideString;
    function Get_UF: WideString;
    function Get_NDAR: WideString;
    function Get_DEmi: WideString;
    function Get_VDAR: WideString;
    function Get_RepEmi: WideString;
    function Get_DPag: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_XOrgao(Value: WideString);
    procedure Set_Matr(Value: WideString);
    procedure Set_XAgente(Value: WideString);
    procedure Set_Fone(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_NDAR(Value: WideString);
    procedure Set_DEmi(Value: WideString);
    procedure Set_VDAR(Value: WideString);
    procedure Set_RepEmi(Value: WideString);
    procedure Set_DPag(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property XOrgao: WideString read Get_XOrgao write Set_XOrgao;
    property Matr: WideString read Get_Matr write Set_Matr;
    property XAgente: WideString read Get_XAgente write Set_XAgente;
    property Fone: WideString read Get_Fone write Set_Fone;
    property UF: WideString read Get_UF write Set_UF;
    property NDAR: WideString read Get_NDAR write Set_NDAR;
    property DEmi: WideString read Get_DEmi write Set_DEmi;
    property VDAR: WideString read Get_VDAR write Set_VDAR;
    property RepEmi: WideString read Get_RepEmi write Set_RepEmi;
    property DPag: WideString read Get_DPag write Set_DPag;
  end;

{ IXMLDest }

  IXMLDest = interface(IXMLNode)
    ['{56E58DE2-5EA3-476E-96E7-6A76AEA22E7F}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_IdEstrangeiro: WideString;
    function Get_XNome: WideString;
    function Get_EnderDest: IXMLTEndereco;
    function Get_IndIEDest: WideString;
    function Get_IE: WideString;
    function Get_ISUF: WideString;
    function Get_IM: WideString;
    function Get_Email: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_IdEstrangeiro(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_IndIEDest(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_ISUF(Value: WideString);
    procedure Set_IM(Value: WideString);
    procedure Set_Email(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property CPF: WideString read Get_CPF write Set_CPF;
    property IdEstrangeiro: WideString read Get_IdEstrangeiro write Set_IdEstrangeiro;
    property XNome: WideString read Get_XNome write Set_XNome;
    property EnderDest: IXMLTEndereco read Get_EnderDest;
    property IndIEDest: WideString read Get_IndIEDest write Set_IndIEDest;
    property IE: WideString read Get_IE write Set_IE;
    property ISUF: WideString read Get_ISUF write Set_ISUF;
    property IM: WideString read Get_IM write Set_IM;
    property Email: WideString read Get_Email write Set_Email;
  end;

{ IXMLTEndereco }

  IXMLTEndereco = interface(IXMLNode)
    ['{1BB6E012-E897-4D2C-B18C-D27505F6B7F2}']
    { Property Accessors }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_UF: WideString;
    function Get_CEP: WideString;
    function Get_CPais: WideString;
    function Get_XPais: WideString;
    function Get_Fone: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_CPais(Value: WideString);
    procedure Set_XPais(Value: WideString);
    procedure Set_Fone(Value: WideString);
    { Methods & Properties }
    property XLgr: WideString read Get_XLgr write Set_XLgr;
    property Nro: WideString read Get_Nro write Set_Nro;
    property XCpl: WideString read Get_XCpl write Set_XCpl;
    property XBairro: WideString read Get_XBairro write Set_XBairro;
    property CMun: WideString read Get_CMun write Set_CMun;
    property XMun: WideString read Get_XMun write Set_XMun;
    property UF: WideString read Get_UF write Set_UF;
    property CEP: WideString read Get_CEP write Set_CEP;
    property CPais: WideString read Get_CPais write Set_CPais;
    property XPais: WideString read Get_XPais write Set_XPais;
    property Fone: WideString read Get_Fone write Set_Fone;
  end;

{ IXMLTLocal }

  IXMLTLocal = interface(IXMLNode)
    ['{E5322103-FD3F-41ED-AA5B-FB90D01E735F}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_UF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_UF(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property CPF: WideString read Get_CPF write Set_CPF;
    property XLgr: WideString read Get_XLgr write Set_XLgr;
    property Nro: WideString read Get_Nro write Set_Nro;
    property XCpl: WideString read Get_XCpl write Set_XCpl;
    property XBairro: WideString read Get_XBairro write Set_XBairro;
    property CMun: WideString read Get_CMun write Set_CMun;
    property XMun: WideString read Get_XMun write Set_XMun;
    property UF: WideString read Get_UF write Set_UF;
  end;

{ IXMLAutXML }

  IXMLAutXML = interface(IXMLNode)
    ['{75A2B5B7-52B6-4BB8-AF62-9AA3F3B3D543}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property CPF: WideString read Get_CPF write Set_CPF;
  end;

{ IXMLAutXMLList }

  IXMLAutXMLList = interface(IXMLNodeCollection)
    ['{34E96D34-DC60-427E-A34D-2E07CA772EB9}']
    { Methods & Properties }
    function Add: IXMLAutXML;
    function Insert(const Index: Integer): IXMLAutXML;

    function Get_Item(Index: Integer): IXMLAutXML;
    property Items[Index: Integer]: IXMLAutXML read Get_Item; default;
  end;

{ IXMLDet }

  IXMLDet = interface(IXMLNode)
    ['{48FF0973-2F13-4328-ADAA-2CBCE42C546E}']
    { Property Accessors }
    function Get_NItem: WideString;
    function Get_Prod: IXMLProd;
    function Get_Imposto: IXMLImposto;
    function Get_ImpostoDevol: IXMLImpostoDevol;
    function Get_InfAdProd: WideString;
    procedure Set_NItem(Value: WideString);
    procedure Set_InfAdProd(Value: WideString);
    { Methods & Properties }
    property NItem: WideString read Get_NItem write Set_NItem;
    property Prod: IXMLProd read Get_Prod;
    property Imposto: IXMLImposto read Get_Imposto;
    property ImpostoDevol: IXMLImpostoDevol read Get_ImpostoDevol;
    property InfAdProd: WideString read Get_InfAdProd write Set_InfAdProd;
  end;

{ IXMLDetList }

  IXMLDetList = interface(IXMLNodeCollection)
    ['{AB83A852-5287-4E41-A700-81FC6A020769}']
    { Methods & Properties }
    function Add: IXMLDet;
    function Insert(const Index: Integer): IXMLDet;

    function Get_Item(Index: Integer): IXMLDet;
    property Items[Index: Integer]: IXMLDet read Get_Item; default;
  end;

{ IXMLProd }

  IXMLProd = interface(IXMLNode)
    ['{B1B9A105-4DB2-4EB3-BCE3-441D502B7879}']
    { Property Accessors }
    function Get_CProd: WideString;
    function Get_CEAN: WideString;
    function Get_XProd: WideString;
    function Get_NCM: WideString;
    function Get_NVE: IXMLNVEList;
    function Get_EXTIPI: WideString;
    function Get_CFOP: WideString;
    function Get_UCom: WideString;
    function Get_QCom: WideString;
    function Get_VUnCom: WideString;
    function Get_VProd: WideString;
    function Get_CEANTrib: WideString;
    function Get_UTrib: WideString;
    function Get_QTrib: WideString;
    function Get_VUnTrib: WideString;
    function Get_VFrete: WideString;
    function Get_VSeg: WideString;
    function Get_VDesc: WideString;
    function Get_VOutro: WideString;
    function Get_IndTot: WideString;
    function Get_DI: IXMLDIList;
    function Get_DetExport: IXMLDetExportList;
    function Get_XPed: WideString;
    function Get_NItemPed: WideString;
    function Get_NFCI: WideString;
    function Get_VeicProd: IXMLVeicProd;
    function Get_Med: IXMLMedList;
    function Get_Arma: IXMLArmaList;
    function Get_Comb: IXMLComb;
    function Get_NRECOPI: WideString;
    procedure Set_CProd(Value: WideString);
    procedure Set_CEAN(Value: WideString);
    procedure Set_XProd(Value: WideString);
    procedure Set_NCM(Value: WideString);
    procedure Set_EXTIPI(Value: WideString);
    procedure Set_CFOP(Value: WideString);
    procedure Set_UCom(Value: WideString);
    procedure Set_QCom(Value: WideString);
    procedure Set_VUnCom(Value: WideString);
    procedure Set_VProd(Value: WideString);
    procedure Set_CEANTrib(Value: WideString);
    procedure Set_UTrib(Value: WideString);
    procedure Set_QTrib(Value: WideString);
    procedure Set_VUnTrib(Value: WideString);
    procedure Set_VFrete(Value: WideString);
    procedure Set_VSeg(Value: WideString);
    procedure Set_VDesc(Value: WideString);
    procedure Set_VOutro(Value: WideString);
    procedure Set_IndTot(Value: WideString);
    procedure Set_XPed(Value: WideString);
    procedure Set_NItemPed(Value: WideString);
    procedure Set_NFCI(Value: WideString);
    procedure Set_NRECOPI(Value: WideString);
    { Methods & Properties }
    property CProd: WideString read Get_CProd write Set_CProd;
    property CEAN: WideString read Get_CEAN write Set_CEAN;
    property XProd: WideString read Get_XProd write Set_XProd;
    property NCM: WideString read Get_NCM write Set_NCM;
    property NVE: IXMLNVEList read Get_NVE;
    property EXTIPI: WideString read Get_EXTIPI write Set_EXTIPI;
    property CFOP: WideString read Get_CFOP write Set_CFOP;
    property UCom: WideString read Get_UCom write Set_UCom;
    property QCom: WideString read Get_QCom write Set_QCom;
    property VUnCom: WideString read Get_VUnCom write Set_VUnCom;
    property VProd: WideString read Get_VProd write Set_VProd;
    property CEANTrib: WideString read Get_CEANTrib write Set_CEANTrib;
    property UTrib: WideString read Get_UTrib write Set_UTrib;
    property QTrib: WideString read Get_QTrib write Set_QTrib;
    property VUnTrib: WideString read Get_VUnTrib write Set_VUnTrib;
    property VFrete: WideString read Get_VFrete write Set_VFrete;
    property VSeg: WideString read Get_VSeg write Set_VSeg;
    property VDesc: WideString read Get_VDesc write Set_VDesc;
    property VOutro: WideString read Get_VOutro write Set_VOutro;
    property IndTot: WideString read Get_IndTot write Set_IndTot;
    property DI: IXMLDIList read Get_DI;
    property DetExport: IXMLDetExportList read Get_DetExport;
    property XPed: WideString read Get_XPed write Set_XPed;
    property NItemPed: WideString read Get_NItemPed write Set_NItemPed;
    property NFCI: WideString read Get_NFCI write Set_NFCI;
    property VeicProd: IXMLVeicProd read Get_VeicProd;
    property Med: IXMLMedList read Get_Med;
    property Arma: IXMLArmaList read Get_Arma;
    property Comb: IXMLComb read Get_Comb;
    property NRECOPI: WideString read Get_NRECOPI write Set_NRECOPI;
  end;

{ IXMLDI }

  IXMLDI = interface(IXMLNode)
    ['{9D1C91D4-E2D6-4F9E-A58C-B9E2F68F6D83}']
    { Property Accessors }
    function Get_NDI: WideString;
    function Get_DDI: WideString;
    function Get_XLocDesemb: WideString;
    function Get_UFDesemb: WideString;
    function Get_DDesemb: WideString;
    function Get_TpViaTransp: WideString;
    function Get_VAFRMM: WideString;
    function Get_TpIntermedio: WideString;
    function Get_CNPJ: WideString;
    function Get_UFTerceiro: WideString;
    function Get_CExportador: WideString;
    function Get_Adi: IXMLAdiList;
    procedure Set_NDI(Value: WideString);
    procedure Set_DDI(Value: WideString);
    procedure Set_XLocDesemb(Value: WideString);
    procedure Set_UFDesemb(Value: WideString);
    procedure Set_DDesemb(Value: WideString);
    procedure Set_TpViaTransp(Value: WideString);
    procedure Set_VAFRMM(Value: WideString);
    procedure Set_TpIntermedio(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_UFTerceiro(Value: WideString);
    procedure Set_CExportador(Value: WideString);
    { Methods & Properties }
    property NDI: WideString read Get_NDI write Set_NDI;
    property DDI: WideString read Get_DDI write Set_DDI;
    property XLocDesemb: WideString read Get_XLocDesemb write Set_XLocDesemb;
    property UFDesemb: WideString read Get_UFDesemb write Set_UFDesemb;
    property DDesemb: WideString read Get_DDesemb write Set_DDesemb;
    property TpViaTransp: WideString read Get_TpViaTransp write Set_TpViaTransp;
    property VAFRMM: WideString read Get_VAFRMM write Set_VAFRMM;
    property TpIntermedio: WideString read Get_TpIntermedio write Set_TpIntermedio;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property UFTerceiro: WideString read Get_UFTerceiro write Set_UFTerceiro;
    property CExportador: WideString read Get_CExportador write Set_CExportador;
    property Adi: IXMLAdiList read Get_Adi;
  end;

{ IXMLDIList }

  IXMLDIList = interface(IXMLNodeCollection)
    ['{7D124609-5C22-4A08-9BA0-917C70361CBD}']
    { Methods & Properties }
    function Add: IXMLDI;
    function Insert(const Index: Integer): IXMLDI;

    function Get_Item(Index: Integer): IXMLDI;
    property Items[Index: Integer]: IXMLDI read Get_Item; default;
  end;

{ IXMLAdi }

  IXMLAdi = interface(IXMLNode)
    ['{44BAA5DD-0A4A-4FFE-80EB-16D9FE2F8649}']
    { Property Accessors }
    function Get_NAdicao: WideString;
    function Get_NSeqAdic: WideString;
    function Get_CFabricante: WideString;
    function Get_VDescDI: WideString;
    function Get_NDraw: WideString;
    procedure Set_NAdicao(Value: WideString);
    procedure Set_NSeqAdic(Value: WideString);
    procedure Set_CFabricante(Value: WideString);
    procedure Set_VDescDI(Value: WideString);
    procedure Set_NDraw(Value: WideString);
    { Methods & Properties }
    property NAdicao: WideString read Get_NAdicao write Set_NAdicao;
    property NSeqAdic: WideString read Get_NSeqAdic write Set_NSeqAdic;
    property CFabricante: WideString read Get_CFabricante write Set_CFabricante;
    property VDescDI: WideString read Get_VDescDI write Set_VDescDI;
    property NDraw: WideString read Get_NDraw write Set_NDraw;
  end;

{ IXMLAdiList }

  IXMLAdiList = interface(IXMLNodeCollection)
    ['{E1E0D78B-5001-49BF-AC90-BC3DC2A3E4DF}']
    { Methods & Properties }
    function Add: IXMLAdi;
    function Insert(const Index: Integer): IXMLAdi;

    function Get_Item(Index: Integer): IXMLAdi;
    property Items[Index: Integer]: IXMLAdi read Get_Item; default;
  end;

{ IXMLDetExport }

  IXMLDetExport = interface(IXMLNode)
    ['{A8A50B38-B073-4B7E-803E-00662DBE21CB}']
    { Property Accessors }
    function Get_NDraw: WideString;
    function Get_ExportInd: IXMLExportInd;
    procedure Set_NDraw(Value: WideString);
    { Methods & Properties }
    property NDraw: WideString read Get_NDraw write Set_NDraw;
    property ExportInd: IXMLExportInd read Get_ExportInd;
  end;

{ IXMLDetExportList }

  IXMLDetExportList = interface(IXMLNodeCollection)
    ['{06E57FF9-B617-4303-82BE-7AE79B6FE26D}']
    { Methods & Properties }
    function Add: IXMLDetExport;
    function Insert(const Index: Integer): IXMLDetExport;

    function Get_Item(Index: Integer): IXMLDetExport;
    property Items[Index: Integer]: IXMLDetExport read Get_Item; default;
  end;

{ IXMLExportInd }

  IXMLExportInd = interface(IXMLNode)
    ['{A2EBEEF7-C3CA-47D6-B7C0-34B2FE44FC20}']
    { Property Accessors }
    function Get_NRE: WideString;
    function Get_ChNFe: WideString;
    function Get_QExport: WideString;
    procedure Set_NRE(Value: WideString);
    procedure Set_ChNFe(Value: WideString);
    procedure Set_QExport(Value: WideString);
    { Methods & Properties }
    property NRE: WideString read Get_NRE write Set_NRE;
    property ChNFe: WideString read Get_ChNFe write Set_ChNFe;
    property QExport: WideString read Get_QExport write Set_QExport;
  end;

{ IXMLVeicProd }

  IXMLVeicProd = interface(IXMLNode)
    ['{274BAB2E-03CA-4D2B-BFA5-F41A0E750118}']
    { Property Accessors }
    function Get_TpOp: WideString;
    function Get_Chassi: WideString;
    function Get_CCor: WideString;
    function Get_XCor: WideString;
    function Get_Pot: WideString;
    function Get_Cilin: WideString;
    function Get_PesoL: WideString;
    function Get_PesoB: WideString;
    function Get_NSerie: WideString;
    function Get_TpComb: WideString;
    function Get_NMotor: WideString;
    function Get_CMT: WideString;
    function Get_Dist: WideString;
    function Get_AnoMod: WideString;
    function Get_AnoFab: WideString;
    function Get_TpPint: WideString;
    function Get_TpVeic: WideString;
    function Get_EspVeic: WideString;
    function Get_VIN: WideString;
    function Get_CondVeic: WideString;
    function Get_CMod: WideString;
    function Get_CCorDENATRAN: WideString;
    function Get_Lota: WideString;
    function Get_TpRest: WideString;
    procedure Set_TpOp(Value: WideString);
    procedure Set_Chassi(Value: WideString);
    procedure Set_CCor(Value: WideString);
    procedure Set_XCor(Value: WideString);
    procedure Set_Pot(Value: WideString);
    procedure Set_Cilin(Value: WideString);
    procedure Set_PesoL(Value: WideString);
    procedure Set_PesoB(Value: WideString);
    procedure Set_NSerie(Value: WideString);
    procedure Set_TpComb(Value: WideString);
    procedure Set_NMotor(Value: WideString);
    procedure Set_CMT(Value: WideString);
    procedure Set_Dist(Value: WideString);
    procedure Set_AnoMod(Value: WideString);
    procedure Set_AnoFab(Value: WideString);
    procedure Set_TpPint(Value: WideString);
    procedure Set_TpVeic(Value: WideString);
    procedure Set_EspVeic(Value: WideString);
    procedure Set_VIN(Value: WideString);
    procedure Set_CondVeic(Value: WideString);
    procedure Set_CMod(Value: WideString);
    procedure Set_CCorDENATRAN(Value: WideString);
    procedure Set_Lota(Value: WideString);
    procedure Set_TpRest(Value: WideString);
    { Methods & Properties }
    property TpOp: WideString read Get_TpOp write Set_TpOp;
    property Chassi: WideString read Get_Chassi write Set_Chassi;
    property CCor: WideString read Get_CCor write Set_CCor;
    property XCor: WideString read Get_XCor write Set_XCor;
    property Pot: WideString read Get_Pot write Set_Pot;
    property Cilin: WideString read Get_Cilin write Set_Cilin;
    property PesoL: WideString read Get_PesoL write Set_PesoL;
    property PesoB: WideString read Get_PesoB write Set_PesoB;
    property NSerie: WideString read Get_NSerie write Set_NSerie;
    property TpComb: WideString read Get_TpComb write Set_TpComb;
    property NMotor: WideString read Get_NMotor write Set_NMotor;
    property CMT: WideString read Get_CMT write Set_CMT;
    property Dist: WideString read Get_Dist write Set_Dist;
    property AnoMod: WideString read Get_AnoMod write Set_AnoMod;
    property AnoFab: WideString read Get_AnoFab write Set_AnoFab;
    property TpPint: WideString read Get_TpPint write Set_TpPint;
    property TpVeic: WideString read Get_TpVeic write Set_TpVeic;
    property EspVeic: WideString read Get_EspVeic write Set_EspVeic;
    property VIN: WideString read Get_VIN write Set_VIN;
    property CondVeic: WideString read Get_CondVeic write Set_CondVeic;
    property CMod: WideString read Get_CMod write Set_CMod;
    property CCorDENATRAN: WideString read Get_CCorDENATRAN write Set_CCorDENATRAN;
    property Lota: WideString read Get_Lota write Set_Lota;
    property TpRest: WideString read Get_TpRest write Set_TpRest;
  end;

{ IXMLMed }

  IXMLMed = interface(IXMLNode)
    ['{3576CF06-32F8-4661-8108-E9FB3C2E9A16}']
    { Property Accessors }
    function Get_NLote: WideString;
    function Get_QLote: WideString;
    function Get_DFab: WideString;
    function Get_DVal: WideString;
    function Get_VPMC: WideString;
    procedure Set_NLote(Value: WideString);
    procedure Set_QLote(Value: WideString);
    procedure Set_DFab(Value: WideString);
    procedure Set_DVal(Value: WideString);
    procedure Set_VPMC(Value: WideString);
    { Methods & Properties }
    property NLote: WideString read Get_NLote write Set_NLote;
    property QLote: WideString read Get_QLote write Set_QLote;
    property DFab: WideString read Get_DFab write Set_DFab;
    property DVal: WideString read Get_DVal write Set_DVal;
    property VPMC: WideString read Get_VPMC write Set_VPMC;
  end;

{ IXMLMedList }

  IXMLMedList = interface(IXMLNodeCollection)
    ['{7FC226D3-F12C-478D-878B-322CA4EFC4E3}']
    { Methods & Properties }
    function Add: IXMLMed;
    function Insert(const Index: Integer): IXMLMed;

    function Get_Item(Index: Integer): IXMLMed;
    property Items[Index: Integer]: IXMLMed read Get_Item; default;
  end;

{ IXMLArma }

  IXMLArma = interface(IXMLNode)
    ['{DEEC84DE-7A68-489A-854C-35504865774B}']
    { Property Accessors }
    function Get_TpArma: WideString;
    function Get_NSerie: WideString;
    function Get_NCano: WideString;
    function Get_Descr: WideString;
    procedure Set_TpArma(Value: WideString);
    procedure Set_NSerie(Value: WideString);
    procedure Set_NCano(Value: WideString);
    procedure Set_Descr(Value: WideString);
    { Methods & Properties }
    property TpArma: WideString read Get_TpArma write Set_TpArma;
    property NSerie: WideString read Get_NSerie write Set_NSerie;
    property NCano: WideString read Get_NCano write Set_NCano;
    property Descr: WideString read Get_Descr write Set_Descr;
  end;

{ IXMLArmaList }

  IXMLArmaList = interface(IXMLNodeCollection)
    ['{48269F1D-A370-4318-8CD0-C76E67A511C9}']
    { Methods & Properties }
    function Add: IXMLArma;
    function Insert(const Index: Integer): IXMLArma;

    function Get_Item(Index: Integer): IXMLArma;
    property Items[Index: Integer]: IXMLArma read Get_Item; default;
  end;

{ IXMLComb }

  IXMLComb = interface(IXMLNode)
    ['{35F7E54F-B6E9-4C27-8D83-291EB310EAFE}']
    { Property Accessors }
    function Get_CProdANP: WideString;
    function Get_PMixGN: WideString;
    function Get_CODIF: WideString;
    function Get_QTemp: WideString;
    function Get_UFCons: WideString;
    function Get_CIDE: IXMLCIDE;
    procedure Set_CProdANP(Value: WideString);
    procedure Set_PMixGN(Value: WideString);
    procedure Set_CODIF(Value: WideString);
    procedure Set_QTemp(Value: WideString);
    procedure Set_UFCons(Value: WideString);
    { Methods & Properties }
    property CProdANP: WideString read Get_CProdANP write Set_CProdANP;
    property PMixGN: WideString read Get_PMixGN write Set_PMixGN;
    property CODIF: WideString read Get_CODIF write Set_CODIF;
    property QTemp: WideString read Get_QTemp write Set_QTemp;
    property UFCons: WideString read Get_UFCons write Set_UFCons;
    property CIDE: IXMLCIDE read Get_CIDE;
  end;

{ IXMLCIDE }

  IXMLCIDE = interface(IXMLNode)
    ['{B0181586-15C0-49F7-B3A7-33896718F873}']
    { Property Accessors }
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VCIDE: WideString;
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VCIDE(Value: WideString);
    { Methods & Properties }
    property QBCProd: WideString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: WideString read Get_VAliqProd write Set_VAliqProd;
    property VCIDE: WideString read Get_VCIDE write Set_VCIDE;
  end;

{ IXMLImposto }

  IXMLImposto = interface(IXMLNode)
    ['{BF04425E-1913-414E-8F8C-8664726335C4}']
    { Property Accessors }
    function Get_VTotTrib: WideString;
    function Get_ICMS: IXMLICMS;
    function Get_IPI: IXMLTIpi;
    function Get_II: IXMLII;
    function Get_ISSQN: IXMLISSQN;
    function Get_PIS: IXMLPIS;
    function Get_PISST: IXMLPISST;
    function Get_COFINS: IXMLCOFINS;
    function Get_COFINSST: IXMLCOFINSST;
    procedure Set_VTotTrib(Value: WideString);
    { Methods & Properties }
    property VTotTrib: WideString read Get_VTotTrib write Set_VTotTrib;
    property ICMS: IXMLICMS read Get_ICMS;
    property IPI: IXMLTIpi read Get_IPI;
    property II: IXMLII read Get_II;
    property ISSQN: IXMLISSQN read Get_ISSQN;
    property PIS: IXMLPIS read Get_PIS;
    property PISST: IXMLPISST read Get_PISST;
    property COFINS: IXMLCOFINS read Get_COFINS;
    property COFINSST: IXMLCOFINSST read Get_COFINSST;
  end;

{ IXMLICMS }

  IXMLICMS = interface(IXMLNode)
    ['{78015B25-E017-4BFD-B163-D322EADEFAC6}']
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
    ['{F3D43101-B3B0-4927-9250-64056AF3D060}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_VBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CST: WideString read Get_CST write Set_CST;
    property ModBC: WideString read Get_ModBC write Set_ModBC;
    property VBC: WideString read Get_VBC write Set_VBC;
    property PICMS: WideString read Get_PICMS write Set_PICMS;
    property VICMS: WideString read Get_VICMS write Set_VICMS;
  end;

{ IXMLICMS10 }

  IXMLICMS10 = interface(IXMLNode)
    ['{8D86E8F3-6743-4FAD-BFF0-008F3C8231DF}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_VBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CST: WideString read Get_CST write Set_CST;
    property ModBC: WideString read Get_ModBC write Set_ModBC;
    property VBC: WideString read Get_VBC write Set_VBC;
    property PICMS: WideString read Get_PICMS write Set_PICMS;
    property VICMS: WideString read Get_VICMS write Set_VICMS;
    property ModBCST: WideString read Get_ModBCST write Set_ModBCST;
    property PMVAST: WideString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: WideString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: WideString read Get_VBCST write Set_VBCST;
    property PICMSST: WideString read Get_PICMSST write Set_PICMSST;
    property VICMSST: WideString read Get_VICMSST write Set_VICMSST;
  end;

{ IXMLICMS20 }

  IXMLICMS20 = interface(IXMLNode)
    ['{0E9D63BF-72BE-4F13-8A68-45B1F3C79C65}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_PRedBC: WideString;
    function Get_VBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    function Get_VICMSDeson: WideString;
    function Get_MotDesICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_PRedBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_VICMSDeson(Value: WideString);
    procedure Set_MotDesICMS(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CST: WideString read Get_CST write Set_CST;
    property ModBC: WideString read Get_ModBC write Set_ModBC;
    property PRedBC: WideString read Get_PRedBC write Set_PRedBC;
    property VBC: WideString read Get_VBC write Set_VBC;
    property PICMS: WideString read Get_PICMS write Set_PICMS;
    property VICMS: WideString read Get_VICMS write Set_VICMS;
    property VICMSDeson: WideString read Get_VICMSDeson write Set_VICMSDeson;
    property MotDesICMS: WideString read Get_MotDesICMS write Set_MotDesICMS;
  end;

{ IXMLICMS30 }

  IXMLICMS30 = interface(IXMLNode)
    ['{E82D7008-527F-4DB6-80A1-FED16D90BF2E}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    function Get_VICMSDeson: WideString;
    function Get_MotDesICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    procedure Set_VICMSDeson(Value: WideString);
    procedure Set_MotDesICMS(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CST: WideString read Get_CST write Set_CST;
    property ModBCST: WideString read Get_ModBCST write Set_ModBCST;
    property PMVAST: WideString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: WideString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: WideString read Get_VBCST write Set_VBCST;
    property PICMSST: WideString read Get_PICMSST write Set_PICMSST;
    property VICMSST: WideString read Get_VICMSST write Set_VICMSST;
    property VICMSDeson: WideString read Get_VICMSDeson write Set_VICMSDeson;
    property MotDesICMS: WideString read Get_MotDesICMS write Set_MotDesICMS;
  end;

{ IXMLICMS40 }

  IXMLICMS40 = interface(IXMLNode)
    ['{B027A7F5-5078-4D1F-8134-E8797D331A69}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_VICMSDeson: WideString;
    function Get_MotDesICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_VICMSDeson(Value: WideString);
    procedure Set_MotDesICMS(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CST: WideString read Get_CST write Set_CST;
    property VICMSDeson: WideString read Get_VICMSDeson write Set_VICMSDeson;
    property MotDesICMS: WideString read Get_MotDesICMS write Set_MotDesICMS;
  end;

{ IXMLICMS51 }

  IXMLICMS51 = interface(IXMLNode)
    ['{4B6297D6-B643-4CD6-94F5-2A295CF85280}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_PRedBC: WideString;
    function Get_VBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMSOp: WideString;
    function Get_PDif: WideString;
    function Get_VICMSDif: WideString;
    function Get_VICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_PRedBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMSOp(Value: WideString);
    procedure Set_PDif(Value: WideString);
    procedure Set_VICMSDif(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CST: WideString read Get_CST write Set_CST;
    property ModBC: WideString read Get_ModBC write Set_ModBC;
    property PRedBC: WideString read Get_PRedBC write Set_PRedBC;
    property VBC: WideString read Get_VBC write Set_VBC;
    property PICMS: WideString read Get_PICMS write Set_PICMS;
    property VICMSOp: WideString read Get_VICMSOp write Set_VICMSOp;
    property PDif: WideString read Get_PDif write Set_PDif;
    property VICMSDif: WideString read Get_VICMSDif write Set_VICMSDif;
    property VICMS: WideString read Get_VICMS write Set_VICMS;
  end;

{ IXMLICMS60 }

  IXMLICMS60 = interface(IXMLNode)
    ['{417B44E6-3A2D-4828-B4CE-98E570B5A21F}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_VBCSTRet: WideString;
    function Get_VICMSSTRet: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_VBCSTRet(Value: WideString);
    procedure Set_VICMSSTRet(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CST: WideString read Get_CST write Set_CST;
    property VBCSTRet: WideString read Get_VBCSTRet write Set_VBCSTRet;
    property VICMSSTRet: WideString read Get_VICMSSTRet write Set_VICMSSTRet;
  end;

{ IXMLICMS70 }

  IXMLICMS70 = interface(IXMLNode)
    ['{6312E7E6-CF0A-42B7-9C75-C1C8EFCA14F3}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_PRedBC: WideString;
    function Get_VBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    function Get_VICMSDeson: WideString;
    function Get_MotDesICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_PRedBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    procedure Set_VICMSDeson(Value: WideString);
    procedure Set_MotDesICMS(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CST: WideString read Get_CST write Set_CST;
    property ModBC: WideString read Get_ModBC write Set_ModBC;
    property PRedBC: WideString read Get_PRedBC write Set_PRedBC;
    property VBC: WideString read Get_VBC write Set_VBC;
    property PICMS: WideString read Get_PICMS write Set_PICMS;
    property VICMS: WideString read Get_VICMS write Set_VICMS;
    property ModBCST: WideString read Get_ModBCST write Set_ModBCST;
    property PMVAST: WideString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: WideString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: WideString read Get_VBCST write Set_VBCST;
    property PICMSST: WideString read Get_PICMSST write Set_PICMSST;
    property VICMSST: WideString read Get_VICMSST write Set_VICMSST;
    property VICMSDeson: WideString read Get_VICMSDeson write Set_VICMSDeson;
    property MotDesICMS: WideString read Get_MotDesICMS write Set_MotDesICMS;
  end;

{ IXMLICMS90 }

  IXMLICMS90 = interface(IXMLNode)
    ['{612AD47E-A7ED-4CEC-8DB9-9A00C6758A6A}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_VBC: WideString;
    function Get_PRedBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    function Get_VICMSDeson: WideString;
    function Get_MotDesICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PRedBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    procedure Set_VICMSDeson(Value: WideString);
    procedure Set_MotDesICMS(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CST: WideString read Get_CST write Set_CST;
    property ModBC: WideString read Get_ModBC write Set_ModBC;
    property VBC: WideString read Get_VBC write Set_VBC;
    property PRedBC: WideString read Get_PRedBC write Set_PRedBC;
    property PICMS: WideString read Get_PICMS write Set_PICMS;
    property VICMS: WideString read Get_VICMS write Set_VICMS;
    property ModBCST: WideString read Get_ModBCST write Set_ModBCST;
    property PMVAST: WideString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: WideString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: WideString read Get_VBCST write Set_VBCST;
    property PICMSST: WideString read Get_PICMSST write Set_PICMSST;
    property VICMSST: WideString read Get_VICMSST write Set_VICMSST;
    property VICMSDeson: WideString read Get_VICMSDeson write Set_VICMSDeson;
    property MotDesICMS: WideString read Get_MotDesICMS write Set_MotDesICMS;
  end;

{ IXMLICMSPart }

  IXMLICMSPart = interface(IXMLNode)
    ['{8F923EDB-82DD-4930-9C1A-A7C707032677}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_VBC: WideString;
    function Get_PRedBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    function Get_PBCOp: WideString;
    function Get_UFST: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PRedBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    procedure Set_PBCOp(Value: WideString);
    procedure Set_UFST(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CST: WideString read Get_CST write Set_CST;
    property ModBC: WideString read Get_ModBC write Set_ModBC;
    property VBC: WideString read Get_VBC write Set_VBC;
    property PRedBC: WideString read Get_PRedBC write Set_PRedBC;
    property PICMS: WideString read Get_PICMS write Set_PICMS;
    property VICMS: WideString read Get_VICMS write Set_VICMS;
    property ModBCST: WideString read Get_ModBCST write Set_ModBCST;
    property PMVAST: WideString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: WideString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: WideString read Get_VBCST write Set_VBCST;
    property PICMSST: WideString read Get_PICMSST write Set_PICMSST;
    property VICMSST: WideString read Get_VICMSST write Set_VICMSST;
    property PBCOp: WideString read Get_PBCOp write Set_PBCOp;
    property UFST: WideString read Get_UFST write Set_UFST;
  end;

{ IXMLICMSST }

  IXMLICMSST = interface(IXMLNode)
    ['{D131D450-5AAD-45FC-9733-1F0033D1668F}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_VBCSTRet: WideString;
    function Get_VICMSSTRet: WideString;
    function Get_VBCSTDest: WideString;
    function Get_VICMSSTDest: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_VBCSTRet(Value: WideString);
    procedure Set_VICMSSTRet(Value: WideString);
    procedure Set_VBCSTDest(Value: WideString);
    procedure Set_VICMSSTDest(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CST: WideString read Get_CST write Set_CST;
    property VBCSTRet: WideString read Get_VBCSTRet write Set_VBCSTRet;
    property VICMSSTRet: WideString read Get_VICMSSTRet write Set_VICMSSTRet;
    property VBCSTDest: WideString read Get_VBCSTDest write Set_VBCSTDest;
    property VICMSSTDest: WideString read Get_VICMSSTDest write Set_VICMSSTDest;
  end;

{ IXMLICMSSN101 }

  IXMLICMSSN101 = interface(IXMLNode)
    ['{CABBC926-C108-4A53-A834-E71CCC8D631C}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    function Get_PCredSN: WideString;
    function Get_VCredICMSSN: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    procedure Set_PCredSN(Value: WideString);
    procedure Set_VCredICMSSN(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CSOSN: WideString read Get_CSOSN write Set_CSOSN;
    property PCredSN: WideString read Get_PCredSN write Set_PCredSN;
    property VCredICMSSN: WideString read Get_VCredICMSSN write Set_VCredICMSSN;
  end;

{ IXMLICMSSN102 }

  IXMLICMSSN102 = interface(IXMLNode)
    ['{E4811CD8-1737-4499-BF3E-2B8078761533}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CSOSN: WideString read Get_CSOSN write Set_CSOSN;
  end;

{ IXMLICMSSN201 }

  IXMLICMSSN201 = interface(IXMLNode)
    ['{6EE51699-8D84-497E-8874-17672757D49B}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    function Get_PCredSN: WideString;
    function Get_VCredICMSSN: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    procedure Set_PCredSN(Value: WideString);
    procedure Set_VCredICMSSN(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CSOSN: WideString read Get_CSOSN write Set_CSOSN;
    property ModBCST: WideString read Get_ModBCST write Set_ModBCST;
    property PMVAST: WideString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: WideString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: WideString read Get_VBCST write Set_VBCST;
    property PICMSST: WideString read Get_PICMSST write Set_PICMSST;
    property VICMSST: WideString read Get_VICMSST write Set_VICMSST;
    property PCredSN: WideString read Get_PCredSN write Set_PCredSN;
    property VCredICMSSN: WideString read Get_VCredICMSSN write Set_VCredICMSSN;
  end;

{ IXMLICMSSN202 }

  IXMLICMSSN202 = interface(IXMLNode)
    ['{0C0AB107-FF5C-404C-BC37-2090EED6ACAC}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CSOSN: WideString read Get_CSOSN write Set_CSOSN;
    property ModBCST: WideString read Get_ModBCST write Set_ModBCST;
    property PMVAST: WideString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: WideString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: WideString read Get_VBCST write Set_VBCST;
    property PICMSST: WideString read Get_PICMSST write Set_PICMSST;
    property VICMSST: WideString read Get_VICMSST write Set_VICMSST;
  end;

{ IXMLICMSSN500 }

  IXMLICMSSN500 = interface(IXMLNode)
    ['{921A2E29-FC6A-4084-B997-78FBDC2C76B4}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    function Get_VBCSTRet: WideString;
    function Get_VICMSSTRet: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    procedure Set_VBCSTRet(Value: WideString);
    procedure Set_VICMSSTRet(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CSOSN: WideString read Get_CSOSN write Set_CSOSN;
    property VBCSTRet: WideString read Get_VBCSTRet write Set_VBCSTRet;
    property VICMSSTRet: WideString read Get_VICMSSTRet write Set_VICMSSTRet;
  end;

{ IXMLICMSSN900 }

  IXMLICMSSN900 = interface(IXMLNode)
    ['{B6694C87-4FD6-4605-86FE-6E5B02A2E5F7}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    function Get_ModBC: WideString;
    function Get_VBC: WideString;
    function Get_PRedBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    function Get_PCredSN: WideString;
    function Get_VCredICMSSN: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PRedBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    procedure Set_PCredSN(Value: WideString);
    procedure Set_VCredICMSSN(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CSOSN: WideString read Get_CSOSN write Set_CSOSN;
    property ModBC: WideString read Get_ModBC write Set_ModBC;
    property VBC: WideString read Get_VBC write Set_VBC;
    property PRedBC: WideString read Get_PRedBC write Set_PRedBC;
    property PICMS: WideString read Get_PICMS write Set_PICMS;
    property VICMS: WideString read Get_VICMS write Set_VICMS;
    property ModBCST: WideString read Get_ModBCST write Set_ModBCST;
    property PMVAST: WideString read Get_PMVAST write Set_PMVAST;
    property PRedBCST: WideString read Get_PRedBCST write Set_PRedBCST;
    property VBCST: WideString read Get_VBCST write Set_VBCST;
    property PICMSST: WideString read Get_PICMSST write Set_PICMSST;
    property VICMSST: WideString read Get_VICMSST write Set_VICMSST;
    property PCredSN: WideString read Get_PCredSN write Set_PCredSN;
    property VCredICMSSN: WideString read Get_VCredICMSSN write Set_VCredICMSSN;
  end;

{ IXMLTIpi }

  IXMLTIpi = interface(IXMLNode)
    ['{662F894A-53DA-40E6-8B0A-FBF445D1CD7A}']
    { Property Accessors }
    function Get_ClEnq: WideString;
    function Get_CNPJProd: WideString;
    function Get_CSelo: WideString;
    function Get_QSelo: WideString;
    function Get_CEnq: WideString;
    function Get_IPITrib: IXMLIPITrib;
    function Get_IPINT: IXMLIPINT;
    procedure Set_ClEnq(Value: WideString);
    procedure Set_CNPJProd(Value: WideString);
    procedure Set_CSelo(Value: WideString);
    procedure Set_QSelo(Value: WideString);
    procedure Set_CEnq(Value: WideString);
    { Methods & Properties }
    property ClEnq: WideString read Get_ClEnq write Set_ClEnq;
    property CNPJProd: WideString read Get_CNPJProd write Set_CNPJProd;
    property CSelo: WideString read Get_CSelo write Set_CSelo;
    property QSelo: WideString read Get_QSelo write Set_QSelo;
    property CEnq: WideString read Get_CEnq write Set_CEnq;
    property IPITrib: IXMLIPITrib read Get_IPITrib;
    property IPINT: IXMLIPINT read Get_IPINT;
  end;

{ IXMLIPITrib }

  IXMLIPITrib = interface(IXMLNode)
    ['{75129C84-D56D-4FAA-A3EE-4EDE6A3D862E}']
    { Property Accessors }
    function Get_CST: WideString;
    function Get_VBC: WideString;
    function Get_PIPI: WideString;
    function Get_QUnid: WideString;
    function Get_VUnid: WideString;
    function Get_VIPI: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PIPI(Value: WideString);
    procedure Set_QUnid(Value: WideString);
    procedure Set_VUnid(Value: WideString);
    procedure Set_VIPI(Value: WideString);
    { Methods & Properties }
    property CST: WideString read Get_CST write Set_CST;
    property VBC: WideString read Get_VBC write Set_VBC;
    property PIPI: WideString read Get_PIPI write Set_PIPI;
    property QUnid: WideString read Get_QUnid write Set_QUnid;
    property VUnid: WideString read Get_VUnid write Set_VUnid;
    property VIPI: WideString read Get_VIPI write Set_VIPI;
  end;

{ IXMLIPINT }

  IXMLIPINT = interface(IXMLNode)
    ['{B20B3AAA-FA0F-4CB4-96C1-CBDD4202E39B}']
    { Property Accessors }
    function Get_CST: WideString;
    procedure Set_CST(Value: WideString);
    { Methods & Properties }
    property CST: WideString read Get_CST write Set_CST;
  end;

{ IXMLII }

  IXMLII = interface(IXMLNode)
    ['{BABD533D-DE10-4890-B378-A389739590EB}']
    { Property Accessors }
    function Get_VBC: WideString;
    function Get_VDespAdu: WideString;
    function Get_VII: WideString;
    function Get_VIOF: WideString;
    procedure Set_VBC(Value: WideString);
    procedure Set_VDespAdu(Value: WideString);
    procedure Set_VII(Value: WideString);
    procedure Set_VIOF(Value: WideString);
    { Methods & Properties }
    property VBC: WideString read Get_VBC write Set_VBC;
    property VDespAdu: WideString read Get_VDespAdu write Set_VDespAdu;
    property VII: WideString read Get_VII write Set_VII;
    property VIOF: WideString read Get_VIOF write Set_VIOF;
  end;

{ IXMLISSQN }

  IXMLISSQN = interface(IXMLNode)
    ['{50AB2BCB-0F2A-4EEE-92CC-E3DBAF60FE69}']
    { Property Accessors }
    function Get_VBC: WideString;
    function Get_VAliq: WideString;
    function Get_VISSQN: WideString;
    function Get_CMunFG: WideString;
    function Get_CListServ: WideString;
    function Get_VDeducao: WideString;
    function Get_VOutro: WideString;
    function Get_VDescIncond: WideString;
    function Get_VDescCond: WideString;
    function Get_VISSRet: WideString;
    function Get_IndISS: WideString;
    function Get_CServico: WideString;
    function Get_CMun: WideString;
    function Get_CPais: WideString;
    function Get_NProcesso: WideString;
    function Get_IndIncentivo: WideString;
    procedure Set_VBC(Value: WideString);
    procedure Set_VAliq(Value: WideString);
    procedure Set_VISSQN(Value: WideString);
    procedure Set_CMunFG(Value: WideString);
    procedure Set_CListServ(Value: WideString);
    procedure Set_VDeducao(Value: WideString);
    procedure Set_VOutro(Value: WideString);
    procedure Set_VDescIncond(Value: WideString);
    procedure Set_VDescCond(Value: WideString);
    procedure Set_VISSRet(Value: WideString);
    procedure Set_IndISS(Value: WideString);
    procedure Set_CServico(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_CPais(Value: WideString);
    procedure Set_NProcesso(Value: WideString);
    procedure Set_IndIncentivo(Value: WideString);
    { Methods & Properties }
    property VBC: WideString read Get_VBC write Set_VBC;
    property VAliq: WideString read Get_VAliq write Set_VAliq;
    property VISSQN: WideString read Get_VISSQN write Set_VISSQN;
    property CMunFG: WideString read Get_CMunFG write Set_CMunFG;
    property CListServ: WideString read Get_CListServ write Set_CListServ;
    property VDeducao: WideString read Get_VDeducao write Set_VDeducao;
    property VOutro: WideString read Get_VOutro write Set_VOutro;
    property VDescIncond: WideString read Get_VDescIncond write Set_VDescIncond;
    property VDescCond: WideString read Get_VDescCond write Set_VDescCond;
    property VISSRet: WideString read Get_VISSRet write Set_VISSRet;
    property IndISS: WideString read Get_IndISS write Set_IndISS;
    property CServico: WideString read Get_CServico write Set_CServico;
    property CMun: WideString read Get_CMun write Set_CMun;
    property CPais: WideString read Get_CPais write Set_CPais;
    property NProcesso: WideString read Get_NProcesso write Set_NProcesso;
    property IndIncentivo: WideString read Get_IndIncentivo write Set_IndIncentivo;
  end;

{ IXMLPIS }

  IXMLPIS = interface(IXMLNode)
    ['{FC4D8715-5885-4A8F-8643-945E9FECB3D9}']
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
    ['{1511D96D-8A6B-4B61-84EC-A9A7E013663D}']
    { Property Accessors }
    function Get_CST: WideString;
    function Get_VBC: WideString;
    function Get_PPIS: WideString;
    function Get_VPIS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PPIS(Value: WideString);
    procedure Set_VPIS(Value: WideString);
    { Methods & Properties }
    property CST: WideString read Get_CST write Set_CST;
    property VBC: WideString read Get_VBC write Set_VBC;
    property PPIS: WideString read Get_PPIS write Set_PPIS;
    property VPIS: WideString read Get_VPIS write Set_VPIS;
  end;

{ IXMLPISQtde }

  IXMLPISQtde = interface(IXMLNode)
    ['{86842166-8A2E-4AAE-AE45-D7C78C210E8C}']
    { Property Accessors }
    function Get_CST: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VPIS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VPIS(Value: WideString);
    { Methods & Properties }
    property CST: WideString read Get_CST write Set_CST;
    property QBCProd: WideString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: WideString read Get_VAliqProd write Set_VAliqProd;
    property VPIS: WideString read Get_VPIS write Set_VPIS;
  end;

{ IXMLPISNT }

  IXMLPISNT = interface(IXMLNode)
    ['{A95E60EA-E3E1-466C-BCA7-626C25CBE234}']
    { Property Accessors }
    function Get_CST: WideString;
    procedure Set_CST(Value: WideString);
    { Methods & Properties }
    property CST: WideString read Get_CST write Set_CST;
  end;

{ IXMLPISOutr }

  IXMLPISOutr = interface(IXMLNode)
    ['{6F77D179-2928-4A4F-9CDF-F7101F3AAFCD}']
    { Property Accessors }
    function Get_CST: WideString;
    function Get_VBC: WideString;
    function Get_PPIS: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VPIS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PPIS(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VPIS(Value: WideString);
    { Methods & Properties }
    property CST: WideString read Get_CST write Set_CST;
    property VBC: WideString read Get_VBC write Set_VBC;
    property PPIS: WideString read Get_PPIS write Set_PPIS;
    property QBCProd: WideString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: WideString read Get_VAliqProd write Set_VAliqProd;
    property VPIS: WideString read Get_VPIS write Set_VPIS;
  end;

{ IXMLPISST }

  IXMLPISST = interface(IXMLNode)
    ['{32D4FD9F-72BE-48FB-ABD3-91E57054210E}']
    { Property Accessors }
    function Get_VBC: WideString;
    function Get_PPIS: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VPIS: WideString;
    procedure Set_VBC(Value: WideString);
    procedure Set_PPIS(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VPIS(Value: WideString);
    { Methods & Properties }
    property VBC: WideString read Get_VBC write Set_VBC;
    property PPIS: WideString read Get_PPIS write Set_PPIS;
    property QBCProd: WideString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: WideString read Get_VAliqProd write Set_VAliqProd;
    property VPIS: WideString read Get_VPIS write Set_VPIS;
  end;

{ IXMLCOFINS }

  IXMLCOFINS = interface(IXMLNode)
    ['{25192C28-CAEF-48BF-AFA9-535C50F1F3BF}']
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
    ['{F0091C16-8E6E-471B-BD0B-41214B39CC34}']
    { Property Accessors }
    function Get_CST: WideString;
    function Get_VBC: WideString;
    function Get_PCOFINS: WideString;
    function Get_VCOFINS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PCOFINS(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
    { Methods & Properties }
    property CST: WideString read Get_CST write Set_CST;
    property VBC: WideString read Get_VBC write Set_VBC;
    property PCOFINS: WideString read Get_PCOFINS write Set_PCOFINS;
    property VCOFINS: WideString read Get_VCOFINS write Set_VCOFINS;
  end;

{ IXMLCOFINSQtde }

  IXMLCOFINSQtde = interface(IXMLNode)
    ['{AB444F53-F592-4D6C-9C55-E9145A66CE80}']
    { Property Accessors }
    function Get_CST: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VCOFINS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
    { Methods & Properties }
    property CST: WideString read Get_CST write Set_CST;
    property QBCProd: WideString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: WideString read Get_VAliqProd write Set_VAliqProd;
    property VCOFINS: WideString read Get_VCOFINS write Set_VCOFINS;
  end;

{ IXMLCOFINSNT }

  IXMLCOFINSNT = interface(IXMLNode)
    ['{CA86CFA2-4CD7-44A8-BD68-D0E8DAD227FB}']
    { Property Accessors }
    function Get_CST: WideString;
    procedure Set_CST(Value: WideString);
    { Methods & Properties }
    property CST: WideString read Get_CST write Set_CST;
  end;

{ IXMLCOFINSOutr }

  IXMLCOFINSOutr = interface(IXMLNode)
    ['{F8419B4F-0EF3-4ADC-80A2-53B328B95F80}']
    { Property Accessors }
    function Get_CST: WideString;
    function Get_VBC: WideString;
    function Get_PCOFINS: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VCOFINS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PCOFINS(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
    { Methods & Properties }
    property CST: WideString read Get_CST write Set_CST;
    property VBC: WideString read Get_VBC write Set_VBC;
    property PCOFINS: WideString read Get_PCOFINS write Set_PCOFINS;
    property QBCProd: WideString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: WideString read Get_VAliqProd write Set_VAliqProd;
    property VCOFINS: WideString read Get_VCOFINS write Set_VCOFINS;
  end;

{ IXMLCOFINSST }

  IXMLCOFINSST = interface(IXMLNode)
    ['{2FA02EEE-E9AD-4091-942A-4D337D0F2630}']
    { Property Accessors }
    function Get_VBC: WideString;
    function Get_PCOFINS: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VCOFINS: WideString;
    procedure Set_VBC(Value: WideString);
    procedure Set_PCOFINS(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
    { Methods & Properties }
    property VBC: WideString read Get_VBC write Set_VBC;
    property PCOFINS: WideString read Get_PCOFINS write Set_PCOFINS;
    property QBCProd: WideString read Get_QBCProd write Set_QBCProd;
    property VAliqProd: WideString read Get_VAliqProd write Set_VAliqProd;
    property VCOFINS: WideString read Get_VCOFINS write Set_VCOFINS;
  end;

{ IXMLImpostoDevol }

  IXMLImpostoDevol = interface(IXMLNode)
    ['{EE4CDA64-4404-497D-AF5A-A70A5D845027}']
    { Property Accessors }
    function Get_PDevol: WideString;
    function Get_IPI: IXMLIPI;
    procedure Set_PDevol(Value: WideString);
    { Methods & Properties }
    property PDevol: WideString read Get_PDevol write Set_PDevol;
    property IPI: IXMLIPI read Get_IPI;
  end;

{ IXMLIPI }

  IXMLIPI = interface(IXMLNode)
    ['{F0EB7E60-4ACC-426E-BB4E-EEDA0B2D4253}']
    { Property Accessors }
    function Get_VIPIDevol: WideString;
    procedure Set_VIPIDevol(Value: WideString);
    { Methods & Properties }
    property VIPIDevol: WideString read Get_VIPIDevol write Set_VIPIDevol;
  end;

{ IXMLTotal }

  IXMLTotal = interface(IXMLNode)
    ['{010E3DF0-063C-42C9-8C3B-4B3A8BA5EAA1}']
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
    ['{E92A350B-756A-42AA-BF5C-5860FD9F8073}']
    { Property Accessors }
    function Get_VBC: WideString;
    function Get_VICMS: WideString;
    function Get_VICMSDeson: WideString;
    function Get_VBCST: WideString;
    function Get_VST: WideString;
    function Get_VProd: WideString;
    function Get_VFrete: WideString;
    function Get_VSeg: WideString;
    function Get_VDesc: WideString;
    function Get_VII: WideString;
    function Get_VIPI: WideString;
    function Get_VPIS: WideString;
    function Get_VCOFINS: WideString;
    function Get_VOutro: WideString;
    function Get_VNF: WideString;
    function Get_VTotTrib: WideString;
    procedure Set_VBC(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_VICMSDeson(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_VST(Value: WideString);
    procedure Set_VProd(Value: WideString);
    procedure Set_VFrete(Value: WideString);
    procedure Set_VSeg(Value: WideString);
    procedure Set_VDesc(Value: WideString);
    procedure Set_VII(Value: WideString);
    procedure Set_VIPI(Value: WideString);
    procedure Set_VPIS(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
    procedure Set_VOutro(Value: WideString);
    procedure Set_VNF(Value: WideString);
    procedure Set_VTotTrib(Value: WideString);
    { Methods & Properties }
    property VBC: WideString read Get_VBC write Set_VBC;
    property VICMS: WideString read Get_VICMS write Set_VICMS;
    property VICMSDeson: WideString read Get_VICMSDeson write Set_VICMSDeson;
    property VBCST: WideString read Get_VBCST write Set_VBCST;
    property VST: WideString read Get_VST write Set_VST;
    property VProd: WideString read Get_VProd write Set_VProd;
    property VFrete: WideString read Get_VFrete write Set_VFrete;
    property VSeg: WideString read Get_VSeg write Set_VSeg;
    property VDesc: WideString read Get_VDesc write Set_VDesc;
    property VII: WideString read Get_VII write Set_VII;
    property VIPI: WideString read Get_VIPI write Set_VIPI;
    property VPIS: WideString read Get_VPIS write Set_VPIS;
    property VCOFINS: WideString read Get_VCOFINS write Set_VCOFINS;
    property VOutro: WideString read Get_VOutro write Set_VOutro;
    property VNF: WideString read Get_VNF write Set_VNF;
    property VTotTrib: WideString read Get_VTotTrib write Set_VTotTrib;
  end;

{ IXMLISSQNtot }

  IXMLISSQNtot = interface(IXMLNode)
    ['{B858E3C7-37CA-46EA-97C8-1DAEA29E767C}']
    { Property Accessors }
    function Get_VServ: WideString;
    function Get_VBC: WideString;
    function Get_VISS: WideString;
    function Get_VPIS: WideString;
    function Get_VCOFINS: WideString;
    function Get_DCompet: WideString;
    function Get_VDeducao: WideString;
    function Get_VOutro: WideString;
    function Get_VDescIncond: WideString;
    function Get_VDescCond: WideString;
    function Get_VISSRet: WideString;
    function Get_CRegTrib: WideString;
    procedure Set_VServ(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_VISS(Value: WideString);
    procedure Set_VPIS(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
    procedure Set_DCompet(Value: WideString);
    procedure Set_VDeducao(Value: WideString);
    procedure Set_VOutro(Value: WideString);
    procedure Set_VDescIncond(Value: WideString);
    procedure Set_VDescCond(Value: WideString);
    procedure Set_VISSRet(Value: WideString);
    procedure Set_CRegTrib(Value: WideString);
    { Methods & Properties }
    property VServ: WideString read Get_VServ write Set_VServ;
    property VBC: WideString read Get_VBC write Set_VBC;
    property VISS: WideString read Get_VISS write Set_VISS;
    property VPIS: WideString read Get_VPIS write Set_VPIS;
    property VCOFINS: WideString read Get_VCOFINS write Set_VCOFINS;
    property DCompet: WideString read Get_DCompet write Set_DCompet;
    property VDeducao: WideString read Get_VDeducao write Set_VDeducao;
    property VOutro: WideString read Get_VOutro write Set_VOutro;
    property VDescIncond: WideString read Get_VDescIncond write Set_VDescIncond;
    property VDescCond: WideString read Get_VDescCond write Set_VDescCond;
    property VISSRet: WideString read Get_VISSRet write Set_VISSRet;
    property CRegTrib: WideString read Get_CRegTrib write Set_CRegTrib;
  end;

{ IXMLRetTrib }

  IXMLRetTrib = interface(IXMLNode)
    ['{2A612DF5-BB87-4306-80A6-5B92F8701191}']
    { Property Accessors }
    function Get_VRetPIS: WideString;
    function Get_VRetCOFINS: WideString;
    function Get_VRetCSLL: WideString;
    function Get_VBCIRRF: WideString;
    function Get_VIRRF: WideString;
    function Get_VBCRetPrev: WideString;
    function Get_VRetPrev: WideString;
    procedure Set_VRetPIS(Value: WideString);
    procedure Set_VRetCOFINS(Value: WideString);
    procedure Set_VRetCSLL(Value: WideString);
    procedure Set_VBCIRRF(Value: WideString);
    procedure Set_VIRRF(Value: WideString);
    procedure Set_VBCRetPrev(Value: WideString);
    procedure Set_VRetPrev(Value: WideString);
    { Methods & Properties }
    property VRetPIS: WideString read Get_VRetPIS write Set_VRetPIS;
    property VRetCOFINS: WideString read Get_VRetCOFINS write Set_VRetCOFINS;
    property VRetCSLL: WideString read Get_VRetCSLL write Set_VRetCSLL;
    property VBCIRRF: WideString read Get_VBCIRRF write Set_VBCIRRF;
    property VIRRF: WideString read Get_VIRRF write Set_VIRRF;
    property VBCRetPrev: WideString read Get_VBCRetPrev write Set_VBCRetPrev;
    property VRetPrev: WideString read Get_VRetPrev write Set_VRetPrev;
  end;

{ IXMLTransp }

  IXMLTransp = interface(IXMLNode)
    ['{AD205419-948F-4873-B550-F856F27EE8DA}']
    { Property Accessors }
    function Get_ModFrete: WideString;
    function Get_Transporta: IXMLTransporta;
    function Get_RetTransp: IXMLRetTransp;
    function Get_VeicTransp: IXMLTVeiculo;
    function Get_Reboque: IXMLTVeiculoList;
    function Get_Vagao: WideString;
    function Get_Balsa: WideString;
    function Get_Vol: IXMLVolList;
    procedure Set_ModFrete(Value: WideString);
    procedure Set_Vagao(Value: WideString);
    procedure Set_Balsa(Value: WideString);
    { Methods & Properties }
    property ModFrete: WideString read Get_ModFrete write Set_ModFrete;
    property Transporta: IXMLTransporta read Get_Transporta;
    property RetTransp: IXMLRetTransp read Get_RetTransp;
    property VeicTransp: IXMLTVeiculo read Get_VeicTransp;
    property Reboque: IXMLTVeiculoList read Get_Reboque;
    property Vagao: WideString read Get_Vagao write Set_Vagao;
    property Balsa: WideString read Get_Balsa write Set_Balsa;
    property Vol: IXMLVolList read Get_Vol;
  end;

{ IXMLTransporta }

  IXMLTransporta = interface(IXMLNode)
    ['{5203B58C-9159-412D-BDBB-FB21A0680F63}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_XNome: WideString;
    function Get_IE: WideString;
    function Get_XEnder: WideString;
    function Get_XMun: WideString;
    function Get_UF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_XEnder(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_UF(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property CPF: WideString read Get_CPF write Set_CPF;
    property XNome: WideString read Get_XNome write Set_XNome;
    property IE: WideString read Get_IE write Set_IE;
    property XEnder: WideString read Get_XEnder write Set_XEnder;
    property XMun: WideString read Get_XMun write Set_XMun;
    property UF: WideString read Get_UF write Set_UF;
  end;

{ IXMLRetTransp }

  IXMLRetTransp = interface(IXMLNode)
    ['{D91475AE-07E8-45C0-A78A-EC1D9548EFE3}']
    { Property Accessors }
    function Get_VServ: WideString;
    function Get_VBCRet: WideString;
    function Get_PICMSRet: WideString;
    function Get_VICMSRet: WideString;
    function Get_CFOP: WideString;
    function Get_CMunFG: WideString;
    procedure Set_VServ(Value: WideString);
    procedure Set_VBCRet(Value: WideString);
    procedure Set_PICMSRet(Value: WideString);
    procedure Set_VICMSRet(Value: WideString);
    procedure Set_CFOP(Value: WideString);
    procedure Set_CMunFG(Value: WideString);
    { Methods & Properties }
    property VServ: WideString read Get_VServ write Set_VServ;
    property VBCRet: WideString read Get_VBCRet write Set_VBCRet;
    property PICMSRet: WideString read Get_PICMSRet write Set_PICMSRet;
    property VICMSRet: WideString read Get_VICMSRet write Set_VICMSRet;
    property CFOP: WideString read Get_CFOP write Set_CFOP;
    property CMunFG: WideString read Get_CMunFG write Set_CMunFG;
  end;

{ IXMLTVeiculo }

  IXMLTVeiculo = interface(IXMLNode)
    ['{6DD5DDA1-B19D-4AB2-BAC2-89F7F16FF90C}']
    { Property Accessors }
    function Get_Placa: WideString;
    function Get_UF: WideString;
    function Get_RNTC: WideString;
    procedure Set_Placa(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_RNTC(Value: WideString);
    { Methods & Properties }
    property Placa: WideString read Get_Placa write Set_Placa;
    property UF: WideString read Get_UF write Set_UF;
    property RNTC: WideString read Get_RNTC write Set_RNTC;
  end;

{ IXMLTVeiculoList }

  IXMLTVeiculoList = interface(IXMLNodeCollection)
    ['{B9592CA2-BB2A-4AA6-94EF-3ED28253263A}']
    { Methods & Properties }
    function Add: IXMLTVeiculo;
    function Insert(const Index: Integer): IXMLTVeiculo;

    function Get_Item(Index: Integer): IXMLTVeiculo;
    property Items[Index: Integer]: IXMLTVeiculo read Get_Item; default;
  end;

{ IXMLVol }

  IXMLVol = interface(IXMLNode)
    ['{93E2A016-C7E9-48EF-A7B3-0E486B652C23}']
    { Property Accessors }
    function Get_QVol: WideString;
    function Get_Esp: WideString;
    function Get_Marca: WideString;
    function Get_NVol: WideString;
    function Get_PesoL: WideString;
    function Get_PesoB: WideString;
    function Get_Lacres: IXMLLacresList;
    procedure Set_QVol(Value: WideString);
    procedure Set_Esp(Value: WideString);
    procedure Set_Marca(Value: WideString);
    procedure Set_NVol(Value: WideString);
    procedure Set_PesoL(Value: WideString);
    procedure Set_PesoB(Value: WideString);
    { Methods & Properties }
    property QVol: WideString read Get_QVol write Set_QVol;
    property Esp: WideString read Get_Esp write Set_Esp;
    property Marca: WideString read Get_Marca write Set_Marca;
    property NVol: WideString read Get_NVol write Set_NVol;
    property PesoL: WideString read Get_PesoL write Set_PesoL;
    property PesoB: WideString read Get_PesoB write Set_PesoB;
    property Lacres: IXMLLacresList read Get_Lacres;
  end;

{ IXMLVolList }

  IXMLVolList = interface(IXMLNodeCollection)
    ['{C5D1D8EF-AE78-487D-A1C5-537753A47520}']
    { Methods & Properties }
    function Add: IXMLVol;
    function Insert(const Index: Integer): IXMLVol;

    function Get_Item(Index: Integer): IXMLVol;
    property Items[Index: Integer]: IXMLVol read Get_Item; default;
  end;

{ IXMLLacres }

  IXMLLacres = interface(IXMLNode)
    ['{66BDAC57-33B0-4041-9E76-DD8C39190F81}']
    { Property Accessors }
    function Get_NLacre: WideString;
    procedure Set_NLacre(Value: WideString);
    { Methods & Properties }
    property NLacre: WideString read Get_NLacre write Set_NLacre;
  end;

{ IXMLLacresList }

  IXMLLacresList = interface(IXMLNodeCollection)
    ['{B08D3718-3C58-4B0E-88B4-2CB195283F89}']
    { Methods & Properties }
    function Add: IXMLLacres;
    function Insert(const Index: Integer): IXMLLacres;

    function Get_Item(Index: Integer): IXMLLacres;
    property Items[Index: Integer]: IXMLLacres read Get_Item; default;
  end;

{ IXMLCobr }

  IXMLCobr = interface(IXMLNode)
    ['{75B2B630-8BB1-48D8-B3E0-B9EBEB493877}']
    { Property Accessors }
    function Get_Fat: IXMLFat;
    function Get_Dup: IXMLDupList;
    { Methods & Properties }
    property Fat: IXMLFat read Get_Fat;
    property Dup: IXMLDupList read Get_Dup;
  end;

{ IXMLFat }

  IXMLFat = interface(IXMLNode)
    ['{88B45B4C-3EE7-445C-AE03-EB6FDA49CF20}']
    { Property Accessors }
    function Get_NFat: WideString;
    function Get_VOrig: WideString;
    function Get_VDesc: WideString;
    function Get_VLiq: WideString;
    procedure Set_NFat(Value: WideString);
    procedure Set_VOrig(Value: WideString);
    procedure Set_VDesc(Value: WideString);
    procedure Set_VLiq(Value: WideString);
    { Methods & Properties }
    property NFat: WideString read Get_NFat write Set_NFat;
    property VOrig: WideString read Get_VOrig write Set_VOrig;
    property VDesc: WideString read Get_VDesc write Set_VDesc;
    property VLiq: WideString read Get_VLiq write Set_VLiq;
  end;

{ IXMLDup }

  IXMLDup = interface(IXMLNode)
    ['{18E6B8BF-2EE4-4755-B011-75CE8CBEB86D}']
    { Property Accessors }
    function Get_NDup: WideString;
    function Get_DVenc: WideString;
    function Get_VDup: WideString;
    procedure Set_NDup(Value: WideString);
    procedure Set_DVenc(Value: WideString);
    procedure Set_VDup(Value: WideString);
    { Methods & Properties }
    property NDup: WideString read Get_NDup write Set_NDup;
    property DVenc: WideString read Get_DVenc write Set_DVenc;
    property VDup: WideString read Get_VDup write Set_VDup;
  end;

{ IXMLDupList }

  IXMLDupList = interface(IXMLNodeCollection)
    ['{5F8C1AFE-BCE2-4C9B-8748-CEECDC2E47F1}']
    { Methods & Properties }
    function Add: IXMLDup;
    function Insert(const Index: Integer): IXMLDup;

    function Get_Item(Index: Integer): IXMLDup;
    property Items[Index: Integer]: IXMLDup read Get_Item; default;
  end;

{ IXMLPag }

  IXMLPag = interface(IXMLNode)
    ['{CFE5C0FB-45D1-455D-9D76-FC9CF54E26AB}']
    { Property Accessors }
    function Get_TPag: WideString;
    function Get_VPag: WideString;
    function Get_Card: IXMLCard;
    procedure Set_TPag(Value: WideString);
    procedure Set_VPag(Value: WideString);
    { Methods & Properties }
    property TPag: WideString read Get_TPag write Set_TPag;
    property VPag: WideString read Get_VPag write Set_VPag;
    property Card: IXMLCard read Get_Card;
  end;

{ IXMLPagList }

  IXMLPagList = interface(IXMLNodeCollection)
    ['{3468F6CA-6D3B-4A99-9865-EE9B46AA1ABC}']
    { Methods & Properties }
    function Add: IXMLPag;
    function Insert(const Index: Integer): IXMLPag;

    function Get_Item(Index: Integer): IXMLPag;
    property Items[Index: Integer]: IXMLPag read Get_Item; default;
  end;

{ IXMLCard }

  IXMLCard = interface(IXMLNode)
    ['{B3FF8C57-C4F7-49DD-8D95-CF0B98F583AC}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_TBand: WideString;
    function Get_CAut: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_TBand(Value: WideString);
    procedure Set_CAut(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property TBand: WideString read Get_TBand write Set_TBand;
    property CAut: WideString read Get_CAut write Set_CAut;
  end;

{ IXMLInfAdic }

  IXMLInfAdic = interface(IXMLNode)
    ['{502876E0-5DE6-4A7B-A7A1-05F40912C506}']
    { Property Accessors }
    function Get_InfAdFisco: WideString;
    function Get_InfCpl: WideString;
    function Get_ObsCont: IXMLObsContList;
    function Get_ObsFisco: IXMLObsFiscoList;
    function Get_ProcRef: IXMLProcRefList;
    procedure Set_InfAdFisco(Value: WideString);
    procedure Set_InfCpl(Value: WideString);
    { Methods & Properties }
    property InfAdFisco: WideString read Get_InfAdFisco write Set_InfAdFisco;
    property InfCpl: WideString read Get_InfCpl write Set_InfCpl;
    property ObsCont: IXMLObsContList read Get_ObsCont;
    property ObsFisco: IXMLObsFiscoList read Get_ObsFisco;
    property ProcRef: IXMLProcRefList read Get_ProcRef;
  end;

{ IXMLObsCont }

  IXMLObsCont = interface(IXMLNode)
    ['{3E02A4C1-A12A-4D8C-86BD-AB3B36618FC3}']
    { Property Accessors }
    function Get_XCampo: WideString;
    function Get_XTexto: WideString;
    procedure Set_XCampo(Value: WideString);
    procedure Set_XTexto(Value: WideString);
    { Methods & Properties }
    property XCampo: WideString read Get_XCampo write Set_XCampo;
    property XTexto: WideString read Get_XTexto write Set_XTexto;
  end;

{ IXMLObsContList }

  IXMLObsContList = interface(IXMLNodeCollection)
    ['{B97A18CC-7265-43C9-8E6E-66750D455F29}']
    { Methods & Properties }
    function Add: IXMLObsCont;
    function Insert(const Index: Integer): IXMLObsCont;

    function Get_Item(Index: Integer): IXMLObsCont;
    property Items[Index: Integer]: IXMLObsCont read Get_Item; default;
  end;

{ IXMLObsFisco }

  IXMLObsFisco = interface(IXMLNode)
    ['{0A189FB5-3C67-4F64-AE19-57C5148D28D1}']
    { Property Accessors }
    function Get_XCampo: WideString;
    function Get_XTexto: WideString;
    procedure Set_XCampo(Value: WideString);
    procedure Set_XTexto(Value: WideString);
    { Methods & Properties }
    property XCampo: WideString read Get_XCampo write Set_XCampo;
    property XTexto: WideString read Get_XTexto write Set_XTexto;
  end;

{ IXMLObsFiscoList }

  IXMLObsFiscoList = interface(IXMLNodeCollection)
    ['{2472BB08-70F9-4E2A-A0EB-353037E9898B}']
    { Methods & Properties }
    function Add: IXMLObsFisco;
    function Insert(const Index: Integer): IXMLObsFisco;

    function Get_Item(Index: Integer): IXMLObsFisco;
    property Items[Index: Integer]: IXMLObsFisco read Get_Item; default;
  end;

{ IXMLProcRef }

  IXMLProcRef = interface(IXMLNode)
    ['{E42DC4F5-D838-423D-990F-00D0B94F10DE}']
    { Property Accessors }
    function Get_NProc: WideString;
    function Get_IndProc: WideString;
    procedure Set_NProc(Value: WideString);
    procedure Set_IndProc(Value: WideString);
    { Methods & Properties }
    property NProc: WideString read Get_NProc write Set_NProc;
    property IndProc: WideString read Get_IndProc write Set_IndProc;
  end;

{ IXMLProcRefList }

  IXMLProcRefList = interface(IXMLNodeCollection)
    ['{28FE0C1B-020D-41A2-AE26-0EDC993DC862}']
    { Methods & Properties }
    function Add: IXMLProcRef;
    function Insert(const Index: Integer): IXMLProcRef;

    function Get_Item(Index: Integer): IXMLProcRef;
    property Items[Index: Integer]: IXMLProcRef read Get_Item; default;
  end;

{ IXMLExporta }

  IXMLExporta = interface(IXMLNode)
    ['{2AA0E9EB-EF28-455A-9E96-C3E869D7F678}']
    { Property Accessors }
    function Get_UFSaidaPais: WideString;
    function Get_XLocExporta: WideString;
    function Get_XLocDespacho: WideString;
    procedure Set_UFSaidaPais(Value: WideString);
    procedure Set_XLocExporta(Value: WideString);
    procedure Set_XLocDespacho(Value: WideString);
    { Methods & Properties }
    property UFSaidaPais: WideString read Get_UFSaidaPais write Set_UFSaidaPais;
    property XLocExporta: WideString read Get_XLocExporta write Set_XLocExporta;
    property XLocDespacho: WideString read Get_XLocDespacho write Set_XLocDespacho;
  end;

{ IXMLCompra }

  IXMLCompra = interface(IXMLNode)
    ['{D20C9607-4A9A-445B-A665-15F5356CACC9}']
    { Property Accessors }
    function Get_XNEmp: WideString;
    function Get_XPed: WideString;
    function Get_XCont: WideString;
    procedure Set_XNEmp(Value: WideString);
    procedure Set_XPed(Value: WideString);
    procedure Set_XCont(Value: WideString);
    { Methods & Properties }
    property XNEmp: WideString read Get_XNEmp write Set_XNEmp;
    property XPed: WideString read Get_XPed write Set_XPed;
    property XCont: WideString read Get_XCont write Set_XCont;
  end;

{ IXMLCana }

  IXMLCana = interface(IXMLNode)
    ['{A6D9C8A5-85C5-40D4-9981-97B92B01E900}']
    { Property Accessors }
    function Get_Safra: WideString;
    function Get_Ref: WideString;
    function Get_ForDia: IXMLForDiaList;
    function Get_QTotMes: WideString;
    function Get_QTotAnt: WideString;
    function Get_QTotGer: WideString;
    function Get_Deduc: IXMLDeducList;
    function Get_VFor: WideString;
    function Get_VTotDed: WideString;
    function Get_VLiqFor: WideString;
    procedure Set_Safra(Value: WideString);
    procedure Set_Ref(Value: WideString);
    procedure Set_QTotMes(Value: WideString);
    procedure Set_QTotAnt(Value: WideString);
    procedure Set_QTotGer(Value: WideString);
    procedure Set_VFor(Value: WideString);
    procedure Set_VTotDed(Value: WideString);
    procedure Set_VLiqFor(Value: WideString);
    { Methods & Properties }
    property Safra: WideString read Get_Safra write Set_Safra;
    property Ref: WideString read Get_Ref write Set_Ref;
    property ForDia: IXMLForDiaList read Get_ForDia;
    property QTotMes: WideString read Get_QTotMes write Set_QTotMes;
    property QTotAnt: WideString read Get_QTotAnt write Set_QTotAnt;
    property QTotGer: WideString read Get_QTotGer write Set_QTotGer;
    property Deduc: IXMLDeducList read Get_Deduc;
    property VFor: WideString read Get_VFor write Set_VFor;
    property VTotDed: WideString read Get_VTotDed write Set_VTotDed;
    property VLiqFor: WideString read Get_VLiqFor write Set_VLiqFor;
  end;

{ IXMLForDia }

  IXMLForDia = interface(IXMLNode)
    ['{1190C72E-32CB-45E2-84AF-41D40ACF7C6D}']
    { Property Accessors }
    function Get_Dia: WideString;
    function Get_Qtde: WideString;
    procedure Set_Dia(Value: WideString);
    procedure Set_Qtde(Value: WideString);
    { Methods & Properties }
    property Dia: WideString read Get_Dia write Set_Dia;
    property Qtde: WideString read Get_Qtde write Set_Qtde;
  end;

{ IXMLForDiaList }

  IXMLForDiaList = interface(IXMLNodeCollection)
    ['{BD3BEDC6-7F58-47B2-8D40-F11A4A0001C5}']
    { Methods & Properties }
    function Add: IXMLForDia;
    function Insert(const Index: Integer): IXMLForDia;

    function Get_Item(Index: Integer): IXMLForDia;
    property Items[Index: Integer]: IXMLForDia read Get_Item; default;
  end;

{ IXMLDeduc }

  IXMLDeduc = interface(IXMLNode)
    ['{A2F08BF4-2B4F-4C5A-B035-96B4C4C75FFF}']
    { Property Accessors }
    function Get_XDed: WideString;
    function Get_VDed: WideString;
    procedure Set_XDed(Value: WideString);
    procedure Set_VDed(Value: WideString);
    { Methods & Properties }
    property XDed: WideString read Get_XDed write Set_XDed;
    property VDed: WideString read Get_VDed write Set_VDed;
  end;

{ IXMLDeducList }

  IXMLDeducList = interface(IXMLNodeCollection)
    ['{CA90723C-226C-4FB9-B8AD-4D5B4B9FCAAD}']
    { Methods & Properties }
    function Add: IXMLDeduc;
    function Insert(const Index: Integer): IXMLDeduc;

    function Get_Item(Index: Integer): IXMLDeduc;
    property Items[Index: Integer]: IXMLDeduc read Get_Item; default;
  end;

{ IXMLSignatureType_ds }

  IXMLSignatureType_ds = interface(IXMLNode)
    ['{FEADAED2-5046-47E4-BB5D-A301549ABCEE}']
    { Property Accessors }
    function Get_Id: WideString;
    function Get_SignedInfo: IXMLSignedInfoType_ds;
    function Get_SignatureValue: IXMLSignatureValueType_ds;
    function Get_KeyInfo: IXMLKeyInfoType_ds;
    procedure Set_Id(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
    property SignedInfo: IXMLSignedInfoType_ds read Get_SignedInfo;
    property SignatureValue: IXMLSignatureValueType_ds read Get_SignatureValue;
    property KeyInfo: IXMLKeyInfoType_ds read Get_KeyInfo;
  end;

{ IXMLSignedInfoType_ds }

  IXMLSignedInfoType_ds = interface(IXMLNode)
    ['{F13CBECA-EA02-4A40-8F5D-AFB7BB9D3C2E}']
    { Property Accessors }
    function Get_Id: WideString;
    function Get_CanonicalizationMethod: IXMLCanonicalizationMethod_ds;
    function Get_SignatureMethod: IXMLSignatureMethod_ds;
    function Get_Reference: IXMLReferenceType_ds;
    procedure Set_Id(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
    property CanonicalizationMethod: IXMLCanonicalizationMethod_ds read Get_CanonicalizationMethod;
    property SignatureMethod: IXMLSignatureMethod_ds read Get_SignatureMethod;
    property Reference: IXMLReferenceType_ds read Get_Reference;
  end;

{ IXMLCanonicalizationMethod_ds }

  IXMLCanonicalizationMethod_ds = interface(IXMLNode)
    ['{3535BE03-D93E-4A16-9C9E-ADD86D29D2A9}']
    { Property Accessors }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
    { Methods & Properties }
    property Algorithm: WideString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignatureMethod_ds }

  IXMLSignatureMethod_ds = interface(IXMLNode)
    ['{6C8DC3E4-86C7-461C-8531-5EEEB21F9C44}']
    { Property Accessors }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
    { Methods & Properties }
    property Algorithm: WideString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLReferenceType_ds }

  IXMLReferenceType_ds = interface(IXMLNode)
    ['{9BD2EBFE-4D46-49CD-A0A1-6C2DEE6CAA8E}']
    { Property Accessors }
    function Get_Id: WideString;
    function Get_URI: WideString;
    function Get_Type_: WideString;
    function Get_Transforms: IXMLTransformsType_ds;
    function Get_DigestMethod: IXMLDigestMethod_ds;
    function Get_DigestValue: WideString;
    procedure Set_Id(Value: WideString);
    procedure Set_URI(Value: WideString);
    procedure Set_Type_(Value: WideString);
    procedure Set_DigestValue(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
    property URI: WideString read Get_URI write Set_URI;
    property Type_: WideString read Get_Type_ write Set_Type_;
    property Transforms: IXMLTransformsType_ds read Get_Transforms;
    property DigestMethod: IXMLDigestMethod_ds read Get_DigestMethod;
    property DigestValue: WideString read Get_DigestValue write Set_DigestValue;
  end;

{ IXMLTransformsType_ds }

  IXMLTransformsType_ds = interface(IXMLNodeCollection)
    ['{587AC57B-E23A-46FE-B2ED-FDC4059C5C5A}']
    { Property Accessors }
    function Get_Transform(Index: Integer): IXMLTransformType_ds;
    { Methods & Properties }
    function Add: IXMLTransformType_ds;
    function Insert(const Index: Integer): IXMLTransformType_ds;
    property Transform[Index: Integer]: IXMLTransformType_ds read Get_Transform; default;
  end;

{ IXMLTransformType_ds }

  IXMLTransformType_ds = interface(IXMLNodeCollection)
    ['{4DE281C1-0BD1-4EF8-99A9-C40C6AB4DADC}']
    { Property Accessors }
    function Get_Algorithm: WideString;
    function Get_XPath(Index: Integer): WideString;
    procedure Set_Algorithm(Value: WideString);
    { Methods & Properties }
    function Add(const XPath: WideString): IXMLNode;
    function Insert(const Index: Integer; const XPath: WideString): IXMLNode;
    property Algorithm: WideString read Get_Algorithm write Set_Algorithm;
    property XPath[Index: Integer]: WideString read Get_XPath; default;
  end;

{ IXMLDigestMethod_ds }

  IXMLDigestMethod_ds = interface(IXMLNode)
    ['{F23E53EA-0B20-461A-8801-812466E8EF10}']
    { Property Accessors }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
    { Methods & Properties }
    property Algorithm: WideString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignatureValueType_ds }

  IXMLSignatureValueType_ds = interface(IXMLNode)
    ['{D41927E3-9886-45A4-BC62-A42D590676EF}']
    { Property Accessors }
    function Get_Id: WideString;
    procedure Set_Id(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
  end;

{ IXMLKeyInfoType_ds }

  IXMLKeyInfoType_ds = interface(IXMLNode)
    ['{0065C461-19F4-40DF-B4AB-29F8181A21CB}']
    { Property Accessors }
    function Get_Id: WideString;
    function Get_X509Data: IXMLX509DataType_ds;
    procedure Set_Id(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
    property X509Data: IXMLX509DataType_ds read Get_X509Data;
  end;

{ IXMLX509DataType_ds }

  IXMLX509DataType_ds = interface(IXMLNode)
    ['{DEB125F7-DEA5-466E-BE67-8D4C909BD642}']
    { Property Accessors }
    function Get_X509Certificate: WideString;
    procedure Set_X509Certificate(Value: WideString);
    { Methods & Properties }
    property X509Certificate: WideString read Get_X509Certificate write Set_X509Certificate;
  end;

{ IXMLTProtNFe }

  IXMLTProtNFe = interface(IXMLNode)
    ['{B61A3299-D610-4A5A-80B2-2613B70C239A}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_InfProt: IXMLInfProt;
    function Get_Signature: IXMLSignatureType_ds;
    procedure Set_Versao(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property InfProt: IXMLInfProt read Get_InfProt;
    property Signature: IXMLSignatureType_ds read Get_Signature;
  end;

{ IXMLTProtNFeList }

  IXMLTProtNFeList = interface(IXMLNodeCollection)
    ['{072E9AFC-F29F-4E82-8073-B97419BF7BB9}']
    { Methods & Properties }
    function Add: IXMLTProtNFe;
    function Insert(const Index: Integer): IXMLTProtNFe;

    function Get_Item(Index: Integer): IXMLTProtNFe;
    property Items[Index: Integer]: IXMLTProtNFe read Get_Item; default;
  end;

{ IXMLInfProt }

  IXMLInfProt = interface(IXMLNode)
    ['{213BB27E-EE4B-45D9-B34E-BC4CA09AF9EF}']
    { Property Accessors }
    function Get_Id: WideString;
    function Get_TpAmb: WideString;
    function Get_VerAplic: WideString;
    function Get_ChNFe: WideString;
    function Get_DhRecbto: WideString;
    function Get_NProt: WideString;
    function Get_DigVal: WideString;
    function Get_CStat: WideString;
    function Get_XMotivo: WideString;
    procedure Set_Id(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_VerAplic(Value: WideString);
    procedure Set_ChNFe(Value: WideString);
    procedure Set_DhRecbto(Value: WideString);
    procedure Set_NProt(Value: WideString);
    procedure Set_DigVal(Value: WideString);
    procedure Set_CStat(Value: WideString);
    procedure Set_XMotivo(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
    property TpAmb: WideString read Get_TpAmb write Set_TpAmb;
    property VerAplic: WideString read Get_VerAplic write Set_VerAplic;
    property ChNFe: WideString read Get_ChNFe write Set_ChNFe;
    property DhRecbto: WideString read Get_DhRecbto write Set_DhRecbto;
    property NProt: WideString read Get_NProt write Set_NProt;
    property DigVal: WideString read Get_DigVal write Set_DigVal;
    property CStat: WideString read Get_CStat write Set_CStat;
    property XMotivo: WideString read Get_XMotivo write Set_XMotivo;
  end;

{ IXMLTRetEnviNFe }

  IXMLTRetEnviNFe = interface(IXMLNode)
    ['{F03BB326-4BE8-4B41-B329-420E2D6D4121}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_TpAmb: WideString;
    function Get_VerAplic: WideString;
    function Get_CStat: WideString;
    function Get_XMotivo: WideString;
    function Get_CUF: WideString;
    function Get_DhRecbto: WideString;
    function Get_InfRec: IXMLInfRec;
    function Get_ProtNFe: IXMLTProtNFe;
    procedure Set_Versao(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_VerAplic(Value: WideString);
    procedure Set_CStat(Value: WideString);
    procedure Set_XMotivo(Value: WideString);
    procedure Set_CUF(Value: WideString);
    procedure Set_DhRecbto(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property TpAmb: WideString read Get_TpAmb write Set_TpAmb;
    property VerAplic: WideString read Get_VerAplic write Set_VerAplic;
    property CStat: WideString read Get_CStat write Set_CStat;
    property XMotivo: WideString read Get_XMotivo write Set_XMotivo;
    property CUF: WideString read Get_CUF write Set_CUF;
    property DhRecbto: WideString read Get_DhRecbto write Set_DhRecbto;
    property InfRec: IXMLInfRec read Get_InfRec;
    property ProtNFe: IXMLTProtNFe read Get_ProtNFe;
  end;

{ IXMLInfRec }

  IXMLInfRec = interface(IXMLNode)
    ['{1165181E-00D4-4A20-BF3C-0DED98C0AA81}']
    { Property Accessors }
    function Get_NRec: WideString;
    function Get_TMed: WideString;
    procedure Set_NRec(Value: WideString);
    procedure Set_TMed(Value: WideString);
    { Methods & Properties }
    property NRec: WideString read Get_NRec write Set_NRec;
    property TMed: WideString read Get_TMed write Set_TMed;
  end;

{ IXMLTConsReciNFe }

  IXMLTConsReciNFe = interface(IXMLNode)
    ['{BD0B5B48-BB8B-4C00-9E4F-6C4B5B872DD2}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_TpAmb: WideString;
    function Get_NRec: WideString;
    procedure Set_Versao(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_NRec(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property TpAmb: WideString read Get_TpAmb write Set_TpAmb;
    property NRec: WideString read Get_NRec write Set_NRec;
  end;

{ IXMLTRetConsReciNFe }

  IXMLTRetConsReciNFe = interface(IXMLNode)
    ['{ABB544A6-6A21-4361-B793-95FC78D391A8}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_TpAmb: WideString;
    function Get_VerAplic: WideString;
    function Get_NRec: WideString;
    function Get_CStat: WideString;
    function Get_XMotivo: WideString;
    function Get_CUF: WideString;
    function Get_DhRecbto: WideString;
    function Get_CMsg: WideString;
    function Get_XMsg: WideString;
    function Get_ProtNFe: IXMLTProtNFeList;
    procedure Set_Versao(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_VerAplic(Value: WideString);
    procedure Set_NRec(Value: WideString);
    procedure Set_CStat(Value: WideString);
    procedure Set_XMotivo(Value: WideString);
    procedure Set_CUF(Value: WideString);
    procedure Set_DhRecbto(Value: WideString);
    procedure Set_CMsg(Value: WideString);
    procedure Set_XMsg(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property TpAmb: WideString read Get_TpAmb write Set_TpAmb;
    property VerAplic: WideString read Get_VerAplic write Set_VerAplic;
    property NRec: WideString read Get_NRec write Set_NRec;
    property CStat: WideString read Get_CStat write Set_CStat;
    property XMotivo: WideString read Get_XMotivo write Set_XMotivo;
    property CUF: WideString read Get_CUF write Set_CUF;
    property DhRecbto: WideString read Get_DhRecbto write Set_DhRecbto;
    property CMsg: WideString read Get_CMsg write Set_CMsg;
    property XMsg: WideString read Get_XMsg write Set_XMsg;
    property ProtNFe: IXMLTProtNFeList read Get_ProtNFe;
  end;

{ IXMLTNfeProc }

  IXMLTNfeProc = interface(IXMLNode)
    ['{393E8619-ACF3-4047-ADFC-765CADE363BD}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_NFe: IXMLTNFe;
    function Get_ProtNFe: IXMLTProtNFe;
    procedure Set_Versao(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property NFe: IXMLTNFe read Get_NFe;
    property ProtNFe: IXMLTProtNFe read Get_ProtNFe;
  end;

{ IXMLNVEList }

  IXMLNVEList = interface(IXMLNodeCollection)
    ['{796633A7-48AC-4859-8CB0-024E3AFEA050}']
    { Methods & Properties }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;

    function Get_Item(Index: Integer): WideString;
    property Items[Index: Integer]: WideString read Get_Item; default;
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
  TXMLVeicProd = class;
  TXMLMed = class;
  TXMLMedList = class;
  TXMLArma = class;
  TXMLArmaList = class;
  TXMLComb = class;
  TXMLCIDE = class;
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
  TXMLPagList = class;
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
    function Get_Versao: WideString;
    function Get_IdLote: WideString;
    function Get_IndSinc: WideString;
    function Get_NFe: IXMLTNFeList;
    procedure Set_Versao(Value: WideString);
    procedure Set_IdLote(Value: WideString);
    procedure Set_IndSinc(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe }

  TXMLTNFe = class(TXMLNode, IXMLTNFe)
  protected
    { IXMLTNFe }
    function Get_InfNFe: IXMLInfNFe;
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
    FPag: IXMLPagList;
  protected
    { IXMLInfNFe }
    function Get_Versao: WideString;
    function Get_Id: WideString;
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
    function Get_Pag: IXMLPagList;
    function Get_InfAdic: IXMLInfAdic;
    function Get_Exporta: IXMLExporta;
    function Get_Compra: IXMLCompra;
    function Get_Cana: IXMLCana;
    procedure Set_Versao(Value: WideString);
    procedure Set_Id(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIde }

  TXMLIde = class(TXMLNode, IXMLIde)
  private
    FNFref: IXMLNFrefList;
  protected
    { IXMLIde }
    function Get_CUF: WideString;
    function Get_CNF: WideString;
    function Get_NatOp: WideString;
    function Get_IndPag: WideString;
    function Get_Mod_: WideString;
    function Get_Serie: WideString;
    function Get_NNF: WideString;
    function Get_DhEmi: WideString;
    function Get_DhSaiEnt: WideString;
    function Get_TpNF: WideString;
    function Get_IdDest: WideString;
    function Get_CMunFG: WideString;
    function Get_TpImp: WideString;
    function Get_TpEmis: WideString;
    function Get_CDV: WideString;
    function Get_TpAmb: WideString;
    function Get_FinNFe: WideString;
    function Get_IndFinal: WideString;
    function Get_IndPres: WideString;
    function Get_ProcEmi: WideString;
    function Get_VerProc: WideString;
    function Get_DhCont: WideString;
    function Get_XJust: WideString;
    function Get_NFref: IXMLNFrefList;
    procedure Set_CUF(Value: WideString);
    procedure Set_CNF(Value: WideString);
    procedure Set_NatOp(Value: WideString);
    procedure Set_IndPag(Value: WideString);
    procedure Set_Mod_(Value: WideString);
    procedure Set_Serie(Value: WideString);
    procedure Set_NNF(Value: WideString);
    procedure Set_DhEmi(Value: WideString);
    procedure Set_DhSaiEnt(Value: WideString);
    procedure Set_TpNF(Value: WideString);
    procedure Set_IdDest(Value: WideString);
    procedure Set_CMunFG(Value: WideString);
    procedure Set_TpImp(Value: WideString);
    procedure Set_TpEmis(Value: WideString);
    procedure Set_CDV(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_FinNFe(Value: WideString);
    procedure Set_IndFinal(Value: WideString);
    procedure Set_IndPres(Value: WideString);
    procedure Set_ProcEmi(Value: WideString);
    procedure Set_VerProc(Value: WideString);
    procedure Set_DhCont(Value: WideString);
    procedure Set_XJust(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLNFref }

  TXMLNFref = class(TXMLNode, IXMLNFref)
  protected
    { IXMLNFref }
    function Get_RefNFe: WideString;
    function Get_RefNF: IXMLRefNF;
    function Get_RefNFP: IXMLRefNFP;
    function Get_RefCTe: WideString;
    function Get_RefECF: IXMLRefECF;
    procedure Set_RefNFe(Value: WideString);
    procedure Set_RefCTe(Value: WideString);
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
    function Get_CUF: WideString;
    function Get_AAMM: WideString;
    function Get_CNPJ: WideString;
    function Get_Mod_: WideString;
    function Get_Serie: WideString;
    function Get_NNF: WideString;
    procedure Set_CUF(Value: WideString);
    procedure Set_AAMM(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_Mod_(Value: WideString);
    procedure Set_Serie(Value: WideString);
    procedure Set_NNF(Value: WideString);
  end;

{ TXMLRefNFP }

  TXMLRefNFP = class(TXMLNode, IXMLRefNFP)
  protected
    { IXMLRefNFP }
    function Get_CUF: WideString;
    function Get_AAMM: WideString;
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_IE: WideString;
    function Get_Mod_: WideString;
    function Get_Serie: WideString;
    function Get_NNF: WideString;
    procedure Set_CUF(Value: WideString);
    procedure Set_AAMM(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_Mod_(Value: WideString);
    procedure Set_Serie(Value: WideString);
    procedure Set_NNF(Value: WideString);
  end;

{ TXMLRefECF }

  TXMLRefECF = class(TXMLNode, IXMLRefECF)
  protected
    { IXMLRefECF }
    function Get_Mod_: WideString;
    function Get_NECF: WideString;
    function Get_NCOO: WideString;
    procedure Set_Mod_(Value: WideString);
    procedure Set_NECF(Value: WideString);
    procedure Set_NCOO(Value: WideString);
  end;

{ TXMLEmit }

  TXMLEmit = class(TXMLNode, IXMLEmit)
  protected
    { IXMLEmit }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_XNome: WideString;
    function Get_XFant: WideString;
    function Get_EnderEmit: IXMLTEnderEmi;
    function Get_IE: WideString;
    function Get_IEST: WideString;
    function Get_IM: WideString;
    function Get_CNAE: WideString;
    function Get_CRT: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_XFant(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_IEST(Value: WideString);
    procedure Set_IM(Value: WideString);
    procedure Set_CNAE(Value: WideString);
    procedure Set_CRT(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTEnderEmi }

  TXMLTEnderEmi = class(TXMLNode, IXMLTEnderEmi)
  protected
    { IXMLTEnderEmi }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_UF: WideString;
    function Get_CEP: WideString;
    function Get_CPais: WideString;
    function Get_XPais: WideString;
    function Get_Fone: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_CPais(Value: WideString);
    procedure Set_XPais(Value: WideString);
    procedure Set_Fone(Value: WideString);
  end;

{ TXMLAvulsa }

  TXMLAvulsa = class(TXMLNode, IXMLAvulsa)
  protected
    { IXMLAvulsa }
    function Get_CNPJ: WideString;
    function Get_XOrgao: WideString;
    function Get_Matr: WideString;
    function Get_XAgente: WideString;
    function Get_Fone: WideString;
    function Get_UF: WideString;
    function Get_NDAR: WideString;
    function Get_DEmi: WideString;
    function Get_VDAR: WideString;
    function Get_RepEmi: WideString;
    function Get_DPag: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_XOrgao(Value: WideString);
    procedure Set_Matr(Value: WideString);
    procedure Set_XAgente(Value: WideString);
    procedure Set_Fone(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_NDAR(Value: WideString);
    procedure Set_DEmi(Value: WideString);
    procedure Set_VDAR(Value: WideString);
    procedure Set_RepEmi(Value: WideString);
    procedure Set_DPag(Value: WideString);
  end;

{ TXMLDest }

  TXMLDest = class(TXMLNode, IXMLDest)
  protected
    { IXMLDest }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_IdEstrangeiro: WideString;
    function Get_XNome: WideString;
    function Get_EnderDest: IXMLTEndereco;
    function Get_IndIEDest: WideString;
    function Get_IE: WideString;
    function Get_ISUF: WideString;
    function Get_IM: WideString;
    function Get_Email: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_IdEstrangeiro(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_IndIEDest(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_ISUF(Value: WideString);
    procedure Set_IM(Value: WideString);
    procedure Set_Email(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTEndereco }

  TXMLTEndereco = class(TXMLNode, IXMLTEndereco)
  protected
    { IXMLTEndereco }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_UF: WideString;
    function Get_CEP: WideString;
    function Get_CPais: WideString;
    function Get_XPais: WideString;
    function Get_Fone: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_CPais(Value: WideString);
    procedure Set_XPais(Value: WideString);
    procedure Set_Fone(Value: WideString);
  end;

{ TXMLTLocal }

  TXMLTLocal = class(TXMLNode, IXMLTLocal)
  protected
    { IXMLTLocal }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_UF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_UF(Value: WideString);
  end;

{ TXMLAutXML }

  TXMLAutXML = class(TXMLNode, IXMLAutXML)
  protected
    { IXMLAutXML }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
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
    function Get_NItem: WideString;
    function Get_Prod: IXMLProd;
    function Get_Imposto: IXMLImposto;
    function Get_ImpostoDevol: IXMLImpostoDevol;
    function Get_InfAdProd: WideString;
    procedure Set_NItem(Value: WideString);
    procedure Set_InfAdProd(Value: WideString);
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
    FMed: IXMLMedList;
    FArma: IXMLArmaList;
  protected
    { IXMLProd }
    function Get_CProd: WideString;
    function Get_CEAN: WideString;
    function Get_XProd: WideString;
    function Get_NCM: WideString;
    function Get_NVE: IXMLNVEList;
    function Get_EXTIPI: WideString;
    function Get_CFOP: WideString;
    function Get_UCom: WideString;
    function Get_QCom: WideString;
    function Get_VUnCom: WideString;
    function Get_VProd: WideString;
    function Get_CEANTrib: WideString;
    function Get_UTrib: WideString;
    function Get_QTrib: WideString;
    function Get_VUnTrib: WideString;
    function Get_VFrete: WideString;
    function Get_VSeg: WideString;
    function Get_VDesc: WideString;
    function Get_VOutro: WideString;
    function Get_IndTot: WideString;
    function Get_DI: IXMLDIList;
    function Get_DetExport: IXMLDetExportList;
    function Get_XPed: WideString;
    function Get_NItemPed: WideString;
    function Get_NFCI: WideString;
    function Get_VeicProd: IXMLVeicProd;
    function Get_Med: IXMLMedList;
    function Get_Arma: IXMLArmaList;
    function Get_Comb: IXMLComb;
    function Get_NRECOPI: WideString;
    procedure Set_CProd(Value: WideString);
    procedure Set_CEAN(Value: WideString);
    procedure Set_XProd(Value: WideString);
    procedure Set_NCM(Value: WideString);
    procedure Set_EXTIPI(Value: WideString);
    procedure Set_CFOP(Value: WideString);
    procedure Set_UCom(Value: WideString);
    procedure Set_QCom(Value: WideString);
    procedure Set_VUnCom(Value: WideString);
    procedure Set_VProd(Value: WideString);
    procedure Set_CEANTrib(Value: WideString);
    procedure Set_UTrib(Value: WideString);
    procedure Set_QTrib(Value: WideString);
    procedure Set_VUnTrib(Value: WideString);
    procedure Set_VFrete(Value: WideString);
    procedure Set_VSeg(Value: WideString);
    procedure Set_VDesc(Value: WideString);
    procedure Set_VOutro(Value: WideString);
    procedure Set_IndTot(Value: WideString);
    procedure Set_XPed(Value: WideString);
    procedure Set_NItemPed(Value: WideString);
    procedure Set_NFCI(Value: WideString);
    procedure Set_NRECOPI(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDI }

  TXMLDI = class(TXMLNode, IXMLDI)
  private
    FAdi: IXMLAdiList;
  protected
    { IXMLDI }
    function Get_NDI: WideString;
    function Get_DDI: WideString;
    function Get_XLocDesemb: WideString;
    function Get_UFDesemb: WideString;
    function Get_DDesemb: WideString;
    function Get_TpViaTransp: WideString;
    function Get_VAFRMM: WideString;
    function Get_TpIntermedio: WideString;
    function Get_CNPJ: WideString;
    function Get_UFTerceiro: WideString;
    function Get_CExportador: WideString;
    function Get_Adi: IXMLAdiList;
    procedure Set_NDI(Value: WideString);
    procedure Set_DDI(Value: WideString);
    procedure Set_XLocDesemb(Value: WideString);
    procedure Set_UFDesemb(Value: WideString);
    procedure Set_DDesemb(Value: WideString);
    procedure Set_TpViaTransp(Value: WideString);
    procedure Set_VAFRMM(Value: WideString);
    procedure Set_TpIntermedio(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_UFTerceiro(Value: WideString);
    procedure Set_CExportador(Value: WideString);
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
    function Get_NAdicao: WideString;
    function Get_NSeqAdic: WideString;
    function Get_CFabricante: WideString;
    function Get_VDescDI: WideString;
    function Get_NDraw: WideString;
    procedure Set_NAdicao(Value: WideString);
    procedure Set_NSeqAdic(Value: WideString);
    procedure Set_CFabricante(Value: WideString);
    procedure Set_VDescDI(Value: WideString);
    procedure Set_NDraw(Value: WideString);
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
    function Get_NDraw: WideString;
    function Get_ExportInd: IXMLExportInd;
    procedure Set_NDraw(Value: WideString);
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
    function Get_NRE: WideString;
    function Get_ChNFe: WideString;
    function Get_QExport: WideString;
    procedure Set_NRE(Value: WideString);
    procedure Set_ChNFe(Value: WideString);
    procedure Set_QExport(Value: WideString);
  end;

{ TXMLVeicProd }

  TXMLVeicProd = class(TXMLNode, IXMLVeicProd)
  protected
    { IXMLVeicProd }
    function Get_TpOp: WideString;
    function Get_Chassi: WideString;
    function Get_CCor: WideString;
    function Get_XCor: WideString;
    function Get_Pot: WideString;
    function Get_Cilin: WideString;
    function Get_PesoL: WideString;
    function Get_PesoB: WideString;
    function Get_NSerie: WideString;
    function Get_TpComb: WideString;
    function Get_NMotor: WideString;
    function Get_CMT: WideString;
    function Get_Dist: WideString;
    function Get_AnoMod: WideString;
    function Get_AnoFab: WideString;
    function Get_TpPint: WideString;
    function Get_TpVeic: WideString;
    function Get_EspVeic: WideString;
    function Get_VIN: WideString;
    function Get_CondVeic: WideString;
    function Get_CMod: WideString;
    function Get_CCorDENATRAN: WideString;
    function Get_Lota: WideString;
    function Get_TpRest: WideString;
    procedure Set_TpOp(Value: WideString);
    procedure Set_Chassi(Value: WideString);
    procedure Set_CCor(Value: WideString);
    procedure Set_XCor(Value: WideString);
    procedure Set_Pot(Value: WideString);
    procedure Set_Cilin(Value: WideString);
    procedure Set_PesoL(Value: WideString);
    procedure Set_PesoB(Value: WideString);
    procedure Set_NSerie(Value: WideString);
    procedure Set_TpComb(Value: WideString);
    procedure Set_NMotor(Value: WideString);
    procedure Set_CMT(Value: WideString);
    procedure Set_Dist(Value: WideString);
    procedure Set_AnoMod(Value: WideString);
    procedure Set_AnoFab(Value: WideString);
    procedure Set_TpPint(Value: WideString);
    procedure Set_TpVeic(Value: WideString);
    procedure Set_EspVeic(Value: WideString);
    procedure Set_VIN(Value: WideString);
    procedure Set_CondVeic(Value: WideString);
    procedure Set_CMod(Value: WideString);
    procedure Set_CCorDENATRAN(Value: WideString);
    procedure Set_Lota(Value: WideString);
    procedure Set_TpRest(Value: WideString);
  end;

{ TXMLMed }

  TXMLMed = class(TXMLNode, IXMLMed)
  protected
    { IXMLMed }
    function Get_NLote: WideString;
    function Get_QLote: WideString;
    function Get_DFab: WideString;
    function Get_DVal: WideString;
    function Get_VPMC: WideString;
    procedure Set_NLote(Value: WideString);
    procedure Set_QLote(Value: WideString);
    procedure Set_DFab(Value: WideString);
    procedure Set_DVal(Value: WideString);
    procedure Set_VPMC(Value: WideString);
  end;

{ TXMLMedList }

  TXMLMedList = class(TXMLNodeCollection, IXMLMedList)
  protected
    { IXMLMedList }
    function Add: IXMLMed;
    function Insert(const Index: Integer): IXMLMed;

    function Get_Item(Index: Integer): IXMLMed;
  end;

{ TXMLArma }

  TXMLArma = class(TXMLNode, IXMLArma)
  protected
    { IXMLArma }
    function Get_TpArma: WideString;
    function Get_NSerie: WideString;
    function Get_NCano: WideString;
    function Get_Descr: WideString;
    procedure Set_TpArma(Value: WideString);
    procedure Set_NSerie(Value: WideString);
    procedure Set_NCano(Value: WideString);
    procedure Set_Descr(Value: WideString);
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
    function Get_CProdANP: WideString;
    function Get_PMixGN: WideString;
    function Get_CODIF: WideString;
    function Get_QTemp: WideString;
    function Get_UFCons: WideString;
    function Get_CIDE: IXMLCIDE;
    procedure Set_CProdANP(Value: WideString);
    procedure Set_PMixGN(Value: WideString);
    procedure Set_CODIF(Value: WideString);
    procedure Set_QTemp(Value: WideString);
    procedure Set_UFCons(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCIDE }

  TXMLCIDE = class(TXMLNode, IXMLCIDE)
  protected
    { IXMLCIDE }
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VCIDE: WideString;
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VCIDE(Value: WideString);
  end;

{ TXMLImposto }

  TXMLImposto = class(TXMLNode, IXMLImposto)
  protected
    { IXMLImposto }
    function Get_VTotTrib: WideString;
    function Get_ICMS: IXMLICMS;
    function Get_IPI: IXMLTIpi;
    function Get_II: IXMLII;
    function Get_ISSQN: IXMLISSQN;
    function Get_PIS: IXMLPIS;
    function Get_PISST: IXMLPISST;
    function Get_COFINS: IXMLCOFINS;
    function Get_COFINSST: IXMLCOFINSST;
    procedure Set_VTotTrib(Value: WideString);
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
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_VBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
  end;

{ TXMLICMS10 }

  TXMLICMS10 = class(TXMLNode, IXMLICMS10)
  protected
    { IXMLICMS10 }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_VBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
  end;

{ TXMLICMS20 }

  TXMLICMS20 = class(TXMLNode, IXMLICMS20)
  protected
    { IXMLICMS20 }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_PRedBC: WideString;
    function Get_VBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    function Get_VICMSDeson: WideString;
    function Get_MotDesICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_PRedBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_VICMSDeson(Value: WideString);
    procedure Set_MotDesICMS(Value: WideString);
  end;

{ TXMLICMS30 }

  TXMLICMS30 = class(TXMLNode, IXMLICMS30)
  protected
    { IXMLICMS30 }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    function Get_VICMSDeson: WideString;
    function Get_MotDesICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    procedure Set_VICMSDeson(Value: WideString);
    procedure Set_MotDesICMS(Value: WideString);
  end;

{ TXMLICMS40 }

  TXMLICMS40 = class(TXMLNode, IXMLICMS40)
  protected
    { IXMLICMS40 }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_VICMSDeson: WideString;
    function Get_MotDesICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_VICMSDeson(Value: WideString);
    procedure Set_MotDesICMS(Value: WideString);
  end;

{ TXMLICMS51 }

  TXMLICMS51 = class(TXMLNode, IXMLICMS51)
  protected
    { IXMLICMS51 }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_PRedBC: WideString;
    function Get_VBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMSOp: WideString;
    function Get_PDif: WideString;
    function Get_VICMSDif: WideString;
    function Get_VICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_PRedBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMSOp(Value: WideString);
    procedure Set_PDif(Value: WideString);
    procedure Set_VICMSDif(Value: WideString);
    procedure Set_VICMS(Value: WideString);
  end;

{ TXMLICMS60 }

  TXMLICMS60 = class(TXMLNode, IXMLICMS60)
  protected
    { IXMLICMS60 }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_VBCSTRet: WideString;
    function Get_VICMSSTRet: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_VBCSTRet(Value: WideString);
    procedure Set_VICMSSTRet(Value: WideString);
  end;

{ TXMLICMS70 }

  TXMLICMS70 = class(TXMLNode, IXMLICMS70)
  protected
    { IXMLICMS70 }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_PRedBC: WideString;
    function Get_VBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    function Get_VICMSDeson: WideString;
    function Get_MotDesICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_PRedBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    procedure Set_VICMSDeson(Value: WideString);
    procedure Set_MotDesICMS(Value: WideString);
  end;

{ TXMLICMS90 }

  TXMLICMS90 = class(TXMLNode, IXMLICMS90)
  protected
    { IXMLICMS90 }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_VBC: WideString;
    function Get_PRedBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    function Get_VICMSDeson: WideString;
    function Get_MotDesICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PRedBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    procedure Set_VICMSDeson(Value: WideString);
    procedure Set_MotDesICMS(Value: WideString);
  end;

{ TXMLICMSPart }

  TXMLICMSPart = class(TXMLNode, IXMLICMSPart)
  protected
    { IXMLICMSPart }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_ModBC: WideString;
    function Get_VBC: WideString;
    function Get_PRedBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    function Get_PBCOp: WideString;
    function Get_UFST: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PRedBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    procedure Set_PBCOp(Value: WideString);
    procedure Set_UFST(Value: WideString);
  end;

{ TXMLICMSST }

  TXMLICMSST = class(TXMLNode, IXMLICMSST)
  protected
    { IXMLICMSST }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_VBCSTRet: WideString;
    function Get_VICMSSTRet: WideString;
    function Get_VBCSTDest: WideString;
    function Get_VICMSSTDest: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_VBCSTRet(Value: WideString);
    procedure Set_VICMSSTRet(Value: WideString);
    procedure Set_VBCSTDest(Value: WideString);
    procedure Set_VICMSSTDest(Value: WideString);
  end;

{ TXMLICMSSN101 }

  TXMLICMSSN101 = class(TXMLNode, IXMLICMSSN101)
  protected
    { IXMLICMSSN101 }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    function Get_PCredSN: WideString;
    function Get_VCredICMSSN: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    procedure Set_PCredSN(Value: WideString);
    procedure Set_VCredICMSSN(Value: WideString);
  end;

{ TXMLICMSSN102 }

  TXMLICMSSN102 = class(TXMLNode, IXMLICMSSN102)
  protected
    { IXMLICMSSN102 }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
  end;

{ TXMLICMSSN201 }

  TXMLICMSSN201 = class(TXMLNode, IXMLICMSSN201)
  protected
    { IXMLICMSSN201 }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    function Get_PCredSN: WideString;
    function Get_VCredICMSSN: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    procedure Set_PCredSN(Value: WideString);
    procedure Set_VCredICMSSN(Value: WideString);
  end;

{ TXMLICMSSN202 }

  TXMLICMSSN202 = class(TXMLNode, IXMLICMSSN202)
  protected
    { IXMLICMSSN202 }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
  end;

{ TXMLICMSSN500 }

  TXMLICMSSN500 = class(TXMLNode, IXMLICMSSN500)
  protected
    { IXMLICMSSN500 }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    function Get_VBCSTRet: WideString;
    function Get_VICMSSTRet: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    procedure Set_VBCSTRet(Value: WideString);
    procedure Set_VICMSSTRet(Value: WideString);
  end;

{ TXMLICMSSN900 }

  TXMLICMSSN900 = class(TXMLNode, IXMLICMSSN900)
  protected
    { IXMLICMSSN900 }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    function Get_ModBC: WideString;
    function Get_VBC: WideString;
    function Get_PRedBC: WideString;
    function Get_PICMS: WideString;
    function Get_VICMS: WideString;
    function Get_ModBCST: WideString;
    function Get_PMVAST: WideString;
    function Get_PRedBCST: WideString;
    function Get_VBCST: WideString;
    function Get_PICMSST: WideString;
    function Get_VICMSST: WideString;
    function Get_PCredSN: WideString;
    function Get_VCredICMSSN: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    procedure Set_ModBC(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PRedBC(Value: WideString);
    procedure Set_PICMS(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_ModBCST(Value: WideString);
    procedure Set_PMVAST(Value: WideString);
    procedure Set_PRedBCST(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_PICMSST(Value: WideString);
    procedure Set_VICMSST(Value: WideString);
    procedure Set_PCredSN(Value: WideString);
    procedure Set_VCredICMSSN(Value: WideString);
  end;

{ TXMLTIpi }

  TXMLTIpi = class(TXMLNode, IXMLTIpi)
  protected
    { IXMLTIpi }
    function Get_ClEnq: WideString;
    function Get_CNPJProd: WideString;
    function Get_CSelo: WideString;
    function Get_QSelo: WideString;
    function Get_CEnq: WideString;
    function Get_IPITrib: IXMLIPITrib;
    function Get_IPINT: IXMLIPINT;
    procedure Set_ClEnq(Value: WideString);
    procedure Set_CNPJProd(Value: WideString);
    procedure Set_CSelo(Value: WideString);
    procedure Set_QSelo(Value: WideString);
    procedure Set_CEnq(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIPITrib }

  TXMLIPITrib = class(TXMLNode, IXMLIPITrib)
  protected
    { IXMLIPITrib }
    function Get_CST: WideString;
    function Get_VBC: WideString;
    function Get_PIPI: WideString;
    function Get_QUnid: WideString;
    function Get_VUnid: WideString;
    function Get_VIPI: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PIPI(Value: WideString);
    procedure Set_QUnid(Value: WideString);
    procedure Set_VUnid(Value: WideString);
    procedure Set_VIPI(Value: WideString);
  end;

{ TXMLIPINT }

  TXMLIPINT = class(TXMLNode, IXMLIPINT)
  protected
    { IXMLIPINT }
    function Get_CST: WideString;
    procedure Set_CST(Value: WideString);
  end;

{ TXMLII }

  TXMLII = class(TXMLNode, IXMLII)
  protected
    { IXMLII }
    function Get_VBC: WideString;
    function Get_VDespAdu: WideString;
    function Get_VII: WideString;
    function Get_VIOF: WideString;
    procedure Set_VBC(Value: WideString);
    procedure Set_VDespAdu(Value: WideString);
    procedure Set_VII(Value: WideString);
    procedure Set_VIOF(Value: WideString);
  end;

{ TXMLISSQN }

  TXMLISSQN = class(TXMLNode, IXMLISSQN)
  protected
    { IXMLISSQN }
    function Get_VBC: WideString;
    function Get_VAliq: WideString;
    function Get_VISSQN: WideString;
    function Get_CMunFG: WideString;
    function Get_CListServ: WideString;
    function Get_VDeducao: WideString;
    function Get_VOutro: WideString;
    function Get_VDescIncond: WideString;
    function Get_VDescCond: WideString;
    function Get_VISSRet: WideString;
    function Get_IndISS: WideString;
    function Get_CServico: WideString;
    function Get_CMun: WideString;
    function Get_CPais: WideString;
    function Get_NProcesso: WideString;
    function Get_IndIncentivo: WideString;
    procedure Set_VBC(Value: WideString);
    procedure Set_VAliq(Value: WideString);
    procedure Set_VISSQN(Value: WideString);
    procedure Set_CMunFG(Value: WideString);
    procedure Set_CListServ(Value: WideString);
    procedure Set_VDeducao(Value: WideString);
    procedure Set_VOutro(Value: WideString);
    procedure Set_VDescIncond(Value: WideString);
    procedure Set_VDescCond(Value: WideString);
    procedure Set_VISSRet(Value: WideString);
    procedure Set_IndISS(Value: WideString);
    procedure Set_CServico(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_CPais(Value: WideString);
    procedure Set_NProcesso(Value: WideString);
    procedure Set_IndIncentivo(Value: WideString);
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
    function Get_CST: WideString;
    function Get_VBC: WideString;
    function Get_PPIS: WideString;
    function Get_VPIS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PPIS(Value: WideString);
    procedure Set_VPIS(Value: WideString);
  end;

{ TXMLPISQtde }

  TXMLPISQtde = class(TXMLNode, IXMLPISQtde)
  protected
    { IXMLPISQtde }
    function Get_CST: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VPIS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VPIS(Value: WideString);
  end;

{ TXMLPISNT }

  TXMLPISNT = class(TXMLNode, IXMLPISNT)
  protected
    { IXMLPISNT }
    function Get_CST: WideString;
    procedure Set_CST(Value: WideString);
  end;

{ TXMLPISOutr }

  TXMLPISOutr = class(TXMLNode, IXMLPISOutr)
  protected
    { IXMLPISOutr }
    function Get_CST: WideString;
    function Get_VBC: WideString;
    function Get_PPIS: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VPIS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PPIS(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VPIS(Value: WideString);
  end;

{ TXMLPISST }

  TXMLPISST = class(TXMLNode, IXMLPISST)
  protected
    { IXMLPISST }
    function Get_VBC: WideString;
    function Get_PPIS: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VPIS: WideString;
    procedure Set_VBC(Value: WideString);
    procedure Set_PPIS(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VPIS(Value: WideString);
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
    function Get_CST: WideString;
    function Get_VBC: WideString;
    function Get_PCOFINS: WideString;
    function Get_VCOFINS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PCOFINS(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
  end;

{ TXMLCOFINSQtde }

  TXMLCOFINSQtde = class(TXMLNode, IXMLCOFINSQtde)
  protected
    { IXMLCOFINSQtde }
    function Get_CST: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VCOFINS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
  end;

{ TXMLCOFINSNT }

  TXMLCOFINSNT = class(TXMLNode, IXMLCOFINSNT)
  protected
    { IXMLCOFINSNT }
    function Get_CST: WideString;
    procedure Set_CST(Value: WideString);
  end;

{ TXMLCOFINSOutr }

  TXMLCOFINSOutr = class(TXMLNode, IXMLCOFINSOutr)
  protected
    { IXMLCOFINSOutr }
    function Get_CST: WideString;
    function Get_VBC: WideString;
    function Get_PCOFINS: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VCOFINS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PCOFINS(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
  end;

{ TXMLCOFINSST }

  TXMLCOFINSST = class(TXMLNode, IXMLCOFINSST)
  protected
    { IXMLCOFINSST }
    function Get_VBC: WideString;
    function Get_PCOFINS: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VCOFINS: WideString;
    procedure Set_VBC(Value: WideString);
    procedure Set_PCOFINS(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
  end;

{ TXMLImpostoDevol }

  TXMLImpostoDevol = class(TXMLNode, IXMLImpostoDevol)
  protected
    { IXMLImpostoDevol }
    function Get_PDevol: WideString;
    function Get_IPI: IXMLIPI;
    procedure Set_PDevol(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIPI }

  TXMLIPI = class(TXMLNode, IXMLIPI)
  protected
    { IXMLIPI }
    function Get_VIPIDevol: WideString;
    procedure Set_VIPIDevol(Value: WideString);
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
    function Get_VBC: WideString;
    function Get_VICMS: WideString;
    function Get_VICMSDeson: WideString;
    function Get_VBCST: WideString;
    function Get_VST: WideString;
    function Get_VProd: WideString;
    function Get_VFrete: WideString;
    function Get_VSeg: WideString;
    function Get_VDesc: WideString;
    function Get_VII: WideString;
    function Get_VIPI: WideString;
    function Get_VPIS: WideString;
    function Get_VCOFINS: WideString;
    function Get_VOutro: WideString;
    function Get_VNF: WideString;
    function Get_VTotTrib: WideString;
    procedure Set_VBC(Value: WideString);
    procedure Set_VICMS(Value: WideString);
    procedure Set_VICMSDeson(Value: WideString);
    procedure Set_VBCST(Value: WideString);
    procedure Set_VST(Value: WideString);
    procedure Set_VProd(Value: WideString);
    procedure Set_VFrete(Value: WideString);
    procedure Set_VSeg(Value: WideString);
    procedure Set_VDesc(Value: WideString);
    procedure Set_VII(Value: WideString);
    procedure Set_VIPI(Value: WideString);
    procedure Set_VPIS(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
    procedure Set_VOutro(Value: WideString);
    procedure Set_VNF(Value: WideString);
    procedure Set_VTotTrib(Value: WideString);
  end;

{ TXMLISSQNtot }

  TXMLISSQNtot = class(TXMLNode, IXMLISSQNtot)
  protected
    { IXMLISSQNtot }
    function Get_VServ: WideString;
    function Get_VBC: WideString;
    function Get_VISS: WideString;
    function Get_VPIS: WideString;
    function Get_VCOFINS: WideString;
    function Get_DCompet: WideString;
    function Get_VDeducao: WideString;
    function Get_VOutro: WideString;
    function Get_VDescIncond: WideString;
    function Get_VDescCond: WideString;
    function Get_VISSRet: WideString;
    function Get_CRegTrib: WideString;
    procedure Set_VServ(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_VISS(Value: WideString);
    procedure Set_VPIS(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
    procedure Set_DCompet(Value: WideString);
    procedure Set_VDeducao(Value: WideString);
    procedure Set_VOutro(Value: WideString);
    procedure Set_VDescIncond(Value: WideString);
    procedure Set_VDescCond(Value: WideString);
    procedure Set_VISSRet(Value: WideString);
    procedure Set_CRegTrib(Value: WideString);
  end;

{ TXMLRetTrib }

  TXMLRetTrib = class(TXMLNode, IXMLRetTrib)
  protected
    { IXMLRetTrib }
    function Get_VRetPIS: WideString;
    function Get_VRetCOFINS: WideString;
    function Get_VRetCSLL: WideString;
    function Get_VBCIRRF: WideString;
    function Get_VIRRF: WideString;
    function Get_VBCRetPrev: WideString;
    function Get_VRetPrev: WideString;
    procedure Set_VRetPIS(Value: WideString);
    procedure Set_VRetCOFINS(Value: WideString);
    procedure Set_VRetCSLL(Value: WideString);
    procedure Set_VBCIRRF(Value: WideString);
    procedure Set_VIRRF(Value: WideString);
    procedure Set_VBCRetPrev(Value: WideString);
    procedure Set_VRetPrev(Value: WideString);
  end;

{ TXMLTransp }

  TXMLTransp = class(TXMLNode, IXMLTransp)
  private
    FReboque: IXMLTVeiculoList;
    FVol: IXMLVolList;
  protected
    { IXMLTransp }
    function Get_ModFrete: WideString;
    function Get_Transporta: IXMLTransporta;
    function Get_RetTransp: IXMLRetTransp;
    function Get_VeicTransp: IXMLTVeiculo;
    function Get_Reboque: IXMLTVeiculoList;
    function Get_Vagao: WideString;
    function Get_Balsa: WideString;
    function Get_Vol: IXMLVolList;
    procedure Set_ModFrete(Value: WideString);
    procedure Set_Vagao(Value: WideString);
    procedure Set_Balsa(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransporta }

  TXMLTransporta = class(TXMLNode, IXMLTransporta)
  protected
    { IXMLTransporta }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_XNome: WideString;
    function Get_IE: WideString;
    function Get_XEnder: WideString;
    function Get_XMun: WideString;
    function Get_UF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_XEnder(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_UF(Value: WideString);
  end;

{ TXMLRetTransp }

  TXMLRetTransp = class(TXMLNode, IXMLRetTransp)
  protected
    { IXMLRetTransp }
    function Get_VServ: WideString;
    function Get_VBCRet: WideString;
    function Get_PICMSRet: WideString;
    function Get_VICMSRet: WideString;
    function Get_CFOP: WideString;
    function Get_CMunFG: WideString;
    procedure Set_VServ(Value: WideString);
    procedure Set_VBCRet(Value: WideString);
    procedure Set_PICMSRet(Value: WideString);
    procedure Set_VICMSRet(Value: WideString);
    procedure Set_CFOP(Value: WideString);
    procedure Set_CMunFG(Value: WideString);
  end;

{ TXMLTVeiculo }

  TXMLTVeiculo = class(TXMLNode, IXMLTVeiculo)
  protected
    { IXMLTVeiculo }
    function Get_Placa: WideString;
    function Get_UF: WideString;
    function Get_RNTC: WideString;
    procedure Set_Placa(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_RNTC(Value: WideString);
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
    function Get_QVol: WideString;
    function Get_Esp: WideString;
    function Get_Marca: WideString;
    function Get_NVol: WideString;
    function Get_PesoL: WideString;
    function Get_PesoB: WideString;
    function Get_Lacres: IXMLLacresList;
    procedure Set_QVol(Value: WideString);
    procedure Set_Esp(Value: WideString);
    procedure Set_Marca(Value: WideString);
    procedure Set_NVol(Value: WideString);
    procedure Set_PesoL(Value: WideString);
    procedure Set_PesoB(Value: WideString);
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
    function Get_NLacre: WideString;
    procedure Set_NLacre(Value: WideString);
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
    function Get_NFat: WideString;
    function Get_VOrig: WideString;
    function Get_VDesc: WideString;
    function Get_VLiq: WideString;
    procedure Set_NFat(Value: WideString);
    procedure Set_VOrig(Value: WideString);
    procedure Set_VDesc(Value: WideString);
    procedure Set_VLiq(Value: WideString);
  end;

{ TXMLDup }

  TXMLDup = class(TXMLNode, IXMLDup)
  protected
    { IXMLDup }
    function Get_NDup: WideString;
    function Get_DVenc: WideString;
    function Get_VDup: WideString;
    procedure Set_NDup(Value: WideString);
    procedure Set_DVenc(Value: WideString);
    procedure Set_VDup(Value: WideString);
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
  protected
    { IXMLPag }
    function Get_TPag: WideString;
    function Get_VPag: WideString;
    function Get_Card: IXMLCard;
    procedure Set_TPag(Value: WideString);
    procedure Set_VPag(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPagList }

  TXMLPagList = class(TXMLNodeCollection, IXMLPagList)
  protected
    { IXMLPagList }
    function Add: IXMLPag;
    function Insert(const Index: Integer): IXMLPag;

    function Get_Item(Index: Integer): IXMLPag;
  end;

{ TXMLCard }

  TXMLCard = class(TXMLNode, IXMLCard)
  protected
    { IXMLCard }
    function Get_CNPJ: WideString;
    function Get_TBand: WideString;
    function Get_CAut: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_TBand(Value: WideString);
    procedure Set_CAut(Value: WideString);
  end;

{ TXMLInfAdic }

  TXMLInfAdic = class(TXMLNode, IXMLInfAdic)
  private
    FObsCont: IXMLObsContList;
    FObsFisco: IXMLObsFiscoList;
    FProcRef: IXMLProcRefList;
  protected
    { IXMLInfAdic }
    function Get_InfAdFisco: WideString;
    function Get_InfCpl: WideString;
    function Get_ObsCont: IXMLObsContList;
    function Get_ObsFisco: IXMLObsFiscoList;
    function Get_ProcRef: IXMLProcRefList;
    procedure Set_InfAdFisco(Value: WideString);
    procedure Set_InfCpl(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLObsCont }

  TXMLObsCont = class(TXMLNode, IXMLObsCont)
  protected
    { IXMLObsCont }
    function Get_XCampo: WideString;
    function Get_XTexto: WideString;
    procedure Set_XCampo(Value: WideString);
    procedure Set_XTexto(Value: WideString);
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
    function Get_XCampo: WideString;
    function Get_XTexto: WideString;
    procedure Set_XCampo(Value: WideString);
    procedure Set_XTexto(Value: WideString);
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
    function Get_NProc: WideString;
    function Get_IndProc: WideString;
    procedure Set_NProc(Value: WideString);
    procedure Set_IndProc(Value: WideString);
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
    function Get_UFSaidaPais: WideString;
    function Get_XLocExporta: WideString;
    function Get_XLocDespacho: WideString;
    procedure Set_UFSaidaPais(Value: WideString);
    procedure Set_XLocExporta(Value: WideString);
    procedure Set_XLocDespacho(Value: WideString);
  end;

{ TXMLCompra }

  TXMLCompra = class(TXMLNode, IXMLCompra)
  protected
    { IXMLCompra }
    function Get_XNEmp: WideString;
    function Get_XPed: WideString;
    function Get_XCont: WideString;
    procedure Set_XNEmp(Value: WideString);
    procedure Set_XPed(Value: WideString);
    procedure Set_XCont(Value: WideString);
  end;

{ TXMLCana }

  TXMLCana = class(TXMLNode, IXMLCana)
  private
    FForDia: IXMLForDiaList;
    FDeduc: IXMLDeducList;
  protected
    { IXMLCana }
    function Get_Safra: WideString;
    function Get_Ref: WideString;
    function Get_ForDia: IXMLForDiaList;
    function Get_QTotMes: WideString;
    function Get_QTotAnt: WideString;
    function Get_QTotGer: WideString;
    function Get_Deduc: IXMLDeducList;
    function Get_VFor: WideString;
    function Get_VTotDed: WideString;
    function Get_VLiqFor: WideString;
    procedure Set_Safra(Value: WideString);
    procedure Set_Ref(Value: WideString);
    procedure Set_QTotMes(Value: WideString);
    procedure Set_QTotAnt(Value: WideString);
    procedure Set_QTotGer(Value: WideString);
    procedure Set_VFor(Value: WideString);
    procedure Set_VTotDed(Value: WideString);
    procedure Set_VLiqFor(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLForDia }

  TXMLForDia = class(TXMLNode, IXMLForDia)
  protected
    { IXMLForDia }
    function Get_Dia: WideString;
    function Get_Qtde: WideString;
    procedure Set_Dia(Value: WideString);
    procedure Set_Qtde(Value: WideString);
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
    function Get_XDed: WideString;
    function Get_VDed: WideString;
    procedure Set_XDed(Value: WideString);
    procedure Set_VDed(Value: WideString);
  end;

{ TXMLDeducList }

  TXMLDeducList = class(TXMLNodeCollection, IXMLDeducList)
  protected
    { IXMLDeducList }
    function Add: IXMLDeduc;
    function Insert(const Index: Integer): IXMLDeduc;

    function Get_Item(Index: Integer): IXMLDeduc;
  end;

{ TXMLSignatureType_ds }

  TXMLSignatureType_ds = class(TXMLNode, IXMLSignatureType_ds)
  protected
    { IXMLSignatureType_ds }
    function Get_Id: WideString;
    function Get_SignedInfo: IXMLSignedInfoType_ds;
    function Get_SignatureValue: IXMLSignatureValueType_ds;
    function Get_KeyInfo: IXMLKeyInfoType_ds;
    procedure Set_Id(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSignedInfoType_ds }

  TXMLSignedInfoType_ds = class(TXMLNode, IXMLSignedInfoType_ds)
  protected
    { IXMLSignedInfoType_ds }
    function Get_Id: WideString;
    function Get_CanonicalizationMethod: IXMLCanonicalizationMethod_ds;
    function Get_SignatureMethod: IXMLSignatureMethod_ds;
    function Get_Reference: IXMLReferenceType_ds;
    procedure Set_Id(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCanonicalizationMethod_ds }

  TXMLCanonicalizationMethod_ds = class(TXMLNode, IXMLCanonicalizationMethod_ds)
  protected
    { IXMLCanonicalizationMethod_ds }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
  end;

{ TXMLSignatureMethod_ds }

  TXMLSignatureMethod_ds = class(TXMLNode, IXMLSignatureMethod_ds)
  protected
    { IXMLSignatureMethod_ds }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
  end;

{ TXMLReferenceType_ds }

  TXMLReferenceType_ds = class(TXMLNode, IXMLReferenceType_ds)
  protected
    { IXMLReferenceType_ds }
    function Get_Id: WideString;
    function Get_URI: WideString;
    function Get_Type_: WideString;
    function Get_Transforms: IXMLTransformsType_ds;
    function Get_DigestMethod: IXMLDigestMethod_ds;
    function Get_DigestValue: WideString;
    procedure Set_Id(Value: WideString);
    procedure Set_URI(Value: WideString);
    procedure Set_Type_(Value: WideString);
    procedure Set_DigestValue(Value: WideString);
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
    function Get_Algorithm: WideString;
    function Get_XPath(Index: Integer): WideString;
    procedure Set_Algorithm(Value: WideString);
    function Add(const XPath: WideString): IXMLNode;
    function Insert(const Index: Integer; const XPath: WideString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDigestMethod_ds }

  TXMLDigestMethod_ds = class(TXMLNode, IXMLDigestMethod_ds)
  protected
    { IXMLDigestMethod_ds }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
  end;

{ TXMLSignatureValueType_ds }

  TXMLSignatureValueType_ds = class(TXMLNode, IXMLSignatureValueType_ds)
  protected
    { IXMLSignatureValueType_ds }
    function Get_Id: WideString;
    procedure Set_Id(Value: WideString);
  end;

{ TXMLKeyInfoType_ds }

  TXMLKeyInfoType_ds = class(TXMLNode, IXMLKeyInfoType_ds)
  protected
    { IXMLKeyInfoType_ds }
    function Get_Id: WideString;
    function Get_X509Data: IXMLX509DataType_ds;
    procedure Set_Id(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLX509DataType_ds }

  TXMLX509DataType_ds = class(TXMLNode, IXMLX509DataType_ds)
  protected
    { IXMLX509DataType_ds }
    function Get_X509Certificate: WideString;
    procedure Set_X509Certificate(Value: WideString);
  end;

{ TXMLTProtNFe }

  TXMLTProtNFe = class(TXMLNode, IXMLTProtNFe)
  protected
    { IXMLTProtNFe }
    function Get_Versao: WideString;
    function Get_InfProt: IXMLInfProt;
    function Get_Signature: IXMLSignatureType_ds;
    procedure Set_Versao(Value: WideString);
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
    function Get_Id: WideString;
    function Get_TpAmb: WideString;
    function Get_VerAplic: WideString;
    function Get_ChNFe: WideString;
    function Get_DhRecbto: WideString;
    function Get_NProt: WideString;
    function Get_DigVal: WideString;
    function Get_CStat: WideString;
    function Get_XMotivo: WideString;
    procedure Set_Id(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_VerAplic(Value: WideString);
    procedure Set_ChNFe(Value: WideString);
    procedure Set_DhRecbto(Value: WideString);
    procedure Set_NProt(Value: WideString);
    procedure Set_DigVal(Value: WideString);
    procedure Set_CStat(Value: WideString);
    procedure Set_XMotivo(Value: WideString);
  end;

{ TXMLTRetEnviNFe }

  TXMLTRetEnviNFe = class(TXMLNode, IXMLTRetEnviNFe)
  protected
    { IXMLTRetEnviNFe }
    function Get_Versao: WideString;
    function Get_TpAmb: WideString;
    function Get_VerAplic: WideString;
    function Get_CStat: WideString;
    function Get_XMotivo: WideString;
    function Get_CUF: WideString;
    function Get_DhRecbto: WideString;
    function Get_InfRec: IXMLInfRec;
    function Get_ProtNFe: IXMLTProtNFe;
    procedure Set_Versao(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_VerAplic(Value: WideString);
    procedure Set_CStat(Value: WideString);
    procedure Set_XMotivo(Value: WideString);
    procedure Set_CUF(Value: WideString);
    procedure Set_DhRecbto(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInfRec }

  TXMLInfRec = class(TXMLNode, IXMLInfRec)
  protected
    { IXMLInfRec }
    function Get_NRec: WideString;
    function Get_TMed: WideString;
    procedure Set_NRec(Value: WideString);
    procedure Set_TMed(Value: WideString);
  end;

{ TXMLTConsReciNFe }

  TXMLTConsReciNFe = class(TXMLNode, IXMLTConsReciNFe)
  protected
    { IXMLTConsReciNFe }
    function Get_Versao: WideString;
    function Get_TpAmb: WideString;
    function Get_NRec: WideString;
    procedure Set_Versao(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_NRec(Value: WideString);
  end;

{ TXMLTRetConsReciNFe }

  TXMLTRetConsReciNFe = class(TXMLNode, IXMLTRetConsReciNFe)
  private
    FProtNFe: IXMLTProtNFeList;
  protected
    { IXMLTRetConsReciNFe }
    function Get_Versao: WideString;
    function Get_TpAmb: WideString;
    function Get_VerAplic: WideString;
    function Get_NRec: WideString;
    function Get_CStat: WideString;
    function Get_XMotivo: WideString;
    function Get_CUF: WideString;
    function Get_DhRecbto: WideString;
    function Get_CMsg: WideString;
    function Get_XMsg: WideString;
    function Get_ProtNFe: IXMLTProtNFeList;
    procedure Set_Versao(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_VerAplic(Value: WideString);
    procedure Set_NRec(Value: WideString);
    procedure Set_CStat(Value: WideString);
    procedure Set_XMotivo(Value: WideString);
    procedure Set_CUF(Value: WideString);
    procedure Set_DhRecbto(Value: WideString);
    procedure Set_CMsg(Value: WideString);
    procedure Set_XMsg(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNfeProc }

  TXMLTNfeProc = class(TXMLNode, IXMLTNfeProc)
  protected
    { IXMLTNfeProc }
    function Get_Versao: WideString;
    function Get_NFe: IXMLTNFe;
    function Get_ProtNFe: IXMLTProtNFe;
    procedure Set_Versao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLNVEList }

  TXMLNVEList = class(TXMLNodeCollection, IXMLNVEList)
  protected
    { IXMLNVEList }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;

    function Get_Item(Index: Integer): WideString;
  end;

{ Global Functions }

function GetenviNFe(Doc: IXMLDocument): IXMLTEnviNFe;
function LoadenviNFe(const FileName: string): IXMLTEnviNFe;
function NewenviNFe: IXMLTEnviNFe;

const
  TargetNamespace = 'http://www.portalfiscal.inf.br/nfe';

implementation

{ Global Functions }

function GetenviNFe(Doc: IXMLDocument): IXMLTEnviNFe;
begin
  Result := Doc.GetDocBinding('enviNFe', TXMLTEnviNFe, TargetNamespace) as IXMLTEnviNFe;
end;

function LoadenviNFe(const FileName: string): IXMLTEnviNFe;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('enviNFe', TXMLTEnviNFe, TargetNamespace) as IXMLTEnviNFe;
end;

function NewenviNFe: IXMLTEnviNFe;
begin
  Result := NewXMLDocument.GetDocBinding('enviNFe', TXMLTEnviNFe, TargetNamespace) as IXMLTEnviNFe;
end;

{ TXMLTEnviNFe }

procedure TXMLTEnviNFe.AfterConstruction;
begin
  RegisterChildNode('NFe', TXMLTNFe);
  FNFe := CreateCollection(TXMLTNFeList, IXMLTNFe, 'NFe') as IXMLTNFeList;
  inherited;
end;

function TXMLTEnviNFe.Get_Versao: WideString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTEnviNFe.Set_Versao(Value: WideString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTEnviNFe.Get_IdLote: WideString;
begin
  Result := ChildNodes['idLote'].Text;
end;

procedure TXMLTEnviNFe.Set_IdLote(Value: WideString);
begin
  ChildNodes['idLote'].NodeValue := Value;
end;

function TXMLTEnviNFe.Get_IndSinc: WideString;
begin
  Result := ChildNodes['indSinc'].Text;
end;

procedure TXMLTEnviNFe.Set_IndSinc(Value: WideString);
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
  RegisterChildNode('Signature', TXMLSignatureType_ds);
  inherited;
end;

function TXMLTNFe.Get_InfNFe: IXMLInfNFe;
begin
  Result := ChildNodes['infNFe'] as IXMLInfNFe;
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
  FPag := CreateCollection(TXMLPagList, IXMLPag, 'pag') as IXMLPagList;
  inherited;
end;

function TXMLInfNFe.Get_Versao: WideString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLInfNFe.Set_Versao(Value: WideString);
begin
  SetAttribute('versao', Value);
end;

function TXMLInfNFe.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLInfNFe.Set_Id(Value: WideString);
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

function TXMLInfNFe.Get_Pag: IXMLPagList;
begin
  Result := FPag;
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

function TXMLIde.Get_CUF: WideString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLIde.Set_CUF(Value: WideString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLIde.Get_CNF: WideString;
begin
  Result := ChildNodes['cNF'].Text;
end;

procedure TXMLIde.Set_CNF(Value: WideString);
begin
  ChildNodes['cNF'].NodeValue := Value;
end;

function TXMLIde.Get_NatOp: WideString;
begin
  Result := ChildNodes['natOp'].Text;
end;

procedure TXMLIde.Set_NatOp(Value: WideString);
begin
  ChildNodes['natOp'].NodeValue := Value;
end;

function TXMLIde.Get_IndPag: WideString;
begin
  Result := ChildNodes['indPag'].Text;
end;

procedure TXMLIde.Set_IndPag(Value: WideString);
begin
  ChildNodes['indPag'].NodeValue := Value;
end;

function TXMLIde.Get_Mod_: WideString;
begin
  Result := ChildNodes['mod'].Text;
end;

procedure TXMLIde.Set_Mod_(Value: WideString);
begin
  ChildNodes['mod'].NodeValue := Value;
end;

function TXMLIde.Get_Serie: WideString;
begin
  Result := ChildNodes['serie'].Text;
end;

procedure TXMLIde.Set_Serie(Value: WideString);
begin
  ChildNodes['serie'].NodeValue := Value;
end;

function TXMLIde.Get_NNF: WideString;
begin
  Result := ChildNodes['nNF'].Text;
end;

procedure TXMLIde.Set_NNF(Value: WideString);
begin
  ChildNodes['nNF'].NodeValue := Value;
end;

function TXMLIde.Get_DhEmi: WideString;
begin
  Result := ChildNodes['dhEmi'].Text;
end;

procedure TXMLIde.Set_DhEmi(Value: WideString);
begin
  ChildNodes['dhEmi'].NodeValue := Value;
end;

function TXMLIde.Get_DhSaiEnt: WideString;
begin
  Result := ChildNodes['dhSaiEnt'].Text;
end;

procedure TXMLIde.Set_DhSaiEnt(Value: WideString);
begin
  ChildNodes['dhSaiEnt'].NodeValue := Value;
end;

function TXMLIde.Get_TpNF: WideString;
begin
  Result := ChildNodes['tpNF'].Text;
end;

procedure TXMLIde.Set_TpNF(Value: WideString);
begin
  ChildNodes['tpNF'].NodeValue := Value;
end;

function TXMLIde.Get_IdDest: WideString;
begin
  Result := ChildNodes['idDest'].Text;
end;

procedure TXMLIde.Set_IdDest(Value: WideString);
begin
  ChildNodes['idDest'].NodeValue := Value;
end;

function TXMLIde.Get_CMunFG: WideString;
begin
  Result := ChildNodes['cMunFG'].Text;
end;

procedure TXMLIde.Set_CMunFG(Value: WideString);
begin
  ChildNodes['cMunFG'].NodeValue := Value;
end;

function TXMLIde.Get_TpImp: WideString;
begin
  Result := ChildNodes['tpImp'].Text;
end;

procedure TXMLIde.Set_TpImp(Value: WideString);
begin
  ChildNodes['tpImp'].NodeValue := Value;
end;

function TXMLIde.Get_TpEmis: WideString;
begin
  Result := ChildNodes['tpEmis'].Text;
end;

procedure TXMLIde.Set_TpEmis(Value: WideString);
begin
  ChildNodes['tpEmis'].NodeValue := Value;
end;

function TXMLIde.Get_CDV: WideString;
begin
  Result := ChildNodes['cDV'].Text;
end;

procedure TXMLIde.Set_CDV(Value: WideString);
begin
  ChildNodes['cDV'].NodeValue := Value;
end;

function TXMLIde.Get_TpAmb: WideString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLIde.Set_TpAmb(Value: WideString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLIde.Get_FinNFe: WideString;
begin
  Result := ChildNodes['finNFe'].Text;
end;

procedure TXMLIde.Set_FinNFe(Value: WideString);
begin
  ChildNodes['finNFe'].NodeValue := Value;
end;

function TXMLIde.Get_IndFinal: WideString;
begin
  Result := ChildNodes['indFinal'].Text;
end;

procedure TXMLIde.Set_IndFinal(Value: WideString);
begin
  ChildNodes['indFinal'].NodeValue := Value;
end;

function TXMLIde.Get_IndPres: WideString;
begin
  Result := ChildNodes['indPres'].Text;
end;

procedure TXMLIde.Set_IndPres(Value: WideString);
begin
  ChildNodes['indPres'].NodeValue := Value;
end;

function TXMLIde.Get_ProcEmi: WideString;
begin
  Result := ChildNodes['procEmi'].Text;
end;

procedure TXMLIde.Set_ProcEmi(Value: WideString);
begin
  ChildNodes['procEmi'].NodeValue := Value;
end;

function TXMLIde.Get_VerProc: WideString;
begin
  Result := ChildNodes['verProc'].Text;
end;

procedure TXMLIde.Set_VerProc(Value: WideString);
begin
  ChildNodes['verProc'].NodeValue := Value;
end;

function TXMLIde.Get_DhCont: WideString;
begin
  Result := ChildNodes['dhCont'].Text;
end;

procedure TXMLIde.Set_DhCont(Value: WideString);
begin
  ChildNodes['dhCont'].NodeValue := Value;
end;

function TXMLIde.Get_XJust: WideString;
begin
  Result := ChildNodes['xJust'].Text;
end;

procedure TXMLIde.Set_XJust(Value: WideString);
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

function TXMLNFref.Get_RefNFe: WideString;
begin
  Result := ChildNodes['refNFe'].Text;
end;

procedure TXMLNFref.Set_RefNFe(Value: WideString);
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

function TXMLNFref.Get_RefCTe: WideString;
begin
  Result := ChildNodes['refCTe'].Text;
end;

procedure TXMLNFref.Set_RefCTe(Value: WideString);
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

function TXMLRefNF.Get_CUF: WideString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLRefNF.Set_CUF(Value: WideString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLRefNF.Get_AAMM: WideString;
begin
  Result := ChildNodes['AAMM'].Text;
end;

procedure TXMLRefNF.Set_AAMM(Value: WideString);
begin
  ChildNodes['AAMM'].NodeValue := Value;
end;

function TXMLRefNF.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLRefNF.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLRefNF.Get_Mod_: WideString;
begin
  Result := ChildNodes['mod'].Text;
end;

procedure TXMLRefNF.Set_Mod_(Value: WideString);
begin
  ChildNodes['mod'].NodeValue := Value;
end;

function TXMLRefNF.Get_Serie: WideString;
begin
  Result := ChildNodes['serie'].Text;
end;

procedure TXMLRefNF.Set_Serie(Value: WideString);
begin
  ChildNodes['serie'].NodeValue := Value;
end;

function TXMLRefNF.Get_NNF: WideString;
begin
  Result := ChildNodes['nNF'].Text;
end;

procedure TXMLRefNF.Set_NNF(Value: WideString);
begin
  ChildNodes['nNF'].NodeValue := Value;
end;

{ TXMLRefNFP }

function TXMLRefNFP.Get_CUF: WideString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLRefNFP.Set_CUF(Value: WideString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLRefNFP.Get_AAMM: WideString;
begin
  Result := ChildNodes['AAMM'].Text;
end;

procedure TXMLRefNFP.Set_AAMM(Value: WideString);
begin
  ChildNodes['AAMM'].NodeValue := Value;
end;

function TXMLRefNFP.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLRefNFP.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLRefNFP.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLRefNFP.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLRefNFP.Get_IE: WideString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLRefNFP.Set_IE(Value: WideString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLRefNFP.Get_Mod_: WideString;
begin
  Result := ChildNodes['mod'].Text;
end;

procedure TXMLRefNFP.Set_Mod_(Value: WideString);
begin
  ChildNodes['mod'].NodeValue := Value;
end;

function TXMLRefNFP.Get_Serie: WideString;
begin
  Result := ChildNodes['serie'].Text;
end;

procedure TXMLRefNFP.Set_Serie(Value: WideString);
begin
  ChildNodes['serie'].NodeValue := Value;
end;

function TXMLRefNFP.Get_NNF: WideString;
begin
  Result := ChildNodes['nNF'].Text;
end;

procedure TXMLRefNFP.Set_NNF(Value: WideString);
begin
  ChildNodes['nNF'].NodeValue := Value;
end;

{ TXMLRefECF }

function TXMLRefECF.Get_Mod_: WideString;
begin
  Result := ChildNodes['mod'].Text;
end;

procedure TXMLRefECF.Set_Mod_(Value: WideString);
begin
  ChildNodes['mod'].NodeValue := Value;
end;

function TXMLRefECF.Get_NECF: WideString;
begin
  Result := ChildNodes['nECF'].Text;
end;

procedure TXMLRefECF.Set_NECF(Value: WideString);
begin
  ChildNodes['nECF'].NodeValue := Value;
end;

function TXMLRefECF.Get_NCOO: WideString;
begin
  Result := ChildNodes['nCOO'].Text;
end;

procedure TXMLRefECF.Set_NCOO(Value: WideString);
begin
  ChildNodes['nCOO'].NodeValue := Value;
end;

{ TXMLEmit }

procedure TXMLEmit.AfterConstruction;
begin
  RegisterChildNode('enderEmit', TXMLTEnderEmi);
  inherited;
end;

function TXMLEmit.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLEmit.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLEmit.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLEmit.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLEmit.Get_XNome: WideString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLEmit.Set_XNome(Value: WideString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLEmit.Get_XFant: WideString;
begin
  Result := ChildNodes['xFant'].Text;
end;

procedure TXMLEmit.Set_XFant(Value: WideString);
begin
  ChildNodes['xFant'].NodeValue := Value;
end;

function TXMLEmit.Get_EnderEmit: IXMLTEnderEmi;
begin
  Result := ChildNodes['enderEmit'] as IXMLTEnderEmi;
end;

function TXMLEmit.Get_IE: WideString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLEmit.Set_IE(Value: WideString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLEmit.Get_IEST: WideString;
begin
  Result := ChildNodes['IEST'].Text;
end;

procedure TXMLEmit.Set_IEST(Value: WideString);
begin
  ChildNodes['IEST'].NodeValue := Value;
end;

function TXMLEmit.Get_IM: WideString;
begin
  Result := ChildNodes['IM'].Text;
end;

procedure TXMLEmit.Set_IM(Value: WideString);
begin
  ChildNodes['IM'].NodeValue := Value;
end;

function TXMLEmit.Get_CNAE: WideString;
begin
  Result := ChildNodes['CNAE'].Text;
end;

procedure TXMLEmit.Set_CNAE(Value: WideString);
begin
  ChildNodes['CNAE'].NodeValue := Value;
end;

function TXMLEmit.Get_CRT: WideString;
begin
  Result := ChildNodes['CRT'].Text;
end;

procedure TXMLEmit.Set_CRT(Value: WideString);
begin
  ChildNodes['CRT'].NodeValue := Value;
end;

{ TXMLTEnderEmi }

function TXMLTEnderEmi.Get_XLgr: WideString;
begin
  Result := ChildNodes['xLgr'].Text;
end;

procedure TXMLTEnderEmi.Set_XLgr(Value: WideString);
begin
  ChildNodes['xLgr'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_Nro: WideString;
begin
  Result := ChildNodes['nro'].Text;
end;

procedure TXMLTEnderEmi.Set_Nro(Value: WideString);
begin
  ChildNodes['nro'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_XCpl: WideString;
begin
  Result := ChildNodes['xCpl'].Text;
end;

procedure TXMLTEnderEmi.Set_XCpl(Value: WideString);
begin
  ChildNodes['xCpl'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_XBairro: WideString;
begin
  Result := ChildNodes['xBairro'].Text;
end;

procedure TXMLTEnderEmi.Set_XBairro(Value: WideString);
begin
  ChildNodes['xBairro'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_CMun: WideString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTEnderEmi.Set_CMun(Value: WideString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_XMun: WideString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTEnderEmi.Set_XMun(Value: WideString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTEnderEmi.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_CEP: WideString;
begin
  Result := ChildNodes['CEP'].Text;
end;

procedure TXMLTEnderEmi.Set_CEP(Value: WideString);
begin
  ChildNodes['CEP'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_CPais: WideString;
begin
  Result := ChildNodes['cPais'].Text;
end;

procedure TXMLTEnderEmi.Set_CPais(Value: WideString);
begin
  ChildNodes['cPais'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_XPais: WideString;
begin
  Result := ChildNodes['xPais'].Text;
end;

procedure TXMLTEnderEmi.Set_XPais(Value: WideString);
begin
  ChildNodes['xPais'].NodeValue := Value;
end;

function TXMLTEnderEmi.Get_Fone: WideString;
begin
  Result := ChildNodes['fone'].Text;
end;

procedure TXMLTEnderEmi.Set_Fone(Value: WideString);
begin
  ChildNodes['fone'].NodeValue := Value;
end;

{ TXMLAvulsa }

function TXMLAvulsa.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLAvulsa.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLAvulsa.Get_XOrgao: WideString;
begin
  Result := ChildNodes['xOrgao'].Text;
end;

procedure TXMLAvulsa.Set_XOrgao(Value: WideString);
begin
  ChildNodes['xOrgao'].NodeValue := Value;
end;

function TXMLAvulsa.Get_Matr: WideString;
begin
  Result := ChildNodes['matr'].Text;
end;

procedure TXMLAvulsa.Set_Matr(Value: WideString);
begin
  ChildNodes['matr'].NodeValue := Value;
end;

function TXMLAvulsa.Get_XAgente: WideString;
begin
  Result := ChildNodes['xAgente'].Text;
end;

procedure TXMLAvulsa.Set_XAgente(Value: WideString);
begin
  ChildNodes['xAgente'].NodeValue := Value;
end;

function TXMLAvulsa.Get_Fone: WideString;
begin
  Result := ChildNodes['fone'].Text;
end;

procedure TXMLAvulsa.Set_Fone(Value: WideString);
begin
  ChildNodes['fone'].NodeValue := Value;
end;

function TXMLAvulsa.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLAvulsa.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLAvulsa.Get_NDAR: WideString;
begin
  Result := ChildNodes['nDAR'].Text;
end;

procedure TXMLAvulsa.Set_NDAR(Value: WideString);
begin
  ChildNodes['nDAR'].NodeValue := Value;
end;

function TXMLAvulsa.Get_DEmi: WideString;
begin
  Result := ChildNodes['dEmi'].Text;
end;

procedure TXMLAvulsa.Set_DEmi(Value: WideString);
begin
  ChildNodes['dEmi'].NodeValue := Value;
end;

function TXMLAvulsa.Get_VDAR: WideString;
begin
  Result := ChildNodes['vDAR'].Text;
end;

procedure TXMLAvulsa.Set_VDAR(Value: WideString);
begin
  ChildNodes['vDAR'].NodeValue := Value;
end;

function TXMLAvulsa.Get_RepEmi: WideString;
begin
  Result := ChildNodes['repEmi'].Text;
end;

procedure TXMLAvulsa.Set_RepEmi(Value: WideString);
begin
  ChildNodes['repEmi'].NodeValue := Value;
end;

function TXMLAvulsa.Get_DPag: WideString;
begin
  Result := ChildNodes['dPag'].Text;
end;

procedure TXMLAvulsa.Set_DPag(Value: WideString);
begin
  ChildNodes['dPag'].NodeValue := Value;
end;

{ TXMLDest }

procedure TXMLDest.AfterConstruction;
begin
  RegisterChildNode('enderDest', TXMLTEndereco);
  inherited;
end;

function TXMLDest.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLDest.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLDest.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLDest.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLDest.Get_IdEstrangeiro: WideString;
begin
  Result := ChildNodes['idEstrangeiro'].Text;
end;

procedure TXMLDest.Set_IdEstrangeiro(Value: WideString);
begin
  ChildNodes['idEstrangeiro'].NodeValue := Value;
end;

function TXMLDest.Get_XNome: WideString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLDest.Set_XNome(Value: WideString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLDest.Get_EnderDest: IXMLTEndereco;
begin
  Result := ChildNodes['enderDest'] as IXMLTEndereco;
end;

function TXMLDest.Get_IndIEDest: WideString;
begin
  Result := ChildNodes['indIEDest'].Text;
end;

procedure TXMLDest.Set_IndIEDest(Value: WideString);
begin
  ChildNodes['indIEDest'].NodeValue := Value;
end;

function TXMLDest.Get_IE: WideString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLDest.Set_IE(Value: WideString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLDest.Get_ISUF: WideString;
begin
  Result := ChildNodes['ISUF'].Text;
end;

procedure TXMLDest.Set_ISUF(Value: WideString);
begin
  ChildNodes['ISUF'].NodeValue := Value;
end;

function TXMLDest.Get_IM: WideString;
begin
  Result := ChildNodes['IM'].Text;
end;

procedure TXMLDest.Set_IM(Value: WideString);
begin
  ChildNodes['IM'].NodeValue := Value;
end;

function TXMLDest.Get_Email: WideString;
begin
  Result := ChildNodes['email'].Text;
end;

procedure TXMLDest.Set_Email(Value: WideString);
begin
  ChildNodes['email'].NodeValue := Value;
end;

{ TXMLTEndereco }

function TXMLTEndereco.Get_XLgr: WideString;
begin
  Result := ChildNodes['xLgr'].Text;
end;

procedure TXMLTEndereco.Set_XLgr(Value: WideString);
begin
  ChildNodes['xLgr'].NodeValue := Value;
end;

function TXMLTEndereco.Get_Nro: WideString;
begin
  Result := ChildNodes['nro'].Text;
end;

procedure TXMLTEndereco.Set_Nro(Value: WideString);
begin
  ChildNodes['nro'].NodeValue := Value;
end;

function TXMLTEndereco.Get_XCpl: WideString;
begin
  Result := ChildNodes['xCpl'].Text;
end;

procedure TXMLTEndereco.Set_XCpl(Value: WideString);
begin
  ChildNodes['xCpl'].NodeValue := Value;
end;

function TXMLTEndereco.Get_XBairro: WideString;
begin
  Result := ChildNodes['xBairro'].Text;
end;

procedure TXMLTEndereco.Set_XBairro(Value: WideString);
begin
  ChildNodes['xBairro'].NodeValue := Value;
end;

function TXMLTEndereco.Get_CMun: WideString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTEndereco.Set_CMun(Value: WideString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTEndereco.Get_XMun: WideString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTEndereco.Set_XMun(Value: WideString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTEndereco.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTEndereco.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLTEndereco.Get_CEP: WideString;
begin
  Result := ChildNodes['CEP'].Text;
end;

procedure TXMLTEndereco.Set_CEP(Value: WideString);
begin
  ChildNodes['CEP'].NodeValue := Value;
end;

function TXMLTEndereco.Get_CPais: WideString;
begin
  Result := ChildNodes['cPais'].Text;
end;

procedure TXMLTEndereco.Set_CPais(Value: WideString);
begin
  ChildNodes['cPais'].NodeValue := Value;
end;

function TXMLTEndereco.Get_XPais: WideString;
begin
  Result := ChildNodes['xPais'].Text;
end;

procedure TXMLTEndereco.Set_XPais(Value: WideString);
begin
  ChildNodes['xPais'].NodeValue := Value;
end;

function TXMLTEndereco.Get_Fone: WideString;
begin
  Result := ChildNodes['fone'].Text;
end;

procedure TXMLTEndereco.Set_Fone(Value: WideString);
begin
  ChildNodes['fone'].NodeValue := Value;
end;

{ TXMLTLocal }

function TXMLTLocal.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTLocal.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTLocal.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLTLocal.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLTLocal.Get_XLgr: WideString;
begin
  Result := ChildNodes['xLgr'].Text;
end;

procedure TXMLTLocal.Set_XLgr(Value: WideString);
begin
  ChildNodes['xLgr'].NodeValue := Value;
end;

function TXMLTLocal.Get_Nro: WideString;
begin
  Result := ChildNodes['nro'].Text;
end;

procedure TXMLTLocal.Set_Nro(Value: WideString);
begin
  ChildNodes['nro'].NodeValue := Value;
end;

function TXMLTLocal.Get_XCpl: WideString;
begin
  Result := ChildNodes['xCpl'].Text;
end;

procedure TXMLTLocal.Set_XCpl(Value: WideString);
begin
  ChildNodes['xCpl'].NodeValue := Value;
end;

function TXMLTLocal.Get_XBairro: WideString;
begin
  Result := ChildNodes['xBairro'].Text;
end;

procedure TXMLTLocal.Set_XBairro(Value: WideString);
begin
  ChildNodes['xBairro'].NodeValue := Value;
end;

function TXMLTLocal.Get_CMun: WideString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTLocal.Set_CMun(Value: WideString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTLocal.Get_XMun: WideString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTLocal.Set_XMun(Value: WideString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTLocal.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTLocal.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

{ TXMLAutXML }

function TXMLAutXML.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLAutXML.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLAutXML.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLAutXML.Set_CPF(Value: WideString);
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

function TXMLDet.Get_NItem: WideString;
begin
  Result := AttributeNodes['nItem'].Text;
end;

procedure TXMLDet.Set_NItem(Value: WideString);
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

function TXMLDet.Get_InfAdProd: WideString;
begin
  Result := ChildNodes['infAdProd'].Text;
end;

procedure TXMLDet.Set_InfAdProd(Value: WideString);
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
  RegisterChildNode('veicProd', TXMLVeicProd);
  RegisterChildNode('med', TXMLMed);
  RegisterChildNode('arma', TXMLArma);
  RegisterChildNode('comb', TXMLComb);
  FNVE := CreateCollection(TXMLNVEList, IXMLNode, 'NVE') as IXMLNVEList;
  FDI := CreateCollection(TXMLDIList, IXMLDI, 'DI') as IXMLDIList;
  FDetExport := CreateCollection(TXMLDetExportList, IXMLDetExport, 'detExport') as IXMLDetExportList;
  FMed := CreateCollection(TXMLMedList, IXMLMed, 'med') as IXMLMedList;
  FArma := CreateCollection(TXMLArmaList, IXMLArma, 'arma') as IXMLArmaList;
  inherited;
end;

function TXMLProd.Get_CProd: WideString;
begin
  Result := ChildNodes['cProd'].Text;
end;

procedure TXMLProd.Set_CProd(Value: WideString);
begin
  ChildNodes['cProd'].NodeValue := Value;
end;

function TXMLProd.Get_CEAN: WideString;
begin
  Result := ChildNodes['cEAN'].Text;
end;

procedure TXMLProd.Set_CEAN(Value: WideString);
begin
  ChildNodes['cEAN'].NodeValue := Value;
end;

function TXMLProd.Get_XProd: WideString;
begin
  Result := ChildNodes['xProd'].Text;
end;

procedure TXMLProd.Set_XProd(Value: WideString);
begin
  ChildNodes['xProd'].NodeValue := Value;
end;

function TXMLProd.Get_NCM: WideString;
begin
  Result := ChildNodes['NCM'].Text;
end;

procedure TXMLProd.Set_NCM(Value: WideString);
begin
  ChildNodes['NCM'].NodeValue := Value;
end;

function TXMLProd.Get_NVE: IXMLNVEList;
begin
  Result := FNVE;
end;

function TXMLProd.Get_EXTIPI: WideString;
begin
  Result := ChildNodes['EXTIPI'].Text;
end;

procedure TXMLProd.Set_EXTIPI(Value: WideString);
begin
  ChildNodes['EXTIPI'].NodeValue := Value;
end;

function TXMLProd.Get_CFOP: WideString;
begin
  Result := ChildNodes['CFOP'].Text;
end;

procedure TXMLProd.Set_CFOP(Value: WideString);
begin
  ChildNodes['CFOP'].NodeValue := Value;
end;

function TXMLProd.Get_UCom: WideString;
begin
  Result := ChildNodes['uCom'].Text;
end;

procedure TXMLProd.Set_UCom(Value: WideString);
begin
  ChildNodes['uCom'].NodeValue := Value;
end;

function TXMLProd.Get_QCom: WideString;
begin
  Result := ChildNodes['qCom'].Text;
end;

procedure TXMLProd.Set_QCom(Value: WideString);
begin
  ChildNodes['qCom'].NodeValue := Value;
end;

function TXMLProd.Get_VUnCom: WideString;
begin
  Result := ChildNodes['vUnCom'].Text;
end;

procedure TXMLProd.Set_VUnCom(Value: WideString);
begin
  ChildNodes['vUnCom'].NodeValue := Value;
end;

function TXMLProd.Get_VProd: WideString;
begin
  Result := ChildNodes['vProd'].Text;
end;

procedure TXMLProd.Set_VProd(Value: WideString);
begin
  ChildNodes['vProd'].NodeValue := Value;
end;

function TXMLProd.Get_CEANTrib: WideString;
begin
  Result := ChildNodes['cEANTrib'].Text;
end;

procedure TXMLProd.Set_CEANTrib(Value: WideString);
begin
  ChildNodes['cEANTrib'].NodeValue := Value;
end;

function TXMLProd.Get_UTrib: WideString;
begin
  Result := ChildNodes['uTrib'].Text;
end;

procedure TXMLProd.Set_UTrib(Value: WideString);
begin
  ChildNodes['uTrib'].NodeValue := Value;
end;

function TXMLProd.Get_QTrib: WideString;
begin
  Result := ChildNodes['qTrib'].Text;
end;

procedure TXMLProd.Set_QTrib(Value: WideString);
begin
  ChildNodes['qTrib'].NodeValue := Value;
end;

function TXMLProd.Get_VUnTrib: WideString;
begin
  Result := ChildNodes['vUnTrib'].Text;
end;

procedure TXMLProd.Set_VUnTrib(Value: WideString);
begin
  ChildNodes['vUnTrib'].NodeValue := Value;
end;

function TXMLProd.Get_VFrete: WideString;
begin
  Result := ChildNodes['vFrete'].Text;
end;

procedure TXMLProd.Set_VFrete(Value: WideString);
begin
  ChildNodes['vFrete'].NodeValue := Value;
end;

function TXMLProd.Get_VSeg: WideString;
begin
  Result := ChildNodes['vSeg'].Text;
end;

procedure TXMLProd.Set_VSeg(Value: WideString);
begin
  ChildNodes['vSeg'].NodeValue := Value;
end;

function TXMLProd.Get_VDesc: WideString;
begin
  Result := ChildNodes['vDesc'].Text;
end;

procedure TXMLProd.Set_VDesc(Value: WideString);
begin
  ChildNodes['vDesc'].NodeValue := Value;
end;

function TXMLProd.Get_VOutro: WideString;
begin
  Result := ChildNodes['vOutro'].Text;
end;

procedure TXMLProd.Set_VOutro(Value: WideString);
begin
  ChildNodes['vOutro'].NodeValue := Value;
end;

function TXMLProd.Get_IndTot: WideString;
begin
  Result := ChildNodes['indTot'].Text;
end;

procedure TXMLProd.Set_IndTot(Value: WideString);
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

function TXMLProd.Get_XPed: WideString;
begin
  Result := ChildNodes['xPed'].Text;
end;

procedure TXMLProd.Set_XPed(Value: WideString);
begin
  ChildNodes['xPed'].NodeValue := Value;
end;

function TXMLProd.Get_NItemPed: WideString;
begin
  Result := ChildNodes['nItemPed'].Text;
end;

procedure TXMLProd.Set_NItemPed(Value: WideString);
begin
  ChildNodes['nItemPed'].NodeValue := Value;
end;

function TXMLProd.Get_NFCI: WideString;
begin
  Result := ChildNodes['nFCI'].Text;
end;

procedure TXMLProd.Set_NFCI(Value: WideString);
begin
  ChildNodes['nFCI'].NodeValue := Value;
end;

function TXMLProd.Get_VeicProd: IXMLVeicProd;
begin
  Result := ChildNodes['veicProd'] as IXMLVeicProd;
end;

function TXMLProd.Get_Med: IXMLMedList;
begin
  Result := FMed;
end;

function TXMLProd.Get_Arma: IXMLArmaList;
begin
  Result := FArma;
end;

function TXMLProd.Get_Comb: IXMLComb;
begin
  Result := ChildNodes['comb'] as IXMLComb;
end;

function TXMLProd.Get_NRECOPI: WideString;
begin
  Result := ChildNodes['nRECOPI'].Text;
end;

procedure TXMLProd.Set_NRECOPI(Value: WideString);
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

function TXMLDI.Get_NDI: WideString;
begin
  Result := ChildNodes['nDI'].Text;
end;

procedure TXMLDI.Set_NDI(Value: WideString);
begin
  ChildNodes['nDI'].NodeValue := Value;
end;

function TXMLDI.Get_DDI: WideString;
begin
  Result := ChildNodes['dDI'].Text;
end;

procedure TXMLDI.Set_DDI(Value: WideString);
begin
  ChildNodes['dDI'].NodeValue := Value;
end;

function TXMLDI.Get_XLocDesemb: WideString;
begin
  Result := ChildNodes['xLocDesemb'].Text;
end;

procedure TXMLDI.Set_XLocDesemb(Value: WideString);
begin
  ChildNodes['xLocDesemb'].NodeValue := Value;
end;

function TXMLDI.Get_UFDesemb: WideString;
begin
  Result := ChildNodes['UFDesemb'].Text;
end;

procedure TXMLDI.Set_UFDesemb(Value: WideString);
begin
  ChildNodes['UFDesemb'].NodeValue := Value;
end;

function TXMLDI.Get_DDesemb: WideString;
begin
  Result := ChildNodes['dDesemb'].Text;
end;

procedure TXMLDI.Set_DDesemb(Value: WideString);
begin
  ChildNodes['dDesemb'].NodeValue := Value;
end;

function TXMLDI.Get_TpViaTransp: WideString;
begin
  Result := ChildNodes['tpViaTransp'].Text;
end;

procedure TXMLDI.Set_TpViaTransp(Value: WideString);
begin
  ChildNodes['tpViaTransp'].NodeValue := Value;
end;

function TXMLDI.Get_VAFRMM: WideString;
begin
  Result := ChildNodes['vAFRMM'].Text;
end;

procedure TXMLDI.Set_VAFRMM(Value: WideString);
begin
  ChildNodes['vAFRMM'].NodeValue := Value;
end;

function TXMLDI.Get_TpIntermedio: WideString;
begin
  Result := ChildNodes['tpIntermedio'].Text;
end;

procedure TXMLDI.Set_TpIntermedio(Value: WideString);
begin
  ChildNodes['tpIntermedio'].NodeValue := Value;
end;

function TXMLDI.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLDI.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLDI.Get_UFTerceiro: WideString;
begin
  Result := ChildNodes['UFTerceiro'].Text;
end;

procedure TXMLDI.Set_UFTerceiro(Value: WideString);
begin
  ChildNodes['UFTerceiro'].NodeValue := Value;
end;

function TXMLDI.Get_CExportador: WideString;
begin
  Result := ChildNodes['cExportador'].Text;
end;

procedure TXMLDI.Set_CExportador(Value: WideString);
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

function TXMLAdi.Get_NAdicao: WideString;
begin
  Result := ChildNodes['nAdicao'].Text;
end;

procedure TXMLAdi.Set_NAdicao(Value: WideString);
begin
  ChildNodes['nAdicao'].NodeValue := Value;
end;

function TXMLAdi.Get_NSeqAdic: WideString;
begin
  Result := ChildNodes['nSeqAdic'].Text;
end;

procedure TXMLAdi.Set_NSeqAdic(Value: WideString);
begin
  ChildNodes['nSeqAdic'].NodeValue := Value;
end;

function TXMLAdi.Get_CFabricante: WideString;
begin
  Result := ChildNodes['cFabricante'].Text;
end;

procedure TXMLAdi.Set_CFabricante(Value: WideString);
begin
  ChildNodes['cFabricante'].NodeValue := Value;
end;

function TXMLAdi.Get_VDescDI: WideString;
begin
  Result := ChildNodes['vDescDI'].Text;
end;

procedure TXMLAdi.Set_VDescDI(Value: WideString);
begin
  ChildNodes['vDescDI'].NodeValue := Value;
end;

function TXMLAdi.Get_NDraw: WideString;
begin
  Result := ChildNodes['nDraw'].Text;
end;

procedure TXMLAdi.Set_NDraw(Value: WideString);
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

function TXMLDetExport.Get_NDraw: WideString;
begin
  Result := ChildNodes['nDraw'].Text;
end;

procedure TXMLDetExport.Set_NDraw(Value: WideString);
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

function TXMLExportInd.Get_NRE: WideString;
begin
  Result := ChildNodes['nRE'].Text;
end;

procedure TXMLExportInd.Set_NRE(Value: WideString);
begin
  ChildNodes['nRE'].NodeValue := Value;
end;

function TXMLExportInd.Get_ChNFe: WideString;
begin
  Result := ChildNodes['chNFe'].Text;
end;

procedure TXMLExportInd.Set_ChNFe(Value: WideString);
begin
  ChildNodes['chNFe'].NodeValue := Value;
end;

function TXMLExportInd.Get_QExport: WideString;
begin
  Result := ChildNodes['qExport'].Text;
end;

procedure TXMLExportInd.Set_QExport(Value: WideString);
begin
  ChildNodes['qExport'].NodeValue := Value;
end;

{ TXMLVeicProd }

function TXMLVeicProd.Get_TpOp: WideString;
begin
  Result := ChildNodes['tpOp'].Text;
end;

procedure TXMLVeicProd.Set_TpOp(Value: WideString);
begin
  ChildNodes['tpOp'].NodeValue := Value;
end;

function TXMLVeicProd.Get_Chassi: WideString;
begin
  Result := ChildNodes['chassi'].Text;
end;

procedure TXMLVeicProd.Set_Chassi(Value: WideString);
begin
  ChildNodes['chassi'].NodeValue := Value;
end;

function TXMLVeicProd.Get_CCor: WideString;
begin
  Result := ChildNodes['cCor'].Text;
end;

procedure TXMLVeicProd.Set_CCor(Value: WideString);
begin
  ChildNodes['cCor'].NodeValue := Value;
end;

function TXMLVeicProd.Get_XCor: WideString;
begin
  Result := ChildNodes['xCor'].Text;
end;

procedure TXMLVeicProd.Set_XCor(Value: WideString);
begin
  ChildNodes['xCor'].NodeValue := Value;
end;

function TXMLVeicProd.Get_Pot: WideString;
begin
  Result := ChildNodes['pot'].Text;
end;

procedure TXMLVeicProd.Set_Pot(Value: WideString);
begin
  ChildNodes['pot'].NodeValue := Value;
end;

function TXMLVeicProd.Get_Cilin: WideString;
begin
  Result := ChildNodes['cilin'].Text;
end;

procedure TXMLVeicProd.Set_Cilin(Value: WideString);
begin
  ChildNodes['cilin'].NodeValue := Value;
end;

function TXMLVeicProd.Get_PesoL: WideString;
begin
  Result := ChildNodes['pesoL'].Text;
end;

procedure TXMLVeicProd.Set_PesoL(Value: WideString);
begin
  ChildNodes['pesoL'].NodeValue := Value;
end;

function TXMLVeicProd.Get_PesoB: WideString;
begin
  Result := ChildNodes['pesoB'].Text;
end;

procedure TXMLVeicProd.Set_PesoB(Value: WideString);
begin
  ChildNodes['pesoB'].NodeValue := Value;
end;

function TXMLVeicProd.Get_NSerie: WideString;
begin
  Result := ChildNodes['nSerie'].Text;
end;

procedure TXMLVeicProd.Set_NSerie(Value: WideString);
begin
  ChildNodes['nSerie'].NodeValue := Value;
end;

function TXMLVeicProd.Get_TpComb: WideString;
begin
  Result := ChildNodes['tpComb'].Text;
end;

procedure TXMLVeicProd.Set_TpComb(Value: WideString);
begin
  ChildNodes['tpComb'].NodeValue := Value;
end;

function TXMLVeicProd.Get_NMotor: WideString;
begin
  Result := ChildNodes['nMotor'].Text;
end;

procedure TXMLVeicProd.Set_NMotor(Value: WideString);
begin
  ChildNodes['nMotor'].NodeValue := Value;
end;

function TXMLVeicProd.Get_CMT: WideString;
begin
  Result := ChildNodes['CMT'].Text;
end;

procedure TXMLVeicProd.Set_CMT(Value: WideString);
begin
  ChildNodes['CMT'].NodeValue := Value;
end;

function TXMLVeicProd.Get_Dist: WideString;
begin
  Result := ChildNodes['dist'].Text;
end;

procedure TXMLVeicProd.Set_Dist(Value: WideString);
begin
  ChildNodes['dist'].NodeValue := Value;
end;

function TXMLVeicProd.Get_AnoMod: WideString;
begin
  Result := ChildNodes['anoMod'].Text;
end;

procedure TXMLVeicProd.Set_AnoMod(Value: WideString);
begin
  ChildNodes['anoMod'].NodeValue := Value;
end;

function TXMLVeicProd.Get_AnoFab: WideString;
begin
  Result := ChildNodes['anoFab'].Text;
end;

procedure TXMLVeicProd.Set_AnoFab(Value: WideString);
begin
  ChildNodes['anoFab'].NodeValue := Value;
end;

function TXMLVeicProd.Get_TpPint: WideString;
begin
  Result := ChildNodes['tpPint'].Text;
end;

procedure TXMLVeicProd.Set_TpPint(Value: WideString);
begin
  ChildNodes['tpPint'].NodeValue := Value;
end;

function TXMLVeicProd.Get_TpVeic: WideString;
begin
  Result := ChildNodes['tpVeic'].Text;
end;

procedure TXMLVeicProd.Set_TpVeic(Value: WideString);
begin
  ChildNodes['tpVeic'].NodeValue := Value;
end;

function TXMLVeicProd.Get_EspVeic: WideString;
begin
  Result := ChildNodes['espVeic'].Text;
end;

procedure TXMLVeicProd.Set_EspVeic(Value: WideString);
begin
  ChildNodes['espVeic'].NodeValue := Value;
end;

function TXMLVeicProd.Get_VIN: WideString;
begin
  Result := ChildNodes['VIN'].Text;
end;

procedure TXMLVeicProd.Set_VIN(Value: WideString);
begin
  ChildNodes['VIN'].NodeValue := Value;
end;

function TXMLVeicProd.Get_CondVeic: WideString;
begin
  Result := ChildNodes['condVeic'].Text;
end;

procedure TXMLVeicProd.Set_CondVeic(Value: WideString);
begin
  ChildNodes['condVeic'].NodeValue := Value;
end;

function TXMLVeicProd.Get_CMod: WideString;
begin
  Result := ChildNodes['cMod'].Text;
end;

procedure TXMLVeicProd.Set_CMod(Value: WideString);
begin
  ChildNodes['cMod'].NodeValue := Value;
end;

function TXMLVeicProd.Get_CCorDENATRAN: WideString;
begin
  Result := ChildNodes['cCorDENATRAN'].Text;
end;

procedure TXMLVeicProd.Set_CCorDENATRAN(Value: WideString);
begin
  ChildNodes['cCorDENATRAN'].NodeValue := Value;
end;

function TXMLVeicProd.Get_Lota: WideString;
begin
  Result := ChildNodes['lota'].Text;
end;

procedure TXMLVeicProd.Set_Lota(Value: WideString);
begin
  ChildNodes['lota'].NodeValue := Value;
end;

function TXMLVeicProd.Get_TpRest: WideString;
begin
  Result := ChildNodes['tpRest'].Text;
end;

procedure TXMLVeicProd.Set_TpRest(Value: WideString);
begin
  ChildNodes['tpRest'].NodeValue := Value;
end;

{ TXMLMed }

function TXMLMed.Get_NLote: WideString;
begin
  Result := ChildNodes['nLote'].Text;
end;

procedure TXMLMed.Set_NLote(Value: WideString);
begin
  ChildNodes['nLote'].NodeValue := Value;
end;

function TXMLMed.Get_QLote: WideString;
begin
  Result := ChildNodes['qLote'].Text;
end;

procedure TXMLMed.Set_QLote(Value: WideString);
begin
  ChildNodes['qLote'].NodeValue := Value;
end;

function TXMLMed.Get_DFab: WideString;
begin
  Result := ChildNodes['dFab'].Text;
end;

procedure TXMLMed.Set_DFab(Value: WideString);
begin
  ChildNodes['dFab'].NodeValue := Value;
end;

function TXMLMed.Get_DVal: WideString;
begin
  Result := ChildNodes['dVal'].Text;
end;

procedure TXMLMed.Set_DVal(Value: WideString);
begin
  ChildNodes['dVal'].NodeValue := Value;
end;

function TXMLMed.Get_VPMC: WideString;
begin
  Result := ChildNodes['vPMC'].Text;
end;

procedure TXMLMed.Set_VPMC(Value: WideString);
begin
  ChildNodes['vPMC'].NodeValue := Value;
end;

{ TXMLMedList }

function TXMLMedList.Add: IXMLMed;
begin
  Result := AddItem(-1) as IXMLMed;
end;

function TXMLMedList.Insert(const Index: Integer): IXMLMed;
begin
  Result := AddItem(Index) as IXMLMed;
end;

function TXMLMedList.Get_Item(Index: Integer): IXMLMed;
begin
  Result := List[Index] as IXMLMed;
end;

{ TXMLArma }

function TXMLArma.Get_TpArma: WideString;
begin
  Result := ChildNodes['tpArma'].Text;
end;

procedure TXMLArma.Set_TpArma(Value: WideString);
begin
  ChildNodes['tpArma'].NodeValue := Value;
end;

function TXMLArma.Get_NSerie: WideString;
begin
  Result := ChildNodes['nSerie'].Text;
end;

procedure TXMLArma.Set_NSerie(Value: WideString);
begin
  ChildNodes['nSerie'].NodeValue := Value;
end;

function TXMLArma.Get_NCano: WideString;
begin
  Result := ChildNodes['nCano'].Text;
end;

procedure TXMLArma.Set_NCano(Value: WideString);
begin
  ChildNodes['nCano'].NodeValue := Value;
end;

function TXMLArma.Get_Descr: WideString;
begin
  Result := ChildNodes['descr'].Text;
end;

procedure TXMLArma.Set_Descr(Value: WideString);
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
  inherited;
end;

function TXMLComb.Get_CProdANP: WideString;
begin
  Result := ChildNodes['cProdANP'].Text;
end;

procedure TXMLComb.Set_CProdANP(Value: WideString);
begin
  ChildNodes['cProdANP'].NodeValue := Value;
end;

function TXMLComb.Get_PMixGN: WideString;
begin
  Result := ChildNodes['pMixGN'].Text;
end;

procedure TXMLComb.Set_PMixGN(Value: WideString);
begin
  ChildNodes['pMixGN'].NodeValue := Value;
end;

function TXMLComb.Get_CODIF: WideString;
begin
  Result := ChildNodes['CODIF'].Text;
end;

procedure TXMLComb.Set_CODIF(Value: WideString);
begin
  ChildNodes['CODIF'].NodeValue := Value;
end;

function TXMLComb.Get_QTemp: WideString;
begin
  Result := ChildNodes['qTemp'].Text;
end;

procedure TXMLComb.Set_QTemp(Value: WideString);
begin
  ChildNodes['qTemp'].NodeValue := Value;
end;

function TXMLComb.Get_UFCons: WideString;
begin
  Result := ChildNodes['UFCons'].Text;
end;

procedure TXMLComb.Set_UFCons(Value: WideString);
begin
  ChildNodes['UFCons'].NodeValue := Value;
end;

function TXMLComb.Get_CIDE: IXMLCIDE;
begin
  Result := ChildNodes['CIDE'] as IXMLCIDE;
end;

{ TXMLCIDE }

function TXMLCIDE.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLCIDE.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLCIDE.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLCIDE.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLCIDE.Get_VCIDE: WideString;
begin
  Result := ChildNodes['vCIDE'].Text;
end;

procedure TXMLCIDE.Set_VCIDE(Value: WideString);
begin
  ChildNodes['vCIDE'].NodeValue := Value;
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
  inherited;
end;

function TXMLImposto.Get_VTotTrib: WideString;
begin
  Result := ChildNodes['vTotTrib'].Text;
end;

procedure TXMLImposto.Set_VTotTrib(Value: WideString);
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

function TXMLICMS00.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS00.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS00.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS00.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS00.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMS00.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMS00.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMS00.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMS00.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMS00.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMS00.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMS00.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

{ TXMLICMS10 }

function TXMLICMS10.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS10.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS10.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS10.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS10.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMS10.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMS10.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMS10.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMS10.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMS10.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMS10.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMS10.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMS10.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMS10.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMS10.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMS10.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMS10.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMS10.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMS10.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMS10.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMS10.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMS10.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMS10.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMS10.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

{ TXMLICMS20 }

function TXMLICMS20.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS20.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS20.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS20.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS20.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMS20.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMS20.Get_PRedBC: WideString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLICMS20.Set_PRedBC(Value: WideString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLICMS20.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMS20.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMS20.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMS20.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMS20.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMS20.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMS20.Get_VICMSDeson: WideString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLICMS20.Set_VICMSDeson(Value: WideString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLICMS20.Get_MotDesICMS: WideString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLICMS20.Set_MotDesICMS(Value: WideString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLICMS30 }

function TXMLICMS30.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS30.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS30.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS30.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS30.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMS30.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMS30.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMS30.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMS30.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMS30.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMS30.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMS30.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMS30.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMS30.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMS30.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMS30.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMS30.Get_VICMSDeson: WideString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLICMS30.Set_VICMSDeson(Value: WideString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLICMS30.Get_MotDesICMS: WideString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLICMS30.Set_MotDesICMS(Value: WideString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLICMS40 }

function TXMLICMS40.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS40.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS40.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS40.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS40.Get_VICMSDeson: WideString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLICMS40.Set_VICMSDeson(Value: WideString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLICMS40.Get_MotDesICMS: WideString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLICMS40.Set_MotDesICMS(Value: WideString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLICMS51 }

function TXMLICMS51.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS51.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS51.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS51.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS51.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMS51.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMS51.Get_PRedBC: WideString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLICMS51.Set_PRedBC(Value: WideString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLICMS51.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMS51.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMS51.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMS51.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMS51.Get_VICMSOp: WideString;
begin
  Result := ChildNodes['vICMSOp'].Text;
end;

procedure TXMLICMS51.Set_VICMSOp(Value: WideString);
begin
  ChildNodes['vICMSOp'].NodeValue := Value;
end;

function TXMLICMS51.Get_PDif: WideString;
begin
  Result := ChildNodes['pDif'].Text;
end;

procedure TXMLICMS51.Set_PDif(Value: WideString);
begin
  ChildNodes['pDif'].NodeValue := Value;
end;

function TXMLICMS51.Get_VICMSDif: WideString;
begin
  Result := ChildNodes['vICMSDif'].Text;
end;

procedure TXMLICMS51.Set_VICMSDif(Value: WideString);
begin
  ChildNodes['vICMSDif'].NodeValue := Value;
end;

function TXMLICMS51.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMS51.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

{ TXMLICMS60 }

function TXMLICMS60.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS60.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS60.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS60.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS60.Get_VBCSTRet: WideString;
begin
  Result := ChildNodes['vBCSTRet'].Text;
end;

procedure TXMLICMS60.Set_VBCSTRet(Value: WideString);
begin
  ChildNodes['vBCSTRet'].NodeValue := Value;
end;

function TXMLICMS60.Get_VICMSSTRet: WideString;
begin
  Result := ChildNodes['vICMSSTRet'].Text;
end;

procedure TXMLICMS60.Set_VICMSSTRet(Value: WideString);
begin
  ChildNodes['vICMSSTRet'].NodeValue := Value;
end;

{ TXMLICMS70 }

function TXMLICMS70.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS70.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS70.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS70.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS70.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMS70.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMS70.Get_PRedBC: WideString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLICMS70.Set_PRedBC(Value: WideString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLICMS70.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMS70.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMS70.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMS70.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMS70.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMS70.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMS70.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMS70.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMS70.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMS70.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMS70.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMS70.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMS70.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMS70.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMS70.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMS70.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMS70.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMS70.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMS70.Get_VICMSDeson: WideString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLICMS70.Set_VICMSDeson(Value: WideString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLICMS70.Get_MotDesICMS: WideString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLICMS70.Set_MotDesICMS(Value: WideString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLICMS90 }

function TXMLICMS90.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMS90.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMS90.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMS90.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMS90.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMS90.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMS90.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMS90.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMS90.Get_PRedBC: WideString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLICMS90.Set_PRedBC(Value: WideString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLICMS90.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMS90.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMS90.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMS90.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMS90.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMS90.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMS90.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMS90.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMS90.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMS90.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMS90.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMS90.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMS90.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMS90.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMS90.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMS90.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMS90.Get_VICMSDeson: WideString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLICMS90.Set_VICMSDeson(Value: WideString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLICMS90.Get_MotDesICMS: WideString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLICMS90.Set_MotDesICMS(Value: WideString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLICMSPart }

function TXMLICMSPart.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSPart.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSPart.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMSPart.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMSPart.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMSPart.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMSPart.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMSPart.Get_PRedBC: WideString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLICMSPart.Set_PRedBC(Value: WideString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLICMSPart.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMSPart.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMSPart.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMSPart.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMSPart.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMSPart.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMSPart.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMSPart.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMSPart.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMSPart.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMSPart.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMSPart.Get_PBCOp: WideString;
begin
  Result := ChildNodes['pBCOp'].Text;
end;

procedure TXMLICMSPart.Set_PBCOp(Value: WideString);
begin
  ChildNodes['pBCOp'].NodeValue := Value;
end;

function TXMLICMSPart.Get_UFST: WideString;
begin
  Result := ChildNodes['UFST'].Text;
end;

procedure TXMLICMSPart.Set_UFST(Value: WideString);
begin
  ChildNodes['UFST'].NodeValue := Value;
end;

{ TXMLICMSST }

function TXMLICMSST.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSST.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSST.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLICMSST.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLICMSST.Get_VBCSTRet: WideString;
begin
  Result := ChildNodes['vBCSTRet'].Text;
end;

procedure TXMLICMSST.Set_VBCSTRet(Value: WideString);
begin
  ChildNodes['vBCSTRet'].NodeValue := Value;
end;

function TXMLICMSST.Get_VICMSSTRet: WideString;
begin
  Result := ChildNodes['vICMSSTRet'].Text;
end;

procedure TXMLICMSST.Set_VICMSSTRet(Value: WideString);
begin
  ChildNodes['vICMSSTRet'].NodeValue := Value;
end;

function TXMLICMSST.Get_VBCSTDest: WideString;
begin
  Result := ChildNodes['vBCSTDest'].Text;
end;

procedure TXMLICMSST.Set_VBCSTDest(Value: WideString);
begin
  ChildNodes['vBCSTDest'].NodeValue := Value;
end;

function TXMLICMSST.Get_VICMSSTDest: WideString;
begin
  Result := ChildNodes['vICMSSTDest'].Text;
end;

procedure TXMLICMSST.Set_VICMSSTDest(Value: WideString);
begin
  ChildNodes['vICMSSTDest'].NodeValue := Value;
end;

{ TXMLICMSSN101 }

function TXMLICMSSN101.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSSN101.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSSN101.Get_CSOSN: WideString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLICMSSN101.Set_CSOSN(Value: WideString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLICMSSN101.Get_PCredSN: WideString;
begin
  Result := ChildNodes['pCredSN'].Text;
end;

procedure TXMLICMSSN101.Set_PCredSN(Value: WideString);
begin
  ChildNodes['pCredSN'].NodeValue := Value;
end;

function TXMLICMSSN101.Get_VCredICMSSN: WideString;
begin
  Result := ChildNodes['vCredICMSSN'].Text;
end;

procedure TXMLICMSSN101.Set_VCredICMSSN(Value: WideString);
begin
  ChildNodes['vCredICMSSN'].NodeValue := Value;
end;

{ TXMLICMSSN102 }

function TXMLICMSSN102.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSSN102.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSSN102.Get_CSOSN: WideString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLICMSSN102.Set_CSOSN(Value: WideString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

{ TXMLICMSSN201 }

function TXMLICMSSN201.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSSN201.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_CSOSN: WideString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLICMSSN201.Set_CSOSN(Value: WideString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMSSN201.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMSSN201.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMSSN201.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMSSN201.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMSSN201.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMSSN201.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_PCredSN: WideString;
begin
  Result := ChildNodes['pCredSN'].Text;
end;

procedure TXMLICMSSN201.Set_PCredSN(Value: WideString);
begin
  ChildNodes['pCredSN'].NodeValue := Value;
end;

function TXMLICMSSN201.Get_VCredICMSSN: WideString;
begin
  Result := ChildNodes['vCredICMSSN'].Text;
end;

procedure TXMLICMSSN201.Set_VCredICMSSN(Value: WideString);
begin
  ChildNodes['vCredICMSSN'].NodeValue := Value;
end;

{ TXMLICMSSN202 }

function TXMLICMSSN202.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSSN202.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_CSOSN: WideString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLICMSSN202.Set_CSOSN(Value: WideString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMSSN202.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMSSN202.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMSSN202.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMSSN202.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMSSN202.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMSSN202.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMSSN202.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

{ TXMLICMSSN500 }

function TXMLICMSSN500.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSSN500.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSSN500.Get_CSOSN: WideString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLICMSSN500.Set_CSOSN(Value: WideString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLICMSSN500.Get_VBCSTRet: WideString;
begin
  Result := ChildNodes['vBCSTRet'].Text;
end;

procedure TXMLICMSSN500.Set_VBCSTRet(Value: WideString);
begin
  ChildNodes['vBCSTRet'].NodeValue := Value;
end;

function TXMLICMSSN500.Get_VICMSSTRet: WideString;
begin
  Result := ChildNodes['vICMSSTRet'].Text;
end;

procedure TXMLICMSSN500.Set_VICMSSTRet(Value: WideString);
begin
  ChildNodes['vICMSSTRet'].NodeValue := Value;
end;

{ TXMLICMSSN900 }

function TXMLICMSSN900.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLICMSSN900.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_CSOSN: WideString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLICMSSN900.Set_CSOSN(Value: WideString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLICMSSN900.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMSSN900.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_PRedBC: WideString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLICMSSN900.Set_PRedBC(Value: WideString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLICMSSN900.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMSSN900.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLICMSSN900.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLICMSSN900.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLICMSSN900.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMSSN900.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLICMSSN900.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLICMSSN900.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_PCredSN: WideString;
begin
  Result := ChildNodes['pCredSN'].Text;
end;

procedure TXMLICMSSN900.Set_PCredSN(Value: WideString);
begin
  ChildNodes['pCredSN'].NodeValue := Value;
end;

function TXMLICMSSN900.Get_VCredICMSSN: WideString;
begin
  Result := ChildNodes['vCredICMSSN'].Text;
end;

procedure TXMLICMSSN900.Set_VCredICMSSN(Value: WideString);
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

function TXMLTIpi.Get_ClEnq: WideString;
begin
  Result := ChildNodes['clEnq'].Text;
end;

procedure TXMLTIpi.Set_ClEnq(Value: WideString);
begin
  ChildNodes['clEnq'].NodeValue := Value;
end;

function TXMLTIpi.Get_CNPJProd: WideString;
begin
  Result := ChildNodes['CNPJProd'].Text;
end;

procedure TXMLTIpi.Set_CNPJProd(Value: WideString);
begin
  ChildNodes['CNPJProd'].NodeValue := Value;
end;

function TXMLTIpi.Get_CSelo: WideString;
begin
  Result := ChildNodes['cSelo'].Text;
end;

procedure TXMLTIpi.Set_CSelo(Value: WideString);
begin
  ChildNodes['cSelo'].NodeValue := Value;
end;

function TXMLTIpi.Get_QSelo: WideString;
begin
  Result := ChildNodes['qSelo'].Text;
end;

procedure TXMLTIpi.Set_QSelo(Value: WideString);
begin
  ChildNodes['qSelo'].NodeValue := Value;
end;

function TXMLTIpi.Get_CEnq: WideString;
begin
  Result := ChildNodes['cEnq'].Text;
end;

procedure TXMLTIpi.Set_CEnq(Value: WideString);
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

function TXMLIPITrib.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLIPITrib.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLIPITrib.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLIPITrib.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLIPITrib.Get_PIPI: WideString;
begin
  Result := ChildNodes['pIPI'].Text;
end;

procedure TXMLIPITrib.Set_PIPI(Value: WideString);
begin
  ChildNodes['pIPI'].NodeValue := Value;
end;

function TXMLIPITrib.Get_QUnid: WideString;
begin
  Result := ChildNodes['qUnid'].Text;
end;

procedure TXMLIPITrib.Set_QUnid(Value: WideString);
begin
  ChildNodes['qUnid'].NodeValue := Value;
end;

function TXMLIPITrib.Get_VUnid: WideString;
begin
  Result := ChildNodes['vUnid'].Text;
end;

procedure TXMLIPITrib.Set_VUnid(Value: WideString);
begin
  ChildNodes['vUnid'].NodeValue := Value;
end;

function TXMLIPITrib.Get_VIPI: WideString;
begin
  Result := ChildNodes['vIPI'].Text;
end;

procedure TXMLIPITrib.Set_VIPI(Value: WideString);
begin
  ChildNodes['vIPI'].NodeValue := Value;
end;

{ TXMLIPINT }

function TXMLIPINT.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLIPINT.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

{ TXMLII }

function TXMLII.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLII.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLII.Get_VDespAdu: WideString;
begin
  Result := ChildNodes['vDespAdu'].Text;
end;

procedure TXMLII.Set_VDespAdu(Value: WideString);
begin
  ChildNodes['vDespAdu'].NodeValue := Value;
end;

function TXMLII.Get_VII: WideString;
begin
  Result := ChildNodes['vII'].Text;
end;

procedure TXMLII.Set_VII(Value: WideString);
begin
  ChildNodes['vII'].NodeValue := Value;
end;

function TXMLII.Get_VIOF: WideString;
begin
  Result := ChildNodes['vIOF'].Text;
end;

procedure TXMLII.Set_VIOF(Value: WideString);
begin
  ChildNodes['vIOF'].NodeValue := Value;
end;

{ TXMLISSQN }

function TXMLISSQN.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLISSQN.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLISSQN.Get_VAliq: WideString;
begin
  Result := ChildNodes['vAliq'].Text;
end;

procedure TXMLISSQN.Set_VAliq(Value: WideString);
begin
  ChildNodes['vAliq'].NodeValue := Value;
end;

function TXMLISSQN.Get_VISSQN: WideString;
begin
  Result := ChildNodes['vISSQN'].Text;
end;

procedure TXMLISSQN.Set_VISSQN(Value: WideString);
begin
  ChildNodes['vISSQN'].NodeValue := Value;
end;

function TXMLISSQN.Get_CMunFG: WideString;
begin
  Result := ChildNodes['cMunFG'].Text;
end;

procedure TXMLISSQN.Set_CMunFG(Value: WideString);
begin
  ChildNodes['cMunFG'].NodeValue := Value;
end;

function TXMLISSQN.Get_CListServ: WideString;
begin
  Result := ChildNodes['cListServ'].Text;
end;

procedure TXMLISSQN.Set_CListServ(Value: WideString);
begin
  ChildNodes['cListServ'].NodeValue := Value;
end;

function TXMLISSQN.Get_VDeducao: WideString;
begin
  Result := ChildNodes['vDeducao'].Text;
end;

procedure TXMLISSQN.Set_VDeducao(Value: WideString);
begin
  ChildNodes['vDeducao'].NodeValue := Value;
end;

function TXMLISSQN.Get_VOutro: WideString;
begin
  Result := ChildNodes['vOutro'].Text;
end;

procedure TXMLISSQN.Set_VOutro(Value: WideString);
begin
  ChildNodes['vOutro'].NodeValue := Value;
end;

function TXMLISSQN.Get_VDescIncond: WideString;
begin
  Result := ChildNodes['vDescIncond'].Text;
end;

procedure TXMLISSQN.Set_VDescIncond(Value: WideString);
begin
  ChildNodes['vDescIncond'].NodeValue := Value;
end;

function TXMLISSQN.Get_VDescCond: WideString;
begin
  Result := ChildNodes['vDescCond'].Text;
end;

procedure TXMLISSQN.Set_VDescCond(Value: WideString);
begin
  ChildNodes['vDescCond'].NodeValue := Value;
end;

function TXMLISSQN.Get_VISSRet: WideString;
begin
  Result := ChildNodes['vISSRet'].Text;
end;

procedure TXMLISSQN.Set_VISSRet(Value: WideString);
begin
  ChildNodes['vISSRet'].NodeValue := Value;
end;

function TXMLISSQN.Get_IndISS: WideString;
begin
  Result := ChildNodes['indISS'].Text;
end;

procedure TXMLISSQN.Set_IndISS(Value: WideString);
begin
  ChildNodes['indISS'].NodeValue := Value;
end;

function TXMLISSQN.Get_CServico: WideString;
begin
  Result := ChildNodes['cServico'].Text;
end;

procedure TXMLISSQN.Set_CServico(Value: WideString);
begin
  ChildNodes['cServico'].NodeValue := Value;
end;

function TXMLISSQN.Get_CMun: WideString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLISSQN.Set_CMun(Value: WideString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLISSQN.Get_CPais: WideString;
begin
  Result := ChildNodes['cPais'].Text;
end;

procedure TXMLISSQN.Set_CPais(Value: WideString);
begin
  ChildNodes['cPais'].NodeValue := Value;
end;

function TXMLISSQN.Get_NProcesso: WideString;
begin
  Result := ChildNodes['nProcesso'].Text;
end;

procedure TXMLISSQN.Set_NProcesso(Value: WideString);
begin
  ChildNodes['nProcesso'].NodeValue := Value;
end;

function TXMLISSQN.Get_IndIncentivo: WideString;
begin
  Result := ChildNodes['indIncentivo'].Text;
end;

procedure TXMLISSQN.Set_IndIncentivo(Value: WideString);
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

function TXMLPISAliq.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLPISAliq.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLPISAliq.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLPISAliq.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLPISAliq.Get_PPIS: WideString;
begin
  Result := ChildNodes['pPIS'].Text;
end;

procedure TXMLPISAliq.Set_PPIS(Value: WideString);
begin
  ChildNodes['pPIS'].NodeValue := Value;
end;

function TXMLPISAliq.Get_VPIS: WideString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLPISAliq.Set_VPIS(Value: WideString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

{ TXMLPISQtde }

function TXMLPISQtde.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLPISQtde.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLPISQtde.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLPISQtde.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLPISQtde.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLPISQtde.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLPISQtde.Get_VPIS: WideString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLPISQtde.Set_VPIS(Value: WideString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

{ TXMLPISNT }

function TXMLPISNT.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLPISNT.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

{ TXMLPISOutr }

function TXMLPISOutr.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLPISOutr.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLPISOutr.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLPISOutr.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLPISOutr.Get_PPIS: WideString;
begin
  Result := ChildNodes['pPIS'].Text;
end;

procedure TXMLPISOutr.Set_PPIS(Value: WideString);
begin
  ChildNodes['pPIS'].NodeValue := Value;
end;

function TXMLPISOutr.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLPISOutr.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLPISOutr.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLPISOutr.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLPISOutr.Get_VPIS: WideString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLPISOutr.Set_VPIS(Value: WideString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

{ TXMLPISST }

function TXMLPISST.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLPISST.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLPISST.Get_PPIS: WideString;
begin
  Result := ChildNodes['pPIS'].Text;
end;

procedure TXMLPISST.Set_PPIS(Value: WideString);
begin
  ChildNodes['pPIS'].NodeValue := Value;
end;

function TXMLPISST.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLPISST.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLPISST.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLPISST.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLPISST.Get_VPIS: WideString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLPISST.Set_VPIS(Value: WideString);
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

function TXMLCOFINSAliq.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLCOFINSAliq.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLCOFINSAliq.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLCOFINSAliq.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLCOFINSAliq.Get_PCOFINS: WideString;
begin
  Result := ChildNodes['pCOFINS'].Text;
end;

procedure TXMLCOFINSAliq.Set_PCOFINS(Value: WideString);
begin
  ChildNodes['pCOFINS'].NodeValue := Value;
end;

function TXMLCOFINSAliq.Get_VCOFINS: WideString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLCOFINSAliq.Set_VCOFINS(Value: WideString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

{ TXMLCOFINSQtde }

function TXMLCOFINSQtde.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLCOFINSQtde.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLCOFINSQtde.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLCOFINSQtde.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLCOFINSQtde.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLCOFINSQtde.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLCOFINSQtde.Get_VCOFINS: WideString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLCOFINSQtde.Set_VCOFINS(Value: WideString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

{ TXMLCOFINSNT }

function TXMLCOFINSNT.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLCOFINSNT.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

{ TXMLCOFINSOutr }

function TXMLCOFINSOutr.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLCOFINSOutr.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLCOFINSOutr.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLCOFINSOutr.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLCOFINSOutr.Get_PCOFINS: WideString;
begin
  Result := ChildNodes['pCOFINS'].Text;
end;

procedure TXMLCOFINSOutr.Set_PCOFINS(Value: WideString);
begin
  ChildNodes['pCOFINS'].NodeValue := Value;
end;

function TXMLCOFINSOutr.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLCOFINSOutr.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLCOFINSOutr.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLCOFINSOutr.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLCOFINSOutr.Get_VCOFINS: WideString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLCOFINSOutr.Set_VCOFINS(Value: WideString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

{ TXMLCOFINSST }

function TXMLCOFINSST.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLCOFINSST.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLCOFINSST.Get_PCOFINS: WideString;
begin
  Result := ChildNodes['pCOFINS'].Text;
end;

procedure TXMLCOFINSST.Set_PCOFINS(Value: WideString);
begin
  ChildNodes['pCOFINS'].NodeValue := Value;
end;

function TXMLCOFINSST.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLCOFINSST.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLCOFINSST.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLCOFINSST.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLCOFINSST.Get_VCOFINS: WideString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLCOFINSST.Set_VCOFINS(Value: WideString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

{ TXMLImpostoDevol }

procedure TXMLImpostoDevol.AfterConstruction;
begin
  RegisterChildNode('IPI', TXMLIPI);
  inherited;
end;

function TXMLImpostoDevol.Get_PDevol: WideString;
begin
  Result := ChildNodes['pDevol'].Text;
end;

procedure TXMLImpostoDevol.Set_PDevol(Value: WideString);
begin
  ChildNodes['pDevol'].NodeValue := Value;
end;

function TXMLImpostoDevol.Get_IPI: IXMLIPI;
begin
  Result := ChildNodes['IPI'] as IXMLIPI;
end;

{ TXMLIPI }

function TXMLIPI.Get_VIPIDevol: WideString;
begin
  Result := ChildNodes['vIPIDevol'].Text;
end;

procedure TXMLIPI.Set_VIPIDevol(Value: WideString);
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

function TXMLICMSTot.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLICMSTot.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLICMSTot.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VICMSDeson: WideString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLICMSTot.Set_VICMSDeson(Value: WideString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLICMSTot.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VST: WideString;
begin
  Result := ChildNodes['vST'].Text;
end;

procedure TXMLICMSTot.Set_VST(Value: WideString);
begin
  ChildNodes['vST'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VProd: WideString;
begin
  Result := ChildNodes['vProd'].Text;
end;

procedure TXMLICMSTot.Set_VProd(Value: WideString);
begin
  ChildNodes['vProd'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VFrete: WideString;
begin
  Result := ChildNodes['vFrete'].Text;
end;

procedure TXMLICMSTot.Set_VFrete(Value: WideString);
begin
  ChildNodes['vFrete'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VSeg: WideString;
begin
  Result := ChildNodes['vSeg'].Text;
end;

procedure TXMLICMSTot.Set_VSeg(Value: WideString);
begin
  ChildNodes['vSeg'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VDesc: WideString;
begin
  Result := ChildNodes['vDesc'].Text;
end;

procedure TXMLICMSTot.Set_VDesc(Value: WideString);
begin
  ChildNodes['vDesc'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VII: WideString;
begin
  Result := ChildNodes['vII'].Text;
end;

procedure TXMLICMSTot.Set_VII(Value: WideString);
begin
  ChildNodes['vII'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VIPI: WideString;
begin
  Result := ChildNodes['vIPI'].Text;
end;

procedure TXMLICMSTot.Set_VIPI(Value: WideString);
begin
  ChildNodes['vIPI'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VPIS: WideString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLICMSTot.Set_VPIS(Value: WideString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VCOFINS: WideString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLICMSTot.Set_VCOFINS(Value: WideString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VOutro: WideString;
begin
  Result := ChildNodes['vOutro'].Text;
end;

procedure TXMLICMSTot.Set_VOutro(Value: WideString);
begin
  ChildNodes['vOutro'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VNF: WideString;
begin
  Result := ChildNodes['vNF'].Text;
end;

procedure TXMLICMSTot.Set_VNF(Value: WideString);
begin
  ChildNodes['vNF'].NodeValue := Value;
end;

function TXMLICMSTot.Get_VTotTrib: WideString;
begin
  Result := ChildNodes['vTotTrib'].Text;
end;

procedure TXMLICMSTot.Set_VTotTrib(Value: WideString);
begin
  ChildNodes['vTotTrib'].NodeValue := Value;
end;

{ TXMLISSQNtot }

function TXMLISSQNtot.Get_VServ: WideString;
begin
  Result := ChildNodes['vServ'].Text;
end;

procedure TXMLISSQNtot.Set_VServ(Value: WideString);
begin
  ChildNodes['vServ'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLISSQNtot.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VISS: WideString;
begin
  Result := ChildNodes['vISS'].Text;
end;

procedure TXMLISSQNtot.Set_VISS(Value: WideString);
begin
  ChildNodes['vISS'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VPIS: WideString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLISSQNtot.Set_VPIS(Value: WideString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VCOFINS: WideString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLISSQNtot.Set_VCOFINS(Value: WideString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_DCompet: WideString;
begin
  Result := ChildNodes['dCompet'].Text;
end;

procedure TXMLISSQNtot.Set_DCompet(Value: WideString);
begin
  ChildNodes['dCompet'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VDeducao: WideString;
begin
  Result := ChildNodes['vDeducao'].Text;
end;

procedure TXMLISSQNtot.Set_VDeducao(Value: WideString);
begin
  ChildNodes['vDeducao'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VOutro: WideString;
begin
  Result := ChildNodes['vOutro'].Text;
end;

procedure TXMLISSQNtot.Set_VOutro(Value: WideString);
begin
  ChildNodes['vOutro'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VDescIncond: WideString;
begin
  Result := ChildNodes['vDescIncond'].Text;
end;

procedure TXMLISSQNtot.Set_VDescIncond(Value: WideString);
begin
  ChildNodes['vDescIncond'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VDescCond: WideString;
begin
  Result := ChildNodes['vDescCond'].Text;
end;

procedure TXMLISSQNtot.Set_VDescCond(Value: WideString);
begin
  ChildNodes['vDescCond'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_VISSRet: WideString;
begin
  Result := ChildNodes['vISSRet'].Text;
end;

procedure TXMLISSQNtot.Set_VISSRet(Value: WideString);
begin
  ChildNodes['vISSRet'].NodeValue := Value;
end;

function TXMLISSQNtot.Get_CRegTrib: WideString;
begin
  Result := ChildNodes['cRegTrib'].Text;
end;

procedure TXMLISSQNtot.Set_CRegTrib(Value: WideString);
begin
  ChildNodes['cRegTrib'].NodeValue := Value;
end;

{ TXMLRetTrib }

function TXMLRetTrib.Get_VRetPIS: WideString;
begin
  Result := ChildNodes['vRetPIS'].Text;
end;

procedure TXMLRetTrib.Set_VRetPIS(Value: WideString);
begin
  ChildNodes['vRetPIS'].NodeValue := Value;
end;

function TXMLRetTrib.Get_VRetCOFINS: WideString;
begin
  Result := ChildNodes['vRetCOFINS'].Text;
end;

procedure TXMLRetTrib.Set_VRetCOFINS(Value: WideString);
begin
  ChildNodes['vRetCOFINS'].NodeValue := Value;
end;

function TXMLRetTrib.Get_VRetCSLL: WideString;
begin
  Result := ChildNodes['vRetCSLL'].Text;
end;

procedure TXMLRetTrib.Set_VRetCSLL(Value: WideString);
begin
  ChildNodes['vRetCSLL'].NodeValue := Value;
end;

function TXMLRetTrib.Get_VBCIRRF: WideString;
begin
  Result := ChildNodes['vBCIRRF'].Text;
end;

procedure TXMLRetTrib.Set_VBCIRRF(Value: WideString);
begin
  ChildNodes['vBCIRRF'].NodeValue := Value;
end;

function TXMLRetTrib.Get_VIRRF: WideString;
begin
  Result := ChildNodes['vIRRF'].Text;
end;

procedure TXMLRetTrib.Set_VIRRF(Value: WideString);
begin
  ChildNodes['vIRRF'].NodeValue := Value;
end;

function TXMLRetTrib.Get_VBCRetPrev: WideString;
begin
  Result := ChildNodes['vBCRetPrev'].Text;
end;

procedure TXMLRetTrib.Set_VBCRetPrev(Value: WideString);
begin
  ChildNodes['vBCRetPrev'].NodeValue := Value;
end;

function TXMLRetTrib.Get_VRetPrev: WideString;
begin
  Result := ChildNodes['vRetPrev'].Text;
end;

procedure TXMLRetTrib.Set_VRetPrev(Value: WideString);
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

function TXMLTransp.Get_ModFrete: WideString;
begin
  Result := ChildNodes['modFrete'].Text;
end;

procedure TXMLTransp.Set_ModFrete(Value: WideString);
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

function TXMLTransp.Get_Vagao: WideString;
begin
  Result := ChildNodes['vagao'].Text;
end;

procedure TXMLTransp.Set_Vagao(Value: WideString);
begin
  ChildNodes['vagao'].NodeValue := Value;
end;

function TXMLTransp.Get_Balsa: WideString;
begin
  Result := ChildNodes['balsa'].Text;
end;

procedure TXMLTransp.Set_Balsa(Value: WideString);
begin
  ChildNodes['balsa'].NodeValue := Value;
end;

function TXMLTransp.Get_Vol: IXMLVolList;
begin
  Result := FVol;
end;

{ TXMLTransporta }

function TXMLTransporta.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTransporta.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTransporta.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLTransporta.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLTransporta.Get_XNome: WideString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLTransporta.Set_XNome(Value: WideString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLTransporta.Get_IE: WideString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLTransporta.Set_IE(Value: WideString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLTransporta.Get_XEnder: WideString;
begin
  Result := ChildNodes['xEnder'].Text;
end;

procedure TXMLTransporta.Set_XEnder(Value: WideString);
begin
  ChildNodes['xEnder'].NodeValue := Value;
end;

function TXMLTransporta.Get_XMun: WideString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTransporta.Set_XMun(Value: WideString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTransporta.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTransporta.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

{ TXMLRetTransp }

function TXMLRetTransp.Get_VServ: WideString;
begin
  Result := ChildNodes['vServ'].Text;
end;

procedure TXMLRetTransp.Set_VServ(Value: WideString);
begin
  ChildNodes['vServ'].NodeValue := Value;
end;

function TXMLRetTransp.Get_VBCRet: WideString;
begin
  Result := ChildNodes['vBCRet'].Text;
end;

procedure TXMLRetTransp.Set_VBCRet(Value: WideString);
begin
  ChildNodes['vBCRet'].NodeValue := Value;
end;

function TXMLRetTransp.Get_PICMSRet: WideString;
begin
  Result := ChildNodes['pICMSRet'].Text;
end;

procedure TXMLRetTransp.Set_PICMSRet(Value: WideString);
begin
  ChildNodes['pICMSRet'].NodeValue := Value;
end;

function TXMLRetTransp.Get_VICMSRet: WideString;
begin
  Result := ChildNodes['vICMSRet'].Text;
end;

procedure TXMLRetTransp.Set_VICMSRet(Value: WideString);
begin
  ChildNodes['vICMSRet'].NodeValue := Value;
end;

function TXMLRetTransp.Get_CFOP: WideString;
begin
  Result := ChildNodes['CFOP'].Text;
end;

procedure TXMLRetTransp.Set_CFOP(Value: WideString);
begin
  ChildNodes['CFOP'].NodeValue := Value;
end;

function TXMLRetTransp.Get_CMunFG: WideString;
begin
  Result := ChildNodes['cMunFG'].Text;
end;

procedure TXMLRetTransp.Set_CMunFG(Value: WideString);
begin
  ChildNodes['cMunFG'].NodeValue := Value;
end;

{ TXMLTVeiculo }

function TXMLTVeiculo.Get_Placa: WideString;
begin
  Result := ChildNodes['placa'].Text;
end;

procedure TXMLTVeiculo.Set_Placa(Value: WideString);
begin
  ChildNodes['placa'].NodeValue := Value;
end;

function TXMLTVeiculo.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTVeiculo.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLTVeiculo.Get_RNTC: WideString;
begin
  Result := ChildNodes['RNTC'].Text;
end;

procedure TXMLTVeiculo.Set_RNTC(Value: WideString);
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

function TXMLVol.Get_QVol: WideString;
begin
  Result := ChildNodes['qVol'].Text;
end;

procedure TXMLVol.Set_QVol(Value: WideString);
begin
  ChildNodes['qVol'].NodeValue := Value;
end;

function TXMLVol.Get_Esp: WideString;
begin
  Result := ChildNodes['esp'].Text;
end;

procedure TXMLVol.Set_Esp(Value: WideString);
begin
  ChildNodes['esp'].NodeValue := Value;
end;

function TXMLVol.Get_Marca: WideString;
begin
  Result := ChildNodes['marca'].Text;
end;

procedure TXMLVol.Set_Marca(Value: WideString);
begin
  ChildNodes['marca'].NodeValue := Value;
end;

function TXMLVol.Get_NVol: WideString;
begin
  Result := ChildNodes['nVol'].Text;
end;

procedure TXMLVol.Set_NVol(Value: WideString);
begin
  ChildNodes['nVol'].NodeValue := Value;
end;

function TXMLVol.Get_PesoL: WideString;
begin
  Result := ChildNodes['pesoL'].Text;
end;

procedure TXMLVol.Set_PesoL(Value: WideString);
begin
  ChildNodes['pesoL'].NodeValue := Value;
end;

function TXMLVol.Get_PesoB: WideString;
begin
  Result := ChildNodes['pesoB'].Text;
end;

procedure TXMLVol.Set_PesoB(Value: WideString);
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

function TXMLLacres.Get_NLacre: WideString;
begin
  Result := ChildNodes['nLacre'].Text;
end;

procedure TXMLLacres.Set_NLacre(Value: WideString);
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

function TXMLFat.Get_NFat: WideString;
begin
  Result := ChildNodes['nFat'].Text;
end;

procedure TXMLFat.Set_NFat(Value: WideString);
begin
  ChildNodes['nFat'].NodeValue := Value;
end;

function TXMLFat.Get_VOrig: WideString;
begin
  Result := ChildNodes['vOrig'].Text;
end;

procedure TXMLFat.Set_VOrig(Value: WideString);
begin
  ChildNodes['vOrig'].NodeValue := Value;
end;

function TXMLFat.Get_VDesc: WideString;
begin
  Result := ChildNodes['vDesc'].Text;
end;

procedure TXMLFat.Set_VDesc(Value: WideString);
begin
  ChildNodes['vDesc'].NodeValue := Value;
end;

function TXMLFat.Get_VLiq: WideString;
begin
  Result := ChildNodes['vLiq'].Text;
end;

procedure TXMLFat.Set_VLiq(Value: WideString);
begin
  ChildNodes['vLiq'].NodeValue := Value;
end;

{ TXMLDup }

function TXMLDup.Get_NDup: WideString;
begin
  Result := ChildNodes['nDup'].Text;
end;

procedure TXMLDup.Set_NDup(Value: WideString);
begin
  ChildNodes['nDup'].NodeValue := Value;
end;

function TXMLDup.Get_DVenc: WideString;
begin
  Result := ChildNodes['dVenc'].Text;
end;

procedure TXMLDup.Set_DVenc(Value: WideString);
begin
  ChildNodes['dVenc'].NodeValue := Value;
end;

function TXMLDup.Get_VDup: WideString;
begin
  Result := ChildNodes['vDup'].Text;
end;

procedure TXMLDup.Set_VDup(Value: WideString);
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
  RegisterChildNode('card', TXMLCard);
  inherited;
end;

function TXMLPag.Get_TPag: WideString;
begin
  Result := ChildNodes['tPag'].Text;
end;

procedure TXMLPag.Set_TPag(Value: WideString);
begin
  ChildNodes['tPag'].NodeValue := Value;
end;

function TXMLPag.Get_VPag: WideString;
begin
  Result := ChildNodes['vPag'].Text;
end;

procedure TXMLPag.Set_VPag(Value: WideString);
begin
  ChildNodes['vPag'].NodeValue := Value;
end;

function TXMLPag.Get_Card: IXMLCard;
begin
  Result := ChildNodes['card'] as IXMLCard;
end;

{ TXMLPagList }

function TXMLPagList.Add: IXMLPag;
begin
  Result := AddItem(-1) as IXMLPag;
end;

function TXMLPagList.Insert(const Index: Integer): IXMLPag;
begin
  Result := AddItem(Index) as IXMLPag;
end;

function TXMLPagList.Get_Item(Index: Integer): IXMLPag;
begin
  Result := List[Index] as IXMLPag;
end;

{ TXMLCard }

function TXMLCard.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLCard.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLCard.Get_TBand: WideString;
begin
  Result := ChildNodes['tBand'].Text;
end;

procedure TXMLCard.Set_TBand(Value: WideString);
begin
  ChildNodes['tBand'].NodeValue := Value;
end;

function TXMLCard.Get_CAut: WideString;
begin
  Result := ChildNodes['cAut'].Text;
end;

procedure TXMLCard.Set_CAut(Value: WideString);
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

function TXMLInfAdic.Get_InfAdFisco: WideString;
begin
  Result := ChildNodes['infAdFisco'].Text;
end;

procedure TXMLInfAdic.Set_InfAdFisco(Value: WideString);
begin
  ChildNodes['infAdFisco'].NodeValue := Value;
end;

function TXMLInfAdic.Get_InfCpl: WideString;
begin
  Result := ChildNodes['infCpl'].Text;
end;

procedure TXMLInfAdic.Set_InfCpl(Value: WideString);
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

function TXMLObsCont.Get_XCampo: WideString;
begin
  Result := AttributeNodes['xCampo'].Text;
end;

procedure TXMLObsCont.Set_XCampo(Value: WideString);
begin
  SetAttribute('xCampo', Value);
end;

function TXMLObsCont.Get_XTexto: WideString;
begin
  Result := ChildNodes['xTexto'].Text;
end;

procedure TXMLObsCont.Set_XTexto(Value: WideString);
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

function TXMLObsFisco.Get_XCampo: WideString;
begin
  Result := AttributeNodes['xCampo'].Text;
end;

procedure TXMLObsFisco.Set_XCampo(Value: WideString);
begin
  SetAttribute('xCampo', Value);
end;

function TXMLObsFisco.Get_XTexto: WideString;
begin
  Result := ChildNodes['xTexto'].Text;
end;

procedure TXMLObsFisco.Set_XTexto(Value: WideString);
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

function TXMLProcRef.Get_NProc: WideString;
begin
  Result := ChildNodes['nProc'].Text;
end;

procedure TXMLProcRef.Set_NProc(Value: WideString);
begin
  ChildNodes['nProc'].NodeValue := Value;
end;

function TXMLProcRef.Get_IndProc: WideString;
begin
  Result := ChildNodes['indProc'].Text;
end;

procedure TXMLProcRef.Set_IndProc(Value: WideString);
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

function TXMLExporta.Get_UFSaidaPais: WideString;
begin
  Result := ChildNodes['UFSaidaPais'].Text;
end;

procedure TXMLExporta.Set_UFSaidaPais(Value: WideString);
begin
  ChildNodes['UFSaidaPais'].NodeValue := Value;
end;

function TXMLExporta.Get_XLocExporta: WideString;
begin
  Result := ChildNodes['xLocExporta'].Text;
end;

procedure TXMLExporta.Set_XLocExporta(Value: WideString);
begin
  ChildNodes['xLocExporta'].NodeValue := Value;
end;

function TXMLExporta.Get_XLocDespacho: WideString;
begin
  Result := ChildNodes['xLocDespacho'].Text;
end;

procedure TXMLExporta.Set_XLocDespacho(Value: WideString);
begin
  ChildNodes['xLocDespacho'].NodeValue := Value;
end;

{ TXMLCompra }

function TXMLCompra.Get_XNEmp: WideString;
begin
  Result := ChildNodes['xNEmp'].Text;
end;

procedure TXMLCompra.Set_XNEmp(Value: WideString);
begin
  ChildNodes['xNEmp'].NodeValue := Value;
end;

function TXMLCompra.Get_XPed: WideString;
begin
  Result := ChildNodes['xPed'].Text;
end;

procedure TXMLCompra.Set_XPed(Value: WideString);
begin
  ChildNodes['xPed'].NodeValue := Value;
end;

function TXMLCompra.Get_XCont: WideString;
begin
  Result := ChildNodes['xCont'].Text;
end;

procedure TXMLCompra.Set_XCont(Value: WideString);
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

function TXMLCana.Get_Safra: WideString;
begin
  Result := ChildNodes['safra'].Text;
end;

procedure TXMLCana.Set_Safra(Value: WideString);
begin
  ChildNodes['safra'].NodeValue := Value;
end;

function TXMLCana.Get_Ref: WideString;
begin
  Result := ChildNodes['ref'].Text;
end;

procedure TXMLCana.Set_Ref(Value: WideString);
begin
  ChildNodes['ref'].NodeValue := Value;
end;

function TXMLCana.Get_ForDia: IXMLForDiaList;
begin
  Result := FForDia;
end;

function TXMLCana.Get_QTotMes: WideString;
begin
  Result := ChildNodes['qTotMes'].Text;
end;

procedure TXMLCana.Set_QTotMes(Value: WideString);
begin
  ChildNodes['qTotMes'].NodeValue := Value;
end;

function TXMLCana.Get_QTotAnt: WideString;
begin
  Result := ChildNodes['qTotAnt'].Text;
end;

procedure TXMLCana.Set_QTotAnt(Value: WideString);
begin
  ChildNodes['qTotAnt'].NodeValue := Value;
end;

function TXMLCana.Get_QTotGer: WideString;
begin
  Result := ChildNodes['qTotGer'].Text;
end;

procedure TXMLCana.Set_QTotGer(Value: WideString);
begin
  ChildNodes['qTotGer'].NodeValue := Value;
end;

function TXMLCana.Get_Deduc: IXMLDeducList;
begin
  Result := FDeduc;
end;

function TXMLCana.Get_VFor: WideString;
begin
  Result := ChildNodes['vFor'].Text;
end;

procedure TXMLCana.Set_VFor(Value: WideString);
begin
  ChildNodes['vFor'].NodeValue := Value;
end;

function TXMLCana.Get_VTotDed: WideString;
begin
  Result := ChildNodes['vTotDed'].Text;
end;

procedure TXMLCana.Set_VTotDed(Value: WideString);
begin
  ChildNodes['vTotDed'].NodeValue := Value;
end;

function TXMLCana.Get_VLiqFor: WideString;
begin
  Result := ChildNodes['vLiqFor'].Text;
end;

procedure TXMLCana.Set_VLiqFor(Value: WideString);
begin
  ChildNodes['vLiqFor'].NodeValue := Value;
end;

{ TXMLForDia }

function TXMLForDia.Get_Dia: WideString;
begin
  Result := AttributeNodes['dia'].Text;
end;

procedure TXMLForDia.Set_Dia(Value: WideString);
begin
  SetAttribute('dia', Value);
end;

function TXMLForDia.Get_Qtde: WideString;
begin
  Result := ChildNodes['qtde'].Text;
end;

procedure TXMLForDia.Set_Qtde(Value: WideString);
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

function TXMLDeduc.Get_XDed: WideString;
begin
  Result := ChildNodes['xDed'].Text;
end;

procedure TXMLDeduc.Set_XDed(Value: WideString);
begin
  ChildNodes['xDed'].NodeValue := Value;
end;

function TXMLDeduc.Get_VDed: WideString;
begin
  Result := ChildNodes['vDed'].Text;
end;

procedure TXMLDeduc.Set_VDed(Value: WideString);
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

{ TXMLSignatureType_ds }

procedure TXMLSignatureType_ds.AfterConstruction;
begin
  RegisterChildNode('SignedInfo', TXMLSignedInfoType_ds);
  RegisterChildNode('SignatureValue', TXMLSignatureValueType_ds);
  RegisterChildNode('KeyInfo', TXMLKeyInfoType_ds);
  inherited;
end;

function TXMLSignatureType_ds.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignatureType_ds.Set_Id(Value: WideString);
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

function TXMLSignedInfoType_ds.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignedInfoType_ds.Set_Id(Value: WideString);
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

function TXMLCanonicalizationMethod_ds.Get_Algorithm: WideString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLCanonicalizationMethod_ds.Set_Algorithm(Value: WideString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLSignatureMethod_ds }

function TXMLSignatureMethod_ds.Get_Algorithm: WideString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLSignatureMethod_ds.Set_Algorithm(Value: WideString);
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

function TXMLReferenceType_ds.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLReferenceType_ds.Set_Id(Value: WideString);
begin
  SetAttribute('Id', Value);
end;

function TXMLReferenceType_ds.Get_URI: WideString;
begin
  Result := AttributeNodes['URI'].Text;
end;

procedure TXMLReferenceType_ds.Set_URI(Value: WideString);
begin
  SetAttribute('URI', Value);
end;

function TXMLReferenceType_ds.Get_Type_: WideString;
begin
  Result := AttributeNodes['Type'].Text;
end;

procedure TXMLReferenceType_ds.Set_Type_(Value: WideString);
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

function TXMLReferenceType_ds.Get_DigestValue: WideString;
begin
  Result := ChildNodes['DigestValue'].Text;
end;

procedure TXMLReferenceType_ds.Set_DigestValue(Value: WideString);
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

function TXMLTransformType_ds.Get_Algorithm: WideString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLTransformType_ds.Set_Algorithm(Value: WideString);
begin
  SetAttribute('Algorithm', Value);
end;

function TXMLTransformType_ds.Get_XPath(Index: Integer): WideString;
begin
  Result := List[Index].Text;
end;

function TXMLTransformType_ds.Add(const XPath: WideString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := XPath;
end;

function TXMLTransformType_ds.Insert(const Index: Integer; const XPath: WideString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := XPath;
end;

{ TXMLDigestMethod_ds }

function TXMLDigestMethod_ds.Get_Algorithm: WideString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLDigestMethod_ds.Set_Algorithm(Value: WideString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLSignatureValueType_ds }

function TXMLSignatureValueType_ds.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignatureValueType_ds.Set_Id(Value: WideString);
begin
  SetAttribute('Id', Value);
end;

{ TXMLKeyInfoType_ds }

procedure TXMLKeyInfoType_ds.AfterConstruction;
begin
  RegisterChildNode('X509Data', TXMLX509DataType_ds);
  inherited;
end;

function TXMLKeyInfoType_ds.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLKeyInfoType_ds.Set_Id(Value: WideString);
begin
  SetAttribute('Id', Value);
end;

function TXMLKeyInfoType_ds.Get_X509Data: IXMLX509DataType_ds;
begin
  Result := ChildNodes['X509Data'] as IXMLX509DataType_ds;
end;

{ TXMLX509DataType_ds }

function TXMLX509DataType_ds.Get_X509Certificate: WideString;
begin
  Result := ChildNodes['X509Certificate'].Text;
end;

procedure TXMLX509DataType_ds.Set_X509Certificate(Value: WideString);
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

function TXMLTProtNFe.Get_Versao: WideString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTProtNFe.Set_Versao(Value: WideString);
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

function TXMLInfProt.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLInfProt.Set_Id(Value: WideString);
begin
  SetAttribute('Id', Value);
end;

function TXMLInfProt.Get_TpAmb: WideString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLInfProt.Set_TpAmb(Value: WideString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLInfProt.Get_VerAplic: WideString;
begin
  Result := ChildNodes['verAplic'].Text;
end;

procedure TXMLInfProt.Set_VerAplic(Value: WideString);
begin
  ChildNodes['verAplic'].NodeValue := Value;
end;

function TXMLInfProt.Get_ChNFe: WideString;
begin
  Result := ChildNodes['chNFe'].Text;
end;

procedure TXMLInfProt.Set_ChNFe(Value: WideString);
begin
  ChildNodes['chNFe'].NodeValue := Value;
end;

function TXMLInfProt.Get_DhRecbto: WideString;
begin
  Result := ChildNodes['dhRecbto'].Text;
end;

procedure TXMLInfProt.Set_DhRecbto(Value: WideString);
begin
  ChildNodes['dhRecbto'].NodeValue := Value;
end;

function TXMLInfProt.Get_NProt: WideString;
begin
  Result := ChildNodes['nProt'].Text;
end;

procedure TXMLInfProt.Set_NProt(Value: WideString);
begin
  ChildNodes['nProt'].NodeValue := Value;
end;

function TXMLInfProt.Get_DigVal: WideString;
begin
  Result := ChildNodes['digVal'].Text;
end;

procedure TXMLInfProt.Set_DigVal(Value: WideString);
begin
  ChildNodes['digVal'].NodeValue := Value;
end;

function TXMLInfProt.Get_CStat: WideString;
begin
  Result := ChildNodes['cStat'].Text;
end;

procedure TXMLInfProt.Set_CStat(Value: WideString);
begin
  ChildNodes['cStat'].NodeValue := Value;
end;

function TXMLInfProt.Get_XMotivo: WideString;
begin
  Result := ChildNodes['xMotivo'].Text;
end;

procedure TXMLInfProt.Set_XMotivo(Value: WideString);
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

function TXMLTRetEnviNFe.Get_Versao: WideString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTRetEnviNFe.Set_Versao(Value: WideString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTRetEnviNFe.Get_TpAmb: WideString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLTRetEnviNFe.Set_TpAmb(Value: WideString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLTRetEnviNFe.Get_VerAplic: WideString;
begin
  Result := ChildNodes['verAplic'].Text;
end;

procedure TXMLTRetEnviNFe.Set_VerAplic(Value: WideString);
begin
  ChildNodes['verAplic'].NodeValue := Value;
end;

function TXMLTRetEnviNFe.Get_CStat: WideString;
begin
  Result := ChildNodes['cStat'].Text;
end;

procedure TXMLTRetEnviNFe.Set_CStat(Value: WideString);
begin
  ChildNodes['cStat'].NodeValue := Value;
end;

function TXMLTRetEnviNFe.Get_XMotivo: WideString;
begin
  Result := ChildNodes['xMotivo'].Text;
end;

procedure TXMLTRetEnviNFe.Set_XMotivo(Value: WideString);
begin
  ChildNodes['xMotivo'].NodeValue := Value;
end;

function TXMLTRetEnviNFe.Get_CUF: WideString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLTRetEnviNFe.Set_CUF(Value: WideString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLTRetEnviNFe.Get_DhRecbto: WideString;
begin
  Result := ChildNodes['dhRecbto'].Text;
end;

procedure TXMLTRetEnviNFe.Set_DhRecbto(Value: WideString);
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

function TXMLInfRec.Get_NRec: WideString;
begin
  Result := ChildNodes['nRec'].Text;
end;

procedure TXMLInfRec.Set_NRec(Value: WideString);
begin
  ChildNodes['nRec'].NodeValue := Value;
end;

function TXMLInfRec.Get_TMed: WideString;
begin
  Result := ChildNodes['tMed'].Text;
end;

procedure TXMLInfRec.Set_TMed(Value: WideString);
begin
  ChildNodes['tMed'].NodeValue := Value;
end;

{ TXMLTConsReciNFe }

function TXMLTConsReciNFe.Get_Versao: WideString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTConsReciNFe.Set_Versao(Value: WideString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTConsReciNFe.Get_TpAmb: WideString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLTConsReciNFe.Set_TpAmb(Value: WideString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLTConsReciNFe.Get_NRec: WideString;
begin
  Result := ChildNodes['nRec'].Text;
end;

procedure TXMLTConsReciNFe.Set_NRec(Value: WideString);
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

function TXMLTRetConsReciNFe.Get_Versao: WideString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_Versao(Value: WideString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTRetConsReciNFe.Get_TpAmb: WideString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_TpAmb(Value: WideString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_VerAplic: WideString;
begin
  Result := ChildNodes['verAplic'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_VerAplic(Value: WideString);
begin
  ChildNodes['verAplic'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_NRec: WideString;
begin
  Result := ChildNodes['nRec'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_NRec(Value: WideString);
begin
  ChildNodes['nRec'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_CStat: WideString;
begin
  Result := ChildNodes['cStat'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_CStat(Value: WideString);
begin
  ChildNodes['cStat'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_XMotivo: WideString;
begin
  Result := ChildNodes['xMotivo'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_XMotivo(Value: WideString);
begin
  ChildNodes['xMotivo'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_CUF: WideString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_CUF(Value: WideString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_DhRecbto: WideString;
begin
  Result := ChildNodes['dhRecbto'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_DhRecbto(Value: WideString);
begin
  ChildNodes['dhRecbto'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_CMsg: WideString;
begin
  Result := ChildNodes['cMsg'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_CMsg(Value: WideString);
begin
  ChildNodes['cMsg'].NodeValue := Value;
end;

function TXMLTRetConsReciNFe.Get_XMsg: WideString;
begin
  Result := ChildNodes['xMsg'].Text;
end;

procedure TXMLTRetConsReciNFe.Set_XMsg(Value: WideString);
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

function TXMLTNfeProc.Get_Versao: WideString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTNfeProc.Set_Versao(Value: WideString);
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

function TXMLNVEList.Add(const Value: WideString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLNVEList.Insert(const Index: Integer; const Value: WideString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLNVEList.Get_Item(Index: Integer): WideString;
begin
  Result := List[Index].NodeValue;
end;

end.