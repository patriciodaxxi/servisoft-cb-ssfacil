unit UDMConsDuplicata;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TDMConsDuplicata = class(TDataModule)
    sdsSaldo_Pessoa: TSQLDataSet;
    dspSaldo_Pessoa: TDataSetProvider;
    cdsSaldo_Pessoa: TClientDataSet;
    cdsSaldo_PessoaVLR_RESTANTE: TFloatField;
    cdsSaldo_PessoaID_PESSOA: TIntegerField;
    cdsSaldo_PessoaNOME_PESSOA: TStringField;
    cdsSaldo_PessoaVLR_PARCELA: TFloatField;
    cdsSaldo_PessoaVLR_PAGO: TFloatField;
    dsSaldo_Pessoa: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorPERC_COMISSAO: TFloatField;
    cdsVendedorTIPO_COMISSAO: TStringField;
    cdsVendedorPERC_COMISSAO_VEND: TFloatField;
    dsVendedor: TDataSource;
    qParametros_Fin: TSQLQuery;
    qParametros_FinID: TIntegerField;
    qParametros_FinCONTROLAR_DUP_USUARIO: TStringField;
    qParametros_FinMOSTRAR_VLR_ROD_DUP: TStringField;
    qParametros_FinSEPARADOR_NUM_DA_PARC: TStringField;
    qParametros_FinMOSTRAR_VLR_MULTA_DUP: TStringField;
    qParametros_FinUSA_REGIME_CAIXA_DUP: TStringField;
    qParametros_FinIMP_NOSSO_NUMERO: TStringField;
    qParametros_FinDUP_DIA_FIN_VECTO: TStringField;
    qParametros_FinEXIGIR_CONTA_ORC_DUP: TStringField;
    qParametros_FinUSA_NGR: TStringField;
    qParametros_FinUSA_APROVA_DUP: TStringField;
    qParametros_FinMANTER_DUP_CANC: TStringField;
    qParametros_FinUSA_CCUSTO_DUP: TStringField;
    qParametros_FinID_CONTABIL_OPE_BAIXA: TIntegerField;
    qParametros_Usuario: TSQLQuery;
    qParametros_UsuarioID: TIntegerField;
    qParametros_UsuarioUSUARIO: TStringField;
    qParametros_UsuarioTIPO_REG_PRODUTO_PADRAO: TStringField;
    qParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO: TStringField;
    qParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT: TStringField;
    qParametros_UsuarioMOSTRAR_TOTAL_PEDIDO: TStringField;
    qParametros_UsuarioMOSTRAR_DUP_REC_PAG: TStringField;
    qParametros_UsuarioPERMITE_APROVAR_DUP: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctSaldo_Pessoa : String;

  end;

var
  DMConsDuplicata: TDMConsDuplicata;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TDMConsDuplicata.DataModuleCreate(Sender: TObject);
begin
  ctSaldo_Pessoa := sdsSaldo_Pessoa.CommandText;
  cdsFilial.Open;
  cdsVendedor.Open;
  qParametros_Fin.Open;
  qParametros_Usuario.Close;
  qParametros_Usuario.ParamByName('USUARIO').AsString := vUsuario;
  qParametros_Usuario.Open;
end;

end.
