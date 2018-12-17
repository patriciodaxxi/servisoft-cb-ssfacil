unit UDMConsReal;

interface

uses
  SysUtils, Classes, FMTBcd, Provider, DB, SqlExpr, DBClient, LogTypes;

type
  TDMConsReal = class(TDataModule)
    sdsConsRP: TSQLDataSet;
    dspConsRP: TDataSetProvider;                                      
    cdsConsRP: TClientDataSet;
    mConsAux: TClientDataSet;
    dsmConsAux: TDataSource;
    cdsConsRPCONSUMO: TFloatField;
    cdsConsRPVLR_TOTAL: TFloatField;
    cdsConsRPCODIGO: TStringField;
    cdsConsRPNOME_ORCAMENTO: TStringField;
    cdsConsRPTIPO: TStringField;
    mConsAuxCod_Conta: TStringField;
    mConsAuxNome_Conta: TStringField;
    mConsAuxVlr_Realizado: TFloatField;
    mConsAuxVlr_Projetado: TFloatField;
    mConsAuxID_Conta: TIntegerField;
    cdsConsRPID_CONTA: TIntegerField;
    cdsConsRPNIVEL: TIntegerField;
    qParametros_Cta_Orc: TSQLQuery;
    qParametros_Cta_OrcID: TIntegerField;
    qParametros_Cta_OrcID_CONTA_ORC_RECEITA: TIntegerField;
    qParametros_Cta_OrcID_CONTA_ORC_DESPESA: TIntegerField;
    cdsConsRPSUPERIOR: TStringField;
    qConta_Orcamento: TSQLQuery;
    qConta_OrcamentoID: TIntegerField;
    qConta_OrcamentoTIPO: TStringField;
    qConta_OrcamentoCODIGO: TStringField;
    qConta_OrcamentoDESCRICAO: TStringField;
    qConta_OrcamentoNIVEL: TIntegerField;
    qConta_OrcamentoSUPERIOR: TStringField;
    qConta_OrcamentoINATIVO: TStringField;
    qConta_OrcamentoID_PESSOA: TIntegerField;
    qConta_OrcamentoDIA_VENCIMENTO: TIntegerField;
    qConta_OrcamentoDTVENCIMENTO: TDateField;
    qConta_OrcamentoTIPO_CALCULO: TStringField;
    qConta_OrcamentoVALOR: TFloatField;
    qConta_OrcamentoTIPO_DESPESA: TStringField;
    qConta_OrcamentoTIPO_RD: TStringField;
    mConsAuxTipo_AS: TStringField;
    cdsConsRPTIPO_AS: TStringField;
    sdsConDetForn: TSQLDataSet;
    dspConDetForn: TDataSetProvider;
    cdsConDetForn: TClientDataSet;
    cdsConDetFornCONSUMO: TFloatField;
    cdsConDetFornVLR_TOTAL: TFloatField;
    cdsConDetFornID_FORNECEDOR: TIntegerField;
    cdsConDetFornNOME_FORNECEDOR: TStringField;
    cdsConDetFornTIPO: TStringField;
    dsConDetForn: TDataSource;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    sdsPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    dsContaOrcamento: TDataSource;
    cdsContaOrcamento: TClientDataSet;
    cdsContaOrcamentoID: TIntegerField;
    cdsContaOrcamentoTIPO: TStringField;
    cdsContaOrcamentoCODIGO: TStringField;
    cdsContaOrcamentoDESCRICAO: TStringField;
    cdsContaOrcamentoNOME_AUX: TStringField;
    dspContaOrcamento: TDataSetProvider;
    sdsContaOrcamento: TSQLDataSet;
    mConsAuxResultado: TStringField;
    procedure mConsAuxNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
  end;

var
  DMConsReal: TDMConsReal;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

procedure TDMConsReal.mConsAuxNewRecord(DataSet: TDataSet);
begin
  mConsAuxVlr_Projetado.AsFloat := 0;
  mConsAuxVlr_Realizado.AsFloat := 0;
end;

procedure TDMConsReal.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  //SR: TSearchRec;
  vIndices: string;
  aIndices: array of string;
begin
  qParametros_Cta_Orc.Open;

  //*** Logs Implantado na versão .353
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
end;

procedure TDMConsReal.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
