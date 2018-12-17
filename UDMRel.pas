unit UDMRel;

interface

uses
  SysUtils, Classes, RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter, RLPreviewForm, FMTBcd, DB, SqlExpr,
  RLXLSFilter;

type
  TDMRel = class(TDataModule)
    RLPreviewSetup1: TRLPreviewSetup;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    qFilial: TSQLQuery;
    qFilialID: TIntegerField;
    qFilialNOME: TStringField;
    qFilialNOME_INTERNO: TStringField;
    qFilialENDERECO: TStringField;
    qFilialCOMPLEMENTO_END: TStringField;
    qFilialNUM_END: TStringField;
    qFilialBAIRRO: TStringField;
    qFilialCEP: TStringField;
    qFilialID_CIDADE: TIntegerField;
    qFilialCIDADE: TStringField;
    qFilialUF: TStringField;
    qFilialDDD1: TIntegerField;
    qFilialFONE1: TStringField;
    qFilialDDD2: TIntegerField;
    qFilialFONE: TStringField;
    qFilialDDDFAX: TIntegerField;
    qFilialFAX: TStringField;
    qFilialPESSOA: TStringField;
    qFilialCNPJ_CPF: TStringField;
    qFilialINSCR_EST: TStringField;
    qFilialSIMPLES: TStringField;
    qFilialENDLOGO: TStringField;
    qFilialCALCULAR_IPI: TStringField;
    qFilialINATIVO: TStringField;
    qFilialINSCMUNICIPAL: TStringField;
    qFilialCNAE: TStringField;
    qFilialHOMEPAGE: TStringField;
    qFilialID_REGIME_TRIB: TIntegerField;
    qFilialID_PIS: TIntegerField;
    qFilialID_COFINS: TIntegerField;
    qFilialTIPO_PIS: TStringField;
    qFilialTIPO_COFINS: TStringField;
    qFilialPERC_PIS: TFloatField;
    qFilialPERC_COFINS: TFloatField;
    qFilialID_CSTICMS: TIntegerField;
    qFilialID_CSTIPI: TIntegerField;
    qFilialEMAIL_NFE: TStringField;
    qFilialDTESTOQUE: TDateField;
    qFilialPRINCIPAL: TStringField;
    qFilialLIBERADO_ATE: TStringField;
    qFilialULTIMO_ACESSO: TStringField;
    qFilialUSARICMSSIMPLES: TStringField;
    qFilialSERIENORMAL: TStringField;
    qFilialID_REGIME_TRIB_NFSE: TIntegerField;
    qFilialINCENTIVO_CULTURAL: TStringField;
    qFilialSERIE_NFSE: TStringField;
    qFilialID_NATUREZA: TIntegerField;
    qFilialID_SERVICO_SINT: TIntegerField;
    qFilialID_SERVICO_PAD: TIntegerField;
    qFilialPERC_IR: TFloatField;
    qFilialVLR_IR_MINIMO: TFloatField;
    qFilialPERC_ISS: TFloatField;
    qFilialCOD_TRIBUTACAO_MUNICIPIO: TStringField;
    qFilialNUMLOTE: TIntegerField;
    qFilialENDLOGO_NFSE: TStringField;
    qFilialPERC_CSLL: TFloatField;
    qFilialCNAE_NFSE: TStringField;
    qFilialPERC_INSS: TFloatField;
    qFilialID_ATIVIDADE_CID: TIntegerField;
    qFilialNFSE_HOMOLOGACAO: TStringField;
    qFilialPERC_CSRF: TFloatField;
    qFilialVLR_FATURAMENTO_MES_CSRF: TFloatField;
    qFilialPERC_TRIB_SERV: TFloatField;
    qFilialPERC_TRIB_NTS_IND: TFloatField;
    qFilialPERC_TRIB_NTS_VEN: TFloatField;
    qFilialPERC_TRIB_NTS_IND_EXP: TFloatField;
    qFilialPERC_TRIB_NTS_VEN_EXP: TFloatField;
    qFilialPERC_LISTA_CAMEX: TFloatField;
    qFilialIMPRESSAO_MATRICIAL: TStringField;
    RLXLSFilter1: TRLXLSFilter;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRel: TDMRel;

implementation

uses DmdDatabase, uUtilPadrao, SendMailOptions;

{$R *.dfm}

procedure TDMRel.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TDMRel.DataModuleCreate(Sender: TObject);
begin
  if vFilial > 0 then
  begin
    qFilial.Close;
    qFilial.ParamByName('ID').AsInteger := vFilial;
    qFilial.Open;

    {vEmail_Fortes_Corpo   := vEmail_Fortes_Corpo + #13 + qFilialNOME.AsString + #13
                           + qFilialCNPJ_CPF.AsString + #13
                           + qFilialENDERECO.AsString + ', ' + qFilialNUM_END.AsString;
    if trim(qFilialCOMPLEMENTO_END.AsString) <> '' then
      vEmail_Fortes_Corpo := vEmail_Fortes_Corpo + ', ' + qFilialCOMPLEMENTO_END.AsString;
    vEmail_Fortes_Corpo := vEmail_Fortes_Corpo + #13 + qFilialCIDADE.AsString + '/' + qFilialUF.AsString + #13
                         + qFilialDDD1.AsString + ' ' + qFilialFONE.AsString;}

    vEmail_Fortes_Corpo   := vEmail_Fortes_Corpo + #10 + qFilialNOME.AsString + #10
                           + qFilialCNPJ_CPF.AsString + #10
                           + qFilialENDERECO.AsString + ', ' + qFilialNUM_END.AsString;
    if trim(qFilialCOMPLEMENTO_END.AsString) <> '' then
      vEmail_Fortes_Corpo := vEmail_Fortes_Corpo + ', ' + qFilialCOMPLEMENTO_END.AsString;
    vEmail_Fortes_Corpo := vEmail_Fortes_Corpo + #10 + qFilialCIDADE.AsString + '/' + qFilialUF.AsString + #10
                         + qFilialDDD1.AsString + ' ' + qFilialFONE.AsString;

  end;
end;

procedure TDMRel.DataModuleDestroy(Sender: TObject);
begin
  vEmail_Fortes_Corpo := '';
end;

end.
