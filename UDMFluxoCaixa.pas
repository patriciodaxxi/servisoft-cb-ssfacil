unit UDMFluxoCaixa;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMFluxoCaixa = class(TDataModule)
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    sdsConsultaVALOR: TFloatField;
    sdsConsultaID_CONTA_ORCAMENTO: TIntegerField;
    sdsConsultaDTVENCIMENTO: TDateField;
    sdsConsultaTIPO_ES: TStringField;
    sdsConsultaTIPO_REG: TStringField;
    sdsConsultaNOME_ORCAMENTO: TStringField;
    sdsConsultaID_CONTA: TIntegerField;
    sdsConsultaNOME_CONTA: TStringField;
    cdsConsultaVALOR: TFloatField;
    cdsConsultaID_CONTA_ORCAMENTO: TIntegerField;
    cdsConsultaDTVENCIMENTO: TDateField;
    cdsConsultaTIPO_ES: TStringField;
    cdsConsultaTIPO_REG: TStringField;
    cdsConsultaNOME_ORCAMENTO: TStringField;
    cdsConsultaID_CONTA: TIntegerField;
    cdsConsultaNOME_CONTA: TStringField;
    mContaOrc: TClientDataSet;
    mContaOrcID_Conta_Orcamento: TIntegerField;
    mContaOrcTipo_Reg: TStringField;
    mContaOrcNome_Orcamento: TStringField;
    mContaOrcTipo_ES: TStringField;
    dsmContaOrc: TDataSource;
    mData: TClientDataSet;
    mDataData: TDateField;
    mDataIndice: TIntegerField;
    mContaOrcValor_01: TFloatField;
    mContaOrcValor_02: TFloatField;
    mContaOrcValor_03: TFloatField;
    mContaOrcValor_04: TFloatField;
    mContaOrcValor_05: TFloatField;
    mContaOrcValor_06: TFloatField;
    mContaOrcValor_07: TFloatField;
    mContaOrcValor_08: TFloatField;
    mContaOrcValor_09: TFloatField;
    mContaOrcValor_10: TFloatField;
    mContaOrcValor_11: TFloatField;
    mContaOrcValor_12: TFloatField;
    mContaOrcValor_13: TFloatField;
    mContaOrcValor_14: TFloatField;
    mContaOrcValor_15: TFloatField;
    mContaOrcValor_16: TFloatField;
    mContaOrcValor_17: TFloatField;
    mContaOrcValor_18: TFloatField;
    mContaOrcValor_19: TFloatField;
    mContaOrcValor_20: TFloatField;
    mContaOrcValor_21: TFloatField;
    mContaOrcValor_22: TFloatField;
    mContaOrcValor_23: TFloatField;
    mContaOrcValor_24: TFloatField;
    mContaOrcValor_25: TFloatField;
    dsmData: TDataSource;
    mContaOrcDescricao: TStringField;
    mContaOrcVlr_Atrasado: TFloatField;
    mContaOrcVlr_Total: TFloatField;
    sdsAtrasado: TSQLDataSet;
    dspAtrasado: TDataSetProvider;
    cdsAtrasado: TClientDataSet;
    sdsAtrasadoVALOR: TFloatField;
    sdsAtrasadoID_CONTA_ORCAMENTO: TIntegerField;
    sdsAtrasadoTIPO_ES: TStringField;
    sdsAtrasadoTIPO_REG: TStringField;
    cdsAtrasadoVALOR: TFloatField;
    cdsAtrasadoID_CONTA_ORCAMENTO: TIntegerField;
    cdsAtrasadoTIPO_ES: TStringField;
    cdsAtrasadoTIPO_REG: TStringField;
    sdsAtrasadoNOME_ORCAMENTO: TStringField;
    cdsAtrasadoNOME_ORCAMENTO: TStringField;
    qSaldo: TSQLQuery;
    qSaldoVLR_SALDO: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctConsulta : String;

  end;

var
  DMFluxoCaixa: TDMFluxoCaixa;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMFluxoCaixa.DataModuleCreate(Sender: TObject);
begin
  ctConsulta := sdsConsulta.CommandText;
end;

end.
