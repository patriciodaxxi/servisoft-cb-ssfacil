unit UDMConsDRE;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TDMConsDRE = class(TDataModule)
    sdsDRE: TSQLDataSet;
    dspDRE: TDataSetProvider;
    cdsDRE: TClientDataSet;
    dsDRE: TDataSource;
    cdsDREANO: TSmallintField;
    cdsDREMES: TSmallintField;
    cdsDREID: TIntegerField;
    cdsDRESUPERIOR: TIntegerField;
    cdsDRECODIGO: TStringField;
    cdsDRENOME: TStringField;
    cdsDRETIPO_REG: TStringField;
    cdsDRENIVEL: TIntegerField;
    cdsDREVALOR: TFloatField;
    cdsDRESOMAR: TStringField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    mDREAux: TClientDataSet;
    dsmDREAux: TDataSource;
    mDREAuxID_DRE: TIntegerField;
    mData: TClientDataSet;
    mDataAno: TIntegerField;
    mDataMes: TIntegerField;
    mDataIndice: TIntegerField;
    mDREAuxCodigo: TStringField;
    mDREAuxNome: TStringField;
    mDREAuxTipo_Reg: TStringField;
    mDREAuxSomar: TStringField;
    mDREAuxValor1: TFloatField;
    mDREAuxValor2: TFloatField;
    mDREAuxValor3: TFloatField;
    mDREAuxValor4: TFloatField;
    mDREAuxValor5: TFloatField;
    mDREAuxValor6: TFloatField;
    mDREAuxValor7: TFloatField;
    mDREAuxValor8: TFloatField;
    mDREAuxValor9: TFloatField;
    mDREAuxValor10: TFloatField;
    mDREAuxValor11: TFloatField;
    mDREAuxValor12: TFloatField;
    mDREAuxValor13: TFloatField;
    dsmData: TDataSource;
    mDREAuxPerc_AV1: TFloatField;
    mDREAuxPerc_AV2: TFloatField;
    mDREAuxPerc_AV3: TFloatField;
    mDREAuxPerc_AV4: TFloatField;
    mDREAuxPerc_AV5: TFloatField;
    mDREAuxPerc_AV6: TFloatField;
    mDREAuxPerc_AV7: TFloatField;
    mDREAuxPerc_AV8: TFloatField;
    mDREAuxPerc_AV9: TFloatField;
    mDREAuxPerc_AV10: TFloatField;
    mDREAuxPerc_AV11: TFloatField;
    mDREAuxPerc_AV12: TFloatField;
    mDREAuxPerc_AV13: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConsDRE: TDMConsDRE;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsDRE.DataModuleCreate(Sender: TObject);
begin
  cdsFilial.Open;
end;

end.
