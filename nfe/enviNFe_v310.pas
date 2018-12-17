
{********************************************************************************}
{                                                                                }
{                                XML Data Binding                                }
{                                                                                }
{         Generated on: 24/11/2015 00:08:57                                      }
{       Generated from: D:\!desenv\flexdocs\NFe_Util\Schemas\enviNFe_v3.10.xsd   }
{                                                                                }
{********************************************************************************}

unit enviNFe_v310;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTEnviNFe = interface;
  IXMLTNFe = interface;
  IXMLTNFeList = interface;
  IXMLTNFe_infNFe = interface;
  IXMLTNFe_infNFe_ide = interface;
  IXMLTNFe_infNFe_ide_NFref = interface;
  IXMLTNFe_infNFe_ide_NFrefList = interface;
  IXMLTNFe_infNFe_ide_NFref_refNF = interface;
  IXMLTNFe_infNFe_ide_NFref_refNFP = interface;
  IXMLTNFe_infNFe_ide_NFref_refECF = interface;
  IXMLTNFe_infNFe_emit = interface;
  IXMLTEnderEmi = interface;
  IXMLTNFe_infNFe_avulsa = interface;
  IXMLTNFe_infNFe_dest = interface;
  IXMLTEndereco = interface;
  IXMLTLocal = interface;
  IXMLTNFe_infNFe_autXML = interface;
  IXMLTNFe_infNFe_autXMLList = interface;
  IXMLTNFe_infNFe_det = interface;
  IXMLTNFe_infNFe_detList = interface;
  IXMLTNFe_infNFe_det_prod = interface;
  IXMLTNFe_infNFe_det_prod_DI = interface;
  IXMLTNFe_infNFe_det_prod_DIList = interface;
  IXMLTNFe_infNFe_det_prod_DI_adi = interface;
  IXMLTNFe_infNFe_det_prod_DI_adiList = interface;
  IXMLTNFe_infNFe_det_prod_detExport = interface;
  IXMLTNFe_infNFe_det_prod_detExportList = interface;
  IXMLTNFe_infNFe_det_prod_detExport_exportInd = interface;
  IXMLTNFe_infNFe_det_prod_veicProd = interface;
  IXMLTNFe_infNFe_det_prod_med = interface;
  IXMLTNFe_infNFe_det_prod_medList = interface;
  IXMLTNFe_infNFe_det_prod_arma = interface;
  IXMLTNFe_infNFe_det_prod_armaList = interface;
  IXMLTNFe_infNFe_det_prod_comb = interface;
  IXMLTNFe_infNFe_det_prod_comb_CIDE = interface;
  IXMLTNFe_infNFe_det_prod_comb_encerrante = interface;
  IXMLTNFe_infNFe_det_imposto = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS00 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS10 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS20 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS30 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS40 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS51 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS60 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS70 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS90 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSST = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500 = interface;
  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900 = interface;
  IXMLTIpi = interface;
  IXMLTIpi_IPITrib = interface;
  IXMLTIpi_IPINT = interface;
  IXMLTNFe_infNFe_det_imposto_II = interface;
  IXMLTNFe_infNFe_det_imposto_ISSQN = interface;
  IXMLTNFe_infNFe_det_imposto_PIS = interface;
  IXMLTNFe_infNFe_det_imposto_PIS_PISAliq = interface;
  IXMLTNFe_infNFe_det_imposto_PIS_PISQtde = interface;
  IXMLTNFe_infNFe_det_imposto_PIS_PISNT = interface;
  IXMLTNFe_infNFe_det_imposto_PIS_PISOutr = interface;
  IXMLTNFe_infNFe_det_imposto_PISST = interface;
  IXMLTNFe_infNFe_det_imposto_COFINS = interface;
  IXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq = interface;
  IXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde = interface;
  IXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT = interface;
  IXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr = interface;
  IXMLTNFe_infNFe_det_imposto_COFINSST = interface;
  IXMLTNFe_infNFe_det_imposto_ICMSUFDest = interface;
  IXMLTNFe_infNFe_det_impostoDevol = interface;
  IXMLTNFe_infNFe_det_impostoDevol_IPI = interface;
  IXMLTNFe_infNFe_total = interface;
  IXMLTNFe_infNFe_total_ICMSTot = interface;
  IXMLTNFe_infNFe_total_ISSQNtot = interface;
  IXMLTNFe_infNFe_total_retTrib = interface;
  IXMLTNFe_infNFe_transp = interface;
  IXMLTNFe_infNFe_transp_transporta = interface;
  IXMLTNFe_infNFe_transp_retTransp = interface;
  IXMLTVeiculo = interface;
  IXMLTVeiculoList = interface;
  IXMLTNFe_infNFe_transp_vol = interface;
  IXMLTNFe_infNFe_transp_volList = interface;
  IXMLTNFe_infNFe_transp_vol_lacres = interface;
  IXMLTNFe_infNFe_transp_vol_lacresList = interface;
  IXMLTNFe_infNFe_cobr = interface;
  IXMLTNFe_infNFe_cobr_fat = interface;
  IXMLTNFe_infNFe_cobr_dup = interface;
  IXMLTNFe_infNFe_cobr_dupList = interface;
  IXMLTNFe_infNFe_pag = interface;
  IXMLTNFe_infNFe_pagList = interface;
  IXMLTNFe_infNFe_pag_card = interface;
  IXMLTNFe_infNFe_infAdic = interface;
  IXMLTNFe_infNFe_infAdic_obsCont = interface;
  IXMLTNFe_infNFe_infAdic_obsContList = interface;
  IXMLTNFe_infNFe_infAdic_obsFisco = interface;
  IXMLTNFe_infNFe_infAdic_obsFiscoList = interface;
  IXMLTNFe_infNFe_infAdic_procRef = interface;
  IXMLTNFe_infNFe_infAdic_procRefList = interface;
  IXMLTNFe_infNFe_exporta = interface;
  IXMLTNFe_infNFe_compra = interface;
  IXMLTNFe_infNFe_cana = interface;
  IXMLTNFe_infNFe_cana_forDia = interface;
  IXMLTNFe_infNFe_cana_forDiaList = interface;
  IXMLTNFe_infNFe_cana_deduc = interface;
  IXMLTNFe_infNFe_cana_deducList = interface;
  IXMLTNFe_infNFeSupl = interface;
  IXMLSignatureType_ds = interface;
  IXMLSignedInfoType_ds = interface;
  IXMLSignedInfoType_CanonicalizationMethod_ds = interface;
  IXMLSignedInfoType_SignatureMethod_ds = interface;
  IXMLReferenceType_ds = interface;
  IXMLTransformsType_ds = interface;
  IXMLTransformType_ds = interface;
  IXMLReferenceType_DigestMethod_ds = interface;
  IXMLSignatureValueType_ds = interface;
  IXMLKeyInfoType_ds = interface;
  IXMLX509DataType_ds = interface;
  IXMLTProtNFe = interface;
  IXMLTProtNFeList = interface;
  IXMLTProtNFe_infProt = interface;
  IXMLTRetEnviNFe = interface;
  IXMLTRetEnviNFe_infRec = interface;
  IXMLTConsReciNFe = interface;
  IXMLTRetConsReciNFe = interface;
  IXMLTNfeProc = interface;
  IXMLTNFe_infNFe_det_prod_NVEList = interface;

{ IXMLTEnviNFe }

  IXMLTEnviNFe = interface(IXMLNode)
    ['{87618862-6871-408A-9476-7786BD148F5F}']
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
    ['{DF4C7BC2-3B48-4C35-9F11-E2BCCCAE2FE3}']
    { Property Accessors }
    function Get_InfNFe: IXMLTNFe_infNFe;
    function Get_InfNFeSupl: IXMLTNFe_infNFeSupl;
    function Get_Signature: IXMLSignatureType_ds;
    { Methods & Properties }
    property InfNFe: IXMLTNFe_infNFe read Get_InfNFe;
    property InfNFeSupl: IXMLTNFe_infNFeSupl read Get_InfNFeSupl;
    property Signature: IXMLSignatureType_ds read Get_Signature;
  end;

{ IXMLTNFeList }

  IXMLTNFeList = interface(IXMLNodeCollection)
    ['{75B3BD80-B809-4F20-855C-DC7F7E384203}']
    { Methods & Properties }
    function Add: IXMLTNFe;
    function Insert(const Index: Integer): IXMLTNFe;

    function Get_Item(Index: Integer): IXMLTNFe;
    property Items[Index: Integer]: IXMLTNFe read Get_Item; default;
  end;

