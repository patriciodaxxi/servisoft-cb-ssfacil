unit UDMConsNotas_ES;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, frxBarcode, frxClass, frxDBSet;

type
  TDMConsNotas_ES = class(TDataModule)
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaID_CFOP: TIntegerField;
    cdsConsultaNUMNOTA: TIntegerField;
    cdsConsultaDTEMISSAO: TDateField;
    cdsConsultaDTSAIDAENTRADA: TDateField;
    cdsConsultaNOME_CLIENTE: TStringField;
    cdsConsultaCODCFOP: TStringField;
    cdsConsultaCANCELADA: TStringField;
    cdsConsultaNFEDENEGADA: TStringField;
    cdsConsultaMOTIVO_CANCELADA: TStringField;
    cdsConsultaMOTIVO_CONTINGENCIA: TStringField;
    cdsConsultaMOTIVO_DENEGADA: TStringField;
    cdsConsultaFILIAL: TIntegerField;
    cdsConsultaNOME_FILIAL: TStringField;
    cdsConsultaVLR_TOTAL: TFloatField;
    cdsConsultaBASE_ICMS: TFloatField;
    cdsConsultaBASE_ICMSSIMPLES: TFloatField;
    cdsConsultaVLR_ICMS: TFloatField;
    cdsConsultaVLR_ICMSSIMPLES: TFloatField;
    cdsConsultaVLR_FRETE: TFloatField;
    cdsConsultaVLR_IPI: TFloatField;
    cdsConsultaTIPO_NOTA: TStringField;
    cdsConsultaSERIE: TStringField;
    cdsConsultaNOME_INTERNO: TStringField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    IntegerField2: TIntegerField;
    dsVendedor: TDataSource;
    cdsVendedorNOME: TStringField;
    cdsConsultaID_VENDEDOR: TIntegerField;
    sdsNotaFiscal_Rot: TSQLDataSet;
    dspNotaFiscal_Rot: TDataSetProvider;
    cdsNotaFiscal_Rot: TClientDataSet;
    dsNotaFiscal_Rot: TDataSource;
    qParametros: TSQLQuery;
    qParametrosSERIENORMAL: TStringField;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteFANTASIA: TStringField;
    dsCliente: TDataSource;
    cdsNotaFiscal_RotID: TIntegerField;
    cdsNotaFiscal_RotNUMNOTA: TIntegerField;
    cdsNotaFiscal_RotQTDVOLUME: TIntegerField;
    cdsNotaFiscal_RotNOME_CLIENTE: TStringField;
    cdsNotaFiscal_RotENDERECO: TStringField;
    cdsNotaFiscal_RotENDERECO_ENT: TStringField;
    cdsNotaFiscal_RotNUM_END: TStringField;
    cdsNotaFiscal_RotNUM_END_ENT: TStringField;
    cdsNotaFiscal_RotBAIRRO: TStringField;
    cdsNotaFiscal_RotBAIRRO_ENT: TStringField;
    cdsNotaFiscal_RotID_CIDADE: TIntegerField;
    cdsNotaFiscal_RotID_CIDADE_ENT: TIntegerField;
    cdsNotaFiscal_RotCEP: TStringField;
    cdsNotaFiscal_RotCEP_ENT: TStringField;
    cdsNotaFiscal_RotUF: TStringField;
    cdsNotaFiscal_RotUF_ENT: TStringField;
    cdsNotaFiscal_RotCOMPLEMENTO_END: TStringField;
    cdsNotaFiscal_RotCOMPLEMENTO_END_ENT: TStringField;
    cdsNotaFiscal_RotCNPJ_CPF: TStringField;
    cdsNotaFiscal_RotCNPJ_CPF_ENT: TStringField;
    cdsNotaFiscal_RotPESSOA: TStringField;
    cdsNotaFiscal_RotPESSOA_ENT: TStringField;
    cdsNotaFiscal_RotSERIE: TStringField;
    mEtiq_Rotulo: TClientDataSet;
    dsmEtiq_Rotulo: TDataSource;
    mEtiq_RotuloNome_Filial: TStringField;
    mEtiq_RotuloCNPJ_CPF_Filial: TStringField;
    mEtiq_RotuloEnd_Filial: TStringField;
    mEtiq_RotuloBairro_Filial: TStringField;
    mEtiq_RotuloCep_Filial: TStringField;
    mEtiq_RotuloCidade_Filial: TStringField;
    mEtiq_RotuloUF_Filial: TStringField;
    mEtiq_RotuloComplemento_Filial: TStringField;
    mEtiq_RotuloNome_Cliente: TStringField;
    mEtiq_RotuloCNPJ_CPF_Cliente: TStringField;
    mEtiq_RotuloEnd_Cliente: TStringField;
    mEtiq_RotuloBairro_Cliente: TStringField;
    mEtiq_RotuloCep_Cliente: TStringField;
    mEtiq_RotuloCidade_Cliente: TStringField;
    mEtiq_RotuloUF_Cliente: TStringField;
    mEtiq_RotuloComplemento_Cliente: TStringField;
    mEtiq_RotuloNumero: TIntegerField;
    mEtiq_RotuloNumero_Total: TIntegerField;
    cdsNotaFiscal_RotLOCALENTREGA: TStringField;
    cdsFilialENDERECO: TStringField;
    cdsFilialCOMPLEMENTO_END: TStringField;
    cdsFilialNUM_END: TStringField;
    cdsFilialBAIRRO: TStringField;
    cdsFilialID_CIDADE: TIntegerField;
    cdsFilialUF: TStringField;
    cdsFilialCEP: TStringField;
    qCidade: TSQLQuery;
    qCidadeID: TIntegerField;
    qCidadeNOME: TStringField;
    qCidadeUF: TStringField;
    qCidadeCODMUNICIPIO: TStringField;
    qCidadeID_PROVEDOR: TIntegerField;
    qCidadeLINKNFSE: TStringField;
    qCidadeFONE_PREFEITURA: TStringField;
    qCidadeSITE_PREFEITURA: TStringField;
    qCidadeEND_LOGO_PREFEITURA: TStringField;
    cdsNotaFiscal_RotclLocalEntrega: TStringField;
    mEtiq_RotuloLocal_Endereco: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    cdsFilialNOME_CIDADE: TStringField;
    cdsClienteENDERECO: TStringField;
    cdsClienteCOMPLEMENTO_END: TStringField;
    cdsClienteNUM_END: TStringField;
    cdsClienteBAIRRO: TStringField;
    cdsClienteID_CIDADE: TIntegerField;
    cdsClienteUF: TStringField;
    cdsClienteCEP: TStringField;
    cdsClientePESSOA: TStringField;
    cdsClienteCNPJ_CPF: TStringField;
    cdsClienteENDERECO_ENT: TStringField;
    cdsClienteCOMPLEMENTO_END_ENT: TStringField;
    cdsClienteNUM_END_ENT: TStringField;
    cdsClienteBAIRRO_ENT: TStringField;
    cdsClienteID_CIDADE_ENT: TIntegerField;
    cdsClienteCEP_ENT: TStringField;
    cdsClienteUF_ENT: TStringField;
    cdsClientePESSOA_ENT: TStringField;
    cdsClienteCNPJ_CPF_ENT: TStringField;
    cdsNotaFiscal_RotFILIAL: TIntegerField;
    cdsNotaFiscal_RotID_CLIENTE: TIntegerField;
    mEtiq_RotuloNumNota: TIntegerField;
    mEtiq_RotuloNumPedido: TStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    mEtiq_RotuloData: TDateField;
    cdsNotaFiscal_RotDTEMISSAO: TDateField;
    sdsMinuta: TSQLDataSet;
    dspMinuta: TDataSetProvider;
    cdsMinuta: TClientDataSet;
    dsMinuta: TDataSource;
    cdsMinutaID: TIntegerField;
    cdsMinutaID_CLIENTE: TIntegerField;
    cdsMinutaID_TRANSPORTADORA: TIntegerField;
    cdsMinutaQTDVOLUME: TIntegerField;
    cdsMinutaQTDTOTAL_ITENS: TIntegerField;
    cdsMinutaVLR_NOTA: TFloatField;
    cdsMinutaTIPO_FRETE: TStringField;
    cdsMinutaPESOLIQUIDO: TFloatField;
    cdsMinutaPESOBRUTO: TFloatField;
    cdsMinutaNOME_CLIENTE: TStringField;
    cdsMinutaNOME_TRANSPORTADORA: TStringField;
    cdsMinutaUF: TStringField;
    cdsMinutaCIDADE: TStringField;
    cdsMinutaTIPO_FRETE_DESC: TStringField;
    cdsMinutaSERIE: TStringField;
    mNotaSel: TClientDataSet;
    mNotaSelNumNota: TIntegerField;
    frxDBDataset2: TfrxDBDataset;
    cdsMinutaNUMNOTA: TIntegerField;
    dsmNotaSel: TDataSource;
    cdsMinutaSELECIONADO: TStringField;
    sdsNotaFiscal_Cli_Parc: TSQLDataSet;
    dspNotaFiscal_Cli_Parc: TDataSetProvider;
    cdsNotaFiscal_Cli_Parc: TClientDataSet;
    dsNotaFiscal_Cli_Parc: TDataSource;
    cdsNotaFiscal_Cli_ParcID: TIntegerField;
    cdsNotaFiscal_Cli_ParcITEM: TIntegerField;
    cdsNotaFiscal_Cli_ParcDTVENCIMENTO: TDateField;
    cdsNotaFiscal_Cli_ParcVLR_VENCIMENTO: TFloatField;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    mCliente_Sel: TClientDataSet;
    mCliente_SelID: TIntegerField;
    mCliente_SelNome: TStringField;
    dsmCliente_Sel: TDataSource;
    cdsConsultaNOME_VENDEDOR: TStringField;
    cdsConsultaQTD: TFloatField;
    cdsConsultaVLR_DUPLICATA: TFloatField;
    cdsConsultaID_TRANSPORTADORA: TIntegerField;
    qFilial_Rel: TSQLQuery;
    qFilial_RelID: TIntegerField;
    qFilial_RelITEM: TIntegerField;
    qFilial_RelTIPO: TSmallintField;
    qFilial_RelCAMINHO: TStringField;
    qFilial_RelPOSICAO: TSmallintField;
    cdsConsultaVLR_DESCONTO: TFloatField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsNotaFiscal_RotTIPO_NOTA: TStringField;
    mEtiq_RotuloEmail_Filial: TStringField;
    cdsFilialEMAIL: TStringField;
    mEtiq_RotuloNome_Transp: TStringField;
    cdsNotaFiscal_RotNOME_TRANSP: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsNotaFiscal_RotCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    ctConsulta: String;
    ctNotaFiscal_Rot: String;
    ctMinuta: String;
    ctCliente : String;

    procedure prc_Abrir_Cliente(ID : Integer);
    procedure prc_Abrir_Transportadora(ID : Integer);

  end;

