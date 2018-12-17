unit uDmFaca;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmFaca = class(TDataModule)
    dspCartoFaca: TDataSetProvider;
    sdsCartoFaca: TSQLDataSet;
    cdsCartoFaca: TClientDataSet;
    dsCartoFaca: TDataSource;
    sdsFacaCons: TSQLDataSet;
    dspFacaCons: TDataSetProvider;
    cdsFacaCons: TClientDataSet;
    dsFacaCons: TDataSource;
    sdsFacaFD: TSQLDataSet;
    dspFacaFD: TDataSetProvider;
    cdsFacaFD: TClientDataSet;
    dsFacaFD: TDataSource;
    sdsFacaTP: TSQLDataSet;
    dspFacaTP: TDataSetProvider;
    cdsFacaTP: TClientDataSet;
    dsFacaTP: TDataSource;
    sdsCartoFacaID: TIntegerField;
    sdsCartoFacaNOME: TStringField;
    sdsCartoFacaSITUACAO: TStringField;
    sdsCartoFacaTIPO: TStringField;
    sdsCartoFacaFD_COMPR: TFMTBCDField;
    sdsCartoFacaFD_LARGURA: TFMTBCDField;
    sdsCartoFacaFD_ALTURA: TFMTBCDField;
    sdsCartoFacaFD_ABA_INT_CAB: TFMTBCDField;
    sdsCartoFacaFD_ABA_INT_LAT: TFMTBCDField;
    sdsCartoFacaTP_ABA_EXT_CAB: TFMTBCDField;
    sdsCartoFacaTP_ABA_INT_CAB: TFMTBCDField;
    sdsCartoFacaTP_ABA_EXT_LAT: TFMTBCDField;
    sdsCartoFacaTP_ABA_INT_LAT: TFMTBCDField;
    sdsCartoFacaSP_COMPR: TFMTBCDField;
    sdsCartoFacaSP_LARGURA: TFMTBCDField;
    sdsCartoFacaSP_ALTURA: TFMTBCDField;
    sdsCartoFacaTP_LARGURA: TFMTBCDField;
    sdsCartoFacaTP_COMPR: TFMTBCDField;
    sdsCartoFacaTP_ALTURA: TFMTBCDField;
    sdsCartoFacaFD_DIMENSAO1: TFMTBCDField;
    sdsCartoFacaFD_DIMENSAO2: TFMTBCDField;
    sdsCartoFacaTP_DIMENSAO1: TFMTBCDField;
    sdsCartoFacaTP_DIMENSAO2: TFMTBCDField;
    sdsCartoFacaTP_TIPO_MAT: TStringField;
    sdsCartoFacaSP_ABA_INT_CAB: TFMTBCDField;
    sdsCartoFacaSP_ABA_INT_LAT: TFMTBCDField;
    sdsCartoFacaFD_TIPO_MAT: TStringField;
    sdsCartoFacaSP_TIPO_MAT: TStringField;
    sdsCartoFacaSP_DIMENSAO1: TFMTBCDField;
    sdsCartoFacaSP_DIMENSAO2: TFMTBCDField;
    sdsCartoFacaFACA_FD: TIntegerField;
    sdsCartoFacaFACA_TP: TIntegerField;
    sdsCartoFacaFACA_SP: TIntegerField;
    sdsCartoFacaOBS: TMemoField;
    sdsCartoFacaFD_COPIAS_C: TSmallintField;
    sdsCartoFacaTP_COPIAS_C: TSmallintField;
    sdsCartoFacaSP_COPIAS_C: TSmallintField;
    sdsCartoFacaFD_INT_L: TFMTBCDField;
    sdsCartoFacaFD_INT_C: TFMTBCDField;
    sdsCartoFacaTP_INT_L: TFMTBCDField;
    sdsCartoFacaTP_INT_C: TFMTBCDField;
    sdsCartoFacaSP_INT_L: TFMTBCDField;
    sdsCartoFacaSP_INT_C: TFMTBCDField;
    sdsCartoFacaFD_COPIAS_L: TSmallintField;
    sdsCartoFacaTP_COPIAS_L: TSmallintField;
    sdsCartoFacaSP_COPIAS_L: TSmallintField;
    sdsCartoFacaFD_FIO_C: TFMTBCDField;
    sdsCartoFacaFD_FIO_L: TFMTBCDField;
    sdsCartoFacaTP_FIO_C: TFMTBCDField;
    sdsCartoFacaTP_FIO_L: TFMTBCDField;
    sdsCartoFacaSP_FIO_C: TFMTBCDField;
    sdsCartoFacaSP_FIO_L: TFMTBCDField;
    cdsCartoFacaID: TIntegerField;
    cdsCartoFacaNOME: TStringField;
    cdsCartoFacaSITUACAO: TStringField;
    cdsCartoFacaTIPO: TStringField;
    cdsCartoFacaFD_COMPR: TFMTBCDField;
    cdsCartoFacaFD_LARGURA: TFMTBCDField;
    cdsCartoFacaFD_ALTURA: TFMTBCDField;
    cdsCartoFacaFD_ABA_INT_CAB: TFMTBCDField;
    cdsCartoFacaFD_ABA_INT_LAT: TFMTBCDField;
    cdsCartoFacaTP_ABA_EXT_CAB: TFMTBCDField;
    cdsCartoFacaTP_ABA_INT_CAB: TFMTBCDField;
    cdsCartoFacaTP_ABA_EXT_LAT: TFMTBCDField;
    cdsCartoFacaTP_ABA_INT_LAT: TFMTBCDField;
    cdsCartoFacaSP_COMPR: TFMTBCDField;
    cdsCartoFacaSP_LARGURA: TFMTBCDField;
    cdsCartoFacaSP_ALTURA: TFMTBCDField;
    cdsCartoFacaTP_LARGURA: TFMTBCDField;
    cdsCartoFacaTP_COMPR: TFMTBCDField;
    cdsCartoFacaTP_ALTURA: TFMTBCDField;
    cdsCartoFacaFD_DIMENSAO1: TFMTBCDField;
    cdsCartoFacaFD_DIMENSAO2: TFMTBCDField;
    cdsCartoFacaTP_DIMENSAO1: TFMTBCDField;
    cdsCartoFacaTP_DIMENSAO2: TFMTBCDField;
    cdsCartoFacaTP_TIPO_MAT: TStringField;
    cdsCartoFacaSP_ABA_INT_CAB: TFMTBCDField;
    cdsCartoFacaSP_ABA_INT_LAT: TFMTBCDField;
    cdsCartoFacaFD_TIPO_MAT: TStringField;
    cdsCartoFacaSP_TIPO_MAT: TStringField;
    cdsCartoFacaSP_DIMENSAO1: TFMTBCDField;
    cdsCartoFacaSP_DIMENSAO2: TFMTBCDField;
    cdsCartoFacaFACA_FD: TIntegerField;
    cdsCartoFacaFACA_TP: TIntegerField;
    cdsCartoFacaFACA_SP: TIntegerField;
    cdsCartoFacaOBS: TMemoField;
    cdsCartoFacaFD_COPIAS_C: TSmallintField;
    cdsCartoFacaTP_COPIAS_C: TSmallintField;
    cdsCartoFacaSP_COPIAS_C: TSmallintField;
    cdsCartoFacaFD_INT_L: TFMTBCDField;
    cdsCartoFacaFD_INT_C: TFMTBCDField;
    cdsCartoFacaTP_INT_L: TFMTBCDField;
    cdsCartoFacaTP_INT_C: TFMTBCDField;
    cdsCartoFacaSP_INT_L: TFMTBCDField;
    cdsCartoFacaSP_INT_C: TFMTBCDField;
    cdsCartoFacaFD_COPIAS_L: TSmallintField;
    cdsCartoFacaTP_COPIAS_L: TSmallintField;
    cdsCartoFacaSP_COPIAS_L: TSmallintField;
    cdsCartoFacaFD_FIO_C: TFMTBCDField;
    cdsCartoFacaFD_FIO_L: TFMTBCDField;
    cdsCartoFacaTP_FIO_C: TFMTBCDField;
    cdsCartoFacaTP_FIO_L: TFMTBCDField;
    cdsCartoFacaSP_FIO_C: TFMTBCDField;
    cdsCartoFacaSP_FIO_L: TFMTBCDField;
    sdsCartoFacaARQUIVO_FD: TStringField;
    sdsCartoFacaARQUIVO_TP: TStringField;
    sdsCartoFacaARQUIVO_SP: TStringField;
    cdsCartoFacaARQUIVO_FD: TStringField;
    cdsCartoFacaARQUIVO_TP: TStringField;
    cdsCartoFacaARQUIVO_SP: TStringField;
    sdsCartoFacaENDERECO_FD: TStringField;
    sdsCartoFacaENDERECO_TP: TStringField;
    sdsCartoFacaENDERECO_SP: TStringField;
    cdsCartoFacaENDERECO_FD: TStringField;
    cdsCartoFacaENDERECO_TP: TStringField;
    cdsCartoFacaENDERECO_SP: TStringField;
    sdsCartoFacaFECHAMENTO_FD: TStringField;
    sdsCartoFacaFECHAMENTO_CT: TStringField;
    sdsCartoFacaFECHAMENTO_TP: TStringField;
    sdsCartoFacaFECHAMENTO_SP: TStringField;
    cdsCartoFacaFECHAMENTO_FD: TStringField;
    cdsCartoFacaFECHAMENTO_CT: TStringField;
    cdsCartoFacaFECHAMENTO_TP: TStringField;
    cdsCartoFacaFECHAMENTO_SP: TStringField;
    sdsFacaConsID: TIntegerField;
    sdsFacaConsNOME: TStringField;
    sdsFacaConsFD_LARGURA: TFMTBCDField;
    sdsFacaConsFD_COMPR: TFMTBCDField;
    sdsFacaConsFD_ALTURA: TFMTBCDField;
    sdsFacaConsFD_ABA_INT_CAB: TFMTBCDField;
    sdsFacaConsFD_ABA_INT_LAT: TFMTBCDField;
    sdsFacaConsTP_ABA_EXT_CAB: TFMTBCDField;
    sdsFacaConsTP_ABA_INT_CAB: TFMTBCDField;
    sdsFacaConsTP_ABA_EXT_LAT: TFMTBCDField;
    sdsFacaConsTP_ABA_INT_LAT: TFMTBCDField;
    sdsFacaConsSP_COMPR: TFMTBCDField;
    sdsFacaConsSP_LARGURA: TFMTBCDField;
    sdsFacaConsSP_ALTURA: TFMTBCDField;
    sdsFacaConsTP_LARGURA: TFMTBCDField;
    sdsFacaConsTP_COMPR: TFMTBCDField;
    sdsFacaConsTP_ALTURA: TFMTBCDField;
    sdsFacaConsSP_ABA_INT_CAB: TFMTBCDField;
    sdsFacaConsSP_ABA_INT_LAT: TFMTBCDField;
    sdsFacaConsFD_TIPO_MAT: TStringField;
    sdsFacaConsTP_TIPO_MAT: TStringField;
    sdsFacaConsFD_COPIAS_C: TSmallintField;
    sdsFacaConsTP_COPIAS_C: TSmallintField;
    sdsFacaConsSP_COPIAS_C: TSmallintField;
    sdsFacaConsFD_COPIAS_L: TSmallintField;
    sdsFacaConsTP_COPIAS_L: TSmallintField;
    sdsFacaConsSP_COPIAS_L: TSmallintField;
    sdsFacaConsSP_TIPO_MAT: TStringField;
    sdsFacaConsFECHAMENTO_FD: TStringField;
    sdsFacaConsFECHAMENTO_CT: TStringField;
    sdsFacaConsFECHAMENTO_TP: TStringField;
    sdsFacaConsFECHAMENTO_SP: TStringField;
    sdsFacaConsENDERECO_FD: TStringField;
    sdsFacaConsENDERECO_TP: TStringField;
    sdsFacaConsENDERECO_SP: TStringField;
    sdsFacaConsSITUACAO: TStringField;
    cdsFacaConsID: TIntegerField;
    cdsFacaConsNOME: TStringField;
    cdsFacaConsFD_LARGURA: TFMTBCDField;
    cdsFacaConsFD_COMPR: TFMTBCDField;
    cdsFacaConsFD_ALTURA: TFMTBCDField;
    cdsFacaConsFD_ABA_INT_CAB: TFMTBCDField;
    cdsFacaConsFD_ABA_INT_LAT: TFMTBCDField;
    cdsFacaConsTP_ABA_EXT_CAB: TFMTBCDField;
    cdsFacaConsTP_ABA_INT_CAB: TFMTBCDField;
    cdsFacaConsTP_ABA_EXT_LAT: TFMTBCDField;
    cdsFacaConsTP_ABA_INT_LAT: TFMTBCDField;
    cdsFacaConsSP_COMPR: TFMTBCDField;
    cdsFacaConsSP_LARGURA: TFMTBCDField;
    cdsFacaConsSP_ALTURA: TFMTBCDField;
    cdsFacaConsTP_LARGURA: TFMTBCDField;
    cdsFacaConsTP_COMPR: TFMTBCDField;
    cdsFacaConsTP_ALTURA: TFMTBCDField;
    cdsFacaConsSP_ABA_INT_CAB: TFMTBCDField;
    cdsFacaConsSP_ABA_INT_LAT: TFMTBCDField;
    cdsFacaConsFD_TIPO_MAT: TStringField;
    cdsFacaConsTP_TIPO_MAT: TStringField;
    cdsFacaConsFD_COPIAS_C: TSmallintField;
    cdsFacaConsTP_COPIAS_C: TSmallintField;
    cdsFacaConsSP_COPIAS_C: TSmallintField;
    cdsFacaConsFD_COPIAS_L: TSmallintField;
    cdsFacaConsTP_COPIAS_L: TSmallintField;
    cdsFacaConsSP_COPIAS_L: TSmallintField;
    cdsFacaConsSP_TIPO_MAT: TStringField;
    cdsFacaConsFECHAMENTO_FD: TStringField;
    cdsFacaConsFECHAMENTO_CT: TStringField;
    cdsFacaConsFECHAMENTO_TP: TStringField;
    cdsFacaConsFECHAMENTO_SP: TStringField;
    cdsFacaConsENDERECO_FD: TStringField;
    cdsFacaConsENDERECO_TP: TStringField;
    cdsFacaConsENDERECO_SP: TStringField;
    cdsFacaConsSITUACAO: TStringField;
    cdsFacaConsclFDTipoMat: TStringField;
    cdsFacaConsclTPTipoMat: TStringField;
    cdsFacaConsclSPTipoMat: TStringField;
    sdsCartoFacaINATIVO: TStringField;
    cdsCartoFacaINATIVO: TStringField;
    sdsFacaConsINATIVO: TStringField;
    cdsFacaConsINATIVO: TStringField;
    sdsFacaFDID: TIntegerField;
    sdsFacaFDNOME: TStringField;
    sdsFacaFDFD_COMPR: TFMTBCDField;
    sdsFacaFDFD_LARGURA: TFMTBCDField;
    sdsFacaFDFD_ALTURA: TFMTBCDField;
    sdsFacaFDFD_ABA_INT_CAB: TFMTBCDField;
    sdsFacaFDFD_ABA_INT_LAT: TFMTBCDField;
    sdsFacaFDFD_COPIAS_C: TSmallintField;
    sdsFacaFDFD_COPIAS_L: TSmallintField;
    sdsFacaFDFD_INT_C: TFMTBCDField;
    sdsFacaFDFD_INT_L: TFMTBCDField;
    sdsFacaFDFD_FIO_C: TFMTBCDField;
    sdsFacaFDFD_FIO_L: TFMTBCDField;
    sdsFacaFDFD_DIMENSAO1: TFMTBCDField;
    sdsFacaFDFD_DIMENSAO2: TFMTBCDField;
    cdsFacaFDID: TIntegerField;
    cdsFacaFDNOME: TStringField;
    cdsFacaFDFD_COMPR: TFMTBCDField;
    cdsFacaFDFD_LARGURA: TFMTBCDField;
    cdsFacaFDFD_ALTURA: TFMTBCDField;
    cdsFacaFDFD_ABA_INT_CAB: TFMTBCDField;
    cdsFacaFDFD_ABA_INT_LAT: TFMTBCDField;
    cdsFacaFDFD_COPIAS_C: TSmallintField;
    cdsFacaFDFD_COPIAS_L: TSmallintField;
    cdsFacaFDFD_INT_C: TFMTBCDField;
    cdsFacaFDFD_INT_L: TFMTBCDField;
    cdsFacaFDFD_FIO_C: TFMTBCDField;
    cdsFacaFDFD_FIO_L: TFMTBCDField;
    cdsFacaFDFD_DIMENSAO1: TFMTBCDField;
    cdsFacaFDFD_DIMENSAO2: TFMTBCDField;
    sdsFacaTPID: TIntegerField;
    sdsFacaTPTP_ABA_EXT_CAB: TFMTBCDField;
    sdsFacaTPTP_ABA_INT_CAB: TFMTBCDField;
    sdsFacaTPTP_ABA_EXT_LAT: TFMTBCDField;
    sdsFacaTPTP_ABA_INT_LAT: TFMTBCDField;
    sdsFacaTPTP_COPIAS_C: TSmallintField;
    sdsFacaTPTP_COPIAS_L: TSmallintField;
    sdsFacaTPTP_INT_C: TFMTBCDField;
    sdsFacaTPTP_INT_L: TFMTBCDField;
    sdsFacaTPTP_FIO_C: TFMTBCDField;
    sdsFacaTPTP_FIO_L: TFMTBCDField;
    sdsFacaTPTP_DIMENSAO1: TFMTBCDField;
    sdsFacaTPTP_DIMENSAO2: TFMTBCDField;
    cdsFacaTPID: TIntegerField;
    cdsFacaTPTP_ABA_EXT_CAB: TFMTBCDField;
    cdsFacaTPTP_ABA_INT_CAB: TFMTBCDField;
    cdsFacaTPTP_ABA_EXT_LAT: TFMTBCDField;
    cdsFacaTPTP_ABA_INT_LAT: TFMTBCDField;
    cdsFacaTPTP_COPIAS_C: TSmallintField;
    cdsFacaTPTP_COPIAS_L: TSmallintField;
    cdsFacaTPTP_INT_C: TFMTBCDField;
    cdsFacaTPTP_INT_L: TFMTBCDField;
    cdsFacaTPTP_FIO_C: TFMTBCDField;
    cdsFacaTPTP_FIO_L: TFMTBCDField;
    cdsFacaTPTP_DIMENSAO1: TFMTBCDField;
    cdsFacaTPTP_DIMENSAO2: TFMTBCDField;
    sdsFacaFDFD_OBS: TStringField;
    cdsFacaFDFD_OBS: TStringField;
    sdsFacaTPTP_OBS: TStringField;
    cdsFacaTPTP_OBS: TStringField;
    sdsCartoFacaDT_CADASTRO: TDateField;
    sdsCartoFacaFD_OBS: TStringField;
    sdsCartoFacaTP_OBS: TStringField;
    sdsCartoFacaSP_OBS: TStringField;
    cdsCartoFacaDT_CADASTRO: TDateField;
    cdsCartoFacaFD_OBS: TStringField;
    cdsCartoFacaTP_OBS: TStringField;
    cdsCartoFacaSP_OBS: TStringField;
    sdsFacaNome: TSQLDataSet;
    dspFacaNome: TDataSetProvider;
    cdsFacaNome: TClientDataSet;
    sdsFacaNomeID: TIntegerField;
    cdsFacaNomeID: TIntegerField;
    cdsFacaConsclCaixaTipo: TStringField;
    sdsFacaConsTIPO: TStringField;
    cdsFacaConsTIPO: TStringField;
    sdsCartoFacaFD_FIBRA: TStringField;
    sdsCartoFacaTP_FIBRA: TStringField;
    sdsCartoFacaSP_FIBRA: TStringField;
    cdsCartoFacaFD_FIBRA: TStringField;
    cdsCartoFacaTP_FIBRA: TStringField;
    cdsCartoFacaSP_FIBRA: TStringField;
    sdsCartoProcesso: TSQLDataSet;
    dspCartoProcesso: TDataSetProvider;
    cdsCartoProcesso: TClientDataSet;
    dsCartoProcesso: TDataSource;
    sdsCartoProcessoID: TIntegerField;
    sdsCartoProcessoDESCRICAO: TStringField;
    sdsCartoProcessoTIPO: TStringField;
    cdsCartoProcessoID: TIntegerField;
    cdsCartoProcessoDESCRICAO: TStringField;
    cdsCartoProcessoTIPO: TStringField;
    dsmCartoFaca: TDataSource;
    ClientDataSet1: TClientDataSet;
    sdsFacaProcesso: TSQLDataSet;
    sdsFacaProcessoFACA_ID: TIntegerField;
    sdsFacaProcessoID: TIntegerField;
    sdsFacaProcessoPOSICAO: TStringField;
    sdsFacaProcessoPROCESSO_ID: TIntegerField;
    sdsFacaProcessoOBSERVACAO: TStringField;
    cdsCartoFacaProcesso: TClientDataSet;
    cdsCartoFacasdsFacaProcesso: TDataSetField;
    cdsCartoFacaProcessoFACA_ID: TIntegerField;
    cdsCartoFacaProcessoID: TIntegerField;
    cdsCartoFacaProcessoPOSICAO: TStringField;
    cdsCartoFacaProcessoPROCESSO_ID: TIntegerField;
    cdsCartoFacaProcessoOBSERVACAO: TStringField;
    dsCartoFacaProcesso: TDataSource;
    sdsFacaProcessoPROCESSO: TStringField;
    cdsCartoFacaProcessoPROCESSO: TStringField;
    sdsCartoFacaFACA_ID: TIntegerField;
    cdsCartoFacaFACA_ID: TIntegerField;
    procedure cdsFacaConsCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    ctFaca: String;
    ctFacaFD, ctFacaTP, ctFacaSP: String;
  public
    { Public declarations }
    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Excluir(ID: Integer);

    procedure procuraFacaFD(veTipo: Byte);
    procedure procuraFacaTP(veTipo: Byte);
  end;

