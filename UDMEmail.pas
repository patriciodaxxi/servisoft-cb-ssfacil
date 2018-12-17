unit UDMEmail;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TDMEmail = class(TDataModule)
    sdsPessoa: TSQLDataSet;
    cdsPessoa: TClientDataSet;
    dspPessoa: TDataSetProvider;
    mAuxiliar: TClientDataSet;
    dsmAuxiliar: TDataSource;
    mAuxiliarCodigo: TIntegerField;
    mAuxiliarNome: TStringField;
    mAuxiliarEmail: TStringField;
    mAuxiliarCidade: TStringField;
    mAuxiliarUF: TStringField;
    mAuxiliarCnpj_Cpf: TStringField;
    mSemEmail: TClientDataSet;
    mSemEmailCodigo: TIntegerField;
    mSemEmailNome: TStringField;
    mSemEmailEmail: TStringField;
    mSemEmailCidade: TStringField;
    mSemEmailUF: TStringField;
    mSemEmailCnpj_Cpf: TStringField;
    dsmSemEmail: TDataSource;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaCNPJ_CPF: TStringField;
    cdsPessoaEMAIL_PGTO: TStringField;
    cdsPessoaCIDADE: TStringField;
    cdsPessoaUF: TStringField;
    sdsFilial: TSQLDataSet;
    cdsFilial: TClientDataSet;
    dspFilial: TDataSetProvider;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialEMAIL_FINANCEIRO: TStringField;
    mAuxiliarEmail_Filial: TStringField;
    mSemEmailEmail_Filial: TStringField;
    qFilial_Email: TSQLQuery;
    qFilial_EmailID_FILIAL: TIntegerField;
    qFilial_EmailID_CONFIG_EMAIL: TIntegerField;
    qFilial_EmailNOME_CONFIG: TStringField;
    qFilial_EmailREMETENTE_NOME: TStringField;
    qFilial_EmailREMETENTE_EMAIL: TStringField;
    qFilial_EmailSMTP_CLIENTE: TStringField;
    qFilial_EmailSMTP_PORTA: TIntegerField;
    qFilial_EmailSMTP_REQUER_SSL: TStringField;
    qFilial_EmailSMTP_USUARIO: TStringField;
    qFilial_EmailSMTP_SENHA: TStringField;
    qFilial_EmailSOLICITAR_CONFIRMACAO: TStringField;
    qFilial_EmailBASE: TSmallintField;
    qFilial_EmailCNPJ_CPF_FILIAL: TStringField;
    qFilial_EmailLOCALSERVIDORNFE: TStringField;
    mAuxiliarEnviado: TStringField;
    qParametros: TSQLQuery;
    qParametrosID_BANCO_REMESSA: TIntegerField;
    qParametrosLOCALSERVIDORNFE: TStringField;
    dsFilial: TDataSource;
    cdsFilialNOME_INTERNO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctPessoa : String;
  end;

var
  DMEmail: TDMEmail;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMEmail.DataModuleCreate(Sender: TObject);
begin
  ctPessoa := sdsPessoa.CommandText;
  cdsFilial.Open;
  qParametros.Open;
end;

end.