{ IXMLTNFe_infNFe }

  IXMLTNFe_infNFe = interface(IXMLNode)
    ['{FACCD70B-E63C-47F4-A8F9-F88C8B02680C}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_Id: WideString;
    function Get_Ide: IXMLTNFe_infNFe_ide;
    function Get_Emit: IXMLTNFe_infNFe_emit;
    function Get_Avulsa: IXMLTNFe_infNFe_avulsa;
    function Get_Dest: IXMLTNFe_infNFe_dest;
    function Get_Retirada: IXMLTLocal;
    function Get_Entrega: IXMLTLocal;
    function Get_AutXML: IXMLTNFe_infNFe_autXMLList;
    function Get_Det: IXMLTNFe_infNFe_detList;
    function Get_Total: IXMLTNFe_infNFe_total;
    function Get_Transp: IXMLTNFe_infNFe_transp;
    function Get_Cobr: IXMLTNFe_infNFe_cobr;
    function Get_Pag: IXMLTNFe_infNFe_pagList;
    function Get_InfAdic: IXMLTNFe_infNFe_infAdic;
    function Get_Exporta: IXMLTNFe_infNFe_exporta;
    function Get_Compra: IXMLTNFe_infNFe_compra;
    function Get_Cana: IXMLTNFe_infNFe_cana;
    procedure Set_Versao(Value: WideString);
    procedure Set_Id(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property Id: WideString read Get_Id write Set_Id;
    property Ide: IXMLTNFe_infNFe_ide read Get_Ide;
    property Emit: IXMLTNFe_infNFe_emit read Get_Emit;
    property Avulsa: IXMLTNFe_infNFe_avulsa read Get_Avulsa;
    property Dest: IXMLTNFe_infNFe_dest read Get_Dest;
    property Retirada: IXMLTLocal read Get_Retirada;
    property Entrega: IXMLTLocal read Get_Entrega;
    property AutXML: IXMLTNFe_infNFe_autXMLList read Get_AutXML;
    property Det: IXMLTNFe_infNFe_detList read Get_Det;
    property Total: IXMLTNFe_infNFe_total read Get_Total;
    property Transp: IXMLTNFe_infNFe_transp read Get_Transp;
    property Cobr: IXMLTNFe_infNFe_cobr read Get_Cobr;
    property Pag: IXMLTNFe_infNFe_pagList read Get_Pag;
    property InfAdic: IXMLTNFe_infNFe_infAdic read Get_InfAdic;
    property Exporta: IXMLTNFe_infNFe_exporta read Get_Exporta;
    property Compra: IXMLTNFe_infNFe_compra read Get_Compra;
    property Cana: IXMLTNFe_infNFe_cana read Get_Cana;
  end;

{ IXMLTNFe_infNFe_ide }

  IXMLTNFe_infNFe_ide = interface(IXMLNode)
    ['{A6766821-6E4D-4ABC-B12B-7F4570800510}']
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
    function Get_NFref: IXMLTNFe_infNFe_ide_NFrefList;
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
    property NFref: IXMLTNFe_infNFe_ide_NFrefList read Get_NFref;
  end;

{ IXMLTNFe_infNFe_ide_NFref }

  IXMLTNFe_infNFe_ide_NFref = interface(IXMLNode)
    ['{0DAE830B-C7B6-4E9F-B658-E06DE01C34D1}']
    { Property Accessors }
    function Get_RefNFe: WideString;
    function Get_RefNF: IXMLTNFe_infNFe_ide_NFref_refNF;
    function Get_RefNFP: IXMLTNFe_infNFe_ide_NFref_refNFP;
    function Get_RefCTe: WideString;
    function Get_RefECF: IXMLTNFe_infNFe_ide_NFref_refECF;
    procedure Set_RefNFe(Value: WideString);
    procedure Set_RefCTe(Value: WideString);
    { Methods & Properties }
    property RefNFe: WideString read Get_RefNFe write Set_RefNFe;
    property RefNF: IXMLTNFe_infNFe_ide_NFref_refNF read Get_RefNF;
    property RefNFP: IXMLTNFe_infNFe_ide_NFref_refNFP read Get_RefNFP;
    property RefCTe: WideString read Get_RefCTe write Set_RefCTe;
    property RefECF: IXMLTNFe_infNFe_ide_NFref_refECF read Get_RefECF;
  end;

{ IXMLTNFe_infNFe_ide_NFrefList }

  IXMLTNFe_infNFe_ide_NFrefList = interface(IXMLNodeCollection)
    ['{C817CC01-A1B9-4410-ADA9-513FDC5B1A1C}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_ide_NFref;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_ide_NFref;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_ide_NFref;
    property Items[Index: Integer]: IXMLTNFe_infNFe_ide_NFref read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_ide_NFref_refNF }

  IXMLTNFe_infNFe_ide_NFref_refNF = interface(IXMLNode)
    ['{3349DCDC-BBDE-472C-A2BC-79DD1365FBBF}']
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

{ IXMLTNFe_infNFe_ide_NFref_refNFP }

  IXMLTNFe_infNFe_ide_NFref_refNFP = interface(IXMLNode)
    ['{BDE6591C-2C1E-4B7C-AB28-B0ED6BC44F55}']
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

{ IXMLTNFe_infNFe_ide_NFref_refECF }

  IXMLTNFe_infNFe_ide_NFref_refECF = interface(IXMLNode)
    ['{7663537E-68C4-4822-96D5-C8056B443B7E}']
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

{ IXMLTNFe_infNFe_emit }

  IXMLTNFe_infNFe_emit = interface(IXMLNode)
    ['{A1ACC675-B629-496C-B27D-1ECB8956FFC2}']
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
    ['{F9CC437A-9044-480E-9CB1-6D45C15A7932}']
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

{ IXMLTNFe_infNFe_avulsa }

  IXMLTNFe_infNFe_avulsa = interface(IXMLNode)
    ['{EAE6099E-71C9-4476-86EC-F6A22DFA8C1E}']
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

{ IXMLTNFe_infNFe_dest }

  IXMLTNFe_infNFe_dest = interface(IXMLNode)
    ['{1B9D879D-1454-419A-B1DD-D2E5F2473A4F}']
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
    ['{997B8A24-41E7-4335-97C0-BF39EE8B0A99}']
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
    ['{DAA3C7E3-0242-4D4D-A3E7-9920C30177FC}']
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

{ IXMLTNFe_infNFe_autXML }

  IXMLTNFe_infNFe_autXML = interface(IXMLNode)
    ['{708F3E0F-FE96-4164-8068-C23064342E61}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property CPF: WideString read Get_CPF write Set_CPF;
  end;

{ IXMLTNFe_infNFe_autXMLList }

  IXMLTNFe_infNFe_autXMLList = interface(IXMLNodeCollection)
    ['{C2BE3A8D-E285-4592-A7F2-18BD1CF2B554}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_autXML;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_autXML;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_autXML;
    property Items[Index: Integer]: IXMLTNFe_infNFe_autXML read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_det }

  IXMLTNFe_infNFe_det = interface(IXMLNode)
    ['{6A37F11E-700A-4DE3-83BC-C59C234E6425}']
    { Property Accessors }
    function Get_NItem: WideString;
    function Get_Prod: IXMLTNFe_infNFe_det_prod;
    function Get_Imposto: IXMLTNFe_infNFe_det_imposto;
    function Get_ImpostoDevol: IXMLTNFe_infNFe_det_impostoDevol;
    function Get_InfAdProd: WideString;
    procedure Set_NItem(Value: WideString);
    procedure Set_InfAdProd(Value: WideString);
    { Methods & Properties }
    property NItem: WideString read Get_NItem write Set_NItem;
    property Prod: IXMLTNFe_infNFe_det_prod read Get_Prod;
    property Imposto: IXMLTNFe_infNFe_det_imposto read Get_Imposto;
    property ImpostoDevol: IXMLTNFe_infNFe_det_impostoDevol read Get_ImpostoDevol;
    property InfAdProd: WideString read Get_InfAdProd write Set_InfAdProd;
  end;

{ IXMLTNFe_infNFe_detList }

  IXMLTNFe_infNFe_detList = interface(IXMLNodeCollection)
    ['{118EC140-FD7D-464A-A828-C00934EFB19B}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_det;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_det;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_det;
    property Items[Index: Integer]: IXMLTNFe_infNFe_det read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_det_prod }

  IXMLTNFe_infNFe_det_prod = interface(IXMLNode)
    ['{7FCB337B-6F98-4590-8B0E-C0AEE7F865B8}']
    { Property Accessors }
    function Get_CProd: WideString;
    function Get_CEAN: WideString;
    function Get_XProd: WideString;
    function Get_NCM: WideString;
    function Get_NVE: IXMLTNFe_infNFe_det_prod_NVEList;
    function Get_CEST: WideString;
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
    function Get_DI: IXMLTNFe_infNFe_det_prod_DIList;
    function Get_DetExport: IXMLTNFe_infNFe_det_prod_detExportList;
    function Get_XPed: WideString;
    function Get_NItemPed: WideString;
    function Get_NFCI: WideString;
    function Get_VeicProd: IXMLTNFe_infNFe_det_prod_veicProd;
    function Get_Med: IXMLTNFe_infNFe_det_prod_medList;
    function Get_Arma: IXMLTNFe_infNFe_det_prod_armaList;
    function Get_Comb: IXMLTNFe_infNFe_det_prod_comb;
    function Get_NRECOPI: WideString;
    procedure Set_CProd(Value: WideString);
    procedure Set_CEAN(Value: WideString);
    procedure Set_XProd(Value: WideString);
    procedure Set_NCM(Value: WideString);
    procedure Set_CEST(Value: WideString);
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
    property NVE: IXMLTNFe_infNFe_det_prod_NVEList read Get_NVE;
    property CEST: WideString read Get_CEST write Set_CEST;
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
    property DI: IXMLTNFe_infNFe_det_prod_DIList read Get_DI;
    property DetExport: IXMLTNFe_infNFe_det_prod_detExportList read Get_DetExport;
    property XPed: WideString read Get_XPed write Set_XPed;
    property NItemPed: WideString read Get_NItemPed write Set_NItemPed;
    property NFCI: WideString read Get_NFCI write Set_NFCI;
    property VeicProd: IXMLTNFe_infNFe_det_prod_veicProd read Get_VeicProd;
    property Med: IXMLTNFe_infNFe_det_prod_medList read Get_Med;
    property Arma: IXMLTNFe_infNFe_det_prod_armaList read Get_Arma;
    property Comb: IXMLTNFe_infNFe_det_prod_comb read Get_Comb;
    property NRECOPI: WideString read Get_NRECOPI write Set_NRECOPI;
  end;

{ IXMLTNFe_infNFe_det_prod_DI }

  IXMLTNFe_infNFe_det_prod_DI = interface(IXMLNode)
    ['{9DCEC6FC-6CF5-4C11-837E-32F92154C902}']
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
    function Get_Adi: IXMLTNFe_infNFe_det_prod_DI_adiList;
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
    property Adi: IXMLTNFe_infNFe_det_prod_DI_adiList read Get_Adi;
  end;

{ IXMLTNFe_infNFe_det_prod_DIList }

  IXMLTNFe_infNFe_det_prod_DIList = interface(IXMLNodeCollection)
    ['{3B5D11D7-15C0-4EF2-A6E4-030814AAA9A3}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_det_prod_DI;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_DI;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_DI;
    property Items[Index: Integer]: IXMLTNFe_infNFe_det_prod_DI read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_det_prod_DI_adi }

  IXMLTNFe_infNFe_det_prod_DI_adi = interface(IXMLNode)
    ['{445CCCBE-CBC9-40F2-9046-491B5ACEFF0F}']
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

{ IXMLTNFe_infNFe_det_prod_DI_adiList }

  IXMLTNFe_infNFe_det_prod_DI_adiList = interface(IXMLNodeCollection)
    ['{668BE730-6EDE-4183-A387-D39B43C0A30D}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_det_prod_DI_adi;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_DI_adi;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_DI_adi;
    property Items[Index: Integer]: IXMLTNFe_infNFe_det_prod_DI_adi read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_det_prod_detExport }

  IXMLTNFe_infNFe_det_prod_detExport = interface(IXMLNode)
    ['{01284DF6-CB40-4F46-8623-9DA0693EFD45}']
    { Property Accessors }
    function Get_NDraw: WideString;
    function Get_ExportInd: IXMLTNFe_infNFe_det_prod_detExport_exportInd;
    procedure Set_NDraw(Value: WideString);
    { Methods & Properties }
    property NDraw: WideString read Get_NDraw write Set_NDraw;
    property ExportInd: IXMLTNFe_infNFe_det_prod_detExport_exportInd read Get_ExportInd;
  end;

{ IXMLTNFe_infNFe_det_prod_detExportList }

  IXMLTNFe_infNFe_det_prod_detExportList = interface(IXMLNodeCollection)
    ['{4A6D3C80-4812-4620-9DBA-F65C0CAC9455}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_det_prod_detExport;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_detExport;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_detExport;
    property Items[Index: Integer]: IXMLTNFe_infNFe_det_prod_detExport read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_det_prod_detExport_exportInd }

  IXMLTNFe_infNFe_det_prod_detExport_exportInd = interface(IXMLNode)
    ['{EBCF60DC-4FA1-4941-A9C3-7B07DC01AEC1}']
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

{ IXMLTNFe_infNFe_det_prod_veicProd }

  IXMLTNFe_infNFe_det_prod_veicProd = interface(IXMLNode)
    ['{16DA22EC-94C0-4741-A2F7-D62199284BAE}']
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

{ IXMLTNFe_infNFe_det_prod_med }

  IXMLTNFe_infNFe_det_prod_med = interface(IXMLNode)
    ['{9D7F5F2E-65E3-4C4D-8CC3-5DE4C63DFFF9}']
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

{ IXMLTNFe_infNFe_det_prod_medList }

  IXMLTNFe_infNFe_det_prod_medList = interface(IXMLNodeCollection)
    ['{A0F6B073-7713-4202-98BF-FE7A5578B1BE}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_det_prod_med;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_med;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_med;
    property Items[Index: Integer]: IXMLTNFe_infNFe_det_prod_med read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_det_prod_arma }

  IXMLTNFe_infNFe_det_prod_arma = interface(IXMLNode)
    ['{D37C173D-9CB4-4041-8152-FC77AC6FEF45}']
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

{ IXMLTNFe_infNFe_det_prod_armaList }

  IXMLTNFe_infNFe_det_prod_armaList = interface(IXMLNodeCollection)
    ['{03AA5649-B263-41F8-89E3-AA2920940074}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_det_prod_arma;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_arma;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_arma;
    property Items[Index: Integer]: IXMLTNFe_infNFe_det_prod_arma read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_det_prod_comb }

  IXMLTNFe_infNFe_det_prod_comb = interface(IXMLNode)
    ['{06EF8DDF-4619-4B4F-A9D2-967D976EC75D}']
    { Property Accessors }
    function Get_CProdANP: WideString;
    function Get_PMixGN: WideString;
    function Get_CODIF: WideString;
    function Get_QTemp: WideString;
    function Get_UFCons: WideString;
    function Get_CIDE: IXMLTNFe_infNFe_det_prod_comb_CIDE;
    function Get_Encerrante: IXMLTNFe_infNFe_det_prod_comb_encerrante;
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
    property CIDE: IXMLTNFe_infNFe_det_prod_comb_CIDE read Get_CIDE;
    property Encerrante: IXMLTNFe_infNFe_det_prod_comb_encerrante read Get_Encerrante;
  end;

{ IXMLTNFe_infNFe_det_prod_comb_CIDE }

  IXMLTNFe_infNFe_det_prod_comb_CIDE = interface(IXMLNode)
    ['{82E5CB5D-D292-43D3-8230-13A16114AF3B}']
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

{ IXMLTNFe_infNFe_det_prod_comb_encerrante }

  IXMLTNFe_infNFe_det_prod_comb_encerrante = interface(IXMLNode)
    ['{9B01D1D3-ACBA-4E7E-8977-62A801E88B8B}']
    { Property Accessors }
    function Get_NBico: WideString;
    function Get_NBomba: WideString;
    function Get_NTanque: WideString;
    function Get_VEncIni: WideString;
    function Get_VEncFin: WideString;
    procedure Set_NBico(Value: WideString);
    procedure Set_NBomba(Value: WideString);
    procedure Set_NTanque(Value: WideString);
    procedure Set_VEncIni(Value: WideString);
    procedure Set_VEncFin(Value: WideString);
    { Methods & Properties }
    property NBico: WideString read Get_NBico write Set_NBico;
    property NBomba: WideString read Get_NBomba write Set_NBomba;
    property NTanque: WideString read Get_NTanque write Set_NTanque;
    property VEncIni: WideString read Get_VEncIni write Set_VEncIni;
    property VEncFin: WideString read Get_VEncFin write Set_VEncFin;
  end;

{ IXMLTNFe_infNFe_det_imposto }

  IXMLTNFe_infNFe_det_imposto = interface(IXMLNode)
    ['{7A4320E0-04DE-4FC0-9089-0833B8EEF8C9}']
    { Property Accessors }
    function Get_VTotTrib: WideString;
    function Get_ICMS: IXMLTNFe_infNFe_det_imposto_ICMS;
    function Get_IPI: IXMLTIpi;
    function Get_II: IXMLTNFe_infNFe_det_imposto_II;
    function Get_ISSQN: IXMLTNFe_infNFe_det_imposto_ISSQN;
    function Get_PIS: IXMLTNFe_infNFe_det_imposto_PIS;
    function Get_PISST: IXMLTNFe_infNFe_det_imposto_PISST;
    function Get_COFINS: IXMLTNFe_infNFe_det_imposto_COFINS;
    function Get_COFINSST: IXMLTNFe_infNFe_det_imposto_COFINSST;
    function Get_ICMSUFDest: IXMLTNFe_infNFe_det_imposto_ICMSUFDest;
    procedure Set_VTotTrib(Value: WideString);
    { Methods & Properties }
    property VTotTrib: WideString read Get_VTotTrib write Set_VTotTrib;
    property ICMS: IXMLTNFe_infNFe_det_imposto_ICMS read Get_ICMS;
    property IPI: IXMLTIpi read Get_IPI;
    property II: IXMLTNFe_infNFe_det_imposto_II read Get_II;
    property ISSQN: IXMLTNFe_infNFe_det_imposto_ISSQN read Get_ISSQN;
    property PIS: IXMLTNFe_infNFe_det_imposto_PIS read Get_PIS;
    property PISST: IXMLTNFe_infNFe_det_imposto_PISST read Get_PISST;
    property COFINS: IXMLTNFe_infNFe_det_imposto_COFINS read Get_COFINS;
    property COFINSST: IXMLTNFe_infNFe_det_imposto_COFINSST read Get_COFINSST;
    property ICMSUFDest: IXMLTNFe_infNFe_det_imposto_ICMSUFDest read Get_ICMSUFDest;
  end;

{ IXMLTNFe_infNFe_det_imposto_ICMS }

  IXMLTNFe_infNFe_det_imposto_ICMS = interface(IXMLNode)
    ['{0DFA19D7-77C1-4834-A707-BE1A94590DE0}']
    { Property Accessors }
    function Get_ICMS00: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS00;
    function Get_ICMS10: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS10;
    function Get_ICMS20: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS20;
    function Get_ICMS30: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS30;
    function Get_ICMS40: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS40;
    function Get_ICMS51: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS51;
    function Get_ICMS60: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS60;
    function Get_ICMS70: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS70;
    function Get_ICMS90: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS90;
    function Get_ICMSPart: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart;
    function Get_ICMSST: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSST;
    function Get_ICMSSN101: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101;
    function Get_ICMSSN102: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102;
    function Get_ICMSSN201: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201;
    function Get_ICMSSN202: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202;
    function Get_ICMSSN500: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500;
    function Get_ICMSSN900: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900;
    { Methods & Properties }
    property ICMS00: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS00 read Get_ICMS00;
    property ICMS10: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS10 read Get_ICMS10;
    property ICMS20: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS20 read Get_ICMS20;
    property ICMS30: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS30 read Get_ICMS30;
    property ICMS40: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS40 read Get_ICMS40;
    property ICMS51: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS51 read Get_ICMS51;
    property ICMS60: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS60 read Get_ICMS60;
    property ICMS70: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS70 read Get_ICMS70;
    property ICMS90: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS90 read Get_ICMS90;
    property ICMSPart: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart read Get_ICMSPart;
    property ICMSST: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSST read Get_ICMSST;
    property ICMSSN101: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101 read Get_ICMSSN101;
    property ICMSSN102: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102 read Get_ICMSSN102;
    property ICMSSN201: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201 read Get_ICMSSN201;
    property ICMSSN202: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202 read Get_ICMSSN202;
    property ICMSSN500: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500 read Get_ICMSSN500;
    property ICMSSN900: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900 read Get_ICMSSN900;
  end;

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMS00 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS00 = interface(IXMLNode)
    ['{ECA46A0C-4521-44C6-8E62-8D1005A8AE93}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMS10 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS10 = interface(IXMLNode)
    ['{C49123C9-255B-4AC5-9385-EA9C070C794D}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMS20 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS20 = interface(IXMLNode)
    ['{C8B4595E-D0F9-4E30-8E35-769BFC243C0B}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMS30 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS30 = interface(IXMLNode)
    ['{D69991B5-87F6-4746-A0F2-1EC0EEA02069}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMS40 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS40 = interface(IXMLNode)
    ['{5A3B579E-7DD9-40B1-8F69-99419B44C8F7}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMS51 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS51 = interface(IXMLNode)
    ['{030D09D9-F07F-4BDB-9989-C92D6D3D0C4D}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMS60 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS60 = interface(IXMLNode)
    ['{DD6AE2BB-30B0-4DB4-9680-28C827074AF7}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMS70 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS70 = interface(IXMLNode)
    ['{0D46FEFE-C8B3-4278-B91F-C18D6A0A0F39}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMS90 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMS90 = interface(IXMLNode)
    ['{85F37D05-11EC-47E9-B85A-7D4D75363261}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart = interface(IXMLNode)
    ['{72FCB50D-5E75-476D-99BD-64E9093F3807}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMSST }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSST = interface(IXMLNode)
    ['{14217D96-39F2-4519-A0AD-D96DCC4D5911}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101 = interface(IXMLNode)
    ['{6E172ACE-7212-4481-8F07-8BAFA0AFDDB6}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102 = interface(IXMLNode)
    ['{13503440-43A3-4E02-9753-5DEE3FF1FFD1}']
    { Property Accessors }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    { Methods & Properties }
    property Orig: WideString read Get_Orig write Set_Orig;
    property CSOSN: WideString read Get_CSOSN write Set_CSOSN;
  end;

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201 = interface(IXMLNode)
    ['{E91D61F1-BCAC-49E6-B3D0-C6A7E4A3D856}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202 = interface(IXMLNode)
    ['{17DC5F0F-46B4-4973-AE2A-E7BC050745F7}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500 = interface(IXMLNode)
    ['{D56F7A8A-6045-486A-8BD9-C8E2B404F04C}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900 }

  IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900 = interface(IXMLNode)
    ['{6BB169DB-4265-474F-A946-6411F72E10F4}']
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
    ['{71D9CDB3-19E7-40DC-847E-2904A024422A}']
    { Property Accessors }
    function Get_ClEnq: WideString;
    function Get_CNPJProd: WideString;
    function Get_CSelo: WideString;
    function Get_QSelo: WideString;
    function Get_CEnq: WideString;
    function Get_IPITrib: IXMLTIpi_IPITrib;
    function Get_IPINT: IXMLTIpi_IPINT;
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
    property IPITrib: IXMLTIpi_IPITrib read Get_IPITrib;
    property IPINT: IXMLTIpi_IPINT read Get_IPINT;
  end;

{ IXMLTIpi_IPITrib }

  IXMLTIpi_IPITrib = interface(IXMLNode)
    ['{544A8623-4F4A-4946-B548-380F38D9289C}']
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

{ IXMLTIpi_IPINT }

  IXMLTIpi_IPINT = interface(IXMLNode)
    ['{E664423A-E884-4C93-83D8-6F33225389D7}']
    { Property Accessors }
    function Get_CST: WideString;
    procedure Set_CST(Value: WideString);
    { Methods & Properties }
    property CST: WideString read Get_CST write Set_CST;
  end;

{ IXMLTNFe_infNFe_det_imposto_II }

  IXMLTNFe_infNFe_det_imposto_II = interface(IXMLNode)
    ['{3C4ABE21-322B-44CB-990F-509D89592D59}']
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

{ IXMLTNFe_infNFe_det_imposto_ISSQN }

  IXMLTNFe_infNFe_det_imposto_ISSQN = interface(IXMLNode)
    ['{2EA2A3E9-E9C7-4DD4-81D5-6A836F5FEE4C}']
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

{ IXMLTNFe_infNFe_det_imposto_PIS }

  IXMLTNFe_infNFe_det_imposto_PIS = interface(IXMLNode)
    ['{DE3FF93C-A5A1-4E04-907B-578F1699F094}']
    { Property Accessors }
    function Get_PISAliq: IXMLTNFe_infNFe_det_imposto_PIS_PISAliq;
    function Get_PISQtde: IXMLTNFe_infNFe_det_imposto_PIS_PISQtde;
    function Get_PISNT: IXMLTNFe_infNFe_det_imposto_PIS_PISNT;
    function Get_PISOutr: IXMLTNFe_infNFe_det_imposto_PIS_PISOutr;
    { Methods & Properties }
    property PISAliq: IXMLTNFe_infNFe_det_imposto_PIS_PISAliq read Get_PISAliq;
    property PISQtde: IXMLTNFe_infNFe_det_imposto_PIS_PISQtde read Get_PISQtde;
    property PISNT: IXMLTNFe_infNFe_det_imposto_PIS_PISNT read Get_PISNT;
    property PISOutr: IXMLTNFe_infNFe_det_imposto_PIS_PISOutr read Get_PISOutr;
  end;

{ IXMLTNFe_infNFe_det_imposto_PIS_PISAliq }

  IXMLTNFe_infNFe_det_imposto_PIS_PISAliq = interface(IXMLNode)
    ['{943C3B41-2513-4E02-B52B-9EBB2D4037AD}']
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

{ IXMLTNFe_infNFe_det_imposto_PIS_PISQtde }

  IXMLTNFe_infNFe_det_imposto_PIS_PISQtde = interface(IXMLNode)
    ['{C87030FE-49DF-41A9-B3FF-748D89BD9FCC}']
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

{ IXMLTNFe_infNFe_det_imposto_PIS_PISNT }

  IXMLTNFe_infNFe_det_imposto_PIS_PISNT = interface(IXMLNode)
    ['{8C8EFB5A-4FEB-40D8-B11E-F7AA880B8714}']
    { Property Accessors }
    function Get_CST: WideString;
    procedure Set_CST(Value: WideString);
    { Methods & Properties }
    property CST: WideString read Get_CST write Set_CST;
  end;

{ IXMLTNFe_infNFe_det_imposto_PIS_PISOutr }

  IXMLTNFe_infNFe_det_imposto_PIS_PISOutr = interface(IXMLNode)
    ['{B73C8B5C-2E5A-4C0C-8CE1-9B72F4D4B496}']
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

{ IXMLTNFe_infNFe_det_imposto_PISST }

  IXMLTNFe_infNFe_det_imposto_PISST = interface(IXMLNode)
    ['{15BD67C2-1E35-41C3-A3DA-3CB0AD702C2E}']
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

{ IXMLTNFe_infNFe_det_imposto_COFINS }

  IXMLTNFe_infNFe_det_imposto_COFINS = interface(IXMLNode)
    ['{054E7C40-D1BF-433A-B99A-4A0AD21D914C}']
    { Property Accessors }
    function Get_COFINSAliq: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq;
    function Get_COFINSQtde: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde;
    function Get_COFINSNT: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT;
    function Get_COFINSOutr: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr;
    { Methods & Properties }
    property COFINSAliq: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq read Get_COFINSAliq;
    property COFINSQtde: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde read Get_COFINSQtde;
    property COFINSNT: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT read Get_COFINSNT;
    property COFINSOutr: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr read Get_COFINSOutr;
  end;

{ IXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq }

  IXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq = interface(IXMLNode)
    ['{F9A46647-BD3F-4412-B61B-7B70CEBE75E9}']
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

{ IXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde }

  IXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde = interface(IXMLNode)
    ['{EE08F2C6-703C-4EA1-84D4-D47D0F1CF9FB}']
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

{ IXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT }

  IXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT = interface(IXMLNode)
    ['{153C58AC-F23C-4E46-82F6-6BFE8322CED4}']
    { Property Accessors }
    function Get_CST: WideString;
    procedure Set_CST(Value: WideString);
    { Methods & Properties }
    property CST: WideString read Get_CST write Set_CST;
  end;

{ IXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr }

  IXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr = interface(IXMLNode)
    ['{AAA9CE92-A925-45B8-82D1-03CA1CC70C5E}']
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

{ IXMLTNFe_infNFe_det_imposto_COFINSST }

  IXMLTNFe_infNFe_det_imposto_COFINSST = interface(IXMLNode)
    ['{BB919D6B-76D8-41D7-A712-B15947C3858F}']
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

{ IXMLTNFe_infNFe_det_imposto_ICMSUFDest }

  IXMLTNFe_infNFe_det_imposto_ICMSUFDest = interface(IXMLNode)
    ['{4E662DAA-4B41-4E63-9C4D-11EC94B373DC}']
    { Property Accessors }
    function Get_VBCUFDest: WideString;
    function Get_PFCPUFDest: WideString;
    function Get_PICMSUFDest: WideString;
    function Get_PICMSInter: WideString;
    function Get_PICMSInterPart: WideString;
    function Get_VFCPUFDest: WideString;
    function Get_VICMSUFDest: WideString;
    function Get_VICMSUFRemet: WideString;
    procedure Set_VBCUFDest(Value: WideString);
    procedure Set_PFCPUFDest(Value: WideString);
    procedure Set_PICMSUFDest(Value: WideString);
    procedure Set_PICMSInter(Value: WideString);
    procedure Set_PICMSInterPart(Value: WideString);
    procedure Set_VFCPUFDest(Value: WideString);
    procedure Set_VICMSUFDest(Value: WideString);
    procedure Set_VICMSUFRemet(Value: WideString);
    { Methods & Properties }
    property VBCUFDest: WideString read Get_VBCUFDest write Set_VBCUFDest;
    property PFCPUFDest: WideString read Get_PFCPUFDest write Set_PFCPUFDest;
    property PICMSUFDest: WideString read Get_PICMSUFDest write Set_PICMSUFDest;
    property PICMSInter: WideString read Get_PICMSInter write Set_PICMSInter;
    property PICMSInterPart: WideString read Get_PICMSInterPart write Set_PICMSInterPart;
    property VFCPUFDest: WideString read Get_VFCPUFDest write Set_VFCPUFDest;
    property VICMSUFDest: WideString read Get_VICMSUFDest write Set_VICMSUFDest;
    property VICMSUFRemet: WideString read Get_VICMSUFRemet write Set_VICMSUFRemet;
  end;

{ IXMLTNFe_infNFe_det_impostoDevol }

  IXMLTNFe_infNFe_det_impostoDevol = interface(IXMLNode)
    ['{7F4E4E92-FC80-4C01-BDE5-730105A46704}']
    { Property Accessors }
    function Get_PDevol: WideString;
    function Get_IPI: IXMLTNFe_infNFe_det_impostoDevol_IPI;
    procedure Set_PDevol(Value: WideString);
    { Methods & Properties }
    property PDevol: WideString read Get_PDevol write Set_PDevol;
    property IPI: IXMLTNFe_infNFe_det_impostoDevol_IPI read Get_IPI;
  end;

{ IXMLTNFe_infNFe_det_impostoDevol_IPI }

  IXMLTNFe_infNFe_det_impostoDevol_IPI = interface(IXMLNode)
    ['{4EA5D31A-D97B-4697-849D-C0E4C35840C5}']
    { Property Accessors }
    function Get_VIPIDevol: WideString;
    procedure Set_VIPIDevol(Value: WideString);
    { Methods & Properties }
    property VIPIDevol: WideString read Get_VIPIDevol write Set_VIPIDevol;
  end;

{ IXMLTNFe_infNFe_total }

  IXMLTNFe_infNFe_total = interface(IXMLNode)
    ['{5745EE98-B5C2-4A7D-B40E-F178BF36B26B}']
    { Property Accessors }
    function Get_ICMSTot: IXMLTNFe_infNFe_total_ICMSTot;
    function Get_ISSQNtot: IXMLTNFe_infNFe_total_ISSQNtot;
    function Get_RetTrib: IXMLTNFe_infNFe_total_retTrib;
    { Methods & Properties }
    property ICMSTot: IXMLTNFe_infNFe_total_ICMSTot read Get_ICMSTot;
    property ISSQNtot: IXMLTNFe_infNFe_total_ISSQNtot read Get_ISSQNtot;
    property RetTrib: IXMLTNFe_infNFe_total_retTrib read Get_RetTrib;
  end;

{ IXMLTNFe_infNFe_total_ICMSTot }

  IXMLTNFe_infNFe_total_ICMSTot = interface(IXMLNode)
    ['{E13E2D92-0716-486B-8516-527A2402C31E}']
    { Property Accessors }
    function Get_VBC: WideString;
    function Get_VICMS: WideString;
    function Get_VICMSDeson: WideString;
    function Get_VFCPUFDest: WideString;
    function Get_VICMSUFDest: WideString;
    function Get_VICMSUFRemet: WideString;
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
    procedure Set_VFCPUFDest(Value: WideString);
    procedure Set_VICMSUFDest(Value: WideString);
    procedure Set_VICMSUFRemet(Value: WideString);
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
    property VFCPUFDest: WideString read Get_VFCPUFDest write Set_VFCPUFDest;
    property VICMSUFDest: WideString read Get_VICMSUFDest write Set_VICMSUFDest;
    property VICMSUFRemet: WideString read Get_VICMSUFRemet write Set_VICMSUFRemet;
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

{ IXMLTNFe_infNFe_total_ISSQNtot }

  IXMLTNFe_infNFe_total_ISSQNtot = interface(IXMLNode)
    ['{365AEE69-E1AE-4CB6-A78A-F0038BA30724}']
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

{ IXMLTNFe_infNFe_total_retTrib }

  IXMLTNFe_infNFe_total_retTrib = interface(IXMLNode)
    ['{ECE6C623-84E6-43DC-B7A7-F3A469232D3C}']
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

{ IXMLTNFe_infNFe_transp }

  IXMLTNFe_infNFe_transp = interface(IXMLNode)
    ['{398D4568-D73B-4D19-9FA9-178E46672672}']
    { Property Accessors }
    function Get_ModFrete: WideString;
    function Get_Transporta: IXMLTNFe_infNFe_transp_transporta;
    function Get_RetTransp: IXMLTNFe_infNFe_transp_retTransp;
    function Get_VeicTransp: IXMLTVeiculo;
    function Get_Reboque: IXMLTVeiculoList;
    function Get_Vagao: WideString;
    function Get_Balsa: WideString;
    function Get_Vol: IXMLTNFe_infNFe_transp_volList;
    procedure Set_ModFrete(Value: WideString);
    procedure Set_Vagao(Value: WideString);
    procedure Set_Balsa(Value: WideString);
    { Methods & Properties }
    property ModFrete: WideString read Get_ModFrete write Set_ModFrete;
    property Transporta: IXMLTNFe_infNFe_transp_transporta read Get_Transporta;
    property RetTransp: IXMLTNFe_infNFe_transp_retTransp read Get_RetTransp;
    property VeicTransp: IXMLTVeiculo read Get_VeicTransp;
    property Reboque: IXMLTVeiculoList read Get_Reboque;
    property Vagao: WideString read Get_Vagao write Set_Vagao;
    property Balsa: WideString read Get_Balsa write Set_Balsa;
    property Vol: IXMLTNFe_infNFe_transp_volList read Get_Vol;
  end;

{ IXMLTNFe_infNFe_transp_transporta }

  IXMLTNFe_infNFe_transp_transporta = interface(IXMLNode)
    ['{406D3EA3-5AFF-4F41-81A5-22E94E7DC0FA}']
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

{ IXMLTNFe_infNFe_transp_retTransp }

  IXMLTNFe_infNFe_transp_retTransp = interface(IXMLNode)
    ['{0440E237-E99C-4B97-816C-A349AD8AE970}']
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
    ['{6007D913-D20C-40A3-8672-2940B6FE4888}']
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
    ['{A0EA60CF-4588-4FDB-B6F1-CA3986D257FB}']
    { Methods & Properties }
    function Add: IXMLTVeiculo;
    function Insert(const Index: Integer): IXMLTVeiculo;

    function Get_Item(Index: Integer): IXMLTVeiculo;
    property Items[Index: Integer]: IXMLTVeiculo read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_transp_vol }

  IXMLTNFe_infNFe_transp_vol = interface(IXMLNode)
    ['{77C1D76C-B322-4A7F-BA80-A83B35636EEA}']
    { Property Accessors }
    function Get_QVol: WideString;
    function Get_Esp: WideString;
    function Get_Marca: WideString;
    function Get_NVol: WideString;
    function Get_PesoL: WideString;
    function Get_PesoB: WideString;
    function Get_Lacres: IXMLTNFe_infNFe_transp_vol_lacresList;
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
    property Lacres: IXMLTNFe_infNFe_transp_vol_lacresList read Get_Lacres;
  end;

{ IXMLTNFe_infNFe_transp_volList }

  IXMLTNFe_infNFe_transp_volList = interface(IXMLNodeCollection)
    ['{D0CD0C84-1E16-45CA-9C37-D43BC640E537}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_transp_vol;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_transp_vol;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_transp_vol;
    property Items[Index: Integer]: IXMLTNFe_infNFe_transp_vol read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_transp_vol_lacres }

  IXMLTNFe_infNFe_transp_vol_lacres = interface(IXMLNode)
    ['{DE08AF55-32CD-45AE-AA87-C71F86D0EC8B}']
    { Property Accessors }
    function Get_NLacre: WideString;
    procedure Set_NLacre(Value: WideString);
    { Methods & Properties }
    property NLacre: WideString read Get_NLacre write Set_NLacre;
  end;

{ IXMLTNFe_infNFe_transp_vol_lacresList }

  IXMLTNFe_infNFe_transp_vol_lacresList = interface(IXMLNodeCollection)
    ['{297DDF90-799B-4210-9F92-965976A61014}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_transp_vol_lacres;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_transp_vol_lacres;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_transp_vol_lacres;
    property Items[Index: Integer]: IXMLTNFe_infNFe_transp_vol_lacres read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_cobr }

  IXMLTNFe_infNFe_cobr = interface(IXMLNode)
    ['{9EC4A56B-FF53-46E9-8A15-67A77CAB94EB}']
    { Property Accessors }
    function Get_Fat: IXMLTNFe_infNFe_cobr_fat;
    function Get_Dup: IXMLTNFe_infNFe_cobr_dupList;
    { Methods & Properties }
    property Fat: IXMLTNFe_infNFe_cobr_fat read Get_Fat;
    property Dup: IXMLTNFe_infNFe_cobr_dupList read Get_Dup;
  end;

{ IXMLTNFe_infNFe_cobr_fat }

  IXMLTNFe_infNFe_cobr_fat = interface(IXMLNode)
    ['{443AC2C6-B3A4-4EBF-86BB-22E9A39C7623}']
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

{ IXMLTNFe_infNFe_cobr_dup }

  IXMLTNFe_infNFe_cobr_dup = interface(IXMLNode)
    ['{3F4A0CA3-E535-44BB-AB18-D83ACDC56B79}']
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

{ IXMLTNFe_infNFe_cobr_dupList }

  IXMLTNFe_infNFe_cobr_dupList = interface(IXMLNodeCollection)
    ['{44825E15-800F-4D2C-B8ED-4E889402B4D2}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_cobr_dup;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_cobr_dup;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_cobr_dup;
    property Items[Index: Integer]: IXMLTNFe_infNFe_cobr_dup read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_pag }

  IXMLTNFe_infNFe_pag = interface(IXMLNode)
    ['{B2DE5DC1-52DE-4386-B95C-690D737480E3}']
    { Property Accessors }
    function Get_TPag: WideString;
    function Get_VPag: WideString;
    function Get_Card: IXMLTNFe_infNFe_pag_card;
    procedure Set_TPag(Value: WideString);
    procedure Set_VPag(Value: WideString);
    { Methods & Properties }
    property TPag: WideString read Get_TPag write Set_TPag;
    property VPag: WideString read Get_VPag write Set_VPag;
    property Card: IXMLTNFe_infNFe_pag_card read Get_Card;
  end;

{ IXMLTNFe_infNFe_pagList }

  IXMLTNFe_infNFe_pagList = interface(IXMLNodeCollection)
    ['{A5F119B5-8A4C-4E52-A5D7-581E1E5B4AD6}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_pag;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_pag;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_pag;
    property Items[Index: Integer]: IXMLTNFe_infNFe_pag read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_pag_card }

  IXMLTNFe_infNFe_pag_card = interface(IXMLNode)
    ['{B5570EE7-EF14-43D2-8B8D-C7542B54E317}']
    { Property Accessors }
    function Get_TpIntegra: WideString;
    function Get_CNPJ: WideString;
    function Get_TBand: WideString;
    function Get_CAut: WideString;
    procedure Set_TpIntegra(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_TBand(Value: WideString);
    procedure Set_CAut(Value: WideString);
    { Methods & Properties }
    property TpIntegra: WideString read Get_TpIntegra write Set_TpIntegra;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property TBand: WideString read Get_TBand write Set_TBand;
    property CAut: WideString read Get_CAut write Set_CAut;
  end;

{ IXMLTNFe_infNFe_infAdic }

  IXMLTNFe_infNFe_infAdic = interface(IXMLNode)
    ['{CFC6D134-6828-472B-9FE4-65E517A81A01}']
    { Property Accessors }
    function Get_InfAdFisco: WideString;
    function Get_InfCpl: WideString;
    function Get_ObsCont: IXMLTNFe_infNFe_infAdic_obsContList;
    function Get_ObsFisco: IXMLTNFe_infNFe_infAdic_obsFiscoList;
    function Get_ProcRef: IXMLTNFe_infNFe_infAdic_procRefList;
    procedure Set_InfAdFisco(Value: WideString);
    procedure Set_InfCpl(Value: WideString);
    { Methods & Properties }
    property InfAdFisco: WideString read Get_InfAdFisco write Set_InfAdFisco;
    property InfCpl: WideString read Get_InfCpl write Set_InfCpl;
    property ObsCont: IXMLTNFe_infNFe_infAdic_obsContList read Get_ObsCont;
    property ObsFisco: IXMLTNFe_infNFe_infAdic_obsFiscoList read Get_ObsFisco;
    property ProcRef: IXMLTNFe_infNFe_infAdic_procRefList read Get_ProcRef;
  end;

{ IXMLTNFe_infNFe_infAdic_obsCont }

  IXMLTNFe_infNFe_infAdic_obsCont = interface(IXMLNode)
    ['{244810B3-AC8E-4DFA-B477-5F5B4EF70B63}']
    { Property Accessors }
    function Get_XCampo: WideString;
    function Get_XTexto: WideString;
    procedure Set_XCampo(Value: WideString);
    procedure Set_XTexto(Value: WideString);
    { Methods & Properties }
    property XCampo: WideString read Get_XCampo write Set_XCampo;
    property XTexto: WideString read Get_XTexto write Set_XTexto;
  end;

{ IXMLTNFe_infNFe_infAdic_obsContList }

  IXMLTNFe_infNFe_infAdic_obsContList = interface(IXMLNodeCollection)
    ['{0B5238CA-1EE5-4527-B661-FCA242728EF5}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_infAdic_obsCont;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_infAdic_obsCont;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_infAdic_obsCont;
    property Items[Index: Integer]: IXMLTNFe_infNFe_infAdic_obsCont read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_infAdic_obsFisco }

  IXMLTNFe_infNFe_infAdic_obsFisco = interface(IXMLNode)
    ['{D698D89B-AB98-481E-8E6B-BF1DC68B37C5}']
    { Property Accessors }
    function Get_XCampo: WideString;
    function Get_XTexto: WideString;
    procedure Set_XCampo(Value: WideString);
    procedure Set_XTexto(Value: WideString);
    { Methods & Properties }
    property XCampo: WideString read Get_XCampo write Set_XCampo;
    property XTexto: WideString read Get_XTexto write Set_XTexto;
  end;

{ IXMLTNFe_infNFe_infAdic_obsFiscoList }

  IXMLTNFe_infNFe_infAdic_obsFiscoList = interface(IXMLNodeCollection)
    ['{B18EFCEA-7A38-4C94-BA20-697F6E6D55DE}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_infAdic_obsFisco;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_infAdic_obsFisco;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_infAdic_obsFisco;
    property Items[Index: Integer]: IXMLTNFe_infNFe_infAdic_obsFisco read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_infAdic_procRef }

  IXMLTNFe_infNFe_infAdic_procRef = interface(IXMLNode)
    ['{FDB37ECE-EF1B-4E36-8427-1B4566ACC9AF}']
    { Property Accessors }
    function Get_NProc: WideString;
    function Get_IndProc: WideString;
    procedure Set_NProc(Value: WideString);
    procedure Set_IndProc(Value: WideString);
    { Methods & Properties }
    property NProc: WideString read Get_NProc write Set_NProc;
    property IndProc: WideString read Get_IndProc write Set_IndProc;
  end;

{ IXMLTNFe_infNFe_infAdic_procRefList }

  IXMLTNFe_infNFe_infAdic_procRefList = interface(IXMLNodeCollection)
    ['{52C51872-943A-4179-B384-3B837F120DB2}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_infAdic_procRef;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_infAdic_procRef;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_infAdic_procRef;
    property Items[Index: Integer]: IXMLTNFe_infNFe_infAdic_procRef read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_exporta }

  IXMLTNFe_infNFe_exporta = interface(IXMLNode)
    ['{71A17365-DC3A-4992-B178-805D45B39349}']
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

{ IXMLTNFe_infNFe_compra }

  IXMLTNFe_infNFe_compra = interface(IXMLNode)
    ['{8FC0A2E9-B113-4EB9-A330-8E2317DF8211}']
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

{ IXMLTNFe_infNFe_cana }

  IXMLTNFe_infNFe_cana = interface(IXMLNode)
    ['{18B13C05-2E27-4EA8-A717-9123276131A0}']
    { Property Accessors }
    function Get_Safra: WideString;
    function Get_Ref: WideString;
    function Get_ForDia: IXMLTNFe_infNFe_cana_forDiaList;
    function Get_QTotMes: WideString;
    function Get_QTotAnt: WideString;
    function Get_QTotGer: WideString;
    function Get_Deduc: IXMLTNFe_infNFe_cana_deducList;
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
    property ForDia: IXMLTNFe_infNFe_cana_forDiaList read Get_ForDia;
    property QTotMes: WideString read Get_QTotMes write Set_QTotMes;
    property QTotAnt: WideString read Get_QTotAnt write Set_QTotAnt;
    property QTotGer: WideString read Get_QTotGer write Set_QTotGer;
    property Deduc: IXMLTNFe_infNFe_cana_deducList read Get_Deduc;
    property VFor: WideString read Get_VFor write Set_VFor;
    property VTotDed: WideString read Get_VTotDed write Set_VTotDed;
    property VLiqFor: WideString read Get_VLiqFor write Set_VLiqFor;
  end;

{ IXMLTNFe_infNFe_cana_forDia }

  IXMLTNFe_infNFe_cana_forDia = interface(IXMLNode)
    ['{ED99FF00-2E69-465D-900D-6AC5FF75FE6F}']
    { Property Accessors }
    function Get_Dia: WideString;
    function Get_Qtde: WideString;
    procedure Set_Dia(Value: WideString);
    procedure Set_Qtde(Value: WideString);
    { Methods & Properties }
    property Dia: WideString read Get_Dia write Set_Dia;
    property Qtde: WideString read Get_Qtde write Set_Qtde;
  end;

{ IXMLTNFe_infNFe_cana_forDiaList }

  IXMLTNFe_infNFe_cana_forDiaList = interface(IXMLNodeCollection)
    ['{FA2C44C3-DA4F-4863-A445-5A3CE6F74298}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_cana_forDia;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_cana_forDia;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_cana_forDia;
    property Items[Index: Integer]: IXMLTNFe_infNFe_cana_forDia read Get_Item; default;
  end;

{ IXMLTNFe_infNFe_cana_deduc }

  IXMLTNFe_infNFe_cana_deduc = interface(IXMLNode)
    ['{F0DCF0F2-CD26-4DF8-AF02-ED1094977F79}']
    { Property Accessors }
    function Get_XDed: WideString;
    function Get_VDed: WideString;
    procedure Set_XDed(Value: WideString);
    procedure Set_VDed(Value: WideString);
    { Methods & Properties }
    property XDed: WideString read Get_XDed write Set_XDed;
    property VDed: WideString read Get_VDed write Set_VDed;
  end;

{ IXMLTNFe_infNFe_cana_deducList }

  IXMLTNFe_infNFe_cana_deducList = interface(IXMLNodeCollection)
    ['{9157E8AB-647E-4CA1-A020-AEDED05A726B}']
    { Methods & Properties }
    function Add: IXMLTNFe_infNFe_cana_deduc;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_cana_deduc;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_cana_deduc;
    property Items[Index: Integer]: IXMLTNFe_infNFe_cana_deduc read Get_Item; default;
  end;

{ IXMLTNFe_infNFeSupl }

  IXMLTNFe_infNFeSupl = interface(IXMLNode)
    ['{3C5CC7A5-B729-44CE-A5E5-7452BC963020}']
    { Property Accessors }
    function Get_QrCode: WideString;
    procedure Set_QrCode(Value: WideString);
    { Methods & Properties }
    property QrCode: WideString read Get_QrCode write Set_QrCode;
  end;

{ IXMLSignatureType_ds }

  IXMLSignatureType_ds = interface(IXMLNode)
    ['{ABBEC3E0-01C6-4D87-AF0D-D80EBE608D9E}']
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
    ['{EA453EFC-495D-4900-AA0E-D6E89DF49082}']
    { Property Accessors }
    function Get_Id: WideString;
    function Get_CanonicalizationMethod: IXMLSignedInfoType_CanonicalizationMethod_ds;
    function Get_SignatureMethod: IXMLSignedInfoType_SignatureMethod_ds;
    function Get_Reference: IXMLReferenceType_ds;
    procedure Set_Id(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
    property CanonicalizationMethod: IXMLSignedInfoType_CanonicalizationMethod_ds read Get_CanonicalizationMethod;
    property SignatureMethod: IXMLSignedInfoType_SignatureMethod_ds read Get_SignatureMethod;
    property Reference: IXMLReferenceType_ds read Get_Reference;
  end;

{ IXMLSignedInfoType_CanonicalizationMethod_ds }

  IXMLSignedInfoType_CanonicalizationMethod_ds = interface(IXMLNode)
    ['{58C6A8FA-FA7E-49F0-BA54-0C4B80EB2CFB}']
    { Property Accessors }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
    { Methods & Properties }
    property Algorithm: WideString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignedInfoType_SignatureMethod_ds }

  IXMLSignedInfoType_SignatureMethod_ds = interface(IXMLNode)
    ['{FC311C40-D2F7-4B05-9F1A-E677A186BECA}']
    { Property Accessors }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
    { Methods & Properties }
    property Algorithm: WideString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLReferenceType_ds }

  IXMLReferenceType_ds = interface(IXMLNode)
    ['{012A6B32-F71C-479D-B8A7-352E1073C8AF}']
    { Property Accessors }
    function Get_Id: WideString;
    function Get_URI: WideString;
    function Get_Type_: WideString;
    function Get_Transforms: IXMLTransformsType_ds;
    function Get_DigestMethod: IXMLReferenceType_DigestMethod_ds;
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
    property DigestMethod: IXMLReferenceType_DigestMethod_ds read Get_DigestMethod;
    property DigestValue: WideString read Get_DigestValue write Set_DigestValue;
  end;

{ IXMLTransformsType_ds }

  IXMLTransformsType_ds = interface(IXMLNodeCollection)
    ['{2249A875-C9F7-4E6E-9986-69EA28B825F4}']
    { Property Accessors }
    function Get_Transform(Index: Integer): IXMLTransformType_ds;
    { Methods & Properties }
    function Add: IXMLTransformType_ds;
    function Insert(const Index: Integer): IXMLTransformType_ds;
    property Transform[Index: Integer]: IXMLTransformType_ds read Get_Transform; default;
  end;

{ IXMLTransformType_ds }

  IXMLTransformType_ds = interface(IXMLNodeCollection)
    ['{B8C5FB35-1E77-4108-83B8-D039470ED8B1}']
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

{ IXMLReferenceType_DigestMethod_ds }

  IXMLReferenceType_DigestMethod_ds = interface(IXMLNode)
    ['{507DF0D1-A6BC-452A-B465-BA38B6FBC991}']
    { Property Accessors }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
    { Methods & Properties }
    property Algorithm: WideString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignatureValueType_ds }

  IXMLSignatureValueType_ds = interface(IXMLNode)
    ['{5198FC7E-2ED0-4E60-91CC-FEC078006623}']
    { Property Accessors }
    function Get_Id: WideString;
    procedure Set_Id(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
  end;

{ IXMLKeyInfoType_ds }

  IXMLKeyInfoType_ds = interface(IXMLNode)
    ['{AB8EBC8D-B9F4-4746-933A-1BF5ED610601}']
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
    ['{839D82C3-EB75-4FD4-86B7-647669B50639}']
    { Property Accessors }
    function Get_X509Certificate: WideString;
    procedure Set_X509Certificate(Value: WideString);
    { Methods & Properties }
    property X509Certificate: WideString read Get_X509Certificate write Set_X509Certificate;
  end;

{ IXMLTProtNFe }

  IXMLTProtNFe = interface(IXMLNode)
    ['{853E7D86-5C89-4132-8CE7-5B0BFB77B68B}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_InfProt: IXMLTProtNFe_infProt;
    function Get_Signature: IXMLSignatureType_ds;
    procedure Set_Versao(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property InfProt: IXMLTProtNFe_infProt read Get_InfProt;
    property Signature: IXMLSignatureType_ds read Get_Signature;
  end;

{ IXMLTProtNFeList }

  IXMLTProtNFeList = interface(IXMLNodeCollection)
    ['{DAD6DAFE-2654-46C1-8B8F-89356B6436B3}']
    { Methods & Properties }
    function Add: IXMLTProtNFe;
    function Insert(const Index: Integer): IXMLTProtNFe;

    function Get_Item(Index: Integer): IXMLTProtNFe;
    property Items[Index: Integer]: IXMLTProtNFe read Get_Item; default;
  end;

{ IXMLTProtNFe_infProt }

  IXMLTProtNFe_infProt = interface(IXMLNode)
    ['{0123558A-CDB1-4DC1-A9F1-2CC916E32F40}']
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
    ['{ECAEBD47-D6F5-4538-AEB9-D2EDAC5C089B}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_TpAmb: WideString;
    function Get_VerAplic: WideString;
    function Get_CStat: WideString;
    function Get_XMotivo: WideString;
    function Get_CUF: WideString;
    function Get_DhRecbto: WideString;
    function Get_InfRec: IXMLTRetEnviNFe_infRec;
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
    property InfRec: IXMLTRetEnviNFe_infRec read Get_InfRec;
    property ProtNFe: IXMLTProtNFe read Get_ProtNFe;
  end;

{ IXMLTRetEnviNFe_infRec }

  IXMLTRetEnviNFe_infRec = interface(IXMLNode)
    ['{6F496626-64DE-47F4-B5D9-99EA690C048D}']
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
    ['{D8FF9144-9E3E-4564-8441-9249934A23FA}']
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
    ['{B9B39EE1-6782-4279-8B2F-B98FA6800767}']
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
    ['{BC3D50E8-E070-481B-85BA-15EC8B4B3556}']
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

{ IXMLTNFe_infNFe_det_prod_NVEList }

  IXMLTNFe_infNFe_det_prod_NVEList = interface(IXMLNodeCollection)
    ['{7BCB47D6-5EE8-42E9-AA29-48DA97165364}']
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
  TXMLTNFe_infNFe = class;
  TXMLTNFe_infNFe_ide = class;
  TXMLTNFe_infNFe_ide_NFref = class;
  TXMLTNFe_infNFe_ide_NFrefList = class;
  TXMLTNFe_infNFe_ide_NFref_refNF = class;
  TXMLTNFe_infNFe_ide_NFref_refNFP = class;
  TXMLTNFe_infNFe_ide_NFref_refECF = class;
  TXMLTNFe_infNFe_emit = class;
  TXMLTEnderEmi = class;
  TXMLTNFe_infNFe_avulsa = class;
  TXMLTNFe_infNFe_dest = class;
  TXMLTEndereco = class;
  TXMLTLocal = class;
  TXMLTNFe_infNFe_autXML = class;
  TXMLTNFe_infNFe_autXMLList = class;
  TXMLTNFe_infNFe_det = class;
  TXMLTNFe_infNFe_detList = class;
  TXMLTNFe_infNFe_det_prod = class;
  TXMLTNFe_infNFe_det_prod_DI = class;
  TXMLTNFe_infNFe_det_prod_DIList = class;
  TXMLTNFe_infNFe_det_prod_DI_adi = class;
  TXMLTNFe_infNFe_det_prod_DI_adiList = class;
  TXMLTNFe_infNFe_det_prod_detExport = class;
  TXMLTNFe_infNFe_det_prod_detExportList = class;
  TXMLTNFe_infNFe_det_prod_detExport_exportInd = class;
  TXMLTNFe_infNFe_det_prod_veicProd = class;
  TXMLTNFe_infNFe_det_prod_med = class;
  TXMLTNFe_infNFe_det_prod_medList = class;
  TXMLTNFe_infNFe_det_prod_arma = class;
  TXMLTNFe_infNFe_det_prod_armaList = class;
  TXMLTNFe_infNFe_det_prod_comb = class;
  TXMLTNFe_infNFe_det_prod_comb_CIDE = class;
  TXMLTNFe_infNFe_det_prod_comb_encerrante = class;
  TXMLTNFe_infNFe_det_imposto = class;
  TXMLTNFe_infNFe_det_imposto_ICMS = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS40 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS60 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500 = class;
  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900 = class;
  TXMLTIpi = class;
  TXMLTIpi_IPITrib = class;
  TXMLTIpi_IPINT = class;
  TXMLTNFe_infNFe_det_imposto_II = class;
  TXMLTNFe_infNFe_det_imposto_ISSQN = class;
  TXMLTNFe_infNFe_det_imposto_PIS = class;
  TXMLTNFe_infNFe_det_imposto_PIS_PISAliq = class;
  TXMLTNFe_infNFe_det_imposto_PIS_PISQtde = class;
  TXMLTNFe_infNFe_det_imposto_PIS_PISNT = class;
  TXMLTNFe_infNFe_det_imposto_PIS_PISOutr = class;
  TXMLTNFe_infNFe_det_imposto_PISST = class;
  TXMLTNFe_infNFe_det_imposto_COFINS = class;
  TXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq = class;
  TXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde = class;
  TXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT = class;
  TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr = class;
  TXMLTNFe_infNFe_det_imposto_COFINSST = class;
  TXMLTNFe_infNFe_det_imposto_ICMSUFDest = class;
  TXMLTNFe_infNFe_det_impostoDevol = class;
  TXMLTNFe_infNFe_det_impostoDevol_IPI = class;
  TXMLTNFe_infNFe_total = class;
  TXMLTNFe_infNFe_total_ICMSTot = class;
  TXMLTNFe_infNFe_total_ISSQNtot = class;
  TXMLTNFe_infNFe_total_retTrib = class;
  TXMLTNFe_infNFe_transp = class;
  TXMLTNFe_infNFe_transp_transporta = class;
  TXMLTNFe_infNFe_transp_retTransp = class;
  TXMLTVeiculo = class;
  TXMLTVeiculoList = class;
  TXMLTNFe_infNFe_transp_vol = class;
  TXMLTNFe_infNFe_transp_volList = class;
  TXMLTNFe_infNFe_transp_vol_lacres = class;
  TXMLTNFe_infNFe_transp_vol_lacresList = class;
  TXMLTNFe_infNFe_cobr = class;
  TXMLTNFe_infNFe_cobr_fat = class;
  TXMLTNFe_infNFe_cobr_dup = class;
  TXMLTNFe_infNFe_cobr_dupList = class;
  TXMLTNFe_infNFe_pag = class;
  TXMLTNFe_infNFe_pagList = class;
  TXMLTNFe_infNFe_pag_card = class;
  TXMLTNFe_infNFe_infAdic = class;
  TXMLTNFe_infNFe_infAdic_obsCont = class;
  TXMLTNFe_infNFe_infAdic_obsContList = class;
  TXMLTNFe_infNFe_infAdic_obsFisco = class;
  TXMLTNFe_infNFe_infAdic_obsFiscoList = class;
  TXMLTNFe_infNFe_infAdic_procRef = class;
  TXMLTNFe_infNFe_infAdic_procRefList = class;
  TXMLTNFe_infNFe_exporta = class;
  TXMLTNFe_infNFe_compra = class;
  TXMLTNFe_infNFe_cana = class;
  TXMLTNFe_infNFe_cana_forDia = class;
  TXMLTNFe_infNFe_cana_forDiaList = class;
  TXMLTNFe_infNFe_cana_deduc = class;
  TXMLTNFe_infNFe_cana_deducList = class;
  TXMLTNFe_infNFeSupl = class;
  TXMLSignatureType_ds = class;
  TXMLSignedInfoType_ds = class;
  TXMLSignedInfoType_CanonicalizationMethod_ds = class;
  TXMLSignedInfoType_SignatureMethod_ds = class;
  TXMLReferenceType_ds = class;
  TXMLTransformsType_ds = class;
  TXMLTransformType_ds = class;
  TXMLReferenceType_DigestMethod_ds = class;
  TXMLSignatureValueType_ds = class;
  TXMLKeyInfoType_ds = class;
  TXMLX509DataType_ds = class;
  TXMLTProtNFe = class;
  TXMLTProtNFeList = class;
  TXMLTProtNFe_infProt = class;
  TXMLTRetEnviNFe = class;
  TXMLTRetEnviNFe_infRec = class;
  TXMLTConsReciNFe = class;
  TXMLTRetConsReciNFe = class;
  TXMLTNfeProc = class;
  TXMLTNFe_infNFe_det_prod_NVEList = class;

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
    function Get_InfNFe: IXMLTNFe_infNFe;
    function Get_InfNFeSupl: IXMLTNFe_infNFeSupl;
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

{ TXMLTNFe_infNFe }

  TXMLTNFe_infNFe = class(TXMLNode, IXMLTNFe_infNFe)
  private
    FAutXML: IXMLTNFe_infNFe_autXMLList;
    FDet: IXMLTNFe_infNFe_detList;
    FPag: IXMLTNFe_infNFe_pagList;
  protected
    { IXMLTNFe_infNFe }
    function Get_Versao: WideString;
    function Get_Id: WideString;
    function Get_Ide: IXMLTNFe_infNFe_ide;
    function Get_Emit: IXMLTNFe_infNFe_emit;
    function Get_Avulsa: IXMLTNFe_infNFe_avulsa;
    function Get_Dest: IXMLTNFe_infNFe_dest;
    function Get_Retirada: IXMLTLocal;
    function Get_Entrega: IXMLTLocal;
    function Get_AutXML: IXMLTNFe_infNFe_autXMLList;
    function Get_Det: IXMLTNFe_infNFe_detList;
    function Get_Total: IXMLTNFe_infNFe_total;
    function Get_Transp: IXMLTNFe_infNFe_transp;
    function Get_Cobr: IXMLTNFe_infNFe_cobr;
    function Get_Pag: IXMLTNFe_infNFe_pagList;
    function Get_InfAdic: IXMLTNFe_infNFe_infAdic;
    function Get_Exporta: IXMLTNFe_infNFe_exporta;
    function Get_Compra: IXMLTNFe_infNFe_compra;
    function Get_Cana: IXMLTNFe_infNFe_cana;
    procedure Set_Versao(Value: WideString);
    procedure Set_Id(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_ide }

  TXMLTNFe_infNFe_ide = class(TXMLNode, IXMLTNFe_infNFe_ide)
  private
    FNFref: IXMLTNFe_infNFe_ide_NFrefList;
  protected
    { IXMLTNFe_infNFe_ide }
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
    function Get_NFref: IXMLTNFe_infNFe_ide_NFrefList;
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

{ TXMLTNFe_infNFe_ide_NFref }

  TXMLTNFe_infNFe_ide_NFref = class(TXMLNode, IXMLTNFe_infNFe_ide_NFref)
  protected
    { IXMLTNFe_infNFe_ide_NFref }
    function Get_RefNFe: WideString;
    function Get_RefNF: IXMLTNFe_infNFe_ide_NFref_refNF;
    function Get_RefNFP: IXMLTNFe_infNFe_ide_NFref_refNFP;
    function Get_RefCTe: WideString;
    function Get_RefECF: IXMLTNFe_infNFe_ide_NFref_refECF;
    procedure Set_RefNFe(Value: WideString);
    procedure Set_RefCTe(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_ide_NFrefList }

  TXMLTNFe_infNFe_ide_NFrefList = class(TXMLNodeCollection, IXMLTNFe_infNFe_ide_NFrefList)
  protected
    { IXMLTNFe_infNFe_ide_NFrefList }
    function Add: IXMLTNFe_infNFe_ide_NFref;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_ide_NFref;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_ide_NFref;
  end;

{ TXMLTNFe_infNFe_ide_NFref_refNF }

  TXMLTNFe_infNFe_ide_NFref_refNF = class(TXMLNode, IXMLTNFe_infNFe_ide_NFref_refNF)
  protected
    { IXMLTNFe_infNFe_ide_NFref_refNF }
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

{ TXMLTNFe_infNFe_ide_NFref_refNFP }

  TXMLTNFe_infNFe_ide_NFref_refNFP = class(TXMLNode, IXMLTNFe_infNFe_ide_NFref_refNFP)
  protected
    { IXMLTNFe_infNFe_ide_NFref_refNFP }
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

{ TXMLTNFe_infNFe_ide_NFref_refECF }

  TXMLTNFe_infNFe_ide_NFref_refECF = class(TXMLNode, IXMLTNFe_infNFe_ide_NFref_refECF)
  protected
    { IXMLTNFe_infNFe_ide_NFref_refECF }
    function Get_Mod_: WideString;
    function Get_NECF: WideString;
    function Get_NCOO: WideString;
    procedure Set_Mod_(Value: WideString);
    procedure Set_NECF(Value: WideString);
    procedure Set_NCOO(Value: WideString);
  end;

{ TXMLTNFe_infNFe_emit }

  TXMLTNFe_infNFe_emit = class(TXMLNode, IXMLTNFe_infNFe_emit)
  protected
    { IXMLTNFe_infNFe_emit }
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

{ TXMLTNFe_infNFe_avulsa }

  TXMLTNFe_infNFe_avulsa = class(TXMLNode, IXMLTNFe_infNFe_avulsa)
  protected
    { IXMLTNFe_infNFe_avulsa }
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

{ TXMLTNFe_infNFe_dest }

  TXMLTNFe_infNFe_dest = class(TXMLNode, IXMLTNFe_infNFe_dest)
  protected
    { IXMLTNFe_infNFe_dest }
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

{ TXMLTNFe_infNFe_autXML }

  TXMLTNFe_infNFe_autXML = class(TXMLNode, IXMLTNFe_infNFe_autXML)
  protected
    { IXMLTNFe_infNFe_autXML }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
  end;

{ TXMLTNFe_infNFe_autXMLList }

  TXMLTNFe_infNFe_autXMLList = class(TXMLNodeCollection, IXMLTNFe_infNFe_autXMLList)
  protected
    { IXMLTNFe_infNFe_autXMLList }
    function Add: IXMLTNFe_infNFe_autXML;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_autXML;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_autXML;
  end;

{ TXMLTNFe_infNFe_det }

  TXMLTNFe_infNFe_det = class(TXMLNode, IXMLTNFe_infNFe_det)
  protected
    { IXMLTNFe_infNFe_det }
    function Get_NItem: WideString;
    function Get_Prod: IXMLTNFe_infNFe_det_prod;
    function Get_Imposto: IXMLTNFe_infNFe_det_imposto;
    function Get_ImpostoDevol: IXMLTNFe_infNFe_det_impostoDevol;
    function Get_InfAdProd: WideString;
    procedure Set_NItem(Value: WideString);
    procedure Set_InfAdProd(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_detList }

  TXMLTNFe_infNFe_detList = class(TXMLNodeCollection, IXMLTNFe_infNFe_detList)
  protected
    { IXMLTNFe_infNFe_detList }
    function Add: IXMLTNFe_infNFe_det;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_det;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_det;
  end;

{ TXMLTNFe_infNFe_det_prod }

  TXMLTNFe_infNFe_det_prod = class(TXMLNode, IXMLTNFe_infNFe_det_prod)
  private
    FNVE: IXMLTNFe_infNFe_det_prod_NVEList;
    FDI: IXMLTNFe_infNFe_det_prod_DIList;
    FDetExport: IXMLTNFe_infNFe_det_prod_detExportList;
    FMed: IXMLTNFe_infNFe_det_prod_medList;
    FArma: IXMLTNFe_infNFe_det_prod_armaList;
  protected
    { IXMLTNFe_infNFe_det_prod }
    function Get_CProd: WideString;
    function Get_CEAN: WideString;
    function Get_XProd: WideString;
    function Get_NCM: WideString;
    function Get_NVE: IXMLTNFe_infNFe_det_prod_NVEList;
    function Get_CEST: WideString;
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
    function Get_DI: IXMLTNFe_infNFe_det_prod_DIList;
    function Get_DetExport: IXMLTNFe_infNFe_det_prod_detExportList;
    function Get_XPed: WideString;
    function Get_NItemPed: WideString;
    function Get_NFCI: WideString;
    function Get_VeicProd: IXMLTNFe_infNFe_det_prod_veicProd;
    function Get_Med: IXMLTNFe_infNFe_det_prod_medList;
    function Get_Arma: IXMLTNFe_infNFe_det_prod_armaList;
    function Get_Comb: IXMLTNFe_infNFe_det_prod_comb;
    function Get_NRECOPI: WideString;
    procedure Set_CProd(Value: WideString);
    procedure Set_CEAN(Value: WideString);
    procedure Set_XProd(Value: WideString);
    procedure Set_NCM(Value: WideString);
    procedure Set_CEST(Value: WideString);
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

{ TXMLTNFe_infNFe_det_prod_DI }

  TXMLTNFe_infNFe_det_prod_DI = class(TXMLNode, IXMLTNFe_infNFe_det_prod_DI)
  private
    FAdi: IXMLTNFe_infNFe_det_prod_DI_adiList;
  protected
    { IXMLTNFe_infNFe_det_prod_DI }
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
    function Get_Adi: IXMLTNFe_infNFe_det_prod_DI_adiList;
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

{ TXMLTNFe_infNFe_det_prod_DIList }

  TXMLTNFe_infNFe_det_prod_DIList = class(TXMLNodeCollection, IXMLTNFe_infNFe_det_prod_DIList)
  protected
    { IXMLTNFe_infNFe_det_prod_DIList }
    function Add: IXMLTNFe_infNFe_det_prod_DI;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_DI;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_DI;
  end;

{ TXMLTNFe_infNFe_det_prod_DI_adi }

  TXMLTNFe_infNFe_det_prod_DI_adi = class(TXMLNode, IXMLTNFe_infNFe_det_prod_DI_adi)
  protected
    { IXMLTNFe_infNFe_det_prod_DI_adi }
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

{ TXMLTNFe_infNFe_det_prod_DI_adiList }

  TXMLTNFe_infNFe_det_prod_DI_adiList = class(TXMLNodeCollection, IXMLTNFe_infNFe_det_prod_DI_adiList)
  protected
    { IXMLTNFe_infNFe_det_prod_DI_adiList }
    function Add: IXMLTNFe_infNFe_det_prod_DI_adi;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_DI_adi;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_DI_adi;
  end;

{ TXMLTNFe_infNFe_det_prod_detExport }

  TXMLTNFe_infNFe_det_prod_detExport = class(TXMLNode, IXMLTNFe_infNFe_det_prod_detExport)
  protected
    { IXMLTNFe_infNFe_det_prod_detExport }
    function Get_NDraw: WideString;
    function Get_ExportInd: IXMLTNFe_infNFe_det_prod_detExport_exportInd;
    procedure Set_NDraw(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_det_prod_detExportList }

  TXMLTNFe_infNFe_det_prod_detExportList = class(TXMLNodeCollection, IXMLTNFe_infNFe_det_prod_detExportList)
  protected
    { IXMLTNFe_infNFe_det_prod_detExportList }
    function Add: IXMLTNFe_infNFe_det_prod_detExport;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_detExport;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_detExport;
  end;

{ TXMLTNFe_infNFe_det_prod_detExport_exportInd }

  TXMLTNFe_infNFe_det_prod_detExport_exportInd = class(TXMLNode, IXMLTNFe_infNFe_det_prod_detExport_exportInd)
  protected
    { IXMLTNFe_infNFe_det_prod_detExport_exportInd }
    function Get_NRE: WideString;
    function Get_ChNFe: WideString;
    function Get_QExport: WideString;
    procedure Set_NRE(Value: WideString);
    procedure Set_ChNFe(Value: WideString);
    procedure Set_QExport(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_prod_veicProd }

  TXMLTNFe_infNFe_det_prod_veicProd = class(TXMLNode, IXMLTNFe_infNFe_det_prod_veicProd)
  protected
    { IXMLTNFe_infNFe_det_prod_veicProd }
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

{ TXMLTNFe_infNFe_det_prod_med }

  TXMLTNFe_infNFe_det_prod_med = class(TXMLNode, IXMLTNFe_infNFe_det_prod_med)
  protected
    { IXMLTNFe_infNFe_det_prod_med }
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

{ TXMLTNFe_infNFe_det_prod_medList }

  TXMLTNFe_infNFe_det_prod_medList = class(TXMLNodeCollection, IXMLTNFe_infNFe_det_prod_medList)
  protected
    { IXMLTNFe_infNFe_det_prod_medList }
    function Add: IXMLTNFe_infNFe_det_prod_med;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_med;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_med;
  end;

{ TXMLTNFe_infNFe_det_prod_arma }

  TXMLTNFe_infNFe_det_prod_arma = class(TXMLNode, IXMLTNFe_infNFe_det_prod_arma)
  protected
    { IXMLTNFe_infNFe_det_prod_arma }
    function Get_TpArma: WideString;
    function Get_NSerie: WideString;
    function Get_NCano: WideString;
    function Get_Descr: WideString;
    procedure Set_TpArma(Value: WideString);
    procedure Set_NSerie(Value: WideString);
    procedure Set_NCano(Value: WideString);
    procedure Set_Descr(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_prod_armaList }

  TXMLTNFe_infNFe_det_prod_armaList = class(TXMLNodeCollection, IXMLTNFe_infNFe_det_prod_armaList)
  protected
    { IXMLTNFe_infNFe_det_prod_armaList }
    function Add: IXMLTNFe_infNFe_det_prod_arma;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_arma;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_arma;
  end;

{ TXMLTNFe_infNFe_det_prod_comb }

  TXMLTNFe_infNFe_det_prod_comb = class(TXMLNode, IXMLTNFe_infNFe_det_prod_comb)
  protected
    { IXMLTNFe_infNFe_det_prod_comb }
    function Get_CProdANP: WideString;
    function Get_PMixGN: WideString;
    function Get_CODIF: WideString;
    function Get_QTemp: WideString;
    function Get_UFCons: WideString;
    function Get_CIDE: IXMLTNFe_infNFe_det_prod_comb_CIDE;
    function Get_Encerrante: IXMLTNFe_infNFe_det_prod_comb_encerrante;
    procedure Set_CProdANP(Value: WideString);
    procedure Set_PMixGN(Value: WideString);
    procedure Set_CODIF(Value: WideString);
    procedure Set_QTemp(Value: WideString);
    procedure Set_UFCons(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_det_prod_comb_CIDE }

  TXMLTNFe_infNFe_det_prod_comb_CIDE = class(TXMLNode, IXMLTNFe_infNFe_det_prod_comb_CIDE)
  protected
    { IXMLTNFe_infNFe_det_prod_comb_CIDE }
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VCIDE: WideString;
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VCIDE(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_prod_comb_encerrante }

  TXMLTNFe_infNFe_det_prod_comb_encerrante = class(TXMLNode, IXMLTNFe_infNFe_det_prod_comb_encerrante)
  protected
    { IXMLTNFe_infNFe_det_prod_comb_encerrante }
    function Get_NBico: WideString;
    function Get_NBomba: WideString;
    function Get_NTanque: WideString;
    function Get_VEncIni: WideString;
    function Get_VEncFin: WideString;
    procedure Set_NBico(Value: WideString);
    procedure Set_NBomba(Value: WideString);
    procedure Set_NTanque(Value: WideString);
    procedure Set_VEncIni(Value: WideString);
    procedure Set_VEncFin(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto }

  TXMLTNFe_infNFe_det_imposto = class(TXMLNode, IXMLTNFe_infNFe_det_imposto)
  protected
    { IXMLTNFe_infNFe_det_imposto }
    function Get_VTotTrib: WideString;
    function Get_ICMS: IXMLTNFe_infNFe_det_imposto_ICMS;
    function Get_IPI: IXMLTIpi;
    function Get_II: IXMLTNFe_infNFe_det_imposto_II;
    function Get_ISSQN: IXMLTNFe_infNFe_det_imposto_ISSQN;
    function Get_PIS: IXMLTNFe_infNFe_det_imposto_PIS;
    function Get_PISST: IXMLTNFe_infNFe_det_imposto_PISST;
    function Get_COFINS: IXMLTNFe_infNFe_det_imposto_COFINS;
    function Get_COFINSST: IXMLTNFe_infNFe_det_imposto_COFINSST;
    function Get_ICMSUFDest: IXMLTNFe_infNFe_det_imposto_ICMSUFDest;
    procedure Set_VTotTrib(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_det_imposto_ICMS }

  TXMLTNFe_infNFe_det_imposto_ICMS = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS }
    function Get_ICMS00: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS00;
    function Get_ICMS10: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS10;
    function Get_ICMS20: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS20;
    function Get_ICMS30: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS30;
    function Get_ICMS40: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS40;
    function Get_ICMS51: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS51;
    function Get_ICMS60: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS60;
    function Get_ICMS70: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS70;
    function Get_ICMS90: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS90;
    function Get_ICMSPart: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart;
    function Get_ICMSST: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSST;
    function Get_ICMSSN101: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101;
    function Get_ICMSSN102: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102;
    function Get_ICMSSN201: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201;
    function Get_ICMSSN202: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202;
    function Get_ICMSSN500: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500;
    function Get_ICMSSN900: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMS00)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMS00 }
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

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMS10)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMS10 }
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

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMS20)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMS20 }
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

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMS30)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMS30 }
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

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS40 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS40 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMS40)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMS40 }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_VICMSDeson: WideString;
    function Get_MotDesICMS: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_VICMSDeson(Value: WideString);
    procedure Set_MotDesICMS(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMS51)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMS51 }
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

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS60 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS60 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMS60)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMS60 }
    function Get_Orig: WideString;
    function Get_CST: WideString;
    function Get_VBCSTRet: WideString;
    function Get_VICMSSTRet: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CST(Value: WideString);
    procedure Set_VBCSTRet(Value: WideString);
    procedure Set_VICMSSTRet(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMS70)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMS70 }
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

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMS90)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMS90 }
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

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart }
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

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMSST)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMSST }
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

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101 }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    function Get_PCredSN: WideString;
    function Get_VCredICMSSN: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    procedure Set_PCredSN(Value: WideString);
    procedure Set_VCredICMSSN(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102 }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201 }
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

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202 }
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

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500 }
    function Get_Orig: WideString;
    function Get_CSOSN: WideString;
    function Get_VBCSTRet: WideString;
    function Get_VICMSSTRet: WideString;
    procedure Set_Orig(Value: WideString);
    procedure Set_CSOSN(Value: WideString);
    procedure Set_VBCSTRet(Value: WideString);
    procedure Set_VICMSSTRet(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900 }

  TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900 = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900 }
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
    function Get_IPITrib: IXMLTIpi_IPITrib;
    function Get_IPINT: IXMLTIpi_IPINT;
    procedure Set_ClEnq(Value: WideString);
    procedure Set_CNPJProd(Value: WideString);
    procedure Set_CSelo(Value: WideString);
    procedure Set_QSelo(Value: WideString);
    procedure Set_CEnq(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTIpi_IPITrib }

  TXMLTIpi_IPITrib = class(TXMLNode, IXMLTIpi_IPITrib)
  protected
    { IXMLTIpi_IPITrib }
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