var
  DMConsNotas_ES: TDMConsNotas_ES;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}                   

procedure TDMConsNotas_ES.DataModuleCreate(Sender: TObject);
begin
  ctConsulta       := sdsConsulta.CommandText;
  ctNotaFiscal_Rot := sdsNotaFiscal_Rot.CommandText;
  ctMinuta         := sdsMinuta.CommandText;
  ctCliente        := sdsCliente.CommandText;
  cdsFilial.Open;
  if trim(vTipo_Etiqueta) <> 'ROT' then
  begin
    cdsPessoa.Open;
    cdsCliente.Open;
  end;
  cdsVendedor.Open;
  qParametros.Open;
end;

procedure TDMConsNotas_ES.cdsNotaFiscal_RotCalcFields(DataSet: TDataSet);
begin
  if cdsNotaFiscal_RotLOCALENTREGA.AsString = 'N' then
    cdsNotaFiscal_RotclLocalEntrega.AsString := 'End. Cadastro'
  else
    cdsNotaFiscal_RotclLocalEntrega.AsString := 'End. Entrega';
end;

procedure TDMConsNotas_ES.prc_Abrir_Cliente(ID: Integer);
begin
  cdsCliente.Close;
  sdsCliente.CommandText := ctCliente;
  if ID > 0 then
    sdsCliente.CommandText := sdsCliente.CommandText + ' AND CODIGO = ' + IntToStr(ID);
  sdsCliente.CommandText := sdsCliente.CommandText + ' AND TP_CLIENTE = ' + QuotedStr('S');

  cdsCliente.Open;
end;

procedure TDMConsNotas_ES.prc_Abrir_Transportadora(ID: Integer);
begin
  cdsCliente.Close;
  sdsCliente.CommandText := ctCliente;
  if ID > 0 then
    sdsCliente.CommandText := sdsCliente.CommandText + ' AND CODIGO = ' + IntToStr(ID);
  sdsCliente.CommandText := sdsCliente.CommandText + ' AND TP_TRANSPORTADORA = ' + QuotedStr('S');
  cdsCliente.Open;
end;

end.
