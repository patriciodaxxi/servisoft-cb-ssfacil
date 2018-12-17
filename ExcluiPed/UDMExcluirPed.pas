unit UDMExcluirPed;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMExcluirPed = class(TDataModule)
    sdsConsulta_Ped: TSQLDataSet;
    dspConsulta_Ped: TDataSetProvider;
    cdsConsulta_Ped: TClientDataSet;
    dsConsulta_Ped: TDataSource;
    sdsConsulta_Itens: TSQLDataSet;
    dspConsulta_Itens: TDataSetProvider;
    cdsConsulta_Itens: TClientDataSet;
    cdsConsulta_ItensID: TIntegerField;
    cdsConsulta_ItensITEM: TIntegerField;
    cdsConsulta_ItensID_PRODUTO: TIntegerField;
    cdsConsulta_ItensID_COR: TFMTBCDField;
    cdsConsulta_ItensTAMANHO: TStringField;
    cdsConsulta_ItensQTD: TFloatField;
    cdsConsulta_ItensQTD_FATURADO: TFloatField;
    cdsConsulta_ItensQTD_RESTANTE: TFloatField;
    cdsConsulta_ItensQTD_CANCELADO: TFloatField;
    cdsConsulta_ItensVLR_DESCONTO: TFloatField;
    cdsConsulta_ItensCANCELADO: TStringField;
    cdsConsulta_ItensDTENTREGA: TDateField;
    cdsConsulta_ItensFATURADO: TStringField;
    cdsConsulta_ItensDTFATURADO: TDateField;
    cdsConsulta_ItensCOD_PRODUTO_CLIENTE: TStringField;
    cdsConsulta_ItensTIPO: TStringField;
    cdsConsulta_ItensUNIDADE: TStringField;
    cdsConsulta_ItensNUMOS: TStringField;
    cdsConsulta_ItensPERC_DESCONTO: TFloatField;
    cdsConsulta_ItensVLR_FRETE: TFloatField;
    cdsConsulta_ItensBASE_ICMS: TFloatField;
    cdsConsulta_ItensVLR_ICMS: TFloatField;
    cdsConsulta_ItensBASE_ICMSTRANSF: TFloatField;
    cdsConsulta_ItensPERC_TRANSF: TFloatField;
    cdsConsulta_ItensVLR_TRANSF: TFloatField;
    cdsConsulta_ItensVLR_IPI: TFloatField;
    cdsConsulta_ItensBASE_ICMSSIMPLES: TFloatField;
    cdsConsulta_ItensVLR_ICMSSIMPLES: TFloatField;
    cdsConsulta_ItensPERC_ICMSSIMPLES: TFloatField;
    cdsConsulta_ItensBASE_ICMSSUBST: TFloatField;
    cdsConsulta_ItensVLR_ICMSSUBST: TFloatField;
    cdsConsulta_ItensVLR_DESCONTORATEIO: TFloatField;
    cdsConsulta_ItensID_CFOP: TIntegerField;
    cdsConsulta_ItensID_CSTIPI: TIntegerField;
    cdsConsulta_ItensID_CSTICMS: TIntegerField;
    cdsConsulta_ItensPERC_ICMS: TFloatField;
    cdsConsulta_ItensPERC_IPI: TFloatField;
    cdsConsulta_ItensREFERENCIA: TStringField;
    cdsConsulta_ItensNOMEPRODUTO: TStringField;
    cdsConsulta_ItensOBS_COMPLEMENTAR: TStringField;
    cdsConsulta_ItensCALCULARICMSSOBREIPI: TStringField;
    cdsConsulta_ItensVLR_UNITARIO: TFloatField;
    cdsConsulta_ItensID_CONFIG_CFOP: TIntegerField;
    cdsConsulta_ItensVLR_TOTAL: TFloatField;
    cdsConsulta_ItensQTD_AFATURAR: TFloatField;
    cdsConsulta_ItensID_VARIACAO: TIntegerField;
    cdsConsulta_ItensOBS: TMemoField;
    cdsConsulta_ItensPERC_TRIBICMS: TFloatField;
    cdsConsulta_ItensID_ATELIER: TIntegerField;
    cdsConsulta_ItensVLR_UNITARIO_ATELIER: TFloatField;
    cdsConsulta_ItensVLR_TOTAL_ATELIER: TFloatField;
    cdsConsulta_ItensDT_ENVIO_ATELIER: TDateField;
    cdsConsulta_ItensDT_RETORNO_ATELIER: TDateField;
    cdsConsulta_ItensVLR_PAGTO_ATELIER: TFloatField;
    cdsConsulta_ItensDT_PAGTO_ATELIER: TDateField;
    cdsConsulta_ItensAPROVADO_ORC: TStringField;
    cdsConsulta_ItensMOTIVO_NAO_APROV: TMemoField;
    cdsConsulta_ItensDTAPROVADO_NAO: TDateField;
    cdsConsulta_ItensID_ORCAMENTO: TIntegerField;
    cdsConsulta_ItensITEM_ORCAMENTO: TIntegerField;
    cdsConsulta_ItensQTD_LIBERADA: TFloatField;
    cdsConsulta_ItensQTD_PRODUZIDA: TFloatField;
    cdsConsulta_ItensNUM_LOTE: TIntegerField;
    cdsConsulta_ItensNUM_TALAO: TStringField;
    cdsConsulta_ItensGERAR_LOTE: TStringField;
    cdsConsulta_ItensCARIMBO: TStringField;
    cdsConsulta_ItensDTPRODUCAO: TDateField;
    cdsConsulta_ItensID_NCM: TIntegerField;
    cdsConsulta_ItensTIPO_ORCAMENTO: TStringField;
    cdsConsulta_ItensEND_FOTO: TStringField;
    cdsConsulta_ItensITEM_CLIENTE: TIntegerField;
    cdsConsulta_ItensQTD_PECA: TIntegerField;
    cdsConsulta_ItensGRAVACAO_COM_ERRO: TStringField;
    cdsConsulta_ItensQTD_FUT: TFloatField;
    cdsConsulta_ItensITEM_COMBINACAO: TIntegerField;
    cdsConsulta_ItensTIPO_REG: TStringField;
    cdsConsulta_ItensID_MOVESTOQUE: TIntegerField;
    cdsConsulta_ItensGERAR_ESTOQUE: TStringField;
    cdsConsulta_ItensITEM_ORIGINAL: TIntegerField;
    cdsConsulta_ItensPERC_DIFERIMENTO: TFloatField;
    cdsConsulta_ItensVLR_ICMSDIFERIDO: TFloatField;
    cdsConsulta_ItensTIPO_ACESSORIO: TStringField;
    cdsConsulta_ItensCOMPRIMENTO_VOLUME: TFloatField;
    cdsConsulta_ItensQTD_LANCAR_ESTOQUE: TFloatField;
    cdsConsulta_ItensPERC_COMISSAO: TFloatField;
    cdsConsulta_ItensNUM_LOTE_CONTROLE: TStringField;
    cdsConsulta_ItensDTEXPEDICAO: TDateField;
    cdsConsulta_ItensDTFATURA: TDateField;
    cdsConsulta_ItensPERC_ICMS_FCP: TFloatField;
    cdsConsulta_ItensPERC_ICMS_UF_DEST: TFloatField;
    cdsConsulta_ItensPERC_ICMS_PARTILHA: TFloatField;
    cdsConsulta_ItensVLR_ICMS_FCP: TFloatField;
    cdsConsulta_ItensVLR_ICMS_UF_DEST: TFloatField;
    cdsConsulta_ItensVLR_ICMS_UF_REMET: TFloatField;
    cdsConsulta_ItensPERC_ICMS_INTER: TFloatField;
    cdsConsulta_ItensCOPIAR_SELECIONADO: TStringField;
    cdsConsulta_ItensVLR_DUPLICATA: TFloatField;
    cdsConsulta_ItensGERAR_DUPLICATA: TStringField;
    cdsConsulta_ItensSELECIONADO: TStringField;
    cdsConsulta_ItensQTD_CONFERIDO: TFloatField;
    cdsConsulta_ItensDTCONFERENCIA: TDateField;
    cdsConsulta_ItensHRCONFERENCIA: TTimeField;
    cdsConsulta_ItensUSUARIO_CONF: TStringField;
    cdsConsulta_ItensVLR_ICMSFRETE: TFloatField;
    cdsConsulta_ItensQTD_SOBRA_OC: TFloatField;
    cdsConsulta_ItensTIPO_SERVICO: TStringField;
    cdsConsulta_ItensID_SERVICO_INT: TIntegerField;
    cdsConsulta_ItensNOME_SERVICO_INT: TStringField;
    cdsConsulta_ItensPRECO_CUSTO: TFloatField;
    cdsConsulta_ItensPERC_MARGEM: TFloatField;
    cdsConsulta_ItensPERC_MARGEM2: TFloatField;
    cdsConsulta_ItensID_OS_SERV: TIntegerField;
    cdsConsulta_ItensNUM_OS_SERV: TIntegerField;
    cdsConsulta_ItensID_SERVICO: TIntegerField;
    cdsConsulta_ItensNUM_NOTA_ENT: TIntegerField;
    cdsConsulta_ItensSERIE_NOTA_ENT: TStringField;
    cdsConsulta_ItensENCERADO: TStringField;
    cdsConsulta_ItensUNIDADE_PROD: TStringField;
    cdsConsulta_ItensCONV_UNIDADE: TFloatField;
    cdsConsulta_ItensTALAO_IMPRESSO: TStringField;
    cdsConsulta_ItensOBS_ETIQUETA: TStringField;
    cdsConsulta_ItensQTD_CAIXA: TIntegerField;
    cdsConsulta_ItensCOD_COR_CLIENTE: TStringField;
    cdsConsulta_ItensNOME_COR_CLIENTE: TStringField;
    cdsConsulta_ItensTAMANHO_CLIENTE: TStringField;
    dsConsulta_Itens: TDataSource;
    cdsConsulta_PedID: TIntegerField;
    cdsConsulta_PedID_CLIENTE: TIntegerField;
    cdsConsulta_PedNUM_PEDIDO: TIntegerField;
    cdsConsulta_PedFILIAL: TIntegerField;
    cdsConsulta_PedPEDIDO_CLIENTE: TStringField;
    cdsConsulta_PedDTEMISSAO: TDateField;
    cdsConsulta_PedDTENTREGA: TDateField;
    cdsConsulta_PedVLR_TOTAL: TFloatField;
    cdsConsulta_PedVLR_ITENS: TFloatField;
    cdsConsulta_PedFATURADO: TStringField;
    cdsConsulta_PedQTD: TFloatField;
    cdsConsulta_PedCANCELADO: TStringField;
    cdsConsulta_PedID_VENDEDOR: TIntegerField;
    cdsConsulta_PedID_CFOP: TIntegerField;
    cdsConsulta_PedNOMECLIENTE_CAD: TStringField;
    cdsConsulta_PedTIPO_REG: TStringField;
    cdsConsulta_PedPERC_COMISSAO: TFloatField;
    cdsConsulta_PedNOME_CLIENTE: TStringField;
    cdsConsulta_PedFANTASIA: TStringField;
    cdsConsulta_PedUF: TStringField;
    cdsConsulta_PedNOME_CONSUMIDOR: TStringField;
    cdsConsulta_PedVLR_IPI: TFloatField;
    cdsConsulta_PedUSUARIO: TStringField;
    cdsConsulta_PedVLR_DUPLICATA: TFloatField;
    cdsConsulta_PedSELECIONADO: TStringField;
    cdsConsulta_PedNOME_VENDEDOR: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctConsulta_Ped : String;
  end;

var
  DMExcluirPed: TDMExcluirPed;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMExcluirPed.DataModuleCreate(Sender: TObject);
begin
  ctConsulta_Ped := sdsConsulta_Ped.CommandText;
end;

end.
