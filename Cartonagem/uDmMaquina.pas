unit uDmMaquina;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmMaquina = class(TDataModule)
    sdsMaquina: TSQLDataSet;
    dspMaquina: TDataSetProvider;
    cdsMaquina: TClientDataSet;
    dsMaquina: TDataSource;
    sdsMaquinaID: TIntegerField;
    sdsMaquinaNOME: TStringField;
    sdsMaquinaVALORMERCADO: TFloatField;
    sdsMaquinaVIDAUTIL: TSmallintField;
    sdsMaquinaRESIDUAL: TFloatField;
    sdsMaquinaDEPRECIACAO: TFloatField;
    sdsMaquinaHORASPRODUTIVAS: TSmallintField;
    cdsMaquinaID: TIntegerField;
    cdsMaquinaNOME: TStringField;
    cdsMaquinaVALORMERCADO: TFloatField;
    cdsMaquinaVIDAUTIL: TSmallintField;
    cdsMaquinaRESIDUAL: TFloatField;
    cdsMaquinaDEPRECIACAO: TFloatField;
    cdsMaquinaHORASPRODUTIVAS: TSmallintField;
    sdsMaquinaCUSTOOPERACIONAL: TFloatField;
    cdsMaquinaCUSTOOPERACIONAL: TFloatField;
    sdsMaquinaCORES_QTD: TSmallintField;
    cdsMaquinaCORES_QTD: TSmallintField;
    dsmMaquina: TDataSource;
    sdsMaquinaOper: TSQLDataSet;
    cdsMaquinaOper: TClientDataSet;
    dsMaquinaOper: TDataSource;
    sdsMaquinaMAQUINA_ID: TIntegerField;
    cdsMaquinaMAQUINA_ID: TIntegerField;
    cdsMaquinasdsMaquinaOper: TDataSetField;
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    sdsFuncionarioCODIGO: TIntegerField;
    sdsFuncionarioNOME: TStringField;
    sdsFuncionarioVLR_SALARIO: TFloatField;
    cdsFuncionarioCODIGO: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    cdsFuncionarioVLR_SALARIO: TFloatField;
    sdsMaquinaOperID: TIntegerField;
    sdsMaquinaOperMAQUINA_ID: TIntegerField;
    sdsMaquinaOperFUNCIONARIO_ID: TIntegerField;
    sdsMaquinaOperSALARIO: TFloatField;
    sdsMaquinaOperENCARGOS: TFloatField;
    sdsMaquinaOperTOTAL: TFloatField;
    cdsMaquinaOperID: TIntegerField;
    cdsMaquinaOperMAQUINA_ID: TIntegerField;
    cdsMaquinaOperFUNCIONARIO_ID: TIntegerField;
    cdsMaquinaOperSALARIO: TFloatField;
    cdsMaquinaOperENCARGOS: TFloatField;
    cdsMaquinaOperTOTAL: TFloatField;
    sdsMaquinaOperNOME: TStringField;
    cdsMaquinaOperNOME: TStringField;
    sdsMaquinaPROD_ALTA: TIntegerField;
    sdsMaquinaPROD_MEDIA: TIntegerField;
    sdsMaquinaPROD_BAIXA: TIntegerField;
    cdsMaquinaPROD_ALTA: TIntegerField;
    cdsMaquinaPROD_MEDIA: TIntegerField;
    cdsMaquinaPROD_BAIXA: TIntegerField;
    sdsSetor: TSQLDataSet;
    dspSetor: TDataSetProvider;
    cdsSetor: TClientDataSet;
    dsSetor: TDataSource;
    sdsSetorID: TIntegerField;
    sdsSetorNOME: TStringField;
    cdsSetorID: TIntegerField;
    cdsSetorNOME: TStringField;
    sdsMaquinaSETOR_ID: TIntegerField;
    cdsMaquinaSETOR_ID: TIntegerField;
    sdsSetorDESPESA_RATEIO: TFloatField;
    cdsSetorDESPESA_RATEIO: TFloatField;
    sdsMaquinaDESPESA_RATEIO: TFloatField;
    cdsMaquinaDESPESA_RATEIO: TFloatField;
    sdsMaquinaLARG_MAX: TIntegerField;
    sdsMaquinaLARG_MIN: TIntegerField;
    sdsMaquinaCOMPR_MAX: TIntegerField;
    sdsMaquinaCOMPR_MIN: TIntegerField;
    sdsMaquinaCUSTODESPESAS: TFloatField;
    cdsMaquinaLARG_MAX: TIntegerField;
    cdsMaquinaLARG_MIN: TIntegerField;
    cdsMaquinaCOMPR_MAX: TIntegerField;
    cdsMaquinaCOMPR_MIN: TIntegerField;
    cdsMaquinaCUSTODESPESAS: TFloatField;
    sdsFolhaEncargo: TSQLDataSet;
    dspFolhaEncargo: TDataSetProvider;
    cdsFolhaEncargo: TClientDataSet;
    dsFolhaEncargo: TDataSource;
    sdsFolhaEncargoID: TIntegerField;
    sdsFolhaEncargoNOME: TStringField;
    sdsFolhaEncargoVALOR_PERC: TFloatField;
    sdsFolhaEncargoSIMPLES: TStringField;
    sdsFolhaEncargoHORISTA: TStringField;
    cdsFolhaEncargoID: TIntegerField;
    cdsFolhaEncargoNOME: TStringField;
    cdsFolhaEncargoVALOR_PERC: TFloatField;
    cdsFolhaEncargoSIMPLES: TStringField;
    cdsFolhaEncargoHORISTA: TStringField;
    sdsMaquinaVALORHORACALC: TFloatField;
    sdsMaquinaVALORHORAEFETIVO: TFloatField;
    cdsMaquinaVALORHORACALC: TFloatField;
    cdsMaquinaVALORHORAEFETIVO: TFloatField;
    sdsMaquinaTEMPO_MINIMO: TIntegerField;
    cdsMaquinaTEMPO_MINIMO: TIntegerField;
    sdsMaquinaCONSUMO: TFMTBCDField;
    sdsMaquinaUNIDADE: TStringField;
    cdsMaquinaCONSUMO: TFMTBCDField;
    cdsMaquinaUNIDADE: TStringField;
    sdsUnidade: TSQLDataSet;
    dspUnidade: TDataSetProvider;
    cdsUnidade: TClientDataSet;
    dsUnidade: TDataSource;
    sdsUnidadeUNIDADE: TStringField;
    sdsUnidadeCONVERSOR: TFloatField;
    sdsUnidadeNOME: TStringField;
    cdsUnidadeUNIDADE: TStringField;
    cdsUnidadeCONVERSOR: TFloatField;
    cdsUnidadeNOME: TStringField;
    sdsMaquinaMATERIAL_ID: TIntegerField;
    cdsMaquinaMATERIAL_ID: TIntegerField;
    sdsMaterial: TSQLDataSet;
    dspMaterial: TDataSetProvider;
    cdsMaterial: TClientDataSet;
    dsMaterial: TDataSource;
    sdsMaterialID: TIntegerField;
    sdsMaterialNOME: TStringField;
    cdsMaterialID: TIntegerField;
    cdsMaterialNOME: TStringField;
    sdsMaquinaCOBRANCA_MIN_HORAS: TSmallintField;
    sdsMaquinaAJUSTE_COR_0: TIntegerField;
    sdsMaquinaAJUSTE_COR_1: TIntegerField;
    sdsMaquinaAJUSTE_COR_2_3: TIntegerField;
    sdsMaquinaAJUSTE_COR_4: TIntegerField;
    cdsMaquinaCOBRANCA_MIN_HORAS: TSmallintField;
    cdsMaquinaAJUSTE_COR_0: TIntegerField;
    cdsMaquinaAJUSTE_COR_1: TIntegerField;
    cdsMaquinaAJUSTE_COR_2_3: TIntegerField;
    cdsMaquinaAJUSTE_COR_4: TIntegerField;
    sdsMaquinaQuebra: TSQLDataSet;
    cdsMaquinaQuebra: TClientDataSet;
    dsMaquinaQuebra: TDataSource;
    sdsMaquinaQuebraMAQUINA_ID: TIntegerField;
    sdsMaquinaQuebraID: TIntegerField;
    sdsMaquinaQuebraQTD_MIN: TIntegerField;
    sdsMaquinaQuebraQTD_MAX: TIntegerField;
    sdsMaquinaQuebraCOR_0: TIntegerField;
    sdsMaquinaQuebraCOR_1: TIntegerField;
    sdsMaquinaQuebraCOR_2_3: TIntegerField;
    sdsMaquinaQuebraCOR_4: TIntegerField;
    cdsMaquinasdsMaquinaQuebra: TDataSetField;
    cdsMaquinaQuebraMAQUINA_ID: TIntegerField;
    cdsMaquinaQuebraID: TIntegerField;
    cdsMaquinaQuebraQTD_MIN: TIntegerField;
    cdsMaquinaQuebraQTD_MAX: TIntegerField;
    cdsMaquinaQuebraCOR_0: TIntegerField;
    cdsMaquinaQuebraCOR_1: TIntegerField;
    cdsMaquinaQuebraCOR_2_3: TIntegerField;
    cdsMaquinaQuebraCOR_4: TIntegerField;
    sdsMaquinaPROCESSO_ID: TIntegerField;
    cdsMaquinaPROCESSO_ID: TIntegerField;
    sdsCartoProcesso: TSQLDataSet;
    sdsCartoProcessoID: TIntegerField;
    sdsCartoProcessoDESCRICAO: TStringField;
    sdsCartoProcessoTIPO: TStringField;
    dspCartoProcesso: TDataSetProvider;
    cdsCartoProcesso: TClientDataSet;
    cdsCartoProcessoID: TIntegerField;
    cdsCartoProcessoDESCRICAO: TStringField;
    cdsCartoProcessoTIPO: TStringField;
    dsCartoProcesso: TDataSource;
    procedure cdsMaquinaBeforePost(DataSet: TDataSet);
    procedure cdsMaquinaOperBeforePost(DataSet: TDataSet);
    procedure cdsMaquinaQuebraBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMaquina: TdmMaquina;

implementation

uses uDmDatabase;

{$R *.dfm}

procedure TdmMaquina.cdsMaquinaBeforePost(DataSet: TDataSet);
begin
  if cdsMaquina.State in [dsInsert] then
    cdsMaquinaID.AsInteger := dmDatabase.ProximaSequencia('MAQUINA',0);
  cdsMaquinaMAQUINA_ID.AsInteger := cdsMaquinaID.AsInteger;
end;

procedure TdmMaquina.cdsMaquinaOperBeforePost(DataSet: TDataSet);
begin
  if cdsMaquinaOper.State in [dsInsert] then
    cdsMaquinaOperID.AsInteger := dmDatabase.ProximaSequencia('MAQUINA_OPER',0);
end;

procedure TdmMaquina.cdsMaquinaQuebraBeforePost(DataSet: TDataSet);
begin
  if cdsMaquinaQuebra.State in [dsInsert] then
    cdsMaquinaQuebraID.AsInteger := dmDatabase.ProximaSequencia('MAQUINA_QUEBRA',0);
end;

end.