{ TXMLTIpi_IPINT }

  TXMLTIpi_IPINT = class(TXMLNode, IXMLTIpi_IPINT)
  protected
    { IXMLTIpi_IPINT }
    function Get_CST: WideString;
    procedure Set_CST(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto_II }

  TXMLTNFe_infNFe_det_imposto_II = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_II)
  protected
    { IXMLTNFe_infNFe_det_imposto_II }
    function Get_VBC: WideString;
    function Get_VDespAdu: WideString;
    function Get_VII: WideString;
    function Get_VIOF: WideString;
    procedure Set_VBC(Value: WideString);
    procedure Set_VDespAdu(Value: WideString);
    procedure Set_VII(Value: WideString);
    procedure Set_VIOF(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto_ISSQN }

  TXMLTNFe_infNFe_det_imposto_ISSQN = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ISSQN)
  protected
    { IXMLTNFe_infNFe_det_imposto_ISSQN }
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

{ TXMLTNFe_infNFe_det_imposto_PIS }

  TXMLTNFe_infNFe_det_imposto_PIS = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_PIS)
  protected
    { IXMLTNFe_infNFe_det_imposto_PIS }
    function Get_PISAliq: IXMLTNFe_infNFe_det_imposto_PIS_PISAliq;
    function Get_PISQtde: IXMLTNFe_infNFe_det_imposto_PIS_PISQtde;
    function Get_PISNT: IXMLTNFe_infNFe_det_imposto_PIS_PISNT;
    function Get_PISOutr: IXMLTNFe_infNFe_det_imposto_PIS_PISOutr;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_det_imposto_PIS_PISAliq }

  TXMLTNFe_infNFe_det_imposto_PIS_PISAliq = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_PIS_PISAliq)
  protected
    { IXMLTNFe_infNFe_det_imposto_PIS_PISAliq }
    function Get_CST: WideString;
    function Get_VBC: WideString;
    function Get_PPIS: WideString;
    function Get_VPIS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PPIS(Value: WideString);
    procedure Set_VPIS(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto_PIS_PISQtde }

  TXMLTNFe_infNFe_det_imposto_PIS_PISQtde = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_PIS_PISQtde)
  protected
    { IXMLTNFe_infNFe_det_imposto_PIS_PISQtde }
    function Get_CST: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VPIS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VPIS(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto_PIS_PISNT }

  TXMLTNFe_infNFe_det_imposto_PIS_PISNT = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_PIS_PISNT)
  protected
    { IXMLTNFe_infNFe_det_imposto_PIS_PISNT }
    function Get_CST: WideString;
    procedure Set_CST(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto_PIS_PISOutr }

  TXMLTNFe_infNFe_det_imposto_PIS_PISOutr = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_PIS_PISOutr)
  protected
    { IXMLTNFe_infNFe_det_imposto_PIS_PISOutr }
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

