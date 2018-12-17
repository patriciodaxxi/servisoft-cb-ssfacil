unit uDmEtiqueta;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmEtiqueta = class(TDataModule)
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    mEtiqueta: TClientDataSet;
    dsmEtiqueta: TDataSource;
    mEtiquetaACABADO_ID: TIntegerField;
    mEtiquetaACABADO_NOME: TStringField;
    mEtiquetaCOMPRIMENTO: TFloatField;
    mEtiquetaLARGURA: TFloatField;
    mEtiquetaALTURA: TFloatField;
    mEtiquetaQUANTIDADE: TIntegerField;
    mEtiquetaOC: TStringField;
    mEtiquetaOP_DATA: TDateField;
    mEtiquetaFD_TP_SP: TWordField;
    sdsAcabado: TSQLDataSet;
    dspAcabado: TDataSetProvider;
    cdsAcabado: TClientDataSet;
    dsAcabado: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFilialENDERECO: TStringField;
    cdsFilialCOMPLEMENTO_END: TStringField;
    cdsFilialNUM_END: TStringField;
    cdsFilialBAIRRO: TStringField;
    cdsFilialCEP: TStringField;
    cdsFilialID_CIDADE: TIntegerField;
    cdsFilialCIDADE: TStringField;
    cdsFilialUF: TStringField;
    cdsFilialDDD1: TIntegerField;
    cdsFilialFONE1: TStringField;
    cdsFilialDDD2: TIntegerField;
    cdsFilialFONE: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    sdsFilialID: TIntegerField;
    sdsFilialNOME: TStringField;
    sdsFilialNOME_INTERNO: TStringField;
    sdsFilialENDERECO: TStringField;
    sdsFilialCOMPLEMENTO_END: TStringField;
    sdsFilialNUM_END: TStringField;
    sdsFilialBAIRRO: TStringField;
    sdsFilialCEP: TStringField;
    sdsFilialID_CIDADE: TIntegerField;
    sdsFilialCIDADE: TStringField;
    sdsFilialUF: TStringField;
    sdsFilialDDD1: TIntegerField;
    sdsFilialFONE1: TStringField;
    sdsFilialDDD2: TIntegerField;
    sdsFilialFONE: TStringField;
    sdsFilialCNPJ_CPF: TStringField;
    cdsAcabadoID: TIntegerField;
    cdsAcabadoNOME: TStringField;
    cdsAcabadoREFERENCIA: TStringField;
    sdsAcabadoID: TIntegerField;
    sdsAcabadoNOME: TStringField;
    sdsAcabadoREFERENCIA: TStringField;
    sdsAcabadoFD_COMPR: TFMTBCDField;
    sdsAcabadoFD_LARGURA: TFMTBCDField;
    sdsAcabadoFD_ALTURA: TFMTBCDField;
    cdsAcabadoFD_COMPR: TFMTBCDField;
    cdsAcabadoFD_LARGURA: TFMTBCDField;
    cdsAcabadoFD_ALTURA: TFMTBCDField;
    sdsOP: TSQLDataSet;
    dspOP: TDataSetProvider;
    cdsOP: TClientDataSet;
    dsOP: TDataSource;
    sdsOPID: TIntegerField;
    sdsOPDT_EMISSAO: TDateField;
    sdsOPDT_ENTREGA: TDateField;
    sdsOPACABADO_ID: TIntegerField;
    sdsOPQTD: TIntegerField;
    sdsOPOBS: TStringField;
    sdsOPCLIENTE_ID: TIntegerField;
    cdsOPID: TIntegerField;
    cdsOPDT_EMISSAO: TDateField;
    cdsOPDT_ENTREGA: TDateField;
    cdsOPACABADO_ID: TIntegerField;
    cdsOPQTD: TIntegerField;
    cdsOPOBS: TStringField;
    cdsOPCLIENTE_ID: TIntegerField;
    mEtiquetaCLIENTE_ID: TIntegerField;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    sdsOPOC: TStringField;
    cdsOPOC: TStringField;
    mEtiquetaOP_ID: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEtiqueta: TdmEtiqueta;

implementation

uses uDmDatabase;

{$R *.dfm}

end.
