unit uDmConsulta;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmConsulta = class(TDataModule)
    sdsAcabado: TSQLDataSet;
    sdsAcabadoID: TIntegerField;
    sdsAcabadoNOME: TStringField;
    sdsAcabadoREFERENCIA: TStringField;
    sdsAcabadoFD_COMPR: TFMTBCDField;
    sdsAcabadoFD_LARGURA: TFMTBCDField;
    sdsAcabadoFD_ALTURA: TFMTBCDField;
    dspAcabado: TDataSetProvider;
    cdsAcabado: TClientDataSet;
    cdsAcabadoID: TIntegerField;
    cdsAcabadoNOME: TStringField;
    cdsAcabadoREFERENCIA: TStringField;
    cdsAcabadoFD_COMPR: TFMTBCDField;
    cdsAcabadoFD_LARGURA: TFMTBCDField;
    cdsAcabadoFD_ALTURA: TFMTBCDField;
    dsAcabado: TDataSource;
    sdsPessoa: TSQLDataSet;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    dsPessoa: TDataSource;
    dspFaca: TDataSetProvider;
    sdsFaca: TSQLDataSet;
    sdsFacaID: TIntegerField;
    sdsFacaNOME: TStringField;
    cdsFaca: TClientDataSet;
    cdsFacaID: TIntegerField;
    cdsFacaNOME: TStringField;
    dsFaca: TDataSource;
    dsFichaTecnica: TDataSource;
    cdsFichaTecnica: TClientDataSet;
    cdsFichaTecnicaID: TIntegerField;
    cdsFichaTecnicaNOME: TStringField;
    dspFichaTecnica: TDataSetProvider;
    sdsFichaTecnica: TSQLDataSet;
    sdsFichaTecnicaID: TIntegerField;
    sdsFichaTecnicaNOME: TStringField;
    sdsFacaFD_COMPR: TFMTBCDField;
    sdsFacaFD_LARGURA: TFMTBCDField;
    sdsFacaFD_ALTURA: TFMTBCDField;
    cdsFacaFD_COMPR: TFMTBCDField;
    cdsFacaFD_LARGURA: TFMTBCDField;
    cdsFacaFD_ALTURA: TFMTBCDField;
    sdsPasta: TSQLDataSet;
    sdsPastaID: TIntegerField;
    sdsPastaDESCRICAO: TStringField;
    dspPasta: TDataSetProvider;
    cdsPasta: TClientDataSet;
    cdsPastaID: TIntegerField;
    cdsPastaDESCRICAO: TStringField;
    dsPasta: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    vId: Integer;
  end;

var
  dmConsulta: TdmConsulta;

implementation

uses uDmDatabase;

{$R *.dfm}

end.