{ TXMLTNFe_infNFe_det_imposto_PISST }

  TXMLTNFe_infNFe_det_imposto_PISST = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_PISST)
  protected
    { IXMLTNFe_infNFe_det_imposto_PISST }
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

{ TXMLTNFe_infNFe_det_imposto_COFINS }

  TXMLTNFe_infNFe_det_imposto_COFINS = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_COFINS)
  protected
    { IXMLTNFe_infNFe_det_imposto_COFINS }
    function Get_COFINSAliq: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq;
    function Get_COFINSQtde: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde;
    function Get_COFINSNT: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT;
    function Get_COFINSOutr: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq }

  TXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq)
  protected
    { IXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq }
    function Get_CST: WideString;
    function Get_VBC: WideString;
    function Get_PCOFINS: WideString;
    function Get_VCOFINS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_VBC(Value: WideString);
    procedure Set_PCOFINS(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde }

  TXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde)
  protected
    { IXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde }
    function Get_CST: WideString;
    function Get_QBCProd: WideString;
    function Get_VAliqProd: WideString;
    function Get_VCOFINS: WideString;
    procedure Set_CST(Value: WideString);
    procedure Set_QBCProd(Value: WideString);
    procedure Set_VAliqProd(Value: WideString);
    procedure Set_VCOFINS(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT }

  TXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT)
  protected
    { IXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT }
    function Get_CST: WideString;
    procedure Set_CST(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr }

  TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr)
  protected
    { IXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr }
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

{ TXMLTNFe_infNFe_det_imposto_COFINSST }

  TXMLTNFe_infNFe_det_imposto_COFINSST = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_COFINSST)
  protected
    { IXMLTNFe_infNFe_det_imposto_COFINSST }
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

{ TXMLTNFe_infNFe_det_imposto_ICMSUFDest }

  TXMLTNFe_infNFe_det_imposto_ICMSUFDest = class(TXMLNode, IXMLTNFe_infNFe_det_imposto_ICMSUFDest)
  protected
    { IXMLTNFe_infNFe_det_imposto_ICMSUFDest }
    function Get_VBCUFDest: WideString;
    function Get_PFCPUFDest: WideString;
    function Get_PICMSUFDest: WideString;
    function Get_PICMSInter: WideString;
    function Get_PICMSInterPart: WideString;
    function Get_VFCPUFDest: WideString;
    function Get_VICMSUFDest: WideString;
    function Get_VICMSUFRemet: WideString;
    procedure Set_VBCUFDest(Value: WideString);
    procedure Set_PFCPUFDest(Value: WideString);
    procedure Set_PICMSUFDest(Value: WideString);
    procedure Set_PICMSInter(Value: WideString);
    procedure Set_PICMSInterPart(Value: WideString);
    procedure Set_VFCPUFDest(Value: WideString);
    procedure Set_VICMSUFDest(Value: WideString);
    procedure Set_VICMSUFRemet(Value: WideString);
  end;

{ TXMLTNFe_infNFe_det_impostoDevol }

  TXMLTNFe_infNFe_det_impostoDevol = class(TXMLNode, IXMLTNFe_infNFe_det_impostoDevol)
  protected
    { IXMLTNFe_infNFe_det_impostoDevol }
    function Get_PDevol: WideString;
    function Get_IPI: IXMLTNFe_infNFe_det_impostoDevol_IPI;
    procedure Set_PDevol(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_det_impostoDevol_IPI }

  TXMLTNFe_infNFe_det_impostoDevol_IPI = class(TXMLNode, IXMLTNFe_infNFe_det_impostoDevol_IPI)
  protected
    { IXMLTNFe_infNFe_det_impostoDevol_IPI }
    function Get_VIPIDevol: WideString;
    procedure Set_VIPIDevol(Value: WideString);
  end;

{ TXMLTNFe_infNFe_total }

  TXMLTNFe_infNFe_total = class(TXMLNode, IXMLTNFe_infNFe_total)
  protected
    { IXMLTNFe_infNFe_total }
    function Get_ICMSTot: IXMLTNFe_infNFe_total_ICMSTot;
    function Get_ISSQNtot: IXMLTNFe_infNFe_total_ISSQNtot;
    function Get_RetTrib: IXMLTNFe_infNFe_total_retTrib;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_total_ICMSTot }

  TXMLTNFe_infNFe_total_ICMSTot = class(TXMLNode, IXMLTNFe_infNFe_total_ICMSTot)
  protected
    { IXMLTNFe_infNFe_total_ICMSTot }
    function Get_VBC: WideString;
    function Get_VICMS: WideString;
    function Get_VICMSDeson: WideString;
    function Get_VFCPUFDest: WideString;
    function Get_VICMSUFDest: WideString;
    function Get_VICMSUFRemet: WideString;
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
    procedure Set_VFCPUFDest(Value: WideString);
    procedure Set_VICMSUFDest(Value: WideString);
    procedure Set_VICMSUFRemet(Value: WideString);
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

{ TXMLTNFe_infNFe_total_ISSQNtot }

  TXMLTNFe_infNFe_total_ISSQNtot = class(TXMLNode, IXMLTNFe_infNFe_total_ISSQNtot)
  protected
    { IXMLTNFe_infNFe_total_ISSQNtot }
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

{ TXMLTNFe_infNFe_total_retTrib }

  TXMLTNFe_infNFe_total_retTrib = class(TXMLNode, IXMLTNFe_infNFe_total_retTrib)
  protected
    { IXMLTNFe_infNFe_total_retTrib }
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

{ TXMLTNFe_infNFe_transp }

  TXMLTNFe_infNFe_transp = class(TXMLNode, IXMLTNFe_infNFe_transp)
  private
    FReboque: IXMLTVeiculoList;
    FVol: IXMLTNFe_infNFe_transp_volList;
  protected
    { IXMLTNFe_infNFe_transp }
    function Get_ModFrete: WideString;
    function Get_Transporta: IXMLTNFe_infNFe_transp_transporta;
    function Get_RetTransp: IXMLTNFe_infNFe_transp_retTransp;
    function Get_VeicTransp: IXMLTVeiculo;
    function Get_Reboque: IXMLTVeiculoList;
    function Get_Vagao: WideString;
    function Get_Balsa: WideString;
    function Get_Vol: IXMLTNFe_infNFe_transp_volList;
    procedure Set_ModFrete(Value: WideString);
    procedure Set_Vagao(Value: WideString);
    procedure Set_Balsa(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_transp_transporta }

  TXMLTNFe_infNFe_transp_transporta = class(TXMLNode, IXMLTNFe_infNFe_transp_transporta)
  protected
    { IXMLTNFe_infNFe_transp_transporta }
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

{ TXMLTNFe_infNFe_transp_retTransp }

  TXMLTNFe_infNFe_transp_retTransp = class(TXMLNode, IXMLTNFe_infNFe_transp_retTransp)
  protected
    { IXMLTNFe_infNFe_transp_retTransp }
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

{ TXMLTNFe_infNFe_transp_vol }

  TXMLTNFe_infNFe_transp_vol = class(TXMLNode, IXMLTNFe_infNFe_transp_vol)
  private
    FLacres: IXMLTNFe_infNFe_transp_vol_lacresList;
  protected
    { IXMLTNFe_infNFe_transp_vol }
    function Get_QVol: WideString;
    function Get_Esp: WideString;
    function Get_Marca: WideString;
    function Get_NVol: WideString;
    function Get_PesoL: WideString;
    function Get_PesoB: WideString;
    function Get_Lacres: IXMLTNFe_infNFe_transp_vol_lacresList;
    procedure Set_QVol(Value: WideString);
    procedure Set_Esp(Value: WideString);
    procedure Set_Marca(Value: WideString);
    procedure Set_NVol(Value: WideString);
    procedure Set_PesoL(Value: WideString);
    procedure Set_PesoB(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_transp_volList }

  TXMLTNFe_infNFe_transp_volList = class(TXMLNodeCollection, IXMLTNFe_infNFe_transp_volList)
  protected
    { IXMLTNFe_infNFe_transp_volList }
    function Add: IXMLTNFe_infNFe_transp_vol;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_transp_vol;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_transp_vol;
  end;

{ TXMLTNFe_infNFe_transp_vol_lacres }

  TXMLTNFe_infNFe_transp_vol_lacres = class(TXMLNode, IXMLTNFe_infNFe_transp_vol_lacres)
  protected
    { IXMLTNFe_infNFe_transp_vol_lacres }
    function Get_NLacre: WideString;
    procedure Set_NLacre(Value: WideString);
  end;

{ TXMLTNFe_infNFe_transp_vol_lacresList }

  TXMLTNFe_infNFe_transp_vol_lacresList = class(TXMLNodeCollection, IXMLTNFe_infNFe_transp_vol_lacresList)
  protected
    { IXMLTNFe_infNFe_transp_vol_lacresList }
    function Add: IXMLTNFe_infNFe_transp_vol_lacres;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_transp_vol_lacres;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_transp_vol_lacres;
  end;

{ TXMLTNFe_infNFe_cobr }

  TXMLTNFe_infNFe_cobr = class(TXMLNode, IXMLTNFe_infNFe_cobr)
  private
    FDup: IXMLTNFe_infNFe_cobr_dupList;
  protected
    { IXMLTNFe_infNFe_cobr }
    function Get_Fat: IXMLTNFe_infNFe_cobr_fat;
    function Get_Dup: IXMLTNFe_infNFe_cobr_dupList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_cobr_fat }

  TXMLTNFe_infNFe_cobr_fat = class(TXMLNode, IXMLTNFe_infNFe_cobr_fat)
  protected
    { IXMLTNFe_infNFe_cobr_fat }
    function Get_NFat: WideString;
    function Get_VOrig: WideString;
    function Get_VDesc: WideString;
    function Get_VLiq: WideString;
    procedure Set_NFat(Value: WideString);
    procedure Set_VOrig(Value: WideString);
    procedure Set_VDesc(Value: WideString);
    procedure Set_VLiq(Value: WideString);
  end;

{ TXMLTNFe_infNFe_cobr_dup }

  TXMLTNFe_infNFe_cobr_dup = class(TXMLNode, IXMLTNFe_infNFe_cobr_dup)
  protected
    { IXMLTNFe_infNFe_cobr_dup }
    function Get_NDup: WideString;
    function Get_DVenc: WideString;
    function Get_VDup: WideString;
    procedure Set_NDup(Value: WideString);
    procedure Set_DVenc(Value: WideString);
    procedure Set_VDup(Value: WideString);
  end;

{ TXMLTNFe_infNFe_cobr_dupList }

  TXMLTNFe_infNFe_cobr_dupList = class(TXMLNodeCollection, IXMLTNFe_infNFe_cobr_dupList)
  protected
    { IXMLTNFe_infNFe_cobr_dupList }
    function Add: IXMLTNFe_infNFe_cobr_dup;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_cobr_dup;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_cobr_dup;
  end;

{ TXMLTNFe_infNFe_pag }

  TXMLTNFe_infNFe_pag = class(TXMLNode, IXMLTNFe_infNFe_pag)
  protected
    { IXMLTNFe_infNFe_pag }
    function Get_TPag: WideString;
    function Get_VPag: WideString;
    function Get_Card: IXMLTNFe_infNFe_pag_card;
    procedure Set_TPag(Value: WideString);
    procedure Set_VPag(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_pagList }

  TXMLTNFe_infNFe_pagList = class(TXMLNodeCollection, IXMLTNFe_infNFe_pagList)
  protected
    { IXMLTNFe_infNFe_pagList }
    function Add: IXMLTNFe_infNFe_pag;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_pag;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_pag;
  end;