var
  dmFaca: TdmFaca;

implementation

uses uDmDatabase;

{$R *.dfm}

procedure TdmFaca.cdsFacaConsCalcFields(DataSet: TDataSet);
begin
  if not cdsFacaConsFD_TIPO_MAT.IsNull then
    case cdsFacaConsFD_TIPO_MAT.AsInteger of
      1: cdsFacaConsclFDTipoMat.AsString := 'DUPLEX';
      2: cdsFacaConsclFDTipoMat.AsString := 'MICRO';
      3: cdsFacaConsclFDTipoMat.AsString := 'CARTÃO / CARTÃO';
      4: cdsFacaConsclFDTipoMat.AsString := 'MICRO / ABAS INTERNAS';
    end;
  if not cdsFacaConsTP_TIPO_MAT.IsNull then
    case cdsFacaConsTP_TIPO_MAT.AsInteger of
      1: cdsFacaConsclTPTipoMat.AsString := 'DUPLEX';
      2: cdsFacaConsclTPTipoMat.AsString := 'MICRO';
      3: cdsFacaConsclTPTipoMat.AsString := 'CARTÃO / CARTÃO';
      4: cdsFacaConsclTPTipoMat.AsString := 'MICRO / ABAS INTERNAS';
    end;
  if not cdsFacaConsSP_TIPO_MAT.IsNull then
    case cdsFacaConsSP_TIPO_MAT.AsInteger of
      1: cdsFacaConsclSPTipoMat.AsString := 'DUPLEX';
      2: cdsFacaConsclSPTipoMat.AsString := 'MICRO';
      3: cdsFacaConsclSPTipoMat.AsString := 'CARTÃO / CARTÃO';
      4: cdsFacaConsclSPTipoMat.AsString := 'MICRO / ABAS INTERNAS';
    end;
  if not cdsFacaConsTIPO.IsNull then
    case cdsFacaConsTIPO.AsInteger of
      1: cdsFacaConsclCaixaTipo.AsString := 'CAIXA NORMAL';
      2: cdsFacaConsclCaixaTipo.AsString := 'TAMPA ACOPLADA';
      3: cdsFacaConsclCaixaTipo.AsString := 'CARTUCHO';
      4: cdsFacaConsclCaixaTipo.AsString := 'SACOLA';
    end;
end;

procedure TdmFaca.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsCartoFaca.Active then
    prc_Localizar(-1);

  vAux := dmDatabase.ProximaSequencia('FACA',0);

  cdsCartoFaca.Insert;
  cdsCartoFacaID.AsInteger      := vAux;
  cdsCartoFacaSITUACAO.AsString := 'O';
end;

procedure TdmFaca.prc_Localizar(ID: Integer);
begin
  cdsCartoFaca.Close;
  sdsCartoFaca.CommandText := ctFaca;
  if ID <> 0 then
    sdsCartoFaca.CommandText := ctFaca + ' WHERE ID = ' + IntToStr(ID);
  cdsCartoFaca.Open;
  cdsCartoFacaProcesso.Close;
  cdsCartoFacaProcesso.Open;
end;

procedure TdmFaca.procuraFacaFD(veTipo: Byte);
var
  vTipo: String;
begin
  vTipo := '0';
  case veTipo of
    0: vTipo := '1';
    1: vTipo := '2';
    2: vTipo := '3';
    3: vTipo := '4';
  end;

  cdsFacaFD.Close;
  sdsFacaFD.CommandText := ctFacaFD;
  if not cdsCartoFacaNOME.IsNull then
    sdsFacaFD.CommandText := sdsFacaFD.CommandText + ' AND NOME <> ' + QuotedStr(cdsCartoFacaNOME.AsString);
  if StrToInt(vTipo) > 0 then
    sdsFacaFD.CommandText := sdsFacaFD.CommandText + ' AND FD_TIPO_MAT = ' + QuotedStr(vTipo);
  if cdsCartoFacaFD_COMPR.AsFloat > 0 then
    sdsFacaFD.CommandText := sdsFacaFD.CommandText + ' AND FD_COMPR * 100 = ' + formatFloat('0',cdsCartoFacaFD_COMPR.AsFloat * 100);
  if cdsCartoFacaFD_LARGURA.AsFloat > 0 then
    sdsFacaFD.CommandText := sdsFacaFD.CommandText + ' AND FD_LARGURA * 100 = ' + formatFloat('0',cdsCartoFacaFD_LARGURA.AsFloat * 100);
  if cdsCartoFacaFD_ALTURA.AsFloat > 0 then
    sdsFacaFD.CommandText := sdsFacaFD.CommandText + ' AND FD_ALTURA * 100 = ' + formatFloat('0',cdsCartoFacaFD_ALTURA.AsFloat * 100);
  if cdsCartoFacaFD_ABA_INT_CAB.AsFloat > 0 then
    sdsFacaFD.CommandText := sdsFacaFD.CommandText + ' AND FD_ABA_INT_CAB * 100 = ' + formatFloat('0',cdsCartoFacaFD_ABA_INT_CAB.AsFloat * 100);
  if cdsCartoFacaFD_ABA_INT_LAT.AsFloat > 0 then
    sdsFacaFD.CommandText := sdsFacaFD.CommandText + ' AND FD_ABA_INT_LAT * 100 = ' + formatFloat('0',cdsCartoFacaFD_ABA_INT_LAT.AsFloat * 100);
  cdsFacaFD.Open;