{ TXMLTNFe_infNFe_pag_card }

  TXMLTNFe_infNFe_pag_card = class(TXMLNode, IXMLTNFe_infNFe_pag_card)
  protected
    { IXMLTNFe_infNFe_pag_card }
    function Get_TpIntegra: WideString;
    function Get_CNPJ: WideString;
    function Get_TBand: WideString;
    function Get_CAut: WideString;
    procedure Set_TpIntegra(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_TBand(Value: WideString);
    procedure Set_CAut(Value: WideString);
  end;

{ TXMLTNFe_infNFe_infAdic }

  TXMLTNFe_infNFe_infAdic = class(TXMLNode, IXMLTNFe_infNFe_infAdic)
  private
    FObsCont: IXMLTNFe_infNFe_infAdic_obsContList;
    FObsFisco: IXMLTNFe_infNFe_infAdic_obsFiscoList;
    FProcRef: IXMLTNFe_infNFe_infAdic_procRefList;
  protected
    { IXMLTNFe_infNFe_infAdic }
    function Get_InfAdFisco: WideString;
    function Get_InfCpl: WideString;
    function Get_ObsCont: IXMLTNFe_infNFe_infAdic_obsContList;
    function Get_ObsFisco: IXMLTNFe_infNFe_infAdic_obsFiscoList;
    function Get_ProcRef: IXMLTNFe_infNFe_infAdic_procRefList;
    procedure Set_InfAdFisco(Value: WideString);
    procedure Set_InfCpl(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTNFe_infNFe_infAdic_obsCont }

  TXMLTNFe_infNFe_infAdic_obsCont = class(TXMLNode, IXMLTNFe_infNFe_infAdic_obsCont)
  protected
    { IXMLTNFe_infNFe_infAdic_obsCont }
    function Get_XCampo: WideString;
    function Get_XTexto: WideString;
    procedure Set_XCampo(Value: WideString);
    procedure Set_XTexto(Value: WideString);
  end;

{ TXMLTNFe_infNFe_infAdic_obsContList }

  TXMLTNFe_infNFe_infAdic_obsContList = class(TXMLNodeCollection, IXMLTNFe_infNFe_infAdic_obsContList)
  protected
    { IXMLTNFe_infNFe_infAdic_obsContList }
    function Add: IXMLTNFe_infNFe_infAdic_obsCont;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_infAdic_obsCont;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_infAdic_obsCont;
  end;

{ TXMLTNFe_infNFe_infAdic_obsFisco }

  TXMLTNFe_infNFe_infAdic_obsFisco = class(TXMLNode, IXMLTNFe_infNFe_infAdic_obsFisco)
  protected
    { IXMLTNFe_infNFe_infAdic_obsFisco }
    function Get_XCampo: WideString;
    function Get_XTexto: WideString;
    procedure Set_XCampo(Value: WideString);
    procedure Set_XTexto(Value: WideString);
  end;

{ TXMLTNFe_infNFe_infAdic_obsFiscoList }

  TXMLTNFe_infNFe_infAdic_obsFiscoList = class(TXMLNodeCollection, IXMLTNFe_infNFe_infAdic_obsFiscoList)
  protected
    { IXMLTNFe_infNFe_infAdic_obsFiscoList }
    function Add: IXMLTNFe_infNFe_infAdic_obsFisco;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_infAdic_obsFisco;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_infAdic_obsFisco;
  end;

{ TXMLTNFe_infNFe_infAdic_procRef }

  TXMLTNFe_infNFe_infAdic_procRef = class(TXMLNode, IXMLTNFe_infNFe_infAdic_procRef)
  protected
    { IXMLTNFe_infNFe_infAdic_procRef }
    function Get_NProc: WideString;
    function Get_IndProc: WideString;
    procedure Set_NProc(Value: WideString);
    procedure Set_IndProc(Value: WideString);
  end;

{ TXMLTNFe_infNFe_infAdic_procRefList }

  TXMLTNFe_infNFe_infAdic_procRefList = class(TXMLNodeCollection, IXMLTNFe_infNFe_infAdic_procRefList)
  protected
    { IXMLTNFe_infNFe_infAdic_procRefList }
    function Add: IXMLTNFe_infNFe_infAdic_procRef;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_infAdic_procRef;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_infAdic_procRef;
  end;

{ TXMLTNFe_infNFe_exporta }

  TXMLTNFe_infNFe_exporta = class(TXMLNode, IXMLTNFe_infNFe_exporta)
  protected
    { IXMLTNFe_infNFe_exporta }
    function Get_UFSaidaPais: WideString;
    function Get_XLocExporta: WideString;
    function Get_XLocDespacho: WideString;
    procedure Set_UFSaidaPais(Value: WideString);
    procedure Set_XLocExporta(Value: WideString);
    procedure Set_XLocDespacho(Value: WideString);
  end;

{ TXMLTNFe_infNFe_compra }

  TXMLTNFe_infNFe_compra = class(TXMLNode, IXMLTNFe_infNFe_compra)
  protected
    { IXMLTNFe_infNFe_compra }
    function Get_XNEmp: WideString;
    function Get_XPed: WideString;
    function Get_XCont: WideString;
    procedure Set_XNEmp(Value: WideString);
    procedure Set_XPed(Value: WideString);
    procedure Set_XCont(Value: WideString);
  end;

{ TXMLTNFe_infNFe_cana }

  TXMLTNFe_infNFe_cana = class(TXMLNode, IXMLTNFe_infNFe_cana)
  private
    FForDia: IXMLTNFe_infNFe_cana_forDiaList;
    FDeduc: IXMLTNFe_infNFe_cana_deducList;
  protected
    { IXMLTNFe_infNFe_cana }
    function Get_Safra: WideString;
    function Get_Ref: WideString;
    function Get_ForDia: IXMLTNFe_infNFe_cana_forDiaList;
    function Get_QTotMes: WideString;
    function Get_QTotAnt: WideString;
    function Get_QTotGer: WideString;
    function Get_Deduc: IXMLTNFe_infNFe_cana_deducList;
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

{ TXMLTNFe_infNFe_cana_forDia }

  TXMLTNFe_infNFe_cana_forDia = class(TXMLNode, IXMLTNFe_infNFe_cana_forDia)
  protected
    { IXMLTNFe_infNFe_cana_forDia }
    function Get_Dia: WideString;
    function Get_Qtde: WideString;
    procedure Set_Dia(Value: WideString);
    procedure Set_Qtde(Value: WideString);
  end;

{ TXMLTNFe_infNFe_cana_forDiaList }

  TXMLTNFe_infNFe_cana_forDiaList = class(TXMLNodeCollection, IXMLTNFe_infNFe_cana_forDiaList)
  protected
    { IXMLTNFe_infNFe_cana_forDiaList }
    function Add: IXMLTNFe_infNFe_cana_forDia;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_cana_forDia;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_cana_forDia;
  end;

{ TXMLTNFe_infNFe_cana_deduc }

  TXMLTNFe_infNFe_cana_deduc = class(TXMLNode, IXMLTNFe_infNFe_cana_deduc)
  protected
    { IXMLTNFe_infNFe_cana_deduc }
    function Get_XDed: WideString;
    function Get_VDed: WideString;
    procedure Set_XDed(Value: WideString);
    procedure Set_VDed(Value: WideString);
  end;

{ TXMLTNFe_infNFe_cana_deducList }

  TXMLTNFe_infNFe_cana_deducList = class(TXMLNodeCollection, IXMLTNFe_infNFe_cana_deducList)
  protected
    { IXMLTNFe_infNFe_cana_deducList }
    function Add: IXMLTNFe_infNFe_cana_deduc;
    function Insert(const Index: Integer): IXMLTNFe_infNFe_cana_deduc;

    function Get_Item(Index: Integer): IXMLTNFe_infNFe_cana_deduc;
  end;

{ TXMLTNFe_infNFeSupl }

  TXMLTNFe_infNFeSupl = class(TXMLNode, IXMLTNFe_infNFeSupl)
  protected
    { IXMLTNFe_infNFeSupl }
    function Get_QrCode: WideString;
    procedure Set_QrCode(Value: WideString);
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
    function Get_CanonicalizationMethod: IXMLSignedInfoType_CanonicalizationMethod_ds;
    function Get_SignatureMethod: IXMLSignedInfoType_SignatureMethod_ds;
    function Get_Reference: IXMLReferenceType_ds;
    procedure Set_Id(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSignedInfoType_CanonicalizationMethod_ds }

  TXMLSignedInfoType_CanonicalizationMethod_ds = class(TXMLNode, IXMLSignedInfoType_CanonicalizationMethod_ds)
  protected
    { IXMLSignedInfoType_CanonicalizationMethod_ds }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
  end;

{ TXMLSignedInfoType_SignatureMethod_ds }

  TXMLSignedInfoType_SignatureMethod_ds = class(TXMLNode, IXMLSignedInfoType_SignatureMethod_ds)
  protected
    { IXMLSignedInfoType_SignatureMethod_ds }
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
    function Get_DigestMethod: IXMLReferenceType_DigestMethod_ds;
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

{ TXMLReferenceType_DigestMethod_ds }

  TXMLReferenceType_DigestMethod_ds = class(TXMLNode, IXMLReferenceType_DigestMethod_ds)
  protected
    { IXMLReferenceType_DigestMethod_ds }
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
    function Get_InfProt: IXMLTProtNFe_infProt;
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

{ TXMLTProtNFe_infProt }

  TXMLTProtNFe_infProt = class(TXMLNode, IXMLTProtNFe_infProt)
  protected
    { IXMLTProtNFe_infProt }
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
    function Get_InfRec: IXMLTRetEnviNFe_infRec;
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

{ TXMLTRetEnviNFe_infRec }

  TXMLTRetEnviNFe_infRec = class(TXMLNode, IXMLTRetEnviNFe_infRec)
  protected
    { IXMLTRetEnviNFe_infRec }
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

{ TXMLTNFe_infNFe_det_prod_NVEList }

  TXMLTNFe_infNFe_det_prod_NVEList = class(TXMLNodeCollection, IXMLTNFe_infNFe_det_prod_NVEList)
  protected
    { IXMLTNFe_infNFe_det_prod_NVEList }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;

    function Get_Item(Index: Integer): WideString;
  end;

function GetenviNFe(Doc: IXMLDocument): IXMLTEnviNFe;
function LoadenviNFe(const FileName: string): IXMLTEnviNFe;
function NewenviNFe: IXMLTEnviNFe;

const
  TargetNamespace = 'http://www.portalfiscal.inf.br/nfe';

implementation

{ TXMLTEnviNFe }

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
  RegisterChildNode('infNFe', TXMLTNFe_infNFe);
  RegisterChildNode('infNFeSupl', TXMLTNFe_infNFeSupl);
  RegisterChildNode('Signature', TXMLSignatureType_ds);
  inherited;
end;

function TXMLTNFe.Get_InfNFe: IXMLTNFe_infNFe;
begin
  Result := ChildNodes['infNFe'] as IXMLTNFe_infNFe;
end;

function TXMLTNFe.Get_InfNFeSupl: IXMLTNFe_infNFeSupl;
begin
  Result := ChildNodes['infNFeSupl'] as IXMLTNFe_infNFeSupl;
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

{ TXMLTNFe_infNFe }

procedure TXMLTNFe_infNFe.AfterConstruction;
begin
  RegisterChildNode('ide', TXMLTNFe_infNFe_ide);
  RegisterChildNode('emit', TXMLTNFe_infNFe_emit);
  RegisterChildNode('avulsa', TXMLTNFe_infNFe_avulsa);
  RegisterChildNode('dest', TXMLTNFe_infNFe_dest);
  RegisterChildNode('retirada', TXMLTLocal);
  RegisterChildNode('entrega', TXMLTLocal);
  RegisterChildNode('autXML', TXMLTNFe_infNFe_autXML);
  RegisterChildNode('det', TXMLTNFe_infNFe_det);
  RegisterChildNode('total', TXMLTNFe_infNFe_total);
  RegisterChildNode('transp', TXMLTNFe_infNFe_transp);
  RegisterChildNode('cobr', TXMLTNFe_infNFe_cobr);
  RegisterChildNode('pag', TXMLTNFe_infNFe_pag);
  RegisterChildNode('infAdic', TXMLTNFe_infNFe_infAdic);
  RegisterChildNode('exporta', TXMLTNFe_infNFe_exporta);
  RegisterChildNode('compra', TXMLTNFe_infNFe_compra);
  RegisterChildNode('cana', TXMLTNFe_infNFe_cana);
  FAutXML := CreateCollection(TXMLTNFe_infNFe_autXMLList, IXMLTNFe_infNFe_autXML, 'autXML') as IXMLTNFe_infNFe_autXMLList;
  FDet := CreateCollection(TXMLTNFe_infNFe_detList, IXMLTNFe_infNFe_det, 'det') as IXMLTNFe_infNFe_detList;
  FPag := CreateCollection(TXMLTNFe_infNFe_pagList, IXMLTNFe_infNFe_pag, 'pag') as IXMLTNFe_infNFe_pagList;
  inherited;
end;

function TXMLTNFe_infNFe.Get_Versao: WideString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTNFe_infNFe.Set_Versao(Value: WideString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTNFe_infNFe.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLTNFe_infNFe.Set_Id(Value: WideString);
begin
  SetAttribute('Id', Value);
end;

function TXMLTNFe_infNFe.Get_Ide: IXMLTNFe_infNFe_ide;
begin
  Result := ChildNodes['ide'] as IXMLTNFe_infNFe_ide;
end;

function TXMLTNFe_infNFe.Get_Emit: IXMLTNFe_infNFe_emit;
begin
  Result := ChildNodes['emit'] as IXMLTNFe_infNFe_emit;
end;

function TXMLTNFe_infNFe.Get_Avulsa: IXMLTNFe_infNFe_avulsa;
begin
  Result := ChildNodes['avulsa'] as IXMLTNFe_infNFe_avulsa;
end;

function TXMLTNFe_infNFe.Get_Dest: IXMLTNFe_infNFe_dest;
begin
  Result := ChildNodes['dest'] as IXMLTNFe_infNFe_dest;
end;

function TXMLTNFe_infNFe.Get_Retirada: IXMLTLocal;
begin
  Result := ChildNodes['retirada'] as IXMLTLocal;
end;

function TXMLTNFe_infNFe.Get_Entrega: IXMLTLocal;
begin
  Result := ChildNodes['entrega'] as IXMLTLocal;
end;

function TXMLTNFe_infNFe.Get_AutXML: IXMLTNFe_infNFe_autXMLList;
begin
  Result := FAutXML;
end;

function TXMLTNFe_infNFe.Get_Det: IXMLTNFe_infNFe_detList;
begin
  Result := FDet;
end;

function TXMLTNFe_infNFe.Get_Total: IXMLTNFe_infNFe_total;
begin
  Result := ChildNodes['total'] as IXMLTNFe_infNFe_total;
end;

function TXMLTNFe_infNFe.Get_Transp: IXMLTNFe_infNFe_transp;
begin
  Result := ChildNodes['transp'] as IXMLTNFe_infNFe_transp;
end;

function TXMLTNFe_infNFe.Get_Cobr: IXMLTNFe_infNFe_cobr;
begin
  Result := ChildNodes['cobr'] as IXMLTNFe_infNFe_cobr;
end;

function TXMLTNFe_infNFe.Get_Pag: IXMLTNFe_infNFe_pagList;
begin
  Result := FPag;
end;

function TXMLTNFe_infNFe.Get_InfAdic: IXMLTNFe_infNFe_infAdic;
begin
  Result := ChildNodes['infAdic'] as IXMLTNFe_infNFe_infAdic;
end;

function TXMLTNFe_infNFe.Get_Exporta: IXMLTNFe_infNFe_exporta;
begin
  Result := ChildNodes['exporta'] as IXMLTNFe_infNFe_exporta;
end;

function TXMLTNFe_infNFe.Get_Compra: IXMLTNFe_infNFe_compra;
begin
  Result := ChildNodes['compra'] as IXMLTNFe_infNFe_compra;
end;

function TXMLTNFe_infNFe.Get_Cana: IXMLTNFe_infNFe_cana;
begin
  Result := ChildNodes['cana'] as IXMLTNFe_infNFe_cana;
end;

{ TXMLTNFe_infNFe_ide }

procedure TXMLTNFe_infNFe_ide.AfterConstruction;
begin
  RegisterChildNode('NFref', TXMLTNFe_infNFe_ide_NFref);
  FNFref := CreateCollection(TXMLTNFe_infNFe_ide_NFrefList, IXMLTNFe_infNFe_ide_NFref, 'NFref') as IXMLTNFe_infNFe_ide_NFrefList;
  inherited;
end;

function TXMLTNFe_infNFe_ide.Get_CUF: WideString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_CUF(Value: WideString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_CNF: WideString;
begin
  Result := ChildNodes['cNF'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_CNF(Value: WideString);
begin
  ChildNodes['cNF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_NatOp: WideString;
begin
  Result := ChildNodes['natOp'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_NatOp(Value: WideString);
begin
  ChildNodes['natOp'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_IndPag: WideString;
begin
  Result := ChildNodes['indPag'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_IndPag(Value: WideString);
begin
  ChildNodes['indPag'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_Mod_: WideString;
begin
  Result := ChildNodes['mod'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_Mod_(Value: WideString);
begin
  ChildNodes['mod'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_Serie: WideString;
begin
  Result := ChildNodes['serie'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_Serie(Value: WideString);
begin
  ChildNodes['serie'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_NNF: WideString;
begin
  Result := ChildNodes['nNF'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_NNF(Value: WideString);
begin
  ChildNodes['nNF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_DhEmi: WideString;
begin
  Result := ChildNodes['dhEmi'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_DhEmi(Value: WideString);
begin
  ChildNodes['dhEmi'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_DhSaiEnt: WideString;
begin
  Result := ChildNodes['dhSaiEnt'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_DhSaiEnt(Value: WideString);
begin
  ChildNodes['dhSaiEnt'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_TpNF: WideString;
begin
  Result := ChildNodes['tpNF'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_TpNF(Value: WideString);
begin
  ChildNodes['tpNF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_IdDest: WideString;
begin
  Result := ChildNodes['idDest'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_IdDest(Value: WideString);
begin
  ChildNodes['idDest'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_CMunFG: WideString;
begin
  Result := ChildNodes['cMunFG'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_CMunFG(Value: WideString);
begin
  ChildNodes['cMunFG'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_TpImp: WideString;
begin
  Result := ChildNodes['tpImp'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_TpImp(Value: WideString);
begin
  ChildNodes['tpImp'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_TpEmis: WideString;
begin
  Result := ChildNodes['tpEmis'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_TpEmis(Value: WideString);
begin
  ChildNodes['tpEmis'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_CDV: WideString;
begin
  Result := ChildNodes['cDV'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_CDV(Value: WideString);
begin
  ChildNodes['cDV'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_TpAmb: WideString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_TpAmb(Value: WideString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_FinNFe: WideString;
begin
  Result := ChildNodes['finNFe'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_FinNFe(Value: WideString);
begin
  ChildNodes['finNFe'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_IndFinal: WideString;
begin
  Result := ChildNodes['indFinal'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_IndFinal(Value: WideString);
begin
  ChildNodes['indFinal'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_IndPres: WideString;
begin
  Result := ChildNodes['indPres'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_IndPres(Value: WideString);
begin
  ChildNodes['indPres'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_ProcEmi: WideString;
begin
  Result := ChildNodes['procEmi'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_ProcEmi(Value: WideString);
begin
  ChildNodes['procEmi'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_VerProc: WideString;
begin
  Result := ChildNodes['verProc'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_VerProc(Value: WideString);
begin
  ChildNodes['verProc'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_DhCont: WideString;
begin
  Result := ChildNodes['dhCont'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_DhCont(Value: WideString);
begin
  ChildNodes['dhCont'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_XJust: WideString;
begin
  Result := ChildNodes['xJust'].Text;
end;

procedure TXMLTNFe_infNFe_ide.Set_XJust(Value: WideString);
begin
  ChildNodes['xJust'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide.Get_NFref: IXMLTNFe_infNFe_ide_NFrefList;
begin
  Result := FNFref;
end;

{ TXMLTNFe_infNFe_ide_NFref }

procedure TXMLTNFe_infNFe_ide_NFref.AfterConstruction;
begin
  RegisterChildNode('refNF', TXMLTNFe_infNFe_ide_NFref_refNF);
  RegisterChildNode('refNFP', TXMLTNFe_infNFe_ide_NFref_refNFP);
  RegisterChildNode('refECF', TXMLTNFe_infNFe_ide_NFref_refECF);
  inherited;
end;

function TXMLTNFe_infNFe_ide_NFref.Get_RefNFe: WideString;
begin
  Result := ChildNodes['refNFe'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref.Set_RefNFe(Value: WideString);
begin
  ChildNodes['refNFe'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref.Get_RefNF: IXMLTNFe_infNFe_ide_NFref_refNF;
begin
  Result := ChildNodes['refNF'] as IXMLTNFe_infNFe_ide_NFref_refNF;
end;

function TXMLTNFe_infNFe_ide_NFref.Get_RefNFP: IXMLTNFe_infNFe_ide_NFref_refNFP;
begin
  Result := ChildNodes['refNFP'] as IXMLTNFe_infNFe_ide_NFref_refNFP;
end;

function TXMLTNFe_infNFe_ide_NFref.Get_RefCTe: WideString;
begin
  Result := ChildNodes['refCTe'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref.Set_RefCTe(Value: WideString);
begin
  ChildNodes['refCTe'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref.Get_RefECF: IXMLTNFe_infNFe_ide_NFref_refECF;
begin
  Result := ChildNodes['refECF'] as IXMLTNFe_infNFe_ide_NFref_refECF;
end;

{ TXMLTNFe_infNFe_ide_NFrefList }

function TXMLTNFe_infNFe_ide_NFrefList.Add: IXMLTNFe_infNFe_ide_NFref;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_ide_NFref;
end;

function TXMLTNFe_infNFe_ide_NFrefList.Insert(const Index: Integer): IXMLTNFe_infNFe_ide_NFref;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_ide_NFref;
end;

function TXMLTNFe_infNFe_ide_NFrefList.Get_Item(Index: Integer): IXMLTNFe_infNFe_ide_NFref;
begin
  Result := List[Index] as IXMLTNFe_infNFe_ide_NFref;
end;

{ TXMLTNFe_infNFe_ide_NFref_refNF }

function TXMLTNFe_infNFe_ide_NFref_refNF.Get_CUF: WideString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNF.Set_CUF(Value: WideString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refNF.Get_AAMM: WideString;
begin
  Result := ChildNodes['AAMM'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNF.Set_AAMM(Value: WideString);
begin
  ChildNodes['AAMM'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refNF.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNF.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refNF.Get_Mod_: WideString;
begin
  Result := ChildNodes['mod'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNF.Set_Mod_(Value: WideString);
begin
  ChildNodes['mod'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refNF.Get_Serie: WideString;
begin
  Result := ChildNodes['serie'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNF.Set_Serie(Value: WideString);
begin
  ChildNodes['serie'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refNF.Get_NNF: WideString;
begin
  Result := ChildNodes['nNF'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNF.Set_NNF(Value: WideString);
begin
  ChildNodes['nNF'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_ide_NFref_refNFP }

function TXMLTNFe_infNFe_ide_NFref_refNFP.Get_CUF: WideString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNFP.Set_CUF(Value: WideString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refNFP.Get_AAMM: WideString;
begin
  Result := ChildNodes['AAMM'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNFP.Set_AAMM(Value: WideString);
begin
  ChildNodes['AAMM'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refNFP.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNFP.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refNFP.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNFP.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refNFP.Get_IE: WideString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNFP.Set_IE(Value: WideString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refNFP.Get_Mod_: WideString;
begin
  Result := ChildNodes['mod'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNFP.Set_Mod_(Value: WideString);
begin
  ChildNodes['mod'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refNFP.Get_Serie: WideString;
begin
  Result := ChildNodes['serie'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNFP.Set_Serie(Value: WideString);
begin
  ChildNodes['serie'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refNFP.Get_NNF: WideString;
begin
  Result := ChildNodes['nNF'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refNFP.Set_NNF(Value: WideString);
begin
  ChildNodes['nNF'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_ide_NFref_refECF }

function TXMLTNFe_infNFe_ide_NFref_refECF.Get_Mod_: WideString;
begin
  Result := ChildNodes['mod'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refECF.Set_Mod_(Value: WideString);
begin
  ChildNodes['mod'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refECF.Get_NECF: WideString;
begin
  Result := ChildNodes['nECF'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refECF.Set_NECF(Value: WideString);
begin
  ChildNodes['nECF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_ide_NFref_refECF.Get_NCOO: WideString;
begin
  Result := ChildNodes['nCOO'].Text;
end;

procedure TXMLTNFe_infNFe_ide_NFref_refECF.Set_NCOO(Value: WideString);
begin
  ChildNodes['nCOO'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_emit }

procedure TXMLTNFe_infNFe_emit.AfterConstruction;
begin
  RegisterChildNode('enderEmit', TXMLTEnderEmi);
  inherited;
end;

function TXMLTNFe_infNFe_emit.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTNFe_infNFe_emit.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_emit.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLTNFe_infNFe_emit.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_emit.Get_XNome: WideString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLTNFe_infNFe_emit.Set_XNome(Value: WideString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_emit.Get_XFant: WideString;
begin
  Result := ChildNodes['xFant'].Text;
end;

procedure TXMLTNFe_infNFe_emit.Set_XFant(Value: WideString);
begin
  ChildNodes['xFant'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_emit.Get_EnderEmit: IXMLTEnderEmi;
begin
  Result := ChildNodes['enderEmit'] as IXMLTEnderEmi;
end;

function TXMLTNFe_infNFe_emit.Get_IE: WideString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLTNFe_infNFe_emit.Set_IE(Value: WideString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_emit.Get_IEST: WideString;
begin
  Result := ChildNodes['IEST'].Text;
end;

procedure TXMLTNFe_infNFe_emit.Set_IEST(Value: WideString);
begin
  ChildNodes['IEST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_emit.Get_IM: WideString;
begin
  Result := ChildNodes['IM'].Text;
end;

procedure TXMLTNFe_infNFe_emit.Set_IM(Value: WideString);
begin
  ChildNodes['IM'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_emit.Get_CNAE: WideString;
begin
  Result := ChildNodes['CNAE'].Text;
end;

procedure TXMLTNFe_infNFe_emit.Set_CNAE(Value: WideString);
begin
  ChildNodes['CNAE'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_emit.Get_CRT: WideString;
begin
  Result := ChildNodes['CRT'].Text;
end;

procedure TXMLTNFe_infNFe_emit.Set_CRT(Value: WideString);
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

{ TXMLTNFe_infNFe_avulsa }

function TXMLTNFe_infNFe_avulsa.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTNFe_infNFe_avulsa.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_avulsa.Get_XOrgao: WideString;
begin
  Result := ChildNodes['xOrgao'].Text;
end;

procedure TXMLTNFe_infNFe_avulsa.Set_XOrgao(Value: WideString);
begin
  ChildNodes['xOrgao'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_avulsa.Get_Matr: WideString;
begin
  Result := ChildNodes['matr'].Text;
end;

procedure TXMLTNFe_infNFe_avulsa.Set_Matr(Value: WideString);
begin
  ChildNodes['matr'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_avulsa.Get_XAgente: WideString;
begin
  Result := ChildNodes['xAgente'].Text;
end;

procedure TXMLTNFe_infNFe_avulsa.Set_XAgente(Value: WideString);
begin
  ChildNodes['xAgente'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_avulsa.Get_Fone: WideString;
begin
  Result := ChildNodes['fone'].Text;
end;

procedure TXMLTNFe_infNFe_avulsa.Set_Fone(Value: WideString);
begin
  ChildNodes['fone'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_avulsa.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTNFe_infNFe_avulsa.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_avulsa.Get_NDAR: WideString;
begin
  Result := ChildNodes['nDAR'].Text;
end;

procedure TXMLTNFe_infNFe_avulsa.Set_NDAR(Value: WideString);
begin
  ChildNodes['nDAR'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_avulsa.Get_DEmi: WideString;
begin
  Result := ChildNodes['dEmi'].Text;
end;

procedure TXMLTNFe_infNFe_avulsa.Set_DEmi(Value: WideString);
begin
  ChildNodes['dEmi'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_avulsa.Get_VDAR: WideString;
begin
  Result := ChildNodes['vDAR'].Text;
end;

procedure TXMLTNFe_infNFe_avulsa.Set_VDAR(Value: WideString);
begin
  ChildNodes['vDAR'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_avulsa.Get_RepEmi: WideString;
begin
  Result := ChildNodes['repEmi'].Text;
end;

procedure TXMLTNFe_infNFe_avulsa.Set_RepEmi(Value: WideString);
begin
  ChildNodes['repEmi'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_avulsa.Get_DPag: WideString;
begin
  Result := ChildNodes['dPag'].Text;
end;

procedure TXMLTNFe_infNFe_avulsa.Set_DPag(Value: WideString);
begin
  ChildNodes['dPag'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_dest }

procedure TXMLTNFe_infNFe_dest.AfterConstruction;
begin
  RegisterChildNode('enderDest', TXMLTEndereco);
  inherited;
end;

function TXMLTNFe_infNFe_dest.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTNFe_infNFe_dest.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_dest.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLTNFe_infNFe_dest.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_dest.Get_IdEstrangeiro: WideString;
begin
  Result := ChildNodes['idEstrangeiro'].Text;
end;

procedure TXMLTNFe_infNFe_dest.Set_IdEstrangeiro(Value: WideString);
begin
  ChildNodes['idEstrangeiro'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_dest.Get_XNome: WideString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLTNFe_infNFe_dest.Set_XNome(Value: WideString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_dest.Get_EnderDest: IXMLTEndereco;
begin
  Result := ChildNodes['enderDest'] as IXMLTEndereco;
end;

function TXMLTNFe_infNFe_dest.Get_IndIEDest: WideString;
begin
  Result := ChildNodes['indIEDest'].Text;
end;

procedure TXMLTNFe_infNFe_dest.Set_IndIEDest(Value: WideString);
begin
  ChildNodes['indIEDest'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_dest.Get_IE: WideString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLTNFe_infNFe_dest.Set_IE(Value: WideString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_dest.Get_ISUF: WideString;
begin
  Result := ChildNodes['ISUF'].Text;
end;

procedure TXMLTNFe_infNFe_dest.Set_ISUF(Value: WideString);
begin
  ChildNodes['ISUF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_dest.Get_IM: WideString;
begin
  Result := ChildNodes['IM'].Text;
end;

procedure TXMLTNFe_infNFe_dest.Set_IM(Value: WideString);
begin
  ChildNodes['IM'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_dest.Get_Email: WideString;
begin
  Result := ChildNodes['email'].Text;
end;

procedure TXMLTNFe_infNFe_dest.Set_Email(Value: WideString);
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

{ TXMLTNFe_infNFe_autXML }

function TXMLTNFe_infNFe_autXML.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTNFe_infNFe_autXML.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_autXML.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLTNFe_infNFe_autXML.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_autXMLList }

function TXMLTNFe_infNFe_autXMLList.Add: IXMLTNFe_infNFe_autXML;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_autXML;
end;

function TXMLTNFe_infNFe_autXMLList.Insert(const Index: Integer): IXMLTNFe_infNFe_autXML;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_autXML;
end;

function TXMLTNFe_infNFe_autXMLList.Get_Item(Index: Integer): IXMLTNFe_infNFe_autXML;
begin
  Result := List[Index] as IXMLTNFe_infNFe_autXML;
end;

{ TXMLTNFe_infNFe_det }

procedure TXMLTNFe_infNFe_det.AfterConstruction;
begin
  RegisterChildNode('prod', TXMLTNFe_infNFe_det_prod);
  RegisterChildNode('imposto', TXMLTNFe_infNFe_det_imposto);
  RegisterChildNode('impostoDevol', TXMLTNFe_infNFe_det_impostoDevol);
  inherited;
end;

function TXMLTNFe_infNFe_det.Get_NItem: WideString;
begin
  Result := AttributeNodes['nItem'].Text;
end;

procedure TXMLTNFe_infNFe_det.Set_NItem(Value: WideString);
begin
  SetAttribute('nItem', Value);
end;

function TXMLTNFe_infNFe_det.Get_Prod: IXMLTNFe_infNFe_det_prod;
begin
  Result := ChildNodes['prod'] as IXMLTNFe_infNFe_det_prod;
end;

function TXMLTNFe_infNFe_det.Get_Imposto: IXMLTNFe_infNFe_det_imposto;
begin
  Result := ChildNodes['imposto'] as IXMLTNFe_infNFe_det_imposto;
end;

function TXMLTNFe_infNFe_det.Get_ImpostoDevol: IXMLTNFe_infNFe_det_impostoDevol;
begin
  Result := ChildNodes['impostoDevol'] as IXMLTNFe_infNFe_det_impostoDevol;
end;

function TXMLTNFe_infNFe_det.Get_InfAdProd: WideString;
begin
  Result := ChildNodes['infAdProd'].Text;
end;

procedure TXMLTNFe_infNFe_det.Set_InfAdProd(Value: WideString);
begin
  ChildNodes['infAdProd'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_detList }

function TXMLTNFe_infNFe_detList.Add: IXMLTNFe_infNFe_det;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_det;
end;

function TXMLTNFe_infNFe_detList.Insert(const Index: Integer): IXMLTNFe_infNFe_det;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_det;
end;

function TXMLTNFe_infNFe_detList.Get_Item(Index: Integer): IXMLTNFe_infNFe_det;
begin
  Result := List[Index] as IXMLTNFe_infNFe_det;
end;

{ TXMLTNFe_infNFe_det_prod }

procedure TXMLTNFe_infNFe_det_prod.AfterConstruction;
begin
  RegisterChildNode('DI', TXMLTNFe_infNFe_det_prod_DI);
  RegisterChildNode('detExport', TXMLTNFe_infNFe_det_prod_detExport);
  RegisterChildNode('veicProd', TXMLTNFe_infNFe_det_prod_veicProd);
  RegisterChildNode('med', TXMLTNFe_infNFe_det_prod_med);
  RegisterChildNode('arma', TXMLTNFe_infNFe_det_prod_arma);
  RegisterChildNode('comb', TXMLTNFe_infNFe_det_prod_comb);
  FNVE := CreateCollection(TXMLTNFe_infNFe_det_prod_NVEList, IXMLNode, 'NVE') as IXMLTNFe_infNFe_det_prod_NVEList;
  FDI := CreateCollection(TXMLTNFe_infNFe_det_prod_DIList, IXMLTNFe_infNFe_det_prod_DI, 'DI') as IXMLTNFe_infNFe_det_prod_DIList;
  FDetExport := CreateCollection(TXMLTNFe_infNFe_det_prod_detExportList, IXMLTNFe_infNFe_det_prod_detExport, 'detExport') as IXMLTNFe_infNFe_det_prod_detExportList;
  FMed := CreateCollection(TXMLTNFe_infNFe_det_prod_medList, IXMLTNFe_infNFe_det_prod_med, 'med') as IXMLTNFe_infNFe_det_prod_medList;
  FArma := CreateCollection(TXMLTNFe_infNFe_det_prod_armaList, IXMLTNFe_infNFe_det_prod_arma, 'arma') as IXMLTNFe_infNFe_det_prod_armaList;
  inherited;
end;

function TXMLTNFe_infNFe_det_prod.Get_CProd: WideString;
begin
  Result := ChildNodes['cProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_CProd(Value: WideString);
begin
  ChildNodes['cProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_CEAN: WideString;
begin
  Result := ChildNodes['cEAN'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_CEAN(Value: WideString);
begin
  ChildNodes['cEAN'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_XProd: WideString;
begin
  Result := ChildNodes['xProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_XProd(Value: WideString);
begin
  ChildNodes['xProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_NCM: WideString;
begin
  Result := ChildNodes['NCM'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_NCM(Value: WideString);
begin
  ChildNodes['NCM'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_NVE: IXMLTNFe_infNFe_det_prod_NVEList;
begin
  Result := FNVE;
end;

function TXMLTNFe_infNFe_det_prod.Get_CEST: WideString;
begin
  Result := ChildNodes['CEST'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_CEST(Value: WideString);
begin
  ChildNodes['CEST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_EXTIPI: WideString;
begin
  Result := ChildNodes['EXTIPI'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_EXTIPI(Value: WideString);
begin
  ChildNodes['EXTIPI'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_CFOP: WideString;
begin
  Result := ChildNodes['CFOP'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_CFOP(Value: WideString);
begin
  ChildNodes['CFOP'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_UCom: WideString;
begin
  Result := ChildNodes['uCom'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_UCom(Value: WideString);
begin
  ChildNodes['uCom'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_QCom: WideString;
begin
  Result := ChildNodes['qCom'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_QCom(Value: WideString);
begin
  ChildNodes['qCom'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_VUnCom: WideString;
begin
  Result := ChildNodes['vUnCom'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_VUnCom(Value: WideString);
begin
  ChildNodes['vUnCom'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_VProd: WideString;
begin
  Result := ChildNodes['vProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_VProd(Value: WideString);
begin
  ChildNodes['vProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_CEANTrib: WideString;
begin
  Result := ChildNodes['cEANTrib'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_CEANTrib(Value: WideString);
begin
  ChildNodes['cEANTrib'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_UTrib: WideString;
begin
  Result := ChildNodes['uTrib'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_UTrib(Value: WideString);
begin
  ChildNodes['uTrib'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_QTrib: WideString;
begin
  Result := ChildNodes['qTrib'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_QTrib(Value: WideString);
begin
  ChildNodes['qTrib'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_VUnTrib: WideString;
begin
  Result := ChildNodes['vUnTrib'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_VUnTrib(Value: WideString);
begin
  ChildNodes['vUnTrib'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_VFrete: WideString;
begin
  Result := ChildNodes['vFrete'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_VFrete(Value: WideString);
begin
  ChildNodes['vFrete'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_VSeg: WideString;
begin
  Result := ChildNodes['vSeg'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_VSeg(Value: WideString);
begin
  ChildNodes['vSeg'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_VDesc: WideString;
begin
  Result := ChildNodes['vDesc'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_VDesc(Value: WideString);
begin
  ChildNodes['vDesc'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_VOutro: WideString;
begin
  Result := ChildNodes['vOutro'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_VOutro(Value: WideString);
begin
  ChildNodes['vOutro'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_IndTot: WideString;
begin
  Result := ChildNodes['indTot'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_IndTot(Value: WideString);
begin
  ChildNodes['indTot'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_DI: IXMLTNFe_infNFe_det_prod_DIList;
begin
  Result := FDI;
end;

function TXMLTNFe_infNFe_det_prod.Get_DetExport: IXMLTNFe_infNFe_det_prod_detExportList;
begin
  Result := FDetExport;
end;

function TXMLTNFe_infNFe_det_prod.Get_XPed: WideString;
begin
  Result := ChildNodes['xPed'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_XPed(Value: WideString);
begin
  ChildNodes['xPed'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_NItemPed: WideString;
begin
  Result := ChildNodes['nItemPed'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_NItemPed(Value: WideString);
begin
  ChildNodes['nItemPed'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_NFCI: WideString;
begin
  Result := ChildNodes['nFCI'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_NFCI(Value: WideString);
begin
  ChildNodes['nFCI'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod.Get_VeicProd: IXMLTNFe_infNFe_det_prod_veicProd;
begin
  Result := ChildNodes['veicProd'] as IXMLTNFe_infNFe_det_prod_veicProd;
end;

function TXMLTNFe_infNFe_det_prod.Get_Med: IXMLTNFe_infNFe_det_prod_medList;
begin
  Result := FMed;
end;

function TXMLTNFe_infNFe_det_prod.Get_Arma: IXMLTNFe_infNFe_det_prod_armaList;
begin
  Result := FArma;
end;

function TXMLTNFe_infNFe_det_prod.Get_Comb: IXMLTNFe_infNFe_det_prod_comb;
begin
  Result := ChildNodes['comb'] as IXMLTNFe_infNFe_det_prod_comb;
end;

function TXMLTNFe_infNFe_det_prod.Get_NRECOPI: WideString;
begin
  Result := ChildNodes['nRECOPI'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod.Set_NRECOPI(Value: WideString);
begin
  ChildNodes['nRECOPI'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_prod_DI }

procedure TXMLTNFe_infNFe_det_prod_DI.AfterConstruction;
begin
  RegisterChildNode('adi', TXMLTNFe_infNFe_det_prod_DI_adi);
  FAdi := CreateCollection(TXMLTNFe_infNFe_det_prod_DI_adiList, IXMLTNFe_infNFe_det_prod_DI_adi, 'adi') as IXMLTNFe_infNFe_det_prod_DI_adiList;
  inherited;
end;

function TXMLTNFe_infNFe_det_prod_DI.Get_NDI: WideString;
begin
  Result := ChildNodes['nDI'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI.Set_NDI(Value: WideString);
begin
  ChildNodes['nDI'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI.Get_DDI: WideString;
begin
  Result := ChildNodes['dDI'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI.Set_DDI(Value: WideString);
begin
  ChildNodes['dDI'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI.Get_XLocDesemb: WideString;
begin
  Result := ChildNodes['xLocDesemb'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI.Set_XLocDesemb(Value: WideString);
begin
  ChildNodes['xLocDesemb'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI.Get_UFDesemb: WideString;
begin
  Result := ChildNodes['UFDesemb'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI.Set_UFDesemb(Value: WideString);
begin
  ChildNodes['UFDesemb'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI.Get_DDesemb: WideString;
begin
  Result := ChildNodes['dDesemb'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI.Set_DDesemb(Value: WideString);
begin
  ChildNodes['dDesemb'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI.Get_TpViaTransp: WideString;
begin
  Result := ChildNodes['tpViaTransp'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI.Set_TpViaTransp(Value: WideString);
begin
  ChildNodes['tpViaTransp'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI.Get_VAFRMM: WideString;
begin
  Result := ChildNodes['vAFRMM'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI.Set_VAFRMM(Value: WideString);
begin
  ChildNodes['vAFRMM'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI.Get_TpIntermedio: WideString;
begin
  Result := ChildNodes['tpIntermedio'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI.Set_TpIntermedio(Value: WideString);
begin
  ChildNodes['tpIntermedio'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI.Get_UFTerceiro: WideString;
begin
  Result := ChildNodes['UFTerceiro'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI.Set_UFTerceiro(Value: WideString);
begin
  ChildNodes['UFTerceiro'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI.Get_CExportador: WideString;
begin
  Result := ChildNodes['cExportador'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI.Set_CExportador(Value: WideString);
begin
  ChildNodes['cExportador'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI.Get_Adi: IXMLTNFe_infNFe_det_prod_DI_adiList;
begin
  Result := FAdi;
end;

{ TXMLTNFe_infNFe_det_prod_DIList }

function TXMLTNFe_infNFe_det_prod_DIList.Add: IXMLTNFe_infNFe_det_prod_DI;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_det_prod_DI;
end;

function TXMLTNFe_infNFe_det_prod_DIList.Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_DI;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_det_prod_DI;
end;

function TXMLTNFe_infNFe_det_prod_DIList.Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_DI;
begin
  Result := List[Index] as IXMLTNFe_infNFe_det_prod_DI;
end;

{ TXMLTNFe_infNFe_det_prod_DI_adi }

function TXMLTNFe_infNFe_det_prod_DI_adi.Get_NAdicao: WideString;
begin
  Result := ChildNodes['nAdicao'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI_adi.Set_NAdicao(Value: WideString);
begin
  ChildNodes['nAdicao'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI_adi.Get_NSeqAdic: WideString;
begin
  Result := ChildNodes['nSeqAdic'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI_adi.Set_NSeqAdic(Value: WideString);
begin
  ChildNodes['nSeqAdic'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI_adi.Get_CFabricante: WideString;
begin
  Result := ChildNodes['cFabricante'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI_adi.Set_CFabricante(Value: WideString);
begin
  ChildNodes['cFabricante'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI_adi.Get_VDescDI: WideString;
begin
  Result := ChildNodes['vDescDI'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI_adi.Set_VDescDI(Value: WideString);
begin
  ChildNodes['vDescDI'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_DI_adi.Get_NDraw: WideString;
begin
  Result := ChildNodes['nDraw'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_DI_adi.Set_NDraw(Value: WideString);
begin
  ChildNodes['nDraw'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_prod_DI_adiList }

function TXMLTNFe_infNFe_det_prod_DI_adiList.Add: IXMLTNFe_infNFe_det_prod_DI_adi;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_det_prod_DI_adi;
end;

function TXMLTNFe_infNFe_det_prod_DI_adiList.Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_DI_adi;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_det_prod_DI_adi;
end;

function TXMLTNFe_infNFe_det_prod_DI_adiList.Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_DI_adi;
begin
  Result := List[Index] as IXMLTNFe_infNFe_det_prod_DI_adi;
end;

{ TXMLTNFe_infNFe_det_prod_detExport }

procedure TXMLTNFe_infNFe_det_prod_detExport.AfterConstruction;
begin
  RegisterChildNode('exportInd', TXMLTNFe_infNFe_det_prod_detExport_exportInd);
  inherited;
end;

function TXMLTNFe_infNFe_det_prod_detExport.Get_NDraw: WideString;
begin
  Result := ChildNodes['nDraw'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_detExport.Set_NDraw(Value: WideString);
begin
  ChildNodes['nDraw'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_detExport.Get_ExportInd: IXMLTNFe_infNFe_det_prod_detExport_exportInd;
begin
  Result := ChildNodes['exportInd'] as IXMLTNFe_infNFe_det_prod_detExport_exportInd;
end;

{ TXMLTNFe_infNFe_det_prod_detExportList }

function TXMLTNFe_infNFe_det_prod_detExportList.Add: IXMLTNFe_infNFe_det_prod_detExport;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_det_prod_detExport;
end;

function TXMLTNFe_infNFe_det_prod_detExportList.Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_detExport;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_det_prod_detExport;
end;

function TXMLTNFe_infNFe_det_prod_detExportList.Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_detExport;
begin
  Result := List[Index] as IXMLTNFe_infNFe_det_prod_detExport;
end;

{ TXMLTNFe_infNFe_det_prod_detExport_exportInd }

function TXMLTNFe_infNFe_det_prod_detExport_exportInd.Get_NRE: WideString;
begin
  Result := ChildNodes['nRE'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_detExport_exportInd.Set_NRE(Value: WideString);
begin
  ChildNodes['nRE'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_detExport_exportInd.Get_ChNFe: WideString;
begin
  Result := ChildNodes['chNFe'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_detExport_exportInd.Set_ChNFe(Value: WideString);
begin
  ChildNodes['chNFe'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_detExport_exportInd.Get_QExport: WideString;
begin
  Result := ChildNodes['qExport'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_detExport_exportInd.Set_QExport(Value: WideString);
begin
  ChildNodes['qExport'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_prod_veicProd }

function TXMLTNFe_infNFe_det_prod_veicProd.Get_TpOp: WideString;
begin
  Result := ChildNodes['tpOp'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_TpOp(Value: WideString);
begin
  ChildNodes['tpOp'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_Chassi: WideString;
begin
  Result := ChildNodes['chassi'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_Chassi(Value: WideString);
begin
  ChildNodes['chassi'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_CCor: WideString;
begin
  Result := ChildNodes['cCor'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_CCor(Value: WideString);
begin
  ChildNodes['cCor'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_XCor: WideString;
begin
  Result := ChildNodes['xCor'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_XCor(Value: WideString);
begin
  ChildNodes['xCor'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_Pot: WideString;
begin
  Result := ChildNodes['pot'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_Pot(Value: WideString);
begin
  ChildNodes['pot'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_Cilin: WideString;
begin
  Result := ChildNodes['cilin'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_Cilin(Value: WideString);
begin
  ChildNodes['cilin'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_PesoL: WideString;
begin
  Result := ChildNodes['pesoL'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_PesoL(Value: WideString);
begin
  ChildNodes['pesoL'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_PesoB: WideString;
begin
  Result := ChildNodes['pesoB'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_PesoB(Value: WideString);
begin
  ChildNodes['pesoB'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_NSerie: WideString;
begin
  Result := ChildNodes['nSerie'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_NSerie(Value: WideString);
begin
  ChildNodes['nSerie'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_TpComb: WideString;
begin
  Result := ChildNodes['tpComb'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_TpComb(Value: WideString);
begin
  ChildNodes['tpComb'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_NMotor: WideString;
begin
  Result := ChildNodes['nMotor'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_NMotor(Value: WideString);
begin
  ChildNodes['nMotor'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_CMT: WideString;
begin
  Result := ChildNodes['CMT'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_CMT(Value: WideString);
begin
  ChildNodes['CMT'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_Dist: WideString;
begin
  Result := ChildNodes['dist'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_Dist(Value: WideString);
begin
  ChildNodes['dist'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_AnoMod: WideString;
begin
  Result := ChildNodes['anoMod'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_AnoMod(Value: WideString);
begin
  ChildNodes['anoMod'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_AnoFab: WideString;
begin
  Result := ChildNodes['anoFab'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_AnoFab(Value: WideString);
begin
  ChildNodes['anoFab'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_TpPint: WideString;
begin
  Result := ChildNodes['tpPint'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_TpPint(Value: WideString);
begin
  ChildNodes['tpPint'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_TpVeic: WideString;
begin
  Result := ChildNodes['tpVeic'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_TpVeic(Value: WideString);
begin
  ChildNodes['tpVeic'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_EspVeic: WideString;
begin
  Result := ChildNodes['espVeic'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_EspVeic(Value: WideString);
begin
  ChildNodes['espVeic'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_VIN: WideString;
begin
  Result := ChildNodes['VIN'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_VIN(Value: WideString);
begin
  ChildNodes['VIN'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_CondVeic: WideString;
begin
  Result := ChildNodes['condVeic'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_CondVeic(Value: WideString);
begin
  ChildNodes['condVeic'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_CMod: WideString;
begin
  Result := ChildNodes['cMod'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_CMod(Value: WideString);
begin
  ChildNodes['cMod'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_CCorDENATRAN: WideString;
begin
  Result := ChildNodes['cCorDENATRAN'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_CCorDENATRAN(Value: WideString);
begin
  ChildNodes['cCorDENATRAN'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_Lota: WideString;
begin
  Result := ChildNodes['lota'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_Lota(Value: WideString);
begin
  ChildNodes['lota'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_veicProd.Get_TpRest: WideString;
begin
  Result := ChildNodes['tpRest'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_veicProd.Set_TpRest(Value: WideString);
begin
  ChildNodes['tpRest'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_prod_med }

function TXMLTNFe_infNFe_det_prod_med.Get_NLote: WideString;
begin
  Result := ChildNodes['nLote'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_med.Set_NLote(Value: WideString);
begin
  ChildNodes['nLote'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_med.Get_QLote: WideString;
begin
  Result := ChildNodes['qLote'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_med.Set_QLote(Value: WideString);
begin
  ChildNodes['qLote'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_med.Get_DFab: WideString;
begin
  Result := ChildNodes['dFab'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_med.Set_DFab(Value: WideString);
begin
  ChildNodes['dFab'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_med.Get_DVal: WideString;
begin
  Result := ChildNodes['dVal'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_med.Set_DVal(Value: WideString);
begin
  ChildNodes['dVal'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_med.Get_VPMC: WideString;
begin
  Result := ChildNodes['vPMC'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_med.Set_VPMC(Value: WideString);
begin
  ChildNodes['vPMC'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_prod_medList }

function TXMLTNFe_infNFe_det_prod_medList.Add: IXMLTNFe_infNFe_det_prod_med;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_det_prod_med;
end;

function TXMLTNFe_infNFe_det_prod_medList.Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_med;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_det_prod_med;
end;

function TXMLTNFe_infNFe_det_prod_medList.Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_med;
begin
  Result := List[Index] as IXMLTNFe_infNFe_det_prod_med;
end;

{ TXMLTNFe_infNFe_det_prod_arma }

function TXMLTNFe_infNFe_det_prod_arma.Get_TpArma: WideString;
begin
  Result := ChildNodes['tpArma'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_arma.Set_TpArma(Value: WideString);
begin
  ChildNodes['tpArma'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_arma.Get_NSerie: WideString;
begin
  Result := ChildNodes['nSerie'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_arma.Set_NSerie(Value: WideString);
begin
  ChildNodes['nSerie'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_arma.Get_NCano: WideString;
begin
  Result := ChildNodes['nCano'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_arma.Set_NCano(Value: WideString);
begin
  ChildNodes['nCano'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_arma.Get_Descr: WideString;
begin
  Result := ChildNodes['descr'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_arma.Set_Descr(Value: WideString);
begin
  ChildNodes['descr'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_prod_armaList }

function TXMLTNFe_infNFe_det_prod_armaList.Add: IXMLTNFe_infNFe_det_prod_arma;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_det_prod_arma;
end;

function TXMLTNFe_infNFe_det_prod_armaList.Insert(const Index: Integer): IXMLTNFe_infNFe_det_prod_arma;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_det_prod_arma;
end;

function TXMLTNFe_infNFe_det_prod_armaList.Get_Item(Index: Integer): IXMLTNFe_infNFe_det_prod_arma;
begin
  Result := List[Index] as IXMLTNFe_infNFe_det_prod_arma;
end;

{ TXMLTNFe_infNFe_det_prod_comb }

procedure TXMLTNFe_infNFe_det_prod_comb.AfterConstruction;
begin
  RegisterChildNode('CIDE', TXMLTNFe_infNFe_det_prod_comb_CIDE);
  RegisterChildNode('encerrante', TXMLTNFe_infNFe_det_prod_comb_encerrante);
  inherited;
end;

function TXMLTNFe_infNFe_det_prod_comb.Get_CProdANP: WideString;
begin
  Result := ChildNodes['cProdANP'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_comb.Set_CProdANP(Value: WideString);
begin
  ChildNodes['cProdANP'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_comb.Get_PMixGN: WideString;
begin
  Result := ChildNodes['pMixGN'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_comb.Set_PMixGN(Value: WideString);
begin
  ChildNodes['pMixGN'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_comb.Get_CODIF: WideString;
begin
  Result := ChildNodes['CODIF'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_comb.Set_CODIF(Value: WideString);
begin
  ChildNodes['CODIF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_comb.Get_QTemp: WideString;
begin
  Result := ChildNodes['qTemp'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_comb.Set_QTemp(Value: WideString);
begin
  ChildNodes['qTemp'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_comb.Get_UFCons: WideString;
begin
  Result := ChildNodes['UFCons'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_comb.Set_UFCons(Value: WideString);
begin
  ChildNodes['UFCons'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_comb.Get_CIDE: IXMLTNFe_infNFe_det_prod_comb_CIDE;
begin
  Result := ChildNodes['CIDE'] as IXMLTNFe_infNFe_det_prod_comb_CIDE;
end;

function TXMLTNFe_infNFe_det_prod_comb.Get_Encerrante: IXMLTNFe_infNFe_det_prod_comb_encerrante;
begin
  Result := ChildNodes['encerrante'] as IXMLTNFe_infNFe_det_prod_comb_encerrante;
end;

{ TXMLTNFe_infNFe_det_prod_comb_CIDE }

function TXMLTNFe_infNFe_det_prod_comb_CIDE.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_comb_CIDE.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_comb_CIDE.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_comb_CIDE.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_comb_CIDE.Get_VCIDE: WideString;
begin
  Result := ChildNodes['vCIDE'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_comb_CIDE.Set_VCIDE(Value: WideString);
begin
  ChildNodes['vCIDE'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_prod_comb_encerrante }

function TXMLTNFe_infNFe_det_prod_comb_encerrante.Get_NBico: WideString;
begin
  Result := ChildNodes['nBico'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_comb_encerrante.Set_NBico(Value: WideString);
begin
  ChildNodes['nBico'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_comb_encerrante.Get_NBomba: WideString;
begin
  Result := ChildNodes['nBomba'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_comb_encerrante.Set_NBomba(Value: WideString);
begin
  ChildNodes['nBomba'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_comb_encerrante.Get_NTanque: WideString;
begin
  Result := ChildNodes['nTanque'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_comb_encerrante.Set_NTanque(Value: WideString);
begin
  ChildNodes['nTanque'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_comb_encerrante.Get_VEncIni: WideString;
begin
  Result := ChildNodes['vEncIni'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_comb_encerrante.Set_VEncIni(Value: WideString);
begin
  ChildNodes['vEncIni'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_comb_encerrante.Get_VEncFin: WideString;
begin
  Result := ChildNodes['vEncFin'].Text;
end;

procedure TXMLTNFe_infNFe_det_prod_comb_encerrante.Set_VEncFin(Value: WideString);
begin
  ChildNodes['vEncFin'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto }

procedure TXMLTNFe_infNFe_det_imposto.AfterConstruction;
begin
  RegisterChildNode('ICMS', TXMLTNFe_infNFe_det_imposto_ICMS);
  RegisterChildNode('IPI', TXMLTIpi);
  RegisterChildNode('II', TXMLTNFe_infNFe_det_imposto_II);
  RegisterChildNode('ISSQN', TXMLTNFe_infNFe_det_imposto_ISSQN);
  RegisterChildNode('PIS', TXMLTNFe_infNFe_det_imposto_PIS);
  RegisterChildNode('PISST', TXMLTNFe_infNFe_det_imposto_PISST);
  RegisterChildNode('COFINS', TXMLTNFe_infNFe_det_imposto_COFINS);
  RegisterChildNode('COFINSST', TXMLTNFe_infNFe_det_imposto_COFINSST);
  RegisterChildNode('ICMSUFDest', TXMLTNFe_infNFe_det_imposto_ICMSUFDest);
  inherited;
end;

function TXMLTNFe_infNFe_det_imposto.Get_VTotTrib: WideString;
begin
  Result := ChildNodes['vTotTrib'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto.Set_VTotTrib(Value: WideString);
begin
  ChildNodes['vTotTrib'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto.Get_ICMS: IXMLTNFe_infNFe_det_imposto_ICMS;
begin
  Result := ChildNodes['ICMS'] as IXMLTNFe_infNFe_det_imposto_ICMS;
end;

function TXMLTNFe_infNFe_det_imposto.Get_IPI: IXMLTIpi;
begin
  Result := ChildNodes['IPI'] as IXMLTIpi;
end;

function TXMLTNFe_infNFe_det_imposto.Get_II: IXMLTNFe_infNFe_det_imposto_II;
begin
  Result := ChildNodes['II'] as IXMLTNFe_infNFe_det_imposto_II;
end;

function TXMLTNFe_infNFe_det_imposto.Get_ISSQN: IXMLTNFe_infNFe_det_imposto_ISSQN;
begin
  Result := ChildNodes['ISSQN'] as IXMLTNFe_infNFe_det_imposto_ISSQN;
end;

function TXMLTNFe_infNFe_det_imposto.Get_PIS: IXMLTNFe_infNFe_det_imposto_PIS;
begin
  Result := ChildNodes['PIS'] as IXMLTNFe_infNFe_det_imposto_PIS;
end;

function TXMLTNFe_infNFe_det_imposto.Get_PISST: IXMLTNFe_infNFe_det_imposto_PISST;
begin
  Result := ChildNodes['PISST'] as IXMLTNFe_infNFe_det_imposto_PISST;
end;

function TXMLTNFe_infNFe_det_imposto.Get_COFINS: IXMLTNFe_infNFe_det_imposto_COFINS;
begin
  Result := ChildNodes['COFINS'] as IXMLTNFe_infNFe_det_imposto_COFINS;
end;

function TXMLTNFe_infNFe_det_imposto.Get_COFINSST: IXMLTNFe_infNFe_det_imposto_COFINSST;
begin
  Result := ChildNodes['COFINSST'] as IXMLTNFe_infNFe_det_imposto_COFINSST;
end;

function TXMLTNFe_infNFe_det_imposto.Get_ICMSUFDest: IXMLTNFe_infNFe_det_imposto_ICMSUFDest;
begin
  Result := ChildNodes['ICMSUFDest'] as IXMLTNFe_infNFe_det_imposto_ICMSUFDest;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS }

procedure TXMLTNFe_infNFe_det_imposto_ICMS.AfterConstruction;
begin
  RegisterChildNode('ICMS00', TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00);
  RegisterChildNode('ICMS10', TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10);
  RegisterChildNode('ICMS20', TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20);
  RegisterChildNode('ICMS30', TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30);
  RegisterChildNode('ICMS40', TXMLTNFe_infNFe_det_imposto_ICMS_ICMS40);
  RegisterChildNode('ICMS51', TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51);
  RegisterChildNode('ICMS60', TXMLTNFe_infNFe_det_imposto_ICMS_ICMS60);
  RegisterChildNode('ICMS70', TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70);
  RegisterChildNode('ICMS90', TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90);
  RegisterChildNode('ICMSPart', TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart);
  RegisterChildNode('ICMSST', TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST);
  RegisterChildNode('ICMSSN101', TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101);
  RegisterChildNode('ICMSSN102', TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102);
  RegisterChildNode('ICMSSN201', TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201);
  RegisterChildNode('ICMSSN202', TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202);
  RegisterChildNode('ICMSSN500', TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500);
  RegisterChildNode('ICMSSN900', TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900);
  inherited;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMS00: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS00;
begin
  Result := ChildNodes['ICMS00'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMS00;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMS10: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS10;
begin
  Result := ChildNodes['ICMS10'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMS10;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMS20: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS20;
begin
  Result := ChildNodes['ICMS20'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMS20;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMS30: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS30;
begin
  Result := ChildNodes['ICMS30'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMS30;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMS40: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS40;
begin
  Result := ChildNodes['ICMS40'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMS40;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMS51: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS51;
begin
  Result := ChildNodes['ICMS51'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMS51;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMS60: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS60;
begin
  Result := ChildNodes['ICMS60'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMS60;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMS70: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS70;
begin
  Result := ChildNodes['ICMS70'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMS70;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMS90: IXMLTNFe_infNFe_det_imposto_ICMS_ICMS90;
begin
  Result := ChildNodes['ICMS90'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMS90;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMSPart: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart;
begin
  Result := ChildNodes['ICMSPart'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMSST: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSST;
begin
  Result := ChildNodes['ICMSST'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMSST;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMSSN101: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101;
begin
  Result := ChildNodes['ICMSSN101'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMSSN102: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102;
begin
  Result := ChildNodes['ICMSSN102'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMSSN201: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201;
begin
  Result := ChildNodes['ICMSSN201'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMSSN202: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202;
begin
  Result := ChildNodes['ICMSSN202'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMSSN500: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500;
begin
  Result := ChildNodes['ICMSSN500'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS.Get_ICMSSN900: IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900;
begin
  Result := ChildNodes['ICMSSN900'] as IXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS00.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS10.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Get_PRedBC: WideString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Set_PRedBC(Value: WideString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Get_VICMSDeson: WideString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Set_VICMSDeson(Value: WideString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Get_MotDesICMS: WideString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS20.Set_MotDesICMS(Value: WideString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Get_VICMSDeson: WideString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Set_VICMSDeson(Value: WideString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Get_MotDesICMS: WideString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS30.Set_MotDesICMS(Value: WideString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS40 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS40.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS40.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS40.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS40.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS40.Get_VICMSDeson: WideString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS40.Set_VICMSDeson(Value: WideString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS40.Get_MotDesICMS: WideString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS40.Set_MotDesICMS(Value: WideString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Get_PRedBC: WideString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Set_PRedBC(Value: WideString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Get_VICMSOp: WideString;
begin
  Result := ChildNodes['vICMSOp'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Set_VICMSOp(Value: WideString);
begin
  ChildNodes['vICMSOp'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Get_PDif: WideString;
begin
  Result := ChildNodes['pDif'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Set_PDif(Value: WideString);
begin
  ChildNodes['pDif'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Get_VICMSDif: WideString;
begin
  Result := ChildNodes['vICMSDif'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Set_VICMSDif(Value: WideString);
begin
  ChildNodes['vICMSDif'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS51.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS60 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS60.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS60.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS60.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS60.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS60.Get_VBCSTRet: WideString;
begin
  Result := ChildNodes['vBCSTRet'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS60.Set_VBCSTRet(Value: WideString);
begin
  ChildNodes['vBCSTRet'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS60.Get_VICMSSTRet: WideString;
begin
  Result := ChildNodes['vICMSSTRet'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS60.Set_VICMSSTRet(Value: WideString);
begin
  ChildNodes['vICMSSTRet'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_PRedBC: WideString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_PRedBC(Value: WideString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_VICMSDeson: WideString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_VICMSDeson(Value: WideString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Get_MotDesICMS: WideString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS70.Set_MotDesICMS(Value: WideString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_PRedBC: WideString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_PRedBC(Value: WideString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_VICMSDeson: WideString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_VICMSDeson(Value: WideString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Get_MotDesICMS: WideString;
begin
  Result := ChildNodes['motDesICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMS90.Set_MotDesICMS(Value: WideString);
begin
  ChildNodes['motDesICMS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_PRedBC: WideString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_PRedBC(Value: WideString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_PBCOp: WideString;
begin
  Result := ChildNodes['pBCOp'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_PBCOp(Value: WideString);
begin
  ChildNodes['pBCOp'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Get_UFST: WideString;
begin
  Result := ChildNodes['UFST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSPart.Set_UFST(Value: WideString);
begin
  ChildNodes['UFST'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST.Get_VBCSTRet: WideString;
begin
  Result := ChildNodes['vBCSTRet'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST.Set_VBCSTRet(Value: WideString);
begin
  ChildNodes['vBCSTRet'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST.Get_VICMSSTRet: WideString;
begin
  Result := ChildNodes['vICMSSTRet'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST.Set_VICMSSTRet(Value: WideString);
begin
  ChildNodes['vICMSSTRet'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST.Get_VBCSTDest: WideString;
begin
  Result := ChildNodes['vBCSTDest'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST.Set_VBCSTDest(Value: WideString);
begin
  ChildNodes['vBCSTDest'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST.Get_VICMSSTDest: WideString;
begin
  Result := ChildNodes['vICMSSTDest'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSST.Set_VICMSSTDest(Value: WideString);
begin
  ChildNodes['vICMSSTDest'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101.Get_CSOSN: WideString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101.Set_CSOSN(Value: WideString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101.Get_PCredSN: WideString;
begin
  Result := ChildNodes['pCredSN'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101.Set_PCredSN(Value: WideString);
begin
  ChildNodes['pCredSN'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101.Get_VCredICMSSN: WideString;
begin
  Result := ChildNodes['vCredICMSSN'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN101.Set_VCredICMSSN(Value: WideString);
begin
  ChildNodes['vCredICMSSN'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102.Get_CSOSN: WideString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN102.Set_CSOSN(Value: WideString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Get_CSOSN: WideString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Set_CSOSN(Value: WideString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Get_PCredSN: WideString;
begin
  Result := ChildNodes['pCredSN'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Set_PCredSN(Value: WideString);
begin
  ChildNodes['pCredSN'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Get_VCredICMSSN: WideString;
begin
  Result := ChildNodes['vCredICMSSN'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN201.Set_VCredICMSSN(Value: WideString);
begin
  ChildNodes['vCredICMSSN'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Get_CSOSN: WideString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Set_CSOSN(Value: WideString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN202.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500.Get_CSOSN: WideString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500.Set_CSOSN(Value: WideString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500.Get_VBCSTRet: WideString;
begin
  Result := ChildNodes['vBCSTRet'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500.Set_VBCSTRet(Value: WideString);
begin
  ChildNodes['vBCSTRet'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500.Get_VICMSSTRet: WideString;
begin
  Result := ChildNodes['vICMSSTRet'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN500.Set_VICMSSTRet(Value: WideString);
begin
  ChildNodes['vICMSSTRet'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900 }

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_Orig: WideString;
begin
  Result := ChildNodes['orig'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_Orig(Value: WideString);
begin
  ChildNodes['orig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_CSOSN: WideString;
begin
  Result := ChildNodes['CSOSN'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_CSOSN(Value: WideString);
begin
  ChildNodes['CSOSN'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_ModBC: WideString;
begin
  Result := ChildNodes['modBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_ModBC(Value: WideString);
begin
  ChildNodes['modBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_PRedBC: WideString;
begin
  Result := ChildNodes['pRedBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_PRedBC(Value: WideString);
begin
  ChildNodes['pRedBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_PICMS: WideString;
begin
  Result := ChildNodes['pICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_PICMS(Value: WideString);
begin
  ChildNodes['pICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_ModBCST: WideString;
begin
  Result := ChildNodes['modBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_ModBCST(Value: WideString);
begin
  ChildNodes['modBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_PMVAST: WideString;
begin
  Result := ChildNodes['pMVAST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_PMVAST(Value: WideString);
begin
  ChildNodes['pMVAST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_PRedBCST: WideString;
begin
  Result := ChildNodes['pRedBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_PRedBCST(Value: WideString);
begin
  ChildNodes['pRedBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_PICMSST: WideString;
begin
  Result := ChildNodes['pICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_PICMSST(Value: WideString);
begin
  ChildNodes['pICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_VICMSST: WideString;
begin
  Result := ChildNodes['vICMSST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_VICMSST(Value: WideString);
begin
  ChildNodes['vICMSST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_PCredSN: WideString;
begin
  Result := ChildNodes['pCredSN'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_PCredSN(Value: WideString);
begin
  ChildNodes['pCredSN'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Get_VCredICMSSN: WideString;
begin
  Result := ChildNodes['vCredICMSSN'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMS_ICMSSN900.Set_VCredICMSSN(Value: WideString);
begin
  ChildNodes['vCredICMSSN'].NodeValue := Value;
end;

{ TXMLTIpi }

procedure TXMLTIpi.AfterConstruction;
begin
  RegisterChildNode('IPITrib', TXMLTIpi_IPITrib);
  RegisterChildNode('IPINT', TXMLTIpi_IPINT);
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

function TXMLTIpi.Get_IPITrib: IXMLTIpi_IPITrib;
begin
  Result := ChildNodes['IPITrib'] as IXMLTIpi_IPITrib;
end;

function TXMLTIpi.Get_IPINT: IXMLTIpi_IPINT;
begin
  Result := ChildNodes['IPINT'] as IXMLTIpi_IPINT;
end;

{ TXMLTIpi_IPITrib }

function TXMLTIpi_IPITrib.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTIpi_IPITrib.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTIpi_IPITrib.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTIpi_IPITrib.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTIpi_IPITrib.Get_PIPI: WideString;
begin
  Result := ChildNodes['pIPI'].Text;
end;

procedure TXMLTIpi_IPITrib.Set_PIPI(Value: WideString);
begin
  ChildNodes['pIPI'].NodeValue := Value;
end;

function TXMLTIpi_IPITrib.Get_QUnid: WideString;
begin
  Result := ChildNodes['qUnid'].Text;
end;

procedure TXMLTIpi_IPITrib.Set_QUnid(Value: WideString);
begin
  ChildNodes['qUnid'].NodeValue := Value;
end;

function TXMLTIpi_IPITrib.Get_VUnid: WideString;
begin
  Result := ChildNodes['vUnid'].Text;
end;

procedure TXMLTIpi_IPITrib.Set_VUnid(Value: WideString);
begin
  ChildNodes['vUnid'].NodeValue := Value;
end;

function TXMLTIpi_IPITrib.Get_VIPI: WideString;
begin
  Result := ChildNodes['vIPI'].Text;
end;

procedure TXMLTIpi_IPITrib.Set_VIPI(Value: WideString);
begin
  ChildNodes['vIPI'].NodeValue := Value;
end;

{ TXMLTIpi_IPINT }

function TXMLTIpi_IPINT.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTIpi_IPINT.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_II }

function TXMLTNFe_infNFe_det_imposto_II.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_II.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_II.Get_VDespAdu: WideString;
begin
  Result := ChildNodes['vDespAdu'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_II.Set_VDespAdu(Value: WideString);
begin
  ChildNodes['vDespAdu'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_II.Get_VII: WideString;
begin
  Result := ChildNodes['vII'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_II.Set_VII(Value: WideString);
begin
  ChildNodes['vII'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_II.Get_VIOF: WideString;
begin
  Result := ChildNodes['vIOF'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_II.Set_VIOF(Value: WideString);
begin
  ChildNodes['vIOF'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ISSQN }

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_VAliq: WideString;
begin
  Result := ChildNodes['vAliq'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_VAliq(Value: WideString);
begin
  ChildNodes['vAliq'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_VISSQN: WideString;
begin
  Result := ChildNodes['vISSQN'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_VISSQN(Value: WideString);
begin
  ChildNodes['vISSQN'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_CMunFG: WideString;
begin
  Result := ChildNodes['cMunFG'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_CMunFG(Value: WideString);
begin
  ChildNodes['cMunFG'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_CListServ: WideString;
begin
  Result := ChildNodes['cListServ'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_CListServ(Value: WideString);
begin
  ChildNodes['cListServ'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_VDeducao: WideString;
begin
  Result := ChildNodes['vDeducao'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_VDeducao(Value: WideString);
begin
  ChildNodes['vDeducao'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_VOutro: WideString;
begin
  Result := ChildNodes['vOutro'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_VOutro(Value: WideString);
begin
  ChildNodes['vOutro'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_VDescIncond: WideString;
begin
  Result := ChildNodes['vDescIncond'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_VDescIncond(Value: WideString);
begin
  ChildNodes['vDescIncond'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_VDescCond: WideString;
begin
  Result := ChildNodes['vDescCond'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_VDescCond(Value: WideString);
begin
  ChildNodes['vDescCond'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_VISSRet: WideString;
begin
  Result := ChildNodes['vISSRet'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_VISSRet(Value: WideString);
begin
  ChildNodes['vISSRet'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_IndISS: WideString;
begin
  Result := ChildNodes['indISS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_IndISS(Value: WideString);
begin
  ChildNodes['indISS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_CServico: WideString;
begin
  Result := ChildNodes['cServico'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_CServico(Value: WideString);
begin
  ChildNodes['cServico'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_CMun: WideString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_CMun(Value: WideString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_CPais: WideString;
begin
  Result := ChildNodes['cPais'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_CPais(Value: WideString);
begin
  ChildNodes['cPais'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_NProcesso: WideString;
begin
  Result := ChildNodes['nProcesso'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_NProcesso(Value: WideString);
begin
  ChildNodes['nProcesso'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ISSQN.Get_IndIncentivo: WideString;
begin
  Result := ChildNodes['indIncentivo'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ISSQN.Set_IndIncentivo(Value: WideString);
begin
  ChildNodes['indIncentivo'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_PIS }

procedure TXMLTNFe_infNFe_det_imposto_PIS.AfterConstruction;
begin
  RegisterChildNode('PISAliq', TXMLTNFe_infNFe_det_imposto_PIS_PISAliq);
  RegisterChildNode('PISQtde', TXMLTNFe_infNFe_det_imposto_PIS_PISQtde);
  RegisterChildNode('PISNT', TXMLTNFe_infNFe_det_imposto_PIS_PISNT);
  RegisterChildNode('PISOutr', TXMLTNFe_infNFe_det_imposto_PIS_PISOutr);
  inherited;
end;

function TXMLTNFe_infNFe_det_imposto_PIS.Get_PISAliq: IXMLTNFe_infNFe_det_imposto_PIS_PISAliq;
begin
  Result := ChildNodes['PISAliq'] as IXMLTNFe_infNFe_det_imposto_PIS_PISAliq;
end;

function TXMLTNFe_infNFe_det_imposto_PIS.Get_PISQtde: IXMLTNFe_infNFe_det_imposto_PIS_PISQtde;
begin
  Result := ChildNodes['PISQtde'] as IXMLTNFe_infNFe_det_imposto_PIS_PISQtde;
end;

function TXMLTNFe_infNFe_det_imposto_PIS.Get_PISNT: IXMLTNFe_infNFe_det_imposto_PIS_PISNT;
begin
  Result := ChildNodes['PISNT'] as IXMLTNFe_infNFe_det_imposto_PIS_PISNT;
end;

function TXMLTNFe_infNFe_det_imposto_PIS.Get_PISOutr: IXMLTNFe_infNFe_det_imposto_PIS_PISOutr;
begin
  Result := ChildNodes['PISOutr'] as IXMLTNFe_infNFe_det_imposto_PIS_PISOutr;
end;

{ TXMLTNFe_infNFe_det_imposto_PIS_PISAliq }

function TXMLTNFe_infNFe_det_imposto_PIS_PISAliq.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISAliq.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PIS_PISAliq.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISAliq.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PIS_PISAliq.Get_PPIS: WideString;
begin
  Result := ChildNodes['pPIS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISAliq.Set_PPIS(Value: WideString);
begin
  ChildNodes['pPIS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PIS_PISAliq.Get_VPIS: WideString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISAliq.Set_VPIS(Value: WideString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_PIS_PISQtde }

function TXMLTNFe_infNFe_det_imposto_PIS_PISQtde.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISQtde.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PIS_PISQtde.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISQtde.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PIS_PISQtde.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISQtde.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PIS_PISQtde.Get_VPIS: WideString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISQtde.Set_VPIS(Value: WideString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_PIS_PISNT }

function TXMLTNFe_infNFe_det_imposto_PIS_PISNT.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISNT.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_PIS_PISOutr }

function TXMLTNFe_infNFe_det_imposto_PIS_PISOutr.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISOutr.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PIS_PISOutr.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISOutr.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PIS_PISOutr.Get_PPIS: WideString;
begin
  Result := ChildNodes['pPIS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISOutr.Set_PPIS(Value: WideString);
begin
  ChildNodes['pPIS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PIS_PISOutr.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISOutr.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PIS_PISOutr.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISOutr.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PIS_PISOutr.Get_VPIS: WideString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PIS_PISOutr.Set_VPIS(Value: WideString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_PISST }

function TXMLTNFe_infNFe_det_imposto_PISST.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PISST.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PISST.Get_PPIS: WideString;
begin
  Result := ChildNodes['pPIS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PISST.Set_PPIS(Value: WideString);
begin
  ChildNodes['pPIS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PISST.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PISST.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PISST.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PISST.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_PISST.Get_VPIS: WideString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_PISST.Set_VPIS(Value: WideString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_COFINS }

procedure TXMLTNFe_infNFe_det_imposto_COFINS.AfterConstruction;
begin
  RegisterChildNode('COFINSAliq', TXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq);
  RegisterChildNode('COFINSQtde', TXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde);
  RegisterChildNode('COFINSNT', TXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT);
  RegisterChildNode('COFINSOutr', TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr);
  inherited;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS.Get_COFINSAliq: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq;
begin
  Result := ChildNodes['COFINSAliq'] as IXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS.Get_COFINSQtde: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde;
begin
  Result := ChildNodes['COFINSQtde'] as IXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS.Get_COFINSNT: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT;
begin
  Result := ChildNodes['COFINSNT'] as IXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS.Get_COFINSOutr: IXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr;
begin
  Result := ChildNodes['COFINSOutr'] as IXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr;
end;

{ TXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq }

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq.Get_PCOFINS: WideString;
begin
  Result := ChildNodes['pCOFINS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq.Set_PCOFINS(Value: WideString);
begin
  ChildNodes['pCOFINS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq.Get_VCOFINS: WideString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSAliq.Set_VCOFINS(Value: WideString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde }

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde.Get_VCOFINS: WideString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSQtde.Set_VCOFINS(Value: WideString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT }

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSNT.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr }

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr.Get_CST: WideString;
begin
  Result := ChildNodes['CST'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr.Set_CST(Value: WideString);
begin
  ChildNodes['CST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr.Get_PCOFINS: WideString;
begin
  Result := ChildNodes['pCOFINS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr.Set_PCOFINS(Value: WideString);
begin
  ChildNodes['pCOFINS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr.Get_VCOFINS: WideString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINS_COFINSOutr.Set_VCOFINS(Value: WideString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_COFINSST }

function TXMLTNFe_infNFe_det_imposto_COFINSST.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINSST.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINSST.Get_PCOFINS: WideString;
begin
  Result := ChildNodes['pCOFINS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINSST.Set_PCOFINS(Value: WideString);
begin
  ChildNodes['pCOFINS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINSST.Get_QBCProd: WideString;
begin
  Result := ChildNodes['qBCProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINSST.Set_QBCProd(Value: WideString);
begin
  ChildNodes['qBCProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINSST.Get_VAliqProd: WideString;
begin
  Result := ChildNodes['vAliqProd'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINSST.Set_VAliqProd(Value: WideString);
begin
  ChildNodes['vAliqProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_COFINSST.Get_VCOFINS: WideString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_COFINSST.Set_VCOFINS(Value: WideString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_imposto_ICMSUFDest }

function TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Get_VBCUFDest: WideString;
begin
  Result := ChildNodes['vBCUFDest'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Set_VBCUFDest(Value: WideString);
begin
  ChildNodes['vBCUFDest'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Get_PFCPUFDest: WideString;
begin
  Result := ChildNodes['pFCPUFDest'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Set_PFCPUFDest(Value: WideString);
begin
  ChildNodes['pFCPUFDest'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Get_PICMSUFDest: WideString;
begin
  Result := ChildNodes['pICMSUFDest'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Set_PICMSUFDest(Value: WideString);
begin
  ChildNodes['pICMSUFDest'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Get_PICMSInter: WideString;
begin
  Result := ChildNodes['pICMSInter'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Set_PICMSInter(Value: WideString);
begin
  ChildNodes['pICMSInter'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Get_PICMSInterPart: WideString;
begin
  Result := ChildNodes['pICMSInterPart'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Set_PICMSInterPart(Value: WideString);
begin
  ChildNodes['pICMSInterPart'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Get_VFCPUFDest: WideString;
begin
  Result := ChildNodes['vFCPUFDest'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Set_VFCPUFDest(Value: WideString);
begin
  ChildNodes['vFCPUFDest'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Get_VICMSUFDest: WideString;
begin
  Result := ChildNodes['vICMSUFDest'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Set_VICMSUFDest(Value: WideString);
begin
  ChildNodes['vICMSUFDest'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Get_VICMSUFRemet: WideString;
begin
  Result := ChildNodes['vICMSUFRemet'].Text;
end;

procedure TXMLTNFe_infNFe_det_imposto_ICMSUFDest.Set_VICMSUFRemet(Value: WideString);
begin
  ChildNodes['vICMSUFRemet'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_det_impostoDevol }

procedure TXMLTNFe_infNFe_det_impostoDevol.AfterConstruction;
begin
  RegisterChildNode('IPI', TXMLTNFe_infNFe_det_impostoDevol_IPI);
  inherited;
end;

function TXMLTNFe_infNFe_det_impostoDevol.Get_PDevol: WideString;
begin
  Result := ChildNodes['pDevol'].Text;
end;

procedure TXMLTNFe_infNFe_det_impostoDevol.Set_PDevol(Value: WideString);
begin
  ChildNodes['pDevol'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_impostoDevol.Get_IPI: IXMLTNFe_infNFe_det_impostoDevol_IPI;
begin
  Result := ChildNodes['IPI'] as IXMLTNFe_infNFe_det_impostoDevol_IPI;
end;

{ TXMLTNFe_infNFe_det_impostoDevol_IPI }

function TXMLTNFe_infNFe_det_impostoDevol_IPI.Get_VIPIDevol: WideString;
begin
  Result := ChildNodes['vIPIDevol'].Text;
end;

procedure TXMLTNFe_infNFe_det_impostoDevol_IPI.Set_VIPIDevol(Value: WideString);
begin
  ChildNodes['vIPIDevol'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_total }

procedure TXMLTNFe_infNFe_total.AfterConstruction;
begin
  RegisterChildNode('ICMSTot', TXMLTNFe_infNFe_total_ICMSTot);
  RegisterChildNode('ISSQNtot', TXMLTNFe_infNFe_total_ISSQNtot);
  RegisterChildNode('retTrib', TXMLTNFe_infNFe_total_retTrib);
  inherited;
end;

function TXMLTNFe_infNFe_total.Get_ICMSTot: IXMLTNFe_infNFe_total_ICMSTot;
begin
  Result := ChildNodes['ICMSTot'] as IXMLTNFe_infNFe_total_ICMSTot;
end;

function TXMLTNFe_infNFe_total.Get_ISSQNtot: IXMLTNFe_infNFe_total_ISSQNtot;
begin
  Result := ChildNodes['ISSQNtot'] as IXMLTNFe_infNFe_total_ISSQNtot;
end;

function TXMLTNFe_infNFe_total.Get_RetTrib: IXMLTNFe_infNFe_total_retTrib;
begin
  Result := ChildNodes['retTrib'] as IXMLTNFe_infNFe_total_retTrib;
end;

{ TXMLTNFe_infNFe_total_ICMSTot }

function TXMLTNFe_infNFe_total_ICMSTot.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VICMS: WideString;
begin
  Result := ChildNodes['vICMS'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VICMS(Value: WideString);
begin
  ChildNodes['vICMS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VICMSDeson: WideString;
begin
  Result := ChildNodes['vICMSDeson'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VICMSDeson(Value: WideString);
begin
  ChildNodes['vICMSDeson'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VFCPUFDest: WideString;
begin
  Result := ChildNodes['vFCPUFDest'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VFCPUFDest(Value: WideString);
begin
  ChildNodes['vFCPUFDest'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VICMSUFDest: WideString;
begin
  Result := ChildNodes['vICMSUFDest'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VICMSUFDest(Value: WideString);
begin
  ChildNodes['vICMSUFDest'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VICMSUFRemet: WideString;
begin
  Result := ChildNodes['vICMSUFRemet'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VICMSUFRemet(Value: WideString);
begin
  ChildNodes['vICMSUFRemet'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VBCST: WideString;
begin
  Result := ChildNodes['vBCST'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VBCST(Value: WideString);
begin
  ChildNodes['vBCST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VST: WideString;
begin
  Result := ChildNodes['vST'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VST(Value: WideString);
begin
  ChildNodes['vST'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VProd: WideString;
begin
  Result := ChildNodes['vProd'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VProd(Value: WideString);
begin
  ChildNodes['vProd'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VFrete: WideString;
begin
  Result := ChildNodes['vFrete'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VFrete(Value: WideString);
begin
  ChildNodes['vFrete'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VSeg: WideString;
begin
  Result := ChildNodes['vSeg'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VSeg(Value: WideString);
begin
  ChildNodes['vSeg'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VDesc: WideString;
begin
  Result := ChildNodes['vDesc'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VDesc(Value: WideString);
begin
  ChildNodes['vDesc'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VII: WideString;
begin
  Result := ChildNodes['vII'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VII(Value: WideString);
begin
  ChildNodes['vII'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VIPI: WideString;
begin
  Result := ChildNodes['vIPI'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VIPI(Value: WideString);
begin
  ChildNodes['vIPI'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VPIS: WideString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VPIS(Value: WideString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VCOFINS: WideString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VCOFINS(Value: WideString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VOutro: WideString;
begin
  Result := ChildNodes['vOutro'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VOutro(Value: WideString);
begin
  ChildNodes['vOutro'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VNF: WideString;
begin
  Result := ChildNodes['vNF'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VNF(Value: WideString);
begin
  ChildNodes['vNF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ICMSTot.Get_VTotTrib: WideString;
begin
  Result := ChildNodes['vTotTrib'].Text;
end;

procedure TXMLTNFe_infNFe_total_ICMSTot.Set_VTotTrib(Value: WideString);
begin
  ChildNodes['vTotTrib'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_total_ISSQNtot }

function TXMLTNFe_infNFe_total_ISSQNtot.Get_VServ: WideString;
begin
  Result := ChildNodes['vServ'].Text;
end;

procedure TXMLTNFe_infNFe_total_ISSQNtot.Set_VServ(Value: WideString);
begin
  ChildNodes['vServ'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ISSQNtot.Get_VBC: WideString;
begin
  Result := ChildNodes['vBC'].Text;
end;

procedure TXMLTNFe_infNFe_total_ISSQNtot.Set_VBC(Value: WideString);
begin
  ChildNodes['vBC'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ISSQNtot.Get_VISS: WideString;
begin
  Result := ChildNodes['vISS'].Text;
end;

procedure TXMLTNFe_infNFe_total_ISSQNtot.Set_VISS(Value: WideString);
begin
  ChildNodes['vISS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ISSQNtot.Get_VPIS: WideString;
begin
  Result := ChildNodes['vPIS'].Text;
end;

procedure TXMLTNFe_infNFe_total_ISSQNtot.Set_VPIS(Value: WideString);
begin
  ChildNodes['vPIS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ISSQNtot.Get_VCOFINS: WideString;
begin
  Result := ChildNodes['vCOFINS'].Text;
end;

procedure TXMLTNFe_infNFe_total_ISSQNtot.Set_VCOFINS(Value: WideString);
begin
  ChildNodes['vCOFINS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ISSQNtot.Get_DCompet: WideString;
begin
  Result := ChildNodes['dCompet'].Text;
end;

procedure TXMLTNFe_infNFe_total_ISSQNtot.Set_DCompet(Value: WideString);
begin
  ChildNodes['dCompet'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ISSQNtot.Get_VDeducao: WideString;
begin
  Result := ChildNodes['vDeducao'].Text;
end;

procedure TXMLTNFe_infNFe_total_ISSQNtot.Set_VDeducao(Value: WideString);
begin
  ChildNodes['vDeducao'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ISSQNtot.Get_VOutro: WideString;
begin
  Result := ChildNodes['vOutro'].Text;
end;

procedure TXMLTNFe_infNFe_total_ISSQNtot.Set_VOutro(Value: WideString);
begin
  ChildNodes['vOutro'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ISSQNtot.Get_VDescIncond: WideString;
begin
  Result := ChildNodes['vDescIncond'].Text;
end;

procedure TXMLTNFe_infNFe_total_ISSQNtot.Set_VDescIncond(Value: WideString);
begin
  ChildNodes['vDescIncond'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ISSQNtot.Get_VDescCond: WideString;
begin
  Result := ChildNodes['vDescCond'].Text;
end;

procedure TXMLTNFe_infNFe_total_ISSQNtot.Set_VDescCond(Value: WideString);
begin
  ChildNodes['vDescCond'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ISSQNtot.Get_VISSRet: WideString;
begin
  Result := ChildNodes['vISSRet'].Text;
end;

procedure TXMLTNFe_infNFe_total_ISSQNtot.Set_VISSRet(Value: WideString);
begin
  ChildNodes['vISSRet'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_ISSQNtot.Get_CRegTrib: WideString;
begin
  Result := ChildNodes['cRegTrib'].Text;
end;

procedure TXMLTNFe_infNFe_total_ISSQNtot.Set_CRegTrib(Value: WideString);
begin
  ChildNodes['cRegTrib'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_total_retTrib }

function TXMLTNFe_infNFe_total_retTrib.Get_VRetPIS: WideString;
begin
  Result := ChildNodes['vRetPIS'].Text;
end;

procedure TXMLTNFe_infNFe_total_retTrib.Set_VRetPIS(Value: WideString);
begin
  ChildNodes['vRetPIS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_retTrib.Get_VRetCOFINS: WideString;
begin
  Result := ChildNodes['vRetCOFINS'].Text;
end;

procedure TXMLTNFe_infNFe_total_retTrib.Set_VRetCOFINS(Value: WideString);
begin
  ChildNodes['vRetCOFINS'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_retTrib.Get_VRetCSLL: WideString;
begin
  Result := ChildNodes['vRetCSLL'].Text;
end;

procedure TXMLTNFe_infNFe_total_retTrib.Set_VRetCSLL(Value: WideString);
begin
  ChildNodes['vRetCSLL'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_retTrib.Get_VBCIRRF: WideString;
begin
  Result := ChildNodes['vBCIRRF'].Text;
end;

procedure TXMLTNFe_infNFe_total_retTrib.Set_VBCIRRF(Value: WideString);
begin
  ChildNodes['vBCIRRF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_retTrib.Get_VIRRF: WideString;
begin
  Result := ChildNodes['vIRRF'].Text;
end;

procedure TXMLTNFe_infNFe_total_retTrib.Set_VIRRF(Value: WideString);
begin
  ChildNodes['vIRRF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_retTrib.Get_VBCRetPrev: WideString;
begin
  Result := ChildNodes['vBCRetPrev'].Text;
end;

procedure TXMLTNFe_infNFe_total_retTrib.Set_VBCRetPrev(Value: WideString);
begin
  ChildNodes['vBCRetPrev'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_total_retTrib.Get_VRetPrev: WideString;
begin
  Result := ChildNodes['vRetPrev'].Text;
end;

procedure TXMLTNFe_infNFe_total_retTrib.Set_VRetPrev(Value: WideString);
begin
  ChildNodes['vRetPrev'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_transp }

procedure TXMLTNFe_infNFe_transp.AfterConstruction;
begin
  RegisterChildNode('transporta', TXMLTNFe_infNFe_transp_transporta);
  RegisterChildNode('retTransp', TXMLTNFe_infNFe_transp_retTransp);
  RegisterChildNode('veicTransp', TXMLTVeiculo);
  RegisterChildNode('reboque', TXMLTVeiculo);
  RegisterChildNode('vol', TXMLTNFe_infNFe_transp_vol);
  FReboque := CreateCollection(TXMLTVeiculoList, IXMLTVeiculo, 'reboque') as IXMLTVeiculoList;
  FVol := CreateCollection(TXMLTNFe_infNFe_transp_volList, IXMLTNFe_infNFe_transp_vol, 'vol') as IXMLTNFe_infNFe_transp_volList;
  inherited;
end;

function TXMLTNFe_infNFe_transp.Get_ModFrete: WideString;
begin
  Result := ChildNodes['modFrete'].Text;
end;

procedure TXMLTNFe_infNFe_transp.Set_ModFrete(Value: WideString);
begin
  ChildNodes['modFrete'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp.Get_Transporta: IXMLTNFe_infNFe_transp_transporta;
begin
  Result := ChildNodes['transporta'] as IXMLTNFe_infNFe_transp_transporta;
end;

function TXMLTNFe_infNFe_transp.Get_RetTransp: IXMLTNFe_infNFe_transp_retTransp;
begin
  Result := ChildNodes['retTransp'] as IXMLTNFe_infNFe_transp_retTransp;
end;

function TXMLTNFe_infNFe_transp.Get_VeicTransp: IXMLTVeiculo;
begin
  Result := ChildNodes['veicTransp'] as IXMLTVeiculo;
end;

function TXMLTNFe_infNFe_transp.Get_Reboque: IXMLTVeiculoList;
begin
  Result := FReboque;
end;

function TXMLTNFe_infNFe_transp.Get_Vagao: WideString;
begin
  Result := ChildNodes['vagao'].Text;
end;

procedure TXMLTNFe_infNFe_transp.Set_Vagao(Value: WideString);
begin
  ChildNodes['vagao'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp.Get_Balsa: WideString;
begin
  Result := ChildNodes['balsa'].Text;
end;

procedure TXMLTNFe_infNFe_transp.Set_Balsa(Value: WideString);
begin
  ChildNodes['balsa'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp.Get_Vol: IXMLTNFe_infNFe_transp_volList;
begin
  Result := FVol;
end;

{ TXMLTNFe_infNFe_transp_transporta }

function TXMLTNFe_infNFe_transp_transporta.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTNFe_infNFe_transp_transporta.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_transporta.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLTNFe_infNFe_transp_transporta.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_transporta.Get_XNome: WideString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLTNFe_infNFe_transp_transporta.Set_XNome(Value: WideString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_transporta.Get_IE: WideString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLTNFe_infNFe_transp_transporta.Set_IE(Value: WideString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_transporta.Get_XEnder: WideString;
begin
  Result := ChildNodes['xEnder'].Text;
end;

procedure TXMLTNFe_infNFe_transp_transporta.Set_XEnder(Value: WideString);
begin
  ChildNodes['xEnder'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_transporta.Get_XMun: WideString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTNFe_infNFe_transp_transporta.Set_XMun(Value: WideString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_transporta.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTNFe_infNFe_transp_transporta.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_transp_retTransp }

function TXMLTNFe_infNFe_transp_retTransp.Get_VServ: WideString;
begin
  Result := ChildNodes['vServ'].Text;
end;

procedure TXMLTNFe_infNFe_transp_retTransp.Set_VServ(Value: WideString);
begin
  ChildNodes['vServ'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_retTransp.Get_VBCRet: WideString;
begin
  Result := ChildNodes['vBCRet'].Text;
end;

procedure TXMLTNFe_infNFe_transp_retTransp.Set_VBCRet(Value: WideString);
begin
  ChildNodes['vBCRet'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_retTransp.Get_PICMSRet: WideString;
begin
  Result := ChildNodes['pICMSRet'].Text;
end;

procedure TXMLTNFe_infNFe_transp_retTransp.Set_PICMSRet(Value: WideString);
begin
  ChildNodes['pICMSRet'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_retTransp.Get_VICMSRet: WideString;
begin
  Result := ChildNodes['vICMSRet'].Text;
end;

procedure TXMLTNFe_infNFe_transp_retTransp.Set_VICMSRet(Value: WideString);
begin
  ChildNodes['vICMSRet'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_retTransp.Get_CFOP: WideString;
begin
  Result := ChildNodes['CFOP'].Text;
end;

procedure TXMLTNFe_infNFe_transp_retTransp.Set_CFOP(Value: WideString);
begin
  ChildNodes['CFOP'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_retTransp.Get_CMunFG: WideString;
begin
  Result := ChildNodes['cMunFG'].Text;
end;

procedure TXMLTNFe_infNFe_transp_retTransp.Set_CMunFG(Value: WideString);
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

{ TXMLTNFe_infNFe_transp_vol }

procedure TXMLTNFe_infNFe_transp_vol.AfterConstruction;
begin
  RegisterChildNode('lacres', TXMLTNFe_infNFe_transp_vol_lacres);
  FLacres := CreateCollection(TXMLTNFe_infNFe_transp_vol_lacresList, IXMLTNFe_infNFe_transp_vol_lacres, 'lacres') as IXMLTNFe_infNFe_transp_vol_lacresList;
  inherited;
end;

function TXMLTNFe_infNFe_transp_vol.Get_QVol: WideString;
begin
  Result := ChildNodes['qVol'].Text;
end;

procedure TXMLTNFe_infNFe_transp_vol.Set_QVol(Value: WideString);
begin
  ChildNodes['qVol'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_vol.Get_Esp: WideString;
begin
  Result := ChildNodes['esp'].Text;
end;

procedure TXMLTNFe_infNFe_transp_vol.Set_Esp(Value: WideString);
begin
  ChildNodes['esp'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_vol.Get_Marca: WideString;
begin
  Result := ChildNodes['marca'].Text;
end;

procedure TXMLTNFe_infNFe_transp_vol.Set_Marca(Value: WideString);
begin
  ChildNodes['marca'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_vol.Get_NVol: WideString;
begin
  Result := ChildNodes['nVol'].Text;
end;

procedure TXMLTNFe_infNFe_transp_vol.Set_NVol(Value: WideString);
begin
  ChildNodes['nVol'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_vol.Get_PesoL: WideString;
begin
  Result := ChildNodes['pesoL'].Text;
end;

procedure TXMLTNFe_infNFe_transp_vol.Set_PesoL(Value: WideString);
begin
  ChildNodes['pesoL'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_vol.Get_PesoB: WideString;
begin
  Result := ChildNodes['pesoB'].Text;
end;

procedure TXMLTNFe_infNFe_transp_vol.Set_PesoB(Value: WideString);
begin
  ChildNodes['pesoB'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_transp_vol.Get_Lacres: IXMLTNFe_infNFe_transp_vol_lacresList;
begin
  Result := FLacres;
end;

{ TXMLTNFe_infNFe_transp_volList }

function TXMLTNFe_infNFe_transp_volList.Add: IXMLTNFe_infNFe_transp_vol;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_transp_vol;
end;

function TXMLTNFe_infNFe_transp_volList.Insert(const Index: Integer): IXMLTNFe_infNFe_transp_vol;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_transp_vol;
end;

function TXMLTNFe_infNFe_transp_volList.Get_Item(Index: Integer): IXMLTNFe_infNFe_transp_vol;
begin
  Result := List[Index] as IXMLTNFe_infNFe_transp_vol;
end;

{ TXMLTNFe_infNFe_transp_vol_lacres }

function TXMLTNFe_infNFe_transp_vol_lacres.Get_NLacre: WideString;
begin
  Result := ChildNodes['nLacre'].Text;
end;

procedure TXMLTNFe_infNFe_transp_vol_lacres.Set_NLacre(Value: WideString);
begin
  ChildNodes['nLacre'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_transp_vol_lacresList }

function TXMLTNFe_infNFe_transp_vol_lacresList.Add: IXMLTNFe_infNFe_transp_vol_lacres;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_transp_vol_lacres;
end;

function TXMLTNFe_infNFe_transp_vol_lacresList.Insert(const Index: Integer): IXMLTNFe_infNFe_transp_vol_lacres;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_transp_vol_lacres;
end;

function TXMLTNFe_infNFe_transp_vol_lacresList.Get_Item(Index: Integer): IXMLTNFe_infNFe_transp_vol_lacres;
begin
  Result := List[Index] as IXMLTNFe_infNFe_transp_vol_lacres;
end;

{ TXMLTNFe_infNFe_cobr }

procedure TXMLTNFe_infNFe_cobr.AfterConstruction;
begin
  RegisterChildNode('fat', TXMLTNFe_infNFe_cobr_fat);
  RegisterChildNode('dup', TXMLTNFe_infNFe_cobr_dup);
  FDup := CreateCollection(TXMLTNFe_infNFe_cobr_dupList, IXMLTNFe_infNFe_cobr_dup, 'dup') as IXMLTNFe_infNFe_cobr_dupList;
  inherited;
end;

function TXMLTNFe_infNFe_cobr.Get_Fat: IXMLTNFe_infNFe_cobr_fat;
begin
  Result := ChildNodes['fat'] as IXMLTNFe_infNFe_cobr_fat;
end;

function TXMLTNFe_infNFe_cobr.Get_Dup: IXMLTNFe_infNFe_cobr_dupList;
begin
  Result := FDup;
end;

{ TXMLTNFe_infNFe_cobr_fat }

function TXMLTNFe_infNFe_cobr_fat.Get_NFat: WideString;
begin
  Result := ChildNodes['nFat'].Text;
end;

procedure TXMLTNFe_infNFe_cobr_fat.Set_NFat(Value: WideString);
begin
  ChildNodes['nFat'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_cobr_fat.Get_VOrig: WideString;
begin
  Result := ChildNodes['vOrig'].Text;
end;

procedure TXMLTNFe_infNFe_cobr_fat.Set_VOrig(Value: WideString);
begin
  ChildNodes['vOrig'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_cobr_fat.Get_VDesc: WideString;
begin
  Result := ChildNodes['vDesc'].Text;
end;

procedure TXMLTNFe_infNFe_cobr_fat.Set_VDesc(Value: WideString);
begin
  ChildNodes['vDesc'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_cobr_fat.Get_VLiq: WideString;
begin
  Result := ChildNodes['vLiq'].Text;
end;

procedure TXMLTNFe_infNFe_cobr_fat.Set_VLiq(Value: WideString);
begin
  ChildNodes['vLiq'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_cobr_dup }

function TXMLTNFe_infNFe_cobr_dup.Get_NDup: WideString;
begin
  Result := ChildNodes['nDup'].Text;
end;

procedure TXMLTNFe_infNFe_cobr_dup.Set_NDup(Value: WideString);
begin
  ChildNodes['nDup'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_cobr_dup.Get_DVenc: WideString;
begin
  Result := ChildNodes['dVenc'].Text;
end;

procedure TXMLTNFe_infNFe_cobr_dup.Set_DVenc(Value: WideString);
begin
  ChildNodes['dVenc'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_cobr_dup.Get_VDup: WideString;
begin
  Result := ChildNodes['vDup'].Text;
end;

procedure TXMLTNFe_infNFe_cobr_dup.Set_VDup(Value: WideString);
begin
  ChildNodes['vDup'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_cobr_dupList }

function TXMLTNFe_infNFe_cobr_dupList.Add: IXMLTNFe_infNFe_cobr_dup;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_cobr_dup;
end;

function TXMLTNFe_infNFe_cobr_dupList.Insert(const Index: Integer): IXMLTNFe_infNFe_cobr_dup;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_cobr_dup;
end;

function TXMLTNFe_infNFe_cobr_dupList.Get_Item(Index: Integer): IXMLTNFe_infNFe_cobr_dup;
begin
  Result := List[Index] as IXMLTNFe_infNFe_cobr_dup;
end;

{ TXMLTNFe_infNFe_pag }

procedure TXMLTNFe_infNFe_pag.AfterConstruction;
begin
  RegisterChildNode('card', TXMLTNFe_infNFe_pag_card);
  inherited;
end;

function TXMLTNFe_infNFe_pag.Get_TPag: WideString;
begin
  Result := ChildNodes['tPag'].Text;
end;

procedure TXMLTNFe_infNFe_pag.Set_TPag(Value: WideString);
begin
  ChildNodes['tPag'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_pag.Get_VPag: WideString;
begin
  Result := ChildNodes['vPag'].Text;
end;

procedure TXMLTNFe_infNFe_pag.Set_VPag(Value: WideString);
begin
  ChildNodes['vPag'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_pag.Get_Card: IXMLTNFe_infNFe_pag_card;
begin
  Result := ChildNodes['card'] as IXMLTNFe_infNFe_pag_card;
end;

{ TXMLTNFe_infNFe_pagList }

function TXMLTNFe_infNFe_pagList.Add: IXMLTNFe_infNFe_pag;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_pag;
end;

function TXMLTNFe_infNFe_pagList.Insert(const Index: Integer): IXMLTNFe_infNFe_pag;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_pag;
end;

function TXMLTNFe_infNFe_pagList.Get_Item(Index: Integer): IXMLTNFe_infNFe_pag;
begin
  Result := List[Index] as IXMLTNFe_infNFe_pag;
end;

{ TXMLTNFe_infNFe_pag_card }

function TXMLTNFe_infNFe_pag_card.Get_TpIntegra: WideString;
begin
  Result := ChildNodes['tpIntegra'].Text;
end;

procedure TXMLTNFe_infNFe_pag_card.Set_TpIntegra(Value: WideString);
begin
  ChildNodes['tpIntegra'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_pag_card.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTNFe_infNFe_pag_card.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_pag_card.Get_TBand: WideString;
begin
  Result := ChildNodes['tBand'].Text;
end;

procedure TXMLTNFe_infNFe_pag_card.Set_TBand(Value: WideString);
begin
  ChildNodes['tBand'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_pag_card.Get_CAut: WideString;
begin
  Result := ChildNodes['cAut'].Text;
end;

procedure TXMLTNFe_infNFe_pag_card.Set_CAut(Value: WideString);
begin
  ChildNodes['cAut'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_infAdic }

procedure TXMLTNFe_infNFe_infAdic.AfterConstruction;
begin
  RegisterChildNode('obsCont', TXMLTNFe_infNFe_infAdic_obsCont);
  RegisterChildNode('obsFisco', TXMLTNFe_infNFe_infAdic_obsFisco);
  RegisterChildNode('procRef', TXMLTNFe_infNFe_infAdic_procRef);
  FObsCont := CreateCollection(TXMLTNFe_infNFe_infAdic_obsContList, IXMLTNFe_infNFe_infAdic_obsCont, 'obsCont') as IXMLTNFe_infNFe_infAdic_obsContList;
  FObsFisco := CreateCollection(TXMLTNFe_infNFe_infAdic_obsFiscoList, IXMLTNFe_infNFe_infAdic_obsFisco, 'obsFisco') as IXMLTNFe_infNFe_infAdic_obsFiscoList;
  FProcRef := CreateCollection(TXMLTNFe_infNFe_infAdic_procRefList, IXMLTNFe_infNFe_infAdic_procRef, 'procRef') as IXMLTNFe_infNFe_infAdic_procRefList;
  inherited;
end;

function TXMLTNFe_infNFe_infAdic.Get_InfAdFisco: WideString;
begin
  Result := ChildNodes['infAdFisco'].Text;
end;

procedure TXMLTNFe_infNFe_infAdic.Set_InfAdFisco(Value: WideString);
begin
  ChildNodes['infAdFisco'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_infAdic.Get_InfCpl: WideString;
begin
  Result := ChildNodes['infCpl'].Text;
end;

procedure TXMLTNFe_infNFe_infAdic.Set_InfCpl(Value: WideString);
begin
  ChildNodes['infCpl'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_infAdic.Get_ObsCont: IXMLTNFe_infNFe_infAdic_obsContList;
begin
  Result := FObsCont;
end;

function TXMLTNFe_infNFe_infAdic.Get_ObsFisco: IXMLTNFe_infNFe_infAdic_obsFiscoList;
begin
  Result := FObsFisco;
end;

function TXMLTNFe_infNFe_infAdic.Get_ProcRef: IXMLTNFe_infNFe_infAdic_procRefList;
begin
  Result := FProcRef;
end;

{ TXMLTNFe_infNFe_infAdic_obsCont }

function TXMLTNFe_infNFe_infAdic_obsCont.Get_XCampo: WideString;
begin
  Result := AttributeNodes['xCampo'].Text;
end;

procedure TXMLTNFe_infNFe_infAdic_obsCont.Set_XCampo(Value: WideString);
begin
  SetAttribute('xCampo', Value);
end;

function TXMLTNFe_infNFe_infAdic_obsCont.Get_XTexto: WideString;
begin
  Result := ChildNodes['xTexto'].Text;
end;

procedure TXMLTNFe_infNFe_infAdic_obsCont.Set_XTexto(Value: WideString);
begin
  ChildNodes['xTexto'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_infAdic_obsContList }

function TXMLTNFe_infNFe_infAdic_obsContList.Add: IXMLTNFe_infNFe_infAdic_obsCont;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_infAdic_obsCont;
end;

function TXMLTNFe_infNFe_infAdic_obsContList.Insert(const Index: Integer): IXMLTNFe_infNFe_infAdic_obsCont;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_infAdic_obsCont;
end;

function TXMLTNFe_infNFe_infAdic_obsContList.Get_Item(Index: Integer): IXMLTNFe_infNFe_infAdic_obsCont;
begin
  Result := List[Index] as IXMLTNFe_infNFe_infAdic_obsCont;
end;

{ TXMLTNFe_infNFe_infAdic_obsFisco }

function TXMLTNFe_infNFe_infAdic_obsFisco.Get_XCampo: WideString;
begin
  Result := AttributeNodes['xCampo'].Text;
end;

procedure TXMLTNFe_infNFe_infAdic_obsFisco.Set_XCampo(Value: WideString);
begin
  SetAttribute('xCampo', Value);
end;

function TXMLTNFe_infNFe_infAdic_obsFisco.Get_XTexto: WideString;
begin
  Result := ChildNodes['xTexto'].Text;
end;

procedure TXMLTNFe_infNFe_infAdic_obsFisco.Set_XTexto(Value: WideString);
begin
  ChildNodes['xTexto'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_infAdic_obsFiscoList }

function TXMLTNFe_infNFe_infAdic_obsFiscoList.Add: IXMLTNFe_infNFe_infAdic_obsFisco;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_infAdic_obsFisco;
end;

function TXMLTNFe_infNFe_infAdic_obsFiscoList.Insert(const Index: Integer): IXMLTNFe_infNFe_infAdic_obsFisco;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_infAdic_obsFisco;
end;

function TXMLTNFe_infNFe_infAdic_obsFiscoList.Get_Item(Index: Integer): IXMLTNFe_infNFe_infAdic_obsFisco;
begin
  Result := List[Index] as IXMLTNFe_infNFe_infAdic_obsFisco;
end;

{ TXMLTNFe_infNFe_infAdic_procRef }

function TXMLTNFe_infNFe_infAdic_procRef.Get_NProc: WideString;
begin
  Result := ChildNodes['nProc'].Text;
end;

procedure TXMLTNFe_infNFe_infAdic_procRef.Set_NProc(Value: WideString);
begin
  ChildNodes['nProc'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_infAdic_procRef.Get_IndProc: WideString;
begin
  Result := ChildNodes['indProc'].Text;
end;

procedure TXMLTNFe_infNFe_infAdic_procRef.Set_IndProc(Value: WideString);
begin
  ChildNodes['indProc'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_infAdic_procRefList }

function TXMLTNFe_infNFe_infAdic_procRefList.Add: IXMLTNFe_infNFe_infAdic_procRef;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_infAdic_procRef;
end;

function TXMLTNFe_infNFe_infAdic_procRefList.Insert(const Index: Integer): IXMLTNFe_infNFe_infAdic_procRef;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_infAdic_procRef;
end;

function TXMLTNFe_infNFe_infAdic_procRefList.Get_Item(Index: Integer): IXMLTNFe_infNFe_infAdic_procRef;
begin
  Result := List[Index] as IXMLTNFe_infNFe_infAdic_procRef;
end;

{ TXMLTNFe_infNFe_exporta }

function TXMLTNFe_infNFe_exporta.Get_UFSaidaPais: WideString;
begin
  Result := ChildNodes['UFSaidaPais'].Text;
end;

procedure TXMLTNFe_infNFe_exporta.Set_UFSaidaPais(Value: WideString);
begin
  ChildNodes['UFSaidaPais'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_exporta.Get_XLocExporta: WideString;
begin
  Result := ChildNodes['xLocExporta'].Text;
end;

procedure TXMLTNFe_infNFe_exporta.Set_XLocExporta(Value: WideString);
begin
  ChildNodes['xLocExporta'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_exporta.Get_XLocDespacho: WideString;
begin
  Result := ChildNodes['xLocDespacho'].Text;
end;

procedure TXMLTNFe_infNFe_exporta.Set_XLocDespacho(Value: WideString);
begin
  ChildNodes['xLocDespacho'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_compra }

function TXMLTNFe_infNFe_compra.Get_XNEmp: WideString;
begin
  Result := ChildNodes['xNEmp'].Text;
end;

procedure TXMLTNFe_infNFe_compra.Set_XNEmp(Value: WideString);
begin
  ChildNodes['xNEmp'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_compra.Get_XPed: WideString;
begin
  Result := ChildNodes['xPed'].Text;
end;

procedure TXMLTNFe_infNFe_compra.Set_XPed(Value: WideString);
begin
  ChildNodes['xPed'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_compra.Get_XCont: WideString;
begin
  Result := ChildNodes['xCont'].Text;
end;

procedure TXMLTNFe_infNFe_compra.Set_XCont(Value: WideString);
begin
  ChildNodes['xCont'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_cana }

procedure TXMLTNFe_infNFe_cana.AfterConstruction;
begin
  RegisterChildNode('forDia', TXMLTNFe_infNFe_cana_forDia);
  RegisterChildNode('deduc', TXMLTNFe_infNFe_cana_deduc);
  FForDia := CreateCollection(TXMLTNFe_infNFe_cana_forDiaList, IXMLTNFe_infNFe_cana_forDia, 'forDia') as IXMLTNFe_infNFe_cana_forDiaList;
  FDeduc := CreateCollection(TXMLTNFe_infNFe_cana_deducList, IXMLTNFe_infNFe_cana_deduc, 'deduc') as IXMLTNFe_infNFe_cana_deducList;
  inherited;
end;

function TXMLTNFe_infNFe_cana.Get_Safra: WideString;
begin
  Result := ChildNodes['safra'].Text;
end;

procedure TXMLTNFe_infNFe_cana.Set_Safra(Value: WideString);
begin
  ChildNodes['safra'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_cana.Get_Ref: WideString;
begin
  Result := ChildNodes['ref'].Text;
end;

procedure TXMLTNFe_infNFe_cana.Set_Ref(Value: WideString);
begin
  ChildNodes['ref'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_cana.Get_ForDia: IXMLTNFe_infNFe_cana_forDiaList;
begin
  Result := FForDia;
end;

function TXMLTNFe_infNFe_cana.Get_QTotMes: WideString;
begin
  Result := ChildNodes['qTotMes'].Text;
end;

procedure TXMLTNFe_infNFe_cana.Set_QTotMes(Value: WideString);
begin
  ChildNodes['qTotMes'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_cana.Get_QTotAnt: WideString;
begin
  Result := ChildNodes['qTotAnt'].Text;
end;

procedure TXMLTNFe_infNFe_cana.Set_QTotAnt(Value: WideString);
begin
  ChildNodes['qTotAnt'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_cana.Get_QTotGer: WideString;
begin
  Result := ChildNodes['qTotGer'].Text;
end;

procedure TXMLTNFe_infNFe_cana.Set_QTotGer(Value: WideString);
begin
  ChildNodes['qTotGer'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_cana.Get_Deduc: IXMLTNFe_infNFe_cana_deducList;
begin
  Result := FDeduc;
end;

function TXMLTNFe_infNFe_cana.Get_VFor: WideString;
begin
  Result := ChildNodes['vFor'].Text;
end;

procedure TXMLTNFe_infNFe_cana.Set_VFor(Value: WideString);
begin
  ChildNodes['vFor'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_cana.Get_VTotDed: WideString;
begin
  Result := ChildNodes['vTotDed'].Text;
end;

procedure TXMLTNFe_infNFe_cana.Set_VTotDed(Value: WideString);
begin
  ChildNodes['vTotDed'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_cana.Get_VLiqFor: WideString;
begin
  Result := ChildNodes['vLiqFor'].Text;
end;

procedure TXMLTNFe_infNFe_cana.Set_VLiqFor(Value: WideString);
begin
  ChildNodes['vLiqFor'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_cana_forDia }

function TXMLTNFe_infNFe_cana_forDia.Get_Dia: WideString;
begin
  Result := AttributeNodes['dia'].Text;
end;

procedure TXMLTNFe_infNFe_cana_forDia.Set_Dia(Value: WideString);
begin
  SetAttribute('dia', Value);
end;

function TXMLTNFe_infNFe_cana_forDia.Get_Qtde: WideString;
begin
  Result := ChildNodes['qtde'].Text;
end;

procedure TXMLTNFe_infNFe_cana_forDia.Set_Qtde(Value: WideString);
begin
  ChildNodes['qtde'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_cana_forDiaList }

function TXMLTNFe_infNFe_cana_forDiaList.Add: IXMLTNFe_infNFe_cana_forDia;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_cana_forDia;
end;

function TXMLTNFe_infNFe_cana_forDiaList.Insert(const Index: Integer): IXMLTNFe_infNFe_cana_forDia;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_cana_forDia;
end;

function TXMLTNFe_infNFe_cana_forDiaList.Get_Item(Index: Integer): IXMLTNFe_infNFe_cana_forDia;
begin
  Result := List[Index] as IXMLTNFe_infNFe_cana_forDia;
end;

{ TXMLTNFe_infNFe_cana_deduc }

function TXMLTNFe_infNFe_cana_deduc.Get_XDed: WideString;
begin
  Result := ChildNodes['xDed'].Text;
end;

procedure TXMLTNFe_infNFe_cana_deduc.Set_XDed(Value: WideString);
begin
  ChildNodes['xDed'].NodeValue := Value;
end;

function TXMLTNFe_infNFe_cana_deduc.Get_VDed: WideString;
begin
  Result := ChildNodes['vDed'].Text;
end;

procedure TXMLTNFe_infNFe_cana_deduc.Set_VDed(Value: WideString);
begin
  ChildNodes['vDed'].NodeValue := Value;
end;

{ TXMLTNFe_infNFe_cana_deducList }

function TXMLTNFe_infNFe_cana_deducList.Add: IXMLTNFe_infNFe_cana_deduc;
begin
  Result := AddItem(-1) as IXMLTNFe_infNFe_cana_deduc;
end;

function TXMLTNFe_infNFe_cana_deducList.Insert(const Index: Integer): IXMLTNFe_infNFe_cana_deduc;
begin
  Result := AddItem(Index) as IXMLTNFe_infNFe_cana_deduc;
end;

function TXMLTNFe_infNFe_cana_deducList.Get_Item(Index: Integer): IXMLTNFe_infNFe_cana_deduc;
begin
  Result := List[Index] as IXMLTNFe_infNFe_cana_deduc;
end;

{ TXMLTNFe_infNFeSupl }

function TXMLTNFe_infNFeSupl.Get_QrCode: WideString;
begin
  Result := ChildNodes['qrCode'].Text;
end;

procedure TXMLTNFe_infNFeSupl.Set_QrCode(Value: WideString);
begin
  ChildNodes['qrCode'].NodeValue := Value;
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
  RegisterChildNode('CanonicalizationMethod', TXMLSignedInfoType_CanonicalizationMethod_ds);
  RegisterChildNode('SignatureMethod', TXMLSignedInfoType_SignatureMethod_ds);
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

function TXMLSignedInfoType_ds.Get_CanonicalizationMethod: IXMLSignedInfoType_CanonicalizationMethod_ds;
begin
  Result := ChildNodes['CanonicalizationMethod'] as IXMLSignedInfoType_CanonicalizationMethod_ds;
end;

function TXMLSignedInfoType_ds.Get_SignatureMethod: IXMLSignedInfoType_SignatureMethod_ds;
begin
  Result := ChildNodes['SignatureMethod'] as IXMLSignedInfoType_SignatureMethod_ds;
end;

function TXMLSignedInfoType_ds.Get_Reference: IXMLReferenceType_ds;
begin
  Result := ChildNodes['Reference'] as IXMLReferenceType_ds;
end;

{ TXMLSignedInfoType_CanonicalizationMethod_ds }

function TXMLSignedInfoType_CanonicalizationMethod_ds.Get_Algorithm: WideString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLSignedInfoType_CanonicalizationMethod_ds.Set_Algorithm(Value: WideString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLSignedInfoType_SignatureMethod_ds }

function TXMLSignedInfoType_SignatureMethod_ds.Get_Algorithm: WideString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLSignedInfoType_SignatureMethod_ds.Set_Algorithm(Value: WideString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLReferenceType_ds }

procedure TXMLReferenceType_ds.AfterConstruction;
begin
  RegisterChildNode('Transforms', TXMLTransformsType_ds);
  RegisterChildNode('DigestMethod', TXMLReferenceType_DigestMethod_ds);
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

function TXMLReferenceType_ds.Get_DigestMethod: IXMLReferenceType_DigestMethod_ds;
begin
  Result := ChildNodes['DigestMethod'] as IXMLReferenceType_DigestMethod_ds;
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

{ TXMLReferenceType_DigestMethod_ds }

function TXMLReferenceType_DigestMethod_ds.Get_Algorithm: WideString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLReferenceType_DigestMethod_ds.Set_Algorithm(Value: WideString);
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
  RegisterChildNode('infProt', TXMLTProtNFe_infProt);
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

function TXMLTProtNFe.Get_InfProt: IXMLTProtNFe_infProt;
begin
  Result := ChildNodes['infProt'] as IXMLTProtNFe_infProt;
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

{ TXMLTProtNFe_infProt }

function TXMLTProtNFe_infProt.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLTProtNFe_infProt.Set_Id(Value: WideString);
begin
  SetAttribute('Id', Value);
end;

function TXMLTProtNFe_infProt.Get_TpAmb: WideString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLTProtNFe_infProt.Set_TpAmb(Value: WideString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLTProtNFe_infProt.Get_VerAplic: WideString;
begin
  Result := ChildNodes['verAplic'].Text;
end;

procedure TXMLTProtNFe_infProt.Set_VerAplic(Value: WideString);
begin
  ChildNodes['verAplic'].NodeValue := Value;
end;

function TXMLTProtNFe_infProt.Get_ChNFe: WideString;
begin
  Result := ChildNodes['chNFe'].Text;
end;

procedure TXMLTProtNFe_infProt.Set_ChNFe(Value: WideString);
begin
  ChildNodes['chNFe'].NodeValue := Value;
end;

function TXMLTProtNFe_infProt.Get_DhRecbto: WideString;
begin
  Result := ChildNodes['dhRecbto'].Text;
end;

procedure TXMLTProtNFe_infProt.Set_DhRecbto(Value: WideString);
begin
  ChildNodes['dhRecbto'].NodeValue := Value;
end;

function TXMLTProtNFe_infProt.Get_NProt: WideString;
begin
  Result := ChildNodes['nProt'].Text;
end;

procedure TXMLTProtNFe_infProt.Set_NProt(Value: WideString);
begin
  ChildNodes['nProt'].NodeValue := Value;
end;

function TXMLTProtNFe_infProt.Get_DigVal: WideString;
begin
  Result := ChildNodes['digVal'].Text;
end;

procedure TXMLTProtNFe_infProt.Set_DigVal(Value: WideString);
begin
  ChildNodes['digVal'].NodeValue := Value;
end;

function TXMLTProtNFe_infProt.Get_CStat: WideString;
begin
  Result := ChildNodes['cStat'].Text;
end;

procedure TXMLTProtNFe_infProt.Set_CStat(Value: WideString);
begin
  ChildNodes['cStat'].NodeValue := Value;
end;

function TXMLTProtNFe_infProt.Get_XMotivo: WideString;
begin
  Result := ChildNodes['xMotivo'].Text;
end;

procedure TXMLTProtNFe_infProt.Set_XMotivo(Value: WideString);
begin
  ChildNodes['xMotivo'].NodeValue := Value;
end;

{ TXMLTRetEnviNFe }

procedure TXMLTRetEnviNFe.AfterConstruction;
begin
  RegisterChildNode('infRec', TXMLTRetEnviNFe_infRec);
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

function TXMLTRetEnviNFe.Get_InfRec: IXMLTRetEnviNFe_infRec;
begin
  Result := ChildNodes['infRec'] as IXMLTRetEnviNFe_infRec;
end;

function TXMLTRetEnviNFe.Get_ProtNFe: IXMLTProtNFe;
begin
  Result := ChildNodes['protNFe'] as IXMLTProtNFe;
end;

{ TXMLTRetEnviNFe_infRec }

function TXMLTRetEnviNFe_infRec.Get_NRec: WideString;
begin
  Result := ChildNodes['nRec'].Text;
end;

procedure TXMLTRetEnviNFe_infRec.Set_NRec(Value: WideString);
begin
  ChildNodes['nRec'].NodeValue := Value;
end;

function TXMLTRetEnviNFe_infRec.Get_TMed: WideString;
begin
  Result := ChildNodes['tMed'].Text;
end;

procedure TXMLTRetEnviNFe_infRec.Set_TMed(Value: WideString);
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

{ TXMLTNFe_infNFe_det_prod_NVEList }

function TXMLTNFe_infNFe_det_prod_NVEList.Add(const Value: WideString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_NVEList.Insert(const Index: Integer; const Value: WideString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLTNFe_infNFe_det_prod_NVEList.Get_Item(Index: Integer): WideString;
begin
  Result := List[Index].NodeValue;
end;

end.