end;

procedure TdmFaca.procuraFacaTP(veTipo: Byte);
var
  vTipo: String;
begin
  vTipo := '0';
  case veTipo of
    0: vTipo := '1';
    1: vTipo := '2';
    2: vTipo := '3';
    3: vTipo := '4';
  end;

  cdsFacaTP.Close;
  sdsFacaTP.CommandText := ctFacaTP;
  if not cdsCartoFacaNOME.IsNull then
    sdsFacaTP.CommandText := sdsFacaTP.CommandText + ' AND NOME <> ' + QuotedStr(cdsCartoFacaNOME.AsString);
  if StrToInt(vTipo) > 0 then
    sdsFacaTP.CommandText := sdsFacaTP.CommandText + ' AND TP_TIPO_MAT = ' + QuotedStr(vTipo);

  if cdsCartoFacaFD_COMPR.AsFloat > 0 then
    sdsFacaTP.CommandText := sdsFacaTP.CommandText + ' AND FD_COMPR * 100 = ' + formatFloat('0',cdsCartoFacaFD_COMPR.AsFloat * 100);
  if cdsCartoFacaFD_LARGURA.AsFloat > 0 then
    sdsFacaTP.CommandText := sdsFacaTP.CommandText + ' AND FD_LARGURA * 100 = ' + formatFloat('0',cdsCartoFacaFD_LARGURA.AsFloat * 100);

  if cdsCartoFacaTP_ABA_EXT_CAB.AsFloat > 0 then
    sdsFacaTP.CommandText := sdsFacaTP.CommandText + ' AND TP_ABA_EXT_CAB * 100 = ' + formatFloat('0',cdsCartoFacaTP_ABA_EXT_CAB.AsFloat * 100);
  if cdsCartoFacaTP_ABA_INT_CAB.AsFloat > 0 then
    sdsFacaTP.CommandText := sdsFacaTP.CommandText + ' AND TP_ABA_INT_CAB * 100 = ' + formatFloat('0',cdsCartoFacaTP_ABA_INT_CAB.AsFloat * 100);
  if cdsCartoFacaTP_ABA_INT_LAT.AsFloat > 0 then
    sdsFacaTP.CommandText := sdsFacaTP.CommandText + ' AND TP_ABA_INT_LAT * 100 = ' + formatFloat('0',cdsCartoFacaTP_ABA_INT_LAT.AsFloat * 100);
  if cdsCartoFacaTP_ABA_EXT_LAT.AsFloat > 0 then
    sdsFacaTP.CommandText := sdsFacaTP.CommandText + ' AND TP_ABA_EXT_LAT * 100 = ' + formatFloat('0',cdsCartoFacaTP_ABA_EXT_LAT.AsFloat * 100);
  cdsFacaTP.Open;
end;

procedure TdmFaca.DataModuleCreate(Sender: TObject);
begin
  ctFaca   := sdsCartoFaca.CommandText;
  ctFacaFD := sdsFacaFD.CommandText;
  ctFacaTP := sdsFacaTP.CommandText;
end;

procedure TdmFaca.prc_Excluir(ID: Integer);
begin
  prc_Localizar(ID);
  cdsCartoFaca.Delete;
  cdsCartoFaca.ApplyUpdates(0);
end;

end.
